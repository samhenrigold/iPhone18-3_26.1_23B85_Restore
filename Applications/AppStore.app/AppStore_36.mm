double sub_1003FF938(char *a1, uint64_t a2)
{
  sub_10015FE64(a2);
  sub_100160F74(2, v3);
  v4 = [a1 navigationController];
  v5 = [v4 topViewController];

  if (!v5 || (sub_100005744(0, &qword_1009711C0, UIViewController_ptr), v6 = a1, v7 = static NSObject.== infix(_:_:)(), v5, v6, (v7 & 1) == 0))
  {
    v8 = [a1 navigationController];
    if (v8)
    {
      v9 = v8;
    }
  }

  v10 = *&a1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController];
  v11 = [v10 searchBar];
  SearchAction.term.getter();
  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v11 setText:v13];

  [v10 setActive:1];
  *&a1[OBJC_IVAR____TtC8AppStore20SearchViewController_pendingSearchAction] = 0;

  return result;
}

void sub_1003FFAE0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GuidedSearchTokenCollection();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  if ([*(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchController) isActive] && *(*(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSection) == 2)
  {
    v19 = v4;
    v20 = v1;
    sub_100403A28(&qword_100984530, &type metadata accessor for GuidedSearchTokenCollection, &protocol conformance descriptor for GuidedSearchTokenCollection);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (aBlock[0] == aBlock[6])
    {
      sub_1003FC014();
    }

    else
    {
      sub_1003FBC24();
      sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      v18 = static OS_dispatch_queue.main.getter();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
      v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      (*(v11 + 32))(v15 + v14, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      aBlock[4] = sub_100403450;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C1A00;
      v16 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100403A28(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
      sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v17 = v18;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v16);

      (*(v19 + 8))(v6, v3);
      (*(v21 + 8))(v9, v22);
    }
  }
}

void sub_1003FFF74(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for GuidedSearchTokenCollection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v11 = Strong;
  v12 = sub_1003FEDA8();

  if (!v12)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_8;
  }

  type metadata accessor for ImpressionsCalculator();
  swift_allocObject();
  swift_unknownObjectRetain();
  v14 = ImpressionsCalculator.init(impressionableThreshold:tracker:)();
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {

LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v16 = v15;
  v17 = sub_1003FB368();

  (*(v7 + 16))(v9, a2, v6);
  sub_100403A28(&unk_100984538, &type metadata accessor for GuidedSearchTokenCollection, &protocol conformance descriptor for GuidedSearchTokenCollection);
  v18 = dispatch thunk of Sequence._copyToContiguousArray()();
  v19 = sub_1002A5F4C(v18);

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = OBJC_IVAR____TtC8AppStore20SearchViewController_guidedSearchContainerImpressionMetrics;
    v22 = v20;
    swift_beginAccess();
    sub_100031660(v22 + v21, v5, &qword_100973D30, &unk_1007B1DC0);
  }

  else
  {
    v23 = type metadata accessor for ImpressionMetrics();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  }

  sub_100554CB8(v14, v19, v5);
  swift_unknownObjectRelease();

  sub_10002B894(v5, &qword_100973D30, &unk_1007B1DC0);
LABEL_11:
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = sub_1003FB368();

    sub_10006CB94();
  }
}

char *sub_10040030C(unint64_t a1)
{
  v2 = sub_10002849C(&unk_1009796E0, &unk_1007C02F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for StoreTab();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v8 = a1 >> 62;
  if (!v8)
  {
    v36 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v36 = _CocoaArrayWrapper.endIndex.getter();
  if (!v36)
  {
    return 0;
  }

LABEL_3:
  if (v36 < 1)
  {
    __break(1u);
LABEL_33:
    result = _CocoaArrayWrapper.endIndex.getter();
    v22 = result;
    if (result)
    {
      goto LABEL_18;
    }

LABEL_34:

    return v6;
  }

  v27 = v8;
  v9 = 0;
  v32 = OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph;
  v10 = v37 & 0xC000000000000001;
  v11 = (v6 + 48);
  v29 = (v6 + 8);
  v30 = (v6 + 32);
  v33 = v37 & 0xC000000000000001;
  v31 = (v6 + 48);
  v28 = v4;
  do
  {
    if (v10)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v37 + 8 * v9 + 32);
    }

    v13 = v12;
    type metadata accessor for AccountButton(0);
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v35 = v14;
      sub_100031660(v14 + qword_1009D2930, v4, &unk_1009796E0, &unk_1007C02F0);
      if ((*v11)(v4, 1, v5) == 1)
      {

        sub_10002B894(v4, &unk_1009796E0, &unk_1007C02F0);
      }

      else
      {
        v15 = v34;
        (*v30)(v34, v4, v5);
        type metadata accessor for FloatingUnifiedMessageCoordinator();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v16 = v38;
        v4 = v28;
        v11 = v31;
        FloatingUnifiedMessageCoordinator.register(accountButton:with:for:)();

        v17 = v15;
        v10 = v33;
        (*v29)(v17, v5);
      }
    }

    else
    {
    }

    ++v9;
  }

  while (v36 != v9);
  if (!v27)
  {
    result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result == 1)
  {
LABEL_25:
    if (v10)
    {
      return specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    return *(v37 + 32);
  }

LABEL_16:
  v19 = [objc_allocWithZone(sub_10002849C(&qword_1009711E0 &unk_1007B2710))];
  *&v19[qword_100978370] = 0;
  v6 = v19;
  [v6 setNeedsLayout];
  *&v6[qword_100978378] = 5;
  [v6 setNeedsLayout];
  *&v6[qword_100978380] = 0x4028000000000000;
  [v6 setNeedsLayout];
  v6[qword_100978388] = 0;
  [v6 setNeedsLayout];
  sub_10002849C(&qword_1009711E8, &unk_1007C1200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = v37;

  sub_10071C0E4(inited);
  v8 = v21;
  swift_setDeallocating();
  result = sub_10002B894(inited + 32, &unk_1009711F0, &unk_1007B2720);
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v22 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (v22 >= 1)
  {
    for (i = 0; i != v22; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v8 + 8 * i + 32);
      }

      v25 = v24;
      [v6 addSubview:{v24, v27}];
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_100400860()
{
  v1 = OBJC_IVAR____TtC8AppStore20SearchViewController_navigationAccessories;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_navigationAccessories];

  v3 = [v0 traitCollection];
  v4 = *&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph];
  v5 = v3;

  v6 = sub_100401ED4(v2, v5, 0, v4);

  v27 = sub_10040030C(v6);

  v7 = [v0 navigationItem];
  v8 = *&v0[v1];

  v9 = [v0 traitCollection];

  v10 = v9;
  v11 = sub_100401ED4(v8, v10, 1u, v4);

  v12 = sub_10040030C(v11);

  if (v12)
  {
    v13 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v12];
  }

  else
  {
    v13 = 0;
  }

  [v7 setLeftBarButtonItem:{v13, v27}];

  v14 = [v0 navigationItem];
  v15 = *&v0[v1];

  v16 = [v0 traitCollection];

  v17 = v16;
  v18 = sub_100401ED4(v15, v17, 2u, v4);

  v19 = sub_10040030C(v18);

  if (v19)
  {
    v20 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v19];
  }

  else
  {
    v20 = 0;
  }

  [v14 setRightBarButtonItem:v20];

  v21 = [v0 navigationItem];
  v22 = [v21 rightBarButtonItem];

  if (v22)
  {
    [v22 setHidesSharedBackground:1];
  }

  v23 = *&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController];
  v24 = [v0 traitCollection];
  v25 = UITraitCollection.isSizeClassCompact.getter();

  v26 = *(v23 + qword_1009CF428);
  *(v23 + qword_1009CF428) = v25 & 1;
  sub_1003FB054(v26);
}

id sub_100400BA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v40 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v15).n128_u64[0];
  v19 = &v31 - v18;
  if (a2)
  {
    v20 = v16;
    v35 = v16;
    sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    v37 = v6;

    v33 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v21 = *(v12 + 8);
    v34 = v12 + 8;
    v36 = v21;
    v21(v14, v20);
    v22 = swift_allocObject();
    v22[2] = v3;
    v22[3] = a1;
    v22[4] = a2;
    aBlock[4] = sub_100403444;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008C1988;
    v23 = _Block_copy(aBlock);
    v24 = v3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100403A28(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    v25 = v39;
    v26 = v40;
    v27 = v38;
    v32 = v8;
    sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = v33;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v23);

    (*(v37 + 8))(v27, v25);
    (*(v26 + 8))(v10, v32);
    return v36(v19, v35);
  }

  else
  {
    v30 = *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController];

    return [v30 setActive:{0, v17}];
  }
}

uint64_t sub_100400FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v3 - 8);
  v5 = v22 - v4;
  v6 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10002849C(&unk_100982AA0, qword_1007C0320);
  __chkstk_darwin(v7 - 8);
  v9 = v22 - v8;
  v10 = type metadata accessor for SearchOrigin();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v14 - 8);
  v16 = v22 - v15;
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 104))(v13, enum case for SearchOrigin.ppt(_:), v10);
  v18 = type metadata accessor for SearchEntity();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  static ActionMetrics.notInstrumented.getter();
  v19 = type metadata accessor for ReferrerData();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  type metadata accessor for SearchAction();
  swift_allocObject();

  v20 = SearchAction.init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)();
  memset(v22, 0, sizeof(v22));
  sub_1003FEEE4(v20, 0);

  return sub_10002B894(v22, &unk_1009711D0, &unk_1007B1A10);
}

uint64_t sub_100401384()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  *&v6 = __chkstk_darwin(v15).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController] searchBar];
  [v9 resignFirstResponder];

  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_100403424;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C1938;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100403A28(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v4, v2);
  return (*(v5 + 8))(v8, v15);
}

id sub_1004016DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchViewController(uint64_t a1)
{
  result = qword_1009844A8;
  if (!qword_1009844A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004018B4(uint64_t a1)
{
  sub_1000E0A08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004019F8(uint64_t a1)
{
  v2 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100118188(a1, v4);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    result = *v4;
    if (*v4)
    {

      return 1;
    }
  }

  else
  {
    sub_1001181EC(v4);
    return 0;
  }

  return result;
}

uint64_t sub_100401AF4(uint64_t a1)
{
  v3 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  sub_100031660(a1, &v8 - v4, &qword_100973D30, &unk_1007B1DC0);
  v6 = OBJC_IVAR____TtC8AppStore20SearchViewController_guidedSearchContainerImpressionMetrics;
  swift_beginAccess();
  sub_100402C18(v5, v1 + v6);
  return swift_endAccess();
}

id sub_100401BC8(id result)
{
  if (!result)
  {
    sub_1003FC528(1);
    v2 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchController);

    return [v2 setShowsSearchResultsController:0];
  }

  return result;
}

char *sub_100401C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
  v13[4] = sub_100403A28(&unk_1009767D0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter, &unk_1007B53D0);
  v13[0] = a2;
  sub_10002C0AC(v13, v12);
  type metadata accessor for SearchFocusDiffablePagePresenter();
  swift_allocObject();

  v5 = SearchFocusDiffablePagePresenter.init(objectGraph:sidePackedPage:supportsFastImpressions:advertLifecycleMetricsReporter:)();
  v6 = sub_100403A28(&unk_100984510, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  sub_10002849C(&qword_1009844F0, &qword_1007B12D0);
  type metadata accessor for Dependency();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B10D0;
  type metadata accessor for AdvertRotationControllerProvider();
  sub_10002C0AC(v13, v12);
  swift_allocObject();

  v12[0] = AdvertRotationControllerProvider.init(supportsAdvertRotation:advertLifecycleMetricsReporter:)();
  Dependency.init<A>(satisfying:with:)();
  v8 = sub_10054A47C(a3, v5, v6, v7, 0x6F46686372616573, 0xEF65676150737563);

  v9 = objc_allocWithZone(type metadata accessor for SearchFocusDiffablePageViewController(0));
  v10 = sub_100065C48(v5, v8);
  sub_100007000(v13);
  return v10;
}

void *sub_100401ED4(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v6 = _swiftEmptyArrayStorage;
    v7 = &unk_1009711F0;
    v31 = v4;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = isUniquelyReferenced_nonNull_bridgeObject;
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        v8 = *(v33 + 8 * v5);

        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_43;
        }
      }

      v10 = _swiftEmptyArrayStorage;
      if ((*(v8 + 16))(a2) == a3)
      {
        v10 = sub_1000C5DDC(a4);
      }

      v11 = v10 >> 62;
      v12 = v10 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v6 >> 62;
      if (v6 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
      {
        goto LABEL_42;
      }

LABEL_15:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          goto LABEL_22;
        }

LABEL_21:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_22;
      }

      if (v13)
      {
        goto LABEL_21;
      }

      v15 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = v6;
        goto LABEL_23;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v17 >> 1) - v16) < v12)
          {
            goto LABEL_46;
          }

          v20 = v15 + 8 * v16 + 32;
          v38 = v5;
          v32 = v15;
          if (v11)
          {
            if (v18 < 1)
            {
              goto LABEL_48;
            }

            sub_100097060(&qword_100982818, v7, &unk_1007B2720, &protocol conformance descriptor for [A]);
            v21 = v7;
            for (i = 0; i != v18; ++i)
            {
              sub_10002849C(v7, &unk_1007B2720);
              v23 = sub_100548E5C(v39, i, v10);
              v25 = *v24;
              (v23)(v39, 0);
              *(v20 + 8 * i) = v25;
            }
          }

          else
          {
            sub_100005744(0, &qword_100972EB0, UIView_ptr);
            swift_arrayInitWithCopy();
            v21 = v7;
          }

          v4 = v31;
          v7 = v21;
          v5 = v38;
          v6 = v40;
          if (v12 >= 1)
          {
            v26 = *(v32 + 16);
            v9 = __OFADD__(v26, v12);
            v27 = v26 + v12;
            if (v9)
            {
              goto LABEL_47;
            }

            *(v32 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      v6 = v40;
      if (v12 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v5 == v4)
      {
        return v6;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
    v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
    {
      goto LABEL_15;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_100402294(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v41[1] = ObjectType;
  v7 = sub_10002849C(&qword_1009844C0, &qword_1007CC030);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v41 - v8;
  v9 = sub_10002849C(&unk_1009844C8, &qword_1007CC038);
  v43 = *(v9 - 8);
  *&v44 = v9;
  __chkstk_darwin(v9);
  v42 = v41 - v10;
  v11 = OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v12 + 50) = 0u;
  *(v12 + 40) = 0u;
  *&v3[v11] = v12;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___resultsMessageView] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchTextInput] = 0;
  v3[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController] = 0;
  *(v12 + 24) = 0u;
  v13 = &v3[OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController];
  *v13 = 0;
  v13[1] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_pendingSearchAction] = 0;
  v14 = OBJC_IVAR____TtC8AppStore20SearchViewController_guidedSearchContainerImpressionMetrics;
  v15 = type metadata accessor for ImpressionMetrics();
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  v3[OBJC_IVAR____TtC8AppStore20SearchViewController_prefersLargeTitle] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_navigationAccessories] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_facetsPresenter] = a1;
  type metadata accessor for ASKBagContract();

  BaseObjectGraph.inject<A>(_:)();
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_bag] = v50[0];

  ASKBagContract.impressionableThreshold.getter();
  v17 = v16;

  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_paletteImpressionableThreshold] = v17;
  type metadata accessor for GuidedSearchPresenter();
  BaseObjectGraph.inject<A>(_:)();
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_guidedSearchPresenter] = v50[0];
  type metadata accessor for SearchGhostHintMetricsTracker();
  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for SearchTextPresenter();
  swift_allocObject();
  v18 = SearchTextPresenter.init(ghostHintMetricsTracker:)();
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchTextPresenter] = v18;
  v19 = objc_allocWithZone(type metadata accessor for SearchResultsContainerViewController());

  v20 = sub_100160C6C(a1, v18, a2);

  v21 = OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController;
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] = v20;
  v22 = [objc_allocWithZone(type metadata accessor for SearchController()) initWithSearchResultsController:v20];
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController] = v22;
  [v22 setShowsSearchResultsController:0];
  v23 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
  v24 = swift_allocObject();
  type metadata accessor for PromotedContentMetricCollector();
  *(v24 + 16) = static PromotedContentMetricCollector.shared.getter();
  v50[3] = v23;
  v50[4] = sub_100403A28(&unk_1009767D0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter, &unk_1007B53D0);
  v50[0] = v24;
  sub_10002C0AC(v50, v49);
  type metadata accessor for SearchLandingDiffablePagePresenter();
  swift_allocObject();

  v25 = SearchLandingDiffablePagePresenter.init(objectGraph:supportsFastImpressions:advertLifecycleMetricsReporter:)();
  SearchLandingDiffablePagePresenter.onFocusPageFetched.getter();
  v26 = *&v3[v21];
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a2;
  v27[4] = ObjectType;
  sub_10002849C(&qword_1009844D8, &unk_1007CC040);
  sub_100097060(&qword_1009844E0, &qword_1009844D8, &unk_1007CC040, &protocol conformance descriptor for SyncEvent<A>);

  v28 = v26;
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v29 = v42;
  EventEmitter.addObserver(on:singleUse:_:)();

  sub_100007000(v49);
  (*(v43 + 8))(v29, v44);
  v30 = sub_100403A28(&qword_1009844E8, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  sub_10002849C(&qword_1009844F0, &qword_1007B12D0);
  type metadata accessor for Dependency();
  v31 = swift_allocObject();
  v44 = xmmword_1007B10D0;
  *(v31 + 16) = xmmword_1007B10D0;
  type metadata accessor for AdvertRotationControllerProvider();
  sub_10002C0AC(v50, v49);
  swift_allocObject();
  swift_retain_n();
  v49[0] = AdvertRotationControllerProvider.init(supportsAdvertRotation:advertLifecycleMetricsReporter:)();
  Dependency.init<A>(satisfying:with:)();
  v32 = sub_10054A47C(a2, v25, v30, v31, 0xD000000000000011, 0x8000000100811D20);

  v33 = objc_allocWithZone(type metadata accessor for SearchLandingDiffablePageViewController(0));
  *&v3[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController] = sub_10072AFC0(v25, v32);
  v34 = type metadata accessor for SearchViewController(0);
  v48.receiver = v3;
  v48.super_class = v34;
  v35 = objc_msgSendSuper2(&v48, "initWithNibName:bundle:", 0, 0);
  v36 = OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController;
  *(*&v35[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchResultsDelegate + 8) = &off_1008C1838;
  swift_unknownObjectWeakAssign();
  *(*&v35[v36] + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_delegate + 8) = &off_1008C1810;
  swift_unknownObjectWeakAssign();
  *(*&v35[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController] + qword_1009D3888 + 8) = &off_1008C1828;
  swift_unknownObjectWeakAssign();
  v37 = v35;

  GuidedSearchPresenter.onTokensDidChange.getter();

  sub_10002849C(&qword_1009844F8, &qword_1007CC050);
  sub_100097060(&unk_100984500, &qword_1009844F8, &qword_1007CC050, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v38 = v45;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v49);
  (*(v46 + 8))(v38, v47);
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v39 = swift_allocObject();
  *(v39 + 16) = v44;
  *(v39 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v39 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  sub_100007000(v50);
  return v37;
}

uint64_t sub_100402C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100402C88(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B0B70;
  sub_10002849C(&qword_100971200, qword_1007B2730);
  v5 = *(type metadata accessor for Accessory(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B10D0;
  v8 = (v7 + v6);
  v9 = *(sub_10002849C(&unk_100984520, &qword_1007CC800) + 48);
  *v8 = 1;
  sub_100031660(a2, &v8[v9], &unk_1009796E0, &unk_1007C02F0);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_1003978F8(_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_100065C3C;
  v11[3] = v10;
  sub_1000C5DDC(a1);

  *(v4 + 32) = v11;
  return v4;
}

void sub_100402E44(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore20SearchViewController_searchController];
  v5 = [v4 searchBar];
  v6 = v5;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      [v5 _setDisableDictationButton:1];

      v25 = v2[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding];
      v2[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding] = 0;
      if (v25)
      {
        v26 = *&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController];
        [v26 willMoveToParentViewController:0];
        v27 = [v26 view];
        if (!v27)
        {
LABEL_41:
          __break(1u);
          return;
        }

        v28 = v27;
        [v27 removeFromSuperview];

        [v26 removeFromParentViewController];
      }

      [v4 setShowsSearchResultsController:1];
      v29 = *(*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v29)
      {
        v29 = [v29 collectionView];
      }

      v7 = v29;
      v8 = [v2 navigationItem];
      v9 = [v2 navigationController];
      if (v9)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    [v5 _setDisableDictationButton:1];

    v10 = v2[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding];
    v2[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding] = 0;
    if (v10)
    {
      v11 = *&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController];
      [v11 willMoveToParentViewController:0];
      v12 = [v11 view];
      if (!v12)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v13 = v12;
      [v12 removeFromSuperview];

      [v11 removeFromParentViewController];
    }

    [v4 setShowsSearchResultsController:1];
    v14 = *(*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
    if (v14)
    {
      v14 = [v14 collectionView];
    }

    v7 = v14;
    v15 = [v2 navigationItem];
    v16 = [v2 navigationController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationBar];

      v19 = [v18 standardAppearance];
    }

    else
    {
      v19 = 0;
    }

    [v15 setScrollEdgeAppearance:v19];

    goto LABEL_31;
  }

  if (a1)
  {
    [v5 _setDisableDictationButton:0];

    v20 = v2[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding];
    v2[OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding] = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }

    v21 = *&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController];
    [v21 willMoveToParentViewController:0];
    v22 = [v21 view];
    if (v22)
    {
      v23 = v22;
      [v22 removeFromSuperview];

      [v21 removeFromParentViewController];
LABEL_16:
      [v4 setShowsSearchResultsController:1];
      v24 = *(*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v24)
      {
        v24 = [v24 collectionView];
      }

      v7 = v24;
      v8 = [v2 navigationItem];
      v9 = [v2 navigationController];
      if (v9)
      {
        goto LABEL_26;
      }

LABEL_27:
      v32 = 0;
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  [v5 _setDisableDictationButton:0];

  v7 = [*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchLandingViewController] collectionView];
  v8 = [v2 navigationItem];
  v9 = [v2 navigationController];
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_26:
  v30 = v9;
  v31 = [v9 navigationBar];

  v32 = [v31 scrollEdgeAppearance];
LABEL_28:
  [v8 setScrollEdgeAppearance:v32];

  sub_1003FC014();
LABEL_31:
  v33 = [v2 navigationItem];
  sub_10073D660();

  [v2 setContentScrollView:v7 forEdge:15];
  v34 = *(*&v2[OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v34)
  {
    swift_getObjectType();
    v35 = swift_conformsToProtocol2();
    if (v35)
    {
      v36 = v34;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  v37 = &v2[OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController];
  *v37 = v34;
  v37[1] = v35;

  swift_unknownObjectRelease();
}

void sub_100403450()
{
  v1 = *(type metadata accessor for GuidedSearchTokenCollection() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1003FFF74(v2, v3);
}

void sub_1004034C8(__n128 a1)
{
  v2 = OBJC_IVAR____TtC8AppStore20SearchViewController_palettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v3 + 50) = 0u;
  *(v3 + 40) = 0u;
  *(v1 + v2) = v3;
  *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___resultsMessageView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController____lazy_storage___tokenPalette) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchTextInput) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_showSearchLanding) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
  *(v3 + 24) = 0u;
  v4 = (v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_pendingSearchAction) = 0;
  v5 = OBJC_IVAR____TtC8AppStore20SearchViewController_guidedSearchContainerImpressionMetrics;
  v6 = type metadata accessor for ImpressionMetrics();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_prefersLargeTitle) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_navigationAccessories) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10040362C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_searchResultsContainerViewController);
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v3)
  {
    type metadata accessor for SearchResultsDiffablePageViewController(0);
    if (swift_dynamicCastClass())
    {
      v20 = v3;
      sub_100160F74(1, v4);
      PageFacetsPresenter.clear()();
      v5 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
      *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
      if (v5)
      {
        v6 = [v5 presentingViewController];
        if (v6)
        {
          v7 = v6;
          [v6 dismissViewControllerAnimated:1 completion:0];
        }
      }

      sub_1003FB648(0);
      sub_1003FF1C0(1);
LABEL_8:

      return;
    }

    type metadata accessor for SearchHintsViewController();
    if (swift_dynamicCastClass())
    {
      v9 = *(v2 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_searchFocusViewController);
      v20 = v3;
      if (v9)
      {
        sub_100160F74(3, v10);
        PageFacetsPresenter.clear()();
        v11 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
        *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
        if (v11)
        {
          v12 = [v11 presentingViewController];
          if (v12)
          {
            v13 = v12;
            [v12 dismissViewControllerAnimated:1 completion:0];
          }
        }

        sub_1003FB648(0);
      }

      else
      {
        sub_100160F74(0, v10);
        PageFacetsPresenter.clear()();
        v17 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
        *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
        if (v17)
        {
          v18 = [v17 presentingViewController];
          if (v18)
          {
            v19 = v18;
            [v18 dismissViewControllerAnimated:1 completion:0];
          }
        }

        sub_1003FB648(0);
        sub_100401384();
      }

      goto LABEL_8;
    }

    sub_100160F74(0, v8);
    PageFacetsPresenter.clear()();
    v14 = *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
    *(v1 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
    if (v14)
    {
      v15 = [v14 presentingViewController];
      if (v15)
      {
        v16 = v15;
        [v15 dismissViewControllerAnimated:1 completion:0];
      }
    }

    sub_1003FB648(0);

    sub_100401384();
  }

  else
  {

    sub_1003FF1C0(0);
  }
}

uint64_t sub_10040392C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_10001F63C(a3, a4);
  }

  return result;
}

void sub_100403994()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController);
  *(v0 + OBJC_IVAR____TtC8AppStore20SearchViewController_facetNavigationController) = 0;
  if (v1)
  {
    v4 = v1;
    v2 = [v1 presentingViewController];
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_100403A28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100403AF4()
{
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B5360;
  v1 = type metadata accessor for UITraitUserInterfaceStyle();
  *(v0 + 32) = v1;
  *(v0 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(v0 + 48) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v0 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v0 + 64) = type metadata accessor for UITraitLayoutDirection();
  *(v0 + 72) = &protocol witness table for UITraitLayoutDirection;
  *(v0 + 80) = v1;
  *(v0 + 88) = &protocol witness table for UITraitUserInterfaceStyle;
  result = type metadata accessor for UITraitHorizontalSizeClass();
  *(v0 + 96) = result;
  *(v0 + 104) = &protocol witness table for UITraitHorizontalSizeClass;
  qword_1009845C0 = v0;
  return result;
}

double sub_100403BA8()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_1009D0160);
  sub_1000056A8(v0, qword_1009D0160);
  AspectRatio.init(_:_:)();
  return result;
}

__n128 sub_100403BFC()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_1009D0180 = *&UIEdgeInsetsZero.top;
  *&qword_1009D0190 = v1;
  return result;
}

uint64_t sub_100403C18()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009845C8);
  sub_1000056A8(v0, qword_1009845C8);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100403D7C(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v36 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DDB0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D08A8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = type metadata accessor for StaticDimension();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14 = v3[1];
  v14(v5, v2);
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  if (qword_10096DDA8 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v6, qword_1009D0890);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v38);
  v34(v15, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  v32 = v14;
  if (qword_10096DD98 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v6, qword_1009D0860);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v38);
  v34(v18, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v32(v5, v2);
  SmallLockupLayout.Metrics.headingSpace.setter();
  v19 = v11;
  if (qword_10096DDA0 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v6, qword_1009D0878);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v24 = v32;
  v32(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  SmallLockupLayout.Metrics.numberOfLines.setter();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v38);
  v23(v25, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v24(v5, v2);
  return SmallLockupLayout.Metrics.subtitleSpace.setter();
}

uint64_t sub_100404364()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009845E0);
  sub_1000056A8(v0, qword_1009845E0);
  if (qword_10096DBD0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009845C8);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

char *sub_1004044C8(uint64_t a1)
{
  v2 = v1;
  v113 = a1;
  v110[1] = swift_getObjectType();
  v3 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v3 - 8);
  v5 = v110 - v4;
  v6 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v6 - 8);
  v8 = v110 - v7;
  *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_displayModeTransitionCoordinator] = 0;
  v9 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView;
  *&v1[v9] = [objc_allocWithZone(UIScrollView) init];
  v10 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_shadowView;
  type metadata accessor for ShadowView();
  *&v1[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView;
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView;
  *&v1[v13] = [objc_allocWithZone(type metadata accessor for AppPromotionMediaContainerView(0)) init];
  v14 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView;
  v15 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageContentView(0));
  *&v1[v14] = sub_10071D610(0);
  v16 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView;
  v17 = objc_allocWithZone(type metadata accessor for AppPromotionLearnMoreView(0));
  *&v1[v16] = sub_1002637E0(0);
  v18 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_separatorView;
  type metadata accessor for SeparatorView(0);
  *&v2[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *&v2[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView;
  *&v2[v20] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView] = 0;
  v21 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  *&v2[v21] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_videoBackgroundColor] = 0;
  v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_haveFlashedScrollIndicators] = 0;
  v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_isCollapsing] = 0;
  v22 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaOverlayStyle;
  v23 = enum case for MediaOverlayStyle.matchSystem(_:);
  v24 = type metadata accessor for MediaOverlayStyle();
  (*(*(v24 - 8) + 104))(&v2[v22], v23, v24);
  v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_includeBorderInDarkMode] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_defaultPageMargin] = 0;
  v25 = [objc_opt_self() buttonWithType:7];
  static UIButton.Configuration._glass()();
  v26 = type metadata accessor for UIButton.Configuration();
  (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
  UIButton.configuration.setter();
  *&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton] = v25;
  v27 = type metadata accessor for AppPromotionDetailPageView(0);
  v115.receiver = v2;
  v115.super_class = v27;
  v28 = v25;
  v29 = objc_msgSendSuper2(&v115, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v33 = v29;
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v33 setClipsToBounds:0];
  v34 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView;
  [*(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView) setClipsToBounds:0];
  [*(v33 + v34) setContentInsetAdjustmentBehavior:2];
  [v33 addSubview:*(v33 + v34)];
  v35 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_shadowView;
  v36 = qword_10096DA90;
  v37 = *(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_shadowView);
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Shadow();
  v39 = sub_1000056A8(v38, qword_1009CFE10);
  v40 = *(v38 - 8);
  (*(v40 + 16))(v5, v39, v38);
  (*(v40 + 56))(v5, 0, 1, v38);
  dispatch thunk of ShadowView.shadow.setter();

  v41 = *(v33 + v35);
  dispatch thunk of ShadowView.shouldAnimateBoundsChange.setter();

  [*(v33 + v34) addSubview:*(v33 + v35)];
  v42 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView;
  [*(v33 + v34) addSubview:*(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView)];
  v43 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView;
  *(*(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView) + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_delegate + 8) = &off_1008C1D18;
  swift_unknownObjectWeakAssign();
  [*(v33 + v42) addSubview:*(v33 + v43)];
  v44 = *(v33 + v42);
  v112 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView;
  [v44 addSubview:*(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView)];
  v45 = *(v33 + v42);
  v110[0] = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView;
  [v45 addSubview:*(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView)];
  v46 = *(v33 + v42);
  v111 = v28;
  [v46 addSubview:v28];
  v47 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_separatorView;
  v48 = *(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_separatorView);
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 labelColor];
  v52 = [v51 colorWithAlphaComponent:0.5];

  v53 = *&v50[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor];
  *&v50[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor] = v52;
  v54 = v52;

  [*&v50[OBJC_IVAR____TtC8AppStore13SeparatorView_lineView] setBackgroundColor:v54];
  [*(v33 + v42) addSubview:*(v33 + v47)];
  v55 = *(v33 + v42);
  v56 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView;
  [v55 addSubview:*(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView)];
  v57 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView;
  v58 = *(v33 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView);
  v59 = [v49 whiteColor];
  v60 = [v59 colorWithAlphaComponent:0.2];

  dispatch thunk of RoundedCornerView.borderColor.setter();
  v61 = *(v33 + v57);
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  [*(v33 + v57) setUserInteractionEnabled:0];
  [*(v33 + v57) setHidden:1];
  [*(v33 + v34) addSubview:*(v33 + v57)];
  v62 = v112;
  v63 = *&v112[v33];
  sub_100005744(0, &qword_10097CD40, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v63;
  v65 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_10071C58C(v65);

  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = *&v62[v33];
  v68 = (*&v67[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView] + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock);
  v69 = *v68;
  v70 = v68[1];
  *v68 = sub_1004090F8;
  v68[1] = v66;
  swift_retain_n();
  v71 = v67;
  sub_10001F63C(v69, v70);
  sub_1005061D8();

  v72 = *(v33 + v56);
  v73 = &v72[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock];
  v74 = *&v72[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock];
  v75 = *&v72[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_lockupTapBlock + 8];
  *v73 = sub_1004090F8;
  v73[1] = v66;

  v76 = v72;
  v77 = v110[0];
  v78 = v76;
  sub_10001F63C(v74, v75);
  sub_1005061D8();

  v79 = *(v33 + v77);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = v79;
  v81 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100264134(v81);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = v33;
  v83 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v84 = v111;
  [v111 addAction:v83 forControlEvents:64];

  if (qword_10096DBB8 != -1)
  {
    swift_once();
  }

  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
  v85 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  [*&v82[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_dismissTapGestureRecognizer] addTarget:v82 action:"dismissTapGestureRecognized"];
  v86 = *&v82[v85];
  [v86 setDelegate:v82];

  [v82 addGestureRecognizer:*&v82[v85]];
  sub_100407A00(0);
  v87 = *&v112[v33];
  v88 = *(v33 + v77);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  v89 = v87;
  v90 = v88;
  inject<A, B>(_:from:)();
  v91 = v114;
  type metadata accessor for AppPromotionDisplayModeTransitionCoordinator();
  v92 = swift_allocObject();
  *(v92 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v92 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v92 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v92 + 16) = 0;
  swift_unknownObjectWeakAssign();
  *(v92 + 40) = &off_1008D0538;
  swift_unknownObjectWeakAssign();
  *(v92 + 56) = &off_1008BAF28;
  swift_unknownObjectWeakAssign();
  *(v92 + 64) = v91;
  Strong = swift_unknownObjectWeakLoadStrong();
  v112 = v91;
  if (Strong)
  {
    v94 = Strong;
    v95 = *(v92 + 40);
    ObjectType = swift_getObjectType();
    v97 = v91;
    v98 = ObjectType;
    v99 = *(v95 + 8);
    v100 = v89;
    v101 = *(v99 + 16);
    v102 = v97;
    v103 = v99;
    v84 = v111;
    v101(0, v98, v103);
    v89 = v100;
  }

  else
  {
    v104 = v91;
  }

  v105 = swift_unknownObjectWeakLoadStrong();
  if (v105)
  {
    v106 = v105;
    v107 = *(v92 + 56);
    v108 = swift_getObjectType();
    (*(*(v107 + 8) + 16))(0, v108);
  }

  sub_1004CEBC4(0);

  *&v82[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_displayModeTransitionCoordinator] = v92;

  return v82;
}

void sub_100405178(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100180CAC();
      swift_unknownObjectRelease();
    }

    v4 = *&v3[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_displayModeTransitionCoordinator];
    if (v4)
    {
      v5 = *(v4 + 16);
      *(v4 + 16) = 1;

      sub_1004CEBC4((v5 & 1) == 0);
    }
  }
}

void sub_100405228(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100180560();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1004052A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100180CB8();
      swift_unknownObjectRelease();
    }

    v4 = *&v3[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_displayModeTransitionCoordinator];
    if (v4)
    {
      v5 = *(v4 + 16);
      *(v4 + 16) = 0;

      sub_1004CEBC4(v5);
    }
  }
}

void sub_100405350(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1002C17B4();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100180788();
      swift_unknownObjectRelease();
    }
  }
}

void sub_100405408(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MediaOverlayStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v11 = v4[2];
  v11(v9, v1 + v10, v3);
  sub_1004090A8(&qword_100978AF0, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = v4[1];
  v29(v9, v3);
  if ((v12 & 1) == 0)
  {
    v13 = v11;
    v27 = v11;
    v14 = *(v2 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView);
    v13(v9, v2 + v10, v3);
    v15 = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_mediaOverlayStyle;
    swift_beginAccess();
    v28 = v10;
    v26 = v4[3];
    v26(&v14[v15], v9, v3);
    swift_endAccess();
    v16 = v27;
    v27(v6, &v14[v15], v3);
    v17 = MediaOverlayStyle.userInterfaceStyle.getter();
    v18 = v6;
    v19 = v29;
    v29(v18, v3);
    [v14 setOverrideUserInterfaceStyle:v17];
    v19(v9, v3);
    v20 = *(v2 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView);
    v16(v9, v2 + v28, v3);
    v21 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_mediaOverlayStyle;
    swift_beginAccess();
    v22 = v26;
    v26((v20 + v21), v9, v3);
    swift_endAccess();
    sub_10071DF14();
    v23 = v29;
    v29(v9, v3);
    v24 = *(v2 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView);
    v27(v9, v2 + v28, v3);
    v25 = OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_mediaOverlayStyle;
    swift_beginAccess();
    v22(v24 + v25, v9, v3);
    swift_endAccess();
    sub_100263EF0();
    v23(v9, v3);
    sub_100407F6C();
    sub_100407E54(0);
  }
}

void (*sub_100405794(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView);
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_videoView;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004057FC;
}

void sub_1004057FC(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1004090A8(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v8 = v5;
      v9 = [v7 superview];
      if (v9)
      {
        v10 = v9;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v11 = v4;
        v12 = static NSObject.== infix(_:_:)();

        v13 = *(a1 + 16);
        if (v12)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            [v14 removeFromSuperview];
          }

          [*(v13 + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    else
    {
      v8 = v5;
    }

    v24 = *(a1 + 8);
    swift_unknownObjectWeakAssign();
    sub_1000CDB94();
    v25 = [v24 traitCollection];
    LOBYTE(v24) = UITraitCollection.isSizeClassRegular.getter();

    v26 = *(a1 + 8);
    if (v24)
    {
      sub_100407240();
    }

    [v26 setNeedsLayout];

    v27 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_1004090A8(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v31 = v5;
      v16 = [v7 superview];
      if (v16)
      {
        v17 = v16;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v18 = v4;
        v19 = static NSObject.== infix(_:_:)();

        v20 = *(a1 + 16);
        if (v19)
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            [v21 removeFromSuperview];
          }

          [*(v20 + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }

      v23 = v31;
    }

    else
    {
      v23 = v5;
    }

    v28 = *(a1 + 8);
    v32 = v23;
    swift_unknownObjectWeakAssign();
    sub_1000CDB94();

    v29 = [v28 traitCollection];
    LOBYTE(v28) = UITraitCollection.isSizeClassRegular.getter();

    v30 = *(a1 + 8);
    if (v28)
    {
      sub_100407240();
    }

    [v30 setNeedsLayout];
    v27 = v32;
  }
}

uint64_t sub_100405B34()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for AppPromotionDetailPageView(0);
  objc_msgSendSuper2(&v22, "layoutSubviews");
  [v0 bounds];
  result = CGRectIsEmpty(v23);
  if ((result & 1) == 0)
  {
    v3 = [v0 traitCollection];
    v4 = UITraitCollection.isSizeClassRegular.getter();

    if (v4)
    {
      sub_10040615C();
    }

    else
    {
      sub_100405DE4();
    }

    v5 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView];
    [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView] bounds];
    [v5 setContentSize:{v6, v7}];
    [v1 bounds];
    [v5 setBounds:{0.0, 0.0}];
    [v1 bounds];
    v8 = CGRectGetWidth(v24) * 0.5;
    [v1 bounds];
    [v5 setCenter:{v8, CGRectGetHeight(v25) * 0.5}];
    v9 = [v1 traitCollection];
    v10 = UITraitCollection.isSizeClassRegular.getter();

    if (v10)
    {
      sub_100407174();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = [v1 traitCollection];
      v14 = UITraitCollection.isSizeClassCompact.getter();

      if (v14)
      {
        [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton] frame];
        v16 = v15;
        [v12 frame];
        v18.f64[0] = v17 + -53.0;
        v19 = &v12[qword_1009D21B0];
        v20 = *&v12[qword_1009D21B0];
        v21 = *&v12[qword_1009D21B0 + 16];
        *v19 = xmmword_1007C8990;
        *(v19 + 2) = *&v18.f64[0];
        *(v19 + 3) = v16 + 25.0;
        v18.f64[1] = v16 + 25.0;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(xmmword_1007C8990, v20), vceqq_f64(v18, v21)))) & 1) == 0)
        {
          sub_1004E2320();
        }
      }
    }

    sub_1004064B4();
    return sub_100406D48();
  }

  return result;
}

id sub_100405DE4()
{
  v1 = v0;
  [v0 bounds];
  Height = CGRectGetHeight(v35);
  if (qword_10096DBC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for AspectRatio();
  sub_1000056A8(v3, qword_1009D0160);
  [v0 bounds];
  CGRectGetWidth(v36);
  AspectRatio.height(fromWidth:)();
  if (v4 >= Height)
  {
    v4 = Height;
  }

  v5 = ceil(v4);
  [v0 bounds];
  Width = CGRectGetWidth(v37);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView];
  v8 = type metadata accessor for AppPromotionMediaContainerView(0);
  v34.receiver = v7;
  v34.super_class = v8;
  objc_msgSendSuper2(&v34, "frame");
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v33.receiver = v7;
  v33.super_class = v8;
  v17 = objc_msgSendSuper2(&v33, "setFrame:", 0.0, 0.0, Width, v5);
  sub_1000CE0B8(v10, v12, v14, v16, v17, v18);
  [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView] setFrame:{0.0, 0.0, Width, v5}];
  v19 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView];
  sub_10071E4D4(v32, v5);
  sub_10071E720(v32, v30);
  v20 = [v19 traitCollection];
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v21 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v21)
    {
      v22 = *v30;
      sub_10057164C(v20, v31, v28);
      sub_10002A400(v28, v29);
      dispatch thunk of Placeable.measure(toFit:with:)();
      v24 = v22 + v23;
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (UITraitCollection.isSizeClassCompact.getter())
  {
    sub_10056F770(v20, v28, 0.0, 0.0, Width, v5);
  }

  else
  {
    sub_100570178(v20, v28, 0.0, 0.0, Width, v5);
  }

  sub_10002A400(v28, v29);
  dispatch thunk of Placeable.measure(toFit:with:)();
  Width = v25;
  v24 = v26;
LABEL_13:
  sub_100007000(v28);

  sub_100409138(v30);
  sub_10040918C(v32);
  [v19 setFrame:{0.0, 0.0, Width, v24}];
  [v19 setNeedsLayout];
  [v19 layoutIfNeeded];
  [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_shadowView] setFrame:{0.0, 0.0, Width, v24}];
  [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView] setFrame:{0.0, 0.0, Width, v24}];
  return [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView] setFrame:{0.0, 0.0, Width, v24}];
}

id sub_10040615C()
{
  v1 = v0;
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  [*&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_shadowView] setFrame:{0.0, 0.0}];
  [*&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView] setFrame:{0.0, 0.0, v3, v5}];
  [*&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView] setFrame:{0.0, 0.0, v3, v5}];
  if (qword_10096DBC0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for AspectRatio();
  sub_1000056A8(v6, qword_1009D0160);
  [v0 bounds];
  CGRectGetHeight(v44);
  AspectRatio.width(fromHeight:)();
  v41 = ceil(v7);
  [v0 bounds];
  Height = CGRectGetHeight(v45);
  v8 = *&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView];
  v9 = [v1 traitCollection];
  [v1 bounds];
  CGRect.withLayoutDirection(using:relativeTo:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = type metadata accessor for AppPromotionMediaContainerView(0);
  v43.receiver = v8;
  v43.super_class = v18;
  objc_msgSendSuper2(&v43, "frame");
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v42.receiver = v8;
  v42.super_class = v18;
  v27 = objc_msgSendSuper2(&v42, "setFrame:", v11, v13, v15, v17);
  sub_1000CE0B8(v20, v22, v24, v26, v27, v28);
  v46.origin.x = 0.0;
  v46.origin.y = 0.0;
  v46.size.width = v41;
  v46.size.height = Height;
  CGRectGetMaxX(v46);
  [v1 bounds];
  CGRectGetWidth(v47);
  v48.origin.x = 0.0;
  v48.origin.y = 0.0;
  v48.size.width = v41;
  v48.size.height = Height;
  CGRectGetWidth(v48);
  [v1 bounds];
  CGRectGetHeight(v49);
  v29 = [v1 traitCollection];
  [v1 bounds];
  CGRect.withLayoutDirection(using:relativeTo:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView];
  [v38 setFrame:{v31, v33, v35, v37}];
  [v38 setNeedsLayout];
  [v38 layoutIfNeeded];
  [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView] setFrame:{v31, v33, v35, v37}];
  result = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView];
  if (result)
  {
    return [result setFrame:{v31, v33, v35, v37}];
  }

  return result;
}

uint64_t sub_1004064B4()
{
  v1 = v0;
  v80 = type metadata accessor for Separator();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v3 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for OfferButtonMetrics();
  v4 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v73 - v7;
  v8 = type metadata accessor for SmallLockupLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  *&v85 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v73 - v13;
  v15 = [v0 traitCollection];
  UITraitCollection.isSizeClassCompact.getter();

  v83 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView];
  [v83 frame];
  CGRect.subtracting(insets:)();
  v82 = v16;
  v81 = v17;
  v19 = v18;
  v21 = v20;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView];
  if (qword_10096E700 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v8, qword_1009D25C0);
  v24 = type metadata accessor for SubscriptionLockupView();
  v90.receiver = v22;
  v90.super_class = v24;
  v84 = v24;
  objc_msgSendSuper2(&v90, "layoutMargins");
  v26 = v25;
  v28 = v27;
  v29 = [v22 traitCollection];
  v86 = v9;
  v30 = *(v9 + 16);
  v79 = v8;
  v77 = v30;
  v30(v14, v23, v8);
  v31 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v33 & 1) == 0 && ((v31 | v32) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v34 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v34 = qword_100991028;
    }

    v35 = v76;
    v36 = sub_1000056A8(v76, v34);
    v37 = v74;
    (*(v4 + 16))(v74, v36, v35);
    v38 = v75;
    (*(v4 + 32))(v75, v37, v35);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v4 + 8))(v38, v35);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
  v76 = v39;
  v41 = v40;

  v42 = *(v86 + 8);
  v43 = v79;
  v86 += 8;
  v42(v14, v79);
  v44 = v28 + v26 + v41;
  v45 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_separatorView];
  v46 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v47 = v78;
  v48 = v80;
  (*(v78 + 16))(v3, &v45[v46], v80);
  Separator.height(in:)();
  v50 = v49;
  (*(v47 + 8))(v3, v48);
  v51 = [v1 traitCollection];
  v52 = v19;
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v53 = v85;
    if (qword_10096DBD8 != -1)
    {
      swift_once();
    }

    v54 = qword_1009845E0;
  }

  else
  {
    v53 = v85;
    if (qword_10096DBD0 != -1)
    {
      swift_once();
    }

    v54 = qword_1009845C8;
  }

  v55 = sub_1000056A8(v43, v54);
  v77(*&v53, v55, v43);

  SmallLockupLayout.Metrics.artworkSize.getter();
  v57 = (v44 - v56) * 0.5;
  v58 = [v1 traitCollection];
  v59 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v59)
  {
    v60 = 18.0;
  }

  else
  {
    v60 = 18.0 - v57;
  }

  v61 = v21 + v57;
  v62 = v50 + v44 + v60;
  v85 = v44;
  v63 = v50;
  v64 = v82;
  v91.origin.x = v82;
  v65 = v81;
  v91.origin.y = v81;
  v91.size.width = v52;
  v91.size.height = v61;
  MinX = CGRectGetMinX(v91);
  v92.origin.x = v64;
  v92.origin.y = v65;
  v92.size.width = v52;
  v92.size.height = v61;
  [v45 setFrame:{MinX, CGRectGetMaxY(v92) - v62, v52, v63}];
  v93.origin.x = v64;
  v93.origin.y = v65;
  v93.size.width = v52;
  v93.size.height = v61;
  v67 = CGRectGetMinX(v93);
  [v45 frame];
  [v22 setFrame:{v67, v60 + CGRectGetMaxY(v94), *&v76, v85}];
  v68 = v83;
  [v45 setHidden:{objc_msgSend(*&v83[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_separatorView], "isHidden") ^ 1}];
  [v22 setHidden:{objc_msgSend(*&v68[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView], "isHidden") ^ 1}];
  if (qword_10096DBC8 != -1)
  {
    swift_once();
  }

  v69 = v84;
  v89.receiver = v22;
  v89.super_class = v84;
  objc_msgSendSuper2(&v89, "setLayoutMargins:", xmmword_1009D0180, *&qword_1009D0190, unk_1009D0198);
  v70 = *&v22[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  v88.receiver = v22;
  v88.super_class = v69;
  objc_msgSendSuper2(&v88, "layoutMargins");
  [v70 setLayoutMargins:?];
  v71 = *&v22[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
  v87.receiver = v22;
  v87.super_class = v69;
  objc_msgSendSuper2(&v87, "layoutMargins");
  [v71 setLayoutMargins:?];
  return (v42)(*&v53, v43);
}

id sub_100406D48()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  UITraitCollection.isSizeClassCompact.getter();

  [v1 bounds];
  CGRectGetMaxX(v15);
  [v1 bounds];
  CGRectGetMinY(v16);
  v3 = [v1 traitCollection];
  [v1 bounds];
  CGRect.withLayoutDirection(using:relativeTo:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton];

  return [v12 setFrame:{v5, v7, v9, v11}];
}

id sub_100406E78()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.isSizeClassRegular.getter();

  if (v3)
  {
    sub_10040615C();
  }

  else
  {
    sub_100405DE4();
  }

  [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView] layoutIfNeeded];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView];
  [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView] bounds];

  return [v4 setContentSize:{v5, v6}];
}

void sub_100407078()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView);
  v2 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_haveFlashedScrollIndicators;
  if ((*(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent;
    [*(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent) contentSize];
    v5 = v4;
    [*(v1 + v3) bounds];
    if (CGRectGetHeight(v10) < v5)
    {
      [*(v1 + v3) flashScrollIndicators];
      *(v1 + v2) = 1;
    }
  }

  v6 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_haveFlashedScrollIndicators;
  if ((*(v0 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v7 = *(v0 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView);
    [v7 contentSize];
    v9 = v8;
    [v7 bounds];
    if (CGRectGetHeight(v11) < v9)
    {
      [v7 flashScrollIndicators];
      *(v0 + v6) = 1;
    }
  }
}

id sub_100407174()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.isSizeClassCompact.getter();

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView];
    v6 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent;
    [*(v5 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent) contentSize];
    v8 = v7;
    [*(v5 + v6) bounds];
    v4 = CGRectGetHeight(v12) >= v8;
  }

  v9 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView];

  return [v9 setAlwaysBounceVertical:v4];
}

id sub_100407240()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
  }

  v5 = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView;
  v6 = [*(v2 + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView) isHidden];
  v7 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView;
  v8 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView];
  if (v4 || (v6 & 1) == 0)
  {
    if (v8)
    {
      v10 = v6;
      type metadata accessor for VideoMirrorView();
      if (swift_dynamicCastClass())
      {
        if (v10)
        {
LABEL_25:
          v45 = *&v1[v7];
          if (v45)
          {
            [v45 setHidden:0];
          }

          return [v1 setNeedsLayout];
        }

LABEL_13:
        v11 = *(v2 + v5);
        v12 = type metadata accessor for MirrorView();
        v13 = objc_allocWithZone(v12);
        swift_unknownObjectWeakInit();
        v14 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
        v15 = objc_allocWithZone(CALayer);
        v16 = v11;
        *&v13[v14] = [v15 init];
        *&v13[OBJC_IVAR____TtC8AppStore10MirrorView_imageKVOContext] = 0;
        v13[OBJC_IVAR____TtC8AppStore10MirrorView_imageObserversAdded] = 0;
        swift_unknownObjectWeakAssign();
        *&v13[OBJC_IVAR____TtC8AppStore10MirrorView_contentsScaleFactor] = 0x3FF0000000000000;
        *&v13[OBJC_IVAR____TtC8AppStore10MirrorView_contentsVerticalOffset] = 0;
        v46.receiver = v13;
        v46.super_class = v12;
        v17 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        [v17 setClipsToBounds:1];
        [v17 setUserInteractionEnabled:0];
        v18 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
        [*&v17[OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
        LODWORD(v19) = 1.0;
        [*&v17[v18] setOpacity:v19];
        [*&v17[v18] setAnchorPoint:{0.5, 0.5}];
        v20 = qword_10096D2F8;
        v21 = *&v17[v18];
        if (v20 != -1)
        {
          swift_once();
        }

        sub_10002849C(&unk_10097A780, &unk_1007CC250);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        [v21 setActions:isa];

        v23 = *&v17[v18];
        v24 = objc_opt_self();
        v25 = v23;
        v26 = [v24 mainScreen];
        [v26 scale];
        v28 = v27;

        [v25 setContentsScale:v28];
        [*&v17[v18] setMasksToBounds:1];
        v29 = *&v17[v18];
        v30 = *&CATransform3DIdentity.m33;
        v51 = *&CATransform3DIdentity.m31;
        v52 = v30;
        v31 = *&CATransform3DIdentity.m43;
        v53 = *&CATransform3DIdentity.m41;
        v54 = v31;
        v32 = *&CATransform3DIdentity.m13;
        v47 = *&CATransform3DIdentity.m11;
        v48 = v32;
        v33 = *&CATransform3DIdentity.m23;
        v49 = *&CATransform3DIdentity.m21;
        v50 = v33;
        [v29 setTransform:&v47];
        sub_1001DA558();
        v34 = [v17 layer];

        [v34 addSublayer:*&v17[v18]];
        v35 = *&v1[v7];
        if (!v35)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }

      if (!v4)
      {
        goto LABEL_25;
      }
    }

    else if (!v4)
    {
      if (v6)
      {
        return [v1 setNeedsLayout];
      }

      goto LABEL_13;
    }

    v38 = swift_unknownObjectWeakLoadStrong();
    v39 = *&CATransform3DIdentity.m33;
    v51 = *&CATransform3DIdentity.m31;
    v52 = v39;
    v40 = *&CATransform3DIdentity.m43;
    v53 = *&CATransform3DIdentity.m41;
    v54 = v40;
    v41 = *&CATransform3DIdentity.m13;
    v47 = *&CATransform3DIdentity.m11;
    v48 = v41;
    v42 = *&CATransform3DIdentity.m23;
    v49 = *&CATransform3DIdentity.m21;
    v50 = v42;
    v43 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
    v17 = sub_10075DCD8(v38, &v47, 1.0, 0.0);
    v35 = *&v1[v7];
    if (!v35)
    {
LABEL_16:
      v36 = 0;
LABEL_24:
      *&v1[v7] = v17;
      v44 = v17;

      [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView] insertSubview:v44 atIndex:0];
      [v1 setNeedsLayout];

      goto LABEL_25;
    }

LABEL_23:
    [v35 removeFromSuperview];
    v36 = *&v1[v7];
    goto LABEL_24;
  }

  if (v8)
  {
    [*&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView] removeFromSuperview];
    v9 = *&v1[v7];
  }

  else
  {
    v9 = 0;
  }

  *&v1[v7] = 0;

  return [v1 setNeedsLayout];
}

void sub_100407754(char a1, char a2)
{
  v5 = [v2 traitCollection];
  v6 = UITraitCollection.isSizeClassRegular.getter();

  if ((v6 & 1) == 0)
  {
    if (a1)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    if (a2)
    {
      v10 = objc_opt_self();
      v16[4] = sub_1000D0134;
      v16[5] = v9;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_100007A08;
      v16[3] = &unk_1008C1D78;
      v11 = _Block_copy(v16);

      [v10 animateWithDuration:4 delay:v11 options:0 animations:0.3 completion:0.0];

      _Block_release(v11);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = *(Strong + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView);
        v14 = Strong;

        [v13 setAlpha:v7];
        v15 = *&v14[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton];
        [v15 setAlpha:v7];
      }
    }
  }
}

void sub_10040796C(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView) setAlpha:a2];
    [*&v4[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_closeButton] setAlpha:a2];
  }
}

id sub_100407A00(void *a1)
{
  v2 = v1;
  sub_100407B94(a1);
  sub_100407E54(a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (v5)
  {
    v6 = -*&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_defaultPageMargin];
  }

  else
  {
    v6 = 0.0;
  }

  [*&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView] setScrollIndicatorInsets:{0.0, v6}];
  sub_1004083BC();
  sub_100407F6C();
  if (*&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_displayModeTransitionCoordinator])
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v8 = [Strong traitCollection];

      if (v8)
      {
        v9 = v8;
        if (UITraitCollection.isSizeClassCompact.getter())
        {
          LODWORD(v8) = UITraitCollection.prefersAccessibilityLayouts.getter();
        }

        else
        {
          LODWORD(v8) = 0;
        }

        if (!a1)
        {
LABEL_18:
          if ((v8 & 1) == 0)
          {
LABEL_20:

            goto LABEL_21;
          }

LABEL_19:
          sub_1004CEBC4(0);
          goto LABEL_20;
        }

LABEL_11:
        v10 = a1;
        if (UITraitCollection.isSizeClassCompact.getter())
        {
          v11 = UITraitCollection.prefersAccessibilityLayouts.getter();

          if (((v8 ^ v11) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {

          if ((v8 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (!a1)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

LABEL_21:

  return [v2 setNeedsLayout];
}

void sub_100407B94(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = [a1 horizontalSizeClass];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v2 traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (!a1 || v9 != v11)
  {
    sub_100407174();
    v12 = [v2 traitCollection];
    UITraitCollection.isSizeClassRegular.getter();

    v13 = enum case for CornerStyle.continuous(_:);
    v14 = *(v5 + 104);
    v14(v8, enum case for CornerStyle.continuous(_:), v4);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    v15 = *(v5 + 8);
    v15(v8, v4);
    v14(v8, v13, v4);
    dispatch thunk of ShadowView.setCorner(radius:style:)();
    v15(v8, v4);
    v14(v8, v13, v4);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    v15(v8, v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong _setCornerRadius:26.0];

    v17 = [v2 traitCollection];
    v18 = UITraitCollection.isSizeClassRegular.getter();

    if (v18)
    {
      sub_100407240();
    }

    else
    {
      v19 = *&v2[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView];
      if (v19)
      {
        [v19 setHidden:1];
      }
    }

    [v2 setNeedsLayout];
  }
}

void sub_100407E54(id a1)
{
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (!a1 || v3 != v5)
  {
    if (v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_includeBorderInDarkMode] == 1)
    {
      v6 = [v1 traitCollection];
      v7 = [v6 userInterfaceStyle];

      v8 = v7 != 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = *&v1[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView];

    [v9 setHidden:v8];
  }
}

void sub_100407F6C()
{
  v1 = v0;
  v2 = type metadata accessor for MediaOverlayStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  v43 = *(v0 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_separatorView);
  v8 = v43;
  v9 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v10 = *(v3 + 16);
  v48 = v3 + 16;
  v10(v7, v0 + v9, v2);
  v11 = MediaOverlayStyle.userInterfaceStyle.getter();
  v12 = *(v3 + 8);
  v12(v7, v2);
  [v8 setOverrideUserInterfaceStyle:v11];
  v13 = *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView);
  v44 = v9;
  v45 = v1;
  v14 = v7;
  v42 = v7;
  v15 = v7;
  v16 = v2;
  v10(v15, v1 + v9, v2);
  v41 = v10;
  v17 = MediaOverlayStyle.userInterfaceStyle.getter();
  v18 = v14;
  v19 = v16;
  v46 = v3 + 8;
  v12(v18, v16);
  v47 = v12;
  v20 = v13;
  [v13 setOverrideUserInterfaceStyle:v17];
  v21 = v40;
  v22 = v19;
  v10(v40, v1 + v9, v19);
  MediaOverlayStyle.userInterfaceStyle.getter();
  v12(v21, v19);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = String._bridgeToObjectiveC()();

  v49[3] = sub_100005744(0, &qword_1009846D0, NSString_ptr);
  v49[0] = v23;
  v24 = v23;
  sub_1002DCF64(v49);
  v25 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView;
  v26 = [*&v20[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView] isHidden];
  v27 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView;
  if (!v26)
  {
    v27 = v25;
  }

  v28 = [*(*&v20[v27] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) layer];
  [v28 setCompositingFilter:v24];

  v29 = [*&v20[v25] isHidden];
  v30 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView;
  if (!v29)
  {
    v30 = v25;
  }

  v31 = [*(*(*&v20[v30] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton) + OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel) layer];
  [v31 setCompositingFilter:v24];

  v32 = [*&v20[v25] isHidden];
  v33 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView;
  if (!v32)
  {
    v33 = v25;
  }

  v34 = *(*&v20[v33] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v35 = v42;
  v41(v42, v45 + v44, v22);
  v36 = v34;
  v37 = MediaOverlayStyle.userInterfaceStyle.getter();
  v47(v35, v22);
  if (v37 == 1)
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v38 = static UIColor.appTint.getter();
  }

  else
  {
    v38 = [objc_opt_self() whiteColor];
  }

  v39 = v38;
  [v36 setTintColor:v38];
}

uint64_t sub_1004083BC()
{
  v1 = type metadata accessor for SmallLockupLayout.Metrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v18 - v7;
  v9 = *&v0[OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView];
  v10 = [v0 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096DBD8 != -1)
    {
      swift_once();
    }

    v11 = qword_1009845E0;
  }

  else
  {
    if (qword_10096DBD0 != -1)
    {
      swift_once();
    }

    v11 = qword_1009845C8;
  }

  v12 = sub_1000056A8(v1, v11);
  v13 = *(v2 + 16);
  v13(v8, v12, v1);

  v14 = *&v9[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  v13(v4, v8, v1);
  v15 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 24))(&v14[v15], v4, v1);
  swift_endAccess();
  [v14 setNeedsLayout];
  v16 = *(v2 + 8);
  v16(v4, v1);
  [v9 setNeedsLayout];
  return (v16)(v8, v1);
}

uint64_t sub_100408654(uint64_t a1, id a2)
{
  [a2 locationInView:v2];
  v4 = v3;
  v6 = v5;
  v7 = [v2 hitTest:0 withEvent:?];
  sub_100005744(0, &qword_100978360, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    return 1;
  }

  [v2 bounds];
  v12.x = v4;
  v12.y = v6;
  if (!CGRectContainsPoint(v13, v12))
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    return 0;
  }

  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v7 = v7;
  v8 = v2;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return 0;
}

id sub_10040894C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppPromotionDetailPageView(uint64_t a1)
{
  result = qword_1009846A8;
  if (!qword_1009846A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100408B34(uint64_t a1)
{
  result = type metadata accessor for MediaOverlayStyle();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_100408C2C()
{
  result = qword_1009846B8;
  if (!qword_1009846B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009846B8);
  }

  return result;
}

void sub_100408CA0(void *a1)
{
  v2 = v1;
  sub_1000CFFBC();
  swift_unknownObjectWeakAssign();
  sub_1000CDB94();
  v3 = [v1 traitCollection];
  v4 = UITraitCollection.isSizeClassRegular.getter();

  if (v4)
  {
    sub_100407240();
  }

  [v2 setNeedsLayout];
}

uint64_t (*sub_100408D58(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100405794(v2);
  return sub_1000B4CAC;
}

uint64_t sub_100408DDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100408E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100408E9C(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_100408F38(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v5 = v2;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_1004090A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004091E0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_displayModeTransitionCoordinator) = 0;
  v2 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageScrollView;
  *(v1 + v2) = [objc_allocWithZone(UIScrollView) init];
  v3 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_shadowView;
  type metadata accessor for ShadowView();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView;
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for AppPromotionMediaContainerView(0)) init];
  v7 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView;
  v8 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageContentView(0));
  *(v1 + v7) = sub_10071D610(0);
  v9 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView;
  v10 = objc_allocWithZone(type metadata accessor for AppPromotionLearnMoreView(0));
  *(v1 + v9) = sub_1002637E0(0);
  v11 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_separatorView;
  type metadata accessor for SeparatorView(0);
  *(v1 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_borderView;
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaReplicationView) = 0;
  v14 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  *(v1 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_videoBackgroundColor) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_haveFlashedScrollIndicators) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_isCollapsing) = 0;
  v15 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaOverlayStyle;
  v16 = enum case for MediaOverlayStyle.matchSystem(_:);
  v17 = type metadata accessor for MediaOverlayStyle();
  (*(*(v17 - 8) + 104))(v1 + v15, v16, v17);
  *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_includeBorderInDarkMode) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_defaultPageMargin) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for FlowDestination(uint64_t a1)
{
  result = qword_100984748;
  if (!qword_100984748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004094B0(uint64_t a1)
{
  sub_100409AA4(319);
  if (v1 <= 0x3F)
  {
    sub_100409C14(319, &qword_100984780, &type metadata accessor for FlowOrigin, "url origin ");
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        sub_100409C14(319, &qword_100984788, &type metadata accessor for DynamicUIRequestInfo, "url requestInfo ");
        if (v4 <= 0x3F)
        {
          sub_10040A254(319, &qword_100984790, &qword_100984798, &type metadata accessor for SearchAction, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_10040A094(319, &qword_1009847A0, &qword_1009847A8, &qword_1007CC298);
            if (v6 <= 0x3F)
            {
              sub_10040A254(319, &qword_1009847B0, &qword_1009847B8, &type metadata accessor for Artwork, &type metadata accessor for Array);
              if (v7 <= 0x3F)
              {
                sub_10040A180(319, &qword_1009847C0, &qword_1009847C8, &qword_1007CC2A0, "url preview ");
                if (v8 <= 0x3F)
                {
                  sub_10040A094(319, &qword_1009847D0, &qword_1009847D8, &qword_1007CC2A8);
                  if (v9 <= 0x3F)
                  {
                    sub_10040A094(319, &qword_1009847E0, &qword_1009847E8, &qword_1007CC2B0);
                    if (v10 <= 0x3F)
                    {
                      sub_100409CFC(319);
                      if (v11 <= 0x3F)
                      {
                        sub_100409D94(319);
                        if (v12 <= 0x3F)
                        {
                          sub_100409E38(319);
                          if (v13 <= 0x3F)
                          {
                            sub_100409EB8(319);
                            if (v14 <= 0x3F)
                            {
                              sub_10040A208(319, &qword_100984830, &type metadata accessor for MarketingItemRequestInfo);
                              if (v15 <= 0x3F)
                              {
                                sub_100409F4C(319);
                                if (v16 <= 0x3F)
                                {
                                  sub_100409FCC(319);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_10040A064();
                                    if (v18 <= 0x3F)
                                    {
                                      sub_100005744(319, &qword_1009711C0, UIViewController_ptr);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_10040A208(319, &qword_100984860, &type metadata accessor for URL);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_10040A094(319, &qword_100984868, &qword_100984870, &qword_1007CC2E8);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_10040A118(319);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_10040A3C4(319, &qword_100984888, &type metadata for DebugMenuPage);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_10040A180(319, &qword_100984890, &qword_100984898, qword_1007CC2F0, "pageUrl sidepack ");
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_100409C14(319, &qword_1009848A0, &type metadata accessor for AdamId, "url adamId ");
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_10040A208(319, &qword_1009848A8, &type metadata accessor for ReviewsPage);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_100409C98(319, &qword_1009848B0, &type metadata accessor for URL, &type metadata accessor for Optional);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        sub_10040A254(319, &qword_1009848B8, &qword_1009848B0, &type metadata accessor for URL, &type metadata accessor for Optional);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          sub_10040A180(319, &qword_1009848C0, &qword_100983518, &qword_1007CAEA8, "url context ");
                                                          if (v29 <= 0x3F)
                                                          {
                                                            type metadata accessor for GenericPage();
                                                            if (v30 <= 0x3F)
                                                            {
                                                              sub_10040A2A8();
                                                              if (v31 <= 0x3F)
                                                              {
                                                                type metadata accessor for Review();
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  type metadata accessor for EditorsChoice();
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    sub_10040A2D8(319);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      sub_10040A36C();
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        sub_10040A410(319);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          sub_10040A4A0(319);
                                                                          if (v38 <= 0x3F)
                                                                          {
                                                                            sub_10040A520(319, v37);
                                                                            if (v39 <= 0x3F)
                                                                            {
                                                                              sub_10040A5A0(319);
                                                                              if (v40 <= 0x3F)
                                                                              {
                                                                                sub_10040A620(319);
                                                                                if (v41 <= 0x3F)
                                                                                {
                                                                                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100409AA4(uint64_t a1)
{
  if (!qword_100984758)
  {
    __chkstk_darwin(a1);
    type metadata accessor for URL();
    sub_10002D1A8(&qword_100984760, &qword_1007CC278);
    sub_10002D1A8(&qword_100984768, &qword_1007CC280);
    sub_10002D1A8(&qword_100984770, &qword_1007CC288);
    sub_10002D1A8(&qword_100984778, &qword_1007CC290);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100984758);
    }
  }
}

void sub_100409C14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for URL();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100409C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100409CFC(uint64_t a1)
{
  if (!qword_1009847F0)
  {
    type metadata accessor for ShareSheetData();
    sub_10002D1A8(&qword_1009847F8, &qword_1007CC2B8);
    type metadata accessor for ShareSheetAction.ShareSheetStyle();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1009847F0);
    }
  }
}

void sub_100409D94(uint64_t a1)
{
  if (!qword_100984800)
  {
    sub_10002D1A8(&qword_100984808, &qword_1007CC2C0);
    sub_10002D1A8(&unk_100984350, &unk_1007B47A0);
    type metadata accessor for HttpTemplateAction();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100984800);
    }
  }
}

void sub_100409E38(uint64_t a1)
{
  if (!qword_100984810)
  {
    sub_10002D1A8(&qword_100984818, &qword_1007CC2C8);
    type metadata accessor for ArcadePageUrls();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100984810);
    }
  }
}

void sub_100409EB8(uint64_t a1)
{
  if (!qword_100984820)
  {
    sub_10002D1A8(&qword_100982460, &unk_1007B5C90);
    sub_10002D1A8(&qword_100984828, &qword_1007CC2D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100984820);
    }
  }
}

void sub_100409F4C(uint64_t a1)
{
  if (!qword_100984838)
  {
    sub_10002D1A8(&qword_100984840, &qword_1007CC2D8);
    type metadata accessor for URL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100984838);
    }
  }
}

void sub_100409FCC(uint64_t a1)
{
  if (!qword_100984848)
  {
    sub_10002D1A8(&qword_100984850, &qword_1007CC2E0);
    type metadata accessor for ArcadeWelcomePage.ContentType();
    type metadata accessor for URL();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100984848);
    }
  }
}

void *sub_10040A064()
{
  result = qword_100984858;
  if (!qword_100984858)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100984858);
  }

  return result;
}

void sub_10040A094(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10002D1A8(a3, a4);
    sub_10002D1A8(&qword_100982460, &unk_1007B5C90);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10040A118(uint64_t a1)
{
  if (!qword_100984878)
  {
    sub_100005744(255, &qword_100984880, AMSFamilyMember_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100984878);
    }
  }
}

void sub_10040A180(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for URL();
    sub_10002D1A8(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10040A208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10040A254(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_100409C98(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

ValueMetadata *sub_10040A2A8()
{
  result = qword_1009848C8;
  if (!qword_1009848C8)
  {
    result = &type metadata for OnboardingConfiguration;
    atomic_store(&type metadata for OnboardingConfiguration, &qword_1009848C8);
  }

  return result;
}

void sub_10040A2D8(uint64_t a1)
{
  if (!qword_1009848D0)
  {
    sub_100005744(255, &qword_1009848D8, GKLeaderboard_ptr);
    sub_100005744(255, &qword_1009848E0, GKGameRecord_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1009848D0);
    }
  }
}

void sub_10040A36C()
{
  if (!qword_1009848E8)
  {
    sub_10040A3C4(0, &qword_10098A3F0, &type metadata for String);
    if (!v1)
    {
      atomic_store(v0, &qword_1009848E8);
    }
  }
}

void sub_10040A3C4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_10040A410(uint64_t a1)
{
  if (!qword_1009848F0)
  {
    sub_100005744(255, &qword_1009848E0, GKGameRecord_ptr);
    sub_10002D1A8(&unk_100977380, &qword_1007BB880);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1009848F0);
    }
  }
}

void sub_10040A4A0(uint64_t a1)
{
  if (!qword_1009848F8)
  {
    type metadata accessor for AppEventDetailPage();
    sub_10002D1A8(&qword_100980960, &unk_1007D70E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1009848F8);
    }
  }
}

void sub_10040A520(uint64_t a1, __n128 a2)
{
  if (!qword_100984900)
  {
    type metadata accessor for ContingentOfferDetailPage();
    sub_10002D1A8(&qword_100980960, &unk_1007D70E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_100984900);
    }
  }
}

void sub_10040A5A0(uint64_t a1)
{
  if (!qword_100984908)
  {
    type metadata accessor for OfferItemDetailPage();
    sub_10002D1A8(&qword_100980960, &unk_1007D70E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100984908);
    }
  }
}

void sub_10040A620(uint64_t a1)
{
  if (!qword_100984910)
  {
    sub_100005744(255, &qword_1009711C0, UIViewController_ptr);
    type metadata accessor for IndexPath();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100984910);
    }
  }
}

uint64_t sub_10040A6A4()
{
  v1 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v1);
  v3 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100118188(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x73657461647075;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v17 = *(sub_10002849C(&qword_100983688, &qword_1007CAF30) + 48);
      v18 = type metadata accessor for FlowOrigin();
      (*(*(v18 - 8) + 8))(v3 + v17, v18);
      v19 = type metadata accessor for URL();
      (*(*(v19 - 8) + 8))(v3, v19);
      return 0x6E776F6E6B6E75;
    case 2:
      sub_1001181EC(v3);
      return 0x65746973626577;
    case 3:
      sub_10002849C(&qword_100983680, &qword_1007CAF28);

      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 8))(v3, v13);
      return 0x5563696D616E7964;
    case 4:
      sub_1001181EC(v3);
      return 0x686372616573;
    case 5:

      v21 = sub_10002849C(&qword_100983670, &qword_1007CAF20);
      sub_10002B894(v3 + *(v21 + 48), &qword_100982460, &unk_1007B5C90);
      return 0xD000000000000019;
    case 6:
      sub_1001181EC(v3);
      return 0x7972656C6C6167;
    case 7:
      sub_10002849C(&qword_100983668, &qword_1007CAF18);

      v28 = type metadata accessor for URL();
      (*(*(v28 - 8) + 8))(v3, v28);
      return 0x6F65646976;
    case 8:

      v15 = sub_10002849C(&unk_10097CCB0, &qword_1007B7100);
      sub_10002B894(v3 + *(v15 + 48), &qword_100982460, &unk_1007B5C90);
      return 1701273968;
    case 9:

      v27 = sub_10002849C(&qword_100983608, &unk_1007CAEF0);
      sub_10002B894(v3 + *(v27 + 48), &qword_100982460, &unk_1007B5C90);
      return 0x7472616843706F74;
    case 10:

      v11 = *(sub_10002849C(&qword_100983590, &qword_1007CAEC8) + 64);
      v12 = type metadata accessor for ShareSheetAction.ShareSheetStyle();
      (*(*(v12 - 8) + 8))(v3 + v11, v12);
      return 0x6568536572616873;
    case 11:
      sub_1001181EC(v3);
      return 0x6F4374726F706572;
    case 12:
      sub_1001181EC(v3);
      return 0xD00000000000001ALL;
    case 13:

      v9 = *(sub_10002849C(&qword_1009703B8, &qword_1007CAF10) + 48);
      v10 = type metadata accessor for ArcadePageUrls();
      (*(*(v10 - 8) + 8))(v3 + v9, v10);
      return 0x656461637261;
    case 14:
      sub_10002849C(&qword_100983638, &qword_1007CAF00);

      sub_10002B894(v3, &qword_100982460, &unk_1007B5C90);
      return 0x7553656461637261;
    case 15:
    case 33:
      sub_1001181EC(v3);
      return 0xD000000000000013;
    case 16:

      v7 = *(sub_10002849C(&qword_100983648, &qword_1007CAF08) + 48);
      v8 = type metadata accessor for URL();
      goto LABEL_29;
    case 17:

      v22 = sub_10002849C(&qword_100975958, &unk_1007BA410);
      v23 = *(v22 + 48);
      v24 = *(v22 + 64);
      v25 = type metadata accessor for URL();
      (*(*(v25 - 8) + 8))(v3 + v24, v25);
      v26 = type metadata accessor for ArcadeWelcomePage.ContentType();
      (*(*(v26 - 8) + 8))(v3 + v23, v26);
      return 0x6557656461637261;
    case 18:
      sub_1001181EC(v3);
      return 0xD00000000000001CLL;
    case 19:
      sub_1001181EC(v3);
      return 0x746E6F4377656976;
    case 20:
      v20 = type metadata accessor for URL();
      (*(*(v20 - 8) + 8))(v3, v20);
      return 0x7961646F74;
    case 21:

      v31 = sub_10002849C(&qword_1009835C0, &unk_1007D2C60);
      sub_10002B894(v3 + *(v31 + 48), &qword_100982460, &unk_1007B5C90);
      return 0x656C6369747261;
    case 22:
      sub_1001181EC(v3);
      return 0x6573616863727570;
    case 23:
      sub_1001181EC(v3);
      return 0x6775626564;
    case 24:
      sub_10002849C(&qword_1009835B0, &qword_1007CAED0);

      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 8))(v3, v16);
      goto LABEL_21;
    case 25:
      v34 = *(sub_10002849C(&unk_1009835A0, &unk_1007C9170) + 48);
      v35 = type metadata accessor for AdamId();
      (*(*(v35 - 8) + 8))(v3 + v34, v35);
      v36 = type metadata accessor for URL();
      (*(*(v36 - 8) + 8))(v3, v36);
      return 0x7665526574697277;
    case 26:
      sub_1001181EC(v3);
      return 0x73776569766572;
    case 27:
      sub_1001181EC(v3);
      return 0x746E756F636361;
    case 28:
      sub_10002B894(v3, &qword_100982460, &unk_1007B5C90);
      return 0x65636E616E6966;
    case 29:
      v29 = sub_10002849C(&qword_100983578, &qword_1007CAEC0);
      sub_10002B894(v3 + *(v29 + 48), &qword_100983518, &qword_1007CAEA8);
      v30 = type metadata accessor for URL();
      (*(*(v30 - 8) + 8))(v3, v30);
      return 7304045;
    case 30:
      sub_1001181EC(v3);
      return 0x486E6F6973726576;
    case 31:
      return 0x696472616F626E6FLL;
    case 32:
      sub_1001181EC(v3);
      return 0x6544776569766572;
    case 34:
      sub_1001181EC(v3);
      goto LABEL_7;
    case 35:
      sub_1001181EC(v3);
      return 0xD000000000000017;
    case 36:
      sub_1001181EC(v3);
      return 0x6D65766569686361;
    case 37:

      v33 = sub_10002849C(&unk_10097CCB0, &qword_1007B7100);
      sub_10002B894(v3 + *(v33 + 48), &qword_100982460, &unk_1007B5C90);
      return 0x4479636176697270;
    case 38:

      v32 = sub_10002849C(&unk_10097CCB0, &qword_1007B7100);
      sub_10002B894(v3 + *(v32 + 48), &qword_100982460, &unk_1007B5C90);
      return 0xD000000000000012;
    case 39:

      v14 = sub_10002849C(&unk_10097CCB0, &qword_1007B7100);
      sub_10002B894(v3 + *(v14 + 48), &qword_100982460, &unk_1007B5C90);
      goto LABEL_21;
    case 40:
      sub_1001181EC(v3);
      return 0x746E657645707061;
    case 41:
      sub_1001181EC(v3);
      goto LABEL_46;
    case 42:
      sub_1001181EC(v3);
      return 0x657449726566666FLL;
    case 43:

      v7 = *(sub_10002849C(&qword_100983570, &qword_1007CAEB8) + 48);
      v8 = type metadata accessor for IndexPath();
LABEL_29:
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
      return 0xD000000000000011;
    case 44:
      return result;
    case 45:
      return 0x75506E6564646968;
    case 46:
      return 0x6F53676E696D6F63;
    case 47:
LABEL_7:
      result = 0xD000000000000016;
      break;
    case 48:
LABEL_46:
      result = 0xD000000000000015;
      break;
    case 49:
LABEL_21:
      result = 0xD000000000000014;
      break;
    case 50:
      result = 0xD000000000000013;
      break;
    case 51:
      result = 0xD00000000000001BLL;
      break;
    case 52:
      result = 0x676E697373696DLL;
      break;
    default:
      sub_10002849C(&qword_100983698, &qword_1007CAF38);

      v6 = type metadata accessor for URL();
      (*(*(v6 - 8) + 8))(v3, v6);
      result = 0x746375646F7270;
      break;
  }

  return result;
}

uint64_t sub_10040B47C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FlowPresentationContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100118188(v2, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 0xFu:
    case 0x1Bu:
      sub_1001181EC(v13);
      goto LABEL_14;
    case 3u:
      sub_10002849C(&qword_100983680, &qword_1007CAF28);

      v23 = type metadata accessor for URL();
      (*(*(v23 - 8) + 8))(v13, v23);
      goto LABEL_14;
    case 4u:
      sub_1001181EC(v13);
      v14 = &enum case for FlowPresentationContext.select(_:);
      goto LABEL_24;
    case 6u:
      sub_1001181EC(v13);
      goto LABEL_11;
    case 7u:
      sub_10002849C(&qword_100983668, &qword_1007CAF18);

      v22 = type metadata accessor for URL();
      (*(*(v22 - 8) + 8))(v13, v22);
      goto LABEL_11;
    case 0xAu:

      v41 = *(sub_10002849C(&qword_100983590, &qword_1007CAEC8) + 64);
      (*(v5 + 104))(a1, enum case for FlowPresentationContext.presentModalPopover(_:), v4);
      v42 = type metadata accessor for ShareSheetAction.ShareSheetStyle();
      return (*(*(v42 - 8) + 8))(&v13[v41], v42);
    case 0xEu:
      sub_10002849C(&qword_100983638, &qword_1007CAF00);

      v33 = ASKDeviceTypeGetCurrent();
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;
      if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
      {

        v40 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v40 = &enum case for FlowPresentationContext.presentModalFullScreen(_:);
        if (v39)
        {
          v40 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
        }
      }

      (*(v5 + 104))(v7, *v40, v4);
      (*(v5 + 32))(a1, v7, v4);
      return sub_10002B894(v13, &qword_100982460, &unk_1007B5C90);
    case 0x11u:

      v15 = sub_10002849C(&qword_100975958, &unk_1007BA410);
      v16 = *(v15 + 48);
      v17 = *(v15 + 64);
      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 8))(&v13[v17], v18);
      v19 = type metadata accessor for ArcadeWelcomePage.ContentType();
      (*(*(v19 - 8) + 8))(&v13[v16], v19);
      goto LABEL_14;
    case 0x13u:
    case 0x17u:
    case 0x20u:
    case 0x21u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
      sub_1001181EC(v13);
      goto LABEL_3;
    case 0x15u:

      v21 = sub_10002849C(&qword_1009835C0, &unk_1007D2C60);
      sub_10002B894(&v13[*(v21 + 48)], &qword_100982460, &unk_1007B5C90);
      goto LABEL_3;
    case 0x18u:
      sub_10002849C(&qword_1009835B0, &qword_1007CAED0);

      v20 = type metadata accessor for URL();
      (*(*(v20 - 8) + 8))(v13, v20);
LABEL_3:
      v14 = &enum case for FlowPresentationContext.presentModal(_:);
      goto LABEL_24;
    case 0x1Cu:
      sub_10002B894(v13, &qword_100982460, &unk_1007B5C90);
LABEL_14:
      v24 = ASKDeviceTypeGetCurrent();
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
      if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
      {

        v31 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }

      else
      {
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v31 = &enum case for FlowPresentationContext.presentModalPageSheet(_:);
        if (v30)
        {
          v31 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
        }
      }

      (*(v5 + 104))(v10, *v31, v4);
      return (*(v5 + 32))(a1, v10, v4);
    case 0x1Fu:
      v14 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      goto LABEL_24;
    case 0x2Du:
LABEL_11:
      v14 = &enum case for FlowPresentationContext.presentModalFullScreen(_:);
LABEL_24:
      result = (*(v5 + 104))(a1, *v14, v4);
      break;
    default:
      (*(v5 + 104))(a1, enum case for FlowPresentationContext.push(_:), v4);
      result = sub_1001181EC(v13);
      break;
  }

  return result;
}

uint64_t sub_10040BB0C()
{
  v1 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100118188(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() - 7;
  result = 0;
  switch(v4)
  {
    case 0:
      sub_10002849C(&qword_100983668, &qword_1007CAF18);

      goto LABEL_9;
    case 3:

      v9 = *(sub_10002849C(&qword_100983590, &qword_1007CAEC8) + 64);
      v10 = type metadata accessor for ShareSheetAction.ShareSheetStyle();
      (*(*(v10 - 8) + 8))(&v3[v9], v10);
      goto LABEL_10;
    case 4:
    case 5:
    case 12:
    case 25:
    case 26:
    case 33:
    case 34:
    case 35:
      sub_1001181EC(v3);
      return 0;
    case 14:

      v6 = &v3[*(sub_10002849C(&qword_1009835C0, &unk_1007D2C60) + 48)];
      goto LABEL_6;
    case 18:
      v7 = *(sub_10002849C(&unk_1009835A0, &unk_1007C9170) + 48);
      v8 = type metadata accessor for AdamId();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
LABEL_9:
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 8))(v3, v11);
LABEL_10:
      result = 0;
      break;
    case 21:
      v6 = v3;
LABEL_6:
      sub_10002B894(v6, &qword_100982460, &unk_1007B5C90);
      result = 0;
      break;
    case 24:
      return result;
    default:
      sub_1001181EC(v3);
      result = 1;
      break;
  }

  return result;
}

uint64_t type metadata accessor for GenericPageLayoutSectionProvider(uint64_t a1)
{
  result = qword_100984940;
  if (!qword_100984940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10040BDD4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a4;
  v42 = a5;
  v13 = type metadata accessor for Shelf.ContentType();
  v34 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  v35 = a2;
  v36 = a3;
  v44 = a2;
  v45 = a3;
  type metadata accessor for BasePageLayoutSectionProvider();
  v20 = method lookup function for BasePageLayoutSectionProvider();
  v37 = a10;
  v33 = a9;
  v21 = v13;
  v22 = v20(a1, sub_10028A62C, v43, v41, v42, v38, v39, v40, a9, a10);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v17 + 8))(v19, v16);
  v23 = v34;
  v24 = (*(v34 + 88))(v15, v21);
  if (v24 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    v25 = v35();
    v26 = sub_10040C1D8(a1, v25, v41, v42, v38, v39, v40, v33, v37);

LABEL_5:

    return v26;
  }

  v27 = v37;
  v28 = v41;
  v29 = v42;
  if (v24 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v30 = v35();
    v26 = sub_10040D51C(a1, v30, v28, v29, v38, v39, v40, v33, v27);

    goto LABEL_5;
  }

  if (v24 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    [v22 setOrthogonalScrollingBehavior:2];
  }

  else
  {
    (*(v23 + 8))(v15, v21);
  }

  return v22;
}

uint64_t sub_10040C138(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  sub_10002C0AC(a1, v6);
  v4 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  sub_100007000(a1);
  return v4;
}

id sub_10040C1D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v162 = a8;
  v163 = a7;
  v136 = a6;
  v135 = a5;
  v137 = a4;
  v138 = a3;
  v159 = a1;
  v10 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v10 - 8);
  v145 = &v131 - v11;
  v156 = sub_10002849C(&qword_100984990, qword_1007DF5C0);
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v131 - v12;
  v150 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v152 = &v131 - v15;
  v147 = type metadata accessor for TextAppearance();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v139 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v140 = &v131 - v18;
  __chkstk_darwin(v19);
  v141 = &v131 - v20;
  __chkstk_darwin(v21);
  v142 = &v131 - v22;
  __chkstk_darwin(v23);
  v143 = &v131 - v24;
  __chkstk_darwin(v25);
  v144 = &v131 - v26;
  v153 = type metadata accessor for LabelPlaceholder();
  v151 = *(v153 - 8);
  __chkstk_darwin(v153);
  v161 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for PageGrid();
  v160 = *(v158 - 8);
  __chkstk_darwin(v158);
  v157 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ItemLayoutContext();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&aBlock = _swiftEmptyArrayStorage;
  v33 = *(a2 + 16);
  v164 = v30;
  v133 = a2;
  v134 = v33;
  if (v33)
  {
    type metadata accessor for RibbonBarItem();
    v35 = *(v30 + 16);
    v34 = v30 + 16;
    *&v166 = v35;
    v36 = a2 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = *(v34 + 56);
    v165 = _swiftEmptyArrayStorage;
    v35(v32, v36, v29);
    while (1)
    {
      sub_10040F0B4(&qword_100978EE0, &type metadata accessor for RibbonBarItem, &protocol conformance descriptor for RibbonBarItem);
      ItemLayoutContext.typedModel<A>(as:)();
      (*(v34 - 8))(v32, v29);
      if (v171[0])
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v165 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v165 = aBlock;
      }

      v36 += v37;
      if (!--v33)
      {
        break;
      }

      (v166)(v32, v36, v29);
    }
  }

  else
  {
    v165 = _swiftEmptyArrayStorage;
  }

  v38 = v157;
  v39 = v159;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v41 = v40;
  v42 = v160 + 8;
  v43 = *(v160 + 8);
  v44 = v158;
  v43(v38, v158);
  v45 = ShelfLayoutContext.traitCollection.getter();
  v46 = type metadata accessor for SnapshotPageTraitEnvironment();
  v47 = objc_allocWithZone(v46);
  v48 = &v47[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v48 = v41;
  *(v48 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v47[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v45;
  v172.receiver = v47;
  v172.super_class = v46;
  v49 = objc_msgSendSuper2(&v172, "init");
  v50 = [v49 traitCollection];

  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v52 = v51;
  v43(v38, v44);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.horizontalMargins.getter();
  v54 = v53;
  v43(v38, v44);
  v55.super.isa = v50;
  v56 = sub_1006EAE98(v165, v55, v52, v54);

  if ((Array.isNotEmpty.getter() & 1) == 0)
  {

    sub_100005744(0, &unk_100990AB0, NSCollectionLayoutSection_ptr);
    v70 = type metadata accessor for ShelfLayoutContext();
    v71 = *(v70 - 8);
    v72 = v145;
    (*(v71 + 16))(v145, v39, v70);
    (*(v71 + 56))(v72, 0, 1, v70);
    v73 = static NSCollectionLayoutSection.emptyLayoutSection(for:)();

    sub_10002B894(v72, &qword_10097F480, &unk_1007C4AB0);
    return v73;
  }

  v145 = v43;
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E2B8 != -1)
  {
    swift_once();
  }

  v165 = a9;
  v57 = type metadata accessor for FontUseCase();
  sub_1000056A8(v57, qword_1009D17A8);
  v58 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v59 = v139;
  TextAppearance.init()();
  v60 = v140;
  *&v166 = v58;
  TextAppearance.withFont(_:)();
  v61 = *(v146 + 8);
  v62 = v147;
  v61(v59, v147);
  v63 = v141;
  TextAppearance.withTextAlignment(_:)();
  v61(v60, v62);
  v64 = v142;
  TextAppearance.withLineBreakMode(_:)();
  v61(v63, v62);
  v65 = v143;
  TextAppearance.withLineSpacing(_:)();
  v61(v64, v62);
  TextAppearance.withNumberOfLines(_:)();
  v61(v65, v62);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v66 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v132 = v56;
  v69 = v148;
  if (v66)
  {
    sub_1006EA400(v50, v148);
  }

  else
  {
    sub_1006EA738(v67, v68);
  }

  (*(v149 + 32))(v152, v69, v150);
  v169 = 0;
  aBlock = 0u;
  v168 = 0u;
  v74 = v153;
  v171[3] = v153;
  v171[4] = &protocol witness table for LabelPlaceholder;
  v75 = sub_1000056E0(v171);
  v76 = v151;
  v77 = v161;
  (*(v151 + 16))(v75, v161, v74);
  v78 = type metadata accessor for RibbonBarItemCellLayout();
  swift_allocObject();
  *&aBlock = RibbonBarItemCellLayout.init(metrics:artwork:titleLabel:)();
  sub_10040F0B4(&qword_100984998, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
  v79 = v154;
  v152 = v78;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v80 = v156;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v82 = v81;

  (*(v155 + 8))(v79, v80);
  (*(v76 + 8))(v77, v74);
  v171[0] = _swiftEmptyArrayStorage;
  v83 = v132;
  *&v166 = v132[2];
  v160 = v42;
  if (!v166)
  {
    v89 = 0.0;
LABEL_26:

    v98 = (v166 - 1);
    static RibbonBarItemCellLayout.interItemSpacing.getter();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v99 = swift_allocObject();
    v166 = xmmword_1007B0B70;
    *(v99 + 16) = xmmword_1007B0B70;
    *(v99 + 32) = v50;
    v100 = v50;
    v101 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    Double.rawValue(in:)();
    v103 = v102;

    v104 = objc_opt_self();
    v105 = objc_opt_self();
    v106 = [v105 absoluteDimension:v89 + v103 * v98];
    v107 = [v105 absoluteDimension:v82];
    v108 = [objc_opt_self() sizeWithWidthDimension:v106 heightDimension:v107];

    sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v110 = [v104 horizontalGroupWithLayoutSize:v108 subitems:isa];

    v111 = objc_opt_self();
    static RibbonBarItemCellLayout.interItemSpacing.getter();
    v112 = swift_allocObject();
    *(v112 + 16) = v166;
    *(v112 + 32) = v100;
    *&v166 = v100;
    v113 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    Double.rawValue(in:)();
    v115 = v114;

    v116 = [v111 fixedSpacing:v115];
    [v110 setInterItemSpacing:v116];

    v73 = [objc_opt_self() sectionWithGroup:v110];
    swift_getObjectType();
    v117 = v137;
    dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
    sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v118 = Array._bridgeToObjectiveC()().super.isa;

    [v73 setBoundarySupplementaryItems:v118];

    dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
    sub_100005744(0, &unk_10097D670, NSCollectionLayoutDecorationItem_ptr);
    v119 = Array._bridgeToObjectiveC()().super.isa;

    [v73 setDecorationItems:v119];

    v120 = v157;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.horizontalDirectionalMargins.getter();
    v122 = v121;
    v124 = v123;
    (v145)(v120, v158);
    sub_10002A400(v117, v117[3]);
    ShelfLayoutSpacingProvider.topPaddingValue(in:)();
    v126 = v125;
    sub_10002A400(v117, v117[3]);
    ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
    [v73 setContentInsets:{v126, v122, v127, v124}];
    [v73 setOrthogonalScrollingBehavior:1];
    BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
    v128 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
    v130 = v129;

    if (v128)
    {
      v169 = v128;
      v170 = v130;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v168 = sub_1006BBC70;
      *(&v168 + 1) = &unk_1008C1DA0;
      v128 = _Block_copy(&aBlock);
    }

    [v73 setVisibleItemsInvalidationHandler:v128];
    _Block_release(v128);

    return v73;
  }

  v84 = objc_opt_self();
  v161 = objc_opt_self();
  result = objc_opt_self();
  if (v134)
  {
    if (v166 <= v134)
    {
      v86 = result;
      v156 = v50;
      swift_getObjectType();
      v87 = 0;
      v88 = v83 + 4;
      v89 = 0.0;
      do
      {
        v90 = *&v88[v87];
        v91 = [v84 absoluteDimension:v90];
        v92 = [v84 absoluteDimension:v82];
        v93 = [v161 sizeWithWidthDimension:v91 heightDimension:v92];

        dispatch thunk of ItemSupplementaryProvider.supplementaryItems(for:asPartOf:)();
        sub_100005744(0, &qword_100982860, NSCollectionLayoutSupplementaryItem_ptr);
        v94 = v93;
        v95 = Array._bridgeToObjectiveC()().super.isa;

        v96 = [v86 itemWithLayoutSize:v94 supplementaryItems:v95];

        v97 = v96;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v87;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v89 = v89 + v90;
      }

      while (v166 != v87);
      v50 = v156;
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10040D51C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v187 = a4;
  v227 = a8;
  v230 = a7;
  v185 = a5;
  v186 = a6;
  v188 = a3;
  v193 = a1;
  v10 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v10 - 8);
  v189 = &v182 - v11;
  v12 = sub_10002849C(&qword_10096FD88, &unk_1007B1400);
  v13 = *(v12 - 8);
  v233 = v12;
  v234 = v13;
  __chkstk_darwin(v12);
  v226 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v203 = &v182 - v16;
  v215 = sub_10002849C(&qword_100984990, qword_1007DF5C0);
  v224 = *(v215 - 8);
  __chkstk_darwin(v215);
  v214 = &v182 - v17;
  v213 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v223 = *(v213 - 8);
  __chkstk_darwin(v213);
  v212 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v231 = &v182 - v20;
  v211 = type metadata accessor for TextAppearance();
  v222 = *(v211 - 8);
  __chkstk_darwin(v211);
  v210 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v209 = &v182 - v23;
  __chkstk_darwin(v24);
  v208 = &v182 - v25;
  __chkstk_darwin(v26);
  v207 = &v182 - v27;
  __chkstk_darwin(v28);
  v206 = &v182 - v29;
  __chkstk_darwin(v30);
  v205 = &v182 - v31;
  v204 = type metadata accessor for LabelPlaceholder();
  v221 = *(v204 - 8);
  __chkstk_darwin(v204);
  v229 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for PageGrid();
  v194 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for ItemLayoutContext();
  v34 = *(v232 - 1);
  __chkstk_darwin(v232);
  v217 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v182 - v37;
  *&v235 = _swiftEmptyArrayStorage;
  v39 = *(a2 + 16);
  v182 = a2;
  v183 = v34;
  v184 = v39;
  if (v39)
  {
    type metadata accessor for RibbonBarItem();
    v41 = *(v34 + 16);
    v40 = v34 + 16;
    ObjectType = v41;
    v42 = a2 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v225 = *(v40 + 56);
    v218 = _swiftEmptyArrayStorage;
    do
    {
      v43 = v232;
      (ObjectType)(v38, v42, v232);
      sub_10040F0B4(&qword_100978EE0, &type metadata accessor for RibbonBarItem, &protocol conformance descriptor for RibbonBarItem);
      ItemLayoutContext.typedModel<A>(as:)();
      (*(v40 - 8))(v38, v43);
      if (v254[0])
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v235 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v235 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v218 = v235;
      }

      v42 += v225;
      --v39;
    }

    while (v39);
  }

  else
  {
    v218 = _swiftEmptyArrayStorage;
  }

  v44 = v191;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v46 = v45;
  v47 = *(v194 + 8);
  v194 += 8;
  v190 = v47;
  v47(v44, v192);
  v48 = ShelfLayoutContext.traitCollection.getter();
  v49 = type metadata accessor for SnapshotPageTraitEnvironment();
  v50 = objc_allocWithZone(v49);
  v51 = &v50[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v51 = v46;
  *(v51 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v50[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v48;
  v258.receiver = v50;
  v258.super_class = v49;
  v52 = objc_msgSendSuper2(&v258, "init");
  v53 = [v52 traitCollection];

  v54 = v218;
  if (v218 >> 62)
  {
    v94 = v218;
    v55 = _CocoaArrayWrapper.endIndex.getter();
    v54 = v94;
    if (v55)
    {
      goto LABEL_11;
    }

LABEL_37:

    v57 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v55 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v55)
  {
    goto LABEL_37;
  }

LABEL_11:
  v56 = v54;
  v257 = _swiftEmptyArrayStorage;
  sub_100144188(0, v55 & ~(v55 >> 63), 0);
  if (v55 < 0)
  {
    goto LABEL_94;
  }

  v57 = v257;
  v58 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v59 = 0;
  v60 = v56;
  v200 = v56 & 0xC000000000000001;
  v201 = v58;
  v198 = (v223 + 32);
  v199 = (v222 + 8);
  v196 = v224 + 1;
  v197 = (v221 + 2);
  v195 = (v221 + 1);
  v216 = v53;
  v202 = v55;
  do
  {
    if (v200)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v61 = *(v60 + 8 * v59 + 32);
    }

    v62 = RibbonBarItem.title.getter();
    v221 = v63;
    v222 = v62;
    v64 = RibbonBarItem.artwork.getter();
    ObjectType = v57;
    if (v64)
    {
      Artwork.size.getter();
      v66 = v65;
      v68 = v67;

      v219 = v68;
      v220 = v66;
    }

    else
    {
      v219 = 0;
      v220 = 0;
    }

    v69 = RibbonBarItem.artwork.getter();
    if (v69)
    {
    }

    v223 = v69;
    v225 = v61;
    if (qword_10096E2B8 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for FontUseCase();
    sub_1000056A8(v70, qword_1009D17A8);
    v53 = v216;
    v71 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    v72 = v210;
    TextAppearance.init()();
    v73 = v209;
    v224 = v71;
    TextAppearance.withFont(_:)();
    v74 = *v199;
    v75 = v211;
    (*v199)(v72, v211);
    v76 = v208;
    TextAppearance.withTextAlignment(_:)();
    v74(v73, v75);
    v77 = v207;
    TextAppearance.withLineBreakMode(_:)();
    v74(v76, v75);
    v78 = v206;
    TextAppearance.withLineSpacing(_:)();
    v74(v77, v75);
    TextAppearance.withNumberOfLines(_:)();
    v74(v78, v75);
    LabelPlaceholder.Options.init(rawValue:)();
    LabelPlaceholder.init(_:with:where:)();
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v79 = v212;
      sub_1006EA400(v53, v212);
    }

    else
    {
      v79 = v212;
      if (v64)
      {
        CGSize.fitting(_:mode:)();
        v237 = &protocol witness table for Double;
        *(&v236 + 1) = &type metadata for Double;
        *&v235 = 0x4020000000000000;
        v255 = &type metadata for Double;
        v256 = &protocol witness table for Double;
        v253 = &protocol witness table for Double;
        v254[0] = 0x4024000000000000;
        v252 = &type metadata for Double;
        v251[0] = 0x4028000000000000;
        v250 = &protocol witness table for Double;
        v249 = &type metadata for Double;
        v248[0] = 0x401C000000000000;
        v247 = &protocol witness table for Double;
        v246 = &type metadata for Double;
        v245[0] = 0x401C000000000000;
        v244 = &protocol witness table for Double;
        v243 = &type metadata for Double;
        v242[0] = 0;
        v240 = &type metadata for Double;
        v241 = &protocol witness table for Double;
        v239[0] = 0;
      }

      else
      {
        v237 = &protocol witness table for Double;
        *(&v236 + 1) = &type metadata for Double;
        *&v235 = 0x4020000000000000;
        v255 = &type metadata for Double;
        v256 = &protocol witness table for Double;
        v253 = &protocol witness table for Double;
        v254[0] = 0x4024000000000000;
        v252 = &type metadata for Double;
        v251[0] = 0x4024000000000000;
        v250 = &protocol witness table for Double;
        v249 = &type metadata for Double;
        v248[0] = 0x401C000000000000;
        v247 = &protocol witness table for Double;
        v246 = &type metadata for Double;
        v245[0] = 0x401C000000000000;
        v244 = &protocol witness table for Double;
        v243 = &type metadata for Double;
        v242[0] = 0x4024000000000000;
        v240 = &type metadata for Double;
        v241 = &protocol witness table for Double;
        v239[0] = 0x4024000000000000;
      }

      RibbonBarItemCellLayout.Metrics.init(artworkSize:interimSpacing:leadingSpacing:trailingSpacing:artworkBottomSpacing:artworkTopSpacing:labelBottomSpacing:labelTopSpacing:)();
      v53 = v216;
    }

    (*v198)(v231, v79, v213);
    if (v223)
    {
      v80 = type metadata accessor for EmptyPlaceable();
      swift_allocObject();
      v81 = EmptyPlaceable.init()();
      *(&v236 + 1) = v80;
      v237 = sub_10040F0B4(&qword_1009768B0, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
      *&v235 = v81;
    }

    else
    {
      v237 = 0;
      v235 = 0u;
      v236 = 0u;
    }

    v82 = v204;
    v255 = v204;
    v256 = &protocol witness table for LabelPlaceholder;
    v83 = sub_1000056E0(v254);
    v84 = v229;
    (*v197)(v83, v229, v82);
    type metadata accessor for RibbonBarItemCellLayout();
    swift_allocObject();
    *&v235 = RibbonBarItemCellLayout.init(metrics:artwork:titleLabel:)();
    sub_10040F0B4(&qword_100984998, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
    v85 = v214;
    dispatch thunk of CustomLayout.layout.getter();
    swift_getOpaqueTypeConformance2();
    v86 = v215;
    dispatch thunk of Placeable.measure(toFit:with:)();
    v88 = v87;
    v90 = v89;

    (*v196)(v85, v86);
    (*v195)(v84, v82);
    v57 = ObjectType;
    v257 = ObjectType;
    v92 = *(ObjectType + 16);
    v91 = *(ObjectType + 24);
    if (v92 >= v91 >> 1)
    {
      sub_100144188((v91 > 1), v92 + 1, 1);
      v57 = v257;
    }

    ++v59;
    v57[2] = v92 + 1;
    v93 = &v57[2 * v92];
    v93[4] = v88;
    v93[5] = v90;
    v60 = v218;
  }

  while (v202 != v59);

LABEL_38:
  type metadata accessor for CGSize(0);
  if ((Array.isNotEmpty.getter() & 1) == 0)
  {

    sub_100005744(0, &unk_100990AB0, NSCollectionLayoutSection_ptr);
    v129 = type metadata accessor for ShelfLayoutContext();
    v130 = *(v129 - 8);
    v131 = v189;
    (*(v130 + 16))(v189, v193, v129);
    (*(v130 + 56))(v131, 0, 1, v129);
    v132 = static NSCollectionLayoutSection.emptyLayoutSection(for:)();

    sub_10002B894(v131, &qword_10097F480, &unk_1007C4AB0);
    return v132;
  }

  type metadata accessor for RibbonBarItemCellLayout();
  static RibbonBarItemCellLayout.interItemSpacing.getter();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1007B0B70;
  *(v95 + 32) = v53;
  v96 = v53;
  v97 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  Double.rawValue(in:)();
  v99 = v98;

  v100 = v191;
  ShelfLayoutContext.contentPageGrid.getter();
  static CGFloat.allColumns.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v102 = v101;
  result = v190(v100, v192);
  v104 = v57[2];
  v105 = _swiftEmptyArrayStorage;
  v216 = v96;
  ObjectType = v57;
  if (!v104)
  {
    v224 = _swiftEmptyArrayStorage;
LABEL_67:
    v225 = a9;

    v55 = _swiftEmptyArrayStorage;
    v254[0] = _swiftEmptyArrayStorage;
    v222 = v105[2];
    if (!v222)
    {

      v159 = _swiftEmptyArrayStorage;
      v134 = 0.0;
LABEL_86:
      v160 = objc_opt_self();
      v161 = [v160 absoluteDimension:v102];
      v162 = [v160 absoluteDimension:v134];
      v55 = [objc_opt_self() sizeWithWidthDimension:v161 heightDimension:v162];

      if (!(v159 >> 62))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
LABEL_88:

        v163 = objc_opt_self();
        sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v165 = [v163 verticalGroupWithLayoutSize:v55 subitems:isa];

        v166 = [objc_opt_self() fixedSpacing:10.0];
        [v165 setInterItemSpacing:v166];

        v167 = objc_opt_self();
        v234 = v165;
        v132 = [v167 sectionWithGroup:v165];
        swift_getObjectType();
        v168 = v187;
        dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
        sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
        v169 = Array._bridgeToObjectiveC()().super.isa;

        [v132 setBoundarySupplementaryItems:v169];

        dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
        sub_100005744(0, &unk_10097D670, NSCollectionLayoutDecorationItem_ptr);
        v170 = Array._bridgeToObjectiveC()().super.isa;

        [v132 setDecorationItems:v170];

        v171 = v191;
        ShelfLayoutContext.contentPageGrid.getter();
        PageGrid.horizontalDirectionalMargins.getter();
        v173 = v172;
        v175 = v174;
        v190(v171, v192);
        sub_10002A400(v168, v168[3]);
        ShelfLayoutSpacingProvider.topPaddingValue(in:)();
        v177 = v176;
        sub_10002A400(v168, v168[3]);
        ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
        [v132 setContentInsets:{v177, v173, v178, v175}];
        BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
        v179 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
        v181 = v180;

        if (v179)
        {
          v237 = v179;
          v238 = v181;
          *&v235 = _NSConcreteStackBlock;
          *(&v235 + 1) = 1107296256;
          *&v236 = sub_1006BBC70;
          *(&v236 + 1) = &unk_1008C1DC8;
          v179 = _Block_copy(&v235);
        }

        [v132 setVisibleItemsInvalidationHandler:{v179, v182, v183}];
        _Block_release(v179);

        return v132;
      }

LABEL_95:
      sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);

      _bridgeCocoaArray<A>(_:)();

      goto LABEL_88;
    }

    v221 = v105 + 4;
    v219 = objc_opt_self();
    v232 = objc_opt_self();
    v231 = objc_opt_self();
    v218 = objc_opt_self();
    v133 = 0;
    v134 = 0.0;
    v220 = v105;
    while (v133 < v105[2])
    {
      v223 = v133;
      v135 = v221[v133];
      v136 = *(v135 + 16);
      if (v136)
      {
        *&v235 = _swiftEmptyArrayStorage;

        specialized ContiguousArray.reserveCapacity(_:)();
        v229 = (v135 + ((v234[80] + 32) & ~v234[80]));
        ObjectType = swift_getObjectType();
        v137 = objc_opt_self();
        v138 = 0;
        v139 = 0.0;
        v140 = 0.0;
        while (v138 < *(v135 + 16))
        {
          v141 = v226;
          sub_10040F044(&v229[*(v234 + 9) * v138], v226);
          v142 = (v141 + *(v233 + 48));
          v143 = *v142;
          v144 = v142[1];
          if (v140 <= v144)
          {
            v140 = v142[1];
          }

          ++v138;
          v139 = v139 + v143;
          dispatch thunk of ItemSupplementaryProvider.supplementaryItems(for:asPartOf:)();
          v145 = v232;
          v146 = [v232 absoluteDimension:v143];
          v147 = [v145 absoluteDimension:v144];
          v55 = [v231 sizeWithWidthDimension:v146 heightDimension:v147];

          sub_100005744(0, &qword_100982860, NSCollectionLayoutSupplementaryItem_ptr);
          v148 = Array._bridgeToObjectiveC()().super.isa;

          v149 = [v137 itemWithLayoutSize:v55 supplementaryItems:v148];

          sub_10002B894(v141, &qword_10096FD88, &unk_1007B1400);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v136 == v138)
          {

            v55 = _swiftEmptyArrayStorage;
            goto LABEL_78;
          }
        }

        __break(1u);
        break;
      }

      v139 = 0.0;
      v140 = 0.0;
LABEL_78:
      if (v136 <= 1)
      {
        v150 = 1;
      }

      else
      {
        v150 = v136;
      }

      v151 = v232;
      v152 = [v232 absoluteDimension:{v99 * (v150 - 1) + v139, v182, v183}];
      v153 = [v151 absoluteDimension:v140];
      v154 = [v231 sizeWithWidthDimension:v152 heightDimension:v153];

      sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
      v155 = Array._bridgeToObjectiveC()().super.isa;

      v156 = [v219 horizontalGroupWithLayoutSize:v154 subitems:v155];

      v157 = [v218 fixedSpacing:v99];
      [v156 setInterItemSpacing:v157];

      v158 = v156;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v254[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v133 = v223 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v134 = v134 + v140 + 10.0;
      v105 = v220;
      if (v133 == v222)
      {
        v159 = v254[0];

        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v184)
  {
    if (v104 <= v184)
    {
      v106 = *(v183 + 16);
      v107 = v182 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
      v231 = *(v183 + 72);
      v108 = (v183 + 8);
      v109 = (v57 + 5);
      v110 = v102;
      v224 = _swiftEmptyArrayStorage;
      do
      {
        v111 = *(v109 - 1);
        v112 = *v109;
        (v106)(v217, v107, v232);
        v113 = ceil(v111);
        if (v102 > v111)
        {
          v114 = v113;
        }

        else
        {
          v114 = v102;
        }

        if (v110 >= v114)
        {
          v117 = v105;
          v118 = v224;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_100033CF4(0, v105[2] + 1, 1, v105);
          }

          v116 = v105[2];
          v115 = v105[3];
          v117 = v105;
          if (v116 >= v115 >> 1)
          {
            v117 = sub_100033CF4((v115 > 1), v116 + 1, 1, v105);
          }

          v117[2] = v116 + 1;
          v117[v116 + 4] = v224;
          v110 = v102;
          v118 = _swiftEmptyArrayStorage;
        }

        v119 = (v203 + *(v233 + 48));
        v106();
        *v119 = v114;
        v119[1] = v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v118;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v121 = sub_100033CD0(0, v118[2] + 1, 1, v118);
        }

        v123 = v121[2];
        v122 = v121[3];
        v224 = v121;
        if (v123 >= v122 >> 1)
        {
          v224 = sub_100033CD0((v122 > 1), v123 + 1, 1, v224);
        }

        v124 = v224;
        v224[2] = (v123 + 1);
        sub_10040EFD4(v203, v124 + ((v234[80] + 32) & ~v234[80]) + *(v234 + 9) * v123);
        if (v104 == 1)
        {

          v125 = v117;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_100033CF4(0, v117[2] + 1, 1, v117);
          }

          v127 = v125[2];
          v126 = v125[3];
          v128 = v125;
          if (v127 >= v126 >> 1)
          {
            v128 = sub_100033CF4((v126 > 1), v127 + 1, 1, v125);
          }

          (*v108)(v217, v232);
          v128[2] = v127 + 1;
          v105 = v128;
          v128[v127 + 4] = v224;
        }

        else
        {
          (*v108)(v217, v232);
          v105 = v117;
        }

        v110 = v110 - (v99 + v114);
        v107 += v231;
        v109 += 2;
        --v104;
      }

      while (v104);
      goto LABEL_67;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10040EFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10096FD88, &unk_1007B1400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040F044(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10096FD88, &unk_1007B1400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040F0B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10040F104()
{
  sub_10022BA74(v0 + OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(uint64_t a1)
{
  result = qword_1009849D0;
  if (!qword_1009849D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10040F1BC(uint64_t a1)
{
  sub_10022B99C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10040F258(void *a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  v12[5] = a1;
  sub_1001F16B4();
  v7 = a1;
  sub_10002849C(&qword_100984A80, &qword_1007CC468);
  if (swift_dynamicCast())
  {
    sub_100007000(v12);
    ItemLayoutContext.indexPath.getter();
    v8 = type metadata accessor for IndexPath();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for IndexPath();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  swift_beginAccess();
  sub_1000F4070(v6, v2 + v10);
  return swift_endAccess();
}

uint64_t sub_10040F3DC(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  VerticalStack.init(with:)();
  if (*(v6 + 1) == 1)
  {
    v12 = type metadata accessor for Resize();
    v13 = &protocol witness table for Resize;
    v8 = sub_1000056E0(v11);
    sub_10040F5D0(a1, v8);
  }

  else
  {
    sub_10002C0AC(v6 + 104, v10);
    v12 = type metadata accessor for Margins();
    v13 = &protocol witness table for Margins;
    sub_1000056E0(v11);
    Margins.init(insets:child:)();
  }

  VerticalStack.add(_:with:)();
  sub_100007000(v11);
  static UIEdgeInsets.horizontal(left:right:)();
  sub_10002A400((v6 + 144), *(v6 + 168));
  Measurable.placeable.getter();
  v10[3] = type metadata accessor for Margins();
  v10[4] = &protocol witness table for Margins;
  sub_1000056E0(v10);
  Margins.init(insets:child:)();
  static Center.Axis.vertical.getter();
  v12 = type metadata accessor for Center();
  v13 = &protocol witness table for Center;
  sub_1000056E0(v11);
  Center.init(_:filling:)();
  VerticalStack.add(_:with:)();
  return sub_100007000(v11);
}

uint64_t sub_10040F5D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v6;
  v48 = a2;
  v45 = type metadata accessor for Resize.Rule();
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v49 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v47 = (&v37 - v12);
  __chkstk_darwin(v13);
  v46 = (&v37 - v14);
  __chkstk_darwin(v15);
  v17 = (&v37 - v16);
  v18 = type metadata accessor for Margins();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DisjointStack();
  v44 = *(v39 - 8);
  __chkstk_darwin(v39);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  DisjointStack.init(with:)();
  DisjointStack.insert(_:at:with:)();
  CGRect.subtracting(insets:)();
  CGRectGetWidth(v54);
  v24 = [a1 preferredContentSizeCategory];
  static UIContentSizeCategory.>= infix(_:_:)();

  v40 = v7;
  sub_10002C0AC(v7 + 104, v51);
  v42 = v21;
  Margins.init(insets:child:)();
  v50[3] = v18;
  v50[4] = &protocol witness table for Margins;
  v41 = v18;
  v25 = sub_1000056E0(v50);
  v43 = v19;
  (*(v19 + 16))(v25, v21, v18);
  *v17 = sub_1002F1298;
  v17[1] = 0;
  v26 = *(v9 + 104);
  v27 = v45;
  v26(v17, enum case for Resize.Rule.recalculated(_:), v45);
  v28 = enum case for Resize.Rule.unchanged(_:);
  v29 = v46;
  v26(v46, enum case for Resize.Rule.unchanged(_:), v27);
  v30 = v47;
  v26(v47, v28, v27);
  v26(v49, v28, v27);
  v52 = type metadata accessor for Resize();
  v53 = &protocol witness table for Resize;
  sub_1000056E0(v51);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v31 = v23;
  v38 = v23;
  DisjointStack.insert(_:at:with:)();
  sub_100007000(v51);
  v32 = v39;
  v52 = v39;
  v53 = &protocol witness table for DisjointStack;
  v33 = sub_1000056E0(v51);
  v34 = v44;
  (*(v44 + 16))(v33, v31, v32);
  v26(v17, v28, v27);
  v35 = *(v40 + 48);
  v29[3] = &type metadata for CGFloat;
  v29[4] = &protocol witness table for CGFloat;
  *v29 = v35;
  v26(v29, enum case for Resize.Rule.replaced(_:), v27);
  v26(v30, v28, v27);
  v26(v49, v28, v27);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  (*(v43 + 8))(v42, v41);
  return (*(v34 + 8))(v38, v32);
}

uint64_t sub_10040FBA8()
{
  v0 = type metadata accessor for DisjointStack.EdgePosition();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ZeroDimension();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  DisjointStack.Properties.topEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  DisjointStack.Properties.leadingEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  DisjointStack.Properties.bottomEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  return DisjointStack.Properties.trailingEdge.setter();
}

uint64_t sub_10040FD50()
{
  v0 = type metadata accessor for DisjointStack.EdgePosition();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  (v6)(v4, enum case for DisjointStack.EdgePosition.anchored(_:), v0, v2);
  DisjointStack.Properties.bottomEdge.setter();
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v6(v4, v5, v0);
  return DisjointStack.Properties.leadingEdge.setter();
}

uint64_t sub_10040FE74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10040FEBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 184) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10040FF38(void *a1, double a2, double a3)
{
  v6 = type metadata accessor for VerticalStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10040F3DC(a1, 0.0, 0.0, a2, a3);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t sub_100410070(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for VerticalStack();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10040F3DC(a1, a2, a3, a4, a5);
  dispatch thunk of Placeable.place(at:with:)();
  return (*(v11 + 8))(v13, v10);
}

__n128 sub_100410198@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1004101AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100410200(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1004103BC(unint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v45 - v7;
  __chkstk_darwin(v8);
  v56 = &v45 - v9;
  __chkstk_darwin(v10);
  v50 = &v45 - v11;
  __chkstk_darwin(v12);
  v46 = &v45 - v13;
  __chkstk_darwin(v14);
  v49 = &v45 - v15;
  sub_100005744(0, &qword_100984B00, UICollectionViewUpdateItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v59.receiver = v1;
  v59.super_class = v17;
  objc_msgSendSuper2(&v59, "prepareForCollectionViewUpdates:", isa);

  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    if (a1 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
        return;
      }
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        return;
      }
    }

    if (v18 < 1)
    {
      __break(1u);
    }

    else
    {
      v19 = 0;
      v48 = OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate;
      v54 = a1;
      v55 = OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate;
      v58 = a1 & 0xC000000000000001;
      v20 = (v4 + 32);
      v51 = v4 + 8;
      v52 = (v4 + 16);
      v21 = &selRef_numberOfSegments;
      v53 = v18;
      do
      {
        if (v58)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v22 = *(a1 + 8 * v19 + 32);
        }

        v23 = v22;
        if (![v22 v21[414]])
        {
          v24 = [v23 indexPathAfterUpdate];
          if (v24)
          {
            v25 = v46;
            v26 = v24;
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v27 = *v20;
            v28 = v49;
            (*v20)(v49, v25, v3);
            (*v52)(v50, v28, v3);
            v29 = v48;
            v30 = *&v1[v48];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v1[v29] = v30;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v30 = sub_10003421C(0, *(v30 + 2) + 1, 1, v30);
              *&v1[v48] = v30;
            }

            v33 = *(v30 + 2);
            v32 = *(v30 + 3);
            if (v33 >= v32 >> 1)
            {
              v30 = sub_10003421C((v32 > 1), v33 + 1, 1, v30);
            }

            *(v30 + 2) = v33 + 1;
            v27(&v30[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33], v50, v3);
            v34 = v49;
            *&v1[v48] = v30;
            (*(v4 + 8))(v34, v3);
            v18 = v53;
            a1 = v54;
            v21 = &selRef_numberOfSegments;
          }
        }

        if ([v23 v21[414]] == 1 && (v35 = objc_msgSend(v23, "indexPathBeforeUpdate")) != 0)
        {
          v36 = v47;
          v37 = v35;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v38 = *v20;
          v39 = v56;
          (*v20)(v56, v36, v3);
          (*v52)(v57, v39, v3);
          v40 = v55;
          v41 = *&v1[v55];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          *&v1[v40] = v41;
          if ((v42 & 1) == 0)
          {
            v41 = sub_10003421C(0, *(v41 + 2) + 1, 1, v41);
            *&v1[v55] = v41;
          }

          v44 = *(v41 + 2);
          v43 = *(v41 + 3);
          if (v44 >= v43 >> 1)
          {
            v41 = sub_10003421C((v43 > 1), v44 + 1, 1, v41);
          }

          *(v41 + 2) = v44 + 1;
          v38(&v41[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v44], v57, v3);
          *&v1[v55] = v41;

          (*(v4 + 8))(v56, v3);
          v18 = v53;
          a1 = v54;
          v21 = &selRef_numberOfSegments;
        }

        else
        {
        }

        ++v19;
      }

      while (v18 != v19);
    }
  }
}

char *sub_1004109D0(uint64_t a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v13, "initialLayoutAttributesForAppearingItemAtIndexPath:", isa);

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *&v2[OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate];

  v9 = sub_1003B7068(a1, v8);

  if (v9)
  {
    [v7 setAlpha:0.4];
    v10 = sub_100411374();
    v11 = *&v7[OBJC_IVAR____TtCC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation];
    *&v7[OBJC_IVAR____TtCC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation] = v10;
  }

  return v7;
}

char *sub_100410AF0(uint64_t a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v13, "finalLayoutAttributesForDisappearingItemAtIndexPath:", isa);

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *&v2[OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate];

  v9 = sub_1003B7068(a1, v8);

  if (v9)
  {
    v10 = sub_10041195C();
    v11 = *&v7[OBJC_IVAR____TtCC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation];
    *&v7[OBJC_IVAR____TtCC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation] = v10;
  }

  [v7 setZIndex:1];
  return v7;
}

id sub_100410C00(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

void *sub_100410D08(double a1, double a2, double a3, double a4)
{
  v31 = type metadata accessor for IndexPath();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v39.receiver = v4;
  v39.super_class = v11;
  result = objc_msgSendSuper2(&v39, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (result)
  {
    v13 = result;
    v14 = sub_100005744(0, &qword_1009759D0, UICollectionViewLayoutAttributes_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v15 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v38 = _swiftEmptyArrayStorage;
      v17 = v4;
      v4 = &v38;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v18 = 0;
      v32 = OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate;
      v35 = v15 & 0xFFFFFFFFFFFFFF8;
      v36 = OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled;
      v28 = v9 + 1;
      v29 = v17;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_14;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v18 >= *(v35 + 16))
        {
          goto LABEL_25;
        }

        v19 = *(v15 + 8 * v18 + 32);
LABEL_14:
        v9 = v19;
        [v19 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        if (!swift_dynamicCast())
        {
          goto LABEL_8;
        }

        v20 = i;
        v21 = v14;
        v22 = v37;
        [v37 setZIndex:3];
        if ((*(v17 + v36) & 1) != 0 && (v23 = [v17 collectionView]) != 0)
        {
          v34 = v23;
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_1005567FC();
            v33 = v24;
            swift_unknownObjectRelease();
            v25 = [v22 indexPath];
            v26 = v30;
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v27 = IndexPath.item.getter();
            (*v28)(v26, v31);
            if (v27 < v33)
            {
              [v22 setZIndex:4];
            }

            v9 = v22;
            v17 = v29;
            goto LABEL_7;
          }
        }

        else
        {
        }

        v9 = v22;
LABEL_7:
        v14 = v21;
        i = v20;
LABEL_8:
        ++v18;
        v4 = &v38;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (i == v18)
        {

          return v38;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

id sub_100411374()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 frame];
  Width = CGRectGetWidth(v18);
  CATransform3DMakeTranslation(&v17, Width, 0.0, 0.0);
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() animationWithKeyPath:v4];

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 valueWithCATransform3D:&v17];
  [v7 setFromValue:v8];

  v9 = *&CATransform3DIdentity.m33;
  *&v17.m31 = *&CATransform3DIdentity.m31;
  *&v17.m33 = v9;
  v10 = *&CATransform3DIdentity.m43;
  *&v17.m41 = *&CATransform3DIdentity.m41;
  *&v17.m43 = v10;
  v11 = *&CATransform3DIdentity.m13;
  *&v17.m11 = *&CATransform3DIdentity.m11;
  *&v17.m13 = v11;
  v12 = *&CATransform3DIdentity.m23;
  *&v17.m21 = *&CATransform3DIdentity.m21;
  *&v17.m23 = v12;
  v13 = [v6 valueWithCATransform3D:&v17];
  [v7 setToValue:v13];

  v14 = v7;
  v15 = CACurrentMediaTime();
  [v14 setBeginTime:v15 + IndexPath.row.getter() * 0.05];
  [v14 setFillMode:kCAFillModeBackwards];
  [v14 setMass:1.0];
  [v14 setStiffness:250.0];
  [v14 setDamping:28.0];
  [v14 setInitialVelocity:0.0];
  [v14 settlingDuration];
  [v14 setDuration:?];

  return v14;
}

id sub_1004115CC(void *a1)
{
  v16 = a1;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v16 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100005744(0, &qword_1009759D0, UICollectionViewLayoutAttributes_ptr);
  if (swift_dynamicCast())
  {
    v7 = v17;
    [v17 setZIndex:3];
    if (*(v1 + OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) == 1)
    {
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1005567FC();
          v11 = v10;
          swift_unknownObjectRelease();
          v12 = [v7 indexPath];
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v13 = IndexPath.item.getter();
          (*(v3 + 8))(v6, v2);
          if (v13 < v11)
          {
            [v7 setZIndex:4];
          }
        }
      }
    }

    return v7;
  }

  else
  {
    v15 = v16;

    return v15;
  }
}

id sub_1004118F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10041195C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  v2 = v1;
  [v2 setBeginTime:CACurrentMediaTime()];
  [v2 setDuration:0.1];
  v3 = v2;
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v3 setFromValue:isa];

  v5 = Double._bridgeToObjectiveC()().super.super.isa;
  [v3 setToValue:v5];

  v6 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v7) = 1043207291;
  LODWORD(v8) = 1059816735;
  LODWORD(v9) = 1.0;
  v10 = [v6 initWithControlPoints:v7 :0.0 :v8 :v9];
  [v3 setTimingFunction:v10];

  return v3;
}

uint64_t sub_100411AA4(uint64_t a1)
{
  v2 = type metadata accessor for Dependency();
  v129 = *(v2 - 8);
  __chkstk_darwin(v2);
  v123 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for MetricsLogger.Configuration();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v113 = &v103 - v6;
  v134 = type metadata accessor for OSLogger();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for ASKBagContract.AdPlacementBagValue();
  v135 = *(v133 - 8);
  __chkstk_darwin(v133);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ASKBagContract();
  v14 = type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v15 = v138;
  sub_100412FA8();
  v130 = v14;
  inject<A, B>(_:from:)();
  v16 = v138;
  v17 = [v138 ams_activeiTunesAccount];
  if (v17)
  {
    v18 = v17;
    if ([v17 ams_isManagedAppleID])
    {
      if (qword_10096D130 != -1)
      {
        swift_once();
      }

      v135 = sub_1000056A8(v134, qword_1009CE248);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1E00;
      LogMessage.init(stringLiteral:)();
      v140 = &type metadata for String;
      v138 = 0xD000000000000020;
      v139 = 0x8000000100812500;
      static LogMessage.safe(_:)();
      sub_10002B894(&v138, &unk_1009711D0, &unk_1007B1A10);
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      return a1;
    }
  }

  v119 = v16;
  v19 = [objc_opt_self() ams_sharedAccountStore];
  v20 = [v19 ams_fetchLocaliTunesAccount];

  v138 = 0;
  v21 = [v20 resultWithError:&v138];

  if (!v21)
  {
    v26 = v138;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_11;
  }

  v22 = v138;
  v23 = [v21 ams_storefront];

  if (!v23)
  {
LABEL_11:
    v122 = 0;
    v25 = 0;
    goto LABEL_12;
  }

  v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

LABEL_12:
  v125 = v25;
  static Locale.storefront.getter();
  v121 = Locale.identifier.getter();
  v124 = v27;
  (*(v11 + 8))(v13, v10);
  if (ASKBagContract.isSearchLandingAdsEnabled.getter())
  {
    v128 = 1;
  }

  else
  {
    v28 = ASKBagContract.enabledAdPlacements.getter();
    v29 = v135;
    v30 = v133;
    (*(v135 + 104))(v9, enum case for ASKBagContract.AdPlacementBagValue.searchLanding(_:), v133);
    v128 = sub_1003B7020(v9, v28);

    (*(v29 + 8))(v9, v30);
  }

  v116 = v9;
  v118 = v2;
  v120 = a1;
  if (qword_10096D130 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v134, qword_1009CE248);
  v32 = *(v132 + 16);
  v109 = v31;
  v32(v131);
  v33 = sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  v34 = *(type metadata accessor for LogMessage() - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v106 = *(v34 + 80);
  v108 = v33;
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1007CC5F0;
  v107 = v36;
  LogMessage.init(stringLiteral:)();
  v140 = &type metadata for String;
  v138 = 0xD000000000000020;
  v139 = 0x8000000100812500;
  static LogMessage.safe(_:)();
  sub_10002B894(&v138, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v37 = ASKBagContract.isSponsoredAdsEnabled.getter();
  if (v37)
  {
    v38 = 0x64656C62616E45;
  }

  else
  {
    v38 = 0x64656C6261736944;
  }

  v39 = 0xE800000000000000;
  v136 = v15;
  v140 = &type metadata for String;
  if (v37)
  {
    v39 = 0xE700000000000000;
  }

  v138 = v38;
  v139 = v39;
  static LogMessage.safe(_:)();
  sub_10002B894(&v138, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  if (v128)
  {
    v40 = 0x64656C62616E45;
  }

  else
  {
    v40 = 0x64656C6261736944;
  }

  v140 = &type metadata for String;
  v41 = 0xE700000000000000;
  if (!v128)
  {
    v41 = 0xE800000000000000;
  }

  v138 = v40;
  v139 = v41;
  static LogMessage.safe(_:)();
  sub_10002B894(&v138, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v42 = ASKBagContract.enabledAdPlacements.getter();
  v43 = v135;
  v44 = v135 + 104;
  v45 = *(v135 + 104);
  v46 = v116;
  v110 = enum case for ASKBagContract.AdPlacementBagValue.today(_:);
  v47 = v133;
  v45(v116);
  v127 = v45;
  v48 = sub_1003B7020(v46, v42);

  v50 = *(v43 + 8);
  v49 = v43 + 8;
  v126 = v50;
  v50(v46, v47);
  v51 = 0x64656C62616E45;
  if (!v48)
  {
    v51 = 0x64656C6261736944;
  }

  v52 = 0xE800000000000000;
  if (v48)
  {
    v52 = 0xE700000000000000;
  }

  v140 = &type metadata for String;
  v138 = v51;
  v139 = v52;
  static LogMessage.safe(_:)();
  sub_10002B894(&v138, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v53 = ASKBagContract.enabledAdPlacements.getter();
  v104 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMAL(_:);
  v45(v46);
  v54 = sub_1003B7020(v46, v53);

  v55 = v126;
  v126(v46, v47);
  v56 = 0x64656C62616E45;
  if (!v54)
  {
    v56 = 0x64656C6261736944;
  }

  v140 = &type metadata for String;
  v57 = 0xE700000000000000;
  if (!v54)
  {
    v57 = 0xE800000000000000;
  }

  v138 = v56;
  v139 = v57;
  static LogMessage.safe(_:)();
  sub_10002B894(&v138, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v58 = ASKBagContract.enabledAdPlacements.getter();
  v103 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMALDuringDownload(_:);
  v111 = v44;
  v127(v46);
  v59 = sub_1003B7020(v46, v58);

  v135 = v49;
  v55(v46, v47);
  v60 = 0x64656C62616E45;
  if (!v59)
  {
    v60 = 0x64656C6261736944;
  }

  v61 = 0xE700000000000000;
  if (!v59)
  {
    v61 = 0xE800000000000000;
  }

  v140 = &type metadata for String;
  v138 = v60;
  v139 = v61;
  v105 = v35;
  static LogMessage.safe(_:)();
  sub_10002B894(&v138, &unk_1009711D0, &unk_1007B1A10);
  v62 = v134;
  v63 = v131;
  Logger.info(_:)();

  (*(v132 + 8))(v63, v62);
  v137 = _swiftEmptyArrayStorage;
  v131 = type metadata accessor for AdHeaderProvider();
  v64 = swift_allocObject();
  v138 = sub_1001962CC(_swiftEmptyArrayStorage);
  sub_10002849C(&qword_100984B08, &qword_1007CC600);
  swift_allocObject();
  v65 = Box.init(value:)();
  v132 = v64;
  *(v64 + 16) = v65;
  v66 = ASKBagContract.isSponsoredAdsEnabled.getter();
  a1 = v120;
  if (v66)
  {
    sub_100413058(&qword_100984B38, &type metadata accessor for MetricsLogger.Configuration, &protocol conformance descriptor for MetricsLogger.Configuration);
    v67 = v113;
    v68 = v115;
    inject<A>(_:from:)();
    v69 = v114;
    v70 = v112;
    (*(v114 + 16))(v112, v67, v68);
    type metadata accessor for SearchAdsSponsoredSearchSessionManager(0);
    swift_allocObject();
    v71 = v125;

    v72 = v124;

    v73 = a1;
    v74 = v132;

    v75 = sub_1003DEA70(v122, v71, v121, v72, v74, v70);
    a1 = v73;

    sub_10002849C(&qword_1009844F0, &qword_1007B12D0);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1007B10D0;
    sub_10002849C(&unk_1009767E0, qword_1007BB218);
    v77 = sub_100413058(&qword_100984B40, type metadata accessor for SearchAdsSponsoredSearchSessionManager, &unk_1007CB618);
    v138 = v75;
    v139 = v77;
    static Dependency.satisfying<A>(_:with:)();

    sub_100394804(v76);
    (*(v69 + 8))(v67, v68);
  }

  if (v128 || (v78 = ASKBagContract.enabledAdPlacements.getter(), v79 = v133, (v127)(v46, v110, v133), v80 = sub_1003B7020(v46, v78), , v126(v46, v79), v80) || (v81 = ASKBagContract.enabledAdPlacements.getter(), v82 = v133, (v127)(v46, v104, v133), v83 = sub_1003B7020(v46, v81), , v126(v46, v82), v83) || (v84 = ASKBagContract.enabledAdPlacements.getter(), v85 = v133, (v127)(v46, v103, v133), v86 = sub_1003B7020(v46, v84), , v126(v46, v85), v86))
  {
    sub_10002849C(&unk_100973AF0, &qword_1007B3960);
    inject<A, B>(_:from:)();
    v87 = v138;
    v88 = v125;
    v89 = v132;
    if (v125)
    {
      v90 = v139;
      v91 = v136;
      v92 = ASKBagContract.promotedContentContextPrefetchLimit.getter();
      v93 = type metadata accessor for PromotedContentOnDeviceAdProvider();
      swift_allocObject();

      swift_unknownObjectRetain();
      v94 = sub_100122B84(v122, v88, v121, v124, v92, v89, v91, v87, v90);

      swift_unknownObjectRelease();
      sub_10002849C(&qword_1009844F0, &qword_1007B12D0);
      v95 = swift_allocObject();
      *(v95 + 1) = xmmword_1007B10D0;
      sub_10002849C(&qword_100984B20, &qword_1007CC610);
      v140 = v93;
      v141 = sub_100413058(&qword_100984B30, type metadata accessor for PromotedContentOnDeviceAdProvider, &unk_1007B74C4);
      v138 = v94;

      static Dependency.satisfying<A>(_:with:)();
      sub_100007000(&v138);
    }

    else
    {

      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      v95 = _swiftEmptyArrayStorage;
    }

    sub_100394804(v95);
    swift_unknownObjectRelease();
    v96 = v119;
    v97 = v118;
    v98 = v123;
  }

  else
  {

    v96 = v119;
    v97 = v118;
    v98 = v123;
    v89 = v132;
  }

  v99 = v137;
  if (v137[2])
  {
    v138 = v89;
    static Dependency.satisfying<A>(_:with:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v99 = sub_10003474C(0, v99[2] + 1, 1, v99);
    }

    v101 = v99[2];
    v100 = v99[3];
    if (v101 >= v100 >> 1)
    {
      v99 = sub_10003474C((v100 > 1), v101 + 1, 1, v99);
    }

    v99[2] = v101 + 1;
    (*(v129 + 32))(v99 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v101, v98, v97);
    v138 = v99;
    sub_10002849C(&qword_100984B10, &qword_1007CC608);
    sub_100412FF4();
    a1 = dispatch thunk of BaseObjectGraph.adding<A>(allDependencies:)();
  }

  else
  {
  }

  type metadata accessor for AdsService();
  inject<A, B>(_:from:)();
  sub_10002849C(&unk_1009767E0, qword_1007BB218);
  BaseObjectGraph.optional<A>(_:)();
  sub_10002849C(&qword_100984B20, &qword_1007CC610);
  BaseObjectGraph.optional<A>(_:)();
  dispatch thunk of AdsService.registerDependencies(sessionProviding:onDeviceAdProvider:)();

  swift_unknownObjectRelease();
  sub_10002B894(&v138, &qword_100984B28, &qword_1007CC618);
  return a1;
}

unint64_t sub_100412FA8()
{
  result = qword_10098D1A0;
  if (!qword_10098D1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10098D1A0);
  }

  return result;
}

unint64_t sub_100412FF4()
{
  result = qword_100984B18;
  if (!qword_100984B18)
  {
    sub_10002D1A8(&qword_100984B10, &qword_1007CC608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984B18);
  }

  return result;
}

uint64_t sub_100413058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004130A0()
{
  v1 = sub_10002849C(&qword_10097F538, &unk_1007CC7C0);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10002849C(&unk_10097F540, &unk_1007C6960);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10002849C(&qword_100985298, &qword_1007CC850);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10002849C(&unk_10097F4A0, &qword_1007C6948);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10002849C(&qword_100977F80, &unk_1007BCED0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_1009CF3E0);
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  sub_10002849C(&unk_10097F550, &qword_1007C6970);
  sub_100097060(&qword_100977F88, &unk_10097F550, &qword_1007C6970, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  sub_10002849C(&qword_1009852A0, &qword_1007CC858);
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v10 + 8))(v12, v9);
  DiffablePagePresenter.onPerformAction.getter();
  sub_10002849C(&qword_10097F4B0, &qword_1007C6950);
  v13 = sub_100097060(&qword_10097F4B8, &qword_10097F4B0, &qword_1007C6950, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v14 = v21;
  v20[1] = v13;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v29 + 8))(v14, v30);
  TimedMetricsPagePresenter.onUpdatePhaseChanged.getter();
  sub_10002849C(&qword_1009852A8, qword_1007CC860);
  sub_100097060(&qword_1009852B0, &qword_1009852A8, qword_1007CC860, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v15 = v22;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v23 + 8))(v15, v24);
  DiffablePagePresenter.onPaginationStateChanged.getter();
  sub_10002849C(&qword_10097F560, &qword_1007C6978);
  sub_100097060(&qword_10097F568, &qword_10097F560, &qword_1007C6978, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v16 = v25;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_10097F300))
  {

    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v17 = v28;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10002B894(v17, &qword_10097F538, &unk_1007CC7C0);
}

uint64_t sub_100413748()
{
  v1 = sub_10002849C(&qword_10097F538, &unk_1007CC7C0);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10002849C(&unk_10097F540, &unk_1007C6960);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10002849C(&qword_100985280, &qword_1007CC838);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10002849C(&unk_10097F4A0, &qword_1007C6948);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10002849C(&qword_100977F80, &unk_1007BCED0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_1009CF3E0);
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  sub_10002849C(&unk_10097F550, &qword_1007C6970);
  sub_100097060(&qword_100977F88, &unk_10097F550, &qword_1007C6970, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  sub_10002849C(&qword_10097C0B8, &qword_1007CC840);
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v10 + 8))(v12, v9);
  DiffablePagePresenter.onPerformAction.getter();
  sub_10002849C(&qword_10097F4B0, &qword_1007C6950);
  v13 = sub_100097060(&qword_10097F4B8, &qword_10097F4B0, &qword_1007C6950, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v14 = v21;
  v20[1] = v13;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v29 + 8))(v14, v30);
  TimedMetricsPagePresenter.onUpdatePhaseChanged.getter();
  sub_10002849C(&qword_100985288, &qword_1007CC848);
  sub_100097060(&qword_100985290, &qword_100985288, &qword_1007CC848, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v15 = v22;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v23 + 8))(v15, v24);
  DiffablePagePresenter.onPaginationStateChanged.getter();
  sub_10002849C(&qword_10097F560, &qword_1007C6978);
  sub_100097060(&qword_10097F568, &qword_10097F560, &qword_1007C6978, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v16 = v25;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_10097F300))
  {

    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v17 = v28;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10002B894(v17, &qword_10097F538, &unk_1007CC7C0);
}

uint64_t sub_100413DF0()
{
  v1 = sub_10002849C(&qword_10097F538, &unk_1007CC7C0);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10002849C(&unk_10097F540, &unk_1007C6960);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10002849C(&qword_100985258, &qword_1007CC820);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10002849C(&unk_10097F4A0, &qword_1007C6948);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10002849C(&qword_100977F80, &unk_1007BCED0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_1009CF3E0);
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  sub_10002849C(&unk_10097F550, &qword_1007C6970);
  sub_100097060(&qword_100977F88, &unk_10097F550, &qword_1007C6970, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  sub_10002849C(&qword_100985260, &qword_1007CC828);
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v10 + 8))(v12, v9);
  DiffablePagePresenter.onPerformAction.getter();
  sub_10002849C(&qword_10097F4B0, &qword_1007C6950);
  v13 = sub_100097060(&qword_10097F4B8, &qword_10097F4B0, &qword_1007C6950, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v14 = v21;
  v20[1] = v13;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v29 + 8))(v14, v30);
  TimedMetricsPagePresenter.onUpdatePhaseChanged.getter();
  sub_10002849C(&qword_100985268, &qword_1007CC830);
  sub_100097060(&qword_100985270, &qword_100985268, &qword_1007CC830, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v15 = v22;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v23 + 8))(v15, v24);
  DiffablePagePresenter.onPaginationStateChanged.getter();
  sub_10002849C(&qword_10097F560, &qword_1007C6978);
  sub_100097060(&qword_10097F568, &qword_10097F560, &qword_1007C6978, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v16 = v25;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_10097F300))
  {

    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v17 = v28;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10002B894(v17, &qword_10097F538, &unk_1007CC7C0);
}

uint64_t sub_100414498()
{
  v1 = sub_10002849C(&qword_10097F538, &unk_1007CC7C0);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10002849C(&unk_10097F540, &unk_1007C6960);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10002849C(&qword_100985208, &unk_1007CC7D0);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10002849C(&unk_10097F4A0, &qword_1007C6948);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10002849C(&qword_100977F80, &unk_1007BCED0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_1009CF3E0);
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  sub_10002849C(&unk_10097F550, &qword_1007C6970);
  sub_100097060(&qword_100977F88, &unk_10097F550, &qword_1007C6970, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  sub_10002849C(&qword_100985210, &unk_1007CC7E0);
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v10 + 8))(v12, v9);
  DiffablePagePresenter.onPerformAction.getter();
  sub_10002849C(&qword_10097F4B0, &qword_1007C6950);
  v13 = sub_100097060(&qword_10097F4B8, &qword_10097F4B0, &qword_1007C6950, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v14 = v21;
  v20[1] = v13;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v29 + 8))(v14, v30);
  TimedMetricsPagePresenter.onUpdatePhaseChanged.getter();
  sub_10002849C(&qword_100985218, &unk_1007CC7F0);
  sub_100097060(&qword_100985220, &qword_100985218, &unk_1007CC7F0, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v15 = v22;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v23 + 8))(v15, v24);
  DiffablePagePresenter.onPaginationStateChanged.getter();
  sub_10002849C(&qword_10097F560, &qword_1007C6978);
  sub_100097060(&qword_10097F568, &qword_10097F560, &qword_1007C6978, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v16 = v25;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_10097F300))
  {

    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v17 = v28;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10002B894(v17, &qword_10097F538, &unk_1007CC7C0);
}

uint64_t sub_100414B40()
{
  v1 = sub_10002849C(&qword_10097F538, &unk_1007CC7C0);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_10002849C(&unk_10097F540, &unk_1007C6960);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_10002849C(&qword_100985230, &qword_1007CC808);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_10002849C(&unk_10097F4A0, &qword_1007C6948);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_10002849C(&qword_100977F80, &unk_1007BCED0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_1009CF3E0);
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  sub_10002849C(&unk_10097F550, &qword_1007C6970);
  sub_100097060(&qword_100977F88, &unk_10097F550, &qword_1007C6970, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  sub_10002849C(&qword_100985238, &qword_1007CC810);
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v10 + 8))(v12, v9);
  DiffablePagePresenter.onPerformAction.getter();
  sub_10002849C(&qword_10097F4B0, &qword_1007C6950);
  v13 = sub_100097060(&qword_10097F4B8, &qword_10097F4B0, &qword_1007C6950, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v14 = v21;
  v20[1] = v13;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v29 + 8))(v14, v30);
  TimedMetricsPagePresenter.onUpdatePhaseChanged.getter();
  sub_10002849C(&qword_100985240, &qword_1007CC818);
  sub_100097060(&qword_100985248, &qword_100985240, &qword_1007CC818, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v15 = v22;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v23 + 8))(v15, v24);
  DiffablePagePresenter.onPaginationStateChanged.getter();
  sub_10002849C(&qword_10097F560, &qword_1007C6978);
  sub_100097060(&qword_10097F568, &qword_10097F560, &qword_1007C6978, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v16 = v25;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_10097F300))
  {

    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v17 = v28;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10002B894(v17, &qword_10097F538, &unk_1007CC7C0);
}

void sub_1004151E8(uint64_t a1, void (*a2)(char *), uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v34 = a5;
  v35 = a4;
  v33 = a3;
  v7 = v5;
  v32 = sub_10002849C(&qword_10097F530, &qword_1007BCF10);
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v31 - v10;
  v12 = sub_10002849C(&unk_10097F490, &qword_1007C2210);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  v15 = sub_10002849C(&qword_100977FC8, &qword_1007C6940);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  a2(v14);
  sub_10002B894(v14, &unk_10097F490, &qword_1007C2210);
  v17 = SnapshotUpdate.useReloadData.getter();
  v18 = qword_10097F2F8;
  if (v17)
  {
    swift_beginAccess();
    v19 = *&v7[v18];
    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = v19;
    SnapshotUpdate.contentSnapshot.getter();
    dispatch thunk of ModelMappedDiffableDataSource.applySnapshotUsingReloadData(_:animatingDifferences:completion:)();
  }

  else
  {
    swift_beginAccess();
    v21 = *&v7[v18];
    if (!v21)
    {
      goto LABEL_7;
    }

    v20 = v21;
    SnapshotUpdate.contentSnapshot.getter();
    SnapshotUpdate.animated.getter();
    dispatch thunk of ModelMappedDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  (*(v9 + 8))(v11, v32);
LABEL_7:
  v22 = v33;
  v23 = v35;
  sub_10002849C(v33, v35);
  sub_100097060(v34, v22, v23, &unk_1007C67E0);
  dispatch thunk of VisibleShelfSupplementaryCollectionElementsObserver.reconfigureVisibleShelfSupplementaries<A>(in:asPartOf:)();
  v24 = [v7 collectionView];
  if (!v24)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = v24;
  v26 = [v24 window];

  if (v26)
  {

    v27 = [v7 collectionView];
    if (!v27)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v28 = v27;
    dispatch thunk of CompoundScrollObserver.didScroll(in:)();
  }

  v29 = [v7 view];
  if (!v29)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = v29;
  [v29 bounds];

  ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
  if (SnapshotUpdate.isInitialFullPageSnapshot.getter())
  {
    ArtworkLoader.didFinishLoadingInitialViewport()();
  }
}

void sub_100415600(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v6 - 8);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031660(a2, v97, &unk_1009711D0, &unk_1007B1A10);
  if (v98)
  {
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    if (swift_dynamicCast())
    {
      v18 = v66;
      [v18 bounds];
      LOBYTE(v91) = 1;
      *&v73 = v18;
      *(&v73 + 1) = v19;
      *&v74 = v20;
      *(&v74 + 1) = v21;
      *&v75 = v22;
      BYTE8(v75) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v76 = _Q0;
      v77 = _Q0;
      v78 = 15;
      sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      *v17 = static OS_dispatch_queue.main.getter();
      (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
      v28 = _dispatchPreconditionTest(_:)();
      (*(v15 + 8))(v17, v14);
      if (v28)
      {
        v81 = xmmword_100975F50;
        v82 = xmmword_100975F60;
        v83 = xmmword_100975F70;
        v79 = xmmword_100975F30;
        v80 = xmmword_100975F40;
        v87 = v75;
        v88 = v76;
        v89 = v77;
        v85 = v73;
        v86 = v74;
        v91 = xmmword_100975F30;
        v92 = xmmword_100975F40;
        v94 = xmmword_100975F60;
        v95 = xmmword_100975F70;
        v84 = qword_100975F80;
        v90 = v78;
        v96 = qword_100975F80;
        v93 = xmmword_100975F50;
        sub_100031660(&v79, &v67, &unk_10097F520, &unk_1007BA430);
        xmmword_100975F50 = v87;
        xmmword_100975F60 = v88;
        xmmword_100975F70 = v89;
        qword_100975F80 = v90;
        xmmword_100975F30 = v85;
        xmmword_100975F40 = v86;
        sub_10002B894(&v91, &unk_10097F520, &unk_1007BA430);
        v29 = *&v65[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
        v30 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
        sub_10019DADC(&v73, &v67);
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v31 = *(v30 - 8);
        if ((*(v31 + 48))(v13, 1, v30) == 1)
        {
          sub_10002B894(v13, &unk_100972A00, &unk_1007B3130);
        }

        else
        {
          sub_1005F9AF4(v64, 1, v29, v13);
          (*(v31 + 8))(v13, v30);
        }

        v69 = xmmword_100975F50;
        v70 = xmmword_100975F60;
        v71 = xmmword_100975F70;
        v72 = qword_100975F80;
        v67 = xmmword_100975F30;
        v68 = xmmword_100975F40;
        xmmword_100975F30 = v79;
        xmmword_100975F40 = v80;
        xmmword_100975F50 = v81;
        xmmword_100975F60 = v82;
        xmmword_100975F70 = v83;
        qword_100975F80 = v84;
        sub_10002B894(&v67, &unk_10097F520, &unk_1007BA430);
        sub_10019DB38(&v73);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v62 = v4;
    v32 = v3;
  }

  else
  {
    v62 = v4;
    v32 = v3;
    sub_10002B894(v97, &unk_1009711D0, &unk_1007B1A10);
  }

  v33 = [v65 collectionView];
  if (!v33)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = v33;
  v35 = [v33 indexPathsForSelectedItems];

  if (!v35)
  {
LABEL_20:
    v56 = *&v65[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
    v57 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v10, 1, v57) == 1)
    {
      sub_10002B894(v10, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v64, 1, v56, v10);

      (*(v58 + 8))(v10, v57);
    }

    return;
  }

  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v36 + 16))
  {

    goto LABEL_20;
  }

  v37 = v63;
  v38 = *(v62 + 16);
  v39 = v36 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v60 = v32;
  v38(v63, v39, v32);

  v40 = [v65 collectionView];
  if (!v40)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v41 = v40;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v43 = [v41 cellForItemAtIndexPath:isa];

  if (!v43)
  {
    (*(v62 + 8))(v37, v60);
    goto LABEL_20;
  }

  v44 = v43;
  [v44 bounds];
  LOBYTE(v91) = 1;
  *&v73 = v43;
  *(&v73 + 1) = v45;
  *&v74 = v46;
  *(&v74 + 1) = v47;
  *&v75 = v48;
  BYTE8(v75) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v76 = _Q0;
  v77 = _Q0;
  v78 = 15;
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v50 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  v51 = v62;
  if ((v50 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v81 = xmmword_100975F50;
  v82 = xmmword_100975F60;
  v83 = xmmword_100975F70;
  v79 = xmmword_100975F30;
  v80 = xmmword_100975F40;
  v87 = v75;
  v88 = v76;
  v89 = v77;
  v85 = v73;
  v86 = v74;
  v91 = xmmword_100975F30;
  v92 = xmmword_100975F40;
  v94 = xmmword_100975F60;
  v95 = xmmword_100975F70;
  v84 = qword_100975F80;
  v90 = v78;
  v96 = qword_100975F80;
  v93 = xmmword_100975F50;
  sub_100031660(&v79, &v67, &unk_10097F520, &unk_1007BA430);
  xmmword_100975F50 = v87;
  xmmword_100975F60 = v88;
  xmmword_100975F70 = v89;
  qword_100975F80 = v90;
  xmmword_100975F30 = v85;
  xmmword_100975F40 = v86;
  sub_10002B894(&v91, &unk_10097F520, &unk_1007BA430);
  v52 = *&v65[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v53 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  sub_10019DADC(&v73, &v67);
  v54 = v61;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v55 = *(v53 - 8);
  if ((*(v55 + 48))(v54, 1, v53) == 1)
  {
    sub_10002B894(v54, &unk_100972A00, &unk_1007B3130);
  }

  else
  {
    sub_1005F9AF4(v64, 1, v52, v54);
    (*(v55 + 8))(v54, v53);
  }

  v69 = xmmword_100975F50;
  v70 = xmmword_100975F60;
  v71 = xmmword_100975F70;
  v72 = qword_100975F80;
  v67 = xmmword_100975F30;
  v68 = xmmword_100975F40;
  xmmword_100975F30 = v79;
  xmmword_100975F40 = v80;
  xmmword_100975F50 = v81;
  xmmword_100975F60 = v82;
  xmmword_100975F70 = v83;
  qword_100975F80 = v84;
  sub_10002B894(&v67, &unk_10097F520, &unk_1007BA430);
  sub_10019DB38(&v73);

  (*(v51 + 8))(v63, v60);
}

uint64_t (*sub_100416024(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D82C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_1004160B4(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_100416144(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_1004161D4(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_100416264(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_1004162F4(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_100416384(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_100416414(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D590;
}

uint64_t (*sub_1004164A4(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

uint64_t (*sub_100416534(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D8B4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D8B8;
}

void (*sub_1004165F8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D848;
}

void (*sub_10041665C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D7A8;
}

void (*sub_1004166C0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D720;
}

void (*sub_100416724(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D5F4;
}

void (*sub_100416788(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D69C;
}

uint64_t (*sub_1004167EC(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D8D4;
}

uint64_t (*sub_100416850(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D7A4;
}

uint64_t (*sub_1004168B4(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D8D4;
}

uint64_t (*sub_100416918(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D8D4;
}

uint64_t (*sub_10041697C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D8D4;
}

void sub_1004169E0(int a1, id a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v8 = [a2 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];

    sub_10002849C(a3, a4);
    sub_100097060(a5, a3, a4, &unk_1007C67E0);
    ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
    sub_10021D284();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_100416AAC(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D7F8;
}

void (*sub_100416B10(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D770;
}

void (*sub_100416B74(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D6EC;
}

void (*sub_100416BD8(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D5C0;
}

void (*sub_100416C3C(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D668;
}

uint64_t sub_100416CA0(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  sub_100031660(a2, &v9, &unk_1009711D0, &unk_1007B1A10);
  sub_100031660(&v8, &v6, &qword_10097C510, &qword_1007C4328);
  v4 = v6;
  sub_100031660(v7, v5, &unk_1009711D0, &unk_1007B1A10);

  sub_100415600(v2, v5);

  sub_10002B894(&v8, &qword_10097C510, &qword_1007C4328);
  sub_10002B894(&v4, &qword_10097C510, &qword_1007C4328);
  return sub_10002B894(v7, &unk_1009711D0, &unk_1007B1A10);
}

uint64_t sub_100416DB4(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B0B70;
  sub_10002849C(&qword_100971200, qword_1007B2730);
  v5 = *(type metadata accessor for Accessory(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B10D0;
  v8 = (v7 + v6);
  v9 = *(sub_10002849C(&unk_100984520, &qword_1007CC800) + 48);
  *v8 = 1;
  sub_100031660(a2, &v8[v9], &unk_1009796E0, &unk_1007C02F0);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_1003978F8(_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_100065C3C;
  v11[3] = v10;
  sub_1000C5DDC(a1);

  *(v4 + 32) = v11;
  return v4;
}

void sub_100416F70()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0 + qword_100984B98;
  if ((*(v0 + qword_100984B98 + 16) & 1) == 0)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    v15 = v7;
    sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    v14 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10041D8B0;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008C1FC8;
    v12 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000782C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v14;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v15);
  }
}

void sub_100417284(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  static ViewControllerContainment.remove(_:)();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v12 = v5;

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 bounds];

  static ViewControllerContainment.add(_:to:frame:)();
  v9 = *&v1[v3];
  if (v9)
  {
    v10 = [v9 view];
    if (v10)
    {
      v11 = v10;
      [v10 setInsetsLayoutMarginsFromSafeArea:0];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:
}

void sub_1004173C0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = a1;
  if ([v4 isViewLoaded])
  {
  }

  else
  {
    v5.receiver = v4;
    v5.super_class = ObjectType;
    objc_msgSendSuper2(&v5, "loadView");
    v3 = [v4 navigationItem];
    [v3 setTitle:0];
  }
}

void sub_10041747C(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewWillAppear:", a3);
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 bounds];

    sub_10000782C(&qword_1009851C0, type metadata accessor for ArcadeDiffablePageViewController, &unk_1007C67E0);
    ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10041757C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v8 = *(v23 - 8);
  *&v9 = __chkstk_darwin(v23).n128_u64[0];
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v2;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "viewDidAppear:", a1 & 1, v9);
  v12 = &v2[qword_100984B58];
  v13 = *&v2[qword_100984B58];
  if (v13)
  {
    v14 = v12[1];

    v13(v15);
    sub_10001F63C(v13, v14);
    v16 = *v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = v12[1];
  *v12 = 0;
  v12[1] = 0;
  sub_10001F63C(v16, v17);
  if (ArcadeDiffablePagePresenter.didFetchPage.getter())
  {
    sub_100417904();
  }

  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  aBlock[4] = sub_10041D644;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C2400;
  v20 = _Block_copy(aBlock);
  v21 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000782C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v24 + 8))(v7, v5);
  return (*(v8 + 8))(v11, v23);
}

double sub_100417904()
{
  v1 = v0;
  v2 = type metadata accessor for AppStoreEngagementEvent();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 viewIfLoaded];
  if (v7)
  {
    v9 = v7;
    v10 = [v7 window];

    if (v10)
    {
      v11 = [v10 isHidden];

      if ((v11 & 1) == 0)
      {
        v12 = *(*&v1[qword_100984B48] + 16);
        v13 = objc_allocWithZone(IAMCountableEvent);
        v14 = String._bridgeToObjectiveC()();
        v15 = [v13 initWithName:v14];

        [v12 receiveEvent:v15];
        sub_100292A18(v16);
        type metadata accessor for AppStoreEngagementManager();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        (*(v3 + 104))(v6, enum case for AppStoreEngagementEvent.arcadeTabDidComeOnScreen(_:), v2);
        swift_allocObject();
        swift_unknownObjectWeakInit();

        AppStoreEngagementManager.recordEngagement(event:resultHandler:)();

        (*(v3 + 8))(v6, v2);
      }
    }
  }

  return result;
}

void sub_100417B78()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v18 = v1;
    v2 = [v0 traitCollection];
    v3 = UITraitCollection.isRegularPad.getter();

    v4 = [v18 navigationBar];
    v5 = v4;
    if (v3)
    {
      [v4 setUserInteractionEnabled:1];
      v6 = v18;
      v18 = v5;
    }

    else
    {
      [v4 _backgroundOpacity];
      v8 = v7;

      if (v8 >= 1.0)
      {
        v6 = [v18 navigationBar];
        [v6 setUserInteractionEnabled:1];
      }

      else
      {
        v9 = [v18 navigationItem];
        v10 = [v9 leftBarButtonItems];

        if (v10 && ((sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr), v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v10, v11 >> 62) ? (v12 = _CocoaArrayWrapper.endIndex.getter()) : (v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v12))
        {
          v13 = 1;
        }

        else
        {
          v14 = [v18 navigationItem];
          v15 = [v14 rightBarButtonItems];

          if (v15)
          {
            sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
            v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v16 >> 62)
            {
              v17 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v13 = v17 != 0;
          }

          else
          {
            v13 = 0;
          }
        }

        v6 = [v18 navigationBar];
        [v6 setUserInteractionEnabled:v13];
      }
    }
  }
}

void sub_100417E20(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10041757C(a3);
}

void sub_100417E74(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
  }

  else if ([v1 isViewLoaded])
  {
    sub_10041B91C(1, 1, a1 & 1);
    v4 = type metadata accessor for Feature.iOS();
    v6[3] = v4;
    v6[4] = sub_10000782C(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
    v5 = sub_1000056E0(v6);
    (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v4);
    LOBYTE(v4) = isFeatureEnabled(_:)();
    sub_100007000(v6);
    if (v4)
    {
      sub_100417B78();
    }
  }
}

void sub_100417FA8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100417E74(a3);
}

void sub_100417FFC(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillLayoutSubviews");
  v2 = *&v1[qword_1009D01C8];
  if (v2)
  {
    v3 = v2;
    sub_1004B0B04();
    [v3 setHeight:{v4, v5.receiver, v5.super_class}];

    v1 = v3;
  }
}

id sub_100418084()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&unk_100996820, qword_1007C7450);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for UIView.LayoutRegion();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews", v8);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
  v14 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
  sub_10002B894(v5, &unk_100996820, qword_1007C7450);
  UIView.directionalEdgeInsets(for:)();
  v17 = v16;

  result = (*(v7 + 8))(v10, v6);
  v18 = &v1[qword_100984B80];
  v19 = *&v1[qword_100984B80];
  v20 = v1[qword_100984B80 + 8];
  *v18 = v17;
  *(v18 + 8) = 0;
  if ((v20 & 1) != 0 || v17 != v19)
  {
    result = [v1 view];
    if (result)
    {
      v21 = result;
      [result bounds];

      sub_10000782C(&qword_1009851C0, type metadata accessor for ArcadeDiffablePageViewController, &unk_1007C67E0);
      return ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
    }

LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_100418374(void *a1)
{
  v1 = a1;
  sub_100418084();
}

void sub_1004183BC(uint64_t a1, double a2, double a3)
{
  v8.receiver = v3;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = &v3[qword_100984B90];
    if ((v3[qword_100984B90 + 16] & 1) != 0 || *v7 != a2 || v7[1] != a3)
    {
      *v7 = a2;
      v7[1] = a3;
      *(v7 + 16) = 0;
      sub_100416F70();
    }
  }
}

void sub_100418468(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1004183BC(a5, a2, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1004184E8()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10002849C(&qword_1009851E0, &qword_1007D3560);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_10002849C(&qword_1009851E8, &qword_1007CC770);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_10002849C(&qword_100977F80, &unk_1007BCED0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_100414498();
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  sub_10002849C(&unk_10097F550, &qword_1007C6970);
  sub_100097060(&qword_100977F88, &unk_10097F550, &qword_1007C6970, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  (*(v5 + 8))(v7, v4);
  ArcadeDiffablePagePresenter.onOnPrepareUpsellHandler.getter();
  sub_10002849C(&qword_1009851F0, &qword_1007CC778);
  sub_100097060(&qword_1009851F8, &qword_1009851F0, &qword_1007CC778, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v8 = v12;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  (*(v13 + 8))(v8, v14);
  ArcadeDiffablePagePresenter.onRecordTabVisitIfPossible.getter();
  sub_10002849C(&qword_100985200, &qword_1007CC780);
  sub_100097060(&unk_10098A2B0, &qword_100985200, &qword_1007CC780, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v9 = v15;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  return (*(v16 + 8))(v9, v17);
}

void sub_100418920()
{
  v0 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v0 - 8);
  v42 = &v36 - v1;
  v2 = type metadata accessor for Shelf.ContentType();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v36 - v5;
  __chkstk_darwin(v6);
  v39 = &v36 - v7;
  v8 = sub_10002849C(&qword_100975028, &unk_1007C69C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v12 = sub_10002849C(&qword_10097F530, &qword_1007BCF10);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  sub_10002849C(&qword_100977FC8, &qword_1007C6940);
  SnapshotUpdate.contentSnapshot.getter();
  ModelMappedDiffableDataSourceContentSnapshot.identifierSnapshot.getter();
  v16 = *(v13 + 8);
  v16(v15, v12);
  v17 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
  (*(v9 + 8))(v11, v8);
  if (v17 < 1)
  {
    goto LABEL_4;
  }

  SnapshotUpdate.contentSnapshot.getter();
  v18 = v42;
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(at:)();
  v16(v15, v12);
  v19 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10002B894(v18, &unk_10098FFB0, qword_1007B3890);
LABEL_4:
    v21 = v43;
    *(v43 + qword_100984B78) = _swiftEmptySetSingleton;

    *(v21 + qword_100984B70) = 0;
    return;
  }

  swift_getKeyPath();
  v22 = v37;
  ReadOnlyLens.subscript.getter();

  (*(v20 + 8))(v18, v19);
  v24 = v39;
  v23 = v40;
  v25 = v41;
  (*(v40 + 32))(v39, v22, v41);
  v26 = v38;
  (*(v23 + 16))(v38, v24, v25);
  v27 = (*(v23 + 88))(v26, v25);
  if (v27 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v27 == enum case for Shelf.ContentType.upsellBreakout(_:) || v27 == enum case for Shelf.ContentType.heroCarousel(_:) || v27 == enum case for Shelf.ContentType.uber(_:))
  {
    sub_10002849C(&qword_10096FCE8, qword_1007BCF50);
    v30 = type metadata accessor for IndexPath();
    v31 = *(v30 - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1007B10D0;
    IndexPath.init(item:section:)();
    v34 = sub_100083BE8(v33);
    swift_setDeallocating();
    (*(v31 + 8))(v33 + v32, v30);
    swift_deallocClassInstance();
    (*(v23 + 8))(v24, v25);
    v35 = v43;
    *(v43 + qword_100984B78) = v34;

    *(v35 + qword_100984B70) = 1;
  }

  else
  {
    v28 = *(v23 + 8);
    v28(v24, v25);
    v29 = v43;
    *(v43 + qword_100984B78) = _swiftEmptySetSingleton;

    *(v29 + qword_100984B70) = 0;
    v28(v26, v25);
  }
}

void (*sub_100418F5C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10041D56C;
}

double sub_100418FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BootstrapPhase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 delegate];

  if (v9)
  {
    type metadata accessor for AppDelegate();
    if (swift_dynamicCastClass())
    {
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = a1;
      v11[4] = a2;
      (*(v5 + 104))(v7, enum case for BootstrapPhase.onboarding(_:), v4);

      BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

      (*(v5 + 8))(v7, v4);

      swift_unknownObjectRelease();
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_10096D110 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSLogger();
  sub_1000056A8(v13, qword_1009CE1E8);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  return result;
}

double (*sub_100419320(void *a1))(uint64_t *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D52C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10041D550;
}

double sub_1004193B0(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_10041D558, v5);

  return result;
}

uint64_t (*sub_100419440(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10041D500;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100116A08;
}

uint64_t sub_1004194D0()
{
  sub_10002849C(&qword_1009717B0, &unk_1007B2A00);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B5350;
  *(v1 + 32) = *(v0 + qword_100984BB0);
  *(v1 + 40) = &protocol witness table for ArcadeTitleEffectCollectionElementsObserver;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = &off_1008C1F08;
  swift_unknownObjectWeakAssign();
  v3 = sub_10000782C(&qword_100977F38, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver, &unk_1007DDD5C);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  type metadata accessor for ArcadeFloatingBarVisibilityThresholdCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = sub_10000782C(&qword_1009851D8, type metadata accessor for ArcadeFloatingBarVisibilityThresholdCollectionElementsObserver, &unk_1007CDF20);
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;

  *(v1 + 80) = sub_10073A854();
  *(v1 + 88) = v6;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

id sub_100419654(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_10002849C(&qword_1009851B8, &qword_1007CC768);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  sub_100729B04(a1);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v4 + 96))(v6, v3);
    sub_10041987C();
  }

  else if (v7 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    ArcadeTitleEffectCollectionElementsObserver.prepareForReuse()();
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }

  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result bounds];

    sub_10000782C(&qword_1009851C0, type metadata accessor for ArcadeDiffablePageViewController, &unk_1007C67E0);
    return ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10041987C()
{
  v1 = v0;
  ArcadeDiffablePagePresenter.pageTitle.getter();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v1 setTitle:v3];

  v4 = GenericPage.presentationOptions.getter();
  sub_100419B64(v4);
  v5 = [v1 tabBarItem];
  if (v5)
  {
    v6 = v5;
    ArcadeDiffablePagePresenter.tabTitle.getter();
    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();
    }

    else
    {
      v8 = 0;
    }

    [v6 setTitle:v8];

    ArcadeDiffablePagePresenter.pageTitle.getter();
    if (v9)
    {

      v10 = [v1 navigationItem];
      ArcadeDiffablePagePresenter.pageTitle.getter();
      if (v11)
      {
        v12 = String._bridgeToObjectiveC()();
      }

      else
      {
        v12 = 0;
      }

      [v10 setTitle:v12];

      v16 = [v1 navigationItem];
      sub_10073D660();
    }

    else
    {
      v13 = [v1 navigationItem];
      ArcadeDiffablePagePresenter.tabTitle.getter();
      if (v14)
      {
        v15 = String._bridgeToObjectiveC()();
      }

      else
      {
        v15 = 0;
      }

      [v13 setTitle:v15];

      v16 = [v1 navigationItem];
      sub_10073D778();
    }

    v17 = [v1 navigationItem];
    v18 = [v17 standardAppearance];

    if (!v18)
    {
      v18 = [objc_allocWithZone(UINavigationBarAppearance) init];
    }

    v22 = v18;
    if (ArcadeDiffablePagePresenter.subscriptionLockup.getter())
    {

      v19 = 0;
    }

    else
    {
      v19 = 2;
    }

    [v22 _setOverrideUserInterfaceStyle:v19];

    v20 = [v1 navigationItem];
    [v20 setStandardAppearance:v22];

    sub_100419E04(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_100419B64(char a1)
{
  v2 = v1;
  if (a1)
  {
    v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 1;
    v4 = 3;
    goto LABEL_8;
  }

  if ((a1 & 2) != 0)
  {
    v5 = sub_10006230C();
    v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = v5 & 1;
    if (v5)
    {
      v4 = 3;
      goto LABEL_8;
    }
  }

  else
  {
    v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 0;
  }

  v4 = 2;
LABEL_8:
  v6 = [v2 navigationItem];
  [v6 setLargeTitleDisplayMode:v4];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v8 = v7;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_19;
  }

  *(v9 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = (a1 & 8) == 0;

  sub_100062100();
  sub_10041CCEC(v10);
  if (ArcadeDiffablePagePresenter.subscriptionLockup.getter())
  {

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver();
    v12 = swift_allocObject();
    v12[3] = v11;
    v12[4] = 0;
    v12[2] = sub_10041D480;
    *&v2[qword_1009D01D8] = v12;

    sub_10000782C(&qword_1009851C8, type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver, &unk_1007BE6F0);
    CompoundScrollObserver.addChild(_:)();
  }

  else
  {
    v13 = qword_1009D01D8;
    if (*&v2[qword_1009D01D8])
    {
      sub_10000782C(&qword_1009851C8, type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver, &unk_1007BE6F0);
    }

    CompoundScrollObserver.removeChild(_:)();

    *&v2[v13] = 0;
  }
}

void sub_100419E04(uint64_t a1)
{
  v2 = v1;
  v3 = ArcadeDiffablePagePresenter.subscriptionLockup.getter();
  if (!v3)
  {
    v14 = [v1 navigationItem];
    [v14 setTitleView:0];

    v15 = &v2[qword_1009D01C8];
    v16 = *&v2[qword_1009D01C8];
    *v15 = 0;
    *(v15 + 1) = 0;

    v17 = qword_100984B88;
    v18 = *&v2[qword_100984B88];
    *&v2[qword_100984B88] = 0;
    if (!v18)
    {
      return;
    }

    v35 = v18;
    [v18 removeFromSuperview];
    v19 = *&v2[v17];
    if (!v19)
    {
      goto LABEL_27;
    }

    v12 = v19;
    v20 = [v2 view];
    if (v20)
    {
      v34 = v20;
      [v20 addSubview:v12];
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_32;
  }

  v4 = v3;
  v5 = [v1 traitCollection];
  v6 = UITraitCollection.isSizeClassCompact.getter();

  if ((v6 & 1) == 0)
  {
    v8 = [objc_allocWithZone(type metadata accessor for ArcadeFloatingBannerView()) init];
    [v8 setHidden:1];
    sub_100283630(v4, *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph]);
    v22 = qword_100984B88;
    v23 = *&v2[qword_100984B88];
    *&v2[qword_100984B88] = v8;
    if (v23)
    {
      v24 = v8;
      v25 = v23;
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {

LABEL_25:
        sub_10041A3E0(0);
        [v8 setFrame:?];

        v32 = [v2 navigationItem];
        [v32 setTitleView:0];

        v33 = &v2[qword_1009D01C8];
        v35 = *&v2[qword_1009D01C8];
        *v33 = 0;
        *(v33 + 1) = 0;
LABEL_26:

LABEL_27:
        v21 = v35;
        goto LABEL_28;
      }

      [v25 removeFromSuperview];
      v28 = *&v2[v22];
      if (!v28)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v27 = v8;
      v28 = v8;
      if (!v8)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    v29 = v28;
    v30 = [v2 view];
    if (v30)
    {
      v31 = v30;
      [v30 addSubview:v29];

LABEL_24:
      v25 = v23;
      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v7 = [objc_allocWithZone(type metadata accessor for ArcadePageTitleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100283630(v4, *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph]);
  swift_unknownObjectWeakAssign();
  v8 = v7;
  sub_10041A25C(v7, &off_1008C5360);

  v9 = qword_100984B88;
  v10 = *&v2[qword_100984B88];
  *&v2[qword_100984B88] = 0;
  if (v10)
  {
    v35 = v10;
    [v10 removeFromSuperview];
    v11 = *&v2[v9];
    if (v11)
    {
      v12 = v11;
      v13 = [v2 view];
      if (v13)
      {
        v34 = v13;
        [v13 addSubview:v12];

LABEL_11:

        v21 = v34;
LABEL_28:

        return;
      }

LABEL_33:
      __break(1u);
      return;
    }

    goto LABEL_26;
  }
}

void sub_10041A25C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v2 navigationItem];
    [v6 setTitleView:v5];

    v7 = &v2[qword_1009D01C8];
    v8 = *&v2[qword_1009D01C8];
    *v7 = a1;
    *(v7 + 1) = a2;
    v20 = v5;

    v9 = [v2 navigationController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 navigationBar];

      [v11 _titleOpacity];
      v13 = v12;

      v14 = *v7;
      if (*v7)
      {
        v15 = *&v14[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView];
        v16 = v14;
        [v15 setAlpha:v13];
      }
    }

    v17 = v20;
  }

  else
  {
    v18 = [v2 navigationItem];
    [v18 setTitleView:0];

    v19 = &v2[qword_1009D01C8];
    v17 = *&v2[qword_1009D01C8];
    *v19 = 0;
    *(v19 + 1) = a2;
  }
}

void sub_10041A3E0(char a1)
{
  v2 = *&v1[qword_100984B88];
  if (v2)
  {
    v4 = v2;
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v67.origin.x = v8;
      v67.origin.y = v10;
      v67.size.width = v12;
      v67.size.height = v14;
      CGRectGetWidth(v67);
      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        [v15 bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v68.origin.x = v18;
        v68.origin.y = v20;
        v68.size.width = v22;
        v68.size.height = v24;
        CGRectGetHeight(v68);
        v25 = &v1[qword_100984B98];
        if (v1[qword_100984B98 + 16])
        {
          v26 = *&v4[OBJC_IVAR____TtC8AppStore24ArcadeFloatingBannerView_lockupView];
          [v4 layoutMargins];
          CGSize.subtracting(insets:)();
          [v26 sizeThatFits:?];
          [v4 layoutMargins];
          CGSize.adding(outsets:)();
          v28 = v27;
          v30 = v29;
        }

        else
        {
          v28 = *v25;
          v30 = *(v25 + 1);
        }

        *v25 = v28;
        *(v25 + 1) = v30;
        v25[16] = 0;
        v31 = [v1 view];
        if (v31)
        {
          v32 = v31;
          [v31 safeAreaInsets];
          v34 = v33;

          if (v34 <= 28.0)
          {
            if ((a1 & 1) == 0)
            {
LABEL_12:
              v37 = [v1 view];
              if (!v37)
              {
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v38 = v37;
              [v37 bounds];
              v40 = v39;
              v42 = v41;
              v44 = v43;
              v46 = v45;

              v69.origin.x = v40;
              v69.origin.y = v42;
              v69.size.width = v44;
              v69.size.height = v46;
              CGRectGetMaxY(v69);
              goto LABEL_17;
            }
          }

          else
          {
            v35 = [v1 view];
            if (!v35)
            {
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v36 = v35;
            [v35 safeAreaInsets];

            if ((a1 & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          v47 = [v1 view];
          if (!v47)
          {
LABEL_25:
            __break(1u);
            return;
          }

          v48 = v47;
          [v47 bounds];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;

          v70.origin.x = v50;
          v70.origin.y = v52;
          v70.size.width = v54;
          v70.size.height = v56;
          CGRectGetMaxY(v70);
LABEL_17:
          v57 = [v1 view];
          if (v57)
          {
            v58 = v57;
            [v57 bounds];
            v60 = v59;
            v62 = v61;
            v64 = v63;
            v66 = v65;

            v71.origin.x = v60;
            v71.origin.y = v62;
            v71.size.width = v64;
            v71.size.height = v66;
            CGRectGetMidX(v71);

            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_10041A73C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong collectionView];

    if (v3)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        v6 = *&v4[qword_1009D01D8];
        if (v6)
        {

          [v3 _systemContentInset];
          v8 = v7;
          [v3 contentOffset];
          v10 = v9;
          [v3 contentInset];
          (*(v6 + 16))(v8 + v10 + v11 > *(v6 + 32));
        }

        else
        {
        }
      }
    }
  }
}

void sub_10041A864(char a1)
{
  v2 = *&v1[qword_100984B88];
  if (!v2)
  {
    return;
  }

  v56 = v2;
  sub_10041A3E0(a1 & 1);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = &v1[qword_100984BA8];
  if ((v1[qword_100984BA8 + 32] & 1) == 0 && CGRectEqualToRect(*&v4, *v12))
  {
    goto LABEL_26;
  }

  v55 = v11;
  v56 = v56;
  [v56 frame];
  MinY = CGRectGetMinY(v64);
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v65.origin.x = v17;
  v65.origin.y = v19;
  v65.size.width = v21;
  v65.size.height = v23;
  MaxY = CGRectGetMaxY(v65);
  v66.origin.x = v8;
  v66.origin.y = v9;
  v66.size.width = v10;
  v66.size.height = v55;
  v54 = CGRectGetMinY(v66);
  v25 = [v1 view];
  if (!v25)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = MaxY <= MinY;
  [v25 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v67.origin.x = v29;
  v67.origin.y = v31;
  v67.size.width = v33;
  v67.size.height = v35;
  v36 = CGRectGetMaxY(v67) <= v54 || v27;
  *v12 = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v55;
  *(v12 + 32) = 0;
  v37 = qword_100984BA0;
  v38 = *&v1[qword_100984BA0];
  if (v38)
  {
    v39 = v38;
    if ([v39 isRunning])
    {
      [v39 stopAnimation:1];

      v39 = *&v1[v37];
      *&v1[v37] = 0;
    }
  }

  if (a1)
  {
    [v56 setHidden:0];
    if (v36)
    {
      v40 = 2;
LABEL_18:

      v41 = swift_allocObject();
      *(v41 + 2) = v1;
      v41[3] = v8;
      v41[4] = v9;
      v41[5] = v10;
      v41[6] = v55;
      v42 = objc_allocWithZone(UIViewPropertyAnimator);
      v61 = sub_10041D488;
      v62 = v41;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_100007A08;
      v60 = &unk_1008C2018;
      v43 = _Block_copy(&aBlock);
      v44 = v1;

      v45 = [v42 initWithDuration:v40 curve:v43 animations:0.2];
      _Block_release(v43);
      v46 = *&v1[v37];
      *&v1[v37] = v45;

      v47 = *&v1[v37];
      if (v47 && (v48 = swift_allocObject(), *(v48 + 16) = a1 & 1, *(v48 + 24) = v56, v61 = sub_10041D4B4, v62 = v48, aBlock = _NSConcreteStackBlock, v58 = 1107296256, v59 = sub_10007FFE8, v60 = &unk_1008C2068, v49 = _Block_copy(&aBlock), v50 = v56, v51 = v47, , [v51 addCompletion:v49], _Block_release(v49), v51, (v52 = *&v1[v37]) != 0))
      {
        v53 = v52;
        [v53 startAnimation];
      }

      else
      {
      }

      return;
    }

    [v56 setFrame:{v8, v9, v10, v55}];
  }

  else
  {
    if (v36)
    {
      v40 = 1;
      goto LABEL_18;
    }

    [v56 setFrame:{v8, v9, v10, v55}];
    [v56 setHidden:1];
  }

LABEL_26:
}

void sub_10041AD48(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10041A864(a1 & 1);
  }
}

void sub_10041ADA4(void *a1)
{
  v3 = a1;
  v1 = [v3 collectionView];
  [v1 reloadData];

  sub_100419E04(v2);
}

void sub_10041AE30()
{
  if (*(*&v0[qword_100984B78] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_10041AED0(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong viewIfLoaded];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 window];

      if (v9)
      {
        if (([v9 isHidden] & 1) == 0)
        {
          a2();

          v6 = v9;
          goto LABEL_7;
        }
      }
    }

    v10 = &v6[qword_100984B58];
    v11 = *&v6[qword_100984B58];
    v12 = *&v6[qword_100984B58 + 8];
    *v10 = a2;
    *(v10 + 1) = a3;
    sub_10001F63C(v11, v12);

LABEL_7:
  }
}