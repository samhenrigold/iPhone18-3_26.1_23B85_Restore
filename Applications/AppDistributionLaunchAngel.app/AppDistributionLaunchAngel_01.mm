uint64_t sub_100020A48()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100020BA8, v3, v2);
}

uint64_t sub_100020BA8()
{
  v1 = *(v0 + 136);

  sub_1000223B0(v1, type metadata accessor for InstallConfirmationAppStoreMetrics);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100020C38()
{
  v1[2] = v0;
  sub_1000047BC(&qword_100089388, &qword_100067A70);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for InstallConfirmationAppStoreMetrics(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_100020D64, v4, v3);
}

uint64_t sub_100020D64()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_100010668(v0[2] + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[3];
  if (v4 == 1)
  {

    sub_100011C14(v5, &qword_100089388, &qword_100067A70);

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_100022268(v0[3], v0[6]);
    v8 = InstallSheetContext.itemID.getter();
    v10 = v9;
    v0[10] = v9;
    v0[11] = sub_100059AC4(&_swiftEmptyArrayStorage);
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_100020F34;

    return sub_100056B2C(1701998413, 0xE400000000000000, v8, v10, 1701998445, 0xE400000000000000, 0x6E6F74747562, 0xE600000000000000);
  }
}

uint64_t sub_100020F34()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100022538, v3, v2);
}

uint64_t sub_100021094()
{
  v1[2] = v0;
  sub_1000047BC(&qword_100089388, &qword_100067A70);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for InstallConfirmationAppStoreMetrics(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_1000211C0, v4, v3);
}

uint64_t sub_1000211C0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_100010668(v0[2] + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[3];
  if (v4 == 1)
  {

    sub_100011C14(v5, &qword_100089388, &qword_100067A70);

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_100022268(v0[3], v0[6]);
    v8 = InstallSheetContext.itemID.getter();
    v10 = v9;
    v0[10] = v9;
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_100021360;

    return sub_100057420(v8, v10, 0x6174736E49707041, 0xEA00000000006C6CLL);
  }
}

uint64_t sub_100021360()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1000214A4, v3, v2);
}

uint64_t sub_1000214A4()
{
  v1 = *(v0 + 48);

  sub_1000223B0(v1, type metadata accessor for InstallConfirmationAppStoreMetrics);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100021534()
{
  *(v1 + 64) = v0;
  type metadata accessor for MainActor();
  *(v1 + 72) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000215CC, v3, v2);
}

uint64_t sub_1000215CC()
{
  v1 = v0[8];

  v2 = [objc_opt_self() clearColor];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[6] = sub_100022208;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10005F9E8;
  v0[5] = &unk_10007EEF8;
  v5 = _Block_copy(v0 + 2);
  v6 = v1;
  v7 = v2;

  [v3 animateWithDuration:v5 animations:0.3];
  _Block_release(v5);

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v0[6] = sub_100022260;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10005F9E8;
  v0[5] = &unk_10007EF48;
  v9 = _Block_copy(v0 + 2);
  v10 = v6;

  [v10 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
  v11 = v0[1];

  return v11();
}

uint64_t sub_1000217CC(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction;
  v3 = *(a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction);
  if (v3)
  {
    v4 = *(v2 + 8);

    v3(v5);
    sub_10001369C(v3, v4);
  }
}

void sub_100021898(char a1)
{
  v3 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_response;
  v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_response] = a1;
  v7 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_responseAction;
  v8 = *&v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_responseAction];
  if (v8)
  {
    v9 = v8;
    if ([v9 canSendResponse])
    {
      v10 = [objc_allocWithZone(BSMutableSettings) init];
      v11 = [objc_allocWithZone(NSNumber) initWithBool:v1[v6]];
      [v10 setObject:v11 forSetting:1];

      v12 = [objc_opt_self() responseWithInfo:v10];
      [v9 sendResponse:v12];

      v9 = *&v1[v7];
      *&v1[v7] = 0;
    }
  }

  if ((a1 & 1) == 0)
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    type metadata accessor for MainActor();
    v14 = v1;
    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v14;
    sub_100007654(0, 0, v5, &unk_100066620, v16);
  }
}

uint64_t sub_100021AB8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100021B64;

  return sub_100021534();
}

uint64_t sub_100021B64()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100021CA0, v1, v0);
}

uint64_t sub_100021CA0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100021D00(void *a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setBackgroundColor:a2];
  }

  else
  {
    __break(1u);
  }
}

id sub_100021E70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CombinedApprovalAndInstallViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CombinedApprovalAndInstallViewController(uint64_t a1)
{
  result = qword_1000894E8;
  if (!qword_1000894E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100021F94(uint64_t a1)
{
  type metadata accessor for LocalizedCombinedApprovalAndInstallContent(319);
  if (v1 <= 0x3F)
  {
    sub_10002207C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10002207C(uint64_t a1)
{
  if (!qword_1000894F8)
  {
    type metadata accessor for InstallConfirmationAppStoreMetrics(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000894F8);
    }
  }
}

uint64_t sub_1000220D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022114()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001020C;

  return sub_100021AB8();
}

uint64_t sub_1000221C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022210(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100022228()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallConfirmationAppStoreMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000222CC()
{
  v1 = (v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_childViewController) = 0;
  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_responseAction) = 0;
  *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_response) = 0;
  v2 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_isIPad;
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  *(v0 + v2) = v4 == 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000223B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100022410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000224C4()
{

  return sub_10001FC00();
}

id sub_10002254C(void *a1, void *a2)
{
  v3 = v2;
  v76 = a2;
  v5 = type metadata accessor for ConfirmationSheetContext();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v72 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v71 = v69 - v10;
  v11 = __chkstk_darwin(v9);
  v73 = v69 - v12;
  __chkstk_darwin(v11);
  v74 = v69 - v13;
  v14 = sub_1000047BC(&qword_100089588, &unk_100066720);
  __chkstk_darwin(v14 - 8);
  v16 = v69 - v15;
  v17 = type metadata accessor for ConfirmationSheetSymbol();
  v78 = *(v17 - 8);
  v79 = v17;
  __chkstk_darwin(v17);
  v77 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction];
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_primaryButton;
  *&v3[v20] = [objc_opt_self() boldButton];
  v21 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_secondaryButton;
  *&v3[v21] = [objc_opt_self() linkButton];
  v22 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_isIPad;
  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 userInterfaceIdiom];

  v3[v22] = v24 == 1;
  v25 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_context;
  v26 = *(v6 + 16);
  v27 = v5;
  (v26)(&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_context], a1, v5);
  v28 = v76;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_customBodyView] = v76;
  v29 = v28;
  v30 = v78;
  v75 = v29;
  v76 = a1;
  ConfirmationSheetContext.symbolConfiguration.getter();
  v31 = v79;
  if ((*(v30 + 48))(v16, 1, v79) == 1)
  {
    sub_100011C14(v16, &qword_100089588, &unk_100066720);
    v32 = v74;
    (v26)(v74, &v3[v25], v27);
    ConfirmationSheetContext.title.getter();
    v33 = *(v6 + 8);
    v33(v32, v27);
    v79 = String._bridgeToObjectiveC()();

    v34 = v73;
    (v26)(v73, &v3[v25], v27);
    ConfirmationSheetContext.subtitle.getter();
    v36 = v35;
    v33(v34, v27);
    if (v36)
    {
      v37 = String._bridgeToObjectiveC()();
    }

    else
    {
      v37 = 0;
    }

    v60 = type metadata accessor for ConfirmationSheetViewController(0);
    v82.receiver = v3;
    v82.super_class = v60;
    v61 = v79;
    v62 = objc_msgSendSuper2(&v82, "initWithTitle:detailText:symbolName:contentLayout:", v79, v37, 0, 3);

    v33(v76, v27);
  }

  else
  {
    v69[1] = v6 + 16;
    v70 = v6;
    v38 = v25;
    v73 = v26;
    v69[0] = v27;
    (*(v30 + 32))(v77, v16, v31);
    v39 = ConfirmationSheetSymbol.enableHeirarchicalColors.getter();
    if (v39 == 2 || (v39 & 1) == 0)
    {
      v54 = v73;
      v53 = v74;
      v46 = v69[0];
      (v73)(v74, &v3[v25], v69[0]);
      ConfirmationSheetContext.title.getter();
      v55 = *(v70 + 8);
      v70 = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v55(v53, v46);
      v48 = String._bridgeToObjectiveC()();

      v56 = v72;
      v54(v72, &v3[v25], v46);
      ConfirmationSheetContext.subtitle.getter();
      v58 = v57;
      v59 = v56;
      v47 = v55;
      v55(v59, v46);
      if (v58)
      {
        v52 = String._bridgeToObjectiveC()();
      }

      else
      {
        v52 = 0;
      }

      v63 = v77;
      ConfirmationSheetSymbol.symbolName.getter();
      v64 = String._bridgeToObjectiveC()();

      v65 = type metadata accessor for ConfirmationSheetViewController(0);
      v81.receiver = v3;
      v81.super_class = v65;
      v66 = objc_msgSendSuper2(&v81, "initWithTitle:detailText:symbolName:contentLayout:", v48, v52, v64, 3);
      v44 = v75;
    }

    else
    {
      v40 = [objc_opt_self() tintColor];
      v41 = [objc_opt_self() configurationWithHierarchicalColor:v40];

      v42 = v41;
      ConfirmationSheetSymbol.symbolName.getter();
      v43 = String._bridgeToObjectiveC()();

      v44 = [objc_opt_self() systemImageNamed:v43 withConfiguration:v42];

      v72 = v42;
      v45 = v74;
      v46 = v69[0];
      (v73)(v74, &v3[v38], v69[0]);
      ConfirmationSheetContext.title.getter();
      v47 = *(v70 + 8);
      v70 = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v47(v45, v46);
      v48 = String._bridgeToObjectiveC()();

      v49 = v71;
      (v73)(v71, &v3[v38], v46);
      ConfirmationSheetContext.subtitle.getter();
      v51 = v50;
      v47(v49, v46);
      if (v51)
      {
        v52 = String._bridgeToObjectiveC()();
      }

      else
      {
        v52 = 0;
      }

      v67 = type metadata accessor for ConfirmationSheetViewController(0);
      v80.receiver = v3;
      v80.super_class = v67;
      v66 = objc_msgSendSuper2(&v80, "initWithTitle:detailText:icon:contentLayout:", v48, v52, v44, 3);

      v63 = v77;
      v64 = v72;
    }

    v62 = v66;
    v47(v76, v46);
    (*(v78 + 8))(v63, v79);
  }

  return v62;
}

id sub_100022D48()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:STRestrictionsPINControllerDidFinishNotification object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ConfirmationSheetViewController(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for ConfirmationSheetViewController(uint64_t a1)
{
  result = qword_100089578;
  if (!qword_100089578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100023038()
{
  v1 = v0;
  v2 = sub_1000047BC(&qword_1000895B0, &unk_100066758);
  __chkstk_darwin(v2 - 8);
  v105 = &v99 - v3;
  v4 = type metadata accessor for ConfirmationSheetMiniProductPageConfiguration();
  v106 = *(v4 - 8);
  v107 = v4;
  __chkstk_darwin(v4);
  v102 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000047BC(&qword_1000895A0, &qword_100066750);
  __chkstk_darwin(v6 - 8);
  v8 = &v99 - v7;
  v9 = type metadata accessor for ConfirmationSheetMoreInformationLink();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v0 navigationItem];
  [v12 setTitle:0];

  [v1 setModalInPresentation:1];
  [v1 setDefinesPresentationContext:1];
  if (v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_isIPad])
  {
    v13 = 88.0;
  }

  else
  {
    v13 = 38.0;
  }

  v14 = [v1 contentView];
  [v14 setDirectionalLayoutMargins:{0.0, v13, 0.0, v13}];

  v15 = [v1 headerView];
  v16 = [v15 bottomAnchor];

  v17 = [v1 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:0.0];
  [v19 setActive:1];

  v20 = [v1 contentView];
  v21 = [v20 topAnchor];

  v108 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_context;
  ConfirmationSheetContext.moreInformationLink.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100011C14(v8, &qword_1000895A0, &qword_100066750);
    v22 = &off_100086000;
  }

  else
  {
    v23 = *(v10 + 32);
    v101 = v9;
    v23(v104, v8, v9);
    v24 = sub_100023D30();
    v100 = objc_opt_self();
    sub_1000047BC(&qword_10008A4A0, &unk_100066390);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100066650;
    v26 = [v24 topAnchor];
    v27 = [v26 constraintEqualToAnchor:v21 constant:4.0];

    *(v25 + 32) = v27;
    v28 = [v24 leadingAnchor];
    v29 = [v1 contentView];
    v30 = [v29 leadingAnchor];
    v103 = v21;
    v31 = v30;

    v32 = [v28 constraintEqualToAnchor:v31 constant:v13];
    *(v25 + 40) = v32;
    v33 = [v24 trailingAnchor];
    v34 = [v1 contentView];
    v35 = [v34 trailingAnchor];

    v36 = [v33 constraintLessThanOrEqualToAnchor:v35 constant:-v13];
    *(v25 + 48) = v36;
    sub_10001E778(0, &qword_1000895A8, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v100 activateConstraints:isa];

    v21 = [v24 bottomAnchor];
    (*(v10 + 8))(v104, v101);
    v22 = &off_100086000;
  }

  v38 = ConfirmationSheetContext.bulletPoints.getter();
  if (v38)
  {
    v39 = &off_100086000;
    if (*(v38 + 16))
    {
      v40 = sub_10002434C(v38);

      v104 = objc_opt_self();
      sub_1000047BC(&qword_10008A4A0, &unk_100066390);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_100066650;
      v42 = [v40 topAnchor];
      v43 = [v42 constraintEqualToAnchor:v21 constant:16.0];

      *(v41 + 32) = v43;
      v44 = [v40 leadingAnchor];
      v45 = [v1 contentView];
      v46 = v21;
      v47 = [v45 leadingAnchor];

      v48 = [v44 constraintEqualToAnchor:v47 constant:v13];
      *(v41 + 40) = v48;
      v49 = [v40 trailingAnchor];
      v50 = [v1 contentView];
      v51 = [v50 trailingAnchor];

      v22 = &off_100086000;
      v52 = [v49 constraintEqualToAnchor:v51 constant:-v13];

      *(v41 + 48) = v52;
      sub_10001E778(0, &qword_1000895A8, NSLayoutConstraint_ptr);
      v53 = Array._bridgeToObjectiveC()().super.isa;

      [v104 activateConstraints:v53];

      v21 = [v40 bottomAnchor];
    }

    else
    {
    }
  }

  else
  {
    v39 = &off_100086000;
  }

  v54 = *&v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_customBodyView];
  if (v54)
  {
    v55 = v54;
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = [v1 contentView];
    [v56 addSubview:v55];

    v104 = objc_opt_self();
    sub_1000047BC(&qword_10008A4A0, &unk_100066390);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_100066650;
    v58 = v55;
    v59 = [v58 v39[130]];
    v60 = [v59 constraintEqualToAnchor:v21 constant:16.0];

    *(v57 + 32) = v60;
    v61 = [v58 leadingAnchor];
    v62 = [v1 contentView];
    v63 = v21;
    v64 = [v62 leadingAnchor];

    v65 = [v61 constraintEqualToAnchor:v64 constant:v13];
    *(v57 + 40) = v65;
    v66 = [v58 trailingAnchor];
    v22 = &off_100086000;
    v67 = [v1 contentView];
    v68 = [v67 trailingAnchor];

    v69 = [v66 constraintEqualToAnchor:v68 constant:-v13];
    *(v57 + 48) = v69;
    sub_10001E778(0, &qword_1000895A8, NSLayoutConstraint_ptr);
    v70 = Array._bridgeToObjectiveC()().super.isa;

    [v104 activateConstraints:v70];

    v21 = [v58 bottomAnchor];
  }

  v71 = v105;
  ConfirmationSheetContext.miniProductPageConfiguration.getter();
  v72 = v106;
  v73 = v107;
  if ((*(v106 + 48))(v71, 1, v107) == 1)
  {

    return sub_100011C14(v71, &qword_1000895B0, &unk_100066758);
  }

  else
  {
    v75 = v102;
    (*(v72 + 32))(v102, v71, v73);
    v76 = v22;
    v77 = ConfirmationSheetMiniProductPageConfiguration.itemID.getter();
    v79 = v78;
    v80 = ConfirmationSheetMiniProductPageConfiguration.versionID.getter();
    v103 = v21;
    v81 = v80;
    v83 = v82;
    v84 = ConfirmationSheetMiniProductPageConfiguration.distributorID.getter();
    v86 = v85;
    v87 = ConfirmationSheetMiniProductPageConfiguration.isForAppStore.getter();
    v88 = sub_1000251F8(v77, v79, v81, v83, v84, v86, v87 & 1);

    v89 = objc_opt_self();
    sub_1000047BC(&qword_10008A4A0, &unk_100066390);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_100066660;
    v91 = [v88 topAnchor];
    v92 = v103;
    v93 = [v91 constraintEqualToAnchor:v103 constant:24.0];

    *(v90 + 32) = v93;
    v94 = [v88 v76[108]];
    v95 = [v1 contentView];
    v96 = [v95 v76[108]];

    v97 = [v94 constraintEqualToAnchor:v96];
    *(v90 + 40) = v97;
    sub_10001E778(0, &qword_1000895A8, NSLayoutConstraint_ptr);
    v98 = Array._bridgeToObjectiveC()().super.isa;

    [v89 activateConstraints:v98];

    return (*(v106 + 8))(v75, v107);
  }
}

id sub_100023D30()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() systemImageNamed:v3];

  v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  v6 = objc_opt_self();
  v7 = [v6 systemBlueColor];
  [v5 setTintColor:v7];

  v8 = v5;
  [v8 setContentMode:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [objc_allocWithZone(UILabel) init];
  ConfirmationSheetMoreInformationLink.label.getter();
  v10 = String._bridgeToObjectiveC()();

  [v9 setText:v10];

  v11 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 setFont:v11];

  v12 = [v6 systemBlueColor];
  [v9 setTextColor:v12];

  v13 = v9;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"moreInformationPressed"];
  [v2 addGestureRecognizer:v41];
  [v2 setUserInteractionEnabled:1];
  [v2 addSubview:v8];
  [v2 addSubview:v13];
  v14 = [v1 contentView];
  [v14 addSubview:v2];

  v40 = objc_opt_self();
  sub_1000047BC(&qword_10008A4A0, &unk_100066390);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100066670;
  v16 = [v8 leadingAnchor];
  v17 = [v2 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v15 + 32) = v18;
  v19 = [v8 centerYAnchor];
  v20 = [v2 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v15 + 40) = v21;
  v22 = [v8 widthAnchor];
  v23 = [v22 constraintEqualToConstant:20.0];

  *(v15 + 48) = v23;
  v24 = [v8 heightAnchor];
  v25 = [v24 constraintEqualToConstant:20.0];

  *(v15 + 56) = v25;
  v26 = [v13 leadingAnchor];
  v27 = [v8 trailingAnchor];

  v28 = [v26 constraintEqualToAnchor:v27 constant:6.0];
  *(v15 + 64) = v28;
  v29 = [v13 centerYAnchor];
  v30 = [v2 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v15 + 72) = v31;
  v32 = [v13 trailingAnchor];
  v33 = [v2 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v15 + 80) = v34;
  v35 = [v2 heightAnchor];
  v36 = [v13 heightAnchor];

  v37 = [v35 constraintEqualToAnchor:v36];
  *(v15 + 88) = v37;
  sub_10001E778(0, &qword_1000895A8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v40 activateConstraints:isa];

  return v2;
}

id sub_10002434C(uint64_t a1)
{
  v3 = [objc_allocWithZone(UIView) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 contentView];
  [v4 addSubview:v3];

  v5 = *(a1 + 16);
  if (!v5)
  {
    v91 = [v3 heightAnchor];
    v90 = [v91 constraintEqualToConstant:0.0];

    [v90 setActive:1];
    goto LABEL_9;
  }

  v104 = v3;
  v97 = objc_opt_self();
  v96 = objc_opt_self();
  v95 = objc_opt_self();
  v94 = objc_opt_self();
  v103 = objc_opt_self();
  v101 = 0;
  v6 = *(type metadata accessor for ConfirmationSheetBulletPoint() - 8);
  v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v102 = v5 - 1;
  v93 = *(v6 + 72);
  while (1)
  {
    v105 = [objc_allocWithZone(UIView) init];
    [v105 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [objc_allocWithZone(UIImageView) init];
    v14 = [v97 systemBlueColor];
    v15 = [v96 configurationWithHierarchicalColor:v14];

    ConfirmationSheetBulletPoint.icon.getter();
    v16 = v15;
    v17 = String._bridgeToObjectiveC()();

    v18 = [v95 _systemImageNamed:v17 withConfiguration:v16];

    v100 = v16;
    [v13 setImage:v18];

    v106 = v13;
    [v106 setContentMode:1];
    [v106 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [objc_allocWithZone(UIView) init];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [objc_allocWithZone(UILabel) init];
    ConfirmationSheetBulletPoint.header.getter();
    v21 = String._bridgeToObjectiveC()();

    [v20 setText:v21];

    v22 = [v94 preferredFontForTextStyle:UIFontTextStyleHeadline];
    [v20 setFont:v22];

    v23 = [v97 labelColor];
    [v20 setTextColor:v23];

    [v20 setNumberOfLines:0];
    v24 = v20;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [objc_allocWithZone(UILabel) init];
    v98 = v7;
    ConfirmationSheetBulletPoint.body.getter();
    v26 = String._bridgeToObjectiveC()();

    [v25 setText:v26];

    v27 = [v94 preferredFontForTextStyle:UIFontTextStyleBody];
    [v25 setFont:v27];

    v28 = [v97 secondaryLabelColor];
    [v25 setTextColor:v28];

    [v25 setNumberOfLines:0];
    v29 = v25;
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v19 addSubview:v24];
    [v19 addSubview:v29];
    [v105 addSubview:v106];
    [v105 addSubview:v19];
    [v104 addSubview:v105];
    sub_1000047BC(&qword_10008A4A0, &unk_100066390);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100066680;
    v31 = [v24 topAnchor];
    v32 = [v19 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v30 + 32) = v33;
    v34 = [v24 leadingAnchor];
    v35 = [v19 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    *(v30 + 40) = v36;
    v37 = [v24 trailingAnchor];
    v38 = [v19 trailingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    *(v30 + 48) = v39;
    v40 = [v29 topAnchor];
    v41 = [v24 bottomAnchor];

    v42 = [v40 constraintEqualToAnchor:v41 constant:4.0];
    *(v30 + 56) = v42;
    v43 = [v29 leadingAnchor];
    v44 = [v19 leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    *(v30 + 64) = v45;
    v46 = [v29 trailingAnchor];
    v47 = [v19 trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(v30 + 72) = v48;
    v49 = [v29 bottomAnchor];
    v99 = v29;

    v50 = [v19 bottomAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    *(v30 + 80) = v51;
    sub_10001E778(0, &qword_1000895A8, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v103 activateConstraints:isa];

    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100066670;
    v54 = [v106 leadingAnchor];
    v55 = [v105 leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    *(v53 + 32) = v56;
    v57 = [v106 topAnchor];
    v58 = [v105 topAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    *(v53 + 40) = v59;
    v60 = [v106 widthAnchor];
    v61 = [v60 constraintEqualToConstant:36.0];

    *(v53 + 48) = v61;
    v62 = [v106 heightAnchor];
    v63 = [v62 constraintEqualToConstant:36.0];

    *(v53 + 56) = v63;
    v64 = [v19 leadingAnchor];
    v65 = [v106 trailingAnchor];

    v66 = [v64 constraintEqualToAnchor:v65 constant:12.0];
    *(v53 + 64) = v66;
    v67 = [v19 topAnchor];
    v68 = [v105 topAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];

    *(v53 + 72) = v69;
    v70 = [v19 trailingAnchor];
    v71 = [v105 trailingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];

    *(v53 + 80) = v72;
    v73 = [v19 bottomAnchor];
    v74 = [v105 bottomAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];

    *(v53 + 88) = v75;
    v76 = Array._bridgeToObjectiveC()().super.isa;

    [v103 activateConstraints:v76];

    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_100066660;
    v78 = [v105 leadingAnchor];
    v79 = [v104 leadingAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];

    *(v77 + 32) = v80;
    v81 = [v105 trailingAnchor];
    v82 = [v104 trailingAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    *(v77 + 40) = v83;
    v84 = Array._bridgeToObjectiveC()().super.isa;

    [v103 activateConstraints:v84];

    if (v101)
    {
      break;
    }

    v8 = [v105 topAnchor];
    v9 = [v104 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];

    [v10 setActive:1];
    v11 = v102;
    v12 = &off_100086000;
    if (!v102)
    {
      goto LABEL_7;
    }

LABEL_4:
    v102 = v11 - 1;
    v7 = v98 + v93;
    v101 = v105;
  }

  v85 = [v105 topAnchor];
  v86 = [v101 bottomAnchor];
  v87 = [v85 constraintEqualToAnchor:v86 constant:24.0];

  [v87 setActive:1];
  v11 = v102;
  v12 = &off_100086000;
  if (v102)
  {
    goto LABEL_4;
  }

LABEL_7:
  v3 = v104;
  v88 = [v104 v12[108]];
  v89 = [v105 v12[108]];
  v90 = [v88 constraintEqualToAnchor:v89];

  [v90 setActive:1];
LABEL_9:

  return v3;
}

char *sub_1000251F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v14 = ConfirmationSheetContext.logKey.getter();
  v16 = v15;
  v52 = type metadata accessor for MiniProductPageView(0);
  v17 = objc_allocWithZone(v52);
  *&v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_traitChangeRegistration] = 0;
  v18 = OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_context;
  v19 = type metadata accessor for InstallSheetContext();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v20 = &v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_itemID];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_versionID];
  *v21 = a3;
  v21[1] = a4;
  v22 = &v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_distributorID];
  *v22 = a5;
  v22[1] = a6;
  v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_isForAppStore] = a7;
  v23 = &v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_logKey];
  *v23 = v14;
  v23[1] = v16;
  v24 = objc_allocWithZone(AppStoreComponentsWrapper);
  v25 = v8;

  v26 = String._bridgeToObjectiveC()();

  v27 = [v24 initWithLogKey:v26];

  *&v17[OBJC_IVAR____TtC26AppDistributionLaunchAngel19MiniProductPageView_appStoreComponentsWrapper] = v27;
  v53.receiver = v17;
  v53.super_class = v52;
  v28 = objc_msgSendSuper2(&v53, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10003FF70(v8, v28);
  sub_100045FF4();
  v29 = v28;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [v25 contentView];
  [v30 addSubview:v29];

  if (*(v25 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_isIPad) == 1)
  {
    v31 = [v25 contentView];
    v32 = [v31 leadingAnchor];

    v33 = [v29 leadingAnchor];
    v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33 constant:-88.0];

    LODWORD(v35) = 1140457472;
    [v34 setPriority:v35];
    [v34 setActive:1];
    v36 = [v25 contentView];
    v37 = [v36 centerXAnchor];

    v38 = [v29 centerXAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    [v39 setActive:1];
    v40 = [v29 widthAnchor];
    v41 = [v40 constraintLessThanOrEqualToConstant:360.0];

    [v41 setActive:1];
  }

  else
  {
    v42 = [v29 leadingAnchor];
    v43 = [v25 contentView];
    v44 = [v43 leadingAnchor];

    v45 = [v42 constraintEqualToAnchor:v44 constant:24.0];
    [v45 setActive:1];

    v46 = [v29 trailingAnchor];
    v47 = [v25 contentView];
    v48 = [v47 trailingAnchor];

    v41 = [v46 constraintEqualToAnchor:v48 constant:-24.0];
    [v41 setActive:1];
  }

  return v29;
}

void sub_1000256E8()
{
  v1 = v0;
  v2 = sub_1000047BC(&unk_100089E30, &qword_100067230);
  v3 = __chkstk_darwin(v2 - 8);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v70 = &v62 - v6;
  v7 = __chkstk_darwin(v5);
  v64 = &v62 - v8;
  __chkstk_darwin(v7);
  v63 = &v62 - v9;
  v68 = type metadata accessor for ConfirmationSheetButtonStyle();
  v10 = *(v68 - 8);
  v11 = __chkstk_darwin(v68);
  v67 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v62 - v13;
  v14 = type metadata accessor for ConfirmationSheetButton();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_primaryButton];
  v19 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_context;
  ConfirmationSheetContext.primaryButton.getter();
  ConfirmationSheetButton.text.getter();
  v20 = *(v15 + 8);
  v20(v17, v14);
  v21 = String._bridgeToObjectiveC()();

  [v18 setTitle:v21 forState:0];

  v71 = v1;
  v69 = v19;
  ConfirmationSheetContext.primaryButton.getter();
  v22 = v66;
  ConfirmationSheetButton.style.getter();
  v20(v17, v14);
  v24 = v67;
  v23 = v68;
  (*(v10 + 104))(v67, enum case for ConfirmationSheetButtonStyle.white(_:), v68);
  LOBYTE(v21) = static ConfirmationSheetButtonStyle.== infix(_:_:)();
  v25 = *(v10 + 8);
  v25(v24, v23);
  v25(v22, v23);
  if (v21)
  {
    v26 = v63;
    UIButton.configuration.getter();
    v27 = type metadata accessor for UIButton.Configuration();
    v28 = *(*(v27 - 8) + 48);
    if (v28(v26, 1, v27))
    {
      sub_100010668(v26, v70, &unk_100089E30, &qword_100067230);
      UIButton.configuration.setter();
      sub_100011C14(v26, &unk_100089E30, &qword_100067230);
    }

    else
    {
      v29 = [objc_opt_self() systemBlueColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    v30 = v64;
    UIButton.configuration.getter();
    if (v28(v30, 1, v27))
    {
      sub_100010668(v30, v70, &unk_100089E30, &qword_100067230);
      UIButton.configuration.setter();
      sub_100011C14(v30, &unk_100089E30, &qword_100067230);
    }

    else
    {
      v31 = [objc_opt_self() clearColor];
      UIButton.Configuration.baseBackgroundColor.setter();
      UIButton.configuration.setter();
    }
  }

  v32 = v71;
  [v18 addTarget:v71 action:"primaryButtonPressed" forControlEvents:64];
  v33 = [v32 buttonTray];
  [v33 addButton:v18];

  ConfirmationSheetContext.secondaryButtonText.getter();
  v34 = &off_100086000;
  if (v35)
  {
    v36 = *&v32[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_secondaryButton];
    v37 = String._bridgeToObjectiveC()();

    [v36 setTitle:v37 forState:0];

    v38 = v65;
    UIButton.configuration.getter();
    v39 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v39 - 8) + 48))(v38, 1, v39))
    {
      sub_100010668(v38, v70, &unk_100089E30, &qword_100067230);
      UIButton.configuration.setter();
      v32 = v71;
      sub_100011C14(v38, &unk_100089E30, &qword_100067230);
    }

    else
    {
      v40 = [objc_opt_self() systemBlueColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    [v36 addTarget:v32 action:"secondaryButtonPressed" forControlEvents:64];
    v41 = [v32 buttonTray];
    [v41 addButton:v36];

    v42 = [v18 heightAnchor];
    v43 = [v36 heightAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];

    v34 = &off_100086000;
    [v44 setActive:1];

    v32 = v71;
  }

  v45 = v32[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_isIPad];
  v46 = [v32 buttonTray];
  v47 = v46;
  if (v45 == 1)
  {
    v48 = [v46 widthAnchor];

    v49 = [v48 constraintLessThanOrEqualToConstant:360.0];
    [v49 v34[103]];

    v50 = *&v32[OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_secondaryButton];
    v51 = [v50 superview];
    if (v51)
    {

      v52 = [v50 bottomAnchor];
    }

    else
    {
      v52 = [v18 bottomAnchor];
    }

    v53 = [v32 buttonTray];
    v59 = [v53 bottomAnchor];

    v60 = [v52 constraintEqualToAnchor:v59 constant:-24.0];
  }

  else
  {
    v54 = [v46 leadingAnchor];

    v55 = [v18 leadingAnchor];
    v56 = v32;
    v57 = [v54 constraintEqualToAnchor:v55 constant:-24.0];

    [v57 v34[103]];
    v58 = [v56 buttonTray];
    v52 = [v58 trailingAnchor];

    v59 = [v18 trailingAnchor];
    v60 = [v52 constraintEqualToAnchor:v59 constant:24.0];
  }

  v61 = v60;

  [v61 v34[103]];
}

id sub_100026034()
{
  v0 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000047BC(&qword_1000895A0, &qword_100066750);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ConfirmationSheetMoreInformationLink();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ConfirmationSheetContext.moreInformationLink.getter();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100011C14(v9, &qword_1000895A0, &qword_100066750);
  }

  (*(v11 + 32))(v13, v9, v10);
  ConfirmationSheetMoreInformationLink.URL.getter();
  URL.init(string:)();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    (*(v11 + 8))(v13, v10);
    return sub_100011C14(v2, &qword_1000893C0, &unk_1000663F0);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v16 = result;
      URL._bridgeToObjectiveC()(v15);
      v18 = v17;
      [v16 openSensitiveURL:v17 withOptions:0];

      (*(v4 + 8))(v6, v3);
      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000263B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000047BC(&qword_1000895B8, &qword_100066778);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for ConfirmationSheetPostPrimaryButtonAction();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_1000264DC, v7, v6);
}

uint64_t sub_1000264DC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  ConfirmationSheetContext.postPrimaryButtonAction.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[2];
    v5 = v0[3];

    sub_100011C14(v5, &qword_1000895B8, &qword_100066778);
    v6 = v4 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction;
    v7 = *(v4 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
    if (v7)
    {
      v8 = *(v6 + 8);

      v7(1);
      sub_10001E7C4(v7, v8);
    }

    v9 = v0[2];
    v10 = [objc_opt_self() defaultCenter];
    [v10 removeObserver:v9 name:STRestrictionsPINControllerDidFinishNotification object:0];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_1000266C4;
    v14 = v0[6];

    return sub_100026BC0(v14);
  }
}

uint64_t sub_1000266C4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1000267E4, v3, v2);
}

uint64_t sub_1000267E4()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_100026A18()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction + 8);

    v2(0);
    sub_10001E7C4(v2, v3);
  }

  v4 = [objc_opt_self() defaultCenter];
  [v4 removeObserver:v1 name:STRestrictionsPINControllerDidFinishNotification object:0];
}

void sub_100026AF4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_100026BC0(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for ConfirmationSheetLAConfiguration();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for ConfirmationSheetOsloSheetConfiguration();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for ConfirmationSheetPostPrimaryButtonAction();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[18] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v6;
  v2[20] = v7;

  return _swift_task_switch(sub_100026DD8, v6, v7);
}

uint64_t sub_100026DD8()
{
  receiver = v0[8].receiver;
  super_class = v0[8].super_class;
  v3 = v0[7].super_class;
  receiver[2](super_class, v0[3].receiver, v3);
  v4 = (receiver[11])(super_class, v3);
  if (v4 == enum case for ConfirmationSheetPostPrimaryButtonAction.osloAuthentication(_:))
  {
    v5 = v0[8].super_class;
    v6 = v0[7].receiver;
    v7 = v0[6].receiver;
    v8 = v0[6].super_class;
    (*(v0[8].receiver + 12))(v5, v0[7].super_class);
    (*(v8 + 4))(v6, v5, v7);
    v9 = [objc_allocWithZone(LAContext) init];
    v0[2].receiver = 0;
    v0[10].super_class = v9;
    LODWORD(v7) = [(objc_class *)v9 canEvaluatePolicy:1005 error:&v0[2]];
    v10 = v0[2].receiver;
    v0[11].receiver = v10;
    v11 = v10;
    if (v7)
    {
      v12 = v0[5].super_class;
      v13 = ConfirmationSheetOsloSheetConfiguration.paymentSheetTitle.getter();
      v92 = v14;
      v93 = v13;
      v91 = ConfirmationSheetOsloSheetConfiguration.paymentSheetLabel.getter();
      v16 = v15;
      v17 = ConfirmationSheetOsloSheetConfiguration.processingText.getter();
      v19 = v18;
      ConfirmationSheetOsloSheetConfiguration.iconURL.getter();
      v20 = type metadata accessor for OsloAuthenticationTask(0);
      v21 = objc_allocWithZone(v20);
      v22 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalizedContinuation;
      v23 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
      (*(*(v23 - 8) + 56))(&v21[v22], 1, 1, v23);
      v21[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalResult] = 0;
      v24 = &v21[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent];
      v25 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
      sub_100010668(v12, v24 + *(v25 + 28), &qword_1000893C0, &unk_1000663F0);
      *v24 = v93;
      v24[1] = v92;
      v24[2] = v91;
      v24[3] = v16;
      v24[4] = v17;
      v24[5] = v19;
      v0[1].receiver = v21;
      v0[1].super_class = v20;
      v0[11].super_class = objc_msgSendSuper2(v0 + 1, "init");
      sub_100011C14(v12, &qword_1000893C0, &unk_1000663F0);
      v26 = swift_task_alloc();
      v0[12].receiver = v26;
      *v26 = v0;
      v26[1] = sub_100027914;

      return sub_10002EACC();
    }

    v34 = v11;

    if (v34)
    {
      type metadata accessor for Code(0);
      v0[2].super_class = -5;
      sub_100029638();
      v35 = v34;
      if (static _ErrorCodeProtocol.~= infix(_:_:)())
      {
        if (qword_100088420 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_1000105E8(v36, qword_100089510);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Passcode not set, continuing without additional confirmation", v39, 2u);
        }

        v40 = v0[3].super_class;

        v41 = v40 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction;
        v42 = *(v40 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
        if (v42)
        {
          v43 = *(v41 + 1);

          v42(1);
          sub_10001E7C4(v42, v43);
        }

        v45 = v0[6].super_class;
        v44 = v0[7].receiver;
        v46 = v0[6].receiver;
        v47 = v0[3].super_class;
        v48 = [objc_opt_self() defaultCenter];
        [v48 removeObserver:v47 name:STRestrictionsPINControllerDidFinishNotification object:0];

        (*(v45 + 1))(v44, v46);
LABEL_47:

        v90 = v0->super_class;

        return v90();
      }
    }

    if (qword_100088420 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_1000105E8(v71, qword_100089510);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v0[6].super_class;
    v76 = v0[7].receiver;
    v77 = v0[6].receiver;
    if (v74)
    {
      v94 = v0[7].receiver;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138543362;
      *(v78 + 4) = v34;
      *v79 = v10;
      v34 = v34;
      _os_log_impl(&_mh_execute_header, v72, v73, "Error evaluating LAPolicyOslo policy: %{public}@", v78, 0xCu);
      sub_100011C14(v79, &qword_100088FD0, &qword_1000673F0);

      (*(v75 + 1))(v94, v77);
    }

    else
    {

      (*(v75 + 1))(v76, v77);
    }

    goto LABEL_47;
  }

  if (v4 != enum case for ConfirmationSheetPostPrimaryButtonAction.localAuthentication(_:))
  {
    v49 = enum case for ConfirmationSheetPostPrimaryButtonAction.parentScreentimePinCode(_:);
    v50 = v4;

    if (v50 == v49)
    {
      v51 = objc_opt_self();
      if ([v51 isRestrictionsPasscodeSet])
      {
        if (qword_100088420 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_1000105E8(v52, qword_100089510);
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "Activating Screen Time Pin UI", v55, 2u);
        }

        v56 = v0[3].super_class;

        [v51 activateRemotePINUI];
        v57 = [objc_opt_self() defaultCenter];
        [v57 addObserver:v56 selector:"handleScreenTimePinCompletionNotificationWithNotification:" name:STRestrictionsPINControllerDidFinishNotification object:0];
      }

      else
      {
        if (qword_100088420 != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        sub_1000105E8(v80, qword_100089510);
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v81, v82, "Screen Time Passcode not set, continuing without it", v83, 2u);
        }

        v84 = v0[3].super_class;

        v85 = v84 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction;
        v86 = *(v84 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
        if (v86)
        {
          v87 = *(v85 + 1);

          v86(1);
          sub_10001E7C4(v86, v87);
        }

        v88 = v0[3].super_class;
        v89 = [objc_opt_self() defaultCenter];
        [v89 removeObserver:v88 name:STRestrictionsPINControllerDidFinishNotification object:0];
      }
    }

    else
    {
      if (qword_100088420 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_1000105E8(v58, qword_100089510);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "Unknown post primary button action", v61, 2u);
      }

      v62 = v0[3].super_class;

      v63 = v62 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction;
      v64 = *(v62 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
      if (v64)
      {
        v65 = *(v63 + 1);

        v64(1);
        sub_10001E7C4(v64, v65);
      }

      v67 = v0[8].receiver;
      v66 = v0[8].super_class;
      v68 = v0[7].super_class;
      v69 = v0[3].super_class;
      v70 = [objc_opt_self() defaultCenter];
      [v70 removeObserver:v69 name:STRestrictionsPINControllerDidFinishNotification object:0];

      v67[1](v66, v68);
    }

    goto LABEL_47;
  }

  v28 = v0[8].super_class;
  v30 = v0[4].super_class;
  v29 = v0[5].receiver;
  v31 = v0[4].receiver;
  (*(v0[8].receiver + 12))(v28, v0[7].super_class);
  (*(v30 + 4))(v29, v28, v31);
  v32 = swift_task_alloc();
  v0[12].super_class = v32;
  *v32 = v0;
  *(v32 + 1) = sub_100027C38;
  v33 = v0[5].receiver;

  return sub_100028618(v33);
}

uint64_t sub_100027914(char a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return _swift_task_switch(sub_100027A70, v4, v3);
}

uint64_t sub_100027A70()
{
  v1 = *(v0 + 208);

  if (v1 == 1)
  {
    v2 = *(v0 + 56);
    v3 = *(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction + 8);

      v3(1);
      sub_10001E7C4(v3, v4);
      v2 = *(v0 + 56);
    }

    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v7 = *(v0 + 168);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 96);
    v11 = [objc_opt_self() defaultCenter];
    [v11 removeObserver:v2 name:STRestrictionsPINControllerDidFinishNotification object:0];

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v5 = *(v0 + 176);
    v12 = *(v0 + 184);
    v13 = *(v0 + 168);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100027C38(char a1)
{
  v2 = *v1;
  *(*v1 + 209) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return _swift_task_switch(sub_100027D94, v4, v3);
}

uint64_t sub_100027D94()
{
  v1 = *(v0 + 209);

  if (v1 == 1)
  {
    v2 = *(v0 + 56);
    v3 = *(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction + 8);

      v3(1);
      sub_10001E7C4(v3, v4);
      v2 = *(v0 + 56);
    }

    v5 = [objc_opt_self() defaultCenter];
    [v5 removeObserver:v2 name:STRestrictionsPINControllerDidFinishNotification object:0];
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100027F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t sub_100027FB0(uint64_t a1)
{
  result = type metadata accessor for ConfirmationSheetContext();
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

void sub_100028234(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  v6 = STRestrictionsPINControllerDidFinishNotification;
  [v5 removeObserver:v2 name:STRestrictionsPINControllerDidFinishNotification object:0];

  v7 = [a1 userInfo];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v21 + 1) = v10;

  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v11 = sub_100057EC8(v20), (v12 & 1) == 0))
  {

    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v13 = v11;

  sub_100010538(*(v9 + 56) + 32 * v13, v19);

  sub_10001E2FC(v20);
  sub_100028608(v19, &v21);
  sub_10001E778(0, &qword_100089378, NSNumber_ptr);
  swift_dynamicCast();
  v14 = v18;
  if ([v18 BOOLValue])
  {
    v15 = *(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction);
    if (v15)
    {
      v16 = *(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31ConfirmationSheetViewController_dismissAction + 8);

      v15(1);
      sub_10001E7C4(v15, v16);
    }

    v17 = [v4 defaultCenter];
    [v17 removeObserver:v2 name:v6 object:0];

    v14 = v17;
  }
}

uint64_t sub_100028540()
{
  v0 = type metadata accessor for Logger();
  sub_1000295D4(v0, qword_100089510);
  v1 = sub_1000105E8(v0, qword_100089510);
  if (qword_100088440 != -1)
  {
    swift_once();
  }

  v2 = sub_1000105E8(v0, qword_10008C4D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_OWORD *sub_100028608(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100028618(uint64_t a1)
{
  v1[45] = a1;
  v2 = sub_1000047BC(&qword_100089590, &unk_100067A90);
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[49] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[50] = v3;
  v1[51] = v4;

  return _swift_task_switch(sub_10002874C, v3, v4);
}

uint64_t sub_10002874C()
{
  v1 = [objc_allocWithZone(LAContext) init];
  *(v0 + 416) = v1;
  sub_10001E778(0, &qword_100089378, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(60).super.super.isa;
  [v1 setOptionMaxCredentialAge:isa];

  *(v0 + 328) = 0;
  LODWORD(isa) = [v1 canEvaluatePolicy:2 error:v0 + 328];
  v3 = *(v0 + 328);
  *(v0 + 424) = v3;
  v4 = v3;
  if (isa)
  {
    ConfirmationSheetLAConfiguration.localizedReason.getter();
    v5 = String._bridgeToObjectiveC()();

    [v1 setLocalizedReason:v5];

    *(v0 + 344) = 0;
    v6 = [v1 evaluationMechanismsForPolicy:2 error:v0 + 344];
    v7 = *(v0 + 344);
    if (v6)
    {
      v8 = v6;
      v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v7;

      *(v0 + 448) = 1;
      AnyHashable.init<A>(_:)();
      v11 = sub_10005A7B8(v0 + 224, v9);

      sub_10001E2FC(v0 + 224);
      if (v11)
      {
        ConfirmationSheetLAConfiguration.touchIDTitle.getter();
        v12 = String._bridgeToObjectiveC()();

        [v1 setOptionAuthenticationTitle:v12];

        ConfirmationSheetLAConfiguration.touchIDReason.getter();
        v13 = String._bridgeToObjectiveC()();

        [v1 setLocalizedReason:v13];
      }
    }

    else
    {
      v21 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v23 = *(v0 + 376);
    v22 = *(v0 + 384);
    v24 = *(v0 + 368);
    ConfirmationSheetLAConfiguration.passcodeTitle.getter();
    v25 = String._bridgeToObjectiveC()();

    [v1 setOptionPasscodeTitle:v25];

    ConfirmationSheetLAConfiguration.passcodeReason.getter();
    v26 = String._bridgeToObjectiveC()();

    [v1 setOptionPasswordAuthenticationReason:v26];

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 352;
    *(v0 + 24) = sub_100028E18;
    swift_continuation_init();
    *(v0 + 136) = v24;
    v27 = sub_1000104C4((v0 + 112));
    sub_1000047BC(&qword_100089598, &unk_100066740);
    sub_1000047BC(&qword_100088B60, &qword_100065F80);
    CheckedContinuation.init(continuation:function:)();
    (*(v23 + 32))(v27, v22, v24);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10005A890;
    *(v0 + 104) = &unk_10007EFC0;
    [v1 evaluatePolicy:2 options:0 reply:?];
    (*(v23 + 8))(v27, v24);

    return _swift_continuation_await(v0 + 16);
  }

  v14 = v4;

  if (!v14)
  {
    goto LABEL_17;
  }

  type metadata accessor for Code(0);
  *(v0 + 336) = -5;
  sub_100029638();
  v15 = v14;
  if ((static _ErrorCodeProtocol.~= infix(_:_:)() & 1) == 0)
  {

LABEL_17:
    if (qword_100088420 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000105E8(v28, qword_100089510);
    v20 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v14;
      *v31 = v3;
      v14 = v14;
      _os_log_impl(&_mh_execute_header, v20, v29, "Local Authentication failed when checking if deviceOwnerAuthentication can be evaluated: %@", v30, 0xCu);
      sub_100011C14(v31, &qword_100088FD0, &qword_1000673F0);
    }

    v19 = 0;
    v15 = v1;
    goto LABEL_22;
  }

  if (qword_100088420 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000105E8(v16, qword_100089510);
  v14 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v14, v17, "Passcode not set, continuing without additional confirmation", v18, 2u);
  }

  v19 = 1;
  v20 = v15;
LABEL_22:

  v32 = *(v0 + 8);

  return v32(v19);
}

uint64_t sub_100028E18()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  v3 = *(v1 + 408);
  v4 = *(v1 + 400);
  if (v2)
  {
    v5 = sub_1000292F4;
  }

  else
  {
    v5 = sub_100028F74;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100028F74()
{
  v24 = v0;

  v1 = *(v0 + 352);
  if (v1)
  {
    *(v0 + 440) = 3;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = sub_100057EC8(v0 + 144), (v3 & 1) != 0))
    {
      sub_100010538(*(v1 + 56) + 32 * v2, v0 + 264);
      sub_10001E2FC(v0 + 144);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 453) == 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10001E2FC(v0 + 144);
    }

    *(v0 + 444) = 1;
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v4 = sub_100057EC8(v0 + 184), (v5 & 1) != 0))
    {
      sub_100010538(*(v1 + 56) + 32 * v4, v0 + 296);
      sub_10001E2FC(v0 + 184);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 452) == 1)
      {
LABEL_12:
        v6 = *(v0 + 424);

        v7 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      sub_10001E2FC(v0 + 184);
    }

    if (qword_100088420 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000105E8(v8, qword_100089510);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 416);
    v12 = *(v0 + 424);
    if (v11)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136446210;
      v16 = Dictionary.description.getter();
      v18 = v17;

      v19 = sub_10000F78C(v16, v18, &v23);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed local authentication evaluation with results: %{public}s", v14, 0xCu);
      sub_10001059C(v15);
    }

    else
    {
    }
  }

  else
  {
    v20 = *(v0 + 424);
  }

  v7 = 0;
LABEL_22:

  v21 = *(v0 + 8);

  return v21(v7);
}

uint64_t sub_1000292F4()
{
  v1 = v0[53];
  v2 = v0[52];

  swift_willThrow();

  if (qword_100088420 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000105E8(v3, qword_100089510);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not handle local authentication for confirmation sheet: %@", v6, 0xCu);
    sub_100011C14(v7, &qword_100088FD0, &qword_1000673F0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9(0);
}

void sub_1000294EC()
{
  if (qword_100088420 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000105E8(v0, qword_100089510);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Mini product page finished loading", v2, 2u);
  }
}

uint64_t *sub_1000295D4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100029638()
{
  result = qword_100088578;
  if (!qword_100088578)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088578);
  }

  return result;
}

uint64_t sub_1000296A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000296E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001020C;

  return sub_1000263B0(a1, v4, v5, v6);
}

unint64_t sub_10002979C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10007E3D8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_1000297E8()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 activateManualDomain:v1];
  swift_unknownObjectRelease();

  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for AppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, 0, v6);
}

uint64_t sub_10002994C()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000105E8(v0, qword_10008C4C0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Angel startup", v3, 2u);
  }

  type metadata accessor for LaunchAngelXPCServer();
  swift_initStackObject();
  [*(sub_100015AA8() + 16) activate];
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Configured XPC listeners", v6, 2u);
  }

  sub_1000297E8();
}

uint64_t sub_100029ADC()
{
  sub_1000047BC(&qword_100089670, &qword_1000667A8);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1000895C0 = result;
  return result;
}

uint64_t sub_100029B40()
{
  v2 = v0[1];
  os_activity_scope_leave(&v2);
  return swift_deallocClassInstance();
}

uint64_t sub_100029BCC()
{
  qword_1000895C8 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

os_activity_t sub_100029C08(os_activity_t description, char a2, void *dso)
{
  v3 = description;
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (qword_100088430 == -1)
      {
LABEL_4:
        v4 = dso;
        v5 = qword_1000895C8;

        return _os_activity_create(v4, v3, v5, OS_ACTIVITY_FLAG_DEFAULT);
      }

LABEL_17:
      v13 = dso;
      swift_once();
      dso = v13;
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (description >> 32)
  {
    goto LABEL_16;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return description;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
LABEL_19:
    v7 = (description & 0x3F) << 8;
    v8 = (description >> 6) + v7 + 33217;
    v9 = (v7 | (description >> 6) & 0x3F) << 8;
    v10 = (description >> 18) + ((v9 | (description >> 12) & 0x3F) << 8) - 2122219023;
    v11 = (description >> 12) + v9 + 8487393;
    if (description >> 16)
    {
      v6 = v10;
    }

    else
    {
      v6 = v11;
    }

    if (description < 0x800)
    {
      v6 = v8;
    }

    goto LABEL_12;
  }

  if (description > 0x7F)
  {
    goto LABEL_19;
  }

  v6 = description + 1;
LABEL_12:
  *descriptiona = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
  if (qword_100088430 != -1)
  {
    v12 = dso;
    swift_once();
    dso = v12;
  }

  return _os_activity_create(dso, descriptiona, qword_1000895C8, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t sub_100029DDC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000047BC(&qword_100088900, &unk_1000667B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100029EAC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000047BC(&qword_100088900, &unk_1000667B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100029F7C(uint64_t a1)
{
  sub_10002A080(319, &unk_1000896E0, type metadata accessor for BulletPoint, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10002A080(319, &qword_100088970, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002A080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10002A0F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002A1CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10002A288(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002A348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10002A440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10002A538@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000047BC(&qword_100089E40, &qword_100065D50);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MultiBulletPointView(0);
  sub_100010668(v1 + *(v10 + 20), v9, &qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10002A740@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 sub_10002A7C4@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for MultiBulletPointView(0);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v29 - v10;
  v12 = sub_1000047BC(&qword_1000897B0, &qword_100066870);
  __chkstk_darwin(v12 - 8);
  v14 = v29 - v13;
  sub_10002A538(v11);
  v15 = *(v6 + 104);
  v34 = enum case for DynamicTypeSize.large(_:);
  v35 = v6 + 104;
  v33 = v15;
  v15(v9);
  v31 = sub_10002BCA0(&qword_100088A58, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v16 = dispatch thunk of static Comparable.> infix(_:_:)();
  v17 = *(v6 + 8);
  v17(v9, v5);
  v36 = v6 + 8;
  v32 = v17;
  v17(v11, v5);
  if (v16)
  {
    v18 = static HorizontalAlignment.leading.getter();
  }

  else
  {
    v18 = static HorizontalAlignment.center.getter();
  }

  *v14 = v18;
  *(v14 + 1) = 0x4036000000000000;
  v37 = v14;
  v14[16] = 0;
  type metadata accessor for MainActor();
  v29[3] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29[2] = *(sub_1000047BC(&qword_1000897B8, &unk_100066878) + 44);
  *&v39 = *v2;
  sub_10002BCE8(v2, v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v20 = swift_allocObject();
  sub_10002BE68(v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);

  v30 = sub_1000047BC(&qword_1000897C0, &qword_100066888);
  v29[1] = type metadata accessor for UUID();
  sub_1000047BC(&qword_1000897C8, &qword_100066890);
  sub_100012174(&qword_1000897D0, &qword_1000897C0, &qword_100066888, &protocol conformance descriptor for [A]);
  sub_100012174(&qword_1000897D8, &qword_1000897C8, &qword_100066890, &unk_100066968);
  sub_10002BCA0(&qword_1000897E0, type metadata accessor for BulletPoint, &unk_1000667E4);
  v21 = v37;
  ForEach<>.init(_:content:)();

  sub_10002B8C0();
  sub_10002A538(v11);
  v33(v9, v34, v5);
  v22 = dispatch thunk of static Comparable.> infix(_:_:)();
  v23 = v32;
  v32(v9, v5);
  v23(v11, v5);
  if (v22)
  {
    static Alignment.leading.getter();
  }

  else
  {
    static Alignment.center.getter();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v24 = v38;
  sub_1000110B8(v21, v38, &qword_1000897B0, &qword_100066870);
  v25 = v24 + *(sub_1000047BC(&qword_1000897E8, &qword_100066898) + 36);
  v26 = v44;
  *(v25 + 64) = v43;
  *(v25 + 80) = v26;
  *(v25 + 96) = v45;
  v27 = v40;
  *v25 = v39;
  *(v25 + 16) = v27;
  result = v42;
  *(v25 + 32) = v41;
  *(v25 + 48) = result;
  return result;
}

uint64_t sub_10002AE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000047BC(&qword_1000897C8, &qword_100066890);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    v9 = 14.0;
  }

  else
  {
    v9 = 16.0;
  }

  v10 = *(v4 + 40);
  *&v6[v10] = swift_getKeyPath();
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  swift_storeEnumTagMultiPayload();
  sub_10002AFCC(a1, v6);
  *&v6[*(v4 + 36)] = v9;
  sub_1000110B8(v6, a2, &qword_1000897C8, &qword_100066890);
}

uint64_t sub_10002AFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000047BC(&qword_1000897F0, &qword_1000668D0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  type metadata accessor for BulletPoint(0);

  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v13 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v32[0]) = 1;
  *&v28[3] = *&v28[27];
  *&v28[11] = *&v28[35];
  *&v28[19] = *&v28[43];
  v14 = &v12[*(sub_1000047BC(&qword_1000897F8, &qword_1000668D8) + 36)];
  v15 = *(sub_1000047BC(&qword_100089800, &qword_1000668E0) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v16 = type metadata accessor for SymbolRenderingMode();
  (*(*(v16 - 8) + 56))(v14 + v15, 0, 1, v16);
  *v14 = swift_getKeyPath();
  *v12 = v13;
  *(v12 + 1) = 0;
  *(v12 + 8) = 257;
  v17 = *&v28[8];
  *(v12 + 18) = *v28;
  *(v12 + 34) = v17;
  *(v12 + 50) = *&v28[16];
  *(v12 + 8) = *&v28[23];
  *&v12[*(v7 + 44)] = static Color.blue.getter();
  v18 = static HorizontalAlignment.center.getter();
  v27 = 1;
  sub_10002B42C(v24, v32);
  memcpy(v29, v32, sizeof(v29));
  memcpy(v30, v32, sizeof(v30));
  sub_100010668(v29, v31, &qword_100089808, &qword_100066918);
  sub_100011C14(v30, &qword_100089808, &qword_100066918);
  memcpy(&v26[7], v29, 0x120uLL);
  v19 = v27;
  sub_100010668(v12, v10, &qword_1000897F0, &qword_1000668D0);
  v20 = v25;
  sub_100010668(v10, v25, &qword_1000897F0, &qword_1000668D0);
  v21 = *(sub_1000047BC(&qword_100089810, &qword_100066920) + 48);
  v31[0] = v18;
  v31[1] = 0;
  LOBYTE(v31[2]) = v19;
  memcpy(&v31[2] + 1, v26, 0x127uLL);
  memcpy((v20 + v21), v31, 0x138uLL);
  sub_100010668(v31, v32, &qword_100089818, &qword_100066928);
  sub_100011C14(v12, &qword_1000897F0, &qword_1000668D0);
  v32[0] = v18;
  v32[1] = 0;
  LOBYTE(v32[2]) = v19;
  memcpy(&v32[2] + 1, v26, 0x127uLL);
  sub_100011C14(v32, &qword_100089818, &qword_100066928);
  return sub_100011C14(v10, &qword_1000897F0, &qword_1000668D0);
}

uint64_t sub_10002B42C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = type metadata accessor for BulletPoint(0);
  v3 = (a1 + *(v34 + 24));
  v4 = v3[1];
  v78 = *v3;
  v79 = v4;
  sub_10000F728();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.subheadline.getter();
  v32 = a1;
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_10000F77C(v5, v7, v9 & 1);

  v36 = Text.bold()();
  v37 = v15;
  v17 = v16;
  v38 = v16;
  v19 = v18;
  sub_10000F77C(v10, v12, v14 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v20 = v19 & 1;
  v100 = v19 & 1;
  v39 = v19 & 1;
  v21 = (v32 + *(v34 + 28));
  v22 = v21[1];
  v78 = *v21;
  v79 = v22;

  v23 = Text.init<A>(_:)();
  v25 = v24;
  LOBYTE(v12) = v26;
  LODWORD(v78) = static HierarchicalShapeStyle.secondary.getter();
  v27 = Text.foregroundStyle<A>(_:)();
  v33 = v28;
  v35 = v29;
  LOBYTE(v5) = v30;
  sub_10000F77C(v23, v25, v12 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v49 = v36;
  *(&v49 + 1) = v17;
  LOBYTE(v50) = v20;
  *(&v50 + 1) = *v99;
  DWORD1(v50) = *&v99[3];
  *(&v50 + 1) = v37;
  v55 = v96;
  v56 = v97;
  v57 = v98;
  v51 = v92;
  v52 = v93;
  v53 = v94;
  v54 = v95;
  __src[6] = v96;
  __src[7] = v97;
  __src[2] = v92;
  __src[3] = v93;
  __src[4] = v94;
  __src[5] = v95;
  __src[0] = v49;
  __src[1] = v50;
  *&v58 = v27;
  *(&v58 + 1) = v33;
  LOBYTE(v59) = v5 & 1;
  *(&v59 + 1) = *v90;
  DWORD1(v59) = *&v90[3];
  *(&v59 + 1) = v35;
  v64 = v46;
  v65 = v47;
  v66 = v48;
  v60 = v42;
  v61 = v43;
  v62 = v44;
  v63 = v45;
  __src[12] = v43;
  __src[13] = v44;
  __src[10] = v59;
  __src[11] = v42;
  __src[14] = v45;
  __src[15] = v46;
  __src[16] = v47;
  __src[17] = v48;
  v91 = v5 & 1;
  __src[8] = v98;
  __src[9] = v58;
  memcpy(a2, __src, 0x120uLL);
  v67[0] = v27;
  v67[1] = v33;
  v68 = v5 & 1;
  *v69 = *v90;
  *&v69[3] = *&v90[3];
  v70 = v35;
  v75 = v46;
  v76 = v47;
  v77 = v48;
  v71 = v42;
  v72 = v43;
  v73 = v44;
  v74 = v45;
  sub_100010668(&v49, &v78, &qword_100089820, &qword_100066930);
  sub_100010668(&v58, &v78, &qword_100089820, &qword_100066930);
  sub_100011C14(v67, &qword_100089820, &qword_100066930);
  v78 = v36;
  v79 = v38;
  v80 = v39;
  *v81 = *v99;
  *&v81[3] = *&v99[3];
  v82 = v37;
  v87 = v96;
  v88 = v97;
  v89 = v98;
  v83 = v92;
  v84 = v93;
  v85 = v94;
  v86 = v95;
  sub_100011C14(&v78, &qword_100089820, &qword_100066930);
}

double sub_10002B8C0()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  sub_10002A538(&v12 - v5);
  (*(v1 + 104))(v4, enum case for DynamicTypeSize.large(_:), v0);
  sub_10002BCA0(&qword_100088A58, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v7 = dispatch thunk of static Comparable.> infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    return INFINITY;
  }

  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  result = INFINITY;
  if (v11 == 1)
  {
    return 340.0;
  }

  return result;
}

uint64_t sub_10002BA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000047BC(&qword_100089E40, &qword_100065D50);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_100010668(v2 + *(a1 + 40), &v15 - v10, &qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DynamicTypeSize();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10002BCA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002BCE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiBulletPointView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002BD4C()
{
  v1 = (type metadata accessor for MultiBulletPointView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002BE68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiBulletPointView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002BECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MultiBulletPointView(0);

  return sub_10002AE20(a1, a2);
}

uint64_t sub_10002BF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for HStack();
  v57 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v53 - v9;
  v59 = v5;
  v60 = v4;
  v10 = type metadata accessor for VStack();
  v54 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v53 = &v53 - v14;
  v15 = type metadata accessor for DynamicTypeSize();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v53 - v20;
  v58 = v6;
  v22 = type metadata accessor for _ConditionalContent();
  v62 = *(v22 - 8);
  v63 = v22;
  __chkstk_darwin(v22);
  v61 = &v53 - v23;
  v24 = v2;
  sub_10002BA98(a1, v21);
  (*(v16 + 104))(v19, enum case for DynamicTypeSize.large(_:), v15);
  sub_10002BCA0(&qword_100088A58, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v25 = dispatch thunk of static Comparable.> infix(_:_:)();
  v26 = *(v16 + 8);
  v26(v19, v15);
  v26(v21, v15);
  if (v25)
  {
    v27 = static HorizontalAlignment.leading.getter();
    __chkstk_darwin(v27);
    v28 = v59;
    *(&v53 - 4) = v60;
    *(&v53 - 3) = v28;
    *(&v53 - 2) = v24;
    VStack.init(alignment:spacing:content:)();
    WitnessTable = swift_getWitnessTable();
    v31 = v53;
    v30 = v54;
    v32 = *(v54 + 16);
    v32(v53, v13, v10);
    v33 = *(v30 + 8);
    v33(v13, v10);
    v32(v13, v31, v10);
    v34 = v58;
    v35 = swift_getWitnessTable();
    v36 = v61;
    sub_10002A348(v13, v10, v34, WitnessTable, v35);
    v33(v13, v10);
    v37 = v31;
    v38 = v10;
  }

  else
  {
    v39 = static VerticalAlignment.center.getter();
    __chkstk_darwin(v39);
    v40 = v59;
    *(&v53 - 4) = v60;
    *(&v53 - 3) = v40;
    *(&v53 - 2) = v24;
    v41 = v56;
    HStack.init(alignment:spacing:content:)();
    v42 = v58;
    v43 = swift_getWitnessTable();
    v44 = v57;
    v45 = *(v57 + 16);
    v46 = v55;
    v45(v55, v41, v42);
    v33 = *(v44 + 8);
    v33(v41, v42);
    v45(v41, v46, v42);
    v47 = swift_getWitnessTable();
    v36 = v61;
    sub_10002A440(v41, v10, v42, v47, v43);
    v33(v41, v42);
    v37 = v46;
    v38 = v42;
  }

  v33(v37, v38);
  v48 = swift_getWitnessTable();
  v49 = swift_getWitnessTable();
  v65 = v48;
  v66 = v49;
  v50 = v63;
  swift_getWitnessTable();
  v51 = v62;
  (*(v62 + 16))(v64, v36, v50);
  return (*(v51 + 8))(v36, v50);
}

uint64_t sub_10002C5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a4@<X8>)
{
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(v7 + 16);
  v10(v9, a1, a2);
  v10(a4, v9, a2);
  (*(v7 + 8))(v9, a2);
}

uint64_t sub_10002C770(uint64_t a1)
{
  v2 = sub_1000047BC(qword_100089828, &qword_100066938);
  __chkstk_darwin(v2 - 8);
  sub_100010668(a1, &v5 - v3, qword_100089828, &qword_100066938);
  return EnvironmentValues.symbolRenderingMode.setter();
}

void sub_10002C824(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_10002A080(319, &qword_100088970, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10002C8E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(type metadata accessor for DynamicTypeSize() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  v12 = *(v8 + 80) & 0xF8 | 7;
  if (a2 <= v10)
  {
    goto LABEL_30;
  }

  v13 = v9 + ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      if (v7 < 0xFE)
      {
        v22 = *(((((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12) + v9);
        if (v22 >= 2)
        {
          return (v22 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v21 = *(v6 + 48);

        return v21(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_10002CB50(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for DynamicTypeSize() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v8 + 64);
  v14 = *(v10 + 80) & 0xF8 | 7;
  v15 = v11 + 1;
  v16 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + v11 + 1;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFE)
  {
    v24 = (((&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14);
    if (a2 > 0xFE)
    {
      if (v15 <= 3)
      {
        v25 = ~(-1 << (8 * v15));
      }

      else
      {
        v25 = -1;
      }

      if (v15)
      {
        v26 = v25 & (a2 - 255);
        if (v15 <= 3)
        {
          v27 = v15;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v15);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }

    else
    {
      v24[v11] = -a2;
    }
  }

  else
  {
    v23 = *(v28 + 56);

    v23(a1, a2, v9, v7);
  }
}

unint64_t sub_10002CED4()
{
  result = qword_1000898B0;
  if (!qword_1000898B0)
  {
    sub_10000B850(&qword_1000897E8, &qword_100066898);
    sub_100012174(&qword_1000898B8, &qword_1000897B0, &qword_100066870, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000898B0);
  }

  return result;
}

uint64_t sub_10002D048(void *a1)
{
  type metadata accessor for VStack();
  type metadata accessor for HStack();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10002D134()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C4C0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *(v6 + OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Running install confirmation task", v7, 0xCu);
    sub_100011C14(v8, &qword_100088FD0, &qword_1000673F0);
  }

  v11 = [objc_opt_self() identityOfCurrentProcess];
  *(v0 + 88) = v11;
  if (v11)
  {
    v12 = v11;
    v13 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v14 = v12;
    v15 = String._bridgeToObjectiveC()();
    *(v0 + 96) = [v13 initWithSceneProvidingProcess:v14 configurationIdentifier:v15];

    return _swift_task_switch(sub_10002D464, 0, 0);
  }

  else
  {
    v16 = *(v0 + 80);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 80);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = *(v19 + OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey);
      *(v20 + 4) = v22;
      *v21 = v22;
      v23 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@] No identity", v20, 0xCu);
      sub_100011C14(v21, &qword_100088FD0, &qword_1000673F0);
    }

    v24 = *(v0 + 8);

    return v24(0);
  }
}

uint64_t sub_10002D464()
{
  v1 = v0[12];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_10002D514;
  v3 = swift_continuation_init();
  sub_10002D660(v3, v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002D514()
{
  *(*v0 + 105) = *(*v0 + 104);

  return _swift_task_switch(sub_10002D5F8, 0, 0);
}

uint64_t sub_10002D5F8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 105);
  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_10002D660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v29 = sub_10002EA64;
  v30 = v8;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100043F50;
  v28 = &unk_10007F0E0;
  v9 = _Block_copy(&aBlock);
  v10 = objc_opt_self();

  v11 = [v10 responderWithHandler:v9];
  _Block_release(v9);

  v12 = [objc_allocWithZone(BSAction) initWithInfo:0 responder:v11];
  sub_1000047BC(&qword_10008A4A0, &unk_100066390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100066310;
  *(inited + 32) = v12;
  v14 = v12;
  sub_10004DA58(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10001596C();
  sub_10002EA84(&qword_100089370, sub_10001596C, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v6 setActions:isa];

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for InstallSheetContext();
  sub_10002EA84(&unk_100089910, &type metadata accessor for InstallSheetContext, &protocol conformance descriptor for InstallSheetContext);
  v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v18 = v17;

  sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_100065650;
  aBlock = 0x44747865746E6F63;
  v26 = 0xEB00000000617461;
  AnyHashable.init<A>(_:)();
  *(v19 + 96) = &type metadata for Data;
  *(v19 + 72) = v16;
  *(v19 + 80) = v18;
  sub_100015A00(v16, v18);
  sub_100059988(v19);
  swift_setDeallocating();
  sub_100011C14(v19 + 32, &qword_100089010, &qword_1000663A0);
  v20 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 setUserInfo:v20];

  v21 = [objc_opt_self() newHandleWithDefinition:a3 configurationContext:v6];
  v22 = *(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_remoteHandle);
  *(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_remoteHandle) = v21;
  v23 = v21;

  [v23 registerObserver:a2];
  v24 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v23 activateWithContext:v24];

  sub_100015A54(v16, v18);
}

void sub_10002DC48(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 info];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 objectForSetting:1];

      if (v9)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      v33 = v31;
      v34 = v32;
      if (*(&v32 + 1))
      {
        if (swift_dynamicCast())
        {
          v10 = v31;
          if (qword_100088438 != -1)
          {
            swift_once();
          }

          v11 = type metadata accessor for Logger();
          sub_1000105E8(v11, qword_10008C4C0);
          v12 = v6;
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            *&v33 = v17;
            *v15 = 138412546;
            v18 = *&v12[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey];
            *(v15 + 4) = v18;
            *v16 = v18;
            *(v15 + 12) = 2080;
            if (v31)
            {
              v19 = 0x656D7269666E6F63;
            }

            else
            {
              v19 = 0x64656C65636E6163;
            }

            if (v31)
            {
              v20 = 0xE900000000000064;
            }

            else
            {
              v20 = 0xE800000000000000;
            }

            v21 = v18;
            v22 = sub_10000F78C(v19, v20, &v33);

            *(v15 + 14) = v22;
            _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Install %s", v15, 0x16u);
            sub_100011C14(v16, &qword_100088FD0, &qword_1000673F0);

            sub_10001059C(v17);
          }

LABEL_26:
          **(*(a3 + 64) + 40) = v10;
          swift_continuation_resume();

          return;
        }

LABEL_21:
        if (qword_100088438 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1000105E8(v23, qword_10008C4C0);
        v24 = v6;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          v29 = *&v24[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey];
          *(v27 + 4) = v29;
          *v28 = v29;
          v30 = v29;
          _os_log_impl(&_mh_execute_header, v25, v26, "[%@] No response provided, defaulting to cancel.", v27, 0xCu);
          sub_100011C14(v28, &qword_100088FD0, &qword_1000673F0);
        }

        v10 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    sub_100011C14(&v33, &qword_100089020, &qword_1000663B0);
    goto LABEL_21;
  }
}

id sub_10002E09C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallConfirmationTask(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InstallConfirmationTask(uint64_t a1)
{
  result = qword_100089900;
  if (!qword_100089900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E1B4(uint64_t a1)
{
  result = type metadata accessor for InstallSheetContext();
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

void sub_10002E2BC()
{
  v1 = OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_remoteHandle;
  v2 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_remoteHandle);
  if (v2)
  {
    [v2 unregisterObserver:v0];
    v2 = *(v0 + v1);
  }

  [v2 invalidate];
  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_10002E3F0()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey];
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "[%@] Remote alert did activate", v4, 0xCu);
    sub_100011C14(v5, &qword_100088FD0, &qword_1000673F0);
  }
}

void sub_10002E548()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Remote alert did deactivate", v5, 0xCu);
    sub_100011C14(v6, &qword_100088FD0, &qword_1000673F0);
  }

  sub_10002E2BC();
}

void sub_10002E698(uint64_t a1)
{
  sub_10002E2BC();
  if (a1)
  {
    swift_errorRetain();
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000105E8(v3, qword_10008C4C0);
    swift_errorRetain();
    v4 = v1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v6 = 138412546;
      v9 = *&v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey];
      *(v6 + 4) = v9;
      *v7 = v9;
      *(v6 + 12) = 2082;
      swift_getErrorValue();
      v10 = v9;
      v11 = Error.localizedDescription.getter();
      v13 = sub_10000F78C(v11, v12, &v22);

      *(v6 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v5, "[%@] Remote alert did invalidate with error: %{public}s", v6, 0x16u);
      sub_100011C14(v7, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v8);

      return;
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000105E8(v14, qword_10008C4C0);
    v15 = v1;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = *&v15[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey];
      *(v17 + 4) = v19;
      *v18 = v19;
      v20 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v16, "[%@] Remote alert did invalidate", v17, 0xCu);
      sub_100011C14(v18, &qword_100088FD0, &qword_1000673F0);
    }
  }
}

uint64_t sub_10002E9F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002EA2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002EA6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002EA84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002EACC()
{
  v1[132] = v0;
  v2 = sub_1000047BC(&qword_100089A80, &unk_100066A90);
  v1[133] = v2;
  v1[134] = *(v2 - 8);
  v1[135] = swift_task_alloc();
  v3 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
  v1[136] = v3;
  v1[137] = *(v3 - 8);
  v1[138] = swift_task_alloc();
  sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  v1[139] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[140] = v4;
  v1[141] = *(v4 - 8);
  v1[142] = swift_task_alloc();
  v1[143] = type metadata accessor for MainActor();
  v1[144] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[145] = v5;
  v1[146] = v6;

  return _swift_task_switch(sub_10002ED04, v5, v6);
}

uint64_t sub_10002ED04()
{
  v1 = *(v0 + 1056);
  v2 = [objc_allocWithZone(PKPaymentRequest) init];
  *(v0 + 1176) = v2;
  [v2 setRequestType:15];
  [v2 setConfirmationStyle:3];
  v3 = v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent;
  v4 = *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent);
  v5 = *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent + 8);
  v43 = v4;
  v6 = String._bridgeToObjectiveC()();
  [v2 setLocalizedNavigationTitle:v6];

  v7 = String._bridgeToObjectiveC()();
  [v2 setLocalizedAuthorizingTitle:v7];

  sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065650;
  *(v0 + 1000) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 1008) = v9;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000033;
  *(inited + 80) = 0x8000000100069BE0;
  v10 = sub_100059988(inited);
  swift_setDeallocating();
  sub_100011C14(inited + 32, &qword_100089010, &qword_1000663A0);
  v11 = objc_opt_self();
  *(v0 + 1048) = 0;
  v12 = [v11 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v0 + 1048];
  v13 = *(v0 + 1048);
  if (v12)
  {
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(v0 + 1032) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 1040) = v17;
    AnyHashable.init<A>(_:)();
    *(v0 + 896) = &type metadata for Data;
    *(v0 + 872) = v14;
    *(v0 + 880) = v16;
    sub_100028608((v0 + 872), (v0 + 904));
    sub_100015A00(v14, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100059434((v0 + 904), v0 + 704, isUniquelyReferenced_nonNull_native);
    sub_100015A54(v14, v16);
    sub_10001E2FC(v0 + 704);
  }

  else
  {
    v19 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  *(v0 + 1184) = v10;
  v20 = *(v0 + 1128);
  v21 = *(v0 + 1120);
  v22 = *(v0 + 1112);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_100066A20;
  *(v0 + 936) = 0x656C746974;
  *(v0 + 944) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  *(v23 + 96) = &type metadata for String;
  *(v23 + 72) = v43;
  *(v23 + 80) = v5;
  *(v0 + 952) = 0x6567617373656DLL;
  *(v0 + 960) = 0xE700000000000000;

  AnyHashable.init<A>(_:)();
  v25 = *(v3 + 16);
  v24 = *(v3 + 24);
  *(v23 + 168) = &type metadata for String;
  *(v23 + 144) = v25;
  *(v23 + 152) = v24;
  *(v0 + 968) = 0x63536E6565726373;
  *(v0 + 976) = 0xEB00000000656C61;

  AnyHashable.init<A>(_:)();
  PKScreenScale();
  *(v23 + 240) = &type metadata for CGFloat;
  *(v23 + 216) = v26;
  v27 = sub_100059988(v23);
  *(v0 + 1192) = v27;
  swift_setDeallocating();
  sub_1000047BC(&qword_100089010, &qword_1000663A0);
  swift_arrayDestroy();
  v28 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
  sub_100010668(v3 + *(v28 + 28), v22, &qword_1000893C0, &unk_1000663F0);
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    sub_100011C14(*(v0 + 1112), &qword_1000893C0, &unk_1000663F0);
    v29 = *(v0 + 1176);
    v30 = *(v0 + 1104);
    v31 = *(v0 + 1096);
    v32 = *(v0 + 1088);
    v33 = *(v0 + 1056);
    *(v0 + 984) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 992) = v34;
    AnyHashable.init<A>(_:)();
    *(v0 + 768) = sub_1000047BC(&qword_100089A88, &unk_100067870);
    *(v0 + 744) = v27;
    sub_100028608((v0 + 744), (v0 + 776));
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_100059434((v0 + 776), v0 + 624, v35);
    sub_10001E2FC(v0 + 624);
    v36 = String._bridgeToObjectiveC()();
    [v29 setClientViewSourceIdentifier:v36];

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v29 setClientViewSourceParameter:isa];

    v38 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v29];
    *(v0 + 1240) = v38;
    [v38 setDelegate:v33];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1272;
    *(v0 + 24) = sub_10002FAAC;
    swift_continuation_init();
    *(v0 + 552) = v32;
    v39 = sub_1000104C4((v0 + 528));
    CheckedContinuation.init(continuation:function:)();
    (*(v31 + 32))(v39, v30, v32);
    *(v0 + 496) = _NSConcreteStackBlock;
    *(v0 + 504) = 1107296256;
    *(v0 + 512) = sub_100030684;
    *(v0 + 520) = &unk_10007F108;
    [v38 presentWithCompletion:v0 + 496];
    (*(v31 + 8))(v39, v32);

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    (*(*(v0 + 1128) + 32))(*(v0 + 1136), *(v0 + 1112), *(v0 + 1120));
    *(v0 + 1200) = [objc_opt_self() sharedSession];
    v40 = swift_task_alloc();
    *(v0 + 1208) = v40;
    *v40 = v0;
    v40[1] = sub_10002F518;
    v41 = *(v0 + 1136);

    return NSURLSession.data(from:delegate:)(v41, 0);
  }
}

uint64_t sub_10002F518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v4;
  v8 = *v4;

  v10 = v8[150];
  if (v3)
  {

    v11 = v9[146];
    v12 = v9[145];
    v13 = sub_10003033C;
  }

  else
  {

    v9[152] = a3;
    v9[153] = a2;
    v9[154] = a1;
    v11 = v9[146];
    v12 = v9[145];
    v13 = sub_10002F6B0;
  }

  return _swift_task_switch(v13, v12, v11);
}

uint64_t sub_10002F6B0()
{
  v1 = v0;
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1224);
  v4 = *(v0 + 1192);
  v5 = *(v0 + 1136);
  v6 = *(v0 + 1128);
  v7 = *(v0 + 1120);

  *(v0 + 1016) = 1852793705;
  *(v0 + 1024) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  *(v0 + 832) = &type metadata for Data;
  *(v0 + 808) = v2;
  *(v0 + 816) = v3;
  sub_100028608((v0 + 808), (v0 + 840));
  sub_100015A00(v2, v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100059434((v0 + 840), v0 + 664, isUniquelyReferenced_nonNull_native);
  sub_100015A54(v2, v3);
  sub_10001E2FC(v0 + 664);
  (*(v6 + 8))(v5, v7);
  v9 = *(v0 + 1176);
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1096);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1056);
  *(v0 + 984) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 992) = v14;
  AnyHashable.init<A>(_:)();
  *(v0 + 768) = sub_1000047BC(&qword_100089A88, &unk_100067870);
  *(v0 + 744) = v4;
  sub_100028608((v1 + 744), (v1 + 776));
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100059434((v1 + 776), v1 + 624, v15);
  sub_10001E2FC(v0 + 624);
  v16 = String._bridgeToObjectiveC()();
  [v9 setClientViewSourceIdentifier:v16];

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 setClientViewSourceParameter:isa];

  v18 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v9];
  *(v0 + 1240) = v18;
  [v18 setDelegate:v13];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 1272;
  *(v0 + 24) = sub_10002FAAC;
  swift_continuation_init();
  *(v0 + 552) = v12;
  v19 = sub_1000104C4((v0 + 528));
  CheckedContinuation.init(continuation:function:)();
  (*(v11 + 32))(v19, v10, v12);
  *(v0 + 496) = _NSConcreteStackBlock;
  *(v0 + 504) = 1107296256;
  *(v0 + 512) = sub_100030684;
  *(v0 + 520) = &unk_10007F108;
  [v18 presentWithCompletion:?];
  (*(v11 + 8))(v19, v12);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10002FAAC()
{
  v1 = *(*v0 + 1168);
  v2 = *(*v0 + 1160);

  return _swift_task_switch(sub_10002FBE0, v2, v1);
}

uint64_t sub_10002FBE0(uint64_t a1)
{
  if (*(v1 + 1272) == 1)
  {
    v2 = *(v1 + 1056);
    v3 = static MainActor.shared.getter();
    *(v1 + 1248) = v3;
    v4 = swift_task_alloc();
    *(v1 + 1256) = v4;
    *(v4 + 16) = v2;
    v5 = swift_task_alloc();
    *(v1 + 1264) = v5;
    *v5 = v1;
    v5[1] = sub_10002FDB4;

    return withCheckedContinuation<A>(isolation:function:_:)(v1 + 1273, v3, &protocol witness table for MainActor, 0x29286E7572, 0xE500000000000000, sub_10003169C, v4, &type metadata for Bool);
  }

  else
  {
    v6 = *(v1 + 1240);

    v7 = *(v1 + 8);

    return v7(0);
  }
}

uint64_t sub_10002FDB4()
{
  v1 = *v0;

  v2 = *(v1 + 1168);
  v3 = *(v1 + 1160);

  return _swift_task_switch(sub_10002FF48, v3, v2);
}

uint64_t sub_10002FF48()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v4 = v0 + 70;
  v5 = v0[155];
  v6 = v0[135];
  v7 = v0[134];
  v8 = v0[133];
  *(v1 + 1274) = *(v1 + 1273);
  v1[10] = v2;
  v1[11] = sub_100030124;
  swift_continuation_init();
  v1[77] = v8;
  v9 = sub_1000104C4(v1 + 74);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v9, v6, v8);
  v1[70] = _NSConcreteStackBlock;
  v1[71] = 1107296256;
  v1[72] = sub_100030890;
  v1[73] = &unk_10007F130;
  [v5 dismissWithCompletion:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_100030124()
{
  v1 = *(*v0 + 1168);
  v2 = *(*v0 + 1160);

  return _swift_task_switch(sub_100030258, v2, v1);
}

uint64_t sub_100030258()
{
  v1 = *(v0 + 1240);

  v2 = *(v0 + 1274);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10003033C()
{
  v1 = v0;
  (*(v1[141] + 8))(v1[142], v1[140]);
  v2 = v0[149];
  v3 = v0[147];
  v4 = v0[138];
  v5 = v0[137];
  v6 = v0[136];
  v7 = v0[132];
  v0[123] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[124] = v8;
  AnyHashable.init<A>(_:)();
  v0[96] = sub_1000047BC(&qword_100089A88, &unk_100067870);
  v0[93] = v2;
  sub_100028608(v1 + 93, v1 + 97);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100059434(v1 + 97, (v1 + 78), isUniquelyReferenced_nonNull_native);
  sub_10001E2FC((v0 + 78));
  v10 = String._bridgeToObjectiveC()();
  [v3 setClientViewSourceIdentifier:v10];

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v3 setClientViewSourceParameter:isa];

  v12 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v3];
  v0[155] = v12;
  [v12 setDelegate:v7];
  v0[2] = v0;
  v0[7] = v0 + 159;
  v0[3] = sub_10002FAAC;
  swift_continuation_init();
  v0[69] = v6;
  v13 = sub_1000104C4(v0 + 66);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v4, v6);
  v0[62] = _NSConcreteStackBlock;
  v0[63] = 1107296256;
  v0[64] = sub_100030684;
  v0[65] = &unk_10007F108;
  [v12 presentWithCompletion:v0 + 62];
  (*(v5 + 8))(v13, v6);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100030684(uint64_t a1, char a2)
{
  sub_100010624((a1 + 32), *(a1 + 56));
  sub_1000047BC(&unk_1000899D0, &unk_100066640);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000306E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_100089A90, &unk_100066AA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalizedContinuation;
  swift_beginAccess();
  sub_1000316A4(v6, a2 + v9);
  swift_endAccess();
}

uint64_t sub_100030890(uint64_t a1)
{
  sub_100010624((a1 + 32), *(a1 + 56));
  sub_1000047BC(&qword_100089A80, &unk_100066A90);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100030B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100030BD4, v6, v5);
}

uint64_t sub_100030BD4()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;
  v0[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100030C80, v5, v4);
}

uint64_t sub_100030C80()
{
  v1 = v0[6];
  v2 = v0[3];

  v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalResult] = 1;
  v3 = [objc_allocWithZone(PKPaymentAuthorizationResult) initWithStatus:0 errors:0];

  (v1)[2](v1, v3);
  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

void sub_100030E48(uint64_t a1)
{
  type metadata accessor for OsloAuthenticationTask.LocalizedContent(319);
  if (v1 <= 0x3F)
  {
    sub_100030F3C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100030F3C(uint64_t a1)
{
  if (!qword_1000899C8)
  {
    sub_10000B850(&unk_1000899D0, &unk_100066640);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000899C8);
    }
  }
}

uint64_t sub_100030FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100031084(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100031134(uint64_t a1)
{
  sub_100016184(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000311B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000121F4;

  return v6();
}

uint64_t sub_1000312A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10001020C;

  return v7();
}

uint64_t sub_100031388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100010668(a3, v23 - v10, &unk_100088F10, &qword_100065D60);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100011C14(v11, &unk_100088F10, &qword_100065D60);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100011C14(a3, &unk_100088F10, &qword_100065D60);

    return v21;
  }

LABEL_8:
  sub_100011C14(a3, &unk_100088F10, &qword_100065D60);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1000316A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_100089A90, &unk_100066AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031714()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031764()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001020C;

  return sub_100030B38(v2, v3, v5, v4);
}

uint64_t sub_100031828()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000121F4;

  return sub_1000311B8(v2, v3, v4);
}

uint64_t sub_1000318E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100031928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_1000312A0(a1, v4, v5, v6);
}

uint64_t sub_1000319F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031A2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000121F4;

  return sub_10000F1C0(a1, v4);
}

uint64_t sub_100031AE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001020C;

  return sub_10000F1C0(a1, v4);
}

uint64_t sub_100031B9C()
{
  v1 = v0;
  v2 = sub_1000047BC(&qword_100089A90, &unk_100066AA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  v5 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalizedContinuation;
  swift_beginAccess();
  if (!(*(v6 + 48))(v1 + v9, 1, v5))
  {
    (*(v6 + 16))(v8, v1 + v9, v5);
    v11[0] = *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalResult);
    CheckedContinuation.resume(returning:)();
    (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 56))(v4, 1, 1, v5);
  swift_beginAccess();
  sub_1000316A4(v4, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_100031D80(uint64_t a1)
{
  v2 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100031DEC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001020C;

  return v6(a1);
}

uint64_t sub_100031EE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_100031FE8(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100032030(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

Swift::Int sub_1000320A0()
{
  Hasher.init(_seed:)();
  sub_100031FC0(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_100032100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100031EE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100032140@<X0>(_BYTE *a2@<X8>)
{
  result = sub_100037A18();
  *a2 = result;
  return result;
}

uint64_t sub_100032174(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000321C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_10003221C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10003228C(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for AppDistributionLaunchAngelServiceResult.FailureCodingKeys(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v38 = v7;
  v8 = type metadata accessor for KeyedEncodingContainer();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v39 = v31 - v9;
  v10 = type metadata accessor for AppDistributionLaunchAngelServiceResult.SuccessCodingKeys(255, v4, v5, v6);
  v11 = swift_getWitnessTable();
  v33 = v10;
  v31[1] = v11;
  v12 = type metadata accessor for KeyedEncodingContainer();
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = __chkstk_darwin(v12);
  v32 = v31 - v14;
  v34 = *(v4 - 8);
  v15 = __chkstk_darwin(v13);
  v31[0] = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 - 1);
  __chkstk_darwin(v15);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v6;
  v43 = v4;
  type metadata accessor for AppDistributionLaunchAngelServiceResult.CodingKeys(255, v4, v5, v6);
  swift_getWitnessTable();
  v44 = type metadata accessor for KeyedEncodingContainer();
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v21 = v31 - v20;
  sub_100010624(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v17 + 16))(v19, v45, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = 1;
    v22 = v39;
    v23 = v44;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v41;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v40 + 8))(v22, v24);
  }

  else
  {
    v25 = v34;
    v26 = v31[0];
    v27 = v43;
    (*(v34 + 32))(v31[0], v19, v43);
    v47 = 0;
    v28 = v32;
    v23 = v44;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v36;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v35 + 8))(v28, v29);
    (*(v25 + 8))(v26, v27);
  }

  return (*(v46 + 8))(v21, v23);
}

uint64_t sub_10003278C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a5;
  v9 = type metadata accessor for AppDistributionLaunchAngelServiceResult.FailureCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v70 = v9;
  v63 = type metadata accessor for KeyedDecodingContainer();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v71 = &v58 - v10;
  v11 = type metadata accessor for AppDistributionLaunchAngelServiceResult.SuccessCodingKeys(255, a2, a3, a4);
  v66 = swift_getWitnessTable();
  v67 = v11;
  v61 = type metadata accessor for KeyedDecodingContainer();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v68 = &v58 - v12;
  type metadata accessor for AppDistributionLaunchAngelServiceResult.CodingKeys(255, a2, a3, a4);
  v76 = swift_getWitnessTable();
  v13 = type metadata accessor for KeyedDecodingContainer();
  v14 = *(v13 - 8);
  v74 = v13;
  v75 = v14;
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v64 = a2;
  v65 = a3;
  v17 = type metadata accessor for AppDistributionLaunchAngelServiceResult(0, a2, a3, a4);
  v72 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = (&v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v18);
  v23 = &v58 - v22;
  __chkstk_darwin(v21);
  v25 = &v58 - v24;
  v26 = a1[3];
  v82 = a1;
  sub_100010624(a1, v26);
  v27 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v27)
  {
    v59 = v20;
    v76 = v25;
    v77 = v23;
    v28 = v74;
    v29 = v16;
    *&v78 = KeyedDecodingContainer.allKeys.getter();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v80 = ArraySlice.init<A>(_:)();
    *(&v80 + 1) = v30;
    *&v81 = v31;
    *(&v81 + 1) = v32;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v33 = v78;
    if (v78 == 2 || (v58 = v80, v78 = v80, v79 = v81, (Collection.isEmpty.getter() & 1) == 0))
    {
      v38 = type metadata accessor for DecodingError();
      swift_allocError();
      v39 = v28;
      v41 = v40;
      sub_1000047BC(qword_100089B88, &qword_100066D28);
      *v41 = v17;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v38 - 8) + 104))(v41, enum case for DecodingError.typeMismatch(_:), v38);
      swift_willThrow();
      (*(v75 + 8))(v16, v39);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33)
      {
        LOBYTE(v78) = 1;
        v34 = v71;
        v35 = v29;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v28;
        v37 = v73;
        v44 = v36;
        v45 = v63;
        v49 = KeyedDecodingContainer.decode(_:forKey:)();
        v51 = v50;
        (*(v62 + 8))(v34, v45);
        (*(v75 + 8))(v35, v44);
        swift_unknownObjectRelease();
        v52 = v59;
        *v59 = v49;
        v52[1] = v51;
        swift_storeEnumTagMultiPayload();
        v53 = v52;
        v54 = v72;
      }

      else
      {
        LOBYTE(v78) = 0;
        v42 = v68;
        v43 = v29;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v54 = v72;
        v46 = v61;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v47 = v75;
        (*(v60 + 8))(v42, v46);
        (*(v47 + 8))(v43, v28);
        swift_unknownObjectRelease();
        v55 = v77;
        swift_storeEnumTagMultiPayload();
        v37 = v73;
        v53 = v55;
      }

      v56 = *(v54 + 32);
      v57 = v76;
      v56(v76, v53, v17);
      v56(v37, v57, v17);
    }
  }

  return sub_10001059C(v82);
}

uint64_t sub_100032FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003221C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100032FE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100032F6C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100033020(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100033074(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1000330C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10003311C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int sub_1000331AC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000331F0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100033260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = type metadata accessor for ConfirmationSheetContext();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v5 = type metadata accessor for LicenseResolutionContext();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v6 = type metadata accessor for OAuthAuthorizationContext();
  v3[33] = v6;
  v3[34] = *(v6 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v7 = type metadata accessor for InstallSheetContext();
  v3[37] = v7;
  v3[38] = *(v7 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v8 = type metadata accessor for LaunchAngelXPCResponse.ResponseType();
  v3[42] = v8;
  v3[43] = *(v8 - 8);
  v3[44] = swift_task_alloc();
  v9 = type metadata accessor for LaunchAngelXPCRequest.RequestType();
  v3[45] = v9;
  v3[46] = *(v9 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = sub_1000047BC(&qword_100089AE8, &qword_100066BA0);
  v3[49] = swift_task_alloc();
  v10 = type metadata accessor for LaunchAngelXPCRequest();
  v3[50] = v10;
  v3[51] = *(v10 - 8);
  v3[52] = swift_task_alloc();

  return _swift_task_switch(sub_1000335DC, 0, 0);
}

uint64_t sub_1000335DC()
{
  v199 = v0;
  v1 = type metadata accessor for LogKey();
  v2 = objc_allocWithZone(v1);
  v3 = sub_100055C40();
  *(v0 + 424) = v3;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100012174(&qword_100089AF0, &qword_100089AE8, &qword_100066BA0, &unk_100067BC8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v191 = v1;
  v4 = *(v0 + 408);
  v5 = *(v0 + 416);
  v7 = *(v0 + 392);
  v6 = *(v0 + 400);
  v9 = *(v0 + 368);
  v8 = *(v0 + 376);
  v10 = *(v0 + 360);

  (*(v4 + 32))(v5, v7, v6);
  LaunchAngelXPCRequest.requestType.getter();
  v11 = (*(v9 + 88))(v8, v10);
  if (v11 == enum case for LaunchAngelXPCRequest.RequestType.displayProductPage(_:))
  {
    v12 = *(v0 + 376);
    (*(*(v0 + 368) + 96))(v12, *(v0 + 360));
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 32);
    v196 = *(v12 + 24);
    *(v0 + 432) = v16;
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000105E8(v17, qword_10008C508);
    v18 = v3;

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v192 = v13;
      v22 = swift_slowAlloc();
      v198[0] = swift_slowAlloc();
      *v21 = 138413058;
      *(v21 + 4) = v18;
      *v22 = v18;
      *(v21 + 12) = 2050;
      *(v21 + 14) = v14;
      *(v21 + 22) = 2082;
      *(v0 + 144) = v192;
      *(v0 + 152) = v15;
      v23 = v18;
      sub_1000047BC(qword_100089AF8, &qword_100066BA8);
      v24 = String.init<A>(describing:)();
      v26 = sub_10000F78C(v24, v25, v198);

      *(v21 + 24) = v26;
      *(v21 + 32) = 2082;
      v27 = v196;
      *(v21 + 34) = sub_10000F78C(v196, v16, v198);
      _os_log_impl(&_mh_execute_header, v19, v20, "[%@] Asked to display product page %{public}llu - %{public}s by %{public}s", v21, 0x2Au);
      sub_100011C14(v22, &qword_100088FD0, &qword_1000673F0);
      v13 = v192;

      swift_arrayDestroy();
    }

    else
    {

      v27 = v196;
    }

    v43 = swift_task_alloc();
    *(v0 + 440) = v43;
    *v43 = v0;
    v43[1] = sub_100034CD8;

    return sub_10004AD3C(v27, v16, v14, v13, v15);
  }

  v197 = v0;
  if (v11 == enum case for LaunchAngelXPCRequest.RequestType.displaySearchResults(_:))
  {
    v28 = *(v0 + 376);
    (*(*(v0 + 368) + 96))(v28, *(v0 + 360));
    v30 = *v28;
    v29 = v28[1];
    *(v0 + 456) = v29;
    v32 = v28[2];
    v31 = v28[3];
    *(v0 + 464) = v31;
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000105E8(v33, qword_10008C508);
    v34 = v3;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v193 = v32;
      v38 = v30;
      v39 = swift_slowAlloc();
      v198[0] = swift_slowAlloc();
      *v37 = 138412802;
      *(v37 + 4) = v34;
      *v39 = v34;
      *(v37 + 12) = 2082;
      v40 = v34;
      *(v37 + 14) = sub_10000F78C(v38, v29, v198);
      *(v37 + 22) = 2082;
      *(v37 + 24) = sub_10000F78C(v193, v31, v198);
      _os_log_impl(&_mh_execute_header, v35, v36, "[%@] Asked to display search results %{public}s by %{public}s", v37, 0x20u);
      sub_100011C14(v39, &qword_100088FD0, &qword_1000673F0);
      v30 = v38;
      v32 = v193;

      swift_arrayDestroy();
    }

    v194 = sub_10004B584;
    v41 = swift_task_alloc();
    *(v0 + 472) = v41;
    *v41 = v0;
    v42 = sub_1000350E0;
LABEL_22:
    v41[1] = v42;

    return v194(v32, v31, v30, v29);
  }

  v45 = v0;
  if (v11 == enum case for LaunchAngelXPCRequest.RequestType.displayAuthorization(_:))
  {
    v46 = *(v0 + 376);
    (*(*(v0 + 368) + 96))(v46, *(v0 + 360));
    v30 = *v46;
    v29 = v46[1];
    *(v0 + 488) = v29;
    v32 = v46[2];
    v31 = v46[3];
    *(v0 + 496) = v31;
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1000105E8(v47, qword_10008C508);
    v48 = v3;

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v195 = v32;
      v52 = v30;
      v53 = swift_slowAlloc();
      v198[0] = swift_slowAlloc();
      *v51 = 138412802;
      *(v51 + 4) = v48;
      *v53 = v48;
      *(v51 + 12) = 2082;
      v54 = v48;
      *(v51 + 14) = sub_10000F78C(v52, v29, v198);
      *(v51 + 22) = 2082;
      *(v51 + 24) = sub_10000F78C(v195, v31, v198);
      _os_log_impl(&_mh_execute_header, v49, v50, "[%@] Asked to display authorization for %{public}s by %{public}s", v51, 0x20u);
      sub_100011C14(v53, &qword_100088FD0, &qword_1000673F0);
      v30 = v52;
      v32 = v195;

      swift_arrayDestroy();
    }

    v194 = sub_10004BE8C;
    v41 = swift_task_alloc();
    *(v0 + 504) = v41;
    *v41 = v0;
    v42 = sub_100035380;
    goto LABEL_22;
  }

  if (v11 == enum case for LaunchAngelXPCRequest.RequestType.getInstallConfirmation(_:))
  {
    v55 = *(v0 + 376);
    v56 = *(v0 + 328);
    super_class = v197[18].super_class;
    receiver = v197[19].receiver;
    (*(v197[23].receiver + 12))(v197[23].super_class, v197[22].super_class);
    receiver[4](v56, v55, super_class);
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v60 = v197[20].receiver;
    v59 = v197[20].super_class;
    v61 = v197[18].super_class;
    v62 = v197[19].receiver;
    v63 = type metadata accessor for Logger();
    sub_1000105E8(v63, qword_10008C508);
    v64 = v62[2];
    v64(v60, v59, v61);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v197[20].receiver;
    v69 = v197[18].super_class;
    v70 = v197[19].receiver;
    if (v67)
    {
      v188 = v64;
      v71 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v198[0] = v185;
      *v71 = 136446210;
      v182 = InstallSheetContext.logKey.getter();
      v73 = v72;
      v74 = v70[1];
      v75 = (v70 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v74)(v68, v69);
      v76 = v74;
      v77 = sub_10000F78C(v182, v73, v198);
      v45 = v197;

      *(v71 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v65, v66, "[%{public}s]: Asked to confirm install", v71, 0xCu);
      sub_10001059C(v185);

      v64 = v188;
    }

    else
    {

      v103 = v70[1];
      v75 = (v70 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (v103)(v68, v69);
      v76 = v103;
    }

    v45[32].super_class = v76;
    v104 = v45[19].super_class;
    v105 = v45[18].super_class;
    v64(v104, v45[20].super_class, v105);
    v106 = type metadata accessor for InstallConfirmationTask(0);
    v107 = objc_allocWithZone(v106);
    *&v107[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_remoteHandle] = 0;
    v64(&v107[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_context], v104, v105);
    v108 = InstallSheetContext.logKey.getter();
    v110 = v109;
    v111 = objc_allocWithZone(v191);
    v112 = &v111[OBJC_IVAR____TtC26AppDistributionLaunchAngel6LogKey_stringValue];
    *v112 = v108;
    v112[1] = v110;
    v45[7].receiver = v111;
    v45[7].super_class = v191;
    *&v107[OBJC_IVAR____TtC26AppDistributionLaunchAngel23InstallConfirmationTask_logKey] = objc_msgSendSuper2(v45 + 7, "init");
    v45[8].receiver = v107;
    v45[8].super_class = v106;
    v45[33].receiver = objc_msgSendSuper2(v45 + 8, "init");
    v45[33].super_class = v75;
    (v76)(v104, v105);
    v113 = swift_task_alloc();
    v45[34].receiver = v113;
    *v113 = v45;
    v113[1] = sub_100035620;

    return sub_10002D114();
  }

  else if (v11 == enum case for LaunchAngelXPCRequest.RequestType.oauthAuthorization(_:))
  {
    v78 = *(v0 + 376);
    v79 = *(v0 + 288);
    v80 = v197[16].super_class;
    v81 = v197[17].receiver;
    (*(v197[23].receiver + 12))(v197[23].super_class, v197[22].super_class);
    v81[4](v79, v78, v80);
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_1000105E8(v82, qword_10008C508);
    v83 = v3;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v86 = 138412290;
      *(v86 + 4) = v83;
      *v87 = v83;
      v88 = v83;
      _os_log_impl(&_mh_execute_header, v84, v85, "[%@] Asked to display OAuth web authentication", v86, 0xCu);
      sub_100011C14(v87, &qword_100088FD0, &qword_1000673F0);
    }

    v89 = v197[17].super_class;
    v90 = v197[18].receiver;
    v91 = v197[16].super_class;
    v92 = v197[17].receiver;

    v93 = v92[2];
    v93(v89, v90, v91);
    v94 = type metadata accessor for OAuthAuthorizationTask(0);
    v95 = objc_allocWithZone(v94);
    *&v95[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_remoteHandle] = 0;
    v93(&v95[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_context], v89, v91);
    v96 = OAuthAuthorizationContext.logKey.getter();
    v98 = v97;
    v99 = objc_allocWithZone(v191);
    v100 = &v99[OBJC_IVAR____TtC26AppDistributionLaunchAngel6LogKey_stringValue];
    *v100 = v96;
    v100[1] = v98;
    v197[5].receiver = v99;
    v197[5].super_class = v191;
    *&v95[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey] = objc_msgSendSuper2(v197 + 5, "init");
    v197[6].receiver = v95;
    v197[6].super_class = v94;
    v197[34].super_class = objc_msgSendSuper2(v197 + 6, "init");
    v101 = v92[1];
    v197[35].receiver = v101;
    v197[35].super_class = ((v92 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v101(v89, v91);
    v102 = swift_task_alloc();
    v197[36].receiver = v102;
    *v102 = v197;
    v102[1] = sub_1000358D4;

    return sub_100013768();
  }

  else if (v11 == enum case for LaunchAngelXPCRequest.RequestType.handleLicenseResolution(_:))
  {
    v114 = *(v0 + 376);
    v115 = *(v0 + 256);
    v116 = v197[14].receiver;
    v117 = v197[14].super_class;
    (*(v197[23].receiver + 12))(v197[23].super_class, v197[22].super_class);
    (*(v117 + 4))(v115, v114, v116);
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v119 = v197[15].super_class;
    v118 = v197[16].receiver;
    v120 = v197[14].receiver;
    v121 = v197[14].super_class;
    v122 = type metadata accessor for Logger();
    sub_1000105E8(v122, qword_10008C508);
    v123 = *(v121 + 2);
    v123(v119, v118, v120);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();
    v126 = os_log_type_enabled(v124, v125);
    v127 = v197[15].super_class;
    v128 = v197[14].receiver;
    v129 = v197[14].super_class;
    if (v126)
    {
      v189 = v123;
      v130 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v198[0] = v186;
      *v130 = 136446210;
      v183 = LicenseResolutionContext.logKey.getter();
      v132 = v131;
      v133 = *(v129 + 1);
      v134 = (v129 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v133(v127, v128);
      v135 = v133;
      v136 = sub_10000F78C(v183, v132, v198);
      v45 = v197;

      *(v130 + 4) = v136;
      _os_log_impl(&_mh_execute_header, v124, v125, "[%{public}s] Handling license resolution request", v130, 0xCu);
      sub_10001059C(v186);

      v123 = v189;
    }

    else
    {

      v160 = *(v129 + 1);
      v134 = (v129 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v160(v127, v128);
      v135 = v160;
    }

    v45[37].receiver = v135;
    v161 = v45[15].receiver;
    v162 = v45[14].receiver;
    v123(v161, v45[16].receiver, v162);
    v163 = type metadata accessor for LicenseResolutionTask(0);
    v164 = objc_allocWithZone(v163);
    *&v164[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_remoteHandle] = 0;
    v123(&v164[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_context], v161, v162);
    v165 = LicenseResolutionContext.logKey.getter();
    v167 = v166;
    v168 = objc_allocWithZone(v191);
    v169 = &v168[OBJC_IVAR____TtC26AppDistributionLaunchAngel6LogKey_stringValue];
    *v169 = v165;
    v169[1] = v167;
    v45[3].receiver = v168;
    v45[3].super_class = v191;
    *&v164[OBJC_IVAR____TtC26AppDistributionLaunchAngel21LicenseResolutionTask_logKey] = objc_msgSendSuper2(v45 + 3, "init");
    v45[4].receiver = v164;
    v45[4].super_class = v163;
    v45[37].super_class = objc_msgSendSuper2(v45 + 4, "init");
    v45[38].receiver = v134;
    v135(v161, v162);
    v170 = swift_task_alloc();
    v45[38].super_class = v170;
    *v170 = v45;
    *(v170 + 1) = sub_100035B8C;

    return sub_10004C9A8();
  }

  else if (v11 == enum case for LaunchAngelXPCRequest.RequestType.showConfirmationSheet(_:))
  {
    v137 = *(v0 + 376);
    v138 = *(v0 + 216);
    v139 = v197[11].super_class;
    v140 = v197[12].receiver;
    (*(v197[23].receiver + 12))(v197[23].super_class, v197[22].super_class);
    v140[4](v138, v137, v139);
    if (qword_100088450 != -1)
    {
      swift_once();
    }

    v142 = v197[13].receiver;
    v141 = v197[13].super_class;
    v143 = v197[11].super_class;
    v144 = v197[12].receiver;
    v145 = type metadata accessor for Logger();
    sub_1000105E8(v145, qword_10008C508);
    v146 = v144[2];
    v146(v142, v141, v143);
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.default.getter();
    v149 = os_log_type_enabled(v147, v148);
    v150 = v197[13].receiver;
    v151 = v197[11].super_class;
    v152 = v197[12].receiver;
    if (v149)
    {
      v190 = v146;
      v153 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v198[0] = v187;
      *v153 = 136315138;
      v184 = ConfirmationSheetContext.logKey.getter();
      v155 = v154;
      v156 = v152[1];
      v157 = (v152 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v156(v150, v151);
      v158 = v156;
      v159 = sub_10000F78C(v184, v155, v198);
      v45 = v197;

      *(v153 + 4) = v159;
      _os_log_impl(&_mh_execute_header, v147, v148, "[%s] Asked to show confirmation sheet", v153, 0xCu);
      sub_10001059C(v187);

      v146 = v190;
    }

    else
    {

      v171 = v152[1];
      v157 = (v152 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v171(v150, v151);
      v158 = v171;
    }

    v45[39].receiver = v158;
    v172 = v45[12].super_class;
    v173 = v45[11].super_class;
    v146(v172, v45[13].super_class, v173);
    v174 = type metadata accessor for ConfirmationSheetTask(0);
    v175 = objc_allocWithZone(v174);
    *&v175[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_remoteHandle] = 0;
    v146(&v175[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_context], v172, v173);
    v176 = ConfirmationSheetContext.logKey.getter();
    v178 = v177;
    v179 = objc_allocWithZone(v191);
    v180 = &v179[OBJC_IVAR____TtC26AppDistributionLaunchAngel6LogKey_stringValue];
    *v180 = v176;
    v180[1] = v178;
    v45[1].receiver = v179;
    v45[1].super_class = v191;
    *&v175[OBJC_IVAR____TtC26AppDistributionLaunchAngel21ConfirmationSheetTask_logKey] = objc_msgSendSuper2(v45 + 1, "init");
    v45[2].receiver = v175;
    v45[2].super_class = v174;
    v45[39].super_class = objc_msgSendSuper2(v45 + 2, "init");
    v45[40].receiver = v157;
    v158(v172, v173);
    v181 = swift_task_alloc();
    v45[40].super_class = v181;
    *v181 = v45;
    *(v181 + 1) = sub_100035E38;

    return sub_10004451C();
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_100034CD8()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_100034F90;
  }

  else
  {
    v2 = sub_100034E0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100034E0C()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  (*(v0[43] + 104))(v0[44], enum case for LaunchAngelXPCResponse.ResponseType.ignored(_:), v0[42]);
  LaunchAngelXPCResponse.init(responseType:)();

  (*(v4 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100034F90()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000350E0()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_100035230;
  }

  else
  {
    v2 = sub_100038890;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100035230()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100035380()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_1000354D0;
  }

  else
  {
    v2 = sub_100038890;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000354D0()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100035620(char a1)
{
  *(*v1 + 153) = a1;

  return _swift_task_switch(sub_100035720, 0, 0);
}

uint64_t sub_100035720()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 424);
  v13 = *(v0 + 416);
  v4 = *(v0 + 400);
  v5 = *(v0 + 408);
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v9 = *(v0 + 328);
  v8 = *(v0 + 336);
  v10 = *(v0 + 296);
  *v7 = *(v0 + 153);
  (*(v6 + 104))(v7, enum case for LaunchAngelXPCResponse.ResponseType.installSheetConfirmation(_:), v8);
  LaunchAngelXPCResponse.init(responseType:)();

  v2(v9, v10);
  (*(v5 + 8))(v13, v4);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000358D4(uint64_t a1)
{
  *(*v1 + 584) = a1;

  return _swift_task_switch(sub_1000359D4, 0, 0);
}

uint64_t sub_1000359D4()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[53];
  v13 = v0[52];
  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[43];
  v7 = v0[44];
  v8 = v0[42];
  v9 = v0[36];
  v10 = v0[33];
  *v7 = v0[73];
  (*(v6 + 104))(v7, enum case for LaunchAngelXPCResponse.ResponseType.oauthAuthorization(_:), v8);
  LaunchAngelXPCResponse.init(responseType:)();

  v1(v9, v10);
  (*(v5 + 8))(v13, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100035B8C()
{

  return _swift_task_switch(sub_100035C88, 0, 0);
}

uint64_t sub_100035C88()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[53];
  v10 = v0[52];
  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[32];
  v7 = v0[28];
  (*(v0[43] + 104))(v0[44], enum case for LaunchAngelXPCResponse.ResponseType.ignored(_:), v0[42]);
  LaunchAngelXPCResponse.init(responseType:)();

  v2(v6, v7);
  (*(v5 + 8))(v10, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100035E38(char a1)
{
  *(*v1 + 154) = a1;

  return _swift_task_switch(sub_100035F38, 0, 0);
}

uint64_t sub_100035F38()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 424);
  v13 = *(v0 + 416);
  v4 = *(v0 + 400);
  v5 = *(v0 + 408);
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v8 = *(v0 + 336);
  v9 = *(v0 + 216);
  v10 = *(v0 + 184);
  *v7 = *(v0 + 154);
  (*(v6 + 104))(v7, enum case for LaunchAngelXPCResponse.ResponseType.confirmationSheet(_:), v8);
  LaunchAngelXPCResponse.init(responseType:)();

  v2(v9, v10);
  (*(v5 + 8))(v13, v4);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000361BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v13;
  *(v8 + 120) = v14;
  *(v8 + 96) = v12;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 224) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 56) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  sub_1000047BC(&qword_100089AC0, &qword_100066B60);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_100036318, 0, 0);
}

uint64_t sub_100036318()
{
  v1 = v0;
  v2 = v0[21];
  v3 = v0[17];
  v26 = v0[16];
  v27 = v0[20];
  v4 = v0[13];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[8];
  v24 = *(v1 + 11);
  v25 = *(v1 + 7);
  v8 = *(v1 + 224);
  (*(v3 + 56))(v2, 1, 1);
  v9 = swift_task_alloc();
  v1[22] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v24;
  *(v9 + 40) = v4;
  *(v9 + 48) = v7;
  *(v9 + 56) = v5;
  *(v9 + 64) = v8;
  *(v9 + 72) = v25;
  type metadata accessor for LogActivity();
  v10 = swift_allocObject();
  v1[23] = v10;
  v11 = sub_100029C08(v7, v8, &_mh_execute_header);
  v1[5] = 0;
  v1[6] = 0;
  os_activity_scope_enter(v11, (v1 + 5));
  swift_unknownObjectRelease();
  *(v10 + 16) = *(v1 + 5);
  type metadata accessor for Transaction();
  swift_allocObject();
  v12 = sub_10003785C(v7, v5, v8);
  v1[24] = v12;
  sub_100010668(v2, v27, &qword_100089AC0, &qword_100066B60);
  v13 = 0;
  if ((*(v3 + 48))(v27, 1, v26) != 1)
  {
    v14 = v1[19];
    v16 = v1[17];
    v15 = v1[18];
    v17 = v1[16];
    v18 = v1[8];
    v28 = v1[9];
    v19 = *(v1 + 224);
    (*(v16 + 32))(v14, v1[20], v17);
    (*(v16 + 16))(v15, v14, v17);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v13 = sub_100004D68(v18, v28, v19, v15);
    (*(v16 + 8))(v14, v17);
  }

  v1[25] = v13;
  if (qword_100088428 != -1)
  {
    swift_once();
  }

  v1[2] = v10;
  v1[3] = v12;
  v1[4] = v13;
  v20 = swift_task_alloc();
  v1[26] = v20;
  *(v20 + 16) = &unk_100066B70;
  *(v20 + 24) = v9;

  v21 = swift_task_alloc();
  v1[27] = v21;
  *v21 = v1;
  v21[1] = sub_1000366C0;
  v22 = v1[7];

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v22, v1 + 2, &unk_100066B80, v20, 0, 0, 0xD000000000000037, 0x8000000100069D60);
}

uint64_t sub_1000366C0()
{

  if (v0)
  {

    v1 = sub_100036960;
  }

  else
  {

    v1 = sub_100036860;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100036860()
{
  v1 = *(v0 + 168);

  sub_100011C14(v1, &qword_100089AC0, &qword_100066B60);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100036960()
{
}

uint64_t sub_1000369F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  *(v8 + 168) = a8;
  *(v8 + 80) = a6;
  *(v8 + 88) = a7;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 112) = sub_1000047BC(&qword_100089AC8, &qword_100066B88);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = sub_1000047BC(&qword_100089AD0, &unk_100066B90);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100036AF4, 0, 0);
}

uint64_t sub_100036AF4()
{
  v42 = v0;
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 56);
    v5 = *(v2 + 56);
    v4 = v2 + 56;
    v3 = v5;
    v6 = -1;
    v7 = -1 << *(*(v0 + 56) + 32);
    if (-v7 < 64)
    {
      v6 = ~(-1 << -v7);
    }

    v8 = v6 & v3;
    v9 = (63 - v7) >> 6;
    v10 = v1;

    v11 = 0;
    while (v8)
    {
LABEL_5:
      v8 &= v8 - 1;
      v12 = String._bridgeToObjectiveC()();
      v13 = [v10 hasEntitlement:v12];

      if ((v13 & 1) == 0)
      {
        sub_100038068();
        swift_allocError();
        swift_willThrow();

        goto LABEL_15;
      }
    }

    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v14 >= v9)
      {
        break;
      }

      v8 = *(v4 + 8 * v14);
      ++v11;
      if (v8)
      {
        v11 = v14;
        goto LABEL_5;
      }
    }

    v15 = *(v0 + 64);

    v40 = (v15 + *v15);
    v16 = swift_task_alloc();
    *(v0 + 152) = v16;
    *v16 = v0;
    v16[1] = sub_100037094;
    v17 = *(v0 + 136);

    return v40(v17);
  }

  else
  {
    sub_100038068();
    swift_allocError();
    swift_willThrow();
LABEL_15:
    if (qword_100088450 != -1)
    {
LABEL_23:
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000105E8(v19, qword_10008C508);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = v24;
      *v22 = 136315394;
      v25 = StaticString.description.getter();
      v27 = sub_10000F78C(v25, v26, &v41);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2114;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v28;
      *v23 = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error in %s: %{public}@", v22, 0x16u);
      sub_100011C14(v23, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v24);
    }

    v29 = *(v0 + 144);
    swift_getErrorValue();
    v30 = Error.localizedDescription.getter();
    v32 = v31;

    *v29 = v30;
    v29[1] = v32;
    swift_storeEnumTagMultiPayload();
    v33 = *(v0 + 144);
    v34 = *(v0 + 120);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100010668(v33, v34, &qword_100089AD0, &unk_100066B90);
    sub_100012174(&qword_100089AE0, &qword_100089AC8, &qword_100066B88, &unk_100067BF0);
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v37 = v36;
    sub_100011C14(*(v0 + 120), &qword_100089AC8, &qword_100066B88);

    v38 = *(v0 + 144);
    (*(v0 + 96))(v35, v37, 0);
    sub_100015A54(v35, v37);
    sub_100011C14(v38, &qword_100089AD0, &unk_100066B90);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_100037094()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100037390;
  }

  else
  {
    v2 = sub_1000371A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000371A8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  swift_storeEnumTagMultiPayload();
  sub_1000380BC(v1, v2);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100010668(v4, v5, &qword_100089AD0, &unk_100066B90);
  sub_100012174(&qword_100089AE0, &qword_100089AC8, &qword_100066B88, &unk_100067BF0);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v3;
  v9 = *(v0 + 120);
  if (v8)
  {

    sub_100011C14(v9, &qword_100089AC8, &qword_100066B88);
    v7 = 0;
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = v6;
    sub_100011C14(*(v0 + 120), &qword_100089AC8, &qword_100066B88);
  }

  v11 = *(v0 + 144);
  (*(v0 + 96))(v7, v10, 0);
  sub_100015A54(v7, v10);
  sub_100011C14(v11, &qword_100089AD0, &unk_100066B90);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100037390()
{
  v24 = v0;

  if (qword_100088450 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C508);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v4 = 136315394;
    v7 = StaticString.description.getter();
    v9 = sub_10000F78C(v7, v8, &v23);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v4, 0x16u);
    sub_100011C14(v5, &qword_100088FD0, &qword_1000673F0);

    sub_10001059C(v6);
  }

  v11 = *(v0 + 144);
  swift_getErrorValue();
  v12 = Error.localizedDescription.getter();
  v14 = v13;

  *v11 = v12;
  v11[1] = v14;
  swift_storeEnumTagMultiPayload();
  v15 = *(v0 + 144);
  v16 = *(v0 + 120);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100010668(v15, v16, &qword_100089AD0, &unk_100066B90);
  sub_100012174(&qword_100089AE0, &qword_100089AC8, &qword_100066B88, &unk_100067BF0);
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v19 = v18;
  sub_100011C14(*(v0 + 120), &qword_100089AC8, &qword_100066B88);

  v20 = *(v0 + 144);
  (*(v0 + 96))(v17, v19, 0);
  sub_100015A54(v17, v19);
  sub_100011C14(v20, &qword_100089AD0, &unk_100066B90);

  v21 = *(v0 + 8);

  return v21();
}

id sub_10003776C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LaunchAngelService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000377C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000377FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v5, isa, a3);
}

uint64_t sub_10003785C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  StaticString.description.getter();
  String.utf8CString.getter();
  v5 = os_transaction_create();

  if (v5)
  {

    *(v3 + 16) = v5;
    timestamp = os_transaction_get_timestamp();
    if (qword_100088440 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000105E8(v8, qword_10008C4D8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 33554946;
      *(v11 + 4) = timestamp;
      *(v11 + 6) = 2080;
      v13 = StaticString.description.getter();
      v15 = sub_10000F78C(v13, v14, &v16);

      *(v11 + 8) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "[TXN%hx] 🐏 Beginning transaction (%s)", v11, 0x10u);
      sub_10001059C(v12);
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100037A20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = sub_10004E044(&off_10007E4E8);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = objc_opt_self();
  sub_100015A00(a1, a2);
  v18 = [v17 currentContext];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 remoteToken];
  }

  else
  {
    v20 = 0;
  }

  sub_100010668(v13, v11, &unk_100088F10, &qword_100065D60);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = "handleXPCRequest";
  *(v21 + 40) = 16;
  *(v21 + 48) = 2;
  *(v21 + 56) = v20;
  *(v21 + 64) = v14;
  *(v21 + 72) = &unk_100066B48;
  *(v21 + 80) = v16;
  *(v21 + 88) = a3;
  *(v21 + 96) = a4;
  v22 = v20;

  sub_100007654(0, 0, v11, &unk_100066B58, v21);

  return sub_100011C14(v13, &unk_100088F10, &qword_100065D60);
}

uint64_t sub_100037C88()
{
  sub_100015A54(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100037CC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000121F4;

  return sub_100033260(a1, v5, v4);
}

uint64_t sub_100037D6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100037DC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 64);
  v12 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001020C;

  return sub_1000361BC(a1, v4, v5, v6, v7, v9, v12, v8);
}

uint64_t sub_100037EC8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001020C;

  return sub_1000369F4(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100037FBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000121F4;

  return sub_100031DEC(a1, v4);
}

unint64_t sub_100038068()
{
  result = qword_100089AD8;
  if (!qword_100089AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089AD8);
  }

  return result;
}

uint64_t sub_1000380BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_100089AD0, &unk_100066B90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038148(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000381B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1000382CC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1000384A0()
{
  result = qword_100089B80;
  if (!qword_100089B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089B80);
  }

  return result;
}

uint64_t sub_100038550(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000385E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchAngelEntitlements(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LaunchAngelEntitlements(_WORD *result, int a2, int a3)
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

void sub_100038894()
{
  v1 = sub_1000047BC(&unk_100089E30, &qword_100067230);
  v2 = __chkstk_darwin(v1 - 8);
  v201 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v199 = &v185 - v5;
  v6 = __chkstk_darwin(v4);
  v189 = &v185 - v7;
  v8 = __chkstk_darwin(v6);
  v203 = &v185 - v9;
  v10 = __chkstk_darwin(v8);
  v198 = &v185 - v11;
  __chkstk_darwin(v10);
  v188 = &v185 - v12;
  v191 = type metadata accessor for MultiBulletPointView(0);
  v13 = __chkstk_darwin(v191);
  v193 = (&v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v16 = (&v185 - v15);
  isa = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v196 = *(isa - 1);
  __chkstk_darwin(isa);
  v197 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v194 = *(v18 - 8);
  v195 = v18;
  __chkstk_darwin(v18);
  v20 = &v185 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  v22 = __chkstk_darwin(v21 - 8);
  v187 = &v185 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v192 = &v185 - v24;
  v25 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  v26 = __chkstk_darwin(v25 - 8);
  v186 = &v185 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v190 = &v185 - v28;
  v29 = type metadata accessor for InstallSheetContext();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v185 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for CombinedApprovalAndInstallSheetViewController(0);
  v207.receiver = v0;
  v207.super_class = v33;
  objc_msgSendSuper2(&v207, "viewDidLoad");
  [v0 setModalInPresentation:1];
  [v0 setDefinesPresentationContext:1];
  v200 = v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_isIPad];
  if (v200)
  {
    v34 = 88.0;
  }

  else
  {
    v34 = 24.0;
  }

  v35 = [v0 contentView];
  [v35 setDirectionalLayoutMargins:{0.0, v34, 0.0, v34}];

  v36 = [v0 headerView];
  v37 = [v36 bottomAnchor];

  v38 = [v0 contentView];
  v39 = [v38 topAnchor];

  v40 = [v37 constraintEqualToAnchor:v39 constant:-4.0];
  [v40 setActive:1];

  v41 = &v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent];
  (*(v30 + 16))(v32, &v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent], v29);
  v42 = objc_allocWithZone(type metadata accessor for MiniProductPageView(0));
  v43 = v0;
  v44 = sub_100040764(v32, v43, v42);

  v45 = v44;
  [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
  v46 = [v43 contentView];
  v206 = v45;
  [v46 addSubview:v45];

  v204 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent(0);
  v205 = v41;
  v47 = &v41[*(v204 + 32)];
  v48 = *v47;
  if ((v47[16] & 1) == 0)
  {
    type metadata accessor for NonHighlightableTextView();
    v79 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    v80 = [v79 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v80 setEditable:0];
    sub_10001E778(0, &qword_100089E50, NSAttributedString_ptr);
    v81 = type metadata accessor for URL();
    (*(*(v81 - 8) + 56))(v190, 1, 1, v81);
    (*(v194 + 104))(v20, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v195);
    (*(v196 + 104))(v197, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), isa);
    AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
    v82 = NSAttributedString.init(markdown:options:baseURL:)();
    v83 = v206;
    [v80 setAttributedText:v82];

    [v80 setTextAlignment:1];
    v84 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v80 setFont:v84];

    [v80 setScrollEnabled:0];
    v85 = v80;
    [v85 setTranslatesAutoresizingMaskIntoConstraints:0];
    v86 = [objc_opt_self() labelColor];
    [v85 setTextColor:v86];

    [v85 setDelegate:v43];
    v87 = [v43 contentView];
    [v87 insertSubview:v85 belowSubview:v83];

    v88 = [v43 contentView];
    v89 = [v88 leadingAnchor];

    v90 = [v85 leadingAnchor];
    v91 = [v89 constraintEqualToAnchor:v90 constant:-v34];

    [v91 setActive:1];
    v92 = [v43 contentView];
    v93 = [v92 trailingAnchor];

    v94 = [v85 trailingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94 constant:v34];

    [v95 setActive:1];
    v96 = [v43 contentView];
    v97 = [v96 topAnchor];

    v98 = [v85 topAnchor];
    v99 = [v97 constraintEqualToAnchor:v98];

    [v99 setActive:1];
    v100 = [v85 bottomAnchor];

    v101 = [v83 topAnchor];
    v102 = [v100 constraintEqualToAnchor:v101 constant:-24.0];

    [v102 setActive:1];
    v103 = [v83 bottomAnchor];
    v104 = [v43 contentView];
    v105 = [v104 bottomAnchor];

    v106 = [v103 constraintEqualToAnchor:v105];
    [v106 setActive:1];

    goto LABEL_13;
  }

  v192 = v20;
  v49 = isa;
  *(v16 + v191[5]) = swift_getKeyPath();
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  swift_storeEnumTagMultiPayload();
  *v16 = v48;
  sub_100041ED0(v16, v193, type metadata accessor for MultiBulletPointView);
  v50 = objc_allocWithZone(sub_1000047BC(&qword_100089E48, &qword_1000672C8));

  v51 = UIHostingController.init(rootView:)();
  [v43 addChildViewController:v51];
  v52 = [v51 view];
  v193 = v16;
  if (!v52)
  {
    __break(1u);
    goto LABEL_35;
  }

  v53 = v52;
  [v52 setTranslatesAutoresizingMaskIntoConstraints:0];

  v54 = [v43 contentView];
  v55 = [v51 view];

  if (!v55)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v56 = v49;
  [v54 addSubview:v55];

  [v51 didMoveToParentViewController:v43];
  v57 = [v43 contentView];
  v58 = [v57 leadingAnchor];

  v59 = [v51 view];
  if (!v59)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v60 = v51;
  v61 = [v59 leadingAnchor];

  v62 = [v58 constraintEqualToAnchor:v61 constant:-(v34 + 12.0)];
  [v62 setActive:1];

  v63 = [v43 contentView];
  v64 = [v63 trailingAnchor];

  v65 = [v60 view];
  if (!v65)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v66 = [v65 trailingAnchor];

  v67 = [v64 constraintEqualToAnchor:v66 constant:v34];
  [v67 setActive:1];

  v68 = [v43 contentView];
  v69 = [v68 topAnchor];

  v70 = [v60 view];
  if (!v70)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v71 = [v70 topAnchor];

  v72 = [v69 constraintEqualToAnchor:v71 constant:-24.0];
  [v72 setActive:1];

  v73 = [v60 view];
  v191 = v60;

  if (!v73)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v74 = [v73 bottomAnchor];

  v75 = [v206 topAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:-24.0];

  [v76 setActive:1];
  type metadata accessor for NonHighlightableTextView();
  v77 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v77 setEditable:0];
  sub_10001E778(0, &qword_100089E50, NSAttributedString_ptr);
  v78 = type metadata accessor for URL();
  (*(*(v78 - 8) + 56))(v186, 1, 1, v78);
  (*(v194 + 104))(v192, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v195);
  (*(v196 + 104))(v197, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v56);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  v107 = NSAttributedString.init(markdown:options:baseURL:)();
  v108 = v193;
  [v77 setAttributedText:v107];

  [v77 setTextAlignment:1];
  v109 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v77 setFont:v109];

  [v77 setScrollEnabled:0];
  v110 = v77;
  [v110 setTranslatesAutoresizingMaskIntoConstraints:0];
  v111 = [objc_opt_self() labelColor];
  [v110 setTextColor:v111];

  [v110 setDelegate:v43];
  v112 = [v43 contentView];
  [v112 addSubview:v110];

  v113 = [v43 contentView];
  v114 = [v113 leadingAnchor];

  v115 = [v110 leadingAnchor];
  v116 = [v114 constraintEqualToAnchor:v115 constant:-v34];

  [v116 setActive:1];
  v117 = [v43 contentView];
  v118 = [v117 trailingAnchor];

  v119 = [v110 trailingAnchor];
  v120 = [v118 constraintEqualToAnchor:v119 constant:v34];

  [v120 setActive:1];
  v121 = [v206 bottomAnchor];
  v122 = [v110 topAnchor];
  v123 = [v121 constraintEqualToAnchor:v122 constant:-12.0];

  [v123 setActive:1];
  v124 = [v43 contentView];
  v125 = [v124 bottomAnchor];

  v126 = [v110 bottomAnchor];
  v127 = [v125 constraintEqualToAnchor:v126];

  [v127 setActive:1];
  sub_100041F38(v108, type metadata accessor for MultiBulletPointView);
LABEL_13:
  sub_10001E778(0, &qword_100089E58, UIColor_ptr);
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.88, 0.88, 0.88, 1.0).super.isa;
  v128 = *&v43[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButton];
  [v128 setEnabled:0];
  v130 = v204;
  v129 = v205;

  v131 = String._bridgeToObjectiveC()();

  [v128 setTitle:v131 forState:0];

  v132 = v198;
  v133 = v199;
  if (v129[*(v130 + 68)] == 1)
  {
    v134 = v188;
    UIButton.configuration.getter();
    v135 = type metadata accessor for UIButton.Configuration();
    v136 = *(*(v135 - 8) + 48);
    if (v136(v134, 1, v135))
    {
      sub_1000419A4(v134, v203);
      UIButton.configuration.setter();
      sub_100011C14(v134, &unk_100089E30, &qword_100067230);
    }

    else
    {
      v138 = [objc_opt_self() systemBlueColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    UIButton.configuration.getter();
    if (v136(v132, 1, v135))
    {
      sub_1000419A4(v132, v203);
      UIButton.configuration.setter();
      sub_100011C14(v132, &unk_100089E30, &qword_100067230);
    }

    else
    {
      v141 = [objc_opt_self() clearColor];
      UIButton.Configuration.baseBackgroundColor.setter();
      UIButton.configuration.setter();
    }
  }

  else
  {
    v137 = v189;
    UIButton.configuration.getter();
    v135 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v135 - 8) + 48))(v137, 1, v135))
    {
      sub_1000419A4(v137, v203);
      UIButton.configuration.setter();
      sub_100011C14(v137, &unk_100089E30, &qword_100067230);
    }

    else
    {
      v139 = [objc_opt_self() whiteColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    v140 = [objc_opt_self() systemBlueColor];
    [v128 setTintColor:v140];
  }

  [v128 addTarget:v43 action:"allowPressed" forControlEvents:64];
  v142 = [v43 buttonTray];
  [v142 addButton:v128];

  v143 = *&v43[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_cancelButton];

  v144 = String._bridgeToObjectiveC()();

  [v143 setTitle:v144 forState:0];

  UIButton.configuration.getter();
  type metadata accessor for UIButton.Configuration();
  v145 = *(*(v135 - 8) + 48);
  if (v145(v133, 1, v135))
  {
    sub_1000419A4(v133, v203);
    UIButton.configuration.setter();
    sub_100011C14(v133, &unk_100089E30, &qword_100067230);
  }

  else
  {
    v146 = [objc_opt_self() systemBlueColor];
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.configuration.setter();
  }

  v147 = v201;
  UIButton.configuration.getter();
  if (v145(v147, 1, v135))
  {
    sub_1000419A4(v147, v203);
    UIButton.configuration.setter();
    sub_100011C14(v147, &unk_100089E30, &qword_100067230);
  }

  else
  {
    v148 = [objc_opt_self() clearColor];
    UIButton.Configuration.baseBackgroundColor.setter();
    UIButton.configuration.setter();
  }

  [v143 addTarget:v43 action:"cancelPressed" forControlEvents:64];
  v149 = [v43 buttonTray];
  [v149 addButton:v143];

  v150 = [v128 heightAnchor];
  v151 = [v143 heightAnchor];
  v152 = [v150 constraintEqualToAnchor:v151];

  [v152 setActive:1];
  v153 = [v43 contentView];
  v154 = [v153 leadingAnchor];

  v155 = v206;
  v156 = [v206 leadingAnchor];
  if (v200)
  {
    v157 = [v154 constraintGreaterThanOrEqualToAnchor:v156 constant:-88.0];

    LODWORD(v158) = 1140457472;
    v205 = v157;
    [v157 setPriority:v158];
    [v157 setActive:1];
    v159 = [v43 contentView];
    v160 = [v159 centerXAnchor];

    v161 = [v155 centerXAnchor];
    v162 = [v160 constraintEqualToAnchor:v161];

    [v162 setActive:1];
    v163 = [v155 widthAnchor];

    v164 = [v163 constraintLessThanOrEqualToConstant:360.0];
    [v164 setActive:1];

    v165 = [v43 buttonTray];
    v166 = [v165 widthAnchor];

    v167 = [v166 constraintLessThanOrEqualToConstant:360.0];
    [v167 setActive:1];

    v168 = [v143 bottomAnchor];
    v169 = [v43 buttonTray];
    v170 = [v169 bottomAnchor];

    v171 = [v168 constraintEqualToAnchor:v170 constant:-24.0];
    [v171 setActive:1];

    v172 = v155;
  }

  else
  {
    v173 = [v154 constraintEqualToAnchor:v156 constant:-24.0];

    [v173 setActive:1];
    v174 = [v43 contentView];
    v175 = [v174 trailingAnchor];

    v172 = v155;
    v176 = [v155 trailingAnchor];

    v177 = [v175 constraintEqualToAnchor:v176 constant:24.0];
    [v177 setActive:1];

    v178 = [v43 buttonTray];
    v179 = [v178 leadingAnchor];

    v180 = [v128 leadingAnchor];
    v181 = [v179 constraintEqualToAnchor:v180 constant:-24.0];

    [v181 setActive:1];
    v182 = [v43 buttonTray];
    v183 = [v182 trailingAnchor];

    v184 = [v128 trailingAnchor];
    v171 = [v183 constraintEqualToAnchor:v184 constant:24.0];

    [v171 setActive:1];
  }
}

uint64_t sub_10003A798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10003A830, v6, v5);
}

uint64_t sub_10003A830()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_10003A928;

    return sub_100021094();
  }

  else
  {

    **(v0 + 16) = *(v0 + 56) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10003A928()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100041FC8, v3, v2);
}

uint64_t sub_10003AD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003ADF8, v6, v5);
}

uint64_t sub_10003ADF8()
{
  v1 = *(v0 + 16);

  [*(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButton) setEnabled:1];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003AEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10003AF40, v6, v5);
}

uint64_t sub_10003AF40()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_10003A928;

    return sub_100020C38();
  }

  else
  {

    **(v0 + 16) = *(v0 + 56) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

void sub_10003B06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = a1;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  a5(0, 0, v10, a4, v14);
}

uint64_t sub_10003B1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_10003B244, v7, v6);
}

uint64_t sub_10003B244()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_10003B344;
    v3 = *(v0 + 32);

    return sub_1000206A8(v3);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10003B344()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10003B488, v3, v2);
}

uint64_t sub_10003B488()
{

  **(v0 + 16) = *(v0 + 64) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003B5FC()
{
  v1 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  result = __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  if ((v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButtonPressed] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButtonPressed] = 1;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = v0;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;
    sub_100007654(0, 0, v4, &unk_100067228, v8);
  }

  return result;
}

uint64_t sub_10003B738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000047BC(&unk_100089E30, &qword_100067230);
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_10003B814, v6, v5);
}

uint64_t sub_10003B814()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_10003BD2C;

    return sub_10001EED4(1);
  }

  else
  {

    v4 = v0[4];
    v5 = v0[2];
    v6 = *(v5 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_cancelButton);
    v7 = v5 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent;
    v8 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent(0);

    v9 = String._bridgeToObjectiveC()();

    [v6 setTitle:v9 forState:0];

    v10 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView;
    v11 = *(v5 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView);
    LODWORD(v8) = *(v7 + *(v8 + 68));
    v12 = objc_opt_self();
    v13 = &selRef_blueTheme;
    if (!v8)
    {
      v13 = &selRef_whiteTheme;
    }

    v14 = *v13;
    v15 = v11;
    v16 = [v12 v14];
    [v15 setOfferTheme:v16];

    [*(v5 + v10) setLockupSize:ASCLockupViewSizeSmallOfferButton];
    v17 = *(v5 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButton);
    v18 = *(v5 + v10);
    [v17 frame];
    [v18 setLayoutMargins:{0.0, CGRectGetHeight(v34) * -0.5, 0.0, 0.0}];

    UIButton.configuration.getter();
    v19 = type metadata accessor for UIButton.Configuration();
    v20 = (*(*(v19 - 8) + 48))(v4, 1, v19);
    v21 = v0[4];
    if (v20)
    {
      sub_1000419A4(v0[4], v0[3]);
      UIButton.configuration.setter();
      sub_100011C14(v21, &unk_100089E30, &qword_100067230);
    }

    else
    {
      UIButton.Configuration.title.setter();
      UIButton.configuration.setter();
    }

    [v17 setTitle:0 forState:0];
    [*(v5 + v10) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 addSubview:*(v5 + v10)];
    v22 = [*(v5 + v10) centerXAnchor];
    v23 = [v17 centerXAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    [v24 setActive:1];
    v25 = [*(v5 + v10) centerYAnchor];
    v26 = [v17 centerYAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    [v27 setActive:1];
    v28 = [*(v5 + v10) heightAnchor];
    [v17 frame];
    v29 = [v28 constraintEqualToConstant:CGRectGetHeight(v35)];

    [v29 setActive:1];
    v30 = [*(v5 + v10) widthAnchor];
    [v17 frame];
    v31 = [v30 constraintEqualToConstant:CGRectGetHeight(v36)];

    [v31 setActive:1];
    sub_10003CA80();

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_10003BD2C()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10003BE70, v3, v2);
}

uint64_t sub_10003BE70()
{

  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_cancelButton);
  v4 = v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent;
  v5 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent(0);

  v6 = String._bridgeToObjectiveC()();

  [v3 setTitle:v6 forState:0];

  v7 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView;
  v8 = *(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView);
  LODWORD(v5) = *(v4 + *(v5 + 68));
  v9 = objc_opt_self();
  v10 = &selRef_blueTheme;
  if (!v5)
  {
    v10 = &selRef_whiteTheme;
  }

  v11 = *v10;
  v12 = v8;
  v13 = [v9 v11];
  [v12 setOfferTheme:v13];

  [*(v2 + v7) setLockupSize:ASCLockupViewSizeSmallOfferButton];
  v14 = *(v2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButton);
  v15 = *(v2 + v7);
  [v14 frame];
  [v15 setLayoutMargins:{0.0, CGRectGetHeight(v32) * -0.5, 0.0, 0.0}];

  UIButton.configuration.getter();
  v16 = type metadata accessor for UIButton.Configuration();
  v17 = (*(*(v16 - 8) + 48))(v1, 1, v16);
  v18 = v0[4];
  if (v17)
  {
    sub_1000419A4(v0[4], v0[3]);
    UIButton.configuration.setter();
    sub_100011C14(v18, &unk_100089E30, &qword_100067230);
  }

  else
  {
    UIButton.Configuration.title.setter();
    UIButton.configuration.setter();
  }

  [v14 setTitle:0 forState:0];
  [*(v2 + v7) setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 addSubview:*(v2 + v7)];
  v19 = [*(v2 + v7) centerXAnchor];
  v20 = [v14 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  [v21 setActive:1];
  v22 = [*(v2 + v7) centerYAnchor];
  v23 = [v14 centerYAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  [v24 setActive:1];
  v25 = [*(v2 + v7) heightAnchor];
  [v14 frame];
  v26 = [v25 constraintEqualToConstant:CGRectGetHeight(v33)];

  [v26 setActive:1];
  v27 = [*(v2 + v7) widthAnchor];
  [v14 frame];
  v28 = [v27 constraintEqualToConstant:CGRectGetHeight(v34)];

  [v28 setActive:1];
  sub_10003CA80();

  v29 = v0[1];

  return v29();
}

uint64_t sub_10003C30C()
{
  v1 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  result = __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  if (*&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp])
  {

    v5 = AppLibrary.App.id.getter();

    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = v0;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    v9[5] = v5;
    sub_100054600(0, 0, v4, &unk_100067218, v9);
  }

  return result;
}

uint64_t sub_10003C458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10003C4F0, v7, v6);
}

uint64_t sub_10003C4F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_10003C61C;

    return sub_100021534();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_10003C794;
    v5 = v0[3];

    return sub_10004C41C(v5);
  }
}

uint64_t sub_10003C61C()
{
  v1 = *v0;
  v2 = *v0;

  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_10003C794;
  v4 = *(v1 + 24);

  return sub_10004C41C(v4);
}

uint64_t sub_10003C794()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_10003C934;
  }

  else
  {
    v5 = sub_10003C8D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10003C8D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003C934()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10003C9B4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

unsigned __int8 *sub_10003CA80()
{
  v1 = v0;
  v2 = type metadata accessor for InstallSheetContext();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent, v2);
  v6 = InstallSheetContext.itemID.getter();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  v10 = HIBYTE(v8) & 0xF;
  v11 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
  }

  if ((v8 & 0x1000000000000000) == 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v37[0] = v6;
      v37[1] = v8 & 0xFFFFFFFFFFFFFFLL;
      if (v6 == 43)
      {
        if (v10)
        {
          if (--v10)
          {
            v24 = 0;
            v25 = v37 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              if (!is_mul_ok(v24, 0xAuLL))
              {
                break;
              }

              v17 = __CFADD__(10 * v24, v26);
              v24 = 10 * v24 + v26;
              if (v17)
              {
                break;
              }

              ++v25;
              if (!--v10)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_75:
        __break(1u);
        return result;
      }

      if (v6 != 45)
      {
        if (v10)
        {
          v29 = 0;
          v30 = v37;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            if (!is_mul_ok(v29, 0xAuLL))
            {
              break;
            }

            v17 = __CFADD__(10 * v29, v31);
            v29 = 10 * v29 + v31;
            if (v17)
            {
              break;
            }

            ++v30;
            if (!--v10)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v10)
      {
        if (--v10)
        {
          v18 = 0;
          v19 = v37 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            if (!is_mul_ok(v18, 0xAuLL))
            {
              break;
            }

            v17 = 10 * v18 >= v20;
            v18 = 10 * v18 - v20;
            if (!v17)
            {
              break;
            }

            ++v19;
            if (!--v10)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        result = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v13 = *result;
      if (v13 == 43)
      {
        if (v11 >= 1)
        {
          v10 = v11 - 1;
          if (v11 != 1)
          {
            v21 = 0;
            if (result)
            {
              v22 = result + 1;
              while (1)
              {
                v23 = *v22 - 48;
                if (v23 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v21, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v17 = __CFADD__(10 * v21, v23);
                v21 = 10 * v21 + v23;
                if (v17)
                {
                  goto LABEL_63;
                }

                ++v22;
                if (!--v10)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_74;
      }

      if (v13 != 45)
      {
        if (v11)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v28 = *result - 48;
              if (v28 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v27, 0xAuLL))
              {
                goto LABEL_63;
              }

              v17 = __CFADD__(10 * v27, v28);
              v27 = 10 * v27 + v28;
              if (v17)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v11)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        LOBYTE(v10) = 1;
        goto LABEL_64;
      }

      if (v11 >= 1)
      {
        v10 = v11 - 1;
        if (v11 != 1)
        {
          v14 = 0;
          if (result)
          {
            v15 = result + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v14, 0xAuLL))
              {
                goto LABEL_63;
              }

              v17 = 10 * v14 >= v16;
              v14 = 10 * v14 - v16;
              if (!v17)
              {
                goto LABEL_63;
              }

              ++v15;
              if (!--v10)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v10) = 0;
LABEL_64:
          v38 = v10;
          v32 = v10;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v38 = 0;
  sub_10003F578(v6, v8, 10);
  v32 = v35;
LABEL_65:

  if ((v32 & 1) == 0)
  {
    type metadata accessor for AppLibrary();
    static AppLibrary.current.getter();
    v33 = AppLibrary.app(forAppleItemID:)();

    v34 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp;
    *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp) = v33;

    result = sub_10003D35C();
    if (*(v1 + v34))
    {
      __chkstk_darwin(result);
      *(&v36 - 2) = v1;

      withObservationTracking<A>(_:onChange:)();
    }
  }

  return result;
}

uint64_t sub_10003CF0C()
{
  v0 = sub_1000047BC(&qword_100089E28, &qword_100067208);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000047BC(&unk_100089E18, qword_100067198);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - v4;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  AppLibrary.App.installation.getter();
  sub_100011C14(v5, &unk_100089E18, qword_100067198);
  AppLibrary.App.isInstalling.getter();
  AppLibrary.App.isInstalled.getter();
  AppLibrary.App.installationError.getter();
  sub_100011C14(v2, &qword_100089E28, &qword_100067208);
}

void sub_10003D088(uint64_t a1)
{
  v1 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v1 - 8);
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
    sub_100007654(0, 0, v3, &unk_100067200, v9);
  }
}

uint64_t sub_10003D1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003D274, v6, v5);
}

uint64_t sub_10003D274()
{
  v1 = *(v0 + 16);

  sub_10003D35C();
  if (*(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp))
  {
    v2 = *(v0 + 16);
    *(swift_task_alloc() + 16) = v2;

    withObservationTracking<A>(_:onChange:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10003D35C()
{
  v1 = type metadata accessor for InstallSheetContext();
  v79 = *(v1 - 8);
  v80 = v1;
  __chkstk_darwin(v1);
  v78 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AppLibrary.App.Installation();
  v4 = *(v3 - 8);
  v87 = v3;
  v88 = v4;
  v5 = __chkstk_darwin(v3);
  v81 = v6;
  v82 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = &v76 - v7;
  v8 = sub_1000047BC(&unk_100089E18, qword_100067198);
  v9 = __chkstk_darwin(v8 - 8);
  v83 = (&v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v12 = &v76 - v11;
  v13 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for InstallSheetContext.Source();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent(0);
  result = __chkstk_darwin(v21);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp];
  if (v25)
  {
    v76 = result;
    v86 = v0;
    v77 = &v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent];
    sub_100041ED0(&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent], v24, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
    v85 = v25;

    InstallSheetContext.source.getter();
    if ((*(v18 + 88))(v20, v17) == enum case for InstallSheetContext.Source.webWithContext(_:))
    {
      (*(v18 + 96))(v20, v17);
      (*(v14 + 32))(v16, v20, v13);
      v26 = InstallSheetContext.Source.WebInstallContext.isUpdate.getter();
      (*(v14 + 8))(v16, v13);
      sub_100041F38(v24, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
      v27 = v87;
      v28 = (v26 & 1) != 0 && *&v86[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_lastProgressUpdate] == 0.0;
    }

    else
    {
      sub_100041F38(v24, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
      (*(v18 + 8))(v20, v17);
      v28 = 0;
      v27 = v87;
    }

    v29 = v88;
    if ((AppLibrary.App.isInstalled.getter() & 1) != 0 && !v28)
    {
      goto LABEL_9;
    }

    AppLibrary.App.installation.getter();
    v30 = *(v29 + 48);
    if (v30(v12, 1, v27) == 1)
    {
      sub_100011C14(v12, &unk_100089E18, qword_100067198);
    }

    else
    {
      v31 = AppLibrary.App.Installation.progress.getter();
      (*(v29 + 8))(v12, v27);
      [v31 fractionCompleted];
      v33 = v32;

      if (v33 >= 1.0)
      {
LABEL_9:
        sub_10003E9C0();
      }
    }

    v34 = v83;
    AppLibrary.App.installation.getter();
    if (v30(v34, 1, v27) == 1)
    {
      sub_100011C14(v34, &unk_100089E18, qword_100067198);
      v35 = [objc_opt_self() indeterminateProgressMetadata];
      v36 = [objc_allocWithZone(ASCLocalOffer) initWithMetadata:v35 action:0];
      v37 = v86;
    }

    else
    {
      v38 = *(v29 + 32);
      v85 = v29 + 32;
      v83 = v38;
      v38(v84, v34, v27);
      v39 = objc_opt_self();
      v40 = AppLibrary.App.Installation.progress.getter();
      [v40 fractionCompleted];
      v42 = v41;

      v43 = [v39 progressMetadataWithValue:v42];
      v87 = [objc_allocWithZone(ASCLocalOffer) initWithMetadata:v43 action:0];

      if ((v77[*(v76 + 68)] & 1) == 0)
      {
        v44 = *&v86[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView];
        v45 = objc_opt_self();
        v46 = v44;
        v47 = [v45 whiteColor];
        v48 = [v45 whiteColor];
        v49 = [v45 whiteColor];
        v50 = [v45 whiteColor];
        v51 = [v45 systemBlueColor];
        v52 = [objc_allocWithZone(ASCOfferTheme) initWithTitleBackgroundColor:v47 titleTextColor:v48 subtitleTextColor:v49 iconTintColor:v50 progressColor:v51];

        [v46 setOfferTheme:v52];
        v29 = v88;
      }

      v53 = v84;
      v54 = AppLibrary.App.Installation.progress.getter();
      v89 = v54;
      swift_getKeyPath();
      v55 = v82;
      (*(v29 + 16))(v82, v53, v27);
      v56 = (*(v29 + 80) + 24) & ~*(v29 + 80);
      v57 = swift_allocObject();
      v37 = v86;
      *(v57 + 16) = v86;
      v83(v57 + v56, v55, v27);
      v58 = v37;
      v59 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      (*(v29 + 8))(v53, v27);
      v35 = *&v58[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressKVOToken];
      *&v58[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressKVOToken] = v59;
      v36 = v87;
    }

    v60 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_currentLockup;
    v61 = *&v37[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_currentLockup];
    if (v61)
    {
      v62 = *&v37[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView];
      v63 = v61;
      v64 = v62;
      v65 = [v63 lockupWithOffer:v36];
      [v64 setLockup:v65];
    }

    else
    {
      v67 = v78;
      v66 = v79;
      v68 = v80;
      (*(v79 + 16))(v78, v77, v80);
      InstallSheetContext.itemID.getter();
      (*(v66 + 8))(v67, v68);
      v69 = objc_allocWithZone(ASCAdamID);
      v70 = String._bridgeToObjectiveC()();

      v71 = [v69 initWithStringValue:v70];

      v72 = [objc_allocWithZone(ASCLockup) initWithID:v71 kind:ASCLockupKindApp metrics:0 icon:0 heading:0 title:0 subtitle:0 ageRating:0 offer:v36];
      v73 = *&v37[v60];
      *&v37[v60] = v72;
      v74 = v72;

      v75 = *&v37[OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView];
      [v75 setLockup:v74];
    }
  }

  return result;
}

uint64_t sub_10003DDAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for AppLibrary.App.Installation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a4, v6);
  type metadata accessor for MainActor();
  v14 = a3;
  v15 = static MainActor.shared.getter();
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = v14;
  (*(v7 + 32))(&v17[v16], v9, v6);
  sub_100007654(0, 0, v12, &unk_1000671F0, v17);
}

uint64_t sub_10003DFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003E044, v7, v6);
}

uint64_t sub_10003E044()
{
  v1 = v0[8];

  v2 = *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_currentLockup);
  if (v2)
  {
    v3 = v0[8];
    v4 = v2;
    v5 = AppLibrary.App.Installation.progress.getter();
    [v5 fractionCompleted];
    v7 = v6;

    v8 = [objc_opt_self() progressMetadataWithValue:v7];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = objc_allocWithZone(ASCLocalOffer);
    v0[6] = sub_1000416DC;
    v0[7] = v9;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10005F9E8;
    v0[5] = &unk_10007F560;
    v11 = _Block_copy(v0 + 2);

    v12 = [v10 initWithMetadata:v8 action:v11];
    _Block_release(v11);

    if (*(v3 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_lastProgressUpdate) <= v7)
    {
      v13 = v0[8];
      *(v3 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_lastProgressUpdate) = v7;
      v14 = *(v13 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView);
      v15 = [v4 lockupWithOffer:v12];
      [v14 setLockup:v15];
    }
  }

  v16 = v0[1];

  return v16();
}

void sub_10003E270(uint64_t a1)
{
  v1 = type metadata accessor for InstallSheetContext();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000047BC(&unk_100089E18, qword_100067198);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v9 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installingApp))
  {

    return;
  }

  AppLibrary.App.installation.getter();
  v10 = type metadata accessor for AppLibrary.App.Installation();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {

    sub_100011C14(v7, &unk_100089E18, qword_100067198);
LABEL_7:

    return;
  }

  v12 = AppLibrary.App.Installation.progress.getter();
  (*(v11 + 8))(v7, v10);
  v13 = [v12 isPaused];
  v45 = v12;
  if (v13)
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000105E8(v14, qword_10008C4C0);
    v15 = v9;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v18 = 136446210;
      (*(v2 + 16))(v4, v15 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent, v1);
      v19 = InstallSheetContext.logKey.getter();
      v44 = v15;
      v21 = v20;
      (*(v2 + 8))(v4, v1);
      v22 = sub_10000F78C(v19, v21, &v46);
      v15 = v44;

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] Resuming install", v18, 0xCu);
      sub_10001059C(v43);
    }

    v23 = v45;
    [v45 resume];

LABEL_21:

    return;
  }

  if ([v12 isPausable])
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000105E8(v24, qword_10008C4C0);
    v25 = v9;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v28 = 136446210;
      (*(v2 + 16))(v4, v25 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent, v1);
      v29 = InstallSheetContext.logKey.getter();
      v44 = v25;
      v31 = v30;
      (*(v2 + 8))(v4, v1);
      v32 = sub_10000F78C(v29, v31, &v46);
      v25 = v44;

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}s] Pausing install", v28, 0xCu);
      sub_10001059C(v43);
    }

    v23 = v45;
    [v45 pause];

    goto LABEL_21;
  }

  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_1000105E8(v33, qword_10008C4C0);
  v34 = v9;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v37 = 136446210;
    (*(v2 + 16))(v4, v34 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_localizedContent, v1);
    v43 = v35;
    v38 = InstallSheetContext.logKey.getter();
    v40 = v39;
    (*(v2 + 8))(v4, v1);
    v41 = sub_10000F78C(v38, v40, &v46);

    *(v37 + 4) = v41;
    v35 = v43;
    _os_log_impl(&_mh_execute_header, v43, v36, "[%{public}s] progress button pressed but no action can be taken", v37, 0xCu);
    sub_10001059C(v44);
  }
}

id sub_10003E9C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressKVOToken;
  v3 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressKVOToken);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of NSKeyValueObservation.invalidate()();

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  v5 = *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_allowButton);
  type metadata accessor for LocalizedCombinedApprovalAndInstallContent(0);

  v6 = String._bridgeToObjectiveC()();

  [v5 setTitle:v6 forState:0];

  [v5 addTarget:v1 action:"openAppPressed" forControlEvents:64];
  v7 = *(v1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel45CombinedApprovalAndInstallSheetViewController_installProgressView);

  return [v7 removeFromSuperview];
}

uint64_t sub_10003EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_10003EB58, v6, v5);
}

uint64_t sub_10003EB58()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_10003EC54;

    return sub_10001EED4(0);
  }

  else
  {

    **(v0 + 16) = *(v0 + 56) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10003EC54()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10003ED98, v3, v2);
}

uint64_t sub_10003ED98()
{

  **(v0 + 16) = *(v0 + 56) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CombinedApprovalAndInstallSheetViewController(uint64_t a1)
{
  result = qword_100089DD8;
  if (!qword_100089DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003F18C(uint64_t a1)
{
  result = type metadata accessor for LocalizedCombinedApprovalAndInstallContent(319);
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

id sub_10003F51C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unsigned __int8 *sub_10003F578(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10003FAFC(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}