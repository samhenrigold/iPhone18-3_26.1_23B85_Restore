void sub_100BE95C0(void *a1)
{
  v2 = [a1 interactiveCanvasController];
  if (!v2)
  {
    return;
  }

  v54 = v2;
  v3 = [v2 layerHost];
  if (!v3)
  {
    goto LABEL_32;
  }

  v4 = v3;
  if ([v3 respondsToSelector:"shapeLibraryPopoverController"])
  {
    v53 = [v4 shapeLibraryPopoverController];
    swift_unknownObjectRelease();
    v5 = [v54 layerHost];
    if (!v5)
    {
      goto LABEL_31;
    }

    v6 = v5;
    if (([v5 respondsToSelector:"asUIKitHost"] & 1) == 0)
    {

      goto LABEL_13;
    }

    v7 = [v6 asUIKitHost];
    swift_unknownObjectRelease();
    if (!v7)
    {

      v12 = v53;
LABEL_33:

      return;
    }

    v8 = [v54 editorController];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 selectionPath];
    }

    else
    {
      v10 = 0;
    }

    v13 = sub_100F22994(v10);

    if (v13)
    {
      sub_100BDDAE4(v13);
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      [v54 convertUnscaledToBoundsRect:{v15, v17, v19, v21}];
      v23 = v22;
      v51 = v25;
      v52 = v24;
      r1 = v26;
      v27 = sub_100120414(v24, v25, v26, v22);
      v29 = v28;
      [v54 visibleScaledRectForCanvasUI];
      x = v57.origin.x;
      y = v57.origin.y;
      width = v57.size.width;
      height = v57.size.height;
      v34 = v27;
      v56.x = v27;
      v56.y = v29;
      if (!CGRectContainsPoint(v57, v56))
      {
        v58.origin.y = v51;
        v58.origin.x = v52;
        v58.size.width = r1;
        v58.size.height = v23;
        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        v59 = CGRectIntersection(v58, v60);
        v35 = v59.origin.x;
        v36 = v59.origin.y;
        v37 = v59.size.width;
        v38 = v59.size.height;
        if (CGRectIsNull(v59))
        {
          [v7 lastTapPoint];
          [v54 convertUnscaledToBoundsPoint:?];
        }

        else
        {
          v39 = sub_100120414(v35, v36, v37, v38);
        }

        v34 = v39;
        v29 = v40;
      }

      v41 = [objc_allocWithZone(CRLiOSShapeLibraryViewController) initWithDelegate:v53 shouldChangeSelectedShapes:1];
      v42 = [a1 boardItems];
      type metadata accessor for CRLBoardItem(0);
      sub_1006D2240();
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      isa = Set._bridgeToObjectiveC()().super.isa;

      [v41 setAssociatedBoardItems:isa];

      [v41 setShowLinesInLibrary:0];
      v44 = v41;
      [v44 setModalPresentationStyle:7];
      v45 = [v44 popoverPresentationController];
      if (v45)
      {
        v46 = v45;
        [v45 setSourceRect:{v34, v29, 1.0, 1.0}];
      }

      v47 = [v44 popoverPresentationController];

      [v47 setCanOverlapSourceViewRect:1];
      v48 = [v54 layerHost];
      if (v48)
      {
        v49 = [v48 miniFormatterPresenter];
        swift_unknownObjectRelease();
        if (v49)
        {
          [v49 dismissMiniFormatter];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
LABEL_32:
          v12 = v54;
          goto LABEL_33;
        }
      }

      swift_unknownObjectRelease();

LABEL_31:
      goto LABEL_32;
    }

    v11 = v53;
  }

  else
  {
    v11 = v54;
  }

LABEL_13:

  swift_unknownObjectRelease();
}

void sub_100BE9AD4(void *a1, double a2, double a3)
{
  v6 = [a1 interactiveCanvasController];
  if (!v6)
  {
    return;
  }

  v35 = v6;
  v7 = [v6 layerHost];
  if (!v7)
  {
    v23 = v35;
LABEL_16:

    return;
  }

  v8 = v7;
  if (([v7 respondsToSelector:"shapeLibraryPopoverController"] & 1) == 0)
  {

    swift_unknownObjectRelease();
    return;
  }

  v34 = [v8 shapeLibraryPopoverController];
  swift_unknownObjectRelease();
  v9 = [a1 anyConnectionLine];
  v10 = [v9 connectionLineInfo];

  if (!v10)
  {

    v23 = v34;
    goto LABEL_16;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = v10;
  v12 = v10;
  sub_1005BC5DC(inited);
  v14 = v13;
  swift_setDeallocating();
  swift_arrayDestroy();
  v36[6] = v14;
  v15 = [v35 layoutForInfo:v12];
  if (v15)
  {
    v16 = v15;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {
      goto LABEL_19;
    }

    v18 = [v17 connectedFrom];
    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = v18;
    v20 = [v18 info];

    if (v20)
    {
      type metadata accessor for CRLBoardItem(0);
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22 = v21;
        swift_unknownObjectRetain();
        sub_100E6CCD4(v36, v22);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
LABEL_19:
    }
  }

  v24 = [objc_allocWithZone(CRLiOSShapeLibraryViewController) initWithDelegate:v34 unscaledPopoverAnchorPoint:{a2, a3}];
  type metadata accessor for CRLBoardItem(0);
  sub_1006D2240();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v24 setAssociatedBoardItems:isa];

  [v24 setShowLinesInLibrary:0];
  v26 = v24;
  [v26 setModalPresentationStyle:7];
  [v35 convertUnscaledToBoundsPoint:{a2, a3}];
  v28 = v27;
  v30 = v29;
  v31 = [v26 popoverPresentationController];
  if (v31)
  {
    v32 = v31;
    [v31 setSourceRect:{v28, v30, 1.0, 1.0}];
  }

  v33 = [v26 popoverPresentationController];

  if (v33)
  {
    [v33 setCanOverlapSourceViewRect:1];
  }

  sub_100C00CF8(v26);
}

uint64_t sub_100BE9EEC(uint64_t a1)
{
  v2 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100BEA0A8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CRLFollowBorderHighlightView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100BEA14C()
{
  v1 = [*&v0[OBJC_IVAR____TtC8Freeform28CRLFollowBorderHighlightView_color] UIColor];
  [v1 set];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong rectForBorder];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    swift_unknownObjectRelease();
    v11 = &v0[OBJC_IVAR____TtC8Freeform28CRLFollowBorderHighlightView_canvasRect];
    *v11 = v4;
    *(v11 + 1) = v6;
    *(v11 + 2) = v8;
    *(v11 + 3) = v10;
  }

  v12 = &v0[OBJC_IVAR____TtC8Freeform28CRLFollowBorderHighlightView_canvasRect];
  v13 = *&v0[OBJC_IVAR____TtC8Freeform28CRLFollowBorderHighlightView_canvasRect];
  v14 = *&v0[OBJC_IVAR____TtC8Freeform28CRLFollowBorderHighlightView_canvasRect + 8];
  v15 = *&v0[OBJC_IVAR____TtC8Freeform28CRLFollowBorderHighlightView_canvasRect + 16];
  v16 = *&v0[OBJC_IVAR____TtC8Freeform28CRLFollowBorderHighlightView_canvasRect + 24];
  v17 = objc_opt_self();
  v18 = [v17 bezierPathWithRect:{v13, v14, v15, v16}];
  v19 = *v12;
  v20 = v12[1];
  v21 = v12[2];
  v22 = v12[3];
  v24 = sub_100076B60(8.0, v18, v23);
  v26 = sub_100BDDE50(v19, v20, v21, v22, v24, v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = swift_unknownObjectWeakLoadStrong();
  v34 = 16.0;
  v35 = 16.0;
  if (v33)
  {
    v36 = v33;
    if ([v33 isPresentingCompactScenesNavigator] && (objc_msgSend(objc_opt_self(), "crl_phoneUI") & 1) != 0)
    {
      [v36 displayCornerRadius];
      v38 = v37;
      swift_unknownObjectRelease();
      v35 = v38 + -8.0;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    if ([v39 isPresentingCompactScenesNavigator] && (objc_msgSend(objc_opt_self(), "crl_phoneUI") & 1) != 0)
    {
      [v40 displayCornerRadius];
      v42 = v41;
      swift_unknownObjectRelease();
      v34 = v42 + -8.0;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v43 = [v17 bezierPathWithRoundedRect:0 upperRightRadius:0 lowerRightRadius:v26 lowerLeftRadius:v28 upperLeftRadius:v30 useLegacyCorners:v32 keepNoOpElements:{16.0, v35, v34, 16.0}];
  if (v18)
  {
    v44 = [v18 subtractBezierPath:v43];
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;
  [v44 fill];
  [v0 setIsAccessibilityElement:0];
}

void *sub_100BEA43C(void *a1)
{
  v2 = v1;
  v19 = a1;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v17[1] = sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  *flags = _swiftEmptyArrayStorage;
  sub_100018340();
  sub_1005B981C(&unk_1019FB800, &unk_10146F020);
  sub_100018398();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = 0;
  v1[5] = 0;
  v1[7] = 0;
  v1[8] = 0;
  v1[6] = 1;
  v9 = v19;
  v1[2] = v19;
  v1[3] = v8;
  flags[0] = 0;
  v10 = v9;
  if (SCNetworkReachabilityGetFlags(v10, flags))
  {
    v11 = flags[0];
    sub_1005B981C(&qword_101A14F90, &qword_10149F638);
    swift_allocObject();
    v1[9] = CurrentValueSubject.init(_:)();
    LOBYTE(flags[0]) = (v11 & 2) != 0;
    sub_1005B981C(&qword_1019FD588, &qword_101478828);
    swift_allocObject();
    v12 = CurrentValueSubject.init(_:)();

    v2[10] = v12;
  }

  else
  {
    if (qword_1019F2100 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlNetworkReachability;
    v14 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v14, "Failed to retrieve flags from network reachability listener.", 60, 2, _swiftEmptyArrayStorage);
    sub_100BEB7AC();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();

    type metadata accessor for CRLNetworkReachabilityListener();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t sub_100BEA800()
{
  v1 = v0;
  if (*(v0 + 48) != 1)
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v26 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v26, "CRLNetworkReachabilityListener.stop() was not called. CRLNetworkReachabilityListenerContextInfo will leak.", 106, 2u);
    StaticString.description.getter("deinit", 6, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLNetworkReachabilityListener.swift", 101, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 63;
    v15 = v26;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "CRLNetworkReachabilityListener.stop() was not called. CRLNetworkReachabilityListenerContextInfo will leak.", 106, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("deinit", 6, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLNetworkReachabilityListener.swift", 101, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("CRLNetworkReachabilityListener.stop() was not called. CRLNetworkReachabilityListenerContextInfo will leak.", 106, 2);
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:63 isFatal:0 format:v24 args:v21];
  }

  return v1;
}

uint64_t sub_100BEABC8()
{
  sub_100BEA800();

  return swift_deallocClassInstance();
}

void sub_100BEAC20(uint64_t a1)
{
  v1 = (a1 + 48);
  if (*(a1 + 48) != 1)
  {
    return;
  }

  v3 = *(a1 + 16);
  if (SCNetworkReachabilitySetDispatchQueue(v3, *(a1 + 24)))
  {
    type metadata accessor for CRLNetworkReachabilityListenerContextInfo();
    v4 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    context.version = 0;
    context.info = v4;
    memset(&context.retain, 0, 24);
    *(a1 + 32) = 0;
    *(a1 + 40) = v4;
    v1[1] = 0;
    v1[2] = 0;
    *v1 = 0;

    if (SCNetworkReachabilitySetCallback(v3, sub_100BEAF2C, &context))
    {
      flags = 0;
      if (SCNetworkReachabilityGetFlags(v3, &flags))
      {
        sub_100BEB4E8(flags);
      }

      else
      {
        if (qword_1019F2100 != -1)
        {
          swift_once();
        }

        v11 = static OS_os_log.crlNetworkReachability;
        v12 = static os_log_type_t.error.getter();
        sub_100005404(v11, &_mh_execute_header, v12, "Failed to retrieve flags from network reachability listener.", 60, 2, _swiftEmptyArrayStorage);
      }

      return;
    }

    if (qword_1019F2100 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.crlNetworkReachability;
    v9 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v9, "Failed to set callback for network reachability listener.", 57, 2, _swiftEmptyArrayStorage);
    sub_100BEB7AC();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  else
  {
    if (qword_1019F2100 != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.crlNetworkReachability;
    v6 = static os_log_type_t.error.getter();
    sub_100005404(v5, &_mh_execute_header, v6, "Failed to set target queue for network reachability listener.", 61, 2, _swiftEmptyArrayStorage);
    sub_100BEB7AC();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
  }

  if (*(a1 + 48) != 1)
  {
    if (*(a1 + 40))
    {
    }

    *(v1 - 2) = 0;
    *(v1 - 1) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 1;
  }

  swift_willThrow();
}

double sub_100BEAF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2;

    if (swift_weakLoadStrong())
    {
      sub_100BEB4E8(v3);
    }
  }

  return result;
}

uint64_t sub_100BEAFA0(uint64_t result)
{
  if (*(result + 48) != 1)
  {
    v1 = result;
    v2 = *(result + 40);
    v3 = *(result + 16);
    if (SCNetworkReachabilitySetCallback(v3, 0, 0))
    {
      if (v2)
      {
      }

      v1[4] = 0;
      v1[5] = 0;
      v1[7] = 0;
      v1[8] = 0;
      v1[6] = 1;
      result = SCNetworkReachabilitySetDispatchQueue(v3, 0);
      if (!result)
      {
        if (qword_1019F2100 != -1)
        {
          swift_once();
        }

        v4 = static OS_os_log.crlNetworkReachability;
        v5 = static os_log_type_t.error.getter();
        return sub_100005404(v4, &_mh_execute_header, v5, "Failed to clear target queue for network reachability listener.", 63, 2, _swiftEmptyArrayStorage);
      }
    }

    else
    {
      if (qword_1019F2100 != -1)
      {
        swift_once();
      }

      v6 = static OS_os_log.crlNetworkReachability;
      v7 = static os_log_type_t.error.getter();
      sub_100005404(v6, &_mh_execute_header, v7, "Failed to clear callback for network reachability listener.", 59, 2, _swiftEmptyArrayStorage);
      sub_100BEB7AC();
      swift_allocError();
      *v8 = 2;
      return swift_willThrow();
    }
  }

  return result;
}

double sub_100BEB130@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 48) != 1)
  {
    v27 = a2;
    v26 = objc_opt_self();
    v3 = [v26 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28, "Cannot access publisher once started.", 37, 2u);
    StaticString.description.getter("isReachablePublisher", 20, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLNetworkReachabilityListener.swift", 101, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 148;
    v15 = v28;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Cannot access publisher once started.", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("isReachablePublisher", 20, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLNetworkReachabilityListener.swift", 101, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Cannot access publisher once started.", 37, 2);
    v24 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v22 file:v23 lineNumber:148 isFatal:0 format:v24 args:v21];

    a2 = v27;
  }

  *a2 = *(a1 + 80);

  return result;
}

void *sub_100BEB4E8(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    CurrentValueSubject.value.getter();
    if (v15 != a1)
    {
      v14 = a1;
      CurrentValueSubject.value.setter();
    }

    v12 = a1 & 2;
    result = CurrentValueSubject.value.getter();
    if (v13[7] != v12 >> 1)
    {
      v13[6] = v12 >> 1;
      return CurrentValueSubject.value.setter();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100BEB6DC()
{
  sub_1005B981C(&qword_1019FD588, &qword_101478828);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

unint64_t sub_100BEB7AC()
{
  result = qword_101A14F88;
  if (!qword_101A14F88)
  {
    result = swift_getWitnessTable("=?9", &type metadata for CRLNetworkReachabilityListenerError, v0, v1);
    atomic_store(result, &qword_101A14F88);
  }

  return result;
}

void *sub_100BEB81C()
{
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  v0 = SCNetworkReachabilityCreateWithAddress(0, &address);
  if (v0)
  {
    v1 = v0;
    type metadata accessor for CRLNetworkReachabilityListener();
    swift_allocObject();
    return sub_100BEA43C(v1);
  }

  else
  {
    if (qword_1019F2100 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.crlNetworkReachability;
    v4 = static os_log_type_t.error.getter();
    sub_100005404(v3, &_mh_execute_header, v4, "Failed to create network rechability for zero address.", 54, 2, _swiftEmptyArrayStorage);
    sub_100BEB7AC();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_100BEB96C()
{
  result = qword_101A14F98;
  if (!qword_101A14F98)
  {
    result = swift_getWitnessTable("5?9", &type metadata for CRLNetworkReachabilityListenerError, v0, v1);
    atomic_store(result, &qword_101A14F98);
  }

  return result;
}

void sub_100BEBAE8(char *x8_0@<X8>)
{
  v4 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A241E8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A0B528, &unk_1014BA390);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100BF0AAC(v6, v9, type metadata accessor for CRLAssetData);
    sub_100BF0B14(v6, type metadata accessor for CRLFileItemAtomicDataStruct);
    v10 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v11 = *&v10[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    os_unfair_lock_lock(*(v11 + 16));
    v12 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v13 = *&v10[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v13)
    {
      v14 = *&v10[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v15 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
      v16 = v10;
      v17 = sub_10001F1A0(v16);

      v18 = *&v10[v12];
      *&v10[v12] = v17;
      v14 = v17;

      v13 = 0;
    }

    v19 = *(v11 + 16);
    v20 = v13;
    os_unfair_lock_unlock(v19);
    sub_10108CAF4(v9, 0, 3, 0, 0, x8_0);

    sub_100BF0B14(v9, type metadata accessor for CRLAssetData);
  }

  else
  {
    __break(1u);
  }
}

char *sub_100BEBD9C(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v3);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v12 = type metadata accessor for UUID();
  __chkstk_darwin(v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v68 - v18;
  v20 = OBJC_IVAR____TtC8Freeform11CRLFileItem__metadataPayload;
  v21 = *&v2[OBJC_IVAR____TtC8Freeform11CRLFileItem__metadataPayload];
  if (!v21)
  {
    if (**&v2[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A241E8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A0B528, &unk_1014BA390);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      sub_100BF0AAC(&v5[v3[5]], v8, type metadata accessor for CRLAssetData);
      sub_100BF0B14(v5, type metadata accessor for CRLFileItemAtomicDataStruct);
      v74 = v2;
      v31 = [v2 store];
      v32 = *&v31[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
      os_unfair_lock_lock(*(v32 + 16));
      v33 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
      v34 = *&v31[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      if (v34)
      {
        v35 = *&v31[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      }

      else
      {
        v72 = type metadata accessor for CRLAssetManager();
        v54 = objc_allocWithZone(v72);
        v73 = v20;
        v55 = v54;
        swift_unknownObjectWeakInit();
        v56 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
        type metadata accessor for CRLUnfairLock();
        v57 = swift_allocObject();
        v58 = v31;
        v59 = swift_slowAlloc();
        *v59 = 0;
        *(v57 + 16) = v59;
        atomic_thread_fence(memory_order_acq_rel);
        *&v55[v56] = v57;
        *&v55[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
        v60 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
        *&v55[v60] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
        *&v55[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
        swift_unknownObjectWeakAssign();
        v75.receiver = v55;
        v75.super_class = v72;
        v61 = objc_msgSendSuper2(&v75, "init");

        v62 = *&v31[v33];
        *&v31[v33] = v61;
        v35 = v61;

        v20 = v73;
        v34 = 0;
      }

      v63 = *(v32 + 16);
      v64 = v34;
      os_unfair_lock_unlock(v63);

      v65 = v74;
      v66 = sub_1011255E0();

      sub_100BF0B14(v8, type metadata accessor for CRLAssetData);
      v53 = *&v65[v20];
      *&v65[v20] = v66;
      v30 = v66;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v69 = v11;
  v70 = v17;
  v71 = v16;
  v72 = v3;
  v73 = v5;
  v22 = *&v21[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  v23 = *&v21[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
  LODWORD(v3) = sub_100020E58(&v21[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v22);
  v24 = *(v23 + 24);
  v74 = v21;
  v24(v22, v23);
  v2 = *&v2[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  if (*v2 != &off_101A241E8)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A0B528, &unk_1014BA390);
  v25 = v73;
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v26 = v69;
  sub_100BF0AAC(v25 + *(v72 + 5), v69, type metadata accessor for CRLAssetData);
  sub_100BF0B14(v25, type metadata accessor for CRLFileItemAtomicDataStruct);
  v28 = v70;
  v27 = v71;
  (*(v70 + 16))(v14, v26, v71);
  sub_100BF0B14(v26, type metadata accessor for CRLAssetData);
  LOBYTE(v26) = static UUID.== infix(_:_:)();
  v29 = *(v28 + 8);
  v29(v14, v27);
  v29(v19, v27);
  if ((v26 & 1) == 0)
  {
    v2 = objc_opt_self();
    LODWORD(v3) = [v2 _atomicIncrementAssertCount];
    v76 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v76, "Cached CRLAsset instance has not been updated as expected.", 58, 2u);
    StaticString.description.getter("metadataPayload", 15, 2);
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFileItem.swift", 82, 2);
    v36 = String._bridgeToObjectiveC()();

    v37 = [v36 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v38;

    if (qword_1019F20A0 == -1)
    {
LABEL_9:
      v39 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v3;
      v41 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v41;
      v42 = sub_1005CF04C();
      *(inited + 104) = v42;
      *(inited + 72) = v21;
      *(inited + 136) = &type metadata for String;
      v43 = sub_1000053B0();
      *(inited + 112) = v14;
      *(inited + 120) = v19;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v43;
      *(inited + 152) = 49;
      v44 = v76;
      *(inited + 216) = v41;
      *(inited + 224) = v42;
      *(inited + 192) = v44;
      v45 = v21;
      v46 = v44;
      v47 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v48 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v48, "Cached CRLAsset instance has not been updated as expected.", 58, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v49 = swift_allocObject();
      v49[2] = 8;
      v49[3] = 0;
      v49[4] = 0;
      v49[5] = 0;
      v50 = __VaListBuilder.va_list()();
      StaticString.description.getter("metadataPayload", 15, 2);
      v51 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFileItem.swift", 82, 2);
      v52 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Cached CRLAsset instance has not been updated as expected.", 58, 2);
      v53 = String._bridgeToObjectiveC()();

      [v2 handleFailureInFunction:v51 file:v52 lineNumber:49 isFatal:0 format:v53 args:v50];

      v30 = v74;
LABEL_12:

      return v30;
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  return v74;
}

void sub_100BEC6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v53 = &v47 - v18;
  __chkstk_darwin(v19);
  v24 = &v47 - v23;
  if (**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A241E8)
  {
    v48 = v22;
    v49 = a2;
    v50 = v21;
    v51 = v20;
    v52 = v4;

    v26 = sub_100F80DC0(1, v25);
    v54 = a4;
    v27 = v26;

    v28 = v27 + *(*v27 + 736);
    swift_beginAccess();
    v58 = v24;
    sub_10000BE14(v28, v13, &unk_101A226A0, &unk_10146E610);

    v29 = sub_1005B981C(&qword_101A01F08, &unk_101498A50);
    CRRegister.wrappedValue.getter();
    v30 = v13;
    v31 = v58;
    sub_10000CAAC(v30, &unk_101A226A0, &unk_10146E610);
    sub_10000BE14(v10, v31, &qword_1019F6990, &qword_10146D2F0);
    sub_100BF0B14(v10, type metadata accessor for CRLBoardItemParentAffinity);
    sub_100F81264(v54);
    if (v5)
    {

      sub_10000CAAC(v31, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      v54 = v29;
      v55 = v11;
      v32 = v48;
      sub_10000BE14(v49, v48, &qword_1019F6990, &qword_10146D2F0);
      v33 = type metadata accessor for UUID();
      v34 = *(v33 - 8);
      v35 = *(v34 + 48);
      if (v35(v32, 1, v33) == 1)
      {
        v36 = v53;
        sub_10000BE14(v58, v53, &qword_1019F6990, &qword_10146D2F0);
        if (v35(v32, 1, v33) != 1)
        {
          sub_10000CAAC(v32, &qword_1019F6990, &qword_10146D2F0);
        }
      }

      else
      {
        v36 = v53;
        (*(v34 + 32))(v53, v32, v33);
        (*(v34 + 56))(v36, 0, 1, v33);
      }

      v37 = v36;
      v38 = v36;
      v39 = v51;
      sub_10000BE14(v37, v51, &qword_1019F6990, &qword_10146D2F0);
      swift_beginAccess();
      v40 = v50;
      sub_10000BE14(v39, v50, &qword_1019F6990, &qword_10146D2F0);
      v41 = CRRegister.wrappedValue.modify();
      sub_10002C638(v40, v42, &qword_1019F6990, &qword_10146D2F0);
      v41(v57, 0);
      sub_10000CAAC(v39, &qword_1019F6990, &qword_10146D2F0);
      swift_endAccess();

      sub_10000CAAC(v38, &qword_1019F6990, &qword_10146D2F0);
      v43 = *(v52 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
      v44 = objc_allocWithZone(type metadata accessor for CRLFileItem(0));
      *&v44[OBJC_IVAR____TtC8Freeform11CRLFileItem__metadataPayload] = 0;
      *&v44[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v43;
      *&v44[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v27;
      v45 = type metadata accessor for CRLBoardItemBase(0);
      v56.receiver = v44;
      v56.super_class = v45;
      v46 = v43;
      objc_msgSendSuper2(&v56, "init");
      sub_10000CAAC(v58, &qword_1019F6990, &qword_10146D2F0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100BECCB0()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A241E8)
  {

    v2 = sub_100F80DC0(0, v1);

    v3 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v4 = objc_allocWithZone(type metadata accessor for CRLFileItem(0));
    *&v4[OBJC_IVAR____TtC8Freeform11CRLFileItem__metadataPayload] = 0;
    *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v3;
    *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v2;
    v6.receiver = v4;
    v6.super_class = type metadata accessor for CRLBoardItemBase(0);
    v5 = v3;
    objc_msgSendSuper2(&v6, "init");
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100BECDB4(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for CRLFileItemCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v50 - v8;
  v10 = sub_1005B981C(&qword_101A14FE8, &qword_10149F760);
  __chkstk_darwin(v10 - 8);
  v12 = &v50 - v11;
  type metadata accessor for CRLFileItem(0);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    swift_unknownObjectRetain();
    v15 = sub_1011F0C64();
    v16 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v16 == &off_101A241E8)
    {
      v50 = v4;
      v51 = v15;
      v52 = a1;
      v17 = qword_101AD89B8;
      swift_beginAccess();
      sub_100BF0AAC(v16 + v17, v9, type metadata accessor for CRLFileItemCRDTData);
      v18 = *(v14 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v18 == &off_101A241E8)
      {
        v19 = qword_101AD89B8;
        swift_beginAccess();
        sub_100BF0AAC(v18 + v19, v6, type metadata accessor for CRLFileItemCRDTData);
        sub_100BF0A64(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData, byte_1014BA950);
        CRStruct_1.actionUndoingDifference(from:)();
        sub_100BF0B14(v6, type metadata accessor for CRLFileItemCRDTData);
        sub_100BF0B14(v9, type metadata accessor for CRLFileItemCRDTData);
        v20 = sub_1005B981C(&qword_101A14FF0, &qword_10149F768);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v12, 1, v20) == 1)
        {
          sub_10000CAAC(v12, &qword_101A14FE8, &qword_10149F760);
          v53 = 0uLL;
          v54 = 0;
          v55 = 1;
        }

        else
        {
          v55 = v20;
          v22 = sub_10002C58C(&v53);
          (*(v21 + 32))(v22, v12, v20);
        }

        v23 = v51;
        swift_beginAccess();
        sub_100BC1DF4(&v53, 6);
        swift_endAccess();
        swift_unknownObjectRelease();
        return v23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v25 = objc_opt_self();
  v26 = [v25 _atomicIncrementAssertCount];
  v53.n128_u64[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v53, "Tried to generate undo from mismatched type", 43, 2u);
  StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFileItem.swift", 82, 2);
  v28 = String._bridgeToObjectiveC()();

  v29 = [v28 lastPathComponent];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v33 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v26;
  v35 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v35;
  v36 = sub_1005CF04C();
  *(inited + 104) = v36;
  *(inited + 72) = v27;
  *(inited + 136) = &type metadata for String;
  v37 = sub_1000053B0();
  *(inited + 112) = v30;
  *(inited + 120) = v32;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v37;
  *(inited + 152) = 88;
  v38 = v53.n128_u64[0];
  *(inited + 216) = v35;
  *(inited + 224) = v36;
  *(inited + 192) = v38;
  v39 = v27;
  v40 = v38;
  v41 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v42 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v42, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
  type metadata accessor for __VaListBuilder();
  v43 = swift_allocObject();
  v43[2] = 8;
  v43[3] = 0;
  v43[4] = 0;
  v43[5] = 0;
  v44 = __VaListBuilder.va_list()();
  StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
  v45 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFileItem.swift", 82, 2);
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to generate undo from mismatched type", 43, 2);
  v47 = String._bridgeToObjectiveC()();

  [v25 handleFailureInFunction:v45 file:v46 lineNumber:88 isFatal:1 format:v47 args:v44];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v48, v49);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100BED4DC(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A0ED80, &qword_101492220);
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = (&v59 - v6);
  v63 = type metadata accessor for CRLFileItemCRDTData(0);
  __chkstk_darwin(v63);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  v12 = sub_1005B981C(&qword_101A0ED88, &unk_101492228);
  __chkstk_darwin(v12 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v59 - v16);
  type metadata accessor for CRLFileItem(0);
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = &OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v20 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v21 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v22 = &off_101A241E8;
    if (*v21 == &off_101A241E8)
    {
      v23 = v18;
      v61 = v17;
      v62 = a1;
      v17 = &qword_101AD89B8;
      a1 = qword_101AD89B8;
      swift_beginAccess();
      sub_100BF0AAC(&v21[a1], v11, type metadata accessor for CRLFileItemCRDTData);
      v20 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v21 = *(v23 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v21 == &off_101A241E8)
      {
        v24 = qword_101AD89B8;
        swift_beginAccess();
        sub_100BF0AAC(&v21[v24], v8, type metadata accessor for CRLFileItemCRDTData);
        sub_100BF0A64(&qword_101A15000, type metadata accessor for CRLFileItemCRDTData, byte_1014BA780);
        swift_unknownObjectRetain();
        a1 = v61;
        CRType.observableDifference(from:)();
        sub_100BF0B14(v8, type metadata accessor for CRLFileItemCRDTData);
        sub_100BF0B14(v11, type metadata accessor for CRLFileItemCRDTData);
        sub_10000BE14(a1, v14, &qword_101A0ED88, &unk_101492228);
        if ((*(v64 + 48))(v14, 1, v65) == 1)
        {
          v25 = &qword_101A0ED88;
          v26 = &unk_101492228;
          v27 = v14;
          goto LABEL_8;
        }

        v17 = v60;
        sub_100A82230(v14, v60);
        v28 = v59;
        sub_10000BE14(v17, v59, &qword_101A0ED80, &qword_101492220);
        v29 = type metadata accessor for CRValueObservableDifference();
        if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
        {
          sub_10000CAAC(v17, &qword_101A0ED80, &qword_101492220);
          v25 = &qword_101A01F00;
          v26 = &unk_101492AB0;
          v27 = v28;
LABEL_8:
          sub_10000CAAC(v27, v25, v26);
          v21 = _swiftEmptyArrayStorage;
          if (_swiftEmptyArrayStorage[2])
          {
LABEL_9:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v66 = _swiftEmptyDictionarySingleton;
            sub_100A9B080(v21, 6, isUniquelyReferenced_nonNull_native);
            swift_unknownObjectRelease();
            v31 = v66;
            sub_10000CAAC(a1, &qword_101A0ED88, &unk_101492228);
            return v31;
          }

LABEL_12:
          sub_10000CAAC(a1, &qword_101A0ED88, &unk_101492228);

          swift_unknownObjectRelease();
          return _swiftEmptyDictionarySingleton;
        }

        sub_10000CAAC(v28, &qword_101A01F00, &unk_101492AB0);
        v21 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v19 = *(v21 + 2);
        v20 = *(v21 + 3);
        v22 = (v19 + 1);
        if (v19 < v20 >> 1)
        {
LABEL_11:
          sub_10000CAAC(v17, &qword_101A0ED80, &qword_101492220);
          *(v21 + 2) = v22;
          v32 = &v21[16 * v19];
          *(v32 + 4) = 0x614463696D6F7461;
          *(v32 + 5) = 0xEA00000000006174;
          if (*(v21 + 2))
          {
            goto LABEL_9;
          }

          goto LABEL_12;
        }

LABEL_16:
        v21 = sub_100024CBC((v20 > 1), v22, 1, v21);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v34 = objc_opt_self();
  v35 = [v34 _atomicIncrementAssertCount];
  v67 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v67, "Tried to create observable deltas from mismatched type", 54, 2u);
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFileItem.swift", 82, 2);
  v37 = String._bridgeToObjectiveC()();

  v38 = [v37 lastPathComponent];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v42 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v35;
  v44 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v44;
  v45 = sub_1005CF04C();
  *(inited + 104) = v45;
  *(inited + 72) = v36;
  *(inited + 136) = &type metadata for String;
  v46 = sub_1000053B0();
  *(inited + 112) = v39;
  *(inited + 120) = v41;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v46;
  *(inited + 152) = 100;
  v47 = v67;
  *(inited + 216) = v44;
  *(inited + 224) = v45;
  *(inited + 192) = v47;
  v48 = v36;
  v49 = v47;
  v50 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v51 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v51, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v52 = swift_allocObject();
  v52[2] = 8;
  v52[3] = 0;
  v52[4] = 0;
  v52[5] = 0;
  v53 = __VaListBuilder.va_list()();
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v54 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFileItem.swift", 82, 2);
  v55 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to create observable deltas from mismatched type", 54, 2);
  v56 = String._bridgeToObjectiveC()();

  [v34 handleFailureInFunction:v54 file:v55 lineNumber:100 isFatal:1 format:v56 args:v53];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v57, v58);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100BEDE08(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A14FE8, &qword_10149F760);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1005B981C(&qword_101A14FF0, &qword_10149F768);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  sub_1009B611C(a1);
  if (!v2)
  {
    v15 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v16 = *(a1 + v15);
    if (*(v16 + 16))
    {

      v17 = sub_1007C8124(6);
      if (v18)
      {
        sub_10000BE14(*(v16 + 56) + 32 * v17, &v22, &unk_1019F4D00, &unk_10146E7F0);

        v24[0] = v22;
        v24[1] = v23;
        if (*(&v23 + 1))
        {
          v19 = swift_dynamicCast();
          v20 = *(v12 + 56);
          v20(v10, v19 ^ 1u, 1, v11);
          if ((*(v12 + 48))(v10, 1, v11) != 1)
          {
            (*(v12 + 32))(v14, v10, v11);
            if (**(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A241E8)
            {
              (*(v12 + 16))(v7, v14, v11);
              v20(v7, 0, 1, v11);
              swift_beginAccess();
              type metadata accessor for CRLFileItemCRDTData(0);
              sub_100BF0A64(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData, byte_1014BA950);

              CRStruct_1.apply(_:)();
              swift_endAccess();

              sub_10000CAAC(v7, &qword_101A14FE8, &qword_10149F760);
              (*(v12 + 8))(v14, v11);
            }

            else
            {
              __break(1u);
            }

            return;
          }

LABEL_11:
          sub_10000CAAC(v10, &qword_101A14FE8, &qword_10149F760);
          return;
        }

        sub_10000CAAC(v24, &unk_1019F4D00, &unk_10146E7F0);
      }

      else
      {
      }
    }

    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_11;
  }
}

void sub_100BEE214(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = 0xEA00000000006174;
  if (a3 == 6)
  {
    goto LABEL_55;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
    swift_getObjectType();

    sub_1009BE298(a1, a2, a3, a4, v5);
    return;
  }

  v12 = a2[2];
  if (!v12)
  {
    return;
  }

  do
  {
    v13 = 0;
    v80 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
    v78 = OBJC_IVAR____TtC8Freeform11CRLFileItem__metadataPayload;
    v79 = a2 + 4;
    v72 = a1;
    v73 = v5;
    v71 = v12;
    while (1)
    {
      v14 = &v79[2 * v13];
      v16 = *v14;
      v15 = v14[1];
      v17 = *v14 == 0x614463696D6F7461 && v15 == v10;
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v18 = *(v5 + v78);
      *(v5 + v78) = 0;

      v82[3] = &type metadata for Bool;
      LOBYTE(v82[0]) = 1;
      swift_beginAccess();
      sub_10000BE14(v82, v81, &unk_1019F4D00, &unk_10146E7F0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(a1 + v80);
      *(a1 + v80) = 0x8000000000000000;
      v21 = sub_1007CF108();
      v23 = v20[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        type metadata accessor for CRLChangeProperty(0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v27 = v22;
      if (v20[3] >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v29 = v20;
          if ((v22 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v70 = v21;
          sub_100AA3EA4();
          v21 = v70;
          v29 = v20;
          if ((v27 & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_100A890C0(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_1007CF108();
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_63;
        }

        v29 = v20;
        if ((v27 & 1) == 0)
        {
LABEL_20:
          v29[(v21 >> 6) + 8] |= 1 << v21;
          *(v29[6] + 8 * v21) = 53;
          v30 = (v29[7] + 32 * v21);
          v31 = v81[1];
          *v30 = v81[0];
          v30[1] = v31;
          v32 = v29[2];
          v25 = __OFADD__(v32, 1);
          v33 = v32 + 1;
          if (v25)
          {
            goto LABEL_61;
          }

          v29[2] = v33;
          goto LABEL_6;
        }
      }

      sub_10002C638(v81, v29[7] + 32 * v21, &unk_1019F4D00, &unk_10146E7F0);
LABEL_6:
      *(a1 + v80) = v29;
      swift_endAccess();
      sub_10000CAAC(v82, &unk_1019F4D00, &unk_10146E7F0);
LABEL_7:
      if (++v13 == v12)
      {
        return;
      }
    }

    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    v35 = sub_1000053B0();
    *(inited + 32) = v16;
    v5 = (inited + 32);
    v76 = v35;
    *(inited + 64) = v35;
    *(inited + 40) = v15;
    v36 = objc_opt_self();

    v74 = v36;
    v75 = [v36 _atomicIncrementAssertCount];
    v82[0] = [objc_allocWithZone(NSString) init];
    v77 = inited;
    StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFileItem.swift", 82, 2);
    v38 = String._bridgeToObjectiveC()();

    v39 = [v38 lastPathComponent];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v43 = static OS_os_log.crlAssert;
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_10146CA70;
    *(v44 + 56) = &type metadata for Int32;
    *(v44 + 64) = &protocol witness table for Int32;
    *(v44 + 32) = v75;
    v45 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v44 + 96) = v45;
    v46 = sub_1005CF04C();
    *(v44 + 72) = v37;
    *(v44 + 136) = &type metadata for String;
    *(v44 + 144) = v76;
    *(v44 + 104) = v46;
    *(v44 + 112) = v40;
    *(v44 + 120) = v42;
    *(v44 + 176) = &type metadata for UInt;
    *(v44 + 152) = 140;
    v47 = v82[0];
    *(v44 + 216) = v45;
    *(v44 + 224) = v46;
    *(v44 + 184) = &protocol witness table for UInt;
    *(v44 + 192) = v47;
    v48 = v37;
    v49 = v47;
    v50 = static os_log_type_t.error.getter();
    sub_100005404(v43, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v44);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v51 = static os_log_type_t.error.getter();

    type metadata accessor for __VaListBuilder();
    v52 = swift_allocObject();
    v52[2] = 8;
    v52[3] = 0;
    v53 = v52 + 3;
    v52[4] = 0;
    v52[5] = 0;
    v54 = *(v77 + 16);
    if (!v54)
    {
LABEL_48:
      v66 = __VaListBuilder.va_list()();
      StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
      v67 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFileItem.swift", 82, 2);
      v68 = String._bridgeToObjectiveC()();

      v69 = String._bridgeToObjectiveC()();

      [v74 handleFailureInFunction:v67 file:v68 lineNumber:140 isFatal:0 format:v69 args:v66];

      swift_setDeallocating();
      swift_arrayDestroy();
      a1 = v72;
      v5 = v73;
      v10 = 0xEA00000000006174;
      v12 = v71;
      goto LABEL_7;
    }

    a1 = 0;
    while (2)
    {
      a2 = sub_100020E58(&v5[5 * a1], v5[5 * a1 + 3]);
      v55 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v56 = *v53;
      v57 = *(v55 + 16);
      v25 = __OFADD__(*v53, v57);
      v58 = *v53 + v57;
      if (v25)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v10 = v55;
      v59 = v52[4];
      if (v59 >= v58)
      {
LABEL_41:
        v60 = v52[5];
      }

      else
      {
        if (v59 + 0x4000000000000000 < 0)
        {
          goto LABEL_58;
        }

        a2 = v52[5];
        if (2 * v59 > v58)
        {
          v58 = 2 * v59;
        }

        v52[4] = v58;
        if ((v58 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_59;
        }

        v60 = swift_slowAlloc();
        v52[5] = v60;
        if (a2)
        {
          if (v60 != a2 || v60 >= &a2[v56])
          {
            memmove(v60, a2, 8 * v56);
          }

          a2 = v52;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          goto LABEL_41;
        }
      }

      if (!v60)
      {
        goto LABEL_62;
      }

      v62 = *(v10 + 16);
      if (!v62)
      {
LABEL_26:

        if (++a1 == v54)
        {
          goto LABEL_48;
        }

        continue;
      }

      break;
    }

    v63 = (v10 + 32);
    v64 = *v53;
    while (1)
    {
      v65 = *v63++;
      v60[v64] = v65;
      v64 = *v53 + 1;
      if (__OFADD__(*v53, 1))
      {
        break;
      }

      *v53 = v64;
      if (!--v62)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_55:

    v12 = a2[2];
  }

  while (v12);
}

void *sub_100BEED74()
{
  v1 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v1 - 8);
  v47 = &v43 - v2;
  v3 = type metadata accessor for URL();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for CRLAssetData(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_1019F8DB0, &unk_101471FC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for UTType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v0;
  type metadata accessor for CRLFileItem(0);
  sub_100BEFB3C(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v19 = &unk_101A1B880;
    v20 = &unk_10147AB00;
    v21 = v7;
LABEL_8:
    sub_10000CAAC(v21, v19, v20);
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_10;
  }

  sub_1006008F0(v7, v11);
  v22 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v23 = *&v22[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  v24 = *(v23 + 16);
  v25 = v22;
  os_unfair_lock_lock(v24);
  v26 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v27 = *&v25[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v27)
  {
    v28 = *&v25[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v29 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v30 = v25;
    v31 = sub_10001F1A0(v30);

    v32 = *&v25[v26];
    *&v25[v26] = v31;
    v28 = v31;

    v27 = 0;
  }

  v33 = *(v23 + 16);
  v34 = v27;
  os_unfair_lock_unlock(v33);
  v35 = v47;
  sub_10108CAF4(v11, 0, 3, 0, 0, v47);

  v37 = v45;
  v36 = v46;
  if ((*(v45 + 48))(v35, 1, v46) == 1)
  {
    sub_100BF0B14(v11, type metadata accessor for CRLAssetData);
    v19 = &unk_1019F33C0;
    v20 = &unk_101468A60;
    v21 = v35;
    goto LABEL_8;
  }

  v38 = v44;
  (*(v37 + 32))(v44, v35, v36);
  v39 = sub_1007AC4D0(0, v14);
  (*(v37 + 8))(v38, v36, v39);
  sub_100BF0B14(v11, type metadata accessor for CRLAssetData);
LABEL_10:
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000CAAC(v14, &unk_1019F8DB0, &unk_101471FC0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_10146C6B0;
    *(v41 + 32) = UTType.identifier.getter();
    *(v41 + 40) = v42;
    (*(v16 + 8))(v18, v15);
    return v41;
  }
}

double sub_100BEF42C(void *a1)
{
  v2 = v1;
  v3 = (*((swift_isaMask & *a1) + 0xE0))();
  [v3 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_1019F5730, off_10182F770);
  if (swift_dynamicCast())
  {
    [v36 size];
    if (sub_10011FBD0(v4, v5) || (sub_1011255D4() & 1) == 0 || (v6 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData, v7 = *(**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296), v8 = , v9 = v7(v8), , v10 = static NSObject.== infix(_:_:)(), v9, (v10 & 1) != 0))
    {
    }

    else
    {
      v35 = *(**(v2 + v6) + 304);

      v35(v36);
    }
  }

  else
  {
    v12 = objc_opt_self();
    v13 = [v12 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("updateGeometryToReplaceBoardItem(_:)", 36, 2);
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFileItem.swift", 82, 2);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v22;
    v23 = sub_1005CF04C();
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 177;
    v25 = v36;
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    v31 = __VaListBuilder.va_list()();
    StaticString.description.getter("updateGeometryToReplaceBoardItem(_:)", 36, 2);
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFileItem.swift", 82, 2);
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v34 = String._bridgeToObjectiveC()();

    [v12 handleFailureInFunction:v32 file:v33 lineNumber:177 isFatal:0 format:v34 args:v31];
  }

  return result;
}

id sub_100BEFA4C(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLFileItem(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for CRLFileItem(uint64_t a1)
{
  result = qword_101A14FD0;
  if (!qword_101A14FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100BEFB3C(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(*v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A241E8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A0B528, &unk_1014BA390);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100BF0AAC(v6, a1, type metadata accessor for CRLAssetData);
    sub_100BF0B14(v6, type metadata accessor for CRLFileItemAtomicDataStruct);
    v7 = type metadata accessor for CRLAssetData(0);
    (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100BEFCD0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_100BEFD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, __n128 a6)
{
  v114 = a4;
  v115 = a3;
  v108 = a1;
  v105 = type metadata accessor for CRLFileItemCRDTData(0);
  __chkstk_darwin(v105);
  v106 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v109 = &v83 - v10;
  v104 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v104);
  v101 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v102 = &v83 - v13;
  __chkstk_darwin(v14);
  v107 = &v83 - v15;
  v16 = sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  v97 = *(v16 - 8);
  v98 = v16;
  __chkstk_darwin(v16);
  v96 = &v83 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v92 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v94 = &v83 - v22;
  v93 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v93);
  v100 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v103 = &v83 - v25;
  __chkstk_darwin(v26);
  v113 = &v83 - v27;
  v28 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v28 - 8);
  v89 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v83 - v31;
  v33 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v33 - 8);
  v86 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v83 - v36;
  v111 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v111);
  v90 = &v83 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v91 = &v83 - v40;
  v42 = __chkstk_darwin(v41);
  v112 = &v83 - v43;
  if (a5)
  {
    v44 = a5;
  }

  else
  {
    v44 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];
  }

  v45 = *(v19 + 16);
  v87 = v19 + 16;
  v88 = v45;
  (v45)(v37, a2, v18, v42);
  v116 = v19;
  v46 = *(v19 + 56);
  v46(v37, 0, 1, v18);
  v126 = 1;
  v47 = type metadata accessor for CRLTableAnchorHint(0);
  v99 = a2;
  v48 = v47;
  v49 = *(v47 - 8);
  v84 = *(v49 + 56);
  v85 = v49 + 56;
  v84(v32, 1, 1, v47);
  v50 = a5;
  v51 = v44;
  v95 = v51;
  sub_101271CCC(v51, v135);

  v52 = v18;
  v110 = v18;
  v53 = v86;
  sub_10000BE14(v37, v86, &qword_1019F6990, &qword_10146D2F0);
  v54 = v89;
  sub_10000BE14(v32, v89, &unk_101A09DD0, &unk_101478C10);
  v55 = v112;
  v46(v112, 1, 1, v52);
  v56 = v111;
  v57 = *(v111 + 7);
  v58 = v55 + *(v111 + 6);
  v84((v55 + v57), 1, 1, v48);
  *(v55 + *(v56 + 8)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v53, v55, &qword_1019F6990, &qword_10146D2F0);
  sub_10000CAAC(v32, &unk_101A09DD0, &unk_101478C10);
  sub_10000CAAC(v37, &qword_1019F6990, &qword_10146D2F0);
  v59 = (v55 + *(v56 + 5));
  v60 = v135[1];
  *v59 = v135[0];
  v59[1] = v60;
  *v58 = 0u;
  *(v58 + 16) = 0u;
  *(v58 + 32) = 0u;
  *(v58 + 48) = 0u;
  *(v58 + 64) = v126;
  sub_10002C638(v54, v55 + v57, &unk_101A09DD0, &unk_101478C10);
  v61 = v55;
  v62 = v91;
  sub_100BF0AAC(v61, v91, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v127);
  v63 = v94;
  UUID.init()();
  v64 = v93;
  v89 = *(v93 + 52);
  v122 = v131;
  v123 = v132;
  v124 = v133;
  v125 = v134;
  v118 = v127;
  v119 = v128;
  v120 = v129;
  v121 = v130;
  sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
  v86 = sub_1007492B8();
  v65 = v113;
  CRRegister.init(wrappedValue:)();
  *(v65 + *(v64 + 56)) = _swiftEmptyDictionarySingleton;
  v66 = v110;
  v88(v92, v63, v110);
  CRRegister.init(_:)();
  sub_100BF0AAC(v62, v90, type metadata accessor for CRLBoardItemParentAffinity);
  sub_100BF0A64(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity, aM_15);
  CRRegister.init(_:)();
  LOBYTE(v118) = 0;
  CRRegister.init(_:)();
  LOBYTE(v118) = 0;
  CRRegister.init(_:)();
  *&v118 = 0;
  *(&v118 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v122 = v131;
  v123 = v132;
  v124 = v133;
  v125 = v134;
  v118 = v127;
  v119 = v128;
  v120 = v129;
  v121 = v130;
  v67 = v96;
  CRRegister.init(_:)();
  v68 = *(v116 + 8);
  v116 += 8;
  v93 = v68;
  v68(v63, v66);
  v111 = type metadata accessor for CRLBoardItemParentAffinity;
  sub_100BF0B14(v62, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v97 + 40))(v65 + v89, v67, v98);
  LOBYTE(v118) = 1;
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  v69 = v65;
  CRRegister.wrappedValue.setter();
  v70 = v107;
  sub_100BF0AAC(v115, v107, type metadata accessor for CRLAssetData);
  v71 = v104;
  sub_100BF0AAC(v114, v70 + *(v104 + 20), type metadata accessor for CRLAssetData);
  *(v70 + *(v71 + 24)) = _swiftEmptyDictionarySingleton;
  v72 = v102;
  sub_100BF0AAC(v70, v102, type metadata accessor for CRLFileItemAtomicDataStruct);
  v73 = v109;
  *&v109[*(v105 + 5)] = _swiftEmptyDictionarySingleton;
  sub_100BF0AAC(v72, v101, type metadata accessor for CRLFileItemAtomicDataStruct);
  sub_100BF0A64(&qword_101A14FE0, type metadata accessor for CRLFileItemAtomicDataStruct, byte_1014BA978);
  CRRegister.init(_:)();
  v105 = type metadata accessor for CRLFileItemAtomicDataStruct;
  sub_100BF0B14(v72, type metadata accessor for CRLFileItemAtomicDataStruct);
  v74 = v103;
  sub_10000BE14(v69, v103, &unk_101A226A0, &unk_10146E610);
  v75 = v106;
  sub_100BF0AAC(v73, v106, type metadata accessor for CRLFileItemCRDTData);
  *&v118 = 0x1000000000000;
  *(&v118 + 1) = 0x2000400000000;
  v119 = 0x1000000000000uLL;
  LOBYTE(v120) = 1;
  type metadata accessor for CRLFileItemData(0);
  v76 = swift_allocObject();
  sub_100BF0AAC(v75, v76 + qword_101AD89B8, type metadata accessor for CRLFileItemCRDTData);
  v77 = v100;
  sub_10000BE14(v74, v100, &unk_101A226A0, &unk_10146E610);
  sub_10000BE14(v77, v76 + *(*v76 + 736), &unk_101A226A0, &unk_10146E610);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v77, &unk_101A226A0, &unk_10146E610);
  sub_100BF0B14(v75, type metadata accessor for CRLFileItemCRDTData);
  sub_10000CAAC(v74, &unk_101A226A0, &unk_10146E610);
  v78 = sub_100747AF0(&v118, 2);
  v79 = objc_allocWithZone(type metadata accessor for CRLFileItem(0));
  *&v79[OBJC_IVAR____TtC8Freeform11CRLFileItem__metadataPayload] = 0;
  *&v79[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v108;
  *&v79[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v78;
  v80 = type metadata accessor for CRLBoardItemBase(0);
  v117.receiver = v79;
  v117.super_class = v80;
  v81 = objc_msgSendSuper2(&v117, "init");

  sub_100BF0B14(v114, type metadata accessor for CRLAssetData);
  sub_100BF0B14(v115, type metadata accessor for CRLAssetData);
  (v93)(v99, v110);
  sub_100BF0B14(v73, type metadata accessor for CRLFileItemCRDTData);
  sub_100BF0B14(v70, v105);
  sub_100BF0B14(v112, v111);
  sub_10000CAAC(v113, &unk_101A226A0, &unk_10146E610);
  return v81;
}

uint64_t sub_100BF0A64(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100BF0AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BF0B14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100BF0B74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100BF0BC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100BF0C28(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_100BF0C38(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a4;
  v7 = sub_1005B981C(&qword_101A15018, &unk_10149F8B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_100020E58(a1, a1[3]);
  sub_100BF1544();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = a3;
    v15 = v13;
    v16 = 1;
    sub_100024E98(a3, v13);
    sub_1006D63D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10002640C(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100BF0DD4()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_100BF0E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001015904F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
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
  return result;
}

uint64_t sub_100BF0EFC(uint64_t a1)
{
  v2 = sub_100BF1544();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100BF0F38(uint64_t a1)
{
  v2 = sub_100BF1544();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100BF0F74@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100BF1380(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100BF0FE8(uint64_t a1, unint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord(0);
  __chkstk_darwin(v12);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100BF1598(v15);
  Message.init(serializedData:extensions:partial:options:)();
  if (v2)
  {
    return sub_10002640C(a1, a2);
  }

  v17 = *v14;
  v18 = sub_100BF0C28(*v14);
  if (v18 == 6)
  {
    sub_100BF15F0();
    swift_allocError();
    *v19 = v17;
    swift_willThrow();
    sub_10002640C(a1, a2);
    return sub_100BF1644(v14, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord);
  }

  else
  {
    v22 = v18;
    sub_10084DD24(v14 + *(v12 + 24), v7);
    v20 = *(v26 + 48);
    if (v20(v7, 1, v8) == 1)
    {
      *v10 = xmmword_10146F370;
      UnknownStorage.init()();
      sub_10002640C(a1, a2);
      sub_100BF1644(v14, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord);
      if (v20(v7, 1, v8) != 1)
      {
        sub_1009DCE5C(v7);
      }
    }

    else
    {
      sub_10002640C(a1, a2);
      sub_100BF1644(v14, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord);
      sub_100683F6C(v7, v10);
    }

    sub_100024E98(*v10, *(v10 + 1));
    sub_100BF1644(v10, type metadata accessor for CRLProto_Data);
    return v22;
  }
}

uint64_t sub_100BF1380(void *a1)
{
  v3 = sub_1005B981C(&qword_101A15008, &qword_10149F8A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_100020E58(a1, v7);
  sub_100BF1544();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[16] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[15] = 1;
    sub_1006D6258();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100005070(a1);
  return v7;
}

unint64_t sub_100BF1544()
{
  result = qword_101A15010;
  if (!qword_101A15010)
  {
    result = swift_getWitnessTable(byte_10149F9D8, &type metadata for CRLRealTimeOpaqueChangeRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15010);
  }

  return result;
}

unint64_t sub_100BF1598(__n128 a1)
{
  result = qword_101A137B0;
  if (!qword_101A137B0)
  {
    v4 = type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord(255);
    result = swift_getWitnessTable("AV8", v4, v1, v2);
    atomic_store(result, &qword_101A137B0);
  }

  return result;
}

unint64_t sub_100BF15F0()
{
  result = qword_101A15020;
  if (!qword_101A15020)
  {
    result = swift_getWitnessTable("q<9", &type metadata for CRLRealTimeOpaqueChangeRecord.ProtobufCodingError, v0, v1);
    atomic_store(result, &qword_101A15020);
  }

  return result;
}

uint64_t sub_100BF1644(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100BF16C8()
{
  result = qword_101A15028;
  if (!qword_101A15028)
  {
    result = swift_getWitnessTable("i<9", &type metadata for CRLRealTimeOpaqueChangeRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15028);
  }

  return result;
}

unint64_t sub_100BF1720()
{
  result = qword_101A15030;
  if (!qword_101A15030)
  {
    result = swift_getWitnessTable("Y@9", &type metadata for CRLRealTimeOpaqueChangeRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15030);
  }

  return result;
}

unint64_t sub_100BF1778()
{
  result = qword_101A15038;
  if (!qword_101A15038)
  {
    result = swift_getWitnessTable("A@9", &type metadata for CRLRealTimeOpaqueChangeRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15038);
  }

  return result;
}

void sub_100BF1870()
{
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 520.0, 77.0}];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 setDirectionalLayoutMargins:{12.0, 16.0, 12.0, 12.0}];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v4 layer];

  LODWORD(v7) = 1041865114;
  [v6 setShadowOpacity:v7];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 layer];

  [v10 setShadowRadius:12.0];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 layer];

  [v13 setShadowOffset:{0.0, 1.0}];
}

id sub_100BF1A94()
{
  v1 = type metadata accessor for CRLiOSFeatureHintController();
  v36.receiver = v0;
  v36.super_class = v1;
  objc_msgSendSuper2(&v36, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  v6 = *&v0[OBJC_IVAR____TtC8Freeform27CRLiOSFeatureHintController_textHolder];
  [result addSubview:v6];

  [v6 addArrangedSubview:*&v0[OBJC_IVAR____TtC8Freeform27CRLiOSFeatureHintController_titleLabel]];
  [v6 addArrangedSubview:*&v0[OBJC_IVAR____TtC8Freeform27CRLiOSFeatureHintController_subtitleLabel]];
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  v34 = v1;
  v8 = *&v0[OBJC_IVAR____TtC8Freeform27CRLiOSFeatureHintController_closeButton];
  [result addSubview:v8];

  result = [v0 view];
  if (result)
  {
    v9 = result;
    v10 = [result layoutMarginsGuide];

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101471410;
    v12 = [v6 leadingAnchor];
    v13 = [v10 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    *(v11 + 32) = v14;
    v15 = [v6 topAnchor];
    v16 = [v10 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    *(v11 + 40) = v17;
    v18 = [v6 bottomAnchor];
    v19 = [v10 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    *(v11 + 48) = v20;
    v21 = [v8 leadingAnchor];
    v22 = [v6 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:12.0];

    *(v11 + 56) = v23;
    v24 = [v8 topAnchor];
    v25 = [v10 topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    *(v11 + 64) = v26;
    v27 = [v8 trailingAnchor];
    v28 = [v10 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v11 + 72) = v29;
    v30 = objc_opt_self();
    sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 activateConstraints:isa];

    sub_100BF1FF4();
    sub_1005B981C(&unk_101A150B0, &qword_10146F280);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10146BDE0;
    *(v32 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v32 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(v32 + 48) = type metadata accessor for UITraitVerticalSizeClass();
    *(v32 + 56) = &protocol witness table for UITraitVerticalSizeClass;
    v35[3] = v34;
    v35[0] = v0;
    v33 = v0;
    UIViewController.registerForTraitChanges(_:target:action:)();

    swift_unknownObjectRelease();
    return sub_100005070(v35);
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_100BF1FF4()
{
  v1 = [v0 presentingViewController];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 traitCollection];
  v4 = [v3 crl_isCompactWidth];

  if (v4)
  {
    goto LABEL_9;
  }

  v5 = *&v0[OBJC_IVAR____TtC8Freeform27CRLiOSFeatureHintController_subtitleLabel];
  v6 = [v5 text];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = String._bridgeToObjectiveC()();
  result = [v5 font];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;

  sub_1005B981C(&unk_101A11100, &unk_101471490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_100006370(0, &qword_101A0DE60, UIFont_ptr);
  *(inited + 40) = v10;
  v12 = NSFontAttributeName;
  v13 = v10;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_100BF2508(inited + 32);
  v14 = objc_allocWithZone(NSAttributedString);
  type metadata accessor for Key(0);
  sub_1005CAB2C();
  v15 = v8;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = [v14 initWithString:v15 attributes:isa];

  v18 = CTLineCreateWithAttributedString(v17);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v18, 0);
  width = BoundsWithOptions.size.width;

  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = [result window];

  if (!v21)
  {
LABEL_9:

LABEL_10:
    v5 = *&v0[OBJC_IVAR____TtC8Freeform27CRLiOSFeatureHintController_subtitleLabel];
    [v5 setNumberOfLines:0];
    [v5 invalidateIntrinsicContentSize];
    goto LABEL_11;
  }

  [v21 bounds];
  if (width + 12.0 + 44.0 >= CGRectGetWidth(v33))
  {

    goto LABEL_10;
  }

  [v5 setNumberOfLines:1];
  [v5 invalidateIntrinsicContentSize];

LABEL_11:
  v22 = *&v0[OBJC_IVAR____TtC8Freeform27CRLiOSFeatureHintController_titleLabel];
  [v22 intrinsicContentSize];
  v24 = v23;
  [v5 intrinsicContentSize];
  if (v24 > v25)
  {
    v25 = v24;
  }

  v26 = v25 + 16.0 + 12.0;
  [*&v0[OBJC_IVAR____TtC8Freeform27CRLiOSFeatureHintController_closeButton] intrinsicContentSize];
  v28 = v26 + v27 + 12.0 + 20.0;
  [v5 intrinsicContentSize];
  v30 = v29 + 24.0;
  [v22 intrinsicContentSize];
  return [v0 setPreferredContentSize:{v28, v30 + v31}];
}

id sub_100BF243C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSFeatureHintController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100BF2508(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A0DE70, "nd%");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSString sub_100BF2570()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD7858 = result;
  return result;
}

uint64_t sub_100BF25A8()
{
  sub_1005B981C(&qword_101A151E0, &unk_10149FAE0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t sub_100BF27B0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 16);
  swift_storeEnumTagMultiPayload();
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.boardStore;
  v10 = static os_log_type_t.default.getter();
  v11 = sub_100005404(v9, &_mh_execute_header, v10, "Writing some cloudkit changes into persisted caches alongside syncMetadata", 74, 2, _swiftEmptyArrayStorage);
  __chkstk_darwin(v11);
  v13[-4] = v8;
  v13[-3] = a1;
  v13[-2] = a2;
  v13[-1] = v7;
  OS_dispatch_queue.sync<A>(execute:)();
  return sub_10002C480(v7, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
}

uint64_t sub_100BF2950(uint64_t a1, int a2)
{
  v124 = a2;
  v131 = type metadata accessor for DispatchWorkItemFlags();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for DispatchQoS();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v123);
  v122 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v116 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v138 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v140 = &v116 - v13;
  __chkstk_darwin(v14);
  v137 = &v116 - v15;
  v116 = type metadata accessor for CRLBoardIdentifier(0);
  v118 = *(v116 - 8);
  __chkstk_darwin(v116);
  v139 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v121 = &v116 - v18;
  __chkstk_darwin(v19);
  v120 = &v116 - v20;
  __chkstk_darwin(v21);
  v133 = &v116 - v22;
  v23 = type metadata accessor for CRLZoneSyncResultScenarios(0);
  v147 = *(v23 - 8);
  __chkstk_darwin(v23 - 8);
  v132 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v153 = &v116 - v26;
  __chkstk_darwin(v27);
  v146 = &v116 - v28;
  v29 = sub_1005B981C(&qword_101A151C8, &qword_10149FAA0);
  __chkstk_darwin(v29 - 8);
  v31 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v149 = (&v116 - v33);
  v34 = a1 + 64;
  v35 = 1 << *(a1 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(a1 + 64);
  v151 = (v35 + 63) >> 6;
  v144 = (v10 + 56);
  v145 = (v10 + 48);
  v136 = (v10 + 32);
  v135 = (v10 + 16);
  v134 = CKCurrentUserDefaultName;
  v119 = (v10 + 8);

  v38 = 0;
  v148 = 0;
  v141 = _swiftEmptyDictionarySingleton;
  v142 = v8;
  v143 = v9;
  v152 = v31;
  v150 = a1 + 64;
  while (v37)
  {
    v39 = v38;
LABEL_16:
    v42 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v43 = v42 | (v39 << 6);
    v44 = *(*(a1 + 48) + 8 * v43);
    v45 = v146;
    sub_100BF595C(*(a1 + 56) + *(v147 + 72) * v43, v146, type metadata accessor for CRLZoneSyncResultScenarios);
    v46 = sub_1005B981C(&qword_101A151D0, &unk_10149FAA8);
    v47 = *(v46 + 48);
    v48 = v152;
    *v152 = v44;
    v49 = v45;
    v31 = v48;
    sub_100BF58F4(v49, &v48[v47], type metadata accessor for CRLZoneSyncResultScenarios);
    (*(*(v46 - 8) + 56))(v31, 0, 1, v46);
    v50 = v44;
LABEL_17:
    v51 = v149;
    sub_100BF5868(v31, v149);
    v52 = sub_1005B981C(&qword_101A151D0, &unk_10149FAA8);
    if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
    {

      sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
      v109 = static OS_dispatch_queue.main.getter();
      v110 = swift_allocObject();
      *(v110 + 16) = v141;
      *(v110 + 24) = v124 & 1;
      *(v110 + 32) = v125;
      v158 = sub_100BF5AF4;
      v159 = v110;
      aBlock = _NSConcreteStackBlock;
      v155 = *"";
      v156 = sub_100007638;
      v157 = &unk_101899FA0;
      v111 = _Block_copy(&aBlock);

      v112 = v126;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000065B0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
      sub_10000D494();
      v113 = v129;
      v114 = v131;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v111);

      (*(v130 + 8))(v113, v114);
      return (*(v127 + 8))(v112, v128);
    }

    v53 = *v51;
    sub_100BF58F4(v51 + *(v52 + 48), v153, type metadata accessor for CRLZoneSyncResultScenarios);
    v54 = [v53 zoneName];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58._countAndFlagsBits = 0x5F6472616F42;
    v58._object = 0xE600000000000000;
    v59 = String.hasPrefix(_:)(v58);
    if (v59)
    {
      aBlock = 95;
      v155 = 0xE100000000000000;
      __chkstk_darwin(v59);
      *(&v116 - 2) = &aBlock;
      v60 = v148;
      sub_100E8FE90(sub_100B53A30, (&v116 - 4), v55, v57);
      v148 = v60;
      if (v61)
      {

        v9 = v143;
        (*v144)(v8, 1, 1, v143);
        sub_10002C480(v153, type metadata accessor for CRLZoneSyncResultScenarios);
        v31 = v152;
        v34 = v150;
        goto LABEL_5;
      }

      v62 = String.index(after:)();
      sub_100DCBC88(v62, v55, v57);

      v8 = v142;
      static String._fromSubstring(_:)();

      UUID.init(uuidString:)();
      v9 = v143;
    }

    else
    {
      (*v144)(v8, 1, 1, v9);
    }

    v63 = (*v145)(v8, 1, v9);
    v31 = v152;
    v34 = v150;
    if (v63 == 1)
    {
      sub_10002C480(v153, type metadata accessor for CRLZoneSyncResultScenarios);

LABEL_5:
      sub_10000CAAC(v8, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      v117 = a1;
      v65 = *v136;
      v66 = v137;
      (*v136)(v137, v8, v9);
      v67 = *v135;
      (*v135)(v140, v66, v9);
      v68 = [v53 ownerName];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      if (v69 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v71 == v72)
      {
      }

      else
      {
        v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v73 & 1) == 0)
        {
          v76 = [v53 ownerName];
          v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v77;

          goto LABEL_31;
        }
      }

      v74 = 0;
      v75 = 0xE000000000000000;
LABEL_31:
      v67(v138, v140, v143);
      if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v75 == v78)
      {
        v79 = v53;
      }

      else
      {
        v79 = v53;
        v80 = v74;
        v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v81 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v80 = 0;
      v75 = 0xE000000000000000;
LABEL_36:
      v82 = *v119;
      v9 = v143;
      (*v119)(v140, v143);
      v82(v137, v9);
      v83 = v122;
      v65(v122, v138, v9);
      v84 = &v83[*(v123 + 20)];
      *v84 = v80;
      v84[1] = v75;
      v85 = v83;
      v86 = v121;
      sub_100BF58F4(v85, v121, type metadata accessor for CRLBoardIdentifierStorage);
      v87 = v86;
      v88 = v120;
      sub_100BF58F4(v87, v120, type metadata accessor for CRLBoardIdentifier);
      v89 = v88;
      v90 = v133;
      sub_100BF58F4(v89, v133, type metadata accessor for CRLBoardIdentifier);
      v91 = v139;
      sub_100BF595C(v90, v139, type metadata accessor for CRLBoardIdentifier);
      sub_100BF595C(v153, v132, type metadata accessor for CRLZoneSyncResultScenarios);
      v92 = v141;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v92;
      v95 = sub_1000486F0(v91);
      v97 = v92[2];
      v98 = (v94 & 1) == 0;
      v99 = v97 + v98;
      if (__OFADD__(v97, v98))
      {
        goto LABEL_48;
      }

      if (v92[3] >= v99)
      {
        a1 = v117;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v108 = v94;
          sub_100AA9EC0();
          v94 = v108;
        }
      }

      else
      {
        v100 = v94;
        sub_100A92CDC(v99, isUniquelyReferenced_nonNull_native);
        v101 = sub_1000486F0(v139);
        a1 = v117;
        if ((v100 & 1) != (v102 & 1))
        {
          goto LABEL_50;
        }

        v95 = v101;
        v94 = v100;
      }

      v34 = v150;
      v103 = aBlock;
      v141 = aBlock;
      if (v94)
      {
        sub_1009F77C0(v132, *(aBlock + 56) + *(v147 + 72) * v95, v96);

        sub_10002C480(v139, type metadata accessor for CRLBoardIdentifier);
        sub_10002C480(v133, type metadata accessor for CRLBoardIdentifier);
        sub_10002C480(v153, type metadata accessor for CRLZoneSyncResultScenarios);
        v31 = v152;
      }

      else
      {
        *(aBlock + 8 * (v95 >> 6) + 64) |= 1 << v95;
        v104 = v139;
        sub_100BF595C(v139, v103[6] + *(v118 + 72) * v95, type metadata accessor for CRLBoardIdentifier);
        sub_100BF58F4(v132, v103[7] + *(v147 + 72) * v95, type metadata accessor for CRLZoneSyncResultScenarios);

        sub_10002C480(v104, type metadata accessor for CRLBoardIdentifier);
        sub_10002C480(v133, type metadata accessor for CRLBoardIdentifier);
        sub_10002C480(v153, type metadata accessor for CRLZoneSyncResultScenarios);
        v105 = v103[2];
        v106 = __OFADD__(v105, 1);
        v107 = v105 + 1;
        if (v106)
        {
          goto LABEL_49;
        }

        v103[2] = v107;
        v31 = v152;
        v34 = v150;
      }
    }
  }

  if (v151 <= v38 + 1)
  {
    v40 = v38 + 1;
  }

  else
  {
    v40 = v151;
  }

  v41 = v40 - 1;
  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v151)
    {
      v64 = sub_1005B981C(&qword_101A151D0, &unk_10149FAA8);
      (*(*(v64 - 8) + 56))(v31, 1, 1, v64);
      v37 = 0;
      v38 = v41;
      goto LABEL_17;
    }

    v37 = *(v34 + 8 * v39);
    ++v38;
    if (v37)
    {
      v38 = v39;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100BF3A1C(uint64_t a1, char a2, uint64_t a3)
{
  sub_1005B981C(&qword_101A12AA8, &unk_10149FAD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = 0xD000000000000026;
  *(inited + 40) = 0x8000000101590790;
  v7 = sub_1005B981C(&qword_101A151D8, &qword_1014C5E70);
  *(inited + 48) = a1;
  *(inited + 72) = v7;
  *(inited + 80) = 0xD000000000000029;
  *(inited + 88) = 0x80000001015907C0;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = a2;

  v8 = sub_10000BCE4(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_101A2F5D0, &qword_10149E8C0);
  swift_arrayDestroy();
  v9 = [objc_opt_self() defaultCenter];
  if (qword_1019F1EA0 != -1)
  {
    swift_once();
  }

  v10 = qword_101AD7858;
  sub_10007941C(v8);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 postNotificationName:v10 object:a3 userInfo:isa];
}

void sub_100BF3BF4(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  v5 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v5 - 8);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v49 - v8;
  v9 = type metadata accessor for CRLZoneSyncResultScenarios(0);
  v54 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_101A151C8, &qword_10149FAA0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = (&v49 - v15);
  if (v4 == 2)
  {
    v51 = v2;
    v17 = *(a1 + 64);
    v57 = a1 + 64;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    v56 = a1;
    v49 = v16;
    v50 = v13;
    v23 = v57;
    if (!v20)
    {
      goto LABEL_8;
    }

    do
    {
      while (1)
      {
        v24 = v22;
LABEL_16:
        v27 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v28 = v27 | (v24 << 6);
        v29 = *(a1 + 56);
        v30 = *(*(a1 + 48) + 8 * v28);
        v31 = v53;
        sub_100BF595C(v29 + *(v54 + 72) * v28, v53, type metadata accessor for CRLZoneSyncResultScenarios);
        v32 = sub_1005B981C(&qword_101A151D0, &unk_10149FAA8);
        v33 = *(v32 + 48);
        *v13 = v30;
        sub_100BF58F4(v31, v13 + v33, type metadata accessor for CRLZoneSyncResultScenarios);
        (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
        v34 = v30;
LABEL_17:
        sub_100BF5868(v13, v16);
        v35 = sub_1005B981C(&qword_101A151D0, &unk_10149FAA8);
        if ((*(*(v35 - 8) + 48))(v16, 1, v35) == 1)
        {
          a1 = v56;

          goto LABEL_31;
        }

        v36 = *v16;
        v37 = *(v35 + 48);
        v38 = *(v16 + v37);
        sub_10002C480(v16 + v37, type metadata accessor for CRLZoneSyncResultScenarios);
        if (v38 == 1)
        {
          break;
        }

        a1 = v56;
        v23 = v57;
        if (!v20)
        {
          goto LABEL_8;
        }
      }

      v39 = type metadata accessor for TaskPriority();
      v40 = *(v39 - 8);
      v41 = v58;
      (*(v40 + 56))(v58, 1, 1, v39);
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v43 = v52;
      v42[4] = v51;
      v42[5] = v36;
      sub_100041E54(v41, v43);
      LODWORD(v41) = (*(v40 + 48))(v43, 1, v39);

      v55 = v36;

      if (v41 == 1)
      {
        sub_10000CAAC(v43, &qword_1019FB750, &qword_10146F1B0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v40 + 8))(v43, v39);
      }

      v44 = v42[2];
      swift_unknownObjectRetain();

      v13 = v50;
      if (v44)
      {
        swift_getObjectType();
        v45 = dispatch thunk of Actor.unownedExecutor.getter();
        v47 = v46;
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0;
        v47 = 0;
      }

      sub_10000CAAC(v58, &qword_1019FB750, &qword_10146F1B0);
      if (v47 | v45)
      {
        v59 = 0;
        v60 = 0;
        v61 = v45;
        v62 = v47;
      }

      a1 = v56;
      swift_task_create();

      v16 = v49;
      v23 = v57;
    }

    while (v20);
LABEL_8:
    if (v21 <= v22 + 1)
    {
      v25 = v22 + 1;
    }

    else
    {
      v25 = v21;
    }

    v26 = v25 - 1;
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
        v48 = sub_1005B981C(&qword_101A151D0, &unk_10149FAA8);
        (*(*(v48 - 8) + 56))(v13, 1, 1, v48);
        v20 = 0;
        v22 = v26;
        goto LABEL_17;
      }

      v20 = *(v23 + 8 * v24);
      ++v22;
      if (v20)
      {
        v22 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:
    sub_100BF2950(a1, 1);
  }
}

uint64_t sub_100BF4228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100BF4248, 0, 0);
}

uint64_t sub_100BF4248()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100798910;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000002FLL, 0x8000000101590760, sub_100BF5AEC, v3, &type metadata for () + 8);
}

uint64_t sub_100BF4340(uint64_t a1)
{
  v123 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v123);
  v122 = v114 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v3 - 8);
  v5 = v114 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v132 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v138 = v114 - v10;
  __chkstk_darwin(v11);
  v131 = v114 - v12;
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v115 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v114[0] = v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v117 = v114 - v16;
  __chkstk_darwin(v17);
  v121 = v114 - v18;
  __chkstk_darwin(v19);
  v120 = v114 - v20;
  v114[2] = v21;
  __chkstk_darwin(v22);
  v119 = v114 - v23;
  v24 = type metadata accessor for CRLZoneSyncResultScenarios(0);
  v134 = *(v24 - 8);
  __chkstk_darwin(v24 - 8);
  v26 = v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v133 = v114 - v28;
  v29 = sub_1005B981C(&qword_101A151C8, &qword_10149FAA0);
  __chkstk_darwin(v29 - 8);
  v140 = (v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v33 = (v114 - v32);
  v147 = _swiftEmptySetSingleton;
  v34 = *(a1 + 64);
  v125 = a1 + 64;
  v35 = 1 << *(a1 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v124 = (v35 + 63) >> 6;
  v130 = (v7 + 56);
  v129 = (v7 + 48);
  v128 = (v7 + 32);
  v127 = (v7 + 16);
  v126 = CKCurrentUserDefaultName;
  v118 = (v7 + 8);
  v114[1] = v145;
  v135 = a1;

  v38 = 0;
  v137 = 0;
  v39 = &qword_101A151D0;
  v136 = v5;
  v141 = v6;
  v142 = v33;
  v139 = v26;
  while (1)
  {
    if (!v37)
    {
      if (v124 <= v38 + 1)
      {
        v42 = v38 + 1;
      }

      else
      {
        v42 = v124;
      }

      v43 = v42 - 1;
      v44 = v140;
      while (1)
      {
        v41 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v41 >= v124)
        {
          v73 = sub_1005B981C(&qword_101A151D0, &unk_10149FAA8);
          (*(*(v73 - 8) + 56))(v44, 1, 1, v73);
          v37 = 0;
          v38 = v43;
          goto LABEL_18;
        }

        v37 = *(v125 + 8 * v41);
        ++v38;
        if (v37)
        {
          v40 = v6;
          v38 = v41;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      swift_once();
      goto LABEL_46;
    }

    v40 = v6;
    v41 = v38;
LABEL_17:
    v45 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v46 = v45 | (v41 << 6);
    v47 = *(*(v135 + 48) + 8 * v46);
    v48 = v133;
    sub_100BF595C(*(v135 + 56) + *(v134 + 72) * v46, v133, type metadata accessor for CRLZoneSyncResultScenarios);
    v49 = sub_1005B981C(&qword_101A151D0, &unk_10149FAA8);
    v50 = *(v49 + 48);
    v44 = v140;
    *v140 = v47;
    sub_100BF58F4(v48, v44 + v50, type metadata accessor for CRLZoneSyncResultScenarios);
    (*(*(v49 - 8) + 56))(v44, 0, 1, v49);
    v51 = v47;
    v33 = v142;
    v6 = v40;
LABEL_18:
    sub_100BF5868(v44, v33);
    v52 = sub_1005B981C(&qword_101A151D0, &unk_10149FAA8);
    if ((*(*(v52 - 8) + 48))(v33, 1, v52) == 1)
    {
      break;
    }

    v53 = *v33;
    sub_100BF58F4(v33 + *(v52 + 48), v26, type metadata accessor for CRLZoneSyncResultScenarios);
    v54 = [v53 zoneName];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58._countAndFlagsBits = 0x5F6472616F42;
    v58._object = 0xE600000000000000;
    v59 = String.hasPrefix(_:)(v58);
    if (v59)
    {
      aBlock = 95;
      v144 = 0xE100000000000000;
      __chkstk_darwin(v59);
      v114[-2] = &aBlock;
      v60 = v137;
      sub_100E8FE90(sub_1008335B4, &v114[-4], v55, v57);
      v137 = v60;
      if (v61)
      {

        v62 = v136;
        (*v130)(v136, 1, 1, v6);
        v26 = v139;
        v33 = v142;
        goto LABEL_5;
      }

      v63 = String.index(after:)();
      sub_100DCBC88(v63, v55, v57);

      v6 = v141;
      static String._fromSubstring(_:)();

      v62 = v136;
      UUID.init(uuidString:)();
      v33 = v142;
    }

    else
    {
      v62 = v136;
      (*v130)(v136, 1, 1, v6);
    }

    if ((*v129)(v62, 1, v6) == 1)
    {

      v26 = v139;
LABEL_5:
      sub_10000CAAC(v62, &qword_1019F6990, &qword_10146D2F0);
      goto LABEL_6;
    }

    v64 = v6;
    v65 = *v128;
    v66 = v131;
    (*v128)(v131, v62, v64);
    v67 = *v127;
    (*v127)(v138, v66, v64);
    v68 = [v53 ownerName];
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    if (v69 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v71 == v72)
    {
    }

    else
    {
      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v74 & 1) == 0)
      {
        v77 = [v53 ownerName];
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v78;

        goto LABEL_32;
      }
    }

    v75 = 0;
    v76 = 0xE000000000000000;
LABEL_32:
    v67(v132, v138, v141);
    if (v75 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v76 == v79)
    {
    }

    else
    {
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v80 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v75 = 0;
    v76 = 0xE000000000000000;
LABEL_37:
    v81 = *v118;
    v82 = v141;
    (*v118)(v138, v141);
    v81(v131, v82);
    v83 = v122;
    v65(v122, v132, v82);
    v84 = (v83 + *(v123 + 20));
    *v84 = v75;
    v84[1] = v76;
    v85 = v121;
    sub_100BF58F4(v83, v121, type metadata accessor for CRLBoardIdentifierStorage);
    v86 = v85;
    v87 = v120;
    sub_100BF58F4(v86, v120, type metadata accessor for CRLBoardIdentifier);
    v88 = v119;
    sub_100BF58F4(v87, v119, type metadata accessor for CRLBoardIdentifier);
    v26 = v139;
    if (v139[2])
    {
      v89 = v116[2];
      v90 = *&v89[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
      v91 = v117;
      sub_100BF595C(v88, v117, type metadata accessor for CRLBoardIdentifier);
      v92 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v93 = swift_allocObject();
      *(v93 + 16) = 1;
      *(v93 + 24) = v89;
      sub_100BF58F4(v91, v93 + v92, type metadata accessor for CRLBoardIdentifier);
      v94 = swift_allocObject();
      *(v94 + 16) = sub_100BF59C4;
      *(v94 + 24) = v93;
      v145[2] = sub_10002AAE4;
      v146 = v94;
      aBlock = _NSConcreteStackBlock;
      v144 = *"";
      v145[0] = sub_10002AAB8;
      v145[1] = &unk_101899F28;
      v95 = _Block_copy(&aBlock);
      v96 = v88;
      v39 = v146;
      v97 = v89;

      dispatch_sync(v90, v95);

      _Block_release(v95);
      LOBYTE(v95) = swift_isEscapingClosureAtFileLocation();

      if (v95)
      {
        goto LABEL_55;
      }

      sub_10002C480(v96, type metadata accessor for CRLBoardIdentifier);
      v6 = v141;
      v26 = v139;
      v33 = v142;
    }

    else
    {
      if (v139[1] == 1)
      {
      }

      else
      {
        v98 = v114[0];
        sub_100BF595C(v88, v114[0], type metadata accessor for CRLBoardIdentifier);
        v99 = v117;
        sub_100031F10(v117, v98);

        sub_10002C480(v99, type metadata accessor for CRLBoardIdentifier);
      }

      sub_10002C480(v88, type metadata accessor for CRLBoardIdentifier);
      v6 = v141;
    }

LABEL_6:
    v39 = &qword_101A151D0;
    sub_10002C480(v26, type metadata accessor for CRLZoneSyncResultScenarios);
  }

  v39 = v116;
  v101 = v147;
  __chkstk_darwin(v100);
  v114[-2] = v102;
  v114[-1] = v101;
  v103 = v137;
  OS_dispatch_queue.sync<A>(execute:)();

  if (!v103)
  {
    return sub_100BF2950(v135, 0);
  }

  if (qword_1019F2270 != -1)
  {
    goto LABEL_56;
  }

LABEL_46:
  v104 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  v106 = inited;
  *(inited + 16) = xmmword_10146BDE0;
  if (*(v39 + 24))
  {
    v107 = 0x5320646572616853;
  }

  else
  {
    v107 = 0x2065746176697250;
  }

  if (*(v39 + 24))
  {
    v108 = 0xEC00000065706F63;
  }

  else
  {
    v108 = 0xED000065706F6353;
  }

  *(inited + 56) = &type metadata for String;
  v109 = sub_1000053B0();
  v106[8] = v109;
  v106[4] = v107;
  v106[5] = v108;
  swift_getErrorValue();
  v110 = Error.localizedDescription.getter();
  v106[12] = &type metadata for String;
  v106[13] = v109;
  v106[9] = v110;
  v106[10] = v111;
  v112 = static os_log_type_t.error.getter();
  sub_100005404(v104, &_mh_execute_header, v112, "<%{public}@> Failed to remove board identifiers from sync reset boards with error %@", 84, 2, v106);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  return sub_100BF2950(v135, 0);
}

uint64_t sub_100BF540C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 24);
  v4 = [*a1 ownerName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v10 = v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8;
  if (v3)
  {
    if (v10)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v15 = [v2 ownerName];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v17;

        if (v16)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }
    }

    v12 = 0xE000000000000000;
LABEL_17:
    if (v12 == 0xE000000000000000)
    {

      v18 = 0;
      return v18 & 1;
    }

LABEL_19:
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v18 = v19 ^ 1;
    return v18 & 1;
  }

  if (v10)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      v20 = [v2 ownerName];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v22;

      if (v21)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  v14 = 0xE000000000000000;
LABEL_21:
  if (v14 == 0xE000000000000000)
  {

    v18 = 1;
    return v18 & 1;
  }

LABEL_24:
  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v24 & 1;
}

uint64_t sub_100BF5634()
{

  return swift_deallocClassInstance();
}

unint64_t *sub_100BF566C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_100BF5708(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_100BF5708(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v23 = *(*(a3 + 48) + 8 * v15);
    v16 = v23;
    v17 = sub_100BF540C(&v23, a4);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_16:

        sub_100035D8C(a1, a2, v21, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100BF5868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A151C8, &qword_10149FAA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100BF58F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BF595C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_100BF59C4()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100E517DC(v2, v3, v4);
}

uint64_t sub_100BF5A2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_100BF4228(a1, v4, v5, v7, v6);
}

void sub_100BF5B4C(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  sub_100601584(v3, &v70);
  if (!*(&v71 + 1))
  {
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_100601584(a1, &v70);
  if (*(&v71 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = sub_100120944(*&v62, *&v62, a3);
      *(a2 + 24) = &type metadata for CGFloat;
      *a2 = v7;
      return;
    }
  }

  else
  {
LABEL_6:
    sub_1005E09AC(&v70);
  }

LABEL_7:
  sub_100601584(v3, &v70);
  if (!*(&v71 + 1))
  {
LABEL_12:
    sub_1005E09AC(&v70);
    goto LABEL_13;
  }

  type metadata accessor for CGPoint(0);
  v9 = v8;
  if (swift_dynamicCast())
  {
    v11 = *(&v62 + 1);
    v10 = *&v62;
    sub_100601584(a1, &v70);
    if (*(&v71 + 1))
    {
      if (swift_dynamicCast())
      {
        goto LABEL_23;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  sub_100601584(v3, &v70);
  if (!*(&v71 + 1))
  {
    goto LABEL_18;
  }

  type metadata accessor for CGRect(0);
  v13 = v12;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_100601584(a1, &v70);
  if (*(&v71 + 1))
  {
    if (swift_dynamicCast())
    {
      v14 = sub_100120AD8(*&v62, *(&v62 + 1), *&v63, *(&v63 + 1), *&v62, *(&v62 + 1), *&v63, *(&v63 + 1), a3);
      v16 = v15;
      v18 = v17;
      v20 = v19;
      *(a2 + 24) = v13;
      v21 = swift_allocObject();
      *a2 = v21;
      v21[2] = v14;
      *(v21 + 3) = v16;
      *(v21 + 4) = v18;
      *(v21 + 5) = v20;
      return;
    }
  }

  else
  {
LABEL_18:
    sub_1005E09AC(&v70);
  }

LABEL_19:
  sub_100601584(v3, &v70);
  if (!*(&v71 + 1))
  {
LABEL_24:
    sub_1005E09AC(&v70);
    goto LABEL_25;
  }

  type metadata accessor for CGSize(0);
  v9 = v22;
  if (swift_dynamicCast())
  {
    v11 = *(&v62 + 1);
    v10 = *&v62;
    sub_100601584(a1, &v70);
    if (*(&v71 + 1))
    {
      if (swift_dynamicCast())
      {
LABEL_23:
        v23 = sub_100120ABC(v10, v11, *&v62, *(&v62 + 1), a3);
        *(a2 + 24) = v9;
        *a2 = v23;
        *(a2 + 8) = v24;
        return;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:
  sub_100601584(v3, &v70);
  if (!*(&v71 + 1))
  {
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_100601584(a1, &v70);
  if (*(&v71 + 1))
  {
    if (swift_dynamicCast())
    {
      v25 = ((1.0 - a3) * *&v62) + (*&v62 * a3);
      *(a2 + 24) = &type metadata for Float;
      *a2 = v25;
      return;
    }
  }

  else
  {
LABEL_30:
    sub_1005E09AC(&v70);
  }

LABEL_31:
  sub_100601584(v3, v78);
  if (!v79)
  {
    v29 = v78;
LABEL_38:
    sub_1005E09AC(v29);
    goto LABEL_39;
  }

  type metadata accessor for CATransform3D(0);
  v27 = v26;
  if (swift_dynamicCast())
  {
    v66 = v74;
    v67 = v75;
    v68 = v76;
    v69 = v77;
    v62 = v70;
    v63 = v71;
    v64 = v72;
    v65 = v73;
    sub_100601584(a1, v60);
    if (v61)
    {
      if (swift_dynamicCast())
      {
        v55 = *&CATransform3DIdentity.m31;
        v56 = *&CATransform3DIdentity.m33;
        v57 = *&CATransform3DIdentity.m41;
        v58 = *&CATransform3DIdentity.m43;
        v51 = *&CATransform3DIdentity.m11;
        v52 = *&CATransform3DIdentity.m13;
        v53 = *&CATransform3DIdentity.m21;
        v54 = *&CATransform3DIdentity.m23;
        CATransform3DInterpolate();
        *(a2 + 24) = v27;
        v28 = swift_allocObject();
        *a2 = v28;
        v28[5] = v55;
        v28[6] = v56;
        v28[7] = v57;
        v28[8] = v58;
        v28[1] = v51;
        v28[2] = v52;
        v28[3] = v53;
        v28[4] = v54;
        return;
      }

      goto LABEL_39;
    }

    v29 = v60;
    goto LABEL_38;
  }

LABEL_39:
  sub_100601584(v3, &v62);
  if (!*(&v63 + 1))
  {
    goto LABEL_44;
  }

  type metadata accessor for CGAffineTransform(0);
  v31 = v30;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_45;
  }

  v47 = v71;
  v49 = v70;
  v32 = v72;
  sub_100601584(a1, &v62);
  if (*(&v63 + 1))
  {
    if (swift_dynamicCast())
    {
      v33 = v70;
      v34 = v71;
      v35 = v72;
      v70 = v49;
      v71 = v47;
      v72 = v32;
      v62 = v33;
      v63 = v34;
      v64 = v35;
      sub_10013A468(&v70, &v62, v59, a3);
      v36 = v59[2];
      v48 = v59[1];
      v50 = v59[0];
      *(a2 + 24) = v31;
      v37 = swift_allocObject();
      *a2 = v37;
      v37[1] = v50;
      v37[2] = v48;
      v37[3] = v36;
      return;
    }
  }

  else
  {
LABEL_44:
    sub_1005E09AC(&v62);
  }

LABEL_45:
  sub_1005B981C(&unk_1019F4D00, &unk_10146E7F0);
  v38 = Optional._bridgeToObjectiveC()();
  v39 = CFGetTypeID(v38);
  swift_unknownObjectRelease();
  if (v39 == CGColorGetTypeID())
  {
    sub_100601584(v3, &v62);
    if (*(&v63 + 1))
    {
      sub_10000BF3C(&v62, &v70);
      type metadata accessor for CGColor(0);
      v41 = v40;
      swift_dynamicCast();
      v42 = *&v59[0];
      sub_100601584(a1, &v62);
      if (*(&v63 + 1))
      {
        sub_10000BF3C(&v62, &v70);
        swift_dynamicCast();
        v43 = *&v59[0];
        sub_100BF635C(*&v59[0], a3);
        v45 = v44;
        *(a2 + 24) = v41;

        *a2 = v45;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (lroundf(a3) < 1)
    {
      v46 = v3;
    }

    else
    {
      v46 = a1;
    }

    sub_100BF6718(v46, a2);
  }
}

uint64_t sub_100BF62A8(uint64_t a1, float a2)
{
  ObjectType = swift_getObjectType();
  v8 = v2;
  v7 = swift_dynamicCastUnknownClassUnconditional();
  if (lroundf(a2) <= 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = &v7;
  }

  (*(*(ObjectType - 8) + 16))(&v9, v5, ObjectType);
  return v9;
}

void sub_100BF635C(void *a1, float a2)
{
  swift_getObjectType();
  v4 = CGColorRef.components.getter();
  if (!v4)
  {
LABEL_10:
    if (lroundf(a2) <= 0)
    {

      v16 = color;
    }

    else
    {
      swift_dynamicCastUnknownClassUnconditional();
      v15 = a1;
    }

    return;
  }

  v5 = v4;
  v6 = CGColorRef.components.getter();
  if (!v6)
  {

    goto LABEL_10;
  }

  v7 = v6;
  v8 = CGColorGetColorSpace(color);
  v9 = CGColorGetColorSpace(a1);
  if (lroundf(a2) <= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  if (v11)
  {

    sub_100BF6518(v5, v7, a2);
    v13 = v12;

    v14 = CGColorCreate(v11, (v13 + 32));

    if (v14)
    {
      swift_dynamicCastUnknownClassUnconditional();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100BF6518(uint64_t a1, uint64_t a2, float a3)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7 >= v6)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  sub_100776504(0, v8, 0);
  v31 = v7;
  v32 = v6;
  v29 = a1;
  v30 = a2;
  if (v8)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    v11 = v8;
    while (v6)
    {
      if (!v7)
      {
        goto LABEL_22;
      }

      v12 = *v9;
      v13 = *v10;
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        v17 = *v9;
        v18 = *v10;
        sub_100776504((v14 > 1), v15 + 1, 1);
        v13 = v18;
        v12 = v17;
      }

      v16 = sub_100120944(v12, v13, a3);
      _swiftEmptyArrayStorage[2] = v15 + 1;
      *&_swiftEmptyArrayStorage[v15 + 4] = v16;
      --v7;
      --v6;
      ++v10;
      ++v9;
      if (!--v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    if (v32 <= v31)
    {
      return;
    }

    v19 = v30 + 32;
    v20 = a3;
    while (v8 < v32)
    {
      v21 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_24;
      }

      if (v31 != v8)
      {
        if (v8 >= v31)
        {
          goto LABEL_25;
        }

        v22 = *(v29 + 32 + 8 * v8);
        v23 = *(v19 + 8 * v8);
        v25 = _swiftEmptyArrayStorage[2];
        v24 = _swiftEmptyArrayStorage[3];
        if (v25 >= v24 >> 1)
        {
          v27 = *(v29 + 32 + 8 * v8);
          v28 = *(v19 + 8 * v8);
          sub_100776504((v24 > 1), v25 + 1, 1);
          v23 = v28;
          v22 = v27;
        }

        v26 = sub_100120944(v22, v23, v20);
        _swiftEmptyArrayStorage[2] = v25 + 1;
        *&_swiftEmptyArrayStorage[v25 + 4] = v26;
        ++v8;
        if (v21 != v32)
        {
          continue;
        }
      }

      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_100BF6750(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_100BF67AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

id sub_100BF6838()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.Shadow.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Shadow.version.unsafeMutableAddressor()
{
  if (qword_1019F1EA8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Shadow.version;
}

id static TSContentLanguage.Models.Shadow.version.getter()
{
  if (qword_1019F1EA8 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.Shadow.version;

  return v1;
}

void *TSContentLanguage.Models.Shadow.shadow.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[9];
  v15 = v1[8];
  v12 = v9 & 0x3FFFFFFFFFFFFFFFLL;
  if (!(v9 >> 62))
  {
    a1[3] = &type metadata for TSContentLanguage.Models.ContactShadow;
    v13 = sub_100BF6B14();
    goto LABEL_5;
  }

  if (v9 >> 62 == 1)
  {
    a1[3] = &type metadata for TSContentLanguage.Models.CurvedShadow;
    v13 = sub_100BF6AC0();
LABEL_5:
    a1[4] = v13;
    result = swift_allocObject();
    *a1 = result;
    result[2] = v4;
    result[3] = v3;
    result[4] = v6;
    result[5] = v5;
    result[6] = v8;
    result[7] = v7;
    result[8] = v12;
    result[9] = v10;
    result[10] = v15;
    result[11] = v11;
    return result;
  }

  a1[3] = &type metadata for TSContentLanguage.Models.DropShadow;
  a1[4] = sub_100BF6A6C();
  result = swift_allocObject();
  *a1 = result;
  result[2] = v4;
  result[3] = v3;
  result[4] = v6;
  result[5] = v5;
  result[6] = v8;
  result[7] = v7;
  result[8] = v12;
  result[9] = v10;
  result[10] = v15;
  return result;
}

unint64_t sub_100BF6A6C()
{
  result = qword_101A151E8;
  if (!qword_101A151E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.DropShadow, &type metadata for TSContentLanguage.Models.DropShadow, v0, v1);
    atomic_store(result, &qword_101A151E8);
  }

  return result;
}

unint64_t sub_100BF6AC0()
{
  result = qword_101A151F0;
  if (!qword_101A151F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.CurvedShadow, &type metadata for TSContentLanguage.Models.CurvedShadow, v0, v1);
    atomic_store(result, &qword_101A151F0);
  }

  return result;
}

unint64_t sub_100BF6B14()
{
  result = qword_101A151F8;
  if (!qword_101A151F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.ContactShadow, &type metadata for TSContentLanguage.Models.ContactShadow, v0, v1);
    atomic_store(result, &qword_101A151F8);
  }

  return result;
}

void TSContentLanguage.Models.Shadow.angle.setter(double a1)
{
  v2 = *(v1 + 48) >> 62;
  v3 = *(v1 + 48);
  v4 = v3 | 0x4000000000000000;
  if (v2 != 1)
  {
    v4 = v3 | 0x8000000000000000;
  }

  if (v2)
  {
    v3 = v4;
  }

  *v1 = a1;
  *(v1 + 48) = v3;
}

uint64_t (*TSContentLanguage.Models.Shadow.angle.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_100BF6BCC;
}

void *sub_100BF6BCC(void *result)
{
  v1 = result[1];
  v2 = v1[6] >> 62;
  v3 = v1[6];
  if (v2)
  {
    v4 = v2 == 1;
    v5 = 0x8000000000000000;
    if (v4)
    {
      v5 = 0x4000000000000000;
    }

    v3 |= v5;
  }

  *v1 = *result;
  v1[6] = v3;
  return result;
}

void TSContentLanguage.Models.Shadow.opacity.setter(double a1)
{
  v2 = *(v1 + 48) >> 62;
  v3 = *(v1 + 48);
  v4 = v3 | 0x4000000000000000;
  if (v2 != 1)
  {
    v4 = v3 | 0x8000000000000000;
  }

  if (v2)
  {
    v3 = v4;
  }

  *(v1 + 8) = a1;
  *(v1 + 48) = v3;
}

uint64_t (*TSContentLanguage.Models.Shadow.opacity.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_100BF6C60;
}

void *sub_100BF6C60(void *result)
{
  v1 = result[1];
  v2 = *(v1 + 48) >> 62;
  v3 = *(v1 + 48);
  if (v2)
  {
    v4 = v2 == 1;
    v5 = 0x8000000000000000;
    if (v4)
    {
      v5 = 0x4000000000000000;
    }

    v3 |= v5;
  }

  *(v1 + 8) = *result;
  *(v1 + 48) = v3;
  return result;
}

__n128 TSContentLanguage.Models.Shadow.color.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t TSContentLanguage.Models.Shadow.color.setter(uint64_t result)
{
  v2 = *(v1 + 48) >> 62;
  v3 = *(result + 16);
  v4 = *(result + 32);
  v5 = v4 | 0x4000000000000000;
  if (v2 != 1)
  {
    v5 = v4 | 0x8000000000000000;
  }

  if (v2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(result + 32);
  }

  *(v1 + 16) = *result;
  *(v1 + 32) = v3;
  *(v1 + 48) = v6;
  return result;
}

void (*TSContentLanguage.Models.Shadow.color.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 32);
  *v3 = *(v1 + 16);
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  return sub_100BF6D54;
}

void sub_100BF6D54(void **a1, char a2)
{
  v2 = *a1;
  v3 = v2[5];
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = *(v2 + 32);
  v9 = v3[6] >> 62;
  if (a2)
  {
    if (v9)
    {
      v10 = v9 == 1;
      v11 = 0x8000000000000000;
      if (v10)
      {
        v11 = 0x4000000000000000;
      }

      v8 |= v11;
    }

    v3[2] = v5;
    v3[3] = v4;
    v3[4] = v7;
    v3[5] = v6;
    v3[6] = v8;
  }

  else
  {
    v3[2] = v5;
    v3[3] = v4;
    v3[4] = v7;
    v3[5] = v6;
    if (v9)
    {
      v12 = 0x4000000000000000;
      if (v9 != 1)
      {
        v12 = 0x8000000000000000;
      }

      v8 |= v12;
    }

    *(v2[5] + 48) = v8;
  }

  free(v2);
}

__n128 TSContentLanguage.Models.Shadow.init(contactShadow:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 72);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  result = *(a1 + 56);
  *(a2 + 56) = result;
  *(a2 + 72) = v3;
  return result;
}

__n128 TSContentLanguage.Models.Shadow.init(curvedShadow:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 48) | 0x4000000000000000;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  result = *(a1 + 56);
  *(a2 + 56) = result;
  *(a2 + 72) = v2;
  return result;
}

__n128 TSContentLanguage.Models.Shadow.init(dropShadow:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48) | 0x8000000000000000;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  result = *(a1 + 56);
  *(a2 + 56) = result;
  return result;
}

__n128 TSContentLanguage.Models.Shadow.init<A>(object:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_dynamicCast())
  {
    v11 = v14;
    v12 = v13;
    v7 = v16;
    v9 = v17;
    v10 = v15;
    v3 = v18;
  }

  else if (swift_dynamicCast())
  {
    v11 = v14;
    v12 = v13;
    v9 = v17;
    v10 = v15;
    v3 = v18;
    v7 = v16 | 0x4000000000000000;
  }

  else if (swift_dynamicCast())
  {
    v11 = v14;
    v12 = v13;
    v9 = v17;
    v10 = v15;
    v7 = v16 | 0x8000000000000000;
  }

  else
  {
    v3 = 0;
    v11 = 0u;
    v12 = 0u;
    v7 = 0xFFFFFFFF00;
    v9 = 0u;
    v10 = 0u;
  }

  (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v12;
  *(a3 + 16) = v11;
  result = v9;
  *(a3 + 32) = v10;
  *(a3 + 48) = v7;
  *(a3 + 56) = v9;
  *(a3 + 72) = v3;
  return result;
}

Swift::Int sub_100BF6FBC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100BF70C4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100BF71B8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100BF72BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100BF7F9C(*a1);
  *a2 = result;
  return result;
}

void sub_100BF72EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000776F646168;
  v4 = 0x53746361746E6F63;
  v5 = 0xEA0000000000776FLL;
  v6 = 0x64616853706F7264;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6853646576727563;
    v3 = 0xEC000000776F6461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100BF73B0()
{
  v1 = *v0;
  v2 = 0x53746361746E6F63;
  v3 = 0x64616853706F7264;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6853646576727563;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100BF7470@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100BF7F9C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100BF7498(uint64_t a1)
{
  v2 = sub_100BF8BC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100BF74D4(uint64_t a1)
{
  v2 = sub_100BF8BC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.Shadow.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100BF7FE8(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Shadow.encode(to:)(void *a1)
{
  v3 = sub_1005B981C(&qword_101A15200, &qword_10149FC58);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  __chkstk_darwin(v3);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v31 = &v30 - v7;
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v12 = *v1;
  v11 = v1[1];
  v14 = v1[2];
  v13 = v1[3];
  v15 = v1[5];
  v36 = v1[4];
  v37 = v15;
  v16 = v1[6];
  v17 = v1[8];
  v38 = v1[7];
  v39 = v17;
  v33 = v1[9];
  v34 = v13;
  v18 = v16 >> 62;
  v35 = v16 & 0x3FFFFFFFFFFFFFFFLL;
  sub_100020E58(a1, a1[3]);
  sub_100BF8BC0();
  if (v18)
  {
    if (v18 == 1)
    {
      v19 = v31;
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v43 = v12;
      v44 = v11;
      v45 = v14;
      v46 = v34;
      v47 = v36;
      v48 = v37;
      v49 = v35;
      v50 = v38;
      v51 = v39;
      v52 = v33;
      v53 = 1;
      sub_100BF8C68();
      v21 = v40;
      v20 = v41;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v21)
      {
        LOBYTE(v43) = 3;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (qword_1019F1EA8 != -1)
        {
          swift_once();
        }

        v43 = static TSContentLanguage.Models.Shadow.version;
        v53 = 4;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458, protocol conformance descriptor for TSCLVersion);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        return (*(v42 + 8))(v19, v20);
      }

      v22 = *(v42 + 8);
      v23 = v19;
      goto LABEL_9;
    }

    v26 = v32;
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v43 = v12;
    v44 = v11;
    v45 = v14;
    v46 = v34;
    v47 = v36;
    v48 = v37;
    v49 = v35;
    v50 = v38;
    v51 = v39;
    v53 = 2;
    sub_100BF8C14();
    v27 = v40;
    v28 = v41;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v27)
    {
      v22 = *(v42 + 8);
      v23 = v26;
      v25 = v28;
      return v22(v23, v25);
    }

    LOBYTE(v43) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F1EA8 != -1)
    {
      swift_once();
    }

    v43 = static TSContentLanguage.Models.Shadow.version;
    v53 = 4;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458, protocol conformance descriptor for TSCLVersion);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v42 + 8))(v26, v28);
  }

  else
  {
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v43 = v12;
    v44 = v11;
    v45 = v14;
    v46 = v34;
    v47 = v36;
    v48 = v37;
    v49 = v35;
    v50 = v38;
    v51 = v39;
    v52 = v33;
    v53 = 0;
    sub_100BF8CBC();
    v24 = v40;
    v20 = v41;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v24)
    {
      v22 = *(v42 + 8);
      v23 = v10;
LABEL_9:
      v25 = v20;
      return v22(v23, v25);
    }

    LOBYTE(v43) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F1EA8 != -1)
    {
      swift_once();
    }

    v43 = static TSContentLanguage.Models.Shadow.version;
    v53 = 4;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458, protocol conformance descriptor for TSCLVersion);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v42 + 8))(v10, v20);
  }
}

void (*sub_100BF7B24(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_100BF7B50;
}

void (*sub_100BF7B7C(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_100BF7BA8;
}

void (*sub_100BF7BD4(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 32);
  *v3 = *(v1 + 16);
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  return sub_100BF7C48;
}

void sub_100BF7C48(uint64_t *a1)
{
  v1 = *a1;
  TSContentLanguage.Models.Shadow.color.setter(*a1);

  free(v1);
}

BOOL sub_100BF7CA0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s8Freeform17TSContentLanguageO6ModelsO6ShadowO21__derived_enum_equalsySbAG_AGtFZ_0(v8, v9);
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO6ShadowO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v9 = *(a1 + 16);
  v8 = *(a1 + 32);
  v11 = *(a2 + 16);
  v10 = *(a2 + 32);
  v12 = *(a2 + 48);
  v14 = *(a2 + 56);
  v13 = *(a2 + 64);
  if (v4 >> 62)
  {
    if (v4 >> 62 != 1)
    {
      if (v12 >> 62 != 2)
      {
        return 0;
      }

      if (*a2 != v3 || *(a2 + 8) != v2)
      {
        return 0;
      }

      v19 = *(a2 + 48);
      if (*(a1 + 48) == 2)
      {
        if (v19 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (v19 == 2 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v11, v9), vceqq_f64(v10, v8)), xmmword_10148D100)) & 0xF) != 0)
        {
          return 0;
        }

        if (v4)
        {
          v24 = 1650946675;
        }

        else
        {
          v24 = 13168;
        }

        if (v4)
        {
          v25 = 0xE400000000000000;
        }

        else
        {
          v25 = 0xE200000000000000;
        }

        if (v12)
        {
          v26 = 1650946675;
        }

        else
        {
          v26 = 13168;
        }

        if (v12)
        {
          v27 = 0xE400000000000000;
        }

        else
        {
          v27 = 0xE200000000000000;
        }

        if (v24 == v26 && v25 == v27)
        {
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v31 & 1) == 0)
          {
            return 0;
          }
        }
      }

      return v14 == v5 && v13 == v6;
    }

    if (v12 >> 62 != 1)
    {
      return 0;
    }
  }

  else if (v12 >> 62)
  {
    return 0;
  }

  if (*a2 != v3 || *(a2 + 8) != v2)
  {
    return 0;
  }

  v16 = *(a2 + 72);
  v17 = *(a2 + 48);
  if (*(a1 + 48) == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }

    return v14 == v5 && v13 == v6 && v16 == v7;
  }

  if (v17 == 2 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v11, v9), vceqq_f64(v10, v8)), xmmword_10148D100)) & 0xF) != 0)
  {
    return 0;
  }

  if (v4)
  {
    v20 = 1650946675;
  }

  else
  {
    v20 = 13168;
  }

  if (v4)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE200000000000000;
  }

  if (v12)
  {
    v22 = 1650946675;
  }

  else
  {
    v22 = 13168;
  }

  if (v12)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE200000000000000;
  }

  if (v20 == v22 && v21 == v23)
  {

    return v14 == v5 && v13 == v6 && v16 == v7;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v28 & 1) == 0)
  {
    return 0;
  }

  return v14 == v5 && v13 == v6 && v16 == v7;
}

unint64_t sub_100BF7F9C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101876578, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100BF7FE8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = a2;
  v3 = sub_1005B981C(&qword_101A003E8, &qword_101481A70);
  __chkstk_darwin(v3 - 8);
  v46[4] = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46[5] = v46 - v6;
  __chkstk_darwin(v7);
  *&v49 = v46 - v8;
  v9 = type metadata accessor for CodingUserInfoKey();
  v48 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v46 - v13;
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  v18 = sub_1005B981C(&qword_101A15260, &qword_10149FED8);
  v50 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = v46 - v19;
  v21 = a1[3];
  v52 = a1;
  sub_100020E58(a1, v21);
  sub_100BF8BC0();
  v22 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    v23 = v52;
LABEL_13:
    sub_100020E58(v23, v23[3]);
    dispatch thunk of Decoder.singleValueContainer()();
    sub_100020E58(&v53, *(&v54 + 1));
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();

    sub_100005070(&v53);
LABEL_14:
    sub_1007C8648();
    swift_allocError();
    *v30 = xmmword_101478600;
    *(v30 + 16) = 0;
    swift_willThrow();
    return sub_100005070(v23);
  }

  v46[3] = v17;
  v46[2] = v14;
  v46[1] = v11;
  *&v51 = v9;
  LOBYTE(v53) = 3;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v52;
  if (v25)
  {
    if (v24 == 0xD000000000000026 && v25 == 0x80000001015908E0)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v28[1] = 0;
        v28[2] = 0;
        *v28 = 0;
        swift_willThrow();
LABEL_12:
        (*(v50 + 8))(v20, v18);
        goto LABEL_13;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v61 = 4;
  sub_100969804(&qword_101A00400, protocol conformance descriptor for TSCLVersion);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = v53;
  if (v53)
  {
    if (qword_1019F1EA8 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Shadow.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v31[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v32 = xmmword_101463530;
      *(v32 + 16) = 0;
      swift_willThrow();

      goto LABEL_12;
    }
  }

  sub_100020E58(v23, v23[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v61 = 0;
  sub_100BF90F8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  v33 = v57;
  if (v57 == 3)
  {
    sub_100020E58(v52, v52[3]);
    dispatch thunk of Decoder.userInfo.getter();
    v61 = 1;
    sub_100BF914C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v46[0] = v18;

    v42 = v57;
    if (v57 == 3)
    {
      v43 = v50;
      sub_100020E58(v52, v52[3]);
      dispatch thunk of Decoder.userInfo.getter();
      v61 = 2;
      sub_100BF91A0();
      v39 = v20;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

      v44 = v57;
      if (v57 == 3)
      {
        (*(v43 + 8))(v20, v46[0]);
        v23 = v52;
        goto LABEL_14;
      }

      v51 = v54;
      v49 = v53;
      v34 = v55;
      v35 = v56;
      v45 = v43;
      v37 = v58;
      v38 = v59;
      (*(v45 + 8))(v20, v46[0]);
      v33 = v44 | 0x8000000000000000;
    }

    else
    {
      v51 = v54;
      v49 = v53;
      v34 = v55;
      v35 = v56;
      v37 = v58;
      v38 = v59;
      v39 = v60;
      (*(v50 + 8))(v20, v46[0]);
      v33 = v42 | 0x4000000000000000;
    }
  }

  else
  {
    v51 = v54;
    v49 = v53;
    v34 = v55;
    v35 = v56;
    v36 = v18;
    v37 = v58;
    v38 = v59;
    v39 = v60;
    (*(v50 + 8))(v20, v36);
  }

  result = sub_100005070(v52);
  v40 = v47;
  v41 = v51;
  *v47 = v49;
  v40[1] = v41;
  *(v40 + 4) = v34;
  *(v40 + 5) = v35;
  *(v40 + 6) = v33;
  *(v40 + 7) = v37;
  *(v40 + 8) = v38;
  *(v40 + 9) = v39;
  return result;
}

unint64_t sub_100BF8BC0()
{
  result = qword_101A15208;
  if (!qword_101A15208)
  {
    result = swift_getWitnessTable(byte_10149FE88, &_s6ShadowO9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A15208);
  }

  return result;
}

unint64_t sub_100BF8C14()
{
  result = qword_101A15210;
  if (!qword_101A15210)
  {
    result = swift_getWitnessTable("iz6", &type metadata for TSContentLanguage.Models.DropShadow, v0, v1);
    atomic_store(result, &qword_101A15210);
  }

  return result;
}

unint64_t sub_100BF8C68()
{
  result = qword_101A15218;
  if (!qword_101A15218)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.CurvedShadow, &type metadata for TSContentLanguage.Models.CurvedShadow, v0, v1);
    atomic_store(result, &qword_101A15218);
  }

  return result;
}

unint64_t sub_100BF8CBC()
{
  result = qword_101A15220;
  if (!qword_101A15220)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.ContactShadow, &type metadata for TSContentLanguage.Models.ContactShadow, v0, v1);
    atomic_store(result, &qword_101A15220);
  }

  return result;
}

unint64_t sub_100BF8D10(uint64_t a1)
{
  result = sub_100BF8D38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100BF8D38()
{
  result = qword_101A15228;
  if (!qword_101A15228)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Shadow, &type metadata for TSContentLanguage.Models.Shadow, v0, v1);
    atomic_store(result, &qword_101A15228);
  }

  return result;
}

unint64_t sub_100BF8D8C(uint64_t a1)
{
  *(a1 + 8) = sub_100BF8DBC();
  result = sub_100BF8D38();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100BF8DBC()
{
  result = qword_101A15230;
  if (!qword_101A15230)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Shadow, &type metadata for TSContentLanguage.Models.Shadow, v0, v1);
    atomic_store(result, &qword_101A15230);
  }

  return result;
}

unint64_t sub_100BF8E10()
{
  result = qword_101A15238;
  if (!qword_101A15238)
  {
    result = swift_getWitnessTable("9Z9", &type metadata for TSContentLanguage.Models.Shadow, v0, v1);
    atomic_store(result, &qword_101A15238);
  }

  return result;
}

unint64_t sub_100BF8E64(void *a1)
{
  a1[2] = sub_100B22CFC();
  a1[3] = sub_100B215E4();
  result = sub_100BF8E9C();
  a1[4] = result;
  return result;
}

unint64_t sub_100BF8E9C()
{
  result = qword_101A15240;
  if (!qword_101A15240)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Shadow, &type metadata for TSContentLanguage.Models.Shadow, v0, v1);
    atomic_store(result, &qword_101A15240);
  }

  return result;
}

uint64_t _s6ShadowOwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 49);
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

double _s6ShadowOwst(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = -a2 << 8;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100BF8FF4()
{
  result = qword_101A15248;
  if (!qword_101A15248)
  {
    result = swift_getWitnessTable("y79", &_s6ShadowO9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A15248);
  }

  return result;
}

unint64_t sub_100BF904C()
{
  result = qword_101A15250;
  if (!qword_101A15250)
  {
    result = swift_getWitnessTable(byte_10149FD98, &_s6ShadowO9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A15250);
  }

  return result;
}

unint64_t sub_100BF90A4()
{
  result = qword_101A15258;
  if (!qword_101A15258)
  {
    result = swift_getWitnessTable(byte_10149FDC0, &_s6ShadowO9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A15258);
  }

  return result;
}

unint64_t sub_100BF90F8()
{
  result = qword_101A15268;
  if (!qword_101A15268)
  {
    result = swift_getWitnessTable(")}6", &type metadata for TSContentLanguage.Models.ContactShadow, v0, v1);
    atomic_store(result, &qword_101A15268);
  }

  return result;
}

unint64_t sub_100BF914C()
{
  result = qword_101A15270;
  if (!qword_101A15270)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.CurvedShadow, &type metadata for TSContentLanguage.Models.CurvedShadow, v0, v1);
    atomic_store(result, &qword_101A15270);
  }

  return result;
}

unint64_t sub_100BF91A0()
{
  result = qword_101A15278;
  if (!qword_101A15278)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.DropShadow, &type metadata for TSContentLanguage.Models.DropShadow, v0, v1);
    atomic_store(result, &qword_101A15278);
  }

  return result;
}

double sub_100BF92A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_10064191C(0, 0, v10, &unk_1014A0130, v14);

  return result;
}

uint64_t sub_100BF94A4(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  type metadata accessor for MainActor();
  v3[19] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[20] = v5;
  v3[21] = v4;

  return _swift_task_switch(sub_100BF9540, v5, v4);
}

uint64_t sub_100BF9540()
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[18];
  v3 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  _StringGuts.grow(_:)(27);

  type metadata accessor for URL();
  sub_100AC0370();
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = 0xD000000000000018;
  *(inited + 80) = 0x80000001015909A0;
  v11 = static os_log_type_t.debug.getter();
  sub_100005404(v3, &_mh_execute_header, v11, "(AppEx:CoreRE) [%{public}@] compressModel(%@)", 45, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v12 = swift_task_alloc();
  v0[22] = v12;
  *(v12 + 16) = v2;
  *(v12 + 24) = v1;
  v13 = swift_task_alloc();
  v0[23] = v13;
  *v13 = v0;
  v13[1] = sub_100BF9830;
  v14 = v0[16];

  return sub_100BFC7C8(v14, 0x73736572706D6F63, 0xEF29286C65646F4DLL, dword_1014A00D0);
}

uint64_t sub_100BF9830()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_100BF99B0;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_100BF994C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100BF994C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BF99B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BF9A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[61] = a2;
  v3[62] = a3;
  v3[60] = a1;
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  v3[65] = swift_task_alloc();
  v3[66] = type metadata accessor for MainActor();
  v3[67] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[68] = v5;
  v3[69] = v4;

  return _swift_task_switch(sub_100BF9B40, v5, v4);
}

uint64_t sub_100BF9B40()
{
  v1 = *(v0 + 488);
  v2 = CACurrentMediaTime();
  *(v0 + 560) = v2;
  v3 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE23AppExCompressionBackend__backendState;
  *(v0 + 568) = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE23AppExCompressionBackend__backendState;
  v4 = *(**(v1 + v3) + 128);

  v4(v5);

  v6 = *(v0 + 320);
  v7 = *(v0 + 336);
  v8 = *(v0 + 344) >> 62;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      sub_100BFD514(v6, *(v0 + 328), *(v0 + 336), *(v0 + 344));
      v9 = *(v1 + v3);
      *(v0 + 352) = 0;
      *(v0 + 360) = 0;
      *(v0 + 368) = 0;
      *(v0 + 376) = 0xC000000000000000;
      v10 = *(*v9 + 136);

      v10(v0 + 352);

      v11 = swift_task_alloc();
      *(v0 + 744) = v11;
      *v11 = v0;
      v11[1] = sub_100BFAAC4;
      v12 = *(v0 + 496);
      v13 = *(v0 + 480);

      return sub_100BF94A4(v13, v12);
    }

    else
    {
      v20 = *(v0 + 520);
      v21 = *(v0 + 488);
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
      v23 = v21;
      v24 = static MainActor.shared.getter();
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = &protocol witness table for MainActor;
      v25[4] = v23;
      v26 = sub_10079730C(0, 0, v20, &unk_1014A0108, v25);
      v27 = *(v1 + v3);
      *(v0 + 400) = 0;
      *(v0 + 408) = 0;
      *(v0 + 384) = v26;
      *(v0 + 392) = 0;
      v28 = *(*v27 + 136);

      v28(v0 + 384);

      v29 = *(**(v1 + v3) + 128);

      v29(v30);

      v32 = *(v0 + 416);
      v31 = *(v0 + 424);
      *(v0 + 576) = v32;
      *(v0 + 584) = v31;
      v33 = *(v0 + 432);
      v34 = *(v0 + 440);
      *(v0 + 592) = v33;
      *(v0 + 600) = v34;
      if (v34 >> 62)
      {
        v38 = *(v0 + 480);
        sub_100BFD514(v32, v31, v33, v34);

        v39 = type metadata accessor for URL();
        (*(*(v39 - 8) + 56))(v38, 1, 1, v39);

        v40 = *(v0 + 8);

        return v40();
      }

      else
      {
        v35 = swift_task_alloc();
        *(v0 + 608) = v35;
        v36 = sub_1005B981C(&unk_1019FFCE0, &qword_1014A0110);
        v37 = sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
        *v35 = v0;
        v35[1] = sub_100BFA064;

        return Task.value.getter(v0 + 280, v32, v36, v37, &protocol self-conformance witness table for Error);
      }
    }
  }

  else
  {
    if (v8)
    {
    }

    else
    {
      sub_100BFD514(v6, *(v0 + 328), *(v0 + 336), *(v0 + 344));
    }

    v16 = *(v0 + 488);
    v15 = *(v0 + 496);
    v17 = swift_task_alloc();
    *(v0 + 720) = v17;
    *(v17 + 2) = v15;
    *(v17 + 3) = v16;
    v17[4] = v2;
    v18 = swift_task_alloc();
    *(v0 + 728) = v18;
    *v18 = v0;
    v18[1] = sub_100BFA920;
    v19 = *(v0 + 480);

    return sub_100BFBBE4(v19, &unk_1014A00F0, v17);
  }
}

uint64_t sub_100BFA064()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  v3 = *(v2 + 552);
  v4 = *(v2 + 544);
  if (v0)
  {
    v5 = sub_100BFAC00;
  }

  else
  {
    v5 = sub_100BFA1A0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100BFA1A0()
{
  v1 = *(v0 + 288);
  v23 = *(v0 + 280);
  *(v0 + 624) = v23;
  *(v0 + 632) = v1;
  v2 = *(v0 + 304);
  v24 = *(v0 + 296);
  *(v0 + 640) = v24;
  *(v0 + 648) = v2;
  v21 = *(v0 + 312);
  v22 = v2;
  *(v0 + 656) = v21;
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 488);
  v5 = static OS_os_log.crlThreeDimensionalObjects;
  *(v0 + 664) = static OS_os_log.crlThreeDimensionalObjects;
  *(v0 + 672) = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(v0 + 680) = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE23AppExCompressionBackend_uuid;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v7 = static String._fromSubstring(_:)();
  v9 = v8;

  *(inited + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(v0 + 688) = v10;
  *(inited + 64) = v10;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v11 = CACurrentMediaTime();
  *(inited + 96) = &type metadata for Double;
  *(inited + 104) = &protocol witness table for Double;
  *(inited + 72) = (v11 - v3) * 1000.0;
  v12 = static os_log_type_t.debug.getter();
  sub_100005404(v5, &_mh_execute_header, v12, "(AppEx:CoreRE) [%{public}@] compressModel() +%{public}.0fms: extension renderer connected", 89, 2, inited);
  swift_setDeallocating();
  *(v0 + 696) = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v13 = *(v4 + v20);
  *(v0 + 448) = v1;
  *(v0 + 456) = v24;
  *(v0 + 464) = v22;
  *(v0 + 472) = v21 | 0x4000000000000000;
  v14 = *(*v13 + 136);

  v15 = v22;

  v14(v0 + 448);

  sub_100BFB44C(v23);
  v16 = swift_task_alloc();
  *(v0 + 704) = v16;
  *v16 = v0;
  v16[1] = sub_100BFA4BC;
  v17 = *(v0 + 512);
  v18 = *(v0 + 496);

  return sub_1008C7CAC(v17, v18);
}

uint64_t sub_100BFA4BC()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  v3 = *(v2 + 552);
  v4 = *(v2 + 544);
  if (v0)
  {
    v5 = sub_100BFACA0;
  }

  else
  {
    v5 = sub_100BFA5F8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100BFA5F8()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 560);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v6 = static String._fromSubstring(_:)();
  v8 = v7;

  *(inited + 32) = v6;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 40) = v8;
  v9 = CACurrentMediaTime();
  *(inited + 96) = &type metadata for Double;
  *(inited + 104) = &protocol witness table for Double;
  *(inited + 72) = (v9 - v2) * 1000.0;
  sub_10001ACF0(v4, v3);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v3, 1, v10);
  v13 = *(v0 + 688);
  v14 = *(v0 + 504);
  if (v12 == 1)
  {
    sub_100686028(*(v0 + 504));
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v13;
  }

  else
  {
    v15 = URL.absoluteString.getter();
    v17 = v16;
    (*(v11 + 8))(v14, v10);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v13;
    if (v17)
    {
      v18 = v15;
      goto LABEL_6;
    }
  }

  v17 = 0xE300000000000000;
  v18 = 7104878;
LABEL_6:
  v19 = *(v0 + 664);
  v27 = *(v0 + 648);
  v20 = *(v0 + 600);
  v21 = *(v0 + 592);
  v22 = *(v0 + 584);
  v23 = *(v0 + 576);
  v29 = *(v0 + 512);
  v28 = *(v0 + 480);
  *(inited + 112) = v18;
  *(inited + 120) = v17;
  v24 = static os_log_type_t.debug.getter();
  sub_100005404(v19, &_mh_execute_header, v24, "(AppEx:CoreRE) [%{public}@] compressModel() +%{public}.0fms: first url %@", 73, 2, inited);

  sub_100BFD514(v23, v22, v21, v20);

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_100044B68(v29, v28);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100BFA920()
{
  v2 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);
    v4 = *(v2 + 544);
    v5 = sub_100BFAE24;
  }

  else
  {

    v3 = *(v2 + 552);
    v4 = *(v2 + 544);
    v5 = sub_100BFAA44;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100BFAA44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BFAAC4()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  v3 = *(v2 + 552);
  v4 = *(v2 + 544);
  if (v0)
  {
    v5 = sub_100BFAD9C;
  }

  else
  {
    v5 = sub_100BFE118;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100BFAC00(__n128 a1)
{
  sub_100BFD514(*(v1 + 576), *(v1 + 584), *(v1 + 592), *(v1 + 600));

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100BFACA0()
{
  v1 = v0[81];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];

  sub_100BFD514(v5, v4, v3, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100BFAD9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BFAE24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BFAEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  type metadata accessor for CRLUSDRenderingExtensionConnector();
  swift_initStaticObject();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_100BFAF78;

  return sub_100B81A40();
}

uint64_t sub_100BFAF78(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100BFB3E8, v7, v6);
  }

  else
  {
    v8 = v4[3];

    v9 = v8;
    v10 = swift_task_alloc();
    v4[9] = v10;
    *v10 = v5;
    v10[1] = sub_100BFB144;
    v11 = v4[3];

    return sub_100BFD80C(a1, v11);
  }
}

uint64_t sub_100BFB144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 80) = v4;

  if (v4)
  {
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    v14 = sub_100BFB37C;
  }

  else
  {
    v10[11] = a4;
    v10[12] = a3;
    v10[13] = a2;
    v10[14] = a1;
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v15;
    v14 = sub_100BFB2E4;
  }

  return _swift_task_switch(v14, v11, v13);
}

uint64_t sub_100BFB2E4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v5 = *(v0 + 88);
  v6 = vextq_s8(*(v0 + 104), *(v0 + 104), 8uLL);

  *v2 = v1;
  *(v2 + 8) = v6;
  *(v2 + 24) = vextq_s8(v5, v5, 8uLL);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100BFB37C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BFB3E8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100BFB44C(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = *(a1 + 16);
  v12 = sub_100BFD744;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = *"";
  v10 = sub_100007638;
  v11 = &unk_10189A548;
  v6 = _Block_copy(&v8);

  [v5 setInterruptionHandler:v6];
  _Block_release(v6);
  v12 = sub_100BFD744;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = *"";
  v10 = sub_100007638;
  v11 = &unk_10189A570;
  v7 = _Block_copy(&v8);

  [v5 setInvalidationHandler:v7];
  _Block_release(v7);
}

uint64_t sub_100BFB610(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  *(v10 + 184) = a2;
  *(v10 + 168) = a1;
  *(v10 + 176) = a8;
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  *(v10 + 192) = swift_task_alloc();
  *(v10 + 200) = type metadata accessor for MainActor();
  *(v10 + 208) = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  *(v10 + 216) = v12;
  *v12 = v10;
  v12[1] = sub_100BFB71C;

  return sub_1008C7CAC(a1, a7);
}

uint64_t sub_100BFB71C()
{
  *(*v1 + 224) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100BFBB74;
  }

  else
  {
    v4 = sub_100BFB878;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100BFB878()
{

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v21 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 64) = v8;
  *(inited + 40) = v7;
  v9 = CACurrentMediaTime();
  *(inited + 96) = &type metadata for Double;
  *(inited + 104) = &protocol witness table for Double;
  *(inited + 72) = (v9 - v2) * 1000.0;
  sub_10001ACF0(v3, v1);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v1, 1, v10);
  v13 = *(v0 + 192);
  if (v12 == 1)
  {
    sub_100686028(*(v0 + 192));
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v8;
  }

  else
  {
    v14 = URL.absoluteString.getter();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v8;
    if (v16)
    {
      v17 = v14;
      goto LABEL_8;
    }
  }

  v16 = 0xE300000000000000;
  v17 = 7104878;
LABEL_8:
  *(inited + 112) = v17;
  *(inited + 120) = v16;
  v18 = static os_log_type_t.debug.getter();
  sub_100005404(v21, &_mh_execute_header, v18, "(AppEx:CoreRE) [%{public}@] compressModel() +%{public}.0fms: new url %@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100BFBB74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BFBBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v4[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v6;
  v4[18] = v5;

  return _swift_task_switch(sub_100BFBCB8, v6, v5);
}

uint64_t sub_100BFBCB8()
{
  v1 = *(**(v0[14] + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE23AppExCompressionBackend__backendState) + 128);

  v1(v2);

  v4 = v0[7];
  v3 = v0[8];
  v0[19] = v4;
  v0[20] = v3;
  v5 = v0[9];
  v6 = v0[10];
  v0[21] = v5;
  v0[22] = v6;
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      sub_100BFD514(v4, v3, v5, v6);
    }

    v11 = v0[11];

    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

    v13 = v0[1];

    return v13();
  }

  else if (v7)
  {
    v17 = (v0[12] + *v0[12]);
    v14 = swift_task_alloc();
    v0[25] = v14;
    *v14 = v0;
    v14[1] = sub_100BFC0D4;
    v15 = v0[11];

    return v17(v15, v4, v3, v5, v6 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[23] = v8;
    v9 = sub_1005B981C(&unk_1019FFCE0, &qword_1014A0110);
    v10 = sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    *v8 = v0;
    v8[1] = sub_100BFBF98;

    return Task.value.getter(v0 + 2, v4, v9, v10, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100BFBF98()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100BFC478;
  }

  else
  {
    v5 = sub_100BFC210;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100BFC0D4()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100BFC730;
  }

  else
  {
    v5 = sub_100BFC698;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100BFC210()
{
  v1 = v0[12];

  v2 = v0[3];
  v3 = v0[4];
  v0[27] = v2;
  v0[28] = v3;
  v4 = v0[5];
  v5 = v0[6];
  v0[29] = v4;
  v0[30] = v5;
  v9 = (v1 + *v1);
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_100BFC33C;
  v7 = v0[15];

  return v9(v7, v2, v3, v4, v5);
}

uint64_t sub_100BFC33C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100BFC5D4;
  }

  else
  {
    v5 = sub_100BFC4F4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100BFC478(__n128 a1)
{
  sub_100BFD514(*(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176));

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100BFC4F4()
{
  v1 = v0[29];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v9 = v0[15];
  v6 = v0[11];

  sub_100BFD514(v5, v4, v3, v2);

  sub_100044B68(v9, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100BFC5D4()
{
  v1 = v0[29];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];

  sub_100BFD514(v5, v4, v3, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100BFC698()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100BFC730()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100BFC7C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5[41] = a3;
  v5[42] = v4;
  v5[40] = a2;
  v5[43] = type metadata accessor for MainActor();
  v5[44] = static MainActor.shared.getter();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v5[45] = v8;
  *v8 = v5;
  v8[1] = sub_100BFC8F0;

  return v10(a1);
}

uint64_t sub_100BFC8F0()
{
  *(*v1 + 368) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100BFCAAC;
  }

  else
  {
    v4 = sub_100BFCA48;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100BFCA48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BFCAAC()
{

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v2 = *(v0 + 328);
  v19 = *(v0 + 320);
  v20 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 64) = v7;
  *(inited + 72) = v19;
  *(inited + 80) = v2;
  swift_getErrorValue();

  v8 = Error.localizedDescription.getter();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  v10 = static os_log_type_t.error.getter();
  sub_100005404(v20, &_mh_execute_header, v10, "(AppEx:CoreRE) [%{public}@] %{public}@ error: %{public}@", 56, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  *(v0 + 296) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 248);
    v12 = *(v0 + 256);
    v13 = *(v0 + 264);
  }

  else
  {
    *(v0 + 304) = *(v0 + 368);
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 272);
      v12 = *(v0 + 280);
      v13 = 4;
    }

    else
    {
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v12 = v14;
      v13 = 2;
    }
  }

  v15 = *(*(v0 + 336) + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE23AppExCompressionBackend__backendState);
  *(v0 + 168) = v11;
  *(v0 + 176) = v12;
  *(v0 + 184) = v13;
  *(v0 + 192) = 0x8000000000000000;
  v16 = *(*v15 + 136);

  sub_10086756C(v11, v12, v13);
  v16(v0 + 168);

  sub_100863EEC(v11, v12, v13);
  swift_willThrow();
  v17 = *(v0 + 8);

  return v17();
}

double sub_100BFCE1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  v9[5] = a2;
  sub_10064191C(0, 0, v6, &unk_1014A0120, v9);

  return result;
}

uint64_t sub_100BFCF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BFCFE4, v7, v6);
}

uint64_t sub_100BFCFE4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    if (!v3)
    {
LABEL_6:

      goto LABEL_9;
    }

    v4 = v3;
    v5 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE23AppExCompressionBackend__backendState;
    v6 = *(**&v2[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE23AppExCompressionBackend__backendState] + 128);

    v6(v7);

    v9 = v0[2];
    v8 = v0[3];
    v11 = v0[4];
    v10 = v0[5];
    if (v10 >> 62 == 1)
    {
      if (v4 != v9)
      {

        sub_100BFD514(v9, v8, v11, v10);
        goto LABEL_6;
      }

      v12 = *&v2[v5];
      *(v0 + 1) = xmmword_101463530;
      *(v0 + 2) = xmmword_10149FEE0;
      v13 = *(*v12 + 136);

      v13(v0 + 2);

      sub_100BFD514(v9, v8, v11, v10);
    }

    else
    {

      sub_100BFD514(v9, v8, v11, v10);
    }
  }

LABEL_9:
  v14 = v0[1];

  return v14();
}

uint64_t _s23AppExCompressionBackendCMa(uint64_t a1)
{
  result = qword_101A152B8;
  if (!qword_101A152B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100BFD29C(uint64_t a1)
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

uint64_t sub_100BFD348(uint64_t a1)
{
  v1 = *(a1 + 24) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100BFD364(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FD && *(a1 + 32))
  {
    return (*a1 + 2045);
  }

  v3 = (((*(a1 + 24) >> 53) >> 9) | (4 * ((*(a1 + 16) >> 60) & 0x8F | (16 * (*(a1 + 24) & 7)) | (*(a1 + 24) >> 53) & 0x180))) ^ 0x7FF;
  if (v3 >= 0x7FC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100BFD3C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2045;
    *(result + 8) = 0;
    if (a3 >= 0x7FD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1FF | ((-a2 & 0x7FF) << 9);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = v3 << 60;
      *(result + 24) = ((v3 >> 4) | (v3 << 53)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_100BFD428(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = result[3] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    result[2] &= 0xFFFFFFFFFFFFFFFuLL;
    result[3] = v2;
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0xC000000000000000;
  }

  return result;
}

uint64_t sub_100BFD468(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002D4C8;

  return sub_100BF9A20(a1, v5, v4);
}

void sub_100BFD514(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 == 2)
    {

      sub_100863EEC(a1, a2, a3);
    }
  }

  else
  {
    if (v5)
    {
    }
  }
}

uint64_t sub_100BFD5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 2);
  v13 = *(v5 + 3);
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_10002D4C8;

  return sub_100BFB610(a1, v14, a2, a3, a4, a5, v12, v13);
}

uint64_t sub_100BFD690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100BFAEB8(a1, v4, v5, v6);
}

uint64_t sub_100BFD74C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_100BFCF4C(a1, v4, v5, v7, v6);
}

uint64_t sub_100BFD80C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v6;
  v2[14] = v5;

  return _swift_task_switch(sub_100BFD918, v6, v5);
}

uint64_t sub_100BFD918()
{
  receiver = v0[5].receiver;
  v2 = v0[3].receiver;
  super_class = v0[3].super_class;
  v4 = v0[2].super_class;
  v5 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE23AppExCompressionBackend_uuid;
  v6 = *(super_class + 2);
  v0[7].super_class = v6;
  v0[8].receiver = ((super_class + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  (v6)(receiver, v4 + v5, v2);
  v7 = type metadata accessor for CRLUSDRendererExtensionShared.RendererDelegateReceiverProxy();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared29RendererDelegateReceiverProxy_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_10189A478;
  swift_unknownObjectWeakAssign();
  v0[1].receiver = v8;
  v0[1].super_class = v7;

  v9 = objc_msgSendSuper2(v0 + 1, "init");
  v0[8].super_class = v9;
  v10 = v9;
  v0[9].receiver = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[9].super_class = v12;
  v0[10].receiver = v11;

  return _swift_task_switch(sub_100BFDA54, v12, v11);
}

uint64_t sub_100BFDA54()
{
  v1 = v0[17];
  v2 = v0[10];
  v3 = swift_task_alloc();
  v0[21] = v3;
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = 1;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_100BFDB58;

  return sub_100860D0C(0xD00000000000002CLL, 0x800000010156F7C0, sub_1008671B4, v3);
}

uint64_t sub_100BFDB58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {

    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_100BFDE74;
  }

  else
  {
    v4[24] = a1;

    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_100BFDCA0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100BFDCA0()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100BFDD0C, v1, v2);
}

uint64_t sub_100BFDD0C()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  v1(v2, v3, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, v2, v5);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v10 = AnyCancellable.init(_:)();

  (*(v4 + 8))(v3, v5);

  v11 = v0[1];
  v12 = v0[24];
  v13 = v0[17];
  v14 = v0[4];

  return v11(v14, v12, v13, v10);
}

uint64_t sub_100BFDE74()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100BFDEE0, v1, v2);
}

uint64_t sub_100BFDEE0()
{
  v1 = v0[17];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

double sub_100BFDFA8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100BF92A8(v2, v3);
}

uint64_t sub_100BFE00C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100B8670C(a1, v6, v7, v8, v1 + v5);
}

id sub_100BFE204()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLApplicationCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100BFE284@<X0>(void *a2@<X1>, _OWORD *a3@<X8>)
{
  v18 = a3;
  v4 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLWPShapeItemData(0);
  swift_dynamicCastClassUnconditional();

  v17 = sub_100693C3C();

  v7 = *swift_dynamicCastClassUnconditional();
  (*(v7 + 896))();
  sub_1005B981C(&unk_101A0D9C0, "@0$");
  CRRegister.wrappedValue.getter();
  sub_100BFE5FC(v6);
  v8 = *&v26;
  TSContentLanguage.Models.Insets.validate()();
  if (v9)
  {
    v26 = 0xD000000000000026;
    v27 = 0x8000000101590C60;
    sub_10075915C();
    v28 = 0;
    v29 = 0;
    swift_willThrowTypedImpl();

    *a2 = 0xD000000000000026;
    a2[1] = 0x8000000101590C60;
    a2[2] = 0;
    a2[3] = 0;
  }

  else
  {
    if (v17 >= 4)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0x1000102u >> (8 * v17);
    }

    v12 = *swift_dynamicCastClassUnconditional();
    (*(v12 + 896))();
    type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
    sub_1005B981C(&qword_101A2C810, &unk_101480B50);
    CRRegister.wrappedValue.getter();
    sub_100BFE5FC(v6);
    v19[120] = 1;
    v19[112] = 0;
    *&v21 = 0;
    v20 = 0uLL;
    WORD4(v21) = 767;
    v22 = 0u;
    v23 = 0u;
    LOBYTE(v24) = 1;
    *(&v24 + 1) = v8;
    *v25 = v8;
    *(v25 + 1) = v8;
    *&v25[1] = v8;
    BYTE8(v25[1]) = 0;
    BYTE9(v25[1]) = v26;
    BYTE10(v25[1]) = v11;
    *(&v25[1] + 11) = 770;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    LOWORD(v29) = 767;
    v31 = 0u;
    v30 = 0u;
    v32 = 1;
    v33 = v8;
    v34 = v8;
    v35 = v8;
    v36 = v8;
    v37 = __PAIR16__(BYTE9(v25[1]), 0);
    v38 = v11;
    v39 = 770;
    sub_100BFE658(&v20, v19);
    result = sub_100BFE6B4(&v26);
    v13 = v25[0];
    v14 = v18;
    v18[4] = v24;
    v14[5] = v13;
    *(v14 + 93) = *(v25 + 13);
    v15 = v21;
    *v14 = v20;
    v14[1] = v15;
    v16 = v23;
    v14[2] = v22;
    v14[3] = v16;
  }

  return result;
}

uint64_t sub_100BFE5FC(uint64_t a1)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100BFE70C()
{
  result = qword_101A15458;
  if (!qword_101A15458)
  {
    result = swift_getWitnessTable("y>9", &type metadata for CRLRenameBoardIntent, v0, v1);
    atomic_store(result, &qword_101A15458);
  }

  return result;
}

uint64_t sub_100BFE760@<X0>(uint64_t *a1@<X8>)
{
  v61 = a1;
  v1 = sub_1005B981C(&qword_1019FC3D8, &qword_101477380);
  __chkstk_darwin(v1 - 8);
  v51 = &v39 - v2;
  v60 = type metadata accessor for InputConnectionBehavior();
  v63 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_1019F6260, &unk_10146ED40);
  __chkstk_darwin(v4 - 8);
  v50 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = &v39 - v7;
  v8 = sub_1005B981C(&qword_1019F6268, &unk_101471D00);
  __chkstk_darwin(v8 - 8);
  v57 = &v39 - v9;
  v10 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v10 - 8);
  v42 = &v39 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v56 = type metadata accessor for LocalizedStringResource();
  v62 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v54 = &v39 - v20;
  v48 = sub_1005B981C(&qword_1019F6278, &unk_101471D10);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v13 + 104);
  v22(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v52 = v21;
  v40 = v12;
  v22(v15, v21, v12);
  v53 = v13 + 104;
  v41 = v22;
  v23 = v42;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = *(v62 + 56);
  v62 += 56;
  v49 = v24;
  v24(v23, 0, 1, v56);
  v25 = type metadata accessor for CRLBoardEntity(0);
  (*(*(v25 - 8) + 56))(v57, 1, 1, v25);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22(v15, v21, v12);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = v58;
  IntentDialog.init(_:)();
  v27 = type metadata accessor for IntentDialog();
  v46 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v47 = v28 + 56;
  v45 = v29;
  v29(v26, 0, 1, v27);
  v29(v50, 1, 1, v27);
  v43 = enum case for InputConnectionBehavior.default(_:);
  v30 = *(v63 + 104);
  v63 += 104;
  v44 = v30;
  v30(v59);
  sub_10070C278(&qword_1019F6290, type metadata accessor for CRLBoardEntity, aQ_25);
  *v61 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v57 = sub_1005B981C(&qword_101A15480, &unk_1014A03A0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31 = v52;
  v32 = v40;
  v33 = v41;
  v41(v15, v52, v40);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33(v15, v31, v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v49(v23, 0, 1, v56);
  v34 = type metadata accessor for String.IntentInputOptions();
  v66 = 0;
  v67 = 0;
  (*(*(v34 - 8) + 56))(v51, 1, 1, v34);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33(v15, v52, v32);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v35 = v58;
  IntentDialog.init(_:)();
  v45(v35, 0, 1, v46);
  v44(v59, v43, v60);
  v36 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v37 = v61;
  v61[1] = v36;
  sub_1005B981C(&qword_1019F6280, &qword_10146ED60);
  v64 = 0xD00000000000001FLL;
  v65 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v37[2] = result;
  v37[6] = &type metadata for CRLRenameBoardIntentPerformer;
  v37[7] = &off_10188EC78;
  return result;
}

uint64_t sub_100BFF1C8(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  type metadata accessor for LocalizedStringResource();
  v2[28] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6260, &unk_10146ED40);
  v2[29] = swift_task_alloc();
  v2[30] = type metadata accessor for CRLBoardEntity(0);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();

  return _swift_task_switch(sub_100BFF34C, 0, 0);
}

uint64_t sub_100BFF34C()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = static OS_os_log.appIntents;
  Logger.init(_:)();
  v0[39] = *v1;
  IntentParameter.wrappedValue.getter();
  v0[40] = v1[1];
  IntentParameter.wrappedValue.getter();
  v3 = v0[18];
  v4 = v0[19];
  v0[41] = v4;
  AppDependency.wrappedValue.getter();
  v0[13] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[14] = &off_1018AD9D0;
  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = sub_100BFF4A8;
  v6 = v0[35];

  return sub_10097B710(v6, v3, v4, (v0 + 10));
}

uint64_t sub_100BFF4A8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 344) = v2;

  if (v2)
  {
    sub_100689004(v6[35]);

    v7 = sub_100BFF7F8;
  }

  else
  {
    v8 = v6[35];
    v6[44] = a2;
    v6[45] = a1;
    sub_100689004(v8);

    sub_100005070(v6 + 10);
    v7 = sub_100BFF600;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100BFF600()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[37];
  v11 = v0[36];
  v12 = v0[38];
  v4 = v0[34];
  v5 = v0[32];
  v6 = v0[33];
  v10 = v0[31];
  IntentParameter.wrappedValue.getter();
  v0[22] = v2;
  v0[23] = v1;
  EntityProperty.wrappedValue.setter();
  sub_100689004(v4);
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v7 = sub_100B0768C();
  sub_1006B05D0(v6, v5);
  sub_1006B05D0(v5, v10);
  IntentParameter.wrappedValue.setter();
  sub_100689004(v5);
  sub_100689004(v6);
  v0[25] = v7;
  sub_10070C278(&qword_1019F7410, type metadata accessor for CRLBoardEntity, byte_1014869B8);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100689004(v4);
  (*(v3 + 8))(v12, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100BFF7F8()
{
  v32 = v0;
  v1 = *(v0 + 344);
  sub_100005070((v0 + 80));
  *(v0 + 192) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 216);

    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    sub_100C00420(v2, v0 + 16);
    sub_10070C1F4(v3, v4, v5);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    sub_10070C20C(v3, v4, v5);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v8 = 136315394;
      IntentParameter.wrappedValue.getter();
      v9 = *(v0 + 160);
      v10 = *(v0 + 168);
      sub_100C00458(v0 + 16);
      v11 = sub_101007640(v9, v10, &v31);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2112;
      sub_10070C224();
      swift_allocError();
      *v12 = v3;
      *(v12 + 8) = v4;
      *(v12 + 16) = v5;
      sub_10070C1F4(v3, v4, v5);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v13;
      *v29 = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Tried to rename board with invalid title: %s - %@", v8, 0x16u);
      sub_10000CAAC(v29, &unk_101A27F60, &unk_1014779D0);

      sub_100005070(v30);
    }

    else
    {

      sub_100C00458(v0 + 16);
    }

    v23 = *(v0 + 296);
    v22 = *(v0 + 304);
    v24 = *(v0 + 288);
    v25 = *(v0 + 232);
    IntentParameter.projectedValue.getter();
    sub_1007B020C(v3, v4, v5);
    sub_10070C20C(v3, v4, v5);
    IntentDialog.init(_:)();
    v26 = type metadata accessor for IntentDialog();
    (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
    type metadata accessor for AppIntentError();
    sub_10070C278(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_10000CAAC(v25, &qword_1019F6260, &unk_10146ED40);
    swift_willThrow();
    (*(v23 + 8))(v22, v24);
  }

  else
  {

    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error renaming the board: %@", v16, 0xCu);
      sub_10000CAAC(v17, &unk_101A27F60, &unk_1014779D0);
    }

    v20 = *(v0 + 296);
    v19 = *(v0 + 304);
    v21 = *(v0 + 288);

    type metadata accessor for AppIntentError();
    sub_10070C278(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    static AppIntentError.Unrecoverable.unknown.getter();
    swift_willThrow();

    (*(v20 + 8))(v19, v21);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100BFFD88()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10061655C(v6, qword_101AD7870);
  sub_1005EB3DC(v6, qword_101AD7870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100BFFF84()
{
  v0 = sub_1005B981C(&qword_101A15488, &qword_1014A03B8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_101A15490, &qword_1014A03C0);
  __chkstk_darwin(v1);
  sub_100BFE70C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x20656D616E6552;
  v2._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A15498, &qword_1014A03F0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A154A0, &unk_1014A0420);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t sub_100C00190()
{
  result = qword_101A15460;
  if (!qword_101A15460)
  {
    result = swift_getWitnessTable("i>9", &type metadata for CRLRenameBoardIntent, v0, v1);
    atomic_store(result, &qword_101A15460);
  }

  return result;
}

unint64_t sub_100C001E8()
{
  result = qword_101A15468;
  if (!qword_101A15468)
  {
    result = swift_getWitnessTable("Q>9", &type metadata for CRLRenameBoardIntent, v0, v1);
    atomic_store(result, &qword_101A15468);
  }

  return result;
}

uint64_t sub_100C0028C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1EB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1005EB3DC(v2, qword_101AD7870);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100C00338(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_100BFF1C8(a1);
}

uint64_t sub_100C003D4(uint64_t a1)
{
  v2 = sub_100BFE70C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

id sub_100C00488()
{
  v12 = 0;
  v11 = 0;
  [v0 getControlPointAtIndex:0 values:&v12];
  [v0 getControlPointAtIndex:1 values:&v11];
  v1 = 1.0 - *&v11;
  v2 = 1.0 - *(&v11 + 1);
  v3 = 1.0 - *&v12;
  v4 = 1.0 - *(&v12 + 1);
  v5 = objc_allocWithZone(CAMediaTimingFunction);
  *&v6 = v1;
  *&v7 = v2;
  *&v8 = v3;
  *&v9 = v4;
  return [v5 initWithControlPoints:v6 :v7 :v8 :v9];
}

CGFloat sub_100C00548(_OWORD *a1, _OWORD *a2)
{
  v3 = a1[5];
  *&a.m31 = a1[4];
  *&a.m33 = v3;
  v4 = a1[7];
  *&a.m41 = a1[6];
  *&a.m43 = v4;
  v5 = a1[1];
  *&a.m11 = *a1;
  *&a.m13 = v5;
  v6 = a1[3];
  *&a.m21 = a1[2];
  *&a.m23 = v6;
  v7 = a2[5];
  *&v16.m31 = a2[4];
  *&v16.m33 = v7;
  v8 = a2[7];
  *&v16.m41 = a2[6];
  *&v16.m43 = v8;
  v9 = a2[1];
  *&v16.m11 = *a2;
  *&v16.m13 = v9;
  v10 = a2[3];
  *&v16.m21 = a2[2];
  *&v16.m23 = v10;
  CATransform3DConcat(&v18, &a, &v16);
  v11 = *&v18.m33;
  a1[4] = *&v18.m31;
  a1[5] = v11;
  v12 = *&v18.m43;
  a1[6] = *&v18.m41;
  a1[7] = v12;
  v13 = *&v18.m13;
  *a1 = *&v18.m11;
  a1[1] = v13;
  result = v18.m21;
  v15 = *&v18.m23;
  a1[2] = *&v18.m21;
  a1[3] = v15;
  return result;
}

double sub_100C005E0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v33 = *&CATransform3DIdentity.m31;
  v34 = *&CATransform3DIdentity.m33;
  v35 = *&CATransform3DIdentity.m41;
  v36 = *&CATransform3DIdentity.m43;
  v29 = *&CATransform3DIdentity.m11;
  v30 = *&CATransform3DIdentity.m13;
  v31 = *&CATransform3DIdentity.m21;
  v32 = *&CATransform3DIdentity.m23;
  v4 = [a1 ancestorSharedWithLayer:a2];
  if (v4)
  {

    CALayerMapGeometry();
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    *&v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37, "layerForApplying must be related to repLayer to add insertion animation. Falling back to using the identity transform; animation may appear incorrect.", 150, 2u);
    StaticString.description.getter("transform(fromLayer:toLayer:)", 29, 2);
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/CRLLayerAnimationMath.swift", 107, 2);
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_1005CF000();
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 135;
    v18 = v37;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "layerForApplying must be related to repLayer to add insertion animation. Falling back to using the identity transform; animation may appear incorrect.", 150, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter("transform(fromLayer:toLayer:)", 29, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/CRLLayerAnimationMath.swift", 107, 2);
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter("layerForApplying must be related to repLayer to add insertion animation. Falling back to using the identity transform; animation may appear incorrect.", 150, 2);
    v27 = String._bridgeToObjectiveC()();

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:135 isFatal:0 format:v27 args:v24];
  }

  result = *&v33;
  a3[4] = v33;
  a3[5] = v34;
  a3[6] = v35;
  a3[7] = v36;
  *a3 = v29;
  a3[1] = v30;
  a3[2] = v31;
  a3[3] = v32;
  return result;
}

void sub_100C00A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  sub_1012E0400(a1, &off_1018A75D0);
  if (!v3)
  {
    sub_1012CF6CC(a1, &off_1018A75D0, v4);
  }
}

id sub_100C00AD0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CRLCommandDirtyBoard();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100C00BA8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1 && (v2 = v1, v3 = [v1 layerHost], v2, v3))
  {
    if ([v3 respondsToSelector:"asiOSCVC"])
    {
      v4 = [v3 asiOSCVC];
    }

    else
    {
      v4 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 presentedViewController];

  if (Strong)
  {
    if (v5)
    {
      sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
      v6 = static NSObject.== infix(_:_:)();

      result = 0;
      if ((v6 & 1) == 0)
      {
        return result;
      }

      return swift_unknownObjectWeakLoadStrong();
    }
  }

  else
  {
    if (!v5)
    {
      return swift_unknownObjectWeakLoadStrong();
    }
  }

  return 0;
}

double sub_100C00CF8(void *a1)
{
  swift_unknownObjectWeakAssign();
  v2 = [a1 popoverPresentationController];
  if (v2)
  {
    v3 = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v5 = Strong, v6 = [Strong layerHost], v5, v6))
    {
      v7 = [v6 canvasView];
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    [v3 setSourceView:v7];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v10 = v8;
    v11 = [v8 layerHost];

    if (v11)
    {
      if ([v11 respondsToSelector:"asiOSCVC"])
      {
        v12 = [v11 asiOSCVC];
        swift_unknownObjectRelease();
        [v12 presentViewController:a1 animated:1 completion:0];
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_100C00ED4()
{
  v0 = sub_100C00BA8();
  if (v0)
  {
    v5 = v0;
    if (([v0 isBeingDismissed] & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        v3 = [Strong layerHost];

        if (v3)
        {
          if ([v3 respondsToSelector:"asiOSCVC"])
          {
            v4 = [v3 asiOSCVC];
            swift_unknownObjectRelease();
            [v4 dismissViewControllerAnimated:1 completion:0];
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

id sub_100C0116C(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLiOSShapeLibraryCanvasPopoverController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100C01210()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v24 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v24, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("interactiveCanvasController(for:)", 33, 2);
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLiOSShapeLibraryCanvasPopoverController.swift", 117, 2);
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_4;
    }

    while (1)
    {
      v9 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v2;
      v11 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v11;
      v12 = sub_1005CF04C();
      *(inited + 104) = v12;
      *(inited + 72) = v3;
      *(inited + 136) = &type metadata for String;
      v13 = sub_1000053B0();
      *(inited + 112) = v6;
      *(inited + 120) = v8;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v13;
      *(inited + 152) = 55;
      v14 = v24;
      *(inited + 216) = v11;
      *(inited + 224) = v12;
      *(inited + 192) = v14;
      v15 = v3;
      v16 = v14;
      v17 = static os_log_type_t.error.getter();
      v8 = &_mh_execute_header;
      sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v18 = static os_log_type_t.error.getter();
      sub_100005404(v9, &_mh_execute_header, v18, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v19 = swift_allocObject();
      v2 = v19;
      v19[2] = 8;
      v19[3] = 0;
      v19[4] = 0;
      v19[5] = 0;
      v20 = __VaListBuilder.va_list()();
      StaticString.description.getter("interactiveCanvasController(for:)", 33, 2);
      v21 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLiOSShapeLibraryCanvasPopoverController.swift", 117, 2);
      v6 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v3 = v22;
      v23 = String._bridgeToObjectiveC()();

      [v1 handleFailureInFunction:v21 file:v6 lineNumber:55 isFatal:0 format:v23 args:v20];

      __break(1u);
LABEL_4:
      swift_once();
    }
  }

  return result;
}

id sub_100C015BC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v2 = [Strong editingCoordinator], v1, !v2))
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("editingCoordinator(for:)", 24, 2);
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLiOSShapeLibraryCanvasPopoverController.swift", 117, 2);
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v12 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v5;
      v14 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v14;
      v15 = sub_1005CF04C();
      *(inited + 104) = v15;
      *(inited + 72) = v6;
      *(inited + 136) = &type metadata for String;
      v16 = sub_1000053B0();
      *(inited + 112) = v9;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v16;
      *(inited + 152) = 59;
      v17 = v27;
      *(inited + 216) = v14;
      *(inited + 224) = v15;
      *(inited + 192) = v17;
      v18 = v6;
      v19 = v17;
      v20 = static os_log_type_t.error.getter();
      v11 = &_mh_execute_header;
      sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v22 = swift_allocObject();
      v5 = v22;
      v22[2] = 8;
      v22[3] = 0;
      v22[4] = 0;
      v22[5] = 0;
      v23 = __VaListBuilder.va_list()();
      StaticString.description.getter("editingCoordinator(for:)", 24, 2);
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLiOSShapeLibraryCanvasPopoverController.swift", 117, 2);
      v9 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v6 = v25;
      v26 = String._bridgeToObjectiveC()();

      [v4 handleFailureInFunction:v24 file:v9 lineNumber:59 isFatal:0 format:v26 args:v23];

      __break(1u);
LABEL_6:
      swift_once();
    }
  }

  return v2;
}

id sub_100C01990()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v2 = [Strong layerHost], v1, !v2))
  {
LABEL_6:
    v6 = objc_opt_self();
    v7 = [v6 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("boardViewControllerTraitCollection(for:)", 40, 2);
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLiOSShapeLibraryCanvasPopoverController.swift", 117, 2);
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v14 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v7;
      v16 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v16;
      v17 = sub_1005CF04C();
      *(inited + 104) = v17;
      *(inited + 72) = v8;
      *(inited + 136) = &type metadata for String;
      v18 = sub_1000053B0();
      *(inited + 112) = v11;
      *(inited + 120) = v13;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v18;
      *(inited + 152) = 63;
      v19 = v29;
      *(inited + 216) = v16;
      *(inited + 224) = v17;
      *(inited + 192) = v19;
      v20 = v8;
      v21 = v19;
      v22 = static os_log_type_t.error.getter();
      v13 = &_mh_execute_header;
      sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v23, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v24 = swift_allocObject();
      v7 = v24;
      v24[2] = 8;
      v24[3] = 0;
      v24[4] = 0;
      v24[5] = 0;
      v25 = __VaListBuilder.va_list()();
      StaticString.description.getter("boardViewControllerTraitCollection(for:)", 40, 2);
      v26 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLiOSShapeLibraryCanvasPopoverController.swift", 117, 2);
      v11 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v8 = v27;
      v28 = String._bridgeToObjectiveC()();

      [v6 handleFailureInFunction:v26 file:v11 lineNumber:63 isFatal:0 format:v28 args:v25];

      __break(1u);
LABEL_8:
      swift_once();
    }
  }

  if (([v2 respondsToSelector:"asiOSCVC"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v3 = [v2 asiOSCVC];
  swift_unknownObjectRelease();
  v4 = [v3 traitCollection];

  return v4;
}

uint64_t sub_100C01DC8()
{
  v0 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_10061655C(v10, qword_101AD7888);
  sub_1005EB3DC(v10, qword_101AD7888);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100C020BC()
{
  v0 = sub_1005B981C(&qword_1019F8B00, "Ι%");
  __chkstk_darwin(v0 - 8);
  v88 = &v64 - v1;
  v2 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v2 - 8);
  v74 = &v64 - v3;
  v86 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v86 - 8);
  __chkstk_darwin(v86);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for LocalizedStringResource();
  v13 = *(v76 - 8);
  __chkstk_darwin(v76);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A155D0, &qword_1014A0768);
  v16 = sub_1005B981C(&qword_101A14778, &unk_1014A0770);
  v82 = v16;
  v17 = *(v16 - 8);
  v80 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v69 = 8 * v80;
  v19 = swift_allocObject();
  v68 = v19;
  *(v19 + 16) = xmmword_1014A04A0;
  v20 = (v19 + v18);
  v67 = *(v16 + 48);
  *v20 = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v85 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v4 + 104);
  v84 = v4 + 104;
  v81 = v21;
  v21(v6);
  v22 = v9;
  v23 = v6;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = *(v13 + 56);
  v83 = v13 + 56;
  v87 = v24;
  v25 = v76;
  v24(v74, 1, 1, v76);
  v77 = type metadata accessor for DisplayRepresentation.Image();
  v26 = *(v77 - 8);
  v27 = *(v26 + 56);
  v78 = v26 + 56;
  v79 = v27;
  v27(v88, 1, 1, v77);
  v73 = v20;
  DisplayRepresentation.init(title:subtitle:image:)();
  v28 = v80;
  v66 = &v20[v80];
  v29 = v82;
  v67 = *(v82 + 48);
  *v66 = 1;
  v72 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  v75 = v22;
  static Locale.current.getter();
  v30 = v81;
  v81(v23, v85, v86);
  v70 = v15;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31 = v74;
  v87(v74, 1, 1, v25);
  v32 = v77;
  v79(v88, 1, 1, v77);
  DisplayRepresentation.init(title:subtitle:image:)();
  v33 = 2 * v28;
  v67 = 2 * v28;
  v34 = v73;
  v65 = &v73[v33];
  v66 = *(v29 + 48);
  *v65 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v71 = v23;
  v30(v23, v85, v86);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v35 = v31;
  v36 = v76;
  v87(v31, 1, 1, v76);
  v37 = v32;
  v38 = v79;
  v79(v88, 1, 1, v37);
  DisplayRepresentation.init(title:subtitle:image:)();
  v39 = v80;
  v66 = &v34[v67 + v80];
  v40 = v82;
  v67 = *(v82 + 48);
  *v66 = 5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v41 = v71;
  v81(v71, v85, v86);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v87(v35, 1, 1, v36);
  v38(v88, 1, 1, v77);
  v42 = v35;
  DisplayRepresentation.init(title:subtitle:image:)();
  v67 = 4 * v39;
  v43 = v73;
  v66 = *(v40 + 48);
  v73[4 * v39] = 6;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v44 = v81;
  v81(v41, v85, v86);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v45 = v76;
  v87(v42, 1, 1, v76);
  v46 = v77;
  v79(v88, 1, 1, v77);
  DisplayRepresentation.init(title:subtitle:image:)();
  v47 = v43;
  v66 = &v43[v67 + v80];
  v67 = *(v82 + 48);
  *v66 = 7;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v48 = v71;
  v49 = v85;
  v44(v71, v85, v86);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v87(v74, 1, 1, v45);
  v50 = v79;
  v79(v88, 1, 1, v46);
  DisplayRepresentation.init(title:subtitle:image:)();
  v67 = *(v82 + 48);
  v47[6 * v80] = 3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v51 = v49;
  v52 = v86;
  v81(v48, v51, v86);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v53 = v74;
  v54 = v76;
  v55 = v87;
  v87(v74, 1, 1, v76);
  v56 = v77;
  v50(v88, 1, 1, v77);
  DisplayRepresentation.init(title:subtitle:image:)();
  v57 = v73;
  v58 = &v73[v69 - v80];
  v80 = *(v82 + 48);
  *v58 = 4;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v59 = v71;
  v81(v71, v85, v52);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v55(v53, 1, 1, v54);
  v60 = v88;
  v61 = v79;
  v79(v88, 1, 1, v56);
  DisplayRepresentation.init(title:subtitle:image:)();
  v80 = *(v82 + 48);
  v57[v69] = 8;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v81(v59, v85, v86);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v87(v53, 1, 1, v76);
  v61(v60, 1, 1, v77);
  DisplayRepresentation.init(title:subtitle:image:)();
  v62 = sub_100BD8D18(v68);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101AD78A0 = v62;
  return result;
}

unint64_t sub_100C02EE8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x44496472616F62;
    v5 = 0x6F4274726F706D69;
    if (a1 != 2)
    {
      v5 = 0x6F4274726F707865;
    }

    if (a1)
    {
      v4 = 0x64616F6C6E776F64;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x64616F6C6E776F64;
    if (a1 != 7)
    {
      v1 = 0x616F427465736572;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD000000000000011;
    if (a1 == 4)
    {
      v2 = 0x616F426572616873;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_100C0303C()
{
  result = qword_101A15568;
  if (!qword_101A15568)
  {
    result = swift_getWitnessTable(")19", &type metadata for CRLUtilitiesOperation, v0, v1);
    atomic_store(result, &qword_101A15568);
  }

  return result;
}

Swift::Int sub_100C03090()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100CB05D0(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100C030E0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100CB05D0(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_100C03124@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100C0389C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100C03154@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100C02EE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100C03184()
{
  result = qword_101A15570;
  if (!qword_101A15570)
  {
    result = swift_getWitnessTable(byte_1014A0590, &type metadata for CRLUtilitiesOperation, v0, v1);
    atomic_store(result, &qword_101A15570);
  }

  return result;
}

unint64_t sub_100C031DC()
{
  result = qword_101A15578;
  if (!qword_101A15578)
  {
    result = swift_getWitnessTable(byte_1014A05C8, &type metadata for CRLUtilitiesOperation, v0, v1);
    atomic_store(result, &qword_101A15578);
  }

  return result;
}

unint64_t sub_100C03234()
{
  result = qword_101A15580;
  if (!qword_101A15580)
  {
    result = swift_getWitnessTable(byte_1014A0518, &type metadata for CRLUtilitiesOperation, v0, v1);
    atomic_store(result, &qword_101A15580);
  }

  return result;
}

unint64_t sub_100C0328C()
{
  result = qword_101A15588;
  if (!qword_101A15588)
  {
    result = swift_getWitnessTable("q;9", &type metadata for CRLUtilitiesOperation, v0, v1);
    atomic_store(result, &qword_101A15588);
  }

  return result;
}

unint64_t sub_100C032E0()
{
  result = qword_101A15590;
  if (!qword_101A15590)
  {
    result = swift_getWitnessTable("YU9", &type metadata for CRLUtilitiesOperation, v0, v1);
    atomic_store(result, &qword_101A15590);
  }

  return result;
}

unint64_t sub_100C03334()
{
  result = qword_101A15598;
  if (!qword_101A15598)
  {
    result = swift_getWitnessTable("IU9", &type metadata for CRLUtilitiesOperation, v0, v1);
    atomic_store(result, &qword_101A15598);
  }

  return result;
}

unint64_t sub_100C0338C()
{
  result = qword_101A155A0;
  if (!qword_101A155A0)
  {
    atomic_store(result, &qword_101A155A0);
  }

  return result;
}

uint64_t sub_100C033E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1EC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1005EB3DC(v2, qword_101AD7888);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100C034D8(uint64_t a1)
{
  v2 = sub_100930180();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100C03528()
{
  result = qword_101A155A8;
  if (!qword_101A155A8)
  {
    result = swift_getWitnessTable(byte_1014A06E0, &type metadata for CRLUtilitiesOperation, v0, v1);
    atomic_store(result, &qword_101A155A8);
  }

  return result;
}

unint64_t sub_100C03580()
{
  result = qword_101A155B0;
  if (!qword_101A155B0)
  {
    result = swift_getWitnessTable("i79", &type metadata for CRLUtilitiesOperation, v0, v1);
    atomic_store(result, &qword_101A155B0);
  }

  return result;
}

unint64_t sub_100C035D8()
{
  result = qword_101A155B8;
  if (!qword_101A155B8)
  {
    result = swift_getWitnessTable("Y19", &type metadata for CRLUtilitiesOperation, v0, v1);
    atomic_store(result, &qword_101A155B8);
  }

  return result;
}

uint64_t sub_100C0362C()
{
  if (qword_1019F1EC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100C03688(uint64_t a1)
{
  v2 = sub_100C0338C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100C036D8()
{
  result = qword_101A155C0;
  if (!qword_101A155C0)
  {
    v3 = sub_1005C4E5C(&qword_101A155C8, &qword_1014A0708);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_101A155C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLBoardLibraryFolderViewModel.TimeBucket.BucketType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}