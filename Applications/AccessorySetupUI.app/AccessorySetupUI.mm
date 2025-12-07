void sub_100002028()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_pickingSession] = 0;
  v1 = &v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router];
  v2 = type metadata accessor for ASUIRootViewController();
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = 0;
  v22.receiver = v0;
  v22.super_class = v2;
  v3 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0);
  v4 = objc_allocWithZone(type metadata accessor for ASUIRouter());
  v5 = v3;
  v6 = [v4 init];
  v7 = &v5[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router];
  *v7 = v6;
  *(v7 + 1) = &off_1000724E8;
  *(v7 + 2) = &off_100072558;
  swift_unknownObjectRelease();
  v8 = [objc_allocWithZone(type metadata accessor for ASUIPickingSession()) init];
  v9 = OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_pickingSession;
  v10 = *&v5[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_pickingSession];
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_pickingSession] = v8;
  v11 = v8;

  if (!v11)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v12 = *(v7 + 1);
  if (!*v7)
  {
    v12 = 0;
  }

  *&v11[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_delegate + 8] = v12;
  swift_unknownObjectWeakAssign();

  v13 = *v7;
  if (!*v7)
  {
    goto LABEL_9;
  }

  v14 = *&v5[v9];
  v15 = *(v13 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  *(v13 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession) = v14;
  swift_unknownObjectRetain();
  v16 = v14;
  swift_unknownObjectRelease();

  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v17 = qword_1000814E8;
  v18 = *v7;
  v19 = *(v7 + 1);
  v20 = *(v7 + 2);
  swift_unknownObjectRetain();

  v21 = (v17 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_router);
  *v21 = v18;
  v21[1] = v19;
  v21[2] = v20;
  swift_unknownObjectRelease();
}

void sub_10000230C()
{
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v1 = qword_1000814E8;
  v2 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType);
    if (v3 <= 1)
    {
      if (!v3)
      {
        if (*&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router])
        {
          swift_unknownObjectRetain();
          sub_100026A70(v0);
          goto LABEL_20;
        }

        goto LABEL_25;
      }

      if (*&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router])
      {
        swift_unknownObjectRetain();
        sub_100028184(v0);
LABEL_20:

        swift_unknownObjectRelease();
        return;
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v3 == 3)
    {
      if (*&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router])
      {
        swift_unknownObjectRetain();
        sub_1000282B0(v0);
        goto LABEL_20;
      }

LABEL_26:
      __break(1u);
      return;
    }

    if (v3 != 2)
    {
      return;
    }

    if (!*&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router])
    {
      goto LABEL_24;
    }

    swift_unknownObjectRetain();
    sub_1000283D8(v0);
    swift_unknownObjectRelease();
    v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
    if (v4)
    {

      [v4 pickerStartedRename];
    }
  }
}

void sub_1000024BC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];
}

id sub_100002818(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100002894(uint64_t a1)
{
  v2 = sub_100002F20(&qword_10007EE08, type metadata accessor for ASError, &unk_10005C26C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002900(uint64_t a1)
{
  v2 = sub_100002F20(&qword_10007EE08, type metadata accessor for ASError, &unk_10005C26C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002970(uint64_t a1)
{
  v2 = sub_100002F20(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000029FC(uint64_t a1)
{
  v2 = sub_100002F20(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100002A68(uint64_t a1)
{
  v2 = sub_100002F20(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002AD4(void *a1, uint64_t a2)
{
  v4 = sub_100002F20(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100002B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002F20(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100002C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100002C64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002F20(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

id sub_100002CF8(void *a1, void *a2)
{
  v4 = type metadata accessor for ASUIHostingWindow();
  v10.receiver = objc_allocWithZone(v4);
  v10.super_class = v4;
  v5 = objc_msgSendSuper2(&v10, "initWithWindowScene:", a1);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setOpaque:0];
  [v7 makeKeyAndVisible];
  [v7 setClipsToBounds:1];

  return v7;
}

uint64_t sub_100002DF0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E5C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002E6C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002E7C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000030E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_10000317C()
{
  result = qword_10007EE30;
  if (!qword_10007EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EE30);
  }

  return result;
}

uint64_t *sub_10000328C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000032F0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003354()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_100081490);
  sub_1000032F0(v0, qword_100081490);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100003400(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_10000328C(v5, a2);
  sub_1000032F0(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100003478()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_10007EF70);
  v1 = sub_1000032F0(v0, qword_10007EF70);
  if (qword_10007EBD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_100081460);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100003540()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v4);
  v9 = &v12[-v8];
  if (*(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle) != 1)
  {
    return 0;
  }

  if (qword_10007EC50 != -1)
  {
    result = swift_once();
  }

  v10 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v10)
  {
    if (*(v10 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType) != 1 && *(v10 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp) == 1)
    {
      if (*(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices) >> 62)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }
    }

    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v6, v9, v2);
    static Locale.current.getter();
    v11 = String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v9, v2);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100003864()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v90[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v90[-v8];
  if (*(&v0->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle) != 1)
  {
    return;
  }

  if (qword_10007EC50 != -1)
  {
    v57 = v7;
    swift_once();
    v7 = v57;
  }

  v10 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v10)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (*(v10 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast) == 1)
  {
    v11 = sub_10002FAA8();
    v13 = v12;
    sub_1000545F0(v11, v12);
    v21 = v13;
LABEL_7:
    v21, v14, v15, v16, v17, v18, v19, v20;
    return;
  }

  v22 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices;
  if (*(v10 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp) != 1)
  {
    goto LABEL_12;
  }

  v23 = *(&v0->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices);
  if (v23 >> 62)
  {
    goto LABEL_41;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_42:
    v67 = v7;
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v6, v9, v67);
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v9, v67);
    return;
  }

  while (1)
  {
    v22 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices;
LABEL_12:
    v24 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;
    v25 = *(&v0->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx);
    v9 = *(&v0->super.isa + v22);
    if ((v9 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *&v9->systemMonitor[8 * v25];
      goto LABEL_16;
    }

    __break(1u);
LABEL_41:
    v65 = v7;
    v66 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v65;
    if (v66 < 1)
    {
      goto LABEL_42;
    }
  }

  v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v9, v58, v59, v60, v61, v62, v63, v64;
LABEL_16:
  v27 = *&v26[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  if (!v27)
  {
    goto LABEL_53;
  }

  v28 = [v27 appAccessInfoMap];
  if (v28)
  {
    v29 = v28;
    sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = *&v6->router[8];
    v6, v31, v32, v33, v34, v35, v36, v37;
    if (v30)
    {
      return;
    }
  }

  else
  {
  }

  v38 = *(&v0->super.isa + v24);
  v39 = *(&v0->super.isa + v22);
  if ((v39 & 0xC000000000000001) == 0)
  {
    if ((v38 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v38 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v40 = *&v39->systemMonitor[8 * v38];
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_46;
  }

  v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v39, v69, v70, v71, v72, v73, v74, v75;
  v40 = v68;
LABEL_25:
  v41 = v40[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_supportsHID];

  if (v41 == 1)
  {
    v42 = *(&v0->super.isa + v24);
    v39 = *(&v0->super.isa + v22);
    if ((v39 & 0xC000000000000001) == 0)
    {
      if ((v42 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v42 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v43 = *&v39->systemMonitor[8 * v42];
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_49;
    }

LABEL_46:

    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v39, v76, v77, v78, v79, v80, v81, v82;
LABEL_30:
    v42 = *&v43[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
    v39 = *&v43[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

    if (!v39)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      return;
    }

    v3 = *(&v0->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName);
    v6 = *&v0->router[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName];
    v44 = *(&v0->super.isa + v24);
    v0 = *(&v0->super.isa + v22);
    if ((v0 & 0xC000000000000001) == 0)
    {
      if ((v44 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v44 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v45 = *&v0->systemMonitor[8 * v44];

        v46 = v45;
        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_52;
    }

LABEL_49:

    v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v0, v83, v84, v85, v86, v87, v88, v89;
LABEL_35:
    v47 = *&v46[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
    v48 = v47;

    if (v47)
    {
      v49 = [v48 bluetoothAppearance];

      sub_10005481C(v42, v39, v3, v6, v49);
      v39, v50, v51, v52, v53, v54, v55, v56;
      v21 = v6;
      goto LABEL_7;
    }

    goto LABEL_55;
  }
}

id sub_100003E14(void *a1, uint64_t a2)
{
  v3 = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_shouldOnlyDisplayCenterPage) & 1) == 0)
  {
    v4 = a1;
    [a1 alpha];
    a1 = v4;
    v2 = vars8;
  }

  return [a1 setAlpha:v3];
}

uint64_t sub_100003E70(unint64_t a1)
{
  v3 = v1;
  if (qword_10007EBF0 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v5 = type metadata accessor for Logger();
    sub_1000032F0(v5, qword_10007EF70);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (os_log_type_enabled(v6, v7))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock = v16;
      *v15 = 136315138;
      type metadata accessor for ASUIDevice();
      v17 = Array.description.getter();
      v2 = v18;
      v19 = v3;
      v20 = sub_10003FFF4(v17, v18, &aBlock);
      v2, v21, v22, v23, v24, v25, v26, v27;
      *(v15 + 4) = v20;
      v3 = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "update with devices %s", v15, 0xCu);
      sub_100009AB0(v16);
    }

    if (!*(v3 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView))
    {
      break;
    }

    v35 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages;
    v36 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages);
    v37 = (a1 >> 62);
    if (a1 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
      v39 = *(v3 + v35);
    }

    else
    {
      v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages);
    }

    *(v3 + v35) = v38;
    if (v39 > 1 || v38 < 2)
    {
      sub_10000574C();
    }

    else
    {
      aBlock = v38;

      CurrentValueSubject.send(_:)();
    }

    v50 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices;
    v51 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices);
    *(v3 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices) = a1;
    v51, v43, v44, v45, v46, v47, v48, v49;
    if (v38 < v36)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v68 = _CocoaArrayWrapper.endIndex.getter();
LABEL_38:
      swift_beginAccess();
      v69 = *(&v2->super.isa + v3);
      if (v69 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (v68 == result)
        {
          return result;
        }
      }

      else
      {
        result = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v68 == result)
        {
          return result;
        }
      }

      _StringGuts.grow(_:)(62);
      v111._countAndFlagsBits = 0xD000000000000032;
      v111._object = 0x800000010005D9D0;
      String.append(_:)(v111);
      v37 = v3;
      if (!(*(v3 + a1) >> 62))
      {
LABEL_72:
        v112._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        object = v112._object;
        String.append(_:)(v112);
        object, v114, v115, v116, v117, v118, v119, v120;
        v121._countAndFlagsBits = 0x3A7365676170202CLL;
        v121._object = 0xE800000000000000;
        String.append(_:)(v121);
        if (*(&v135->super.isa + v37) >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        v122._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        v123 = v122._object;
        String.append(_:)(v122);
        v123, v124, v125, v126, v127, v128, v129, v130;
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

LABEL_71:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_72;
    }

    if (v37)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v52 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v52 < v36)
    {
      goto LABEL_60;
    }

    if (v36 < 0)
    {
      goto LABEL_61;
    }

    if (v37)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v53 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v53 < v38)
    {
      goto LABEL_62;
    }

    v131 = v50;
    if ((a1 & 0xC000000000000001) == 0 || v36 == v38)
    {
      swift_bridgeObjectRetain_n();
      if (!v37)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v36 >= v38)
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      type metadata accessor for ASUIDevice();
      swift_bridgeObjectRetain_n();
      v54 = v36;
      do
      {
        v55 = v54 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v54);
        v54 = v55;
      }

      while (v38 != v55);
      if (!v37)
      {
LABEL_32:
        v63 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_35;
      }
    }

    a1, v56, v57, v58, v59, v60, v61, v62;
    _CocoaArrayWrapper.subscript.getter();
    v63 = v64;
    v36 = v65;
    v38 = v66 >> 1;
LABEL_35:
    v2 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages;
    a1 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView;
    swift_unknownObjectRetain();
    swift_beginAccess();
    v135 = v2;
    if (v38 == v36)
    {
LABEL_36:
      swift_unknownObjectRelease_n();
      sub_1000048E8(*(v3 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx), 0);
      a1 = v131;
      v67 = *(v3 + v131);
      if (v67 >> 62)
      {
        goto LABEL_63;
      }

      v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_38;
    }

    v70 = v38 - v36;
    if (v38 <= v36)
    {
      v71 = v36;
    }

    else
    {
      v71 = v38;
    }

    v72 = v71 - v36;
    v37 = (v63 + 8 * v36);
    v132 = a1;
    while (v72)
    {
      v73 = *v37;
      v74 = *(&v2->super.isa + v3);
      if (v74 >> 62)
      {
        v75 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v76 = type metadata accessor for ASUIProductPageView();
      v77 = objc_allocWithZone(v76);
      *&v77[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView] = 0;
      v78 = v73;
      v79 = String._bridgeToObjectiveC()();
      v80 = [objc_opt_self() systemImageNamed:v79];

      if (!v80)
      {
        goto LABEL_68;
      }

      *&v77[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_defaultSymbolImage] = v80;
      *&v77[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_device] = v78;
      *&v77[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_index] = v75;
      v142.receiver = v77;
      v142.super_class = v76;
      v81 = v78;
      v82 = objc_msgSendSuper2(&v142, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      sub_100038154();
      v134 = v81;

      v83 = v82;
      [v83 setAlpha:0.0];
      swift_beginAccess();
      v84 = v83;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(&v135->super.isa + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&v135->super.isa + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v85 = *(v3 + v132);
      if (!v85)
      {
        goto LABEL_69;
      }

      v133 = v37;
      [v85 addArrangedSubview:v84];
      sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_10005C420;
      v87 = [v84 widthAnchor];
      v88 = [v3 widthAnchor];
      v89 = [v87 constraintEqualToAnchor:v88];

      *(v86 + 32) = v89;
      v37 = v3;
      v90 = [v84 heightAnchor];

      v91 = *(v3 + v132);
      if (!v91)
      {
        goto LABEL_70;
      }

      v92 = v3;
      v93 = objc_opt_self();
      v94 = [v91 heightAnchor];
      v95 = [v90 constraintEqualToAnchor:v94];

      *(v86 + 40) = v95;
      sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v86, v97, v98, v99, v100, v101, v102, v103;
      [v93 activateConstraints:isa];

      v104 = objc_opt_self();
      v105 = swift_allocObject();
      *(v105 + 16) = v84;
      v140 = sub_100009A18;
      v141 = v105;
      aBlock = _NSConcreteStackBlock;
      v137 = 1107296256;
      v138 = sub_1000102BC;
      v139 = &unk_100071558;
      v106 = _Block_copy(&aBlock);
      v107 = v84;

      v108 = swift_allocObject();
      *(v108 + 16) = v107;
      *(v108 + 24) = v37;
      v140 = sub_100009A70;
      v141 = v108;
      aBlock = _NSConcreteStackBlock;
      v137 = 1107296256;
      v138 = sub_10003B844;
      v139 = &unk_1000715A8;
      v109 = _Block_copy(&aBlock);
      a1 = v107;
      v110 = v37;

      [v104 animateWithDuration:v106 animations:v109 completion:0.00001];
      _Block_release(v109);
      _Block_release(v106);

      v2 = v135;
      --v72;
      v37 = v133 + 1;
      --v70;
      v3 = v92;
      if (!v70)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_57:
    swift_once();
  }

  v41 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices);
  *(v3 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices) = a1;
  v41, v28, v29, v30, v31, v32, v33, v34;
}

id sub_1000048E8(id result, char a2)
{
  v3 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages;
  if (*&v2[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages] <= result)
  {
    return result;
  }

  v5 = result;
  result = [v2 layoutIfNeeded];
  v6 = *&v2[v3];
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = [v2 effectiveUserInterfaceLayoutDirection];
  v11 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView;
  result = *&v2[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [result bounds];
  Width = CGRectGetWidth(v15);
  result = *&v2[v11];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v10 == 1)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  result = [result setContentOffset:a2 & 1 animated:{Width * v13, 0.0}];
  v14 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;
  if (*&v2[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx] != v5)
  {
    *&v2[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx] = v5;

    CurrentValueSubject.send(_:)();

    result = *&v2[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl];
    if (result)
    {
      return [result setCurrentPage:*&v2[v14]];
    }
  }

  return result;
}

void sub_100004A34()
{
  sub_100003864();
  v2 = v1;
  v4 = v3;
  v3, v3, v5, v6, v7, v8, v9, v10;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v11 = (v4 >> 56) & 0xF;
  }

  else
  {
    v11 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v12 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel);
  if (!v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = [v12 topAnchor];
  v14 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel);
  if (!v14)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v15 = [v14 bottomAnchor];
  if (v11)
  {
    if (qword_10007EC08 != -1)
    {
      swift_once();
    }

    v16 = *&qword_1000814C8;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = [v13 constraintEqualToAnchor:v15 constant:v16];

  [v17 setActive:1];
}

void sub_100004B70()
{
  v1 = *(&v0->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel);
  if (!v1)
  {
    goto LABEL_28;
  }

  v2 = v1;
  sub_100003540();
  v4 = v3;
  v5 = String._bridgeToObjectiveC()();
  v4, v6, v7, v8, v9, v10, v11, v12;
  [v2 setText:v5];

  v13 = *(&v0->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel);
  if (!v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v13;
  sub_100003864();
  v16 = v15;
  v17 = String._bridgeToObjectiveC()();
  v16, v18, v19, v20, v21, v22, v23, v24;
  [v14 setText:v17];

  sub_100004A34();
  v25 = *(&v0->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel);
  if (!v25)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  v26 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;
  v27 = *(&v0->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx);
  v28 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices;
  v29 = *(&v0->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices);
  if ((v29 & 0xC000000000000001) == 0)
  {
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v27 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *&v29->systemMonitor[8 * v27];
      v31 = v25;
      v32 = v30;
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_25;
  }

  v55 = v25;

  v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v29, v56, v57, v58, v59, v60, v61, v62;
LABEL_8:
  v33 = *&v32[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
    v33, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    v34 = 0;
  }

  [v25 setText:v34];

  v25 = *(&v0->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel);
  if (!v25)
  {
    goto LABEL_31;
  }

  v42 = *(&v0->super.isa + v26);
  v0 = *(&v0->super.isa + v28);
  if ((v0 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v63 = v25;

    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v0, v64, v65, v66, v67, v68, v69, v70;
    goto LABEL_16;
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v42 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v43 = *&v0->systemMonitor[8 * v42];
  v44 = v25;
  v45 = v43;
LABEL_16:
  sub_100035628();
  v47 = v46;

  if (v47)
  {
    v71 = String._bridgeToObjectiveC()();
    v47, v48, v49, v50, v51, v52, v53, v54;
  }

  else
  {
    v71 = 0;
  }

  [v25 setText:v71];
}

void sub_100004E10()
{
  sub_100003864();
  v2 = v1;
  v4 = v3;
  v3, v3, v5, v6, v7, v8, v9, v10;
  v11 = (v4 >> 56) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v11 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v12 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel;
  v13 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel];
  if (!v11)
  {
    if (v13)
    {
      v15 = [v13 superview];
      if (!v15)
      {
        goto LABEL_11;
      }

      v16 = *&v0[v12];
      if (v16)
      {
        [v16 removeFromSuperview];
LABEL_15:
        v17 = 1;
        goto LABEL_16;
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v13)
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = [v13 superview];
  if (v14)
  {

LABEL_11:
    v17 = 0;
LABEL_16:
    v35 = objc_opt_self();
    v44 = nullsub_1;
    v45 = 0;
    v40 = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_1000102BC;
    v43 = &unk_1000714B8;
    v36 = _Block_copy(&v40);
    v37 = swift_allocObject();
    *(v37 + 16) = v0;
    *(v37 + 24) = v17;
    v44 = sub_100009A0C;
    v45 = v37;
    v40 = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_10003B844;
    v43 = &unk_100071508;
    v38 = _Block_copy(&v40);
    v39 = v0;

    [v35 animateWithDuration:v36 animations:v38 completion:0.3];
    _Block_release(v38);
    _Block_release(v36);
    return;
  }

  sub_10000543C();
  v18 = *&v0[v12];
  if (!v18)
  {
    goto LABEL_20;
  }

  [v18 setAlpha:0.0];
  v19 = *&v0[v12];
  if (v19)
  {
    v20 = v19;
    sub_100003864();
    v22 = v21;
    v23 = String._bridgeToObjectiveC()();
    v22, v24, v25, v26, v27, v28, v29, v30;
    [v20 setText:v23];

    v31 = objc_opt_self();
    v32 = swift_allocObject();
    *(v32 + 16) = v0;
    v44 = sub_1000099AC;
    v45 = v32;
    v40 = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_1000102BC;
    v43 = &unk_100071490;
    v33 = _Block_copy(&v40);
    v34 = v0;

    [v31 animateWithDuration:v33 animations:0.5];
    _Block_release(v33);
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
}

void sub_10000513C(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2, char a3)
{
  v3 = *(&a2->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_titleLabel);
  if (!v3)
  {
    goto LABEL_30;
  }

  v5 = a2;
  v6 = v3;
  sub_100003540();
  v8 = v7;
  sub_100009588(0.2);
  v9 = String._bridgeToObjectiveC()();
  [v6 setText:v9];

  v8, v10, v11, v12, v13, v14, v15, v16;
  if ((a3 & 1) == 0)
  {
    v17 = *(&v5->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel);
    if (!v17)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v18 = v17;
    sub_100003864();
    v20 = v19;
    sub_100009588(0.2);
    v21 = String._bridgeToObjectiveC()();
    [v18 setText:v21];

    v20, v22, v23, v24, v25, v26, v27, v28;
  }

  v29 = *(&v5->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_displayLabel);
  if (!v29)
  {
    goto LABEL_31;
  }

  v30 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;
  v31 = *(&v5->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx);
  v32 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices;
  v33 = *(&v5->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices);
  if ((v33 & 0xC000000000000001) == 0)
  {
    if ((v31 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v31 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *&v33->systemMonitor[8 * v31];
      v35 = v29;
      v36 = v34;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_27;
  }

  v60 = v29;

  v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v33, v61, v62, v63, v64, v65, v66, v67;
LABEL_10:
  v37 = *&v36[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

  sub_100009588(0.2);
  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
  }

  else
  {
    v38 = 0;
  }

  [v29 setText:v38];

  v37, v39, v40, v41, v42, v43, v44, v45;
  v33 = *(&v5->super.isa + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel);
  if (!v33)
  {
    goto LABEL_32;
  }

  v46 = *(&v5->super.isa + v30);
  v5 = *(&v5->super.isa + v32);
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_27:
    v68 = v33;

    v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v5, v69, v70, v71, v72, v73, v74, v75;
    goto LABEL_18;
  }

  if ((v46 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v46 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v47 = *&v5->systemMonitor[8 * v46];
  v48 = v33;
  v49 = v47;
LABEL_18:
  sub_100035628();
  v51 = v50;

  sub_100009588(0.2);
  if (v51)
  {
    v52 = String._bridgeToObjectiveC()();
  }

  else
  {
    v52 = 0;
  }

  v76 = v52;
  [(ASUIServerManager *)v33 setText:?];

  v51, v53, v54, v55, v56, v57, v58, v59;
}

void sub_10000543C()
{
  v1 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel;
  v2 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[v1];
  if (!v3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v3 setNumberOfLines:0];
  v4 = *&v0[v1];
  if (!v4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v4 setTextAlignment:1];
  if (!*&v0[v1])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v0 addSubview:?];
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10005C430;
  v6 = *&v0[v1];
  if (!v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = [v6 topAnchor];
  v8 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel];
  if (!v8)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = [v8 bottomAnchor];
  if (qword_10007EC08 != -1)
  {
    swift_once();
  }

  v10 = [v7 constraintEqualToAnchor:v9 constant:*&qword_1000814C8];

  *(v5 + 32) = v10;
  v11 = *&v0[v1];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = [v11 centerXAnchor];
  v13 = [v0 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 40) = v14;
  v15 = *&v0[v1];
  if (!v15)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v16 = objc_opt_self();
  v17 = [v15 widthAnchor];
  v18 = [v0 widthAnchor];
  if (qword_10007EC00 != -1)
  {
    swift_once();
  }

  v19 = [v17 constraintEqualToAnchor:v18 constant:*&qword_1000814C0 * -2.0];

  *(v5 + 48) = v19;
  sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5, v20, v21, v22, v23, v24, v25, v26;
  [v16 activateConstraints:isa];
}

void sub_10000574C()
{
  v1 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl;
  v2 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl];
  if (!v2)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages;
  v4 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages];
  v12 = v2;
  v5 = [v12 superview];
  if (v4 > 1)
  {
    if (!v5)
    {
      sub_100005910();
      goto LABEL_9;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_10;
  }

  if (!v5)
  {
    goto LABEL_7;
  }

  [v12 removeFromSuperview];
LABEL_9:
  v6 = 1;
LABEL_10:
  v7 = *&v0[v1];
  if (v7)
  {
    [v7 setNumberOfPages:*&v0[v3]];
    if (v6)
    {
      [v12 setAlpha:0.0];
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v0;
      aBlock[4] = sub_10000996C;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000102BC;
      aBlock[3] = &unk_100071440;
      v10 = _Block_copy(aBlock);
      v11 = v0;

      [v8 animateWithDuration:v10 animations:0.333];

      _Block_release(v10);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100005910()
{
  v1 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl;
  v2 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl];
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[v1];
  if (!v3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v3 addTarget:v0 action:"pageControlChangedWithPageControl:" forControlEvents:4096];
  v4 = *&v0[v1];
  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v4 setHidesForSinglePage:1];
  v5 = *&v0[v1];
  if (!v5)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 labelColor];
  [v7 setCurrentPageIndicatorTintColor:v8];

  v9 = *&v0[v1];
  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9;
  v11 = [v6 secondaryLabelColor];
  [v10 setPageIndicatorTintColor:v11];

  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v12 setCurrentPage:*&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx]];
  v13 = *&v0[v1];
  if (!v13)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages;
  swift_beginAccess();
  v15 = *&v0[v14];
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v13 setNumberOfPages:v16];
  if (!*&v0[v1])
  {
    goto LABEL_24;
  }

  [v0 addSubview:?];
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10005C430;
  v18 = *&v0[v1];
  if (!v18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = [v18 topAnchor];
  v20 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel];
  if (!v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:2.0];

  *(v17 + 32) = v22;
  v23 = *&v0[v1];
  if (!v23)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = [v23 centerXAnchor];
  v25 = [v0 centerXAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v17 + 40) = v26;
  v27 = *&v0[v1];
  if (v27)
  {
    v28 = objc_opt_self();
    v29 = [v27 bottomAnchor];
    v30 = [v0 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v17 + 48) = v31;
    sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v17, v33, v34, v35, v36, v37, v38, v39;
    [v28 activateConstraints:isa];

    return;
  }

LABEL_28:
  __break(1u);
}

void sub_100005CD4()
{
  v1 = v0;
  v487 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle;
  p_ivars = &ASUIPresenter.ivars;
  v3 = 0x10007B000;
  v4 = 0x10007B000;
  v5 = (&ASUIPresenter + 48);
  if (v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle] == 1)
  {
    v6 = [objc_allocWithZone(PRXLabel) initWithStyle:0];
    v7 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_titleLabel;
    v8 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_titleLabel];
    *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_titleLabel] = v6;

    v9 = [objc_allocWithZone(PRXLabel) initWithStyle:0];
    v10 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel;
    v11 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel];
    *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel] = v9;
    v12 = v9;

    [v12 setAlpha:0.0];
    v494 = v10;
    v13 = *&v1[v10];
    v498 = *&v1[v7];
    v499 = v13;
    v14 = v13;
    v15 = v498;
    v16 = 32;
    do
    {
      v17 = *&v497[v16];
      if (!v17)
      {
        goto LABEL_244;
      }

      v18 = v17;
      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      v19 = v18;
      [v19 setNumberOfLines:0];
      [v19 setTextAlignment:1];

      sub_100003540();
      v21 = v20;
      v22 = String._bridgeToObjectiveC()();
      v21, v23, v24, v25, v26, v27, v28, v29;
      [v19 setText:v22];

      [v1 addSubview:v19];
      v30 = objc_opt_self();
      sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_10005C430;
      v32 = [v19 topAnchor];
      v33 = [v1 topAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      *(v31 + 32) = v34;
      v35 = [v19 centerXAnchor];
      v36 = [v1 centerXAnchor];
      v37 = [v35 constraintEqualToAnchor:v36];

      *(v31 + 40) = v37;
      v38 = [v19 widthAnchor];

      v39 = [v1 widthAnchor];
      if (qword_10007EC00 != -1)
      {
        swift_once();
      }

      v16 += 8;
      v40 = [v38 constraintEqualToAnchor:v39 constant:(*&qword_1000814C0 + 48.0) * -2.0];

      *(v31 + 48) = v40;
      v41 = sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v31, v43, v44, v45, v46, v47, v48, v49;
      [v30 activateConstraints:isa];

      p_ivars = &ASUIPresenter.ivars;
    }

    while (v16 != 48);
    sub_100009894(&qword_10007F0F0, &qword_10005C4A8);
    swift_arrayDestroy();
    v50 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
    v51 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel;
    v52 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel];
    *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel] = v50;

    v53 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
    v54 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel;
    v4 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel];
    *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel] = v53;
    v55 = v53;

    [v55 setAlpha:0.0];
    sub_100009894(&qword_10007F0F8, qword_10005C4B0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_10005C440;
    v57 = *&v1[v54];
    *(v56 + 32) = v57;
    v58 = v56;
    aBlock = v56;
    v59 = v57;
    sub_100003864();
    p_aBlock = v60;
    v63 = v62;
    v62, v62, v64, v65, v66, v67, v68, v69;
    v77 = (v63 >> 56) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v77 = p_aBlock & 0xFFFFFFFFFFFFLL;
    }

    if (v77)
    {
      v4 = *&v1[v51];
      p_aBlock = &aBlock;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (aBlock[2] >= aBlock[3] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v58 = aBlock;
    }

    v490 = *(v58 + 16);
    if (v490)
    {
      v3 = 0;
      while (1)
      {
        if (v3 >= *(v58 + 16))
        {
          goto LABEL_183;
        }

        v78 = *(v58 + 32 + 8 * v3);
        if (!v78)
        {
          goto LABEL_244;
        }

        v79 = v78;
        [v79 setTranslatesAutoresizingMaskIntoConstraints:0];
        v19 = v79;
        [v19 setNumberOfLines:0];
        [v19 setTextAlignment:1];

        sub_100003864();
        v81 = v80;
        v82 = String._bridgeToObjectiveC()();
        v81, v83, v84, v85, v86, v87, v88, v89;
        [v19 setText:v82];

        [v1 addSubview:v19];
        sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
        p_aBlock = swift_allocObject();
        *(p_aBlock + 16) = xmmword_10005C430;
        v90 = [v19 p_ivars[151]];
        v91 = *&v1[v494];
        if (!v91)
        {
          break;
        }

        v92 = v90;
        v495 = objc_opt_self();
        v93 = [v91 bottomAnchor];
        if (qword_10007EC08 != -1)
        {
          swift_once();
        }

        v4 = &ASUIPresenter.ivars;
        v94 = [v92 constraintEqualToAnchor:v93 constant:*&qword_1000814C8];

        *(p_aBlock + 32) = v94;
        v95 = [v19 centerXAnchor];
        v96 = [v1 centerXAnchor];
        v97 = [v95 constraintEqualToAnchor:v96];

        *(p_aBlock + 40) = v97;
        v98 = [v19 widthAnchor];

        v99 = [v1 widthAnchor];
        if (qword_10007EC00 != -1)
        {
          swift_once();
        }

        ++v3;
        v100 = [v98 constraintEqualToAnchor:v99 constant:*&qword_1000814C0 * -2.0];

        *(p_aBlock + 48) = v100;
        v101 = Array._bridgeToObjectiveC()().super.isa;
        p_aBlock, v102, v103, v104, v105, v106, v107, v108;
        [v495 activateConstraints:v101];

        p_ivars = (&ASUIPresenter + 48);
        if (v490 == v3)
        {
          goto LABEL_23;
        }
      }

LABEL_196:
      __break(1u);
      goto LABEL_197;
    }

LABEL_23:
    v58, v70, v71, v72, v73, v74, v75, v76;
    sub_100004A34();
    v3 = &ASUIPresenter.ivars;
    v4 = &ASUIPresenter.ivars;
    v5 = &ASUIPresenter.ivars;
  }

  v109 = [objc_allocWithZone(UIScrollView) init];
  v19 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView;
  v110 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView] = v109;
  v111 = v109;

  [v111 setScrollEnabled:1];
  v112 = *&v1[v19];
  if (!v112)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  [v112 setTranslatesAutoresizingMaskIntoConstraints:0];
  v113 = *&v1[v19];
  if (!v113)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  [v113 setDelegate:v1];
  v114 = *&v1[v19];
  if (!v114)
  {
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  [v114 setDecelerationRate:UIScrollViewDecelerationRateFast];
  v115 = *&v1[v19];
  if (!v115)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  [v115 setClipsToBounds:0];
  v116 = *&v1[v19];
  if (!v116)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  [v116 setShowsHorizontalScrollIndicator:0];
  v117 = *&v1[v19];
  if (!v117)
  {
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  [v117 _setInterpageSpacing:{0.0, 0.0}];
  v118 = *&v1[v19];
  if (!v118)
  {
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  [v118 _setTouchInsets:{-60.0, 0.0, -60.0, 0.0}];
  if (!*&v1[v19])
  {
    goto LABEL_204;
  }

  [v1 addSubview:?];
  v119 = *&v1[v19];
  if (v1[v487])
  {
    if (!v119)
    {
LABEL_229:
      __break(1u);
      goto LABEL_230;
    }

    p_aBlock = [v119 p_ivars[151]];
    v120 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel];
    if (!v120)
    {
      goto LABEL_231;
    }

    v121 = [v120 v5[162]];
  }

  else
  {
    if (!v119)
    {
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
      goto LABEL_242;
    }

    p_aBlock = [v119 p_ivars[151]];
    v121 = [v1 p_ivars[151]];
  }

  v41 = v121;
  if (qword_10007EC10 != -1)
  {
    goto LABEL_187;
  }

  while (1)
  {
    v122 = [p_aBlock *(v4 + 1216)];

    [v122 setActive:1];
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_10005C430;
    v124 = *&v1[v19];
    if (!v124)
    {
      goto LABEL_205;
    }

    v125 = [v124 heightAnchor];
    v126 = [v125 constraintEqualToConstant:120.0];

    *(v123 + 32) = v126;
    v127 = *&v1[v19];
    if (!v127)
    {
      goto LABEL_206;
    }

    v128 = [v127 leadingAnchor];
    v129 = [v1 leadingAnchor];
    v130 = [v128 *(v3 + 1256)];

    *(v123 + 40) = v130;
    v480 = v19;
    v131 = *&v1[v19];
    if (!v131)
    {
      goto LABEL_207;
    }

    v132 = objc_opt_self();
    v133 = [v131 trailingAnchor];
    v134 = [v1 trailingAnchor];
    v135 = [v133 *(v3 + 1256)];

    *(v123 + 48) = v135;
    sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
    v136 = Array._bridgeToObjectiveC()().super.isa;
    v123, v137, v138, v139, v140, v141, v142, v143;
    v496 = v132;
    [v132 activateConstraints:v136];

    v144 = [objc_allocWithZone(UIStackView) init];
    v145 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView;
    v146 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView];
    *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView] = v144;
    v147 = v144;

    [v147 setTranslatesAutoresizingMaskIntoConstraints:0];
    v148 = *&v1[v145];
    if (!v148)
    {
      goto LABEL_208;
    }

    [v148 setSpacing:0.0];
    v149 = *&v1[v145];
    if (!v149)
    {
      goto LABEL_209;
    }

    [v149 setAxis:0];
    v150 = *&v1[v480];
    v3 = &ASUIPresenter.ivars;
    v19 = &ASUIPresenter.ivars;
    if (!v150)
    {
      goto LABEL_210;
    }

    if (!*&v1[v145])
    {
      goto LABEL_211;
    }

    [v150 addSubview:?];
    v151 = swift_allocObject();
    *(v151 + 16) = xmmword_10005C450;
    v152 = *&v1[v145];
    if (!v152)
    {
      goto LABEL_212;
    }

    v153 = [v152 topAnchor];
    v154 = *&v1[v480];
    if (!v154)
    {
      goto LABEL_213;
    }

    v155 = [v154 topAnchor];
    v156 = [v153 constraintEqualToAnchor:v155];

    *(v151 + 32) = v156;
    v157 = *&v1[v145];
    if (!v157)
    {
      goto LABEL_214;
    }

    v158 = [v157 leadingAnchor];
    v159 = *&v1[v480];
    if (!v159)
    {
      goto LABEL_215;
    }

    v160 = [v159 leadingAnchor];
    v161 = [v158 constraintEqualToAnchor:v160];

    *(v151 + 40) = v161;
    v162 = *&v1[v145];
    if (!v162)
    {
      goto LABEL_216;
    }

    v163 = [v162 trailingAnchor];
    v164 = *&v1[v480];
    if (!v164)
    {
      goto LABEL_217;
    }

    v165 = [v164 trailingAnchor];
    v166 = [v163 constraintEqualToAnchor:v165];

    *(v151 + 48) = v166;
    v167 = *&v1[v145];
    if (!v167)
    {
      goto LABEL_218;
    }

    v168 = [v167 bottomAnchor];
    v169 = *&v1[v480];
    if (!v169)
    {
      goto LABEL_219;
    }

    v170 = [v169 bottomAnchor];
    v171 = [v168 constraintEqualToAnchor:v170];

    *(v151 + 56) = v171;
    v172 = *&v1[v145];
    if (!v172)
    {
      goto LABEL_220;
    }

    v173 = [v172 heightAnchor];
    v174 = *&v1[v480];
    if (!v174)
    {
      goto LABEL_221;
    }

    v4 = [v174 heightAnchor];
    v175 = [v173 constraintEqualToAnchor:v4];

    *(v151 + 64) = v175;
    v176 = Array._bridgeToObjectiveC()().super.isa;
    v151, v177, v178, v179, v180, v181, v182, v183;
    [v496 activateConstraints:v176];

    v488 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices;
    v184 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
    v185 = v184 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v186 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages];
    v468 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages;
    *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages] = v185;
    if (v186 > 1 || v185 < 2)
    {
      sub_10000574C();
    }

    else
    {
      aBlock = v185;

      CurrentValueSubject.send(_:)();
    }

    p_aBlock = *&v1[v488];
    v484 = v145;
    v41 = p_aBlock >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
    v187 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages;

    swift_beginAccess();
    v483 = v187;
    if (!v41)
    {
      break;
    }

    v195 = 0;
    v474 = p_aBlock & 0xFFFFFFFFFFFFFF8;
    v478 = p_aBlock & 0xC000000000000001;
    v469 = v41;
    v470 = p_aBlock;
    while (1)
    {
      if (v478)
      {
        v196 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v195 >= *(v474 + 16))
        {
          goto LABEL_176;
        }

        v196 = *(p_aBlock + 8 * v195 + 32);
      }

      v197 = v196;
      if (__OFADD__(v195, 1))
      {
        break;
      }

      v198 = *&v1[v187];
      v491 = (v195 + 1);
      if (v198 >> 62)
      {
        v199 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v199 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v200 = type metadata accessor for ASUIProductPageView();
      v201 = objc_allocWithZone(v200);
      *&v201[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView] = 0;
      v202 = v197;
      v203 = String._bridgeToObjectiveC()();
      v204 = [objc_opt_self() systemImageNamed:v203];

      if (!v204)
      {
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
        goto LABEL_196;
      }

      *&v201[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_defaultSymbolImage] = v204;
      *&v201[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_device] = v202;
      *&v201[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_index] = v199;
      v507.receiver = v201;
      v507.super_class = v200;
      v41 = v202;
      v205 = objc_msgSendSuper2(&v507, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      sub_100038154();

      v206 = v205;
      [v206 setAlpha:0.0];
      swift_beginAccess();
      v207 = v206;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v187] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v187] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v208 = *&v1[v484];
      if (!v208)
      {
        goto LABEL_191;
      }

      [v208 addArrangedSubview:v207];
      v209 = swift_allocObject();
      *(v209 + 16) = xmmword_10005C420;
      v210 = [v207 widthAnchor];
      v211 = [v1 widthAnchor];
      v212 = [v210 constraintEqualToAnchor:v211];

      *(v209 + 32) = v212;
      v213 = [v207 heightAnchor];

      v214 = *&v1[v484];
      if (!v214)
      {
        goto LABEL_192;
      }

      v215 = [v214 heightAnchor];
      v216 = [v213 constraintEqualToAnchor:v215];

      *(v209 + 40) = v216;
      v217 = Array._bridgeToObjectiveC()().super.isa;
      v209, v218, v219, v220, v221, v222, v223, v224;
      [v496 activateConstraints:v217];

      v225 = objc_opt_self();
      v226 = swift_allocObject();
      *(v226 + 16) = v207;
      v505 = sub_100009BD4;
      v506 = v226;
      v3 = &aBlock;
      aBlock = _NSConcreteStackBlock;
      v502 = 1107296256;
      v503 = sub_1000102BC;
      v504 = &unk_100071350;
      v4 = _Block_copy(&aBlock);
      v227 = v207;

      v228 = swift_allocObject();
      *(v228 + 16) = v227;
      *(v228 + 24) = v1;
      v505 = sub_10000992C;
      v506 = v228;
      aBlock = _NSConcreteStackBlock;
      v502 = 1107296256;
      v503 = sub_10003B844;
      v504 = &unk_1000713A0;
      v19 = _Block_copy(&aBlock);
      v229 = v227;
      v230 = v1;

      [v225 animateWithDuration:v4 animations:v19 completion:0.00001];
      _Block_release(v19);
      _Block_release(v4);

      ++v195;
      p_aBlock = v470;
      v187 = v483;
      if (v491 == v469)
      {
        goto LABEL_81;
      }
    }

LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    swift_once();
  }

LABEL_81:
  p_aBlock, v188, v189, v190, v191, v192, v193, v194;
  v485 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;
  sub_1000048E8(*&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx], 0);
  v472 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName;
  v19 = &ASUIPresenter.ivars;
  if (v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName] == 1)
  {
    v231 = [objc_allocWithZone(PRXLabel) init];
    v232 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_displayLabel;
    v233 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_displayLabel];
    *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_displayLabel] = v231;
    v234 = v231;

    v235 = objc_opt_self();
    v236 = [v235 systemFontOfSize:15.0];
    [v234 setFont:v236];

    v237 = *&v1[v232];
    if (!v237)
    {
      goto LABEL_232;
    }

    p_aBlock = objc_opt_self();
    v238 = v237;
    v492 = p_aBlock;
    v239 = [p_aBlock labelColor];
    [v238 setTextColor:v239];

    v240 = [objc_allocWithZone(PRXLabel) init];
    v241 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel;
    v242 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel];
    *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel] = v240;
    v4 = v240;

    v243 = [v235 systemFontOfSize:15.0];
    [v4 setFont:v243];

    v244 = *&v1[v241];
    if (!v244)
    {
      goto LABEL_233;
    }

    [v244 setAlpha:0.0];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10005C420;
    v246 = *&v1[v232];
    if (!v246)
    {
      goto LABEL_234;
    }

    v3 = inited;
    v479 = inited + 32;
    *(inited + 32) = v246;
    v41 = *&v1[v241];
    if (!v41)
    {
      goto LABEL_235;
    }

    *(inited + 40) = v41;
    v475 = inited & 0xFFFFFFFFFFFFFF8;
    v247 = v246;
    v248 = v41;
    v249 = 0;
    v250 = 0;
    do
    {
      v251 = v249;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v252 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v250 >= *(v475 + 16))
        {
          goto LABEL_184;
        }

        v252 = *(v479 + 8 * v250);
      }

      v253 = v252;
      [v253 setTranslatesAutoresizingMaskIntoConstraints:0];
      v19 = v253;
      [v19 setTextAlignment:1];
      [v19 setNumberOfLines:1];
      v254 = [v492 labelColor];
      [v19 setTextColor:v254];

      v4 = *&v1[v485];
      v41 = *&v1[v488];
      if ((v41 & 0xC000000000000001) != 0)
      {

        v255 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v41, v283, v284, v285, v286, v287, v288, v289;
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_177;
        }

        if (v4 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_178;
        }

        v255 = *(v41 + 8 * v4 + 32);
      }

      v256 = *&v255[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

      if (v256)
      {
        v257 = String._bridgeToObjectiveC()();
        v256, v258, v259, v260, v261, v262, v263, v264;
      }

      else
      {
        v257 = 0;
      }

      [v19 setText:v257];

      [v1 addSubview:v19];
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_10005C430;
      v265 = [v19 centerXAnchor];
      v266 = [v1 centerXAnchor];
      v267 = [v265 constraintEqualToAnchor:v266];

      *(v41 + 32) = v267;
      v268 = [v19 topAnchor];
      v269 = *&v1[v480];
      if (!v269)
      {
        goto LABEL_193;
      }

      v270 = [v269 bottomAnchor];
      p_aBlock = &ASUIPresenter.ivars;
      v271 = [v268 constraintEqualToAnchor:v270 constant:12.0];

      *(v41 + 40) = v271;
      v272 = [v19 widthAnchor];

      v273 = [v1 widthAnchor];
      if (qword_10007EC00 != -1)
      {
        swift_once();
      }

      v274 = [v272 constraintEqualToAnchor:v273 constant:*&qword_1000814C0 * -2.0];

      *(v41 + 48) = v274;
      v275 = Array._bridgeToObjectiveC()().super.isa;
      v41, v276, v277, v278, v279, v280, v281, v282;
      [v496 activateConstraints:v275];

      v249 = 1;
      v250 = 1;
      v4 = &_s10Foundation10NSNotFoundSivg_ptr;
    }

    while ((v251 & 1) == 0);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  v290 = [objc_allocWithZone(PRXLabel) init];
  v291 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel;
  v292 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel] = v290;
  v293 = v290;

  v294 = objc_opt_self();
  v295 = [v294 systemFontOfSize:15.0];
  [v293 setFont:v295];

  v296 = *&v1[v291];
  if (!v296)
  {
    goto LABEL_222;
  }

  v297 = objc_opt_self();
  v298 = v296;
  v493 = v297;
  v299 = [v297 secondaryLabelColor];
  [v298 setTextColor:v299];

  v300 = [objc_allocWithZone(PRXLabel) init];
  v3 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel;
  v4 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel] = v300;
  v41 = v300;

  v301 = [v294 systemFontOfSize:15.0];
  [v41 setFont:v301];

  v302 = *&v1[v3];
  if (!v302)
  {
    goto LABEL_223;
  }

  [v302 setAlpha:0.0];
  v471 = v3;
  if (v1[v472] == 1)
  {
    v303 = swift_initStackObject();
    *(v303 + 16) = xmmword_10005C420;
    v304 = *&v1[v291];
    if (!v304)
    {
      goto LABEL_236;
    }

    v476 = v303 + 32;
    *(v303 + 32) = v304;
    p_aBlock = *&v1[v3];
    if (!p_aBlock)
    {
      goto LABEL_238;
    }

    *(v303 + 40) = p_aBlock;
    v305 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel;
    v306 = v303 & 0xC000000000000001;
    v481 = v303 & 0xFFFFFFFFFFFFFF8;
    v307 = v304;
    v308 = p_aBlock;
    v309 = 0;
    v310 = 0;
    do
    {
      v19 = v309;
      if (v306)
      {
        v311 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v310 >= *(v481 + 16))
        {
          goto LABEL_185;
        }

        v311 = *(v476 + 8 * v310);
      }

      v312 = v311;
      [v312 setTranslatesAutoresizingMaskIntoConstraints:0];
      v313 = v312;
      [v313 setTextAlignment:1];
      [v313 setNumberOfLines:1];
      p_aBlock = [v493 secondaryLabelColor];
      [v313 setTextColor:p_aBlock];

      v41 = *&v1[v485];
      v4 = *&v1[v488];
      if ((v4 & 0xC000000000000001) != 0)
      {

        v314 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4, v341, v342, v343, v344, v345, v346, v347;
      }

      else
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_180;
        }

        if (v41 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_181;
        }

        v314 = *(v4 + 8 * v41 + 32);
      }

      sub_100035628();
      v316 = v315;

      if (v316)
      {
        v317 = String._bridgeToObjectiveC()();
        v316, v318, v319, v320, v321, v322, v323, v324;
      }

      else
      {
        v317 = 0;
      }

      [v313 setText:v317];

      [v1 addSubview:v313];
      p_aBlock = swift_allocObject();
      *(p_aBlock + 16) = xmmword_10005C430;
      v325 = [v313 centerXAnchor];
      v326 = [v1 centerXAnchor];
      v327 = [v325 constraintEqualToAnchor:v326];

      *(p_aBlock + 32) = v327;
      v328 = [v313 topAnchor];
      v329 = *&v1[v305];
      if (!v329)
      {
        goto LABEL_195;
      }

      v330 = [v329 bottomAnchor];
      v3 = &ASUIPresenter.ivars;
      v331 = [v328 constraintEqualToAnchor:v330 constant:2.0];

      *(p_aBlock + 40) = v331;
      v332 = [v313 widthAnchor];

      v4 = [v1 widthAnchor];
      if (qword_10007EC00 != -1)
      {
        swift_once();
      }

      v333 = [v332 constraintEqualToAnchor:v4 constant:*&qword_1000814C0 * -2.0];

      *(p_aBlock + 48) = v333;
      v41 = Array._bridgeToObjectiveC()().super.isa;
      p_aBlock, v334, v335, v336, v337, v338, v339, v340;
      [v496 activateConstraints:v41];

      v309 = 1;
      v310 = 1;
    }

    while ((v19 & 1) == 0);
  }

  else
  {
    v348 = swift_initStackObject();
    *(v348 + 16) = xmmword_10005C420;
    v349 = *&v1[v291];
    if (!v349)
    {
      goto LABEL_237;
    }

    v477 = v348 + 32;
    *(v348 + 32) = v349;
    p_aBlock = *&v1[v3];
    if (!p_aBlock)
    {
      goto LABEL_239;
    }

    *(v348 + 40) = p_aBlock;
    v350 = v348 & 0xC000000000000001;
    v473 = v348 & 0xFFFFFFFFFFFFFF8;
    v351 = v349;
    v352 = p_aBlock;
    v353 = 0;
    v354 = 0;
    do
    {
      v19 = v353;
      if (v350)
      {
        v355 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v354 >= *(v473 + 16))
        {
          goto LABEL_186;
        }

        v355 = *(v477 + 8 * v354);
      }

      v356 = v355;
      [v356 setTranslatesAutoresizingMaskIntoConstraints:0];
      v357 = v356;
      [v357 setTextAlignment:1];
      [v357 setNumberOfLines:1];
      p_aBlock = [v493 secondaryLabelColor];
      [v357 setTextColor:p_aBlock];

      v41 = *&v1[v485];
      v4 = *&v1[v488];
      if ((v4 & 0xC000000000000001) != 0)
      {

        v358 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4, v385, v386, v387, v388, v389, v390, v391;
      }

      else
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_179;
        }

        if (v41 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_182;
        }

        v358 = *(v4 + 8 * v41 + 32);
      }

      sub_100035628();
      v360 = v359;

      if (v360)
      {
        v361 = String._bridgeToObjectiveC()();
        v360, v362, v363, v364, v365, v366, v367, v368;
      }

      else
      {
        v361 = 0;
      }

      [v357 setText:v361];

      [v1 addSubview:v357];
      p_aBlock = swift_allocObject();
      *(p_aBlock + 16) = xmmword_10005C430;
      v369 = [v357 centerXAnchor];
      v370 = [v1 centerXAnchor];
      v371 = [v369 constraintEqualToAnchor:v370];

      *(p_aBlock + 32) = v371;
      v372 = [v357 topAnchor];
      v373 = *&v1[v480];
      if (!v373)
      {
        goto LABEL_194;
      }

      v374 = [v373 bottomAnchor];
      v3 = &ASUIPresenter.ivars;
      v375 = [v372 constraintEqualToAnchor:v374 constant:12.0];

      *(p_aBlock + 40) = v375;
      v376 = [v357 widthAnchor];

      v4 = [v1 widthAnchor];
      if (qword_10007EC00 != -1)
      {
        swift_once();
      }

      v377 = [v376 constraintEqualToAnchor:v4 constant:*&qword_1000814C0 * -2.0];

      *(p_aBlock + 48) = v377;
      v41 = Array._bridgeToObjectiveC()().super.isa;
      p_aBlock, v378, v379, v380, v381, v382, v383, v384;
      [v496 activateConstraints:v41];

      v353 = 1;
      v354 = 1;
    }

    while ((v19 & 1) == 0);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v392 = [objc_allocWithZone(UIPageControl) init];
  v393 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl;
  v394 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl] = v392;

  v395 = [objc_allocWithZone(UIPageControl) init];
  v396 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControl;
  v397 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControl];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControl] = v395;
  v398 = v395;

  [v398 setAlpha:0.0];
  v399 = *&v1[v396];
  v3 = v483;
  if (!v399)
  {
    goto LABEL_224;
  }

  v400 = [v399 heightAnchor];
  v41 = [v400 constraintEqualToConstant:0.0];

  v401 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControlHeightConstraint;
  v402 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControlHeightConstraint];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControlHeightConstraint] = v41;

  sub_100009894(&qword_10007F0E8, &qword_10005C4A0);
  v403 = swift_allocObject();
  v4 = *&v1[v396];
  *(v403 + 16) = xmmword_10005C440;
  *(v403 + 32) = v4;
  v500 = v403;
  v482 = v401;
  if (*&v1[v468] < 2)
  {
    p_aBlock = v403;
    v406 = v4;
    swift_beginAccess();
    v405 = 1;
    goto LABEL_154;
  }

  v41 = *&v1[v393];
  v404 = v4;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(v500 + 16) >= *(v500 + 24) >> 1)
  {
    v4 = *(v500 + 16);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  p_aBlock = v500;
  v405 = *(v500 + 16);
  swift_beginAccess();
  if (v405)
  {
LABEL_154:
    v486 = v396;
    v489 = v393;
    v407 = 0;
    v19 = &ASUIPresenter.ivars;
    while (v407 < *(p_aBlock + 16))
    {
      v408 = *(p_aBlock + 8 * v407 + 32);
      if (!v408)
      {
        goto LABEL_244;
      }

      v41 = v408;
      [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v41 addTarget:v1 action:"pageControlChangedWithPageControl:" forControlEvents:4096];
      [v41 setHidesForSinglePage:1];
      v3 = v493;
      v409 = [v493 labelColor];
      [v41 setCurrentPageIndicatorTintColor:v409];

      v4 = [v493 secondaryLabelColor];
      [v41 setPageIndicatorTintColor:v4];

      [v41 setCurrentPage:0];
      v410 = *&v1[v483];
      if (v410 >> 62)
      {
        v411 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v411 = *((v410 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v407;
      [v41 setNumberOfPages:v411];
      [v1 addSubview:v41];

      if (v405 == v407)
      {
        v393 = v489;
        v396 = v486;
        goto LABEL_162;
      }
    }

    __break(1u);
    goto LABEL_175;
  }

LABEL_162:
  v412 = swift_allocObject();
  *(v412 + 16) = xmmword_10005C430;
  v413 = *&v1[v396];
  if (!v413)
  {
    goto LABEL_225;
  }

  v414 = [v413 topAnchor];
  v415 = *&v1[v471];
  if (!v415)
  {
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  v416 = [v415 bottomAnchor];
  v417 = [v414 constraintEqualToAnchor:v416 constant:2.0];

  *(v412 + 32) = v417;
  v418 = *&v1[v396];
  if (!v418)
  {
    goto LABEL_227;
  }

  v419 = [v418 centerXAnchor];
  v420 = [v1 centerXAnchor];
  v421 = [v419 constraintEqualToAnchor:v420];

  *(v412 + 40) = v421;
  v422 = *&v1[v396];
  if (!v422)
  {
LABEL_228:
    __break(1u);
    goto LABEL_229;
  }

  v423 = [v422 bottomAnchor];
  v424 = [v1 bottomAnchor];
  v425 = [v423 constraintEqualToAnchor:v424];

  *(v412 + 48) = v425;
  v426 = Array._bridgeToObjectiveC()().super.isa;
  v412, v427, v428, v429, v430, v431, v432, v433;
  [v496 activateConstraints:v426];

  if (*&v1[v468] <= 1)
  {
    v434 = *&v1[v482];
    if (!v434)
    {
      goto LABEL_240;
    }

    v435 = v434;
    p_aBlock, v436, v437, v438, v439, v440, v441, v442;
    [(objc_class *)v435 setActive:1];
LABEL_173:

    return;
  }

  v443 = swift_allocObject();
  *(v443 + 16) = xmmword_10005C420;
  v444 = *&v1[v393];
  if (!v444)
  {
    goto LABEL_241;
  }

  v445 = [v444 topAnchor];
  v446 = *&v1[v471];
  if (v446)
  {
    v447 = [v446 bottomAnchor];
    v448 = [v445 constraintEqualToAnchor:v447 constant:2.0];

    *(v443 + 32) = v448;
    v449 = *&v1[v393];
    if (!v449)
    {
      goto LABEL_243;
    }

    v450 = v449;
    p_aBlock, v451, v452, v453, v454, v455, v456, v457;
    v458 = [v450 centerXAnchor];

    v459 = [v1 centerXAnchor];
    v460 = [v458 constraintEqualToAnchor:v459];

    *(v443 + 40) = v460;
    v435 = Array._bridgeToObjectiveC()().super.isa;
    v443, v461, v462, v463, v464, v465, v466, v467;
    [v496 activateConstraints:v435];
    goto LABEL_173;
  }

LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100008740(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v15[4] = a5;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000102BC;
  v15[3] = a6;
  v12 = _Block_copy(v15);
  v13 = a2;
  v14 = a3;

  [v10 animateWithDuration:0 delay:v12 usingSpringWithDamping:0 initialSpringVelocity:1.0 options:0.0 animations:0.8 completion:0.0];
  _Block_release(v12);
}

void sub_1000088B8(char *a1)
{
  v2 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages;
  swift_beginAccess();
  v3 = *&a1[v2];
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *&v3->systemMonitor[8 * i];
      }

      v7 = v6;
      sub_1000386E4(a1);
    }

    v3, v8, v9, v10, v11, v12, v13, v14;
  }
}

id sub_100008AD4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdxPublisher;
  sub_100009894(&qword_10007F108, &unk_10005D0E0);
  swift_allocObject();
  *&v4[v9] = CurrentValueSubject.init(_:)();
  v10 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentNumberOfPagesPublisher;
  v14 = -1;
  swift_allocObject();
  *&v4[v10] = CurrentValueSubject.init(_:)();
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices] = _swiftEmptyArrayStorage;
  v11 = &v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle] = 1;
  v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName] = 1;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_displayLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControl] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControlHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx] = 0;
  v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_didSelect] = 0;
  v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_shouldOnlyDisplayCenterPage] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for ASUIProductCarouselView();
  return objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100008D04(void *a1)
{
  v3 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdxPublisher;
  sub_100009894(&qword_10007F108, &unk_10005D0E0);
  swift_allocObject();
  *&v1[v3] = CurrentValueSubject.init(_:)();
  v4 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentNumberOfPagesPublisher;
  v9 = -1;
  swift_allocObject();
  *&v1[v4] = CurrentValueSubject.init(_:)();
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices] = _swiftEmptyArrayStorage;
  v5 = &v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle] = 1;
  v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName] = 1;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_displayLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControl] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControlHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx] = 0;
  v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_didSelect] = 0;
  v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_shouldOnlyDisplayCenterPage] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ASUIProductCarouselView();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_100008F2C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ASUIProductCarouselView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_100009134(double a1)
{
  v2 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView;
  result = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView);
  if (!result)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = [result hitTest:0 withEvent:?];
  if (v5)
  {
    v6 = v5;
    result = *(v1 + v2);
    if (result)
    {
      v7 = [result arrangedSubviews];
      v8 = sub_100009B48(0, &qword_10007F0D0, UIView_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = sub_100009478(v6, v9);
      v12 = v11;
      v9, v11, v13, v14, v15, v16, v17, v18;
      if ((v12 & 1) == 0)
      {
LABEL_20:

        return v10;
      }

      result = *(v1 + v2);
      if (result)
      {
        [result frame];
        v19 = CGRectGetWidth(v34) / a1;
        if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v19 > -9.22337204e18)
        {
          if (v19 < 9.22337204e18)
          {
            v10 = v19 - 1;
            if (!__OFSUB__(v19, 1))
            {
              result = *(v1 + v2);
              if (result)
              {
                v20 = [result arrangedSubviews];
                v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                if (!(v8 >> 62))
                {
                  v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  goto LABEL_13;
                }

LABEL_29:
                v28 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
                v8, v21, v22, v23, v24, v25, v26, v27;
                if (v10 < v28 && (v10 & 0x8000000000000000) == 0)
                {
                  if (qword_10007EBF0 != -1)
                  {
                    swift_once();
                  }

                  v29 = type metadata accessor for Logger();
                  sub_1000032F0(v29, qword_10007EF70);
                  v30 = Logger.logObject.getter();
                  v31 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v30, v31))
                  {
                    v32 = swift_slowAlloc();
                    *v32 = 134217984;
                    *(v32 + 4) = v10;
                    _os_log_impl(&_mh_execute_header, v30, v31, "Manually calculating current index between page updates and scrolling to %ld", v32, 0xCu);
                  }

                  goto LABEL_20;
                }

                goto LABEL_22;
              }

LABEL_33:
              __break(1u);
              return result;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        __break(1u);
        goto LABEL_27;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_22:

  return NSNotFound.getter();
}

unint64_t sub_100009478(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_100009B48(0, &qword_10007F0D0, UIView_ptr);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_100009588(double a1)
{
  v3 = [objc_allocWithZone(CATransition) init];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v5 setTimingFunction:v6];

  [v5 setType:kCATransitionFade];
  [v5 setDuration:a1];

  v7 = [v1 layer];
  [v7 addAnimation:v5 forKey:kCATransitionFade];
}

void sub_1000096B8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *&v3->systemMonitor[8 * i];
      }

      v7 = v6;
      sub_1000386E4(v1);
    }

    v3, v8, v9, v10, v11, v12, v13, v14;
  }
}

id sub_1000097A4(double *a1, double a2)
{
  v3 = v2;
  [v3 bounds];
  Width = CGRectGetWidth(v14);
  v7 = *a1 / Width;
  v8 = floor(v7);
  v9 = ceil(v7);
  if (a2 <= 0.0)
  {
    v9 = v8;
  }

  v10 = Width * v9;
  *a1 = v10;
  v11 = sub_100009134(v10);
  result = NSNotFound.getter();
  if (v11 != result)
  {
    v13 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;
    if (*&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx] != v11)
    {
      *&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx] = v11;

      CurrentValueSubject.send(_:)();

      result = *&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl];
      if (result)
      {
        return [result setCurrentPage:*&v3[v13]];
      }
    }
  }

  return result;
}

uint64_t sub_100009894(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000098DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009914(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10000996C()
{
  v1 = *(v0 + 16);
  result = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl);
  if (result)
  {
    v3 = 0.0;
    if (*(v1 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages) > 1)
    {
      v3 = 1.0;
    }

    return [result setAlpha:v3];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000099AC()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  __break(1u);
  return result;
}

uint64_t sub_1000099D4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100009A30()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100009AB0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

id sub_100009B00()
{
  v1 = *(v0 + 16);
  sub_1000386E4(*(v0 + 24));

  return [v1 setAlpha:1.0];
}

uint64_t sub_100009B48(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100009C0C(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();
  v51 = sub_10000A590;
  v52 = v4;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_10001BE14;
  v50 = &unk_100071700;
  v6 = _Block_copy(&aBlock);
  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v46 = v8;

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v10 = String._bridgeToObjectiveC()();
  v51 = sub_10000A5C8;
  v52 = v9;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_10001BE14;
  v50 = &unk_100071728;
  v11 = _Block_copy(&aBlock);
  v12 = [v7 actionWithTitle:v10 style:1 handler:v11];

  _Block_release(v11);

  v13 = a1[19];
  if (!v13)
  {
    __break(1u);
    goto LABEL_6;
  }

  v14 = a1[21];
  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v15 = a1[23];
  if (v15)
  {
    v16 = a1[20];
    v17 = a1[22];
    v18 = objc_allocWithZone(type metadata accessor for ASUIAppHeaderView());

    v19 = v13;

    v20 = sub_100025430(v13, v16, v14, v17, v15);
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v2 contentView];
    [v21 addSubview:v20];

    v22 = [v2 contentView];
    v23 = [v22 mainContentGuide];

    v24 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10005C4D0;
    v26 = [v20 topAnchor];
    v27 = [v23 topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    *(v25 + 32) = v28;
    v29 = [v20 leadingAnchor];
    v30 = [v23 leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v25 + 40) = v31;
    v32 = [v20 trailingAnchor];
    v33 = [v23 trailingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    *(v25 + 48) = v34;
    v35 = [v20 bottomAnchor];

    v36 = [v23 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    *(v25 + 56) = v37;
    sub_10000A5E8();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v25, v39, v40, v41, v42, v43, v44, v45;
    [v24 activateConstraints:isa];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10000A164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10000A1C0(v3);
  }
}

char *sub_10000A1C0(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC16AccessorySetupUI27ASUILearnMoreViewController_routingContext;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v7[2] = *(v3 + 32);
  v7[3] = v4;
  v8 = *(v3 + 64);
  v5 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v5;
  *v3 = 257;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  sub_10000A634(v7);
  if (*(v3 + 16) != 1)
  {
    *v3 = a1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000415BC(v1, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10000A398(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_10000A464@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI27ASUILearnMoreViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10000A4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009894(&unk_10007F570, &unk_10005C510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A558(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10000A5B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000A5E8()
{
  result = qword_10007F0E0;
  if (!qword_10007F0E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007F0E0);
  }

  return result;
}

uint64_t sub_10000A634(uint64_t a1)
{
  v2 = sub_100009894(&unk_10007F570, &unk_10005C510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000A6C4(uint64_t a1, const char *a2, _TtC16AccessorySetupUI17ASUIServerManager *a3, void *a4, _TtC16AccessorySetupUI17ASUIServerManager *a5, void *a6, _TtC16AccessorySetupUI17ASUIServerManager *a7, _TtC16AccessorySetupUI17ASUIServerManager *a8)
{
  if (a3 != 1)
  {
    a3, a2, a3, a4, a5, a6, a7, a8;
    a5, v12, v13, v14, v15, v16, v17, v18;
    a7, v19, v20, v21, v22, v23, v24, v25;

    a8, v26, v27, v28, v29, v30, v31, v32;
  }
}

uint64_t sub_10000A734()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_10007F150);
  v1 = sub_1000032F0(v0, qword_10007F150);
  if (qword_10007EBD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_100081478);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10000A7FC()
{
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType);
  if (v2 > 3)
  {
    return 0;
  }

  v3 = *(v0 + *off_100072128[v2]);
  v4 = v3;
  return v3;
}

id sub_10000A8A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID);
  v4 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (!v6)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = sub_10001F768(v3, v1);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  swift_endAccess();
  v10 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
  result = swift_beginAccess();
  v6 = *(v2 + v10);
  if (!v6)
  {
    goto LABEL_25;
  }

  if (*(v6 + 16))
  {
    v8 = sub_10001F768(v3, v1);
    if (v11)
    {
LABEL_8:
      v12 = *(*(v6 + 56) + 8 * v8);
      swift_endAccess();
      v13 = v12;
      v1, v14, v15, v16, v17, v18, v19, v20;
      return v13;
    }
  }

  swift_endAccess();
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v28 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = *&v28[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory];
  if (!v29)
  {
    goto LABEL_19;
  }

  v30 = v28;
  v31 = v29;
  v32 = [v31 identifier];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (v3 == v33 && v1 == v35)
  {
    v35, v36, v37, v38, v39, v40, v41, v42;
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v35, v45, v46, v47, v48, v49, v50, v51;
    if ((v44 & 1) == 0)
    {

LABEL_19:
      v1, v21, v22, v23, v24, v25, v26, v27;
      return 0;
    }
  }

  v52 = [objc_allocWithZone(DADevice) init];
  v53 = String._bridgeToObjectiveC()();
  [v52 setIdentifier:v53];

  v54 = [v31 displayName];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = (v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID);
  v57 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8);
  if (v57)
  {
    v58 = result;
    v59 = v55;
    v60 = *v56;

    v1, v61, v62, v63, v64, v65, v66, v67;

    v68 = objc_allocWithZone(type metadata accessor for ASUIDevice());
    v69 = sub_100036A64(v58, v59, v52, v60, v57);

    return v69;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_10000AB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10001F768(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_10000ABDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest);
  if (!v1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest);
    if (v5)
    {
      v6 = v5;
      v7 = [v6 pairingInfo];
      v8 = [v7 passkey];

      if (v8)
      {
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v4;
      }
    }

    return 0;
  }

  v2 = v1;
  sub_10000ACB0();
  v4 = v3;

  return v4;
}

void sub_10000ACB0()
{
  v1 = [v0 pairingInfo];
  v2 = [v1 passkey];

  if (v2)
  {

    sub_100009894(&qword_10007F290, &qword_10005C598);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10005C440;
    v4 = [v0 pairingInfo];
    v5 = [v4 passkey];

    if (v5)
    {
      v6 = [v5 unsignedIntegerValue];

      *(v3 + 56) = &type metadata for UInt;
      *(v3 + 64) = &protocol witness table for UInt;
      *(v3 + 32) = v6;
      String.init(format:_:)();
    }

    else
    {
      __break(1u);
    }
  }
}

_BYTE *sub_10000ADD4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100009894(&qword_10007F2D0, &qword_10005C5D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v89 - v5;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer] = 0;
  v7 = &v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  *v7 = 0;
  v7[1] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems] = 0;
  v8 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
  *&v2[v8] = sub_100042B10(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_session] = 0;
  v9 = &OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel;
  v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_aliasScanningCoordinator] = 0;
  v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTookTooLong] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_preFilterDiscoveryResultsMap] = 0;
  v10 = &v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID];
  *v10 = 0;
  v10[1] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationItems] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeMigrationItem] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migratedDevices] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_cancellable] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveredItemsCancellable] = 0;
  v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingDiscoveryStart] = 0;
  v93.receiver = v2;
  v93.super_class = ObjectType;
  p_ivars = &ASUIPresenter.ivars;
  v19 = objc_msgSendSuper2(&v93, "init");
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v20 = qword_1000814E8;
  v21 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
  v22 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v22)
  {
    v23 = (v22 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID);
    v24 = v23[1];
    if (v24)
    {
      v25 = *v23;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v26 = &v19[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  v27 = *&v19[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8];
  *v26 = v25;
  v26[1] = v24;
  v90 = v26;
  v27, v12, v13, v14, v15, v16, v17, v18;
  v91 = v21;
  v28 = *(v20 + v21);
  if (v28)
  {
    aBlock[0] = *(v28 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItemsPublisher);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100009894(&qword_10007F2E0, &qword_10005C620);
    v9 = &OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel;
    sub_100022AF4(&qword_10007F2E8, &qword_10007F2E0, &qword_10005C620, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    p_ivars = (&ASUIPresenter + 48);
    v29 = Publisher<>.sink(receiveValue:)();
  }

  else
  {
    v29 = 0;
  }

  *&v19[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_cancellable] = v29;

  v30 = sub_100042B24(_swiftEmptyArrayStorage);
  v31 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  swift_beginAccess();
  v32 = *&v19[v31];
  *&v19[v31] = v30;
  v32, v33, v34, v35, v36, v37, v38, v39;
  v40 = sub_100042B24(_swiftEmptyArrayStorage);
  v41 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
  swift_beginAccess();
  v42 = *&v19[v41];
  *&v19[v41] = v40;
  v42, v43, v44, v45, v46, v47, v48, v49;
  v50 = sub_100042B38(_swiftEmptyArrayStorage);
  v51 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
  swift_beginAccess();
  v52 = *&v19[v51];
  *&v19[v51] = v50;
  v52, v53, v54, v55, v56, v57, v58, v59;
  v60 = sub_100042C3C(_swiftEmptyArrayStorage);
  v61 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_preFilterDiscoveryResultsMap;
  swift_beginAccess();
  v62 = *&v19[v61];
  *&v19[v61] = v60;
  v62, v63, v64, v65, v66, v67, v68, v69;
  v19[v9[54]] = 0;
  type metadata accessor for ASUIAliasScanningCoordinator();
  swift_allocObject();
  *&v19[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_aliasScanningCoordinator] = sub_100039700();

  v70 = type metadata accessor for TaskPriority();
  (*(*(v70 - 8) + 56))(v6, 1, 1, v70);
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = swift_allocObject();
  v72[2] = 0;
  v72[3] = 0;
  v72[4] = v71;
  sub_10000C78C(0, 0, v6, &unk_10005C630, v72);

  sub_10000CD80();
  v73 = *(v20 + v91);
  if (v73 && *(v73 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory))
  {
    v74 = [objc_allocWithZone(DASession) p_ivars[129]];
    v75 = v90[1];
    if (v75)
    {

      v76 = String._bridgeToObjectiveC()();
      v75, v77, v78, v79, v80, v81, v82, v83;
    }

    else
    {
      v76 = 0;
    }

    [v74 setBundleID:v76];

    v84 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100022AE4;
    aBlock[5] = v84;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100022FBC;
    aBlock[3] = &unk_100072038;
    v85 = _Block_copy(aBlock);

    [v74 setEventHandler:v85];
    _Block_release(v85);
    v86 = *&v19[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_session];
    *&v19[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_session] = v74;
    v87 = v74;

    [v87 activate];
  }

  return v19;
}

void sub_10000B4D8(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems);
      *(Strong + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems) = v2;

      v5, v6, v7, v8, v9, v10, v11, v12;
      v13 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v2 >> 62)
      {
LABEL_28:
        v14 = _CocoaArrayWrapper.endIndex.getter();
        if (v14)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_5:
          v15 = 0;
          v16 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
          v46 = v13;
          v47 = v2 & 0xC000000000000001;
          v44 = v2;
          v45 = v14;
          do
          {
            if (v47)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v15 >= *(v13 + 16))
              {
                goto LABEL_25;
              }

              v19 = *(v2 + 8 * v15 + 32);
            }

            v20 = v19;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            v48 = v15 + 1;
            v21 = [v19 identifier];
            v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v23;

            swift_beginAccess();
            v25 = v20;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v27 = *(v4 + v16);
            v2 = v4;
            v13 = v16;
            *(v4 + v16) = 0x8000000000000000;
            v4 = sub_10001F768(v22, v24);
            v35 = v27[2];
            v36 = (v28 & 1) == 0;
            v37 = v35 + v36;
            if (__OFADD__(v35, v36))
            {
              goto LABEL_26;
            }

            v38 = v28;
            if (v27[3] >= v37)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                if (v28)
                {
                  goto LABEL_6;
                }
              }

              else
              {
                sub_1000205A0(&unk_100080240, &unk_10005C670);
                if (v38)
                {
                  goto LABEL_6;
                }
              }
            }

            else
            {
              sub_10001FCCC(v37, isUniquelyReferenced_nonNull_native, &unk_100080240, &unk_10005C670);
              v39 = sub_10001F768(v22, v24);
              if ((v38 & 1) != (v28 & 1))
              {
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return;
              }

              v4 = v39;
              if (v38)
              {
LABEL_6:
                v24, v28, v29, v30, v31, v32, v33, v34;
                v17 = v27[7];
                v18 = *(v17 + 8 * v4);
                *(v17 + 8 * v4) = v25;

                goto LABEL_7;
              }
            }

            v27[(v4 >> 6) + 8] |= 1 << v4;
            v40 = (v27[6] + 16 * v4);
            *v40 = v22;
            v40[1] = v24;
            *(v27[7] + 8 * v4) = v25;
            v41 = v27[2];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_27;
            }

            v27[2] = v43;
LABEL_7:
            v4 = v2;
            v16 = v13;
            *(v2 + v13) = v27;
            swift_endAccess();

            ++v15;
            v2 = v44;
            v13 = v46;
          }

          while (v48 != v45);
        }
      }

      if (*(v4 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingDiscoveryStart) == 1)
      {
        sub_10000B8EC();
      }
    }
  }
}

void sub_10000B7D4(uint64_t a1, uint64_t a2, _TtC16AccessorySetupUI17ASUIServerManager *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v3;
    sub_100020294(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_10007F2B0, &unk_10005C5B0);
    a3, v9, v10, v11, v12, v13, v14, v15;
    *v3 = v34;
  }

  else
  {
    v16 = sub_10001F768(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v35 = *v4;
      if (!v25)
      {
        sub_1000205A0(&qword_10007F2B0, &unk_10005C5B0);
        v33 = v35;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32;

      sub_10001FF68(v16, v33);
      *v4 = v33;
    }
  }
}

void sub_10000B8EC()
{
  v2 = sub_100009894(&qword_10007F2C0, &qword_10005C5C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v129 - v3;
  if (!*(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery))
  {
    v130 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
    v132 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems;
    v5 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems);
    if (v5)
    {
      v134 = v5 & 0xFFFFFFFFFFFFFF8;
      v135 = v1;
      if (v5 >> 62)
      {
        goto LABEL_70;
      }

      for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); !i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        i = _swiftEmptyArrayStorage;
LABEL_24:
        v138 = _swiftEmptyArrayStorage;
        if (i >> 62)
        {
          v30 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v30 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v134 = i;
        if (v30)
        {
          if (v30 < 1)
          {
            goto LABEL_74;
          }

          v31 = 0;
          v32 = i & 0xC000000000000001;
          v133 = _swiftEmptyArrayStorage;
          do
          {
            if (v32)
            {
              v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v35 = *(i + 8 * v31 + 32);
            }

            v36 = v35;
            v37 = [v35 bluetoothIdentifier];
            if (v37)
            {
              v33 = v37;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v34 = type metadata accessor for UUID();
              (*(*(v34 - 8) + 56))(v4, 0, 1, v34);
              sub_1000227E8(v4, &qword_10007F2C0, &qword_10005C5C0);
            }

            else
            {
              v38 = type metadata accessor for UUID();
              (*(*(v38 - 8) + 56))(v4, 1, 1, v38);
              sub_1000227E8(v4, &qword_10007F2C0, &qword_10005C5C0);
              v39 = [v36 networkHotspotSSID];
              if (v39)
              {
                v40 = v39;
              }

              else
              {
                v41 = v36;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v133 = v138;
                i = v134;
              }
            }

            ++v31;
          }

          while (v30 != v31);
        }

        else
        {
          v133 = _swiftEmptyArrayStorage;
        }

        v4 = *(&v135->super.isa + v132);
        if (!v4)
        {
          goto LABEL_122;
        }

        v137[0] = _swiftEmptyArrayStorage;
        v5 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          v42 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v42 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v0 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeMigrationItem;

        if (!v42)
        {
          v131 = _swiftEmptyArrayStorage;
LABEL_61:
          v4, v43, v44, v45, v46, v47, v48, v49;
          v1 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems;
          v5 = v135;
          swift_beginAccess();
          v55 = *(v5 + v1);
          *(v5 + v1) = v131;
          v55, v56, v57, v58, v59, v60, v61, v62;
          v0 = *&v0[v5];
          i = v134;
          if (!v0)
          {
            goto LABEL_76;
          }

          v63 = *(v5 + v132);
          if (v63)
          {
            if (!(v63 >> 62))
            {
              if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
              {
                goto LABEL_65;
              }

LABEL_76:
              v66 = *(v5 + v1);
              if (!v66)
              {
                goto LABEL_112;
              }

              if (!(v66 >> 62))
              {
                v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v67 >= 1)
                {
                  goto LABEL_79;
                }

LABEL_112:
                v65 = v133;
                sub_100010610(v133);
LABEL_113:
                v113 = *(v5 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery);
                if (v113)
                {
                  goto LABEL_118;
                }

                if (*(v5 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration) != 1)
                {
                  goto LABEL_117;
                }

                v113 = *(v5 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery);
                if (v113)
                {
                  goto LABEL_118;
                }

                __break(1u);
LABEL_117:
                v113 = *(v5 + v130);
                if (v113)
                {
LABEL_118:
                  v114 = v113;
                  v65, v115, v116, v117, v118, v119, v120, v121;
                  i, v122, v123, v124, v125, v126, v127, v128;
                  [v114 activate];

                  if (*(v5 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_cancellable))
                  {

                    AnyCancellable.cancel()();
                  }

                  return;
                }

LABEL_125:
                __break(1u);
                return;
              }

              v67 = _CocoaArrayWrapper.endIndex.getter();
              if (v67 < 1)
              {
                goto LABEL_112;
              }

LABEL_79:
              v68 = *(v5 + v132);
              if (v68)
              {
                if (v68 >> 62)
                {
                  if (_CocoaArrayWrapper.endIndex.getter() == v67)
                  {
LABEL_82:
                    v132 = v66 >> 62;
                    v136 = _swiftEmptyArrayStorage;

                    specialized ContiguousArray.reserveCapacity(_:)();
                    v69 = 0;
                    v70 = (v5 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID);
                    do
                    {
                      if (v69 >= v67)
                      {
                        __break(1u);
LABEL_101:
                        __break(1u);
LABEL_102:
                        __break(1u);
                        goto LABEL_103;
                      }

                      v71 = v69 + 1;
                      if (__OFADD__(v69, 1))
                      {
                        goto LABEL_101;
                      }

                      if ((v66 & 0xC000000000000001) != 0)
                      {
                        v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        if (v69 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_102;
                        }

                        v72 = *&v66->systemMonitor[8 * v69];
                      }

                      v73 = v72;
                      v74 = *(v70 + 1);
                      if (!v74)
                      {
                        goto LABEL_121;
                      }

                      sub_100017090();

                      v74, v75, v76, v77, v78, v79, v80, v81;
                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      ++v69;
                    }

                    while (v71 != v67);
                    v5 = v135;
                    v82 = v136;
                    sub_10001428C(v136);
                    v82, v83, v84, v85, v86, v87, v88, v89;
                    i = v134;
                    if (qword_10007EBF8 != -1)
                    {
                      swift_once();
                    }

                    v90 = type metadata accessor for Logger();
                    sub_1000032F0(v90, qword_10007F150);

                    v91 = Logger.logObject.getter();
                    v92 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v91, v92))
                    {
                      v100 = swift_slowAlloc();
                      *v100 = 134217984;
                      if (v132)
                      {
                        v101 = _CocoaArrayWrapper.endIndex.getter();
                      }

                      else
                      {
                        v101 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      }

                      v66, v93, v94, v95, v96, v97, v98, v99;
                      *(v100 + 4) = v101;
                      v66, v102, v103, v104, v105, v106, v107, v108;
                      _os_log_impl(&_mh_execute_header, v91, v92, "Only Migration displayItems so dismiss after migration complete Count : %ld", v100, 0xCu);
                    }

                    else
                    {

                      swift_bridgeObjectRelease_n();
                    }

                    *(v5 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration) = 1;
                    v65 = v133;
                    goto LABEL_113;
                  }
                }

                else if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) == v67)
                {
                  goto LABEL_82;
                }

                if (qword_10007EBF8 != -1)
                {
                  swift_once();
                }

                v109 = type metadata accessor for Logger();
                sub_1000032F0(v109, qword_10007F150);
                v110 = Logger.logObject.getter();
                v111 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v110, v111))
                {
                  v112 = swift_slowAlloc();
                  *v112 = 0;
                  _os_log_impl(&_mh_execute_header, v110, v111, "New display + Migration displayItems so start new setup first", v112, 2u);
                }

                goto LABEL_112;
              }

LABEL_124:
              __break(1u);
              goto LABEL_125;
            }

LABEL_75:
            if (_CocoaArrayWrapper.endIndex.getter() != 1)
            {
              goto LABEL_76;
            }

LABEL_65:
            v64 = v0;
            sub_100016CC4();

            v65 = v133;
            goto LABEL_113;
          }

LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        v50 = 0;
        v131 = _swiftEmptyArrayStorage;
LABEL_46:
        v1 = v50;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_68;
            }

            v51 = *(v4 + 8 * v1 + 32);
          }

          v52 = v51;
          v50 = (v1 + 1);
          if (__OFADD__(v1, 1))
          {
            break;
          }

          objc_opt_self();
          v53 = swift_dynamicCastObjCClass();
          if (v53)
          {
            v54 = v53;
            if (![(objc_class *)v53 upgradeAccessory])
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v137[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v137[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v131 = v137[0];
              if (v50 != v42)
              {
                goto LABEL_46;
              }

              goto LABEL_61;
            }

            v52 = *&v0[v135];
            *&v0[v135] = v54;
          }

          ++v1;
          if (v50 == v42)
          {
            goto LABEL_61;
          }
        }

LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        ;
      }

      v137[0] = _swiftEmptyArrayStorage;

      v1 = v137;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((i & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v7 = 0;
      v8 = v135 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID;
      while (1)
      {
        v0 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          goto LABEL_67;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v134 + 16))
          {
            goto LABEL_69;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = *(v8 + 1);
        if (!v11)
        {
          break;
        }

        sub_100017090();

        v11, v12, v13, v14, v15, v16, v17, v18;
        v1 = v137;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v7;
        if (v0 == i)
        {
          v5, v19, v20, v21, v22, v23, v24, v25;
          i = v137[0];
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingDiscoveryStart) = 1;
    if (qword_10007EBF8 != -1)
    {
LABEL_103:
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000032F0(v26, qword_10007F150);
    v135 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(&v135->super, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, &v135->super, v27, "Delaying discovery start because we're waiting for displayItems from client", v28, 2u);
    }

    p_super = &v135->super;
  }
}

uint64_t sub_10000C3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10000C3E8, 0, 0);
}

uint64_t sub_10000C3E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_aliasScanningCoordinator);
    *(v0 + 64) = v2;
    v3 = Strong;

    if (v2)
    {
      v4 = sub_10000C4D4;
      v5 = v2;
      v6 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10000C4D4()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 208);
  v3 = *(v1 + 216);
  *(v1 + 208) = sub_10000C588;
  *(v1 + 216) = 0;
  sub_100002E6C(v2, v3);
  sub_100039044();

  return _swift_task_switch(sub_10000C560, 0, 0);
}

void sub_10000C588(unint64_t result)
{
  if (result >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((result & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(result + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [objc_allocWithZone(DADeviceEvent) initWithEventType:40 device:v5];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v4;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v3 != v4);
    v1 = _swiftEmptyArrayStorage;
    if (qword_10007EC50 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  v15 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (v15)
  {
    swift_unknownObjectRetain();
    v16 = sub_10001F0C0(v1);
    v1, v17, v18, v19, v20, v21, v22, v23;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v16, v25, v26, v27, v28, v29, v30, v31;
    [v15 pickerReportedEvents:isa];

    swift_unknownObjectRelease();
  }

  else
  {
    v1, v8, v9, v10, v11, v12, v13, v14;
  }
}

uint64_t sub_10000C78C(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009894(&qword_10007F2D0, &qword_10005C5D0);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  sub_100022778(a3, v32 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000227E8(v11, &qword_10007F2D0, &qword_10005C5D0);
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

      sub_100009894(&qword_10007F300, &qword_10005C660);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v33[0] = 0;
        v33[1] = 0;
        v21 = v33;
        v33[2] = v16;
        v33[3] = v18;
      }

      v32[1] = 7;
      v32[2] = v21;
      v32[3] = v19;
      v22 = swift_task_create();

      sub_1000227E8(a3, &qword_10007F2D0, &qword_10005C5D0);
      a2, v23, v24, v25, v26, v27, v28, v29;
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

  sub_1000227E8(a3, &qword_10007F2D0, &qword_10005C5D0);
  v31 = swift_allocObject();
  *(v31 + 16) = a4;
  *(v31 + 24) = a5;
  sub_100009894(&qword_10007F300, &qword_10005C660);
  if (v18 | v16)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v16;
    v33[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000CA90(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009894(&qword_10007F2D0, &qword_10005C5D0);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  sub_100022778(a3, v32 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000227E8(v11, &qword_10007F2D0, &qword_10005C5D0);
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

      if (v18 | v16)
      {
        v33[0] = 0;
        v33[1] = 0;
        v21 = v33;
        v33[2] = v16;
        v33[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v32[1] = 7;
      v32[2] = v21;
      v32[3] = v19;
      v23 = swift_task_create();

      sub_1000227E8(a3, &qword_10007F2D0, &qword_10005C5D0);
      a2, v24, v25, v26, v27, v28, v29, v30;

      return v23;
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

  sub_1000227E8(a3, &qword_10007F2D0, &qword_10005C5D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v16;
    v33[7] = v18;
  }

  return swift_task_create();
}

double sub_10000CD80()
{
  v1 = v0;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  if (*(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100009894(&qword_10007F2F0, &qword_10005C638);
    sub_100022AF4(&qword_10007F2F8, &qword_10007F2F0, &qword_10005C638, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v2 = Publisher<>.sink(receiveValue:)();
  }

  else
  {
    v2 = 0;
  }

  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveredItemsCancellable) = v2;

  return result;
}

void sub_10000CEE4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_10007EBF8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000032F0(v5, qword_10007F150);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "session event: %@", v9, 0xCu);
      sub_1000227E8(v10, &qword_10007F278, &unk_10005CD60);
    }
  }
}

double sub_10000D080(_TtC16AccessorySetupUI17ASUIServerManager **a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (v11)
    {
      v44 = v7;
      v45 = v4;
      v15 = qword_10007EBF8;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000032F0(v16, qword_10007F150);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      v19 = os_log_type_enabled(v17, v18);
      v43 = v8;
      if (v19)
      {
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        if (v11 >> 62)
        {
          v41 = v20;
          v28 = _CocoaArrayWrapper.endIndex.getter();
          v20 = v41;
        }

        else
        {
          v28 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v20 + 4) = v28;
        v29 = v20;
        v11, v21, v22, v23, v24, v25, v26, v27;
        _os_log_impl(&_mh_execute_header, v17, v18, "App filtered display items updated in picking session: %ld items", v29, 0xCu);
      }

      else
      {

        v11, v30, v31, v32, v33, v34, v35, v36;
      }

      sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
      v37 = static OS_dispatch_queue.main.getter();
      v38 = swift_allocObject();
      *(v38 + 16) = v11;
      *(v38 + 24) = v14;
      aBlock[4] = sub_100022B9C;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000102BC;
      aBlock[3] = &unk_100072088;
      v39 = _Block_copy(aBlock);
      v40 = v14;
      static DispatchQoS.unspecified.getter();
      v46 = _swiftEmptyArrayStorage;
      sub_10001F8CC();
      sub_100009894(&unk_10007F560, &qword_10005C590);
      sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v39);

      (*(v45 + 8))(v6, v3);
      (*(v43 + 8))(v10, v44);
    }

    else
    {
    }
  }

  return result;
}

void sub_10000D4A0(unint64_t a1, char *a2)
{
  v113 = a2;
  v3 = sub_100009894(&qword_10007F2D0, &qword_10005C5D0);
  __chkstk_darwin(v3 - 8);
  v108 = &v106 - v4;
  if (a1 >> 62)
  {
LABEL_34:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_35:
    sub_10000FFE0();
    return;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_35;
  }

LABEL_3:
  v6 = 0;
  v106 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
  v107 = a1;
  v112 = a1 & 0xC000000000000001;
  v110 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_preFilterDiscoveryResultsMap;
  v111 = a1 & 0xFFFFFFFFFFFFFF8;
  v109 = v5;
  while (1)
  {
    if (v112)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v111 + 16))
      {
        goto LABEL_33;
      }

      v14 = *(a1 + 8 * v6 + 32);
    }

    v15 = v14;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v114 = v6 + 1;
    v16 = [v14 accessory];
    v17 = [v16 identifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    v21 = v113;
    v22 = v110;
    swift_beginAccess();
    v23 = *&v21[v22];
    if (!v23)
    {
      break;
    }

    if (*(v23 + 16))
    {
      v24 = sub_10001F768(v18, v20);
      v26 = v25;
      v20, v25, v27, v28, v29, v30, v31, v32;
      if (v26)
      {
        v33 = *(*(v23 + 56) + 8 * v24);
        swift_endAccess();
        v34 = v33;

        v35 = type metadata accessor for TaskPriority();
        v36 = v108;
        (*(*(v35 - 8) + 56))(v108, 1, 1, v35);
        type metadata accessor for MainActor();
        v37 = v34;
        v38 = v113;
        v39 = static MainActor.shared.getter();
        v40 = swift_allocObject();
        v40[2] = v39;
        v40[3] = &protocol witness table for MainActor;
        v40[4] = v38;
        v40[5] = v37;
        sub_10000CA90(0, 0, v36, &unk_10005C648, v40);

        v41 = [v37 discoveryConfiguration];
        if (!v41)
        {
          goto LABEL_38;
        }

        v42 = v41;
        v43 = [v41 associationIdentifier];

        if (!v43)
        {
          goto LABEL_37;
        }

        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = v113;
        v48 = v106;
        swift_beginAccess();
        v49 = *&v47[v48];
        if (*(v49 + 16))
        {
          v50 = sub_10001F768(v44, v46);
          v52 = v51;
          v46, v51, v53, v54, v55, v56, v57, v58;
          if (v52)
          {
            v59 = *(*(v49 + 56) + 8 * v50);
            swift_endAccess();
            v60 = v59;
            v61 = [v15 productImage];
            [v60 setProductImage:v61];

            v62 = v60;
            v63 = [v15 name];
            if (!v63)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;
              v63 = String._bridgeToObjectiveC()();
              v65, v66, v67, v68, v69, v70, v71, v72;
            }

            [v62 setName:{v63, v106}];

            goto LABEL_24;
          }

          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v46, v73, v74, v75, v76, v77, v78, v79;
        }

        v62 = 0;
LABEL_24:
        v80 = v15;
        v81 = [v80 name];
        v5 = v109;
        if (!v81)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v82;
          v81 = String._bridgeToObjectiveC()();
          v84 = v83;
          v5 = v109;
          v84, v85, v86, v87, v88, v89, v90, v91;
        }

        [v37 setName:{v81, v106}];

        v92 = [v37 discoveryConfiguration];
        v93 = v80;
        if (v92)
        {
          v94 = v92;
          v93 = [v80 name];

          if (!v93)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v96 = v95;
            v93 = String._bridgeToObjectiveC()();
            v97 = v96;
            v5 = v109;
            v97, v98, v99, v100, v101, v102, v103, v104;
          }

          [v94 setDisplayName:v93];
        }

        v105 = sub_10000DC1C(v37, 0);
        a1 = v107;
        goto LABEL_5;
      }

      swift_endAccess();

      v5 = v109;
    }

    else
    {
      swift_endAccess();

      v20, v7, v8, v9, v10, v11, v12, v13;
    }

LABEL_5:
    ++v6;
    if (v114 == v5)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_10000DA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10000DAC4, v7, v6);
}

uint64_t sub_10000DAC4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_aliasScanningCoordinator);
  *(v3 + 56) = v4;
  if (v4)
  {

    a1 = sub_10000DB4C;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10000DB4C()
{
  sub_100038F14(*(v0 + 24));

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_10000DBBC, v1, v2);
}

uint64_t sub_10000DBBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_10000DC1C(void *a1, int a2))()
{
  v3 = v2;
  LODWORD(v652) = a2;
  v647 = 0;
  v5 = type metadata accessor for URL();
  v649 = *(v5 - 8);
  v650 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = (&v638 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v6);
  v645 = (&v638 - v10);
  __chkstk_darwin(v9);
  v651 = (&v638 - v11);
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_1000032F0(v12, qword_10007F150);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "updateDeviceMapWith device: %@", v17, 0xCu);
    sub_1000227E8(v18, &qword_10007F278, &unk_10005CD60);
  }

  v20 = &v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  v21 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8];
  if (!v21)
  {
    goto LABEL_182;
  }

  v22 = *v20;
  objc_allocWithZone(type metadata accessor for ASUIDevice());
  v23 = v14;

  v24 = sub_100036A64(0, 0, v23, v22, v21);

  if (![v23 discoveredInExtension])
  {
    if (v20[1])
    {
      v53 = [v23 discoveryConfiguration];
      if (v53)
      {
        v54 = v53;
        v55 = [v53 associationIdentifier];

        if (v55)
        {
          v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v58 = v57;

          v59 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
          swift_beginAccess();
          v60 = *&v3[v59];
          if (*(v60 + 16))
          {
            v61 = sub_10001F768(v56, v58);
            if (v62)
            {
              v646 = v58;
              v63 = *(*(v60 + 56) + 8 * v61);
              swift_endAccess();
              v64 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
              v65 = *&v24[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
              v642 = v13;
              if (v652)
              {
                if (!v65)
                {
LABEL_208:
                  __break(1u);
                  goto LABEL_209;
                }

                v66 = v63;
                v67 = [v65 name];
                if (!v67)
                {
                  goto LABEL_102;
                }
              }

              else
              {
                if (!v65)
                {
LABEL_209:
                  __break(1u);
                  goto LABEL_210;
                }

                v284 = v63;
                v285 = [v65 appAccessInfoMap];
                if (v285)
                {
                  v286 = v285;
                  sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
                  v287 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                  if (*(v287 + 16))
                  {
                    v295 = *&v24[v64];
                    if (!v295)
                    {
LABEL_214:
                      __break(1u);
LABEL_215:
                      __break(1u);
                      goto LABEL_216;
                    }

                    v296 = v295;
                    v287, v297, v298, v299, v300, v301, v302, v303;
                    v304 = [v296 name];

                    if (!v304)
                    {
LABEL_102:
                      v305 = 0;
                      v306 = 0;
LABEL_114:
                      v389 = &v24[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
                      v390 = *&v24[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
                      *v389 = v305;
                      v389[1] = v306;
                      v390, v68, v69, v70, v71, v72, v73, v74;
                      sub_100035410(v391);
                      v393 = v392;
                      v651 = v394;
                      v395 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
                      swift_beginAccess();
                      v396 = *&v3[v395];
                      if (!v396)
                      {
LABEL_200:
                        __break(1u);
                        goto LABEL_201;
                      }

                      v397 = *(v396 + 16);
                      v648 = v63;
                      if (!v397 || (sub_10001F768(v393, v651), (v398 & 1) == 0))
                      {
                        swift_endAccess();
                        sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
                        v431 = swift_allocObject();
                        *(v431 + 16) = xmmword_10005C520;
                        *(v431 + 32) = v24;
                        swift_beginAccess();
                        if (!*&v3[v395])
                        {
LABEL_207:
                          __break(1u);
                          goto LABEL_208;
                        }

                        v432 = v24;
                        v433 = v651;

                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v654 = *&v3[v395];
                        *&v3[v395] = 0x8000000000000000;
                        sub_100020118(v431, v393, v433, isUniquelyReferenced_nonNull_native);
                        v433, v435, v436, v437, v438, v439, v440, v441;
                        *&v3[v395] = v654;
                        swift_endAccess();
                        v442 = 1;
LABEL_142:
                        v453 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
                        v454 = *&v24[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
                        if (!v454)
                        {
LABEL_201:
                          __break(1u);
                          goto LABEL_202;
                        }

                        v643 = v23;
                        v455 = [v454 identifier];
                        if (!v455)
                        {
LABEL_202:
                          __break(1u);
                          goto LABEL_203;
                        }

                        v456 = v455;
                        v457 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v459 = v458;

                        v460 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
                        swift_beginAccess();
                        if (!*&v3[v460])
                        {
LABEL_203:
                          __break(1u);
                          goto LABEL_204;
                        }

                        v129 = v24;
                        v461 = swift_isUniquelyReferenced_nonNull_native();
                        v654 = *&v3[v460];
                        *&v3[v460] = 0x8000000000000000;
                        sub_100020294(v129, v457, v459, v461, &qword_10007F2B0, &unk_10005C5B0);
                        v459, v462, v463, v464, v465, v466, v467, v468;
                        *&v3[v460] = v654;
                        swift_endAccess();
                        v469 = *&v24[v453];
                        if (!v469)
                        {
LABEL_204:
                          __break(1u);
                          goto LABEL_205;
                        }

                        v470 = [v469 identifier];
                        v23 = v643;
                        if (!v470)
                        {
LABEL_205:
                          __break(1u);
                          goto LABEL_206;
                        }

                        v471 = v470;
                        v472 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v474 = v473;

                        v475 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
                        swift_beginAccess();
                        if (!*&v3[v475])
                        {
LABEL_206:
                          __break(1u);
                          goto LABEL_207;
                        }

                        sub_10000B7D4(0, v472, v474);
                        swift_endAccess();
                        v651, v476, v477, v478, v479, v480, v481, v482;
                        v646, v483, v484, v485, v486, v487, v488, v489;
                        if (!v442)
                        {
                          v494 = v129;
                          v495 = Logger.logObject.getter();
                          v496 = static os_log_type_t.default.getter();

                          if (os_log_type_enabled(v495, v496))
                          {
                            v497 = swift_slowAlloc();
                            v498 = swift_slowAlloc();
                            *v497 = 138412290;
                            *(v497 + 4) = v494;
                            *v498 = v494;
                            v499 = v494;
                            _os_log_impl(&_mh_execute_header, v495, v496, "Already displaying device with the same visual: %@", v497, 0xCu);
                            sub_1000227E8(v498, &qword_10007F278, &unk_10005CD60);
                          }

                          v493 = v648;
                          goto LABEL_155;
                        }

                        v490 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
                        swift_beginAccess();
                        v491 = v129;
                        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                        if (*((*&v3[v490] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v3[v490] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                        {
LABEL_150:
                          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                          swift_endAccess();
                          v492 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
                          v493 = v648;
                          if (v492)
                          {
                            [v492 invalidate];
                          }

LABEL_155:
                          if ((v652 & 1) == 0)
                          {
                            v500 = [(ASUIServerManager *)v493 setupOptions];
                            *(&v129->isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_allowsRename) = v500 & 1;
                            v501 = [v23 appAccessInfoMap];
                            p_ivars = (&ASUIPresenter + 48);
                            if (v501)
                            {
                              v503 = v501;
                              sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
                              v504 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                              v505 = *(v504 + 16);
                              v504, v506, v507, v508, v509, v510, v511, v512;
                              if (v505 <= 1)
                              {
                                v513 = v129;
                                v514 = Logger.logObject.getter();
                                v515 = static os_log_type_t.default.getter();

                                if (os_log_type_enabled(v514, v515))
                                {
                                  v516 = swift_slowAlloc();
                                  v517 = swift_slowAlloc();
                                  *v516 = 138412290;
                                  *(v516 + 4) = v513;
                                  *v517 = v513;
                                  v518 = v513;
                                  _os_log_impl(&_mh_execute_header, v514, v515, "Appending bridging setup for: %@", v516, 0xCu);
                                  sub_1000227E8(v517, &qword_10007F278, &unk_10005CD60);
                                }

                                v519 = v648;
                                v520 = [(ASUIServerManager *)v648 descriptor];
                                v521 = [v520 supportedOptions];

                                v522 = (v521 >> 2) & 1;
                                v493 = v519;
                                p_ivars = &ASUIPresenter.ivars;
                                v513[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_needsBluetoothSetup] = v522;
                              }
                            }

                            v523 = [(ASUIServerManager *)v493 descriptor];
                            v524 = [v523 p_ivars[230]];

                            *(&v129->isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_supportsHID) = (v524 & 8) != 0;
                            v525 = [(ASUIServerManager *)v493 setupOptions];
                            *(&v129->isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_finishSetupInApp) = (v525 & 4) != 0;
                            v23 = v643;
                          }

                          v526 = [v23 displayImageFileURL];
                          if (v526)
                          {
                            v527 = v526;
                            static URL._unconditionallyBridgeFromObjectiveC(_:)();

                            v528 = [v23 appAccessInfoMap];
                            if (v528 && (v529 = v528, sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr), v530 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v529, v531 = *(v530 + 16), v530, v532, v533, v534, v535, v536, v537, v538, v531))
                            {
                              object = URL.path(percentEncoded:)(1)._object;
                              v540 = objc_allocWithZone(UIImage);
                              v541 = String._bridgeToObjectiveC()();
                              object, v542, v543, v544, v545, v546, v547, v548;
                              v549 = v540;
                              v493 = v648;
                              v550 = [v549 initWithContentsOfFile:v541];

                              (*(v649 + 8))(v8, v650);
                              v551 = *(&v129->isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image);
                              *(&v129->isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image) = v550;
                            }

                            else
                            {
                              (*(v649 + 8))(v8, v650);
                            }
                          }

                          v552 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image;
                          if (*(&v129->isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image))
                          {
                          }

                          else
                          {
                            v553 = [(ASUIServerManager *)v493 productImage];

                            v554 = *(&v129->isa + v552);
                            *(&v129->isa + v552) = v553;
                          }

                          return v24;
                        }

LABEL_179:
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                        goto LABEL_150;
                      }

                      swift_endAccess();
                      v399 = [v23 identifier];
                      if (!v399)
                      {
LABEL_211:
                        __break(1u);
                        goto LABEL_212;
                      }

                      v400 = v399;
                      v401 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v403 = v402;

                      v404 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
                      swift_beginAccess();
                      v412 = *&v3[v404];
                      if (!v412)
                      {
LABEL_212:
                        __break(1u);
                        goto LABEL_213;
                      }

                      if (!*(v412 + 16) || (v413 = sub_10001F768(v401, v403), (v405 & 1) == 0))
                      {
                        v403, v405, v406, v407, v408, v409, v410, v411;
                        swift_endAccess();
LABEL_133:
                        swift_beginAccess();
                        if (!*&v3[v395])
                        {
LABEL_213:
                          __break(1u);
                          goto LABEL_214;
                        }

                        v444 = sub_10001EFEC(v653, v393, v651);
                        if (*v443)
                        {
                          v445 = v443;
                          v446 = v24;
                          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                          if (*((*v445 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v445 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                          }

                          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                          (v444)(v653, 0);
                        }

                        else
                        {
                          (v444)(v653, 0);
                        }

                        swift_endAccess();
                        v447 = v24;
                        v448 = Logger.logObject.getter();
                        v449 = static os_log_type_t.default.getter();

                        if (os_log_type_enabled(v448, v449))
                        {
                          v450 = swift_slowAlloc();
                          v451 = swift_slowAlloc();
                          *v450 = 138412290;
                          *(v450 + 4) = v447;
                          *v451 = v447;
                          v452 = v447;
                          _os_log_impl(&_mh_execute_header, v448, v449, "New backing device added to an already displayed device. New device:\n %@", v450, 0xCu);
                          sub_1000227E8(v451, &qword_10007F278, &unk_10005CD60);
                        }

                        v442 = 0;
                        goto LABEL_142;
                      }

                      v645 = *(*(v412 + 56) + 8 * v413);
                      swift_endAccess();
                      v403, v414, v415, v416, v417, v418, v419, v420;
                      v421 = Logger.logObject.getter();
                      v422 = static os_log_type_t.default.getter();
                      if (os_log_type_enabled(v421, v422))
                      {
                        v423 = swift_slowAlloc();
                        *v423 = 0;
                        _os_log_impl(&_mh_execute_header, v421, v422, "Remove stale backing device to be replaced by the new one that has the same ID.", v423, 2u);
                      }

                      swift_beginAccess();
                      if (!*&v3[v395])
                      {
                        goto LABEL_215;
                      }

                      v424 = sub_10001EFEC(v653, v393, v651);
                      if (!*v425)
                      {
                        (v424)(v653, 0);
LABEL_171:
                        swift_endAccess();
                        v555 = sub_100036360();
                        v556 = *&v555->router[8];
                        v555, v557, v558, v559, v560, v561, v562, v563;
                        if (v556 < 2)
                        {
                        }

                        else
                        {
                          v564 = v24;
                          v647 = v645;
                          v565 = Logger.logObject.getter();
                          v566 = static os_log_type_t.default.getter();
                          if (os_log_type_enabled(v565, v566))
                          {
                            v644 = v564;
                            v645 = v565;
                            LODWORD(v640) = v566;
                            v567 = swift_slowAlloc();
                            v639 = swift_slowAlloc();
                            v653[0] = v639;
                            v641 = v567;
                            *v567 = 136315906;
                            v568 = *(&v647[1].isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName);
                            if (!v568)
                            {
LABEL_216:

                              v637 = v644;
                              __break(1u);
                              goto LABEL_217;
                            }

                            v569 = *(&v647->isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName);

                            v570 = v644;
                            v571 = sub_10003FFF4(v569, v568, v653);
                            v568, v572, v573, v574, v575, v576, v577, v578;
                            v579 = v641;
                            *(v641 + 4) = v571;
                            *(v579 + 6) = 2080;
                            v580 = sub_100035CC8();
                            v581 = Array.description.getter();
                            v583 = v582;
                            v580, v582, v584, v585, v586, v587, v588, v589;
                            v590 = sub_10003FFF4(v581, v583, v653);
                            v583, v591, v592, v593, v594, v595, v596, v597;
                            *(v579 + 14) = v590;
                            *(v579 + 11) = 2080;
                            v598 = sub_100035CC8();
                            v599 = Array.description.getter();
                            v601 = v600;
                            v598, v600, v602, v603, v604, v605, v606, v607;
                            v608 = sub_10003FFF4(v599, v601, v653);
                            v601, v609, v610, v611, v612, v613, v614, v615;
                            *(v579 + 3) = v608;
                            *(v579 + 16) = 2080;
                            v616 = sub_1000357FC();
                            v617 = Array.description.getter();
                            v619 = v618;
                            v616, v618, v620, v621, v622, v623, v624, v625;
                            v626 = sub_10003FFF4(v617, v619, v653);
                            v619, v627, v628, v629, v630, v631, v632, v633;
                            *(v579 + 34) = v626;
                            v634 = v645;
                            _os_log_impl(&_mh_execute_header, v645, v640, "Received updated device for multitech, device: %s, previouslyDiscoveredTech: %s, newlyDiscoveredTech: %s, pendingDiscoveryTech: %s", v579, 0x2Au);
                            swift_arrayDestroy();
                          }

                          else
                          {

                            v635 = v647;
                          }
                        }

                        goto LABEL_133;
                      }

                      v426 = v425;
                      v644 = v424;
                      v427 = v23;
                      v428 = v647;
                      sub_100021CC0(v426, v427);
                      v647 = v429;
                      if (v428)
                      {
                        goto LABEL_217;
                      }

                      if (*v426 >> 62)
                      {
                        v430 = _CocoaArrayWrapper.endIndex.getter();
                      }

                      else
                      {
                        v430 = *((*v426 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      }

                      if (v430 >= v647)
                      {
                        sub_100021BE8(v647, v430);
                        (v644)(v653, 0);
                        goto LABEL_171;
                      }

                      __break(1u);
LABEL_182:
                      __break(1u);
                      goto LABEL_183;
                    }

LABEL_113:
                    v305 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v306 = v388;

                    goto LABEL_114;
                  }

                  v287, v288, v289, v290, v291, v292, v293, v294;
                }

                v67 = [(ASUIServerManager *)v284 name];
              }

              v304 = v67;
              goto LABEL_113;
            }
          }

          swift_endAccess();
          v58, v148, v149, v150, v151, v152, v153, v154;
          v155 = v23;
          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = v24;
            v80 = swift_slowAlloc();
            *v78 = 138412290;
            *(v78 + 4) = v155;
            *v80 = v155;
            v156 = v155;
            v82 = "Bad device: could not map device back to a picker display item %@";
            goto LABEL_57;
          }

LABEL_58:

          goto LABEL_59;
        }
      }

      v75 = v23;
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v76, v77))
      {
        goto LABEL_58;
      }

      v78 = swift_slowAlloc();
      v79 = v24;
      v80 = swift_slowAlloc();
      *v78 = 138412290;
      *(v78 + 4) = v75;
      *v80 = v75;
      v81 = v75;
      v82 = "Bad device: no association ID for ASK device %@";
    }

    else
    {
      v83 = v3;
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v76, v77))
      {
        goto LABEL_58;
      }

      v78 = swift_slowAlloc();
      v79 = v24;
      v80 = swift_slowAlloc();
      *v78 = 138412290;
      *(v78 + 4) = v83;
      *v80 = v83;
      v84 = v83;
      v82 = "Bad session: no bundle ID provided for %@";
    }

LABEL_57:
    _os_log_impl(&_mh_execute_header, v76, v77, v82, v78, 0xCu);
    sub_1000227E8(v80, &qword_10007F278, &unk_10005CD60);

LABEL_59:
    return 0;
  }

  v652 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
  v25 = *&v24[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  if (!v25)
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v26 = [v25 appAccessInfoMap];
  if (v26)
  {
    v27 = v26;
    sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
    v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v28 + 16))
    {
      v36 = *&v24[v652];
      if (!v36)
      {
LABEL_192:
        __break(1u);
        goto LABEL_193;
      }

      v37 = v36;
      v28, v38, v39, v40, v41, v42, v43, v44;
      v45 = [v37 name];

      if (!v45)
      {
        goto LABEL_30;
      }

LABEL_29:
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      goto LABEL_31;
    }

    v28, v29, v30, v31, v32, v33, v34, v35;
  }

  v85 = [v23 name];
  if (v85)
  {
    v45 = v85;
    goto LABEL_29;
  }

LABEL_30:
  v86 = 0;
  v88 = 0;
LABEL_31:
  v89 = &v24[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  v90 = *&v24[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
  *v89 = v86;
  v89[1] = v88;
  v90, v46, v47, v48, v49, v50, v51, v52;
  sub_100035410(v91);
  v93 = v92;
  v8 = v94;
  v95 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
  swift_beginAccess();
  v96 = *&v3[v95];
  if (!v96)
  {
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v97 = *(v96 + 16);
  v646 = v20;
  v648 = v8;
  v643 = v23;
  if (!v97 || (sub_10001F768(v93, v8), (v98 & 1) == 0))
  {
    swift_endAccess();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_10005C520;
    *(v133 + 32) = v24;
    swift_beginAccess();
    if (!*&v3[v95])
    {
LABEL_191:
      __break(1u);
      goto LABEL_192;
    }

    v134 = v24;

    v135 = swift_isUniquelyReferenced_nonNull_native();
    v654 = *&v3[v95];
    *&v3[v95] = 0x8000000000000000;
    sub_100020118(v133, v93, v8, v135);
    v8, v136, v137, v138, v139, v140, v141, v142;
    *&v3[v95] = v654;
    swift_endAccess();
    v143 = 1;
LABEL_64:
    v163 = *&v24[v652];
    if (v163)
    {
      v644 = v24;
      v164 = [v163 identifier];
      if (v164)
      {
        v165 = v164;
        v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v168 = v167;

        v169 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
        swift_beginAccess();
        if (*&v3[v169])
        {
          v170 = v644;
          v171 = v644;
          v172 = swift_isUniquelyReferenced_nonNull_native();
          v654 = *&v3[v169];
          *&v3[v169] = 0x8000000000000000;
          sub_100020294(v171, v166, v168, v172, &qword_10007F2B0, &unk_10005C5B0);
          v168, v173, v174, v175, v176, v177, v178, v179;
          *&v3[v169] = v654;
          v24 = v170;
          swift_endAccess();
          v180 = *(v170 + v652);
          if (v180)
          {
            v181 = [v180 identifier];
            if (v181)
            {
              v182 = v181;
              v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v185 = v184;

              v186 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
              swift_beginAccess();
              v187 = v648;
              if (*&v3[v186])
              {
                sub_10000B7D4(0, v183, v185);
                swift_endAccess();
                if (v143)
                {
                  v188 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
                  swift_beginAccess();
                  v189 = v171;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*&v3[v188] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v188] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();
                  v190 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
                  v191 = v643;
                  v192 = v651;
                  if (v190)
                  {
                    [v190 invalidate];
                  }
                }

                else
                {
                  v193 = v171;
                  v194 = Logger.logObject.getter();
                  v195 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v194, v195))
                  {
                    v196 = swift_slowAlloc();
                    v197 = swift_slowAlloc();
                    *v196 = 138412290;
                    *(v196 + 4) = v193;
                    *v197 = v193;
                    v198 = v193;
                    _os_log_impl(&_mh_execute_header, v194, v195, "Already displaying device with the same visual: %@", v196, 0xCu);
                    sub_1000227E8(v197, &qword_10007F278, &unk_10005CD60);
                  }

                  v191 = v643;
                  v192 = v651;
                }

                v199 = [v191 displayImageFileURL];
                v207 = v646;
                if (v199)
                {
                  v208 = v199;
                  static URL._unconditionallyBridgeFromObjectiveC(_:)();

                  v209 = [v191 appAccessInfoMap];
                  if (v209 && (v210 = v209, sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr), v211 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v210, v212 = *(v211 + 16), v211, v213, v214, v215, v216, v217, v218, v219, v212))
                  {
                    v220 = URL.path(percentEncoded:)(1)._object;
                    v221 = objc_allocWithZone(UIImage);
                    v222 = String._bridgeToObjectiveC()();
                    v220, v223, v224, v225, v226, v227, v228, v229;
                    v230 = v221;
                    v207 = v646;
                    v231 = [v230 initWithContentsOfFile:v222];

                    (*(v649 + 8))(v192, v650);
                    v232 = *&v171[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image];
                    *&v171[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image] = v231;
                  }

                  else
                  {
                    (*(v649 + 8))(v192, v650);
                  }
                }

                v233 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image;
                if (*&v171[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image])
                {
                  v187, v200, v201, v202, v203, v204, v205, v206;
                  return v24;
                }

                v234 = [v191 displayImageName];
                if (!v234)
                {
                  v648, v235, v236, v237, v238, v239, v240, v241;
                  return v24;
                }

                v242 = *v207->router;
                if (v242)
                {
                  isa = v207->super.isa;
                  objc_allocWithZone(LSApplicationRecord);

                  v244 = isa;
                  v245 = v647;
                  v246 = sub_10001F3A8(v244, v242, 0);
                  if (!v245)
                  {
                    if (v246)
                    {
                      v247 = v246;
                      v648, v248, v249, v250, v251, v252, v253, v254;
                      v255 = [v247 URL];

                      v256 = v645;
                      static URL._unconditionallyBridgeFromObjectiveC(_:)();

                      v257 = objc_allocWithZone(NSBundle);
                      URL._bridgeToObjectiveC()(v258);
                      v260 = v259;
                      v261 = [v257 initWithURL:v259];

                      (*(v649 + 8))(v256, v650);
                      v262 = [v191 displayImageName];
                      if (v262)
                      {
                        v263 = v262;
                        static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v265 = v264;
                      }

                      else
                      {
                        v265 = 0xE300000000000000;
                      }

                      v266 = v261;
                      v267 = String._bridgeToObjectiveC()();
                      v265, v268, v269, v270, v271, v272, v273, v274;
                      v275 = [objc_opt_self() imageNamed:v267 inBundle:v266 compatibleWithTraitCollection:0];

                      v276 = v275;
                      v277 = Logger.logObject.getter();
                      v278 = static os_log_type_t.default.getter();

                      if (os_log_type_enabled(v277, v278))
                      {
                        v279 = swift_slowAlloc();
                        v280 = swift_slowAlloc();
                        *v279 = 138412290;
                        *(v279 + 4) = v276;
                        *v280 = v275;
                        v281 = v276;
                        _os_log_impl(&_mh_execute_header, v277, v278, "device.image: %@", v279, 0xCu);
                        sub_1000227E8(v280, &qword_10007F278, &unk_10005CD60);
                      }

                      v282 = *&v171[v233];
                      *&v171[v233] = v275;

                      return v644;
                    }

                    goto LABEL_198;
                  }

LABEL_197:

LABEL_198:
                  __break(1u);
LABEL_199:
                  __break(1u);
                  goto LABEL_200;
                }

LABEL_196:
                __break(1u);
                goto LABEL_197;
              }

              goto LABEL_190;
            }

LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
            goto LABEL_191;
          }

LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  swift_endAccess();
  v99 = [v23 identifier];
  if (!v99)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v100 = v99;
  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v102;

  v104 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  swift_beginAccess();
  v112 = *&v3[v104];
  if (!v112)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  if (!*(v112 + 16) || (v113 = sub_10001F768(v101, v103), (v105 & 1) == 0))
  {
    v103, v105, v106, v107, v108, v109, v110, v111;
    swift_endAccess();
LABEL_50:
    swift_beginAccess();
    if (!*&v3[v95])
    {
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }

    v145 = sub_10001EFEC(v653, v93, v8);
    if (*v144)
    {
      v146 = v144;
      v147 = v24;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v145)(v653, 0);
    }

    else
    {
      (v145)(v653, 0);
    }

    swift_endAccess();
    v157 = v24;
    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *v160 = 138412290;
      *(v160 + 4) = v157;
      *v161 = v157;
      v162 = v157;
      _os_log_impl(&_mh_execute_header, v158, v159, "New backing device added to an already displayed device. New device:\n %@", v160, 0xCu);
      sub_1000227E8(v161, &qword_10007F278, &unk_10005CD60);
    }

    v143 = 0;
    goto LABEL_64;
  }

  v644 = *(*(v112 + 56) + 8 * v113);
  swift_endAccess();
  v103, v114, v115, v116, v117, v118, v119, v120;
  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    *v123 = 0;
    _os_log_impl(&_mh_execute_header, v121, v122, "Remove stale backing device to be replaced by the new one that has the same ID.", v123, 2u);
  }

  swift_beginAccess();
  if (!*&v3[v95])
  {
    goto LABEL_199;
  }

  v124 = sub_10001EFEC(v653, v93, v8);
  if (!*v125)
  {
    (v124)(v653, 0);
LABEL_104:
    swift_endAccess();
    v307 = sub_100036360();
    v308 = *&v307->router[8];
    v307, v309, v310, v311, v312, v313, v314, v315;
    if (v308 < 2)
    {
    }

    else
    {
      v316 = v24;
      v644 = v644;
      v317 = v316;
      v318 = Logger.logObject.getter();
      v319 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v318, v319))
      {
        v641 = v317;
        LODWORD(v639) = v319;
        v640 = v318;
        v642 = v13;
        v320 = swift_slowAlloc();
        v638 = swift_slowAlloc();
        v653[0] = v638;
        *v320 = 136315906;
        v321 = *(v644 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8);
        if (!v321)
        {
LABEL_210:

          v636 = v641;
          __break(1u);
          goto LABEL_211;
        }

        v322 = *(v644 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName);

        v323 = v641;
        v324 = sub_10003FFF4(v322, v321, v653);
        v321, v325, v326, v327, v328, v329, v330, v331;
        *(v320 + 4) = v324;
        *(v320 + 12) = 2080;
        v332 = sub_100035CC8();
        v333 = Array.description.getter();
        v335 = v334;
        v332, v334, v336, v337, v338, v339, v340, v341;
        v342 = sub_10003FFF4(v333, v335, v653);
        v335, v343, v344, v345, v346, v347, v348, v349;
        *(v320 + 14) = v342;
        *(v320 + 22) = 2080;
        v350 = sub_100035CC8();
        v351 = Array.description.getter();
        v353 = v352;
        v350, v352, v354, v355, v356, v357, v358, v359;
        v360 = sub_10003FFF4(v351, v353, v653);
        v353, v361, v362, v363, v364, v365, v366, v367;
        *(v320 + 24) = v360;
        *(v320 + 32) = 2080;
        v368 = sub_1000357FC();
        v369 = Array.description.getter();
        v371 = v370;
        v368, v370, v372, v373, v374, v375, v376, v377;
        v378 = sub_10003FFF4(v369, v371, v653);
        v371, v379, v380, v381, v382, v383, v384, v385;
        *(v320 + 34) = v378;
        v386 = v640;
        _os_log_impl(&_mh_execute_header, v640, v639, "Received updated device for multitech, device: %s, previouslyDiscoveredTech: %s, newlyDiscoveredTech: %s, pendingDiscoveryTech: %s", v320, 0x2Au);
        swift_arrayDestroy();

        v8 = v648;
      }

      else
      {

        v387 = v644;
      }
    }

    goto LABEL_50;
  }

  v126 = v125;
  v641 = v124;
  v127 = v13;
  v128 = v23;
  v129 = v647;
  sub_100021CC0(v126, v128);
  v647 = v129;
  if (!v129)
  {
    v131 = v130;

    if (*v126 >> 62)
    {
      v132 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v132 = *((*v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v127;
    v8 = v648;
    if (v132 >= v131)
    {
      sub_100021BE8(v131, v132);
      (v641)(v653, 0);
      goto LABEL_104;
    }

    __break(1u);
    goto LABEL_179;
  }

LABEL_217:
  result = swift_endAccess();
  __break(1u);
  return result;
}

double sub_10000FFE0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v3 = *(v11 - 8);
  __chkstk_darwin(v11);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000221E0;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = &unk_100071B10;
  v7 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10001F8CC();
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = v10;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v12 + 8))(v2, v0);
  (*(v3 + 8))(v5, v11);

  return result;
}

double sub_1000102BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

id sub_100010300(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveredItemsCancellable])
  {

    AnyCancellable.cancel()();
  }

  v4 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery];
  if (v5)
  {
    [v5 invalidate];
  }

  v6 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery];
  if (v6)
  {
    [v6 invalidate];
  }

  v7 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
  if (v7)
  {
    [v7 invalidate];
  }

  v8 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
  if (v8)
  {
    [v8 invalidate];
  }

  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "dealloc");
}

void sub_100010610(_TtC16AccessorySetupUI17ASUIServerManager *a1)
{
  v2 = v1;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v4 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = qword_10007EBF8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000032F0(v7, qword_10007F150);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  a1, v10, v11, v12, v13, v14, v15, v16;
  if (os_log_type_enabled(v8, v9))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    sub_100009B48(0, &qword_10007F2B8, DADiscoveryConfiguration_ptr);
    v19 = Array.description.getter();
    v21 = v20;
    v22 = sub_10003FFF4(v19, v20, aBlock);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "configs: %s", v17, 0xCu);
    sub_100009AB0(v18);
  }

  v30 = objc_allocWithZone(DADiscovery);

  v32 = sub_10001F2BC(v31);
  v33 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
  v34 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
  *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery) = v32;
  v35 = v32;

  if (!v32)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v36 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8);
  if (v36)
  {

    v37 = String._bridgeToObjectiveC()();
    v36, v38, v39, v40, v41, v42, v43, v44;
  }

  else
  {
    v37 = 0;
  }

  [v35 setBundleID:v37];

  v45 = *(v2 + v33);
  if (!v45)
  {
    goto LABEL_23;
  }

  v46 = v45;
  [v46 setFlags:{objc_msgSend(v46, "flags") | 4}];

  if (v6[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp] != 1)
  {
    goto LABEL_16;
  }

  v47 = *(v2 + v33);
  if (v47)
  {
    v48 = v47;
    [v48 setFlags:{objc_msgSend(v48, "flags") | 0x40}];

LABEL_16:
    v49 = *(v2 + v33);
    if (v49)
    {
      v50 = *&v6[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_chosenDeviceOTAName + 8];
      v51 = v49;
      if (v50)
      {
        v52 = v50;
      }

      else
      {
        sub_10002FAA8();
        v52 = v53;
      }

      v54 = String._bridgeToObjectiveC()();
      v52, v55, v56, v57, v58, v59, v60, v61;
      [v49 setDeviceOTANameToBroadcast:v54];

      v62 = *(v2 + v33);
      if (v62)
      {
        v63 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_10002235C;
        aBlock[5] = v63;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100022FBC;
        aBlock[3] = &unk_100071CF0;
        v64 = _Block_copy(aBlock);
        v65 = v62;

        [v65 setEventHandler:v64];
        _Block_release(v64);

        return;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
LABEL_27:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100010AA8(void *a1)
{
  v3 = v1;
  v687 = type metadata accessor for URL();
  v688 = *(v687 - 8);
  v5 = __chkstk_darwin(v687);
  v7 = &v680 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v684 = &v680 - v9;
  v10 = __chkstk_darwin(v8);
  v685 = &v680 - v11;
  v12 = __chkstk_darwin(v10);
  v686 = &v680 - v13;
  __chkstk_darwin(v12);
  v15 = &v680 - v14;
  v690 = type metadata accessor for DispatchWorkItemFlags();
  v692 = *(v690 - 8);
  __chkstk_darwin(v690);
  v689 = &v680 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v693 = type metadata accessor for DispatchQoS();
  v17 = *(v693 - 8);
  __chkstk_darwin(v693);
  v691 = &v680 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100009894(&qword_10007F2D0, &qword_10005C5D0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v680 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v694 = &v680 - v24;
  __chkstk_darwin(v23);
  v695 = (&v680 - v25);
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_1000032F0(v26, qword_10007F150);
  v28 = a1;
  v696 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v2 = v3;
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "discovery event: %@", v31, 0xCu);
    sub_1000227E8(v32, &qword_10007F278, &unk_10005CD60);
    v3 = v2;
  }

  v34 = [(ASUIServerManager *)v28 eventType];
  if (v34 > 41)
  {
    if (v34 > 54)
    {
      if (v34 != 55)
      {
        if (v34 != 56)
        {
          if (v34 != 60)
          {
            return;
          }

          v28 = Logger.logObject.getter();
          v35 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(&v28->super, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&_mh_execute_header, &v28->super, v35, "XPC connection to dataaccessd interrupted, clearing devices", v36, 2u);
          }

          v37 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
          swift_beginAccess();
          v45 = *(v3 + v37);
          if (v45)
          {
            v28 = &_swiftEmptyDictionarySingleton;
            *(v3 + v37) = &_swiftEmptyDictionarySingleton;
            v45, v38, v39, v40, v41, v42, v43, v44;
            v46 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
            swift_beginAccess();
            v54 = *(v3 + v46);
            if (v54)
            {
              *(v3 + v46) = &_swiftEmptyDictionarySingleton;
              v54, v47, v48, v49, v50, v51, v52, v53;
              v55 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
              swift_beginAccess();
              v63 = *(v3 + v55);
              if (v63)
              {
                *(v3 + v55) = &_swiftEmptyDictionarySingleton;
                v63, v56, v57, v58, v59, v60, v61, v62;
                v64 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
                swift_beginAccess();
                v65 = *(v3 + v64);
                *(v3 + v64) = _swiftEmptyArrayStorage;
                v65, v66, v67, v68, v69, v70, v71, v72;
                v73 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer;
                v74 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
                if (!v74)
                {
                  return;
                }

                [v74 invalidate];
                v75 = *(v3 + v73);
                if (!v75)
                {
                  return;
                }

LABEL_17:
                [v75 invalidate];
                return;
              }

              goto LABEL_262;
            }

LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
            goto LABEL_264;
          }

          goto LABEL_259;
        }

        objc_opt_self();
        v271 = swift_dynamicCastObjCClass();
        if (v271)
        {
          v272 = v271;
          v695 = v28;
          v273 = Logger.logObject.getter();
          v274 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v273, v274))
          {
            v275 = swift_slowAlloc();
            *v275 = 0;
            _os_log_impl(&_mh_execute_header, v273, v274, "Calling handleWiFiAwarePairingRequest", v275, 2u);
          }

          sub_10001C66C(v272);
LABEL_111:
          v276 = &v709;
LABEL_191:
          v524 = *(v276 - 32);

          return;
        }

        aBlock = 0;
        v702 = 0xE000000000000000;
        _StringGuts.grow(_:)(95);
        v667._countAndFlagsBits = 0xD00000000000005DLL;
        v667._object = 0x800000010005E040;
        String.append(_:)(v667);
        v668 = [(ASUIServerManager *)v28 description];
        v669 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v671 = v670;

        v672._countAndFlagsBits = v669;
        v672._object = v671;
        String.append(_:)(v672);
        v671, v673, v674, v675, v676, v677, v678, v679;
LABEL_275:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_276:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      objc_opt_self();
      v247 = swift_dynamicCastObjCClass();
      if (!v247)
      {
        aBlock = 0;
        v702 = 0xE000000000000000;
        _StringGuts.grow(_:)(83);
        v654._object = 0x800000010005E0A0;
        v654._countAndFlagsBits = 0xD000000000000051;
        String.append(_:)(v654);
        v655 = [(ASUIServerManager *)v28 description];
        v656 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v658 = v657;

        v659._countAndFlagsBits = v656;
        v659._object = v658;
        String.append(_:)(v659);
        v658, v660, v661, v662, v663, v664, v665, v666;
        goto LABEL_275;
      }

      v248 = v247;
      v696 = v28;
      sub_10001C234(v248);
LABEL_190:
      v276 = &v710;
      goto LABEL_191;
    }

    if (v34 != 42)
    {
      if (v34 != 50)
      {
        return;
      }

      objc_opt_self();
      v119 = swift_dynamicCastObjCClass();
      if (!v119)
      {
        goto LABEL_272;
      }

      v120 = v119;
      v695 = v28;
      if (![v120 devicesMigrated])
      {
        goto LABEL_111;
      }

      v121 = [v120 devices];
      if (v121)
      {
        v122 = v121;
        sub_100009B48(0, &qword_100080420, DADevice_ptr);
        v123 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v683 = v17;
        v131 = v3;
        if (v123 >> 62)
        {
          v132 = _CocoaArrayWrapper.endIndex.getter();
          if (v132)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v132 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v132)
          {
LABEL_42:
            v133 = 0;
            v3 = "Error writing image to file for migration: %@";
            while (1)
            {
              if ((v123 & 0xC000000000000001) != 0)
              {
                v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v133 >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_212;
                }

                v134 = *(v123 + 8 * v133 + 32);
              }

              v2 = v134;
              v135 = v133 + 1;
              if (__OFADD__(v133, 1))
              {
                break;
              }

              aBlock = v134;
              sub_10001D418(&aBlock, v131, "Error writing image to file for migration: %@");

              ++v133;
              if (v135 == v132)
              {
                goto LABEL_234;
              }
            }

LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
LABEL_213:

            goto LABEL_215;
          }
        }

LABEL_234:
        v123, v124, v125, v126, v127, v128, v129, v130;
        v624 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
        swift_beginAccess();
        v625 = *(v131 + v624);
        if (v625 >> 62)
        {
          v626 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v626 = *((v625 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v626 < 1)
        {

          return;
        }

        v627 = *(v131 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
        if (*(v131 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration) == 1)
        {
          if (v627)
          {
            [v627 invalidate];
          }

          v628 = *(v131 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
          if (v628)
          {
            [v628 invalidate];
          }

          v629 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
          v630 = *(v131 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
          if (v630)
          {
            [v630 invalidateWithReason:0];
            v631 = *(v131 + v629);
          }

          else
          {
            v631 = 0;
          }

          *(v131 + v629) = 0;

          sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
          v633 = static OS_dispatch_queue.main.getter();
          v639 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v705 = sub_1000223D8;
          v706 = v639;
          aBlock = _NSConcreteStackBlock;
          v702 = 1107296256;
          v703 = sub_1000102BC;
          v704 = &unk_100071D90;
          v640 = _Block_copy(&aBlock);

          v636 = v691;
          static DispatchQoS.unspecified.getter();
          v707 = _swiftEmptyArrayStorage;
          sub_10001F8CC();
          sub_100009894(&unk_10007F560, &qword_10005C590);
          sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
          v637 = v689;
          v638 = v690;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v640);
        }

        else
        {
          if (v627)
          {
            [v627 invalidate];
          }

          v632 = *(v131 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
          if (v632)
          {
            [v632 invalidate];
          }

          sub_100018980(0);
          sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
          v633 = static OS_dispatch_queue.main.getter();
          v634 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v705 = sub_1000223A8;
          v706 = v634;
          aBlock = _NSConcreteStackBlock;
          v702 = 1107296256;
          v703 = sub_1000102BC;
          v704 = &unk_100071D68;
          v635 = _Block_copy(&aBlock);

          v636 = v691;
          static DispatchQoS.unspecified.getter();
          v707 = _swiftEmptyArrayStorage;
          sub_10001F8CC();
          sub_100009894(&unk_10007F560, &qword_10005C590);
          sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
          v637 = v689;
          v638 = v690;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v635);
        }

        (*(v692 + 8))(v637, v638);
        (*(v683 + 8))(v636, v693);
      }

      else
      {
        v337 = Logger.logObject.getter();
        v338 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v337, v338))
        {
          v339 = swift_slowAlloc();
          *v339 = 0;
          _os_log_impl(&_mh_execute_header, v337, v338, "No present devices to migrate.", v339, 2u);
        }

        v340 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
        v341 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
        if (v341)
        {
          [v341 invalidateWithReason:0];
          v342 = *(v3 + v340);
        }

        else
        {
          v342 = 0;
        }

        *(v3 + v340) = 0;

        v369 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
        if (v369)
        {
          [v369 invalidate];
        }

        v370 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
        if (v370)
        {
          [v370 invalidate];
        }

        v371 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration);
        v372 = Logger.logObject.getter();
        v373 = static os_log_type_t.default.getter();
        v374 = os_log_type_enabled(v372, v373);
        if (v371 == 1)
        {
          if (v374)
          {
            v375 = swift_slowAlloc();
            *v375 = 0;
            _os_log_impl(&_mh_execute_header, v372, v373, "Dismiss the UI, not allowed to migrate", v375, 2u);
          }

          sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
          v376 = static OS_dispatch_queue.main.getter();
          v377 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v705 = sub_10002238C;
          v706 = v377;
          aBlock = _NSConcreteStackBlock;
          v702 = 1107296256;
          v378 = &unk_100071D40;
        }

        else
        {
          if (v374)
          {
            v379 = swift_slowAlloc();
            *v379 = 0;
            _os_log_impl(&_mh_execute_header, v372, v373, "Migration not allowed, show done view", v379, 2u);
          }

          sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
          v376 = static OS_dispatch_queue.main.getter();
          v380 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v705 = sub_100022EE8;
          v706 = v380;
          aBlock = _NSConcreteStackBlock;
          v702 = 1107296256;
          v378 = &unk_100071D18;
        }

        v703 = sub_1000102BC;
        v704 = v378;
        v381 = _Block_copy(&aBlock);

        v382 = v691;
        static DispatchQoS.unspecified.getter();
        v708 = _swiftEmptyArrayStorage;
        sub_10001F8CC();
        sub_100009894(&unk_10007F560, &qword_10005C590);
        sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
        v383 = v689;
        v384 = v690;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v381);
        (*(v692 + 8))(v383, v384);
        (*(v17 + 8))(v382, v693);
      }

      goto LABEL_253;
    }

    v249 = sub_10001BE7C();
    if (!v250)
    {
      return;
    }

    v252 = v249;
    v253 = v250;
    v254 = v251;
    v255 = sub_10000DC1C(v251, 0);
    if (v255)
    {
      v256 = v255;
      v683 = v17;
      v257 = (v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID);
      v258 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8);
      if (v258)
      {
        v694 = v252;
        v695 = v3;
        v259 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
        v28 = *(v255 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
        if (!v28)
        {
LABEL_266:
          __break(1u);
          goto LABEL_267;
        }

        v260 = *v257;

        v28 = [(ASUIServerManager *)v28 appAccessInfoMap];
        v682 = v260;
        if (v28)
        {
          sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
          v261 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v28 = sub_10000AB88(v260, v258, v261);
          v261, v262, v263, v264, v265, v266, v267, v268;
          if (v28)
          {
            v269 = [(ASUIServerManager *)v28 appDiscoveryConfiguration];

            if (v269)
            {
              v270 = [v269 flags];

              v28 = ((v270 >> 4) & 1);
            }

            else
            {
              v28 = 0;
            }
          }
        }

        sub_1000356E8();
        if (v392 != 25)
        {
          sub_1000356E8();
          if ((v393 != 20) | v28 & 1)
          {
            v258, v385, v386, v387, v388, v389, v390, v391;
            sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
            v696 = static OS_dispatch_queue.main.getter();
            v394 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v395 = swift_allocObject();
            v396 = v694;
            v395[2] = v394;
            v395[3] = v396;
            v395[4] = v253;
            v395[5] = v254;
            v705 = sub_10002240C;
            v706 = v395;
            aBlock = _NSConcreteStackBlock;
            v702 = 1107296256;
            v703 = sub_1000102BC;
            v704 = &unk_100071DE0;
            v397 = _Block_copy(&aBlock);
            v695 = v254;

            v398 = v256;
            v399 = v691;
            static DispatchQoS.unspecified.getter();
            v708 = _swiftEmptyArrayStorage;
            sub_10001F8CC();
            sub_100009894(&unk_10007F560, &qword_10005C590);
            sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
            v400 = v253;
            v401 = v689;
            v402 = v690;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            p_super = &v696->super;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v397);

            v400, v404, v405, v406, v407, v408, v409, v410;
            (*(v692 + 8))(v401, v402);
            (*(v683 + 8))(v399, v693);
LABEL_253:

            goto LABEL_254;
          }
        }

        v411 = *&v695->router[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID];
        if (v411)
        {
          v681 = v256;
          v412 = *(v256 + v259);
          if (!v412)
          {
LABEL_268:
            __break(1u);
            goto LABEL_269;
          }

          v680 = v253;
          v413 = *(&v695->super.isa + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID);

          v414 = [v412 identifier];
          v3 = v695;
          if (!v414)
          {
LABEL_269:
            __break(1u);
            goto LABEL_270;
          }

          v415 = v414;
          v416 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v418 = v417;

          if (v413 == v416 && v411 == v418)
          {
            v418, v419, v420, v421, v422, v423, v424, v425;
            v426 = v682;
            goto LABEL_176;
          }

          v427 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v418, v428, v429, v430, v431, v432, v433, v434;
          v426 = v682;
          if (v427)
          {
LABEL_176:
            v2 = v254;
            v442 = [v2 discoveredInExtension];
            v450 = v681;
            if (v442)
            {
              v28 = v426;
              v451 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image;
              if (*(v681 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image) || (v525 = [v2 displayImageName]) == 0)
              {
                v258, v443, v444, v445, v446, v447, v448, v449;
                v411, v452, v453, v454, v455, v456, v457, v458;
              }

              else
              {

                v526 = objc_allocWithZone(LSApplicationRecord);

                v527 = sub_10001F3A8(v28, v258, 0);
                if (!v527)
                {
LABEL_271:
                  __break(1u);
LABEL_272:
                  aBlock = 0;
                  v702 = 0xE000000000000000;
                  _StringGuts.grow(_:)(102);
                  v641._countAndFlagsBits = 0xD000000000000064;
                  v641._object = 0x800000010005E1A0;
                  String.append(_:)(v641);
                  v642 = [(ASUIServerManager *)v28 description];
                  v643 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v645 = v644;

                  v646._countAndFlagsBits = v643;
                  v646._object = v645;
                  String.append(_:)(v646);
                  v645, v647, v648, v649, v650, v651, v652, v653;
                  goto LABEL_275;
                }

                v528 = v527;
                v258, v529, v530, v531, v532, v533, v534, v535;
                v411, v536, v537, v538, v539, v540, v541, v542;
                v543 = [v528 URL];

                static URL._unconditionallyBridgeFromObjectiveC(_:)();
                v544 = objc_allocWithZone(NSBundle);
                URL._bridgeToObjectiveC()(v545);
                v547 = v546;
                v548 = [v544 initWithURL:v546];

                (*(v688 + 8))(v15, v687);
                v684 = v2;
                v549 = [v2 displayImageName];
                if (v549)
                {
                  v550 = v549;
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v552 = v551;
                }

                else
                {
                  v552 = 0xE300000000000000;
                }

                v560 = v548;
                v561 = String._bridgeToObjectiveC()();
                v552, v562, v563, v564, v565, v566, v567, v568;
                v569 = [objc_opt_self() imageNamed:v561 inBundle:v560 compatibleWithTraitCollection:0];

                v570 = v569;
                v571 = Logger.logObject.getter();
                v572 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v571, v572))
                {
                  v573 = swift_slowAlloc();
                  v574 = swift_slowAlloc();
                  *v573 = 138412290;
                  *(v573 + 4) = v570;
                  *v574 = v569;
                  v575 = v570;
                  _os_log_impl(&_mh_execute_header, v571, v572, "deviceChanged device.image: %@", v573, 0xCu);
                  sub_1000227E8(v574, &qword_10007F278, &unk_10005CD60);
                  v450 = v681;
                }

                v576 = *(v450 + v451);
                *(v450 + v451) = v569;

                v3 = v695;
                v2 = v684;
              }

              v577 = [v2 displayImageFileURL];
              v578 = v686;
              if (v577)
              {
                v579 = v685;
                v580 = v577;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                (*(v688 + 32))(v578, v579, v687);
                v581 = *(v450 + v451);
                if (v581 && (v582 = UIImagePNGRepresentation(v581)) != 0)
                {
                  v583 = v582;
                  v584 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v586 = v585;

                  Data.write(to:options:)();
                  (*(v688 + 8))(v578, v687);
                  sub_10002215C(v584, v586);
                }

                else
                {
                  (*(v688 + 8))(v578, v687);
                }
              }
            }

            else
            {
              v411, v443, v444, v445, v446, v447, v448, v449;
              v459 = [v2 appAccessInfoMap];
              if (v459)
              {
                v467 = v459;
                sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
                v468 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                v469 = sub_10000AB88(v426, v258, v468);
                v468, v470, v471, v472, v473, v474, v475, v476;
                v258, v477, v478, v479, v480, v481, v482, v483;
                if (!v469)
                {
                  goto LABEL_215;
                }

                v484 = [v469 associationIdentifier];

                if (!v484)
                {
                  goto LABEL_215;
                }

                v485 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v487 = v486;

                v488 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
                swift_beginAccess();
                v489 = sub_10000AB88(v485, v487, *(v3 + v488));
                if (v489)
                {
                  v123 = v489;
                  swift_endAccess();
                  v487, v490, v491, v492, v493, v494, v495, v496;
                  v497 = [v2 displayImageFileURL];
                  if (v497)
                  {
                    v498 = v497;
                    static URL._unconditionallyBridgeFromObjectiveC(_:)();

                    v499 = v684;
                    (*(v688 + 32))(v684, v7, v687);
                    v500 = [v123 productImage];
                    v501 = UIImagePNGRepresentation(v500);

                    if (v501)
                    {
                      v502 = v2;
                      v503 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                      v505 = v504;

                      Data.write(to:options:)();
                      (*(v688 + 8))(v499, v687);

                      sub_10002215C(v503, v505);
                      v2 = v502;
                    }

                    else
                    {
                      (*(v688 + 8))(v499, v687);
                    }

                    goto LABEL_215;
                  }

                  goto LABEL_213;
                }

                swift_endAccess();
                v487, v553, v554, v555, v556, v557, v558, v559;
              }

              else
              {
                v258, v460, v461, v462, v463, v464, v465, v466;
              }
            }

LABEL_215:
            sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
            v696 = static OS_dispatch_queue.main.getter();
            v587 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v588 = swift_allocObject();
            v695 = v587;
            v589 = v694;
            v588[2] = v587;
            v588[3] = v589;
            v590 = v680;
            v588[4] = v680;
            v588[5] = v2;
            v705 = sub_100022474;
            v706 = v588;
            aBlock = _NSConcreteStackBlock;
            v702 = 1107296256;
            v703 = sub_1000102BC;
            v704 = &unk_100071E30;
            v591 = v3;
            v592 = _Block_copy(&aBlock);
            v593 = v2;

            v594 = v691;
            static DispatchQoS.unspecified.getter();
            v708 = _swiftEmptyArrayStorage;
            sub_10001F8CC();
            sub_100009894(&unk_10007F560, &qword_10005C590);
            sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
            v595 = v689;
            v596 = v690;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v597 = &v696->super;
            OS_dispatch_queue.async(group:qos:flags:execute:)();

            _Block_release(v592);
            v590, v598, v599, v600, v601, v602, v603, v604;

            (*(v692 + 8))(v595, v596);
            (*(v683 + 8))(v594, v693);

            v605 = *(v591 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest);
            *(v591 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest) = 0;

            v606 = *(v591 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest);
            *(v591 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest) = 0;

            return;
          }

          v411, v435, v436, v437, v438, v439, v440, v441;
          v253 = v680;
          v256 = v681;
        }

        v258, v385, v386, v387, v388, v389, v390, v391;
        v506 = v254;

        v696 = Logger.logObject.getter();
        v507 = static os_log_type_t.error.getter();

        v253, v508, v509, v510, v511, v512, v513, v514;
        if (os_log_type_enabled(&v696->super, v507))
        {
          v515 = swift_slowAlloc();
          v516 = swift_slowAlloc();
          *v515 = 138412290;
          *(v515 + 4) = v506;
          *v516 = v254;
          v506 = v506;
          _os_log_impl(&_mh_execute_header, &v696->super, v507, "BUG?: This device was never picked %@", v515, 0xCu);
          sub_1000227E8(v516, &qword_10007F278, &unk_10005CD60);
        }

        v253, v517, v518, v519, v520, v521, v522, v523;
        goto LABEL_190;
      }

      v343 = v255;
      v696 = Logger.logObject.getter();
      v344 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(&v696->super, v344))
      {
        v345 = swift_slowAlloc();
        v346 = swift_slowAlloc();
        *v345 = 138412290;
        *(v345 + 4) = v343;
        *v346 = v256;
        v347 = v343;
        _os_log_impl(&_mh_execute_header, &v696->super, v344, "BUG?: No appBundleID to setup %@", v345, 0xCu);
        sub_1000227E8(v346, &qword_10007F278, &unk_10005CD60);

        v253, v348, v349, v350, v351, v352, v353, v354;
        goto LABEL_190;
      }
    }

    else
    {
      v696 = Logger.logObject.getter();
      v297 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(&v696->super, v297))
      {
        v298 = swift_slowAlloc();
        *v298 = 0;
        _os_log_impl(&_mh_execute_header, &v696->super, v297, "BUG?: No appBundleID", v298, 2u);
      }
    }

    v253, v362, v363, v364, v365, v366, v367, v368;
    goto LABEL_190;
  }

  if (v34 > 39)
  {
    if (v34 != 40)
    {
      v99 = sub_10001BE7C();
      if (!v100)
      {
        return;
      }

      v102 = v99;
      v103 = v100;
      v28 = v101;
      v683 = v17;
      v104 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
      swift_beginAccess();
      v105 = *(v3 + v104);
      if (!v105)
      {
        goto LABEL_263;
      }

      v106 = v3;

      v28 = v28;
      v107 = sub_10000AB88(v102, v103, v105);
      v103, v108, v109, v110, v111, v112, v113, v114;
      if (!v107)
      {
        swift_endAccess();
        v103, v299, v300, v301, v302, v303, v304, v305;

        return;
      }

      swift_endAccess();

      sub_1000356E8();
      if (v115 == 25)
      {
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          _os_log_impl(&_mh_execute_header, v116, v117, "BUG? Device is already authorized, Discovery is stopped, but we still got a lost event for this device. Ignoring.", v118, 2u);
        }

        goto LABEL_148;
      }

      v306 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
      swift_beginAccess();
      if (!*(v106 + v306))
      {
LABEL_267:
        __break(1u);
        goto LABEL_268;
      }

      v28 = v28;
      v307 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v708 = *(v106 + v306);
      *(v106 + v306) = 0x8000000000000000;
      sub_100020294(v307, v102, v103, isUniquelyReferenced_nonNull_native, &qword_10007F2B0, &unk_10005C5B0);
      v103, v309, v310, v311, v312, v313, v314, v315;
      *(v106 + v306) = v708;
      swift_endAccess();

      v316 = *(v106 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID + 8);
      if (!v316 || (*(v106 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID) != v102 || v316 != v103) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

LABEL_148:
        v103, v355, v356, v357, v358, v359, v360, v361;
        return;
      }

      sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
      v696 = static OS_dispatch_queue.main.getter();
      v317 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v318 = swift_allocObject();
      *(v318 + 16) = v317;
      *(v318 + 24) = v307;
      v705 = sub_100022494;
      v706 = v318;
      aBlock = _NSConcreteStackBlock;
      v702 = 1107296256;
      v703 = sub_1000102BC;
      v704 = &unk_100071E80;
      v319 = _Block_copy(&aBlock);
      v695 = v307;

      v320 = v691;
      static DispatchQoS.unspecified.getter();
      v708 = _swiftEmptyArrayStorage;
      sub_10001F8CC();
      sub_100009894(&unk_10007F560, &qword_10005C590);
      sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
      v321 = v689;
      v322 = v690;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v323 = &v696->super;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v319);

      v103, v324, v325, v326, v327, v328, v329, v330;
      (*(v692 + 8))(v321, v322);
      (*(v683 + 8))(v320, v693);

LABEL_254:

      return;
    }

    v215 = sub_10001BE7C();
    if (!v216)
    {
      return;
    }

    v28 = v216;
    v218 = v217;
    if (qword_10007EC50 != -1)
    {
      v607 = v215;
      swift_once();
      v215 = v607;
    }

    v219 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (v219)
    {
      v220 = v3;
      v221 = v215;
      v222 = v219[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp];
      v223 = v219;
      if (v222 == 1)
      {
        v224 = v218;
        v225 = sub_100019E4C();

        if (v225)
        {
          v226 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_preFilterDiscoveryResultsMap;
          swift_beginAccess();
          if (!*&v220[v226])
          {
LABEL_270:
            __break(1u);

            goto LABEL_271;
          }

          v227 = v224;

          v228 = swift_isUniquelyReferenced_nonNull_native();
          v708 = *&v220[v226];
          *&v220[v226] = 0x8000000000000000;
          sub_100020294(v227, v221, v28, v228, &qword_10007F2D8, &qword_10005C608);
          *&v220[v226] = v708;
          swift_endAccess();
          v28, v229, v230, v231, v232, v233, v234, v235;
          v236 = type metadata accessor for TaskPriority();
          (*(*(v236 - 8) + 56))(v22, 1, 1, v236);
          v237 = swift_allocObject();
          v237[2] = 0;
          v237[3] = 0;
          v237[4] = v220;
          v237[5] = v221;
          v237[6] = v28;
          v237[7] = v227;
          v238 = v220;
          v239 = v227;

          sub_10000CA90(0, 0, v22, &unk_10005C5E0, v237);

          v28, v240, v241, v242, v243, v244, v245, v246;
          goto LABEL_254;
        }
      }

      v287 = sub_10000DC1C(v218, 0);
      if (v287)
      {

        v288 = *&v220[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
        if (v288)
        {
          [v288 invalidate];
        }

        v289 = *&v220[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
        if (v289)
        {
          [v289 invalidate];
        }

        sub_10000FFE0();
      }
    }

    v28, v290, v291, v292, v293, v294, v295, v296;
    return;
  }

  if (v34 == 10)
  {
    if (qword_10007EC50 != -1)
    {
LABEL_217:
      swift_once();
    }

    v136 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (!v136)
    {
      return;
    }

    v685 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
    v686 = qword_1000814E8;
    v28 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
    if (!v28)
    {
LABEL_264:
      __break(1u);
      goto LABEL_265;
    }

    v693 = v136;
    v123 = [(ASUIServerManager *)v28 discoveredDevices];
    sub_100009B48(0, &qword_100080420, DADevice_ptr);
    v137 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v137 >> 62)
    {
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (v2)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v2 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
LABEL_55:
        v145 = 0;
        v146 = v137 & 0xC000000000000001;
        v691 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp;
        v692 = v137 & 0xFFFFFFFFFFFFFF8;
        v689 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_preFilterDiscoveryResultsMap;
        v690 = v137 & 0xC000000000000001;
        v688 = v137;
        v687 = v2;
        while (1)
        {
          if (v146)
          {
            v147 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v145 >= *(v692 + 16))
            {
              goto LABEL_210;
            }

            v147 = *(v137 + 8 * v145 + 32);
          }

          v148 = v147;
          v149 = (v145 + 1);
          if (__OFADD__(v145, 1))
          {
            __break(1u);
LABEL_210:
            __break(1u);
            goto LABEL_211;
          }

          v150 = [v147 identifier];
          if (!v150)
          {
            v137, v151, v152, v153, v154, v155, v156, v157;
            v331 = v148;
            v332 = Logger.logObject.getter();
            v333 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v332, v333))
            {
              v334 = swift_slowAlloc();
              v335 = swift_slowAlloc();
              *v334 = 138412290;
              *(v334 + 4) = v331;
              *v335 = v331;
              v336 = v331;
              _os_log_impl(&_mh_execute_header, v332, v333, "DADevice does not have an identifier, ignoring. %@", v334, 0xCu);
              sub_1000227E8(v335, &qword_10007F278, &unk_10005CD60);
            }

            else
            {
            }

            return;
          }

          v158 = v150;
          v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v160;

          if (v691[v693] == 1)
          {
            v168 = [v148 bluetoothAdvertisementData];
            if (v168)
            {

              v169 = [v148 appAccessInfoMap];
              if (!v169)
              {
                break;
              }

              v170 = v169;
              sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
              v171 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              v172 = *(v171 + 16);
              v173 = v171;
              v146 = v690;
              v173, v174, v175, v176, v177, v178, v179, v180;
              if (!v172)
              {
                break;
              }
            }
          }

          v28, v161, v162, v163, v164, v165, v166, v167;
          v123 = sub_10000DC1C(v148, 0);

LABEL_57:
          ++v145;
          if (v149 == v2)
          {
            goto LABEL_219;
          }
        }

        v181 = v689;
        swift_beginAccess();
        if (!*&v181[v3])
        {
          __break(1u);
          goto LABEL_258;
        }

        v182 = v148;
        v183 = swift_isUniquelyReferenced_nonNull_native();
        v708 = *&v181[v3];
        v184 = v708;
        v185 = v3;
        *&v181[v3] = 0x8000000000000000;
        v3 = sub_10001F768(v159, v28);
        v193 = v184[2];
        v194 = (v186 & 1) == 0;
        v195 = v193 + v194;
        if (__OFADD__(v193, v194))
        {
          __break(1u);
          goto LABEL_217;
        }

        v196 = v186;
        if (v184[3] < v195)
        {
          sub_10001FCCC(v195, v183, &qword_10007F2D8, &qword_10005C608);
          v197 = sub_10001F768(v159, v28);
          if ((v196 & 1) != (v186 & 1))
          {
            goto LABEL_276;
          }

          v3 = v197;
          v198 = v708;
          if ((v196 & 1) == 0)
          {
            goto LABEL_72;
          }

LABEL_76:
          v203 = v198[7];
          v204 = *(v203 + 8 * v3);
          *(v203 + 8 * v3) = v182;
          v28, v186, v187, v188, v189, v190, v191, v192;

LABEL_77:
          v3 = v185;
          *&v689[v185] = v198;
          swift_endAccess();
          v205 = type metadata accessor for TaskPriority();
          v206 = *(v205 - 8);
          v207 = v695;
          (*(v206 + 56))(v695, 1, 1, v205);
          v123 = swift_allocObject();
          *(v123 + 16) = 0;
          *(v123 + 24) = 0;
          *(v123 + 32) = v185;
          *(v123 + 40) = v182;
          v208 = v694;
          sub_100022778(v207, v694);
          LODWORD(v207) = (*(v206 + 48))(v208, 1, v205);
          v209 = v3;

          if (v207 == 1)
          {
            sub_1000227E8(v208, &qword_10007F2D0, &qword_10005C5D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v206 + 8))(v208, v205);
          }

          v210 = *(v123 + 16);
          swift_unknownObjectRetain();

          v2 = v687;
          if (v210)
          {
            swift_getObjectType();
            v211 = dispatch thunk of Actor.unownedExecutor.getter();
            v213 = v212;
            swift_unknownObjectRelease();
          }

          else
          {
            v211 = 0;
            v213 = 0;
          }

          v137 = v688;
          sub_1000227E8(v695, &qword_10007F2D0, &qword_10005C5D0);
          v214 = swift_allocObject();
          *(v214 + 16) = &unk_10005C5F0;
          *(v214 + 24) = v123;
          if (v213 | v211)
          {
            v698 = 0;
            v699 = v211;
            v697 = 0;
            v700 = v213;
          }

          v146 = v690;
          swift_task_create();

          goto LABEL_57;
        }

        if (v183)
        {
          v198 = v708;
          if (v186)
          {
            goto LABEL_76;
          }
        }

        else
        {
          sub_1000205A0(&qword_10007F2D8, &qword_10005C608);
          v198 = v708;
          if (v196)
          {
            goto LABEL_76;
          }
        }

LABEL_72:
        v198[(v3 >> 6) + 8] |= 1 << v3;
        v199 = (v198[6] + 16 * v3);
        *v199 = v159;
        v199[1] = v28;
        *(v198[7] + 8 * v3) = v182;
        v200 = v198[2];
        v201 = __OFADD__(v200, 1);
        v202 = v200 + 1;
        if (v201)
        {
          __break(1u);
          goto LABEL_223;
        }

        v198[2] = v202;
        goto LABEL_77;
      }
    }

LABEL_219:
    v137, v138, v139, v140, v141, v142, v143, v144;
    v608 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
    swift_beginAccess();
    v609 = *(v3 + v608);
    if (v609 >> 62)
    {
LABEL_223:
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        goto LABEL_221;
      }
    }

    else if (*((v609 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_221:
      sub_10000FFE0();
LABEL_232:

      return;
    }

    v610 = *&v685[v686];
    if (v610)
    {
      v611 = *(v610 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveryTimeout);
    }

    else
    {
      v611 = 30.0;
    }

    if (v611 < ASPickerDisplaySettingsDiscoveryTimeoutUnbounded)
    {
      v612 = Logger.logObject.getter();
      v613 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v612, v613))
      {
        v614 = swift_slowAlloc();
        *v614 = 134217984;
        *(v614 + 4) = v611;
        _os_log_impl(&_mh_execute_header, v612, v613, "Discovery timeout of %f seconds", v614, 0xCu);
      }

      v615 = objc_opt_self();
      v616 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v705 = sub_100022938;
      v706 = v616;
      aBlock = _NSConcreteStackBlock;
      v702 = 1107296256;
      v703 = sub_100022FBC;
      v704 = &unk_100071F20;
      v617 = _Block_copy(&aBlock);

      v618 = [v615 scheduledTimerWithTimeInterval:0 repeats:v617 block:v611];
      _Block_release(v617);
      v619 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
      *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer) = v618;

      if (v611 > 60.0)
      {
        v620 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v705 = sub_100022970;
        v706 = v620;
        aBlock = _NSConcreteStackBlock;
        v702 = 1107296256;
        v703 = sub_100022FBC;
        v704 = &unk_100071F48;
        v621 = _Block_copy(&aBlock);

        v622 = [v615 scheduledTimerWithTimeInterval:0 repeats:v621 block:30.0];

        _Block_release(v621);
        v623 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
        *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer) = v622;

        return;
      }
    }

    goto LABEL_232;
  }

  if (v34 != 20)
  {
    return;
  }

  v28 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(&v28->super, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, &v28->super, v76, "XPC connection to dataaccessd invalidated, clearing devices", v77, 2u);
  }

  v78 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
  swift_beginAccess();
  v86 = *(v3 + v78);
  if (!v86)
  {
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
    goto LABEL_260;
  }

  v28 = &_swiftEmptyDictionarySingleton;
  *(v3 + v78) = &_swiftEmptyDictionarySingleton;
  v86, v79, v80, v81, v82, v83, v84, v85;
  v87 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
  swift_beginAccess();
  v95 = *(v3 + v87);
  if (!v95)
  {
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

  *(v3 + v87) = &_swiftEmptyDictionarySingleton;
  v95, v88, v89, v90, v91, v92, v93, v94;
  v96 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
  v97 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
  if (v97)
  {
    [v97 invalidateWithReason:0];
    v98 = *(v3 + v96);
  }

  else
  {
    v98 = 0;
  }

  *(v3 + v96) = 0;

  if (*(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration) == 1)
  {
    v277 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
    swift_beginAccess();
    v285 = *(v3 + v277);
    if (!v285)
    {
LABEL_265:
      __break(1u);
      goto LABEL_266;
    }

    *(v3 + v277) = &_swiftEmptyDictionarySingleton;
    v285, v278, v279, v280, v281, v282, v283, v284;
  }

  v286 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
  if (v286)
  {
    [v286 invalidate];
  }

  v75 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
  if (v75)
  {
    goto LABEL_17;
  }
}

void sub_10001428C(_TtC16AccessorySetupUI17ASUIServerManager *a1)
{
  v2 = v1;
  if (qword_10007EBF8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000032F0(v4, qword_10007F150);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  a1, v7, v8, v9, v10, v11, v12, v13;
  if (os_log_type_enabled(v5, v6))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    sub_100009B48(0, &qword_10007F2B8, DADiscoveryConfiguration_ptr);
    v16 = Array.description.getter();
    v18 = v17;
    v19 = sub_10003FFF4(v16, v17, aBlock);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "configureMigration: %s", v14, 0xCu);
    sub_100009AB0(v15);
  }

  v27 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery;
  v28 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery);
  if (v28)
  {
    a1 = 0;
    goto LABEL_7;
  }

  v29 = objc_allocWithZone(DADiscovery);

  a1 = 0;
  v31 = sub_10001F2BC(v30);
  v32 = *(v2 + v27);
  *(v2 + v27) = v31;

  v28 = *(v2 + v27);
  if (v28)
  {
LABEL_7:
    v33 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8);
    v34 = v28;
    if (v33)
    {

      v35 = String._bridgeToObjectiveC()();
      v33, v36, v37, v38, v39, v40, v41, v42;
    }

    else
    {
      v35 = 0;
    }

    [v28 setBundleID:v35];

    v43 = *(v2 + v27);
    if (v43)
    {
      v44 = v43;
      [v44 setFlags:{objc_msgSend(v44, "flags") | 4}];

      v45 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems);
      if (v45)
      {
        aBlock[0] = _swiftEmptyArrayStorage;
        if (v45 >> 62)
        {
          v46 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v72 = v2;
        v73 = v27;

        if (v46)
        {
          v2 = 0;
          v54 = _swiftEmptyArrayStorage;
          do
          {
            v55 = v2;
            while (1)
            {
              if ((v45 & 0xC000000000000001) != 0)
              {
                v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v55 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_38;
                }

                v56 = *&v45->systemMonitor[8 * v55];
              }

              v57 = v56;
              v2 = v55 + 1;
              if (__OFADD__(v55, 1))
              {
                __break(1u);
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              ++v55;
              if (v2 == v46)
              {
                goto LABEL_30;
              }
            }

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v54 = aBlock[0];
          }

          while (v2 != v46);
        }

        else
        {
          v54 = _swiftEmptyArrayStorage;
        }

LABEL_30:
        v45, v47, v48, v49, v50, v51, v52, v53;
        if (v54 >> 62)
        {
          v58 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v58 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v58 > 0)
        {
          v59 = *(v72 + v73);
          if (!v59)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v60 = v59;
          [v60 setFlags:{objc_msgSend(v60, "flags") | 8}];
        }

        v61 = *(v72 + v73);
        if (v61)
        {
          v62 = v61;
          v54, v63, v64, v65, v66, v67, v68, v69;
          v70 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_1000221B0;
          aBlock[5] = v70;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100022FBC;
          aBlock[3] = &unk_100071908;
          v71 = _Block_copy(aBlock);

          [v62 setEventHandler:v71];
          _Block_release(v71);

          return;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_46:
  __break(1u);
}

void sub_10001478C(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v421 = v5;
  v422 = v6;
  __chkstk_darwin(v5);
  v420 = &v414 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v414 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_1000032F0(v12, qword_10007F150);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v2 = v13;
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "Migration discovery event: %@", v17, 0xCu);
    sub_1000227E8(v18, &qword_10007F278, &unk_10005CD60);
    v13 = v2;
  }

  v20 = [(ASUIServerManager *)v14 eventType];
  if (v20 <= 41)
  {
    if (v20 == 10)
    {
      v69 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery];
      if (v69)
      {
        v70 = [v69 discoveredDevices];
        sub_100009B48(0, &qword_100080420, DADevice_ptr);
        v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v415 = v13;
        if (!(v71 >> 62))
        {
          v79 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v79)
          {
            goto LABEL_149;
          }

LABEL_28:
          v80 = 0;
          v81 = (v71 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if ((v71 & 0xC000000000000001) != 0)
            {
              v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v80 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_142;
              }

              v82 = *(v71 + 8 * v80 + 32);
            }

            v2 = v82;
            v83 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              __break(1u);
LABEL_142:
              __break(1u);
              goto LABEL_138;
            }

            v84 = [(ASUIServerManager *)v82 identifier];
            if (!v84)
            {
              break;
            }

            v92 = sub_10000DC1C(v2, 0);
            ++v80;
            if (v83 == v79)
            {
              goto LABEL_149;
            }
          }

          v71, v85, v86, v87, v88, v89, v90, v91;
          v233 = v2;
          v422 = Logger.logObject.getter();
          v234 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v422, v234))
          {
            v235 = swift_slowAlloc();
            v236 = swift_slowAlloc();
            *v235 = 138412290;
            *(v235 + 4) = v233;
            *v236 = v233;
            v421 = v233;
            _os_log_impl(&_mh_execute_header, v422, v234, "Migration discovery: DADevice does not have an identifier, ignoring. %@", v235, 0xCu);
            sub_1000227E8(v236, &qword_10007F278, &unk_10005CD60);

            p_super = &v421->super;
          }

          else
          {

            p_super = v422;
          }

          goto LABEL_78;
        }

LABEL_148:
        v79 = _CocoaArrayWrapper.endIndex.getter();
        if (!v79)
        {
LABEL_149:
          v71, v72, v73, v74, v75, v76, v77, v78;
          v338 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
          swift_beginAccess();
          v339 = *&v3[v338];
          if (v339 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter() < 1)
            {
              return;
            }
          }

          else if (*((v339 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
          {
            return;
          }

          sub_10000FFE0();
          return;
        }

        goto LABEL_28;
      }

LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
      goto LABEL_216;
    }

    if (v20 != 15)
    {
      if (v20 != 20)
      {
        return;
      }

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Migration discovery: XPC connection to dataaccessd invalidated, clearing devices", v23, 2u);
      }

      v24 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
      v25 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
      if (v25)
      {
        [v25 invalidateWithReason:0];
        v26 = *&v3[v24];
      }

      else
      {
        v26 = 0;
      }

      *&v3[v24] = 0;

      sub_1000189D4(0, 0);
      v205 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
      swift_beginAccess();
      v213 = *&v3[v205];
      if (v213)
      {
        *&v3[v205] = &_swiftEmptyDictionarySingleton;
        v213, v206, v207, v208, v209, v210, v211, v212;
        v214 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
        swift_beginAccess();
        v222 = *&v3[v214];
        if (v222)
        {
          *&v3[v214] = &_swiftEmptyDictionarySingleton;
          v222, v215, v216, v217, v218, v219, v220, v221;
          v223 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
          swift_beginAccess();
          v231 = *&v3[v223];
          if (v231)
          {
            *&v3[v223] = &_swiftEmptyDictionarySingleton;
            v231, v224, v225, v226, v227, v228, v229, v230;
            v232 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
            if (v232)
            {
              [v232 invalidate];
            }

            v68 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
            if (v68)
            {
              goto LABEL_24;
            }

            return;
          }

          goto LABEL_217;
        }

        goto LABEL_215;
      }

      goto LABEL_213;
    }

    objc_opt_self();
    v164 = swift_dynamicCastObjCClass();
    if (v164)
    {
      v165 = v164;
      v419 = v14;
      if ([v165 devicesMigrated])
      {
        v166 = [v165 devices];
        if (!v166)
        {
          v249 = Logger.logObject.getter();
          v250 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v249, v250))
          {
            v251 = swift_slowAlloc();
            *v251 = 0;
            _os_log_impl(&_mh_execute_header, v249, v250, "Migration discovery: No present devices to migrate.", v251, 2u);
          }

          v252 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
          v253 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
          if (v253)
          {
            [v253 invalidateWithReason:0];
            v254 = *&v3[v252];
          }

          else
          {
            v254 = 0;
          }

          *&v3[v252] = 0;

          sub_1000189D4(0, 0);
          v277 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
          if (v277)
          {
            [v277 invalidate];
          }

          v278 = v11;
          v279 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
          if (v279)
          {
            [v279 invalidate];
          }

          v280 = v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration];
          v281 = Logger.logObject.getter();
          v282 = static os_log_type_t.default.getter();
          v283 = os_log_type_enabled(v281, v282);
          if (v280 == 1)
          {
            if (v283)
            {
              v284 = swift_slowAlloc();
              *v284 = 0;
              _os_log_impl(&_mh_execute_header, v281, v282, "Migration discovery: Dismiss the UI, not allowed to migrate", v284, 2u);
            }

            sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
            v415 = static OS_dispatch_queue.main.getter();
            v285 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v427 = sub_100022EF0;
            v428 = v285;
            aBlock = _NSConcreteStackBlock;
            v424 = 1107296256;
            v286 = &unk_100071A98;
          }

          else
          {
            if (v283)
            {
              v287 = swift_slowAlloc();
              *v287 = 0;
              _os_log_impl(&_mh_execute_header, v281, v282, "Migration discovery: Migration not allowed, show done view", v287, 2u);
            }

            sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
            v415 = static OS_dispatch_queue.main.getter();
            v288 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v427 = sub_100022EE8;
            v428 = v288;
            aBlock = _NSConcreteStackBlock;
            v424 = 1107296256;
            v286 = &unk_100071A70;
          }

          v425 = sub_1000102BC;
          v426 = v286;
          v289 = _Block_copy(&aBlock);

          static DispatchQoS.unspecified.getter();
          v431 = _swiftEmptyArrayStorage;
          sub_10001F8CC();
          sub_100009894(&unk_10007F560, &qword_10005C590);
          sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
          v290 = v420;
          v291 = v421;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v292 = v415;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v289);
          (v422[1].isa)(v290, v291);
          (*(v9 + 8))(v278, v8);
          goto LABEL_200;
        }

        v167 = v166;
        v417 = v11;
        v418 = v8;
        sub_100009B48(0, &qword_100080420, DADevice_ptr);
        v168 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v430 = _swiftEmptyArrayStorage;
        v3 = v3;
        sub_1000219E8(v168, v3, &v430);
        v168, v169, v170, v171, v172, v173, v174, v175;

        v176 = v430;
        if (v430 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() >= 1)
          {
            v177 = _CocoaArrayWrapper.endIndex.getter();
            if (v177)
            {
LABEL_53:
              v178 = 0;
              v2 = (v176 & 0xFFFFFFFFFFFFFF8);
              v71 = 0;
              while (1)
              {
                if ((v176 & 0xC000000000000001) != 0)
                {
                  v179 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v71 >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_147;
                  }

                  v179 = *&v176->systemMonitor[8 * v71];
                }

                v180 = v179;
                v181 = v71 + 1;
                if (__OFADD__(v71, 1))
                {
                  break;
                }

                v182 = sub_10000DC1C(v179, 1);

                if (v182)
                {

                  v178 = 1;
                  if (v181 == v177)
                  {
                    goto LABEL_106;
                  }

                  ++v71;
                }

                else
                {
                  ++v71;
                  if (v181 == v177)
                  {
                    if ((v178 & 1) == 0)
                    {
                      goto LABEL_182;
                    }

LABEL_106:
                    sub_10000FFE0();
                    goto LABEL_182;
                  }
                }
              }

              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              __break(1u);
LABEL_147:
              __break(1u);
              goto LABEL_148;
            }

            goto LABEL_182;
          }
        }

        else
        {
          v177 = *((v430 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v177)
          {
            goto LABEL_53;
          }
        }

        v340 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migratedDevices;
        swift_beginAccess();
        v341 = *&v3[v340];
        if (v341 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() >= 1)
          {
LABEL_159:
            v14 = *&v3[v340];
            if (v14 >> 62)
            {
              v342 = _CocoaArrayWrapper.endIndex.getter();
              if (v342)
              {
                goto LABEL_161;
              }
            }

            else
            {
              v342 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v342)
              {
LABEL_161:
                if (v342 >= 1)
                {

                  v343 = 0;
                  do
                  {
                    if ((v14 & 0xC000000000000001) != 0)
                    {
                      v344 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      v344 = *&v14->systemMonitor[8 * v343];
                    }

                    v345 = v344;
                    ++v343;
                    v346 = sub_10000DC1C(v344, 0);
                  }

                  while (v342 != v343);
                  v14, v347, v348, v349, v350, v351, v352, v353;
                  goto LABEL_168;
                }

                __break(1u);
                goto LABEL_211;
              }
            }

LABEL_168:
            v354 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
            if (v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration] == 1)
            {
              if (v354)
              {
                [v354 invalidate];
              }

              v355 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
              if (v355)
              {
                [v355 invalidate];
              }

              sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
              v415 = static OS_dispatch_queue.main.getter();
              v356 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v427 = sub_100022EF4;
              v428 = v356;
              aBlock = _NSConcreteStackBlock;
              v424 = 1107296256;
              v425 = sub_1000102BC;
              v426 = &unk_100071AE8;
              v357 = _Block_copy(&aBlock);

              v358 = v417;
              static DispatchQoS.unspecified.getter();
              v429 = _swiftEmptyArrayStorage;
              v414 = sub_10001F8CC();
              sub_100009894(&unk_10007F560, &qword_10005C590);
              sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
              v360 = v420;
              v359 = v421;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v361 = v415;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v357);

              (v422[1].isa)(v360, v359);
              (*(v9 + 8))(v358, v418);

              v362 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
              v363 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
              if (v363)
              {
                [v363 invalidateWithReason:0];
                v364 = *&v3[v362];
              }

              else
              {
                v364 = 0;
              }

              *&v3[v362] = 0;

              sub_1000189D4(0, 0);
              goto LABEL_182;
            }

            if (v354)
            {
              [v354 invalidate];
            }

            v365 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
            if (v365)
            {
              [v365 invalidate];
            }

            sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
            v415 = static OS_dispatch_queue.main.getter();
            v366 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v427 = sub_100022EE8;
            v428 = v366;
            aBlock = _NSConcreteStackBlock;
            v424 = 1107296256;
            v425 = sub_1000102BC;
            v426 = &unk_100071AC0;
            v367 = _Block_copy(&aBlock);

            v368 = v417;
            static DispatchQoS.unspecified.getter();
            v429 = _swiftEmptyArrayStorage;
            sub_10001F8CC();
            sub_100009894(&unk_10007F560, &qword_10005C590);
            sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
            v370 = v420;
            v369 = v421;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v371 = v415;
            OS_dispatch_queue.async(group:qos:flags:execute:)();

            _Block_release(v367);
            (v422[1].isa)(v370, v369);
            (*(v9 + 8))(v368, v418);
            v176, v372, v373, v374, v375, v376, v377, v378;
LABEL_200:

            return;
          }
        }

        else if (*((v341 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
        {
          goto LABEL_159;
        }

LABEL_182:
        v176, v183, v184, v185, v186, v187, v188, v189;
LABEL_203:

        return;
      }

LABEL_77:
      p_super = &v419->super;
LABEL_78:

      return;
    }

LABEL_218:
    aBlock = 0;
    v424 = 0xE000000000000000;
    _StringGuts.grow(_:)(123);
    v401._object = 0x800000010005DFC0;
    v401._countAndFlagsBits = 0xD000000000000079;
    String.append(_:)(v401);
    v402 = [(ASUIServerManager *)v14 description];
    v403 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v405 = v404;

    v406._countAndFlagsBits = v403;
    v406._object = v405;
    String.append(_:)(v406);
    v405, v407, v408, v409, v410, v411, v412, v413;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v20 == 42)
  {
    v93 = sub_10001BE7C();
    if (!v94)
    {
      return;
    }

    v2 = v94;
    v96 = v95;
    v97 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8];
    if (!v97)
    {
      v237 = v95;
      v238 = Logger.logObject.getter();
      v239 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v238, v239))
      {
        v240 = swift_slowAlloc();
        v241 = swift_slowAlloc();
        *v240 = 138412290;
        *(v240 + 4) = v237;
        *v241 = v96;
        v237 = v237;
        _os_log_impl(&_mh_execute_header, v238, v239, "BUG?: No appBundleID to setup %@", v240, 0xCu);
        sub_1000227E8(v241, &qword_10007F278, &unk_10005CD60);
      }

      goto LABEL_94;
    }

    v98 = v93;
    v417 = v11;
    v99 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
    v100 = v95;

    v101 = [v100 appAccessInfoMap];
    v416 = v9;
    v418 = v8;
    if (v101)
    {
      v109 = v101;
      sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
      v110 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v110 + 16))
      {
        v81 = v100;
        v118 = sub_10001F768(v99, v97);
        v120 = v119;
        v97, v119, v121, v122, v123, v124, v125, v126;
        if (v120)
        {
          v127 = *(*(v110 + 56) + 8 * v118);
          v110, v128, v129, v130, v131, v132, v133, v134;
          v135 = [v127 state];

          v100 = v81;
          if (v135 == 25)
          {
            v136 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID + 8];
            if (v136)
            {
              v137 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID];

              v138 = [v81 identifier];
              if (v138)
              {
                v146 = v138;
                v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v149 = v148;

                if (v137 == v147 && v136 == v149)
                {
                  v136, v150, v151, v152, v153, v154, v155, v156;
                  v149, v157, v158, v159, v160, v161, v162, v163;
LABEL_140:

                  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
                  v419 = static OS_dispatch_queue.main.getter();
                  v323 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v324 = swift_allocObject();
                  v324[2] = v323;
                  v324[3] = v98;
                  v324[4] = v2;
                  v324[5] = v81;
                  v427 = sub_100022FC8;
                  v428 = v324;
                  aBlock = _NSConcreteStackBlock;
                  v424 = 1107296256;
                  v425 = sub_1000102BC;
                  v426 = &unk_100071A48;
                  v325 = _Block_copy(&aBlock);
                  v326 = v81;

                  v327 = v417;
                  static DispatchQoS.unspecified.getter();
                  v431 = _swiftEmptyArrayStorage;
                  sub_10001F8CC();
                  sub_100009894(&unk_10007F560, &qword_10005C590);
                  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
                  v329 = v420;
                  v328 = v421;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  v330 = v419;
                  OS_dispatch_queue.async(group:qos:flags:execute:)();
                  _Block_release(v325);
                  v2, v331, v332, v333, v334, v335, v336, v337;

                  (v422[1].isa)(v329, v328);
                  (*(v416 + 8))(v327, v418);
                  goto LABEL_200;
                }

                v308 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v136, v309, v310, v311, v312, v313, v314, v315;
                v149, v316, v317, v318, v319, v320, v321, v322;
                if (v308)
                {
                  goto LABEL_140;
                }
              }

              else
              {
                v136, v139, v140, v141, v142, v143, v144, v145;
              }
            }

LABEL_138:

LABEL_94:

            v2, v242, v243, v244, v245, v246, v247, v248;
            return;
          }

LABEL_112:
          sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
          v261 = static OS_dispatch_queue.main.getter();
          v262 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v263 = swift_allocObject();
          v263[2] = v262;
          v263[3] = v98;
          v263[4] = v2;
          v263[5] = v100;
          v427 = sub_100022FC4;
          v428 = v263;
          aBlock = _NSConcreteStackBlock;
          v424 = 1107296256;
          v425 = sub_1000102BC;
          v426 = &unk_1000719F8;
          v264 = _Block_copy(&aBlock);
          v265 = v100;

          v266 = v2;
          v267 = v417;
          static DispatchQoS.unspecified.getter();
          v431 = _swiftEmptyArrayStorage;
          sub_10001F8CC();
          sub_100009894(&unk_10007F560, &qword_10005C590);
          sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
          v268 = v420;
          v269 = v421;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v264);
          v266, v270, v271, v272, v273, v274, v275, v276;

          (v422[1].isa)(v268, v269);
          (*(v416 + 8))(v267, v418);
          goto LABEL_200;
        }

        v100 = v81;
      }

      else
      {
        v97, v111, v112, v113, v114, v115, v116, v117;
      }
    }

    else
    {
      v110 = v97;
    }

    v110, v102, v103, v104, v105, v106, v107, v108;
    goto LABEL_112;
  }

  if (v20 == 50)
  {
    objc_opt_self();
    v190 = swift_dynamicCastObjCClass();
    if (!v190)
    {
      goto LABEL_218;
    }

    v191 = v190;
    v419 = v14;
    if (![v191 devicesMigrated])
    {
      goto LABEL_77;
    }

    v192 = [v191 devices];
    v418 = v8;
    if (!v192)
    {
      v255 = Logger.logObject.getter();
      v256 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v255, v256))
      {
        v257 = swift_slowAlloc();
        *v257 = 0;
        _os_log_impl(&_mh_execute_header, v255, v256, "Migration discovery: No present devices to migrate.", v257, 2u);
      }

      v258 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
      v259 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
      if (v259)
      {
        [v259 invalidateWithReason:0];
        v260 = *&v3[v258];
      }

      else
      {
        v260 = 0;
      }

      v293 = v11;
      *&v3[v258] = 0;

      sub_1000189D4(0, 0);
      v294 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
      if (v294)
      {
        [v294 invalidate];
      }

      v295 = v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration];
      v296 = Logger.logObject.getter();
      v297 = static os_log_type_t.default.getter();
      v298 = os_log_type_enabled(v296, v297);
      if (v295 == 1)
      {
        if (v298)
        {
          v299 = swift_slowAlloc();
          *v299 = 0;
          _os_log_impl(&_mh_execute_header, v296, v297, "Migration discovery: Dismiss the UI, not allowed to migrate", v299, 2u);
        }

        sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
        v300 = static OS_dispatch_queue.main.getter();
        v301 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v427 = sub_100022EF0;
        v428 = v301;
        aBlock = _NSConcreteStackBlock;
        v424 = 1107296256;
        v302 = &unk_100071958;
      }

      else
      {
        if (v298)
        {
          v303 = swift_slowAlloc();
          *v303 = 0;
          _os_log_impl(&_mh_execute_header, v296, v297, "Migration discovery: Migration not allowed, show done view", v303, 2u);
        }

        sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
        v300 = static OS_dispatch_queue.main.getter();
        v304 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v427 = sub_100022EE8;
        v428 = v304;
        aBlock = _NSConcreteStackBlock;
        v424 = 1107296256;
        v302 = &unk_100071930;
      }

      v425 = sub_1000102BC;
      v426 = v302;
      v305 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v431 = _swiftEmptyArrayStorage;
      sub_10001F8CC();
      sub_100009894(&unk_10007F560, &qword_10005C590);
      sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
      v307 = v420;
      v306 = v421;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v305);
      (v422[1].isa)(v307, v306);
      (*(v9 + 8))(v293, v418);
      goto LABEL_200;
    }

    v71 = v192;
    sub_100009B48(0, &qword_100080420, DADevice_ptr);
    v193 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v416 = v9;
    v417 = v11;
    if (v193 >> 62)
    {
      v201 = _CocoaArrayWrapper.endIndex.getter();
      if (v201)
      {
LABEL_69:
        v202 = 0;
        do
        {
          if ((v193 & 0xC000000000000001) != 0)
          {
            v203 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v202 >= *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_146;
            }

            v203 = *(v193 + 8 * v202 + 32);
          }

          v71 = v203;
          v2 = (v202 + 1);
          if (__OFADD__(v202, 1))
          {
            goto LABEL_145;
          }

          aBlock = v203;
          sub_10001D418(&aBlock, v3, "Migration discovery: Error writing image to file for migration: %@");

          ++v202;
        }

        while (v2 != v201);
      }
    }

    else
    {
      v201 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v201)
      {
        goto LABEL_69;
      }
    }

    v193, v194, v195, v196, v197, v198, v199, v200;
    v379 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
    swift_beginAccess();
    v380 = *&v3[v379];
    if (v380 >> 62)
    {
      v381 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v381 = *((v380 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v382 = v416;
    if (v381 < 1)
    {

      return;
    }

    v383 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
    if (v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration] == 1)
    {
      if (v383)
      {
        [v383 invalidate];
      }

      v384 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
      if (v384)
      {
        [v384 invalidate];
      }

      sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
      v415 = static OS_dispatch_queue.main.getter();
      v385 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v427 = sub_100022EF4;
      v428 = v385;
      aBlock = _NSConcreteStackBlock;
      v424 = 1107296256;
      v425 = sub_1000102BC;
      v426 = &unk_1000719A8;
      v386 = _Block_copy(&aBlock);

      v387 = v417;
      static DispatchQoS.unspecified.getter();
      v430 = _swiftEmptyArrayStorage;
      sub_10001F8CC();
      sub_100009894(&unk_10007F560, &qword_10005C590);
      sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
      v388 = v420;
      v389 = v421;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v390 = v415;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v386);

      (v422[1].isa)(v388, v389);
      (*(v382 + 8))(v387, v418);

      v391 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
      v392 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
      if (v392)
      {
        [v392 invalidateWithReason:0];
        v393 = *&v3[v391];
      }

      else
      {
        v393 = 0;
      }

      *&v3[v391] = 0;

      sub_1000189D4(0, 0);
      goto LABEL_203;
    }

    if (v383)
    {
      [v383 invalidate];
    }

    v394 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
    if (v394)
    {
      [v394 invalidate];
    }

    sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
    v395 = static OS_dispatch_queue.main.getter();
    v396 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v427 = sub_100022EE8;
    v428 = v396;
    aBlock = _NSConcreteStackBlock;
    v424 = 1107296256;
    v425 = sub_1000102BC;
    v426 = &unk_100071980;
    v397 = _Block_copy(&aBlock);

    v398 = v417;
    static DispatchQoS.unspecified.getter();
    v430 = _swiftEmptyArrayStorage;
    sub_10001F8CC();
    sub_100009894(&unk_10007F560, &qword_10005C590);
    sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
    v400 = v420;
    v399 = v421;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v397);
    (v422[1].isa)(v400, v399);
    (*(v382 + 8))(v398, v418);
    goto LABEL_200;
  }

  if (v20 != 60)
  {
    return;
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Migration discovery: XPC connection to dataaccessd interrupted, clearing devices", v29, 2u);
  }

  v30 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  swift_beginAccess();
  v38 = *&v3[v30];
  if (!v38)
  {
    goto LABEL_212;
  }

  *&v3[v30] = &_swiftEmptyDictionarySingleton;
  v38, v31, v32, v33, v34, v35, v36, v37;
  v39 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
  swift_beginAccess();
  v40 = *&v3[v39];
  *&v3[v39] = _swiftEmptyArrayStorage;
  v40, v41, v42, v43, v44, v45, v46, v47;
  v48 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer;
  v49 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
  if (v49)
  {
    [v49 invalidate];
  }

  v50 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
  swift_beginAccess();
  v58 = *&v3[v50];
  if (!v58)
  {
    goto LABEL_214;
  }

  *&v3[v50] = &_swiftEmptyDictionarySingleton;
  v58, v51, v52, v53, v54, v55, v56, v57;
  v59 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
  swift_beginAccess();
  v67 = *&v3[v59];
  if (!v67)
  {
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  *&v3[v59] = &_swiftEmptyDictionarySingleton;
  v67, v60, v61, v62, v63, v64, v65, v66;
  v68 = *&v3[v48];
  if (v68)
  {
LABEL_24:
    [v68 invalidate];
  }
}