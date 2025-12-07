uint64_t sub_10003BB40()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (v6 && (v7 = *(*(v6 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection)) != 0 && (, , v8 = v7, v9 = dispatch thunk of DOCNodeCollection.observedNode.getter(), , v8, , v9))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100049360(v1, v9);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    static Logger.UI.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100037B98(0xD000000000000024, 0x8000000100092D90, &v16);
      _os_log_impl(&_mh_execute_header, v10, v11, "%s could not get observed node", v12, 0xCu);
      sub_1000064E0(v13);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_10003BDA8(int a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (v13)
    {
      [v13 removeFromSuperview];
    }

    [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] removeFromSuperview];
    sub_100020968();
    sub_100020BF0();
    v14 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 0;
    sub_10001B944(v14);
    v15 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    *v15 = 0;
    v15[1] = 0;

    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;

    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;
  }

  static Logger.UI.getter();
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v9;
    v20 = v19;
    v21 = swift_slowAlloc();
    HIDWORD(v29) = a1;
    v34 = v21;
    *v20 = 136315906;
    *(v20 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v34);
    v30 = v8;
    *(v20 + 12) = 2080;
    v32 = a4;
    v22 = *&v16[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v23 = *&v16[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v24 = sub_100037B98(v22, v23, &v34);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    v33 = v16[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v25 = String.init<A>(describing:)();
    v27 = sub_100037B98(v25, v26, &v34);

    *(v20 + 24) = v27;
    a4 = v32;
    *(v20 + 32) = 1024;
    *(v20 + 34) = BYTE4(v29) & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s animationCompletion identifier: %s transitionState: %s finished: %{BOOL}d", v20, 0x26u);
    swift_arrayDestroy();

    (*(v31 + 8))(v12, v30);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  return sub_100059860(a3, a4);
}

id sub_10003C0DC(int a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (v12)
    {
      [v12 removeFromSuperview];
    }

    [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] removeFromSuperview];
    sub_100020968();
    sub_100020BF0();
    v13 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 0;
    sub_10001B944(v13);
    v14 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    *v14 = 0;
    v14[1] = 0;

    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;

    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;
  }

  static Logger.UI.getter();
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = v8;
    v19 = v18;
    v20 = swift_slowAlloc();
    HIDWORD(v28) = a1;
    v33 = v20;
    *v19 = 136315906;
    *(v19 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v33);
    v29 = v7;
    *(v19 + 12) = 2080;
    v31 = a4;
    v21 = *&v15[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v22 = *&v15[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v23 = sub_100037B98(v21, v22, &v33);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    v32 = v15[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v24 = String.init<A>(describing:)();
    v26 = sub_100037B98(v24, v25, &v33);

    *(v19 + 24) = v26;
    a4 = v31;
    *(v19 + 32) = 1024;
    *(v19 + 34) = BYTE4(v28) & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s animationCompletion identifier: %s transitionState: %s finished: %{BOOL}d", v19, 0x26u);
    swift_arrayDestroy();

    (*(v30 + 8))(v11, v29);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result completeContextRequestUpdateFromHost:a4 withError:0];
  }

  return result;
}

unint64_t sub_10003C434(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000ADB08, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10003C480(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_10003C490(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v10 = v9;
  v12 = a4;
  LODWORD(v51) = a4 >> 8;
  HIDWORD(v51) = a5;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource] = 0;
  *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderPresentationControllerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dimmingView;
  *&v10[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_cellContentPool;
  type metadata accessor for DOCItemCollectionCellContentPool();
  swift_allocObject();
  *&v10[v18] = DOCItemCollectionCellContentPool.init()();
  v19 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView;
  v20 = a3;
  *&v10[v19] = [objc_allocWithZone(UIView) init];
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView] = 0;
  v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 0;
  v21 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[32] = 1;
  v22 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewFINodeDataSource] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewFPNodeDataSource] = 0;
  v23 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler];
  *v23 = 0;
  v23[1] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewBackgroundTapRecognizer] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_indexPathsOfItemsPinnedToBottomObserver] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_bottomItemPositionProgressObserver] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_contentOffsetObserver] = 0;
  v24 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
  *v24 = 0;
  v24[1] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;
  v25 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_gridViewAnimationSpecOverride];
  v53 = 1;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 2) = 0u;
  *(v25 + 3) = 0u;
  *(v25 + 4) = 0u;
  v25[80] = 1;
  v26 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
  *v26 = a1;
  v26[1] = a2;
  v27 = &v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  *v27 = v12 & 1;
  *(v27 + 1) = v51;
  v27[1] = a8;
  v27[2] = a9;
  *(v27 + 24) = BYTE4(v51);
  v28 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
  v29 = type metadata accessor for URL();
  v30 = *(v29 - 8);
  (*(v30 + 16))(&v10[v28], v20, v29);
  swift_unknownObjectWeakAssign();
  *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_imageCache] = a7;
  v52.receiver = v10;
  v52.super_class = type metadata accessor for DOCSBFolderPresentationController(0);

  v31 = objc_msgSendSuper2(&v52, "init");
  v32 = objc_allocWithZone(UITapGestureRecognizer);
  v33 = v31;
  v34 = [v32 initWithTarget:v33 action:"handleDockIconTapped:"];
  v35 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView;
  [*&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] addGestureRecognizer:v34];
  [*&v33[v35] setUserInteractionEnabled:1];
  v36 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v33 action:"handleCollectionViewBackgroundTapped:"];
  v37 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewBackgroundTapRecognizer;
  v38 = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewBackgroundTapRecognizer];
  *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewBackgroundTapRecognizer] = v36;
  v39 = v36;

  if (!v39)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v39 setEnabled:0];

  v40 = *&v33[v37];
  if (!v40)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v41 = v40;

  [v41 setDelegate:v33];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
    [Strong addSubview:*&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dimmingView]];
  }

  v44 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dimmingView;
  [*&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dimmingView] setTranslatesAutoresizingMaskIntoConstraints:{0, a1, v51}];
  v45 = *&v33[v44];
  v46 = objc_opt_self();
  v47 = v45;
  v48 = [v46 clearColor];
  [v47 setBackgroundColor:v48];

  [*&v33[v44] setUserInteractionEnabled:0];
  isa = DOCConstraintsToResizeWithSuperview();
  if (!isa)
  {
    sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [objc_opt_self() activateConstraints:isa];

  (*(v30 + 8))(v20, v29);
}

void sub_10003C9EC(_BYTE *a1, unint64_t a2, unint64_t a3, int a4, void (*a5)(void), uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18)
{
  LODWORD(v99) = a4;
  v104 = a3;
  *&v97 = a14;
  *&v96 = a13;
  *&v95 = a12;
  *&v94 = a11;
  v26 = type metadata accessor for Logger();
  v102 = *(v26 - 8);
  v103 = v26;
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  v29 = &v90 - v28;
  v30 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState;
  v31 = a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
  v98 = v32;
  v101 = v31 == 3 && *&a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] && *&a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] != 0;
  a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 1;
  sub_10001B944(v31);
  static Logger.UI.getter();
  v33 = a1;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v100 = a2;
  if (v36)
  {
    v92 = a5;
    v93 = a6;
    v37 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v108[0] = v91;
    *v37 = 136317186;
    *(v37 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092BA0, v108);
    *(v37 + 12) = 2080;
    v38 = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v39 = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v40 = sub_100037B98(v38, v39, v108);

    *(v37 + 14) = v40;
    *(v37 + 22) = 2080;
    LOBYTE(v105) = a1[v30];
    v41 = String.init<A>(describing:)();
    v43 = sub_100037B98(v41, v42, v108);

    *(v37 + 24) = v43;
    *(v37 + 32) = 1024;
    *(v37 + 34) = v101;
    *(v37 + 38) = 2080;
    *&v105 = a7;
    *(&v105 + 1) = a8;
    *&v106 = a9;
    *(&v106 + 1) = a10;
    type metadata accessor for CGRect(0);
    v44 = String.init<A>(describing:)();
    v46 = sub_100037B98(v44, v45, v108);

    *(v37 + 40) = v46;
    *(v37 + 48) = 2080;
    *&v105 = v94;
    *(&v105 + 1) = v95;
    *&v106 = v96;
    *(&v106 + 1) = v97;
    v47 = String.init<A>(describing:)();
    v49 = sub_100037B98(v47, v48, v108);

    *(v37 + 50) = v49;
    *(v37 + 58) = 2080;
    v50 = v33;
    Strong = swift_unknownObjectWeakLoadStrong();
    v52 = Strong;
    if (Strong)
    {
      [Strong frame];
      v95 = v53;
      v96 = v54;
      v94 = v55;
      v97 = v56;

      *&v58 = v94;
      *&v57 = v95;
      *(&v57 + 1) = v96;
      *(&v58 + 1) = v97;
    }

    else
    {
      v57 = 0uLL;
      v58 = 0uLL;
    }

    v105 = v57;
    v106 = v58;
    v107 = v52 == 0;
    sub_10000589C(&qword_1000BC4F0, qword_100090BF0);
    v60 = String.init<A>(describing:)();
    v62 = sub_100037B98(v60, v61, v108);

    *(v37 + 60) = v62;
    *(v37 + 68) = 2080;
    v105 = a17;
    v106 = a18;
    v63 = String.init<A>(describing:)();
    v65 = sub_100037B98(v63, v64, v108);

    *(v37 + 70) = v65;
    *(v37 + 78) = 2080;
    a2 = v100;
    *(v37 + 80) = sub_100037B98(v100, v104, v108);
    _os_log_impl(&_mh_execute_header, v34, v35, "%s identifier: %s transitionState: %s retargetExistingAnimation: %{BOOL}d iconFrame: %s dockFrame: %s hostView frame: %s collectionView frame: %s animationID: %s", v37, 0x58u);
    swift_arrayDestroy();

    v59 = *(v102 + 8);
    v59(v29, v103);
    a6 = v93;
    a5 = v92;
  }

  else
  {
    v50 = v33;

    v59 = *(v102 + 8);
    v59(v29, v103);
  }

  v66 = objc_opt_self();
  v67 = [v66 areAnimationsEnabled];
  p_type = (&stru_1000B6FF0 + 16);
  v69 = v50;
  if ((v99 & 1) == 0)
  {
    v99 = v59;
    v70 = v98;
    static Logger.UI.getter();
    v71 = v50;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      LODWORD(v96) = v73;
      v75 = v74;
      *&v97 = swift_slowAlloc();
      *&v105 = v97;
      *v75 = 136315650;
      *(v75 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092BA0, &v105);
      *(v75 + 12) = 2080;
      v76 = &v71[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
      v77 = v67;
      v78 = v66;
      v79 = a5;
      v80 = a6;
      v81 = *&v71[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
      v82 = *(v76 + 1);

      v83 = sub_100037B98(v81, v82, &v105);
      a6 = v80;
      a5 = v79;
      v66 = v78;
      v67 = v77;
      p_type = &stru_1000B6FF0.type;

      *(v75 + 14) = v83;
      *(v75 + 22) = 1024;
      *(v75 + 24) = 0;
      _os_log_impl(&_mh_execute_header, v72, v96, "%s identifier: %s setting animations enabled: %{BOOL}d", v75, 0x1Cu);
      swift_arrayDestroy();
    }

    v99(v70, v103);
    [v66 p_type[433]];
    a2 = v100;
  }

  if ((v69[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration] & 1) == 0)
  {

    goto LABEL_21;
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v84)
  {
LABEL_21:
    v88 = *&v69[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    if (v88)
    {
      v89 = v88;
      sub_100063488(0);

      sub_100006B60(1, v101, a2, v104, a5, a6, *&a17, *(&a17 + 1), *&a18, *(&a18 + 1));
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_25;
  }

  v85 = *&v69[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (!v85)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v86 = v85;
  sub_100063768(0);

  v87 = *&v69[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewBackgroundTapRecognizer];
  if (v87)
  {
    [v87 setEnabled:1];
    sub_10000AC10(1, v101, a2, v104, a5, a6, *&a17, *(&a17 + 1), *&a18, *(&a18 + 1));
LABEL_23:
    [v66 p_type[433]];
    return;
  }

LABEL_26:
  __break(1u);
}

void sub_10003D250(int a1, void *a2, char *a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v127 = a3;
  v132 = a1;
  v130 = type metadata accessor for UUID();
  v22 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v121[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for Logger();
  v136 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v121[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v135 = &v121[-v28];
  __chkstk_darwin(v29);
  v31 = &v121[-v30];
  __chkstk_darwin(v32);
  v34 = &v121[-v33];
  v35 = (a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame);
  *v35 = a5;
  v35[1] = a6;
  v35[2] = a7;
  v35[3] = a8;
  *(v35 + 32) = 0;
  v36 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView);
  v134 = a4;
  swift_bridgeObjectRetain_n();
  [v36 setFrame:{a5, a6, a7, a8}];
  v37 = (a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame);
  *v37 = a9;
  v37[1] = a10;
  v37[2] = a11;
  v37[3] = a12;
  *(v37 + 32) = 0;
  [*(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView) setFrame:{a5, a6, a7, a8}];
  [*(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView) setFrame:{a5, a6, a7, a8}];
  v38 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState;
  v39 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState);
  v131 = v31;
  v40 = v39 == 1 && *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts) && *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts) != 0;
  v125 = v26;
  static Logger.UI.getter();
  v41 = a2;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  v44 = os_log_type_enabled(v42, v43);
  v133 = v24;
  v126 = v40;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v129 = v38;
    v46 = v45;
    v123 = swift_slowAlloc();
    v141[0] = v123;
    *v46 = 136316930;
    *(v46 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, v141);
    v122 = v43;
    *(v46 + 12) = 2080;
    v124 = v22;
    v47 = *&v41[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v48 = *&v41[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v49 = sub_100037B98(v47, v48, v141);

    *(v46 + 14) = v49;
    *(v46 + 22) = 2080;
    LOBYTE(v137) = v129[a2];
    v50 = String.init<A>(describing:)();
    v52 = sub_100037B98(v50, v51, v141);

    *(v46 + 24) = v52;
    *(v46 + 32) = 1024;
    *(v46 + 34) = v40;
    *(v46 + 38) = 2080;
    v137 = a5;
    v138 = a6;
    v139 = a7;
    v140 = a8;
    type metadata accessor for CGRect(0);
    v53 = String.init<A>(describing:)();
    v55 = sub_100037B98(v53, v54, v141);

    *(v46 + 40) = v55;
    *(v46 + 48) = 2080;
    v137 = a9;
    v138 = a10;
    v139 = a11;
    v140 = a12;
    v56 = String.init<A>(describing:)();
    v58 = sub_100037B98(v56, v57, v141);

    *(v46 + 50) = v58;
    *(v46 + 58) = 1024;
    *(v46 + 60) = v132 & 1;
    *(v46 + 64) = 2080;
    v59 = v41;
    v60 = v41;
    v61 = [v60 description];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v22 = v124;
    v65 = v62;
    v24 = v133;
    v66 = sub_100037B98(v65, v64, v141);

    *(v46 + 66) = v66;
    _os_log_impl(&_mh_execute_header, v42, v122, "%s identifier: %s transitionState: %s retargetExistingAnimation: %{BOOL}d iconFrame: %s dockFrame: %s animated: %{BOOL}dnodes count:%s", v46, 0x4Au);
    swift_arrayDestroy();

    v38 = v129;
  }

  else
  {
    v59 = v41;
  }

  v67 = *(v136 + 8);
  (v67)(v34, v24);
  v68 = v135;
  v69 = *(a2 + v38);
  if (v69 == 3)
  {
    goto LABEL_11;
  }

  if (v69 == 1)
  {
    v131 = v59;
    v82 = v59;
    static Logger.UI.getter();
    v83 = v82;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v137 = *&v124;
      *v86 = 136315650;
      *(v86 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v137);
      v129 = v67;
      *(v86 + 12) = 2080;
      v87 = *&v83[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
      v88 = *&v83[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

      v89 = sub_100037B98(v87, v88, &v137);

      *(v86 + 14) = v89;
      *(v86 + 22) = 2080;
      LOBYTE(v141[0]) = *(a2 + v38);
      v90 = String.init<A>(describing:)();
      v92 = sub_100037B98(v90, v91, &v137);

      *(v86 + 24) = v92;
      _os_log_impl(&_mh_execute_header, v84, v85, "%s identifier: %s transitionState: %s is in the middle of a expand animation. Retargeting animation", v86, 0x20u);
      swift_arrayDestroy();

      v67 = v129;
      (v129)(v135, v24);
    }

    else
    {

      (v67)(v68, v24);
    }

    v59 = v131;
LABEL_20:
    v94 = v128;
    UUID.init()();
    v95 = UUID.uuidString.getter();
    v97 = v96;
    (*(v22 + 8))(v94, v130);
    v98 = &v59[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    *v98 = v95;
    v98[1] = v97;

    v99 = *(a2 + v38);
    *(a2 + v38) = 3;
    sub_10001B944(v99);
    v100 = v98[1];
    if (!v100)
    {
      swift_bridgeObjectRelease_n();

      __break(1u);
      return;
    }

    v101 = *v98;
    v102 = objc_opt_self();

    v103 = [v102 areAnimationsEnabled];
    p_type = (&stru_1000B6FF0 + 16);
    if ((v132 & 1) == 0)
    {
      v135 = v101;
      v129 = v67;
      v105 = v125;
      static Logger.UI.getter();
      v106 = v59;
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v131 = v59;
        v137 = *&v110;
        *v109 = 136315650;
        *(v109 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v137);
        *(v109 + 12) = 2080;
        v111 = &v106[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
        v112 = v103;
        v114 = *&v106[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
        v113 = *(v111 + 1);

        v115 = sub_100037B98(v114, v113, &v137);
        v103 = v112;
        p_type = &stru_1000B6FF0.type;

        *(v109 + 14) = v115;
        *(v109 + 22) = 1024;
        *(v109 + 24) = 0;
        _os_log_impl(&_mh_execute_header, v107, v108, "%s identifier: %s setting animations enabled: %{BOOL}d", v109, 0x1Cu);
        swift_arrayDestroy();
        v59 = v131;
      }

      (v129)(v105, v133);
      [v102 p_type[433]];
      v101 = v135;
    }

    if (v59[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration])
    {
      v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v116 & 1) == 0)
      {
        v117 = v134;

        v118 = v59;
        sub_10001853C(0, v126, v101, v100, v118, v118, v127, v117, a5, a6, a7, a8);
LABEL_30:

        [v102 p_type[433]];
        swift_bridgeObjectRelease_n();

        return;
      }
    }

    else
    {
    }

    v119 = v134;

    v120 = v59;
    sub_1000151E4(0, v126, v101, v100, v120, v120, v127, v119, a5, a6, a7, a8);
    goto LABEL_30;
  }

  if (*(a2 + v38))
  {
    v93 = v59;
    goto LABEL_20;
  }

LABEL_11:
  v70 = v59;
  v71 = v131;
  static Logger.UI.getter();
  v72 = v70;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v137 = COERCE_DOUBLE(swift_slowAlloc());
    *v75 = 136315650;
    *(v75 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v137);
    *(v75 + 12) = 2080;
    v129 = v67;
    v76 = *&v72[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v77 = *&v72[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v78 = sub_100037B98(v76, v77, &v137);

    *(v75 + 14) = v78;
    *(v75 + 22) = 2080;
    LOBYTE(v141[0]) = *(a2 + v38);
    v79 = String.init<A>(describing:)();
    v81 = sub_100037B98(v79, v80, &v137);

    *(v75 + 24) = v81;
    _os_log_impl(&_mh_execute_header, v73, v74, "%s identifier: %s transitionState: %s is collapsed. Ignoring request.", v75, 0x20u);
    swift_arrayDestroy();

    (v129)(v131, v133);
  }

  else
  {

    (v67)(v71, v24);
  }

  swift_bridgeObjectRelease_n();
}

void sub_10003DF5C(int a1, _BYTE *a2, void *a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  LODWORD(v139) = a1;
  v138 = type metadata accessor for UUID();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v135 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Logger();
  v145 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v133 = &v132 - v28;
  __chkstk_darwin(v29);
  v143 = (&v132 - v30);
  __chkstk_darwin(v31);
  v33 = &v132 - v32;
  v34 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  *v34 = a5;
  v34[1] = a6;
  v34[2] = a7;
  v34[3] = a8;
  *(v34 + 32) = 0;
  v35 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView];
  v36 = a3;
  v37 = a4;
  v38 = v36;
  v39 = v37;
  [v35 setFrame:{a5, a6, a7, a8}];
  v40 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame];
  *v40 = a9;
  v40[1] = a10;
  v40[2] = a11;
  v40[3] = a12;
  *(v40 + 32) = 0;
  [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView] setFrame:{a5, a6, a7, a8}];
  [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView] setFrame:{a5, a6, a7, a8}];
  v41 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState;
  v42 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] == 1;
  v132 = v26;
  v43 = v42 && *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] && *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] != 0;
  static Logger.UI.getter();
  v44 = a2;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  v47 = os_log_type_enabled(v45, v46);
  v141 = v38;
  v142 = v39;
  v140 = v24;
  v134 = v43;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v144 = v44;
    v150[0] = v49;
    *v48 = 136316930;
    *(v48 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, v150);
    v136 = v41;
    *(v48 + 12) = 2080;
    v50 = *&v144[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v51 = *&v144[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v52 = sub_100037B98(v50, v51, v150);

    *(v48 + 14) = v52;
    *(v48 + 22) = 2080;
    LOBYTE(v146) = a2[v136];
    v53 = String.init<A>(describing:)();
    v55 = sub_100037B98(v53, v54, v150);

    *(v48 + 24) = v55;
    *(v48 + 32) = 1024;
    *(v48 + 34) = v43;
    *(v48 + 38) = 2080;
    v146 = a5;
    v147 = a6;
    v148 = a7;
    v149 = a8;
    type metadata accessor for CGRect(0);
    v56 = String.init<A>(describing:)();
    v58 = sub_100037B98(v56, v57, v150);

    *(v48 + 40) = v58;
    *(v48 + 48) = 2080;
    v146 = a9;
    v147 = a10;
    v148 = a11;
    v149 = a12;
    v59 = String.init<A>(describing:)();
    v61 = sub_100037B98(v59, v60, v150);

    *(v48 + 50) = v61;
    *(v48 + 58) = 1024;
    *(v48 + 60) = v139 & 1;
    *(v48 + 64) = 2080;
    v62 = v144;
    v63 = [v62 description];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v67 = v64;
    v24 = v140;
    v38 = v141;
    v68 = sub_100037B98(v67, v66, v150);
    v41 = v136;

    *(v48 + 66) = v68;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s identifier: %s transitionState: %s retargetExistingAnimation: %{BOOL}d iconFrame: %s dockFrame: %s animated: %{BOOL}dnodes count:%s", v48, 0x4Au);
    swift_arrayDestroy();
    v44 = v144;
  }

  v69 = *(v145 + 8);
  v69(v33, v24);
  v70 = a2[v41];
  v71 = v143;
  if (v70 == 3)
  {
    goto LABEL_11;
  }

  if (v70 == 1)
  {
    v86 = v44;
    v87 = v133;
    static Logger.UI.getter();
    v88 = v86;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      LODWORD(v136) = v90;
      v92 = v91;
      v143 = swift_slowAlloc();
      v144 = v44;
      v146 = *&v143;
      *v92 = 136315650;
      *(v92 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v146);
      *(v92 + 12) = 2080;
      v93 = &v88[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
      v94 = v41;
      v95 = *&v88[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
      v96 = *(v93 + 1);

      v97 = sub_100037B98(v95, v96, &v146);

      *(v92 + 14) = v97;
      *(v92 + 22) = 2080;
      LOBYTE(v150[0]) = a2[v94];
      v98 = String.init<A>(describing:)();
      v100 = sub_100037B98(v98, v99, &v146);

      *(v92 + 24) = v100;
      v41 = v94;
      _os_log_impl(&_mh_execute_header, v89, v136, "%s identifier: %s transitionState: %s is in the middle of a expand animation. Retargeting animation", v92, 0x20u);
      swift_arrayDestroy();
      v44 = v144;

      v69(v133, v24);
    }

    else
    {

      v69(v87, v24);
    }

LABEL_18:
    v103 = v135;
    UUID.init()();
    v104 = UUID.uuidString.getter();
    v106 = v105;
    (*(v137 + 8))(v103, v138);
    v107 = &v44[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    *v107 = v104;
    v107[1] = v106;

    v108 = a2[v41];
    a2[v41] = 3;
    sub_10001B944(v108);
    v109 = v107[1];
    if (!v109)
    {
      v131 = v142;

      __break(1u);
      return;
    }

    v143 = *v107;
    v110 = objc_opt_self();

    v111 = [v110 areAnimationsEnabled];
    p_type = (&stru_1000B6FF0 + 16);
    if ((v139 & 1) == 0)
    {
      v139 = v69;
      v113 = v132;
      static Logger.UI.getter();
      v114 = v44;
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v144 = v44;
        v146 = *&v118;
        *v117 = 136315650;
        *(v117 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v146);
        *(v117 + 12) = 2080;
        v119 = v111;
        v120 = *&v114[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
        v121 = *&v114[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

        v122 = sub_100037B98(v120, v121, &v146);

        *(v117 + 14) = v122;
        v111 = v119;
        p_type = &stru_1000B6FF0.type;
        *(v117 + 22) = 1024;
        *(v117 + 24) = 0;
        _os_log_impl(&_mh_execute_header, v115, v116, "%s identifier: %s setting animations enabled: %{BOOL}d", v117, 0x1Cu);
        swift_arrayDestroy();
        v44 = v144;
      }

      v139(v113, v140);
      [v110 p_type[433]];
      v38 = v141;
    }

    v123 = v142;
    if (v44[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration])
    {
      v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v124 & 1) == 0)
      {
        v125 = v38;
        v126 = v123;
        v127 = v44;
        sub_1000192A4(0, v134, v143, v109, v127, v127, v125, v126, a5, a6, a7, a8);
LABEL_28:

        [v110 p_type[433]];
        return;
      }
    }

    else
    {
    }

    v128 = v38;
    v129 = v123;
    v130 = v44;
    sub_100016AD0(0, v134, v143, v109, v130, v130, v128, v129, a5, a6, a7, a8);
    goto LABEL_28;
  }

  if (a2[v41])
  {
    v102 = v44;
    goto LABEL_18;
  }

LABEL_11:
  v72 = v44;
  static Logger.UI.getter();
  v73 = v72;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v139 = v69;
    v146 = *&v77;
    *v76 = 136315650;
    *(v76 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v146);
    *(v76 + 12) = 2080;
    v78 = *&v73[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v79 = *&v73[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v80 = sub_100037B98(v78, v79, &v146);

    *(v76 + 14) = v80;
    *(v76 + 22) = 2080;
    LOBYTE(v150[0]) = a2[v41];
    v81 = String.init<A>(describing:)();
    v83 = sub_100037B98(v81, v82, &v146);

    *(v76 + 24) = v83;
    _os_log_impl(&_mh_execute_header, v74, v75, "%s identifier: %s transitionState: %s is collapsed. Ignoring request.", v76, 0x20u);
    swift_arrayDestroy();

    v139(v143, v140);
    v84 = v142;

    v85 = v141;
  }

  else
  {

    v69(v71, v24);
    v101 = v142;
  }
}

uint64_t sub_10003ECA8(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v10 = result;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    result = v10;
    v6 = -v5;
    if (!__OFSUB__(0, v5))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = -v5;
  if (__OFSUB__(0, v5))
  {
    goto LABEL_32;
  }

LABEL_4:
  v7 = -result;
  if (v6 > 0 || v6 <= v7)
  {
    v8 = v5 - result;
    if (__OFADD__(v5, v7))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v5 < v8)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v5 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = 0;
    if (!v4)
    {
LABEL_8:
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
  if (result < v8)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v8 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v4)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v5)
  {
    goto LABEL_35;
  }

  if (v5 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v3 & 0xC000000000000001) == 0 || v8 == v5)
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v8 < v5)
  {

    v9 = v8;
    do
    {
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      _ArrayBuffer._typeCheckSlowPath(_:)(v9++);
    }

    while (v5 != v9);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return _CocoaArrayWrapper.subscript.getter();
  }

LABEL_40:
  __break(1u);
  return result;
}

void sub_10003EE74(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    (*(v5 + 16))(v8, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4, v6);
    sub_10001BBE4(aBlock);
    if (v23)
    {
      sub_100042398(aBlock, v23);
      v9 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
      if (v9)
      {
        v10 = v9;
        sub_1000064E0(aBlock);
        v11 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
        if (v11 && (v12 = *(*(v11 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection)) != 0 && (, , v13 = v12, v14 = dispatch thunk of DOCNodeCollection.observedNode.getter(), , v13, , v14))
        {
          swift_unknownObjectRetain();
          isa = sub_10002A078(v10, v14).super.super.isa;
          type metadata accessor for DOCNodeContextMenuConfiguration();
          v16 = swift_allocObject();
          *(v16 + 16) = isa;
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v24 = sub_100042414;
          v25 = v16;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10005DE70;
          v23 = &unk_1000AEBC0;
          v18 = _Block_copy(aBlock);
          v21 = isa;

          [ObjCClassFromMetadata configurationWithIdentifier:0 previewProvider:0 actionProvider:v18];

          _Block_release(v18);
          sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_10008F940;
          *(v19 + 32) = v10;
          swift_unknownObjectRetain();
          dispatch thunk of DOCNodeContextMenuConfiguration.nodes.setter();
          dispatch thunk of DOCNodeContextMenuConfiguration.presentingNode.setter();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(v5 + 8))(v8, v4);
        }

        else
        {
          swift_unknownObjectRelease();
          (*(v5 + 8))(v8, v4);
        }
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        sub_1000064E0(aBlock);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_10003F1F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000589C(&qword_1000BC498, &unk_100090BB0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100042774(v4, &v13, &unk_1000BC4A0, &qword_1000913A0);
      v5 = v13;
      v6 = v14;
      result = sub_100037A68(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001A344(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_10003F320(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v2 = [swift_getObjCClassFromMetadata() providerDomainWithID:a1 cachePolicy:a2 error:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_10003F3EC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Logger();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.UI.getter();
  (*(v7 + 16))(v9, a2, v6);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36 = a1;
    v16 = v15;
    v35 = swift_slowAlloc();
    v38[0] = v35;
    *v16 = 136315394;
    *(v16 + 4) = sub_100037B98(0xD000000000000027, 0x80000001000928A0, v38);
    *(v16 + 12) = 2080;
    sub_1000422FC(&qword_1000BC458, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v33 = v14;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v10;
    v18 = a2;
    v19 = v3;
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = sub_100037B98(v17, v21, v38);
    v3 = v19;
    a2 = v18;

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v33, "%s indexPath: %s", v16, 0x16u);
    swift_arrayDestroy();

    a1 = v36;

    (*(v37 + 8))(v12, v34);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    (*(v37 + 8))(v12, v10);
  }

  result = sub_10002BAF4(a1, a2);
  if (result >> 62)
  {
    v30 = result;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    result = v30;
    if (!v31)
    {
      return result;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  v24 = *(v3 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
  if (!v24)
  {
    v25 = result;
LABEL_11:
    v29 = 0;
    goto LABEL_12;
  }

  v25 = result;
  v26 = *(*(v24 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = v26;
  v28 = dispatch thunk of DOCNodeCollection.observedNode.getter();

  if (!v28)
  {
    goto LABEL_11;
  }

  v38[3] = swift_getObjectType();
  v38[0] = v28;
  v29 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_1000064E0(v38);
LABEL_12:
  [a1 setLocalContext:v29];
  swift_unknownObjectRelease();
  return v25;
}

void *sub_10003F838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  (*(v5 + 16))(v7, a2, v4);
  v12 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v25))
  {
    v13 = swift_slowAlloc();
    v24 = v9;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315394;
    *(v14 + 4) = sub_100037B98(0xD00000000000002CLL, 0x8000000100092850, &v26);
    *(v14 + 12) = 2080;
    sub_1000422FC(&qword_1000BC458, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v21 = v12;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v8;
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    v18 = sub_100037B98(v15, v17, &v26);

    *(v14 + 14) = v18;
    v19 = v21;
    _os_log_impl(&_mh_execute_header, v21, v25, "%s indexPath: %s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v24 + 8))(v11, v22);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  sub_10001A2A8(0, &unk_1000BC470, FPItem_ptr);
  if (static FPItem.sessionContainsDOCNode(_:)())
  {
    return sub_10002BAF4(a1, a2);
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }
}

id sub_10003FBCC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v12 = *(v5 + 16);
  v33 = a1;
  v12(v7, a1, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v2;
    v16 = v15;
    v31 = swift_slowAlloc();
    v34[0] = v31;
    *v16 = 136315394;
    *(v16 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100092810, v34);
    *(v16 + 12) = 2080;
    sub_1000422FC(&qword_1000BC458, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v8;
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v20 = sub_100037B98(v17, v19, v34);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s indexPath: %s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v9 + 8))(v11, v30);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  sub_10001BBE4(v34);
  v21 = v33;
  if (v35)
  {
    sub_100042398(v34, v35);
    v22 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
    sub_1000064E0(v34);
    if (v22)
    {
      sub_10002ACB0(v21, [v22 isFolder]);
      v24 = v23;
      v25 = [objc_allocWithZone(UIDragPreviewParameters) init];
      v26 = [v24 visiblePath];
      [v25 setVisiblePath:v26];

      v27 = [v24 backgroundColor];
      [v25 setBackgroundColor:v27];
      swift_unknownObjectRelease();

      return v25;
    }
  }

  else
  {
    sub_100006390(v34, &qword_1000BC450, &unk_100090BA0);
  }

  return 0;
}

uint64_t sub_10004001C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = v4;
    v12 = v11;
    v28 = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_100037B98(0xD000000000000027, 0x80000001000927E0, &v28);
    *(v12 + 12) = 2080;
    v13 = v8;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v2;
    v17 = v16;

    v18 = sub_100037B98(v15, v17, &v28);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    v19 = [v13 hasActiveDrag];
    v20 = v19 == 0;
    if (v19)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v20)
    {
      v22 = 0xE500000000000000;
    }

    else
    {
      v22 = 0xE400000000000000;
    }

    v23 = sub_100037B98(v21, v22, &v28);
    v2 = v27;

    *(v12 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s collectionView: %s hasActiveDrag: %s", v12, 0x20u);
    swift_arrayDestroy();

    (*(v5 + 8))(v7, v26);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100049CF8(v2, 0);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000402E4(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v23 = v2;
    v10 = v9;
    v24 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_100037B98(0xD000000000000024, 0x80000001000927B0, &v24);
    *(v10 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100037B98(v13, v15, &v24);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2080;
    v17 = [v11 hasActiveDrag];
    v18 = v17 == 0;
    if (v17)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (v18)
    {
      v20 = 0xE500000000000000;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    v21 = sub_100037B98(v19, v20, &v24);

    *(v10 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s collectionView: %s hasActiveDrag: %s", v10, 0x20u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v5, v23);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100040574(uint64_t a1)
{
  v2 = sub_10000589C(&qword_1000BC448, &qword_100090B98);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-1] - v3;
  sub_10001BBE4(v11);
  if (v12)
  {
    sub_100042398(v11, v12);
    sub_100042774(a1, v4, &qword_1000BC448, &qword_100090B98);
    v5 = type metadata accessor for IndexPath();
    v6 = *(v5 - 8);
    result = (*(v6 + 48))(v4, 1, v5);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v8 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
    (*(v6 + 8))(v4, v5);
    sub_1000064E0(v11);
    if (v8)
    {
      swift_getObjectType();
      v9 = DOCNode.dataOwner.getter();
      swift_unknownObjectRelease();
      return v9;
    }
  }

  else
  {
    sub_100006390(v11, &qword_1000BC450, &unk_100090BA0);
  }

  return 0;
}

uint64_t sub_10004070C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = &unk_1000BF000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v9 = 136315906;
    *(v9 + 4) = sub_100037B98(0xD000000000000018, 0x8000000100092790, &v28);
    v26 = v1;
    *(v9 + 12) = 2080;
    v10 = *&v5[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v11 = *&v5[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v12 = sub_100037B98(v10, v11, &v28);

    *(v9 + 14) = v12;
    *(v9 + 22) = 2080;
    LOBYTE(v27) = v5[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v13 = String.init<A>(describing:)();
    v15 = sub_100037B98(v13, v14, &v28);

    *(v9 + 24) = v15;
    *(v9 + 32) = 2080;
    v27 = *&v5[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    v16 = v27;
    sub_10000589C(&qword_1000BC440, &qword_100090B90);
    v17 = String.init<A>(describing:)();
    v19 = sub_100037B98(v17, v18, &v28);
    v8 = &unk_1000BF000;

    *(v9 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s identifier: %s transitionState: %s collectionView: %s", v9, 0x2Au);
    swift_arrayDestroy();

    result = (*(v2 + 8))(v4, v26);
  }

  else
  {

    result = (*(v2 + 8))(v4, v1);
  }

  v21 = v5[v8[13]];
  if ((v21 - 1) < 2)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v23 = v5;
    v24 = 0;
    goto LABEL_14;
  }

  if (v21 == 3 || v21 == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v23 = v5;
      v24 = 2;
LABEL_14:
      sub_100049CF8(v23, v24);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100040A30()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136315906;
    *(v8 + 4) = sub_100037B98(0xD000000000000028, 0x8000000100092760, &v23);
    v21 = v1;
    *(v8 + 12) = 2080;
    v9 = *&v5[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v10 = *&v5[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v11 = sub_100037B98(v9, v10, &v23);

    *(v8 + 14) = v11;
    *(v8 + 22) = 2080;
    LOBYTE(v22) = v5[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v12 = String.init<A>(describing:)();
    v14 = sub_100037B98(v12, v13, &v23);

    *(v8 + 24) = v14;
    *(v8 + 32) = 2080;
    v22 = *&v5[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    v15 = v22;
    sub_10000589C(&qword_1000BC440, &qword_100090B90);
    v16 = String.init<A>(describing:)();
    v18 = sub_100037B98(v16, v17, &v23);

    *(v8 + 34) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s identifier: %s transitionState: %s collectionView: %s", v8, 0x2Au);
    swift_arrayDestroy();

    (*(v2 + 8))(v4, v21);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100049CF8(v5, 0);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100040D08(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = a1;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v11 = 136315906;
    *(v11 + 4) = sub_100037B98(0xD000000000000024, 0x80000001000925C0, &v18);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    *(v11 + 22) = 1024;
    *(v11 + 24) = [v8 isGathering];
    *(v11 + 28) = 2080;
    v17 = a2;
    swift_errorRetain();
    sub_10000589C(&unk_1000BC330, &qword_100090AD8);
    v13 = String.init<A>(describing:)();
    v15 = sub_100037B98(v13, v14, &v18);

    *(v11 + 30) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s collection: %@ isGathering: %{BOOL}d error: %s", v11, 0x26u);
    sub_100006390(v12, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_100040F98(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v17 = v2;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136316162;
    *(v9 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092530, &v18);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    *(v9 + 22) = 2048;
    v12 = v6;
    v13 = dispatch thunk of DOCNodeCollection.nodes.getter();
    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 24) = v14;

    *(v9 + 32) = 1024;
    v15 = [v12 isGathering];

    *(v9 + 34) = v15;
    *(v9 + 38) = 2048;
    Current = CFAbsoluteTimeGetCurrent();
    if (byte_1000BD758)
    {
      __break(1u);
    }

    else
    {
      *(v9 + 40) = Current - *&qword_1000BD750;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s collection: %@ count: %ld isGathering: %{BOOL}d took to get here: %f", v9, 0x30u);
      sub_100006390(v10, &qword_1000BC328, &qword_100090AD0);

      sub_1000064E0(v11);

      (*(v3 + 8))(v5, v17);
    }
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_10004126C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100037B98(0xD000000000000014, 0x80000001000924C0, &v14);
    *(v8 + 12) = 2080;
    v13 = a1;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_100037B98(v9, v10, &v14);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s node: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100041480(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_1000414DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_1000414EC()
{
  result = qword_1000BC320;
  if (!qword_1000BC320)
  {
    sub_10001A2A8(255, &qword_1000BC318, FPItemID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC320);
  }

  return result;
}

uint64_t sub_100041554(double a1)
{
  v2 = type metadata accessor for FolderIconFetcher();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 16, v4 | 7);
}

uint64_t sub_100041630(uint64_t a1, double a2)
{
  v5 = *(type metadata accessor for FolderIconFetcher() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100043474;

  return sub_100034C50(a1, v7, v8, v2 + v6, v10, v11);
}

uint64_t sub_100041760()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041798(double a1)
{
  v2 = type metadata accessor for ImageOptions();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, ((((((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

uint64_t sub_1000418BC(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for ImageOptions() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2[3];
  v19 = v2[2];
  v10 = v2[4];
  v11 = v2[5];
  v12 = *(v2 + v6);
  v13 = *(v2 + v8);
  v14 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = *(v2 + v7);
  v16 = *(v2 + v7 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_100043474;

  return sub_100034F4C(v15, v16, v13, a1, v19, v9, v10, v11, v2 + v5, v12, v14);
}

uint64_t sub_100041A5C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100043474;

  return sub_100035620(a1, a2, v6, v7, v9, v8);
}

void sub_100041B24(uint64_t a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v9 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v8 format:{a2, a3}];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a1;
  *(v10 + 40) = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100041E0C;
  *(v11 + 24) = v10;
  v13[4] = sub_10000634C;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100074FCC;
  v13[3] = &unk_1000AE9E0;
  v12 = _Block_copy(v13);

  [v9 imageWithActions:v12];

  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

double sub_100041D04(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100041D18(result, a2);
  }

  return v2;
}

double sub_100041D18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

double sub_100041D6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100041D80(a1, a2);
  }

  return result;
}

double sub_100041D80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100041DD4()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_100041E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100041E44()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100041E8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F4C;

  return sub_10003615C(a1, v4, v5, v7, v6);
}

uint64_t sub_100041F4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100042040()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042078(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F4C;

  return sub_10003A7FC(a1, v4);
}

uint64_t sub_100042138()
{
  v1 = sub_10000589C(&qword_1000BC3D8, &qword_100090B68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100042210()
{
  v1 = *(sub_10000589C(&qword_1000BC3D8, &qword_100090B68) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100036EB4(v2, v3, v4);
}

uint64_t sub_1000422A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000422FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100042344()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_100042398(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000423DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100042414()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_10004245C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000424B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000424EC()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100042548()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100042594(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042604()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000426E0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1000294F0(v3, v0 + v2, v5, v6);
}

uint64_t sub_100042774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000589C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000427E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100042814()
{
  v1 = type metadata accessor for DOCItemSortDescriptor();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000428D8()
{
  v1 = *(type metadata accessor for DOCItemSortDescriptor() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10002F870(v2, v3);
}

uint64_t sub_10004293C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100042A00()
{

  return _swift_deallocObject(v0, 160, 7);
}

id sub_100042B1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 progressOfBottomItemIconInDock];
  *a2 = v4;
  return result;
}

id sub_100042B84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v6.receiver = *a1;
  v6.super_class = type metadata accessor for FolderCollectionView();
  result = objc_msgSendSuper2(&v6, "contentOffset");
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100042BD4(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_100042C48()
{
  v1 = sub_10000589C(&qword_1000BC508, &qword_100090CD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10000589C(&qword_1000BC500, &qword_100090CD0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

char *sub_100042DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10000589C(&qword_1000BC508, &qword_100090CD8) - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_10000589C(&qword_1000BC500, &qword_100090CD0) - 8);
  v14 = *(v4 + 16);
  v15 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_10002D514(v13, a1, a2, a3, a4, v14, v4 + v10, v15);
}

uint64_t sub_100042EC8(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100042F18()
{
  v1 = sub_10000589C(&qword_1000BC510, &qword_100090CE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10000589C(&qword_1000BC518, &qword_100090CE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

id sub_100043084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10000589C(&qword_1000BC510, &qword_100090CE0) - 8);
  v8 = (*(v7 + 80) + 25) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_10000589C(&qword_1000BC518, &qword_100090CE8) - 8);
  return sub_10002D084(a1, a2, a3, *(v3 + 16), *(v3 + 24), v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)));
}

uint64_t sub_100043200(uint64_t a1)
{
  sub_10002C3FC(a1);
  dispatch thunk of DOCItemCollectionCellContent.thumbnail.getter();

  return swift_unknownObjectRelease();
}

uint64_t sub_100043240(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000143B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DockFolderSortOrder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DockFolderSortOrder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000433DC()
{
  result = qword_1000BC578;
  if (!qword_1000BC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC578);
  }

  return result;
}

void sub_1000434A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F718(0, v1, 0);
    v3 = a1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v22 = *(a1 + 36);
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v21 = *v8;
      v10 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];

      if (v10 >= v11 >> 1)
      {
        sub_10000F718((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v10];
      v12[4] = v21;
      v12[5] = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v13 = *(a1 + 64 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 72 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1000522D8(v4, v22, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1000522D8(v4, v22, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

id sub_1000436E8()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController____lazy_storage___configuration;
  v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController____lazy_storage___configuration);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController____lazy_storage___configuration);
  }

  else
  {
    v4 = sub_100043748();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100043748()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() configurationForOpeningDocumentsOfApplicationWithBundleIdentifier:v0];

  [v1 setInProcess:1];
  [v1 setShowCollectionControls:0];
  sub_10000589C(&qword_1000BBDC0, &qword_100090E90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10008F930;
  *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v2 + 40) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setForbiddenActionIdentifiers:isa];

  [v1 setNeverCreateBookmarkForOpenInPlace:1];
  [v1 setSkipDownload:1];
  [v1 setSuppressBlackCallout:1];
  [v1 setBrowserViewContext:3];
  [v1 setThumbnailFetchingTimeOut:0.9];
  v5 = String._bridgeToObjectiveC()();
  [v1 setSceneIdentifier:v5];

  [v1 setPresentingMakesCollectionFirstResponder:0];
  [v1 setSupportsRemovableFileProviders:1];
  return v1;
}

void sub_100043928()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for DOCSBSceneRootViewController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v1 = objc_opt_self();
  v2 = [v1 sharedManager];
  [v2 start];

  v3 = [v1 sharedManager];
  [v3 setFolderObservationProvider:v0];

  sub_100043A88();
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"backgroundTappedWithSender:"];
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    [v6 addGestureRecognizer:v7];

    [v7 setDelegate:v0];
    v8 = *&v0[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_backgroundTapGestureRecognizer];
    *&v0[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_backgroundTapGestureRecognizer] = v7;
    v9 = v7;

    sub_100043D20(0);
    sub_100043F98();
  }

  else
  {
    __break(1u);
  }
}

void sub_100043A88()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() protectedAppsEnabled])
  {
    static Logger.DockApp.getter();
    v5 = v0;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v8 = 136315650;
      *(v8 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100093390, &v13);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_100037B98(0xD000000000000023, 0x8000000100093390, &v13);
      *(v8 + 22) = 2112;
      *(v8 + 24) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s [PROTECTED APPS] %s %@", v8, 0x20u);
      sub_100006390(v9, &qword_1000BC328, &qword_100090AD0);

      swift_arrayDestroy();
    }

    (*(v2 + 8))(v4, v1);
    v11 = [objc_opt_self() defaultCenter];
    [v11 addObserver:v5 selector:"removeFoldersForHiddenProviders" name:DOCAppProtectionStatusDidChangeNotification object:0];
  }
}

void sub_100043D20(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100092F80, &v17);
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s enabled: %{BOOL}d", v10, 0x12u);
    sub_1000064E0(v11);
  }

  (*(v5 + 8))(v7, v4);
  v12 = *&v2[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_backgroundTapGestureRecognizer];
  if (v12)
  {
    [v12 setEnabled:a1 & 1];
  }

  v13 = [v2 view];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 layer];

    [v15 setHitTestsAsOpaque:a1 & 1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100043F98()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100093320, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s registered for trait change: _DOCSBSUITraitHomeScreenIconStyle", v6, 0xCu);
    sub_1000064E0(v7);
  }

  (*(v1 + 8))(v3, v0);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  UIViewController.forcefullyRegisterForIconStyleChanges(with:)();
}

void *sub_10004418C(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
    v11 = static OS_dispatch_queue.main.getter();
    v16 = v5;
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    aBlock[4] = sub_1000524A8;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D508;
    aBlock[3] = &unk_1000AF498;
    v14 = _Block_copy(aBlock);
    v15 = v10;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000523E8(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_1000518F8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v16);
  }

  return result;
}

void sub_100044480(uint64_t a1)
{
  sub_100046EC4();
  v2 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(v3 + 56) + ((v9 << 9) | (8 * v10)));
    sub_100025E00();
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100044594(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, unint64_t a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, double a14, CGFloat a15, CGFloat a16)
{
  v151 = a7;
  v155 = a6;
  v153 = a4;
  v138 = sub_10000589C(&unk_1000BC6B0, &qword_100090BD0);
  __chkstk_darwin(v138);
  v140 = &v134 - v29;
  v30 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v30 - 8);
  v136 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v134 - v33;
  __chkstk_darwin(v35);
  v148 = &v134 - v36;
  v37 = type metadata accessor for URL();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v142 = &v134 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v141 = &v134 - v41;
  __chkstk_darwin(v42);
  v157 = &v134 - v43;
  __chkstk_darwin(v44);
  v159 = &v134 - v45;
  __chkstk_darwin(v46);
  v48 = &v134 - v47;
  v144 = type metadata accessor for Logger();
  v147 = *(v144 - 8);
  __chkstk_darwin(v144);
  v135 = &v134 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v134 - v51;
  static Logger.UI.getter();
  v53 = *(v38 + 16);
  v150 = a3;
  v145 = v38 + 16;
  v149 = v53;
  v53(v48, a3, v37);

  v143 = v52;
  v54 = Logger.logObject.getter();
  LODWORD(v52) = static os_log_type_t.debug.getter();
  v152 = a8;

  v154 = a5;

  v160 = a2;

  LODWORD(v137) = v52;
  v55 = os_log_type_enabled(v54, v52);
  v156 = a1;
  v158 = v38;
  v139 = v34;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    *v56 = 136316930;
    *(v56 + 4) = sub_100037B98(0xD000000000000066, 0x8000000100093240, &v166);
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_100037B98(a1, v160, &v166);
    *(v56 + 22) = 2080;
    sub_1000523E8(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v57 = v54;
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v61 = *(v38 + 8);
    v61(v48, v37);
    v62 = sub_100037B98(v58, v60, &v166);

    *(v56 + 24) = v62;
    *(v56 + 32) = 2080;
    *(v56 + 34) = sub_100037B98(v153, v154, &v166);
    *(v56 + 42) = 2080;
    if (v155)
    {
      v63 = 1702195828;
    }

    else
    {
      v63 = 0x65736C6166;
    }

    if (v155)
    {
      v64 = 0xE400000000000000;
    }

    else
    {
      v64 = 0xE500000000000000;
    }

    v65 = sub_100037B98(v63, v64, &v166);

    *(v56 + 44) = v65;
    *(v56 + 52) = 2080;
    *(v56 + 54) = sub_100037B98(v151, v152, &v166);
    *(v56 + 62) = 2080;
    v161 = a9;
    v162 = a10;
    v163 = a11;
    v164 = a12;
    type metadata accessor for CGRect(0);
    v66 = String.init<A>(describing:)();
    v68 = sub_100037B98(v66, v67, &v166);

    *(v56 + 64) = v68;
    *(v56 + 72) = 2080;
    v161 = a13;
    v162 = a14;
    v163 = a15;
    v164 = a16;
    v69 = String.init<A>(describing:)();
    v71 = sub_100037B98(v69, v70, &v166);
    a1 = v156;

    *(v56 + 74) = v71;
    _os_log_impl(&_mh_execute_header, v57, v137, "%s identifier: %s directoryURL: %s sortOrder: %s isAscending: %s displayMode: %s iconFrame: %s dockFrame: %s", v56, 0x52u);
    swift_arrayDestroy();
  }

  else
  {

    v61 = *(v38 + 8);
    v61(v48, v37);
  }

  v72 = v143;
  v73 = v144;
  v143 = *(v147 + 1);
  (v143)(v72, v144);
  v74 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  v75 = v146;
  swift_beginAccess();
  v76 = *&v75[v74];
  v77 = v159;
  if (*(v76 + 16))
  {

    v78 = sub_100037A68(a1, v160);
    if (v79)
    {
      v80 = *(*(v76 + 56) + 8 * v78);

      v81 = v135;
      static Logger.UI.getter();

      v82 = v80;
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        *v85 = 136315650;
        *(v85 + 4) = sub_100037B98(0xD000000000000066, 0x8000000100093240, &v166);
        *(v85 + 12) = 2080;
        v87 = v156;
        *(v85 + 14) = sub_100037B98(v156, v160, &v166);
        *(v85 + 22) = 2112;
        *(v85 + 24) = v82;
        *v86 = v82;
        v88 = v82;
        _os_log_impl(&_mh_execute_header, v83, v84, "%s folderController already exists for %s controller: %@. Updating configuration with new values from context.", v85, 0x20u);
        sub_100006390(v86, &qword_1000BC328, &qword_100090AD0);

        swift_arrayDestroy();
        v89 = v152;

        (v143)(v81, v73);
        v90 = v155;
        v91 = v154;
        v92 = v153;
        v93 = v151;
      }

      else
      {

        (v143)(v81, v73);
        v87 = v156;
        v90 = v155;
        v91 = v154;
        v92 = v153;
        v93 = v151;
        v89 = v152;
      }

      sub_100045FCC(v87, v160, v92, v91, v90 & 1, v93, v89, v75, a9, a10, a11, a12, a13, a14, a15, a16);
      sub_1000246B0();
LABEL_30:

      return;
    }
  }

  v144 = v74;
  v147 = v61;
  v94 = v149;
  v149(v77, v150, v37);
  v143 = [v75 view];
  if (v143)
  {
    v137 = *&v75[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_imageCache];

    v95 = v148;
    URL.init(string:)();
    URL.init(fileURLWithPath:)();
    v96 = v139;
    v94(v139, v77, v37);
    v97 = v158;
    (*(v158 + 56))(v96, 0, 1, v37);
    v98 = *(v138 + 48);
    v99 = v140;
    sub_100042774(v96, v140, &unk_1000BCA20, &qword_100090BC0);
    sub_100042774(v95, v99 + v98, &unk_1000BCA20, &qword_100090BC0);
    v100 = *(v97 + 48);
    if (v100(v99, 1, v37) == 1)
    {
      sub_100006390(v96, &unk_1000BCA20, &qword_100090BC0);
      v101 = v100(v99 + v98, 1, v37);
      v102 = v159;
      v103 = v147;
      if (v101 == 1)
      {
        sub_100006390(v99, &unk_1000BCA20, &qword_100090BC0);
        v104 = v154;
        v105 = v153;
        v106 = v157;
LABEL_22:
        v109 = v141;
        v110 = v149;
        v149(v141, v106, v37);
        v111 = v152;

        v112._countAndFlagsBits = v151;
        v112._object = v111;
        v113 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, v112);

        v114 = v113 != 0;

        v168._countAndFlagsBits = v105;
        v168._object = v104;
        v115 = sub_10003C434(v168);
        if (v115 == 6)
        {
          v116 = 1;
        }

        else
        {
          v116 = v115;
        }

        v117 = v142;
        v110(v142, v109, v37);
        v118 = objc_allocWithZone(type metadata accessor for DOCSBFolderPresentationController(0));
        v119 = v160;

        v120 = v156;
        v121 = v114 | (v116 << 8);
        v122 = v143;
        sub_10003C490(v156, v119, v117, v121, v155 & 1, v143, v137, a11, a12);
        v124 = v123;

        v103(v109, v37);
        v103(v157, v37);
        sub_100006390(v148, &unk_1000BCA20, &qword_100090BC0);
        v103(v159, v37);
        v125 = v144;
        swift_beginAccess();

        v126 = v124;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v165 = *&v75[v125];
        *&v75[v125] = 0x8000000000000000;
        sub_10005F094(v126, v120, v119, isUniquelyReferenced_nonNull_native);

        *&v75[v125] = v165;
        swift_endAccess();
        *&v126[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderPresentationControllerDelegate + 8] = &off_1000AEFF0;
        swift_unknownObjectWeakAssign();
        sub_1000246B0();
        v128 = [objc_opt_self() sharedManager];
        v129 = String._bridgeToObjectiveC()();
        URL._bridgeToObjectiveC()(&v167);
        v82 = v130;
        [v128 startObservingFolderID:v129 fileURL:v130];

        goto LABEL_30;
      }
    }

    else
    {
      v107 = v136;
      sub_100042774(v99, v136, &unk_1000BCA20, &qword_100090BC0);
      v108 = v100(v99 + v98, 1, v37);
      v103 = v147;
      if (v108 != 1)
      {
        v131 = v99 + v98;
        v132 = v142;
        (*(v158 + 32))(v142, v131, v37);
        sub_1000523E8(&qword_1000BC4C0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v133 = dispatch thunk of static Equatable.== infix(_:_:)();
        v103(v132, v37);
        sub_100006390(v96, &unk_1000BCA20, &qword_100090BC0);
        v103(v107, v37);
        v75 = v146;
        sub_100006390(v99, &unk_1000BCA20, &qword_100090BC0);
        v106 = v159;
        v104 = v154;
        v105 = v153;
        if (v133)
        {
          v106 = v157;
        }

        goto LABEL_22;
      }

      sub_100006390(v96, &unk_1000BCA20, &qword_100090BC0);
      v103(v107, v37);
      v102 = v159;
    }

    sub_100006390(v99, &unk_1000BC6B0, &qword_100090BD0);
    v106 = v102;
    v104 = v154;
    v105 = v153;
    goto LABEL_22;
  }

  __break(1u);
}

void sub_100045594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_10005F094(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = sub_100037A68(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_10005F388();
        v13 = v15;
      }

      sub_10004E240(v9, v13);
      *v4 = v13;
    }
  }
}

void sub_10004568C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  static Logger.UI.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v9;
    v31[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_100037B98(0xD00000000000001FLL, 0x80000001000931D0, v31);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_100037B98(a1, a2, v31);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s identifier: %s", v15, 0x16u);
    swift_arrayDestroy();
    v9 = v29;
  }

  v17 = *(v7 + 8);
  v17(v12, v6);
  v18 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v19 = *(v3 + v18);
  if (*(v19 + 16))
  {

    v20 = sub_100037A68(a1, a2);
    if (v21)
    {
      v22 = *(*(v19 + 56) + 8 * v20);

      v23 = [objc_opt_self() sharedManager];
      v24 = String._bridgeToObjectiveC()();
      [v23 stopObservingFolderID:v24];

      sub_10002561C();
      swift_beginAccess();

      sub_100045594(0, a1, a2);
      swift_endAccess();

      return;
    }
  }

  static Logger.UI.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_100037B98(0xD00000000000001FLL, 0x80000001000931D0, v30);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_100037B98(a1, a2, v30);
    _os_log_impl(&_mh_execute_header, v25, v26, "%s folderController does not exist for %s nothing to remove", v27, 0x16u);
    swift_arrayDestroy();
  }

  v17(v9, v6);
}

void sub_100045AE4(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v52 = a1;
  v9 = type metadata accessor for Logger();
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  static Logger.UI.getter();
  v49 = a4;
  v15 = a4;

  v16 = a3;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v48 = v18;
  v51 = v17;
  v19 = os_log_type_enabled(v17, v18);
  v47 = v16;
  v50 = v15;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v46 = v9;
    v55[0] = v21;
    *v20 = 136315906;
    *(v20 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100093190, v55);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_100037B98(v52, a2, v55);
    *(v20 + 22) = 2080;
    v54 = a3;
    v22 = v16;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v23 = String.init<A>(describing:)();
    v25 = a2;
    v26 = a3;
    v27 = sub_100037B98(v23, v24, v55);

    *(v20 + 24) = v27;
    *(v20 + 32) = 2080;
    v54 = v49;
    v28 = v50;
    v29 = String.init<A>(describing:)();
    v31 = sub_100037B98(v29, v30, v55);
    a3 = v26;
    a2 = v25;

    *(v20 + 34) = v31;
    v32 = v51;
    _os_log_impl(&_mh_execute_header, v51, v48, "%s identifier: %s chevronView: %s snapshotView: %s", v20, 0x2Au);
    swift_arrayDestroy();
    v9 = v46;
  }

  else
  {
  }

  v33 = *(v53 + 8);
  v33(v14, v9);
  v34 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v35 = *(v5 + v34);
  if (*(v35 + 16))
  {

    v36 = sub_100037A68(v52, a2);
    if (v37)
    {
      v38 = *(*(v35 + 56) + 8 * v36);

      v39 = *&v38[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
      *&v38[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView] = v49;
      v40 = v50;
      sub_10001B5FC(v39);

      v41 = *&v38[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
      *&v38[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView] = a3;
      v42 = v47;
      sub_10001B2B4(v41);

      return;
    }
  }

  static Logger.UI.getter();

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v45 = 136315394;
    *(v45 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100093190, &v54);
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_100037B98(v52, a2, &v54);
    _os_log_impl(&_mh_execute_header, v43, v44, "%s no folderController for identifier: %s", v45, 0x16u);
    swift_arrayDestroy();
  }

  v33(v11, v9);
}

void sub_100045FCC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, void *a7, uint64_t a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, double a14, CGFloat a15, CGFloat a16)
{
  v79 = a8;
  v80 = a1;
  v30 = type metadata accessor for Logger();
  v31 = *(v30 - 8);
  v81 = v30;
  v82 = v31;
  __chkstk_darwin(v30);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v70 - v35;
  static Logger.UI.getter();

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();

  v77 = v38;
  v39 = os_log_type_enabled(v37, v38);
  v76 = a5;
  v74 = a3;
  v75 = a4;
  v73 = a6;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v78 = a7;
    v41 = a3;
    v42 = v40;
    v71 = swift_slowAlloc();
    v87[0] = v71;
    *v42 = 136316674;
    *(v42 + 4) = sub_100037B98(0xD000000000000061, 0x80000001000932B0, v87);
    v72 = v33;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_100037B98(v80, a2, v87);
    *(v42 + 22) = 2080;
    *(v42 + 24) = sub_100037B98(v41, a4, v87);
    *(v42 + 32) = 2080;
    if (a5)
    {
      v43 = 1702195828;
    }

    else
    {
      v43 = 0x65736C6166;
    }

    if (a5)
    {
      v44 = 0xE400000000000000;
    }

    else
    {
      v44 = 0xE500000000000000;
    }

    v45 = sub_100037B98(v43, v44, v87);

    *(v42 + 34) = v45;
    *(v42 + 42) = 2080;
    *(v42 + 44) = sub_100037B98(a6, v78, v87);
    *(v42 + 52) = 2080;
    v83 = a9;
    v84 = a10;
    v85 = a11;
    v86 = a12;
    type metadata accessor for CGRect(0);
    v46 = String.init<A>(describing:)();
    v48 = sub_100037B98(v46, v47, v87);
    a7 = v78;
    v49 = v82;

    *(v42 + 54) = v48;
    *(v42 + 62) = 2080;
    v33 = v72;
    v83 = a13;
    v84 = a14;
    v85 = a15;
    v86 = a16;
    v50 = String.init<A>(describing:)();
    v52 = sub_100037B98(v50, v51, v87);

    *(v42 + 64) = v52;
    v53 = v81;
    _os_log_impl(&_mh_execute_header, v37, v77, "%s identifier: %s sortOrder: %s isAscending: %s displayMode: %s iconFrame: %s dockFrame: %s", v42, 0x48u);
    swift_arrayDestroy();

    v54 = *(v49 + 8);
    v54(v36, v53);
  }

  else
  {

    v54 = *(v82 + 8);
    v54(v36, v81);
  }

  v55 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  v56 = v79;
  swift_beginAccess();
  v57 = *(v56 + v55);
  if (*(v57 + 16))
  {

    v58 = sub_100037A68(v80, a2);
    if (v59)
    {
      v60 = *(*(v57 + 56) + 8 * v58);

      sub_10001ECB8(a9, a10, a11, a12, a13, a14, a15, a16);

      v61._countAndFlagsBits = v73;
      v61._object = a7;
      v62 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, v61);

      v63 = v62 != 0;
      v64 = v75;

      v88._countAndFlagsBits = v74;
      v88._object = v64;
      v65 = sub_10003C434(v88);
      if (v65 == 6)
      {
        v66 = 2;
      }

      else
      {
        v66 = v65;
      }

      sub_10001E8B0(v63 | (v66 << 8), v76 & 1, a11, a12);

      return;
    }
  }

  static Logger.UI.getter();

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v87[0] = swift_slowAlloc();
    *v69 = 136315394;
    *(v69 + 4) = sub_100037B98(0xD000000000000061, 0x80000001000932B0, v87);
    *(v69 + 12) = 2080;
    *(v69 + 14) = sub_100037B98(v80, a2, v87);
    _os_log_impl(&_mh_execute_header, v67, v68, "%s no folderController for identifier: %s", v69, 0x16u);
    swift_arrayDestroy();
  }

  v54(v33, v81);
}

double sub_1000465B8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, char *a6, int a7, uint64_t a8, CGFloat a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17)
{
  v57 = a7;
  v53 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v53 - 8);
  __chkstk_darwin(v53);
  v33 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v54 = *(v34 - 8);
  v55 = v34;
  __chkstk_darwin(v34);
  v36 = &v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);

  v37._countAndFlagsBits = a1;
  v37._object = a2;
  v38 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, v37);

  v39 = v38 != 0;

  v60._countAndFlagsBits = a3;
  v60._object = a4;
  v40 = sub_10003C434(v60);
  if (v40 == 6)
  {
    v41 = 2;
  }

  else
  {
    v41 = v40;
  }

  if (sub_10001E8B0(v39 | (v41 << 8), a5, a11, a12))
  {
    v42 = v57;
    v43 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
    v44 = *&a6[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    if (v44)
    {
      [v44 reloadData];
      v45 = *&a6[v43];
      if (v45)
      {
        [v45 layoutIfNeeded];
      }
    }

    sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
    v46 = static OS_dispatch_queue.main.getter();
    v47 = swift_allocObject();
    *(v47 + 16) = a6;
    *(v47 + 24) = a9;
    *(v47 + 32) = a10;
    *(v47 + 40) = a11;
    *(v47 + 48) = a12;
    *(v47 + 56) = a13;
    *(v47 + 64) = a14;
    *(v47 + 72) = a15;
    *(v47 + 80) = a16;
    *(v47 + 88) = v42 & 1;
    *(v47 + 96) = a8;
    *(v47 + 104) = a17;
    aBlock[4] = sub_1000518DC;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D508;
    aBlock[3] = &unk_1000AF0D8;
    v48 = _Block_copy(aBlock);

    v49 = a6;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000523E8(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_1000518F8();
    v50 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);

    (*(v56 + 8))(v33, v50);
    (*(v54 + 8))(v36, v55);
  }

  else
  {
    v52 = swift_allocObject();
    *(v52 + 16) = a8;
    *(v52 + 24) = a17;

    sub_100020E78(v57 & 1, sub_100052A88, v52, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  return result;
}

double sub_100046A8C(CGFloat a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12)
{
  v23 = swift_allocObject();
  *(v23 + 16) = a11;
  *(v23 + 24) = a12;

  sub_100020E78(a10, sub_10004E974, v23, a1, a2, a3, a4, a5, a6, a7, a8);

  return result;
}

uint64_t sub_100046B84(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void), uint64_t a8, double a9, double a10, double a11, double a12)
{
  v45 = a6;
  v47 = a1;
  v46 = type metadata accessor for Logger();
  v22 = *(v46 - 8);
  __chkstk_darwin(v46);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v44 = a7;
    v28 = v27;
    v29 = swift_slowAlloc();
    v43 = a8;
    v52 = v29;
    *v28 = 136316162;
    *(v28 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, &v52);
    v42 = a5;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_100037B98(a3, a4, &v52);
    *(v28 + 22) = 2080;
    v48 = *&a9;
    v49 = a10;
    v50 = a11;
    v51 = a12;
    type metadata accessor for CGRect(0);
    v30 = String.init<A>(describing:)();
    v32 = sub_100037B98(v30, v31, &v52);

    *(v28 + 24) = v32;
    *(v28 + 32) = 2080;
    if (v47)
    {
      v33 = 1702195828;
    }

    else
    {
      v33 = 0x65736C6166;
    }

    if (v47)
    {
      v34 = 0xE400000000000000;
    }

    else
    {
      v34 = 0xE500000000000000;
    }

    v35 = sub_100037B98(v33, v34, &v52);

    *(v28 + 34) = v35;
    *(v28 + 42) = 2080;
    a5 = v42;
    v48 = a2;
    swift_errorRetain();
    sub_10000589C(&unk_1000BC4B0, &qword_100090BC8);
    v36 = String.init<A>(describing:)();
    v38 = sub_100037B98(v36, v37, &v52);

    *(v28 + 44) = v38;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s identifier: %s iconFrame: %s DOCAppProtectionManager success: %s error: %s", v28, 0x34u);
    swift_arrayDestroy();

    a7 = v44;
  }

  v39 = (*(v22 + 8))(v24, v46);
  if (v47)
  {
    return a5(v39);
  }

  else
  {
    return a7(0);
  }
}

void sub_100046EC4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v9 = *&v1[v8];

  static Logger.UI.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = os_log_type_enabled(v10, v11);
  v43 = v2;
  v44 = v3;
  v41 = v9;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093140, &v45);
    *(v13 + 12) = 2080;
    type metadata accessor for DOCSBFolderPresentationController(0);
    v14 = Dictionary.Keys.description.getter();
    v16 = sub_100037B98(v14, v15, &v45);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s all identifiers: %s", v13, 0x16u);
    swift_arrayDestroy();

    v40 = *(v44 + 8);
  }

  else
  {

    v40 = *(v3 + 8);
  }

  v40(v7, v2);
  v17 = *&v1[v8];
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (v20)
  {
    while (1)
    {
      v23 = v22;
LABEL_12:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = v24 | (v23 << 6);
      v26 = (*(v17 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(*(v17 + 56) + 8 * v25);

      v30 = v1;
      v31 = v29;
      sub_10004FA28(v27, v28, v30, v27, v28, v30, v31);

      if (!v20)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      return;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = *(v17 + 64 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_12;
    }
  }

  v32 = v42;
  static Logger.UI.getter();

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v35 = 136315394;
    *(v35 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093140, &v45);
    *(v35 + 12) = 2080;
    type metadata accessor for DOCSBFolderPresentationController(0);
    v36 = Dictionary.Keys.description.getter();
    v38 = sub_100037B98(v36, v37, &v45);

    *(v35 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v33, v34, "%s started icon batch request for identifiers: %s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v40(v32, v43);
}

double sub_1000473B0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v40 = a6;
  v41 = a5;
  v10 = type metadata accessor for Logger();
  v42 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  static Logger.UI.getter();

  sub_100041D04(a1, a2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  sub_100041D6C(a1, a2);
  v18 = os_log_type_enabled(v16, v17);
  v39 = a4;
  v37 = a3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v36 = v12;
    v44 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093140, &v44);
    v38 = v10;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_100037B98(a3, a4, &v44);
    *(v19 + 22) = 2080;
    v43[0] = a1;
    v43[1] = a2;
    sub_100041D04(a1, a2);
    sub_10000589C(&unk_1000BC3C0, &unk_100090B30);
    v21 = String.init<A>(describing:)();
    v23 = sub_100037B98(v21, v22, &v44);
    v10 = v38;

    *(v19 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s received iconData for identifier: %s iconData: %s", v19, 0x20u);
    swift_arrayDestroy();
    v12 = v36;
  }

  v24 = *(v42 + 8);
  v24(v15, v10);
  if (a2 >> 60 != 15)
  {
    sub_100041D18(a1, a2);
    static Logger.UI.getter();
    v26 = v39;

    sub_100041D04(a1, a2);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    sub_100041D6C(a1, a2);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v29 = 136315650;
      *(v29 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093140, v43);
      v38 = v10;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_100037B98(v37, v26, v43);
      *(v29 + 22) = 2080;
      sub_100041D18(a1, a2);
      v30 = Data.description.getter();
      v32 = v31;
      sub_100041D6C(a1, a2);
      v33 = sub_100037B98(v30, v32, v43);

      *(v29 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s received valid iconData for identifier: %s iconData: %s. Sending to host", v29, 0x20u);
      swift_arrayDestroy();

      v34 = v12;
      v35 = v38;
    }

    else
    {

      v34 = v12;
      v35 = v10;
    }

    v24(v34, v35);
    sub_10004782C(v40, a1, a2);
    return sub_100041D6C(a1, a2);
  }

  return result;
}

double sub_10004782C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v12 = a1;
  sub_100041D18(a2, a3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  sub_100041D80(a2, a3);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v14;
    v18 = v17;
    v29 = v17;
    v31 = swift_slowAlloc();
    v33 = v31;
    *v16 = 136315650;
    *(v16 + 4) = sub_100037B98(0xD00000000000002ELL, 0x8000000100093160, &v33);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v18 = v12;
    *(v16 + 22) = 2080;
    v19 = v12;
    v20 = Data.description.getter();
    v22 = v9;
    v23 = sub_100037B98(v20, v21, &v33);

    *(v16 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v13, v30, "%s folderPresentationController: %@ didUpdateIcon: %s", v16, 0x20u);
    sub_100006390(v29, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    (*(v22 + 8))(v11, v32);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v24 = swift_allocObject();
  v24[2] = v4;
  v24[3] = v12;
  v24[4] = a2;
  v24[5] = a3;
  v25 = v12;
  sub_100041D18(a2, a3);
  v26 = v4;
  DOCRunInMainThread(_:)();

  return result;
}

double sub_100047B28(uint64_t a1, unint64_t a2, void (*a3)(void, void), NSObject *a4)
{
  v5 = v4;
  v63 = a3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v61 = &v56[-v14];
  __chkstk_darwin(v15);
  v17 = &v56[-v16];
  static Logger.UI.getter();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v62 = v9;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v59 = v12;
    v22 = a1;
    v23 = v10;
    v24 = v9;
    v25 = v21;
    v26 = swift_slowAlloc();
    v60 = a4;
    v65[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, v65);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_100037B98(v22, a2, v65);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s identifier: %s", v25, 0x16u);
    swift_arrayDestroy();
    a4 = v60;

    v27 = *(v23 + 8);
    a1 = v22;
    v12 = v59;
    v27(v17, v24);
  }

  else
  {

    v27 = *(v10 + 8);
    v27(v17, v9);
  }

  v28 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v29 = *(v5 + v28);
  if (*(v29 + 16))
  {

    v30 = sub_100037A68(a1, a2);
    if (v31)
    {
      v32 = a1;
      v33 = *(*(v29 + 56) + 8 * v30);

      v34 = v61;
      static Logger.UI.getter();

      v35 = v33;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();

      v60 = v36;
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v64 = v59;
        *v38 = 136315650;
        *(v38 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v64);
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_100037B98(v32, a2, &v64);
        *(v38 + 22) = 2080;
        v39 = v35;
        v58 = v27;
        v40 = v39;
        v41 = [v39 description];
        v57 = v37;
        v42 = a4;
        v43 = v41;
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        a4 = v42;
        v47 = sub_100037B98(v44, v46, &v64);

        *(v38 + 24) = v47;
        v48 = v60;
        _os_log_impl(&_mh_execute_header, v60, v57, "%s requesting image data from controller with identifier: %s controller: %s", v38, 0x20u);
        swift_arrayDestroy();

        v58(v61, v62);
      }

      else
      {

        v27(v34, v62);
      }

      v53 = swift_allocObject();
      v53[2] = v32;
      v53[3] = a2;
      v54 = v63;
      v53[4] = v35;
      v53[5] = v54;
      v53[6] = a4;

      v55 = v35;

      sub_100033C70(sub_100052AB4, v53);

      return result;
    }
  }

  static Logger.UI.getter();

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v51 = 136315394;
    *(v51 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v64);
    *(v51 + 12) = 2080;
    *(v51 + 14) = sub_100037B98(a1, a2, &v64);
    _os_log_impl(&_mh_execute_header, v49, v50, "%s no folderController for identifier: %s", v51, 0x16u);
    swift_arrayDestroy();
  }

  v27(v12, v62);
  v63(0, 0xF000000000000000);
  return result;
}

uint64_t sub_1000481A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t (*a6)(void, void), uint64_t a7)
{
  v37 = a3;
  v38 = type metadata accessor for Logger();
  v13 = *(v38 - 8);
  __chkstk_darwin(v38);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  sub_100041D04(a1, a2);

  v16 = a5;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  sub_100041D6C(a1, a2);

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v18;
    v20 = v19;
    v34 = swift_slowAlloc();
    v41 = v34;
    *v20 = 136315906;
    *(v20 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v41);
    *(v20 + 12) = 2080;
    v39 = a1;
    v40 = a2;
    sub_100041D04(a1, a2);
    sub_10000589C(&unk_1000BC3C0, &unk_100090B30);
    v21 = String.init<A>(describing:)();
    v35 = a7;
    v23 = sub_100037B98(v21, v22, &v41);
    v36 = a6;
    v24 = v23;

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_100037B98(v37, a4, &v41);
    *(v20 + 32) = 2080;
    v25 = v16;
    v26 = [v25 description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_100037B98(v27, v29, &v41);

    *(v20 + 34) = v30;
    a6 = v36;
    _os_log_impl(&_mh_execute_header, v17, v33, "%s received image data: %s from controller with identifier: %s controller: %s", v20, 0x2Au);
    swift_arrayDestroy();
  }

  (*(v13 + 8))(v15, v38);
  return a6(a1, a2);
}

id sub_10004849C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  *&v4[v7] = sub_10007B6D4(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_backgroundTapGestureRecognizer] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_actionManager;
  type metadata accessor for DOCActionManager();
  *&v4[v8] = DOCActionManager.init()();
  *&v4[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController____lazy_storage___configuration] = 0;
  v9 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *&v4[v9] = ImageCache.init()();
  if (a2)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for DOCSBSceneRootViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_100048620(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  *&v2[v4] = sub_10007B6D4(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_backgroundTapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_actionManager;
  type metadata accessor for DOCActionManager();
  *&v2[v5] = DOCActionManager.init()();
  *&v2[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController____lazy_storage___configuration] = 0;
  v6 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *&v2[v6] = ImageCache.init()();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for DOCSBSceneRootViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_100048740(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCSBSceneRootViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_1000488A4()
{
  v0 = sub_1000436E8();
  v1 = [v0 isPopoverOrWidget];

  if (v1)
  {
    return 0;
  }

  v3 = [objc_opt_self() cancellingKeyCommandsWithAction:"performDismiss:"];
  sub_10001A2A8(0, &unk_1000BC6A0, UIKeyCommand_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000D778(v4, v5);
  return _swiftEmptyArrayStorage;
}

double sub_10004896C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  sub_100042774(a1, v20, &qword_1000BCA30, &unk_100090E80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = v2;
    v9 = v8;
    v16 = swift_slowAlloc();
    v19 = v16;
    *v9 = 136315394;
    *(v9 + 4) = sub_100037B98(0xD000000000000012, 0x8000000100093120, &v19);
    *(v9 + 12) = 2080;
    sub_100042774(v20, v18, &qword_1000BCA30, &unk_100090E80);
    sub_10000589C(&qword_1000BCA30, &unk_100090E80);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    sub_100006390(v20, &qword_1000BCA30, &unk_100090E80);
    v13 = sub_100037B98(v10, v12, &v19);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s sender: %s", v9, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v5, v17);
  }

  else
  {

    sub_100006390(v20, &qword_1000BCA30, &unk_100090E80);
    (*(v3 + 8))(v5, v2);
  }

  return sub_100048BF8();
}

double sub_100048BF8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  sub_1000434A4(v6);
  v8 = v7;

  if (!*(v8 + 16))
  {
    sub_100043D20(0);
  }

  static Logger.UI.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = v2;
    v12 = v11;
    v21[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100037B98(0xD000000000000014, 0x8000000100093100, v21);
    *(v12 + 12) = 2080;
    v13 = Array.description.getter();
    v15 = sub_100037B98(v13, v14, v21);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s dismissing folders with identifiers: %s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v5, v20);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v16 = v1 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(v8, ObjectType, v17);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

id sub_100048F3C(void *a1)
{
  v3 = [v1 view];
  [a1 locationInView:v3];
  v5 = v4;
  v7 = v6;

  result = [v1 view];
  if (result)
  {
    v9 = result;
    v10 = [result hitTest:0 withEvent:{v5, v7}];

    if (v10)
    {
      v11 = v10;
      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
        v14 = static NSObject.== infix(_:_:)();
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    return (v14 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1000490B4(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = v2;
    v10 = v9;
    v19 = swift_slowAlloc();
    v21 = v19;
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD000000000000019, 0x80000001000930E0, &v21);
    *(v10 + 12) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100037B98(v13, v15, &v21);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s sender: %s", v10, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v5, v20);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return sub_100048BF8();
}

void sub_100049360(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_100037B98(0xD000000000000027, 0x80000001000934A0, v31);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v15 = v10;
    *(v14 + 22) = 2080;
    v30 = a2;
    v16 = v10;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v17 = String.init<A>(describing:)();
    v19 = sub_100037B98(v17, v18, v31);
    v28 = v6;
    v20 = v19;

    *(v14 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s folderPresentationController: %@ node: %s", v14, 0x20u);
    sub_100006390(v15, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v3 = v29;

    (*(v7 + 8))(v9, v28);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();

  sub_1000434A4(v21);
  v23 = v22;

  v24 = v3 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 8);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(v23, ObjectType, v25);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_10004969C(a2);
}

void sub_10004969C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21[0] = v2;
    v11 = v10;
    aBlock[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD000000000000018, 0x80000001000934D0, aBlock);
    *(v11 + 12) = 2080;
    v21[1] = a1;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v12 = String.init<A>(describing:)();
    v14 = sub_100037B98(v12, v13, aBlock);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s node: %s", v11, 0x16u);
    swift_arrayDestroy();

    v2 = v21[0];
  }

  (*(v5 + 8))(v7, v4);
  type metadata accessor for DOCInteractionManager();
  v15 = String._bridgeToObjectiveC()();
  v16 = static DOCInteractionManager.sharedManager(for:)();

  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = v2;
  aBlock[4] = sub_100052540;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004BE04;
  aBlock[3] = &unk_1000AF538;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v19 = v16;
  v20 = v2;

  [a1 fetchURL:v18];
  _Block_release(v18);
}

void sub_1000499C0(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100093400, v31);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v15 = v10;
    *(v14 + 22) = 2080;
    v30 = a2;
    v16 = v10;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v17 = String.init<A>(describing:)();
    v19 = sub_100037B98(v17, v18, v31);
    v28 = v6;
    v20 = v19;

    *(v14 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s folderPresentationController: %@ node: %s", v14, 0x20u);
    sub_100006390(v15, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v3 = v29;

    (*(v7 + 8))(v9, v28);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();

  sub_1000434A4(v21);
  v23 = v22;

  v24 = v3 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 8);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(v23, ObjectType, v25);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_10004F718(a2);
}

double sub_100049CF8(char *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000589C(&qword_1000BBDC0, &qword_100090E90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10008F930;
  v9 = &a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
  v10 = *&a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];
  *(v8 + 32) = *&a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
  *(v8 + 40) = v10;

  static Logger.UI.getter();
  v11 = a1;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v43 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v41 = v16;
    v42 = swift_slowAlloc();
    v48 = v42;
    *v15 = 136316162;
    *(v15 + 4) = sub_100037B98(0xD000000000000033, 0x80000001000933C0, &v48);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    *v16 = v11;
    *(v15 + 22) = 2080;
    v47 = v3;
    v17 = v11;
    v18 = String.init<A>(describing:)();
    v44 = v3;
    v20 = sub_100037B98(v18, v19, &v48);
    HIDWORD(v40) = v13;
    v21 = v5;
    v22 = v9;
    v23 = v20;

    *(v15 + 24) = v23;
    v9 = v22;
    *(v15 + 32) = 2080;
    v46 = v17[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v24 = String.init<A>(describing:)();
    v26 = sub_100037B98(v24, v25, &v48);

    *(v15 + 34) = v26;
    *(v15 + 42) = 2080;
    v27 = Array.description.getter();
    v29 = sub_100037B98(v27, v28, &v48);

    *(v15 + 44) = v29;
    v3 = v44;
    _os_log_impl(&_mh_execute_header, v12, BYTE4(v40), "%s folderPresentationController: %@ requestStateChange: %s transitionState: %s identifiers: %s", v15, 0x34u);
    sub_100006390(v41, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    (*(v21 + 8))(v7, v43);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  if ((v3 - 1) < 2)
  {

    v30 = v45 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return result;
    }

    v32 = *(v30 + 8);
    ObjectType = swift_getObjectType();
    v34 = *v9;
    v35 = *(v9 + 1);
    v36 = *(v32 + 16);

    v36(v34, v35, ObjectType, v32);
    goto LABEL_9;
  }

  v37 = v45 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = *(v37 + 8);
    v39 = swift_getObjectType();
    (*(v38 + 8))(v8, v39, v38);
LABEL_9:

    swift_unknownObjectRelease();
    return result;
  }

  return result;
}

double sub_10004A144(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v41 = v8;
  v42 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v33[-v10];
  v12 = type metadata accessor for Logger();
  v39 = *(v12 - 8);
  v40 = v12;
  __chkstk_darwin(v12);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.UI.getter();
  v15 = *(v7 + 16);
  v43 = a2;
  v38 = v15;
  v15(v11, a2, v6);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v35 = v21;
    v36 = swift_slowAlloc();
    v44 = v36;
    *v20 = 136315650;
    *(v20 + 4) = sub_100037B98(0xD000000000000033, 0x80000001000934F0, &v44);
    *(v20 + 12) = 2112;
    *(v20 + 14) = v16;
    *v21 = v16;
    *(v20 + 22) = 2080;
    sub_1000523E8(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v22 = v16;
    v34 = v18;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v7 + 8))(v11, v6);
    v26 = sub_100037B98(v23, v25, &v44);

    *(v20 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v17, v34, "%s folderPresentationController: %@ didUpdateFolderURL: %s", v20, 0x20u);
    sub_100006390(v35, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v3 = v37;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  (*(v39 + 8))(v14, v40);
  v27 = v42;
  v38(v42, v43, v6);
  v28 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v3;
  *(v29 + 24) = v16;
  (*(v7 + 32))(v29 + v28, v27, v6);
  v30 = v16;
  v31 = v3;
  DOCRunInMainThread(_:)();

  return result;
}

uint64_t sub_10004A580(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v8 + 8))(v10, v7);
    v18 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
    v19 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);
    v20 = *(v13 + 24);

    v20(v15, v17, v18, v19, a3, ObjectType, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10004A700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v13 + 8);
    v24 = a4;
    ObjectType = swift_getObjectType();
    UUID.init()();
    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v10 + 8))(v12, v9);
    v20 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
    v21 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);
    v22 = *(v15 + 32);

    v22(v17, v19, v20, v21, a3, v24, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_10004A890(void *a1, uint64_t a2)
{
  v3 = v2;
  v39 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v39);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = type metadata accessor for Logger();
  v41 = *(v12 - 8);
  v42 = v12;
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  sub_100042774(a2, v11, &unk_1000BCA20, &qword_100090BC0);
  v15 = a1;
  v40 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v16;
    v19 = v18;
    v20 = swift_slowAlloc();
    v36 = v20;
    v38 = swift_slowAlloc();
    v43 = v38;
    *v19 = 136315650;
    *(v19 + 4) = sub_100037B98(0xD000000000000034, 0x8000000100093530, &v43);
    *(v19 + 12) = 2112;
    *(v19 + 14) = v15;
    *v20 = v15;
    *(v19 + 22) = 2080;
    sub_100042774(v11, v8, &unk_1000BCA20, &qword_100090BC0);
    v21 = v15;
    v22 = String.init<A>(describing:)();
    LODWORD(v39) = v17;
    v23 = v6;
    v24 = a2;
    v25 = v3;
    v27 = v26;
    sub_100006390(v11, &unk_1000BCA20, &qword_100090BC0);
    v28 = v22;
    v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = sub_100037B98(v28, v27, &v43);
    v3 = v25;
    a2 = v24;
    v6 = v23;

    *(v19 + 24) = v29;
    v30 = v37;
    _os_log_impl(&_mh_execute_header, v37, v39, "%s folderPresentationController: %@ requestFolderDelete: %s", v19, 0x20u);
    sub_100006390(v36, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();
  }

  else
  {

    sub_100006390(v11, &unk_1000BCA20, &qword_100090BC0);
  }

  (*(v41 + 8))(v40, v42);
  sub_100042774(a2, v8, &unk_1000BCA20, &qword_100090BC0);
  v31 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v3;
  *(v32 + 24) = v15;
  sub_100042594(v8, v32 + v31);
  v33 = v15;
  v34 = v3;
  DOCRunInMainThread(_:)();

  return result;
}

uint64_t sub_10004ACB4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v8 + 8))(v10, v7);
    v18 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
    v19 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);
    v20 = *(v13 + 40);

    v20(v15, v17, v18, v19, a3, ObjectType, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_10004AE34(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v3;
    v14 = a2;
    v15 = v13;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100092F40, &v24);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v10;
    *v16 = v10;
    *(v15 + 22) = 1024;
    *(v15 + 24) = v14 & 1;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s folderPresentationController: %@ didCompleteAnimation expanded: %{BOOL}d", v15, 0x1Cu);
    sub_100006390(v16, &qword_1000BC328, &qword_100090AD0);

    sub_1000064E0(v17);

    a2 = v14;
    v3 = v23;
  }

  (*(v7 + 8))(v9, v6);
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v10;
  *(v19 + 32) = a2 & 1;
  v20 = v10;
  v21 = v3;
  DOCRunInMainThread(_:)();

  return result;
}

uint64_t sub_10004B0A8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v8 + 8))(v10, v7);
    v18 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
    v19 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);
    v20 = *(v13 + 48);

    v20(v15, v17, v18, v19, a3 & 1, ObjectType, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10004B228(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = a3;
  v22 = a4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultPermission];
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v11, v9, v6);
  *(v15 + v12) = a2;
  v16 = v21;
  *(v15 + v13) = v21;
  v17 = v22;
  *(v15 + v14) = v22;
  aBlock[4] = sub_100052550;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D508;
  aBlock[3] = &unk_1000AF588;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v19 = v16;
  v20 = v17;

  [v10 adoptPersonaFromNode:a2 andPerformBlock:v18];
  _Block_release(v18);
}

double sub_10004B448(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = a1;
  v22 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v10);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v12, v11, v7);
  *(v16 + v13) = a2;
  *(v16 + v14) = a3;
  v17 = v22;
  *(v16 + v15) = v22;
  swift_unknownObjectRetain();
  v18 = a3;
  v19 = v17;
  static LaunchUtils.tryOpeningInDefaultApp(_:node:requireOpenInPlace:preferQuickLook:alertPresenting:completionBlock:)();

  return result;
}

uint64_t sub_10004B5EC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v25 = a2;
  v26 = a1;
  v6 = type metadata accessor for DOCAnalyticsActionEvent.ViewMode();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DOCAnalyticsActionEvent.Source();
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DOCAnalyticsActionEvent.FileProvider();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for DOCAnalyticsActionEvent.Action();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DOCAnalyticsActionEvent();
  v16 = *(v27 - 8);
  v17.n128_f64[0] = __chkstk_darwin(v27);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v26 & 1) == 0)
  {
    static LaunchUtils.launchDocuments(toPreview:node:alertPresenting:)();
  }

  (*(v13 + 104))(v15, enum case for DOCAnalyticsActionEvent.Action.openIn(_:), v12, v17);
  sub_1000436E8();
  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10008F940;
  *(v20 + 32) = a3;
  swift_unknownObjectRetain();
  DOCAnalyticsActionEvent.FileProvider.init(nodes:)();
  v21 = [objc_opt_self() mainBundle];
  v22 = [v21 bundleIdentifier];

  if (v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  (*(v8 + 104))(v10, enum case for DOCAnalyticsActionEvent.Source.recents(_:), v28);
  (*(v30 + 104))(v29, enum case for DOCAnalyticsActionEvent.ViewMode.unknown(_:), v31);
  DOCAnalyticsActionEvent.init(actionType:configuration:provider:bundleIdentifier:source:viewMode:)();
  type metadata accessor for DOCAnalyticsManager();
  v23 = static DOCAnalyticsManager.shared.getter();
  DOCAnalyticsManager.sendActionEvent(_:)();

  dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();
  return (*(v16 + 8))(v19, v27);
}

uint64_t sub_10004BA0C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v29 = a5;
  v30 = a2;
  v8 = type metadata accessor for Logger();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();
  sub_100042774(a1, v13, &unk_1000BCA20, &qword_100090BC0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100006390(v13, &unk_1000BCA20, &qword_100090BC0);
    static Logger.UI.getter();
    swift_unknownObjectRetain();
    v18 = v30;
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_100037B98(0xD000000000000018, 0x80000001000934D0, &v34);
      *(v21 + 12) = 2080;
      v33 = a4;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v22 = String.init<A>(describing:)();
      v24 = sub_100037B98(v22, v23, &v34);

      *(v21 + 14) = v24;
      *(v21 + 22) = 2080;
      v33 = v18;
      swift_errorRetain();
      sub_10000589C(&unk_1000BC4B0, &qword_100090BC8);
      v25 = String.init<A>(describing:)();
      v27 = sub_100037B98(v25, v26, &v34);

      *(v21 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s fetch url from node: %s error: %s", v21, 0x20u);
      swift_arrayDestroy();
    }

    return (*(v31 + 8))(v10, v32);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_10004B228(v17, a4, v29, a3);
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_10004BE04(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_100006390(v8, &unk_1000BCA20, &qword_100090BC0);
}

id sub_10004BF58(uint64_t a1, void *a2)
{
  v67 = a2;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v64 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v62 - v6;
  v7 = type metadata accessor for URL();
  v68 = *(v7 - 8);
  __chkstk_darwin(v7);
  v63 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v69 = &v62 - v10;
  v11 = type metadata accessor for URLComponents();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v15 - 8);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v70 = &v62 - v19;
  v20 = sub_10000589C(&qword_1000BC6C0, &qword_100090E98);
  __chkstk_darwin(v20 - 8);
  v22 = &v62 - v21;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v23 = *(v12 + 48);
  v24 = v23(v22, 1, v11);
  v71 = v22;
  if (!v24)
  {
    URLComponents.scheme.setter();
    v22 = v71;
  }

  if (!v23(v22, 1, v11))
  {
    sub_10000589C(&qword_1000BC6C8, qword_100090EA0);
    type metadata accessor for URLQueryItem();
    v62 = v7;
    v65 = v2;
    *(swift_allocObject() + 16) = xmmword_100090DF0;
    URLQueryItem.init(name:value:)();
    v2 = v65;
    v7 = v62;
    URLQueryItem.init(name:value:)();
    URLComponents.queryItems.setter();
    v22 = v71;
  }

  if (v23(v22, 1, v11))
  {
    v25 = v68;
    v26 = v70;
    v68[7](v70, 1, 1, v7);
  }

  else
  {
    (*(v12 + 16))(v14, v22, v11);
    v26 = v70;
    URLComponents.url.getter();
    (*(v12 + 8))(v14, v11);
    v25 = v68;
  }

  v27 = v69;
  v28 = v67;
  sub_100042774(v26, v17, &unk_1000BCA20, &qword_100090BC0);
  if ((v25[6])(v17, 1, v7) == 1)
  {
    sub_100006390(v26, &unk_1000BCA20, &qword_100090BC0);
    v29 = v17;
LABEL_20:
    sub_100006390(v29, &unk_1000BCA20, &qword_100090BC0);
    return sub_100006390(v71, &qword_1000BC6C0, &qword_100090E98);
  }

  (v25[4])(v27, v17, v7);
  v30 = v66;
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_100037B98(0xD000000000000013, 0x8000000100093480, &v73);
    *(v33 + 12) = 2080;
    v72 = v28;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v34 = String.init<A>(describing:)();
    v36 = v3;
    v37 = sub_100037B98(v34, v35, &v73);

    *(v33 + 14) = v37;
    v3 = v36;
    v27 = v69;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s node already has url for item: %s", v33, 0x16u);
    swift_arrayDestroy();

    v38 = *(v3 + 1);
    (v38)(v66, v2);
  }

  else
  {

    v38 = *(v3 + 1);
    (v38)(v30, v2);
  }

  v65 = v2;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v41 = result;
    URL._bridgeToObjectiveC()(v40);
    v43 = v42;
    sub_10003F1F0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v73 = 0;
    v45 = [v41 openSensitiveURL:v43 withOptions:isa error:&v73];

    if (v45)
    {
      v46 = v25[1];
      v47 = v73;
      (v46)(v27, v7);
    }

    else
    {
      v68 = v38;
      v48 = v73;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v49 = v64;
      static Logger.UI.getter();
      v50 = v63;
      (v25[2])(v63, v27, v7);
      swift_errorRetain();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v73 = v67;
        *v53 = 136315650;
        *(v53 + 4) = sub_100037B98(0xD000000000000013, 0x8000000100093480, &v73);
        *(v53 + 12) = 2080;
        sub_1000523E8(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v3;
        v56 = v55;
        v57 = v25[1];
        (v57)(v50, v7);
        v58 = sub_100037B98(v54, v56, &v73);

        *(v53 + 14) = v58;
        *(v53 + 22) = 2112;
        swift_errorRetain();
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v53 + 24) = v59;
        v60 = v62;
        *v62 = v59;
        _os_log_impl(&_mh_execute_header, v51, v52, "%s failed to open url: %s error: %@", v53, 0x20u);
        sub_100006390(v60, &qword_1000BC328, &qword_100090AD0);

        swift_arrayDestroy();

        (v68)(v64, v65);
        (v57)(v69, v7);
      }

      else
      {

        v61 = v25[1];
        (v61)(v50, v7);
        (v68)(v49, v65);
        (v61)(v27, v7);
      }
    }

    v29 = v70;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004CA5C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v28 = a2;
  v6 = type metadata accessor for Logger();
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of DOCInteractionManager.lastOpenedNode.setter();
  sub_100042774(a1, v11, &unk_1000BCA20, &qword_100090BC0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100006390(v11, &unk_1000BCA20, &qword_100090BC0);
    static Logger.UI.getter();
    swift_unknownObjectRetain();
    v16 = v28;
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_100037B98(0xD000000000000015, 0x8000000100093460, &v32);
      *(v19 + 12) = 2080;
      v31 = a4;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v20 = String.init<A>(describing:)();
      v22 = sub_100037B98(v20, v21, &v32);

      *(v19 + 14) = v22;
      *(v19 + 22) = 2080;
      v31 = v16;
      swift_errorRetain();
      sub_10000589C(&unk_1000BC4B0, &qword_100090BC8);
      v23 = String.init<A>(describing:)();
      v25 = sub_100037B98(v23, v24, &v32);

      *(v19 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s fetch url from node: %s error: %s", v19, 0x20u);
      swift_arrayDestroy();
    }

    return (*(v29 + 8))(v8, v30);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_10004BF58(v15, a4);
    return (*(v13 + 8))(v15, v12);
  }
}

void sub_10004CEB4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  v19 = a3;
  v20 = a4;
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18 = v20;
  *a5 = v19;
  *a6 = v18;
}

void sub_10004CFD4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  static Logger.UI.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = a4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = v12;
    v38[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_100037B98(0xD00000000000002ELL, 0x80000001000930B0, v38);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_100037B98(a1, a2, v38);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s identifier: %s", v19, 0x16u);
    swift_arrayDestroy();
    v12 = v35;

    a4 = v34;
  }

  v21 = *(v10 + 8);
  v21(v15, v9);
  v22 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v23 = *(v5 + v22);
  if (*(v23 + 16))
  {

    v24 = sub_100037A68(a1, a2);
    if (v25)
    {
      v26 = *(*(v23 + 56) + 8 * v24);

      v27 = &v26[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler];
      v28 = *&v26[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler];
      v29 = *&v26[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler + 8];
      *v27 = v36;
      v27[1] = a4;

      sub_10004347C(v28, v29);

      return;
    }
  }

  static Logger.UI.getter();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v32 = 136315394;
    *(v32 + 4) = sub_100037B98(0xD00000000000002ELL, 0x80000001000930B0, &v37);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_100037B98(a1, a2, &v37);
    _os_log_impl(&_mh_execute_header, v30, v31, "%s no presentation controller identifier: %s !", v32, 0x16u);
    swift_arrayDestroy();
  }

  v21(v12, v9);
}

void sub_10004D48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = String._bridgeToObjectiveC()();
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a5 + 16))(a5, v6, v9, isa);
}

void sub_10004D524(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  static Logger.UI.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v9;
    v32[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_100037B98(0xD000000000000022, 0x8000000100093080, v32);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_100037B98(a1, a2, v32);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s identifier: %s", v15, 0x16u);
    swift_arrayDestroy();
    v9 = v30;
  }

  v17 = *(v7 + 8);
  v17(v12, v6);
  v18 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v19 = *(v3 + v18);
  if (*(v19 + 16))
  {

    v20 = sub_100037A68(a1, a2);
    if (v21)
    {
      v22 = *(*(v19 + 56) + 8 * v20);

      v23 = &v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler];
      v24 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler];
      v25 = *&v22[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler + 8];
      *v23 = 0;
      *(v23 + 1) = 0;
      sub_10004347C(v24, v25);

      return;
    }
  }

  static Logger.UI.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_100037B98(0xD000000000000022, 0x8000000100093080, &v31);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_100037B98(a1, a2, &v31);
    _os_log_impl(&_mh_execute_header, v26, v27, "%s no presentation controller identifier: %s !", v28, 0x16u);
    swift_arrayDestroy();
  }

  v17(v9, v6);
}

void sub_10004D968()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() protectedAppsEnabled])
  {
    static Logger.DockApp.getter();
    v5 = v0;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23[0] = swift_slowAlloc();
      *v8 = 136315650;
      *(v8 + 4) = sub_100037B98(0xD000000000000021, 0x8000000100093050, v23);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_100037B98(0xD000000000000021, 0x8000000100093050, v23);
      *(v8 + 22) = 2112;
      *(v8 + 24) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s [PROTECTED APPS] %s %@", v8, 0x20u);
      sub_100006390(v9, &qword_1000BC328, &qword_100090AD0);

      swift_arrayDestroy();
    }

    (*(v2 + 8))(v4, v1);
    v11 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
    swift_beginAccess();
    v12 = *&v5[v11];
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v17 = 0;
    while (v15)
    {
      v18 = v17;
LABEL_12:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = *(*(v12 + 56) + ((v18 << 9) | (8 * v19)));
      v20 = v22;
      sub_10004DC98(&v22, v5);
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        return;
      }

      v15 = *(v12 + 64 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_10004DC98(void **a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  static Logger.DockApp.getter();
  v9 = a2;
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v14 = 136315906;
    *(v14 + 4) = sub_100037B98(0xD000000000000021, 0x8000000100093050, &v24);
    v21 = v5;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_100037B98(0xD000000000000021, 0x8000000100093050, &v24);
    *(v14 + 22) = 2112;
    *(v14 + 24) = v9;
    *v15 = v9;
    *(v14 + 32) = 2080;
    v16 = *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v17 = *&v10[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];
    v18 = v9;

    v19 = sub_100037B98(v16, v17, &v24);

    *(v14 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s [PROTECTED APPS] %s %@ checking folder presentation controller: %s", v14, 0x2Au);
    sub_100006390(v15, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    (*(v23 + 8))(v7, v21);
  }

  else
  {

    (*(v23 + 8))(v7, v5);
  }

  sub_100026CAC();
}

unint64_t sub_10004DFA0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10004E074(a1, v2);
}

unint64_t sub_10004E030(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10004E178(a1, v4);
}

unint64_t sub_10004E074(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10004E178(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10005195C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000519B8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_10004E240(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_10004E3F0(uint64_t a1, unint64_t a2, char a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v61 = a4;
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v62 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v57 - v29;
  v31 = a5;
  static Logger.UI.getter();

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  v34 = os_log_type_enabled(v32, v33);
  v60 = a1;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v59 = v25;
    v36 = v35;
    v57 = swift_slowAlloc();
    v67[0] = v57;
    *v36 = 136316162;
    *(v36 + 4) = sub_100037B98(0xD00000000000003CLL, 0x8000000100092F00, v67);
    v58 = v26;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_100037B98(a1, a2, v67);
    *(v36 + 22) = 2080;
    v63 = a6;
    v64 = a7;
    v65 = a8;
    v66 = a9;
    type metadata accessor for CGRect(0);
    v37 = String.init<A>(describing:)();
    v39 = a3;
    v40 = v31;
    v41 = sub_100037B98(v37, v38, v67);

    *(v36 + 24) = v41;
    v31 = v40;
    a3 = v39;
    *(v36 + 32) = 2080;
    v26 = v58;
    v63 = a10;
    v64 = a11;
    v65 = a12;
    v66 = a13;
    v42 = String.init<A>(describing:)();
    v44 = sub_100037B98(v42, v43, v67);

    *(v36 + 34) = v44;
    *(v36 + 42) = 1024;
    *(v36 + 44) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s identifier: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d", v36, 0x30u);
    swift_arrayDestroy();

    v25 = v59;
  }

  v45 = *(v26 + 8);
  v45(v30, v25);
  v46 = v61;
  sub_100043D20(0);
  v47 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v48 = *(v46 + v47);
  v49 = v62;
  if (*(v48 + 16))
  {

    v50 = sub_100037A68(v60, a2);
    if (v51)
    {
      v52 = *(*(v48 + 56) + 8 * v50);

      v53 = v31;
      sub_10003AE44(a3 & 1, v52, v53, a6, a7, a8, a9, a10, a11, a12, a13);

      goto LABEL_10;
    }
  }

  static Logger.UI.getter();

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v56 = 136315394;
    *(v56 + 4) = sub_100037B98(0xD00000000000003CLL, 0x8000000100092F00, v67);
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_100037B98(v60, a2, v67);
    _os_log_impl(&_mh_execute_header, v54, v55, "%s no folderController for identifier: %s", v56, 0x16u);
    swift_arrayDestroy();
  }

  v45(v49, v25);
  *(v31 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isOpened) = 0;
LABEL_10:
}

uint64_t sub_10004E8F0()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10004E93C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10004E9A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, unint64_t a7, int a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, double a14, CGFloat a15, CGFloat a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  LODWORD(v19) = a8;
  v125 = a6;
  v123 = a17;
  v108 = type metadata accessor for DispatchWorkItemFlags();
  v113 = *(v108 - 8);
  __chkstk_darwin(v108);
  v111 = &v104[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = type metadata accessor for DispatchQoS();
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v104[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = type metadata accessor for Logger();
  v121 = *(v122 - 1);
  __chkstk_darwin(v122);
  v118 = &v104[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v37);
  v39 = &v104[-v38];
  v40 = swift_allocObject();
  v119 = a18;
  *(v40 + 16) = a18;
  *(v40 + 24) = a19;
  v126 = v40;
  v120 = a19;

  static Logger.UI.getter();

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  v43 = os_log_type_enabled(v41, v42);
  v117 = a5;
  v115 = a4;
  v114 = a7;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v105 = v42;
    v45 = v44;
    v106 = swift_slowAlloc();
    v133[0] = v106;
    *v45 = 136316930;
    *(v45 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, v133);
    v124 = a3;
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_100037B98(a1, a2, v133);
    *(v45 + 22) = 2080;
    *(v45 + 24) = sub_100037B98(v124, a4, v133);
    *(v45 + 32) = 2080;
    if (a5)
    {
      v46 = 1702195828;
    }

    else
    {
      v46 = 0x65736C6166;
    }

    v116 = a1;
    if (a5)
    {
      v47 = 0xE400000000000000;
    }

    else
    {
      v47 = 0xE500000000000000;
    }

    v48 = sub_100037B98(v46, v47, v133);
    v107 = v19;
    v19 = v48;

    *(v45 + 34) = v19;
    *(v45 + 42) = 2080;
    v49 = v125;
    *(v45 + 44) = sub_100037B98(v125, a7, v133);
    *(v45 + 52) = 2080;
    aBlock = *&a9;
    v128 = *&a10;
    v129 = a11;
    v130 = a12;
    type metadata accessor for CGRect(0);
    v50 = String.init<A>(describing:)();
    v52 = sub_100037B98(v50, v51, v133);

    *(v45 + 54) = v52;
    *(v45 + 62) = 2080;
    a3 = v124;
    aBlock = *&a13;
    v128 = *&a14;
    v129 = a15;
    v130 = a16;
    v53 = String.init<A>(describing:)();
    v55 = sub_100037B98(v53, v54, v133);
    LOBYTE(v19) = v107;

    *(v45 + 64) = v55;
    a1 = v116;
    *(v45 + 72) = 1024;
    *(v45 + 74) = v19 & 1;
    _os_log_impl(&_mh_execute_header, v41, v105, "%s identifier: %s sortOrder: %s isAscending: %s displayMode: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d", v45, 0x4Eu);
    swift_arrayDestroy();

    v56 = *(v121 + 8);
    v57 = v122;
    v56(v39, v122);
    v58 = v49;
    v59 = v57;
  }

  else
  {

    v56 = *(v121 + 8);
    v59 = v122;
    v56(v39, v122);
    v58 = v125;
  }

  v60 = v123;
  sub_100043D20(1);
  v61 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v62 = *(v60 + v61);
  if (!*(v62 + 16))
  {
    goto LABEL_17;
  }

  v63 = sub_100037A68(a1, a2);
  if ((v64 & 1) == 0)
  {

LABEL_17:
    v81 = v118;
    static Logger.UI.getter();

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v84 = 136315394;
      *(v84 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, &aBlock);
      *(v84 + 12) = 2080;
      *(v84 + 14) = sub_100037B98(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v82, v83, "%s no folderController for identifier: %s", v84, 0x16u);
      swift_arrayDestroy();
    }

    v56(v81, v59);
    sub_100057174(0, v119, v120);
    goto LABEL_20;
  }

  v116 = a1;
  v123 = a2;
  v65 = *(*(v62 + 56) + 8 * v63);

  sub_10001ECB8(a9, a10, a11, a12, a13, a14, a15, a16);
  v66 = swift_allocObject();
  v67 = v114;
  *(v66 + 16) = v58;
  *(v66 + 24) = v67;
  v124 = a3;
  v68 = v115;
  *(v66 + 32) = a3;
  *(v66 + 40) = v68;
  *(v66 + 48) = v117 & 1;
  *(v66 + 56) = a9;
  *(v66 + 64) = a10;
  *(v66 + 72) = a11;
  *(v66 + 80) = a12;
  *(v66 + 88) = v65;
  *(v66 + 96) = a13;
  *(v66 + 104) = a14;
  *(v66 + 112) = a15;
  *(v66 + 120) = a16;
  v69 = v19 & 1;
  *(v66 + 128) = v19 & 1;
  v70 = v126;
  *(v66 + 136) = sub_10005211C;
  *(v66 + 144) = v70;
  v71 = *&v65[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (v71 && (v72 = *(*(v71 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection)) != 0)
  {

    v122 = v65;

    v73 = v67;
    v74 = v19;
    v19 = v72;
    v75 = dispatch thunk of DOCNodeCollection.observedNode.getter();

    LOBYTE(v19) = v74;
    v67 = v73;

    if (v75)
    {
      v76 = [objc_opt_self() sharedManager];
      v77 = swift_allocObject();
      v78 = v123;
      *(v77 + 16) = v116;
      *(v77 + 24) = v78;
      *(v77 + 32) = a9;
      *(v77 + 40) = a10;
      *(v77 + 48) = a11;
      *(v77 + 56) = a12;
      *(v77 + 64) = sub_100052128;
      *(v77 + 72) = v66;
      v79 = v126;
      *(v77 + 80) = sub_10005211C;
      *(v77 + 88) = v79;
      v131 = sub_100052130;
      v132 = v77;
      aBlock = _NSConcreteStackBlock;
      v128 = 1107296256;
      v129 = COERCE_DOUBLE(sub_100065170);
      v130 = COERCE_DOUBLE(&unk_1000AF240);
      v80 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v76 authenticateLocationWithNoUI:v75 checkFilesApp:1 completion:v80];

      _Block_release(v80);

      swift_unknownObjectRelease_n();
      return;
    }
  }

  else
  {

    v85 = v65;
  }

  v86._countAndFlagsBits = v125;
  v86._object = v67;
  v87 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, v86);

  v88 = v87 != 0;

  v134._countAndFlagsBits = v124;
  v134._object = v68;
  v89 = sub_10003C434(v134);
  if (v89 == 6)
  {
    v90 = 2;
  }

  else
  {
    v90 = v89;
  }

  if (sub_10001E8B0(v88 | (v90 << 8), v117 & 1, a11, a12))
  {
    v91 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
    v92 = *&v65[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    if (v92)
    {
      [v92 reloadData];
      v93 = *&v65[v91];
      if (v93)
      {
        [v93 layoutIfNeeded];
      }
    }

    sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
    v94 = static OS_dispatch_queue.main.getter();
    v95 = swift_allocObject();
    *(v95 + 16) = v65;
    *(v95 + 24) = a9;
    *(v95 + 32) = a10;
    *(v95 + 40) = a11;
    *(v95 + 48) = a12;
    *(v95 + 56) = a13;
    *(v95 + 64) = a14;
    *(v95 + 72) = a15;
    *(v95 + 80) = a16;
    *(v95 + 88) = v69;
    v96 = v126;
    *(v95 + 96) = sub_10005211C;
    *(v95 + 104) = v96;
    v131 = sub_100052A68;
    v132 = v95;
    aBlock = _NSConcreteStackBlock;
    v128 = 1107296256;
    v129 = COERCE_DOUBLE(sub_10000D508);
    v130 = COERCE_DOUBLE(&unk_1000AF1F0);
    v97 = _Block_copy(&aBlock);
    v98 = v65;

    v99 = v109;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1000523E8(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_1000518F8();
    v100 = v111;
    v101 = v108;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v97);

    (*(v113 + 8))(v100, v101);
    (*(v110 + 8))(v99, v112);
LABEL_20:

    return;
  }

  v102 = swift_allocObject();
  v103 = v126;
  *(v102 + 16) = sub_10005211C;
  *(v102 + 24) = v103;

  sub_100020E78(v19 & 1, sub_100052A88, v102, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_10004F718(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100037B98(0xD000000000000015, 0x8000000100093460, aBlock);
    *(v8 + 12) = 2080;
    v17[1] = a1;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_100037B98(v9, v10, aBlock);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s node: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for DOCInteractionManager();
  v12 = String._bridgeToObjectiveC()();
  v13 = static DOCInteractionManager.sharedManager(for:)();

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1000524F0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004BE04;
  aBlock[3] = &unk_1000AF4E8;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v16 = v13;

  [a1 fetchURL:v15];
  _Block_release(v15);
}

double sub_10004FA28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *), void *a6, void *a7)
{
  v60 = a3;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v55 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v61 = &v54 - v17;
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  v21 = swift_allocObject();
  v58 = a4;
  v59 = a5;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;

  v57 = a6;
  v56 = a7;
  static Logger.UI.getter();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, v63);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_100037B98(a1, a2, v63);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s identifier: %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  v25 = *(v14 + 8);
  v25(v20, v13);
  v26 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  v27 = v60;
  swift_beginAccess();
  v28 = *(v27 + v26);
  v29 = v61;
  if (*(v28 + 16))
  {

    v30 = sub_100037A68(a1, a2);
    if (v31)
    {
      v60 = v14;
      v61 = v13;
      v32 = *(*(v28 + 56) + 8 * v30);

      v33 = v55;
      static Logger.UI.getter();

      v34 = v32;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v59 = v25;
        v38 = v37;
        v58 = swift_slowAlloc();
        v62 = v58;
        *v38 = 136315650;
        *(v38 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v62);
        LODWORD(v57) = v36;
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_100037B98(a1, a2, &v62);
        *(v38 + 22) = 2080;
        v39 = v34;
        v40 = [v39 description];
        v41 = a1;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = v42;
        a1 = v41;
        v46 = sub_100037B98(v45, v44, &v62);

        *(v38 + 24) = v46;
        _os_log_impl(&_mh_execute_header, v35, v57, "%s requesting image data from controller with identifier: %s controller: %s", v38, 0x20u);
        swift_arrayDestroy();

        v59(v55, v61);
      }

      else
      {

        v25(v33, v61);
      }

      v51 = swift_allocObject();
      v51[2] = a1;
      v51[3] = a2;
      v51[4] = v34;
      v51[5] = sub_10005232C;
      v51[6] = v21;

      v52 = v34;

      sub_100033C70(sub_100052AB4, v51);

      goto LABEL_14;
    }
  }

  static Logger.UI.getter();

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v49 = 136315394;
    *(v49 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v62);
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_100037B98(a1, a2, &v62);
    _os_log_impl(&_mh_execute_header, v47, v48, "%s no folderController for identifier: %s", v49, 0x16u);
    swift_arrayDestroy();

    v50 = v61;
  }

  else
  {

    v50 = v29;
  }

  v25(v50, v13);
  sub_1000473B0(0, 0xF000000000000000, v58, v59, v57, v56);
LABEL_14:

  return result;
}

void sub_1000500C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, unint64_t a7, int a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, double a14, CGFloat a15, CGFloat a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  LODWORD(v19) = a8;
  v125 = a6;
  v123 = a17;
  v108 = type metadata accessor for DispatchWorkItemFlags();
  v113 = *(v108 - 8);
  __chkstk_darwin(v108);
  v111 = &v104[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = type metadata accessor for DispatchQoS();
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v104[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = type metadata accessor for Logger();
  v121 = *(v122 - 1);
  __chkstk_darwin(v122);
  v118 = &v104[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v37);
  v39 = &v104[-v38];
  v40 = swift_allocObject();
  v119 = a18;
  *(v40 + 16) = a18;
  *(v40 + 24) = a19;
  v126 = v40;
  v120 = a19;

  static Logger.UI.getter();

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  v43 = os_log_type_enabled(v41, v42);
  v117 = a5;
  v115 = a4;
  v114 = a7;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v105 = v42;
    v45 = v44;
    v106 = swift_slowAlloc();
    v133[0] = v106;
    *v45 = 136316930;
    *(v45 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, v133);
    v124 = a3;
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_100037B98(a1, a2, v133);
    *(v45 + 22) = 2080;
    *(v45 + 24) = sub_100037B98(v124, a4, v133);
    *(v45 + 32) = 2080;
    if (a5)
    {
      v46 = 1702195828;
    }

    else
    {
      v46 = 0x65736C6166;
    }

    v116 = a1;
    if (a5)
    {
      v47 = 0xE400000000000000;
    }

    else
    {
      v47 = 0xE500000000000000;
    }

    v48 = sub_100037B98(v46, v47, v133);
    v107 = v19;
    v19 = v48;

    *(v45 + 34) = v19;
    *(v45 + 42) = 2080;
    v49 = v125;
    *(v45 + 44) = sub_100037B98(v125, a7, v133);
    *(v45 + 52) = 2080;
    aBlock = *&a9;
    v128 = *&a10;
    v129 = a11;
    v130 = a12;
    type metadata accessor for CGRect(0);
    v50 = String.init<A>(describing:)();
    v52 = sub_100037B98(v50, v51, v133);

    *(v45 + 54) = v52;
    *(v45 + 62) = 2080;
    a3 = v124;
    aBlock = *&a13;
    v128 = *&a14;
    v129 = a15;
    v130 = a16;
    v53 = String.init<A>(describing:)();
    v55 = sub_100037B98(v53, v54, v133);
    LOBYTE(v19) = v107;

    *(v45 + 64) = v55;
    a1 = v116;
    *(v45 + 72) = 1024;
    *(v45 + 74) = v19 & 1;
    _os_log_impl(&_mh_execute_header, v41, v105, "%s identifier: %s sortOrder: %s isAscending: %s displayMode: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d", v45, 0x4Eu);
    swift_arrayDestroy();

    v56 = *(v121 + 8);
    v57 = v122;
    v56(v39, v122);
    v58 = v49;
    v59 = v57;
  }

  else
  {

    v56 = *(v121 + 8);
    v59 = v122;
    v56(v39, v122);
    v58 = v125;
  }

  v60 = v123;
  sub_100043D20(1);
  v61 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v62 = *(v60 + v61);
  if (!*(v62 + 16))
  {
    goto LABEL_17;
  }

  v63 = sub_100037A68(a1, a2);
  if ((v64 & 1) == 0)
  {

LABEL_17:
    v81 = v118;
    static Logger.UI.getter();

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v84 = 136315394;
      *(v84 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, &aBlock);
      *(v84 + 12) = 2080;
      *(v84 + 14) = sub_100037B98(a1, a2, &aBlock);
      _os_log_impl(&_mh_execute_header, v82, v83, "%s no folderController for identifier: %s", v84, 0x16u);
      swift_arrayDestroy();
    }

    v56(v81, v59);
    sub_100059A44(0, v119, v120);
    goto LABEL_20;
  }

  v116 = a1;
  v123 = a2;
  v65 = *(*(v62 + 56) + 8 * v63);

  sub_10001ECB8(a9, a10, a11, a12, a13, a14, a15, a16);
  v66 = swift_allocObject();
  v67 = v114;
  *(v66 + 16) = v58;
  *(v66 + 24) = v67;
  v124 = a3;
  v68 = v115;
  *(v66 + 32) = a3;
  *(v66 + 40) = v68;
  *(v66 + 48) = v117 & 1;
  *(v66 + 56) = a9;
  *(v66 + 64) = a10;
  *(v66 + 72) = a11;
  *(v66 + 80) = a12;
  *(v66 + 88) = v65;
  *(v66 + 96) = a13;
  *(v66 + 104) = a14;
  *(v66 + 112) = a15;
  *(v66 + 120) = a16;
  v69 = v19 & 1;
  *(v66 + 128) = v19 & 1;
  v70 = v126;
  *(v66 + 136) = sub_100052134;
  *(v66 + 144) = v70;
  v71 = *&v65[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (v71 && (v72 = *(*(v71 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection)) != 0)
  {

    v122 = v65;

    v73 = v67;
    v74 = v19;
    v19 = v72;
    v75 = dispatch thunk of DOCNodeCollection.observedNode.getter();

    LOBYTE(v19) = v74;
    v67 = v73;

    if (v75)
    {
      v76 = [objc_opt_self() sharedManager];
      v77 = swift_allocObject();
      v78 = v123;
      *(v77 + 16) = v116;
      *(v77 + 24) = v78;
      *(v77 + 32) = a9;
      *(v77 + 40) = a10;
      *(v77 + 48) = a11;
      *(v77 + 56) = a12;
      *(v77 + 64) = sub_100052A70;
      *(v77 + 72) = v66;
      v79 = v126;
      *(v77 + 80) = sub_100052134;
      *(v77 + 88) = v79;
      v131 = sub_100052AB0;
      v132 = v77;
      aBlock = _NSConcreteStackBlock;
      v128 = 1107296256;
      v129 = COERCE_DOUBLE(sub_100065170);
      v130 = COERCE_DOUBLE(&unk_1000AF358);
      v80 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v76 authenticateLocationWithNoUI:v75 checkFilesApp:1 completion:v80];

      _Block_release(v80);

      swift_unknownObjectRelease_n();
      return;
    }
  }

  else
  {

    v85 = v65;
  }

  v86._countAndFlagsBits = v125;
  v86._object = v67;
  v87 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, v86);

  v88 = v87 != 0;

  v134._countAndFlagsBits = v124;
  v134._object = v68;
  v89 = sub_10003C434(v134);
  if (v89 == 6)
  {
    v90 = 2;
  }

  else
  {
    v90 = v89;
  }

  if (sub_10001E8B0(v88 | (v90 << 8), v117 & 1, a11, a12))
  {
    v91 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
    v92 = *&v65[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    if (v92)
    {
      [v92 reloadData];
      v93 = *&v65[v91];
      if (v93)
      {
        [v93 layoutIfNeeded];
      }
    }

    sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
    v94 = static OS_dispatch_queue.main.getter();
    v95 = swift_allocObject();
    *(v95 + 16) = v65;
    *(v95 + 24) = a9;
    *(v95 + 32) = a10;
    *(v95 + 40) = a11;
    *(v95 + 48) = a12;
    *(v95 + 56) = a13;
    *(v95 + 64) = a14;
    *(v95 + 72) = a15;
    *(v95 + 80) = a16;
    *(v95 + 88) = v69;
    v96 = v126;
    *(v95 + 96) = sub_100052134;
    *(v95 + 104) = v96;
    v131 = sub_100052A68;
    v132 = v95;
    aBlock = _NSConcreteStackBlock;
    v128 = 1107296256;
    v129 = COERCE_DOUBLE(sub_10000D508);
    v130 = COERCE_DOUBLE(&unk_1000AF308);
    v97 = _Block_copy(&aBlock);
    v98 = v65;

    v99 = v109;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1000523E8(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_1000518F8();
    v100 = v111;
    v101 = v108;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v97);

    (*(v113 + 8))(v100, v101);
    (*(v110 + 8))(v99, v112);
LABEL_20:

    return;
  }

  v102 = swift_allocObject();
  v103 = v126;
  *(v102 + 16) = sub_100052134;
  *(v102 + 24) = v103;

  sub_100020E78(v19 & 1, sub_100052A88, v102, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_100050E40(uint64_t a1, unint64_t a2, char a3, uint64_t a4, char *a5, unint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v67 = a5;
  v27 = type metadata accessor for Logger();
  v68 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v61[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v32 = &v61[-v31];
  v69 = a6;

  static Logger.UI.getter();

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  v35 = os_log_type_enabled(v33, v34);
  v66 = a2;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v65 = v27;
    v37 = v36;
    v63 = swift_slowAlloc();
    v74[0] = v63;
    *v37 = 136316162;
    *(v37 + 4) = sub_100037B98(0xD00000000000003CLL, 0x8000000100092F00, v74);
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_100037B98(a1, a2, v74);
    *(v37 + 22) = 2080;
    v70 = a7;
    v71 = a8;
    v72 = a9;
    v73 = a10;
    type metadata accessor for CGRect(0);
    v62 = v34;
    v38 = String.init<A>(describing:)();
    v40 = sub_100037B98(v38, v39, v74);
    v41 = a4;
    v42 = a3;
    v43 = v29;
    v64 = a1;
    v44 = v40;

    *(v37 + 24) = v44;
    v45 = v68;
    v29 = v43;
    a3 = v42;
    a4 = v41;
    *(v37 + 32) = 2080;
    v70 = a11;
    v71 = a12;
    v72 = a13;
    v73 = a14;
    v46 = String.init<A>(describing:)();
    v48 = sub_100037B98(v46, v47, v74);

    *(v37 + 34) = v48;
    *(v37 + 42) = 1024;
    *(v37 + 44) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v33, v62, "%s identifier: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d", v37, 0x30u);
    swift_arrayDestroy();

    v27 = v65;

    v49 = v45;
    a1 = v64;
  }

  else
  {

    v49 = v68;
  }

  v50 = *(v49 + 8);
  v50(v32, v27);
  sub_100043D20(0);
  v51 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v52 = *(a4 + v51);
  v53 = v66;
  if (*(v52 + 16))
  {

    v54 = sub_100037A68(a1, v53);
    if (v55)
    {
      v56 = *(*(v52 + 56) + 8 * v54);

      v57 = v69;

      sub_10003D250(a3 & 1, v56, v67, v57, a7, a8, a9, a10, a11, a12, a13, a14);

      goto LABEL_11;
    }
  }

  static Logger.UI.getter();

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v60 = 136315394;
    *(v60 + 4) = sub_100037B98(0xD00000000000003CLL, 0x8000000100092F00, v74);
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_100037B98(a1, v53, v74);
    _os_log_impl(&_mh_execute_header, v58, v59, "%s no folderController for identifier: %s", v60, 0x16u);
    swift_arrayDestroy();
  }

  v50(v29, v27);
  sub_100059860(v67, v69);
LABEL_11:
}

void sub_10005137C(uint64_t a1, unint64_t a2, int a3, uint64_t a4, void *a5, void *a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  LODWORD(v17) = a3;
  v65 = a1;
  v27 = type metadata accessor for Logger();
  v66 = *(v27 - 8);
  __chkstk_darwin(v27);
  v64 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v59 - v30;
  v32 = a5;
  v67 = a6;
  static Logger.UI.getter();

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v61 = v34;
    v36 = v35;
    v62 = swift_slowAlloc();
    v72 = v62;
    *v36 = 136316162;
    *(v36 + 4) = sub_100037B98(0xD00000000000003CLL, 0x8000000100092F00, &v72);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_100037B98(v65, a2, &v72);
    *(v36 + 22) = 2080;
    v68 = a7;
    v69 = a8;
    v70 = a9;
    v71 = a10;
    type metadata accessor for CGRect(0);
    v60 = v33;
    v37 = String.init<A>(describing:)();
    v39 = sub_100037B98(v37, v38, &v72);
    v63 = v17;
    v40 = v32;
    v41 = v39;

    *(v36 + 24) = v41;
    v32 = v40;
    v17 = v66;
    *(v36 + 32) = 2080;
    v68 = a11;
    v69 = a12;
    v70 = a13;
    v71 = a14;
    v42 = String.init<A>(describing:)();
    v44 = sub_100037B98(v42, v43, &v72);

    *(v36 + 34) = v44;
    *(v36 + 42) = 1024;
    *(v36 + 44) = v63 & 1;
    v45 = v60;
    _os_log_impl(&_mh_execute_header, v60, v61, "%s identifier: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d", v36, 0x30u);
    swift_arrayDestroy();

    v46 = v17;
    LOBYTE(v17) = v63;
  }

  else
  {

    v46 = v66;
  }

  v47 = *(v46 + 8);
  v47(v31, v27);
  sub_100043D20(0);
  v48 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v49 = *(a4 + v48);
  v50 = v64;
  if (*(v49 + 16))
  {

    v51 = sub_100037A68(v65, a2);
    if (v52)
    {
      v53 = *(*(v49 + 56) + 8 * v51);

      v54 = v32;
      v32 = v67;
      sub_10003DF5C(v17 & 1, v53, v54, v32, a7, a8, a9, a10, a11, a12, a13, a14);

      goto LABEL_12;
    }
  }

  static Logger.UI.getter();

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v57 = 136315394;
    *(v57 + 4) = sub_100037B98(0xD00000000000003CLL, 0x8000000100092F00, &v72);
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_100037B98(v65, a2, &v72);
    _os_log_impl(&_mh_execute_header, v55, v56, "%s no folderController for identifier: %s", v57, 0x16u);
    swift_arrayDestroy();
  }

  v47(v50, v27);
  objc_opt_self();
  v58 = swift_dynamicCastObjCClass();
  if (v58)
  {
    [v58 completeContextRequestUpdateFromHost:v67 withError:0];
  }

LABEL_12:
}

double sub_1000518E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1000518F8()
{
  result = qword_1000BC410;
  if (!qword_1000BC410)
  {
    sub_1000143B0(&unk_1000BCE30, &unk_100090E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC410);
  }

  return result;
}

double sub_100051A0C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(char *, char *), unint64_t a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v56 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v61 = &v55 - v16;
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v59 = a5;
  v62 = v20;
  v20[4] = a6;
  v58 = a4;
  v60 = a6;

  static Logger.UI.getter();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v57 = v13;
    v24 = v12;
    v25 = v23;
    v64[0] = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, v64);
    *(v25 + 12) = 2080;
    v26 = a1;
    *(v25 + 14) = sub_100037B98(a1, a2, v64);
    _os_log_impl(&_mh_execute_header, v21, v22, "%s identifier: %s", v25, 0x16u);
    swift_arrayDestroy();

    v12 = v24;
    v13 = v57;
  }

  else
  {
    v26 = a1;
  }

  v27 = *(v13 + 8);
  v27(v19, v12);
  v28 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
  swift_beginAccess();
  v29 = *(a3 + v28);
  v30 = v26;
  v31 = v61;
  if (*(v29 + 16))
  {

    v32 = sub_100037A68(v30, a2);
    if (v33)
    {
      v57 = v13;
      v34 = *(*(v29 + 56) + 8 * v32);

      v35 = v56;
      static Logger.UI.getter();

      v36 = v34;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v61 = v12;
        v40 = v39;
        v60 = swift_slowAlloc();
        v63 = v60;
        *v40 = 136315650;
        *(v40 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v63);
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_100037B98(v30, a2, &v63);
        *(v40 + 22) = 2080;
        v41 = v36;
        v42 = [v41 description];
        v59 = v27;
        v43 = v30;
        v44 = v42;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v30 = v43;
        v48 = sub_100037B98(v45, v47, &v63);

        *(v40 + 24) = v48;
        _os_log_impl(&_mh_execute_header, v37, v38, "%s requesting image data from controller with identifier: %s controller: %s", v40, 0x20u);
        swift_arrayDestroy();

        v59(v56, v61);
      }

      else
      {

        v27(v35, v12);
      }

      v52 = swift_allocObject();
      v52[2] = v30;
      v52[3] = a2;
      v52[4] = v36;
      v52[5] = sub_1000520D4;
      v52[6] = v62;

      v53 = v36;

      sub_100033C70(sub_1000520E0, v52);

      goto LABEL_14;
    }
  }

  static Logger.UI.getter();

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v51 = 136315394;
    *(v51 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093010, &v63);
    *(v51 + 12) = 2080;
    *(v51 + 14) = sub_100037B98(v30, a2, &v63);
    _os_log_impl(&_mh_execute_header, v49, v50, "%s no folderController for identifier: %s", v51, 0x16u);
    swift_arrayDestroy();
  }

  v27(v31, v12);
  sub_10005D070(0, 0xF000000000000000, v58, v59, v60);
LABEL_14:

  return result;
}

uint64_t sub_100052094()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000520E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005213C()
{

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1000521D8()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100052238()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100052298()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000522D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000522E4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005233C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100052394()
{
  sub_100041D80(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000523E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100052430()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052470()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000524B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000524F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100052550()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004B448(v0 + v2, v5, v6, v7);
}

uint64_t sub_1000525F4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1000526B8(int a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004B5EC(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_10005276C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100052838()
{
  v1 = *(type metadata accessor for URL() - 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10004A580(v3, v4, v5, v2);
}

uint64_t sub_10005289C()
{
  v1 = *(sub_10000589C(&unk_1000BCA20, &qword_100090BC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000529C4()
{
  v1 = *(sub_10000589C(&unk_1000BCA20, &qword_100090BC0) - 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10004ACB4(v3, v4, v5, v2);
}

void sub_100052AB8(uint64_t a1, __n128 a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v2 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v7 = *(v2 + 36);
    v18 = v2 + 72;
    v19 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_20;
      }

      if (v7 != *(v2 + 36))
      {
        goto LABEL_21;
      }

      v20 = v6;
      v10 = *(*(v2 + 56) + 8 * v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v2 = v19;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_22;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_24;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            sub_1000522D8(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        sub_1000522D8(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

id sub_100052CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v18 = a2;
  v19 = a3;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10005DE20;
  v17 = &unk_1000AF6D8;
  v10 = _Block_copy(&v14);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = a4;
  v19 = a5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10005DE70;
  v17 = &unk_1000AF6B0;
  v11 = _Block_copy(&v14);

LABEL_6:
  v12 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
  sub_1000414DC(a4, a5);
  sub_1000414DC(a2, a3);
  swift_unknownObjectRelease();
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

void sub_100052E6C(void *a1, double a2, CGFloat a3)
{
  v4 = [a1 CGContext];
  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100090F10;
  v6 = [objc_allocWithZone(UIColor) initWithRed:0.51372549 green:0.22745098 blue:0.705882353 alpha:1.0];
  v7 = [v6 CGColor];

  *(v5 + 32) = v7;
  v8 = [objc_allocWithZone(UIColor) initWithRed:0.992156863 green:0.11372549 blue:0.11372549 alpha:1.0];
  v9 = [v8 CGColor];

  *(v5 + 40) = v9;
  v10 = [objc_allocWithZone(UIColor) initWithRed:0.988235294 green:0.690196078 blue:0.270588235 alpha:1.0];
  v11 = [v10 CGColor];

  *(v5 + 48) = v11;
  type metadata accessor for CGColor(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  gradient = CGGradientCreateWithColors(0, isa, dbl_1000ADC28);

  if (gradient)
  {

    v15.x = 0.0;
    v16.x = 0.0;
    v16.y = 1.0;
    v15.y = a3;
    CGContextDrawLinearGradient(v4, gradient, v15, v16, 0);
  }

  else
  {
    __break(1u);
  }
}

id sub_10005306C(double a1, double a2, double a3, double a4)
{
  v15.receiver = v4;
  v15.super_class = type metadata accessor for GradientView();
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_1000602D0();
  v11 = v10;
  v12 = [objc_allocWithZone(UIImageView) initWithImage:v10];

  v13 = v12;
  [v13 setContentMode:4];
  [v13 setAutoresizingMask:18];
  [v9 bounds];
  [v13 setFrame:?];

  [v9 addSubview:v13];
  return v9;
}

void sub_10005324C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  *&v4[OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxThumbnailView] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxLabelView] = 0;
  v35.receiver = v4;
  v35.super_class = type metadata accessor for FauxIconView();
  v9 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  Height = CGRectGetHeight(v36);
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  Width = CGRectGetWidth(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  v12 = [objc_allocWithZone(UIView) initWithFrame:{CGRectGetWidth(v38) + -68.0, 0.0, 68.0, Height}];
  v13 = OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxThumbnailView;
  v14 = *&v9[OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxThumbnailView];
  *&v9[OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxThumbnailView] = v12;
  v15 = v12;

  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = *&v9[v13];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBlueColor];
  [v18 setBackgroundColor:v19];

  v20 = *&v9[v13];
  if (!v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = [v20 layer];
  [v21 setCornerRadius:8.0];

  v22 = *&v9[v13];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = [v22 layer];
  [v23 setMasksToBounds:1];

  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  v24 = [objc_allocWithZone(UIView) initWithFrame:{0.0, CGRectGetHeight(v39) * 0.5 + -12.5, Width + -68.0 + -10.0, 25.0}];
  v25 = OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxLabelView;
  v26 = *&v9[OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxLabelView];
  *&v9[OBJC_IVAR____TtC21DockFolderViewService12FauxIconView_fauxLabelView] = v24;
  v27 = v24;

  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

  v28 = *&v9[v25];
  if (!v28)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = v28;
  v30 = [v17 systemBlueColor];
  [v29 setBackgroundColor:v30];

  v31 = *&v9[v25];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = [v31 layer];
  [v32 setCornerRadius:8.0];

  v33 = *&v9[v25];
  if (!v33)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v34 = [v33 layer];
  [v34 setMasksToBounds:1];

  if (!*&v9[v25])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v9 addSubview:?];
  if (*&v9[v13])
  {
    [v9 addSubview:?];

    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_100053714()
{

  return _swift_deallocClassInstance(v0, 33, 7);
}

void sub_1000537D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000589C(&qword_1000BCAC8, &qword_100091018);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v38[-v9];
  __chkstk_darwin(v11);
  v13 = &v38[-v12];
  v14 = type metadata accessor for Logger();
  v47 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.UI.getter();
  v17 = *(v6 + 16);
  v17(v13, a2, v5);
  v45 = v10;
  v17(v10, a2, v5);
  v46 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = v14;
    v21 = v20;
    v41 = swift_slowAlloc();
    v48[0] = v41;
    *v21 = 136315650;
    *(v21 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100093F30, v48);
    *(v21 + 12) = 2080;
    v22 = v44;
    v17(v44, v13, v5);
    v23 = String.init<A>(describing:)();
    v43 = a3;
    v24 = v23;
    v40 = v18;
    v26 = v25;
    v39 = v19;
    v27 = *(v6 + 8);
    v27(v13, v5);
    v28 = sub_100037B98(v24, v26, v48);

    *(v21 + 14) = v28;
    *(v21 + 22) = 2080;
    v29 = v45;
    v17(v22, v45, v5);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    v27(v29, v5);
    v33 = sub_100037B98(v30, v32, v48);

    *(v21 + 24) = v33;
    v34 = v40;
    _os_log_impl(&_mh_execute_header, v40, v39, "%s frame object: %s change: %s", v21, 0x20u);
    swift_arrayDestroy();

    (*(v47 + 8))(v46, v42);
  }

  else
  {

    v35 = *(v6 + 8);
    v35(v45, v5);
    v35(v13, v5);
    (*(v47 + 8))(v46, v14);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    sub_10005790C();
  }
}

id sub_100053C88(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = v4;
    v12 = v11;
    v21 = swift_slowAlloc();
    v23 = v21;
    *v12 = 136315394;
    *(v12 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100093DC0, &v23);
    *(v12 + 12) = 2080;
    v13 = v8;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100037B98(v15, v17, &v23);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s scene: %s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v7, v22);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return [*(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_recentsList) stopObserving];
}

void sub_1000540A4(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v56 = a3;
  v58 = a6;
  v53 = a4;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v53 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = [objc_opt_self() sharedManager];
  v18 = String._bridgeToObjectiveC()();
  sub_10005FF58(a2, v14);
  if ((*(v10 + 48))(v14, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v22 = *(v10 + 8);
    v57 = v9;
    v54 = v22;
    v55 = v10 + 8;
    v22(v14, v9);
    [v17 startObservingFolderWithIdentifier:v18 url:v21];

    if (qword_1000BB708 != -1)
    {
      swift_once();
    }

    v23 = v57;
    if (v15 == qword_1000BF128 && v16 == qword_1000BF130 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v24 = 0;
      v25 = 0xE400000000000000;
      v26 = 1684632167;
    }

    else
    {
      v25 = 0xE300000000000000;
      v24 = 1;
      v26 = 7233894;
    }

    if (qword_1000BB710 != -1)
    {
      swift_once();
    }

    v27 = qword_1000BF140;
    if (v15 == qword_1000BF138 && v16 == qword_1000BF140)
    {
      v28 = v56;
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v28 = v56;
      if ((v29 & 1) == 0)
      {
        v28 = v53;
      }
    }

    (*(v10 + 16))(v59, v28, v23, v27);
    if (v24)
    {
      v30 = 0;
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }

    v31 = *(v58 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView);
    if (!v31)
    {
      goto LABEL_26;
    }

    [v31 frame];
    sub_100044594(v15, v16, v59, 0x6564644165746164, 0xE900000000000064, v30 & 1, v26, v25, 0.0, 0.0, 68.0, 68.0, v32, v33, v34, v35);
    v36 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
    swift_beginAccess();
    v37 = *(a5 + v36);
    if (*(v37 + 16))
    {

      v38 = sub_100037A68(v15, v16);
      v40 = v39;

      if (v40)
      {
        v41 = *(*(v37 + 56) + 8 * v38);

        v56 = v41;
        v42 = &v41[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
        v43 = objc_allocWithZone(DOCSBFolderDisplayMode);

        v44 = String._bridgeToObjectiveC()();

        v45 = [v43 initWithDisplayModeIdentifier:v44];

        v46 = objc_allocWithZone(DOCSBFolderSortOrder);
        v47 = String._bridgeToObjectiveC()();

        v48 = [v46 initWithSortOrderIdentifier:v47];

        LOBYTE(v42) = v42[24];
        type metadata accessor for FauxIconState();
        v49 = swift_allocObject();
        *(v49 + 16) = v45;
        *(v49 + 24) = v48;
        *(v49 + 32) = v42;
        v50 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
        v51 = v58;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(v51 + v50);
        *(v51 + v50) = 0x8000000000000000;
        sub_10005F20C(v49, v15, v16, isUniquelyReferenced_nonNull_native);

        *(v51 + v50) = v60;
        swift_endAccess();
        sub_1000562FC(v15, v16);

        v54(v59, v57);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1000546F8(void *a1)
{
  v2 = v1;
  v4 = sub_10000589C(&qword_1000BCA98, &qword_100090FC8);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_10000589C(&unk_1000BCAA0, &unk_100090FD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - v8;
  v10 = [objc_allocWithZone(UIStackView) init];
  v11 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView;
  v12 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView);
  *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView) = v10;
  v13 = v10;

  if (!v13)
  {
    __break(1u);
    goto LABEL_19;
  }

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = *(v2 + v11);
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v14 setLayoutMargins:{17.5, 17.5, 17.5, 17.5}];
  v15 = *(v2 + v11);
  if (!v15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v15 setLayoutMarginsRelativeArrangement:1];
  v16 = [a1 view];
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!*(v2 + v11))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v16;
  [v16 addSubview:?];

  v18 = *(v2 + v11);
  if (!v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v18 setAxis:0];
  v19 = *(v2 + v11);
  if (!v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v19 setSpacing:17.5];
  v20 = *(v2 + v11);
  if (!v20)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = [v20 bottomAnchor];
  v22 = [a1 view];
  if (!v22)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = v22;
  v24 = [v22 safeAreaLayoutGuide];

  v25 = [v24 bottomAnchor];
  v26 = [v21 constraintEqualToAnchor:v25 constant:0.0];

  [v26 setActive:1];
  v27 = *(v2 + v11);
  if (!v27)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v28 = [v27 centerXAnchor];
  v29 = [a1 view];
  if (!v29)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v30 = v29;
  v31 = [v29 centerXAnchor];

  v32 = [v28 constraintEqualToAnchor:v31];
  v33 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_dockCenterXAnchor);
  *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_dockCenterXAnchor) = v32;
  v34 = v32;

  if (!v34)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v34 setActive:1];

  v35 = *(v2 + v11);
  if (!v35)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v36 = objc_allocWithZone(UIColor);
  v37 = v35;
  v38 = [v36 initWithWhite:0.9 alpha:0.7];
  [v37 setBackgroundColor:v38];

  v39 = *(v2 + v11);
  if (!v39)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v40 = v39;
  static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)();
  v41 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  (*(*(v41 - 8) + 56))(v6, 0, 1, v41);
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  sub_100006390(v6, &qword_1000BCA98, &qword_100090FC8);
  v42 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v42 - 8) + 56))(v9, 0, 1, v42);
  UIView.cornerMaskingConfiguration.setter();

  v43 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v2 action:"panGesture:"];
  [v43 setMinimumNumberOfTouches:1];
  [v43 setMaximumNumberOfTouches:1];
  v44 = *(v2 + v11);
  if (!v44)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v44 addGestureRecognizer:v43];
  v45 = *(v2 + v11);
  if (v45)
  {
    [v45 setUserInteractionEnabled:1];

    return;
  }

LABEL_33:
  __break(1u);
}

void sub_100054C40(void *a1, __n128 a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
  if (v3)
  {
    swift_beginAccess();
    v5 = v3;

    sub_100052AB8(v6, v7);

    v18[0] = sub_10000FE9C(v9, v8);
    sub_10005DF00(v18);

    v10 = v18[0];
    if (v18[0] < 0 || (v18[0] & 0x4000000000000000) != 0)
    {
      goto LABEL_15;
    }

    for (i = *(v18[0] + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v10 + 16))
          {
            goto LABEL_14;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v18[0] = v13;
        sub_100054DF0(v18, v2, a1);

        ++v12;
        if (v15 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
    v16 = [v5 view];
    if (v16)
    {
      v17 = v16;

      [v17 layoutSubviews];
    }

    else
    {
      __break(1u);

      __break(1u);
    }
  }
}

void sub_100054DF0(void *a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(UIImageView);

  v6 = [v5 init];
  v7 = String._bridgeToObjectiveC()();

  [v6 setRestorationIdentifier:v7];

  [v6 setUserInteractionEnabled:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v6 widthAnchor];
  v9 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSize;
  v10 = [v8 constraintEqualToConstant:*(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSize)];

  [v10 setActive:1];
  v11 = [v6 heightAnchor];

  v12 = [v11 constraintEqualToConstant:*(a2 + v9)];
  [v12 setActive:1];

  [a3 addArrangedSubview:v6];
  v13 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:a2 action:"handleIconTapWithSender:"];
  [v6 addGestureRecognizer:v13];
  v14 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v15 = v6;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v16 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:a2];
  [v15 addInteraction:v16];
}

void sub_1000550A8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v4 - 8);
  v6 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000589C(&qword_1000BCA98, &qword_100090FC8);
  __chkstk_darwin(v7 - 8);
  v9 = &v123 - v8;
  v10 = sub_10000589C(&unk_1000BCAA0, &unk_100090FD0);
  __chkstk_darwin(v10 - 8);
  v12 = &v123 - v11;
  v13 = type metadata accessor for _Glass._GlassVariant();
  v14 = [a1 viewIfLoaded];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(UIStackView) init];
  v17 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationOptionsContainerView;
  v18 = *&v1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationOptionsContainerView];
  *&v1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationOptionsContainerView] = v16;
  v19 = v16;

  if (!v19)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = *&v1[v17];
  if (!v20)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  [v20 setAxis:1];
  v21 = *&v1[v17];
  if (!v21)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v21 setSpacing:15.0];
  v22 = *&v1[v17];
  if (!v22)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v23 = v22;
  static _Glass._GlassVariant.regular.getter();
  v135[3] = type metadata accessor for _Glass();
  v135[4] = &protocol witness table for _Glass;
  sub_100062040(v135);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();

  v24 = *&v1[v17];
  if (!v24)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  [v24 setLayoutMarginsRelativeArrangement:1];
  v25 = *&v1[v17];
  if (!v25)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [v25 setLayoutMargins:{20.0, 20.0, 20.0, 20.0}];
  v26 = *&v1[v17];
  if (!v26)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v27 = v26;
  static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)();
  v28 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  sub_100006390(v9, &qword_1000BCA98, &qword_100090FC8);
  v29 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
  UIView.cornerMaskingConfiguration.setter();

  v134 = _swiftEmptyArrayStorage;
  v30 = sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
  *(swift_allocObject() + 16) = v2;
  v31 = v2;
  v129 = v30;
  v32 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v33 = [objc_allocWithZone(UISwitch) initWithFrame:v32 primaryAction:{0.0, 0.0, 0.0, 0.0}];

  v34 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationsEnabledSwitch;
  v35 = *&v31[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationsEnabledSwitch];
  *&v31[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationsEnabledSwitch] = v33;
  v36 = v33;

  if (!v36)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v128 = v6;
  v130 = v15;
  v37 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationEnabled;
  [v36 setOn:v31[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationEnabled]];

  v38 = *&v31[v34];
  if (!v38)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = v31[v37];
  v40 = v31;
  sub_1000604C4(0x6F6974616D696E41, 0xEA0000000000736ELL, v39, v40, &v134, &OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationsEnabledSwitch, &unk_1000AF990, sub_10006216C);

  v41 = v40[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_useRTLLayout];
  v42 = v40;
  sub_1000604C4(5002322, 0xE300000000000000, v41, v42, &v134, &OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_rtlSwitch, &unk_1000AF968, sub_100062164);

  v43 = [objc_allocWithZone(UISlider) init];
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v43 setContinuous:0];
  LODWORD(v44) = 1067030938;
  [v43 setValue:v44];
  LODWORD(v45) = 1045220557;
  [v43 setMinimumValue:v45];
  LODWORD(v46) = 15.0;
  [v43 setMaximumValue:v46];
  v47 = [objc_allocWithZone(UILabel) init];
  v48 = String._bridgeToObjectiveC()();
  [v47 setText:v48];

  v49 = sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v50 = swift_allocObject();
  v133 = xmmword_10008F960;
  *(v50 + 16) = xmmword_10008F960;
  *(v50 + 32) = v47;
  *(v50 + 40) = v43;
  v51 = objc_allocWithZone(UIStackView);
  v52 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  v53 = v47;
  v132 = v52;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v55 = [v51 initWithArrangedSubviews:isa];

  [v55 setAxis:1];
  [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
  v56 = *&v42[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider];
  v126 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider;
  *&v42[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider] = v43;
  v57 = v43;

  v131 = "sliderValueChanged:";
  [v57 addTarget:v42 action:? forControlEvents:?];
  v58 = v55;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_32:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v59 = [objc_allocWithZone(UISlider) init];
  [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v59 setContinuous:0];
  [v59 setValue:0.0];
  LODWORD(v60) = -1.0;
  [v59 setMinimumValue:v60];
  LODWORD(v61) = 1.0;
  [v59 setMaximumValue:v61];
  v62 = [objc_allocWithZone(UILabel) init];
  v63 = String._bridgeToObjectiveC()();
  [v62 setText:v63];

  v64 = swift_allocObject();
  *(v64 + 16) = v133;
  *(v64 + 32) = v62;
  *(v64 + 40) = v59;
  v65 = objc_allocWithZone(UIStackView);
  v66 = v62;
  v67 = Array._bridgeToObjectiveC()().super.isa;

  v68 = [v65 initWithArrangedSubviews:v67];

  [v68 setAxis:1];
  [v68 setTranslatesAutoresizingMaskIntoConstraints:0];
  v69 = *&v42[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_bounceSlider];
  v125 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_bounceSlider;
  *&v42[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_bounceSlider] = v59;
  v70 = v59;

  [v70 addTarget:v42 action:v131 forControlEvents:4096];
  v71 = v68;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v72 = [objc_allocWithZone(UISlider) init];
  [v72 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v72 setContinuous:0];
  [v72 setValue:0.0];
  LODWORD(v73) = -1.0;
  [v72 setMinimumValue:v73];
  LODWORD(v74) = 1.0;
  [v72 setMaximumValue:v74];
  v75 = [objc_allocWithZone(UILabel) init];
  v76 = String._bridgeToObjectiveC()();
  [v75 setText:v76];

  v127 = v49;
  v77 = swift_allocObject();
  *(v77 + 16) = v133;
  *(v77 + 32) = v75;
  *(v77 + 40) = v72;
  v78 = objc_allocWithZone(UIStackView);
  v79 = v75;
  v80 = Array._bridgeToObjectiveC()().super.isa;

  v81 = [v78 initWithArrangedSubviews:v80];

  [v81 setAxis:1];
  [v81 setTranslatesAutoresizingMaskIntoConstraints:0];
  v82 = *&v42[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSizeSlider];
  *&v42[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSizeSlider] = v72;
  v83 = v72;

  [v83 addTarget:v42 action:v131 forControlEvents:4096];
  v84 = v81;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v58 = sub_10001A2A8(0, &unk_1000BCAB0, UIButton_ptr);
  static UIButton.Configuration.filled()();
  *(swift_allocObject() + 16) = v42;
  *&v133 = v42;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v49 = UIButton.init(configuration:primaryAction:)();
  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v85 = v130;
  if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v58 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v132 = v49;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (!*&v2[v17])
  {
    goto LABEL_60;
  }

  v57 = v134;
  [v85 addSubview:?];
  v124 = v42;
  if (v57 >> 62)
  {
    v86 = _CocoaArrayWrapper.endIndex.getter();
    if (v86)
    {
LABEL_21:
      v87 = 0;
      v42 = (v57 & 0xC000000000000001);
      v53 = (v57 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v42)
        {
          v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v87 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v88 = *(v57 + 8 * v87 + 32);
        }

        v58 = v88;
        v49 = (v87 + 1);
        if (__OFADD__(v87, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v89 = *&v2[v17];
        if (!v89)
        {
          break;
        }

        [v89 addArrangedSubview:v58];

        ++v87;
        if (v49 == v86)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_51;
    }
  }

  else
  {
    v86 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v86)
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  v90 = *(v133 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
  if (v90)
  {
    v91 = qword_1000BB708;
    v92 = v90;
    if (v91 != -1)
    {
      swift_once();
    }

    v94 = qword_1000BF128;
    v93 = qword_1000BF130;
    v95 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
    swift_beginAccess();
    v96 = *&v92[v95];

    if (*(v96 + 16))
    {
      v97 = sub_100037A68(v94, v93);
      v99 = v98;

      if (v99)
      {
        v100 = *(*(v96 + 56) + 8 * v97);

        v102 = v124;
        v103 = *&v124[v126];
        if (!v103)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        LODWORD(v101) = 0.25;
        [v103 setValue:v101];
        v105 = *&v102[v125];
        if (!v105)
        {
LABEL_66:
          __break(1u);
          return;
        }

        LODWORD(v104) = 1045220557;
        [v105 setValue:v104];

        goto LABEL_44;
      }
    }

    else
    {
    }
  }

LABEL_44:
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_100090F10;
  v107 = *&v2[v17];
  if (!v107)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v108 = [v107 widthAnchor];
  v109 = [v108 constraintEqualToConstant:240.0];

  *(v106 + 32) = v109;
  v110 = *&v2[v17];
  v111 = v130;
  if (!v110)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v112 = [v110 trailingAnchor];
  v113 = [v111 trailingAnchor];
  v114 = [v112 constraintEqualToAnchor:v113 constant:-20.0];

  *(v106 + 40) = v114;
  v115 = *&v2[v17];
  if (!v115)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v116 = [v115 bottomAnchor];
  v117 = *(v133 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView);
  if (!v117)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v118 = v116;
  v119 = objc_opt_self();
  v120 = [v117 topAnchor];
  v121 = [v118 constraintEqualToAnchor:v120];

  *(v106 + 48) = v121;
  sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
  v122 = Array._bridgeToObjectiveC()().super.isa;

  [v119 activateConstraints:v122];
}

void sub_100056138(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v3);
  *(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_useRTLLayout) = (*(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_useRTLLayout) & 1) == 0;
  v4 = [objc_opt_self() traitCollectionWithLayoutDirection:1];
  v5 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
  if (v5)
  {
    v7 = v4;
    v6 = v5;
    UIViewController.traitOverrides.getter();
    UIMutableTraits.layoutDirection.setter();
    UIViewController.traitOverrides.setter();
  }

  else
  {
  }
}

void sub_10005627C(uint64_t a1, _BYTE *a2, __n128 a3)
{
  if (a2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isRunningAnimationStressTest] == 1)
  {
    a2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isRunningAnimationStressTest] = 0;
    v4 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer;
    [*&a2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer] invalidate];
    v6 = *&a2[v4];
    *&a2[v4] = 0;

    *&a2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestCount] = 0;
  }

  else
  {

    sub_10005900C(a2, a3);
  }
}

void sub_1000562FC(uint64_t a1, unint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v2 = type metadata accessor for Logger();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(UIView) init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 redColor];
    [v7 setBackgroundColor:v8];
  }

  v9 = [objc_allocWithZone(UIView) init];
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 blueColor];
    [v11 setBackgroundColor:v12];
  }

  static Logger.UI.getter();
  v13 = v5;
  v14 = v9;
  v15 = v5;
  v16 = v4;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = os_log_type_enabled(v17, v18);
  v35 = v15;
  v36 = v13;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v20 = 136315650;
    *(v20 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093D10, &v41);
    *(v20 + 12) = 2080;
    v40 = v15;
    v21 = v13;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v22 = String.init<A>(describing:)();
    v24 = sub_100037B98(v22, v23, &v41);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    v40 = v9;
    v25 = v14;
    v26 = v14;
    v27 = String.init<A>(describing:)();
    v29 = sub_100037B98(v27, v28, &v41);

    *(v20 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s iconPortalLayer: %s openIndicatorPortalLayer: %s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = v14;
  }

  (*(v37 + 8))(v16, v38);
  v30 = *(v39 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
  if (v30)
  {
    v31 = v30;
    sub_100045AE4(v33, v34, v9, v35);
  }
}

uint64_t sub_10005679C()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate____lazy_storage___easingFunctions;
  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate____lazy_storage___easingFunctions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate____lazy_storage___easingFunctions);
  }

  else
  {
    type metadata accessor for DOCSBLayoutEasingFunctions();
    v2 = swift_allocObject();
    *(v2 + 16) = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseIn];
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_100056844(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29 = v2;
    v12 = v11;
    v28 = swift_slowAlloc();
    v30 = v28;
    *v12 = 136315394;
    *(v12 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100093CF0, &v30);
    *(v12 + 12) = 2080;
    v13 = v8;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v4;
    v16 = v15;
    v18 = v17;

    v19 = sub_100037B98(v16, v18, &v30);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s sender: %s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v7, v27);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v20 = [v8 view];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 restorationIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      sub_100056B60(v24, v26);
    }

    else
    {
    }
  }
}