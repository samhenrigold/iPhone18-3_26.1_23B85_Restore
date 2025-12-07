void sub_1003D2EBC()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v16 = sub_1003D914C;
  v17 = v3;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10046DEDC;
  v15 = &unk_10063BB60;
  v4 = _Block_copy(&v12);
  v5 = v0;

  v6 = [v2 addObserverForName:UIKeyboardWillShowNotification object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  *&v5[OBJC_IVAR____TtC6FindMy21FMLabelViewController_keyboardWillShowObserver] = v6;
  swift_unknownObjectRelease();
  v7 = [v1 defaultCenter];
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v16 = sub_1003D9170;
  v17 = v8;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10046DEDC;
  v15 = &unk_10063BBB0;
  v9 = _Block_copy(&v12);
  v10 = v5;

  v11 = [v7 addObserverForName:UIKeyboardWillHideNotification object:0 queue:0 usingBlock:v9];
  _Block_release(v9);

  *&v10[OBJC_IVAR____TtC6FindMy21FMLabelViewController_keyboardWillHideObserver] = v11;
  swift_unknownObjectRelease();
}

void sub_1003D3158(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_conditionsSubscription;
  v5 = *&v1[OBJC_IVAR____TtC6FindMy21FMLabelViewController_conditionsSubscription];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *&v1[OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator];
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(v6 + 16);
  v8 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  v9 = v7;
  v11 = sub_1003CD738(&v7[v8], v5, v10);
  v12 = *&v7[v8];
  if (v12 >> 62)
  {
    v17 = v11;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    v11 = v17;
    if (v13 >= v17)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 < v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_5:
  sub_1003CDB08(v11, v13);
  swift_endAccess();

  *&v2[v4] = 0;

LABEL_6:
  v14 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_peopleSubscription;
  if (!*&v2[OBJC_IVAR____TtC6FindMy21FMLabelViewController_peopleSubscription])
  {
LABEL_9:
    sub_1003D3320();
    v18.receiver = v2;
    v18.super_class = type metadata accessor for FMLabelViewController(0);
    objc_msgSendSuper2(&v18, "viewWillDisappear:", a1 & 1);
    return;
  }

  v15 = *&v2[OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator];
  if (v15)
  {
    v16 = *(*(v15 + 48) + 32);

    os_unfair_lock_lock((v16 + 24));
    sub_10008FB88((v16 + 16));
    os_unfair_lock_unlock((v16 + 24));

    *&v2[v14] = 0;

    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
}

void sub_1003D3320()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_keyboardWillHideObserver);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_keyboardWillShowObserver);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }
}

void sub_1003D3484(void *a1, __n128 a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FMLabelViewController(0);
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = [v4 horizontalSizeClass];

  v6 = v5 != 2 || a1 == 0;
  if (!v6 && [a1 horizontalSizeClass] == 1)
  {
    [v2 dismissViewControllerAnimated:0 completion:0];
  }
}

void sub_1003D35B0()
{
  v1 = type metadata accessor for FMFLabelSaveType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10007EBC0(&qword_1006BDF20, &qword_10055F7A8);
  __chkstk_darwin(v52);
  v51 = &v36 - v4;
  v5 = sub_10007EBC0(&qword_1006B0030, &unk_100552AD0);
  __chkstk_darwin(v5 - 8);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v60 = type metadata accessor for FMFLabel();
  v53 = *(v60 - 8);
  __chkstk_darwin(v60);
  v42 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v59 = &v36 - v15;
  if (*(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator))
  {

    v16 = dispatch thunk of FMFManager.labels.getter();

    if (v16)
    {
      v50 = *(v16 + 16);
      if (v50)
      {
        v56 = v9;
        v57 = v12;
        v17 = 0;
        v48 = v53 + 16;
        v47 = enum case for FMFLabelSaveType.custom(_:);
        v45 = (v2 + 56);
        v46 = (v2 + 104);
        v18 = (v2 + 48);
        v36 = (v2 + 32);
        v38 = (v2 + 8);
        v39 = (v53 + 8);
        v41 = (v53 + 32);
        v43 = _swiftEmptyArrayStorage;
        v19 = v44;
        v40 = (v2 + 48);
        v49 = v16;
        while (1)
        {
          if (v17 >= *(v16 + 16))
          {
            __break(1u);
            goto LABEL_24;
          }

          v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
          v54 = *(v53 + 72);
          v58 = v17;
          (*(v53 + 16))(v59, v16 + v55 + v54 * v17, v60);
          v20 = v57;
          FMFLabel.labelSaveType.getter();
          v21 = v56;
          (*v46)(v56, v47, v1);
          (*v45)(v21, 0, 1, v1);
          v22 = v51;
          v23 = *(v52 + 48);
          sub_100007204(v20, v51, &qword_1006B0030, &unk_100552AD0);
          sub_100007204(v21, v22 + v23, &qword_1006B0030, &unk_100552AD0);
          v24 = *v18;
          if ((*v18)(v22, 1, v1) == 1)
          {
            break;
          }

          sub_100007204(v22, v19, &qword_1006B0030, &unk_100552AD0);
          if (v24(v22 + v23, 1, v1) == 1)
          {
            sub_100012DF0(v56, &qword_1006B0030, &unk_100552AD0);
            sub_100012DF0(v57, &qword_1006B0030, &unk_100552AD0);
            (*v38)(v19, v1);
LABEL_6:
            sub_100012DF0(v22, &qword_1006BDF20, &qword_10055F7A8);
            goto LABEL_7;
          }

          v25 = v37;
          (*v36)(v37, v22 + v23, v1);
          sub_10000A420(&qword_1006BDF28, &type metadata accessor for FMFLabelSaveType, &protocol conformance descriptor for FMFLabelSaveType);
          v26 = dispatch thunk of static Equatable.== infix(_:_:)();
          v27 = *v38;
          v28 = v25;
          v29 = v44;
          (*v38)(v28, v1);
          sub_100012DF0(v56, &qword_1006B0030, &unk_100552AD0);
          sub_100012DF0(v57, &qword_1006B0030, &unk_100552AD0);
          v19 = v29;
          v27(v29, v1);
          v18 = v40;
          sub_100012DF0(v22, &qword_1006B0030, &unk_100552AD0);
          if (v26)
          {
            goto LABEL_15;
          }

LABEL_7:
          (*v39)(v59, v60);
          v16 = v49;
LABEL_8:
          v17 = v58 + 1;
          if (v50 == v58 + 1)
          {
            goto LABEL_22;
          }
        }

        sub_100012DF0(v21, &qword_1006B0030, &unk_100552AD0);
        sub_100012DF0(v20, &qword_1006B0030, &unk_100552AD0);
        if (v24(v22 + v23, 1, v1) == 1)
        {
          sub_100012DF0(v22, &qword_1006B0030, &unk_100552AD0);
LABEL_15:
          v30 = *v41;
          (*v41)(v42, v59, v60);
          v31 = v43;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001674D0(0, v31[2] + 1, 1);
            v31 = v61;
          }

          v34 = v31[2];
          v33 = v31[3];
          v35 = v31;
          v16 = v49;
          if (v34 >= v33 >> 1)
          {
            sub_1001674D0((v33 > 1), v34 + 1, 1);
            v16 = v49;
            v35 = v61;
          }

          v35[2] = v34 + 1;
          v43 = v35;
          v30(v35 + v55 + v34 * v54, v42, v60);
          v19 = v44;
          v18 = v40;
          goto LABEL_8;
        }

        goto LABEL_6;
      }

      v43 = _swiftEmptyArrayStorage;
LABEL_22:

      v61 = v43;

      sub_1003D6C98(&v61);
    }
  }

  else
  {
LABEL_24:
    __break(1u);

    __break(1u);
  }
}

uint64_t sub_1003D3D1C(uint64_t a1, void *a2)
{
  v3 = v2;
  v58 = a1;
  v5 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v5 - 8);
  v7 = &v50[-v6];
  v8 = type metadata accessor for FMFLocation();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v56 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v50[-v12];
  __chkstk_darwin(v14);
  v16 = &v50[-v15];
  v17 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_location;
  swift_beginAccess();
  v57 = v3;
  v18 = &v3[v17];
  v19 = v9;
  sub_100007204(v18, v7, &qword_1006AF740, &unk_100552330);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100012DF0(v7, &qword_1006AF740, &unk_100552330);
  }

  (*(v9 + 32))(v16, v7, v8);
  v21 = *(v9 + 16);
  v21(v13, v16, v8);
  type metadata accessor for FMFAddUpdateLabelAction();
  swift_allocObject();

  v22 = v58;
  v23 = FMFAddUpdateLabelAction.init(locationToLabel:label:)();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100005B14(v24, qword_1006D4630);
  v25 = v56;
  v21(v56, v16, v8);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v54 = a2;
  v55 = v16;
  v53 = v23;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v52 = v30;
    *v29 = 136315650;
    v59 = 0;
    v60 = 0xE000000000000000;
    v61 = v30;
    if (a2)
    {
      v31 = v22;
    }

    else
    {
      v31 = 0;
    }

    v51 = v27;
    if (a2)
    {
      v32 = a2;
    }

    else
    {
      v32 = 0xE000000000000000;
    }

    v33 = v26;
    v34._countAndFlagsBits = v31;
    v34._object = v32;
    String.append(_:)(v34);

    v35 = sub_100005B4C(v59, v60, &v61);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2080;
    v36 = dispatch thunk of FMFBaseAction.debugDescription.getter();
    v38 = sub_100005B4C(v36, v37, &v61);

    *(v29 + 14) = v38;
    *(v29 + 22) = 2080;
    v59 = 0;
    v60 = 0xE000000000000000;
    v39 = FMFLocation.identifier.getter();
    if (v40)
    {
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0xE000000000000000;
    }

    v42 = v41;
    String.append(_:)(*&v39);

    v43 = v59;
    v44 = v60;
    v45 = *(v19 + 8);
    v45(v25, v8);
    v46 = sub_100005B4C(v43, v44, &v61);

    *(v29 + 24) = v46;
    _os_log_impl(&_mh_execute_header, v33, v51, "🏷 FMLabelViewController: adding label '%s' (%s) to '%s'...", v29, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v45 = *(v19 + 8);
    v45(v25, v8);
  }

  v47 = v57;
  result = sub_100437A74();
  if (*&v47[OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator])
  {
    v48 = swift_allocObject();
    v48[2] = v58;
    v48[3] = v54;
    v48[4] = v47;

    v49 = v47;
    sub_1000FB600(v53, sub_1003D903C, v48);

    return (v45)(v55, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D4298(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchTime();
  v40 = *(v47 - 8);
  __chkstk_darwin(v47);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v39 = &v37 - v15;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);

  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v48 = v38;
    aBlock = 0;
    *v19 = 136315394;
    v50 = 0xE000000000000000;
    v20 = a5;
    if (a4)
    {
      v21 = a3;
    }

    else
    {
      v21 = 0;
    }

    if (a4)
    {
      v22 = a4;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v23._countAndFlagsBits = v21;
    a5 = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24 = sub_100005B4C(aBlock, v50, &v48);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    aBlock = a2;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v25 = String.init<A>(describing:)();
    v27 = sub_100005B4C(v25, v26, &v48);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "🏷 FMLabelViewController: add label '%s' completed with error: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v29 = v39;
  + infix(_:_:)();
  v40 = *(v40 + 8);
  (v40)(v13, v47);
  v30 = swift_allocObject();
  *(v30 + 16) = a5;
  *(v30 + 24) = a2;
  v53 = sub_1003D9048;
  v54 = v30;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_100004AE4;
  v52 = &unk_10063B9D0;
  v31 = _Block_copy(&aBlock);
  swift_errorRetain();
  v32 = a5;

  v33 = v41;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10000A420(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
  v34 = v43;
  v35 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v31);

  (*(v45 + 8))(v34, v35);
  (*(v42 + 8))(v33, v44);
  return (v40)(v29, v47);
}

void sub_1003D4858(void *a1, void **a2)
{
  v4 = type metadata accessor for FMFDemoError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMFActionsError();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  v37 = a1;
  sub_1003EB538();
  if (a2)
  {
    v38 = a2;
    swift_errorRetain();
    sub_10007EBC0(&unk_1006AF7B0, &qword_100552E20);
    if (swift_dynamicCast())
    {
      (*(v9 + 32))(v14, v17, v8);
      (*(v9 + 104))(v11, enum case for FMFActionsError.maxLabels(_:), v8);
      v18 = static FMFActionsError.== infix(_:_:)();
      v36 = *(v9 + 8);
      v36(v11, v8);
      if (v18)
      {
        v19 = objc_opt_self();
        v20 = [v19 mainBundle];
        v45._object = 0x80000001005953D0;
        v21._countAndFlagsBits = 0x414D5F4C4542414CLL;
        v21._object = 0xEF454C5449545F58;
        v45._countAndFlagsBits = 0xD000000000000021;
        v22._countAndFlagsBits = 0;
        v22._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v45);

        v23 = [v19 mainBundle];
        v46._object = 0x8000000100595420;
        v24._object = 0x8000000100595400;
        v46._countAndFlagsBits = 0xD000000000000023;
        v24._countAndFlagsBits = 0xD000000000000011;
        v25._countAndFlagsBits = 0;
        v25._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v46);

        v26 = objc_opt_self();
        v27 = String._bridgeToObjectiveC()();

        v28 = String._bridgeToObjectiveC()();

        v29 = swift_allocObject();
        v30 = v37;
        *(v29 + 16) = v37;
        v43 = sub_1003D9050;
        v44 = v29;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_100004AE4;
        v42 = &unk_10063BA70;
        v31 = _Block_copy(&aBlock);
        v32 = v30;

        [v26 showSimpleAlertWithTitle:v27 message:v28 handler:v31];
        _Block_release(v31);

        v36(v14, v8);

        return;
      }

      v36(v14, v8);
    }

    aBlock = a2;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v7, v4);

      return;
    }
  }

  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v43 = sub_1000822F4;
  v44 = v33;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_100004AE4;
  v42 = &unk_10063BA20;
  v34 = _Block_copy(&aBlock);

  [v37 dismissViewControllerAnimated:1 completion:v34];
  _Block_release(v34);
}

void sub_1003D4DD8(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v4[4] = sub_100097224;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100004AE4;
  v4[3] = &unk_10063BAC0;
  v3 = _Block_copy(v4);

  [a1 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

uint64_t sub_1003D4EA4(char a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(row:section:)();
  if (a1)
  {
    if ((*(v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_isShowingAddCustomLabel) & 1) == 0)
    {
      v7 = &selRef_insertRowsAtIndexPaths_withRowAnimation_;
      v8 = 1;
LABEL_6:
      *(v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_isShowingAddCustomLabel) = v8;
      v9 = *(v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView);
      sub_10007EBC0(&qword_1006B0090, &unk_100552B00);
      v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100552220;
      (*(v4 + 16))(v11 + v10, v6, v3);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 *v7];
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_isShowingAddCustomLabel))
  {
    v8 = 0;
    v7 = &selRef_deleteRowsAtIndexPaths_withRowAnimation_;
    goto LABEL_6;
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1003D506C(_BYTE *a1)
{
  v2 = sub_10007EBC0(&qword_1006BA960, &qword_10055C908);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for FMFDefaultLabel();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_textField];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = [v10 text];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_8;
  }

  static FMFLabel.defaultLabelFor(localizedLabel:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &qword_1006BA960, &qword_10055C908);
    sub_1003D3D1C(v13, v15);
LABEL_8:

    goto LABEL_10;
  }

  (*(v6 + 32))(v9, v4, v5);
  v17 = FMFDefaultLabel.rawValue.getter();
  sub_1003D3D1C(v17, v18);

  (*(v6 + 8))(v9, v5);
LABEL_10:
  *&a1[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_delegate + 8] = 0;
  v19 = swift_unknownObjectWeakAssign();
  a1[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_textFieldIsEnabled] = 0;
  sub_10036E6F8(v19, v20, v21);
  v22 = [a1 textLabel];
  if (v22)
  {
    v23 = v22;
    [v22 setHidden:0];
  }
}

void sub_1003D52F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText);
  if (v3)
  {
    *&v3[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_delegate + 8] = 0;
    swift_unknownObjectWeakAssign();
    v3[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_textFieldIsEnabled] = 0;
    v4 = v3;
    sub_10036E6F8(v4, v5, v6);
    v7 = [v4 textLabel];
    if (v7)
    {
      v8 = v7;
      [v7 setHidden:0];
    }

    v9 = *(v1 + v2);
    *(v1 + v2) = 0;
  }
}

void sub_1003D53C8()
{
  v1 = v0;
  v2 = type metadata accessor for IndexSet();
  v35 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006AF750, &qword_100552340);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for FMFPreferences();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator;
  if (!*(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator))
  {
    __break(1u);
    goto LABEL_13;
  }

  dispatch thunk of FMFManager.preferences.getter();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100012DF0(v7, &qword_1006AF750, &qword_100552340);
    return;
  }

  (*(v9 + 32))(v11, v7, v8);
  if (*(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_showMyLocation) != 1)
  {
    goto LABEL_10;
  }

  v13 = FMFPreferences.hideLocation.getter();
  v14 = *(v0 + v12);
  if (!v14)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v15 = v13;

  sub_10008D1D8((v15 & 1) == 0, v14, v36);
  v33 = v36[1];
  v34 = v36[0];
  v16 = v36[2];
  v32 = v36[3];
  v17 = v37;
  v18 = v38;

  if (v18)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress;
  v21 = *(v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress);
  v22 = *(v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress + 8);
  v23 = *(v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress + 16);
  v24 = *(v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress + 24);
  v25 = v33;
  *v20 = v34;
  *(v20 + 8) = v25;
  v26 = v32;
  *(v20 + 16) = v16;
  *(v20 + 24) = v26;
  *(v20 + 32) = v19 | v17;
  sub_10008ECE4(v21, v22, v23, v24);
  v27 = *(v1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView);
  v36[0] = &off_1006229B0;
  sub_10000A420(&qword_1006BDF08, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  sub_10007EBC0(&qword_1006BDF10, &qword_10055F7A0);
  sub_100004044(&qword_1006BDF18, &qword_1006BDF10, &qword_10055F7A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v28);
  v30 = v29;
  (*(v35 + 8))(v4, v2);
  [v27 reloadSections:v30 withRowAnimation:100];

LABEL_10:
  (*(v9 + 8))(v11, v8);
}

id sub_1003D578C()
{
  v1 = type metadata accessor for FMFLabelSourceType();
  v50 = *(v1 - 8);
  __chkstk_darwin(v1);
  v47 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10007EBC0(&qword_1006BDEF8, &qword_10055F788);
  __chkstk_darwin(v49);
  v4 = &v46 - v3;
  v5 = type metadata accessor for FMFLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_10007EBC0(&qword_1006B0038, &unk_10055EDB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_10007EBC0(&qword_1006B0028, &unk_10055F790);
  __chkstk_darwin(v15 - 8);
  v48 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  __chkstk_darwin(v20);
  v51 = &v46 - v21;
  v22 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_location;
  swift_beginAccess();
  sub_100007204(v0 + v22, v11, &qword_1006AF740, &unk_100552330);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    v23 = &qword_1006AF740;
    v24 = &unk_100552330;
    v25 = v11;
LABEL_5:
    sub_100012DF0(v25, v23, v24);
    v28 = v50;
    v29 = v51;
    (*(v50 + 56))(v51, 1, 1, v1);
    goto LABEL_6;
  }

  (*(v6 + 16))(v8, v11, v5);
  sub_100012DF0(v11, &qword_1006AF740, &unk_100552330);
  FMFLocation.label.getter();
  (*(v6 + 8))(v8, v5);
  v26 = type metadata accessor for FMFLabel();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v14, 1, v26) == 1)
  {
    v23 = &qword_1006B0038;
    v24 = &unk_10055EDB0;
    v25 = v14;
    goto LABEL_5;
  }

  v29 = v51;
  FMFLabel.labelSourceType.getter();
  (*(v27 + 8))(v14, v26);
  v28 = v50;
LABEL_6:
  (*(v28 + 104))(v19, enum case for FMFLabelSourceType.premises(_:), v1);
  (*(v28 + 56))(v19, 0, 1, v1);
  v30 = *(v49 + 48);
  sub_100007204(v29, v4, &qword_1006B0028, &unk_10055F790);
  sub_100007204(v19, &v4[v30], &qword_1006B0028, &unk_10055F790);
  v31 = *(v28 + 48);
  if (v31(v4, 1, v1) == 1)
  {
    sub_100012DF0(v19, &qword_1006B0028, &unk_10055F790);
    sub_100012DF0(v29, &qword_1006B0028, &unk_10055F790);
    if (v31(&v4[v30], 1, v1) == 1)
    {
      sub_100012DF0(v4, &qword_1006B0028, &unk_10055F790);
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  v32 = v48;
  sub_100007204(v4, v48, &qword_1006B0028, &unk_10055F790);
  if (v31(&v4[v30], 1, v1) == 1)
  {
    sub_100012DF0(v19, &qword_1006B0028, &unk_10055F790);
    sub_100012DF0(v51, &qword_1006B0028, &unk_10055F790);
    (*(v28 + 8))(v32, v1);
LABEL_11:
    sub_100012DF0(v4, &qword_1006BDEF8, &qword_10055F788);
LABEL_12:
    v33 = *(v52 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue + 8);
    v34 = *(v52 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_currentLabelValue + 8);
    v35 = (v33 | v34) == 0;
    if (!v33 || !v34)
    {
      goto LABEL_24;
    }

    if (*(v52 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue) == *(v52 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_currentLabelValue) && v33 == v34)
    {
      v35 = 1;
LABEL_24:
      v43 = v35 ^ 1;
      goto LABEL_25;
    }

LABEL_23:
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_24;
  }

  v36 = &v4[v30];
  v37 = v47;
  (*(v28 + 32))(v47, v36, v1);
  sub_10000A420(&qword_1006BDF00, &type metadata accessor for FMFLabelSourceType, &protocol conformance descriptor for FMFLabelSourceType);
  v38 = v32;
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v28 + 8);
  v40(v37, v1);
  sub_100012DF0(v19, &qword_1006B0028, &unk_10055F790);
  sub_100012DF0(v51, &qword_1006B0028, &unk_10055F790);
  v40(v38, v1);
  sub_100012DF0(v4, &qword_1006B0028, &unk_10055F790);
  if ((v39 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_18:
  v41 = *(v52 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue + 8);
  if (!v41)
  {
LABEL_22:
    v43 = 0;
    goto LABEL_25;
  }

  v42 = *(v52 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_currentLabelValue + 8);
  if (v42)
  {
    if (*(v52 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue) == *(v52 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_currentLabelValue) && v41 == v42)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v43 = 1;
LABEL_25:
  result = *(v52 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_rightBarButtonItem);
  if (result)
  {
    v45 = *(v52 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator);
    if (v45)
    {
      return [result setEnabled:*(*(v45 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isNetworkUp) & v43 & 1];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1003D5F8C(uint64_t a1)
{
  result = sub_1003D578C();
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator);
  if (v3)
  {
    v4 = *(*(v3 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isNetworkUp);
    v5 = *(a1 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView);
    v6 = [v5 isEditing];
    [v5 setAllowsSelection:v4];
    [v5 reloadData];
    return sub_1003D4EA4(v4 & (v6 ^ 1u));
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003D62C0(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMLabelViewController(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for FMLabelViewController(uint64_t a1)
{
  result = qword_1006BDEE8;
  if (!qword_1006BDEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D647C(uint64_t a1)
{
  sub_1002DA1F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003D66AC()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView];
  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  v8 = [v6 cellForRowAtIndexPath:isa];

  if (!v8)
  {
    return;
  }

  type metadata accessor for FMLabelTableViewCell();
  v9 = swift_dynamicCastClass();
  if (!v9 || (v10 = *(v9 + OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_textField)) == 0)
  {

    return;
  }

  v11 = v9 + OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_characterLimit;
  *v11 = *&v1[OBJC_IVAR____TtC6FindMy21FMLabelViewController_style + 40];
  *(v11 + 8) = 0;
  v12 = v10;
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v1 view];
  [v12 convertRect:v21 toView:{v14, v16, v18, v20}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = Notification.userInfo.getter();
  if (!v30)
  {

    v56 = 0u;
    v57 = 0u;
    goto LABEL_19;
  }

  v31 = v30;
  v54[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54[2] = v32;
  AnyHashable.init<A>(_:)();
  if (!*(v31 + 16) || (v33 = sub_10004CC50(v55), (v34 & 1) == 0))
  {

    sub_10004CDB8(v55);
    v56 = 0u;
    v57 = 0u;
    goto LABEL_17;
  }

  sub_100006004(*(v31 + 56) + 32 * v33, &v56);
  sub_10004CDB8(v55);

  if (!*(&v57 + 1))
  {
LABEL_17:

LABEL_19:
    sub_100012DF0(&v56, &unk_1006B8740, &unk_100552DA0);
    return;
  }

  type metadata accessor for CGRect(0);
  if ((swift_dynamicCast() & 1) != 0 && (v35 = *v55, v36 = *&v55[1], v37 = *&v55[2], v38 = *&v55[3], v39 = [objc_opt_self() sharedApplication], v40 = objc_msgSend(v39, "keyWindow"), v39, v40) && (v41 = objc_msgSend(v40, "rootViewController"), v40, v41) && (v42 = objc_msgSend(v41, "view"), v41, v42))
  {
    v43 = [v1 view];
    if (v43)
    {
      v44 = v43;
      v58.origin.x = v23;
      v58.origin.y = v25;
      v58.size.width = v27;
      v58.size.height = v29;
      [v43 convertPoint:v42 toCoordinateSpace:{0.0, CGRectGetMaxY(v58)}];
      v46 = v45;

      [v42 frame];
      v48 = v47;
      v59.origin.x = v35;
      v59.origin.y = v36;
      v59.size.width = v37;
      v59.size.height = v38;
      v49 = v46 - (v48 - CGRectGetHeight(v59));
      if (v49 <= 0.0)
      {
      }

      else
      {
        [v6 contentOffset];
        v51 = v49 + v50;
        v60.origin.x = v35;
        v60.origin.y = v36;
        v60.size.width = v37;
        v60.size.height = v38;
        CGRectGetHeight(v60);
        [v6 contentSize];
        [v6 setContentSize:?];
        [v6 setContentOffset:1 animated:{0.0, v51}];
        v61.origin.x = v35;
        v61.origin.y = v36;
        v61.size.width = v37;
        v61.size.height = v38;
        Height = CGRectGetHeight(v61);

        v53 = &v1[OBJC_IVAR____TtC6FindMy21FMLabelViewController_keyboardHeightScrollViewPadding];
        *v53 = Height;
        *(v53 + 8) = 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

id sub_1003D6BB4(uint64_t a1, uint64_t a2)
{
  v2 = a2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_keyboardHeightScrollViewPadding;
  if ((*(a2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_keyboardHeightScrollViewPadding + 8) & 1) == 0)
  {
    v3 = *(a2 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView);
    [v3 contentSize];
    [v3 setContentSize:?];
    [v3 contentSize];
    v5 = v4;
    [v3 bounds];
    if (v5 - v6 < 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v5 - v6;
    }

    result = [v3 contentOffset];
    if (v7 < v9)
    {
      result = [v3 setContentOffset:1 animated:{0.0, v7}];
    }
  }

  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

void sub_1003D6C98(void *a1)
{
  v2 = *(type metadata accessor for FMFLabel() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F3B8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1003D6D40(v5);
  *a1 = v3;
}

void sub_1003D6D40(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMFLabel();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMFLabel() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003D7144(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1003D6E6C(0, v2, 1, a1);
  }
}

void sub_1003D6E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FMFLabel();
  __chkstk_darwin(v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v33 - v11;
  v14 = __chkstk_darwin(v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v41 = (v17 + 16);
    v21 = a1 - a3;
    v42 = v16;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    while (1)
    {
      v23 = v47;
      v24 = v45;
      (v45)(v47, v22, v8, v14);
      v25 = v52;
      v24(v52, v20, v8);
      v50 = FMFLabel.localizedValue.getter();
      v51 = v26;
      v48 = FMFLabel.localizedValue.getter();
      v49 = v27;
      sub_100035F3C();
      v28 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

      v29 = *v44;
      (*v44)(v25, v8);
      v29(v23, v8);
      if (v28 != -1)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v20, v31, v8);
      v20 += v40;
      v22 += v40;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1003D7144(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for FMFLabel();
  __chkstk_darwin(v8);
  v125 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v135 = &v120 - v11;
  __chkstk_darwin(v12);
  v141 = &v120 - v13;
  v16 = __chkstk_darwin(v14);
  v140 = &v120 - v17;
  v18 = a3[1];
  v131 = v15;
  if (v18 >= 1)
  {
    v120 = a4;
    v19 = 0;
    v138 = (v15 + 8);
    v139 = v15 + 16;
    v137 = (v15 + 32);
    v20 = _swiftEmptyArrayStorage;
    v124 = a3;
    v142 = v8;
    while (1)
    {
      v132 = v20;
      if (v19 + 1 >= v18)
      {
        v34 = v19 + 1;
      }

      else
      {
        v133 = v18;
        v121 = v5;
        v21 = v131[9];
        a4 = *a3 + v21 * (v19 + 1);
        v22 = *a3;
        v136 = v22;
        v23 = v131[2];
        v24 = v140;
        v23(v140, a4, v8, v16);
        v25 = &v22[v21 * v19];
        v26 = v141;
        v129 = v23;
        (v23)(v141, v25, v8);
        v27 = v24;
        v145 = FMFLabel.localizedValue.getter();
        v146 = v28;
        v29 = FMFLabel.localizedValue.getter();
        v123 = v19;
        v143 = v29;
        v144 = v30;
        v128 = sub_100035F3C();
        v130 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

        v31 = v131[1];
        v31(v26, v8);
        v127 = v31;
        v31(v27, v8);
        v32 = v123 + 2;
        v134 = v21;
        v33 = &v136[v21 * (v123 + 2)];
        while (1)
        {
          v34 = v133;
          if (v133 == v32)
          {
            break;
          }

          v35 = v129;
          LODWORD(v136) = v130 == -1;
          v36 = v140;
          v37 = v142;
          (v129)(v140, v33, v142);
          v38 = v141;
          v35(v141, a4, v37);
          v145 = FMFLabel.localizedValue.getter();
          v146 = v39;
          v143 = FMFLabel.localizedValue.getter();
          v144 = v40;
          v41 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

          v42 = v127;
          v127(v38, v37);
          v42(v36, v37);
          v20 = v132;
          ++v32;
          v33 += v134;
          a4 += v134;
          if (((v136 ^ (v41 != -1)) & 1) == 0)
          {
            v34 = v32 - 1;
            break;
          }
        }

        v5 = v121;
        a3 = v124;
        v8 = v142;
        v19 = v123;
        if (v130 == -1)
        {
          if (v34 < v123)
          {
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
            return;
          }

          if (v123 < v34)
          {
            v43 = v134 * (v34 - 1);
            v44 = v34 * v134;
            v133 = v34;
            v45 = v34;
            v46 = v123;
            v47 = v123 * v134;
            do
            {
              if (v46 != --v45)
              {
                v48 = *a3;
                if (!v48)
                {
                  goto LABEL_130;
                }

                a4 = &v48[v47];
                v49 = *v137;
                (*v137)(v125, &v48[v47], v8);
                if (v47 < v43 || a4 >= &v48[v44])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v47 != v43)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                v49(&v48[v43], v125, v8);
                a3 = v124;
                v20 = v132;
              }

              ++v46;
              v43 -= v134;
              v44 -= v134;
              v47 += v134;
            }

            while (v46 < v45);
            v5 = v121;
            v19 = v123;
            v34 = v133;
          }
        }
      }

      v50 = a3[1];
      if (v34 >= v50)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v34, v19))
      {
        goto LABEL_122;
      }

      if (v34 - v19 >= v120)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v19, v120))
      {
        goto LABEL_123;
      }

      if (v19 + v120 >= v50)
      {
        v51 = a3[1];
      }

      else
      {
        v51 = (v19 + v120);
      }

      if (v51 < v19)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      if (v34 == v51)
      {
LABEL_32:
        v52 = v34;
        if (v34 < v19)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v121 = v5;
        v98 = *a3;
        v99 = v131[9];
        v136 = v131[2];
        v100 = &v98[v99 * (v34 - 1)];
        v101 = -v99;
        v123 = v19;
        v102 = (v19 - v34);
        v134 = v98;
        v126 = v99;
        v127 = v51;
        a4 = &v98[v34 * v99];
        do
        {
          v133 = v34;
          v128 = a4;
          v129 = v102;
          v130 = v100;
          v103 = v100;
          do
          {
            v104 = v140;
            v105 = v136;
            (v136)(v140, a4, v8);
            v106 = v141;
            v105(v141, v103, v142);
            v145 = FMFLabel.localizedValue.getter();
            v146 = v107;
            v143 = FMFLabel.localizedValue.getter();
            v144 = v108;
            sub_100035F3C();
            v109 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

            v110 = *v138;
            v111 = v106;
            v8 = v142;
            (*v138)(v111, v142);
            v110(v104, v8);
            if (v109 != -1)
            {
              break;
            }

            if (!v134)
            {
              goto LABEL_127;
            }

            v112 = *v137;
            v113 = v135;
            (*v137)(v135, a4, v8);
            swift_arrayInitWithTakeFrontToBack();
            v112(v103, v113, v8);
            v103 += v101;
            a4 += v101;
          }

          while (!__CFADD__(v102++, 1));
          v34 = v133 + 1;
          v52 = v127;
          v100 = v130 + v126;
          v102 = v129 - 1;
          a4 = v128 + v126;
        }

        while ((v133 + 1) != v127);
        v5 = v121;
        a3 = v124;
        v20 = v132;
        v19 = v123;
        if (v127 < v123)
        {
          goto LABEL_121;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10008B8B8(0, *(v20 + 2) + 1, 1, v20);
      }

      a4 = *(v20 + 2);
      v53 = *(v20 + 3);
      v54 = a4 + 1;
      if (a4 >= v53 >> 1)
      {
        v20 = sub_10008B8B8((v53 > 1), a4 + 1, 1, v20);
      }

      *(v20 + 2) = v54;
      v55 = &v20[16 * a4];
      *(v55 + 4) = v19;
      *(v55 + 5) = v52;
      v127 = v52;
      v56 = *v122;
      if (!*v122)
      {
        goto LABEL_131;
      }

      if (a4)
      {
        while (1)
        {
          a4 = v54 - 1;
          if (v54 >= 4)
          {
            break;
          }

          if (v54 == 3)
          {
            v57 = *(v20 + 4);
            v58 = *(v20 + 5);
            v67 = __OFSUB__(v58, v57);
            v59 = v58 - v57;
            v60 = v67;
LABEL_52:
            if (v60)
            {
              goto LABEL_110;
            }

            v73 = &v20[16 * v54];
            v75 = *v73;
            v74 = *(v73 + 1);
            v76 = __OFSUB__(v74, v75);
            v77 = v74 - v75;
            v78 = v76;
            if (v76)
            {
              goto LABEL_113;
            }

            v79 = &v20[16 * a4 + 32];
            v81 = *v79;
            v80 = *(v79 + 1);
            v67 = __OFSUB__(v80, v81);
            v82 = v80 - v81;
            if (v67)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v77, v82))
            {
              goto LABEL_117;
            }

            if (v77 + v82 >= v59)
            {
              if (v59 < v82)
              {
                a4 = v54 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v83 = &v20[16 * v54];
          v85 = *v83;
          v84 = *(v83 + 1);
          v67 = __OFSUB__(v84, v85);
          v77 = v84 - v85;
          v78 = v67;
LABEL_66:
          if (v78)
          {
            goto LABEL_112;
          }

          v86 = &v20[16 * a4];
          v88 = *(v86 + 4);
          v87 = *(v86 + 5);
          v67 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v67)
          {
            goto LABEL_115;
          }

          if (v89 < v77)
          {
            goto LABEL_3;
          }

LABEL_73:
          v94 = a4 - 1;
          if (a4 - 1 >= v54)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_128;
          }

          v95 = *&v20[16 * v94 + 32];
          v96 = *&v20[16 * a4 + 40];
          sub_1003D7C14(*a3 + v131[9] * v95, *a3 + v131[9] * *&v20[16 * a4 + 32], *a3 + v131[9] * v96, v56);
          if (v5)
          {
            goto LABEL_104;
          }

          if (v96 < v95)
          {
            goto LABEL_106;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_10025EFD4(v20);
          }

          if (v94 >= *(v20 + 2))
          {
            goto LABEL_107;
          }

          v97 = &v20[16 * v94];
          *(v97 + 4) = v95;
          *(v97 + 5) = v96;
          v147 = v20;
          sub_10025EF48(a4);
          v20 = v147;
          v54 = *(v147 + 2);
          if (v54 <= 1)
          {
            goto LABEL_3;
          }
        }

        v61 = &v20[16 * v54 + 32];
        v62 = *(v61 - 64);
        v63 = *(v61 - 56);
        v67 = __OFSUB__(v63, v62);
        v64 = v63 - v62;
        if (v67)
        {
          goto LABEL_108;
        }

        v66 = *(v61 - 48);
        v65 = *(v61 - 40);
        v67 = __OFSUB__(v65, v66);
        v59 = v65 - v66;
        v60 = v67;
        if (v67)
        {
          goto LABEL_109;
        }

        v68 = &v20[16 * v54];
        v70 = *v68;
        v69 = *(v68 + 1);
        v67 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v67)
        {
          goto LABEL_111;
        }

        v67 = __OFADD__(v59, v71);
        v72 = v59 + v71;
        if (v67)
        {
          goto LABEL_114;
        }

        if (v72 >= v64)
        {
          v90 = &v20[16 * a4 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v67 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v67)
          {
            goto LABEL_118;
          }

          if (v59 < v93)
          {
            a4 = v54 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v18 = a3[1];
      v19 = v127;
      if (v127 >= v18)
      {
        goto LABEL_94;
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_94:
  a4 = *v122;
  if (!*v122)
  {
    goto LABEL_132;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v131;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_125:
    v20 = sub_10025EFD4(v20);
  }

  v147 = v20;
  v116 = *(v20 + 2);
  if (v116 >= 2)
  {
    while (*a3)
    {
      v117 = *&v20[16 * v116];
      v118 = *&v20[16 * v116 + 24];
      sub_1003D7C14(*a3 + *(v8 + 72) * v117, *a3 + *(v8 + 72) * *&v20[16 * v116 + 16], *a3 + *(v8 + 72) * v118, a4);
      if (v5)
      {
        goto LABEL_104;
      }

      if (v118 < v117)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10025EFD4(v20);
      }

      if (v116 - 2 >= *(v20 + 2))
      {
        goto LABEL_120;
      }

      v119 = &v20[16 * v116];
      *v119 = v117;
      *(v119 + 1) = v118;
      v147 = v20;
      sub_10025EF48(v116 - 1);
      v20 = v147;
      v116 = *(v147 + 2);
      if (v116 <= 1)
      {
        goto LABEL_104;
      }
    }

    goto LABEL_129;
  }

LABEL_104:
}

void sub_1003D7C14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v62 = a3;
  v61 = type metadata accessor for FMFLabel();
  v7 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v49 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = v62 - a2;
  if (v62 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v14 = (a2 - a1) / v12;
  v69 = a1;
  v68 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v16;
    if (v16 >= 1)
    {
      v32 = -v12;
      v54 = (v7 + 16);
      v55 = -v12;
      v52 = (v7 + 8);
      v53 = a4;
      v33 = v31;
      v60 = a1;
      while (2)
      {
        while (1)
        {
          v50 = v31;
          v34 = a2;
          v56 = a2;
          v57 = a2 + v32;
          while (1)
          {
            v36 = v62;
            if (v34 <= a1)
            {
              v69 = v34;
              v67 = v50;
              goto LABEL_60;
            }

            v51 = v31;
            v62 += v32;
            v37 = v33 + v32;
            v38 = v33;
            v39 = *v54;
            v40 = v58;
            v41 = v61;
            (*v54)(v58, v37, v61);
            v42 = v59;
            (v39)(v59, v57, v41);
            v65 = FMFLabel.localizedValue.getter();
            v66 = v43;
            v63 = FMFLabel.localizedValue.getter();
            v64 = v44;
            sub_100035F3C();
            v45 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

            v46 = *v52;
            (*v52)(v42, v41);
            v46(v40, v41);
            if (v45 == -1)
            {
              break;
            }

            v31 = v37;
            v47 = v53;
            if (v36 < v38 || v62 >= v38)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v60;
            }

            else
            {
              a1 = v60;
              if (v36 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v33 = v37;
            v35 = v37 > v47;
            v32 = v55;
            v34 = v56;
            if (!v35)
            {
              a2 = v56;
              goto LABEL_59;
            }
          }

          v33 = v38;
          v48 = v53;
          if (v36 < v56 || v62 >= v56)
          {
            break;
          }

          a2 = v57;
          a1 = v60;
          v31 = v51;
          v32 = v55;
          if (v36 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v33 <= v48)
          {
            goto LABEL_59;
          }
        }

        a2 = v57;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v60;
        v31 = v51;
        v32 = v55;
        if (v33 > v48)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v69 = a2;
    v67 = v31;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v15;
    v67 = a4 + v15;
    if (v15 >= 1 && a2 < v62)
    {
      v55 = *(v7 + 16);
      v56 = v7 + 16;
      v54 = (v7 + 8);
      v18 = v58;
      do
      {
        v60 = a1;
        v19 = v12;
        v20 = v61;
        v21 = v55;
        (v55)(v18, a2, v61);
        v22 = a2;
        v23 = v59;
        v21(v59, a4, v20);
        v24 = a4;
        v65 = FMFLabel.localizedValue.getter();
        v66 = v25;
        v63 = FMFLabel.localizedValue.getter();
        v64 = v26;
        sub_100035F3C();
        v27 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

        v28 = *v54;
        (*v54)(v23, v20);
        v28(v18, v20);
        v12 = v19;
        if (v27 == -1)
        {
          v29 = v60;
          a4 = v24;
          if (v60 < v22 || v60 >= v22 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v22 + v19;
          goto LABEL_34;
        }

        a4 = v24 + v19;
        v29 = v60;
        v30 = v24;
        if (v60 < v24 || v60 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v22;
        }

        else
        {
          a2 = v22;
          if (v60 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
            v68 = a4;
            goto LABEL_34;
          }
        }

        v68 = a4;
LABEL_34:
        a1 = v29 + v19;
        v69 = a1;
      }

      while (a4 < v57 && a2 < v62);
    }
  }

LABEL_60:
  sub_10025F180(&v69, &v68, &v67);
}

id sub_1003D8234(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v59 = a3;
  v60 = a2;
  v56 = a1;
  v5 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v5 - 8);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v54 - v8;
  v10 = sub_10007EBC0(&qword_1006B0038, &unk_10055EDB0);
  __chkstk_darwin(v10 - 8);
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v54 = &v54 - v13;
  v14 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator;
  *&v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator] = 0;
  *&v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_peopleSubscription] = 0;
  *&v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_conditionsSubscription] = 0;
  v15 = &v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_style];
  if (qword_1006AEC70 != -1)
  {
    swift_once();
  }

  v16 = qword_1006D48D0;
  v17 = qword_1006D48F8;
  v18 = qword_1006D4900;
  v19 = unk_1006D48D8;
  v20 = unk_1006D48E8;
  *v15 = qword_1006D48D0;
  *(v15 + 8) = v19;
  *(v15 + 24) = v20;
  *(v15 + 5) = v17;
  *(v15 + 6) = v18;
  v21 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView;
  v22 = objc_allocWithZone(UITableView);
  v23 = v16;
  *&v4[v21] = [v22 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 16) = 0;
  v25 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_location;
  v26 = type metadata accessor for FMFLocation();
  v27 = *(v26 - 8);
  (*(v27 + 56))(&v4[v25], 1, 1, v26);
  v28 = &v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_currentLabelValue];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue];
  *v29 = 0;
  v29[1] = 0;
  v57 = v29;
  *&v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText] = 0;
  v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_isShowingAddCustomLabel] = 1;
  *&v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_rightBarButtonItem] = 0;
  v30 = &v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_keyboardHeightScrollViewPadding];
  *v30 = 0;
  v30[8] = 1;
  *&v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_keyboardWillShowObserver] = 0;
  *&v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_keyboardWillHideObserver] = 0;
  *&v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels] = 0;
  *&v4[v14] = v56;

  swift_beginAccess();
  v31 = v60;
  sub_1003D9178(v60, &v4[v25]);
  swift_endAccess();
  sub_100007204(v31, v9, &qword_1006AF740, &unk_100552330);
  v32 = *(v27 + 48);
  if (v32(v9, 1, v26) == 1)
  {
    sub_100012DF0(v9, &qword_1006AF740, &unk_100552330);
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v35 = v54;
    FMFLocation.label.getter();
    (*(v27 + 8))(v9, v26);
    v36 = type metadata accessor for FMFLabel();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {
      sub_100012DF0(v35, &qword_1006B0038, &unk_10055EDB0);
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v33 = FMFLabel.value.getter();
      v38 = v35;
      v34 = v39;
      (*(v37 + 8))(v38, v36);
    }

    v31 = v60;
  }

  *v28 = v33;
  v28[1] = v34;

  v40 = v58;
  sub_100007204(v31, v58, &qword_1006AF740, &unk_100552330);
  if (v32(v40, 1, v26) == 1)
  {
    v41 = &qword_1006AF740;
    v42 = &unk_100552330;
    v43 = v40;
  }

  else
  {
    v44 = v55;
    FMFLocation.label.getter();
    (*(v27 + 8))(v40, v26);
    v45 = type metadata accessor for FMFLabel();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v44, 1, v45) != 1)
    {
      v47 = FMFLabel.value.getter();
      v48 = v49;
      (*(v46 + 8))(v44, v45);
      goto LABEL_15;
    }

    v41 = &qword_1006B0038;
    v42 = &unk_10055EDB0;
    v43 = v44;
  }

  sub_100012DF0(v43, v41, v42);
  v47 = 0;
  v48 = 0;
LABEL_15:
  v50 = v57;
  *v57 = v47;
  v50[1] = v48;

  v4[OBJC_IVAR____TtC6FindMy21FMLabelViewController_showMyLocation] = v59 & 1;
  v51 = type metadata accessor for FMLabelViewController(0);
  v61.receiver = v4;
  v61.super_class = v51;
  v52 = objc_msgSendSuper2(&v61, "initWithNibName:bundle:", 0, 0);
  sub_100012DF0(v31, &qword_1006AF740, &unk_100552330);
  return v52;
}

uint64_t sub_1003D885C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a4;
  v15 = _Block_copy(aBlock);
  v16 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A420(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v18);
}

void sub_1003D8B50()
{
  *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_mediator) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_peopleSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_conditionsSubscription) = 0;
  v1 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_style;
  if (qword_1006AEC70 != -1)
  {
    swift_once();
  }

  v2 = v0 + v1;
  v3 = qword_1006D48D0;
  v4 = qword_1006D48F8;
  v5 = qword_1006D4900;
  v6 = unk_1006D48D8;
  v7 = unk_1006D48E8;
  *v2 = qword_1006D48D0;
  *(v2 + 8) = v6;
  *(v2 + 24) = v7;
  *(v2 + 40) = v4;
  *(v2 + 48) = v5;
  v8 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_tableView;
  v9 = objc_allocWithZone(UITableView);
  v10 = v3;
  *(v0 + v8) = [v9 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v11 = v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  v12 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_location;
  v13 = type metadata accessor for FMFLocation();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  v14 = (v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_currentLabelValue);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue);
  *v15 = 0;
  v15[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_isShowingAddCustomLabel) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_rightBarButtonItem) = 0;
  v16 = v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_keyboardHeightScrollViewPadding;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_keyboardWillShowObserver) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_keyboardWillHideObserver) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_customLabels) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003D8D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A420(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

double sub_1003D9058()
{
  v1 = OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_editingTableViewCellText);
  if (v2)
  {
    v3 = v2;
    sub_1003D506C(v3);

    v4 = *(v0 + v1);
    *(v0 + v1) = 0;

    return result;
  }

  v7 = *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue);
  v6 = *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_selectedLabelValue + 8);
  v8 = *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_currentLabelValue + 8);
  if (v6)
  {
    if (v8)
    {
      v9 = v7 == *(v0 + OBJC_IVAR____TtC6FindMy21FMLabelViewController_currentLabelValue) && v6 == v8;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return result;
      }
    }
  }

  else if (!v8)
  {
    return result;
  }

  sub_1003D3D1C(v7, v6);

  return result;
}

uint64_t sub_1003D9178(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003D9258()
{
  result = qword_1006BDF30;
  if (!qword_1006BDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BDF30);
  }

  return result;
}

void sub_1003D92AC(char a1)
{
  if (!a1)
  {
    [v1 startLinearZoomIn:1];
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    [v1 startLinearZoomIn:0];
LABEL_5:
    [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1];

    [v1 performSelector:"stopZoomingWithInertia" withObject:0 afterDelay:0.3];
    return;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MKMapView: zoomToFit called without implementation", v4, 2u);
  }
}

unint64_t sub_1003D942C()
{
  result = qword_1006BDF38;
  if (!qword_1006BDF38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006BDF38);
  }

  return result;
}

void sub_1003D9590()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC6FindMy19FMSideBarViewLegacy_blurredBackground];
  v4 = String._bridgeToObjectiveC()();
  [v3 _setGroupName:v4];

  if (qword_1006AEC38 != -1)
  {
    swift_once();
  }

  [v3 _setCaptureView:qword_1006D47B8];
  v5 = [objc_opt_self() effectWithStyle:1100];
  [v3 setEffect:v5];

  [v0 addSubview:v3];
  v9 = [v1 separatorColor];
  v6 = [objc_opt_self() mainScreen];
  [v6 scale];
  v8 = v7;

  sub_1003BB61C(v9, 1.0 / v8);
}

void sub_1003D9764()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy19FMSideBarViewLegacy_blurredBackground];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [v2 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v2 bottomAnchor];
  v9 = [v1 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v2 leadingAnchor];
  v12 = [v1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v2 trailingAnchor];
  v15 = [v1 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

id sub_1003D99F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMSideBarViewLegacy();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1003D9A58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6FindMy19FMSideBarViewLegacy_blurredBackground) contentView];

  return v1;
}

id sub_1003D9B78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLoadingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003D9BF8(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMCameraAccessDetector: user didn't authorize camera", v6, 2u);
  }

  return a2(0);
}

uint64_t sub_1003D9CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMCameraAccessDetector: user authorized camera", v8, 2u);
  }

  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  [v9 setBool:1 forKey:v10];

  return a4(1);
}

void sub_1003D9E94(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  if (qword_1006AECC8 != -1)
  {
    v43 = a2;
    v44 = a3;
    swift_once();
    a2 = v43;
    a3 = v44;
  }

  if (byte_1006D4AD2 == 1)
  {
    v48 = a2;
    v49 = a3;
    v11 = [objc_opt_self() standardUserDefaults];
    v47 = a1;
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 BOOLForKey:v12];

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100005B14(v14, qword_1006D4630);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v15, v16, "FMCameraAccessDetector: presentAuthorizationAlertIfNeeded cameraAuthorized?: %{BOOL}d", v17, 8u);
    }

    if ((v13 & 1) == 0)
    {
      v18 = String._bridgeToObjectiveC()();
      v19 = String._bridgeToObjectiveC()();
      v46 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:1];

      v20 = a8;
      v45 = a8;
      v21 = objc_opt_self();
      v22 = [v21 mainBundle];
      v23._countAndFlagsBits = 0xD000000000000013;
      v56._object = 0x8000000100582000;
      v23._object = 0x8000000100595640;
      v24.value._object = 0x8000000100581FE0;
      v24.value._countAndFlagsBits = 0xD000000000000010;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v56._countAndFlagsBits = 0xD000000000000015;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v56);

      v26 = swift_allocObject();
      *(v26 + 16) = v20;
      *(v26 + 24) = a9;

      v27 = String._bridgeToObjectiveC()();

      v54 = sub_1003DA4F4;
      v55 = v26;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_100017328;
      v53 = &unk_10063BCA0;
      v28 = _Block_copy(&aBlock);

      v29 = objc_opt_self();
      v30 = [v29 actionWithTitle:v27 style:1 handler:v28];
      _Block_release(v28);

      [v46 addAction:v30];
      v31 = [v21 mainBundle];
      v57._object = 0x8000000100582000;
      v32._countAndFlagsBits = 0x415F4152454D4143;
      v32._object = 0xEF4B4F5F5452454CLL;
      v33.value._object = 0x8000000100581FE0;
      v33.value._countAndFlagsBits = 0xD000000000000010;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v57._countAndFlagsBits = 0xD000000000000015;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v57);

      v35 = swift_allocObject();
      *(v35 + 16) = v47 & 1;
      *(v35 + 24) = v48;
      *(v35 + 32) = v45;
      *(v35 + 40) = a9;

      v36 = String._bridgeToObjectiveC()();

      v54 = sub_1003DA4FC;
      v55 = v35;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_100017328;
      v53 = &unk_10063BCF0;
      v37 = _Block_copy(&aBlock);

      v38 = [v29 actionWithTitle:v36 style:0 handler:v37];
      _Block_release(v37);

      [v46 addAction:v38];
      [v49 presentViewController:v46 animated:1 completion:0];

      return;
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100005B14(v39, qword_1006D4630);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "FMCameraAccessDetector: not presenting camera authorization because device is not GreenTea", v42, 2u);
    }
  }

  a8(1);
}

uint64_t sub_1003DA514(unsigned __int8 a1)
{
  v1 = a1 >> 6;
  if (a1)
  {
    v2 = 1296389193;
  }

  else
  {
    v2 = 0x474154524941;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005528D0;
  *(v4 + 32) = 0xD000000000000025;
  *(v4 + 40) = 0x8000000100595740;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0xEA0000000000474ELL;
      v6 = 0x4954534555514552;
    }

    else
    {
      v5 = 0xE900000000000044;
      v6 = 0x4554534555514552;
    }
  }

  else
  {
    v5 = 0xED00004445545345;
    v6 = 0x555145525F544F4ELL;
  }

  *(v4 + 64) = v6;
  *(v4 + 72) = v5;
  sub_10007EBC0(&qword_1006C0C10, &qword_100556FC0);
  sub_1001500AC();
  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  v10 = [objc_opt_self() mainBundle];
  v16._object = 0x800000010057D3F0;
  v11.value._object = 0x800000010057D3D0;
  v16._countAndFlagsBits = 0xD000000000000018;
  v12._countAndFlagsBits = v7;
  v12._object = v9;
  v11.value._countAndFlagsBits = 0xD000000000000013;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v16)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1003DA704(unsigned __int8 a1)
{
  v1 = a1 >> 6;
  if (a1)
  {
    v2 = 1296389193;
  }

  else
  {
    v2 = 0x474154524941;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005528D0;
  *(v4 + 32) = 0xD000000000000028;
  *(v4 + 40) = 0x8000000100595710;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0xEA0000000000474ELL;
      v6 = 0x4954534555514552;
    }

    else
    {
      v5 = 0xE900000000000044;
      v6 = 0x4554534555514552;
    }
  }

  else
  {
    v5 = 0xED00004445545345;
    v6 = 0x555145525F544F4ELL;
  }

  *(v4 + 64) = v6;
  *(v4 + 72) = v5;
  sub_10007EBC0(&qword_1006C0C10, &qword_100556FC0);
  sub_1001500AC();
  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  v10 = [objc_opt_self() mainBundle];
  v16._object = 0x800000010057D3F0;
  v11.value._object = 0x800000010057D3D0;
  v16._countAndFlagsBits = 0xD000000000000018;
  v12._countAndFlagsBits = v7;
  v12._object = v9;
  v11.value._countAndFlagsBits = 0xD000000000000013;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v16)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_1003DA8F4(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 configurationWithTextStyle:UIFontTextStyleTitle2 scale:3];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100552EF0;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 systemOrangeColor];
  *(v6 + 40) = [v7 systemOrangeColor];
  *(v6 + 48) = [v7 whiteColor];
  sub_10000905C(0, &qword_1006C0000, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v4 configurationWithPaletteColors:isa];

  v24[3] = &type metadata for SolariumFeatureFlag;
  v24[4] = sub_10000BD04();
  LOBYTE(isa) = isFeatureEnabled(_:)();
  sub_100006060(v24);
  if (isa)
  {
    v10 = v5;
    v11 = String._bridgeToObjectiveC()();

    v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

    if (!v12)
    {
      v12 = [objc_allocWithZone(UIImage) init];
    }

    v13 = v12;
    v14 = [v7 systemOrangeColor];
  }

  else
  {
    v15 = [v5 configurationByApplyingConfiguration:v9];
    v16 = String._bridgeToObjectiveC()();

    v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:v15];

    if (!v17)
    {
      v17 = [objc_allocWithZone(UIImage) init];
    }

    v13 = v17;
    v14 = 0;
  }

  v18 = sub_1003DA514(a1);
  v20 = v19;
  v21 = sub_1003DA704(a1);
  v23 = v22;

  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21;
  *(a2 + 40) = v23;
  *(a2 + 48) = (a1 & 0xC0) == 64;
}

id sub_1003DAC30(uint64_t a1, char a2)
{
  v5 = qword_1006D4938;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  swift_unknownObjectWeakInit();
  *(v2 + qword_1006BE040) = a1;
  *(v2 + qword_1006D4950) = 1;
  *(v2 + qword_1006D4940) = a2;

  v7 = sub_10037B474(1);
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v13[4] = sub_1003092B4;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100004AE4;
  v13[3] = &unk_10063BDD0;
  v10 = _Block_copy(v13);
  v11 = v7;

  [v8 animateWithDuration:v10 animations:0.3];
  _Block_release(v10);

  return v11;
}

void sub_1003DADE0(uint64_t a1)
{
  v2 = qword_1006D4938;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003DAEA0()
{
  v1 = type metadata accessor for FMIPUnknownItem();
  v2 = *(v1 - 8);
  v53 = v1;
  v54 = v2;
  __chkstk_darwin(v1);
  v50 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v45 - v5;
  __chkstk_darwin(v7);
  v51 = &v45 - v8;
  v9 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v52 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = qword_1006D4938;
  swift_beginAccess();
  sub_100007204(v0 + v18, v11, &unk_1006B20C0, &unk_100552E10);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100012DF0(v11, &unk_1006B20C0, &unk_100552E10);
    return;
  }

  v19 = *(v13 + 32);
  v19(v17, v11, v12);
  if (*(v0 + qword_1006D4950) >= 0x40u)
  {
    goto LABEL_9;
  }

  v48 = *(v0 + qword_1006BE040);
  v49 = v0;

  v20 = FMIPManager.unknownItems.getter();
  __chkstk_darwin(v20);
  *(&v45 - 2) = v17;
  sub_100104884(sub_10017014C, (&v45 - 4), v21);
  if (!*(v22 + 16))
  {

LABEL_9:
    (*(v13 + 8))(v17, v12);
    return;
  }

  v45 = v17;
  v46 = v19;
  v47 = v13 + 32;
  v24 = v53;
  v23 = v54;
  v25 = *(v54 + 16);
  v25(v6, v22 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v53);

  v26 = *(v23 + 32);
  v27 = v51;
  v26(v51, v6, v24);
  v28 = v50;
  v25(v50, v27, v24);
  v29 = objc_allocWithZone(type metadata accessor for FMItemSharingLandingViewController(0));
  v30 = v48;

  v31 = sub_1003C4BEC(v28, v30, 0, 1);
  objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
  v32 = v31;
  v33 = sub_1000CC510(v32, 2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    [Strong presentViewController:v33 animated:1 completion:0];

    v33 = v35;
  }

  (*(v54 + 8))(v27, v24);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = v52;
  v38 = v45;
  (*(v13 + 16))(v52, v45, v12);
  v39 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  v46(v40 + v39, v37, v12);
  *(v40 + ((v14 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v41 = &v32[qword_1006D48B0];
  v42 = *&v32[qword_1006D48B0];
  v43 = *&v32[qword_1006D48B0 + 8];
  *v41 = sub_1003DC778;
  v41[1] = v40;
  v44 = v32;

  sub_10001835C(v42, v43);

  (*(v13 + 8))(v38, v12);
}

double sub_1003DB424(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (*(v6 + 16))(v8, a2, v5);
    type metadata accessor for FMIPRequestShareAction();
    swift_allocObject();
    v12 = FMIPRequestShareAction.init(beaconIdentifier:)();
    v11[qword_1006D4950] = v11[qword_1006D4940] | 0x40;
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    aBlock[4] = sub_1003DC9F4;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10063BE70;
    v15 = _Block_copy(aBlock);
    v16 = v11;

    [v13 animateWithDuration:v15 animations:0.3];
    _Block_release(v15);
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v18 = v16;

    sub_1000D9A7C(v12, sub_1003DC808, v17);

    [a3 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

double sub_1003DB6B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FMIPItemActionStatus();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  type metadata accessor for MainActor();
  v13 = a3;
  v14 = static MainActor.shared.getter();
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = &protocol witness table for MainActor;
  (*(v6 + 32))(v17 + v15, v8, v5);
  *(v17 + v16) = v13;
  sub_100170C90(0, 0, v11, &unk_10055F988, v17);

  return result;
}

uint64_t sub_1003DB8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = type metadata accessor for FMIPItemActionStatus();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003DB9C0, v8, v7);
}

uint64_t sub_1003DB9C0()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];

  (*(v3 + 104))(v1, enum case for FMIPItemActionStatus.success(_:), v2);
  sub_1003DC930();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v3 + 8))(v1, v2);
  v5 = *(v4 + qword_1006D4940);
  v6 = v0[17];
  if (v0[14] == v0[15])
  {
    v6[qword_1006D4950] = v5 | 0x80;
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v0[12] = sub_1003DC9F4;
    v0[13] = v8;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100004AE4;
    v0[11] = &unk_10063BF60;
    v9 = _Block_copy(v0 + 8);
    v10 = v6;

    [v7 animateWithDuration:v9 animations:0.3];
    _Block_release(v9);
  }

  else
  {
    v6[qword_1006D4950] = v5;
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    v0[6] = sub_1003DC9F4;
    v0[7] = v12;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100004AE4;
    v0[5] = &unk_10063BF10;
    v13 = _Block_copy(v0 + 2);
    v6;

    [v11 animateWithDuration:v13 animations:0.3];
    _Block_release(v13);
    sub_1003DBDE0();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003DBC7C(uint64_t a1)
{
  sub_1003DA8F4(*(a1 + qword_1006D4950), &v14);
  v2 = v16;
  v3 = v18;
  v4 = a1 + qword_1006C2B70;
  v5 = *(a1 + qword_1006C2B70 + 16);
  v19[0] = *(a1 + qword_1006C2B70);
  v19[1] = v5;
  v19[2] = *(a1 + qword_1006C2B70 + 32);
  v20 = *(a1 + qword_1006C2B70 + 48);
  v6 = *(a1 + qword_1006C2B70);
  v7 = *(a1 + qword_1006C2B70 + 8);
  v8 = *(a1 + qword_1006C2B70 + 16);
  v9 = *(a1 + qword_1006C2B70 + 24);
  v10 = *(a1 + qword_1006C2B70 + 32);
  v11 = *(a1 + qword_1006C2B70 + 40);
  *v4 = v14;
  *(v4 + 8) = v15;
  *(v4 + 24) = v2;
  *(v4 + 32) = v17;
  *(v4 + 48) = v3;
  sub_100007204(v19, v13, &qword_1006BD148, &qword_10055EB78);
  sub_100007204(&v14, v13, &qword_1006BE2F0, &unk_10055F970);
  sub_1000F0550(v6, v7, v8, v9, v10, v11);
  sub_1003DC4B4(v19, &qword_1006BD148, &qword_10055EB78, sub_1003B0E58);
  sub_100012DF0(v19, &qword_1006BD148, &qword_10055EB78);
  return sub_100012DF0(&v14, &qword_1006BE2F0, &unk_10055F970);
}

void sub_1003DBDE0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v22._object = 0x800000010057D3F0;
  v2._countAndFlagsBits = 0xD000000000000024;
  v2._object = 0x8000000100595770;
  v3.value._object = 0x800000010057D3D0;
  v22._countAndFlagsBits = 0xD000000000000018;
  v3.value._countAndFlagsBits = 0xD000000000000013;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v22);

  v5 = [v0 mainBundle];
  v23._object = 0x800000010057D3F0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x80000001005957A0;
  v7.value._object = 0x800000010057D3D0;
  v23._countAndFlagsBits = 0xD000000000000018;
  v7.value._countAndFlagsBits = 0xD000000000000013;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v23);

  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  v12 = [v0 mainBundle];
  v24._object = 0x800000010057D3F0;
  v13._countAndFlagsBits = 0xD000000000000025;
  v13._object = 0x80000001005957D0;
  v14.value._object = 0x800000010057D3D0;
  v24._countAndFlagsBits = 0xD000000000000018;
  v14.value._countAndFlagsBits = 0xD000000000000013;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v24);

  v16 = String._bridgeToObjectiveC()();

  aBlock[4] = State.rawValue.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_10063BF88;
  v17 = _Block_copy(aBlock);

  v18 = [objc_opt_self() actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v11 addAction:v18];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    [Strong presentViewController:v11 animated:1 completion:0];
  }
}

double sub_1003DC0EC()
{
  sub_100012DF0(v0 + qword_1006D4938, &unk_1006B20C0, &unk_100552E10);
  swift_unknownObjectWeakDestroy();

  return result;
}

id sub_1003DC14C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMBeaconSharingRequestPlatterModule(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1003DC184(uint64_t a1)
{
  sub_100012DF0(a1 + qword_1006D4938, &unk_1006B20C0, &unk_100552E10);
  swift_unknownObjectWeakDestroy();

  return result;
}

uint64_t type metadata accessor for FMBeaconSharingRequestPlatterModule(uint64_t a1)
{
  result = qword_1006BE070;
  if (!qword_1006BE070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003DC23C(uint64_t a1)
{
  sub_1002992FC(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1003DC330(uint64_t a1, uint64_t a2)
{
  sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_17;
    }

    sub_10000905C(0, &qword_1006C0000, UIColor_ptr);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v5)
  {
    goto LABEL_17;
  }

  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_17:
    v11 = 0;
    return v11 & 1;
  }

  if (!v10 || (*(a1 + 32) != *(a2 + 32) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  v11 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  return v11 & 1;
}

void *sub_1003DC4B4(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(_OWORD *))
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v4 + qword_1006C2B70;
  v10 = *(v4 + qword_1006C2B70);
  v11 = *(v4 + qword_1006C2B70 + 8);
  v13 = *(v4 + qword_1006C2B70 + 16);
  v12 = *(v4 + qword_1006C2B70 + 24);
  v15 = *(v4 + qword_1006C2B70 + 32);
  v14 = *(v4 + qword_1006C2B70 + 40);
  v16 = *(v4 + qword_1006C2B70 + 48);
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  v21 = *(a1 + 48);
  if (v10)
  {
    if (v7)
    {
      v28 = a4;
      v47[0] = *a1;
      v47[1] = v8;
      v47[2] = v18;
      v47[3] = v17;
      v47[4] = v20;
      v47[5] = v19;
      v37 = v7;
      v39 = v17;
      v48 = v21 & 1;
      v45[0] = v10;
      v45[1] = v11;
      v45[2] = v13;
      v45[3] = v12;
      v45[4] = v15;
      v45[5] = v14;
      v46 = v16 & 1;
      v33 = v20;
      v35 = v19;
      v29 = v8;
      v31 = v18;
      sub_1003DC988(v10, v11, v13, v12, v15, v14);
      sub_1003DC988(v10, v11, v13, v12, v15, v14);
      v22 = a1;
      v23 = a3;
      sub_100007204(v22, v43, a2, a3);
      v27 = sub_1003DC330(v45, v47);
      sub_1000F0550(v10, v11, v13, v12, v15, v14);
      sub_1000F0550(v37, v29, v31, v39, v33, v35);
      result = sub_1000F0550(v10, v11, v13, v12, v15, v14);
      if (v27)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if (!v7)
  {
    sub_1003DC988(0, v11, v13, v12, v15, v14);
    sub_100007204(a1, v47, a2, a3);
    return sub_1000F0550(0, v11, v13, v12, v15, v14);
  }

  v28 = a4;
  v36 = *(a1 + 40);
  v38 = *a1;
  v34 = *(a1 + 32);
  v40 = *(a1 + 24);
  v30 = *(a1 + 8);
  v32 = *(a1 + 16);
  sub_1003DC988(v10, v11, v13, v12, v15, v14);
  v25 = a1;
  v23 = a3;
  sub_100007204(v25, v47, a2, a3);
  sub_1000F0550(v10, v11, v13, v12, v15, v14);
  sub_1000F0550(v38, v30, v32, v40, v34, v36);
LABEL_7:
  v26 = *(v9 + 16);
  v43[0] = *v9;
  v43[1] = v26;
  v43[2] = *(v9 + 32);
  v44 = *(v9 + 48);
  sub_100007204(v43, v42, a2, v23);
  v28(v43);
  return sub_100012DF0(v43, a2, v23);
}

double sub_1003DC778()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003DB424(v3, v0 + v2, v4);
}

uint64_t sub_1003DC810(uint64_t a1)
{
  v4 = *(type metadata accessor for FMIPItemActionStatus() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000E3478;

  return sub_1003DB8CC(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_1003DC930()
{
  result = qword_1006B6898;
  if (!qword_1006B6898)
  {
    type metadata accessor for FMIPItemActionStatus();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B6898);
  }

  return result;
}

double sub_1003DC988(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {

    v8 = a1;
    v9 = a2;
  }

  return result;
}

uint64_t sub_1003DCA08(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMBluetoothDetector: Setting btEnabled", v6, 2u);
  }

  v7 = [objc_opt_self() sharedInstance];
  if (v7)
  {
    v8 = v7;
    [v7 setEnabled:1];
  }

  return a2(1);
}

void sub_1003DCB60(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t), uint64_t a7)
{
  v10 = sub_10041E648();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = (v10 & 1) == 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMBluetoothDetector: presentBluetoothAlertIfNeeded btEnabled: %{BOOL}d", v14, 8u);
  }

  if (v10)
  {
    v15 = objc_opt_self();
    v16 = [v15 mainBundle];
    v43._object = 0x8000000100595890;
    v17._object = 0x8000000100595870;
    v43._countAndFlagsBits = 0xD000000000000029;
    v17._countAndFlagsBits = 0xD000000000000017;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v43);

    v19 = String._bridgeToObjectiveC()();

    v20 = String._bridgeToObjectiveC()();
    v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

    v22 = [v15 mainBundle];
    v44._object = 0x80000001005958E0;
    v23._countAndFlagsBits = 0xD000000000000018;
    v23._object = 0x80000001005958C0;
    v44._countAndFlagsBits = 0xD00000000000002ALL;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v44);

    v25 = swift_allocObject();
    *(v25 + 16) = a6;
    *(v25 + 24) = a7;

    v26 = String._bridgeToObjectiveC()();

    v41 = sub_1000E218C;
    v42 = v25;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100017328;
    v40 = &unk_10063BFD8;
    v27 = _Block_copy(&aBlock);

    v28 = objc_opt_self();
    v29 = [v28 actionWithTitle:v26 style:1 handler:v27];
    _Block_release(v27);

    [v21 addAction:v29];
    v30 = [v15 mainBundle];
    v45._object = 0x8000000100595930;
    v31._countAndFlagsBits = 0xD00000000000001ALL;
    v31._object = 0x8000000100595910;
    v45._countAndFlagsBits = 0xD00000000000002CLL;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v45);

    v33 = swift_allocObject();
    *(v33 + 16) = a6;
    *(v33 + 24) = a7;

    v34 = String._bridgeToObjectiveC()();

    v41 = sub_1003DD080;
    v42 = v33;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100017328;
    v40 = &unk_10063C028;
    v35 = _Block_copy(&aBlock);

    v36 = [v28 actionWithTitle:v34 style:0 handler:v35];
    _Block_release(v35);

    [v21 addAction:v36];
    [a5 presentViewController:v21 animated:1 completion:0];
  }

  else
  {
    a6(1);
  }
}

double sub_1003DD088(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, void *a7, uint64_t a8)
{
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a7;
  v12[5] = a8;
  sub_100062900(a5, a6);
  v13 = a7;
  v14 = sub_10041E648();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = (v14 & 1) == 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMBluetoothDetector: presentBluetoothAlertIfNeeded btEnabled: %{BOOL}d", v18, 8u);
  }

  if (v14)
  {
    v19 = objc_opt_self();
    v20 = [v19 mainBundle];
    v50._object = 0x8000000100595890;
    v21._object = 0x8000000100595870;
    v50._countAndFlagsBits = 0xD000000000000029;
    v21._countAndFlagsBits = 0xD000000000000017;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v50);

    v23 = String._bridgeToObjectiveC()();

    v24 = String._bridgeToObjectiveC()();
    v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

    v26 = [v19 mainBundle];
    v51._object = 0x80000001005958E0;
    v27._countAndFlagsBits = 0xD000000000000018;
    v27._object = 0x80000001005958C0;
    v51._countAndFlagsBits = 0xD00000000000002ALL;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v51);

    v29 = swift_allocObject();
    *(v29 + 16) = sub_1003DD638;
    *(v29 + 24) = v12;

    v30 = String._bridgeToObjectiveC()();

    v47 = sub_10032AB3C;
    v48 = v29;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100017328;
    v46 = &unk_10063C0A0;
    v31 = _Block_copy(&aBlock);

    v32 = objc_opt_self();
    v33 = [v32 actionWithTitle:v30 style:1 handler:v31];
    _Block_release(v31);

    [v25 addAction:v33];
    v34 = [v19 mainBundle];
    v52._object = 0x8000000100595930;
    v35._countAndFlagsBits = 0xD00000000000001ALL;
    v35._object = 0x8000000100595910;
    v52._countAndFlagsBits = 0xD00000000000002CLL;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v52);

    v37 = swift_allocObject();
    *(v37 + 16) = sub_1003DD638;
    *(v37 + 24) = v12;

    v38 = String._bridgeToObjectiveC()();

    v47 = sub_1003DDC2C;
    v48 = v37;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100017328;
    v46 = &unk_10063C0F0;
    v39 = _Block_copy(&aBlock);

    v40 = [v32 actionWithTitle:v38 style:0 handler:v39];
    _Block_release(v39);

    [v25 addAction:v40];
    [a4 presentViewController:v25 animated:1 completion:0];
  }

  else
  {
    sub_10039D344(1, a5, a6, v13, a8);
  }

  return result;
}

double sub_1003DD644(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a7;
  v12[5] = a8;
  v13 = a5;
  v14 = a7;
  v15 = a8;
  v16 = sub_10041E648();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = (v16 & 1) == 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMBluetoothDetector: presentBluetoothAlertIfNeeded btEnabled: %{BOOL}d", v20, 8u);
  }

  if (v16)
  {
    v21 = objc_opt_self();
    v22 = [v21 mainBundle];
    v52._object = 0x8000000100595890;
    v23._object = 0x8000000100595870;
    v52._countAndFlagsBits = 0xD000000000000029;
    v23._countAndFlagsBits = 0xD000000000000017;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v52);

    v25 = String._bridgeToObjectiveC()();

    v26 = String._bridgeToObjectiveC()();
    v27 = [objc_opt_self() alertControllerWithTitle:v25 message:v26 preferredStyle:1];

    v28 = [v21 mainBundle];
    v53._object = 0x80000001005958E0;
    v29._countAndFlagsBits = 0xD000000000000018;
    v29._object = 0x80000001005958C0;
    v53._countAndFlagsBits = 0xD00000000000002ALL;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v53);

    v31 = swift_allocObject();
    *(v31 + 16) = sub_1003DDBF8;
    *(v31 + 24) = v12;

    v32 = String._bridgeToObjectiveC()();

    v49 = sub_10032AB3C;
    v50 = v31;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100017328;
    v48 = &unk_10063C168;
    v33 = _Block_copy(&aBlock);

    v34 = objc_opt_self();
    v35 = [v34 actionWithTitle:v32 style:1 handler:v33];
    _Block_release(v33);

    [v27 addAction:v35];
    v36 = [v21 mainBundle];
    v54._object = 0x8000000100595930;
    v37._countAndFlagsBits = 0xD00000000000001ALL;
    v37._object = 0x8000000100595910;
    v54._countAndFlagsBits = 0xD00000000000002CLL;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v54);

    v39 = swift_allocObject();
    *(v39 + 16) = sub_1003DDBF8;
    *(v39 + 24) = v12;

    v40 = String._bridgeToObjectiveC()();

    v49 = sub_1003DDC2C;
    v50 = v39;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100017328;
    v48 = &unk_10063C1B8;
    v41 = _Block_copy(&aBlock);

    v42 = [v34 actionWithTitle:v40 style:0 handler:v41];
    _Block_release(v41);

    [v27 addAction:v42];
    [a4 presentViewController:v27 animated:1 completion:0];
  }

  else
  {
    sub_1001651EC(1, v13, a6, v14, v15);
  }

  return result;
}

uint64_t sub_1003DDC30()
{
  swift_getKeyPath();
  sub_1003DE274();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

void sub_1003DDCA0(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003DE274();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1003DDD8C()
{
  swift_getKeyPath();
  sub_1003DE274();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);

  return v1;
}

double sub_1003DDE0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003DE274();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1003DDF3C(uint64_t a1)
{
  *(v1 + 24) = 1;
  v3 = [objc_opt_self() mainBundle];
  v8._object = 0x800000010057ECE0;
  v4._object = 0x800000010057ECC0;
  v8._countAndFlagsBits = 0xD000000000000023;
  v4._countAndFlagsBits = 0xD000000000000011;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v8);

  *(v1 + 32) = v6;
  ObservationRegistrar.init()();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1003DE018()
{

  v1 = OBJC_IVAR____TtC6FindMy26FMMapKitChooseMapViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMMapKitChooseMapViewModel(uint64_t a1)
{
  result = qword_1006BE3C0;
  if (!qword_1006BE3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003DE118(uint64_t a1)
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

unint64_t sub_1003DE1E0()
{
  result = qword_1006BE4F0;
  if (!qword_1006BE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE4F0);
  }

  return result;
}

void sub_1003DE234()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

unint64_t sub_1003DE274()
{
  result = qword_1006BE4F8;
  if (!qword_1006BE4F8)
  {
    type metadata accessor for FMMapKitChooseMapViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE4F8);
  }

  return result;
}

UIImage *sub_1003DE2DC(void *a1)
{
  v3 = [v1 imageWithRenderingMode:2];
  [v1 size];
  v5 = v4;
  v7 = v6;
  [v1 scale];
  v9 = v8;
  v15.width = v5;
  v15.height = v7;
  UIGraphicsBeginImageContextWithOptions(v15, 0, v9);
  [a1 set];
  [v1 size];
  [v3 drawInRect:{0.0, 0.0, v10, v11}];

  result = UIGraphicsGetImageFromCurrentImageContext();
  if (result)
  {
    v13 = result;
    v14 = result;

    UIGraphicsEndImageContext();
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003DE418()
{
  v0 = type metadata accessor for Logger();
  sub_100005AB0(v0, qword_1006D4958);
  sub_100005B14(v0, qword_1006D4958);
  return Logger.init()();
}

id sub_1003DE4A4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char *a7, ...)
{
  format = a7;
  v11 = [objc_opt_self() mainBundle];
  v12 = [objc_opt_self() mainScreen];
  [v12 scale];
  v14 = v13;
  v15 = v13;

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_8;
  }

  v16._countAndFlagsBits = a5;
  v16._object = a6;
  String.append(_:)(v16);

  a6 = a2;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 120;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v32[0] = a1;
  v32[1] = a2;

  v19._countAndFlagsBits = 64;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  a2 = a1;
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v11 pathForResource:v20 ofType:{v21, format, v14}];

  if (v22)
  {

    v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContentsOfFile:v22];

    if (v23)
    {
    }

    return v23;
  }

  if (qword_1006AEC78 != -1)
  {
    goto LABEL_16;
  }

LABEL_8:
  v24 = type metadata accessor for Logger();
  sub_100005B14(v24, qword_1006D4958);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32[0] = v28;
    *v27 = 136315138;
    v29 = sub_100005B4C(a2, a6, v32);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v25, v26, format, v27, 0xCu);
    sub_100006060(v28);
  }

  else
  {
  }

  return 0;
}

id sub_1003DE824()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v1 = sub_100039388(2);

  v2 = [objc_opt_self() configurationWithFont:v1 scale:-1];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  return v4;
}

BOOL sub_1003DE920()
{
  v1 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-1] - v2;
  My = type metadata accessor for Feature.FindMy();
  v13[3] = My;
  v13[4] = sub_10000A468(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v5 = sub_100008FC0(v13);
  (*(*(My - 8) + 104))(v5, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v13);
  if (My)
  {
    return 1;
  }

  v7 = *(v0 + OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_partLock);
  v8 = *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v7 + v9));
  sub_1001104A8(v7 + v8, v3);
  os_unfair_lock_unlock((v7 + v9));

  v10 = type metadata accessor for FMIPItem();
  v6 = (*(*(v10 - 8) + 48))(v3, 1, v10) == 1;
  sub_100012DF0(v3, &qword_1006B07D0, qword_100552820);
  return v6;
}

uint64_t sub_1003DEB1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4[2] = a2;
  return sub_10008A5B8(sub_1003E0788, v4, v2) & 1;
}

void sub_1003DEB60(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, void *a7, double a8, double a9, double a10)
{
  v80 = a6;
  v81 = a7;
  v79 = a5;
  v74 = a4;
  v82 = a3;
  v88 = a2;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v15 - 8);
  __chkstk_darwin(v15);
  v85 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  v76 = *(v18 - 8);
  __chkstk_darwin(v18 - 8);
  v78 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v19;
  __chkstk_darwin(v20);
  v22 = &v68 - v21;
  v23 = type metadata accessor for FMIPDevice();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v75 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v25;
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  v29 = type metadata accessor for FMIPConfigValue();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*&a8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a8 < 9.22337204e18)
  {
    v72 = v15;
    (*(v30 + 104))(v32, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v29);
    aBlock[7] = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v30 + 8))(v32, v29);
    v68 = aBlock[0];
    v33 = *(v24 + 16);
    v70 = v24 + 16;
    v69 = v33;
    v34 = (v33)(v28, v88, v23);
    v35 = *&a1[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock];
    __chkstk_darwin(v34);
    *(&v68 - 2) = v28;
    v36 = *(*v35 + class metadata base offset for ManagedBuffer + 16);
    v37 = (*(*v35 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v35 + v37));
    sub_1003E0550(v35 + v36);
    os_unfair_lock_unlock((v35 + v37));

    v38 = *(v24 + 8);
    v71 = v23;
    v38(v28, v23);
    v39 = v82;
    v40 = sub_1001104A8(v82, v22);
    v41 = *&a1[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_partLock];
    __chkstk_darwin(v40);
    *(&v68 - 2) = v22;
    v42 = *(*v41 + class metadata base offset for ManagedBuffer + 16);
    v43 = (*(*v41 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v41 + v43));
    sub_1003E0610(v41 + v42);
    LOBYTE(v42) = v68 < a8;
    os_unfair_lock_unlock((v41 + v43));

    sub_100012DF0(v22, &qword_1006B07D0, qword_100552820);
    v44 = *&a1[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage];
    v45 = v74;
    *&a1[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage] = v74;
    v46 = v45;

    v47 = &a1[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_tempCoordinate];
    *v47 = a9;
    v47[1] = a10;
    *&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = a8;
    v48 = &a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
    v49 = *&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
    v50 = *&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
    v51 = v79;
    v52 = v80;
    *v48 = v79;
    v48[1] = v52;
    sub_10009186C(v51, v52);
    sub_100091880(v49, v50);
    a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = v52 == 1;
    a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v42;
    v53 = *&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage];
    v54 = v81;
    *&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = v81;
    v55 = v54;

    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    v56 = static OS_dispatch_queue.main.getter();
    v57 = v78;
    sub_1001104A8(v39, v78);
    v58 = v75;
    v59 = v71;
    v69(v75, v88, v71);
    v60 = (*(v76 + 80) + 24) & ~*(v76 + 80);
    v61 = (v77 + *(v24 + 80) + v60) & ~*(v24 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = a1;
    sub_100110438(v57, v62 + v60);
    (*(v24 + 32))(v62 + v61, v58, v59);
    aBlock[4] = sub_1003E0664;
    aBlock[5] = v62;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10063C298;
    v63 = _Block_copy(aBlock);
    v64 = a1;

    v65 = v83;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A468(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100037970();
    v66 = v85;
    v67 = v72;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v63);

    (*(v87 + 8))(v66, v67);
    (*(v84 + 8))(v65, v86);
    return;
  }

LABEL_7:
  __break(1u);
  os_unfair_lock_unlock(&v28[v23]);
  __break(1u);
}

void sub_1003DF470(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for FMIPItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = String._bridgeToObjectiveC()();
  [a1 willChangeValueForKey:v16];

  v37 = a2;
  sub_1001104A8(a2, v11);
  v17 = *(v13 + 48);
  if (v17(v11, 1, v12) != 1)
  {
    v36 = a1;
    (*(v13 + 32))(v15, v11, v12);
    v35 = a3;
    FMIPDevice.itemGroup.getter();
    v19 = type metadata accessor for FMIPItemGroup();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v8, 1, v19) == 1)
    {
      sub_100012DF0(v8, &unk_1006BB1C0, &unk_1005534F0);
    }

    else
    {
      v21 = FMIPItemGroup.groupedItems.getter();
      v22 = (*(v20 + 8))(v8, v19);
      __chkstk_darwin(v22);
      *(&v34 - 2) = v15;
      v23 = sub_100110710(sub_1003E0740, (&v34 - 4), v21);

      if (v23)
      {
        v24 = *(v23 + 16);
        a1 = v36;
        if (v24)
        {
          v18 = sub_10008C8B4(*(v23 + 16), 0);
          sub_1004A2330(&v38, &v18[(*(v13 + 80) + 32) & ~*(v13 + 80)], v24, v23);
          v26 = v25;
          sub_1002204D4(v38);
          if (v26 != v24)
          {
            __break(1u);
            goto LABEL_9;
          }
        }

        else
        {

          v18 = _swiftEmptyArrayStorage;
        }

        a3 = v35;
        (*(v13 + 8))(v15, v12);
        goto LABEL_12;
      }
    }

LABEL_9:
    (*(v13 + 8))(v15, v12);
    v18 = 0;
    a3 = v35;
    a1 = v36;
    goto LABEL_12;
  }

  sub_100012DF0(v11, &qword_1006B07D0, qword_100552820);
  v18 = 0;
LABEL_12:
  v27 = v37;
  v28 = v17(v37, 1, v12) != 1;
  v29 = sub_1002642B0(a3, v27, v18, v28);
  v31 = v30;

  v32 = &a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
  *v32 = v29;
  *(v32 + 1) = v31;

  v33 = String._bridgeToObjectiveC()();
  [a1 didChangeValueForKey:v33];
}

uint64_t sub_1003DF8C4(uint64_t a1)
{
  v1 = FMIPItem.identifier.getter();
  v3 = v2;
  if (v1 == FMIPItem.identifier.getter() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1003DF980()
{
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

id sub_1003DFA04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImage) init];
    v3 = 0;
  }

  *a2 = v4;
  return v3;
}

uint64_t sub_1003DFADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for FMIPDevice();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for FMIPItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  v14 = *(a1 + OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_partLock);
  v15 = *(*v14 + class metadata base offset for ManagedBuffer + 16);
  v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v14 + v16));
  sub_1001104A8(v14 + v15, v8);
  os_unfair_lock_unlock((v14 + v16));

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100012DF0(v8, &qword_1006B07D0, qword_100552820);
    v17 = *(v13 + OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock);
    v18 = *(*v17 + class metadata base offset for ManagedBuffer + 16);
    v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v17 + v19));
    v20 = v41;
    v21 = v17 + v18;
    v22 = v42;
    (*(v41 + 16))(v5, v21, v42);
    os_unfair_lock_unlock((v17 + v19));

    v23 = FMIPDevice.identifier.getter();
    v25 = v24;
    (*(v20 + 8))(v5, v22);
    v26 = v43;
    *v43 = v23;
    v27 = 1;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v28 = *(v13 + OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock);
    v29 = *(*v28 + class metadata base offset for ManagedBuffer + 16);
    v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v28 + v30));
    v31 = v41;
    v32 = v28 + v29;
    v33 = v42;
    (*(v41 + 16))(v5, v32, v42);
    os_unfair_lock_unlock((v28 + v30));

    v34 = FMIPDevice.identifier.getter();
    v36 = v35;
    (*(v31 + 8))(v5, v33);
    v37 = FMIPItem.identifier.getter();
    v25 = v38;
    (*(v10 + 8))(v12, v9);
    v26 = v43;
    *v43 = v34;
    v26[1] = v36;
    v27 = 3;
    v26[2] = v37;
  }

  v26[v27] = v25;
  type metadata accessor for FMAnnotationIdentifier(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1003DFF9C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for FMIPDeviceStatus();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock);
  v14 = *(*v13 + class metadata base offset for ManagedBuffer + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v13 + v15));
  v16 = v13 + v14;
  v17 = v5;
  v18 = v21;
  (*(v10 + 16))(v12, v16, v9);
  os_unfair_lock_unlock((v13 + v15));

  FMIPDevice.status.getter();
  (*(v10 + 8))(v12, v9);
  (*(v18 + 104))(v17, enum case for FMIPDeviceStatus.online(_:), v3);
  sub_10000A468(&unk_1006C1D40, &type metadata accessor for FMIPDeviceStatus, &protocol conformance descriptor for FMIPDeviceStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v24 == v23)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v20 = *(v18 + 8);
  v20(v17, v3);
  v20(v8, v3);

  *v22 = v19 & 1;
}

uint64_t sub_1003E0328()
{
  v1 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v1);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = 0;
  v10 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  v4._object = 0x8000000100595A10;
  v4._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v4);
  v8 = v0;
  OS_dispatch_queue.sync<A>(execute:)();
  _print_unlocked<A, B>(_:_:)();
  sub_10017E6D8(v3);
  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v9;
}

void sub_1003E0450()
{

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_updateQueue);
}

id sub_1003E04B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDeviceAnnotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003E0550(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for FMIPDevice();
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

uint64_t sub_1003E0610(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_100012DF0(a1, &qword_1006B07D0, qword_100552820);
  return sub_1001104A8(v3, a1);
}

void sub_1003E0664()
{
  v1 = *(sub_10007EBC0(&qword_1006B07D0, qword_100552820) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FMIPDevice() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1003DF470(v5, v0 + v2, v6);
}

uint64_t sub_1003E0740(uint64_t *a1)
{
  v2 = *a1;
  v4[2] = *(v1 + 16);
  return sub_10008A5B8(sub_1003E07FC, v4, v2) & 1;
}

uint64_t sub_1003E0890(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || !*(a1 + 16) || (v12 = sub_10001ADB4(UIApplicationLaunchOptionsURLKey), (v13 & 1) == 0))
  {
    (*(v8 + 56))(v6, 1, 1, v7, v9);
    return sub_100012DF0(v6, &unk_1006B0120, &qword_100552B60);
  }

  sub_100006004(*(a1 + 56) + 32 * v12, v16);
  v14 = swift_dynamicCast();
  (*(v8 + 56))(v6, v14 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100012DF0(v6, &unk_1006B0120, &qword_100552B60);
  }

  (*(v8 + 32))(v11, v6, v7);
  if ((*(a2 + OBJC_IVAR____TtC6FindMy13FMAppDelegate_didHandleOpenURL) & 1) == 0)
  {
    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    memset(v16, 0, sizeof(v16));
    sub_100111350(v11, v16);
    sub_100012DF0(v16, &unk_1006B8740, &unk_100552DA0);
  }

  return (*(v8 + 8))(v11, v7);
}

void sub_1003E0B14(void *a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    swift_getObjectType();
    sub_10007EBC0(&unk_1006BC920, &qword_100552E30);
    v7 = String.init<A>(describing:)();
    v9 = sub_100005B4C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%{public}s: completed initial reload of friends from server", v5, 0xCu);
    sub_100006060(v6);
  }

  else
  {
  }
}

void sub_1003E0ED8(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchTime();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = v3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    ObjectType = swift_getObjectType();
    sub_10007EBC0(&unk_1006BC920, &qword_100552E30);
    v17 = String.init<A>(describing:)();
    v19 = sub_100005B4C(v17, v18, aBlock);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_100005B4C(0xD00000000000001ELL, 0x8000000100595B90, aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v20 = *&v13[OBJC_IVAR____TtC6FindMy13FMAppDelegate_application];
  if (!v20)
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = UIApp;
  if (!UIApp)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v22 = v20;
  v23 = [v21 _launchTestName];
  sub_1001546A4(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v22 finishedTest:v23 extraResults:isa];

  [v39 setApplicationIconBadgeNumber:0];
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v25 = off_1006BE550;
  sub_100111068(0);
  v26 = v25[2];
  v26[OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasNoNetworkAlertShown] = 0;
  if (v26[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitialized] == 1 && (v26[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitialized] & 1) != 0 || (v26[OBJC_IVAR____TtC6FindMy19FMConditionProvider_didDevicesFailToInitialize] & 1) != 0 || v26[OBJC_IVAR____TtC6FindMy19FMConditionProvider_didFriendsFailToInitialize] == 1)
  {
    sub_1003E1710(0xD00000000000001ALL, 0x8000000100595B70);
  }

  else
  {
    v35 = OBJC_IVAR____TtC6FindMy13FMAppDelegate_conditionSubscription;
    if (!*&v13[OBJC_IVAR____TtC6FindMy13FMAppDelegate_conditionSubscription])
    {
      v36 = v26;
      v37 = sub_1003CC45C(v13, v36);

      *&v13[v35] = v37;
    }
  }

  sub_100003E90();
  v27 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v39 = *(v38 + 8);
  v28 = v40;
  (v39)(v8, v40);
  v29 = swift_allocObject();
  *(v29 + 16) = v13;
  aBlock[4] = sub_1003E1BE8;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063C378;
  v30 = _Block_copy(aBlock);
  v31 = v13;

  v32 = v41;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A4B0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  v33 = v43;
  v34 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v30);

  (*(v45 + 8))(v33, v34);
  (*(v42 + 8))(v32, v44);
  (v39)(v11, v28);
}

void sub_1003E15E0()
{
  sub_1003E1710(0x74756F656D6974, 0xE700000000000000);
  v0 = [objc_opt_self() sharedInstance];
}

void sub_1003E1710(uint64_t a1, unint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC6FindMy13FMAppDelegate_hasReportedAppExtendedLaunchTime))
  {
    return;
  }

  *(v2 + OBJC_IVAR____TtC6FindMy13FMAppDelegate_hasReportedAppExtendedLaunchTime) = 1;
  v3 = *(v2 + OBJC_IVAR____TtC6FindMy13FMAppDelegate_application);
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = UIApp;
  if (!UIApp)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v7 = v3;
  v8 = [v4 _extendLaunchTest];
  sub_1001546A4(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v7 finishedTest:v8 extraResults:isa];

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100005B4C(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, oslog, v11, "FMAppDelegate: extendedLaunch finished, triggered by %s", v12, 0xCu);
    sub_100006060(v13);
  }

  else
  {
  }
}

id sub_1003E194C()
{
  *&v0[OBJC_IVAR____TtC6FindMy13FMAppDelegate_application] = 0;
  *&v0[OBJC_IVAR____TtC6FindMy13FMAppDelegate_window] = 0;
  v0[OBJC_IVAR____TtC6FindMy13FMAppDelegate_didHandleOpenURL] = 0;
  *&v0[OBJC_IVAR____TtC6FindMy13FMAppDelegate_alertQueue] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC6FindMy13FMAppDelegate_isShowingAlert] = 0;
  *&v0[OBJC_IVAR____TtC6FindMy13FMAppDelegate_mainViewController] = 0;
  v0[OBJC_IVAR____TtC6FindMy13FMAppDelegate_hasReportedAppExtendedLaunchTime] = 0;
  *&v0[OBJC_IVAR____TtC6FindMy13FMAppDelegate_conditionSubscription] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAppDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1003E19E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003E1AD0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 keyWindow];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 rootViewController];

  if (v2)
  {
    do
    {
      v3 = [v2 presentedViewController];
      if (!v3)
      {
        break;
      }

      v4 = [v2 presentedViewController];
      if (!v4)
      {
        break;
      }

      v5 = v4;
      v6 = [v4 isBeingDismissed];

      if (v6)
      {
        break;
      }

      v7 = [v2 presentedViewController];

      v2 = v7;
    }

    while (v7);
  }

  return v2;
}

void sub_1003E1C00()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    sub_10007EBC0(&unk_1006BC920, &qword_100552E30);
    v6 = String.init<A>(describing:)();
    v8 = sub_100005B4C(v6, v7, &v9);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_100005B4C(0xD00000000000001FLL, 0x8000000100595CA0, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  *(v2 + OBJC_IVAR____TtC6FindMy13FMAppDelegate_hasReportedAppExtendedLaunchTime) = 0;
}

void sub_1003E1DC4()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v47 = v2;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v5 = 136446466;
    ObjectType = swift_getObjectType();
    sub_10007EBC0(&unk_1006BC920, &qword_100552E30);
    v6 = String.init<A>(describing:)();
    v8 = sub_100005B4C(v6, v7, v51);

    *(v5 + 4) = v8;
    v2 = v47;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_100005B4C(0xD000000000000021, 0x8000000100595C70, v51);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v9 = *(off_1006BE550 + 2);
  v10 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();
  v11 = *&v9[v10];
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_19:
    sub_1001111D0();
    v19 = &off_100622A60;
    v20 = &off_100622A00;
    v21 = 4;
    while (1)
    {
      v30 = *(v20 - 1);
      v31 = *v20;
      v32 = objc_allocWithZone(CHSTimelineController);

      v48 = v30;
      v33 = String._bridgeToObjectiveC()();
      v34 = String._bridgeToObjectiveC()();

      v35 = [v32 initForAvocadoIdentifier:v33 inBundleIdentifier:v34];

      v36 = [v35 reloadTimeline];
      v37 = v2;

      if (v36)
      {
        v49 = v35;
        v35 = v36;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v38, v39))
        {

LABEL_28:

          goto LABEL_22;
        }

        v22 = swift_slowAlloc();
        ObjectType = swift_slowAlloc();
        *v22 = 136446722;
        swift_getObjectType();
        sub_10007EBC0(&unk_1006BC920, &qword_100552E30);
        v23 = String.init<A>(describing:)();
        v25 = sub_100005B4C(v23, v24, &ObjectType);

        *(v22 + 4) = v25;
        *(v22 + 12) = 2080;
        v26 = sub_100005B4C(v48, v31, &ObjectType);

        *(v22 + 14) = v26;
        *(v22 + 22) = 2080;
        swift_getErrorValue();
        v27 = Error.localizedDescription.getter();
        v29 = sub_100005B4C(v27, v28, &ObjectType);

        *(v22 + 24) = v29;
        _os_log_impl(&_mh_execute_header, v38, v39, "🥑 %{public}s: failed reloading %s (%s)", v22, 0x20u);
        swift_arrayDestroy();

        v2 = v47;
      }

      else
      {
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v49 = v35;
          ObjectType = swift_slowAlloc();
          *v42 = 136446466;
          swift_getObjectType();
          sub_10007EBC0(&unk_1006BC920, &qword_100552E30);
          v43 = String.init<A>(describing:)();
          v45 = sub_100005B4C(v43, v44, &ObjectType);

          *(v42 + 4) = v45;
          v2 = v47;
          *(v42 + 12) = 2080;
          v46 = sub_100005B4C(v48, v31, &ObjectType);

          *(v42 + 14) = v46;
          _os_log_impl(&_mh_execute_header, v40, v41, "🥑 %{public}s: completed %s reload", v42, 0x16u);
          swift_arrayDestroy();

          goto LABEL_28;
        }
      }

LABEL_22:
      v19 += 2;
      v20 += 2;
      if (!--v21)
      {
        swift_arrayDestroy();
        swift_arrayDestroy();
        return;
      }
    }
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_9:
  if (v12 >= 1)
  {
    v13 = v9;

    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v11 + 8 * i + 32);
      }

      v18 = v17 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v18 + 8);
        v16 = swift_getObjectType();
        (*(v15 + 16))(v13, v16, v15);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v2 = v47;
    goto LABEL_19;
  }

  __break(1u);
}

void sub_1003E2500()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v5 = 136446466;
    swift_getObjectType();
    sub_10007EBC0(&unk_1006BC920, &qword_100552E30);
    v6 = String.init<A>(describing:)();
    v8 = sub_100005B4C(v6, v7, v19);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_100005B4C(0xD000000000000022, 0x8000000100595C40, v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v9 = *(off_1006BE550 + 2);
  v10 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();
  v11 = *&v9[v10];
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = v9;

    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v11 + 8 * i + 32);
      }

      v18 = v17 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v18 + 8);
        ObjectType = swift_getObjectType();
        (*(v15 + 8))(v13, ObjectType, v15);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1003E281C(uint64_t a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *&v12[0] = swift_slowAlloc();
    *v7 = 136446466;
    swift_getObjectType();
    sub_10007EBC0(&unk_1006BC920, &qword_100552E30);
    v8 = String.init<A>(describing:)();
    v10 = sub_100005B4C(v8, v9, v12);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_100005B4C(0xD00000000000001CLL, 0x8000000100595C20, v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v4 + OBJC_IVAR____TtC6FindMy13FMAppDelegate_didHandleOpenURL) = 1;
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  memset(v12, 0, sizeof(v12));
  sub_100111350(a1, v12);
  sub_100012DF0(v12, &unk_1006B8740, &unk_100552DA0);
  return 1;
}

void sub_1003E2A50()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v4 = 136446466;
    swift_getObjectType();
    sub_10007EBC0(&unk_1006BC920, &qword_100552E30);
    v5 = String.init<A>(describing:)();
    v7 = sub_100005B4C(v5, v6, &v9);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_100005B4C(0xD00000000000001CLL, 0x8000000100595C00, &v9);
    _os_log_impl(&_mh_execute_header, oslog, v3, "%{public}s %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t static UTAlertCommand.commandFor(url:)@<X0>(char *a1@<X8>)
{
  v2 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v2 - 8);
  v4 = &v58 - v3;
  v5 = type metadata accessor for UUID();
  v68 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URLQueryItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v73 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v58 - v12;
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  __chkstk_darwin(v17);
  v69 = &v58 - v18;
  v19 = objc_allocWithZone(NSURLComponents);
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v23 = [v19 initWithURL:v21 resolvingAgainstBaseURL:1];

  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = [v23 path];
  if (!v24)
  {

LABEL_20:
    v36 = sub_10007EBC0(&qword_1006B2B80, &qword_10055C1B0);
    v37 = *(*(v36 - 8) + 56);
    v38 = a1;
    return v37(v38, 1, 1, v36);
  }

  v64 = v7;
  v65 = v13;
  v25 = v23;
  v26 = v24;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = [v25 queryItems];
  if (!v30)
  {

    goto LABEL_20;
  }

  v31 = v30;
  v66 = v25;
  v67 = a1;
  v63 = v4;
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v27 == 1835365481 && v29 == 0xE400000000000000)
  {
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v31 & 1) == 0)
    {

LABEL_19:
      a1 = v67;
      goto LABEL_20;
    }
  }

  v62 = v5;
  v70 = *(v32 + 16);
  if (!v70)
  {
LABEL_31:

    v36 = sub_10007EBC0(&qword_1006B2B80, &qword_10055C1B0);
    v37 = *(*(v36 - 8) + 56);
    v38 = v67;
    return v37(v38, 1, 1, v36);
  }

  v33 = 0;
  v71 = v9 + 16;
  v72 = (v9 + 8);
  while (1)
  {
    if (v33 >= *(v32 + 16))
    {
      __break(1u);
      goto LABEL_52;
    }

    v27 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v5 = *(v9 + 72);
    v34 = *(v9 + 16);
    v34(v16, v32 + v27 + v5 * v33, v8);
    if (URLQueryItem.name.getter() == 6581603 && v35 == 0xE300000000000000)
    {
      break;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_23;
    }

    ++v33;
    (*v72)(v16, v8);
    if (v70 == v33)
    {
      goto LABEL_31;
    }
  }

LABEL_23:
  v41 = *(v9 + 32);
  v9 += 32;
  v40 = v41;
  v42 = v69;
  v41(v69, v16, v8);
  v60 = URLQueryItem.value.getter();
  v44 = v43;
  v69 = *(v9 - 24);
  (v69)(v42, v8);
  v61 = v44;
  if (!v44)
  {
    goto LABEL_31;
  }

  v59 = v40;
  v45 = 0;
  v46 = v32 + v27;
  while (1)
  {
    if (v45 >= *(v32 + 16))
    {
      __break(1u);
      goto LABEL_57;
    }

    v34(v73, v46, v8);
    if (URLQueryItem.name.getter() == 25705 && v47 == 0xE200000000000000)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_33;
    }

    ++v45;
    (v69)(v73, v8);
    v46 += v5;
    if (v70 == v45)
    {

      goto LABEL_31;
    }
  }

LABEL_33:

  v48 = v65;
  v59(v65, v73, v8);
  URLQueryItem.value.getter();
  v50 = v49;
  (v69)(v48, v8);
  v27 = v62;
  v31 = v63;
  v5 = v68;
  v8 = v61;
  if (!v50)
  {
    goto LABEL_31;
  }

  v16 = 0xD000000000000012;
  v9 = v60;
  if (v60 == 0xD000000000000013 && v61 == 0x8000000100578F00 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v51 = 0;
    goto LABEL_38;
  }

  if (v9 == 0xD00000000000001ALL && v8 == 0x8000000100578F20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v51 = 1;
    goto LABEL_38;
  }

  if (v9 == 0xD000000000000012 && v8 == 0x8000000100578F50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v51 = 3;
    goto LABEL_38;
  }

LABEL_52:
  if (v9 == v16 && v8 == 0x8000000100578FB0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v51 = 6;
LABEL_38:

    goto LABEL_39;
  }

LABEL_57:
  if (v9 == v16 + 9 && v8 == 0x8000000100578F70)
  {
    v51 = 4;
    v27 = v62;
    v31 = v63;
    v5 = v68;
    goto LABEL_38;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v51 = 4;
LABEL_65:
    v27 = v62;
    v31 = v63;
    v5 = v68;
    goto LABEL_38;
  }

  if (v60 == v16 + 3 && v61 == 0x8000000100578F90)
  {
    v51 = 5;
    goto LABEL_65;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v57 & 1) == 0)
  {

    goto LABEL_19;
  }

  v51 = 5;
  v27 = v62;
  v31 = v63;
  v5 = v68;
LABEL_39:
  UUID.init(uuidString:)();

  if ((*(v5 + 48))(v31, 1, v27) == 1)
  {
    sub_10010478C(v31);
    goto LABEL_19;
  }

  v52 = *(v5 + 32);
  v53 = v64;
  v52(v64, v31, v27);
  v54 = sub_10007EBC0(&qword_1006B2B80, &qword_10055C1B0);
  v55 = *(v54 + 48);
  v56 = v67;
  *v67 = v51;
  v52(&v56[v55], v53, v27);
  return (*(*(v54 - 8) + 56))(v56, 0, 1, v54);
}

unint64_t UTAlertCommand.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v4 = 0x6E756F5379616C70;
    if (a1 == 1)
    {
      v4 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      return v4;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 0xD000000000000012;
    if (a1 != 5)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 != 3)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (a1 <= 4u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

double static UTAlertCommand.urlFor(command:uuid:)(unsigned __int8 a1)
{
  _StringGuts.grow(_:)(18);

  v2 = 0xE900000000000064;
  v3 = 0x6E756F5379616C70;
  v4 = 0x8000000100578F90;
  v5 = 0xD000000000000015;
  if (a1 != 5)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000100578FB0;
  }

  v6 = 0x8000000100578F50;
  v7 = 0xD00000000000001BLL;
  if (a1 == 3)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x8000000100578F70;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  if (a1 == 1)
  {
    v3 = 0xD00000000000001ALL;
    v2 = 0x8000000100578F20;
  }

  if (!a1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x8000000100578F00;
  }

  if (a1 <= 2u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a1 <= 2u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._countAndFlagsBits = 1029990694;
  v11._object = 0xE400000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v12);

  URL.init(string:)();

  return result;
}

double sub_1003E3820(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_1003E3950@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s6FindMy14UTAlertCommandO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1003E3980(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE900000000000064;
    v9 = 0x6E756F5379616C70;
    if (v2 == 1)
    {
      v9 = 0xD00000000000001ALL;
      v8 = 0x8000000100578F20;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xD000000000000013;
    }

    if (v10)
    {
      v8 = 0x8000000100578F00;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x8000000100578F90;
    v4 = 0xD000000000000015;
    v5 = 0xD000000000000012;
    if (v2 != 5)
    {
      v4 = 0xD000000000000012;
      v3 = 0x8000000100578FB0;
    }

    v6 = 0x8000000100578F50;
    if (v2 != 3)
    {
      v5 = 0xD00000000000001BLL;
      v6 = 0x8000000100578F70;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t _s6FindMy14UTAlertCommandO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622A98, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1003E3B7C()
{
  result = qword_1006BE5C0;
  if (!qword_1006BE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE5C0);
  }

  return result;
}

unint64_t sub_1003E3BE0()
{
  result = qword_1006BE5C8;
  if (!qword_1006BE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE5C8);
  }

  return result;
}

void sub_1003E3C34()
{
  v0 = [objc_allocWithZone(UITableView) init];
  v1 = [v0 separatorColor];

  qword_1006D4970 = v1;
}

char *sub_1003E3C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6FindMy23FMOutlinedTableViewCell_outlineLayer;
  *&v3[v6] = [objc_allocWithZone(CAShapeLayer) init];
  v3[OBJC_IVAR____TtC6FindMy23FMOutlinedTableViewCell_disableOutline] = 0;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for FMOutlinedTableViewCell();
  v8 = objc_msgSendSuper2(&v14, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemBackgroundColor];
  [v10 setBackgroundColor:v11];

  v12 = [v10 layer];
  [v12 addSublayer:*&v10[OBJC_IVAR____TtC6FindMy23FMOutlinedTableViewCell_outlineLayer]];

  return v10;
}

void sub_1003E3EC0(__n128 a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for FMOutlinedTableViewCell();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  [v1 bounds];
  v6 = [objc_opt_self() bezierPathWithRoundedRect:v2 cornerRadius:{v3, v4, v5, 10.0}];
  v7 = OBJC_IVAR____TtC6FindMy23FMOutlinedTableViewCell_outlineLayer;
  v8 = *&v1[OBJC_IVAR____TtC6FindMy23FMOutlinedTableViewCell_outlineLayer];
  v9 = [v6 CGPath];
  [v8 setPath:v9];

  [*&v1[v7] setLineCap:kCALineCapRound];
  [*&v1[v7] setLineWidth:0.5];
  v10 = *&v1[v7];
  if (v1[OBJC_IVAR____TtC6FindMy23FMOutlinedTableViewCell_disableOutline] != 1)
  {
    v15 = qword_1006AEC88;
    v16 = v10;
    if (v15 != -1)
    {
      swift_once();
    }

    v13 = qword_1006D4970;
    v17 = qword_1006D4970;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = [v13 CGColor];

LABEL_8:
  [v10 setStrokeColor:v14];

  v18 = *&v1[v7];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  v22 = [v21 CGColor];

  [v20 setFillColor:v22];
}

id sub_1003E4188(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMOutlinedTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003E42C0(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for FMUTCardViewController(0);
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1);
  v4 = OBJC_IVAR____TtC6FindMy22FMUTCardViewController_mediator;
  v5 = OBJC_IVAR____TtC6FindMy22FMUTCardViewController_bypassWelcomeScreen;
  v6 = v2[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_bypassWelcomeScreen];
  v7 = objc_allocWithZone(type metadata accessor for FMUTContentViewController(0));

  v9 = sub_1002F6844(v8, v6);
  sub_1004DEC84(v9, v2);

  v10 = *(*&v2[v4] + 56);

  v11 = sub_1003CD4AC(v2, v10);

  *&v2[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_selectionSubscription] = v11;

  v12 = *&v2[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_content];
  *&v2[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_content] = v9;

  v2[v5] = 1;
}

void sub_1003E4418(char a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006B2B70, &unk_1005559A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for FMSelectedSection(0);
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for FMUTCardViewController(0);
  v46.receiver = v2;
  v46.super_class = v15;
  objc_msgSendSuper2(&v46, "viewWillDisappear:", a1 & 1);
  v16 = *&v2[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_selectionSubscription];
  if (v16)
  {
    v17 = *(*&v2[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_mediator] + 56);
    swift_beginAccess();

    v19 = sub_1003CD53C((v17 + 16), v16, v18);
    v20 = *(v17 + 16);
    if (v20 >> 62)
    {
      v42 = v19;
      v21 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v42;
      if (v21 >= v42)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21 >= v19)
      {
LABEL_4:
        sub_1003CD570(v19, v21);
        swift_endAccess();

        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_5:
  v22 = OBJC_IVAR____TtC6FindMy22FMUTCardViewController_mediator;
  v23 = *(*&v2[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_mediator] + 56);
  v24 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v23 + v24, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 19)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100005B14(v31, qword_1006D4630);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_15;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "FMItemDetailCardViewController: ranging ignores current selection";
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 16)
  {
    if (qword_1006AEBE0 == -1)
    {
LABEL_8:
      v26 = type metadata accessor for Logger();
      sub_100005B14(v26, qword_1006D4630);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v27, v28))
      {
LABEL_15:

        return;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "FMItemDetailCardViewController: map options ignores current selection";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

      goto LABEL_15;
    }

LABEL_27:
    swift_once();
    goto LABEL_8;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100005B14(v32, qword_1006D4630);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "FMItemDetailCardViewController: Returning to previous selection", v35, 2u);
  }

  v36 = *(*&v2[v22] + 56);
  v37 = OBJC_IVAR____TtC6FindMy22FMUTCardViewController_returnSelection;
  swift_beginAccess();
  sub_10005B504(&v2[v37], v6);
  v38 = *(v44 + 48);
  if (v38(v6, 1, v7) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v39 = v38(v6, 1, v7);

    if (v39 != 1)
    {
      sub_100158C10(v6);
    }
  }

  else
  {
    sub_10005B574(v6, v11);
  }

  v40 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v41 = v45;
  sub_100062074(v36 + v40, v45);
  swift_beginAccess();
  sub_100058530(v11, v36 + v40);
  swift_endAccess();
  sub_100058594(v41);

  sub_10005D4E4(v41);
  sub_10005D4E4(v11);
  sub_10005D4E4(v14);
}

void sub_1003E4A10(uint64_t a1, uint64_t a2)
{
  v5 = sub_10007EBC0(&qword_1006B2B70, &unk_1005559A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for FMSelectedSection(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  sub_100062074(a2, &v25 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 15)
  {
    if (EnumCaseMultiPayload == 16)
    {
      v17 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      swift_beginAccess();
      sub_100062074(a1 + v17, v11);

      v19 = sub_1001AB900(v18, v11, 0);

      sub_10005D4E4(v11);
      [v2 presentViewController:v19 animated:1 completion:0];

      return;
    }

    if (EnumCaseMultiPayload == 19)
    {
      return;
    }

    if (EnumCaseMultiPayload != 17)
    {
      goto LABEL_11;
    }
  }

  else if ((EnumCaseMultiPayload - 12) >= 3)
  {
    if (EnumCaseMultiPayload == 8)
    {
LABEL_17:
      sub_10005D4E4(v14);
      return;
    }

LABEL_11:
    v20 = v2;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMUTCardViewController: closing, no selection", v24, 2u);
    }

    if (*&v20[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_content])
    {
      sub_10024D71C();
    }

    goto LABEL_17;
  }

  sub_100062074(a2, v7);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtC6FindMy22FMUTCardViewController_returnSelection;
  swift_beginAccess();
  sub_100158C78(v7, &v2[v16]);
  swift_endAccess();
  if (*&v2[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_content])
  {
    sub_10024D71C();
  }
}

void sub_1003E4DE4()
{

  sub_100158C10(v0 + OBJC_IVAR____TtC6FindMy22FMUTCardViewController_returnSelection);
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy22FMUTCardViewController_content);
}

id sub_1003E4E44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMUTCardViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMUTCardViewController(uint64_t a1)
{
  result = qword_1006BE650;
  if (!qword_1006BE650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003E4F3C(uint64_t a1)
{
  sub_100158DF8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1003E4FF4(uint64_t a1, uint64_t a2)
{
  v5 = sub_10007EBC0(&qword_1006B2B70, &unk_1005559A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  *&v2[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_selectionSubscription] = 0;
  v8 = OBJC_IVAR____TtC6FindMy22FMUTCardViewController_returnSelection;
  v9 = type metadata accessor for FMSelectedSection(0);
  v10 = *(*(v9 - 8) + 56);
  v10(&v2[v8], 1, 1, v9);
  *&v2[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_content] = 0;
  v2[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_bypassWelcomeScreen] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_mediator] = a1;
  sub_100062074(a2, v7);
  v10(v7, 0, 1, v9);
  swift_beginAccess();

  sub_100158C78(v7, &v2[v8]);
  swift_endAccess();
  v11 = type metadata accessor for FMUTCardViewController(0);
  v15.receiver = v2;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  sub_10005D4E4(a2);
  return v12;
}

uint64_t sub_1003E5204()
{
  v1 = [v0 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v10[2] = v3;
  v10[3] = v5;
  v10[0] = 10649826;
  v10[1] = 0xA300000000000000;
  v9[0] = 44;
  v9[1] = 0xE100000000000000;
  v6 = sub_100035F3C();
  v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v10, v9, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);

  return v7;
}

id sub_1003E5358()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSubtitleLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003E5450()
{
  v1 = [objc_opt_self() secondarySystemBackgroundColor];
  [v0 setBackgroundColor:v1];

  v2 = [v0 layer];
  [v2 setCornerRadius:26.0];

  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 userInterfaceLayoutDirection];

  if (v4 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v0 setContentHorizontalAlignment:v5];
  v6 = objc_opt_self();
  v7 = [v6 defaultMetrics];
  [v7 scaledValueForValue:15.0];
  v9 = v8;

  v10 = [v6 defaultMetrics];
  [v10 scaledValueForValue:15.0];
  v12 = v11;

  return [v0 setContentEdgeInsets:{v9, 16.0, v12, 16.0}];
}

id sub_1003E5714(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMLostModeSummaryButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003E57C8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label);
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v23._object = 0x800000010057D3F0;
  v5._countAndFlagsBits = 0xD000000000000025;
  v5._object = 0x8000000100595EC0;
  v6.value._object = 0x800000010057D3D0;
  v23._countAndFlagsBits = 0xD000000000000018;
  v6.value._countAndFlagsBits = 0xD000000000000013;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v23);

  v8 = String._bridgeToObjectiveC()();

  [v2 setText:v8];

  v9 = *(v1 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitle);
  v10 = [v3 mainBundle];
  v24._object = 0x800000010057D3F0;
  v11._countAndFlagsBits = 0xD000000000000028;
  v11._object = 0x8000000100595EF0;
  v12.value._object = 0x800000010057D3D0;
  v24._countAndFlagsBits = 0xD000000000000018;
  v12.value._countAndFlagsBits = 0xD000000000000013;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v24);

  sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100552220;
  if (qword_1006AEA90 != -1)
  {
    swift_once();
  }

  v15 = [qword_1006D3D28 stringFromContact:a1];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_10008EE84();
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  String.init(format:_:)();

  v21 = String._bridgeToObjectiveC()();

  [v9 setText:v21];
}

id sub_1003E5A6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMBeaconSharingCircleUpdatedAttentionModule(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMBeaconSharingCircleUpdatedAttentionModule(uint64_t a1)
{
  result = qword_1006BE6D8;
  if (!qword_1006BE6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1003E5B30()
{
  v0 = sub_10007EBC0(&qword_1006B3298, &unk_100558AB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1002AEC90(0);
  *(v3 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) = 1;
  v4 = v3;
  sub_1002B20D8();
  v5 = type metadata accessor for FMPlatterIcon(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  v6 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_100140BE4(v2, v4 + v6);
  swift_endAccess();
  sub_1002B23D8();
  sub_10017D238(v2);
  *(v4 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_dismissable) = 1;
  v7 = *(v4 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_closeButton);
  [v7 setHidden:0];

  return v4;
}

void sub_1003E5D4C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &aBlock[-1] - v8;
  __chkstk_darwin(v10);
  v12 = &aBlock[-1] - v11;
  __chkstk_darwin(v13);
  v15 = &aBlock[-1] - v14;
  v16 = type metadata accessor for FMItemDetailCardViewController(0);
  v38.receiver = v2;
  v38.super_class = v16;
  objc_msgSendSuper2(&v38, "viewWillAppear:", a1 & 1);
  v17 = OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_mediator;
  v18 = *(*&v2[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_mediator] + 56);
  v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v18 + v19, v15);
  sub_100062074(v15, v12);
  LODWORD(v18) = swift_getEnumCaseMultiPayload();
  sub_10005D4E4(v12);
  if (v18 == 3)
  {
    v20 = objc_allocWithZone(type metadata accessor for FMItemDetailContentViewController(0));

    v22 = sub_1003A78F0(v21);

    sub_1004DEC84(v22, v2);
    v2[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_isSharedLostItem] = v22[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isSharedLostItem];
    v23 = *(*&v2[v17] + 56);

    v24 = sub_1003CD29C(v2, v23);

    sub_10005D4E4(v15);
    *&v2[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_selectionSubscription] = v24;
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100005B14(v25, qword_1006D4630);
    sub_100062074(v15, v9);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315138;
      sub_100062074(v9, v6);
      v30 = String.init<A>(describing:)();
      v32 = v31;
      sub_10005D4E4(v9);
      v33 = sub_100005B4C(v30, v32, aBlock);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "FMItemDetailCardViewController: Cannot be setup without a selected item. Selection: %s", v28, 0xCu);
      sub_100006060(v29);
    }

    else
    {

      sub_10005D4E4(v9);
    }

    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    aBlock[4] = sub_1000822F4;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10063C5F0;
    v35 = _Block_copy(aBlock);

    [v2 dismissViewControllerAnimated:1 completion:v35];
    _Block_release(v35);
    sub_10005D4E4(v15);
  }
}

void sub_1003E61B8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v4);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v42[-v8];
  __chkstk_darwin(v10);
  v12 = &v42[-v11];
  v13 = type metadata accessor for FMItemDetailCardViewController(0);
  v43.receiver = v2;
  v43.super_class = v13;
  objc_msgSendSuper2(&v43, "viewWillDisappear:", a1 & 1);
  v14 = *&v2[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_selectionSubscription];
  if (v14)
  {
    v15 = *(*&v2[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_mediator] + 56);
    swift_beginAccess();

    v17 = sub_1003CD53C((v15 + 16), v14, v16);
    v18 = *(v15 + 16);
    if (v18 >> 62)
    {
      v41 = v17;
      v19 = _CocoaArrayWrapper.endIndex.getter();
      v17 = v41;
      if (v19 >= v41)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19 >= v17)
      {
LABEL_4:
        sub_1003CD570(v17, v19);
        swift_endAccess();

        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_5:
  v20 = *&v2[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_alertController];
  *&v2[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_alertController] = 0;

  v21 = OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_mediator;
  v22 = *(*&v2[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_mediator] + 56);
  v23 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v22 + v23, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_27;
      }

      sub_10005D4E4(v12);
    }

    else
    {
      v31 = sub_10007EBC0(&qword_1006BEEE0, qword_100552070);
      sub_10008228C(&v12[*(v31 + 48)]);
      v32 = type metadata accessor for FMIPDevice();
      (*(*(v32 - 8) + 8))(v12, v32);
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100005B14(v33, qword_1006D4630);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_26;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "FMPersonDetailCardViewController: ignore current selection";
    goto LABEL_25;
  }

  switch(EnumCaseMultiPayload)
  {
    case 19:
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100005B14(v30, qword_1006D4630);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_26;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "FMItemDetailCardViewController: ranging ignores current selection";
      goto LABEL_25;
    case 16:
LABEL_10:
      if (qword_1006AEBE0 == -1)
      {
LABEL_11:
        v25 = type metadata accessor for Logger();
        sub_100005B14(v25, qword_1006D4630);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v26, v27))
        {
LABEL_26:

          return;
        }

        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = "FMItemDetailCardViewController: ignore current selection";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v26, v27, v29, v28, 2u);

        goto LABEL_26;
      }

LABEL_34:
      swift_once();
      goto LABEL_11;
    case 8:
      sub_10005D4E4(v12);
      goto LABEL_10;
  }

LABEL_27:
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100005B14(v34, qword_1006D4630);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "FMItemDetailCardViewController: Returning to previous selection", v37, 2u);
  }

  v38 = *(*&v2[v21] + 56);
  v39 = OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_returnSelection;
  swift_beginAccess();
  sub_100062074(&v2[v39], v9);
  v40 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v38 + v40, v6);
  swift_beginAccess();

  sub_100058530(v9, v38 + v40);
  swift_endAccess();
  sub_100058594(v6);

  sub_10005D4E4(v6);
  sub_10005D4E4(v9);
  sub_10005D4E4(v12);
}

void sub_1003E67E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v5 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v5);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  v52[3] = &type metadata for SolariumFeatureFlag;
  v52[4] = sub_10000BD04();
  v22 = isFeatureEnabled(_:)();
  sub_100006060(v52);
  if (v22)
  {
    sub_100062074(a2, v21);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 0x11 || ((1 << EnumCaseMultiPayload) & 0x2B000) == 0)
    {
      sub_10005D4E4(v21);
    }

    else
    {
      sub_100062074(a2, v18);
      v25 = OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_returnSelection;
      swift_beginAccess();
      sub_100058438(v18, &v3[v25]);
      swift_endAccess();
    }
  }

  v51 = a2;
  v26 = OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_mediator;
  v27 = *(*&v3[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_mediator] + 56);
  v28 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v27 + v28, v15);
  LODWORD(v27) = swift_getEnumCaseMultiPayload();
  sub_10005D4E4(v15);
  v29 = *(*&v3[v26] + 56);
  if (v27 == 8)
  {
    v30 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
    swift_beginAccess();
    sub_100062074(v29 + v30, v18);
    objc_allocWithZone(type metadata accessor for FMUTCardViewController(0));

    v32 = sub_1003E4FF4(v31, v18);

    [v3 presentCard:v32 completion:0];
  }

  else
  {
    v33 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v29 + v33, v12);
    LODWORD(v33) = swift_getEnumCaseMultiPayload();
    sub_10005D4E4(v12);
    if (v33 != 4)
    {
      v34 = *(*&v3[v26] + 56);
      v35 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      sub_100062074(v34 + v35, v18);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v34) = sub_10005F7D0(v18, v9);
      sub_10005D4E4(v9);
      sub_10005D4E4(v18);
      if ((v34 & 1) == 0)
      {
        swift_storeEnumTagMultiPayload();
        v36 = v51;
        v37 = sub_10005F7D0(v51, v18);
        sub_10005D4E4(v18);
        if (v37)
        {
          v38 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
          v39 = v50;
          swift_beginAccess();
          sub_100062074(v39 + v38, v18);

          v41 = sub_1001AB900(v40, v18, 0);

          sub_10005D4E4(v18);
          [v3 presentViewController:v41 animated:1 completion:0];
        }

        else
        {
          v42 = v49;
          sub_100062074(v36, v49);
          v43 = swift_getEnumCaseMultiPayload();
          sub_10005D4E4(v42);
          if (v43 != 3)
          {
            if (qword_1006AEBE0 != -1)
            {
              swift_once();
            }

            v44 = type metadata accessor for Logger();
            sub_100005B14(v44, qword_1006D4630);
            v45 = Logger.logObject.getter();
            v46 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              *v47 = 0;
              _os_log_impl(&_mh_execute_header, v45, v46, "FMItemDetailCardViewController: closing, no selection", v47, 2u);
            }

            sub_1003E6CF8();
          }
        }
      }
    }
  }
}

void sub_1003E6CF8()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_isSharedLostItem] == 1 && (sub_100423A2C() & 1) == 0)
  {
    if (!*&v0[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_alertController])
    {
      v36 = OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_alertController;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100005B14(v6, qword_1006D4630);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "FMItemDetailCardViewController: Showing Shared Lost Item alert", v9, 2u);
      }

      v10 = objc_opt_self();
      v11 = [v10 mainBundle];
      v44._object = 0x8000000100595FD0;
      v12._countAndFlagsBits = 0xD00000000000001CLL;
      v12._object = 0x8000000100595FB0;
      v44._countAndFlagsBits = 0xD00000000000002ELL;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v44);

      v14 = [v10 mainBundle];
      v45._object = 0x8000000100596020;
      v15._countAndFlagsBits = 0xD00000000000001ELL;
      v15._object = 0x8000000100596000;
      v45._countAndFlagsBits = 0xD000000000000030;
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v45);

      v17 = String._bridgeToObjectiveC()();

      v18 = String._bridgeToObjectiveC()();

      v19 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

      v20 = [v10 mainBundle];
      v46._object = 0x8000000100592900;
      v21._object = 0x80000001005928E0;
      v46._countAndFlagsBits = 0xD000000000000026;
      v21._countAndFlagsBits = 0xD000000000000014;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v46);

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v24 = String._bridgeToObjectiveC()();

      v41 = sub_1003E7890;
      v42 = v23;
      aBlock = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_100017328;
      v40 = &unk_10063C578;
      v25 = _Block_copy(&aBlock);

      v26 = objc_opt_self();
      v27 = [v26 actionWithTitle:v24 style:1 handler:v25];
      _Block_release(v25);

      [v19 addAction:v27];
      v28 = [v10 mainBundle];
      v47._object = 0x800000010057B8A0;
      v29._countAndFlagsBits = 0xD000000000000015;
      v29._object = 0x800000010057B880;
      v47._countAndFlagsBits = 0xD000000000000027;
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v47);

      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v32 = String._bridgeToObjectiveC()();

      v41 = sub_1003E7898;
      v42 = v31;
      aBlock = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_100017328;
      v40 = &unk_10063C5A0;
      v33 = _Block_copy(&aBlock);

      v34 = [v26 actionWithTitle:v32 style:0 handler:v33];
      _Block_release(v33);

      [v19 addAction:v34];
      [v19 setPreferredAction:v34];
      [v1 presentViewController:v19 animated:1 completion:0];

      v35 = *&v1[v36];
      *&v1[v36] = v19;
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100005B14(v2, qword_1006D4630);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "FMItemDetailCardViewController: Closing detail card manually", v5, 2u);
    }

    sub_10024D71C();
  }
}

void sub_1003E73A0(uint64_t a1, uint64_t a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMItemDetailCardViewController: Shared Lost Item alert action selected: Not Now", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_alertController];
    *&Strong[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_alertController] = 0;
  }
}

void sub_1003E74BC(uint64_t a1, uint64_t a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMItemDetailCardViewController: Shared Lost Item alert action selected: Continue", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_alertController);
    *(Strong + OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_alertController) = 0;
    v8 = Strong;

    v9 = *(*&v8[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_mediator] + 16);
    sub_10041E83C(1);

    sub_10024D71C();
  }
}

void sub_1003E7680()
{

  sub_10005D4E4(v0 + OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_returnSelection);

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_alertController);
}

id sub_1003E76E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMItemDetailCardViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMItemDetailCardViewController(uint64_t a1)
{
  result = qword_1006BE730;
  if (!qword_1006BE730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003E77D8(uint64_t a1)
{
  result = type metadata accessor for FMSelectedSection(319);
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

void sub_1003E78AC(void *a1)
{
  v3 = [v1 navigationController];
  if (v3)
  {
    v9 = v3;
    type metadata accessor for FMActivityIndicatingNavigationController();
    if (swift_dynamicCastClass())
    {
      sub_1000CD77C(a1, v4, v5);
      goto LABEL_9;
    }
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v9, v7, "FMActivityIndicatingViewController: hideActivityIndicator called on invalid navigation controller.", v8, 2u);
  }

LABEL_9:
}

id sub_1003E7A10(uint64_t a1, const char *a2)
{
  v3 = v2;
  v37 = a2;
  v38 = a1;
  v4 = type metadata accessor for FMIPDeviceState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_scrollView;
  *&v2[v11] = [objc_allocWithZone(UIScrollView) init];
  v12 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_contentStackView;
  *&v2[v12] = [objc_allocWithZone(UIStackView) init];
  *&v2[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_imagesContainerView;
  *&v2[v13] = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedImageView;
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  v19 = sub_1003DE464(0xD000000000000018, 0x80000001005961D0, 6778480, 0xE300000000000000, v15, v16, v17, v18, v37);
  v20 = [objc_allocWithZone(UIImageView) initWithImage:v19];

  *&v3[v14] = v20;
  v21 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_mismatchIconView;
  v22 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
  v23 = String._bridgeToObjectiveC()();
  v24 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v22];

  v25 = [objc_allocWithZone(UIImageView) initWithImage:v24];
  *&v3[v21] = v25;
  v26 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedDescription;
  *&v3[v26] = [objc_allocWithZone(UILabel) init];
  v27 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedSwitchSection;
  *&v3[v27] = [objc_allocWithZone(type metadata accessor for FMSectionPlatterGroupView()) init];
  v28 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedSwitch;
  *&v3[v28] = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  v29 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_device;
  v30 = type metadata accessor for FMIPDevice();
  v31 = *(v30 - 8);
  v32 = v37;
  (*(v31 + 16))(&v3[v29], v37, v30);
  FMIPDevice.state.getter();
  static FMIPDeviceState.isNotifyWhenDetachedEnabled.getter();
  sub_10000A4F8(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  LOBYTE(v29) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v33 = *(v5 + 8);
  v33(v7, v4);
  v33(v10, v4);
  v3[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_originalNotifyWhenDetachedState] = v29 & 1;
  v3[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedState] = v29 & 1;
  *&v3[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = v38;
  v34 = type metadata accessor for FMMediatedViewController();
  v39.receiver = v3;
  v39.super_class = v34;
  v35 = objc_msgSendSuper2(&v39, "initWithNibName:bundle:", 0, 0);
  (*(v31 + 8))(v32, v30);
  return v35;
}

void sub_1003E7E68()
{
  v56.receiver = v0;
  v56.super_class = type metadata accessor for FMNotifyWhenDetachedViewController(0);
  objc_msgSendSuper2(&v56, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 secondarySystemBackgroundColor];
    [v2 setBackgroundColor:v4];

    v5 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_scrollView;
    v6 = *&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_scrollView];
    v7 = [v3 secondarySystemBackgroundColor];
    [v6 setBackgroundColor:v7];

    v8 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_contentStackView;
    v9 = *&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_contentStackView];
    v10 = [v3 secondarySystemBackgroundColor];
    [v9 setBackgroundColor:v10];

    [*&v0[v5] setPreservesSuperviewLayoutMargins:1];
    [*&v0[v5] setContentInsetAdjustmentBehavior:3];
    [*&v0[v8] setPreservesSuperviewLayoutMargins:1];
    v11 = [*&v0[v8] setAxis:1];
    sub_1003E86E0(v11, v12, v13);
    sub_1003EA940();
    v14 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_imagesContainerView;
    [*&v0[v8] addArrangedSubview:*&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_imagesContainerView]];
    v15 = *&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedSwitchSection];
    v16 = *&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedSwitch];
    [*(v15 + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView) addArrangedSubview:v16];
    [*&v0[v8] addArrangedSubview:v15];
    v17 = *&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedDescription];
    [*&v0[v8] addArrangedSubview:v17];
    v18 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedImageView;
    [*&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedImageView] setContentMode:4];
    [*&v0[v14] addSubview:*&v0[v18]];
    v19 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_mismatchIconView;
    [*&v0[v14] addSubview:*&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_mismatchIconView]];
    v20 = *&v0[v19];
    v21 = [v3 systemBlueColor];
    [v20 setTintColor:v21];

    [*&v0[v5] addSubview:*&v0[v8]];
    v22 = [v0 view];
    if (v22)
    {
      v23 = v22;
      [v22 addSubview:*&v0[v5]];

      v55 = objc_opt_self();
      v24 = [v55 mainBundle];
      v57._object = 0x8000000100587910;
      v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v25.value._object = 0xEC00000031656C62;
      v26._countAndFlagsBits = 0xD00000000000002FLL;
      v26._object = 0x8000000100596230;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v57._countAndFlagsBits = 0xD000000000000017;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, v57);

      v28 = String._bridgeToObjectiveC()();

      [v17 setText:v28];

      [v17 setNumberOfLines:0];
      v29 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
      [v17 setFont:v29];

      v30 = [v3 secondaryLabelColor];
      [v17 setTextColor:v30];

      [v17 setLineBreakMode:0];
      [v17 sizeToFit];
      sub_1003EA02C();
      v31 = [v55 mainBundle];
      v58._object = 0x8000000100587910;
      v32._countAndFlagsBits = 0xD00000000000002ELL;
      v32._object = 0x8000000100596260;
      v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v33.value._object = 0xEC00000031656C62;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v58._countAndFlagsBits = 0xD000000000000017;
      v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v58);

      *&v16[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_title] = v35;

      v36 = *&v16[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel];

      v37 = v36;
      v38 = String._bridgeToObjectiveC()();

      [v37 setText:v38];

      *&v16[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate + 8] = &off_10063C620;
      swift_unknownObjectWeakAssign();
      v39 = String._bridgeToObjectiveC()();
      [v16 setAccessibilityIdentifier:v39];

      v16[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated] = 0;
      [*&v16[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator] setHidden:1];
      v16[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn] = v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedState];
      [*&v16[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch] setOn:?];
      v40 = objc_allocWithZone(UIBarButtonItem);
      v41 = v0;
      v42 = [v40 initWithBarButtonSystemItem:1 target:v41 action:"cancelAction"];
      v43 = [v41 navigationItem];
      [v43 setLeftBarButtonItem:v42];

      v44 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v41 action:"doneAction"];
      v45 = [v41 navigationItem];
      sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1005528C0;
      *(v46 + 32) = v44;
      sub_10000905C(0, &qword_1006B0160, UIBarButtonItem_ptr);
      v47 = v44;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v45 setRightBarButtonItems:isa animated:0];

      v49 = [v41 navigationItem];
      v50 = [v55 mainBundle];
      v59._object = 0x8000000100587910;
      v51._countAndFlagsBits = 0xD000000000000029;
      v51._object = 0x8000000100596290;
      v52.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v52.value._object = 0xEC00000031656C62;
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      v59._countAndFlagsBits = 0xD000000000000017;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v51, v52, v50, v53, v59);

      v54 = String._bridgeToObjectiveC()();

      [v49 setTitle:v54];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1003E86E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v43 = &v36 - v12;
  v13 = type metadata accessor for FMIPDevice();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v36 - v19;
  (*(v14 + 16))(&v36 - v19, v3 + OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_device, v13, v18);
  v21 = sub_1003E8DA4(v20, 0);
  v22 = *(v14 + 8);
  v22(v20, v13);
  if (!v21)
  {
    v21 = [objc_allocWithZone(MKAnnotationView) init];
  }

  v23 = v43;
  sub_1000E5498(v43);

  sub_100007204(v23, v10, &unk_1006BBCE0, &unk_1005534C0);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_100012DF0(v10, &unk_1006BBCE0, &unk_1005534C0);
    v24 = [objc_allocWithZone(MKAnnotationView) init];
  }

  else
  {
    (*(v14 + 32))(v16, v10, v13);
    v25 = sub_1003E8DA4(v16, 0);
    if (!v25)
    {
      v25 = [objc_allocWithZone(MKAnnotationView) init];
    }

    v24 = v25;
    v22(v16, v13);
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v26 = v24;
  v27 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  v28[2] = v4;
  v28[3] = v26;
  v28[4] = v21;
  aBlock[4] = sub_1003EB2B0;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063C688;
  v29 = _Block_copy(aBlock);
  v30 = v4;
  v31 = v21;

  v32 = v37;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A4F8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  v33 = v39;
  v34 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v41 + 8))(v33, v34);
  (*(v38 + 8))(v32, v40);
  return sub_100012DF0(v43, &unk_1006BBCE0, &unk_1005534C0);
}

id sub_1003E8C80(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_imagesContainerView;
  [*(a1 + OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_imagesContainerView) addSubview:a2];
  [*(a1 + v6) bounds];
  v8 = v7 * 0.5 + -60.0;
  [*(a1 + v6) bounds];
  [a2 setCenter:{v8, v9 * 0.5 + 39.0}];
  [*(a1 + v6) addSubview:a3];
  [*(a1 + v6) bounds];
  v11 = v10 * 0.5 + 57.0;
  [*(a1 + v6) bounds];

  return [a3 setCenter:{v11, v12 * 0.5 + 39.0}];
}

_BYTE *sub_1003E8DA4(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = [objc_allocWithZone(CLLocation) init];
  v5 = sub_1003E904C(a1, v4, v2);
  v6 = objc_allocWithZone(type metadata accessor for FMDeviceAnnotationView());
  v7 = v5;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 initWithAnnotation:v7 reuseIdentifier:v8];

  if (v9)
  {
    v9[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_shouldHideCenterCircle] = 1;
    [v9 setCanShowCallout:0];
    v9[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_applyShadowToBalloonTail] = 1;
    v10 = *&v9[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonLayer];
    [v10 bounds];
    sub_1002DEF14(v10);
  }

  if (qword_1006AEBD8 != -1)
  {
    swift_once();
  }

  v11 = *&xmmword_1006D4580;
  if (byte_1006D4628)
  {
    v11 = *&xmmword_1006D4580 - (*(&xmmword_1006D4580 + 1) + *(&xmmword_1006D4580 + 1));
  }

  v12 = *&qword_1006D4590 / v11;
  v13 = (v11 - *&qword_1006D4590) * 0.5 + *(&xmmword_1006D4580 + 1) * -4.0 + -1.0;
  CATransform3DMakeTranslation(&v22, v13, v13, 1.0);
  CATransform3DScale(&v23, &v22, v12, v12, 1.0);
  if (v9)
  {
    v14 = *&v9[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerCircle];
    v22 = v23;
    [v14 setTransform:&v22];
    v15 = *&v9[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_balloonLayer];
    v16 = *&CATransform3DIdentity.m33;
    *&v22.m31 = *&CATransform3DIdentity.m31;
    *&v22.m33 = v16;
    v17 = *&CATransform3DIdentity.m43;
    *&v22.m41 = *&CATransform3DIdentity.m41;
    *&v22.m43 = v17;
    v18 = *&CATransform3DIdentity.m13;
    *&v22.m11 = *&CATransform3DIdentity.m11;
    *&v22.m13 = v18;
    v19 = *&CATransform3DIdentity.m23;
    *&v22.m21 = *&CATransform3DIdentity.m21;
    *&v22.m23 = v19;
    [v15 setTransform:&v22];
    [*&v9[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerImage] setOpacity:0.0];
    v20 = *&v9[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_centerPlaceholder];
    [v20 setOpacity:0.0];
  }

  return v9;
}

char *sub_1003E904C(void *a1, void *a2, int a3)
{
  LODWORD(v104) = a3;
  v111 = a2;
  v108 = a1;
  v3 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v3 - 8);
  v95 = &v94 - v4;
  v5 = type metadata accessor for FMIPItem();
  v112 = *(v5 - 8);
  v113 = v5;
  __chkstk_darwin(v5);
  v96 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for FMIPConfigValue();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9 - 8);
  v106 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v105 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v13 - 8);
  v100 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v116 = &v94 - v16;
  v17 = type metadata accessor for FMIPDevice();
  v114 = *(v17 - 8);
  v115 = v17;
  __chkstk_darwin(v17);
  v117 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v94 - v20;
  v103 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for FMIPDeviceImageVariant();
  v24 = *(v101 - 8);
  __chkstk_darwin(v101);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v94 - v28;
  v30 = type metadata accessor for FMIPDeviceImageSize();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v34);
  v37 = &v94 - v36;
  (*(v31 + 104))(&v94 - v36, enum case for FMIPDeviceImageSize.list(_:), v30, v35);
  if (v104)
  {
    v38 = v101;
    (*(v24 + 104))(v29, enum case for FMIPDeviceImageVariant.online(_:), v101);
    (*(v31 + 16))(v33, v37, v30);
    (*(v24 + 16))(v26, v29, v38);
    v39 = objc_opt_self();

    v40 = [v39 mainScreen];
    [v40 scale];

    FMIPDeviceImageCacheRequest.init(class:model:color:size:variant:scale:)();
    dispatch thunk of FMImageCache.cachedImage(for:completion:)();

    (*(v102 + 8))(v23, v103);
    (*(v24 + 8))(v29, v101);
    (*(v31 + 8))(v37, v30);
    v41 = v118;
    v42 = v114;
    v43 = v115;
    v44 = v108;
  }

  else
  {
    v43 = v115;
    v44 = v108;
    (*(v114 + 16))(v21, v108, v115);
    (*(v31 + 16))(v33, v37, v30);
    v45 = objc_opt_self();

    v46 = [v45 mainScreen];
    [v46 scale];

    FMIPDeviceImageCacheRequest.init(device:size:scale:)();
    dispatch thunk of FMImageCache.cachedImage(for:completion:)();
    (*(v102 + 8))(v23, v103);

    v41 = v118;
    (*(v31 + 8))(v37, v30);
    v42 = v114;
  }

  v108 = v41;
  v104 = v41;
  v47 = v111;
  [v111 coordinate];
  v49 = v48;
  v51 = v50;
  [v47 horizontalAccuracy];
  v53 = v52;
  v54 = v52;
  v111 = *(v42 + 16);
  (v111)(v117, v44, v43);
  (*(v112 + 56))(v116, 1, 1, v113);
  v55 = objc_allocWithZone(type metadata accessor for FMDeviceAnnotation());
  v56 = OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage;
  *&v55[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage] = 0;
  v57 = OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v109 + 104))(v107, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v110);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v55[v57] = result;
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v53 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v53 < 9.22337204e18)
  {
    v59 = v98;
    v60 = v97;
    v61 = v99;
    (*(v98 + 104))(v97, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v99);
    v120 = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v59 + 8))(v60, v61);
    LOBYTE(v59) = v118 < v53;
    sub_10007EBC0(&unk_1006C2480, qword_10055D360);
    v62 = swift_allocObject();
    *(v62 + ((*(*v62 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    (v111)(v62 + *(*v62 + class metadata base offset for ManagedBuffer + 16), v117, v115);
    *&v55[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock] = v62;
    sub_10007EBC0(&unk_1006BB1D0, qword_100564000);
    v63 = swift_allocObject();
    *(v63 + ((*(*v63 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    v64 = v116;
    sub_100007204(v116, v63 + *(*v63 + class metadata base offset for ManagedBuffer + 16), &qword_1006B07D0, qword_100552820);
    *&v55[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_partLock] = v63;
    v65 = *&v55[v56];
    *&v55[v56] = v108;
    v66 = v104;

    v67 = &v55[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_tempCoordinate];
    *v67 = v49;
    v67[1] = v51;
    v68 = &v55[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v68 = 0;
    v68[1] = 0;
    *&v55[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
    *&v55[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
    v69 = &v55[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
    *v69 = 0;
    v69[1] = 0;
    v70 = &v55[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
    *v70 = v49;
    v70[1] = v51;
    *&v55[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v53;
    v55[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = 0;
    v55[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v59;
    v55[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
    v71 = type metadata accessor for FMAnnotation();
    v119.receiver = v55;
    v119.super_class = v71;
    v72 = objc_msgSendSuper2(&v119, "init");
    v73 = *&v72[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage];
    *&v72[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
    v74 = v72;

    v75 = v100;
    sub_100007204(v64, v100, &qword_1006B07D0, qword_100552820);
    v77 = v112;
    v76 = v113;
    if ((*(v112 + 48))(v75, 1, v113) == 1)
    {
      sub_100012DF0(v75, &qword_1006B07D0, qword_100552820);
LABEL_16:
      v86 = v117;
LABEL_17:
      v90 = FMIPDevice.name.getter();
      v92 = v91;

      (*(v114 + 8))(v86, v115);
      v93 = &v74[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
      *v93 = v90;
      v93[1] = v92;

      sub_100012DF0(v116, &qword_1006B07D0, qword_100552820);
      return v74;
    }

    v78 = v96;
    (*(v77 + 32))(v96, v75, v76);
    v79 = v95;
    FMIPDevice.itemGroup.getter();
    v80 = type metadata accessor for FMIPItemGroup();
    v81 = *(v80 - 8);
    if ((*(v81 + 48))(v79, 1, v80) == 1)
    {
      sub_100012DF0(v79, &unk_1006BB1C0, &unk_1005534F0);
    }

    else
    {
      v82 = FMIPItemGroup.groupedItems.getter();
      v83 = (*(v81 + 8))(v79, v80);
      __chkstk_darwin(v83);
      *(&v94 - 2) = v78;
      v84 = sub_100110710(sub_1002F5958, (&v94 - 4), v82);

      if (v84)
      {
        v85 = *(v84 + 16);
        v86 = v117;
        if (v85)
        {
          v87 = sub_10008C8B4(*(v84 + 16), 0);
          sub_1004A2330(&v118, &v87[(*(v77 + 80) + 32) & ~*(v77 + 80)], v85, v84);
          v89 = v88;
          sub_1002204D4(v118);
          if (v89 != v85)
          {
            __break(1u);
            goto LABEL_15;
          }
        }

        else
        {
        }

        (*(v77 + 8))(v78, v76);
        goto LABEL_17;
      }
    }

LABEL_15:
    (*(v77 + 8))(v78, v76);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_1003EA02C()
{
  v62 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_scrollView;
  [*&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_scrollView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v59 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_contentStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_contentStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_imagesContainerView;
  v61 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_imagesContainerView;
  [*&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_imagesContainerView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedImageView;
  [*&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedImageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedDescription] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedSwitchSection] setTranslatesAutoresizingMaskIntoConstraints:0];
  v63 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_mismatchIconView;
  [*&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_mismatchIconView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v60 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005528C0;
  v4 = [*&v0[v1] heightAnchor];
  v5 = [*&v0[v2] heightAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v60 activateConstraints:isa];

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1005528C0;
  v9 = [*&v0[v2] centerXAnchor];
  v10 = [*&v0[v61] centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v8 + 32) = v11;
  v12 = Array._bridgeToObjectiveC()().super.isa;

  [v60 activateConstraints:v12];

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100552EE0;
  v14 = [*&v0[v63] centerXAnchor];
  v15 = [*&v0[v61] centerXAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v13 + 32) = v16;
  v17 = [*&v0[v63] centerYAnchor];
  v18 = [*&v0[v61] centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-20.0];

  *(v13 + 40) = v19;
  v20 = Array._bridgeToObjectiveC()().super.isa;

  [v60 activateConstraints:v20];

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1005521F0;
  v22 = [*&v0[v62] topAnchor];
  v23 = [v0 view];
  if (!v23)
  {
    __break(1u);
    goto LABEL_9;
  }

  v24 = v23;
  v25 = [v23 safeAreaLayoutGuide];

  v26 = [v25 topAnchor];
  v27 = [v22 constraintEqualToAnchor:v26];

  *(v21 + 32) = v27;
  v28 = [*&v0[v62] bottomAnchor];
  v29 = [v0 view];
  if (!v29)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];

  v32 = [v28 constraintEqualToAnchor:v31];
  *(v21 + 40) = v32;
  v33 = [*&v0[v62] leadingAnchor];
  v34 = [v0 view];
  if (!v34)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v21 + 48) = v37;
  v38 = [*&v0[v62] trailingAnchor];
  v39 = [v0 view];
  if (!v39)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v40 = v39;
  v41 = [v39 trailingAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v21 + 56) = v42;
  v43 = Array._bridgeToObjectiveC()().super.isa;

  [v60 activateConstraints:v43];

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1005521F0;
  v45 = [*&v0[v59] topAnchor];
  v46 = [*&v0[v62] topAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v44 + 32) = v47;
  v48 = [*&v0[v59] bottomAnchor];
  v49 = [*&v0[v62] bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v44 + 40) = v50;
  v51 = [*&v0[v59] leadingAnchor];
  v52 = [*&v0[v62] layoutMarginsGuide];
  v53 = [v52 leadingAnchor];

  v54 = [v51 constraintEqualToAnchor:v53];
  *(v44 + 48) = v54;
  v55 = [*&v0[v59] trailingAnchor];
  v56 = [*&v0[v62] layoutMarginsGuide];
  v57 = [v56 trailingAnchor];

  v58 = [v55 constraintEqualToAnchor:v57];
  *(v44 + 56) = v58;
  v64 = Array._bridgeToObjectiveC()().super.isa;

  [v60 activateConstraints:v64];
}

void sub_1003EA940()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = *&v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedImageView];
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  v8 = v3;
  v9 = "notifyWhenDetachedState";
  if (v2 == 2)
  {
    v9 = "NotifyWhenDetached-Light";
    v10 = 0xD000000000000017;
  }

  else
  {
    v10 = 0xD000000000000018;
  }

  v12 = sub_1003DE464(v10, (v9 | 0x8000000000000000), 6778480, 0xE300000000000000, v4, v5, v6, v7, v11);
  [v8 setImage:v12];
}

void sub_1003EAA50()
{
  v1 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedState;
  if (v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedState] == v0[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_originalNotifyWhenDetachedState])
  {

    [v0 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    sub_100437A74();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = v0[v1];
      v3 = swift_allocObject();
      *(v3 + 16) = v0;
      v4 = v0;
      sub_10020782C(v2, sub_1003EB2A8, v3);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1003EAB5C(char a1, void *a2)
{
  sub_1003E78AC(0);
  if (a1)
  {

    [a2 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "FMNotifyWhenDetachedViewController: Error occurred", v7, 2u);
    }

    v8 = objc_opt_self();
    v9 = [v8 mainBundle];
    v24._object = 0x800000010057FF90;
    v10._countAndFlagsBits = 0xD000000000000019;
    v10._object = 0x800000010057FF70;
    v24._countAndFlagsBits = 0xD00000000000002BLL;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v24);

    v12 = [v8 mainBundle];
    v25._object = 0x800000010057FFE0;
    v13._object = 0x800000010057FFC0;
    v25._countAndFlagsBits = 0xD00000000000002ALL;
    v13._countAndFlagsBits = 0xD000000000000018;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v25);

    v15 = String._bridgeToObjectiveC()();

    v16 = String._bridgeToObjectiveC()();

    v22 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:1];

    v17 = [v8 mainBundle];
    v26._object = 0x8000000100579B60;
    v18._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v18._object = 0xEF454C5449545F4ELL;
    v26._countAndFlagsBits = 0xD000000000000021;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v26);

    v20 = String._bridgeToObjectiveC()();

    v21 = [objc_opt_self() actionWithTitle:v20 style:1 handler:0];

    [v22 addAction:v21];
    [a2 presentViewController:v22 animated:1 completion:0];
  }
}

uint64_t sub_1003EAF54()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_delegate);

  v1 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_device;
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_1003EB04C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNotifyWhenDetachedViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMNotifyWhenDetachedViewController(uint64_t a1)
{
  result = qword_1006BE7C8;
  if (!qword_1006BE7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003EB1D4(uint64_t a1)
{
  result = type metadata accessor for FMIPDevice();
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

void sub_1003EB2BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_scrollView;
  *(v1 + v2) = [objc_allocWithZone(UIScrollView) init];
  v3 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_contentStackView;
  *(v1 + v3) = [objc_allocWithZone(UIStackView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_imagesContainerView;
  *(v1 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedImageView;
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  v10 = sub_1003DE464(0xD000000000000018, 0x80000001005961D0, 6778480, 0xE300000000000000, v6, v7, v8, v9, v20);
  v11 = [objc_allocWithZone(UIImageView) initWithImage:v10];

  *(v1 + v5) = v11;
  v12 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_mismatchIconView;
  v13 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

  v16 = [objc_allocWithZone(UIImageView) initWithImage:v15];
  *(v1 + v12) = v16;
  v17 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedDescription;
  *(v1 + v17) = [objc_allocWithZone(UILabel) init];
  v18 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedSwitchSection;
  *(v1 + v18) = [objc_allocWithZone(type metadata accessor for FMSectionPlatterGroupView()) init];
  v19 = OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_notifyWhenDetachedSwitch;
  *(v1 + v19) = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1003EB53C()
{
  v0 = type metadata accessor for Date();
  v92 = *(v0 - 8);
  __chkstk_darwin(v0);
  v91 = &v88 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for URLQueryItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v101 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v102 = &v88 - v6;
  __chkstk_darwin(v7);
  v9 = &v88 - v8;
  v10 = sub_10007EBC0(&qword_1006BE7D8, &qword_10055FF18);
  __chkstk_darwin(v10 - 8);
  v93 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v94 = &v88 - v13;
  __chkstk_darwin(v14);
  v99 = &v88 - v15;
  __chkstk_darwin(v16);
  v98 = &v88 - v17;
  __chkstk_darwin(v18);
  v20 = &v88 - v19;
  __chkstk_darwin(v21);
  v23 = &v88 - v22;
  v24 = sub_10007EBC0(&qword_1006B0570, qword_100552E38);
  __chkstk_darwin(v24 - 8);
  v26 = &v88 - v25;
  v27 = type metadata accessor for URLComponents();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v31;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v28 + 48))(v26, 1, v32) == 1)
  {
    v33 = &qword_1006B0570;
    v34 = qword_100552E38;
    v35 = v26;
LABEL_53:
    sub_100012DF0(v35, v33, v34);
    return 0;
  }

  v88 = v0;
  v89 = v32;
  v90 = v28;
  (*(v28 + 32))(v30, v26, v32);
  result = URLComponents.queryItems.getter();
  v95 = v30;
  v96 = v23;
  v97 = v20;
  if (result)
  {
    v37 = result;
    v38 = result[2];
    if (v38)
    {
      v39 = 0;
      v40 = 0x656475746974616CLL;
      v100 = (v3 + 16);
      while (v39 < *(v37 + 16))
      {
        (*(v3 + 16))(v9, v37 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v39, v2);
        if (URLQueryItem.name.getter() == v40 && v41 == 0xE800000000000000)
        {

LABEL_14:

          v23 = v96;
          (*(v3 + 32))(v96, v9, v2);
          v44 = *(v3 + 56);
          v45 = v23;
          v46 = 0;
          goto LABEL_15;
        }

        v42 = v40;
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v43)
        {
          goto LABEL_14;
        }

        ++v39;
        result = (*(v3 + 8))(v9, v2);
        v40 = v42;
        if (v38 == v39)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_68;
    }

LABEL_11:

    v44 = *(v3 + 56);
    v23 = v96;
    v45 = v96;
    v46 = 1;
LABEL_15:
    v100 = v44;
    v44(v45, v46, 1, v2);
    v30 = v95;
    v20 = v97;
  }

  else
  {
    v100 = *(v3 + 56);
    v100(v23, 1, 1, v2);
  }

  v47 = v99;
  result = URLComponents.queryItems.getter();
  if (result)
  {
    v48 = result;
    v49 = result[2];
    if (v49)
    {
      v50 = 0;
      while (v50 < *(v48 + 16))
      {
        (*(v3 + 16))(v102, v48 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v50, v2);
        if (URLQueryItem.name.getter() == 0x64757469676E6F6CLL && v51 == 0xE900000000000065)
        {

LABEL_27:

          v20 = v97;
          (*(v3 + 32))(v97, v102, v2);
          v53 = 0;
          v30 = v95;
          v23 = v96;
          goto LABEL_28;
        }

        v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v52)
        {
          goto LABEL_27;
        }

        ++v50;
        result = (*(v3 + 8))(v102, v2);
        if (v49 == v50)
        {
          goto LABEL_24;
        }
      }

LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      return result;
    }

LABEL_24:

    v53 = 1;
    v30 = v95;
    v23 = v96;
    v20 = v97;
LABEL_28:
    v47 = v99;
  }

  else
  {
    v53 = 1;
  }

  v54 = 1;
  v102 = v3 + 56;
  v100(v20, v53, 1, v2);
  result = URLComponents.queryItems.getter();
  if (result)
  {
    v55 = result;
    v56 = result[2];
    if (v56)
    {
      v57 = 0;
      while (v57 < *(v55 + 16))
      {
        (*(v3 + 16))(v101, v55 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v57, v2);
        if (URLQueryItem.name.getter() == 0x7963617275636361 && v58 == 0xE800000000000000)
        {

LABEL_40:

          v60 = v98;
          (*(v3 + 32))(v98, v101, v2);
          v54 = 0;
          v30 = v95;
          v23 = v96;
          v20 = v97;
          goto LABEL_41;
        }

        v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v59)
        {
          goto LABEL_40;
        }

        ++v57;
        result = (*(v3 + 8))(v101, v2);
        if (v56 == v57)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_69;
    }

LABEL_37:

    v54 = 1;
    v30 = v95;
    v23 = v96;
    v20 = v97;
    v60 = v98;
LABEL_41:
    v47 = v99;
  }

  else
  {
    v60 = v98;
  }

  v100(v60, v54, 1, v2);
  sub_1003EC21C(v23, v47);
  v61 = *(v3 + 48);
  if (v61(v47, 1, v2) == 1)
  {
    sub_100012DF0(v60, &qword_1006BE7D8, &qword_10055FF18);
    sub_100012DF0(v20, &qword_1006BE7D8, &qword_10055FF18);
    sub_100012DF0(v23, &qword_1006BE7D8, &qword_10055FF18);
    (*(v90 + 8))(v30, v89);
    v35 = v47;
LABEL_52:
    v33 = &qword_1006BE7D8;
    v34 = &qword_10055FF18;
    goto LABEL_53;
  }

  v62 = URLQueryItem.value.getter();
  v64 = v63;
  v65 = *(v3 + 8);
  v65(v47, v2);
  if (!v64)
  {
    sub_100012DF0(v98, &qword_1006BE7D8, &qword_10055FF18);
    sub_100012DF0(v97, &qword_1006BE7D8, &qword_10055FF18);
    sub_100012DF0(v96, &qword_1006BE7D8, &qword_10055FF18);
    (*(v90 + 8))(v30, v89);
    return 0;
  }

  v66 = v97;
  v67 = v94;
  sub_1003EC21C(v97, v94);
  if (v61(v67, 1, v2) == 1)
  {

    v68 = v67;
    sub_100012DF0(v98, &qword_1006BE7D8, &qword_10055FF18);
    sub_100012DF0(v66, &qword_1006BE7D8, &qword_10055FF18);
    sub_100012DF0(v96, &qword_1006BE7D8, &qword_10055FF18);
    (*(v90 + 8))(v30, v89);
LABEL_51:
    v35 = v68;
    goto LABEL_52;
  }

  v69 = URLQueryItem.value.getter();
  v71 = v70;
  v65(v67, v2);
  if (!v71)
  {
LABEL_66:

    sub_100012DF0(v98, &qword_1006BE7D8, &qword_10055FF18);
    sub_100012DF0(v97, &qword_1006BE7D8, &qword_10055FF18);
    sub_100012DF0(v96, &qword_1006BE7D8, &qword_10055FF18);
    (*(v90 + 8))(v95, v89);
    return 0;
  }

  v102 = v69;
  v72 = v98;
  v73 = v93;
  sub_1003EC21C(v98, v93);
  if (v61(v73, 1, v2) == 1)
  {

    v68 = v73;
    sub_100012DF0(v72, &qword_1006BE7D8, &qword_10055FF18);
    sub_100012DF0(v97, &qword_1006BE7D8, &qword_10055FF18);
    sub_100012DF0(v96, &qword_1006BE7D8, &qword_10055FF18);
    (*(v90 + 8))(v95, v89);
    goto LABEL_51;
  }

  v74 = v73;
  v75 = URLQueryItem.value.getter();
  v77 = v76;
  v65(v74, v2);
  if (!v77)
  {

    goto LABEL_66;
  }

  v103[0] = 0;
  v78 = sub_1003EC28C(v62, v64, v103);

  v79 = 0.0;
  if (v78)
  {
    v80 = *v103;
  }

  else
  {
    v80 = 0.0;
  }

  v103[0] = 0;
  v81 = sub_1003EC28C(v102, v71, v103);

  if (v81)
  {
    v82 = *v103;
  }

  else
  {
    v82 = 0.0;
  }

  v103[0] = 0;
  v83 = sub_1003EC28C(v75, v77, v103);

  if (v83)
  {
    v79 = *v103;
  }

  v84 = v91;
  Date.init()();
  v85 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v87 = [v85 initWithCoordinate:isa altitude:v80 horizontalAccuracy:v82 verticalAccuracy:-1.0 course:v79 speed:v79 timestamp:{-1.0, -1.0}];

  (*(v92 + 8))(v84, v88);
  sub_100012DF0(v98, &qword_1006BE7D8, &qword_10055FF18);
  sub_100012DF0(v97, &qword_1006BE7D8, &qword_10055FF18);
  sub_100012DF0(v96, &qword_1006BE7D8, &qword_10055FF18);
  (*(v90 + 8))(v95, v89);
  return v87;
}

uint64_t sub_1003EC21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BE7D8, &qword_10055FF18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1003EC28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_1003EC384@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_1003EC404(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003EE304(&qword_1006BE4F8, type metadata accessor for FMMapKitChooseMapViewModel, &unk_10055FAAC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

double sub_1003EC4D4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003EE304(&qword_1006BE4F8, type metadata accessor for FMMapKitChooseMapViewModel, &unk_10055FAAC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;

  return result;
}

double sub_1003EC580(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1003DDE0C(v1, v2);
}

double sub_1003EC5C0()
{
  v0 = static Font.title.getter();
  v1 = static Font.title2.getter();
  result = 10.0;
  __asm { FMOV            V1.2D, #16.0 }

  xmmword_1006D4990 = xmmword_10055FF20;
  unk_1006D49A0 = _Q1;
  *&xmmword_1006D49B0 = v0;
  *(&xmmword_1006D49B0 + 1) = 0x4074000000000000;
  qword_1006D49C0 = v1;
  unk_1006D49C8 = 0x4046000000000000;
  return result;
}

double sub_1003EC610@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_10007EBC0(&qword_1006BE940, &qword_100560028);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = v19 - v5;
  v7 = type metadata accessor for FMMapKitChooseMapView(0);
  v8 = *(v1 + *(v7 + 24) + 24);
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = v8;
  v6[16] = 0;
  v9 = sub_10007EBC0(&qword_1006BE948, &qword_100560030);
  sub_1003EC7F0(v1, &v6[*(v9 + 44)]);
  LOBYTE(v8) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v10 = &v6[*(v4 + 44)];
  *v10 = v8;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  v15 = *(v1 + *(v7 + 20));
  swift_getKeyPath();
  *&v19[0] = v15;
  sub_1003EE304(&qword_1006BE4F8, type metadata accessor for FMMapKitChooseMapViewModel, &unk_10055FAAC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100073DF4(v6, a1);
  v16 = (a1 + *(sub_10007EBC0(&qword_1006BE950, &qword_100560060) + 36));
  v17 = v19[1];
  *v16 = v19[0];
  v16[1] = v17;
  result = *&v20;
  v16[2] = v20;
  return result;
}

uint64_t sub_1003EC7F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for MapStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for MapStylePicker();
  v7 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = &v47 - v10;
  v11 = sub_10007EBC0(&qword_1006BE958, &qword_100560068);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v48 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = &v16[*(sub_10007EBC0(&qword_1006BE960, &qword_100560070) + 44)];
  v47 = a1;
  sub_1003ECC98(a1, v17);
  v18 = static Edge.Set.leading.getter();
  v19 = type metadata accessor for FMMapKitChooseMapView(0);
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v16[*(sub_10007EBC0(&qword_1006BE968, &qword_100560078) + 36)];
  *v28 = v18;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v30 = &v16[*(v12 + 44)];
  *v30 = v29;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  sub_10007EBC0(&qword_1006BE970, &qword_100560080);
  type metadata accessor for MapStylePicker.Option();
  *(swift_allocObject() + 16) = xmmword_100552210;
  static MapStyle.standard.getter();
  static MapStylePicker.Option.standard(style:showTrafficToggle:)();
  v35 = *(v4 + 8);
  v35(v6, v3);
  static MapStyle.hybrid.getter();
  static MapStylePicker.Option.satellite(style:showTrafficToggle:showLabelsToggle:)();
  v35(v6, v3);
  v36 = *(*(v47 + *(v19 + 20)) + 16);
  v37 = v52;
  MapStylePicker.init(options:mapView:)();
  v38 = v48;
  sub_100007204(v16, v48, &qword_1006BE958, &qword_100560068);
  v39 = v7;
  v40 = *(v7 + 16);
  v41 = v49;
  v42 = v50;
  v40(v49, v37, v50);
  v43 = v51;
  sub_100007204(v38, v51, &qword_1006BE958, &qword_100560068);
  v44 = sub_10007EBC0(&qword_1006BE978, &qword_100560088);
  v40((v43 + *(v44 + 48)), v41, v42);
  v45 = *(v39 + 8);
  v45(v52, v42);
  sub_100012DF0(v16, &qword_1006BE958, &qword_100560068);
  v45(v41, v42);
  return sub_100012DF0(v38, &qword_1006BE958, &qword_100560068);
}

uint64_t sub_1003ECC98@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v78 = a2;
  v79 = a1;
  v3 = type metadata accessor for DefaultGlassEffectShape();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v68 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Glass();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v61 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v65 = v60 - v8;
  v63 = sub_10007EBC0(&qword_1006BE980, &qword_100560090);
  __chkstk_darwin(v63);
  v64 = (v60 - v9);
  v10 = sub_10007EBC0(&qword_1006BE988, &qword_100560098);
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v62 = v60 - v11;
  v12 = sub_10007EBC0(&qword_1006BE990, &qword_1005600A0);
  __chkstk_darwin(v12 - 8);
  v77 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = v60 - v15;
  v16 = type metadata accessor for FMMapKitChooseMapView(0);
  v17 = *(a1 + *(v16 + 20));
  swift_getKeyPath();
  v92 = v17;
  v18 = OBJC_IVAR____TtC6FindMy26FMMapKitChooseMapViewModel___observationRegistrar;
  v71 = sub_1003EE304(&qword_1006BE4F8, type metadata accessor for FMMapKitChooseMapViewModel, &unk_10055FAAC);
  v72 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v17 + 40);
  v92 = *(v17 + 32);
  v93 = v19;
  sub_100035F3C();

  v76 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  swift_getKeyPath();
  v92 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v60[1] = v16;

  LOBYTE(v16) = v23;
  v24 = v76;
  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;
  v73 = v30;

  sub_1001A1B28(v24, v21, v16 & 1);

  static Font.Weight.bold.getter();
  v31 = Text.fontWeight(_:)();
  v74 = v32;
  v75 = v31;
  LOBYTE(v19) = v33;
  v76 = v34;
  sub_1001A1B28(v25, v27, v29 & 1);

  static Alignment.leading.getter();
  v35 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LODWORD(v73) = v19 & 1;
  v112 = v19 & 1;
  swift_getKeyPath();
  v92 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v17 + 24) == 1)
  {
    KeyPath = swift_getKeyPath();
    v37 = v64;
    *v64 = KeyPath;
    sub_10007EBC0(&qword_1006C3680, &qword_100560110);
    swift_storeEnumTagMultiPayload();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v38 = (v37 + *(sub_10007EBC0(&qword_1006BE9A8, &qword_100560118) + 36));
    v39 = v113[1];
    *v38 = v113[0];
    v38[1] = v39;
    v38[2] = v113[2];
    *(v37 + *(v63 + 36)) = 256;
    v40 = v61;
    static Glass.regular.getter();
    v41 = v65;
    Glass.flexible(_:)();
    v42 = v67;
    v43 = *(v66 + 8);
    v43(v40, v67);
    v44 = v68;
    DefaultGlassEffectShape.init()();
    sub_1003EE190();
    sub_1003EE304(&qword_1006BE9D8, &type metadata accessor for DefaultGlassEffectShape, &protocol conformance descriptor for DefaultGlassEffectShape);
    v45 = v62;
    v46 = v70;
    View.glassEffect<A>(_:in:)();
    (*(v69 + 8))(v44, v46);
    v43(v41, v42);
    sub_100012DF0(v37, &qword_1006BE980, &qword_100560090);
    (*(v81 + 32))(v80, v45, v82);
    v35 = 0;
  }

  v47 = v80;
  (*(v81 + 56))(v80, v35, 1, v82);
  v48 = v77;
  sub_100007204(v47, v77, &qword_1006BE990, &qword_1005600A0);
  v49 = v74;
  v50 = v75;
  *&v83 = v75;
  *(&v83 + 1) = v74;
  v51 = v73;
  LOBYTE(v84) = v73;
  *(&v84 + 1) = *v111;
  DWORD1(v84) = *&v111[3];
  v52 = v76;
  *(&v84 + 1) = v76;
  v89 = v108;
  v90 = v109;
  v91 = v110;
  v85 = v104;
  v86 = v105;
  v87 = v106;
  v88 = v107;
  v53 = v109;
  v54 = v78;
  v78[6] = v108;
  v54[7] = v53;
  v54[8] = v91;
  v55 = v86;
  v54[2] = v85;
  v54[3] = v55;
  v56 = v88;
  v54[4] = v87;
  v54[5] = v56;
  v57 = v84;
  *v54 = v83;
  v54[1] = v57;
  v58 = sub_10007EBC0(&qword_1006BE998, &qword_1005600D0);
  sub_100007204(v48, v54 + *(v58 + 48), &qword_1006BE990, &qword_1005600A0);
  sub_100007204(&v83, &v92, &qword_1006BE9A0, &qword_1005600D8);
  sub_100012DF0(v47, &qword_1006BE990, &qword_1005600A0);
  sub_100012DF0(v48, &qword_1006BE990, &qword_1005600A0);
  v92 = v50;
  v93 = v49;
  v94 = v51;
  *v95 = *v111;
  *&v95[3] = *&v111[3];
  v96 = v52;
  v101 = v108;
  v102 = v109;
  v103 = v110;
  v97 = v104;
  v98 = v105;
  v99 = v106;
  v100 = v107;
  return sub_100012DF0(&v92, &qword_1006BE9A0, &qword_1005600D8);
}

Class sub_1003ED4F0(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006BEA98, qword_100560210);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-v4];
  sub_10000905C(0, &qword_1006B3400, UIButton_ptr);
  sub_10000905C(0, &qword_1006AF730, UIAction_ptr);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  v21.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  isa = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v21).super.super.super.super.isa;
  v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightMedium;
  v11 = UIFontWeightTrait;
  v12 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B47A0, &qword_100552690);
  v13 = sub_10002ACDC(v12);

  v14 = [objc_opt_self() configurationWithFont:v13];

  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:v15];

  [(objc_class *)isa setImage:v17 forState:0];
  v18 = [objc_opt_self() labelColor];
  [(objc_class *)isa setTintColor:v18];

  return isa;
}

double sub_1003ED850()
{
  sub_10007EBC0(&qword_1006BEA98, qword_100560210);
  UIViewRepresentableContext.coordinator.getter();
  v0 = *(v3 + 16);

  v0(v1);

  return result;
}

uint64_t sub_1003ED8C4(uint64_t a1)
{
  v15 = type metadata accessor for EnvironmentValues();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006C3680, &qword_100560110);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007204(a1, v7, &qword_1006C3680, &qword_100560110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1003EDB40()
{

  return swift_deallocClassInstance();
}

void sub_1003EDBE4(uint64_t a1, __n128 a2)
{
  sub_1003EDC70(319, a2);
  if (v2 <= 0x3F)
  {
    type metadata accessor for FMMapKitChooseMapViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003EDC70(uint64_t a1, __n128 a2)
{
  if (!qword_1006BE908)
  {
    type metadata accessor for DismissAction();
    v2 = type metadata accessor for Environment();
    if (!v3)
    {
      atomic_store(v2, &qword_1006BE908);
    }
  }
}

__n128 sub_1003EDCC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1003EDCDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003EDD24(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

double sub_1003EDDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  sub_10007EBC0(&qword_1006BEA98, qword_100560210);
  UIViewRepresentableContext.coordinator.getter();
  v7 = v11[1];
  sub_1003EE58C(v4, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1003EE5F0(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *(v7 + 16) = sub_1003EE754;
  *(v7 + 24) = v9;

  return result;
}

uint64_t sub_1003EDED4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1003EE58C(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1003EE5F0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  type metadata accessor for CloseButtonModern.Coordinator();
  result = swift_allocObject();
  *(result + 16) = sub_1003EE828;
  *(result + 24) = v7;
  *a2 = result;
  return result;
}

uint64_t sub_1003EDFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003EE304(&qword_1006BEA90, type metadata accessor for CloseButtonModern, &unk_100560130);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003EE080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003EE304(&qword_1006BEA90, type metadata accessor for CloseButtonModern, &unk_100560130);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003EE114(uint64_t a1)
{
  sub_1003EE304(&qword_1006BEA90, type metadata accessor for CloseButtonModern, &unk_100560130);
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1003EE190()
{
  result = qword_1006BE9B0;
  if (!qword_1006BE9B0)
  {
    sub_10007EC08(&qword_1006BE980, &qword_100560090);
    sub_1003EE248();
    sub_100004098(&qword_1006BE9C8, &qword_1006BE9D0, &qword_100560120, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE9B0);
  }

  return result;
}

unint64_t sub_1003EE248()
{
  result = qword_1006BE9B8;
  if (!qword_1006BE9B8)
  {
    sub_10007EC08(&qword_1006BE9A8, &qword_100560118);
    sub_1003EE304(&qword_1006BE9C0, type metadata accessor for CloseButtonModern, &unk_1005601C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BE9B8);
  }

  return result;
}

uint64_t sub_1003EE304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003EE394(uint64_t a1, __n128 a2)
{
  sub_1003EDC70(319, a2);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1003EE400()
{
  result = qword_1006BEA70;
  if (!qword_1006BEA70)
  {
    sub_10007EC08(&qword_1006BE950, &qword_100560060);
    sub_1003EE48C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEA70);
  }

  return result;
}

unint64_t sub_1003EE48C()
{
  result = qword_1006BEA78;
  if (!qword_1006BEA78)
  {
    sub_10007EC08(&qword_1006BE940, &qword_100560028);
    sub_100004098(&qword_1006BEA80, &qword_1006BEA88, &qword_100560128, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEA78);
  }

  return result;
}

uint64_t sub_1003EE58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloseButtonModern(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003EE5F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloseButtonModern(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003EE654()
{
  v1 = *(type metadata accessor for CloseButtonModern(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_10007EBC0(&qword_1006C3680, &qword_100560110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_1003EE7AC()
{
  sub_10007EBC0(&qword_1006BEA98, qword_100560210);

  return sub_1003ED850();
}

double sub_1003EE82C()
{
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  result = *&qword_1006D4798;
  *&xmmword_1006D49D0 = 0x4024000000000000;
  *(&xmmword_1006D49D0 + 1) = qword_1006D4798;
  byte_1006D49E0 = 1;
  return result;
}

id sub_1003EE898()
{
  v1 = OBJC_IVAR____TtC6FindMy16FMHelpFriendView_link;
  *&v0[v1] = [objc_allocWithZone(UIButton) init];
  v2 = OBJC_IVAR____TtC6FindMy16FMHelpFriendView_message;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy16FMHelpFriendView_style;
  if (qword_1006AEC98 != -1)
  {
    swift_once();
  }

  v4 = &v0[v3];
  v5 = byte_1006D49E0;
  *v4 = xmmword_1006D49D0;
  v4[16] = v5;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for FMHelpFriendView();
  v6 = objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003EE9EC();
  sub_1003EED2C();

  return v6;
}

id sub_1003EE9EC()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy16FMHelpFriendView_link];
  v2 = objc_opt_self();
  v3 = [v2 systemBlueColor];
  [v1 setTitleColor:v3 forState:0];

  v4 = [objc_opt_self() mainBundle];
  v20._object = 0x80000001005963B0;
  v5._object = 0x8000000100596390;
  v20._countAndFlagsBits = 0xD000000000000024;
  v5._countAndFlagsBits = 0xD000000000000012;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v20);

  v7 = String._bridgeToObjectiveC()();

  [v1 setTitle:v7 forState:0];

  v8 = [v1 titleLabel];
  if (v8)
  {
    v9 = v8;
    v10 = UIFontTextStyleBody;
    v11 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v9 setFont:v11];
  }

  else
  {
    v10 = UIFontTextStyleBody;
  }

  if (v0[OBJC_IVAR____TtC6FindMy16FMHelpFriendView_style + 16])
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  if (v0[OBJC_IVAR____TtC6FindMy16FMHelpFriendView_style + 16])
  {
    v13 = 4;
  }

  else
  {
    v13 = 1;
  }

  [v1 setContentHorizontalAlignment:v12];
  [v1 addTarget:v0 action:"handleLinkTap" forControlEvents:64];
  v14 = *&v0[OBJC_IVAR____TtC6FindMy16FMHelpFriendView_message];
  sub_10022E294(0xD00000000000001ALL, 0x80000001005963E0);
  v15 = String._bridgeToObjectiveC()();

  [v14 setText:v15];

  v16 = [v2 secondaryLabelColor];
  [v14 setTextColor:v16];

  v17 = [objc_opt_self() preferredFontForTextStyle:v10];
  [v14 setFont:v17];

  [v14 setNumberOfLines:0];
  [v14 setAdjustsFontForContentSizeCategory:1];
  [v14 setTextAlignment:v13];
  [v0 addSubview:v1];

  return [v0 addSubview:v14];
}