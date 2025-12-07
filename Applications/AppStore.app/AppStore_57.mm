double sub_1006590B8(uint64_t a1, uint64_t a2)
{
  v2 = AccountPresenter.UpdatesLockupItem.moreButtonHandler.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    v6 = [v5 horizontalSizeClass];

    v7 = v6 == 1;
  }

  else
  {
    v7 = 1;
  }

  v2(v7);

  return result;
}

void sub_100659174(void *a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100977FB8, &unk_1007C4330);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource);
  if (v7)
  {
    v8 = v7;
    dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

    v9 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      sub_10002B894(v6, &qword_100977FB8, &unk_1007C4330);
    }

    else
    {
      ReadOnlyLens.value.getter();
      (*(v10 + 8))(v6, v9);
      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      type metadata accessor for AccountPresenter.Item();
      if (swift_dynamicCast())
      {
        dispatch thunk of AccountPresenter.didSelectItem(_:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [a1 deselectItemAtIndexPath:isa animated:1];
      }
    }
  }
}

uint64_t sub_10065948C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1006595A8(void *a1, uint64_t a2)
{
  v61 = a1;
  v4 = type metadata accessor for ImpressionMetrics.ID();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100977FB8, &unk_1007C4330);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for ImpressionMetrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v49 - v13;
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v17 - 8);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v58 = &v49 - v20;
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  __chkstk_darwin(v24);
  v25 = v2;
  v26 = *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_presenter);
  v60 = a2;
  v28 = &v49 - v27;
  dispatch thunk of AccountPresenter.shelfImpressionMetrics(at:)();
  sub_100031660(v28, v23, &qword_100973D30, &unk_1007B1DC0);
  v29 = *(v10 + 48);
  v30 = v29(v23, 1, v9);
  v57 = v10;
  v59 = v9;
  v53 = v26;
  if (v30 == 1)
  {
    sub_10002B894(v23, &qword_100973D30, &unk_1007B1DC0);
    v31 = v61;
  }

  else
  {
    (*(v10 + 32))(v16, v23, v9);
    BasePresenter.impressionsCalculator.getter();
    v31 = v61;
    [v61 frame];
    ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();

    (*(v10 + 8))(v16, v9);
  }

  v32 = *(v25 + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource);
  if (!v32)
  {
    return sub_10002B894(v28, &qword_100973D30, &unk_1007B1DC0);
  }

  v33 = v29;
  v34 = v32;
  dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

  v35 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v8, 1, v35) == 1)
  {
    sub_10002B894(v8, &qword_100977FB8, &unk_1007C4330);
    return sub_10002B894(v28, &qword_100973D30, &unk_1007B1DC0);
  }

  v38 = v28;
  ReadOnlyLens.value.getter();
  (*(v36 + 8))(v8, v35);
  sub_100005A38(&v62, v63);
  sub_10002A400(v63, v63[3]);
  v39 = v58;
  dispatch thunk of ViewModel.impressionMetrics.getter();
  v40 = v59;
  v41 = v33;
  if (v33(v39, 1, v59) == 1)
  {
    sub_10002B894(v38, &qword_100973D30, &unk_1007B1DC0);
    v42 = v39;
  }

  else
  {
    v43 = v57;
    v44 = v55;
    (*(v57 + 32))(v55, v39, v40);
    BasePresenter.impressionsCalculator.getter();
    v45 = v54;
    sub_100031660(v38, v54, &qword_100973D30, &unk_1007B1DC0);
    if (v41(v45, 1, v40) == 1)
    {
      sub_10002B894(v45, &qword_100973D30, &unk_1007B1DC0);
    }

    else
    {
      v46 = v50;
      ImpressionMetrics.id.getter();
      (*(v43 + 8))(v45, v40);
      ImpressionMetrics.ID.element.getter();
      (*(v51 + 8))(v46, v52);
    }

    v47 = v56;
    ImpressionMetrics.withParentId(_:)();

    [v31 frame];
    ImpressionsCalculator.addElement(_:at:)();

    v48 = *(v43 + 8);
    v48(v47, v40);
    v48(v44, v40);
    v42 = v38;
  }

  sub_10002B894(v42, &qword_100973D30, &unk_1007B1DC0);
  return sub_100007000(v63);
}

void (*sub_100659C2C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10065DA84;
}

void sub_100659C90()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100990A08, &qword_1007DBAA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  if ((dispatch thunk of AccountPresenter.isUpdatesLoading.getter() & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtC8AppStore21AccountViewController_refreshControl] endRefreshing];
  }

  v6 = *&v0[OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource];
  if (v6)
  {
    v7 = v6;
    sub_10002849C(&unk_100990A10, &unk_1007DBAB0);
    SnapshotUpdate.contentSnapshot.getter();
    SnapshotUpdate.animated.getter();
    dispatch thunk of ModelMappedDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v3 + 8))(v5, v2);
  }

  v8 = [v0 collectionView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 window];

  if (!v10)
  {
    return;
  }

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = v11;
  dispatch thunk of CompoundScrollObserver.didScroll(in:)();
}

void sub_10065A2CC()
{
  v1 = OBJC_IVAR____TtC8AppStore21AccountViewController_authenticating;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    [*&v0[OBJC_IVAR____TtC8AppStore21AccountViewController_activityIndicator] startAnimating];
    v2 = [v0 navigationItem];
    v3 = [v2 leftBarButtonItem];

    if (v3)
    {
      [v3 setHidden:0];
    }
  }

  else
  {
    v4 = [v0 navigationItem];
    v5 = [v4 leftBarButtonItem];

    if (v5)
    {
      [v5 setHidden:1];
    }

    [*&v0[OBJC_IVAR____TtC8AppStore21AccountViewController_activityIndicator] stopAnimating];
  }
}

void sub_10065A3FC(void *a1)
{
  if ((v1[OBJC_IVAR____TtC8AppStore21AccountViewController_isPresentingForgotSignInDetails] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC8AppStore21AccountViewController_isPresentingForgotSignInDetails] = 1;
    [a1 setPresentingViewController:v1];
    v3 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v9[4] = sub_10065CB8C;
      v9[5] = v5;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_10065A538;
      v9[3] = &unk_1008CD100;
      v6 = _Block_copy(v9);
      v7 = v4;
      v8 = v1;

      [v7 authenticateWithContext:a1 completion:v6];

      _Block_release(v6);
    }
  }
}

double sub_10065A538(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10002849C(&qword_100990A00, &qword_1007DBAA0);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

void sub_10065A5E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(AAUISignInController) init];
  [v3 setServiceType:AIDAServiceTypeStore];
  [v3 setDelegate:v0];
  if (qword_10096EBC8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSLogger();
  sub_1000056A8(v4, qword_100990928);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = ObjectType;
  v9[4] = sub_10065CB80;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100235C48;
  v9[3] = &unk_1008CD0B0;
  v7 = _Block_copy(v9);
  v8 = v3;

  [v8 prepareInViewController:v1 completion:v7];
  _Block_release(v7);
}

void sub_10065A880(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v7 = type metadata accessor for OSLogger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AlertActionStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v15 - 8);
  if (a1)
  {
    if (qword_10096EBC8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v7, qword_100990928);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      [Strong presentViewController:a4 animated:1 completion:0];
    }

    return;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  v44 = v12;
  v45 = _convertErrorToNSError(_:)();
  v18 = [v45 domain];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if ([v45 code] != -7005)
  {
LABEL_20:

LABEL_21:
    if (qword_10096EBC8 != -1)
    {
      swift_once();
    }

    v35 = sub_1000056A8(v7, qword_100990928);
    (*(v8 + 16))(v10, v35, v7);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    if (a2)
    {
      swift_getErrorValue();
      v36 = v47;
      v37 = v48;
      *(&v50 + 1) = v48;
      v38 = sub_1000056E0(&v49);
      (*(*(v37 - 8) + 16))(v38, v36, v37);
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
    }

    static LogMessage.safe(_:)();
    sub_10002B894(&v49, &unk_1009711D0, &unk_1007B1A10);
    Logger.error(_:)();

    (*(v8 + 8))(v10, v7);
    swift_beginAccess();
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;

      dispatch thunk of AccountPresenter.didFinishSignIn()();
    }

    return;
  }

  if (qword_10096EBC8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v7, qword_100990928);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  *(&v50 + 1) = sub_100005744(0, &qword_10097D7D8, NSError_ptr);
  *&v49 = v45;
  v25 = v45;
  static LogMessage.safe(_:)();
  sub_10002B894(&v49, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();

  v26._object = 0x8000000100819050;
  v26._countAndFlagsBits = 0xD000000000000017;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  localizedString(_:comment:)(v26, v27);
  v28._countAndFlagsBits = 0xD00000000000002ALL;
  v28._object = 0x8000000100819070;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  localizedString(_:comment:)(v28, v29);
  static ActionMetrics.notInstrumented.getter();
  (*(v44 + 104))(v14, enum case for AlertActionStyle.normal(_:), v11);
  type metadata accessor for AlertAction();
  swift_allocObject();
  v30 = AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)();
  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = v31;
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    v34 = v33;
    if (v33)
    {
      v33 = type metadata accessor for AccountViewController();
    }

    else
    {
      *(&v49 + 1) = 0;
      *&v50 = 0;
    }

    *&v49 = v34;
    *(&v50 + 1) = v33;
    sub_10065B690(v30, &v49);

    sub_10002B894(&v49, &unk_1009711D0, &unk_1007B1A10);
  }

  swift_beginAccess();
  v41 = swift_unknownObjectWeakLoadStrong();
  if (v41)
  {
    v42 = v41;

    dispatch thunk of AccountPresenter.didFinishSignIn()();
  }
}

void sub_10065B180()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10002849C(&qword_100975028, &unk_1007C69C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource];
  if (v7)
  {
    v8 = v7;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    v9 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
    (*(v4 + 8))(v6, v3);
    if (v9 >= 1)
    {
      v10 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
      v11 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
      static ViewControllerContainment.remove(_:)();

      v12 = *&v1[v10];
      *&v1[v10] = 0;

      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v39 = v16;
        v40 = v18;
        v41 = v20;
        v42 = v22;
        v43 = 0;
LABEL_8:
        static ViewControllerContainment.add(_:to:frame:)();

        return;
      }

      goto LABEL_10;
    }
  }

  static JULoadingViewController.PresentationContext.placeholder.getter();
  v23 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v24 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v25 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v27 = *&v1[v25];
  *&v1[v25] = v24;
  v8 = v24;

  v28 = [v1 view];
  if (v28)
  {
    v29 = v28;
    [v28 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v39 = v31;
    v40 = v33;
    v41 = v35;
    v42 = v37;
    v43 = 0;
    goto LABEL_8;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

id sub_10065B444()
{
  v1 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10065B510(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for JUContentUnavailableViewController();
  sub_10065D9D0(&unk_1009909F0, 255, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  v4 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v5 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v6 = *&v2[v4];
  *&v2[v4] = v3;
  v9 = v3;

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10065B690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031660(a2, v103, &unk_1009711D0, &unk_1007B1A10);
  if (v104)
  {
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    if (swift_dynamicCast())
    {
      v21 = v72;
      [v21 bounds];
      LOBYTE(v97) = 1;
      *&v79 = v21;
      *(&v79 + 1) = v22;
      *&v80 = v23;
      *(&v80 + 1) = v24;
      *&v81 = v25;
      BYTE8(v81) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v82 = _Q0;
      v83 = _Q0;
      v84 = 15;
      sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      *v20 = static OS_dispatch_queue.main.getter();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = _dispatchPreconditionTest(_:)();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_100975F50;
        v88 = xmmword_100975F60;
        v89 = xmmword_100975F70;
        v85 = xmmword_100975F30;
        v86 = xmmword_100975F40;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_100975F30;
        v98 = xmmword_100975F40;
        v100 = xmmword_100975F60;
        v101 = xmmword_100975F70;
        v90 = qword_100975F80;
        v96 = v84;
        v102 = qword_100975F80;
        v99 = xmmword_100975F50;
        sub_100031660(&v85, &v73, &unk_10097F520, &unk_1007BA430);
        xmmword_100975F50 = v93;
        xmmword_100975F60 = v94;
        xmmword_100975F70 = v95;
        qword_100975F80 = v96;
        xmmword_100975F30 = v91;
        xmmword_100975F40 = v92;
        sub_10002B894(&v97, &unk_10097F520, &unk_1007BA430);
        v32 = *&v71[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
        v33 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
        sub_10019DADC(&v79, &v73);
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10002B894(v16, &unk_100972A00, &unk_1007B3130);
        }

        else
        {
          sub_1005F9AF4(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_100975F50;
        v76 = xmmword_100975F60;
        v77 = xmmword_100975F70;
        v78 = qword_100975F80;
        v73 = xmmword_100975F30;
        v74 = xmmword_100975F40;
        xmmword_100975F30 = v85;
        xmmword_100975F40 = v86;
        xmmword_100975F50 = v87;
        xmmword_100975F60 = v88;
        xmmword_100975F70 = v89;
        qword_100975F80 = v90;
        sub_10002B894(&v73, &unk_10097F520, &unk_1007BA430);
        sub_10019DB38(&v79);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v66 = a1;
  }

  else
  {
    v66 = a1;
    sub_10002B894(v103, &unk_1009711D0, &unk_1007B1A10);
  }

  v35 = [v71 collectionView];
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  v37 = [v35 indexPathsForSelectedItems];

  if (!v37)
  {
LABEL_20:
    v61 = *&v71[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
    v62 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10002B894(v11, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v39 + 16))
  {

    goto LABEL_20;
  }

  v40 = v69;
  (*(v69 + 16))(v6, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v38);

  v41 = *(v40 + 32);
  v42 = v68;
  v41(v68, v6, v38);
  v43 = [v71 collectionView];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = v42;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v47 = [v44 cellForItemAtIndexPath:isa];

  if (!v47)
  {
    (*(v69 + 8))(v45, v70);
    goto LABEL_20;
  }

  v48 = v47;
  [v48 bounds];
  LOBYTE(v97) = 1;
  *&v79 = v47;
  *(&v79 + 1) = v49;
  *&v80 = v50;
  *(&v80 + 1) = v51;
  *&v81 = v52;
  BYTE8(v81) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v82 = _Q0;
  v83 = _Q0;
  v84 = 15;
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  *v20 = static OS_dispatch_queue.main.getter();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_100975F50;
  v88 = xmmword_100975F60;
  v89 = xmmword_100975F70;
  v85 = xmmword_100975F30;
  v86 = xmmword_100975F40;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_100975F30;
  v98 = xmmword_100975F40;
  v100 = xmmword_100975F60;
  v101 = xmmword_100975F70;
  v90 = qword_100975F80;
  v96 = v84;
  v102 = qword_100975F80;
  v99 = xmmword_100975F50;
  sub_100031660(&v85, &v73, &unk_10097F520, &unk_1007BA430);
  xmmword_100975F50 = v93;
  xmmword_100975F60 = v94;
  xmmword_100975F70 = v95;
  qword_100975F80 = v96;
  xmmword_100975F30 = v91;
  xmmword_100975F40 = v92;
  sub_10002B894(&v97, &unk_10097F520, &unk_1007BA430);
  v55 = *&v71[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v56 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  sub_10019DADC(&v79, &v73);
  v57 = v67;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10002B894(v57, &unk_100972A00, &unk_1007B3130);
  }

  else
  {
    sub_1005F9AF4(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_100975F50;
  v76 = xmmword_100975F60;
  v77 = xmmword_100975F70;
  v78 = qword_100975F80;
  v73 = xmmword_100975F30;
  v74 = xmmword_100975F40;
  xmmword_100975F30 = v85;
  xmmword_100975F40 = v86;
  xmmword_100975F50 = v87;
  xmmword_100975F60 = v88;
  xmmword_100975F70 = v89;
  qword_100975F80 = v90;
  sub_10002B894(&v73, &unk_10097F520, &unk_1007BA430);
  sub_10019DB38(&v79);

  (*(v69 + 8))(v60, v64);
}

uint64_t sub_10065C2D4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_100737C94();

  return dispatch thunk of AccountPresenter.refreshUpdates(fromServer:forceServerFetch:refreshBadgeCount:)();
}

double sub_10065C6F4()
{

  return result;
}

id sub_10065C784(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AccountViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10065C878()
{
  v1 = OBJC_IVAR____TtC8AppStore21AccountViewController_authenticating;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10065C8BC(char a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21AccountViewController_authenticating;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_10065A2CC();
}

void (*sub_10065C910(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10065C974;
}

void sub_10065C974(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10065A2CC();
  }
}

id sub_10065CA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10065D9D0(&qword_1009909E0, 255, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for AccountPresenter);
  v9 = sub_10002849C(&qword_1009909E8, qword_1007DBA88);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_1009816B8];
  *&v10[qword_1009816B8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_1009816B0];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_1009816C8] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_10065CBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10002849C(&qword_100990A28, &qword_1007DBAC8) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_10002849C(&qword_100990A20, &qword_1007DBAC0) - 8);
  v11 = *(v3 + 16);
  v12 = v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_100656BC8(a1, a2, a3, v11, v3 + v8, v12);
}

uint64_t sub_10065CCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10002849C(&qword_100972CF8, &qword_1007B3DF8) - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 16) & ~v10;
  v12 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_10002849C(&unk_100990A30, &qword_1007DBAD0) - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v15 = *(v4 + v12);
  v16 = v4 + ((*(v13 + 64) + v10 + v14) & ~v10);

  return sub_100656FD4(a1, a2, a3, a4, v4 + v11, v15, v4 + v14, v16);
}

uint64_t sub_10065CE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100990A70, &qword_1007DBB70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10065CE98(void *a1, uint64_t a2)
{
  v5 = sub_10002849C(&qword_100977FB8, &unk_1007C4330);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  sub_1006595A8(a1, a2);
  type metadata accessor for UpdatesLockupCollectionViewCell(0);
  if (swift_dynamicCastClass())
  {
    v9 = *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource);
    if (v9)
    {
      v10 = v9;
      dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

      v11 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {
        sub_10002B894(v7, &qword_100977FB8, &unk_1007C4330);
      }

      else
      {
        ReadOnlyLens.value.getter();
        (*(v12 + 8))(v7, v11);
        sub_10002849C(&qword_100973D50, &unk_1007B3840);
        type metadata accessor for AccountPresenter.UpdatesLockupItem();
        if (swift_dynamicCast())
        {
          type metadata accessor for ArtworkLoader();
          type metadata accessor for BaseObjectGraph();
          inject<A, B>(_:from:)();
          v13 = v15[1];
          AccountPresenter.UpdatesLockupItem.lockup.getter();
          v14 = dispatch thunk of Lockup.artwork.getter();

          sub_1005F094C(v14, v13);
        }
      }
    }
  }

  return result;
}

void sub_10065D0E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_100990A90, &unk_1007B5670);
  __chkstk_darwin(v4 - 8);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v39 - v7;
  v9 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v9 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  v15 = type metadata accessor for ImpressionMetrics();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v39 - v20;
  v22 = sub_10002849C(&qword_100977FB8, &unk_1007C4330);
  __chkstk_darwin(v22 - 8);
  v24 = v39 - v23;
  v25 = *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource);
  if (v25)
  {
    v41 = v21;
    v42 = v16;
    v40 = v8;
    v26 = v25;
    v39[1] = a1;
    dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

    v27 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v24, 1, v27) == 1)
    {
      sub_10002B894(v24, &qword_100977FB8, &unk_1007C4330);
    }

    else
    {
      ReadOnlyLens.value.getter();
      (*(v28 + 8))(v24, v27);
      sub_100005A38(&v44, v45);
      sub_10002A400(v45, v45[3]);
      dispatch thunk of ViewModel.impressionMetrics.getter();
      v29 = v42;
      v30 = *(v42 + 48);
      if (v30(v14, 1, v15) == 1)
      {
        sub_10002B894(v14, &qword_100973D30, &unk_1007B1DC0);
      }

      else
      {
        (*(v29 + 32))(v41, v14, v15);
        dispatch thunk of AccountPresenter.shelfImpressionMetrics(at:)();
        if (v30(v11, 1, v15) == 1)
        {
          sub_10002B894(v11, &qword_100973D30, &unk_1007B1DC0);
          v31 = 1;
          v32 = v40;
        }

        else
        {
          v33 = v29;
          v32 = v40;
          ImpressionMetrics.id.getter();
          (*(v33 + 8))(v11, v15);
          v31 = 0;
        }

        v34 = v43;
        v35 = type metadata accessor for ImpressionMetrics.ID();
        v36 = *(v35 - 8);
        (*(v36 + 56))(v32, v31, 1, v35);
        BasePresenter.impressionsCalculator.getter();
        sub_100031660(v32, v34, &qword_100990A90, &unk_1007B5670);
        if ((*(v36 + 48))(v34, 1, v35) == 1)
        {
          sub_10002B894(v34, &qword_100990A90, &unk_1007B5670);
        }

        else
        {
          ImpressionMetrics.ID.element.getter();
          (*(v36 + 8))(v34, v35);
        }

        v37 = v41;
        ImpressionMetrics.withParentId(_:)();

        ImpressionsCalculator.removeElement(_:)();

        v38 = *(v42 + 8);
        v38(v18, v15);
        sub_10002B894(v32, &qword_100990A90, &unk_1007B5670);
        v38(v37, v15);
      }

      sub_100007000(v45);
    }
  }
}

void sub_10065D698(uint64_t a1, uint64_t a2)
{
  sub_10065D0E4(a2);
  type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v4 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView;
    v5 = *(*(v3 + OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    ArtworkView.isImageHidden.setter();

    v6 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    type metadata accessor for ArtworkView();
    sub_10065D9D0(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v7 = v6;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

uint64_t sub_10065D7E4(uint64_t a1)
{
  v2 = v1;
  if (qword_10096EBC8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSLogger();
  sub_1000056A8(v4, qword_100990928);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1E00;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  v6[3] = sub_10002849C(&unk_100990A80, &unk_1007D3568);
  v6[0] = a1;

  static LogMessage.safe(_:)();
  sub_10002B894(v6, &unk_1009711D0, &unk_1007B1A10);
  Logger.info(_:)();

  [v2 dismissViewControllerAnimated:1 completion:{0, v6[0]}];
  return dispatch thunk of AccountPresenter.didFinishSignIn()();
}

uint64_t sub_10065D9D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10065DA20()
{
  result = qword_100990AA8;
  if (!qword_100990AA8)
  {
    sub_10002D1A8(&qword_100990AA0, qword_1007DBBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990AA8);
  }

  return result;
}

uint64_t sub_10065DAB0(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_10065DB50@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FlowPresentationContext();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for FlowPresentationContext.infer(_:), v3, v5);
  sub_10065E010(&qword_100975970, &type metadata accessor for FlowPresentationContext, &protocol conformance descriptor for FlowPresentationContext);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v10[1] == v10[0])
  {
    (*(v4 + 8))(v7, v3);

    return sub_10040B47C(a1);
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  (*(v4 + 8))(v7, v3);

  if (v8)
  {
    return sub_10040B47C(a1);
  }

  return (*(v4 + 16))(a1, v1, v3);
}

uint64_t type metadata accessor for FlowPresentationHints(uint64_t a1)
{
  result = qword_100990B28;
  if (!qword_100990B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10065DDCC(uint64_t a1)
{
  result = type metadata accessor for FlowPresentationContext();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FlowAnimationBehavior();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10065DE54()
{
  type metadata accessor for FlowPresentationContext();
  sub_10065E010(&qword_100975970, &type metadata accessor for FlowPresentationContext, &protocol conformance descriptor for FlowPresentationContext);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v6 == v4 && v7 == v5)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v2 = 0;
    if ((v1 & 1) == 0)
    {
      return v2 & 1;
    }
  }

  type metadata accessor for FlowPresentationHints(0);
  type metadata accessor for FlowAnimationBehavior();
  sub_10065E010(&unk_100990B60, &type metadata accessor for FlowAnimationBehavior, &protocol conformance descriptor for FlowAnimationBehavior);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v2 & 1;
}

uint64_t sub_10065E010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10065E058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v55 = a2;
  v51 = type metadata accessor for FontSource();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v42 - v4;
  v5 = type metadata accessor for PageGrid();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_10098F2D0, &unk_1007DA050);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v65 = vdupq_n_s64(0x4040000000000000uLL);
  __asm { FMOV            V0.2D, #28.0 }

  v62 = _Q0;
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for CGSize(0);
  Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
  v65 = xmmword_1007D9F50;
  v62 = xmmword_1007D9F60;
  Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
  v26 = *(v12 + 16);
  v49 = v14;
  v46 = v20;
  v26(v14, v20, v11);
  v47 = v17;
  v26(v10, v17, v11);
  v50 = v12;
  v27 = *(v12 + 56);
  v52 = v10;
  v53 = v11;
  v27(v10, 0, 1, v11);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.horizontalMargins.getter();
  v29 = v28;
  (*(v43 + 8))(v7, v44);
  v66 = &type metadata for CGFloat;
  v67 = &protocol witness table for CGFloat;
  v65.i64[0] = v29;
  v63 = &type metadata for Double;
  v64 = &protocol witness table for Double;
  v61[14] = &protocol witness table for Double;
  *&v62 = 0x4048000000000000;
  v61[13] = &type metadata for Double;
  v61[10] = 0x4028000000000000;
  if (qword_10096DCC8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for FontUseCase();
  v45 = sub_1000056A8(v30, qword_1009D05F0);
  v31 = *(*(v30 - 8) + 16);
  v32 = v56;
  v31(v56, v45, v30);
  v33 = enum case for FontSource.useCase(_:);
  v34 = v48;
  v35 = *(v48 + 104);
  v36 = v51;
  v35(v32, enum case for FontSource.useCase(_:), v51);
  v61[9] = &protocol witness table for Double;
  v61[8] = &type metadata for Double;
  v61[5] = 0;
  v37 = v54;
  v31(v54, v45, v30);
  v35(v37, v33, v36);
  v61[3] = type metadata accessor for StaticDimension();
  v61[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v61);
  v59 = v36;
  v60 = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v58);
  (*(v34 + 16))(v38, v37, v36);
  StaticDimension.init(_:scaledLike:)();
  (*(v34 + 8))(v37, v36);
  v60 = &protocol witness table for Double;
  v59 = &type metadata for Double;
  v58[0] = 0x4020000000000000;
  v57[3] = type metadata accessor for ZeroDimension();
  v57[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v57);
  static ZeroDimension.zero.getter();
  ActionLayout.Metrics.init(artworkSize:maxArtworkSize:artworkMargin:artworkLeadingMargin:labelWithArtworkLeadingMargin:accessoryMargin:labelFontSource:labelVerticalMargin:searchAdButtonTopMargin:searchAdButtonLeadingMargin:shouldLabelFitAvailableWidth:)();
  v39 = *(v50 + 8);
  v40 = v53;
  v39(v47, v53);
  return (v39)(v46, v40);
}

uint64_t sub_10065E66C(uint64_t a1, uint64_t a2)
{
  v112 = a2;
  v126 = type metadata accessor for FontSource();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_10096FB10, &unk_1007B0F00);
  __chkstk_darwin(v4 - 8);
  v131 = &v107 - v5;
  v136 = type metadata accessor for UIBackgroundConfiguration();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for PageGrid();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v144 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v8 - 8);
  v111 = &v107 - v9;
  v114 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v137 = &v107 - v10;
  v127 = type metadata accessor for Shelf.PresentationHints();
  v129 = *(v127 - 8);
  __chkstk_darwin(v127);
  v141 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for ComponentLayoutOptions();
  v145 = *(v142 - 8);
  __chkstk_darwin(v142);
  v110 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v143 = &v107 - v14;
  v140 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v130 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v138 = &v107 - v17;
  v18 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v107 - v20;
  v22 = type metadata accessor for ShelfLayoutContext();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ActionLayout.Metrics();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  sub_10065E058(v25, v29);
  v30 = *(v23 + 8);
  v120 = v25;
  v31 = v25;
  v32 = v143;
  v123 = v22;
  v122 = v23 + 8;
  v117 = v30;
  v30(v31, v22);
  v33 = v26;
  v34 = a1;
  v35 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_layoutMetrics;
  v36 = v128;
  swift_beginAccess();
  v37 = *(v27 + 40);
  v119 = v35;
  v118 = v29;
  v115 = v33;
  v38 = v33;
  v39 = v141;
  v121 = v27 + 40;
  v116 = v37;
  v37(&v36[v35], v29, v38);
  swift_endAccess();
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v19 + 8))(v21, v18);
  v40 = v138;
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v146 = v34;
  v41 = sub_100079F24();
  sub_10002C0AC(v150, &v148);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Action();
  v42 = &selRef_setRequiresColorStatistics_;
  v43 = &selRef__setDefaultAttributes_;
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    (*(v129 + 8))(v39, v127);
    (*(v145 + 8))(v32, v142);
    (*(v139 + 8))(v40, v140);
    sub_100007000(v150);
    v54 = v134;
    v45 = v36;
    v55 = &StringUserDefaultsDebugSetting;
    goto LABEL_24;
  }

  v44 = v147;
  (*(v139 + 16))(v130, v40, v140);
  type metadata accessor for NilState();
  WritableStateLens.init(_:)();
  v45 = v36;
  v46 = *&v36[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel];
  Action.title.getter();
  dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

  v47 = *&v45[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView];
  v48 = v110;
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_10065FA40(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v49 = v142;
  v50 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v51 = *(v145 + 8);
  v145 += 8;
  v109 = v51;
  v51(v48, v49);
  [v47 setHidden:v50 & 1];
  v130 = v44;
  v52 = Action.presentationStyle.getter();
  v108 = v46;
  if ((v52 & 2) != 0)
  {
    [v46 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v46 _setTextColorFollowsTintColor:0];
    sub_100028BB8();
    v53 = static UIColor.primaryText.getter();
    [v46 setTextColor:v53];
  }

  v56 = v129;
  v55 = &StringUserDefaultsDebugSetting;
  swift_getObjectType();
  v57 = sub_10028F24C(v41);
  v58 = type metadata accessor for Accessory(0);
  if (v57)
  {
    v59 = v111;
    swift_storeEnumTagMultiPayload();
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v59 = v111;
  }

  (*(*(v58 - 8) + 56))(v59, v60, 1, v58);
  sub_100611864(v59, v112);
  sub_10002B894(v59, &qword_100984340, qword_1007C0830);
  v61 = [v41 traitCollection];
  v62 = [v61 horizontalSizeClass];

  if (v62 == 1 || (static ComponentLayoutOptions.fixedHeightContainer.getter(), v63 = v142, v64 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v109(v48, v63), (v64 & 1) != 0))
  {
    v65 = [v45 contentView];
    [v41 pageMarginInsets];
  }

  else
  {
    v65 = [v45 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v70 = v137;
  [v65 setLayoutMargins:{top, left, bottom, right}];

  v71 = Action.artwork.getter();
  if (v71)
  {

    v72 = *&v45[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v72 && ([v72 isHidden] & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v74 = v71 == 0;
    v75 = sub_1006123AC();
    v76 = v74;
    v70 = v137;
    [v75 setHidden:v76];

    goto LABEL_20;
  }

  v73 = *&v45[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v73 && ![v73 isHidden])
  {
    goto LABEL_19;
  }

LABEL_20:
  static ComponentLayoutOptions.fixedHeightContainer.getter();
  v77 = v142;
  v78 = v143;
  v79 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v80 = v48;
  v81 = v109;
  v109(v80, v77);
  v45[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isVertical] = (v79 & 1) == 0;
  if (v79)
  {
    v82 = 1;
  }

  else
  {
    v82 = 3;
  }

  [v108 setNumberOfLines:v82];
  [v45 setNeedsLayout];
  [v45 setNeedsLayout];
  swift_unknownObjectRelease();

  (*(v113 + 8))(v70, v114);
  (*(v56 + 8))(v141, v127);
  v81(v78, v77);
  (*(v139 + 8))(v138, v140);
  sub_100007000(v150);
  v42 = &selRef_setRequiresColorStatistics_;
  v43 = &selRef__setDefaultAttributes_;
  v54 = v134;
LABEL_24:
  v83 = [v45 v43[388]];
  [v83 v55[41].ivars];

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  static UIBackgroundConfiguration.listPlainCell()();
  PageGrid.columnCount.getter();
  v85 = v84;
  PageGrid.interRowSpace.getter();
  v86 = v136;
  v87 = v135;
  if (v85 == 1.0)
  {
    PageGrid.horizontalMargins.getter();
    PageGrid.interRowSpace.getter();
    PageGrid.horizontalMargins.getter();
  }

  else
  {
    PageGrid.interColumnSpace.getter();
    PageGrid.interRowSpace.getter();
    PageGrid.interColumnSpace.getter();
  }

  UIBackgroundConfiguration.backgroundInsets.setter();
  v88 = v131;
  (*(v87 + 16))(v131, v54, v86);
  (*(v87 + 56))(v88, 0, 1, v86);
  UICollectionViewCell.backgroundConfiguration.setter();
  v89 = ASKDeviceTypeGetCurrent();
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;
  if (v90 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v92 == v93)
  {
  }

  else
  {
    v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v94 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  type metadata accessor for SearchAdAction();
  sub_10065FA40(&unk_100983980, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  v45[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchTrendingAction] = ItemLayoutContext.typedModel<A>(is:)() & 1;
  v95 = v120;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v96 = v45;
  v97 = v118;
  sub_10065E058(v95, v118);
  v117(v95, v123);
  v98 = v119;
  swift_beginAccess();
  v99 = v97;
  v45 = v96;
  v116(&v96[v98], v99, v115);
  swift_endAccess();
  sub_100612CB8();
  v100 = *&v96[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel];
  swift_beginAccess();
  v101 = v124;
  ActionLayout.Metrics.labelFontSource.getter();
  swift_endAccess();
  v102 = [v96 v42[35]];
  isa = FontSource.font(compatibleWith:)(v102).super.isa;

  (*(v125 + 8))(v101, v126);
  [v100 setFont:isa];

  [v45 setNeedsLayout];
LABEL_32:
  sub_10002849C(&unk_100973200, &qword_1007B4620);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v149)
  {
    sub_100005A38(&v148, v150);
    sub_10002A400(v150, v150[3]);
    v104 = dispatch thunk of ArtworkModelProtocol.artwork.getter();
    if (v104)
    {
    }

    v45[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay] = v104 != 0;
    sub_100007000(v150);
  }

  else
  {
    sub_10002B894(&v148, &unk_100990B70, &unk_1007B4628);
  }

  v105 = v144;
  [v45 setNeedsLayout];
  (*(v87 + 8))(v54, v86);
  return (*(v132 + 8))(v105, v133);
}

uint64_t sub_10065F8D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_10065F92C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_10065F9F4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v2, "prepareForReuse");
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay) = 0;
  return result;
}

uint64_t sub_10065FA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10065FA88(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel];
  v6 = [v5 text];
  if (v6)
  {
    v8 = v6;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (!a2)
    {
      v14 = 0;
      goto LABEL_12;
    }

    if (v9 == a1 && v11 == a2)
    {

LABEL_16:

      return result;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v14 = String._bridgeToObjectiveC()();
LABEL_12:

  [v5 setText:v14];

  [v2 setNeedsLayout];
  return result;
}

void sub_10065FBE8(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel];
  v5 = [v4 attributedText];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_10:
    if (qword_10096E650 != -1)
    {
      swift_once();
    }

    v8 = qword_1009D2238;
    v9 = unk_1009D2240;
    v10 = qword_1009D2248;
    v11 = [v2 traitCollection];
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {

      if (a1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v34 = UITraitCollection.isSizeClassCompact.getter();

      if (v34)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      if (a1)
      {
LABEL_14:
        v37 = v4;
        v40 = v2;
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        v12 = a1;
        v36 = v10;
        v38 = v10;
        v13 = static UIColor.secondaryText.getter();
        v14 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v12];
        v15 = [v12 length];
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        *(v16 + 24) = v13;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_100664530;
        *(v17 + 24) = v16;
        v45 = sub_100664538;
        v46 = v17;
        aBlock = _NSConcreteStackBlock;
        v42 = 1107296256;
        v43 = sub_1006607C0;
        v44 = &unk_1008CD568;
        v18 = _Block_copy(&aBlock);
        v19 = v14;
        v20 = v13;

        [v12 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v15 usingBlock:{0, v18}];

        _Block_release(v18);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          v22 = [v40 traitCollection];
          v23 = objc_allocWithZone(NSMutableAttributedString);
          v24 = v38;
          v25 = [v23 initWithAttributedString:v19];
          v26 = [v19 length];
          v27 = swift_allocObject();
          *(v27 + 16) = v38;
          *(v27 + 24) = v22;
          *(v27 + 32) = v25;
          *(v27 + 40) = 1;
          v28 = swift_allocObject();
          *(v28 + 16) = sub_10010279C;
          *(v28 + 24) = v27;
          v45 = sub_100664560;
          v46 = v28;
          aBlock = _NSConcreteStackBlock;
          v42 = 1107296256;
          v43 = sub_1006606C4;
          v44 = &unk_1008CD5E0;
          v29 = _Block_copy(&aBlock);
          v30 = v24;
          v31 = v22;
          v32 = v25;

          [v19 enumerateAttributesInRange:0 options:v26 usingBlock:{0x100000, v29}];

          _Block_release(v29);
          v33 = swift_isEscapingClosureAtFileLocation();

          if ((v33 & 1) == 0)
          {
            v2 = v40;
            v10 = v36;
            v4 = v37;
LABEL_22:
            [v4 setAttributedText:v32];

            [v2 setNeedsLayout];
            return;
          }
        }

        __break(1u);
        return;
      }
    }

    v35 = v10;
    v32 = 0;
    goto LABEL_22;
  }

  v6 = v5;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_100005744(0, &unk_100984040, NSAttributedString_ptr);
  v39 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }
}

id sub_100660130()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_shadowView];
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  [v2 setHidden:v4 == 2];
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  LOBYTE(v4) = static UIContentSizeCategory.>= infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] overrideUserInterfaceStyle];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();

    v15[3] = sub_100005744(0, &qword_1009846D0, NSString_ptr);
    v15[0] = v7;
    v8 = v7;
    sub_1005868E4(v15);
    v9 = [*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel] layer];
    [v9 setCompositingFilter:v8];
  }

  if (v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_includeBorderInDarkMode] == 1)
  {
    v10 = [v1 traitCollection];
    v11 = [v10 userInterfaceStyle];

    v12 = v11 != 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_borderView];

  return [v13 setHidden:v12];
}

void sub_100660344(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100664588(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v8 = v7;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_1006604D0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v1 setNeedsLayout];
  }

  sub_10065FBE8(0);
  v4 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView];
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v14, v5);
  [*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView] setHidden:1];
  [v4 setHidden:0];
  [*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView] setHidden:0];
  v6 = &v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction];
  v7 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction];
  v8 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction + 8];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_10001F63C(v7, v8);
  sub_1006643EC();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:v4];
    [v1 setNeedsLayout];
  }

  v11 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView];
  sub_100507398();

  v13[0] = 0x3FF0000000000000;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = 0x3FF0000000000000;
  v13[4] = 0;
  v13[5] = 0;
  [v1 setTransform:v13];
  [v1 setAlpha:1.0];
  return [v1 setHidden:0];
}

double sub_1006606C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_100664588(&qword_100976620, 255, type metadata accessor for Key, &unk_1007B0934);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8(v9, a3, a4, a5);

  return result;
}

uint64_t sub_1006607C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_100056164(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_10002B894(v13, &unk_1009711D0, &unk_1007B1A10);
}

uint64_t sub_10066086C()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009D3178);
  sub_1000056A8(v0, qword_1009D3178);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006609D0(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v46 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DD98 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D0860);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = type metadata accessor for StaticDimension();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_1000056E0(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  SmallLockupLayout.Metrics.headingSpace.setter();
  if (qword_10096DDA0 != -1)
  {
    swift_once();
  }

  v42 = sub_1000056A8(v6, qword_1009D0878);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v54);
  v44(v17, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v49(v5, v2);
  SmallLockupLayout.Metrics.titleRegularSpace.setter();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v54);
  v21 = v44;
  v44(v20, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22 = v49;
  v49(v5, v2);
  SmallLockupLayout.Metrics.titleMediumSpace.setter();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v54);
  v21(v26, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22(v5, v2);
  SmallLockupLayout.Metrics.titleShortSpace.setter();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v54);
  v21(v28, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  if (qword_10096DDB0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_1000056A8(v45, qword_1009D08A8);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v54);
  v21(v32, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v49(v5, v2);
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  if (qword_10096DDA8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v29, qword_1009D0890);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(v54);
  v37 = v44;
  v44(v36, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38 = v49;
  v49(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  SmallLockupLayout.Metrics.numberOfLines.setter();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(v54);
  v37(v39, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38(v5, v2);
  return SmallLockupLayout.Metrics.subtitleSpace.setter();
}

uint64_t sub_100661224()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009D3190);
  sub_1000056A8(v0, qword_1009D3190);
  if (qword_10096EBD0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3178);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006613BC(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v8 = type metadata accessor for FontSource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AspectRatio();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  sub_100005644(v14, a5);
  v34 = sub_1000056A8(v14, a5);
  v46 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  *&v45 = 0x4030000000000000;
  v35 = v13;
  AspectRatio.init(_:_:)();
  if (qword_10096E3A0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v15, qword_1009D1A60);
  v17 = *(v15 - 8);
  v33 = *(v17 + 16);
  v32 = v17 + 16;
  v33(v11, v16, v15);
  v18 = v9[13];
  v31 = enum case for FontSource.useCase(_:);
  v30 = v18;
  v18(v11);
  v19 = type metadata accessor for StaticDimension();
  v43 = v19;
  v44 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v42);
  v40 = v8;
  v41 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(&v39);
  v21 = v9[2];
  v21(v20, v11, v8);
  StaticDimension.init(_:scaledLike:)();
  v22 = v9[1];
  v22(v11, v8);
  if (qword_10096E3A8 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v15, qword_1009D1A78);
  v33(v11, v23, v15);
  v30(v11, v31, v8);
  v40 = v19;
  v41 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v39);
  v38[3] = v8;
  v38[4] = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v38);
  v21(v24, v11, v8);
  StaticDimension.init(_:scaledLike:)();
  v22(v11, v8);
  v25 = v34;
  v26 = v34 + v14[8];
  *(v26 + 24) = &type metadata for Double;
  *(v26 + 32) = &protocol witness table for Double;
  *v26 = a2;
  v27 = v25 + v14[9];
  *(v27 + 24) = &type metadata for Double;
  *(v27 + 32) = &protocol witness table for Double;
  *v27 = a3;
  sub_100005A38(&v45, v25);
  (*(v36 + 32))(v25 + v14[5], v35, v37);
  sub_100005A38(&v42, v25 + v14[6]);
  return sub_100005A38(&v39, v25 + v14[7]);
}

UIColor sub_100661844()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v0 = objc_opt_self();
  result.super.isa = UIColor.init(light:dark:)([v0 whiteColor], objc_msgSend(v0, "secondarySystemBackgroundColor")).super.isa;
  qword_1009D31D8 = result.super.isa;
  return result;
}

id sub_1006618D8()
{
  v1 = v0;
  v2 = type metadata accessor for Separator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Separator();
  v38 = *(v6 - 8);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  v12 = static UIContentSizeCategory.>= infix(_:_:)();

  v13 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_gradientBlurView;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_gradientBlurView];
  if (v12)
  {
    v37 = v3;
    if (v14)
    {
      [v14 setHidden:1];
    }

    v15 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_contentView];
    [v15 addSubview:{*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel], v37}];
    [v15 addSubview:*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView]];
    v16 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel];
    [v16 setNumberOfLines:0];
    v17 = [v16 layer];
    [v17 setCompositingFilter:0];

    [v15 addSubview:v16];
    v39 = 0u;
    v40 = 0u;
    sub_1005868E4(&v39);
    v18 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView;
    v19 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView];
    if (v19 || (((*(v37 + 104))(v5, enum case for Separator.Position.top(_:), v2), *(&v40 + 1) = type metadata accessor for ZeroDimension(), v41 = &protocol witness table for ZeroDimension, sub_1000056E0(&v39), static ZeroDimension.zero.getter(), Separator.init(position:leadingInset:trailingInset:verticalOutset:)(), v20 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v21 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator, swift_beginAccess(), v22 = *(v38 + 40), v23 = v20, v22(&v20[v21], v9, v6), swift_endAccess(), v23, (v24 = *&v1[v18]) == 0) ? (v25 = 0) : (objc_msgSend(v24, "removeFromSuperview"), v25 = *&v1[v18]), *&v1[v18] = v23, v33 = v23, v25, objc_msgSend(v15, "addSubview:", v33), v33, objc_msgSend(v1, "setNeedsLayout"), v33, (v19 = *&v1[v18]) != 0))
    {
      [v19 setHidden:0];
    }
  }

  else
  {
    if (v14 || ((v29 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView()), v30 = sub_100251D00(0), (v31 = *&v1[v13]) == 0) ? (v32 = 0) : ([v31 removeFromSuperview], v32 = *&v1[v13]), (*&v1[v13] = v30, v35 = v30, v32, objc_msgSend(*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView], "addSubview:", v35), v35, objc_msgSend(v1, "setNeedsLayout"), v35, (v36 = *&v1[v13]) != 0) && (objc_msgSend(v36, "setUserInteractionEnabled:", 0), (v14 = *&v1[v13]) != 0)))
    {
      [v14 setHidden:0];
    }

    v26 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView];
    [v26 addSubview:*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel]];
    [v26 addSubview:*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView]];
    v27 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel];
    [v27 setNumberOfLines:1];
    [v26 addSubview:v27];
    v28 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView];
    if (v28)
    {
      [v28 setHidden:1];
    }

    sub_100660130();
  }

  return [v1 setNeedsLayout];
}

id sub_100661E4C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupTapGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void (*sub_100662064(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1006620B8;
}

void sub_1006620B8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1006643EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_1006643EC();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1006621D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppPromotionCardLayout(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.receiver = v1;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1006626A4(v10);
  AppPromotionCardLayout.placeChildren(relativeTo:in:)(v1, v6, v12, v14, v16, v18);
  (*(v4 + 8))(v6, v3);
  v20 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_gradientBlurView];
  if (v20)
  {
    v21 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView];
    v22 = v20;
    [v21 frame];
    v23.n128_f64[0] = CGRectGetHeight(v51);
    if (v23.n128_f64[0] > 0.0)
    {
      [v21 frame];
      Height = CGRectGetHeight(v52);
      [v21 frame];
      v25 = CGRectGetHeight(v53);
      [*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel] frame];
      v26 = Height - (v25 - CGRectGetMinY(v54));
      v27 = (v26 + -50.0) / Height;
      v28 = (v26 + 30.0) / Height;
      v29 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v22[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY] = v27;
      v30 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView;
      v31 = [*&v22[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v33 = v32;

      v34 = *&v22[v29];
      v35 = [*&v22[v30] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v33, v34}];

      v36 = [*&v22[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v33, v34}];

      v37 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v22[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY] = v27;
      v38 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView;
      v39 = [*&v22[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v41 = v40;

      v42 = *&v22[v37];
      v43 = [*&v22[v38] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v41, v42}];

      sub_100250FB4(v28);
      v44 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v22[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY] = v28;
      v45 = [*&v22[v38] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v47 = v46;

      v48 = *&v22[v44];
      v49 = [*&v22[v38] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v47, v48}];
    }

    sub_10010287C(v10, v23);
  }

  else
  {
    sub_10010287C(v10, v19);
  }
}

uint64_t sub_1006626A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 traitCollection];
  v9 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v9)
  {
    if (qword_10096EBE8 != -1)
    {
      swift_once();
    }

    v10 = qword_1009D31C0;
  }

  else
  {
    if (qword_10096EBE0 != -1)
    {
      swift_once();
    }

    v10 = qword_1009D31A8;
  }

  v11 = sub_1000056A8(v4, v10);
  sub_1001027B4(v11, v7);
  v12 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_shadowView];
  v96 = type metadata accessor for ShadowView();
  v97 = &protocol witness table for UIView;
  v68 = v12;
  *&v95 = v12;
  v13 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_contentView];
  v93 = type metadata accessor for RoundedCornerView();
  v94 = &protocol witness table for UIView;
  v65 = v13;
  v91 = &protocol witness table for UIView;
  *&v92 = v13;
  v14 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_borderView];
  v90 = v93;
  v63 = v14;
  *&v89 = v14;
  v15 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView];
  v87 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v88 = &protocol witness table for UIView;
  v55 = v87;
  v60 = v15;
  *&v86 = v15;
  v16 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView];
  v84 = type metadata accessor for ArtworkView();
  v85 = &protocol witness table for UIView;
  v59 = v16;
  *&v83 = v16;
  v17 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView];
  v81 = type metadata accessor for AppPromotionIAPFallbackView(0);
  v82 = &protocol witness table for UIView;
  v58 = v17;
  *&v80 = v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v69 = Strong;
    v67 = type metadata accessor for VideoView(0);
    v66 = &protocol witness table for UIView;
  }

  else
  {
    v69 = 0;
    v66 = 0;
    v67 = 0;
  }

  v64 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_gradientBlurView];
  v70 = v7;
  if (v64)
  {
    v62 = type metadata accessor for MediaOverlayGradientBlurView();
    v61 = &protocol witness table for UIView;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v19 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel];
  v78 = type metadata accessor for DynamicTypeLabel();
  v79 = &protocol witness table for UILabel;
  v76 = &protocol witness table for UILabel;
  *&v77 = v19;
  v20 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel];
  v75 = v78;
  v53 = v20;
  v54 = v19;
  *&v74 = v20;
  v21 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView];
  v72 = type metadata accessor for AppPromotionSubtitleView(0);
  v73 = &protocol witness table for CustomLayoutView;
  *&v71 = v21;
  v22 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView];
  if (v22)
  {
    v56 = type metadata accessor for SeparatorView(0);
    v57 = &protocol witness table for UIView;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v23 = type metadata accessor for AppPromotionCardLayout(0);
  v24 = (a1 + v23[17]);
  v25 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView];
  v24[3] = v55;
  v24[4] = &protocol witness table for UIView;
  *v24 = v25;
  v26 = (a1 + v23[18]);
  v27 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView];
  v26[3] = type metadata accessor for SubscriptionLockupView();
  v26[4] = &protocol witness table for UIView;
  *v26 = v27;
  v28 = *&v21[qword_10098CA38];
  v29 = v22;
  v30 = v25;
  v31 = v27;
  v32 = v68;
  v33 = v65;
  v34 = v63;
  v35 = v60;
  v36 = v59;
  v37 = v58;
  v38 = v64;
  v39 = v64;
  v40 = v54;
  v41 = v53;
  v42 = v21;
  LOBYTE(v28) = [v28 hasContent];
  sub_100102818(v70, a1);
  sub_100005A38(&v95, a1 + v23[5]);
  sub_100005A38(&v92, a1 + v23[6]);
  sub_100005A38(&v89, a1 + v23[7]);
  sub_100005A38(&v86, a1 + v23[8]);
  sub_100005A38(&v83, a1 + v23[9]);
  v43 = (a1 + v23[11]);
  *v43 = v69;
  v43[1] = 0;
  v44 = v66;
  v45 = v67;
  v43[2] = 0;
  v43[3] = v45;
  v43[4] = v44;
  v46 = (a1 + v23[12]);
  *v46 = v38;
  v46[1] = 0;
  v47 = v61;
  v48 = v62;
  v46[2] = 0;
  v46[3] = v48;
  v46[4] = v47;
  sub_100005A38(&v77, a1 + v23[13]);
  sub_100005A38(&v74, a1 + v23[14]);
  sub_100005A38(&v71, a1 + v23[15]);
  v49 = (a1 + v23[16]);
  *v49 = v22;
  v49[1] = 0;
  v51 = v56;
  v50 = v57;
  v49[2] = 0;
  v49[3] = v51;
  v49[4] = v50;
  *(a1 + v23[19]) = v28;
  return sub_100005A38(&v80, a1 + v23[10]);
}

uint64_t (*sub_100662E44(uint64_t **a1))()
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
  v2[4] = sub_100662064(v2);
  return sub_1000B4CAC;
}

uint64_t sub_100662EB4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100664588(&qword_100990C48, v1, type metadata accessor for AppPromotionCardView, &unk_1007DBD68);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_100662F28(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100664588(&qword_100990C48, v5, type metadata accessor for AppPromotionCardView, &unk_1007DBD68);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_100662FB4(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v4 = v2;
  *a1 = v2;
  sub_100664588(&qword_100990C48, v3, type metadata accessor for AppPromotionCardView, &unk_1007DBD68);
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_100663070(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView);
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

double sub_1006631E4(void *a1, void *a2, double a3, double a4)
{
  v110 = type metadata accessor for FloatingPointRoundingRule();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for StackMeasurable.Axis();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for StackMeasurable();
  v117 = *(v118 - 1);
  __chkstk_darwin(v118);
  v116 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for VerticalSpaceMeasurable();
  v109 = *(v112 - 8);
  __chkstk_darwin(v112);
  v105 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v106 = &v97 - v11;
  v104 = type metadata accessor for OfferButtonMetrics();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v102 = &v97 - v14;
  __chkstk_darwin(v15);
  v100 = &v97 - v16;
  __chkstk_darwin(v17);
  v19 = &v97 - v18;
  v20 = type metadata accessor for SmallLockupLayout.Metrics();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v97 - v25;
  v27 = type metadata accessor for AppPromotionCardLayout(0);
  sub_10005FC74(a2 + v27[18], &v122);
  v111 = v123;
  sub_10002B894(&v122, &qword_100975610, &qword_1007B5690);
  v119 = a1;
  v28 = [a1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  v30 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v30)
  {
    v31 = v27[13];
    v32 = v27[14];
    v33 = v27[16];
    v97 = v27[15];
    v105 = v33;
    LODWORD(v101) = *(a2 + v27[19]);
    if (qword_10096EBD8 != -1)
    {
      swift_once();
    }

    v98 = (a2 + v31);
    v34 = (a2 + v32);
    v35 = sub_1000056A8(v20, qword_1009D3190);
    v102 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    AspectRatio.height(fromWidth:)();
    v37 = v36;
    v38 = [v119 traitCollection];
    (*(v21 + 16))(v26, v35, v20);
    v39 = SmallLockupLayout.Metrics.offerButtonSize.getter();
    v41 = v107;
    v99 = v34;
    if ((v42 & 1) == 0 && ((v39 | v40) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v43 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v43 = qword_100991028;
      }

      v53 = v104;
      v54 = sub_1000056A8(v104, v43);
      v55 = v103;
      v56 = v100;
      (*(v103 + 16))(v100, v54, v53);
      (*(v55 + 32))(v19, v56, v53);
      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallLockupLayout.Metrics.offerButtonSize.setter();
      (*(v55 + 8))(v19, v53);
    }

    static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
    v58 = v57;

    (*(v21 + 8))(v26, v20);
    *&v120 = _swiftEmptyArrayStorage;
    sub_10002849C(&qword_100996330, qword_1007BAD70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    v123 = &type metadata for CGFloat;
    v124 = &protocol witness table for CGFloat;
    *&v122 = v37;
    v60 = v112;
    *(inited + 56) = v112;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_1000056E0((inited + 32));
    VerticalSpaceMeasurable.init(_:multiplier:)();
    sub_10039435C(inited);
    v61 = v119;
    v62 = v110;
    if (v111)
    {
      v123 = &type metadata for CGFloat;
      v124 = &protocol witness table for CGFloat;
      *&v122 = ceil(v58 + 16.0 + 16.0);
      v63 = v106;
      VerticalSpaceMeasurable.init(_:multiplier:)();
      v64 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_100033260(0, v64[2] + 1, 1, v64);
      }

      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = sub_100033260((v65 > 1), v66 + 1, 1, v64);
      }

      v123 = v60;
      v124 = &protocol witness table for VerticalSpaceMeasurable;
      v67 = sub_1000056E0(&v122);
      v68 = v109;
      (*(v109 + 16))(v67, v63, v60);
      v64[2] = v66 + 1;
      sub_100005A38(&v122, &v64[5 * v66 + 4]);
      (*(v68 + 8))(v63, v60);
      *&v120 = v64;
    }

    (*(v114 + 104))(v113, enum case for StackMeasurable.Axis.vertical(_:), v115);
    v69 = v116;
    StackMeasurable.init(axis:skipEmptyChildren:children:)();
    StackMeasurable.measurements(fitting:in:)();
    v71 = v70;
    (*(v117 + 8))(v69, v118);
    sub_10002A400(a2, a2[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v118 = *(v108 + 8);
    v118(v41, v62);
    CGSize.subtracting(insets:)();
    sub_10002A400(v98, v98[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v73 = v72;
    v74 = v102;
    sub_10002A400((a2 + *(v102 + 6)), *(a2 + *(v102 + 6) + 24));
    AnyDimension.topMargin(from:in:)();
    *&v122 = v73;
    AnyDimension.bottomMargin(from:in:)();
    sub_10002A400(v99, v99[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v76 = v75;
    sub_10002A400((a2 + *(v74 + 7)), *(a2 + *(v74 + 7) + 24));
    AnyDimension.topMargin(from:in:)();
    *&v122 = v76;
    AnyDimension.bottomMargin(from:in:)();
    if (v101)
    {
      sub_10002A400((a2 + v97), *(a2 + v97 + 24));
      v77 = v74;
      v78 = [v61 traitCollection];
      dispatch thunk of Placeable.measure(toFit:with:)();

      sub_10002A400((a2 + *(v77 + 8)), *(a2 + *(v77 + 8) + 24));
      v79 = [v61 traitCollection];
      AnyDimension.value(with:)();

      sub_10002A400((a2 + *(v77 + 9)), *(a2 + *(v77 + 9) + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v118(v41, v110);
    }

    sub_10005FC74(&v105[a2], &v120);
    if (v121)
    {
      sub_100005A38(&v120, &v122);
      sub_10002A400(&v122, v123);
      if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
      {
        sub_10002A400(&v122, v123);
        dispatch thunk of Measurable.measurements(fitting:in:)();
      }

      sub_100007000(&v122);
    }

    else
    {
      sub_10002B894(&v120, &qword_100975610, &qword_1007B5690);
    }
  }

  else
  {
    if (qword_10096EBD0 != -1)
    {
      swift_once();
    }

    v44 = sub_1000056A8(v20, qword_1009D3178);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    AspectRatio.height(fromWidth:)();
    v46 = v45;
    v47 = [v119 traitCollection];
    (*(v21 + 16))(v23, v44, v20);
    v48 = SmallLockupLayout.Metrics.offerButtonSize.getter();
    v50 = v112;
    if ((v51 & 1) == 0 && ((v48 | v49) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v52 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v52 = qword_100991028;
      }

      v80 = v104;
      v81 = sub_1000056A8(v104, v52);
      v82 = v103;
      v83 = v101;
      (*(v103 + 16))(v101, v81, v80);
      v84 = v102;
      (*(v82 + 32))(v102, v83, v80);
      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallLockupLayout.Metrics.offerButtonSize.setter();
      (*(v82 + 8))(v84, v80);
    }

    static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
    v86 = v85;

    (*(v21 + 8))(v23, v20);
    *&v120 = _swiftEmptyArrayStorage;
    sub_10002849C(&qword_100996330, qword_1007BAD70);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_1007B10D0;
    v123 = &type metadata for CGFloat;
    v124 = &protocol witness table for CGFloat;
    *&v122 = v46;
    *(v87 + 56) = v50;
    *(v87 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_1000056E0((v87 + 32));
    VerticalSpaceMeasurable.init(_:multiplier:)();
    sub_10039435C(v87);
    if (v111)
    {
      v123 = &type metadata for CGFloat;
      v124 = &protocol witness table for CGFloat;
      *&v122 = ceil(v86 + 4.0 + 4.0);
      v88 = v105;
      VerticalSpaceMeasurable.init(_:multiplier:)();
      v89 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_100033260(0, v89[2] + 1, 1, v89);
      }

      v91 = v89[2];
      v90 = v89[3];
      if (v91 >= v90 >> 1)
      {
        v89 = sub_100033260((v90 > 1), v91 + 1, 1, v89);
      }

      v123 = v50;
      v124 = &protocol witness table for VerticalSpaceMeasurable;
      v92 = sub_1000056E0(&v122);
      v93 = v109;
      (*(v109 + 16))(v92, v88, v50);
      v89[2] = v91 + 1;
      sub_100005A38(&v122, &v89[5 * v91 + 4]);
      (*(v93 + 8))(v88, v50);
      *&v120 = v89;
    }

    (*(v114 + 104))(v113, enum case for StackMeasurable.Axis.vertical(_:), v115);
    v94 = v116;
    StackMeasurable.init(axis:skipEmptyChildren:children:)();
    StackMeasurable.measurements(fitting:in:)();
    v71 = v95;
    (*(v117 + 8))(v94, v118);
  }

  return v71;
}

id sub_1006643AC(void *a1)
{
  sub_100660130();

  return [a1 setNeedsLayout];
}

void sub_1006643EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100664588(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v2 = [v8 superview];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView);
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        return;
      }

      v8 = v7;
      [v7 removeFromSuperview];
    }
  }
}

uint64_t sub_100664588(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1006645D0()
{
  ObjectType = swift_getObjectType();
  v105 = type metadata accessor for CornerStyle();
  *&v110 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v98 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v2 - 8);
  v107 = &v98 - v3;
  v106 = type metadata accessor for AutomationSemantics();
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v100 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for DirectionalTextAlignment();
  v5 = *(v108 - 8);
  __chkstk_darwin(v108);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v98 - v9;
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_gradientBlurView] = 0;
  v11 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView;
  v12 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView(0));
  *&v0[v11] = sub_100586590(0);
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView] = 0;
  v13 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView;
  *&v0[v13] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView;
  *&v0[v14] = [objc_allocWithZone(type metadata accessor for SubscriptionLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupTapGestureRecognizer] = 0;
  v15 = &v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction];
  *v15 = 0;
  v15[1] = 0;
  v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_includeBorderInDarkMode] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_shadowView] = [objc_allocWithZone(type metadata accessor for ShadowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_contentView] = v16;
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] = v17;
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = type metadata accessor for FontUseCase();
  v19 = *(v18 - 8);
  v98 = *(v19 + 56);
  v98(v10, 1, 1, v18);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v21 = *(v5 + 104);
  v102 = v5 + 104;
  v21(v7, enum case for DirectionalTextAlignment.none(_:), v108);
  v22 = type metadata accessor for DynamicTypeLabel();
  v23 = objc_allocWithZone(v22);
  v101 = v7;
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E3A0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v18, qword_1009D1A60);
  (*(v19 + 16))(v10, v24, v18);
  v98(v10, 0, 1, v18);
  v21(v101, v20, v108);
  v25 = objc_allocWithZone(v22);
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v26 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_borderView] = v26;
  if (qword_10096EA28 != -1)
  {
    swift_once();
  }

  v116[2] = xmmword_1009D2BC0;
  v116[3] = unk_1009D2BD0;
  v117 = qword_1009D2BE0;
  v116[0] = xmmword_1009D2BA0;
  v116[1] = *algn_1009D2BB0;
  v27 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView(0));
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView] = sub_1005BF26C(v116, 0.0, 0.0, 0.0, 0.0);
  v115.receiver = v0;
  v115.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v115, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_contentView;
  v30 = *&v28[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_contentView];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v31 = v30;
  v32 = v100;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v111, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v113, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v33 = *(v103 + 8);
  v34 = v106;
  v33(v32, v106);
  v108 = v29;
  v35 = *&v28[v29];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v36 = v35;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v111, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v113, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v33(v32, v34);
  v103 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView;
  v37 = *&v28[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v38 = v37;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v111, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v113, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v33(v32, v34);
  v101 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel;
  v39 = *&v28[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v40 = v39;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v111, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v113, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v33(v32, v34);
  v102 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel;
  v41 = *&v28[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v42 = v41;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v111, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v113, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v33(v32, v34);
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v28 setClipsToBounds:0];
  v43 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_shadowView;
  v44 = qword_10096DA88;
  v45 = *&v28[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_shadowView];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Shadow();
  v47 = sub_1000056A8(v46, qword_1009CFDF8);
  v48 = *(v46 - 8);
  v49 = v107;
  (*(v48 + 16))(v107, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  dispatch thunk of ShadowView.shadow.setter();

  v50 = *&v28[v43];
  dispatch thunk of ShadowView.shouldAnimateBoundsChange.setter();

  v51 = *&v28[v43];
  v52 = v110;
  v53 = *(v110 + 104);
  v54 = v104;
  LODWORD(v106) = enum case for CornerStyle.continuous(_:);
  v55 = v105;
  v107 = v53;
  (v53)(v104);
  v56 = v51;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  v58 = *(v52 + 8);
  v57 = v52 + 8;
  v59 = v58;
  (v58)(v54, v55);
  v60 = *&v28[v43];
  v61 = [v28 traitCollection];
  v62 = [v61 userInterfaceStyle];

  [v60 setHidden:v62 == 2];
  v63 = *&v28[v43];
  v64 = v28;
  [v64 addSubview:v63];
  v65 = v108;
  v66 = qword_10096EBF0;
  v67 = *&v28[v108];
  if (v66 != -1)
  {
    swift_once();
  }

  ObjCClassFromMetadata = qword_1009D31D8;
  [v67 setBackgroundColor:?];

  v68 = *&v28[v65];
  (v107)(v54, v106, v55);
  v69 = v68;
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

  v100 = v59;
  (v59)(v54, v55);
  [v64 addSubview:*&v28[v65]];
  v70 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView;
  [*&v28[v65] addSubview:*&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView]];
  [*&v64[v70] addSubview:*&v28[v103]];
  [*&v64[v70] addSubview:*&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView]];
  v71 = *&v28[v101];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v72 = v71;
  v73 = static UIColor.primaryText.getter();
  *&v110 = v57;
  v74 = v73;
  [v72 setTextColor:v73];

  v75 = *(*&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView] + qword_10098CA38);
  v76 = objc_opt_self();
  v77 = v75;
  v78 = [v76 secondaryLabelColor];
  [v77 setTextColor:v78];

  v79 = *&v28[v102];
  v80 = static UIColor.secondaryText.getter();
  [v79 setTextColor:v80];

  v81 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_borderView;
  v82 = *&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_borderView];
  v83 = ObjCClassFromMetadata;
  dispatch thunk of RoundedCornerView.borderColor.setter();

  v84 = *&v64[v81];
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  [*&v64[v81] setUserInteractionEnabled:0];
  [*&v64[v81] setHidden:1];
  v85 = *&v64[v81];
  (v107)(v54, v106, v55);
  v86 = v85;
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

  (v100)(v54, v55);
  [v64 addSubview:*&v64[v81]];
  sub_1006618D8();
  sub_100660130();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v87 = swift_allocObject();
  v110 = xmmword_1007B10D0;
  *(v87 + 16) = xmmword_1007B10D0;
  *(v87 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v87 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v88 = swift_allocObject();
  *(v88 + 16) = v110;
  *(v88 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v88 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v89 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView;
  [*&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView] setBackgroundColor:v83];
  [*&v28[v108] addSubview:*&v64[v89]];
  v90 = [objc_allocWithZone(UITapGestureRecognizer) init];
  v91 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupTapGestureRecognizer;
  v92 = *&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupTapGestureRecognizer];
  *&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupTapGestureRecognizer] = v90;

  result = *&v64[v91];
  if (result && ([result setDelegate:v64], (result = *&v64[v91]) != 0) && (result = objc_msgSend(result, "addTarget:action:", v64, "handleTapWithGestureRecognizer:"), *&v64[v91]))
  {
    [*&v64[v89] addGestureRecognizer:?];
    v94 = [v64 traitCollection];

    v95 = [v94 preferredContentSizeCategory];
    v96 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v96)
    {
      v97 = *&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView];
      if (v97)
      {
        [v97 setHidden:0];
      }
    }

    [*&v64[v89] addSubview:*&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView]];
    return v64;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006656D8()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_gradientBlurView) = 0;
  v2 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView;
  v3 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView(0));
  *(v0 + v2) = sub_100586590(0);
  *(v0 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView) = 0;
  v4 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView;
  *(v1 + v4) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView;
  *(v1 + v5) = [objc_allocWithZone(type metadata accessor for SubscriptionLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupTapGestureRecognizer) = 0;
  v6 = (v1 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_includeBorderInDarkMode) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_10066581C(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction] != 0;
    }

    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v8 = v7;
    v9 = v2;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction] != 0;
  }

  else
  {

    return 0;
  }
}

id sub_10066595C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded] = 0;
  v9 = &v4[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics] = 0;
  v10 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_pageGrid;
  v11 = type metadata accessor for PageGrid();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory] = 7;
  *&v4[OBJC_IVAR____TtC8AppStore18RevealingVideoView_mirrorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for RevealingVideoView(0);
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  [v12 setClipsToBounds:1];
  return v12;
}

id sub_100665B04()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + qword_1009CE000) = v1[OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded];
    sub_1000FA508();
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    (*((swift_isaMask & *v4) + 0xA0))(v1[OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded]);
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_100665BDC(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_pageGrid;
  swift_beginAccess();
  sub_1001A5ED0(a1, v1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1000A833C(v1 + v6, v5);
    (*((swift_isaMask & *v8) + 0x100))(v5);
  }

  return sub_10046DF7C(a1);
}

void sub_100665D04(void *a1)
{
  v3 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong == a1)
    {
    }

    else
    {
      v16 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();
      v8 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize);
      v9 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize + 8);
      v10 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize + 16);
      v11 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics);
      v12 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_pageGrid;
      swift_beginAccess();
      sub_1000A833C(v1 + v12, v5);
      v13 = *((swift_isaMask & *v16) + 0x150);
      v14 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory);
      v15 = v16;

      v13(v7, v8, v9, v10, v11, v5, v14);

      sub_10046DF7C(v5);
    }
  }
}

double sub_100665EE8(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for RevealingVideoView(0);
  v13.receiver = v1;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, "willMoveToWindow:", a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_pageGrid;
    v10 = Strong;
    swift_beginAccess();
    sub_1000A833C(v10 + v9, v5);
    v11 = v10;
    sub_100666A9C(v10, v5);

    sub_10046DF7C(v5);
    swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_1006660CC()
{
  v1 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v47 - v6;
  v8 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for PageGrid();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!*&v0[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics] || (v16 = &v0[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize], (v0[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize + 16] & 1) != 0))
  {

    return;
  }

  v48 = v2;
  v49 = Strong;
  v18 = *v16;
  v17 = v16[1];
  v19 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_pageGrid;
  swift_beginAccess();
  sub_1000A833C(&v0[v19], v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_10046DF7C(v10);
    return;
  }

  (*(v12 + 32))(v14, v10, v11);
  v20 = v0[OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory];
  if (v20 == 7)
  {
    v21 = *(v12 + 8);

    v21(v14, v11);
LABEL_13:

    return;
  }

  [v0 bounds];
  v52.origin.x = 0.0;
  v52.origin.y = 0.0;
  v52.size.width = 0.0;
  v52.size.height = 0.0;
  if (CGRectEqualToRect(v51, v52))
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_13;
  }

  v47 = v0;
  v23.n128_f64[0] = sub_100699534(v20, v22);
  v24 = v48;
  v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v26 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v20 != 6)
  {
    v26 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v20 != 4)
  {
    v25 = v26;
  }

  (*(v48 + 104))(v4, *v25, v1, v23);
  (*(v24 + 32))(v7, v4, v1);
  v27 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();

  (*(v24 + 8))(v7, v1);
  v28 = v47;
  v29 = v47[OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded];
  v30 = v49;
  [v28 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = [v28 traitCollection];
  v40 = sub_1000F1BB8(v39, v32, v34, v36, v38, v18, v17, v27, v29);
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [v30 setFrame:{v40, v42, v44, v46}];

  (*(v12 + 8))(v14, v11);
}

void sub_1006665A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [v0 bounds];
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    MidX = CGRectGetMidX(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    [v0 convertPoint:v14 toCoordinateSpace:{MidX, CGRectGetMidY(v17)}];
    v9 = &v14[qword_1009D21B8];
    v10 = *&v14[qword_1009D21B8];
    v11 = *&v14[qword_1009D21B8 + 8];
    v12 = v14[qword_1009D21B8 + 16];
    *v9 = v7;
    v9[1] = v8;
    *(v9 + 16) = 0;
    if ((v12 & 1) != 0 || (v7 == v10 ? (v13 = v8 == v11) : (v13 = 0), !v13))
    {
      sub_1004E1028();
    }
  }
}

void sub_1006666C8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for VideoConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1006673E4(&qword_100979D58, type metadata accessor for TodayCardVideoView, &unk_1007D1B30);
    v10 = v9;
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      sub_100028004();
      v13 = v2;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    [v10 removeFromSuperview];
    [v2 addSubview:v10];
LABEL_13:
    v10[qword_1009CE000] = *(v2 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded);
    sub_1000FA508();
    v19 = qword_1009D2200;
    swift_beginAccess();
    (*(v5 + 16))(v7, &v10[v19], v4);
    v20 = v10;
    VideoConfiguration.canPlayFullScreen.setter();
    sub_1004E032C(v7);

    [v2 setNeedsLayout];
    return;
  }

  if (a1)
  {
    sub_1006673E4(&qword_100979D58, type metadata accessor for TodayCardVideoView, &unk_1007D1B30);
    v15 = [a1 superview];
    if (v15)
    {
      v16 = v15;
      sub_100028004();
      v17 = v1;
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {

        [a1 removeFromSuperview];
      }
    }
  }
}

void (*sub_1006669B0(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100666A04;
}

void sub_100666A04(id *a1, char a2)
{
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v4 = v5;
    sub_1006666C8(Strong);

    Strong = v4;
  }

  else
  {
    sub_1006666C8(Strong);
  }
}

void sub_100666A9C(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics];
    if (v9)
    {
      v10 = &a1[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize];
      if ((a1[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize + 16] & 1) == 0)
      {
        v11 = v3[OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory];
        if (v11 != 7)
        {
          v45 = a2;
          v46 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory;
          v47 = v11;
          v12 = *v10;
          v44 = *(v10 + 1);
          v50 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_videoView;
          Strong = swift_unknownObjectWeakLoadStrong();
          v14 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_videoView;
          v15 = swift_unknownObjectWeakLoadStrong();
          v51 = v14;
          v48 = Strong;
          swift_unknownObjectWeakAssign();
          v49 = a1;

          sub_1006666C8(v15);

          v16 = &v3[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize];
          v17 = v12;
          *v16 = v12;
          v18 = v44;
          *(v16 + 1) = v44;
          v16[16] = 0;
          v19 = swift_unknownObjectWeakLoadStrong();
          if (v19)
          {
            v20 = v19;
            (*((swift_isaMask & *v19) + 0xE8))(v17, v18, 0);
          }

          *&v3[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics] = v9;

          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            v23 = *((swift_isaMask & *v21) + 0xD0);
            swift_bridgeObjectRetain_n();
            v23(v9);
          }

          else
          {
          }

          v24 = v45;
          sub_1000A833C(v45, v8);
          sub_100665BDC(v8);
          v25 = v47;
          v3[v46] = v47;
          v26 = swift_unknownObjectWeakLoadStrong();
          if (v26)
          {
            v27 = v26;
            (*((swift_isaMask & *v26) + 0x118))(v25);
          }

          v28 = swift_unknownObjectWeakLoadStrong();
          if (v28)
          {
            v29 = v28;
            v30 = swift_unknownObjectWeakLoadStrong();
            (*((swift_isaMask & *v29) + 0x150))(v30, *v16, *(v16 + 1), v16[16], v9, v24, v25);
          }

          [v3 setNeedsLayout];

          v31 = swift_unknownObjectWeakLoadStrong();
          if (v31)
          {
            v32 = v31;
            v33 = swift_unknownObjectWeakLoadStrong();
            if (v33)
            {
              v34 = v33;
              v35 = [v33 isHidden];
            }

            else
            {
              v35 = 0;
            }

            [v32 setHidden:v35];
          }

          v36 = swift_unknownObjectWeakLoadStrong();
          if (v36)
          {
            v37 = v36;
            v38 = swift_unknownObjectWeakLoadStrong();
            v39 = v38;
            if (v38)
            {
              v37[qword_1009CDFF8] = *(v38 + qword_1009CDFF8);
              sub_1000FA22C();
              v40 = qword_1009CE000;
              v41 = v39[qword_1009CE000];
            }

            else
            {
              v37[qword_1009CDFF8] = 7;
              sub_1000FA22C();
              v41 = 0;
              v40 = qword_1009CE000;
            }

            v37[v40] = v41;
            sub_1000FA508();
          }

          v42 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakAssign();
          v43 = v49;
          sub_1006666C8(v42);
        }
      }
    }
  }
}

id sub_100666EE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingVideoView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingVideoView(uint64_t a1)
{
  result = qword_100990C98;
  if (!qword_100990C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100666FF0(uint64_t a1)
{
  sub_1000A77BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006670D0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1006666C8(Strong);
}

uint64_t (*sub_100667140(uint64_t **a1))()
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
  v2[4] = sub_1006669B0(v2);
  return sub_1000C2700;
}

uint64_t sub_1006671B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100667204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100667270(uint64_t *a1, uint64_t a2))()
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
  return sub_1000B4CAC;
}

uint64_t sub_1006673E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10066742C()
{
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded) = 0;
  v1 = v0 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics) = 0;
  v2 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_pageGrid;
  v3 = type metadata accessor for PageGrid();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_mirrorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_100667554(char *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isExpanded] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_videoMirrorView;
  if (qword_10096D300 != -1)
  {
    swift_once();
  }

  v14[4] = *&byte_1009CE668[64];
  v14[5] = *&byte_1009CE668[80];
  v14[6] = *&byte_1009CE668[96];
  v14[7] = *&byte_1009CE668[112];
  v14[0] = *byte_1009CE668;
  v14[1] = *&byte_1009CE668[16];
  v14[2] = *&byte_1009CE668[32];
  v14[3] = *&byte_1009CE668[48];
  v5 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *&v1[v4] = sub_10075DCD8(0, v14, 1.0, 0.0);
  *&v1[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkLayoutWithMetrics] = 0;
  v6 = &v1[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkSize];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_pageGrid;
  v8 = type metadata accessor for PageGrid();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v2[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_sizeCategory] = 7;
  v2[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring] = 0;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for RevealingVideoMirrorView(0);
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v9 setClipsToBounds:1];
  v10 = &a1[OBJC_IVAR____TtC8AppStore18RevealingVideoView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v10 + 1) = &off_1008CD608;
  swift_unknownObjectWeakAssign();
  sub_100665D04(Strong);

  [v9 addSubview:*&v9[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_videoMirrorView]];
  return v9;
}

double sub_1006677C4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkLayoutWithMetrics) = a1;

  return result;
}

uint64_t sub_1006677DC(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkSize;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1006677F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1006678C4(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkLayoutWithMetrics] = a5;

  sub_1000A833C(a6, v18);
  v19 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v18, &v8[v19]);
  swift_endAccess();
  v8[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_sizeCategory] = a7;
  if ((v8[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring] & 1) != 0 || !a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10075E2A8(a1);
    swift_unknownObjectWeakAssign();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      if (Strong)
      {
        type metadata accessor for VideoView(0);
        v23 = Strong;
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    else if (!Strong)
    {
      goto LABEL_12;
    }

    sub_10075E8D4();
    v23 = Strong;
LABEL_11:
  }

LABEL_12:
  v25 = &v8[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkSize];
  *v25 = a2;
  *(v25 + 1) = a3;
  v25[16] = a4 & 1;
  return [v8 setNeedsLayout];
}

void sub_100667AC8()
{
  v1 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for PageGrid();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkLayoutWithMetrics])
  {
    v15 = &v0[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkSize];
    if ((v0[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkSize + 16] & 1) == 0)
    {
      v45 = v2;
      v17 = *v15;
      v16 = v15[1];
      v18 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_pageGrid;
      swift_beginAccess();
      sub_1000A833C(&v0[v18], v10);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_10046DF7C(v10);
        return;
      }

      (*(v12 + 32))(v14, v10, v11);
      v19 = v0[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_sizeCategory];
      if (v19 != 7)
      {

        [v0 bounds];
        v47.origin.x = 0.0;
        v47.origin.y = 0.0;
        v47.size.width = 0.0;
        v47.size.height = 0.0;
        if (CGRectEqualToRect(v46, v47))
        {
          (*(v12 + 8))(v14, v11);

          return;
        }

        v21 = v0;
        v22.n128_f64[0] = sub_100699534(v19, v20);
        v23 = v45;
        v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v19 != 6)
        {
          v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v19 != 4)
        {
          v24 = v25;
        }

        (*(v45 + 104))(v4, *v24, v1, v22);
        (*(v23 + 32))(v7, v4, v1);
        v26 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();

        (*(v23 + 8))(v7, v1);
        v27 = v21[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isExpanded];
        v28 = *&v21[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_videoMirrorView];
        [v21 bounds];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v37 = [v21 traitCollection];
        v38 = sub_1000F1BB8(v37, v30, v32, v34, v36, v17, v16, v26, v27);
        v40 = v39;
        v42 = v41;
        v44 = v43;

        [v28 setFrame:{v38, v40, v42, v44}];
      }

      (*(v12 + 8))(v14, v11);
    }
  }
}

id sub_100667F40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingVideoMirrorView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingVideoMirrorView(uint64_t a1)
{
  result = qword_100990D10;
  if (!qword_100990D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100668038(uint64_t a1)
{
  sub_1000A77BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10066810C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isExpanded) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_videoMirrorView;
  if (qword_10096D300 != -1)
  {
    swift_once();
  }

  v7[4] = *&byte_1009CE668[64];
  v7[5] = *&byte_1009CE668[80];
  v7[6] = *&byte_1009CE668[96];
  v7[7] = *&byte_1009CE668[112];
  v7[0] = *byte_1009CE668;
  v7[1] = *&byte_1009CE668[16];
  v7[2] = *&byte_1009CE668[32];
  v7[3] = *&byte_1009CE668[48];
  v3 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *(v0 + v2) = sub_10075DCD8(0, v7, 1.0, 0.0);
  *(v0 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkLayoutWithMetrics) = 0;
  v4 = v0 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkSize;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_pageGrid;
  v6 = type metadata accessor for PageGrid();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006682A0()
{
  v1 = type metadata accessor for UUID();
  v59 = v1;
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B0B70;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v62 = type metadata accessor for NavigationActionDebugSetting();
  v7 = swift_allocObject();
  v7[7] = 0xD000000000000012;
  v7[8] = 0x800000010081EDF0;
  v7[10] = 0;
  v7[11] = 0;
  v7[9] = 0;
  v7[12] = sub_100669CD0;
  v7[13] = v6;
  v8 = v0;

  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v12 = *(v2 + 8);
  v12(v4, v1);
  v65 = v9;
  v66 = v11;
  AnyHashable.init<A>(_:)();

  *(v5 + 32) = v7;
  v67 = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for ActionDebugSetting();
  v14 = swift_allocObject();
  strcpy((v14 + 56), "Reset Welcome");
  *(v14 + 70) = -4864;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = sub_100669CD8;
  *(v14 + 112) = v13;
  v15 = v8;

  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  v19 = v59;
  (v12)(v4);
  v65 = v16;
  v66 = v18;
  AnyHashable.init<A>(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  v21 = swift_allocObject();
  *(v21 + 56) = 0xD000000000000018;
  *(v21 + 64) = 0x800000010081EE10;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0u;
  *(v21 + 104) = sub_100669CE0;
  *(v21 + 112) = v20;
  v22 = v15;

  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  v12(v4, v19);
  v65 = v23;
  v66 = v25;
  AnyHashable.init<A>(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v26 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v64 = v12;
  if (v26 >= v27 >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  v29 = swift_allocObject();
  *(v29 + 56) = 0xD000000000000017;
  *(v29 + 64) = 0x800000010081EE30;
  *(v29 + 72) = 0u;
  *(v29 + 88) = 0u;
  *(v29 + 104) = sub_100669CE8;
  *(v29 + 112) = v28;
  v30 = v22;

  UUID.init()();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  v64(v4, v19);
  v65 = v31;
  v66 = v33;
  AnyHashable.init<A>(_:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v61 = v67;
  v34 = swift_allocObject();
  v60 = xmmword_1007B15F0;
  *(v34 + 16) = xmmword_1007B15F0;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v35 = swift_allocObject();
  *(v35 + 56) = 0xD00000000000001ELL;
  *(v35 + 64) = 0x800000010081EE50;
  *(v35 + 72) = 0;
  *(v35 + 80) = 0xD00000000000001FLL;
  *(v35 + 88) = 0x800000010081EE70;
  *(v35 + 96) = 0;
  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  v39 = v19;
  v40 = v19;
  v41 = v64;
  v64(v4, v39);
  v65 = v36;
  v66 = v38;
  AnyHashable.init<A>(_:)();
  *(v34 + 32) = v35;
  v42 = swift_allocObject();
  *(v42 + 16) = v30;
  v43 = swift_allocObject();
  strcpy((v43 + 56), "Edit Triggers");
  *(v43 + 70) = -4864;
  *(v43 + 80) = 0;
  *(v43 + 88) = 0;
  *(v43 + 72) = 0;
  *(v43 + 96) = sub_100669CF0;
  *(v43 + 104) = v42;
  v44 = v30;

  UUID.init()();
  v45 = UUID.uuidString.getter();
  v47 = v46;
  v41(v4, v40);
  v65 = v45;
  v66 = v47;
  AnyHashable.init<A>(_:)();

  *(v34 + 40) = v43;
  v48 = swift_allocObject();
  *(v48 + 16) = v60;
  type metadata accessor for DebugSection();
  v49 = swift_allocObject();
  UUID.init()();
  v50 = UUID.uuidString.getter();
  v52 = v51;
  v41(v4, v40);
  v49[2] = v50;
  v49[3] = v52;
  v49[4] = 0x737465656853;
  v49[5] = 0xE600000000000000;
  v49[6] = v61;
  *(v48 + 32) = v49;
  v53 = swift_allocObject();
  UUID.init()();
  v54 = UUID.uuidString.getter();
  v56 = v55;
  v41(v4, v40);
  v53[2] = v54;
  v53[3] = v56;
  v53[4] = 0x7364726143;
  v53[5] = 0xE500000000000000;
  v53[6] = v34;
  *(v48 + 40) = v53;
  return v48;
}

uint64_t sub_100668A84(uint64_t a1)
{
  v2 = type metadata accessor for FlowOrigin();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowAnimationBehavior();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for FlowPresentationContext();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = type metadata accessor for FlowPage();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v39 = a1;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1000F40E0(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.onboarding(_:), v14);
  v25 = type metadata accessor for URL();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = type metadata accessor for ReferrerData();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v41 = &type metadata for OnboardingConfiguration;
  v40[0] = 0;
  static ActionMetrics.notInstrumented.getter();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v28 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_1005F9C8C(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

void sub_100669060(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v12 = [v2 initWithSuiteName:v3];

  v4 = v12;
  if (!v12)
  {
    v4 = [objc_opt_self() standardUserDefaults];
  }

  v13 = v4;
  static WelcomeOnboardingStep.reset(userDefaults:)();
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() actionWithTitle:v8 style:1 handler:0];

  [v7 addAction:v9];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong presentViewController:v7 animated:1 completion:0];
  }
}

double sub_100669244(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  type metadata accessor for AdPrivacyOnboardingStep();
  inited = swift_initStackObject();
  *(inited + 24) = 0;

  AnyHashable.init<A>(_:)();
  v3 = sub_10003C5F4();
  [v3 setAcknowledgedVersionForPersonalizedAds:0];

  swift_setDeallocating();
  sub_10003D614(inited + 32);
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() actionWithTitle:v7 style:1 handler:0];

  [v6 addAction:v8];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong presentViewController:v6 animated:1 completion:0];
  }

  return result;
}

void sub_100669464(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002849C(&qword_1009839C0, &unk_1007CB150);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096DB58 != -1)
  {
    swift_once();
  }

  v6 = sub_1000056A8(v2, qword_1009839A8);
  (*(v3 + 16))(v5, v6, v2);
  v14 = 0;
  v15 = 0;
  Preferences.subscript.setter();

  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() actionWithTitle:v10 style:1 handler:0];

  [v9 addAction:v11];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_1006696D8(uint64_t a1)
{
  v2 = type metadata accessor for FlowOrigin();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowAnimationBehavior();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for FlowPresentationContext();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = type metadata accessor for FlowPage();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v39 = a1;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1000F40E0(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.debugTodayCardTriggers(_:), v14);
  v25 = type metadata accessor for URL();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = type metadata accessor for ReferrerData();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v40 = 0u;
  v41 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v28 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_1005F9C8C(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

unint64_t sub_100669D0C()
{
  result = qword_100990D48;
  if (!qword_100990D48)
  {
    type metadata accessor for AppLaunchTrampolineAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990D48);
  }

  return result;
}

uint64_t sub_100669D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v8 - 8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  __chkstk_darwin(v17);
  v40 = v36 - v18;
  AppLaunchTrampolineAction.payloadUrl.getter();
  AppLaunchTrampolineAction.payloadUrl.getter();
  v38 = *(v5 + 48);
  v19 = v38(v16, 1, v4);
  v39 = a2;
  v37 = v5;
  if (v19 == 1)
  {
    sub_10002B894(v16, &qword_100982460, &unk_1007B5C90);
    v20 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v16, v4);
    type metadata accessor for AdAttributionManager();
    BaseObjectGraph.optional<A>(_:)();
    v21 = v5;
    v20 = aBlock;
    if (aBlock)
    {
      AppLaunchTrampolineAction.bundleId.getter();
      dispatch thunk of AdAttributionManager.processReengagement(forBundleID:payloadURL:)();

      v22 = v37;
      (*(v37 + 8))(v7, v4);
      v23 = v40;
      sub_10002B894(v40, &qword_100982460, &unk_1007B5C90);
      v20 = 1;
      (*(v22 + 56))(v13, 0, 1, v4);
      sub_100118248(v13, v23);
    }

    else
    {
      (*(v21 + 8))(v7, v4);
    }
  }

  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v24 = Promise.__allocating_init()();
  v25 = [objc_allocWithZone(ASCAppLaunchTrampoline) init];
  AppLaunchTrampolineAction.bundleId.getter();
  v26 = String._bridgeToObjectiveC()();

  sub_1000417F0(v40, v10);
  if (v38(v10, 1, v4) == 1)
  {
    v28 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v27);
    v28 = v29;
    (*(v37 + 8))(v10, v4);
  }

  v30 = [v25 openApplicationWithBundleIdentifier:v26 payloadURL:v28 universalLinkRequired:{v20, v36[0], v36[1], v36[2], v36[3]}];

  v45 = sub_10066A810;
  v46 = v24;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_10066A568;
  v44 = &unk_1008CD700;
  v31 = _Block_copy(&aBlock);

  [v30 addSuccessBlock:v31];
  _Block_release(v31);
  v32 = swift_allocObject();
  v33 = v39;
  v32[2] = a1;
  v32[3] = v33;
  v32[4] = v24;
  v45 = sub_10066A818;
  v46 = v32;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100669D64;
  v44 = &unk_1008CD750;
  v34 = _Block_copy(&aBlock);

  [v30 addErrorBlock:v34];
  _Block_release(v34);

  sub_10002B894(v40, &qword_100982460, &unk_1007B5C90);
  return v24;
}

uint64_t sub_10066A47C()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  Promise.resolve(_:)();
  return (*(v1 + 8))(v4, v0);
}

void sub_10066A570(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10066A5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSLogger();
  sub_1000056A8(v4, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v9[3] = v8;
  v5 = sub_1000056E0(v9);
  (*(*(v8 - 8) + 16))(v5);
  static LogMessage.sensitive(_:)();
  sub_10002B894(v9, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();

  v6 = AppLaunchTrampolineAction.fallbackAction.getter();
  if (v6)
  {
    sub_1005D0214(v6, 1, a3);
    Promise.pipe(to:)();
  }

  else
  {
    Promise.reject(_:)();
  }
}

id sub_10066A82C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_100990D50 = result;
  return result;
}

char *sub_10066A880(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView(0);
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_state;
  v18 = sub_10002849C(&qword_100979DF8, &qword_1007DC100);
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *&v5[v19] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v20 = &v5[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
  *v20 = 0;
  v20[1] = 0;
  swift_weakInit();
  v21 = &v5[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  *v21 = 0;
  v21[1] = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_currentTitleEffect;
  v23 = type metadata accessor for TitleEffect();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_10002849C(&qword_100990DB8, &unk_1007DC2A8);
  swift_allocObject();
  *&v5[v24] = SyncEvent.init()();
  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  (*(v11 + 8))(v13, v10);
  v41[0] = v25;
  v41[1] = v27;
  AnyHashable.init<A>(_:)();
  v5[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_allowsAutoPlay] = 1;
  v5[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_isPlaying] = 0;
  swift_unknownObjectWeakInit();
  v28 = type metadata accessor for HeroCarouselCollectionViewCell(0);
  v42.receiver = v5;
  v42.super_class = v28;
  v29 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  v32 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView;
  [v31 addSubview:*&v29[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView]];

  v33 = *&v29[v32];
  v41[3] = v28;
  v41[4] = &off_1008CD7B8;
  v41[0] = v29;
  v34 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  v35 = v29;
  v36 = v33;
  sub_1000315F8(v41, v33 + v34, &unk_100990DC0, &qword_1007CE520);
  swift_endAccess();

  v37 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  [*&v35[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_tapGestureRecognizer] addTarget:v35 action:"handleTap:"];
  v38 = *&v35[v37];
  [v38 setDelegate:v35];

  [v35 addGestureRecognizer:*&v35[v37]];
  return v35;
}

uint64_t sub_10066AD50(uint64_t a1)
{
  v3 = type metadata accessor for TitleEffectUpdate();
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100986660, qword_1007CE528);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for TitleEffect();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  v16 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  sub_10066CDB4(a1, v1 + v16);
  swift_endAccess();
  sub_100031660(v1 + v16, v8, &unk_100986660, qword_1007CE528);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002B894(a1, &unk_100986660, qword_1007CE528);
    return sub_10002B894(v8, &unk_100986660, qword_1007CE528);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    if (qword_10096EBF8 != -1)
    {
      swift_once();
    }

    v18 = qword_100990D50;
    TitleEffectUpdate.init(effect:isAnimated:animationDuration:timingFunction:)();
    SyncEvent.post(_:)();
    sub_10002B894(a1, &unk_100986660, qword_1007CE528);
    (*(v20 + 8))(v5, v21);
    return (*(v10 + 8))(v15, v9);
  }
}

void sub_10066B08C()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for HeroCarouselCollectionViewCell(0);
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView];
  v3 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = &v1[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 1);

    v13(v15);
    sub_10001F63C(v13, v14);
  }
}

void sub_10066B1F0()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100979DF0, &qword_1007DC2A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-1] - v3;
  v5 = type metadata accessor for HeroCarouselCollectionViewCell(0);
  v17.receiver = v0;
  v17.super_class = v5;
  objc_msgSendSuper2(&v17, "prepareForReuse");
  v6 = sub_10002849C(&qword_100979DF8, &qword_1007DC100);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_1000315F8(v4, &v0[v7], &qword_100979DF0, &qword_1007DC2A0);
  swift_endAccess();
  v8 = &v0[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
  v9 = *&v0[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
  v10 = *&v0[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler + 8];
  *v8 = 0;
  *(v8 + 1) = 0;
  sub_10001F63C(v9, v10);
  v11 = *(*&v0[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView] + OBJC_IVAR____TtC8AppStore16HeroCarouselView_scrollView);
  sub_1005C4C74(_swiftEmptyArrayStorage, 0);
  v12 = *(v11 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker);
  *(v11 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker) = 0;
  sub_1005C485C(v12);

  *(v11 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection) = 1;
  sub_1005C4510();
  v13 = type metadata accessor for Feature.iOS();
  v16[3] = v13;
  v16[4] = sub_1005C7530();
  v14 = sub_1000056E0(v16);
  (*(*(v13 - 8) + 104))(v14, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v13);
  LOBYTE(v13) = isFeatureEnabled(_:)();
  sub_100007000(v16);
  if ((v13 & 1) == 0)
  {
    sub_100468D78(0);
  }

  v1[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_isPlaying] = 0;
}

void sub_10066B460(void *a1)
{
  v30.receiver = v1;
  v30.super_class = type metadata accessor for HeroCarouselCollectionViewCell(0);
  objc_msgSendSuper2(&v30, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView];
    v26 = v3;
    v5 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_parallaxY;
    *(v4 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_parallaxY) = *(v3 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY);
    v6 = *(v4 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
    if (v6 >> 62)
    {
      goto LABEL_20;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v27 = a1;

    if (v7)
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = &OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView;
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
      v12 = &OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer;
      v28 = v6 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v9)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v8 >= *(v11 + 16))
          {
            __break(1u);
LABEL_20:
            v7 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }

          v13 = *(v6 + 8 * v8 + 32);
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_14;
          }
        }

        v14 = *(v4 + v5);
        v15 = *(*(*&v13[*v10] + *v12) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
        v16 = *&v15[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
        *&v15[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = v14;
        if (v14 != v16)
        {
          v17 = v9;
          v18 = v6;
          v19 = v7;
          v20 = v5;
          v21 = v12;
          v22 = v10;
          v23 = v13;
          [v15 setNeedsLayout];
          v13 = v23;
          v10 = v22;
          v12 = v21;
          v5 = v20;
          v7 = v19;
          v6 = v18;
          v9 = v17;
          v11 = v28;
        }

        ++v8;
      }

      while (a1 != v7);
    }

    v24 = type metadata accessor for Feature.iOS();
    v29[3] = v24;
    v29[4] = sub_1005C7530();
    v25 = sub_1000056E0(v29);
    (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v24);
    LOBYTE(v24) = isFeatureEnabled(_:)();
    sub_100007000(v29);
    if ((v24 & 1) == 0)
    {
      *(v4 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isRubberbanding) = *(v26 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_isRubberbanding);
      sub_100468ECC();
    }
  }
}

void sub_10066B768()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  }

  v4 = type metadata accessor for Feature.iOS();
  v6[3] = v4;
  v6[4] = sub_1005C7530();
  v5 = sub_1000056E0(v6);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  LOBYTE(v4) = isFeatureEnabled(_:)();
  sub_100007000(v6);
  if ((v4 & 1) == 0)
  {
    sub_100468D78(1);
  }

  *(v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_isPlaying) = 1;
}

void sub_10066B9F0(uint64_t a1, uint64_t a2)
{
  v93 = type metadata accessor for ImpressionMetrics.ID();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v3 - 8);
  v94 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v82 - v6;
  __chkstk_darwin(v8);
  v10 = v82 - v9;
  __chkstk_darwin(v11);
  v13 = v82 - v12;
  v14 = type metadata accessor for ImpressionMetrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v90 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v82 - v18;
  __chkstk_darwin(v20);
  v22 = v82 - v21;
  __chkstk_darwin(v23);
  v25 = v82 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v27 = Strong;
  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (!v28)
  {

    return;
  }

  v89 = v28;
  v87 = v19;
  v29 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView;
  v30 = *&v27[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView];
  if ((v30[OBJC_IVAR____TtC8AppStore16HeroCarouselView_previousIndex + 8] & 1) == 0)
  {
    v88 = v15;
    v31 = *&v30[OBJC_IVAR____TtC8AppStore16HeroCarouselView_previousIndex];
    v32 = v30;
    v86 = v14;
    v33 = v32;
    v34 = v31;
    v15 = v88;
    v35 = sub_1005C55AC(v34, 0);

    v14 = v86;
    if (v35)
    {
      if (!*&v35[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem])
      {

        v15 = v88;
        (*(v88 + 56))(v13, 1, 1, v14);
        goto LABEL_10;
      }

      v84 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem;
      v85 = v35;

      HeroCarouselItem.impressionMetrics.getter();

      v15 = v88;
      v83 = *(v88 + 48);
      if (v83(v13, 1, v14) == 1)
      {

LABEL_10:
        sub_10002B894(v13, &qword_100973D30, &unk_1007B1DC0);
        goto LABEL_19;
      }

      v82[0] = *(v15 + 32);
      (v82[0])(v25, v13, v14);
      v36 = v91;
      ImpressionMetrics.id.getter();
      v98 = 0u;
      v99 = 0u;
      v100 = 1;
      v37 = ImpressionsCalculator.childCalculator(for:viewBounds:)();
      (*(v92 + 8))(v36, v93);
      if (!v37)
      {
        goto LABEL_18;
      }

      v82[1] = v37;
      if (*&v85[v84] && (, v38 = HeroCarouselItem.overlay.getter(), , v38))
      {
        HeroCarouselItemOverlay.impressionMetrics.getter();

        v39 = v86;
        v40 = v83(v10, 1, v86);
        v41 = v88;
        if (v40 != 1)
        {
          (v82[0])(v22, v10, v39);
          ImpressionsCalculator.removeElement(_:)();

          (*(v41 + 8))(v22, v39);
          goto LABEL_18;
        }
      }

      else
      {

        (*(v88 + 56))(v10, 1, 1, v86);
      }

      sub_10002B894(v10, &qword_100973D30, &unk_1007B1DC0);
LABEL_18:
      ImpressionsCalculator.removeElement(_:)();

      v15 = v88;
      v14 = v86;
      (*(v88 + 8))(v25, v86);
    }
  }

LABEL_19:
  v42 = *&v27[v29];
  v43 = sub_1004691D8();

  if (!v43)
  {

    return;
  }

  v44 = OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem;
  if (!*&v43[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_heroCarouselItem])
  {

    (*(v15 + 56))(v7, 1, 1, v14);
    goto LABEL_25;
  }

  HeroCarouselItem.impressionMetrics.getter();

  v45 = v15;
  v46 = *(v15 + 48);
  if (v46(v7, 1, v14) == 1)
  {

LABEL_25:
    v47 = v7;
LABEL_26:
    sub_10002B894(v47, &qword_100973D30, &unk_1007B1DC0);
    return;
  }

  v48 = *(v15 + 32);
  v49 = v87;
  v88 = v15 + 32;
  v86 = v48;
  v48(v87, v7, v14);
  [v43 bounds];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v27;
  v59 = v14;
  v60 = [v58 superview];
  [v43 convertRect:v60 toView:{v51, v53, v55, v57}];

  ImpressionsCalculator.addElement(_:at:)();
  v61 = *&v43[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
  if (!v61)
  {

    (*(v15 + 8))(v49, v59);
    return;
  }

  if (!*&v43[v44])
  {

    v64 = v94;
LABEL_36:
    (*(v15 + 8))(v87, v59);
    (*(v15 + 56))(v64, 1, 1, v59);
    goto LABEL_37;
  }

  v62 = v61;

  v63 = HeroCarouselItem.overlay.getter();

  v64 = v94;
  if (!v63)
  {

    goto LABEL_36;
  }

  HeroCarouselItemOverlay.impressionMetrics.getter();

  v65 = v59;
  if (v46(v64, 1, v59) == 1)
  {

    (*(v15 + 8))(v87, v59);
LABEL_37:
    v47 = v64;
    goto LABEL_26;
  }

  v66 = v90;
  v86(v90, v64, v65);
  v67 = v91;
  v68 = v87;
  ImpressionMetrics.id.getter();
  v95 = 0u;
  v96 = 0u;
  v97 = 1;
  v69 = ImpressionsCalculator.childCalculator(for:viewBounds:)();
  (*(v92 + 8))(v67, v93);
  v70 = v45;
  if (v69)
  {
    v71 = v62;
    [v71 bounds];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = [v58 superview];

    [v71 convertRect:v80 toView:{v73, v75, v77, v79}];
    ImpressionsCalculator.addElement(_:at:)();
  }

  else
  {
  }

  v81 = *(v70 + 8);
  v81(v66, v65);
  v81(v68, v65);
}

id sub_10066C508()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HeroCarouselCollectionViewCell(uint64_t a1)
{
  result = qword_100990D88;
  if (!qword_100990D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10066C6B8(uint64_t a1)
{
  sub_10066C8A0(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_10066C83C(319);
    if (v2 <= 0x3F)
    {
      sub_10066C8A0(319, &qword_100990DB0, &type metadata accessor for TitleEffect);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10066C83C(uint64_t a1)
{
  if (!qword_100990DA0)
  {
    sub_10002D1A8(&qword_100979DF8, &qword_1007DC100);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100990DA0);
    }
  }
}

void sub_10066C8A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10066C8F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_playbackId;
  swift_beginAccess();
  return sub_10003D4AC(v1 + v3, a1);
}

void sub_10066C960()
{
  v1 = v0;
  v2 = type metadata accessor for Feature.iOS();
  v4[3] = v2;
  v4[4] = sub_1005C7530();
  v3 = sub_1000056E0(v4);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v2);
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100007000(v4);
  if ((v2 & 1) == 0)
  {
    sub_100468D78(0);
  }

  *(v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_isPlaying) = 0;
}

double sub_10066CA70(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_10066CAD0(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_10066CB68()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_10066CBC4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

void (*sub_10066CC84())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_10066CDAC;
}

uint64_t sub_10066CD2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  return sub_100031660(v3 + v4, a1, &unk_100986660, qword_1007CE528);
}

uint64_t sub_10066CDB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100986660, qword_1007CE528);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10066CE24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_100979DF8, &qword_1007DC100);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-v8];
  v10 = sub_10002849C(&qword_100979DF0, &qword_1007DC2A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26[-v11];
  v13 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_100031660(v3 + v13, v12, &qword_100979DF0, &qword_1007DC2A0);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_10002B894(v12, &qword_100979DF0, &qword_1007DC2A0);
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    v14 = sub_10002B894(v12, &qword_100979DF0, &qword_1007DC2A0);
    __chkstk_darwin(v14);
    *&v26[-16] = a1;
    sub_100218C40();
    WritableStateLens<A>.updateValue(_:)();
    (*(v7 + 8))(v9, v6);
  }

  v15 = v3 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsUpdateBlock;
  swift_beginAccess();
  v16 = *v15;
  if (*v15)
  {
    v17 = *(v15 + 8);

    v16(v18);
    sub_10001F63C(v16, v17);
  }

  if (a2)
  {
    v19 = *(*(*(*(a2 + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView) + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v19)
    {
      type metadata accessor for VideoView(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = *(v20 + qword_100988CE0);
        if (v21)
        {
          v22 = v19;
          v23 = v21;
          dispatch thunk of VideoPlayer.restart()();
        }
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  }
}

void sub_10066D154()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_itemLayoutContext;
  v7 = type metadata accessor for ItemLayoutContext();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView(0);
  *(v1 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_state;
  v10 = sub_10002849C(&qword_100979DF8, &qword_1007DC100);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *(v1 + v11) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = (v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler);
  *v12 = 0;
  v12[1] = 0;
  swift_weakInit();
  v13 = (v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_currentTitleEffect;
  v15 = type metadata accessor for TitleEffect();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_10002849C(&qword_100990DB8, &unk_1007DC2A8);
  swift_allocObject();
  *(v1 + v16) = SyncEvent.init()();
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  v20[0] = v17;
  v20[1] = v19;
  AnyHashable.init<A>(_:)();
  *(v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_allowsAutoPlay) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_isPlaying) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10066D474(uint64_t a1)
{
  result = [*(*(v1 + 16) + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl) currentPage];
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_10066D4C4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000CAE24(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000CAE24(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1006783CC(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1000CAE24(v3, v5, v2 != 0);
  return v12;
}

double sub_10066D5E0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v359 = a4;
  v383 = type metadata accessor for ShelfHeaderLayout(0);
  __chkstk_darwin(v383);
  v368 = &v323 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v360 = &v323 - v9;
  v10 = type metadata accessor for LabelPlaceholder();
  v379 = *(v10 - 8);
  v380 = v10;
  __chkstk_darwin(v10);
  v324 = &v323 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TextAppearance();
  v339 = *(v12 - 8);
  v340 = v12;
  __chkstk_darwin(v12);
  v357 = &v323 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v326 = &v323 - v15;
  __chkstk_darwin(v16);
  v337 = &v323 - v17;
  __chkstk_darwin(v18);
  v338 = &v323 - v19;
  v336 = type metadata accessor for FloatingPointRoundingRule();
  v334 = *(v336 - 8);
  __chkstk_darwin(v336);
  v333 = &v323 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v390 = type metadata accessor for AspectRatio();
  v378 = *(v390 - 8);
  __chkstk_darwin(v390);
  v335 = &v323 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v330 = &v323 - v23;
  v24 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v24 - 8);
  v365 = &v323 - v25;
  v26 = sub_10002849C(&unk_100987100, &qword_1007CF950);
  __chkstk_darwin(v26 - 8);
  v364 = &v323 - v27;
  v28 = type metadata accessor for UIButton.Configuration();
  v366 = *(v28 - 8);
  v367 = v28;
  __chkstk_darwin(v28);
  v363 = &v323 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v362 = &v323 - v31;
  v32 = sub_10002849C(&unk_100984380, &qword_1007C4850);
  __chkstk_darwin(v32 - 8);
  v356 = &v323 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v371 = &v323 - v35;
  __chkstk_darwin(v36);
  v328 = &v323 - v37;
  __chkstk_darwin(v38);
  v370 = &v323 - v39;
  v377 = type metadata accessor for ShelfHeader.Configuration();
  v388 = *(v377 - 8);
  __chkstk_darwin(v377);
  v354 = &v323 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10002849C(&qword_100990F78, qword_1007DC388);
  __chkstk_darwin(v41 - 8);
  v358 = &v323 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v325 = &v323 - v44;
  __chkstk_darwin(v45);
  v389 = &v323 - v46;
  v47 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v47 - 8);
  v332 = &v323 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v329 = &v323 - v50;
  __chkstk_darwin(v51);
  v381 = &v323 - v52;
  __chkstk_darwin(v53);
  v374 = (&v323 - v54);
  v55 = sub_10002849C(&qword_100990F68, &qword_1007DC318);
  __chkstk_darwin(v55);
  v376 = &v323 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v375 = &v323 - v58;
  __chkstk_darwin(v59);
  v391 = &v323 - v60;
  __chkstk_darwin(v61);
  v385 = &v323 - v62;
  __chkstk_darwin(v63);
  v384 = &v323 - v64;
  __chkstk_darwin(v65);
  v67 = &v323 - v66;
  v68 = sub_10002849C(&qword_1009903A0, &qword_1007DB090);
  __chkstk_darwin(v68 - 8);
  v343 = &v323 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  *&v361 = &v323 - v71;
  __chkstk_darwin(v72);
  v74 = &v323 - v73;
  __chkstk_darwin(v75);
  v77 = &v323 - v76;
  v352 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v352);
  v386 = &v323 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v393 = &v323 - v80;
  v81 = ShelfLayoutContext.traitCollection.getter();
  v373 = ShelfHeader.eyebrowArtwork.getter();
  ShelfHeader.eyebrowArtworkType.getter();
  v349 = ShelfHeader.titleArtwork.getter();
  v382 = v74;
  v387 = a1;
  ShelfHeader.titleArtworkType.getter();
  v392 = a2;
  sub_100678740();
  if (qword_10096EC40 != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for FontUseCase();
  v327 = sub_1000056A8(v82, qword_100990E20);
  isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v81).super.isa;
  [(objc_class *)isa pointSize];
  v85 = v84;
  v86 = objc_opt_self();
  v347 = isa;
  v348 = [v86 fontWithDescriptor:isa size:v85];
  [v348 lineHeight];
  v350 = v87;
  v88 = &v67[*(v55 + 48)];
  v89 = v67;
  v351 = v77;
  sub_100672318(v67, v88, v77);
  if (qword_10096EC48 != -1)
  {
    swift_once();
  }

  v355 = sub_1000056A8(v82, qword_100990E38);
  v90 = FontUseCase.makeFontDescriptor(compatibleWith:)(v81).super.isa;
  [(objc_class *)v90 pointSize];
  v344 = v90;
  v345 = [v86 fontWithDescriptor:v90 size:?];
  [v345 lineHeight];
  v372 = v91;
  v353 = v55;
  sub_10067297C(v384, &v384[*(v55 + 48)], v382);
  v394.super.isa = v81;
  v92 = [(objc_class *)v81 preferredContentSizeCategory];
  v93 = static UIContentSizeCategory.> infix(_:_:)();

  v369 = v82;
  if ((v93 & 1) == 0 || (v94 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v346 = v67;
    v95 = v86;
    v96 = *&v361;
    sub_100031660(v382, *&v361, &qword_1009903A0, &qword_1007DB090);
    v97 = type metadata accessor for ShelfHeader.ArtworkType();
    v98 = *(v97 - 8);
    v94 = 7.0;
    if ((*(v98 + 48))(v96, 1, v97) != 1)
    {
      v99 = v343;
      sub_100031660(v96, v343, &qword_1009903A0, &qword_1007DB090);
      v100 = (*(v98 + 88))(v99, v97);
      if (v100 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v94 = 5.0;
        if (v100 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v98 + 8))(v99, v97);
          v94 = 7.0;
        }
      }
    }

    sub_10002B894(v96, &qword_1009903A0, &qword_1007DB090);
    v82 = v369;
    v86 = v95;
    v89 = v346;
  }

  v346 = *&v94;
  v361 = a3;
  if (qword_10096EC58 != -1)
  {
    swift_once();
  }

  v331 = sub_1000056A8(v82, qword_100990E68);
  v101.super.isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v394).super.isa;
  [(objc_class *)v101.super.isa pointSize];
  v102 = [v86 fontWithDescriptor:v101.super.isa size:?];
  [v102 lineHeight];
  v104 = v103;
  static UIEdgeInsets.vertical(top:bottom:)();
  v343 = v105;
  v107 = v106;
  v109 = v108;
  v111 = v110;
  static UIEdgeInsets.vertical(top:bottom:)();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  sub_100031660(v89, v385, &qword_100990F68, &qword_1007DC318);
  sub_100031660(v89, v391, &qword_100990F68, &qword_1007DC318);
  v120 = v382;
  if (v373)
  {
    Artwork.size.getter();
    v121 = v374;
    AspectRatio.init(_:_:)();
    v122 = 0;
  }

  else
  {
    v122 = 1;
    v121 = v374;
  }

  v123 = v372 - v104;
  v124 = *(v378 + 56);
  v124(v121, v122, 1, v390);
  v125 = *&UIEdgeInsetsZero.top;
  v341 = *&UIEdgeInsetsZero.bottom;
  v342 = v125;
  v126 = v384;
  sub_100031660(v384, v375, &qword_100990F68, &qword_1007DC318);
  sub_100031660(v126, v376, &qword_100990F68, &qword_1007DC318);
  if (v349)
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    v127 = 0;
  }

  else
  {

    v127 = 1;
  }

  v128 = v351;

  sub_10002B894(v384, &qword_100990F68, &qword_1007DC318);
  sub_10002B894(v89, &qword_100990F68, &qword_1007DC318);
  sub_10002B894(v120, &qword_1009903A0, &qword_1007DB090);
  sub_10002B894(v128, &qword_1009903A0, &qword_1007DB090);
  v129 = v127;
  v130 = v390;
  v124(v381, v129, 1, v390);
  v131 = v352;
  v132 = *(v353 + 48);
  v133 = *(v352 + 40);
  v134 = v393;
  v124(&v393[v133], 1, 1, v130);
  v382 = v131[15];
  v124(&v134[v382], 1, 1, v130);
  *v134 = v343;
  *(v134 + 1) = v107;
  *(v134 + 2) = v109;
  *(v134 + 3) = v111;
  *(v134 + 4) = v350;
  *(v134 + 5) = v113;
  *(v134 + 6) = v115;
  *(v134 + 7) = v117;
  *(v134 + 8) = v119;
  v135 = v131[7];
  v136 = type metadata accessor for StaticDimension();
  v137 = *(v136 - 8);
  v138 = *(v137 + 32);
  v351 = v135;
  v138(&v135[v134], v385, v136);
  v350 = v131[8];
  v384 = v132;
  v138(&v134[v350], &v132[v391], v136);
  *&v134[v131[9]] = 0x4008000000000000;
  v373 = v133;
  sub_1000315F8(v374, &v134[v133], &unk_1009732A0, &unk_1007B4FE0);
  *&v134[v131[11]] = v372;
  v139 = &v134[v131[12]];
  v140 = v341;
  *v139 = v342;
  *(v139 + 1) = v140;
  v353 = v131[13];
  v141 = v375;
  v138(&v134[v353], v375, v136);
  *&v372 = v131[14];
  v142 = v376;
  v138(&v134[*&v372], &v132[v376], v136);
  sub_1000315F8(v381, &v134[v382], &unk_1009732A0, &unk_1007B4FE0);
  *&v134[v131[16]] = v346;
  v143 = &v134[v131[17]];
  *v143 = v123;
  *(v143 + 2) = 0;
  *(v143 + 3) = 0;
  *(v143 + 1) = 0x4024000000000000;
  v144 = *(v137 + 8);
  v144(v142, v136);
  v145 = v384;
  v144(&v384[v141], v136);
  v144(v391, v136);
  v144(&v145[v385], v136);
  v374 = *(v379 + 56);
  v375 = v379 + 56;
  (v374)(v389, 1, 1, v380);
  v146 = v354;
  ShelfHeader.configuration.getter();
  LOBYTE(v136) = ShelfHeader.Configuration.includeSeparator.getter();
  v147 = *(v388 + 8);
  v148 = v377;
  v381 = v388 + 8;
  v376 = v147;
  v147(v146, v377);
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v152 = v361;
  if (v136)
  {
    static Separator.thickness(compatibleWith:)();
    v150 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v149 = LayoutViewPlaceholder.init(representing:)();
    v151 = &protocol witness table for LayoutViewPlaceholder;
  }

  v417[0] = v149;
  v417[1] = 0;
  v417[2] = 0;
  v417[3] = v150;
  v417[4] = v151;
  ShelfHeader.eyebrow.getter();
  v153 = v363;
  v154 = v371;
  if (!v155)
  {
    v384 = 0;
    v160 = v393;
    goto LABEL_40;
  }

  if (qword_10096EC38 != -1)
  {
    swift_once();
  }

  v156 = qword_100990E18;
  (*(v388 + 56))(v370, 1, 1, v148);
  v384 = v156;
  v157 = v156;
  v158 = ShelfHeader.eyebrowAction.getter();
  if (v158)
  {
  }

  static UIButton.Configuration.plain()();
  UIButton.Configuration.titlePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  v159 = v328;
  sub_100031660(v370, v328, &unk_100984380, &qword_1007C4850);
  if ((*(v388 + 48))(v159, 1, v148) == 1)
  {
    sub_10002B894(v159, &unk_100984380, &qword_1007C4850);
LABEL_31:
    if (qword_10096EC60 != -1)
    {
      swift_once();
    }

    v162 = qword_100990E80;
    goto LABEL_34;
  }

  v161 = ShelfHeader.Configuration.eyebrowColor.getter();
  (v376)(v159, v148);
  if (!v161)
  {
    goto LABEL_31;
  }

LABEL_34:
  v163 = v158 != 0;
  v164 = v362;
  UIButton.Configuration.baseForegroundColor.setter();
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v165 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *(swift_allocObject() + 16) = v165;
  v166 = v165;
  v167 = v364;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v168 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v168 - 8) + 56))(v167, 0, 1, v168);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v169 = v365;
  v170 = v366;
  v171 = v367;
  (*(v366 + 16))(v365, v164, v367);
  (*(v170 + 56))(v169, 0, 1, v171);
  UIButton.configuration.setter();
  [v157 setUserInteractionEnabled:v163];
  [v157 _setWantsAccessibilityUnderline:v163];

  (*(v170 + 8))(v164, v171);
  sub_10002B894(v370, &unk_100984380, &qword_1007C4850);
  v172 = ShelfHeader.eyebrow.getter();
  v174 = v173;
  v175 = ShelfLayoutContext.traitCollection.getter();
  if (ShelfHeader.eyebrowTrailingArtwork.getter())
  {
    v154 = v371;
    if (qword_10096EC00 != -1)
    {
      swift_once();
    }

    v176 = [qword_100990DE0 configurationWithTraitCollection:v175];
    v177 = static SystemImage.load(artwork:with:includePrivateImages:)();
  }

  else
  {
    v177 = 0;
    v154 = v371;
  }

  v178 = sub_1006790BC(v172, v174, v175, v177);

  [v157 setAttributedTitle:v178 forState:0];

  v160 = v393;
  v148 = v377;
LABEL_40:
  if (ShelfHeader.eyebrowArtwork.getter())
  {

    v179 = v329;
    sub_100031660(v160 + v373, v329, &unk_1009732A0, &unk_1007B4FE0);
    v180 = v378;
    v181 = v390;
    if ((*(v378 + 48))(v179, 1, v390) == 1)
    {
      sub_10002B894(v179, &unk_1009732A0, &unk_1007B4FE0);
      v391 = 0;
    }

    else
    {
      (*(v180 + 32))(v330, v179, v181);
      v182 = v333;
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v183 = *(v334 + 8);
      v184 = v336;
      v183(v182, v336);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v185 = v182;
      v153 = v363;
      v186 = v184;
      v154 = v371;
      v183(v185, v186);
      v187 = v330;
      AspectRatio.maxSize(fitting:)();
      type metadata accessor for LayoutViewPlaceholder();
      swift_allocObject();
      v391 = LayoutViewPlaceholder.init(representing:)();
      (*(v180 + 8))(v187, v181);
    }

    v148 = v377;
  }

  else
  {
    v391 = 0;
  }

  v188 = ShelfHeader.titleAction.getter();
  if (v188)
  {
  }

  v189 = v154;
  if (qword_10096EC30 != -1)
  {
    swift_once();
  }

  v190 = qword_100990E10;
  v191 = ShelfHeader.title.getter();
  v193 = v192;
  v194 = ShelfLayoutContext.traitCollection.getter();
  v195 = sub_1006793DC(v191, v193, v194, v188 != 0);

  v385 = v190;
  [v190 setAttributedTitle:v195 forState:0];

  v196 = v388;
  v197 = v189;
  (*(v388 + 56))(v189, 1, 1, v148);
  static UIButton.Configuration.plain()();
  UIButton.Configuration.titlePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  v198 = v356;
  sub_100031660(v189, v356, &unk_100984380, &qword_1007C4850);
  if ((*(v196 + 48))(v198, 1, v148) == 1)
  {
    sub_10002B894(v198, &unk_100984380, &qword_1007C4850);
  }

  else
  {
    v199 = ShelfHeader.Configuration.titleColor.getter();
    (v376)(v198, v148);
    if (v199)
    {
      goto LABEL_56;
    }
  }

  if (qword_10096EC68 != -1)
  {
    swift_once();
  }

  v200 = qword_100990E88;
LABEL_56:
  v201 = v188 != 0;
  UIButton.Configuration.baseForegroundColor.setter();
  v202 = [objc_opt_self() clearColor];
  v203 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v203(&v414, 0);
  v204 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v204(&v414, 0);
  v205 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v206 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *(swift_allocObject() + 16) = v206;
  v207 = v206;
  v208 = v364;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v209 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v209 - 8) + 56))(v208, 0, 1, v209);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v210 = v365;
  v211 = v366;
  v212 = v367;
  (*(v366 + 16))(v365, v153, v367);
  (*(v211 + 56))(v210, 0, 1, v212);
  v213 = v385;
  UIButton.configuration.setter();
  [v213 setNeedsUpdateConfiguration];
  [v213 setContentHorizontalAlignment:4];
  [v213 setUserInteractionEnabled:v201];
  [v213 _setWantsAccessibilityUnderline:v201];

  (*(v211 + 8))(v153, v212);
  sub_10002B894(v197, &unk_100984380, &qword_1007C4850);
  if (ShelfHeader.titleArtwork.getter())
  {

    v214 = v332;
    sub_100031660(&v393[v382], v332, &unk_1009732A0, &unk_1007B4FE0);
    v215 = v378;
    v216 = v390;
    v217 = (*(v378 + 48))(v214, 1, v390);
    v218 = v357;
    if (v217 == 1)
    {
      sub_10002B894(v214, &unk_1009732A0, &unk_1007B4FE0);
      v219 = 0;
    }

    else
    {
      (*(v215 + 32))(v335, v214, v216);
      v220 = v333;
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v388 = v205;
      v221 = *(v334 + 8);
      v222 = v336;
      v221(v220, v336);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v221(v220, v222);
      v223 = v335;
      AspectRatio.maxSize(fitting:)();
      type metadata accessor for LayoutViewPlaceholder();
      swift_allocObject();
      v219 = LayoutViewPlaceholder.init(representing:)();
      (*(v215 + 8))(v223, v390);
    }
  }

  else
  {
    v219 = 0;
    v218 = v357;
  }

  v224 = v368;
  v225 = ShelfHeader.subtitle.getter();
  v227 = v369;
  v390 = v219;
  if (v226)
  {
    v228 = HIBYTE(v226) & 0xF;
    if ((v226 & 0x2000000000000000) == 0)
    {
      v228 = v225 & 0xFFFFFFFFFFFFLL;
    }

    if (v228)
    {
      v382 = v225;
      v388 = v226;
      TextAppearance.init()();
      if (qword_10096EC50 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v227, qword_100990E50);
      v229 = ShelfLayoutContext.traitCollection.getter();
      v230 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

      v231 = v326;
      TextAppearance.withFont(_:)();

      v232 = v218;
      v233 = v339;
      v234 = v340;
      v235 = *(v339 + 8);
      v235(v232, v340);
      v236 = v337;
      TextAppearance.withNumberOfLines(_:)();
      v235(v231, v234);
      v237 = v338;
      TextAppearance.withLineBreakMode(_:)();
      v235(v236, v234);
      (*(v233 + 16))(v236, v237, v234);
      LabelPlaceholder.Options.init(rawValue:)();
      v238 = v325;
      LabelPlaceholder.init(_:with:where:)();
      v235(v237, v234);
      v239 = v389;
      sub_10002B894(v389, &qword_100990F78, qword_1007DC388);
      (v374)(v238, 0, 1, v380);
      sub_1000476A0(v238, v239, &qword_100990F78, qword_1007DC388);
      v224 = v368;
      v219 = v390;
    }

    else
    {
    }
  }

  v240 = ShelfHeader.accessoryAction.getter();
  v241 = sub_1006795B8(v240);
  if (v243 == -1)
  {
    v413 = 0;
    v411 = 0u;
    v412 = 0u;
    v255 = v380;
  }

  else
  {
    v244 = v241;
    v245 = v242;
    if (v243)
    {
      v246 = v243;
      v247 = ShelfLayoutContext.traitCollection.getter();
      v248 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
      v249 = [objc_opt_self() configurationWithFont:v248 scale:2];
      v250 = String._bridgeToObjectiveC()();
      sub_100679E90(v244, v245, v246);
      v251 = [objc_opt_self() _systemImageNamed:v250 withConfiguration:v249];

      if (v251)
      {
        v252 = v251;
        [v252 size];
        v253 = type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        v254 = LayoutViewPlaceholder.init(representing:)();
        *(&v412 + 1) = v253;
        v413 = &protocol witness table for LayoutViewPlaceholder;

        *&v411 = v254;
      }

      else
      {
        v413 = 0;
        v411 = 0u;
        v412 = 0u;
      }

      v224 = v368;
      v255 = v380;
    }

    else
    {
      v256 = v337;
      TextAppearance.init()();
      v257 = ShelfLayoutContext.traitCollection.getter();
      v258 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

      TextAppearance.withFont(_:)();
      (*(v339 + 8))(v256, v340);
      LabelPlaceholder.Options.init(rawValue:)();
      v259 = v324;
      LabelPlaceholder.init(_:with:where:)();
      LabelPlaceholder.layoutTextView.getter();
      v255 = v380;
      (*(v379 + 8))(v259, v380);
      v260 = *(&v415 + 1);
      v261 = v416;
      v262 = sub_10002A400(&v414, *(&v415 + 1));
      *(&v412 + 1) = v260;
      v413 = v261[1];
      v263 = sub_1000056E0(&v411);
      (*(*(v260 - 8) + 16))(v263, v262, v260);
      sub_100007000(&v414);
    }

    v219 = v390;
  }

  v414 = v411;
  v415 = v412;
  v416 = v413;
  sub_10067860C(v393, v386);
  sub_100031660(v417, &v411, &qword_100975610, &qword_1007B5690);
  if (v384)
  {
    v264 = v384;
    if (([v264 isHidden] & 1) == 0 && objc_msgSend(v264, "hasContent"))
    {
      v265 = type metadata accessor for DynamicTypeButton();
      v410 = &protocol witness table for UIButton;
      *(&v409 + 1) = v265;
      *&v408 = v264;
      goto LABEL_84;
    }
  }

  v410 = 0;
  v408 = 0u;
  v409 = 0u;
LABEL_84:
  v266 = v379;
  v267 = v391;
  if (v391)
  {
    v268 = type metadata accessor for LayoutViewPlaceholder();
    v267 = &protocol witness table for LayoutViewPlaceholder;
    v269 = v391;
  }

  else
  {
    v269 = 0;
    v268 = 0;
    v407[2] = 0;
    v407[1] = 0;
  }

  v407[0] = v269;
  v407[3] = v268;
  v407[4] = v267;
  v270 = type metadata accessor for DynamicTypeButton();
  v406[4] = &protocol witness table for UIButton;
  v406[3] = v270;
  v406[0] = v385;
  if (v219)
  {
    v271 = type metadata accessor for LayoutViewPlaceholder();
    v272 = &protocol witness table for LayoutViewPlaceholder;
    v273 = v219;
  }

  else
  {
    v273 = 0;
    v271 = 0;
    v272 = 0;
    v405[2] = 0;
    v405[1] = 0;
  }

  v274 = v358;
  v405[0] = v273;
  v405[3] = v271;
  v405[4] = v272;
  sub_100031660(v389, v358, &qword_100990F78, qword_1007DC388);
  if ((*(v266 + 48))(v274, 1, v255) == 1)
  {

    v275 = v385;
    sub_10002B894(v274, &qword_100990F78, qword_1007DC388);
    v402 = 0u;
    v403 = 0u;
    v404 = 0;
  }

  else
  {
    *(&v403 + 1) = v255;
    v404 = &protocol witness table for LabelPlaceholder;
    v276 = sub_1000056E0(&v402);
    (*(v266 + 32))(v276, v274, v255);

    v277 = v385;
  }

  sub_100031660(&v414, v401, &qword_100975610, &qword_1007B5690);
  sub_10067860C(v386, v224);
  sub_100031660(&v411, v395, &qword_100975610, &qword_1007B5690);
  v278 = v396;
  if (v396)
  {
    v279 = v397;
    sub_10002A400(v395, v396);
    v280 = type metadata accessor for Optional();
    v281 = *(v280 - 8);
    __chkstk_darwin(v280);
    v283 = &v323 - v282;
    LayoutView.nilIfHidden()();
    v284 = *(v278 - 8);
    if ((*(v284 + 48))(v283, 1, v278) == 1)
    {
      (*(v281 + 8))(v283, v280);
      v400 = 0;
      v398 = 0u;
      v399 = 0u;
    }

    else
    {
      *(&v399 + 1) = v278;
      v400 = v279;
      v286 = sub_1000056E0(&v398);
      (*(v284 + 32))(v286, v283, v278);
    }

    v285 = v383;
    sub_100007000(v395);
  }

  else
  {
    sub_10002B894(v395, &qword_100975610, &qword_1007B5690);
    v398 = 0u;
    v399 = 0u;
    v400 = 0;
    v285 = v383;
  }

  v287 = v224 + v285[5];
  v288 = v399;
  *v287 = v398;
  *(v287 + 16) = v288;
  *(v287 + 32) = v400;
  sub_100031660(&v408, v224 + v285[6], &unk_10097B860, &qword_1007B49E0);
  sub_100031660(v407, v395, &qword_100975610, &qword_1007B5690);
  v289 = v396;
  if (v396)
  {
    v290 = v397;
    sub_10002A400(v395, v396);
    v291 = type metadata accessor for Optional();
    v292 = *(v291 - 8);
    __chkstk_darwin(v291);
    v294 = &v323 - v293;
    LayoutView.nilIfHidden()();
    v295 = *(v289 - 8);
    if ((*(v295 + 48))(v294, 1, v289) == 1)
    {
      (*(v292 + 8))(v294, v291);
      v400 = 0;
      v398 = 0u;
      v399 = 0u;
    }

    else
    {
      *(&v399 + 1) = v289;
      v400 = v290;
      v296 = sub_1000056E0(&v398);
      (*(v295 + 32))(v296, v294, v289);
    }

    sub_100007000(v395);
    v285 = v383;
  }

  else
  {
    sub_10002B894(v395, &qword_100975610, &qword_1007B5690);
    v398 = 0u;
    v399 = 0u;
    v400 = 0;
  }

  v297 = v224 + v285[7];
  v298 = v399;
  *v297 = v398;
  *(v297 + 16) = v298;
  *(v297 + 32) = v400;
  sub_10002C0AC(v406, v224 + v285[8]);
  sub_100031660(v405, v395, &qword_100975610, &qword_1007B5690);
  v299 = v396;
  if (v396)
  {
    v300 = v397;
    sub_10002A400(v395, v396);
    v301 = type metadata accessor for Optional();
    v302 = *(v301 - 8);
    __chkstk_darwin(v301);
    v304 = &v323 - v303;
    LayoutView.nilIfHidden()();
    v305 = *(v299 - 8);
    if ((*(v305 + 48))(v304, 1, v299) == 1)
    {
      (*(v302 + 8))(v304, v301);
      v400 = 0;
      v398 = 0u;
      v399 = 0u;
    }

    else
    {
      *(&v399 + 1) = v299;
      v400 = v300;
      v306 = sub_1000056E0(&v398);
      (*(v305 + 32))(v306, v304, v299);
    }

    sub_100007000(v395);
    v285 = v383;
  }

  else
  {
    sub_10002B894(v395, &qword_100975610, &qword_1007B5690);
    v398 = 0u;
    v399 = 0u;
    v400 = 0;
  }

  v307 = v224 + v285[9];
  v308 = v399;
  *v307 = v398;
  *(v307 + 16) = v308;
  *(v307 + 32) = v400;
  sub_100031660(&v402, v224 + v285[10], &unk_10097B860, &qword_1007B49E0);
  sub_100031660(v401, v395, &qword_100975610, &qword_1007B5690);
  v309 = v396;
  if (v396)
  {
    v310 = v224;
    v311 = v397;
    sub_10002A400(v395, v396);
    v312 = type metadata accessor for Optional();
    v313 = *(v312 - 8);
    __chkstk_darwin(v312);
    v315 = &v323 - v314;
    LayoutView.nilIfHidden()();
    v316 = *(v309 - 8);
    if ((*(v316 + 48))(v315, 1, v309) == 1)
    {
      sub_10002B894(v401, &qword_100975610, &qword_1007B5690);
      sub_10002B894(&v411, &qword_100975610, &qword_1007B5690);
      sub_100678670(v386, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10002B894(&v402, &unk_10097B860, &qword_1007B49E0);
      sub_10002B894(v405, &qword_100975610, &qword_1007B5690);
      sub_100007000(v406);
      sub_10002B894(v407, &qword_100975610, &qword_1007B5690);
      sub_10002B894(&v408, &unk_10097B860, &qword_1007B49E0);
      (*(v313 + 8))(v315, v312);
      v400 = 0;
      v398 = 0u;
      v399 = 0u;
    }

    else
    {
      *(&v399 + 1) = v309;
      v400 = v311;
      v317 = sub_1000056E0(&v398);
      (*(v316 + 32))(v317, v315, v309);
      sub_10002B894(v401, &qword_100975610, &qword_1007B5690);
      sub_10002B894(&v411, &qword_100975610, &qword_1007B5690);
      sub_100678670(v386, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10002B894(&v402, &unk_10097B860, &qword_1007B49E0);
      sub_10002B894(v405, &qword_100975610, &qword_1007B5690);
      sub_100007000(v406);
      sub_10002B894(v407, &qword_100975610, &qword_1007B5690);
      sub_10002B894(&v408, &unk_10097B860, &qword_1007B49E0);
    }

    sub_100007000(v395);
    v285 = v383;
    v224 = v310;
  }

  else
  {
    sub_10002B894(v401, &qword_100975610, &qword_1007B5690);
    sub_10002B894(&v411, &qword_100975610, &qword_1007B5690);
    sub_100678670(v386, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10002B894(&v402, &unk_10097B860, &qword_1007B49E0);
    sub_10002B894(v405, &qword_100975610, &qword_1007B5690);
    sub_100007000(v406);
    sub_10002B894(v407, &qword_100975610, &qword_1007B5690);
    sub_10002B894(&v408, &unk_10097B860, &qword_1007B49E0);
    sub_10002B894(v395, &qword_100975610, &qword_1007B5690);
    v398 = 0u;
    v399 = 0u;
    v400 = 0;
  }

  v318 = v224 + v285[11];
  v319 = v399;
  *v318 = v398;
  *(v318 + 16) = v319;
  *(v318 + 32) = v400;
  v320 = v360;
  sub_100679FD4(v224, v360, type metadata accessor for ShelfHeaderLayout);
  v321 = ShelfLayoutContext.traitCollection.getter();
  ShelfHeaderLayout.measure(toFit:with:)(v321, v152, v359);

  sub_100678670(v320, type metadata accessor for ShelfHeaderLayout);
  sub_10002B894(&v414, &qword_100975610, &qword_1007B5690);
  sub_10002B894(v417, &qword_100975610, &qword_1007B5690);
  sub_10002B894(v389, &qword_100990F78, qword_1007DC388);
  sub_100678670(v393, type metadata accessor for ShelfHeaderLayout.Metrics);
  return v152;
}

uint64_t sub_10067044C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v216 = a5;
  v229 = *&a3;
  v230 = a2;
  ObjectType = swift_getObjectType();
  v224 = type metadata accessor for AutomationSemantics();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v222 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v220 = &v202 - v11;
  __chkstk_darwin(v12);
  v221 = &v202 - v13;
  v219 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v217 = &v202 - v14;
  v15 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v15 - 8);
  v238 = &v202 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v234 = &v202 - v18;
  v233 = sub_10002849C(&qword_100990F68, &qword_1007DC318);
  __chkstk_darwin(v233);
  v237 = &v202 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v236 = &v202 - v21;
  __chkstk_darwin(v22);
  v235 = &v202 - v23;
  __chkstk_darwin(v24);
  v243 = &v202 - v25;
  __chkstk_darwin(v26);
  v242 = &v202 - v27;
  __chkstk_darwin(v28);
  v241 = &v202 - v29;
  v211 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v211);
  v212 = &v202 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10002849C(&unk_100984380, &qword_1007C4850);
  __chkstk_darwin(v31 - 8);
  v209 = &v202 - v32;
  v228.super.isa = type metadata accessor for ShelfLayoutContext();
  v33 = *(v228.super.isa - 1);
  __chkstk_darwin(v228.super.isa);
  v225 = v34;
  v226 = &v202 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10002849C(&qword_1009903A0, &qword_1007DB090);
  __chkstk_darwin(v35 - 8);
  *&v203 = &v202 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v204 = &v202 - v38;
  __chkstk_darwin(v39);
  v232 = &v202 - v40;
  __chkstk_darwin(v41);
  v231 = &v202 - v42;
  __chkstk_darwin(v43);
  v45 = &v202 - v44;
  v46 = ShelfHeader.eyebrowArtwork.getter();
  ShelfHeader.eyebrowArtworkType.getter();
  sub_100676D1C(v46, v45, &OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork, &OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkView, &OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkType);

  sub_10002B894(v45, &qword_1009903A0, &qword_1007DB090);
  v239 = *&v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton];
  v47 = ShelfHeader.eyebrow.getter();
  v49 = v48;
  v240 = a4;
  v50 = ShelfLayoutContext.traitCollection.getter();
  v51 = ShelfHeader.eyebrowTrailingArtwork.getter();
  v227 = a1;
  if (v51)
  {
    if (qword_10096EC00 != -1)
    {
      swift_once();
    }

    v52 = [qword_100990DE0 configurationWithTraitCollection:v50];
    v53 = static SystemImage.load(artwork:with:includePrivateImages:)();
  }

  else
  {
    v53 = 0;
  }

  v54 = sub_1006790BC(v47, v49, v50, v53);

  [v239 setAttributedTitle:v54 forState:0];

  v55 = ShelfHeader.titleArtwork.getter();
  ShelfHeader.titleArtworkType.getter();
  sub_100676D1C(v55, v45, &OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtwork, &OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkView, &OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkType);

  sub_10002B894(v45, &qword_1009903A0, &qword_1007DB090);
  v56 = *&v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton];
  v57 = ShelfHeader.title.getter();
  v59 = v58;
  v60 = v240;
  v61 = ShelfLayoutContext.traitCollection.getter();
  v62 = ShelfHeader.titleAction.getter();
  if (v62)
  {
  }

  v63 = sub_1006793DC(v57, v59, v61, v62 != 0);

  v214 = v56;
  [v56 setAttributedTitle:v63 forState:0];

  v64 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_subtitleLabel];
  ShelfHeader.subtitle.getter();
  if (v65)
  {
    v66 = String._bridgeToObjectiveC()();
  }

  else
  {
    v66 = 0;
  }

  v215 = v64;
  [v64 setText:v66];

  v67 = ShelfHeader.accessoryAction.getter();
  v68 = sub_1006795B8(v67);
  if (v70 == -1)
  {
    v82 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton];
    [v82 setTitle:0 forState:0];
    v213 = v82;
    [v82 setImage:0 forState:0];
  }

  else
  {
    v71 = v70;
    v72 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton];
    v213 = v72;
    if (v70)
    {
      v73 = v68;
      v74 = v69;
      [v72 setTitle:0 forState:0];
      v75 = v72;
      v76 = ShelfLayoutContext.traitCollection.getter();
      sub_100005744(0, &qword_1009730E0, UIFont_ptr);
      if (qword_10096EC58 != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for FontUseCase();
      sub_1000056A8(v77, qword_100990E68);
      v78 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
      v79 = [objc_opt_self() configurationWithFont:v78 scale:2];
      v80 = String._bridgeToObjectiveC()();
      sub_100679E90(v73, v74, v71);
      v81 = [objc_opt_self() _systemImageNamed:v80 withConfiguration:v79];

      [v75 setImage:v81 forState:0];
      v60 = v240;
    }

    else
    {
      v83 = v72;
      v84 = v68;
      v85 = v69;
      v86 = String._bridgeToObjectiveC()();
      [v83 setTitle:v86 forState:{0, sub_100679E90(v84, v85, v71)}];

      [v83 setImage:0 forState:0];
    }
  }

  v87 = ShelfHeader.titleAction.getter();
  if (v87)
  {
    v88 = swift_allocObject();
    *(v88 + 24) = v229;
    swift_unknownObjectWeakInit();
    v89 = v226;
    isa = v228.super.isa;
    (*(v33 + 16))(v226, v60, v228.super.isa);
    v91 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = v88;
    (*(v33 + 32))(v92 + v91, v89, isa);

    v87 = swift_allocObject();
    *(v87 + 16) = sub_100679FBC;
    *(v87 + 24) = v92;
    v93 = sub_10067A04C;
  }

  else
  {
    v93 = 0;
  }

  v94 = &v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
  v96 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
  v95 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction + 8];
  *v94 = v93;
  v94[1] = v87;
  sub_10001F63C(v96, v95);
  v97 = ShelfHeader.accessoryAction.getter();
  if (v97)
  {
    v98 = swift_allocObject();
    *(v98 + 24) = v229;
    swift_unknownObjectWeakInit();
    v99 = v226;
    v100 = v228.super.isa;
    (*(v33 + 16))(v226, v60, v228.super.isa);
    v101 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v102 = swift_allocObject();
    *(v102 + 16) = v98;
    (*(v33 + 32))(v102 + v101, v99, v100);

    v97 = swift_allocObject();
    *(v97 + 16) = sub_100679F2C;
    *(v97 + 24) = v102;
    v103 = sub_10067A04C;
  }

  else
  {
    v103 = 0;
  }

  v104 = &v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction];
  v106 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction];
  v105 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction + 8];
  *v104 = v103;
  v104[1] = v97;
  sub_10001F63C(v106, v105);
  v107 = ShelfHeader.eyebrowAction.getter();
  if (v107)
  {
    v108 = swift_allocObject();
    *(v108 + 24) = v229;
    swift_unknownObjectWeakInit();
    v109 = v226;
    v110 = v228.super.isa;
    (*(v33 + 16))(v226, v60, v228.super.isa);
    v111 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v112 = swift_allocObject();
    *(v112 + 16) = v108;
    (*(v33 + 32))(v112 + v111, v109, v110);

    v107 = swift_allocObject();
    *(v107 + 16) = sub_100679F14;
    *(v107 + 24) = v112;
    v113 = sub_10041D558;
  }

  else
  {
    v113 = 0;
  }

  v114 = &v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction];
  v116 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction];
  v115 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction + 8];
  *v114 = v113;
  v114[1] = v107;
  sub_10001F63C(v116, v115);
  v117 = v209;
  ShelfHeader.configuration.getter();
  v118 = type metadata accessor for ShelfHeader.Configuration();
  (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
  v119 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_1006786D0(v117, &v6[v119]);
  swift_endAccess();
  sub_100674B50();
  sub_10002B894(v117, &unk_100984380, &qword_1007C4850);
  v120 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork];
  v121 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  v122 = v231;
  sub_100031660(&v6[v121], v231, &qword_1009903A0, &qword_1007DB090);
  v123 = *&v6[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtwork];
  v124 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkType;
  swift_beginAccess();
  v125 = v232;
  sub_100031660(&v6[v124], v232, &qword_1009903A0, &qword_1007DB090);
  v225 = v123;

  v230 = v120;

  sub_100678740();
  v226 = v6;
  v126 = [v6 traitCollection];
  if (qword_10096EC40 != -1)
  {
    swift_once();
  }

  v127 = type metadata accessor for FontUseCase();
  sub_1000056A8(v127, qword_100990E20);
  v128 = FontUseCase.makeFontDescriptor(compatibleWith:)(v126).super.isa;
  [(objc_class *)v128 pointSize];
  v130 = v129;
  v131 = objc_opt_self();
  v207 = v128;
  v208 = [v131 fontWithDescriptor:v128 size:v130];
  [v208 lineHeight];
  v209 = v132;
  v133 = v233;
  sub_100672318(v241, v241 + *(v233 + 48), v122);
  if (qword_10096EC48 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v127, qword_100990E38);
  v134 = FontUseCase.makeFontDescriptor(compatibleWith:)(v126).super.isa;
  [(objc_class *)v134 pointSize];
  v205 = v134;
  v206 = [v131 fontWithDescriptor:v134 size:?];
  [v206 lineHeight];
  v229 = v135;
  sub_10067297C(v242, v242 + *(v133 + 48), v125);
  v228.super.isa = v126;
  v136 = [(objc_class *)v126 preferredContentSizeCategory];
  v137 = static UIContentSizeCategory.> infix(_:_:)();

  if ((v137 & 1) == 0 || (v138 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v139 = v204;
    sub_100031660(v125, v204, &qword_1009903A0, &qword_1007DB090);
    v140 = type metadata accessor for ShelfHeader.ArtworkType();
    v141 = *(v140 - 8);
    v138 = 7.0;
    if ((*(v141 + 48))(v139, 1, v140) != 1)
    {
      v142 = v203;
      sub_100031660(v139, v203, &qword_1009903A0, &qword_1007DB090);
      v143 = (*(v141 + 88))(v142, v140);
      if (v143 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v138 = 5.0;
        if (v143 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v141 + 8))(v142, v140);
          v138 = 7.0;
        }
      }
    }

    sub_10002B894(v139, &qword_1009903A0, &qword_1007DB090);
  }

  ObjectType = *&v138;
  if (qword_10096EC58 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v127, qword_100990E68);
  v144.super.isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v228).super.isa;
  [(objc_class *)v144.super.isa pointSize];
  v145 = [v131 fontWithDescriptor:v144.super.isa size:?];
  [v145 lineHeight];
  v147 = v146;
  static UIEdgeInsets.vertical(top:bottom:)();
  v204 = v148;
  v150 = v149;
  v152 = v151;
  v154 = v153;
  static UIEdgeInsets.vertical(top:bottom:)();
  v156 = v155;
  v158 = v157;
  v160 = v159;
  v162 = v161;
  v163 = v241;
  sub_100031660(v241, v243, &qword_100990F68, &qword_1007DC318);
  sub_100031660(v163, v235, &qword_100990F68, &qword_1007DC318);
  if (v230)
  {
    Artwork.size.getter();
    v164 = v234;
    AspectRatio.init(_:_:)();
    v165 = 0;
  }

  else
  {
    v165 = 1;
    v164 = v234;
  }

  v166 = v229 - v147;
  v167 = type metadata accessor for AspectRatio();
  v168 = *(*(v167 - 8) + 56);
  v168(v164, v165, 1, v167);
  v169 = *&UIEdgeInsetsZero.top;
  v202 = *&UIEdgeInsetsZero.bottom;
  v203 = v169;
  v170 = v242;
  sub_100031660(v242, v236, &qword_100990F68, &qword_1007DC318);
  sub_100031660(v170, v237, &qword_100990F68, &qword_1007DC318);
  if (v225)
  {
    Artwork.size.getter();
    v171 = v238;
    AspectRatio.init(_:_:)();

    v172 = 0;
  }

  else
  {

    v172 = 1;
    v171 = v238;
  }

  v173 = v231;

  sub_10002B894(v242, &qword_100990F68, &qword_1007DC318);
  sub_10002B894(v241, &qword_100990F68, &qword_1007DC318);
  sub_10002B894(v232, &qword_1009903A0, &qword_1007DB090);
  sub_10002B894(v173, &qword_1009903A0, &qword_1007DB090);
  v168(v171, v172, 1, v167);
  v174 = *(v233 + 48);
  v175 = v211;
  v176 = *(v211 + 40);
  v177 = v212;
  v168(&v212[v176], 1, 1, v167);
  v242 = v175[15];
  v168(&v177[v242], 1, 1, v167);
  *v177 = v204;
  *(v177 + 1) = v150;
  *(v177 + 2) = v152;
  *(v177 + 3) = v154;
  *(v177 + 4) = v209;
  *(v177 + 5) = v156;
  *(v177 + 6) = v158;
  *(v177 + 7) = v160;
  *(v177 + 8) = v162;
  v178 = v175[7];
  v179 = type metadata accessor for StaticDimension();
  v180 = *(v179 - 8);
  v181 = *(v180 + 32);
  v181(&v177[v178], v243, v179);
  v182 = v235;
  v181(&v177[v175[8]], v235 + v174, v179);
  *&v177[v175[9]] = 0x4008000000000000;
  sub_1000315F8(v234, &v177[v176], &unk_1009732A0, &unk_1007B4FE0);
  *&v177[v175[11]] = v229;
  v183 = &v177[v175[12]];
  v184 = v202;
  *v183 = v203;
  *(v183 + 1) = v184;
  v185 = v236;
  v181(&v177[v175[13]], v236, v179);
  v186 = v237;
  v181(&v177[v175[14]], v237 + v174, v179);
  sub_1000315F8(v238, &v177[v242], &unk_1009732A0, &unk_1007B4FE0);
  *&v177[v175[16]] = ObjectType;
  v187 = &v177[v175[17]];
  *v187 = v166;
  *(v187 + 2) = 0;
  *(v187 + 3) = 0;
  *(v187 + 1) = 0x4024000000000000;
  v188 = *(v180 + 8);
  v188(v186, v179);
  v188(v185 + v174, v179);
  v188(v182, v179);
  v188(v243 + v174, v179);
  v189 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_metrics;
  v190 = v226;
  swift_beginAccess();
  sub_100679EB0(v177, &v190[v189]);
  swift_endAccess();
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  sub_1006771BC();

  if (ShelfHeader.titleAction.getter())
  {

    v191 = ShelfHeader.eyebrowAction.getter();
    v192 = v220;
    if (v191 || ShelfHeader.accessoryAction.getter())
    {

      v193 = 0;
    }

    else
    {
      v193 = 1;
    }
  }

  else
  {
    v193 = 0;
    v192 = v220;
  }

  v190[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView] = v193;
  [*&v190[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_containerView] setUserInteractionEnabled:v193 ^ 1u];
  v194 = v217;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v195 = v219;
  ReadOnlyLens.subscript.getter();

  (*(v218 + 8))(v194, v195);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_10003D4AC(&v248, v244 + 16);
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(&v246, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v244, &unk_1009711D0, &unk_1007B1A10);
  v196 = ShelfHeader.titleAction.getter();
  if (v196)
  {
  }

  *(&v247 + 1) = &type metadata for Bool;
  LOBYTE(v246) = v196 != 0;
  v197 = v221;
  AutomationSemantics.attribute(key:value:)();
  v198 = *(v223 + 8);
  v199 = v224;
  v198(v192, v224);
  sub_10002B894(&v246, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();
  v198(v197, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_10003D4AC(&v248, v244 + 16);
  v200 = v222;
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(&v246, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v244, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_10003D4AC(&v248, v244 + 16);
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(&v246, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v244, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_10003D4AC(&v248, v244 + 16);
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(&v246, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v244, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_10003D4AC(&v248, v244 + 16);
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(&v246, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v244, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_10003D4AC(&v248, v244 + 16);
  static AutomationSemantics.shelf(_:id:parentId:)();
  sub_10002B894(&v246, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v244, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();
  v198(v200, v199);
  [v190 setNeedsLayout];
  return sub_10003D614(&v248);
}

uint64_t sub_100672318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FontSource();
  v52 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_1009903A0, &qword_1007DB090);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_10002849C(&qword_100990F68, &qword_1007DC318);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  sub_100031660(a3, v13, &qword_1009903A0, &qword_1007DB090);
  v17 = type metadata accessor for ShelfHeader.ArtworkType();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v55 = v13;
  v20 = v19(v13, 1, v17);
  v53 = a1;
  v54 = a2;
  if (v20 != 1)
  {
    sub_100031660(v55, v10, &qword_1009903A0, &qword_1007DB090);
    if ((*(v18 + 88))(v10, v17) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v21 = v14;
      v50 = *(v14 + 48);
      if (qword_10096EC40 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for FontUseCase();
      v48 = sub_1000056A8(v22, qword_100990E20);
      v23 = *(v22 - 8);
      v47 = *(v23 + 16);
      v49 = v23 + 16;
      v24 = v51;
      v47(v51, v48, v22);
      LODWORD(v46) = enum case for FontSource.useCase(_:);
      v25 = v52;
      v45 = *(v52 + 104);
      v45(v24);
      v57 = v6;
      v58 = &protocol witness table for FontSource;
      v26 = sub_1000056E0(v56);
      v27 = *(v25 + 16);
      v27(v26, v24, v6);
      StaticDimension.init(_:scaledLike:)();
      v28 = *(v25 + 8);
      v28(v24, v6);
      v47(v24, v48, v22);
      (v45)(v24, v46, v6);
      v57 = v6;
      v58 = &protocol witness table for FontSource;
      v29 = sub_1000056E0(v56);
      v27(v29, v24, v6);
      StaticDimension.init(_:scaledLike:)();
      v28(v24, v6);
      v31 = v53;
      v30 = v54;
      goto LABEL_10;
    }

    (*(v18 + 8))(v10, v17);
  }

  v49 = *(v14 + 48);
  v50 = v14;
  if (qword_10096EC40 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for FontUseCase();
  v47 = sub_1000056A8(v32, qword_100990E20);
  v33 = *(v32 - 8);
  v46 = *(v33 + 16);
  v48 = v33 + 16;
  v34 = v51;
  v46(v51, v47, v32);
  v35 = enum case for FontSource.useCase(_:);
  v36 = v52;
  v45 = *(v52 + 104);
  (v45)(v34, enum case for FontSource.useCase(_:), v6);
  v57 = v6;
  v58 = &protocol witness table for FontSource;
  v37 = sub_1000056E0(v56);
  v38 = *(v36 + 16);
  v38(v37, v34, v6);
  StaticDimension.init(_:scaledLike:)();
  v39 = *(v36 + 8);
  v39(v34, v6);
  v46(v34, v47, v32);
  (v45)(v34, v35, v6);
  v57 = v6;
  v58 = &protocol witness table for FontSource;
  v40 = sub_1000056E0(v56);
  v38(v40, v34, v6);
  StaticDimension.init(_:scaledLike:)();
  v39(v34, v6);
  v31 = v53;
  v30 = v54;
  v21 = v50;
LABEL_10:
  sub_10002B894(v55, &qword_1009903A0, &qword_1007DB090);
  v41 = *(v21 + 48);
  v42 = type metadata accessor for StaticDimension();
  v43 = *(*(v42 - 8) + 32);
  v43(v31, v16, v42);
  return (v43)(v30, &v16[v41], v42);
}

uint64_t sub_10067297C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FontSource();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_1009903A0, &qword_1007DB090);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_10002849C(&qword_100990F68, &qword_1007DC318);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  sub_100031660(a3, v14, &qword_1009903A0, &qword_1007DB090);
  v18 = type metadata accessor for ShelfHeader.ArtworkType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v57 = v14;
  v21 = v20(v14, 1, v18);
  v55 = a1;
  v56 = a2;
  if (v21 != 1)
  {
    sub_100031660(v57, v11, &qword_1009903A0, &qword_1007DB090);
    if ((*(v19 + 88))(v11, v18) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v22 = v17;
      v23 = v15;
      v52 = *(v15 + 48);
      if (qword_10096EC48 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for FontUseCase();
      v50 = sub_1000056A8(v24, qword_100990E38);
      v25 = *(v24 - 8);
      v49 = *(v25 + 16);
      v51 = v25 + 16;
      v49(v8, v50, v24);
      LODWORD(v48) = enum case for FontSource.useCase(_:);
      v27 = v53;
      v26 = v54;
      v47 = *(v53 + 104);
      v47(v8);
      v59 = v26;
      v60 = &protocol witness table for FontSource;
      v28 = sub_1000056E0(v58);
      v29 = *(v27 + 16);
      v29(v28, v8, v26);
      StaticDimension.init(_:scaledLike:)();
      v30 = *(v27 + 8);
      v30(v8, v26);
      v49(v8, v50, v24);
      (v47)(v8, v48, v26);
      v59 = v26;
      v60 = &protocol witness table for FontSource;
      v31 = sub_1000056E0(v58);
      v29(v31, v8, v26);
      StaticDimension.init(_:scaledLike:)();
      v30(v8, v26);
      v33 = v55;
      v32 = v56;
      goto LABEL_10;
    }

    (*(v19 + 8))(v11, v18);
  }

  v51 = *(v15 + 48);
  v52 = v15;
  if (qword_10096EC48 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for FontUseCase();
  v49 = sub_1000056A8(v34, qword_100990E38);
  v35 = *(v34 - 8);
  v48 = *(v35 + 16);
  v50 = v35 + 16;
  v48(v8, v49, v34);
  v36 = enum case for FontSource.useCase(_:);
  v37 = v53;
  v38 = v54;
  v47 = *(v53 + 104);
  (v47)(v8, enum case for FontSource.useCase(_:), v54);
  v59 = v38;
  v60 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(v58);
  v40 = *(v37 + 16);
  v40(v39, v8, v38);
  StaticDimension.init(_:scaledLike:)();
  v41 = *(v37 + 8);
  v41(v8, v38);
  v48(v8, v49, v34);
  (v47)(v8, v36, v38);
  v59 = v38;
  v60 = &protocol witness table for FontSource;
  v42 = sub_1000056E0(v58);
  v40(v42, v8, v38);
  StaticDimension.init(_:scaledLike:)();
  v41(v8, v38);
  v22 = v17;
  v33 = v55;
  v32 = v56;
  v23 = v52;
LABEL_10:
  sub_10002B894(v57, &qword_1009903A0, &qword_1007DB090);
  v43 = *(v23 + 48);
  v44 = type metadata accessor for StaticDimension();
  v45 = *(*(v44 - 8) + 32);
  v45(v33, v22, v44);
  return (v45)(v32, &v22[v43], v44);
}

id sub_100672FD0()
{
  result = [objc_opt_self() configurationWithScale:1];
  qword_100990DE0 = result;
  return result;
}

void sub_100673084(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = objc_allocWithZone(NSAttributedString);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithString:v6];

  *a4 = v7;
}

uint64_t sub_10067314C(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DynamicTypeButton();
  if (*a2 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v8, a3);
  (*(v9 + 16))(v11, v12, v8);
  result = DynamicTypeButton.__allocating_init(useCase:)();
  *a4 = result;
  return result;
}

char *sub_100673308(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v179 = a4;
  v178 = a3;
  v177 = a2;
  v176 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v6 - 8);
  v186 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v183 = &v158 - v9;
  v182 = sub_10002849C(&qword_100990F68, &qword_1007DC318);
  __chkstk_darwin(v182);
  v185 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v184 = &v158 - v12;
  __chkstk_darwin(v13);
  v192 = &v158 - v14;
  __chkstk_darwin(v15);
  v191 = &v158 - v16;
  __chkstk_darwin(v17);
  v190 = &v158 - v18;
  __chkstk_darwin(v19);
  v189 = &v158 - v20;
  v21 = sub_10002849C(&qword_1009903A0, &qword_1007DB090);
  __chkstk_darwin(v21 - 8);
  v158 = &v158 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v160 = &v158 - v24;
  __chkstk_darwin(v25);
  v193 = &v158 - v26;
  __chkstk_darwin(v27);
  v181 = &v158 - v28;
  v173 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v173);
  v174 = (&v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  top = COERCE_DOUBLE(type metadata accessor for DirectionalTextAlignment());
  v170 = *(*&top - 8);
  __chkstk_darwin(*&top);
  *&v172 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v31 - 8);
  v169 = &v158 - v32;
  v33 = type metadata accessor for FontUseCase();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v188 = &v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Separator.Position();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v158 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Separator();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v158 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_containerView;
  *&v5[v44] = [objc_allocWithZone(UIView) init];
  v180.super.isa = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_separatorView;
  (*(v37 + 104))(v39, enum case for Separator.Position.top(_:), v36);
  v196 = type metadata accessor for ZeroDimension();
  v197 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v195);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v45 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v46 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v47 = *(v41 + 40);
  v48 = v45;
  v47(&v45[v46], v43, v40);
  swift_endAccess();

  *&v5[v180.super.isa] = v48;
  v49 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton;
  type metadata accessor for DynamicTypeButton();
  if (qword_10096EC40 != -1)
  {
    swift_once();
  }

  v50 = sub_1000056A8(v33, qword_100990E20);
  v168 = v34;
  v51 = *(v34 + 16);
  v166 = *&v50;
  v180.super.isa = v51;
  (v51)(v188);
  *&v5[v49] = DynamicTypeButton.__allocating_init(useCase:)();
  v164 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork;
  *&v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork] = 0;
  v52 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkType;
  v53 = type metadata accessor for ShelfHeader.ArtworkType();
  v161 = *(v53 - 8);
  v54 = *(v161 + 56);
  v165 = v52;
  v54(&v52[v5], 1, 1, v53);
  v55 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkView;
  type metadata accessor for ArtworkView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v55] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v57 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton;
  if (qword_10096EC48 != -1)
  {
    swift_once();
  }

  v163 = sub_1000056A8(v33, qword_100990E38);
  (v180.super.isa)(v188);
  *&v5[v57] = DynamicTypeButton.__allocating_init(useCase:)();
  v162 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtwork;
  *&v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtwork] = 0;
  v58 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkType;
  v159 = v53;
  v54(&v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkType], 1, 1, v53);
  v59 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkView;
  *&v5[v59] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v60 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton;
  if (qword_10096EC58 != -1)
  {
    swift_once();
  }

  v167 = sub_1000056A8(v33, qword_100990E68);
  isa = v180.super.isa;
  (v180.super.isa)(v188);
  *&v5[v60] = DynamicTypeButton.__allocating_init(useCase:)();
  v62 = &v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
  *v62 = 0;
  *(v62 + 1) = 0;
  v63 = &v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction];
  *v63 = 0;
  *(v63 + 1) = 0;
  v64 = &v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction];
  *v64 = 0;
  *(v64 + 1) = 0;
  v65 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_subtitleLabel;
  v66 = v182;
  v67 = v168;
  v68 = isa;
  if (qword_10096EC50 != -1)
  {
    swift_once();
  }

  v69 = sub_1000056A8(v33, qword_100990E50);
  v70 = v169;
  v68(v169, v69, v33);
  (*(v67 + 56))(v70, 0, 1, v33);
  (*(*&v170 + 104))(COERCE_CGFLOAT(*&v172), enum case for DirectionalTextAlignment.none(_:), COERCE_CGFLOAT(*&top));
  v71 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v65] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v72 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_configuration;
  v73 = type metadata accessor for ShelfHeader.Configuration();
  (*(*(v73 - 8) + 56))(&v5[v72], 1, 1, v73);
  v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch] = 0;
  v74 = *&v164[v5];
  v75 = v165;
  swift_beginAccess();
  v76 = v181;
  sub_100031660(v75 + v5, v181, &qword_1009903A0, &qword_1007DB090);
  v77 = *&v162[v5];
  swift_beginAccess();
  sub_100031660(&v5[v58], v193, &qword_1009903A0, &qword_1007DB090);
  v78 = objc_opt_self();
  v168 = v77;

  v188 = v74;

  v79 = [v78 currentTraitCollection];
  bottom = UIEdgeInsetsZero.bottom;
  v81 = FontUseCase.makeFontDescriptor(compatibleWith:)(v79).super.isa;
  [(objc_class *)v81 pointSize];
  v83 = v82;
  v84 = objc_opt_self();
  v164 = v81;
  v165 = [v84 fontWithDescriptor:v81 size:v83];
  [v165 lineHeight];
  v169 = v85;
  sub_100672318(v189, v189 + *(v66 + 48), v76);
  v86 = FontUseCase.makeFontDescriptor(compatibleWith:)(v79).super.isa;
  [(objc_class *)v86 pointSize];
  v162 = v86;
  v163 = [v84 fontWithDescriptor:v86 size:?];
  [v163 lineHeight];
  v170 = v87;
  sub_10067297C(v190, v190 + *(v66 + 48), v193);
  v180.super.isa = v79;
  v88 = [(objc_class *)v79 preferredContentSizeCategory];
  LOBYTE(v76) = static UIContentSizeCategory.> infix(_:_:)();

  if ((v76 & 1) == 0 || (v89 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v90 = v160;
    sub_100031660(v193, v160, &qword_1009903A0, &qword_1007DB090);
    v91 = v161;
    v92 = v159;
    v89 = 7.0;
    if ((*(v161 + 48))(v90, 1, v159) != 1)
    {
      v93 = v158;
      sub_100031660(v90, v158, &qword_1009903A0, &qword_1007DB090);
      v94 = (*(v91 + 88))(v93, v92);
      if (v94 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v89 = 5.0;
        if (v94 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v161 + 8))(v93, v92);
          v89 = 7.0;
        }
      }
    }

    sub_10002B894(v90, &qword_1009903A0, &qword_1007DB090);
  }

  v166 = v89;
  v95.super.isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v180).super.isa;
  [(objc_class *)v95.super.isa pointSize];
  v96 = [v84 fontWithDescriptor:v95.super.isa size:?];
  [v96 lineHeight];
  v98 = v97;
  top = UIEdgeInsetsZero.top;
  static UIEdgeInsets.vertical(top:bottom:)();
  v167 = v99;
  v161 = v100;
  v160 = v101;
  v159 = v102;
  static UIEdgeInsets.vertical(top:bottom:)();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v111 = v189;
  sub_100031660(v189, v191, &qword_100990F68, &qword_1007DC318);
  sub_100031660(v111, v192, &qword_100990F68, &qword_1007DC318);
  v172 = bottom;
  if (v188)
  {
    Artwork.size.getter();
    v112 = v183;
    AspectRatio.init(_:_:)();
    v113 = 0;
  }

  else
  {
    v113 = 1;
    v112 = v183;
  }

  v114 = type metadata accessor for AspectRatio();
  v115 = *(*(v114 - 8) + 56);
  v115(v112, v113, 1, v114);
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  v118 = v190;
  sub_100031660(v190, v184, &qword_100990F68, &qword_1007DC318);
  sub_100031660(v118, v185, &qword_100990F68, &qword_1007DC318);
  v175 = v5;
  if (v168)
  {
    Artwork.size.getter();
    v119 = v186;
    AspectRatio.init(_:_:)();

    v120 = 0;
  }

  else
  {

    v120 = 1;
    v119 = v186;
  }

  v121 = v182;

  sub_10002B894(v190, &qword_100990F68, &qword_1007DC318);
  sub_10002B894(v189, &qword_100990F68, &qword_1007DC318);
  sub_10002B894(v193, &qword_1009903A0, &qword_1007DB090);
  sub_10002B894(v181, &qword_1009903A0, &qword_1007DB090);
  v115(v119, v120, 1, v114);
  v122 = v170;
  v123 = v170 - v98;
  v124 = *(v121 + 48);
  v125 = v173;
  v126 = *(v173 + 40);
  v127 = v174;
  v115(v174 + v126, 1, 1, v114);
  v193 = v125[15];
  v115(v127 + v193, 1, 1, v114);
  v128 = v161;
  *v127 = v167;
  v127[1] = v128;
  v129 = v159;
  v127[2] = v160;
  v127[3] = v129;
  v127[4] = v169;
  v127[5] = v104;
  v127[6] = v106;
  v127[7] = v108;
  v127[8] = v110;
  v130 = v125[7];
  v131 = type metadata accessor for StaticDimension();
  v132 = *(v131 - 8);
  v133 = *(v132 + 32);
  v133(v127 + v130, v191, v131);
  v133(v127 + v125[8], v192 + v124, v131);
  *(v127 + v125[9]) = 0x4008000000000000;
  sub_1000315F8(v183, v127 + v126, &unk_1009732A0, &unk_1007B4FE0);
  *(v127 + v125[11]) = v122;
  v134 = (v127 + v125[12]);
  *v134 = top;
  v134[1] = left;
  v134[2] = v172;
  v134[3] = right;
  v135 = v184;
  v133(v127 + v125[13], v184, v131);
  v136 = v185;
  v133(v127 + v125[14], v185 + v124, v131);
  sub_1000315F8(v186, v127 + v193, &unk_1009732A0, &unk_1007B4FE0);
  *(v127 + v125[16]) = v166;
  v137 = v127 + v125[17];
  *v137 = v123;
  *(v137 + 2) = 0;
  *(v137 + 3) = 0;
  *(v137 + 1) = 0x4024000000000000;
  v138 = *(v132 + 8);
  v138(v136, v131);
  v138(v135 + v124, v131);
  v138(v192, v131);
  v138(v191 + v124, v131);
  v139 = v175;
  sub_100679FD4(v127, &v175[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_metrics], type metadata accessor for ShelfHeaderLayout.Metrics);
  v140 = ObjectType;
  v194.receiver = v139;
  v194.super_class = ObjectType;
  v141 = objc_msgSendSuper2(&v194, "initWithFrame:", v176, v177, v178, v179);
  v142 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton;
  v143 = *&v141[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton];
  sub_100005744(0, &qword_10097CD40, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v144 = v141;
  v145 = v143;
  v146 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v145 addAction:v146 forControlEvents:0x2000];

  v147 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton;
  v148 = *&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v149 = v148;
  v150 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v149 addAction:v150 forControlEvents:0x2000];

  v151 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton;
  v152 = *&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v153 = v152;
  v154 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v153 addAction:v154 forControlEvents:0x2000];

  v155 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_containerView;
  [*&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_containerView] addSubview:*&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_separatorView]];
  [*&v144[v155] addSubview:*&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkView]];
  [*&v144[v155] addSubview:*&v144[v151]];
  [*&v144[v155] addSubview:*&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkView]];
  [*&v144[v155] addSubview:*&v141[v142]];
  [*&v144[v155] addSubview:*&v144[v147]];
  [*&v144[v155] addSubview:*&v144[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_subtitleLabel]];
  [v144 addSubview:*&v144[v155]];
  sub_100674B50();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_1007B1890;
  *(v156 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v156 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v156 + 48) = type metadata accessor for UITraitLegibilityWeight();
  *(v156 + 56) = &protocol witness table for UITraitLegibilityWeight;
  v196 = v140;
  v195 = v144;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(&v195);
  return v144;
}

void sub_100674AB8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = &Strong[*a3];
    v7 = *v6;
    if (*v6)
    {
      v8 = v6[1];
      sub_10000827C(*v6, v8);

      v7();
      sub_10001F63C(v7, v8);
    }

    else
    {
    }
  }
}

uint64_t sub_100674B50()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v2 - 8);
  v118 = &v96 - v3;
  v4 = sub_10002849C(&unk_100987100, &qword_1007CF950);
  __chkstk_darwin(v4 - 8);
  v117 = &v96 - v5;
  v115 = type metadata accessor for UIButton.Configuration();
  v119 = *(v115 - 8);
  __chkstk_darwin(v115);
  v101 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v96 - v8;
  __chkstk_darwin(v9);
  v11 = &v96 - v10;
  v12 = sub_10002849C(&unk_100984380, &qword_1007C4850);
  __chkstk_darwin(v12 - 8);
  v99 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v96 - v15;
  __chkstk_darwin(v16);
  v18 = &v96 - v17;
  __chkstk_darwin(v19);
  v102 = &v96 - v20;
  v21 = type metadata accessor for ShelfHeader.Configuration();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_separatorView];
  v26 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_configuration;
  swift_beginAccess();
  v116 = v22;
  v29 = *(v22 + 48);
  v27 = v22 + 48;
  v28 = v29;
  v30 = 1;
  v31 = v29(&v1[v26], 1, v21);
  v121 = v29;
  if (!v31)
  {
    v32 = v116;
    (*(v116 + 16))(v24, &v1[v26], v21);
    v33 = ShelfHeader.Configuration.includeSeparator.getter();
    v34 = v32;
    v28 = v121;
    (*(v34 + 8))(v24, v21);
    v30 = v33 ^ 1;
  }

  [v25 setHidden:v30 & 1];
  v120 = v27;
  v35 = v28(&v1[v26], 1, v21);
  v100 = v24;
  if (!v35)
  {
    v36 = v116;
    (*(v116 + 16))(v24, &v1[v26], v21);
    ShelfHeader.Configuration.eyebrowImageColor.getter();
    (*(v36 + 8))(v24, v21);
  }

  ArtworkView.artworkTintColor.setter();
  v37 = *&v1[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton];
  v114 = v26;
  v38 = &v1[v26];
  v39 = v102;
  sub_100031660(v38, v102, &unk_100984380, &qword_1007C4850);
  v40 = *&v1[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction];
  v98 = [v1 traitCollection];
  static UIButton.Configuration.plain()();
  UIButton.Configuration.titlePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  sub_100031660(v39, v18, &unk_100984380, &qword_1007C4850);
  v41 = v21;
  if (v121(v18, 1, v21) == 1)
  {
    sub_10002B894(v18, &unk_100984380, &qword_1007C4850);
    v42 = v112;
  }

  else
  {
    v43 = ShelfHeader.Configuration.eyebrowColor.getter();
    (*(v116 + 8))(v18, v21);
    v42 = v112;
    if (v43)
    {
      goto LABEL_11;
    }
  }

  if (qword_10096EC60 != -1)
  {
    swift_once();
  }

  v44 = qword_100990E80;
LABEL_11:
  v97 = v41;
  UIButton.Configuration.baseForegroundColor.setter();
  v45 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096EC40 != -1)
  {
    swift_once();
  }

  v46 = v40 != 0;
  v103 = type metadata accessor for FontUseCase();
  sub_1000056A8(v103, qword_100990E20);
  v47 = v98;
  v111 = v45;
  v48 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *(swift_allocObject() + 16) = v48;
  v49 = v48;
  v50 = v117;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v51 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v110 = v51;
  v109 = v53;
  v108 = v52 + 56;
  (v53)(v50, 0, 1);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v54 = v118;
  v55 = v119;
  v56 = *(v119 + 16);
  v57 = v115;
  v107 = v119 + 16;
  v106 = v56;
  v56(v118, v11, v115);
  v58 = *(v55 + 56);
  v105 = v55 + 56;
  v104 = v58;
  v58(v54, 0, 1, v57);
  UIButton.configuration.setter();
  [v37 setUserInteractionEnabled:v46];
  [v37 _setWantsAccessibilityUnderline:v46];

  v59 = *(v55 + 8);
  v119 = v55 + 8;
  v112 = v59;
  (v59)(v11, v57);
  sub_10002B894(v102, &unk_100984380, &qword_1007C4850);
  v60 = *&v1[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton];
  v61 = v113;
  sub_100031660(&v1[v114], v113, &unk_100984380, &qword_1007C4850);
  v62 = *&v1[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
  v63 = [v1 traitCollection];
  static UIButton.Configuration.plain()();
  UIButton.Configuration.titlePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  v64 = v61;
  v65 = v99;
  sub_100031660(v64, v99, &unk_100984380, &qword_1007C4850);
  v66 = v97;
  if (v121(v65, 1, v97) == 1)
  {
    sub_10002B894(v65, &unk_100984380, &qword_1007C4850);
  }

  else
  {
    v67 = ShelfHeader.Configuration.titleColor.getter();
    (*(v116 + 8))(v65, v66);
    if (v67)
    {
      goto LABEL_19;
    }
  }

  if (qword_10096EC68 != -1)
  {
    swift_once();
  }

  v68 = qword_100990E88;
LABEL_19:
  UIButton.Configuration.baseForegroundColor.setter();
  v102 = objc_opt_self();
  v69 = [v102 clearColor];
  v70 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v70(v122, 0);
  v71 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v71(v122, 0);
  if (qword_10096EC48 != -1)
  {
    swift_once();
  }

  v72 = v62 != 0;
  sub_1000056A8(v103, qword_100990E38);
  v73 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *(swift_allocObject() + 16) = v73;
  v74 = v73;
  v75 = v117;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v109(v75, 0, 1, v110);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v76 = v118;
  v77 = v115;
  v106(v118, v42, v115);
  v104(v76, 0, 1, v77);
  UIButton.configuration.setter();
  [v60 setNeedsUpdateConfiguration];
  [v60 setContentHorizontalAlignment:4];
  [v60 setUserInteractionEnabled:v72];
  [v60 _setWantsAccessibilityUnderline:v72];

  (v112)(v42, v77);
  sub_10002B894(v113, &unk_100984380, &qword_1007C4850);
  v78 = v114;
  v79 = v121(&v1[v114], 1, v66);
  v80 = v101;
  if (v79)
  {
    v81 = v100;
  }

  else
  {
    v82 = v116;
    v81 = v100;
    (*(v116 + 16))(v100, &v1[v78], v66);
    ShelfHeader.Configuration.titleImageColor.getter();
    (*(v82 + 8))(v81, v66);
  }

  ArtworkView.artworkTintColor.setter();
  static UIButton.Configuration.plain()();
  UIButton.Configuration.titlePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  if (v121(&v1[v78], 1, v66) || (v84 = v116, (*(v116 + 16))(v81, &v1[v78], v66), v85 = ShelfHeader.Configuration.accessoryColor.getter(), (*(v84 + 8))(v81, v66), !v85))
  {
    v83 = [v102 systemBlueColor];
  }

  UIButton.Configuration.baseForegroundColor.setter();
  if (qword_10096EC58 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v103, qword_100990E68);
  v86 = [v1 traitCollection];
  v87 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  *(swift_allocObject() + 16) = v87;
  v88 = v87;
  v89 = v117;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v109(v89, 0, 1, v110);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v90 = v118;
  v106(v118, v80, v77);
  v104(v90, 0, 1, v77);
  UIButton.configuration.setter();
  v91 = *&v1[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_subtitleLabel];
  if (v121(&v1[v78], 1, v66) || (v93 = v78, v94 = v116, (*(v116 + 16))(v81, &v1[v93], v66), v92 = ShelfHeader.Configuration.subtitleColor.getter(), (*(v94 + 8))(v81, v66), !v92))
  {
    if (qword_10096EC70 != -1)
    {
      swift_once();
    }

    v92 = qword_100990E90;
  }

  [v91 setTextColor:v92];

  [v1 setNeedsLayout];
  return (v112)(v80, v77);
}

uint64_t sub_100675B14()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&unk_100984380, &qword_1007C4850);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_10002849C(&qword_1009903A0, &qword_1007DB090);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v24 - v7;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, "prepareForReuse", v6);
  v9 = &v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction];
  v10 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction];
  v11 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction + 8];
  *v9 = 0;
  *(v9 + 1) = 0;
  sub_10001F63C(v10, v11);
  [*&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton] setAttributedTitle:0 forState:0];
  *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork] = 0;

  [*&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkView] setHidden:1];
  v12 = type metadata accessor for ShelfHeader.ArtworkType();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  sub_1000315F8(v8, &v0[v13], &qword_1009903A0, &qword_1007DB090);
  swift_endAccess();
  v14 = &v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction];
  v15 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction];
  v16 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction + 8];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_10001F63C(v15, v16);
  v17 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton];
  [v17 setTitle:0 forState:0];
  [v17 setImage:0 forState:0];
  v18 = &v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
  v19 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
  v20 = *&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction + 8];
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_10001F63C(v19, v20);
  [*&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton] setAttributedTitle:0 forState:0];
  [*&v0[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_subtitleLabel] setText:0];
  v21 = type metadata accessor for ShelfHeader.Configuration();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  v22 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_1006786D0(v4, &v0[v22]);
  swift_endAccess();
  sub_100674B50();
  return sub_10002B894(v4, &unk_100984380, &qword_1007C4850);
}

double sub_100675E70@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_metrics;
  swift_beginAccess();
  v69 = v5;
  sub_10067860C(v2 + v6, v5);
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_separatorView);
  v86[3] = type metadata accessor for SeparatorView(0);
  v86[4] = &protocol witness table for UIView;
  v86[0] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton);
  v9 = v7;
  if (([v8 isHidden] & 1) != 0 || !objc_msgSend(v8, "hasContent"))
  {
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
  }

  else
  {
    *(&v84 + 1) = type metadata accessor for DynamicTypeButton();
    v85 = &protocol witness table for UIButton;
    *&v83 = v8;
    v10 = v8;
  }

  v11 = *(v2 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkView);
  v12 = type metadata accessor for ArtworkView();
  v82[3] = v12;
  v82[4] = &protocol witness table for UIView;
  v82[0] = v11;
  v13 = *(v2 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton);
  v14 = type metadata accessor for DynamicTypeButton();
  v81[3] = v14;
  v81[4] = &protocol witness table for UIButton;
  v80[4] = &protocol witness table for UIView;
  v81[0] = v13;
  v15 = *(v2 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkView);
  v80[3] = v12;
  v80[0] = v15;
  v16 = v11;
  v17 = v13;
  v18 = v15;
  v19 = sub_100676C04();
  v20 = v19;
  if (v19)
  {
    v19 = type metadata accessor for DynamicTypeLabel();
    v21 = &protocol witness table for UILabel;
  }

  else
  {
    v21 = 0;
    v79[1] = 0;
    v79[2] = 0;
  }

  v79[0] = v20;
  v79[3] = v19;
  v79[4] = v21;
  v22 = *(v2 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton);
  if (([v22 isHidden] & 1) != 0 || !objc_msgSend(v22, "hasContent"))
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v14;
    v78 = &protocol witness table for UIView;
    *&v76 = v22;
    v23 = v22;
  }

  v24 = v68;
  sub_10067860C(v69, v68);
  sub_100031660(v86, v70, &qword_100975610, &qword_1007B5690);
  v25 = v71;
  if (v71)
  {
    v26 = v72;
    sub_10002A400(v70, v71);
    v27 = type metadata accessor for Optional();
    v28 = *(v27 - 8);
    __chkstk_darwin(v27);
    v30 = &v67 - v29;
    LayoutView.nilIfHidden()();
    v31 = *(v25 - 8);
    if ((*(v31 + 48))(v30, 1, v25) == 1)
    {
      (*(v28 + 8))(v30, v27);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v25;
      v75 = v26;
      v32 = sub_1000056E0(&v73);
      (*(v31 + 32))(v32, v30, v25);
    }

    sub_100007000(v70);
  }

  else
  {
    sub_10002B894(v70, &qword_100975610, &qword_1007B5690);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v33 = type metadata accessor for ShelfHeaderLayout(0);
  v34 = v24 + v33[5];
  v35 = v74;
  *v34 = v73;
  *(v34 + 16) = v35;
  *(v34 + 32) = v75;
  sub_100031660(&v83, v24 + v33[6], &unk_10097B860, &qword_1007B49E0);
  sub_100031660(v82, v70, &qword_100975610, &qword_1007B5690);
  v36 = v71;
  if (v71)
  {
    v37 = v72;
    sub_10002A400(v70, v71);
    v38 = type metadata accessor for Optional();
    v39 = *(v38 - 8);
    __chkstk_darwin(v38);
    v41 = &v67 - v40;
    LayoutView.nilIfHidden()();
    v42 = *(v36 - 8);
    if ((*(v42 + 48))(v41, 1, v36) == 1)
    {
      (*(v39 + 8))(v41, v38);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v36;
      v75 = v37;
      v43 = sub_1000056E0(&v73);
      (*(v42 + 32))(v43, v41, v36);
    }

    sub_100007000(v70);
  }

  else
  {
    sub_10002B894(v70, &qword_100975610, &qword_1007B5690);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v44 = v24 + v33[7];
  v45 = v74;
  *v44 = v73;
  *(v44 + 16) = v45;
  *(v44 + 32) = v75;
  sub_10002C0AC(v81, v24 + v33[8]);
  sub_100031660(v80, v70, &qword_100975610, &qword_1007B5690);
  v46 = v71;
  if (v71)
  {
    v47 = v72;
    sub_10002A400(v70, v71);
    v48 = type metadata accessor for Optional();
    v49 = *(v48 - 8);
    __chkstk_darwin(v48);
    v51 = &v67 - v50;
    LayoutView.nilIfHidden()();
    v52 = *(v46 - 8);
    if ((*(v52 + 48))(v51, 1, v46) == 1)
    {
      (*(v49 + 8))(v51, v48);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v46;
      v75 = v47;
      v53 = sub_1000056E0(&v73);
      (*(v52 + 32))(v53, v51, v46);
    }

    sub_100007000(v70);
  }

  else
  {
    sub_10002B894(v70, &qword_100975610, &qword_1007B5690);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v54 = v24 + v33[9];
  v55 = v74;
  *v54 = v73;
  *(v54 + 16) = v55;
  *(v54 + 32) = v75;
  sub_100031660(v79, v24 + v33[10], &unk_10097B860, &qword_1007B49E0);
  sub_100031660(&v76, v70, &qword_100975610, &qword_1007B5690);
  v56 = v71;
  if (v71)
  {
    v57 = v72;
    sub_10002A400(v70, v71);
    v58 = type metadata accessor for Optional();
    v67 = &v67;
    v59 = *(v58 - 8);
    __chkstk_darwin(v58);
    v61 = &v67 - v60;
    LayoutView.nilIfHidden()();
    v62 = *(v56 - 8);
    if ((*(v62 + 48))(v61, 1, v56) == 1)
    {
      sub_100678670(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10002B894(&v76, &qword_100975610, &qword_1007B5690);
      sub_10002B894(v79, &unk_10097B860, &qword_1007B49E0);
      sub_10002B894(v80, &qword_100975610, &qword_1007B5690);
      sub_100007000(v81);
      sub_10002B894(v82, &qword_100975610, &qword_1007B5690);
      sub_10002B894(&v83, &unk_10097B860, &qword_1007B49E0);
      sub_10002B894(v86, &qword_100975610, &qword_1007B5690);
      (*(v59 + 8))(v61, v58);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v56;
      v75 = v57;
      v63 = sub_1000056E0(&v73);
      (*(v62 + 32))(v63, v61, v56);
      sub_100678670(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10002B894(&v76, &qword_100975610, &qword_1007B5690);
      sub_10002B894(v79, &unk_10097B860, &qword_1007B49E0);
      sub_10002B894(v80, &qword_100975610, &qword_1007B5690);
      sub_100007000(v81);
      sub_10002B894(v82, &qword_100975610, &qword_1007B5690);
      sub_10002B894(&v83, &unk_10097B860, &qword_1007B49E0);
      sub_10002B894(v86, &qword_100975610, &qword_1007B5690);
    }

    sub_100007000(v70);
  }

  else
  {
    sub_100678670(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10002B894(&v76, &qword_100975610, &qword_1007B5690);
    sub_10002B894(v79, &unk_10097B860, &qword_1007B49E0);
    sub_10002B894(v80, &qword_100975610, &qword_1007B5690);
    sub_100007000(v81);
    sub_10002B894(v82, &qword_100975610, &qword_1007B5690);
    sub_10002B894(&v83, &unk_10097B860, &qword_1007B49E0);
    sub_10002B894(v86, &qword_100975610, &qword_1007B5690);
    sub_10002B894(v70, &qword_100975610, &qword_1007B5690);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v64 = v24 + v33[11];
  result = *&v73;
  v66 = v74;
  *v64 = v73;
  *(v64 + 16) = v66;
  *(v64 + 32) = v75;
  return result;
}

void *sub_100676C04()
{
  if ([v0 isHidden])
  {
    return 0;
  }

  v1 = [v0 text];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      goto LABEL_9;
    }
  }

  v7 = [v0 attributedText];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [v7 length];

  if (v9 < 1)
  {
    return 0;
  }

LABEL_9:
  v10 = v0;
  return v0;
}

uint64_t sub_100676D1C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v29 = a4;
  v30 = a5;
  v9 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v9 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_1009903A0, &qword_1007DB090);
  __chkstk_darwin(v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  v18 = type metadata accessor for ShelfHeader.ArtworkType();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100031660(a2, v17, &qword_1009903A0, &qword_1007DB090);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      v24 = *(v19 + 32);
      v27[1] = v11;
      v28 = v24;
      v24(v21, v17, v18);
      *(v5 + *a3) = a1;
      swift_retain_n();

      [*(v5 + *v29) setHidden:0];
      Artwork.style.getter();
      ArtworkView.style.setter();

      v28(v14, v21, v18);
      (*(v19 + 56))(v14, 0, 1, v18);
      v25 = *v30;
      swift_beginAccess();
      v23 = v5 + v25;
      goto LABEL_6;
    }

    sub_10002B894(v17, &qword_1009903A0, &qword_1007DB090);
  }

  *(v5 + *a3) = 0;

  [*(v5 + *v29) setHidden:1];
  (*(v19 + 56))(v14, 1, 1, v18);
  v22 = *v30;
  swift_beginAccess();
  v23 = v5 + v22;
LABEL_6:
  sub_1000315F8(v14, v23, &qword_1009903A0, &qword_1007DB090);
  return swift_endAccess();
}

uint64_t sub_100677084(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v5 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    ShelfLayoutContext.shelf.getter();
    a3(v8, ObjectType, v10);
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_1006771BC()
{
  v1 = type metadata accessor for Artwork.Crop();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork))
  {

    Artwork.size.getter();
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v2 + 8))(v4, v1);
    Artwork.config(_:mode:prefersLayeredImage:)();
    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  if (*(v0 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtwork))
  {

    Artwork.size.getter();
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v2 + 8))(v4, v1);
    Artwork.config(_:mode:prefersLayeredImage:)();
    type metadata accessor for ArtworkView();
    sub_10009A098();
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

void sub_1006773F8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView] == 1)
  {
    v6 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch;
    v7 = *&v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch];
    if (!v7 || [v7 phase] == 3 || (v8 = *&v2[v6]) != 0 && objc_msgSend(v8, "phase") == 4)
    {
      v9 = sub_10066D4C4(a1);
      if (v9)
      {
        v10 = *&v2[v6];
        *&v2[v6] = v9;
        v11 = v9;

        [v2 alpha];
        if (v12 == 0.5)
        {
        }

        else
        {
          v14 = objc_opt_self();
          v15 = swift_allocObject();
          *(v15 + 16) = v2;
          *(v15 + 24) = 0x3FE0000000000000;
          aBlock[4] = sub_10067A05C;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100007A08;
          aBlock[3] = &unk_1008CD960;
          v16 = _Block_copy(aBlock);
          v17 = v2;

          [v14 animateWithDuration:4 delay:v16 options:0 animations:0.2 completion:0.0];

          _Block_release(v16);
        }

        sub_100005744(0, &qword_100981660, UITouch_ptr);
        sub_10008DB40();
        v13.super.isa = Set._bridgeToObjectiveC()().super.isa;
        objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v2, ObjectType);
      }

      else
      {
        sub_100005744(0, &qword_100981660, UITouch_ptr);
        sub_10008DB40();
        v13.super.isa = Set._bridgeToObjectiveC()().super.isa;
        v21.receiver = v2;
        v21.super_class = ObjectType;
        objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
      }
    }

    else
    {
      sub_100005744(0, &qword_100981660, UITouch_ptr);
      sub_10008DB40();
      v13.super.isa = Set._bridgeToObjectiveC()().super.isa;
      objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v13.super.isa, a2, v2, ObjectType, v19.receiver, v19.super_class);
    }
  }

  else
  {
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v13.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
  }
}

void sub_1006776F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v14.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v6 = *&v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch];
  if (!v6)
  {
LABEL_11:
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v14.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v21.receiver = v2;
    v21.super_class = ObjectType;
    objc_msgSendSuper2(&v21, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v7 = v6;
  if ((sub_100296044(v7, a1) & 1) == 0)
  {

    goto LABEL_11;
  }

  [v7 locationInView:v2];
  v9 = v8;
  v11 = v10;
  [v2 bounds];
  v23.x = v9;
  v23.y = v11;
  if (CGRectContainsPoint(v24, v23))
  {
    v12 = 0.5;
  }

  else
  {
    v12 = 1.0;
  }

  [v2 alpha];
  if (v13 == v12)
  {
  }

  else
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = v12;
    aBlock[4] = sub_10067A05C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CD910;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    [v15 animateWithDuration:4 delay:v17 options:0 animations:0.2 completion:0.0];

    _Block_release(v17);
  }

  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  v14.super.isa = Set._bridgeToObjectiveC()().super.isa;
  objc_msgSendSuper2(&v19, "touchesMoved:withEvent:", v14.super.isa, a2, v2, ObjectType);
LABEL_14:
}

double sub_1006779BC(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

void sub_100677A6C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v19.receiver = v2;
    v19.super_class = ObjectType;
    objc_msgSendSuper2(&v19, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v6 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch;
  v7 = *&v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch];
  if (!v7)
  {
LABEL_8:
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v18.receiver = v2;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v8 = v7;
  if ((sub_100296044(v8, a1) & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = *&v2[v6];
  *&v2[v6] = 0;

  [v2 alpha];
  if (v10 == 1.0)
  {
  }

  else
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = 0x3FF0000000000000;
    aBlock[4] = sub_10067A05C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CD8C0;
    v14 = _Block_copy(aBlock);
    v15 = v2;

    [v12 animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:0.0];

    _Block_release(v14);
  }

  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
  objc_msgSendSuper2(&v16, "touchesCancelled:withEvent:", v11.super.isa, a2, v2, ObjectType);
LABEL_11:
}

void sub_100677CF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v23.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v27.receiver = v3;
    v27.super_class = ObjectType;
    objc_msgSendSuper2(&v27, "touchesEnded:withEvent:", v23.super.isa, a2, v24.receiver, v24.super_class);
    goto LABEL_13;
  }

  v7 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch;
  v8 = *&v3[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch];
  if (!v8)
  {
LABEL_12:
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v23.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v26.receiver = v3;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "touchesEnded:withEvent:", v23.super.isa, a2, v24.receiver, v24.super_class);
    goto LABEL_13;
  }

  v9 = v8;
  if ((sub_100296044(v9, a1) & 1) == 0)
  {

    goto LABEL_12;
  }

  v10 = *&v3[v7];
  *&v3[v7] = 0;

  [v3 alpha];
  if (v11 != 1.0)
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = 0x3FF0000000000000;
    aBlock[4] = sub_100309940;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CD870;
    v14 = _Block_copy(aBlock);
    v15 = v3;

    [v12 animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:0.0];
    _Block_release(v14);
  }

  [v9 locationInView:v3];
  v17 = v16;
  v19 = v18;
  [v3 bounds];
  v28.x = v17;
  v28.y = v19;
  if (CGRectContainsPoint(v29, v28))
  {
    v20 = *&v3[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction];
    if (v20)
    {
      v21 = *&v3[OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction + 8];

      v20(v22);
      sub_10001F63C(v20, v21);
    }
  }

  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  v23.super.isa = Set._bridgeToObjectiveC()().super.isa;
  objc_msgSendSuper2(&v24, "touchesEnded:withEvent:", v23.super.isa, a2, v3, ObjectType);
LABEL_13:
}

uint64_t type metadata accessor for ShelfHeaderView(uint64_t a1)
{
  result = qword_100990F48;
  if (!qword_100990F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006781F0(uint64_t a1)
{
  type metadata accessor for ShelfHeaderLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_100678378(319, &qword_100990F58, &type metadata accessor for ShelfHeader.ArtworkType);
    if (v2 <= 0x3F)
    {
      sub_100678378(319, &qword_100990F60, &type metadata accessor for ShelfHeader.Configuration);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100678378(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1006783CC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100005744(0, &qword_100981660, UITouch_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10067860C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100678670(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006786D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100984380, &qword_1007C4850);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100678740()
{
  v65 = sub_10002849C(&qword_100990F70, &qword_1007DC350);
  __chkstk_darwin(v65);
  v68 = (&v61 - v0);
  v1 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v1 - 8);
  v62 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v61 - v4;
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = sub_10002849C(&qword_100981228, &unk_1007C8C40);
  __chkstk_darwin(v9 - 8);
  v61 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v64 = &v61 - v12;
  v13 = type metadata accessor for ShelfBackground();
  v66 = *(v13 - 8);
  v67 = v13;
  __chkstk_darwin(v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v61 - v18;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v63 = v15;
  ReadOnlyLens.subscript.getter();

  v20 = *(v17 + 8);
  v20(v19, v16);
  v21 = v62;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v21, &unk_10098FFB0, qword_1007B3890);
  sub_1000476A0(v5, v8, &unk_10098FFB0, qword_1007B3890);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_10002B894(v8, &unk_10098FFB0, qword_1007B3890);
    v22 = 1;
    v23 = v64;
  }

  else
  {
    swift_getKeyPath();
    v23 = v64;
    ReadOnlyLens.subscript.getter();

    v20(v8, v16);
    v22 = 0;
  }

  v25 = v66;
  v24 = v67;
  (*(v66 + 56))(v23, v22, 1, v67);
  v26 = *(v65 + 48);
  v27 = v68;
  (*(v25 + 32))(v68, v63, v24);
  sub_1000476A0(v23, v27 + v26, &qword_100981228, &unk_1007C8C40);
  v28 = *(v25 + 88);
  v29 = v28(v27, v24);
  v30 = enum case for ShelfBackground.color(_:);
  if (v29 == enum case for ShelfBackground.color(_:))
  {
    (*(v25 + 96))(v27, v24);

    v31 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
    v32 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v32 - 8) + 8))(v27 + v31, v32);
LABEL_8:
    sub_10002B894(v27 + v26, &qword_100981228, &unk_1007C8C40);
LABEL_9:
    static UIEdgeInsets.vertical(top:bottom:)();
    return;
  }

  v33 = enum case for ShelfBackground.gradient(_:);
  if (v29 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v25 + 96))(v27, v24);

    v34 = sub_10002849C(&qword_100978418, qword_1007BD670);
    v35 = v34[12];
    v36 = v34[16];
    v37 = v34[20];
    v38 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v38 - 8) + 8))(v27 + v37, v38);
    v39 = type metadata accessor for ShelfBackgroundGradientLocation();
    v40 = *(*(v39 - 8) + 8);
    v40(v27 + v36, v39);
    v40(v27 + v35, v39);
    goto LABEL_8;
  }

  v41 = enum case for ShelfBackground.materialGradient(_:);
  if (v29 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v25 + 96))(v27, v24);
    v42 = *(sub_10002849C(&qword_100978410, &unk_1007C3880) + 48);
    v43 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v43 - 8) + 8))(v27 + v42, v43);
    v44 = type metadata accessor for ShelfBackgroundMaterialGradientColors();
    (*(*(v44 - 8) + 8))(v27, v44);
    goto LABEL_8;
  }

  if ((*(v25 + 48))(v27 + v26, 1, v24) != 1)
  {
    v45 = v61;
    sub_100031660(v27 + v26, v61, &qword_100981228, &unk_1007C8C40);
    v46 = v28(v45, v24);
    if (v46 == v30)
    {
      (*(v25 + 96))(v45, v24);

      v47 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
      v48 = type metadata accessor for ShelfBackgroundStyle();
      (*(*(v48 - 8) + 8))(v45 + v47, v48);
    }

    else if (v46 == v33)
    {
      v49 = v61;
      (*(v25 + 96))(v61, v24);

      v50 = sub_10002849C(&qword_100978418, qword_1007BD670);
      v51 = v50[12];
      v52 = v50[16];
      v53 = v50[20];
      v54 = type metadata accessor for ShelfBackgroundStyle();
      (*(*(v54 - 8) + 8))(v49 + v53, v54);
      v55 = type metadata accessor for ShelfBackgroundGradientLocation();
      v56 = *(*(v55 - 8) + 8);
      v56(v49 + v52, v55);
      v56(v49 + v51, v55);
    }

    else
    {
      v57 = v61;
      if (v46 != v41)
      {
        (*(v25 + 8))(v61, v24);
        goto LABEL_13;
      }

      (*(v25 + 96))(v61, v24);
      v58 = *(sub_10002849C(&qword_100978410, &unk_1007C3880) + 48);
      v59 = type metadata accessor for ShelfBackgroundStyle();
      (*(*(v59 - 8) + 8))(v57 + v58, v59);
      v60 = type metadata accessor for ShelfBackgroundMaterialGradientColors();
      (*(*(v60 - 8) + 8))(v57, v60);
    }

    sub_10002B894(v27 + v26, &qword_100981228, &unk_1007C8C40);
    (*(v25 + 8))(v27, v24);
    goto LABEL_9;
  }

LABEL_13:
  sub_10002B894(v27, &qword_100990F70, &qword_1007DC350);
}