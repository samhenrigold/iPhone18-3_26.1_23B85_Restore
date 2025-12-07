uint64_t sub_100017F7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100017FDC()
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DA480);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Transition animation ended", v3, 2u);
  }

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, "@KPI NearbyInteraction.card-ui-did-appear", v5, 2u);
  }
}

void sub_100018138(void *a1, uint64_t a2)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000047A0(v3, qword_1000DA480);
  swift_unknownObjectRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = [a1 initiallyInteractive];
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, v4, v5, "Dismiss animation starting: initiallyInteractive=%{BOOL}d", v6, 8u);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100017C3C(0);
  }
}

void sub_100018294(void *a1)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DA480);
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = [a1 isCancelled];
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, oslog, v3, "Dismiss animation ended: isCancelled=%{BOOL}d", v4, 8u);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

unint64_t sub_1000183E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *((swift_isaMask & *v2) + qword_1000F3C10 + 16);
  *(v3 + v6) = [objc_allocWithZone(type metadata accessor for AdaptivePresentationControllerDelegate()) init];
  if (qword_1000D9758 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000047A0(v7, qword_1000DB2F0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Init", v10, 2u);
  }

  v11 = (v3 + *((swift_isaMask & *v3) + qword_1000F3C60 + 16));
  *v11 = 0;
  v11[1] = 0;
  v12 = UIHostingController.init(rootView:)();
  v13 = [v12 presentationController:a1];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

LABEL_19:
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "### Could not get UISheetPresentationController", v31, 2u);
    }

    v14 = v12;
    goto LABEL_25;
  }

  v16 = v15;
  v17 = [objc_opt_self() currentTraitCollection];
  [v17 displayCornerRadius];
  v19 = v18;

  UISheetPresentationController.preferredCornerRadius.setter();
  [v16 _setCornerRadiusForPresentationAndDismissal:v19];
  [v16 setDelegate:*(&v12->isa + *((swift_isaMask & v12->isa) + qword_1000F3C10 + 16))];
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v20 = *(qword_1000F3C58 + 640);
  v21 = sub_100025508();

  if ((v21 & 1) == 0)
  {
    goto LABEL_24;
  }

  v22 = [v16 detents];
  sub_10000ED88(0, &qword_1000DA8C0, UISheetPresentationControllerDetent_ptr);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  if (!v24)
  {
LABEL_23:

LABEL_24:
    v29 = v12;
    goto LABEL_25;
  }

LABEL_12:
  v25 = __OFSUB__(v24, 1);
  result = v24 - 1;
  if (v25)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
LABEL_27:
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v23 + 8 * result + 32);
LABEL_17:
    v28 = v27;

    v29 = [v28 identifier];
    [v16 setLargestUndimmedDetentIdentifier:v29];

LABEL_25:
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018880(char a1, uint64_t (*a2)(char *), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v28 = a1;
  if (a2)
  {
    v26 = a2(&v28);
    v27 = v14;
  }

  else
  {
    LOBYTE(v26) = a1 & 1;
  }

  v15 = String.init<A>(describing:)();
  v17 = v16;
  v26 = a4;
  v27 = a5;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = a6;
  v19._object = a7;
  String.append(_:)(v19);

  v20 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136315138;
    v24 = sub_1000343F8(a4, v20, &v26);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v22, 0xCu);
    sub_10000529C(v23);
  }

  else
  {
  }

  return a1 & 1;
}

uint64_t sub_100018A40(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v28 = a1;
  if (a2)
  {
    v26 = a2(&v28);
    v27 = v14;
  }

  else
  {
    LOBYTE(v26) = a1;
  }

  v15 = String.init<A>(describing:)();
  v17 = v16;
  v26 = a4;
  v27 = a5;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = a6;
  v19._object = a7;
  String.append(_:)(v19);

  v20 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136315138;
    v24 = sub_1000343F8(a4, v20, &v26);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v22, 0xCu);
    sub_10000529C(v23);
  }

  else
  {
  }

  return a1;
}

float sub_100018BFC(uint64_t (*a1)(float *), float a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v29 = a2;
  if (a1)
  {
    v27 = a1(&v29);
    v28 = v15;
  }

  else
  {
    *&v27 = a2;
  }

  v16 = String.init<A>(describing:)();
  v18 = v17;
  v27 = a4;
  v28 = a5;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = a6;
  v20._object = a7;
  String.append(_:)(v20);

  v21 = a5;
  v22 = Logger.logObject.getter();
  if (os_log_type_enabled(v22, a9))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v23 = 136315138;
    v25 = sub_1000343F8(a4, v21, &v27);

    *(v23 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v22, a9, "%s", v23, 0xCu);
    sub_10000529C(v24);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_100018DC4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v53._object = a7;
  v54 = a8;
  v52 = a3;
  v53._countAndFlagsBits = a6;
  v56 = a9;
  v55 = a10;
  v14 = type metadata accessor for ActivityDisplayContext(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v21 = sub_1000056EC(&qword_1000DA898, &qword_100091B38);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v50 - v25;
  if (!a2)
  {
    v50 = a4;
    v51 = a5;
    v52 = a1;
    sub_10001A5E0(a1, &v50 - v25, type metadata accessor for ActivityDisplayContext);
    (*(v15 + 56))(v26, 0, 1, v14);
    sub_10001A510(v26, v24, &qword_1000DA898, &qword_100091B38);
    if ((*(v15 + 48))(v24, 1, v14) == 1)
    {
      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    else
    {
      sub_10001A648(v24, v20, type metadata accessor for ActivityDisplayContext);
      sub_10001A5E0(v20, v18, type metadata accessor for ActivityDisplayContext);
      v37 = String.init<A>(describing:)();
      v36 = v38;
      sub_10001A6B0(v20, type metadata accessor for ActivityDisplayContext);
    }

    object = v53._object;
    countAndFlagsBits = v53._countAndFlagsBits;
    v42 = v50;
    v41 = v51;
    sub_10000A628(v26, &qword_1000DA898, &qword_100091B38);
    v57 = v42;
    v58 = v41;

    v43._countAndFlagsBits = v37;
    v43._object = v36;
    String.append(_:)(v43);

    v44._countAndFlagsBits = countAndFlagsBits;
    v44._object = object;
    String.append(_:)(v44);

    v33 = v57;
    v32 = v58;
    v34 = Logger.logObject.getter();
    v35 = v55;
    v45 = os_log_type_enabled(v34, v55);
    a1 = v52;
    if (!v45)
    {

      return sub_10001A5E0(a1, v56, type metadata accessor for ActivityDisplayContext);
    }

    goto LABEL_8;
  }

  v57 = a2(a1);
  v58 = v27;
  v28 = String.init<A>(describing:)();
  v30 = v29;
  v57 = a4;
  v58 = a5;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  String.append(_:)(v53);

  v33 = v57;
  v32 = v58;
  v34 = Logger.logObject.getter();
  v35 = v55;
  if (os_log_type_enabled(v34, v55))
  {
LABEL_8:
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v57 = v47;
    *v46 = 136315138;
    v48 = sub_1000343F8(v33, v32, &v57);

    *(v46 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v34, v35, "%s", v46, 0xCu);
    sub_10000529C(v47);

    return sub_10001A5E0(a1, v56, type metadata accessor for ActivityDisplayContext);
  }

  return sub_10001A5E0(a1, v56, type metadata accessor for ActivityDisplayContext);
}

uint64_t sub_1000192B4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_1000192E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000056EC(&qword_1000DA898, &qword_100091B38);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for ActivityDisplayContext(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC13PCViewService13CardPresenter_headerView] = 0;
  v13 = OBJC_IVAR____TtC13PCViewService13CardPresenter__isAnimatingIn;
  sub_1000056EC(&qword_1000DA8A0, &qword_100091B40);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *&v3[v13] = v14;
  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_animatingInListener] = 0;
  v15 = OBJC_IVAR____TtC13PCViewService13CardPresenter_cardViewController;
  type metadata accessor for CardViewModel(0);
  swift_allocObject();
  sub_1000271BC();
  sub_100019B48(&qword_1000DA8A8, type metadata accessor for CardViewModel, &unk_100092CCC);
  v16 = ObservedObject.init(wrappedValue:)();
  v18 = v17;
  v19 = objc_allocWithZone(sub_1000056EC(&qword_1000DA8B0, &qword_100091B48));
  *&v3[v15] = sub_1000183E4(v16, v18);
  v20 = OBJC_IVAR____TtC13PCViewService13CardPresenter_blurView;
  *&v3[v20] = [objc_allocWithZone(UIVisualEffectView) init];
  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___homeAccessoryViewHandle] = 0;
  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___homeAccessoryViewHandleModel] = 0;
  v21 = OBJC_IVAR____TtC13PCViewService13CardPresenter_homeAccessoryViewHandleState;
  type metadata accessor for HomeAccessoryViewHandleState();
  v22 = swift_allocObject();
  sub_1000056EC(&qword_1000DA8B8, &qword_100091B50);
  swift_allocObject();
  *(v22 + 16) = PassthroughSubject.init()();
  *&v3[v21] = v22;
  v23 = &v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___proximityCardHeaderViewModel] = 0;
  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_tasks] = &_swiftEmptySetSingleton;
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000047A0(v24, qword_1000DA480);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Init", v27, 2u);
  }

  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_model] = a1;
  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_state] = a2;

  CurrentValueSubject.value.getter();
  v28 = *(v10 + 48);
  if (v28(v8, 1, v9) == 1)
  {
    CurrentValueSubject.value.getter();

    if (v28(v8, 1, v9) != 1)
    {
      sub_10000A628(v8, &qword_1000DA898, &qword_100091B38);
    }
  }

  else
  {

    sub_10001A648(v8, v12, type metadata accessor for ActivityDisplayContext);
  }

  sub_10001A648(v12, &v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_initialActivityDisplayContext], type metadata accessor for ActivityDisplayContext);
  v29 = *(a1 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_deviceAssetType);
  v30 = a1 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_localDeviceModel;
  v31 = *(a1 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_localDeviceModel);
  v32 = *(v30 + 8);
  type metadata accessor for HandoffFeatureEducationViewModel(0);
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_educationViewModel] = sub_10001C5B8(v29, v31, v32);
  v33 = type metadata accessor for CardPresenter(0);
  v35.receiver = v3;
  v35.super_class = v33;
  return objc_msgSendSuper2(&v35, "init");
}

void sub_1000197E0()
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DA480);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000529C(v3);
  }
}

uint64_t sub_10001992C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_100019944(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001995C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001999C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000199BC()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019A2C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100019AB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019AF4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100019B48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100019C14()
{
  result = qword_1000DA918;
  if (!qword_1000DA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA918);
  }

  return result;
}

uint64_t sub_100019C68()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_100019CC8()
{
  result = qword_1000DA928;
  if (!qword_1000DA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA928);
  }

  return result;
}

uint64_t sub_100019D1C()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100019DC8()
{

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100019E10(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_100019E1C(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t *sub_100019E28(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100019E8C()
{
  result = qword_1000DA960;
  if (!qword_1000DA960)
  {
    sub_100005818(&qword_1000DA958, &qword_100091D18);
    sub_100019F44();
    sub_10000EE58(&qword_1000DA970, &qword_1000DA978, &qword_100091D20, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA960);
  }

  return result;
}

unint64_t sub_100019F44()
{
  result = qword_1000DA968;
  if (!qword_1000DA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA968);
  }

  return result;
}

void sub_100019FD8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_100019FE8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_10001A020()
{
  result = qword_1000DAA48;
  if (!qword_1000DAA48)
  {
    sub_10000ED88(255, &qword_1000DA460, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA48);
  }

  return result;
}

uint64_t sub_10001A08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  return sub_100018DC4(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, a2, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_10001A170()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10001A1B0(float *a1@<X0>, float *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_100018BFC(*(v2 + 16), *a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

unint64_t sub_10001A258()
{
  result = qword_1000DAAF0;
  if (!qword_1000DAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAF0);
  }

  return result;
}

uint64_t sub_10001A2AC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  result = sub_100018A40(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = result;
  return result;
}

uint64_t sub_10001A360()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 64) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v4 + v5 + 1, v3 | 7);
}

uint64_t sub_10001A440@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  result = sub_100018880(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = result & 1;
  return result;
}

uint64_t sub_10001A510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000056EC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001A5E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001A648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001A6B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001A724()
{
  result = qword_1000DAB58;
  if (!qword_1000DAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB58);
  }

  return result;
}

uint64_t sub_10001A7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000056EC(&qword_1000DABD8, &unk_100092030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001A8BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000056EC(&qword_1000DABD8, &unk_100092030);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CAImage(uint64_t a1)
{
  result = qword_1000DAC38;
  if (!qword_1000DAC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001A9D0(uint64_t a1)
{
  sub_10001AA74(319);
  if (v1 <= 0x3F)
  {
    sub_10001AACC(319);
    if (v2 <= 0x3F)
    {
      sub_10001AB30();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001AA74(uint64_t a1)
{
  if (!qword_1000DAC48)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DAC48);
    }
  }
}

void sub_10001AACC(uint64_t a1)
{
  if (!qword_1000DAC50)
  {
    sub_100005818(&qword_1000DAC58, &qword_100097C10);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DAC50);
    }
  }
}

void sub_10001AB30()
{
  if (!qword_1000DAC60)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAC60);
    }
  }
}

uint64_t sub_10001AB9C()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DABC0);
  sub_1000047A0(v0, qword_1000DABC0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001AC14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10001B7E0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
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

uint64_t sub_10001ADFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CAImage(0);
  v5 = v4 - 8;
  v33 = *(v4 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for OpacityTransition();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = static Alignment.center.getter();
  v31 = v15;
  v32 = v14;
  sub_10001B3A4(v2, &v36);
  v30 = v36;
  v29 = BYTE8(v36);
  v16 = v2 + *(v5 + 28);
  v17 = *(v16 + 16);
  v36 = *v16;
  v37 = v17;
  sub_1000056EC(&qword_1000DAC98, &qword_1000920A0);
  State.wrappedValue.getter();
  v18 = v35;
  v28 = v34;
  OpacityTransition.init()();
  (*(v8 + 16))(v11, v13, v7);
  sub_10001B4A4();
  v19 = AnyTransition.init<A>(_:)();
  (*(v8 + 8))(v13, v7);
  v20 = a1 + *(sub_1000056EC(&qword_1000DACA8, &qword_1000920A8) + 36);
  sub_10001AC14(v20);
  sub_10001B4FC(v2, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v22 = swift_allocObject();
  sub_10001B564(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = (v20 + *(sub_1000056EC(&qword_1000DACB8, &qword_1000920B0) + 36));
  *v23 = sub_10001B5C8;
  v23[1] = v22;
  v24 = v31;
  *a1 = v32;
  *(a1 + 8) = v24;
  *(a1 + 16) = v30;
  *(a1 + 24) = v29;
  *(a1 + 32) = v28;
  *(a1 + 40) = v18;
  *(a1 + 48) = v19;
  sub_10001B4FC(v2, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  sub_10001B564(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v21);
  result = sub_1000056EC(&qword_1000DACC0, &qword_1000920B8);
  v27 = (a1 + *(result + 36));
  *v27 = sub_10001B780;
  v27[1] = v25;
  v27[2] = 0;
  v27[3] = 0;
  return result;
}

uint64_t sub_10001B130(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CAImage(0);
  v7 = (v1 + v6[7]);
  v8 = v7[1];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = *v7;
  (*(v3 + 104))(v5, enum case for ColorScheme.dark(_:), v2);

  v10 = static ColorScheme.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    v13 = (v1 + v6[6]);
    v15 = *v13;
    v14 = v13[1];
    v16 = (v1 + v6[5]);
    v17 = *(v16 + 2);
    v21 = *v16;
    v22 = v17;
    v19 = v15;
    v20 = v14;

    goto LABEL_6;
  }

  v11 = (v1 + v6[5]);
  v12 = *(v11 + 2);
  v21 = *v11;
  v22 = v12;
  v19 = v9;
  v20 = v8;
LABEL_6:
  sub_1000056EC(&qword_1000DAC98, &qword_1000920A0);
  return State.wrappedValue.setter();
}

uint64_t sub_10001B2D8()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AC14(v3);
  sub_10001B130(v3);
  return (*(v1 + 8))(v3, v0);
}

void *sub_10001B3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for CAImage(0) + 20));
  sub_1000056EC(&qword_1000DAC98, &qword_1000920A0);
  State.wrappedValue.getter();
  if (*(&v4 + 1))
  {
    v5 = v4;
    sub_10001B850();
  }

  AnyView.init<A>(_:)();
  result = _ConditionalContent<>.init(storage:)();
  *a2 = v5;
  *(a2 + 8) = BYTE8(v5);
  return result;
}

unint64_t sub_10001B4A4()
{
  result = qword_1000DACA0;
  if (!qword_1000DACA0)
  {
    type metadata accessor for OpacityTransition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DACA0);
  }

  return result;
}

uint64_t sub_10001B4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B62C()
{
  v1 = *(type metadata accessor for CAImage(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001B780()
{
  type metadata accessor for CAImage(0);

  return sub_10001B2D8();
}

uint64_t sub_10001B7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001B850()
{
  result = qword_1000DACC8;
  if (!qword_1000DACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DACC8);
  }

  return result;
}

uint64_t sub_10001B8A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10001B8EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001B93C()
{
  result = qword_1000DACD0;
  if (!qword_1000DACD0)
  {
    sub_100005818(&qword_1000DACC0, &qword_1000920B8);
    sub_10001B9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DACD0);
  }

  return result;
}

unint64_t sub_10001B9C8()
{
  result = qword_1000DACD8;
  if (!qword_1000DACD8)
  {
    sub_100005818(&qword_1000DACA8, &qword_1000920A8);
    sub_10001BA80();
    sub_10000EE58(&qword_1000DAD10, &qword_1000DACB8, &qword_1000920B0, &protocol conformance descriptor for _ValueActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DACD8);
  }

  return result;
}

unint64_t sub_10001BA80()
{
  result = qword_1000DACE0;
  if (!qword_1000DACE0)
  {
    sub_100005818(&qword_1000DACE8, &qword_1000920F0);
    sub_10000EE58(&qword_1000DACF0, &qword_1000DACF8, &qword_1000920F8, &protocol conformance descriptor for IDView<A, B>);
    sub_10000EE58(&qword_1000DAD00, &qword_1000DAD08, &qword_100092100, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DACE0);
  }

  return result;
}

void sub_10001BB68(__objc2_class_ro *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (qword_1000D9748 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    sub_1000047A0(v7, qword_1000DABC0);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v48 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000343F8(a3, a4, &v48);
      _os_log_impl(&_mh_execute_header, v8, v9, "Loading Mica file %s.", v10, 0xCu);
      sub_10000529C(v11);
    }

    v12 = [objc_opt_self() mainBundle];
    v13 = objc_allocWithZone(BSUICAPackageView);
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 initWithPackageName:v14 inBundle:v12];

    if (!v15)
    {

      oslog = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v48 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_1000343F8(a3, a4, &v48);
        _os_log_impl(&_mh_execute_header, oslog, v23, "Couldn't load file named %s.", v24, 0xCu);
        sub_10000529C(v25);

        goto LABEL_26;
      }

      goto LABEL_24;
    }

    v45 = v15;
    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [(__objc2_class_ro *)a1 subviews];
    sub_10000ED88(0, &qword_1000DAD20, UIView_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = a4;
    v44 = a3;
    v18 = a1;
    if (v17 >> 62)
    {
      break;
    }

    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_21;
    }

LABEL_7:
    v20 = 0;
    a3 = v17 & 0xC000000000000001;
    a1 = &Spring;
    while (1)
    {
      if (a3)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v21 = *(v17 + 8 * v20 + 32);
      }

      v22 = v21;
      a4 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      [v21 removeFromSuperview];

      ++v20;
      if (a4 == v19)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (v19)
  {
    goto LABEL_7;
  }

LABEL_21:

  [(__objc2_class_ro *)v18 addSubview:v45];
  v26 = objc_opt_self();
  sub_1000056EC(&qword_1000DA8E0, &qword_100091BB8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100092020;
  v28 = [(__objc2_class_ro *)v18 topAnchor];
  v29 = [v45 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v27 + 32) = v30;
  v31 = [(__objc2_class_ro *)v18 bottomAnchor];
  v32 = [v45 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v27 + 40) = v33;
  v34 = [(__objc2_class_ro *)v18 rightAnchor];
  v35 = [v45 rightAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v27 + 48) = v36;
  v37 = [(__objc2_class_ro *)v18 leftAnchor];
  v38 = [v45 leftAnchor];

  v39 = [v37 constraintEqualToAnchor:v38];
  *(v27 + 56) = v39;
  sub_10000ED88(0, &qword_1000DAD28, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints:isa];

  oslog = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_1000343F8(v44, v46, &v48);
    _os_log_impl(&_mh_execute_header, oslog, v41, "Mica file %s was loaded.", v42, 0xCu);
    sub_10000529C(v43);

    goto LABEL_26;
  }

LABEL_24:

LABEL_26:
}

id sub_10001C22C()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

uint64_t sub_10001C270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001C360();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001C2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001C360();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001C338(uint64_t a1)
{
  sub_10001C360();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10001C360()
{
  result = qword_1000DAD18;
  if (!qword_1000DAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD18);
  }

  return result;
}

uint64_t sub_10001C3BC()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DAD30);
  sub_1000047A0(v0, qword_1000DAD30);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001C43C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

float sub_10001C4B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10001C54C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10001C5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a2;
  v53 = a3;
  v51 = a1;
  v5 = sub_1000056EC(&qword_1000DA9E0, &qword_100091D88);
  __chkstk_darwin(v5 - 8);
  v62 = v50 - v6;
  v64 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v59 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000056EC(&qword_1000DAF70, &qword_100092280);
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v54 = v50 - v9;
  v60 = sub_1000056EC(&qword_1000DAF78, &qword_100092288);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v55 = v50 - v10;
  v11 = sub_1000056EC(&qword_1000DAF80, &unk_100092290);
  v65 = *(v11 - 8);
  v66 = v11;
  __chkstk_darwin(v11);
  v63 = v50 - v12;
  v50[0] = sub_1000056EC(&qword_1000DAF88, &qword_10009A980);
  v13 = *(v50[0] - 8);
  __chkstk_darwin(v50[0]);
  v15 = v50 - v14;
  v16 = sub_1000056EC(&qword_1000DAF90, &qword_1000922A0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v50 - v18;
  v20 = sub_1000056EC(&qword_1000DAF98, &qword_1000922A8);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v50 - v22;
  v24 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__state;
  LOBYTE(v67) = 0;
  Published.init(initialValue:)();
  v25 = *(v21 + 32);
  v50[1] = v20;
  v25(v4 + v24, v23, v20);
  v26 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__progress;
  LODWORD(v67) = 0;
  Published.init(initialValue:)();
  (*(v17 + 32))(v4 + v26, v19, v16);
  v27 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_educationViewEventSubject;
  sub_1000056EC(&qword_1000DA9F8, &qword_1000922B0);
  swift_allocObject();
  *(v4 + v27) = PassthroughSubject.init()();
  v28 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__isViewPresenting;
  LOBYTE(v67) = 0;
  Published.init(initialValue:)();
  v29 = *(v13 + 32);
  v30 = v50[0];
  v29(v4 + v28, v15, v50[0]);
  v31 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__isIntroAnimationComplete;
  LOBYTE(v67) = 0;
  Published.init(initialValue:)();
  v29(v4 + v31, v15, v30);
  *(v4 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_tasks) = &_swiftEmptySetSingleton;
  if (qword_1000D9750 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000047A0(v32, qword_1000DAD30);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Init", v35, 2u);
  }

  v36 = v52;
  *(v4 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_deviceAssetType) = v51;
  v37 = (v4 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_localDeviceModel);
  v38 = v53;
  *v37 = v36;
  v37[1] = v38;
  swift_beginAccess();
  v39 = v54;
  Published.projectedValue.getter();
  swift_endAccess();
  v40 = v59;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  sub_10000FE40();
  v41 = static OS_dispatch_queue.main.getter();
  v67 = v41;
  v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v43 = v62;
  (*(*(v42 - 8) + 56))(v62, 1, 1, v42);
  sub_10000EE58(&qword_1000DAFA0, &qword_1000DAF70, &qword_100092280, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10001F128(&qword_1000DAA48, sub_10000FE40, &protocol conformance descriptor for OS_dispatch_queue);
  v44 = v55;
  v45 = v57;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_10000A628(v43, &qword_1000DA9E0, &qword_100091D88);

  (*(v61 + 8))(v40, v64);
  (*(v56 + 8))(v39, v45);
  sub_10000EE58(&qword_1000DAFA8, &qword_1000DAF78, &qword_100092288, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v46 = v63;
  v47 = v60;
  Publisher.filter(_:)();
  (*(v58 + 8))(v44, v47);
  swift_allocObject();
  swift_weakInit();
  sub_10000EE58(&qword_1000DAFB0, &qword_1000DAF80, &unk_100092290, &protocol conformance descriptor for Publishers.Filter<A>);
  v48 = v66;
  Publisher<>.sink(receiveValue:)();

  (*(v65 + 8))(v46, v48);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_10001CEE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10001CF6C()
{
  PassthroughSubject.send(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10001D048()
{
  v1 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__state;
  v2 = sub_1000056EC(&qword_1000DAF98, &qword_1000922A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__progress;
  v4 = sub_1000056EC(&qword_1000DAF90, &qword_1000922A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__isViewPresenting;
  v6 = sub_1000056EC(&qword_1000DAF88, &qword_10009A980);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__isIntroAnimationComplete, v6);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v8, v9);
}

uint64_t type metadata accessor for HandoffFeatureEducationViewModel(uint64_t a1)
{
  result = qword_1000DADA0;
  if (!qword_1000DADA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001D240(uint64_t a1)
{
  sub_10001D3A8(319, &qword_1000DADB0, &type metadata for EducationViewState);
  if (v1 <= 0x3F)
  {
    sub_10001D3A8(319, &qword_1000DADB8, &type metadata for Float);
    if (v2 <= 0x3F)
    {
      sub_10001D3A8(319, &qword_1000DADC0, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10001D3A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001D400@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HandoffFeatureEducationViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10001D440()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D480@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v39[1] = a2;
  v3 = sub_1000056EC(&qword_1000DAFC8, &qword_1000924B0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = (v39 - v5);
  v7 = sub_1000056EC(&qword_1000DAFD0, &qword_1000924B8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v39 - v9;
  v11 = sub_1000056EC(&qword_1000DAFD8, &qword_1000924C0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v39 - v13;
  v39[0] = sub_1000056EC(&qword_1000DAFE0, &qword_1000924C8);
  __chkstk_darwin(v39[0]);
  v16 = v39 - v15;
  *v6 = static Alignment.bottom.getter();
  v6[1] = v17;
  v18 = sub_1000056EC(&qword_1000DAFE8, &qword_1000924D0);
  sub_10001D960(a1, v6 + *(v18 + 44));
  v19 = static Edge.Set.bottom.getter();
  v20 = static SafeAreaRegions.all.getter();
  v21 = v6 + *(v4 + 44);
  *v21 = v20;
  v21[8] = v19;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001F170(v6, v10, &qword_1000DAFC8, &qword_1000924B0);
  v22 = &v10[*(v8 + 44)];
  v23 = v46;
  *(v22 + 4) = v45;
  *(v22 + 5) = v23;
  *(v22 + 6) = v47;
  v24 = v42;
  *v22 = v41;
  *(v22 + 1) = v24;
  v25 = v44;
  *(v22 + 2) = v43;
  *(v22 + 3) = v25;
  v26 = *a1;
  v48 = a1[1];
  v49[0] = v26;
  v28 = *(a1 + 4);
  v27 = *(a1 + 5);
  v29 = swift_allocObject();
  v30 = a1[1];
  *(v29 + 1) = *a1;
  *(v29 + 2) = v30;
  *(v29 + 3) = a1[2];
  sub_10001F170(v10, v14, &qword_1000DAFD0, &qword_1000924B8);
  v31 = &v14[*(v12 + 44)];
  *v31 = sub_10001EC74;
  v31[1] = v29;
  v31[2] = 0;
  v31[3] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001A510(v49, v40, &qword_1000DAFB8, &unk_1000924A0);
  sub_10001A510(&v48, v40, &qword_1000DAFC0, &qword_100092670);
  sub_10000B16C(v28, v27);
  static Published.subscript.getter();

  v32 = v40[0];
  v33 = swift_allocObject();
  v34 = a1[1];
  v33[1] = *a1;
  v33[2] = v34;
  v33[3] = a1[2];
  sub_10001F170(v14, v16, &qword_1000DAFD8, &qword_1000924C0);
  v35 = &v16[*(v39[0] + 36)];
  *v35 = v32;
  *(v35 + 1) = sub_10001EC7C;
  *(v35 + 2) = v33;
  v36 = swift_allocObject();
  v37 = a1[1];
  v36[1] = *a1;
  v36[2] = v37;
  v36[3] = a1[2];
  sub_10001A510(v49, v40, &qword_1000DAFB8, &unk_1000924A0);
  sub_10001A510(&v48, v40, &qword_1000DAFC0, &qword_100092670);
  sub_10000B16C(v28, v27);
  sub_10001A510(v49, v40, &qword_1000DAFB8, &unk_1000924A0);
  sub_10001A510(&v48, v40, &qword_1000DAFC0, &qword_100092670);
  sub_10000B16C(v28, v27);
  sub_10001EC8C();
  View.onTapGesture(count:perform:)();

  return sub_10000A628(v16, &qword_1000DAFE0, &qword_1000924C8);
}

uint64_t sub_10001D960@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OpacityTransition();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = __chkstk_darwin(v4);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v67 - v7;
  v8 = sub_1000056EC(&qword_1000DB030, &qword_1000924E8);
  v69 = *(v8 - 8);
  v70 = v8;
  __chkstk_darwin(v8);
  v68 = &v67 - v9;
  v85 = sub_1000056EC(&qword_1000DB038, &qword_1000924F0);
  v82 = *(v85 - 8);
  __chkstk_darwin(v85);
  v11 = &v67 - v10;
  v12 = sub_1000056EC(&qword_1000DB040, &qword_1000924F8);
  v13 = __chkstk_darwin(v12 - 8);
  v84 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v86 = &v67 - v15;
  v131 = *a1;
  v16 = *(&v131 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = *(v16 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_deviceAssetType);
  v90 = v99;
  v18 = *(v16 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_localDeviceModel + 8);
  v92 = *(v16 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_localDeviceModel);
  v93 = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  v91 = v18;

  static Published.subscript.getter();

  v19 = *&v99;
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v20 = *(qword_1000F3C58 + 168);
  v81 = sub_100025A58();

  *&v94 = 0;
  sub_1000056EC(&qword_1000DB048, &qword_100092500);
  State.init(wrappedValue:)();
  v89 = *(&v99 + 1);
  v83 = v99;
  LOBYTE(v94) = 0;
  State.init(wrappedValue:)();
  v87 = v99;
  v88 = *(&v99 + 1);
  static Alignment.center.getter();
  v21 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v80 = v124;
  v79 = v125;
  v78 = v126;
  v77 = v127;
  v75 = v129;
  v76 = v128;
  v130 = a1[1];
  v99 = a1[1];
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  if (v94 == 1)
  {
    v22 = [objc_opt_self() localizedStringForKey:21];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *&v99 = v23;
    *(&v99 + 1) = v25;
    v26 = *(a1 + 4);
    v27 = *(a1 + 5);
    v28 = swift_allocObject();
    v29 = a1[1];
    v28[1] = *a1;
    v28[2] = v29;
    v28[3] = a1[2];
    sub_10001A510(&v131, &v94, &qword_1000DAFB8, &unk_1000924A0);
    sub_10001A510(&v130, &v94, &qword_1000DAFC0, &qword_100092670);
    sub_10000B16C(v26, v27);
    sub_10001F080();
    v30 = v68;
    Button<>.init<A>(_:action:)();
    *&v99 = 0x4020000000000000;
    BYTE8(v99) = 1;
    sub_10000EE58(&qword_1000DB068, &qword_1000DB030, &qword_1000924E8, &protocol conformance descriptor for Button<A>);
    sub_10001F0D4();
    v31 = v70;
    View.buttonStyle<A>(_:)();
    (*(v69 + 8))(v30, v31);
    v32 = v72;
    OpacityTransition.init()();
    v34 = v73;
    v33 = v74;
    (*(v73 + 16))(v71, v32, v74);
    sub_10001F128(&qword_1000DACA0, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v35 = AnyTransition.init<A>(_:)();
    (*(v34 + 8))(v32, v33);
    *&v11[*(sub_1000056EC(&qword_1000DB078, &qword_100092518) + 36)] = v35;
    LOBYTE(v35) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = &v11[*(sub_1000056EC(&qword_1000DB080, &qword_100092520) + 36)];
    *v44 = v35;
    *(v44 + 1) = v37;
    *(v44 + 2) = v39;
    *(v44 + 3) = v41;
    *(v44 + 4) = v43;
    v44[40] = 0;
    LOBYTE(v35) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v45 = v86;
    v46 = &v11[*(v85 + 36)];
    *v46 = v35;
    *(v46 + 1) = v47;
    *(v46 + 2) = v48;
    *(v46 + 3) = v49;
    *(v46 + 4) = v50;
    v46[40] = 0;
    sub_10001F170(v11, v45, &qword_1000DB038, &qword_1000924F0);
    v21 = 0;
  }

  v51 = v86;
  (*(v82 + 56))(v86, v21, 1, v85);
  v52 = powf(v19, v81);
  v53 = v84;
  sub_10001EF90(v51, v84);
  LOBYTE(v94) = v90;
  *(&v94 + 1) = *v123;
  DWORD1(v94) = *&v123[3];
  *(&v94 + 1) = v93;
  *&v95 = v92;
  *(&v95 + 1) = v91;
  *&v96 = v52;
  v54 = v83;
  *(&v96 + 1) = v83;
  *&v97 = v89;
  BYTE8(v97) = v87;
  *(&v97 + 9) = *v122;
  HIDWORD(v97) = *&v122[3];
  *v98 = v88;
  *&v98[104] = v121;
  *&v98[8] = v115;
  *&v98[40] = v117;
  *&v98[24] = v116;
  *&v98[88] = v120;
  *&v98[72] = v119;
  *&v98[56] = v118;
  v55 = v94;
  v56 = v95;
  v57 = v97;
  *(a2 + 32) = v96;
  *(a2 + 48) = v57;
  *a2 = v55;
  *(a2 + 16) = v56;
  v58 = *v98;
  v59 = *&v98[16];
  v60 = *&v98[48];
  *(a2 + 96) = *&v98[32];
  *(a2 + 112) = v60;
  *(a2 + 64) = v58;
  *(a2 + 80) = v59;
  v61 = *&v98[64];
  v62 = *&v98[96];
  v63 = *&v98[112];
  *(a2 + 144) = *&v98[80];
  *(a2 + 160) = v62;
  *(a2 + 128) = v61;
  *(a2 + 176) = v63;
  *(a2 + 184) = 0x4008000000000000;
  *(a2 + 192) = v80;
  *(a2 + 200) = v79;
  *(a2 + 208) = v78;
  *(a2 + 216) = v77;
  v64 = v75;
  *(a2 + 224) = v76;
  *(a2 + 232) = v64;
  v65 = sub_1000056EC(&qword_1000DB050, &qword_100092508);
  sub_10001EF90(v53, a2 + *(v65 + 64));
  sub_10001A510(&v94, &v99, &qword_1000DB058, &qword_100092510);
  sub_10000A628(v51, &qword_1000DB040, &qword_1000924F8);
  sub_10000A628(v53, &qword_1000DB040, &qword_1000924F8);
  v102 = v52;
  v111 = v118;
  v112 = v119;
  v113 = v120;
  v114 = v121;
  v108 = v115;
  v109 = v116;
  LOBYTE(v99) = v90;
  *(&v99 + 1) = *v123;
  DWORD1(v99) = *&v123[3];
  *(&v99 + 1) = v93;
  v100 = v92;
  v101 = v91;
  v103 = v54;
  v104 = v89;
  v105 = v87;
  *v106 = *v122;
  *&v106[3] = *&v122[3];
  v107 = v88;
  v110 = v117;
  return sub_10000A628(&v99, &qword_1000DB058, &qword_100092510);
}

void sub_10001E384(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5 == 2)
  {
    if (qword_1000D9778 != -1)
    {
      swift_once();
    }

    v1 = *(qword_1000F3C58 + 288);
    v2 = sub_100025F80();

    if (v2)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    v4 = static Animation.easeInOut.getter();
    __chkstk_darwin(v4);
    withAnimation<A>(_:_:)();
  }
}

void sub_10001E508(_BYTE *a1)
{
  if (*a1 == 2)
  {
    if (qword_1000D9778 != -1)
    {
      swift_once();
    }

    v1 = *(qword_1000F3C58 + 288);
    v2 = sub_100025F80();

    if (v2)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    v4 = static Animation.easeInOut.getter();
    __chkstk_darwin(v4);
    withAnimation<A>(_:_:)();
  }
}

void sub_10001E648(uint64_t a1)
{
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v2 = qword_1000F3C58;
  v3 = *(qword_1000F3C58 + 288);
  v4 = sub_100025F80();

  if (v4)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  v6 = *(v2 + 208);
  v7 = sub_100025508();

  if (v7)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v8();
    }
  }
}

uint64_t sub_10001E73C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = v1[1];
  v10 = *v1;
  v11 = v5;
  v6 = swift_allocObject();
  v7 = v1[1];
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = v3;
  *(v6 + 56) = v4;
  *a1 = sub_10001EC6C;
  a1[1] = v6;
  sub_10001A510(&v10, v9, &qword_1000DAFB8, &unk_1000924A0);
  sub_10001A510(&v11, v9, &qword_1000DAFC0, &qword_100092670);
  return sub_10000B16C(v3, v4);
}

float sub_10001E7F0@<S0>(float *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10001E870(int *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10001E8EC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10001E96C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10001E9E0@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_10001EA5C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10001EB7C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10001EB94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10001EBA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10001EBF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001EC8C()
{
  result = qword_1000DAFF0;
  if (!qword_1000DAFF0)
  {
    sub_100005818(&qword_1000DAFE0, &qword_1000924C8);
    sub_10001ED44();
    sub_10000EE58(&qword_1000DB020, &qword_1000DB028, &qword_1000924E0, &protocol conformance descriptor for _ValueActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAFF0);
  }

  return result;
}

unint64_t sub_10001ED44()
{
  result = qword_1000DAFF8;
  if (!qword_1000DAFF8)
  {
    sub_100005818(&qword_1000DAFD8, &qword_1000924C0);
    sub_10001EDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAFF8);
  }

  return result;
}

unint64_t sub_10001EDD0()
{
  result = qword_1000DB000;
  if (!qword_1000DB000)
  {
    sub_100005818(&qword_1000DAFD0, &qword_1000924B8);
    sub_10001EE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB000);
  }

  return result;
}

unint64_t sub_10001EE5C()
{
  result = qword_1000DB008;
  if (!qword_1000DB008)
  {
    sub_100005818(&qword_1000DAFC8, &qword_1000924B0);
    sub_10000EE58(&qword_1000DB010, &qword_1000DB018, &qword_1000924D8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB008);
  }

  return result;
}

uint64_t sub_10001EF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DB040, &qword_1000924F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F000()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001F050()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_10001F080()
{
  result = qword_1000DB060;
  if (!qword_1000DB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB060);
  }

  return result;
}

unint64_t sub_10001F0D4()
{
  result = qword_1000DB070;
  if (!qword_1000DB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB070);
  }

  return result;
}

uint64_t sub_10001F128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001F170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000056EC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001F24C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001F2C4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_10001F400(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_10001F5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Subtitle(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Array();
  if (v4 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      sub_10000FE8C(319);
      if (v6 <= 0x3F)
      {
        sub_10001FA20(319, &qword_1000DB198, &type metadata for CGFloat);
        if (v7 <= 0x3F)
        {
          sub_10001FA20(319, &qword_1000DB1A0, &type metadata for Bool);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10001F6E4(unint64_t *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_10001F834(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_10001FA20(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001FAB0@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 1);
  v7 = *(v2 + 16);
  v8 = *(v2 + 3);
  v9 = *(v2 + 4);
  v10 = *(v2 + 40);
  v11 = *a1;
  v12 = *(a1 + 1);
  v45 = *v2;
  v5 = v45;
  v46 = *(v2 + 16);
  v44 = v8;
  v13 = *(v2 + 4);
  v43 = *(v2 + 40);
  v42 = v13;
  v34[0] = v7 & 1;
  v15 = *(a1 + 2);
  v14 = *(a1 + 3);
  sub_100022488(&v45, v78);
  sub_10001A510(&v44, v78, &qword_1000DB2B0, &qword_1000926D8);
  sub_10001A510(&v42, v78, &qword_1000DB250, &qword_100092660);
  static UnitPoint.center.getter();
  v17 = v16;
  v19 = v18;
  *&v47 = v5;
  *(&v47 + 1) = v6;
  LOBYTE(v48) = v34[0];
  *(&v48 + 1) = v8;
  *&v49 = v9;
  BYTE8(v49) = v10;
  *&v50 = v11;
  *(&v50 + 1) = v12;
  v51 = v15;
  v72 = v49;
  v73 = v50;
  *&v74 = v15;
  v70 = v47;
  v71 = v48;
  v52[0] = v5;
  v52[1] = v6;
  v53 = v34[0];
  v54 = v8;
  v55 = v9;
  v56 = v10;
  v57 = v11;
  v58 = v12;
  v59 = v15;
  sub_10001A510(&v47, v78, &qword_1000DB220, &qword_100092648);
  sub_10000A628(v52, &qword_1000DB220, &qword_100092648);
  *&v61 = v74;
  *(&v62 + 1) = v17;
  v63 = v19;
  v41 = v19;
  v60[0] = v70;
  v60[1] = v71;
  v35 = v70;
  v60[2] = v72;
  v60[3] = v73;
  *(&v61 + 1) = v14;
  *&v62 = v14;
  v36 = v71;
  v37 = v72;
  v39 = v61;
  v40 = v62;
  v20 = *(a1 + 4);
  v38 = v73;
  v65 = v74;
  v64[2] = v72;
  v64[3] = v73;
  v64[0] = v70;
  v64[1] = v71;
  v66 = v14;
  v67 = v14;
  v68 = v17;
  v69 = v19;
  sub_10001A510(v60, v78, &qword_1000DB210, &qword_100092640);
  sub_10000A628(v64, &qword_1000DB210, &qword_100092640);
  v21 = a1[5] * 0.0174532925;
  static UnitPoint.center.getter();
  *&v76 = v19;
  v22 = v38;
  v24 = v39;
  v23 = v40;
  v74 = v39;
  v75 = v40;
  *(a2 + 64) = v39;
  *(a2 + 80) = v23;
  v25 = v36;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v72 = v37;
  v73 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v28;
  v29 = v35;
  v30 = v35;
  v70 = v35;
  v71 = v25;
  *(&v76 + 1) = v20;
  v77 = 0;
  *(a2 + 112) = 0;
  *a2 = v29;
  *(a2 + 16) = v25;
  *(a2 + 96) = v76;
  *(a2 + 120) = v21;
  *(a2 + 128) = 0x3FF0000000000000;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = v31;
  *(a2 + 160) = v32;
  *(a2 + 168) = xmmword_100092540;
  v78[0] = v30;
  v78[1] = v26;
  v79 = v19;
  v78[4] = v24;
  v78[5] = v40;
  v78[2] = v27;
  v78[3] = v22;
  v80 = v20;
  v81 = 0;
  sub_10001A510(&v70, v34, &qword_1000DB200, &qword_100092638);
  return sub_10000A628(v78, &qword_1000DB200, &qword_100092638);
}

uint64_t sub_10001FDA4@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, float a6@<S1>)
{
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = *(a1 + 2);
  v15 = *(a1 + 3);

  static UnitPoint.center.getter();
  v16 = *(a1 + 4);
  *&v40 = a5;
  *(&v40 + 1) = a2;
  *&v41 = a3;
  *(&v41 + 2) = a6;
  *&v42 = v12;
  *(&v42 + 1) = v13;
  *&v43 = v14;
  *(&v43 + 1) = v15;
  *&v44 = v15;
  *(&v44 + 1) = v17;
  v45 = v18;
  *v46 = a5;
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v39 = v18;
  v34 = v40;
  v35 = v41;
  v46[1] = a2;
  v46[2] = a3;
  v47 = a6;
  v48 = v12;
  v49 = v13;
  v50 = v14;
  v51 = v15;
  v52 = v15;
  v53 = v17;
  v54 = v18;
  sub_10001A510(&v40, v58, &qword_1000DB2D8, &qword_100092700);
  sub_10000A628(v46, &qword_1000DB2D8, &qword_100092700);
  v19 = a1[5] * 0.0174532925;
  static UnitPoint.center.getter();
  v20 = v39;
  *&v56 = v39;
  v22 = v37;
  v21 = v38;
  v23 = v35;
  v25 = v34;
  v24 = v35;
  v55[0] = v34;
  v55[1] = v35;
  *a4 = v34;
  *(a4 + 16) = v23;
  v26 = v36;
  v27 = v37;
  v28 = v36;
  v55[3] = v37;
  v55[4] = v21;
  v55[2] = v36;
  *(&v56 + 1) = v16;
  v57 = 0;
  *(a4 + 96) = 0;
  *(a4 + 32) = v26;
  *(a4 + 48) = v27;
  v29 = v56;
  *(a4 + 64) = v21;
  *(a4 + 80) = v29;
  *(a4 + 104) = v19;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0;
  *(a4 + 112) = 0x3FF0000000000000;
  *(a4 + 136) = v30;
  *(a4 + 144) = v31;
  *(a4 + 152) = xmmword_100092540;
  v58[0] = v25;
  v58[1] = v24;
  v59 = v20;
  v58[3] = v22;
  v58[4] = v38;
  v58[2] = v28;
  v60 = v16;
  v61 = 0;
  sub_10001A510(v55, v33, &qword_1000DB2E0, qword_100092708);
  return sub_10000A628(v58, &qword_1000DB2E0, qword_100092708);
}

uint64_t sub_10001FF80@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 1);
  v43 = *(v2 + 2);
  v44 = v5;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = *(v2 + 24);
  v10 = *(v2 + 8);
  v11 = v2[5];
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = v9 & 1;
  v15 = *(a1 + 2);
  sub_1000224E4(&v44, v75);
  sub_10001A510(&v43, v75, &qword_1000DB2B8, &qword_1000926E0);
  v16 = *(a1 + 3);
  static UnitPoint.center.getter();
  v18 = v17;
  v20 = v19;
  *&v45 = v6;
  *(&v45 + 1) = v7;
  *&v46 = v8;
  BYTE8(v46) = v14;
  LODWORD(v47) = v10;
  *(&v47 + 1) = v11;
  *&v48 = v12;
  *(&v48 + 1) = v13;
  v49 = v15;
  v50[0] = v6;
  v69 = v47;
  v70 = v48;
  *&v71 = v15;
  v67 = v45;
  v68 = v46;
  v50[1] = v7;
  v50[2] = v8;
  v51 = v14;
  v52 = v10;
  v53 = v11;
  v54 = v12;
  v55 = v13;
  v56 = v15;
  sub_10001A510(&v45, v75, &qword_1000DB2C0, &qword_1000926E8);
  sub_10000A628(v50, &qword_1000DB2C0, &qword_1000926E8);
  *&v58 = v71;
  *(&v59 + 1) = v18;
  v60 = v20;
  v42 = v20;
  v57[0] = v67;
  v57[1] = v68;
  v36 = v67;
  v57[2] = v69;
  v57[3] = v70;
  *(&v58 + 1) = v16;
  *&v59 = v16;
  v37 = v68;
  v38 = v69;
  v40 = v58;
  v41 = v59;
  v21 = *(a1 + 4);
  v39 = v70;
  v62 = v71;
  v61[2] = v69;
  v61[3] = v70;
  v61[0] = v67;
  v61[1] = v68;
  v63 = v16;
  v64 = v16;
  v65 = v18;
  v66 = v20;
  sub_10001A510(v57, v75, &qword_1000DB2C8, &qword_1000926F0);
  sub_10000A628(v61, &qword_1000DB2C8, &qword_1000926F0);
  v22 = a1[5] * 0.0174532925;
  static UnitPoint.center.getter();
  *&v73 = v20;
  v23 = v39;
  v25 = v40;
  v24 = v41;
  v71 = v40;
  v72 = v41;
  *(a2 + 64) = v40;
  *(a2 + 80) = v24;
  v26 = v37;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v69 = v38;
  v70 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v29;
  v30 = v36;
  v31 = v36;
  v67 = v36;
  v68 = v26;
  *(&v73 + 1) = v21;
  v74 = 0;
  *(a2 + 112) = 0;
  *a2 = v30;
  *(a2 + 16) = v26;
  *(a2 + 96) = v73;
  *(a2 + 120) = v22;
  *(a2 + 128) = 0x3FF0000000000000;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = v32;
  *(a2 + 160) = v33;
  *(a2 + 168) = xmmword_100092540;
  v75[0] = v31;
  v75[1] = v27;
  v76 = v20;
  v75[4] = v25;
  v75[5] = v41;
  v75[2] = v28;
  v75[3] = v23;
  v77 = v21;
  v78 = 0;
  sub_10001A510(&v67, v35, &qword_1000DB2D0, &qword_1000926F8);
  return sub_10000A628(v75, &qword_1000DB2D0, &qword_1000926F8);
}

uint64_t sub_100020240@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v4 = sub_1000056EC(&qword_1000DB1A8, &qword_100092610);
  v55 = v4;
  v65 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v64 = &v44 - v6;
  v69 = *(a1 - 8);
  v67 = *(v69 + 64);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000056EC(&qword_1000DB1B0, &qword_100092618);
  __chkstk_darwin(v60);
  v46 = &v44 - v9;
  v61 = sub_1000056EC(&qword_1000DB1B8, &qword_100092620);
  __chkstk_darwin(v61);
  v68 = &v44 - v10;
  v49 = a1;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v62 = *(v11 + 8);
  type metadata accessor for _ValueActionModifier();
  v13 = type metadata accessor for ModifiedContent();
  v63 = *(v13 - 8);
  __chkstk_darwin(v13);
  v59 = &v44 - v14;
  v15 = sub_1000219BC();
  v53 = v15;
  WitnessTable = swift_getWitnessTable();
  v77 = v15;
  v78 = WitnessTable;
  v54 = v13;
  v17 = swift_getWitnessTable();
  v57 = v17;
  v56 = sub_10000EE58(&qword_1000DB1D0, &qword_1000DB1A8, &qword_100092610, &protocol conformance descriptor for _EndedGesture<A>);
  v73 = v13;
  v74 = v4;
  v75 = v17;
  v76 = v56;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v52 = *(OpaqueTypeMetadata2 - 8);
  v18 = __chkstk_darwin(OpaqueTypeMetadata2);
  v50 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v51 = &v44 - v20;
  static Alignment.top.getter();
  v21 = v12;
  v45 = v12;
  v70 = v12;
  v71 = v11;
  v22 = v11;
  v47 = v11;
  v23 = v2;
  v72 = v2;
  sub_1000056EC(&qword_1000DB1D8, &qword_100092628);
  sub_100021A80();
  ZStack.init(alignment:content:)();
  v24 = v69;
  v48 = *(v69 + 16);
  v25 = v49;
  v48(v8, v23, v49);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v21;
  *(v27 + 24) = v22;
  v28 = *(v24 + 32);
  v69 = v24 + 32;
  v28(v27 + v26, v8, v25);
  sub_10000EE58(&qword_1000DB1C8, &qword_1000DB1B0, &qword_100092618, &protocol conformance descriptor for ZStack<A>);
  v29 = v46;
  View.onAppear(perform:)();

  sub_10000A628(v29, &qword_1000DB1B0, &qword_100092618);
  v48(v8, v23, v25);
  v30 = swift_allocObject();
  v31 = v47;
  *(v30 + 16) = v45;
  *(v30 + 24) = v31;
  v28(v30 + v26, v8, v25);
  v32 = v59;
  v33 = v68;
  View.onChange<A>(of:perform:)();

  sub_10000A628(v33, &qword_1000DB1B8, &qword_100092620);
  v34 = v64;
  sub_1000211D0(v25, v64);
  static GestureMask.all.getter();
  v35 = v50;
  v36 = v54;
  v37 = v55;
  View.gesture<A>(_:including:)();
  (*(v65 + 8))(v34, v37);
  (*(v63 + 8))(v32, v36);
  v38 = v52;
  v39 = *(v52 + 16);
  v40 = v51;
  v41 = OpaqueTypeMetadata2;
  v39(v51, v35, OpaqueTypeMetadata2);
  v42 = *(v38 + 8);
  v42(v35, v41);
  v39(v66, v40, v41);
  return (v42)(v40, v41);
}

uint64_t sub_1000209B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v26 = a1;
  v27 = a3;
  v29 = a5;
  v8 = type metadata accessor for MultipleSubtitles(0, a2, a3, a4);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = sub_1000056EC(&qword_1000DB1D8, &qword_100092628);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v28 = &v26 - v17;
  v32 = *a1;
  type metadata accessor for Subtitle(255, a2, a3, v18);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v30 = v31;
  swift_getKeyPath();
  (*(v9 + 16))(v11, v26, v8);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = v27;
  *(v20 + 16) = a2;
  *(v20 + 24) = v21;
  (*(v9 + 32))(v20 + v19, v11, v8);
  sub_1000056EC(&qword_1000DB298, &qword_1000926A0);
  sub_1000056EC(&qword_1000DB1F0, &qword_100092630);
  sub_100022390();
  sub_100021B04();
  ForEach<>.init(_:id:content:)();
  sub_100021A80();
  v22 = *(v13 + 16);
  v23 = v28;
  v22(v28, v16, v12);
  v24 = *(v13 + 8);
  v24(v16, v12);
  v22(v29, v23, v12);
  return (v24)(v23, v12);
}

double sub_100020CFC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v37 = a4;
  v35 = a2;
  v7 = type metadata accessor for Subtitle(0, a3, a4, a4);
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v38 = &v32 - v9;
  v34 = *a1;
  Array.subscript.getter();
  v11 = &v10[*(v7 + 36)];
  v12 = v11[1];
  v52[0] = *v11;
  v52[1] = v12;
  sub_10001F080();

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.body.getter();
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;
  v33 = v23;

  sub_100022470(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  *&v52[6] = v18;
  *&v52[7] = v20;
  v53 = v22 & 1;
  v54 = v33;
  v55 = KeyPath;
  v56 = 1;
  type metadata accessor for MultipleSubtitles(0, v36, v37, v25);
  sub_100020F50(v34, v52);
  sub_10001FAB0(v52, v41);
  sub_100022470(v18, v20, v22 & 1);

  (*(v40 + 8))(v38, v39);
  v26 = v49;
  *(a5 + 128) = v48;
  *(a5 + 144) = v26;
  *(a5 + 160) = v50;
  *(a5 + 176) = v51;
  v27 = v45;
  *(a5 + 64) = v44;
  *(a5 + 80) = v27;
  v28 = v47;
  *(a5 + 96) = v46;
  *(a5 + 112) = v28;
  v29 = v41[1];
  *a5 = v41[0];
  *(a5 + 16) = v29;
  result = *&v42;
  v31 = v43;
  *(a5 + 32) = v42;
  *(a5 + 48) = v31;
  return result;
}

double sub_100020F50@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = a1;
  sub_1000056EC(&qword_1000DB280, &unk_100092678);
  State.wrappedValue.getter();
  v5 = 1.0 - vabdd_f64(v4, v7);
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  *a3 = v5;
  *(a3 + 8) = (v4 - v7) * 100.0;
  *(a3 + 16) = xmmword_100092550;
  result = 1.0 - v5 + 1.0 - v5;
  *(a3 + 32) = result;
  *(a3 + 40) = 0;
  return result;
}

uint64_t sub_100021008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *v4;
  type metadata accessor for Subtitle(255, *(a2 + 16), *(a2 + 24), a4);
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.firstIndex(where:)();

  v6 = v14;
  if (v15)
  {
    v6 = 0;
  }

  v14 = v6;
  v7 = sub_1000220A8();
  v8 = sub_100021618(&v14, &type metadata for Int, v7);
  if (*(v4 + *(a2 + 44)) == 1)
  {
    v9 = static Animation.easeOut.getter();
    __chkstk_darwin(v9);
    withAnimation<A>(_:_:)();
  }

  else
  {
    v11 = (v4 + *(a2 + 48));
    v12 = *v11;
    v13 = v11[1];
    v14 = v12;
    v15 = v13;
    v16 = v8;
    sub_1000056EC(&qword_1000DB280, &unk_100092678);
    return State.wrappedValue.setter();
  }
}

uint64_t sub_1000211D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v31 = v6;
  v7 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DragGesture();
  v9 = *(v8 - 8);
  v35 = v8;
  v36 = v9;
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000056EC(&qword_1000DB258, &qword_100092668);
  v13 = *(v12 - 8);
  v37 = v12;
  v38 = v13;
  __chkstk_darwin(v12);
  v32 = &v26 - v14;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v33 = *(v5 + 16);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33(v27, v3, a1);
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  v29 = *(a1 + 24);
  v18 = v29;
  v30 = v17;
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  v28 = *(v5 + 32);
  v28(v16 + v15, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_100021F6C(&qword_1000DB260, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_100021F6C(&qword_1000DB268, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v19 = v32;
  v20 = v35;
  Gesture<>.onChanged(_:)();

  (*(v36 + 8))(v11, v20);
  v21 = v27;
  v33(v27, v34, a1);
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 16) = v30;
  *(v22 + 24) = v23;
  v28(v22 + v15, v21, a1);
  sub_10000EE58(&qword_1000DB270, &qword_1000DB258, &qword_100092668, &protocol conformance descriptor for _ChangedGesture<A>);
  v24 = v37;
  Gesture.onEnded(_:)();

  return (*(v38 + 8))(v19, v24);
}

double sub_100021618(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, a2);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    v10 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v11 = dispatch thunk of BinaryInteger._lowWord.getter();
    v12 = *(v5 + 8);
    v12(a1, a2);
    v12(v7, a2);
    if (v10)
    {
      return v11;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    sub_100022120();
    sub_100022174();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v8 = *(v5 + 8);
    v8(a1, a2);
    v8(v7, a2);
    return *&v13[1];
  }
}

uint64_t sub_1000217D0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for MultipleSubtitles(0, a3, a4, a5);
  sub_1000056EC(&qword_1000DB280, &unk_100092678);
  return State.wrappedValue.setter();
}

void sub_100021854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MultipleSubtitles(0, a3, a4, a4);
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  if ((v9 & 1) == 0)
  {
    v6 = DragGesture.Value.translation.getter();
    if (v7 >= 30.0)
    {
      v8 = (a2 + *(v5 + 40));
      if (*v8)
      {
        (*v8)(v6);
      }

      State.wrappedValue.setter();
    }
  }
}

uint64_t sub_100021940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MultipleSubtitles(0, a3, a4, a4);
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  return State.wrappedValue.setter();
}

unint64_t sub_1000219BC()
{
  result = qword_1000DB1C0;
  if (!qword_1000DB1C0)
  {
    sub_100005818(&qword_1000DB1B8, &qword_100092620);
    sub_10000EE58(&qword_1000DB1C8, &qword_1000DB1B0, &qword_100092618, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB1C0);
  }

  return result;
}

unint64_t sub_100021A80()
{
  result = qword_1000DB1E0;
  if (!qword_1000DB1E0)
  {
    sub_100005818(&qword_1000DB1D8, &qword_100092628);
    sub_100021B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB1E0);
  }

  return result;
}

unint64_t sub_100021B04()
{
  result = qword_1000DB1E8;
  if (!qword_1000DB1E8)
  {
    sub_100005818(&qword_1000DB1F0, &qword_100092630);
    sub_100021B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB1E8);
  }

  return result;
}

unint64_t sub_100021B90()
{
  result = qword_1000DB1F8;
  if (!qword_1000DB1F8)
  {
    sub_100005818(&qword_1000DB200, &qword_100092638);
    sub_100021C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB1F8);
  }

  return result;
}

unint64_t sub_100021C1C()
{
  result = qword_1000DB208;
  if (!qword_1000DB208)
  {
    sub_100005818(&qword_1000DB210, &qword_100092640);
    sub_100021CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB208);
  }

  return result;
}

unint64_t sub_100021CA8()
{
  result = qword_1000DB218;
  if (!qword_1000DB218)
  {
    sub_100005818(&qword_1000DB220, &qword_100092648);
    sub_100021D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB218);
  }

  return result;
}

unint64_t sub_100021D34()
{
  result = qword_1000DB228;
  if (!qword_1000DB228)
  {
    sub_100005818(&qword_1000DB230, &qword_100092650);
    sub_100021DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB228);
  }

  return result;
}

unint64_t sub_100021DC0()
{
  result = qword_1000DB238;
  if (!qword_1000DB238)
  {
    sub_100005818(&qword_1000DB240, &qword_100092658);
    sub_10000EE58(&qword_1000DB248, &qword_1000DB250, &qword_100092660, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB238);
  }

  return result;
}

uint64_t sub_100021F6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100021FCC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for MultipleSubtitles(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a2(a1, v9, v6, v7);
}

unint64_t sub_1000220A8()
{
  result = qword_1000DB278;
  if (!qword_1000DB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB278);
  }

  return result;
}

unint64_t sub_100022120()
{
  result = qword_1000DB288;
  if (!qword_1000DB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB288);
  }

  return result;
}

unint64_t sub_100022174()
{
  result = qword_1000DB290;
  if (!qword_1000DB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB290);
  }

  return result;
}

uint64_t sub_1000221C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for MultipleSubtitles(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 8) + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + *(v6 + 36), v5);
  if (*(v4 + v8 + *(v6 + 40)))
  {
  }

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

double sub_1000222F4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for MultipleSubtitles(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100020CFC(a1, v9, v6, v7, a3);
}

unint64_t sub_100022390()
{
  result = qword_1000DB2A0;
  if (!qword_1000DB2A0)
  {
    sub_100005818(&qword_1000DB298, &qword_1000926A0);
    sub_10002241C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB2A0);
  }

  return result;
}

unint64_t sub_10002241C()
{
  result = qword_1000DB2A8;
  if (!qword_1000DB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB2A8);
  }

  return result;
}

double sub_100022470(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_100022540(uint64_t *a1)
{
  sub_100005818(&qword_1000DB1B8, &qword_100092620);
  type metadata accessor for _ValueActionModifier();
  type metadata accessor for ModifiedContent();
  sub_100005818(&qword_1000DB1A8, &qword_100092610);
  sub_1000219BC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000EE58(&qword_1000DB1D0, &qword_1000DB1A8, &qword_100092610, &protocol conformance descriptor for _EndedGesture<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100022734()
{
  result = qword_1000DB2E8;
  if (!qword_1000DB2E8)
  {
    type metadata accessor for PCActivityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB2E8);
  }

  return result;
}

uint64_t sub_100022814()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DB2F0);
  sub_1000047A0(v0, qword_1000DB2F0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100022894(uint64_t a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v5 = *(v4 + qword_1000F3C10 + 16);
  *(v2 + v5) = [objc_allocWithZone(type metadata accessor for AdaptivePresentationControllerDelegate()) init];
  if (qword_1000D9758 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DB2F0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  v10 = sub_10004F728(a1);
  v11 = [v10 presentationController];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

LABEL_19:
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "### Could not get UISheetPresentationController", v30, 2u);
    }

    goto LABEL_22;
  }

  v14 = v13;
  v15 = [objc_opt_self() currentTraitCollection];
  [v15 displayCornerRadius];
  v17 = v16;

  UISheetPresentationController.preferredCornerRadius.setter();
  [v14 _setCornerRadiusForPresentationAndDismissal:v17];
  [v14 setDelegate:*(v10 + *((swift_isaMask & *v10) + qword_1000F3C10 + 16))];
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v18 = *(qword_1000F3C58 + 640);
  v19 = sub_100025508();

  if ((v19 & 1) == 0)
  {
    (*(*(*(v4 + qword_1000F3C10) - 8) + 8))(a1);
LABEL_26:

    return v10;
  }

  v20 = [v14 detents];
  sub_1000236E8();
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  if (!v22)
  {
LABEL_25:
    (*(*(*(v4 + qword_1000F3C10) - 8) + 8))(a1);

    goto LABEL_26;
  }

LABEL_12:
  v23 = __OFSUB__(v22, 1);
  result = v22 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v21 + 8 * result + 32);
LABEL_17:
    v26 = v25;

    v27 = [v26 identifier];
    [v14 setLargestUndimmedDetentIdentifier:v27];

LABEL_22:
    (*(*(*(v4 + qword_1000F3C10) - 8) + 8))(a1);
    return v10;
  }

  __break(1u);
  return result;
}

id sub_100022DE4()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  if (qword_1000D9758 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000047A0(v3, qword_1000DB2F0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "deinit", v6, 2u);
  }

  v8 = type metadata accessor for CardHostingController(0, *(v2 + qword_1000F3C10), *(v2 + qword_1000F3C10 + 8), v7);
  v10.receiver = v1;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, "dealloc");
}

void sub_100022FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CardHostingController(0, *((swift_isaMask & *v4) + qword_1000F3C10), *((swift_isaMask & *v4) + qword_1000F3C10 + 8), a4);
  v12.receiver = v4;
  v12.super_class = v5;
  objc_msgSendSuper2(&v12, "viewDidLoad");
  if (qword_1000D9758 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DB2F0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000343F8(0x4C64694477656976, 0xED0000292864616FLL, &v11);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000529C(v10);
  }
}

void sub_100023148(void *a1)
{
  v4 = a1;
  sub_100022FA8(v4, v1, v2, v3);
}

uint64_t sub_1000231D8()
{
  v1 = OBJC_IVAR____TtC13PCViewService38AdaptivePresentationControllerDelegate____lazy_storage___publisher;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService38AdaptivePresentationControllerDelegate____lazy_storage___publisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService38AdaptivePresentationControllerDelegate____lazy_storage___publisher);
  }

  else
  {
    sub_1000056EC(&qword_1000DB420, &unk_1000928A0);
    sub_1000235C8();
    v2 = Publisher.eraseToAnyPublisher()();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1000232A4(void *a1, __n128 a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a1;
  PassthroughSubject.send(_:)();
}

id sub_100023408(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AdaptivePresentationControllerDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000234AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000234D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100023530(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_10002358C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_1000235C8()
{
  result = qword_1000DB428;
  if (!qword_1000DB428)
  {
    sub_100005818(&qword_1000DB420, &unk_1000928A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB428);
  }

  return result;
}

void sub_10002362C()
{
  v1 = *((swift_isaMask & *v0) + qword_1000F3C10 + 16);
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for AdaptivePresentationControllerDelegate()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1000236E8()
{
  result = qword_1000DA8C0;
  if (!qword_1000DA8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DA8C0);
  }

  return result;
}

unint64_t sub_100023748()
{
  v1 = *v0;
  v2 = 0x44497472656C61;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x736E6F69746361;
  }

  v4 = 0x6C65694674786574;
  if (v1 != 3)
  {
    v4 = 0x74756F656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100023830@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100024E2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100023864(uint64_t a1)
{
  v2 = sub_100023BD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000238A0(uint64_t a1)
{
  v2 = sub_100023BD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PCUserAlertPresentationContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000056EC(&qword_1000DB430, &qword_1000928B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100006768(a1, a1[3]);
  sub_100023BD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  type metadata accessor for UUID();
  sub_100024350(&qword_1000DB440, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for PCUserAlertPresentationContext(0);
    v17 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 40));
    v11[15] = 6;
    sub_1000056EC(&qword_1000DB448, &qword_1000928B8);
    sub_1000241A0(&qword_1000DB450, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100023BD8()
{
  result = qword_1000DB438;
  if (!qword_1000DB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB438);
  }

  return result;
}

uint64_t type metadata accessor for PCUserAlertPresentationContext(uint64_t a1)
{
  result = qword_1000DB558;
  if (!qword_1000DB558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void PCUserAlertPresentationContext.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for UUID();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000056EC(&qword_1000DB458, &qword_1000928C0);
  v29 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v27 - v6;
  v8 = type metadata accessor for PCUserAlertPresentationContext(0);
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006768(a1, a1[3]);
  sub_100023BD8();
  v32 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000529C(a1);
  }

  else
  {
    v11 = v10;
    v13 = v29;
    v12 = v30;
    v41 = 0;
    sub_100024350(&qword_1000DB460, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = v31;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 32))(v11, v14, v4);
    v40 = 1;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v27 = v4;
    v16 = (v11 + v8[5]);
    *v16 = v15;
    v16[1] = v17;
    v39 = 2;
    v31 = 0;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = (v11 + v8[6]);
    *v19 = v18;
    v19[1] = v20;
    v38 = 3;
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = (v11 + v8[7]);
    *v22 = v21;
    v22[1] = v23;
    v37 = 4;
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = v11 + v8[8];
    *v25 = v24;
    *(v25 + 8) = v26 & 1;
    v36 = 5;
    *(v11 + v8[9]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_1000056EC(&qword_1000DB448, &qword_1000928B8);
    v35 = 6;
    sub_1000241A0(&qword_1000DB468, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v13 + 8))(v32, v33);
    *(v11 + v8[10]) = v34;
    sub_10002420C(v11, v28);
    sub_10000529C(a1);
    sub_100024270(v11);
  }
}

uint64_t sub_1000241A0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005818(&qword_1000DB448, &qword_1000928B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002420C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PCUserAlertPresentationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024270(uint64_t a1)
{
  v2 = type metadata accessor for PCUserAlertPresentationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000242CC(uint64_t a1)
{
  *(a1 + 8) = sub_100024350(&qword_1000DB470, type metadata accessor for PCUserAlertPresentationContext, &protocol conformance descriptor for PCUserAlertPresentationContext);
  result = sub_100024350(qword_1000DB478, type metadata accessor for PCUserAlertPresentationContext, &protocol conformance descriptor for PCUserAlertPresentationContext);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100024350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000243C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100024404(uint64_t a1, uint64_t a2)
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

uint64_t sub_100024428(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100024470(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_1000244F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_1000245C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

void sub_100024678(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000247A8(319, &qword_1000DAC60, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000247A8(319, &qword_1000DB568, &type metadata for Double, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000247A8(319, &unk_1000DB570, &type metadata for String, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000247A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100024800(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1000247A8(319, &qword_1000DAC60, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000248AC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1000249F0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      v18[1] = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PCUserAlertPresentationContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PCUserAlertPresentationContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100024D28()
{
  result = qword_1000DB638;
  if (!qword_1000DB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB638);
  }

  return result;
}

unint64_t sub_100024D80()
{
  result = qword_1000DB640;
  if (!qword_1000DB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB640);
  }

  return result;
}

unint64_t sub_100024DD8()
{
  result = qword_1000DB648;
  if (!qword_1000DB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB648);
  }

  return result;
}

uint64_t sub_100024E2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497472656C61 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C65694674786574 && a2 == 0xEF74706D6F725064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000A1B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100025080()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v10 = (v0 + *(v1 + 96));
LABEL_7:
    v9 = *v10;

    return v9;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000A150(v32, v31);
  sub_1000056EC(&qword_1000DAC58, &qword_100097C10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = [v6 stringForKey:v12];

    if (v13)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000529C(v32);
      return v9;
    }

    v14 = String._bridgeToObjectiveC()();
    v15 = [v6 dataForKey:v14];

    if (v15)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = v0;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v29 = v18;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v31[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_1000343F8(v5, v4, v31);
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v22, 0xCu);
        sub_10000529C(v23);

        sub_100008A9C(v16, v29);
      }

      else
      {

        sub_100008A9C(v16, v18);
      }

      sub_10000529C(v32);
      v28 = *((swift_isaMask & *v19) + 0x60);
    }

    else
    {
      v19 = v0;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v31[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_1000343F8(v5, v4, v31);
        _os_log_impl(&_mh_execute_header, v24, v25, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v26, 0xCu);
        sub_10000529C(v27);
      }

      sub_10000529C(v32);
      v28 = *((swift_isaMask & *v19) + 0x60);
    }

    v10 = (v19 + v28);
    goto LABEL_7;
  }

  sub_10000529C(v32);

  return v30;
}

uint64_t sub_100025508()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v9 = *(v0 + *(v1 + 96));
    return v9 & 1;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000A150(v36, v35);
  if (swift_dynamicCast())
  {
    sub_10000529C(v36);

    v9 = v34;
    return v9 & 1;
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v6 stringForKey:v11];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100009F88(v13, v15);
    if (v16 != 2)
    {
      v9 = v16;
      sub_10000529C(v36);

      return v9 & 1;
    }

    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000343F8(v5, v4, v35);
      v22 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v18, v19, v22, v20, 0xCu);
      sub_10000529C(v21);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = [v6 dataForKey:v23];

  if (!v24)
  {
    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000343F8(v5, v4, v35);
      v22 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
      goto LABEL_18;
    }

LABEL_19:

    sub_10000529C(v36);
    v9 = *(v17 + *((swift_isaMask & *v17) + 0x60));
    return v9 & 1;
  }

  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = v0;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v33 = v27;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_1000343F8(v5, v4, v35);
    _os_log_impl(&_mh_execute_header, v29, v30, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v31, 0xCu);
    sub_10000529C(v32);

    sub_100008A9C(v25, v33);
  }

  else
  {

    sub_100008A9C(v25, v27);
  }

  sub_10000529C(v36);
  v9 = *(v28 + *((swift_isaMask & *v28) + 0x60));
  return v9 & 1;
}

unint64_t sub_100025A58()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    return *(v0 + *(v1 + 96));
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
    return *(v0 + *(v1 + 96));
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000A150(v37, v36);
  if (swift_dynamicCast())
  {
    sub_10000529C(v37);

    return v35;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v6 stringForKey:v10];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100009C88(v12, v14);
    if ((v16 & 1) == 0)
    {
      v33 = v15;
      sub_10000529C(v37);

      return v33;
    }

    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_19;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000343F8(v5, v4, v36);
    v22 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
    goto LABEL_18;
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = [v6 dataForKey:v23];

  if (!v24)
  {
    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v19))
    {
LABEL_19:

      sub_10000529C(v37);
      return *(v17 + *((swift_isaMask & *v17) + 0x60));
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000343F8(v5, v4, v36);
    v22 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v18, v19, v22, v20, 0xCu);
    sub_10000529C(v21);

    goto LABEL_19;
  }

  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = v0;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v34 = v27;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_1000343F8(v5, v4, v36);
    _os_log_impl(&_mh_execute_header, v29, v30, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v31, 0xCu);
    sub_10000529C(v32);

    sub_100008A9C(v25, v34);
  }

  else
  {

    sub_100008A9C(v25, v27);
  }

  sub_10000529C(v37);
  return *(v28 + *((swift_isaMask & *v28) + 0x60));
}

uint64_t sub_100025F94(uint64_t a1, Swift::OpaquePointer a2)
{
  v3 = swift_isaMask & *v2;
  v4 = *(v2 + *(v3 + 0x70));
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = (v2 + *((swift_isaMask & *v2) + 0x68));
  v8 = *v6;
  v7 = v6[1];
  v9 = v4;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {

    v3 = swift_isaMask & *v2;
LABEL_6:
    v12 = *(v2 + *(v3 + 96));
    return v12 & 1;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000A150(v40, v39);
  if (swift_dynamicCast())
  {
    sub_10000529C(v40);

    v12 = v38;
    return v12 & 1;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [v9 stringForKey:v14];

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    v20 = _findStringSwitchCase(cases:string:)(a2, v19);

    if (!v20)
    {
      v12 = 0;
      goto LABEL_16;
    }

    if (v20 == 1)
    {
      v12 = 1;
LABEL_16:
      sub_10000529C(v40);

      return v12 & 1;
    }

    v31 = v2;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1000343F8(v8, v7, v39);
      v36 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v32, v33, v36, v34, 0xCu);
      sub_10000529C(v35);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = [v9 dataForKey:v21];

  if (!v22)
  {
    v31 = v2;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1000343F8(v8, v7, v39);
      v36 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
      goto LABEL_21;
    }

LABEL_22:

    sub_10000529C(v40);
    v12 = *(v31 + *((swift_isaMask & *v31) + 0x60));
    return v12 & 1;
  }

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = v2;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v37 = v25;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1000343F8(v8, v7, v39);
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v29, 0xCu);
    sub_10000529C(v30);

    sub_100008A9C(v23, v37);
  }

  else
  {

    sub_100008A9C(v23, v25);
  }

  sub_10000529C(v40);
  v12 = *(v26 + *((swift_isaMask & *v26) + 0x60));
  return v12 & 1;
}

void sub_1000264EC(uint64_t a1)
{
  v2 = *(v1 + *((swift_isaMask & *v1) + 0x70));
  if (v2)
  {
    v3 = (v1 + *((swift_isaMask & *v1) + 0x68));
    v5 = *v3;
    v4 = v3[1];
    v6 = v2;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10000A150(v34, v33);
      if (swift_dynamicCast())
      {
        sub_10000529C(v34);

        return;
      }

      v9 = String._bridgeToObjectiveC()();
      v10 = [v6 stringForKey:v9];

      if (v10)
      {
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v33[0] = 0;
        v14 = sub_10002A76C(v11, v13, v33);

        if (v14)
        {

          sub_10000529C(v34);
          return;
        }

        v25 = v1;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v26, v27))
        {
          goto LABEL_18;
        }

        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v33[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1000343F8(v5, v4, v33);
        v30 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
        goto LABEL_17;
      }

      v15 = String._bridgeToObjectiveC()();
      v16 = [v6 dataForKey:v15];

      if (!v16)
      {
        v31 = v1;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v26, v27))
        {
LABEL_18:

          sub_10000529C(v34);
          return;
        }

        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v33[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1000343F8(v5, v4, v33);
        v30 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v26, v27, v30, v28, 0xCu);
        sub_10000529C(v29);

        goto LABEL_18;
      }

      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = v1;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v32 = v19;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v33[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_1000343F8(v5, v4, v33);
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v23, 0xCu);
        sub_10000529C(v24);

        sub_100008A9C(v17, v32);
      }

      else
      {

        sub_100008A9C(v17, v19);
      }

      sub_10000529C(v34);
    }

    else
    {
    }
  }
}

uint64_t sub_100026A34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

Swift::Int sub_100026AAC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100026B18(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100026B58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100026BF8()
{
  v1 = OBJC_IVAR____TtC13PCViewService13CardViewModel____lazy_storage___cardEventPublisher;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService13CardViewModel____lazy_storage___cardEventPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService13CardViewModel____lazy_storage___cardEventPublisher);
  }

  else
  {
    sub_1000056EC(&qword_1000DBA00, &qword_100092F78);
    sub_10000EE58(&qword_1000DBA08, &qword_1000DBA00, &qword_100092F78, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100026CD4()
{
  v1 = OBJC_IVAR____TtC13PCViewService13CardViewModel__header;
  v2 = sub_1000056EC(&qword_1000DB9F8, &qword_100092F70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13PCViewService13CardViewModel__content;
  v4 = sub_1000056EC(&qword_1000DB9F0, &qword_100092F68);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13PCViewService13CardViewModel__closeButtonEnabled;
  v6 = sub_1000056EC(&qword_1000DAF88, &qword_10009A980);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC13PCViewService13CardViewModel__enablePaddingForCloseButton, v6);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v8, v9);
}

uint64_t type metadata accessor for CardViewModel(uint64_t a1)
{
  result = qword_1000DB6A0;
  if (!qword_1000DB6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100026EB8(uint64_t a1)
{
  sub_100027004(319, &qword_1000DB6B0, &qword_1000DA920, &qword_100091C70);
  if (v1 <= 0x3F)
  {
    sub_100027004(319, &unk_1000DB6B8, &qword_1000DA930, &qword_100091D08);
    if (v2 <= 0x3F)
    {
      sub_100027058();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100027004(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100005818(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100027058()
{
  if (!qword_1000DADC0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DADC0);
    }
  }
}

uint64_t getEnumTagSinglePayload for CardViewEvent(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CardViewEvent(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1000271BC()
{
  v1 = v0;
  v2 = sub_1000056EC(&qword_1000DAF88, &qword_10009A980);
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v20 - v3;
  v20 = sub_1000056EC(&qword_1000DB9F0, &qword_100092F68);
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v20 - v6;
  v8 = sub_1000056EC(&qword_1000DB9F8, &qword_100092F70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC13PCViewService13CardViewModel__header;
  *&v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_10001A510(&v24, v23, &qword_1000DA920, &qword_100091C70);
  sub_1000056EC(&qword_1000DA920, &qword_100091C70);
  Published.init(initialValue:)();
  sub_10000A628(&v24, &qword_1000DA920, &qword_100091C70);
  (*(v9 + 32))(v1 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC13PCViewService13CardViewModel__content;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  sub_10001A510(&v24, v23, &qword_1000DA930, &qword_100091D08);
  sub_1000056EC(&qword_1000DA930, &qword_100091D08);
  Published.init(initialValue:)();
  sub_10000A628(&v24, &qword_1000DA930, &qword_100091D08);
  (*(v5 + 32))(v1 + v13, v7, v20);
  v14 = OBJC_IVAR____TtC13PCViewService13CardViewModel__closeButtonEnabled;
  LOBYTE(v24) = 1;
  Published.init(initialValue:)();
  v15 = v22;
  v16 = *(v21 + 32);
  v16(v1 + v14, v4, v22);
  v17 = OBJC_IVAR____TtC13PCViewService13CardViewModel__enablePaddingForCloseButton;
  LOBYTE(v24) = 1;
  Published.init(initialValue:)();
  v16(v1 + v17, v4, v15);
  v18 = OBJC_IVAR____TtC13PCViewService13CardViewModel_cardEventSubject;
  sub_1000056EC(&qword_1000DBA00, &qword_100092F78);
  swift_allocObject();
  *(v1 + v18) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC13PCViewService13CardViewModel____lazy_storage___cardEventPublisher) = 0;
  return v1;
}

uint64_t sub_100027544@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CardViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100027584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v36 = sub_1000056EC(&qword_1000DB840, &qword_100092D08);
  __chkstk_darwin(v36);
  v6 = &v34 - v5;
  v37 = sub_1000056EC(&qword_1000DB848, &qword_100092D10);
  __chkstk_darwin(v37);
  v35 = &v34 - v7;
  v8 = sub_1000056EC(&qword_1000DB850, &qword_100092D18);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1000056EC(&qword_1000DB858, &qword_100092D20);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_1000056EC(&qword_1000DB860, &qword_100092D28);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v20 = sub_1000056EC(&qword_1000DB868, &qword_100092D30);
  sub_100027AAC(a1, a2, &v10[*(v20 + 44)]);
  v21 = static Animation.default.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v40)
  {
    v23 = v41;
    v22 = v42;
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  sub_10000A628(v39, &qword_1000DA930, &qword_100091D08);
  sub_10001F170(v10, v13, &qword_1000DB850, &qword_100092D18);
  v24 = &v13[*(v11 + 36)];
  *v24 = v21;
  v24[1] = v23;
  v24[2] = v22;
  v25 = static Color.red.getter();
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v26 = *(qword_1000F3C58 + 136);
  v27 = sub_100025508();

  if (v27)
  {
    v28 = v35;
    sub_100029ADC(v25, &qword_1000DB858, &qword_100092D20, &qword_1000DB848, &qword_100092D10, v35);
    sub_10001A510(v28, v6, &qword_1000DB848, &qword_100092D10);
    swift_storeEnumTagMultiPayload();
    sub_10002A864(&qword_1000DB870, &qword_1000DB848, &qword_100092D10, sub_10002A660);
    sub_10002A660();
    _ConditionalContent<>.init(storage:)();

    sub_10000A628(v28, &qword_1000DB848, &qword_100092D10);
  }

  else
  {
    sub_10001A510(v13, v6, &qword_1000DB858, &qword_100092D20);
    swift_storeEnumTagMultiPayload();
    sub_10002A864(&qword_1000DB870, &qword_1000DB848, &qword_100092D10, sub_10002A660);
    sub_10002A660();
    _ConditionalContent<>.init(storage:)();
  }

  sub_10000A628(v13, &qword_1000DB858, &qword_100092D20);
  sub_10001F170(v17, v19, &qword_1000DB860, &qword_100092D28);
  v29 = static SafeAreaRegions.container.getter();
  v30 = static Edge.Set.all.getter();
  v31 = v38;
  sub_10001F170(v19, v38, &qword_1000DB860, &qword_100092D28);
  result = sub_1000056EC(&qword_1000DB8A8, &qword_100092D88);
  v33 = v31 + *(result + 36);
  *v33 = v29;
  *(v33 + 8) = v30;
  return result;
}

uint64_t sub_100027AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a3;
  v77 = sub_1000056EC(&qword_1000DB8B8, &qword_100092D98);
  __chkstk_darwin(v77);
  v6 = &v74 - v5;
  v78 = sub_1000056EC(&qword_1000DB8C0, &qword_100092DA0);
  __chkstk_darwin(v78);
  v75 = &v74 - v7;
  v8 = sub_1000056EC(&qword_1000DB8C8, &qword_100092DA8);
  __chkstk_darwin(v8);
  v10 = (&v74 - v9);
  v11 = sub_1000056EC(&qword_1000DB8D0, &qword_100092DB0);
  __chkstk_darwin(v11);
  v13 = &v74 - v12;
  v14 = sub_1000056EC(&qword_1000DB8D8, &qword_100092DB8);
  v15 = __chkstk_darwin(v14 - 8);
  v81 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v76 = &v74 - v18;
  __chkstk_darwin(v17);
  v83 = &v74 - v19;
  *v10 = static Alignment.topTrailing.getter();
  v10[1] = v20;
  v21 = v10 + *(sub_1000056EC(&qword_1000DB8E0, &qword_100092DC0) + 44);
  v79 = a1;
  v80 = a2;
  sub_1000287F8(a1, a2, v21);
  v22 = static Edge.Set.top.getter();
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v23 = qword_1000F3C58;
  v24 = *(qword_1000F3C58 + 648);
  sub_1000264EC(&type metadata for CGFloat);

  EdgeInsets.init(_all:)();
  v25 = v10 + *(v8 + 36);
  *v25 = v22;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_1000056EC(&qword_1000DB8E8, &unk_10009AC10);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100092B80;
  v31 = static Edge.Set.leading.getter();
  *(v30 + 32) = v31;
  v32 = static Edge.Set.trailing.getter();
  *(v30 + 33) = v32;
  v33 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v31)
  {
    v33 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v32)
  {
    v33 = Edge.Set.init(rawValue:)();
  }

  v34 = *(v23 + 656);
  sub_1000264EC(&type metadata for CGFloat);

  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_10001F170(v10, v13, &qword_1000DB8C8, &qword_100092DA8);
  v43 = &v13[*(v11 + 36)];
  *v43 = v33;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  v44 = static Color.green.getter();
  v45 = *(v23 + 136);
  v46 = sub_100025508();

  if (v46)
  {
    v74 = v23;
    v47 = v75;
    sub_100029ADC(v44, &qword_1000DB8D0, &qword_100092DB0, &qword_1000DB8C0, &qword_100092DA0, v75);
    sub_10001A510(v47, v6, &qword_1000DB8C0, &qword_100092DA0);
    swift_storeEnumTagMultiPayload();
    sub_10002A864(&qword_1000DB8F0, &qword_1000DB8C0, &qword_100092DA0, sub_10002A914);
    sub_10002A914();
    v48 = v76;
    v23 = v74;
    _ConditionalContent<>.init(storage:)();

    sub_10000A628(v47, &qword_1000DB8C0, &qword_100092DA0);
  }

  else
  {
    sub_10001A510(v13, v6, &qword_1000DB8D0, &qword_100092DB0);
    swift_storeEnumTagMultiPayload();
    sub_10002A864(&qword_1000DB8F0, &qword_1000DB8C0, &qword_100092DA0, sub_10002A914);
    sub_10002A914();
    v48 = v76;
    _ConditionalContent<>.init(storage:)();
  }

  sub_10000A628(v13, &qword_1000DB8D0, &qword_100092DB0);
  sub_10001F170(v48, v83, &qword_1000DB8D8, &qword_100092DB8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v77 = v127;
  v78 = v125;
  v75 = v130;
  v76 = v129;
  v124 = 1;
  v123 = v126;
  v122 = v128;
  sub_10002852C(v120);
  v50 = v120[0];
  v49 = v120[1];
  v51 = v121;
  v52 = static Color.blue.getter();
  v53 = *(v23 + 136);
  v54 = sub_100025508();

  if (v54)
  {
    sub_100029910(v52, v50, v49, v51, &v114);
    v100 = v118;
    v101[0] = v119[0];
    *&v101[1] = *&v119[1];
    v96 = v114;
    v97 = v115;
    v98 = v116;
    v99 = v117;
    v102 = v114;
    v103 = v115;
    v104 = v116;
    v105 = v117;
    v106 = v118;
    v107[0] = v119[0];
    *&v107[1] = *&v119[1];
    sub_10001A510(&v96, &v108, &qword_1000DB918, &qword_100092DD0);
    sub_10000A628(&v102, &qword_1000DB918, &qword_100092DD0);
    v112 = v100;
    v113[0] = v101[0];
    *&v113[1] = *&v101[1];
    v108 = v96;
    v109 = v97;
    v110 = v98;
    v111 = v99;
    LOBYTE(v90) = 0;
    BYTE8(v113[1]) = 0;
    sub_10001A510(&v96, &v114, &qword_1000DB918, &qword_100092DD0);
    sub_10001A510(&v96, &v114, &qword_1000DB918, &qword_100092DD0);
    sub_1000056EC(&qword_1000DB918, &qword_100092DD0);
    sub_1000056EC(&qword_1000DB920, &qword_100092DD8);
    sub_10002A864(&qword_1000DB928, &qword_1000DB918, &qword_100092DD0, sub_10002AA58);
    sub_10002AA58();
    _ConditionalContent<>.init(storage:)();
    sub_10002AB9C(v50, v49, v51);

    sub_10000A628(&v96, &qword_1000DB918, &qword_100092DD0);
    sub_10000A628(&v96, &qword_1000DB918, &qword_100092DD0);
  }

  else
  {
    LOBYTE(v102) = v51;
    LOBYTE(v96) = 1;
    *&v108 = v50;
    *(&v108 + 1) = v49;
    LOBYTE(v109) = v51;
    BYTE8(v113[1]) = 1;
    sub_1000056EC(&qword_1000DB918, &qword_100092DD0);
    sub_1000056EC(&qword_1000DB920, &qword_100092DD8);
    sub_10002A864(&qword_1000DB928, &qword_1000DB918, &qword_100092DD0, sub_10002AA58);
    sub_10002AA58();
    _ConditionalContent<>.init(storage:)();
  }

  v94 = v118;
  v95[0] = v119[0];
  *(v95 + 9) = *(v119 + 9);
  v90 = v114;
  v91 = v115;
  v92 = v116;
  v93 = v117;
  v96 = v114;
  v97 = v115;
  *(v101 + 9) = *(v119 + 9);
  v100 = v118;
  v101[0] = v119[0];
  v98 = v116;
  v99 = v117;
  sub_10001A510(&v90, &v108, &qword_1000DB948, &qword_100092DE8);
  sub_10000A628(&v96, &qword_1000DB948, &qword_100092DE8);
  v55 = v83;
  v56 = v81;
  sub_10001A510(v83, v81, &qword_1000DB8D8, &qword_100092DB8);
  v57 = v124;
  v58 = v123;
  v59 = v122;
  v88 = v94;
  v89[0] = v95[0];
  *(v89 + 9) = *(v95 + 9);
  v84 = v90;
  v85 = v91;
  v86 = v92;
  v87 = v93;
  v60 = v82;
  sub_10001A510(v56, v82, &qword_1000DB8D8, &qword_100092DB8);
  v61 = sub_1000056EC(&qword_1000DB950, &qword_100092DF0);
  v62 = v60 + v61[12];
  *v62 = 0;
  *(v62 + 8) = v57;
  v63 = v77;
  *(v62 + 16) = v78;
  *(v62 + 24) = v58;
  *(v62 + 32) = v63;
  *(v62 + 40) = v59;
  v64 = v75;
  *(v62 + 48) = v76;
  *(v62 + 56) = v64;
  v65 = v61[16];
  v66 = v85;
  v102 = v84;
  v103 = v85;
  v67 = v86;
  v68 = v87;
  v104 = v86;
  v105 = v87;
  v69 = v88;
  v70 = v89[0];
  v106 = v88;
  v107[0] = v89[0];
  *(v107 + 9) = *(v89 + 9);
  v71 = (v60 + v65);
  *v71 = v84;
  v71[1] = v66;
  *(v71 + 89) = *(v89 + 9);
  v71[4] = v69;
  v71[5] = v70;
  v71[2] = v67;
  v71[3] = v68;
  v72 = v60 + v61[20];
  *v72 = 0;
  *(v72 + 8) = 0;
  sub_10001A510(&v102, &v108, &qword_1000DB948, &qword_100092DE8);
  sub_10000A628(v55, &qword_1000DB8D8, &qword_100092DB8);
  v112 = v88;
  v113[0] = v89[0];
  *(v113 + 9) = *(v89 + 9);
  v108 = v84;
  v109 = v85;
  v110 = v86;
  v111 = v87;
  sub_10000A628(&v108, &qword_1000DB948, &qword_100092DE8);
  return sub_10000A628(v56, &qword_1000DB8D8, &qword_100092DB8);
}

void *sub_10002852C@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(&v9 + 1))
  {
    v13 = v9;
    v14 = v10;
    v12 = v8;
    v15 = v11;
    sub_100006768(&v12, *(&v9 + 1));
    sub_10006AC84(*(&v9 + 1), v10);
    sub_1000056EC(&qword_1000DB958, &qword_100092DF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100092B80;
    sub_10002AC24();
    *(inited + 32) = static AnyTransition.modifier<A>(active:identity:)();
    *(inited + 40) = static AnyTransition.opacity.getter();
    AnyTransition.init(arrayLiteral:)(inited);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_100092B90;
    *&v8 = 0x4024000000000000;
    BYTE8(v8) = 0;
    *(v4 + 32) = static AnyTransition.modifier<A>(active:identity:)();
    *(v4 + 40) = static AnyTransition.opacity.getter();
    *(v4 + 48) = static AnyTransition.scale.getter();
    AnyTransition.init(arrayLiteral:)(v4);
    static AnyTransition.asymmetric(insertion:removal:)();

    sub_1000056EC(&qword_1000DB940, &qword_100092DE0);
    sub_10002AAE4();
    _ConditionalContent<>.init(storage:)();
    v5 = v9;
    result = sub_10000A628(&v12, &qword_1000DB968, &qword_100092E00);
    v7 = v8;
  }

  else
  {
    sub_10000A628(&v8, &qword_1000DA930, &qword_100091D08);
    v8 = AnyView.init<A>(_:)();
    LOBYTE(v9) = 1;
    sub_1000056EC(&qword_1000DB940, &qword_100092DE0);
    sub_10002AAE4();
    result = _ConditionalContent<>.init(storage:)();
    v7 = v12;
    v5 = v13;
  }

  *a2 = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1000287F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v75 = a1;
  v89 = a3;
  v80 = sub_1000056EC(&qword_1000DB970, &qword_100092E08);
  __chkstk_darwin(v80);
  v85 = &v70 - v4;
  v84 = sub_1000056EC(&qword_1000DB978, &qword_100092E10);
  __chkstk_darwin(v84);
  v71 = &v70 - v5;
  v6 = sub_1000056EC(&qword_1000DB980, &qword_100092E18);
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v86 = &v70 - v7;
  v87 = sub_1000056EC(&qword_1000DB988, &qword_100092E20);
  __chkstk_darwin(v87);
  v9 = &v70 - v8;
  v10 = sub_1000056EC(&qword_1000DB990, &qword_100092E28);
  v11 = __chkstk_darwin(v10 - 8);
  v78 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = &v70 - v13;
  v14 = sub_1000056EC(&qword_1000DB998, &qword_100092E30);
  v88 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v83 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v82 = &v70 - v17;
  v18 = sub_1000056EC(&qword_1000DB9A0, &qword_100092E38);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v70 - v22;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v79 = v9;
  if (*&v107[24])
  {
    v70 = a2;
    v73 = v23;
    v74 = v21;
    sub_10002AF0C(v107, v108);
    v24 = v109;
    v25 = v110;
    sub_100006768(v108, v109);
    v26 = sub_10006AC84(v24, v25);
    sub_1000056EC(&qword_1000DB958, &qword_100092DF8);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100092B80;
    *&v118[0] = 0x4024000000000000;
    BYTE8(v118[0]) = 0;
    *v107 = 0;
    v107[8] = 0;
    sub_10002AC24();
    *(v27 + 32) = static AnyTransition.modifier<A>(active:identity:)();
    *(v27 + 40) = static AnyTransition.opacity.getter();
    v28 = AnyTransition.init(arrayLiteral:)(v27);
    v29 = static Color.green.getter();
    if (qword_1000D9778 != -1)
    {
      swift_once();
    }

    v72 = v14;
    v30 = *(qword_1000F3C58 + 136);
    v31 = sub_100025508();

    if (v31)
    {
      sub_100029CC4(v29, v26, v28, v118);
      *&v105[32] = v118[2];
      *&v105[48] = v118[3];
      *&v105[64] = v118[4];
      *&v105[80] = v118[5];
      *v105 = v118[0];
      *&v105[16] = v118[1];
      *&v107[32] = v118[2];
      *&v107[48] = v118[3];
      *&v107[64] = v118[4];
      *&v107[80] = v118[5];
      *v107 = v118[0];
      *&v107[16] = v118[1];
      sub_10001A510(v105, v106, &qword_1000DB9D8, &qword_100092EE0);
      sub_10000A628(v107, &qword_1000DB9D8, &qword_100092EE0);
      v118[2] = *&v105[32];
      v118[3] = *&v105[48];
      v118[4] = *&v105[64];
      v118[5] = *&v105[80];
      v118[0] = *v105;
      v118[1] = *&v105[16];
      LOBYTE(v111) = 0;
      LOBYTE(v118[6]) = 0;
      sub_10001A510(v105, v106, &qword_1000DB9D8, &qword_100092EE0);
      sub_10001A510(v105, v106, &qword_1000DB9D8, &qword_100092EE0);
      sub_1000056EC(&qword_1000DB9D8, &qword_100092EE0);
      sub_1000056EC(&qword_1000DB940, &qword_100092DE0);
      sub_10002A864(&qword_1000DB9E0, &qword_1000DB9D8, &qword_100092EE0, sub_10002AAE4);
      sub_10002AAE4();
      _ConditionalContent<>.init(storage:)();

      sub_10000A628(v105, &qword_1000DB9D8, &qword_100092EE0);
      sub_10000A628(v105, &qword_1000DB9D8, &qword_100092EE0);
    }

    else
    {
      v107[0] = 1;
      *&v118[0] = v26;
      *(&v118[0] + 1) = v28;
      LOBYTE(v118[6]) = 1;
      sub_1000056EC(&qword_1000DB9D8, &qword_100092EE0);
      sub_1000056EC(&qword_1000DB940, &qword_100092DE0);
      sub_10002A864(&qword_1000DB9E0, &qword_1000DB9D8, &qword_100092EE0, sub_10002AAE4);
      sub_10002AAE4();
      _ConditionalContent<>.init(storage:)();
    }

    v115 = *&v106[64];
    v116 = *&v106[80];
    LOBYTE(v117) = v106[96];
    v111 = *v106;
    v112 = *&v106[16];
    v114 = *&v106[48];
    v113 = *&v106[32];
    *v105 = *v106;
    *&v105[16] = *&v106[16];
    v105[96] = v106[96];
    *&v105[32] = *&v106[32];
    *&v105[48] = *&v106[48];
    *&v105[64] = *&v106[64];
    *&v105[80] = *&v106[80];
    sub_10001A510(&v111, v118, &qword_1000DB9E8, &qword_100092EE8);
    sub_10000A628(v105, &qword_1000DB9E8, &qword_100092EE8);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v94 = v115;
    v95 = v116;
    LOBYTE(v96) = v117;
    v90 = v111;
    v91 = v112;
    v92 = v113;
    v93 = v114;
    v33 = static Edge.Set.trailing.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    a2 = v70;
    static Published.subscript.getter();

    EdgeInsets.init(_all:)();
    v104 = 0;
    *&v107[160] = v100;
    *&v107[176] = v101;
    *&v107[192] = v102;
    *&v107[208] = v103;
    *&v107[96] = v96;
    *&v107[112] = v97;
    *&v107[128] = v98;
    *&v107[144] = v99;
    *&v107[32] = v92;
    *&v107[48] = v93;
    *&v107[64] = v94;
    *&v107[80] = v95;
    *v107 = v90;
    *&v107[16] = v91;
    v107[216] = v33;
    *&v107[224] = v34;
    *&v107[232] = v35;
    *&v107[240] = v36;
    *&v107[248] = v37;
    v107[256] = 0;
    nullsub_1();
    sub_10000529C(v108);
    memcpy(v118, v107, 0x101uLL);
    v32 = v89;
    v23 = v73;
    v21 = v74;
    v14 = v72;
  }

  else
  {
    sub_10000A628(v107, &qword_1000DA920, &qword_100091C70);
    sub_10002AD00(v118);
    v32 = v89;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v107[0] == 1)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v75;
    *(v38 + 24) = a2;
    type metadata accessor for CloseButtonView(0);
    sub_10002ADFC();

    Button.init(action:label:)();
    sub_1000056EC(&qword_1000DB8E8, &unk_10009AC10);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100092B80;
    v40 = static Edge.Set.top.getter();
    *(v39 + 32) = v40;
    v41 = static Edge.Set.trailing.getter();
    *(v39 + 33) = v41;
    v42 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v40)
    {
      v42 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v41)
    {
      v42 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = v79;
    (*(v76 + 32))(v79, v86, v77);
    v52 = v51 + *(v87 + 36);
    *v52 = v42;
    *(v52 + 8) = v44;
    *(v52 + 16) = v46;
    *(v52 + 24) = v48;
    *(v52 + 32) = v50;
    *(v52 + 40) = 0;
    v53 = static Color.purple.getter();
    if (qword_1000D9778 != -1)
    {
      swift_once();
    }

    v54 = *(qword_1000F3C58 + 136);
    v55 = sub_100025508();

    if (v55)
    {
      v56 = v71;
      sub_100029ADC(v53, &qword_1000DB988, &qword_100092E20, &qword_1000DB978, &qword_100092E10, v71);
      sub_10001A510(v56, v85, &qword_1000DB978, &qword_100092E10);
      swift_storeEnumTagMultiPayload();
      sub_10002A864(&qword_1000DB9C0, &qword_1000DB978, &qword_100092E10, sub_10002AE54);
      sub_10002AE54();
      v57 = v78;
      _ConditionalContent<>.init(storage:)();

      sub_10000A628(v56, &qword_1000DB978, &qword_100092E10);
    }

    else
    {
      sub_10001A510(v51, v85, &qword_1000DB988, &qword_100092E20);
      swift_storeEnumTagMultiPayload();
      sub_10002A864(&qword_1000DB9C0, &qword_1000DB978, &qword_100092E10, sub_10002AE54);
      sub_10002AE54();
      v57 = v78;
      _ConditionalContent<>.init(storage:)();
    }

    v32 = v89;
    sub_10000A628(v51, &qword_1000DB988, &qword_100092E20);
    v59 = v81;
    sub_10001F170(v57, v81, &qword_1000DB990, &qword_100092E28);
    static Alignment.trailing.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v60 = v59;
    v61 = v83;
    sub_10001F170(v60, v83, &qword_1000DB990, &qword_100092E28);
    v62 = (v61 + *(v14 + 36));
    v63 = v116;
    v62[4] = v115;
    v62[5] = v63;
    v62[6] = v117;
    v64 = v112;
    *v62 = v111;
    v62[1] = v64;
    v65 = v114;
    v62[2] = v113;
    v62[3] = v65;
    v66 = v61;
    v67 = v82;
    sub_10001F170(v66, v82, &qword_1000DB998, &qword_100092E30);
    sub_10001F170(v67, v23, &qword_1000DB998, &qword_100092E30);
    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  (*(v88 + 56))(v23, v58, 1, v14);
  memcpy(v105, v118, sizeof(v105));
  sub_10001A510(v23, v21, &qword_1000DB9A0, &qword_100092E38);
  memcpy(v106, v105, sizeof(v106));
  memcpy(v32, v105, 0x101uLL);
  v68 = sub_1000056EC(&qword_1000DB9A8, &qword_100092ED0);
  sub_10001A510(v21, v32 + *(v68 + 48), &qword_1000DB9A0, &qword_100092E38);
  sub_10001A510(v106, v107, &qword_1000DB9B0, &qword_100092ED8);
  sub_10000A628(v23, &qword_1000DB9A0, &qword_100092E38);
  sub_10000A628(v21, &qword_1000DB9A0, &qword_100092E38);
  memcpy(v107, v105, sizeof(v107));
  return sub_10000A628(v107, &qword_1000DB9B0, &qword_100092ED8);
}

uint64_t sub_1000296D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = swift_getKeyPath();
  sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for CloseButtonView(0);
  v7 = v6[5];
  v8 = enum case for Color.RGBColorSpace.sRGB(_:);
  v9 = *(v3 + 104);
  v9(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  *(a1 + v7) = Color.init(_:white:opacity:)();
  v10 = v6[6];
  v9(v5, v8, v2);
  *(a1 + v10) = Color.init(_:white:opacity:)();
  v11 = v6[7];
  v9(v5, v8, v2);
  *(a1 + v11) = Color.init(_:white:opacity:)();
  v12 = v6[8];
  v9(v5, v8, v2);
  result = Color.init(_:white:opacity:)();
  *(a1 + v12) = result;
  return result;
}

unint64_t sub_1000298BC()
{
  result = qword_1000DB838;
  if (!qword_1000DB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB838);
  }

  return result;
}

uint64_t sub_100029910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v11 = v35;
  v12 = v35 * 0.5;
  v13 = v36;
  v14 = DWORD1(v36);
  v15 = *(&v36 + 1);
  v16 = v37;

  v17 = static Alignment.center.getter();
  *v38 = v35 * 0.5;
  *(v38 + 1) = v35;
  v38[1] = v36;
  *v39 = v37;
  *&v39[16] = a1;
  *&v39[24] = 256;
  v33 = v36;
  *v34 = v37;
  *&v34[10] = *&v39[10];
  v32 = v38[0];
  v18 = *v34;
  v19 = *&v34[16];
  v41 = *v34;
  v42 = *&v34[16];
  v40[0] = v38[0];
  v40[1] = v36;
  *&v43 = v17;
  *(&v43 + 1) = v20;
  v21 = v36;
  *(a5 + 24) = v38[0];
  v22 = v42;
  *(a5 + 88) = v43;
  v23 = v41;
  *(a5 + 72) = v22;
  *a5 = a2;
  *(a5 + 8) = a3;
  a4 &= 1u;
  *(a5 + 16) = a4;
  *(a5 + 56) = v23;
  *(a5 + 40) = v21;
  v44[2] = v18;
  v44[3] = v19;
  v44[0] = v32;
  v44[1] = v33;
  v45 = v17;
  v46 = v20;
  sub_10001A510(v38, v25, &qword_1000DB8B0, &qword_100092D90);
  sub_10002ABE8(a2, a3, a4);
  sub_10001A510(v40, v25, &qword_1000DB8A0, &qword_10009AAA0);
  sub_10000A628(v44, &qword_1000DB8A0, &qword_10009AAA0);
  *v25 = v12;
  *&v25[1] = v11;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = a1;
  v31 = 256;
  return sub_10000A628(v25, &qword_1000DB8B0, &qword_100092D90);
}

uint64_t sub_100029ADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = v7;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v13 = v38;
  v14 = v38 * 0.5;
  v16 = v39;
  v15 = DWORD1(v39);
  v17 = *(&v39 + 1);
  v18 = v40;

  v19 = static Alignment.center.getter();
  v21 = v20;
  *v41 = v38 * 0.5;
  *(v41 + 1) = v38;
  v41[1] = v39;
  *v42 = v40;
  *&v42[16] = a1;
  *&v42[24] = 256;
  v36 = v39;
  *v37 = v40;
  *&v37[10] = *&v42[10];
  v35 = v41[0];
  v45 = *v37;
  v46 = *&v37[16];
  v43 = v41[0];
  v44 = v39;
  *&v47 = v19;
  *(&v47 + 1) = v20;
  sub_10001A510(v10, a6, a2, a3);
  v22 = (a6 + *(sub_1000056EC(a4, a5) + 36));
  v23 = *&v37[16];
  v22[2] = *v37;
  v22[3] = v23;
  v22[4] = v47;
  v24 = v44;
  *v22 = v43;
  v22[1] = v24;
  v48[2] = *v37;
  v48[3] = *&v37[16];
  v48[0] = v35;
  v48[1] = v36;
  v49 = v19;
  v50 = v21;
  sub_10001A510(v41, v28, &qword_1000DB8B0, &qword_100092D90);
  sub_10001A510(&v43, v28, &qword_1000DB8A0, &qword_10009AAA0);
  sub_10000A628(v48, &qword_1000DB8A0, &qword_10009AAA0);
  *v28 = v14;
  *&v28[1] = v13;
  v29 = v16;
  v30 = v15;
  v31 = v17;
  v32 = v18;
  v33 = a1;
  v34 = 256;
  return sub_10000A628(v28, &qword_1000DB8B0, &qword_100092D90);
}

uint64_t sub_100029CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v9 = v32;
  v10 = v32 * 0.5;
  v11 = v33;
  v12 = DWORD1(v33);
  v13 = *(&v33 + 1);
  v14 = v34;

  v15 = static Alignment.center.getter();
  *v35 = v32 * 0.5;
  *(v35 + 1) = v32;
  v35[1] = v33;
  *v36 = v34;
  *&v36[16] = a1;
  *&v36[24] = 256;
  *v31 = v34;
  *&v31[10] = *&v36[10];
  v16 = *v31;
  v17 = *&v31[16];
  v39 = *v31;
  v40 = *&v31[16];
  v29 = v35[0];
  v30 = v33;
  v37 = v35[0];
  v38 = v33;
  *&v41 = v15;
  *(&v41 + 1) = v18;
  *a4 = a2;
  *(a4 + 8) = a3;
  v19 = v41;
  *(a4 + 64) = v40;
  *(a4 + 80) = v19;
  v20 = v39;
  *(a4 + 32) = v38;
  *(a4 + 48) = v20;
  *(a4 + 16) = v37;
  v42[2] = v16;
  v42[3] = v17;
  v42[0] = v29;
  v42[1] = v30;
  v43 = v15;
  v44 = v18;
  sub_10001A510(v35, v22, &qword_1000DB8B0, &qword_100092D90);

  sub_10001A510(&v37, v22, &qword_1000DB8A0, &qword_10009AAA0);
  sub_10000A628(v42, &qword_1000DB8A0, &qword_10009AAA0);
  *v22 = v10;
  *&v22[1] = v9;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = a1;
  v28 = 256;
  return sub_10000A628(v22, &qword_1000DB8B0, &qword_100092D90);
}

uint64_t sub_100029E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = v30;
  v7 = v30 * 0.5;
  v8 = v31;
  v9 = DWORD1(v31);
  v10 = *(&v31 + 1);
  v11 = v32;
  v12 = v33;

  v13 = static Alignment.center.getter();
  v15 = v14;
  *v34 = v30 * 0.5;
  *(v34 + 1) = v30;
  v34[1] = v31;
  *v35 = v32;
  *&v35[8] = v33;
  *&v35[16] = a1;
  *&v35[24] = 256;
  v28 = v31;
  v29[0] = *v35;
  *(v29 + 10) = *&v35[10];
  v27 = v34[0];
  v38 = v29[0];
  v39 = v29[1];
  v36 = v34[0];
  v37 = v31;
  *&v40 = v13;
  *(&v40 + 1) = v14;
  memcpy(a2, v3, 0x161uLL);
  v16 = v29[1];
  *(a2 + 392) = v29[0];
  *(a2 + 408) = v16;
  *(a2 + 424) = v40;
  v17 = v37;
  *(a2 + 360) = v36;
  *(a2 + 376) = v17;
  v41[0] = v27;
  v41[1] = v28;
  v41[2] = v29[0];
  v41[3] = v29[1];
  v42 = v13;
  v43 = v15;
  sub_10001A510(v34, v19, &qword_1000DB8B0, &qword_100092D90);
  sub_10001A510(v3, v19, &qword_1000DBA20, &qword_10009AA90);
  sub_10001A510(&v36, v19, &qword_1000DB8A0, &qword_10009AAA0);
  sub_10000A628(v41, &qword_1000DB8A0, &qword_10009AAA0);
  *v19 = v7;
  *&v19[1] = v6;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = a1;
  v26 = 256;
  return sub_10000A628(v19, &qword_1000DB8B0, &qword_100092D90);
}

uint64_t sub_10002A0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = v34;
  v7 = v34 * 0.5;
  v8 = v35;
  v9 = DWORD1(v35);
  v10 = *(&v35 + 1);
  v11 = v36;

  v12 = static Alignment.center.getter();
  *v42 = v34 * 0.5;
  *(v42 + 1) = v34;
  v42[1] = v35;
  *v43 = v36;
  *&v43[16] = a1;
  *&v43[24] = 256;
  v32 = v35;
  *v33 = v36;
  *&v33[10] = *&v43[10];
  v31 = v42[0];
  v13 = *v33;
  v14 = *&v33[16];
  v46 = *v33;
  v47 = *&v33[16];
  v44 = v42[0];
  v45 = v35;
  *&v48 = v12;
  *(&v48 + 1) = v15;
  v16 = v3[1];
  v40 = *v3;
  v37 = v3[2];
  v17 = *v3;
  v18 = v3[2];
  *(a2 + 16) = v16;
  *(a2 + 32) = v18;
  *a2 = v17;
  v19 = v45;
  *(a2 + 56) = v44;
  v20 = v47;
  *(a2 + 120) = v48;
  v21 = v46;
  *(a2 + 104) = v20;
  v22 = *(v3 + 3);
  v41 = *(v3 + 16);
  v39 = v22;
  v38 = *(v3 + 48);
  *(a2 + 48) = *(v3 + 48);
  *(a2 + 88) = v21;
  *(a2 + 72) = v19;
  v49[2] = v13;
  v49[3] = v14;
  v49[0] = v31;
  v49[1] = v32;
  v50 = v12;
  v51 = v15;
  sub_10001A510(v42, v24, &qword_1000DB8B0, &qword_100092D90);
  sub_100022488(&v40, v24);
  sub_10001A510(&v39, v24, &qword_1000DB2B0, &qword_1000926D8);
  sub_10001A510(&v37, v24, &qword_1000DBA28, &qword_100092F80);
  sub_10001A510(&v44, v24, &qword_1000DB8A0, &qword_10009AAA0);
  sub_10000A628(v49, &qword_1000DB8A0, &qword_10009AAA0);
  *v24 = v7;
  *&v24[1] = v6;
  v25 = v8;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = a1;
  v30 = 256;
  return sub_10000A628(v24, &qword_1000DB8B0, &qword_100092D90);
}

uint64_t sub_10002A320(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_10002A3E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10002A464(uint64_t a1, uint64_t *a2)
{
  sub_10001A510(a1, v4, &qword_1000DA920, &qword_100091C70);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001A510(v4, &v3, &qword_1000DA920, &qword_100091C70);

  static Published.subscript.setter();
  return sub_10000A628(v4, &qword_1000DA920, &qword_100091C70);
}

uint64_t sub_10002A520()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10002A5A0(uint64_t a1, uint64_t *a2)
{
  sub_10001A510(a1, v4, &qword_1000DA930, &qword_100091D08);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001A510(v4, &v3, &qword_1000DA930, &qword_100091D08);

  static Published.subscript.setter();
  return sub_10000A628(v4, &qword_1000DA930, &qword_100091D08);
}

unint64_t sub_10002A660()
{
  result = qword_1000DB878;
  if (!qword_1000DB878)
  {
    sub_100005818(&qword_1000DB858, &qword_100092D20);
    sub_10000EE58(&qword_1000DB880, &qword_1000DB850, &qword_100092D18, &protocol conformance descriptor for VStack<A>);
    sub_10000EE58(&qword_1000DB888, &qword_1000DB890, &qword_100092D80, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB878);
  }

  return result;
}

BOOL sub_10002A76C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10002A864(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005818(a2, a3);
    a4();
    sub_10000EE58(&qword_1000DB898, &qword_1000DB8A0, &qword_10009AAA0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002A914()
{
  result = qword_1000DB8F8;
  if (!qword_1000DB8F8)
  {
    sub_100005818(&qword_1000DB8D0, &qword_100092DB0);
    sub_10002A9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB8F8);
  }

  return result;
}

unint64_t sub_10002A9A0()
{
  result = qword_1000DB900;
  if (!qword_1000DB900)
  {
    sub_100005818(&qword_1000DB8C8, &qword_100092DA8);
    sub_10000EE58(&qword_1000DB908, &qword_1000DB910, &qword_100092DC8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB900);
  }

  return result;
}

unint64_t sub_10002AA58()
{
  result = qword_1000DB930;
  if (!qword_1000DB930)
  {
    sub_100005818(&qword_1000DB920, &qword_100092DD8);
    sub_10002AAE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB930);
  }

  return result;
}

unint64_t sub_10002AAE4()
{
  result = qword_1000DB938;
  if (!qword_1000DB938)
  {
    sub_100005818(&qword_1000DB940, &qword_100092DE0);
    sub_10000EE58(&qword_1000DAD00, &qword_1000DAD08, &qword_100092100, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB938);
  }

  return result;
}

uint64_t sub_10002AB9C(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10002ABE8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {

    v3 = vars8;
  }
}

unint64_t sub_10002AC24()
{
  result = qword_1000DB960;
  if (!qword_1000DB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB960);
  }

  return result;
}

_BYTE *sub_10002AC78@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

double sub_10002AD00(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 255;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 241) = 0u;
  return result;
}

uint64_t sub_10002AD94()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10002ADFC()
{
  result = qword_1000DB9B8;
  if (!qword_1000DB9B8)
  {
    type metadata accessor for CloseButtonView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB9B8);
  }

  return result;
}

unint64_t sub_10002AE54()
{
  result = qword_1000DB9C8;
  if (!qword_1000DB9C8)
  {
    sub_100005818(&qword_1000DB988, &qword_100092E20);
    sub_10000EE58(&qword_1000DB9D0, &qword_1000DB980, &qword_100092E18, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB9C8);
  }

  return result;
}

uint64_t sub_10002AF0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10002AFA0()
{
  result = qword_1000DBA10;
  if (!qword_1000DBA10)
  {
    sub_100005818(&qword_1000DB8A8, &qword_100092D88);
    sub_10002B02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBA10);
  }

  return result;
}

unint64_t sub_10002B02C()
{
  result = qword_1000DBA18;
  if (!qword_1000DBA18)
  {
    sub_100005818(&qword_1000DB860, &qword_100092D28);
    sub_10002A864(&qword_1000DB870, &qword_1000DB848, &qword_100092D10, sub_10002A660);
    sub_10002A660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBA18);
  }

  return result;
}

uint64_t sub_10002B0E4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002B108(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002B164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10002B1C0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    v2 = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t sub_10002B1FC(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v20 = a3;
  v4 = sub_1000056EC(&qword_1000DBAA8, &qword_1000930A0);
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v21 = &v19 - v5;
  v6 = sub_1000056EC(&qword_1000DBAB0, &qword_1000930A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v10 = sub_1000056EC(&qword_1000DBAB8, &qword_1000930B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  sub_100006768(a1, a1[3]);
  sub_10002C0A8();
  v14 = v24;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v14 == 1)
  {
    LOBYTE(v27) = 0;
    sub_10002C1A4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    LOBYTE(v27) = 1;
    sub_10002C0FC();
    v16 = v21;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v14;
    v26 = 0;
    sub_10002C1F8();
    v17 = v23;
    v18 = v25;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v18)
    {
      v27 = v20;
      v26 = 1;
      type metadata accessor for PCInteractionDirection(0);
      sub_10002C24C(&qword_1000DBAC8, &protocol conformance descriptor for PCInteractionDirection);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v22 + 8))(v16, v17);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10002B5B4()
{
  if (*v0)
  {
    return 0x726566736E617274;
  }

  else
  {
    return 0x736E617254746F6ELL;
  }
}

void sub_10002B604(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E617254746F6ELL && a2 == 0xEF676E6972726566;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEC000000676E6972)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10002B6EC(uint64_t a1)
{
  v2 = sub_10002C0A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B728(uint64_t a1)
{
  v2 = sub_10002C0A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002B7AC(uint64_t a1)
{
  v2 = sub_10002C1A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B7E8(uint64_t a1)
{
  v2 = sub_10002C1A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002B824()
{
  if (*v0)
  {
    return 0x6F69746365726964;
  }

  else
  {
    return 12383;
  }
}

void sub_10002B858(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10002B934(uint64_t a1)
{
  v2 = sub_10002C0FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B970(uint64_t a1)
{
  v2 = sub_10002C0FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002B9AC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002BADC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

BOOL sub_10002BA08(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == 1)
  {
    return a3 == 1;
  }

  if (a3 == 1)
  {
    return 0;
  }

  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v6 = a4;
    v7 = a2;
    sub_10002C290();
    sub_100019FE8(a3);
    sub_100019FE8(a1);
    v9 = static NSObject.== infix(_:_:)();
    sub_100019FD8(a3);
    sub_100019FD8(a1);
    a2 = v7;
    a4 = v6;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  return a2 == a4;
}

uint64_t sub_10002BADC(void *a1)
{
  v2 = sub_1000056EC(&qword_1000DBA60, &qword_100093080);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  __chkstk_darwin(v2);
  v5 = &v26 - v4;
  v6 = sub_1000056EC(&qword_1000DBA68, &qword_100093088);
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_1000056EC(&qword_1000DBA70, &unk_100093090);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = a1[3];
  v31 = a1;
  sub_100006768(a1, v13);
  sub_10002C0A8();
  v14 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v14)
  {
    v15 = v29;
    v30 = v10;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v34 = v16;
    v35 = v16 + 32;
    v36 = 0;
    v37 = v17;
    v18 = sub_10007482C();
    if (v18 == 2 || v36 != v37 >> 1)
    {
      v20 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      v8 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
      *v22 = &type metadata for MediaTransferStatus;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
      swift_willThrow();
      (*(v30 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      LOBYTE(v38) = 1;
      sub_10002C0FC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v19 = v30;
      v29 = v12;
      LOBYTE(v33) = 0;
      sub_10002C150();
      v25 = v27;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v8 = v38;
      type metadata accessor for PCInteractionDirection(0);
      v32 = 1;
      sub_10002C24C(&qword_1000DBA98, &protocol conformance descriptor for PCInteractionDirection);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v28 + 8))(v5, v25);
      (*(v19 + 8))(v29, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v38) = 0;
      sub_10002C1A4();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v30;
      (*(v15 + 1))(v8, v6);
      (*(v24 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v8 = 1;
    }
  }

  sub_10000529C(v31);
  return v8;
}

unint64_t sub_10002C0A8()
{
  result = qword_1000DBA78;
  if (!qword_1000DBA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBA78);
  }

  return result;
}

unint64_t sub_10002C0FC()
{
  result = qword_1000DBA88;
  if (!qword_1000DBA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBA88);
  }

  return result;
}

unint64_t sub_10002C150()
{
  result = qword_1000DBA90;
  if (!qword_1000DBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBA90);
  }

  return result;
}

unint64_t sub_10002C1A4()
{
  result = qword_1000DBAA0;
  if (!qword_1000DBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAA0);
  }

  return result;
}

unint64_t sub_10002C1F8()
{
  result = qword_1000DBAC0;
  if (!qword_1000DBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAC0);
  }

  return result;
}

uint64_t sub_10002C24C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PCInteractionDirection(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002C290()
{
  result = qword_1000DBAD0;
  if (!qword_1000DBAD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DBAD0);
  }

  return result;
}

unint64_t sub_10002C310()
{
  result = qword_1000DBAD8;
  if (!qword_1000DBAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAD8);
  }

  return result;
}

unint64_t sub_10002C368()
{
  result = qword_1000DBAE0;
  if (!qword_1000DBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAE0);
  }

  return result;
}

unint64_t sub_10002C3C0()
{
  result = qword_1000DBAE8;
  if (!qword_1000DBAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAE8);
  }

  return result;
}

unint64_t sub_10002C418()
{
  result = qword_1000DBAF0;
  if (!qword_1000DBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAF0);
  }

  return result;
}

unint64_t sub_10002C470()
{
  result = qword_1000DBAF8;
  if (!qword_1000DBAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAF8);
  }

  return result;
}

unint64_t sub_10002C4C8()
{
  result = qword_1000DBB00;
  if (!qword_1000DBB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBB00);
  }

  return result;
}

unint64_t sub_10002C520()
{
  result = qword_1000DBB08;
  if (!qword_1000DBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBB08);
  }

  return result;
}

unint64_t sub_10002C578()
{
  result = qword_1000DBB10;
  if (!qword_1000DBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBB10);
  }

  return result;
}

uint64_t sub_10002C5CC()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DBB20);
  sub_1000047A0(v0, qword_1000DBB20);
  return Logger.init(subsystem:category:)();
}

id sub_10002C720(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = type metadata accessor for AppDelegate();
  v6 = NSStringFromClass(v5);
  UIApplicationMain(argc, argv, 0, v6);

  return 0;
}

uint64_t sub_10002C7D4(uint64_t a1)
{
  if (qword_1000D9760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000047A0(v1, qword_1000DBB20);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;

    sub_1000056EC(&qword_1000DBBC8, qword_1000933D8);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000343F8(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Did finish launching with options: %s", v4, 0xCu);
    sub_10000529C(v5);
  }

  return 1;
}

unint64_t sub_10002C94C()
{
  result = qword_1000DBBC0;
  if (!qword_1000DBBC0)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBBC0);
  }

  return result;
}

uint64_t sub_10002C9B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002CA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for NearbySharingInteractionViewServiceContext(uint64_t a1)
{
  result = qword_1000DBC28;
  if (!qword_1000DBC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002CAF4(uint64_t a1)
{
  result = type metadata accessor for NearbySharingInteractionDisplayContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002CB60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000056EC(&qword_1000DBC68, &qword_100093488);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for NearbySharingInteractionViewServiceContext(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006768(a1, a1[3]);
  sub_10002D110();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    sub_10002D1CC(&qword_1000DBC78, type metadata accessor for NearbySharingInteractionDisplayContext, &unk_100091100);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    sub_10002D164(v13, v11, type metadata accessor for NearbySharingInteractionDisplayContext);
    sub_10002D164(v11, v12, type metadata accessor for NearbySharingInteractionViewServiceContext);
  }

  return sub_10000529C(a1);
}

void sub_10002CDF0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000002DLL && 0x80000001000A1C60 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_10002CE84(uint64_t a1)
{
  v2 = sub_10002D110();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002CEC0(uint64_t a1)
{
  v2 = sub_10002D110();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002CF14(void *a1)
{
  v2 = sub_1000056EC(&qword_1000DBC80, &qword_100093490);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100006768(a1, a1[3]);
  sub_10002D110();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for NearbySharingInteractionDisplayContext(0);
  sub_10002D1CC(&qword_1000DBC88, type metadata accessor for NearbySharingInteractionDisplayContext, &unk_1000910D8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10002D08C(uint64_t a1)
{
  *(a1 + 8) = sub_10002D1CC(&qword_1000DA1B8, type metadata accessor for NearbySharingInteractionViewServiceContext, &unk_100093444);
  result = sub_10002D1CC(&qword_1000DBC60, type metadata accessor for NearbySharingInteractionViewServiceContext, &unk_10009341C);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10002D110()
{
  result = qword_1000DBC70;
  if (!qword_1000DBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBC70);
  }

  return result;
}

uint64_t sub_10002D164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002D1CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002D228()
{
  result = qword_1000DBC90;
  if (!qword_1000DBC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBC90);
  }

  return result;
}

unint64_t sub_10002D280()
{
  result = qword_1000DBC98;
  if (!qword_1000DBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBC98);
  }

  return result;
}

unint64_t sub_10002D2D8()
{
  result = qword_1000DBCA0;
  if (!qword_1000DBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBCA0);
  }

  return result;
}

unint64_t UIBlurEffectStyle.description.getter(uint64_t a1)
{
  result = 0x67694C6172747865;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x746867696CLL;
      break;
    case 2:
      result = 1802658148;
      break;
    case 3:
      result = 0x7261446172747865;
      break;
    case 4:
      result = 0x72616C75676572;
      break;
    case 5:
      result = 0x6E656E696D6F7270;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
    case 18:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x614D6D6574737973;
      break;
    case 9:
    case 13:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 14:
    case 20:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0xD000000000000017;
      break;
    default:
      _StringGuts.grow(_:)(19);

      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      result = 0xD000000000000011;
      break;
  }

  return result;
}

unint64_t sub_10002D670()
{
  result = qword_1000DBCA8;
  if (!qword_1000DBCA8)
  {
    sub_100005818(&qword_1000DBCB0, qword_1000935B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBCA8);
  }

  return result;
}

unint64_t sub_10002D79C()
{
  result = qword_1000DBCB8;
  if (!qword_1000DBCB8)
  {
    type metadata accessor for Style(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBCB8);
  }

  return result;
}

uint64_t sub_10002D7F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10002D83C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002D8B4@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for CAImage(0);
  __chkstk_darwin(v3);
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_1000056EC(&qword_1000DBCD0, &qword_100093758);
  v6 = __chkstk_darwin(v46);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v45 - v8;
  if (qword_1000D97E0 != -1)
  {
    swift_once();
  }

  if (byte_1000F3CF8)
  {
    v10 = "hand_holding_iphone_gen2";
  }

  else
  {
    v10 = "systemUltraThinMaterial";
  }

  v11 = v10 | 0x8000000000000000;
  v12 = *a1 / 152.0;
  *&v66 = 0xD000000000000018;
  *(&v66 + 1) = v10 | 0x8000000000000000;

  v13._countAndFlagsBits = 0x746867696C5FLL;
  v45 = a1;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14 = v66;
  *&v66 = 0xD000000000000018;
  *(&v66 + 1) = v11;

  v15._countAndFlagsBits = 0x6B7261645FLL;
  v15._object = 0xE500000000000000;
  String.append(_:)(v15);

  v16 = v66;
  *v5 = swift_getKeyPath();
  sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  swift_storeEnumTagMultiPayload();
  v17 = v5 + v3[5];
  *v65 = 0;
  *&v65[8] = 0;
  sub_1000056EC(&qword_1000DAC58, &qword_100097C10);
  State.init(wrappedValue:)();
  v18 = v67;
  *v17 = v66;
  *(v17 + 2) = v18;
  v19 = (v5 + v3[7]);
  *(v5 + v3[6]) = v14;
  *v19 = v16;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10001B4FC(v5, v9);
  v20 = &v9[*(sub_1000056EC(&qword_1000DBCD8, &qword_1000937A0) + 36)];
  v21 = v106[1];
  *v20 = v106[0];
  *(v20 + 1) = v21;
  *(v20 + 2) = v106[2];
  sub_10002E680(v5);
  sub_1000056EC(&qword_1000DBCE0, &qword_1000937A8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100092B80;
  static Color.clear.getter();
  *(v22 + 32) = Gradient.Stop.init(color:location:)();
  *(v22 + 40) = v23;
  static Color.red.getter();
  *(v22 + 48) = Gradient.Stop.init(color:location:)();
  *(v22 + 56) = v24;
  static UnitPoint.bottom.getter();
  static UnitPoint.top.getter();
  Gradient.init(stops:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v25 = v107;
  v26 = &v9[*(sub_1000056EC(&qword_1000DBCE8, &qword_1000937B0) + 36)];
  *v26 = v25;
  v27 = v108;
  *(v26 + 24) = v109;
  *(v26 + 8) = v27;
  v28 = &v9[*(v46 + 36)];
  *v28 = v12 * -2.5;
  *(v28 + 1) = 0;
  v29 = static Color.white.getter();
  v30 = static Alignment.center.getter();
  v32 = v31;
  v33 = v45;
  sub_10002E1AC(v45, v29, &v66);
  v101 = v76;
  v102 = v77;
  v97 = v72;
  v98 = v73;
  v100 = v75;
  v99 = v74;
  v93 = v68;
  v94 = v69;
  v95 = v70;
  v96 = v71;
  v91 = v66;
  v92 = v67;
  v104[10] = v76;
  v104[11] = v77;
  v104[6] = v72;
  v104[7] = v73;
  v104[9] = v75;
  v104[8] = v74;
  v104[2] = v68;
  v104[3] = v69;
  v104[5] = v71;
  v104[4] = v70;
  v103 = v78;
  v105 = v78;
  v104[1] = v67;
  v104[0] = v66;
  sub_10001A510(&v91, v65, &qword_1000DBCF0, &qword_1000937B8);
  sub_10000A628(v104, &qword_1000DBCF0, &qword_1000937B8);
  v62 = v101;
  v63 = v102;
  v64 = v103;
  v58 = v97;
  v59 = v98;
  v60 = v99;
  v61 = v100;
  v54 = v93;
  v55 = v94;
  v56 = v95;
  v57 = v96;
  v52 = v91;
  v53 = v92;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  if (v33[3])
  {
    v34 = 0.0;
  }

  else
  {
    v34 = 10.0;
  }

  if (v33[3])
  {
    v35 = v12;
  }

  else
  {
    v35 = 0.0;
  }

  static UnitPoint.center.getter();
  v37 = v36;
  v39 = v38;
  v40 = v12 * -70.0;
  v41 = v48;
  sub_10001A510(v9, v48, &qword_1000DBCD0, &qword_100093758);
  v42 = v47;
  sub_10001A510(v41, v47, &qword_1000DBCD0, &qword_100093758);
  v43 = *(sub_1000056EC(&qword_1000DBCF8, &qword_1000937C0) + 48);
  *&v65[176] = v62;
  *&v65[192] = v63;
  *&v65[112] = v58;
  *&v65[128] = v59;
  *&v65[144] = v60;
  *&v65[160] = v61;
  *&v65[48] = v54;
  *&v65[64] = v55;
  *&v65[80] = v56;
  *&v65[96] = v57;
  *&v65[16] = v52;
  *&v65[32] = v53;
  *&v65[216] = v49;
  *v65 = v30;
  *&v65[8] = v32;
  *&v65[208] = v64;
  *&v65[232] = v50;
  *&v65[248] = v51;
  *&v65[264] = v34;
  v65[272] = 0;
  *&v65[280] = v35;
  *&v65[288] = v35;
  *&v65[296] = v37;
  *&v65[304] = v39;
  *&v65[312] = 0;
  *&v65[320] = v40;
  memcpy((v42 + v43), v65, 0x148uLL);
  sub_10001A510(v65, &v66, &qword_1000DBD00, &qword_1000937C8);
  sub_10000A628(v9, &qword_1000DBCD0, &qword_100093758);
  v77 = v62;
  v78 = v63;
  v73 = v58;
  v74 = v59;
  v75 = v60;
  v76 = v61;
  v69 = v54;
  v70 = v55;
  v71 = v56;
  v72 = v57;
  v67 = v52;
  v68 = v53;
  v80 = v49;
  *&v66 = v30;
  *(&v66 + 1) = v32;
  v79 = v64;
  v81 = v50;
  v82 = v51;
  v83 = v34;
  v84 = 0;
  v85 = v35;
  v86 = v35;
  v87 = v37;
  v88 = v39;
  v89 = 0;
  v90 = v40;
  sub_10000A628(&v66, &qword_1000DBD00, &qword_1000937C8);
  return sub_10000A628(v41, &qword_1000DBCD0, &qword_100093758);
}

void sub_10002DFF4(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (qword_1000D9778 != -1)
    {
      swift_once();
    }

    v2 = qword_1000F3C58;
    v3 = *(qword_1000F3C58 + 288);
    v4 = sub_100025F80();

    if (v4)
    {
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        return;
      }
    }

    sub_1000056EC(&qword_1000DB2B8, &qword_1000926E0);
    State.wrappedValue.setter();
    v6 = *(v2 + 160);
    sub_1000264E0();

    static Animation.linear(duration:)();
    Animation.delay(_:)();

    __chkstk_darwin(v7);
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_10002E1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000056EC(&qword_1000DBD08, &qword_1000937D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v46[0] = *(a1 + 32);
  sub_1000056EC(&qword_1000DB2B8, &qword_1000926E0);
  State.wrappedValue.getter();
  v9 = *v37;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v10 = static Alignment.center.getter();
  v12 = v11;
  static UnitPoint.center.getter();
  v14 = v13;
  v16 = v15;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = Image.init(systemName:)();
  static Font.Weight.bold.getter();
  v18 = type metadata accessor for Font.Design();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = static Font.system(size:weight:design:)();
  sub_10000A628(v8, &qword_1000DBD08, &qword_1000937D0);
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  *&v37[0] = 0;
  *(v37 + 1) = v9;
  v37[1] = v34;
  v38 = v35;
  *&v39 = v36;
  *(&v39 + 1) = a2;
  LOWORD(v40) = 256;
  *(&v40 + 2) = v32;
  WORD3(v40) = v33;
  *(&v40 + 1) = v10;
  *&v41 = v12;
  *(&v41 + 1) = 0xBFF921FB54442D18;
  *&v42 = v14;
  *(&v42 + 1) = v16;
  v44 = v30;
  v45 = v31;
  v43 = v29;
  v22 = v34;
  *a3 = v37[0];
  *(a3 + 16) = v22;
  v23 = v38;
  v24 = v39;
  v25 = v41;
  *(a3 + 64) = v40;
  *(a3 + 80) = v25;
  *(a3 + 32) = v23;
  *(a3 + 48) = v24;
  v26 = v43;
  *(a3 + 96) = v42;
  *(a3 + 112) = v26;
  v27 = v45;
  *(a3 + 128) = v44;
  *(a3 + 144) = v27;
  *(a3 + 160) = v17;
  *(a3 + 168) = KeyPath;
  *(a3 + 176) = v19;
  *(a3 + 184) = v21;
  *(a3 + 192) = a2;

  sub_10001A510(v37, v46, &qword_1000DBD10, &qword_100093838);
  *&v46[0] = 0;
  *(v46 + 1) = v9;
  v46[1] = v34;
  v46[2] = v35;
  v47 = v36;
  v48 = a2;
  v49 = 256;
  v50 = v32;
  v51 = v33;
  v52 = v10;
  v53 = v12;
  v54 = 0xBFF921FB54442D18;
  v55 = v14;
  v56 = v16;
  v58 = v30;
  v59 = v31;
  v57 = v29;
  return sub_10000A628(v46, &qword_1000DBD10, &qword_100093838);
}

uint64_t sub_10002E4CC@<X0>(uint64_t *a2@<X8>)
{
  v4 = v2[1];
  *v13 = *v2;
  *&v13[16] = v4;
  v14 = v2[2];
  *a2 = static Alignment.center.getter();
  a2[1] = v5;
  v6 = sub_1000056EC(&qword_1000DBCC0, &qword_100093740);
  sub_10002D8B4(v13, a2 + *(v6 + 44));
  v7 = v13[24];
  v15 = *&v13[8];
  v16 = v14;
  v8 = swift_allocObject();
  v9 = *&v13[16];
  v8[1] = *v13;
  v8[2] = v9;
  v8[3] = v14;
  v10 = a2 + *(sub_1000056EC(&qword_1000DBCC8, &unk_100093748) + 36);
  *v10 = v7;
  *(v10 + 1) = sub_10002E610;
  *(v10 + 2) = v8;
  sub_1000224E4(&v15, v12);
  return sub_10001A510(&v16, v12, &qword_1000DB2B8, &qword_1000926E0);
}

uint64_t sub_10002E5D0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002E680(uint64_t a1)
{
  v2 = type metadata accessor for CAImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002E6E4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002E710@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10002E798()
{
  result = qword_1000DBD18;
  if (!qword_1000DBD18)
  {
    sub_100005818(&qword_1000DBCC8, &unk_100093748);
    sub_10000EE58(&qword_1000DBD20, &qword_1000DBD28, &qword_100093840, &protocol conformance descriptor for ZStack<A>);
    sub_10000EE58(&qword_1000DBD30, &qword_1000DBD38, &qword_100093848, &protocol conformance descriptor for _ValueActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBD18);
  }

  return result;
}

uint64_t static CAMediaTimingFunctionName.allCases.getter()
{
  sub_1000056EC(&qword_1000DBD40, qword_100093860);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100093850;
  *(v0 + 32) = kCAMediaTimingFunctionDefault;
  *(v0 + 40) = kCAMediaTimingFunctionEaseIn;
  *(v0 + 48) = kCAMediaTimingFunctionEaseInEaseOut;
  *(v0 + 56) = kCAMediaTimingFunctionEaseOut;
  *(v0 + 64) = kCAMediaTimingFunctionLinear;
  v1 = kCAMediaTimingFunctionDefault;
  v2 = kCAMediaTimingFunctionEaseIn;
  v3 = kCAMediaTimingFunctionEaseInEaseOut;
  v4 = kCAMediaTimingFunctionEaseOut;
  v5 = kCAMediaTimingFunctionLinear;
  return v0;
}

unint64_t sub_10002E9E8()
{
  result = qword_1000D9940;
  if (!qword_1000D9940)
  {
    type metadata accessor for CAMediaTimingFunctionName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9940);
  }

  return result;
}

id sub_10002EA40()
{
  v0 = objc_allocWithZone(type metadata accessor for VariableBlurView());

  return [v0 init];
}

uint64_t sub_10002EAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002F1FC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10002EB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002F1FC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10002EB70(uint64_t a1)
{
  sub_10002F1FC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *sub_10002EB98()
{
  v1 = OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer;
  *&v0[v1] = [objc_allocWithZone(CABackdropLayer) init];
  *&v0[OBJC_IVAR____TtC13PCViewService16VariableBlurView_blurRadius] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for VariableBlurView();
  v2 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v3 = [v2 layer];
  v4 = OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer;
  [v3 addSublayer:*&v2[OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer]];

  v5 = *&v2[v4];
  [v2 bounds];
  [v5 setFrame:?];
  sub_10002EDCC();

  return v2;
}

id sub_10002ECAC(void *a1)
{
  v3 = OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer;
  *&v1[v3] = [objc_allocWithZone(CABackdropLayer) init];
  *&v1[OBJC_IVAR____TtC13PCViewService16VariableBlurView_blurRadius] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for VariableBlurView();
  v4 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = [v6 layer];
    v8 = OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer;
    [v7 addSublayer:*&v6[OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer]];

    v9 = *&v6[v8];
    [v6 bounds];
    [v9 setFrame:?];
    sub_10002EDCC();
  }

  return v5;
}

void sub_10002EDCC()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() imageNamed:v1];

  v3 = [v2 CGImage];
  v4 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterVariableBlur];
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v6 = String._bridgeToObjectiveC()();
  [v4 setValue:isa forKey:v6];

  v7 = v3;
  v8 = String._bridgeToObjectiveC()();
  [v4 setValue:v7 forKey:v8];

  v9 = Bool._bridgeToObjectiveC()().super.super.isa;
  v10 = String._bridgeToObjectiveC()();
  [v4 setValue:v9 forKey:v10];

  v11 = *(v0 + OBJC_IVAR____TtC13PCViewService16VariableBlurView_backdropLayer);
  sub_1000056EC(&qword_1000DBD80, &qword_100093928);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000938F0;
  *(v12 + 56) = sub_10002F148();
  *(v12 + 32) = v4;
  v13 = v4;
  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v11 setFilters:v14];
}

id sub_10002F0E0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VariableBlurView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10002F148()
{
  result = qword_1000DBD88;
  if (!qword_1000DBD88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DBD88);
  }

  return result;
}

unint64_t sub_10002F1A8()
{
  result = qword_1000DBD90;
  if (!qword_1000DBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBD90);
  }

  return result;
}

unint64_t sub_10002F1FC()
{
  result = qword_1000DBD98;
  if (!qword_1000DBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBD98);
  }

  return result;
}

__n128 sub_10002F250(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10002F274(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002F294(uint64_t result, int a2, int a3)
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

  *(result + 112) = v3;
  return result;
}

uint64_t sub_10002F30C(void *a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DBDC0, &qword_100093B80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100006768(a1, a1[3]);
  sub_10002F808();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_1000056EC(&qword_1000DBDB0, &qword_100093B78);
  sub_10002F85C(&qword_1000DBDC8, &unk_100091810);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void sub_10002F4A0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F70736552726DLL && a2 == 0xEA00000000006573)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_10002F530(uint64_t a1)
{
  v2 = sub_10002F808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002F56C(uint64_t a1)
{
  v2 = sub_10002F808();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10002F5A8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10002F668(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10002F5F0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_10002C290();
      v4 = v3;
      v5 = v2;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void *sub_10002F668(void *a1)
{
  v3 = sub_1000056EC(&qword_1000DBDA0, &qword_100093B70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100006768(a1, a1[3]);
  sub_10002F808();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000529C(a1);
  }

  else
  {
    sub_1000056EC(&qword_1000DBDB0, &qword_100093B78);
    sub_10002F85C(&qword_1000DBDB8, &unk_100091838);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000529C(a1);
  }

  return v7;
}

unint64_t sub_10002F808()
{
  result = qword_1000DBDA8;
  if (!qword_1000DBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBDA8);
  }

  return result;
}

uint64_t sub_10002F85C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100005818(&qword_1000DBDB0, &qword_100093B78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002F8C0()
{
  result = qword_1000DBDD0;
  if (!qword_1000DBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBDD0);
  }

  return result;
}

unint64_t sub_10002F918()
{
  result = qword_1000DBDD8;
  if (!qword_1000DBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBDD8);
  }

  return result;
}

unint64_t sub_10002F970()
{
  result = qword_1000DBDE0;
  if (!qword_1000DBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBDE0);
  }

  return result;
}

uint64_t sub_100030064()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DBDE8);
  sub_1000047A0(v0, qword_1000DBDE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000300E4()
{
  v1 = v0;
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DBDE8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  sub_100032054(v1 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delegate);

  return v1;
}

uint64_t sub_100030234()
{
  sub_1000300E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for XPCConnectionManager(uint64_t a1)
{
  result = qword_1000DBE48;
  if (!qword_1000DBE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000302E0(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000303BC()
{
  v27 = v0;
  if (qword_1000D9768 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000047A0(v1, qword_1000DBDE8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315138;
    v7 = *(v4 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy + 16);
    *(v0 + 16) = *(v4 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy);
    *(v0 + 32) = v7;
    v8 = String.init<A>(describing:)();
    v10 = sub_1000343F8(v8, v9, &v26);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "### Interrupted, retry policy is %s", v5, 0xCu);
    sub_10000529C(v6);
  }

  v11 = *(v0 + 40);
  v12 = *(v11 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy);
  if (*(v11 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy + 16) > 1u)
  {
    v14 = *(v11 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy + 8);
    if (*(v11 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy + 16) != 2)
    {
      if (*&v12 | v14)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    v15 = *(v11 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retries);
    if ((v15 & 0x8000000000000000) == 0 && v15 >= v14)
    {
      goto LABEL_13;
    }
  }

  else if (!*(v11 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retryPolicy + 16))
  {
    v13 = *(v11 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_retries);
    if ((v13 & 0x8000000000000000) != 0 || v13 < *&v12)
    {
LABEL_19:
      sub_100030734();
      goto LABEL_22;
    }

LABEL_13:
    v16 = 2;
    goto LABEL_16;
  }

  v17 = OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delayedRetryTask;
  if (!*(v11 + OBJC_IVAR____TtC13PCViewService20XPCConnectionManager_delayedRetryTask))
  {
    *(v11 + v17) = sub_1000308A0(v12);

    goto LABEL_22;
  }

  v16 = 1;
LABEL_16:
  sub_100031F98();
  swift_allocError();
  *v18 = v16;
  swift_willThrow();
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
    _os_log_impl(&_mh_execute_header, v19, v20, "### Error handling interruption: %@", v21, 0xCu);
    sub_100031FEC(v22);
  }

  else
  {
  }

LABEL_22:
  v24 = *(v0 + 8);

  return v24();
}