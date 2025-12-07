uint64_t type metadata accessor for TTRIRemindersListMessagingView(uint64_t a1)
{
  result = qword_100777938;
  if (!qword_100777938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10028C7C0(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListLayout();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10028C9C4(void *a1, char a2)
{
  v4 = [a1 horizontalSizeClass];
  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v14 = &UIFontTextStyleTitle3;
      if ((a2 & 1) == 0)
      {
        v14 = &UIFontTextStyleLargeTitle;
      }

      v15 = *v14;
      sub_100003540(0, &qword_100771DF0, UIFont_ptr);
      v16 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();

      return v16;
    }

    else
    {
      sub_100003540(0, &qword_100771DF0, UIFont_ptr);
      return static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
    }
  }

  else
  {
    v5 = [a1 preferredContentSizeCategory];
    v6 = objc_opt_self();
    v7 = UIContentSizeCategoryAccessibilityExtraLarge;
    v8 = [v6 mainScreen];
    [v8 bounds];
    v10 = v9;

    if (v10 == 568.0)
    {
      v11 = UIContentSizeCategoryAccessibilityMedium;

      v7 = v11;
    }

    sub_100003540(0, &qword_100771DF0, UIFont_ptr);
    v12 = static UIFont.roundedCustomFont(textStyle:contentSizeCategory:maximumContentSizeCategory:weight:)();

    return v12;
  }
}

id sub_10028CBA0(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v18 - v12;
  v14 = *(v7 + 16);
  v14(&v18 - v12, a1, v6, v11);
  if ((*(v7 + 88))(v13, v6) == enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:))
  {
    if (a2)
    {
      [a2 removeFromSuperview];
    }

    return 0;
  }

  else
  {
    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = sub_10028BCE8(a3);
    }

    (v14)(v9, a1, v6);
    v16 = a2;
    sub_10028BAD8(v9);
    (*(v7 + 8))(v13, v6);
  }

  return v15;
}

uint64_t sub_10028CD54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10028CD9C()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100777960, &unk_100637590);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRHelpAnchor();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListMessagingView_emptyListMessaging;
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v13, v5);
  TTRRemindersListViewModel.EmptyListMessagingType.helpAnchor.getter();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1000079B4(v4, &qword_100777960, &unk_100637590);
  }

  else
  {
    (*(v10 + 32))(v12, v4, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
      v16 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
      sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v15);
      (*(v16 + 976))(v12, v15, v16);
      swift_unknownObjectRelease();
    }

    (*(v10 + 8))(v12, v9);
  }

  return 0;
}

id sub_10028D05C(uint64_t *a1, id *a2, uint64_t a3)
{
  v118 = a3;
  v125 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v122 = *(v4 - 8);
  v123 = v4;
  __chkstk_darwin(v4);
  v100 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v124 = &v98 - v7;
  __chkstk_darwin(v8);
  v99 = &v98 - v9;
  __chkstk_darwin(v10);
  v119 = &v98 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v116 = (&v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0);
  __chkstk_darwin(v115);
  v132 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRListType.SortingCapability();
  v130 = *(v15 - 8);
  v131 = v15;
  __chkstk_darwin(v15);
  v114 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v129 = &v98 - v18;
  v117 = type metadata accessor for TTRRemindersListDefaultListType();
  v112 = *(v117 - 8);
  __chkstk_darwin(v117);
  v111 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v109);
  v110 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v21 - 8);
  v113 = (&v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v105 = *(Subtasks - 8);
  v106 = Subtasks;
  __chkstk_darwin(Subtasks);
  v107 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v108 = *(v128 - 8);
  __chkstk_darwin(v128);
  v26 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v127 = &v98 - v28;
  v29 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = enum case for TTRListType.PredefinedSmartListType.flagged(_:);
  v35 = *(v30 + 104);
  (v35)(v33, enum case for TTRListType.PredefinedSmartListType.flagged(_:), v29, v31);
  v126 = a2;
  v101 = *a2;
  v36 = TTRListType.PredefinedSmartListType.smartList(in:)();
  v37 = *(v30 + 8);
  v37(v33, v29);
  if (v36)
  {
    v38 = sub_100174F2C();
    v39 = &protocol witness table for REMSmartList;
    v40 = v36;
  }

  else
  {
    v40 = 0;
    v38 = 0;
    v39 = 0;
    v139[2] = 0;
    v139[1] = 0;
  }

  v104 = v40;
  v139[4] = v39;
  v102 = v40 != 0;
  v139[3] = v38;
  v139[0] = v40;
  v35(v33, v34, v29);
  v103 = v36;
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  v37(v33, v29);
  v41 = v127;
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v42 = v108;
  v43 = v128;
  v120 = *(v108 + 8);
  v121 = v108 + 8;
  v120(v26, v128);
  sub_1000079B4(v139, &unk_100775680, &qword_10062E3B0);
  v108 = *(v42 + 16);
  (v108)(v26, v41, v43);
  (*(v105 + 104))(v107, enum case for REMRemindersListDataView.FetchSubtasks.count(_:), v106);
  type metadata accessor for TTRShowFlaggedDataModelSource();
  swift_allocObject();
  v44 = v101;
  v45 = TTRShowFlaggedDataModelSource.init(store:countCompleted:sortingStyle:canChangeSortingStyle:fetchSubtasks:)();
  v46 = v113;
  sub_1001749C4(v126, v113);
  v139[0] = _swiftEmptyArrayStorage;
  sub_10028E41C(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes, &protocol conformance descriptor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218, &unk_1006302E0);
  sub_10010BA44();
  v47 = v110;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v48 = v111;
  (*(v112 + 104))(v111, enum case for TTRRemindersListDefaultListType.cloudKitOnly(_:), v117);
  v49 = sub_10007786C(v46, v47, v48, v139);
  (v108)(v26, v41, v43, v49);
  v50 = v129;
  TTRListType.SortingCapability.init(canChangeSortingStyle:canSortByManual:initialSortingStyle:)();
  v51 = v139[0];
  v52 = v114;
  (*(v130 + 16))(v114, v50, v131);
  type metadata accessor for TTRShowFlaggedViewModelSource(0);
  v53 = swift_allocObject();
  v54 = v103;

  v55 = v51;
  v117 = v45;
  v111 = v55;
  v56 = sub_10028DFEC(v104, v45, v55, v52, v53);
  v114 = v54;

  sub_1001749C4(v126, v46);
  sub_10010BCAC(v139, v136);
  v57 = sub_10028E41C(&qword_100777990, type metadata accessor for TTRShowFlaggedViewModelSource, &unk_100646FD0);
  v58 = v132;
  sub_1001749C4(v46, v132);
  v59 = v115;
  sub_10010BCAC(v136, v58 + *(v115 + 20));
  v60 = (v58 + *(v59 + 24));
  *v60 = v56;
  v60[1] = v57;
  v61 = v136[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v138, v135, &qword_100769608, &unk_1006302F0);
  v63 = *(v135[5] + 8);
  *(v62 + 32) = v135[4];
  *(v62 + 40) = v63;
  sub_10000794C(&v137, v133, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v64 = v61;
  swift_unknownObjectRelease();
  *(v62 + 48) = v134;
  sub_100004758(v133);
  sub_100004758(v135);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v65 = swift_allocObject();
  v66 = sub_1003A8868(v64, v56, v62, v65);
  v112 = v56;

  sub_10010BD08(v136);
  sub_100174ECC(v46, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v67 = *(v59 + 28);
  v113 = v66;
  *(v58 + v67) = v66;
  v68 = v116;
  sub_100078BBC(v116);
  v115 = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v69 = swift_allocObject();
  v70 = v118;
  swift_unknownObjectRetain();
  v71 = sub_1003A56E4(v68, v70, v69);
  v72 = *(v71 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v72 + 112))(ObjectType, v72))
  {
    swift_getObjectType();
    v74 = v99;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v75 = v122;
    v76 = v123;
    v77 = v119;
    (*(v122 + 32))(v119, v74, v123);
  }

  else
  {
    v75 = v122;
    v76 = v123;
    v77 = v119;
    (*(v122 + 104))(v119, enum case for TTRRemindersListLayout.list(_:), v123);
  }

  v119 = sub_1003A4A1C(v77, v71);
  v122 = v78;
  v80 = v79;
  v82 = v81;
  (*(v75 + 8))(v77, v76);
  v123 = swift_getObjectType();
  *(v71 + 24) = *(v82 + 8);
  v126 = v80;
  swift_unknownObjectWeakAssign();
  v83 = *(v71 + 144);
  v84 = swift_getObjectType();
  v85 = *(v83 + 112);

  if (v85(v84, v83))
  {
    swift_getObjectType();
    v86 = v100;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v87 = v124;
    (*(v75 + 32))(v124, v86, v76);
  }

  else
  {
    v87 = v124;
    (*(v75 + 104))(v124, enum case for TTRRemindersListLayout.list(_:), v76);
  }

  v88 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v89 = v119;
  v90 = sub_1003A7DE0(v71, v89, v122, v87, 0, 1, 0, v88);

  v91 = *(v82 + 32);
  v92 = v90;
  v91(v90, &off_100723D78, v123, v82);
  sub_10028E41C(&qword_100770960, type metadata accessor for TTRIRemindersCommonPresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10028E41C(&qword_100777998, type metadata accessor for TTRShowFlaggedViewModelSource, &unk_10063AF78);

  v93 = v92;
  dispatch thunk of TTRShowFlaggedDataModelSource.delegate.setter();

  sub_10056FEB0(v94, &off_10071A9B0);

  v113[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v140, v136, &qword_100769600, &qword_10062E0A0);
  v95 = v136[4];
  swift_unknownObjectRelease();
  *(v95 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v136);
  sub_10000794C(&v141, v136, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_10028E41C(&qword_100770970, type metadata accessor for TTRIRemindersCommonPresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v136);
  v96 = v125;
  v125[3] = v115;
  v96[4] = &off_10071DA58;

  swift_unknownObjectRelease();
  *v96 = v71;
  (*(v130 + 8))(v129, v131);
  v120(v127, v128);
  sub_100174ECC(v132, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v139);
  return v93;
}

id TTRIShowFlaggedAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowFlaggedAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowFlaggedAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowFlaggedAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10028DFEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *a5;
  v39 = a4;
  v40 = v10;
  v41 = type metadata accessor for REMAnalyticsEvent();
  v11 = *(v41 - 8);
  __chkstk_darwin(v41);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  v38 = type metadata accessor for TTRListType.SortingCapability();
  v17 = *(v38 - 8);
  v18 = __chkstk_darwin(v38);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_smartList;
  *(a5 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_smartList) = 0;
  v22 = a5 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_completedRemindersCount;
  *v22 = 0;
  v22[8] = 1;
  *(a5 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_hasIncompleteOrCompletedReminders) = 2;
  *(a5 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  *(a5 + v21) = a1;
  (*(v17 + 16))(v20, a4, v18);
  v23 = a1;
  v24 = sub_1003A649C(a2, a3, v20, a5);

  sub_10031C6C8(v16);
  v25 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v25 - 8) + 56))(v16, 0, 1, v25);
  sub_10056F540(v16);
  sub_1000079B4(v16, &unk_10078A380, &qword_10062DE60);
  type metadata accessor for TTRUserDefaults();
  v26 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v27 = sub_100058000(&qword_100770980, &unk_1006339B0);
  v28 = &v13[*(v27 + 48)];
  v29 = &v13[*(v27 + 80)];
  v30 = enum case for REMRemindersOpenUserOperation.SmartListType.flagged(_:);
  v31 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v31 - 8) + 104))(v13, v30, v31);
  v32 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v33 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v33 - 8) + 104))(v13, v32, v33);
  *v28 = TTRUserDefaults.activitySessionId.getter();
  v28[1] = v34;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v29 = _typeName(_:qualified:)();
  v29[1] = v35;
  v36 = v41;
  (*(v11 + 104))(v13, enum case for REMAnalyticsEvent.openListUserOperation(_:), v41);
  REMAnalyticsManager.post(event:)();

  (*(v17 + 8))(v39, v38);
  (*(v11 + 8))(v13, v36);
  return v24;
}

uint64_t sub_10028E41C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NSString sub_10028E464()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779A0 = result;
  return result;
}

NSString sub_10028E49C()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779A8 = result;
  return result;
}

NSString sub_10028E4D4()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779B0 = result;
  return result;
}

NSString sub_10028E50C()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779B8 = result;
  return result;
}

NSString sub_10028E544()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779C0 = result;
  return result;
}

NSString sub_10028E57C()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779C8 = result;
  return result;
}

NSString sub_10028E5B4()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779D0 = result;
  return result;
}

NSString sub_10028E5EC()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779D8 = result;
  return result;
}

NSString sub_10028E624()
{
  result = String._bridgeToObjectiveC()();
  qword_1007779E0 = result;
  return result;
}

UIMenu sub_10028E65C()
{
  v0._countAndFlagsBits = 0x696D65522077654ELL;
  v0._object = 0xEC0000007265646ELL;
  v1._countAndFlagsBits = 0xD00000000000002CLL;
  v1._object = 0x800000010067C520;
  v2 = TTRLocalizedString(_:comment:)(v0, v1);
  sub_100003540(0, &unk_10076BAB0, UIKeyCommand_ptr);
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 _systemImageNamed:v3];

  v6 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v7._countAndFlagsBits = 0x7473694C2077654ELL;
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x800000010067C550;
  v7._object = 0xE800000000000000;
  v9 = TTRLocalizedString(_:comment:)(v7, v8);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v4 _systemImageNamed:{v10, _swiftEmptyArrayStorage, v2._countAndFlagsBits, v2._object, 0, 0}];

  v12 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v13._countAndFlagsBits = 0x756F72472077654ELL;
  v14._countAndFlagsBits = 0xD000000000000029;
  v14._object = 0x800000010067C5A0;
  v13._object = 0xE900000000000070;
  TTRLocalizedString(_:comment:)(v13, v14);
  sub_100003540(0, &unk_10076BD00, UICommand_ptr);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v4 _systemImageNamed:{v15, _swiftEmptyArrayStorage, v9._countAndFlagsBits, v9._object, 0, 0}];

  v17 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  if (qword_1007670A0 != -1)
  {
    swift_once();
  }

  v18 = qword_1007779A0;
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1006322B0;
  *(preferredElementSize + 32) = v6;
  *(preferredElementSize + 40) = v12;
  *(preferredElementSize + 48) = v17;
  v20 = v18;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v23.value.super.isa = 0;
  v23.is_nil = v18;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v21, 0, v23, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

Class sub_10028E9FC()
{
  sub_100003540(0, &unk_10076BAB0, UIKeyCommand_ptr);
  static TTRCommonAsset.Image.addSectionIcon.getter();
  v0 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  static TTRCommonAsset.Image.addSectionIcon.getter();
  v1 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v2._object = 0x800000010067C490;
  v3._object = 0x800000010067C4B0;
  v2._countAndFlagsBits = 0x1000000000000010;
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  TTRLocalizedString(_:comment:)(v2, v3);
  sub_100003540(0, &unk_10076BD00, UICommand_ptr);
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() _systemImageNamed:{v4, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  v6 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v7._countAndFlagsBits = 0x206F742065766F4DLL;
  v7._object = 0xEF6E6F6974636553;
  v8._countAndFlagsBits = 0xD000000000000030;
  v8._object = 0x800000010067C4E0;
  v9 = TTRLocalizedString(_:comment:)(v7, v8);
  v10 = static UIDeferredMenuElementIdentifier.moveToSectionIdentifier.getter();
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v11 = static TTRCommonAsset.Image.moveToSectionIcon.getter();
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = [objc_opt_self() elementUsingFocusWithIdentifier:v10 shouldCacheItems:{0, _swiftEmptyArrayStorage}];
  v24.value.super.isa = v11;
  v24.is_nil = 0;
  v13.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, 0, v24, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  if (qword_1007670A8 != -1)
  {
    swift_once();
  }

  v14 = qword_1007779A8;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D450;
  *(v15 + 32) = v0;
  *(v15 + 40) = v1;
  *(v15 + 48) = v6;
  *(v15 + 56) = v13;
  v16 = v14;
  v17 = v0;
  v18 = v1;
  v19 = v6;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v25.value.super.isa = 0;
  v25.is_nil = v14;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v20, 0, v25, 1, 0xFFFFFFFFFFFFFFFFLL, v15, v23.super.super.isa).super.super.isa;

  return isa;
}

void sub_10028ED88(void *a1)
{
  [a1 removeMenuForIdentifier:UIMenuOpen];
  isa = sub_10028E65C().super.super.isa;
  [a1 insertChildMenu:isa atStartOfMenuForIdentifier:UIMenuFile];

  v3 = sub_10028E9FC();
  if (qword_1007670A0 != -1)
  {
    swift_once();
  }

  [a1 insertSiblingMenu:v3 afterMenuForIdentifier:qword_1007779A0];

  sub_100003540(0, &unk_10076BD00, UICommand_ptr);
  static TTRLocalizableStrings.RemindersList.autoCategorizationTitle.getter();
  static TTRCommonAsset.Image.autoCategorizationIcon.getter();
  v4 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  if (qword_1007670B0 != -1)
  {
    swift_once();
  }

  v5 = qword_1007779B0;
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v4;
  v80 = v5;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v83.value.super.isa = 0;
  v83.is_nil = v5;
  v8.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v7, 0, v83, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  if (qword_1007670A8 != -1)
  {
    swift_once();
  }

  [a1 insertSiblingMenu:v8.super.super.isa afterMenuForIdentifier:qword_1007779A8];

  v9._countAndFlagsBits = 0x7473694C206E6950;
  v10._countAndFlagsBits = 0xD000000000000028;
  v10._object = 0x8000000100671590;
  v9._object = 0xE800000000000000;
  TTRLocalizedString(_:comment:)(v9, v10);
  v11 = String._bridgeToObjectiveC()();
  v12 = objc_opt_self();
  v13 = [v12 _systemImageNamed:v11];

  v14 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1007670B8 != -1)
  {
    swift_once();
  }

  v15 = qword_1007779B8;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10062D420;
  *(v16 + 32) = v14;
  v17 = v15;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v84.value.super.isa = 0;
  v84.is_nil = v15;
  v19 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v18, 0, v84, 1, 0xFFFFFFFFFFFFFFFFLL, v16, 0).super.super.isa;
  [a1 insertSiblingMenu:v19 afterMenuForIdentifier:v80];

  v20._countAndFlagsBits = 0x694C206572616853;
  v21._countAndFlagsBits = 0xD00000000000002ALL;
  v21._object = 0x800000010067C140;
  v20._object = 0xEA00000000007473;
  TTRLocalizedString(_:comment:)(v20, v21);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v12 _systemImageNamed:v22];

  v24 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1007670C0 != -1)
  {
    swift_once();
  }

  v25 = qword_1007779C0;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10062D420;
  *(v26 + 32) = v24;
  v79 = v25;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v85.value.super.isa = 0;
  v85.is_nil = v25;
  v28 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v27, 0, v85, 1, 0xFFFFFFFFFFFFFFFFLL, v26, 0).super.super.isa;
  [a1 insertSiblingMenu:v28 afterMenuForIdentifier:v17];

  v29._object = 0x800000010067C170;
  v30._countAndFlagsBits = 0xD000000000000035;
  v30._object = 0x800000010067C190;
  v29._countAndFlagsBits = 0xD000000000000015;
  TTRLocalizedString(_:comment:)(v29, v30);
  v31 = String._bridgeToObjectiveC()();
  v32 = [v12 _systemImageNamed:v31];

  v33 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v34._countAndFlagsBits = 0xD000000000000011;
  v34._object = 0x800000010067C1D0;
  v35._countAndFlagsBits = 0xD000000000000031;
  v35._object = 0x800000010067C1F0;
  TTRLocalizedString(_:comment:)(v34, v35);
  v36 = String._bridgeToObjectiveC()();
  v37 = [v12 _systemImageNamed:{v36, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  v38 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1007670C8 != -1)
  {
    swift_once();
  }

  v39 = qword_1007779C8;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10062D410;
  *(v40 + 32) = v33;
  *(v40 + 40) = v38;
  v77 = v39;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v86.value.super.isa = 0;
  v86.is_nil = v39;
  v42 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v41, 0, v86, 1, 0xFFFFFFFFFFFFFFFFLL, v40, 0).super.super.isa;
  [a1 insertSiblingMenu:v42 afterMenuForIdentifier:v79];

  v43._countAndFlagsBits = 0x666E4920776F6853;
  v43._object = 0xE90000000000006FLL;
  v44._countAndFlagsBits = 0xD00000000000001BLL;
  v44._object = 0x800000010067C230;
  children = TTRLocalizedString(_:comment:)(v43, v44)._countAndFlagsBits;
  sub_100003540(0, &unk_10076BAB0, UIKeyCommand_ptr);
  v46 = String._bridgeToObjectiveC()();
  v47 = [v12 _systemImageNamed:v46];

  v48 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1007670D0 != -1)
  {
    swift_once();
  }

  v49 = qword_1007779D0;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10062D420;
  *(v50 + 32) = v48;
  v78 = v49;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v87.value.super.isa = 0;
  v87.is_nil = v49;
  v52 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v51, 0, v87, 1, 0xFFFFFFFFFFFFFFFFLL, v50, children).super.super.isa;
  [a1 insertSiblingMenu:v52 afterMenuForIdentifier:v77];

  v53._countAndFlagsBits = 0x6D65542077656956;
  v53._object = 0xEE00736574616C70;
  v54._countAndFlagsBits = 0xD00000000000002BLL;
  v54._object = 0x800000010067C250;
  TTRLocalizedString(_:comment:)(v53, v54);
  v55 = String._bridgeToObjectiveC()();
  v56 = [v12 _systemImageNamed:v55];

  v57 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v58._object = 0x800000010067C280;
  v59._countAndFlagsBits = 0xD00000000000002BLL;
  v59._object = 0x800000010067C250;
  v58._countAndFlagsBits = 0x1000000000000013;
  TTRLocalizedString(_:comment:)(v58, v59);
  v60 = String._bridgeToObjectiveC()();
  v61 = [v12 _systemImageNamed:{v60, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  v62 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1007670D8 != -1)
  {
    swift_once();
  }

  v63 = qword_1007779D8;
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_10062D410;
  *(v64 + 32) = v57;
  *(v64 + 40) = v62;
  v65 = v63;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v88.value.super.isa = 0;
  v88.is_nil = v63;
  v67 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v66, 0, v88, 1, 0xFFFFFFFFFFFFFFFFLL, v64, 0).super.super.isa;
  [a1 insertSiblingMenu:v67 afterMenuForIdentifier:v78];

  v68._countAndFlagsBits = 0xA680E2746E697250;
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = 0x800000010067C2A0;
  v68._object = 0xA800000000000000;
  TTRLocalizedString(_:comment:)(v68, v69);
  v70 = String._bridgeToObjectiveC()();
  v71 = [v12 _systemImageNamed:v70];

  v72 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1007670E0 != -1)
  {
    swift_once();
  }

  v73 = qword_1007779E0;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_10062D420;
  *(v74 + 32) = v72;
  v75 = v73;
  v76._countAndFlagsBits = 0;
  v76._object = 0xE000000000000000;
  v89.value.super.isa = 0;
  v89.is_nil = v73;
  v81.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v76, 0, v89, 1, 0xFFFFFFFFFFFFFFFFLL, v74, 0).super.super.isa;
  [a1 insertSiblingMenu:v81.super.super.isa afterMenuForIdentifier:v65];
}

void *sub_10028FAC0()
{
  v1 = OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView____lazy_storage___insetsUpdater;
  if (*(v0 + OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView____lazy_storage___insetsUpdater))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView____lazy_storage___insetsUpdater);
  }

  else
  {
    type metadata accessor for TTRIShowRemindersScrollViewInsetsUpdater();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2[5] = 2;
    v2[6] = 0;
    v2[7] = 0;
    v2[8] = 0;
    swift_unknownObjectWeakAssign();
    v2[3] = sub_100290088;
    v2[4] = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_10028FC0C(double a1, double a2)
{
  isEscapingClosureAtFileLocation = v2;
  ObjectType = swift_getObjectType();
  v7 = objc_opt_self();
  if ([v7 areAnimationsEnabled])
  {
    v8 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView_ownerViewControllerFor52010514);
    if (v8)
    {
      v9 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView_ownerViewControllerFor52010514 + 8);

      v11 = v8(v10);
      v12 = sub_1000301AC(v8, v9);
      if (v11)
      {
        if ([v11 _appearState] == 1)
        {
          ObjectType = swift_allocObject();
          *(ObjectType + 16) = isEscapingClosureAtFileLocation;
          *(ObjectType + 24) = a1;
          *(ObjectType + 32) = a2;
          v13 = swift_allocObject();
          *(v13 + 16) = sub_100290190;
          *(v13 + 24) = ObjectType;
          v16[4] = sub_100026410;
          v16[5] = v13;
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 1107296256;
          v16[2] = sub_100026440;
          v16[3] = &unk_10071DAB8;
          v14 = _Block_copy(v16);
          v15 = isEscapingClosureAtFileLocation;

          [v7 performWithoutAnimation:v14];

          _Block_release(v14);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
        }
      }
    }
  }

  v17.receiver = isEscapingClosureAtFileLocation;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "setContentOffset:", a1, a2);
}

id sub_10028FF28(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView_ownerViewControllerFor52010514];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView____lazy_storage___insetsUpdater] = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 systemBackgroundColor];
    [v7 setBackgroundColor:v8];

    a1 = v8;
  }

  return v5;
}

id sub_100290088(void *a1)
{
  [a1 contentInset];
  [a1 setContentInset:?];
  [a1 verticalScrollIndicatorInsets];

  return [a1 setVerticalScrollIndicatorInsets:?];
}

id sub_100290190()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4.receiver = *(v0 + 16);
  v4.super_class = type metadata accessor for TTRIRemindersListCollectionView();
  return objc_msgSendSuper2(&v4, "setContentOffset:", v1, v2);
}

uint64_t AnyListEntityID.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmartListType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnyListEntityID(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002923BC(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v5, v12, v2);
      v14 = 1;
    }

    else
    {
      (*(v3 + 32))(v5, v12, v2);
      v14 = 2;
    }

    Hasher._combine(_:)(v14);
    sub_100292B14(&qword_10076BB40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    Hasher._combine(_:)(0);
    sub_100292B14(&qword_100777A20, &type metadata accessor for SmartListType, &protocol conformance descriptor for SmartListType);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v7 + 8))(v9, v6);
  }
}

Swift::Int AnyListEntityID.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnyListEntityID.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10029050C(uint64_t a1)
{
  Hasher.init(_seed:)();
  AnyListEntityID.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t AnyListEntityID.entityIdentifierString.getter()
{
  v1 = type metadata accessor for URL();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
  v6 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMNavigationSpecifier();
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SmartListType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AnyListEntityID(0);
  __chkstk_darwin(v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002923BC(v0, v18);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100292420(v18);
    v19 = v27;
    (*(v6 + 104))(v8, enum case for REMNavigationSpecifier.SmartListPathSpecifier.showInAccountsList(_:), v27);
    v21 = v28;
    v20 = v29;
    (*(v28 + 104))(v5, enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:), v29);
    sub_100290988(v8, v5, v11);
    (*(v21 + 8))(v5, v20);
    (*(v6 + 8))(v8, v19);
    v22 = v30;
    REMNavigationSpecifier.url.getter();
    (*(v25 + 8))(v11, v26);
    v23 = URL.absoluteString.getter();
    (*(v31 + 8))(v22, v32);
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    v23 = SmartListType.id.getter();
    (*(v13 + 8))(v15, v12);
  }

  return v23;
}

uint64_t sub_100290988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v39 = a2;
  v40 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SmartListType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AnyListEntityID(0);
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002923BC(v4, v16);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v7 + 32))(v9, v16, v6);
    v17 = *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v18 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v22 = [v18 objectIDWithUUID:isa];

    (*(v7 + 8))(v9, v6);
    v23 = v40;
    *v40 = v22;
    v24 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
    (*(*(v24 - 8) + 16))(&v23[v17], v39, v24);
    v25 = &enum case for REMNavigationSpecifier.list(_:);
LABEL_5:
    v26 = *v25;
    v27 = type metadata accessor for REMNavigationSpecifier();
    return (*(*(v27 - 8) + 104))(v23, v26, v27);
  }

  (*(v11 + 32))(v13, v16, v10);
  v20 = (*(v11 + 88))(v13, v10);
  if (v20 == enum case for SmartListType.today(_:))
  {
    v21 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
    v23 = v40;
    (*(*(v21 - 8) + 16))(v40, a1, v21);
    v25 = &enum case for REMNavigationSpecifier.today(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for SmartListType.scheduled(_:))
  {
    v29 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
    v23 = v40;
    (*(*(v29 - 8) + 16))(v40, a1, v29);
    v25 = &enum case for REMNavigationSpecifier.scheduled(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for SmartListType.all(_:))
  {
    v30 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
    v23 = v40;
    (*(*(v30 - 8) + 16))(v40, a1, v30);
    v25 = &enum case for REMNavigationSpecifier.allReminders(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for SmartListType.flagged(_:))
  {
    v31 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
    v23 = v40;
    (*(*(v31 - 8) + 16))(v40, a1, v31);
    v25 = &enum case for REMNavigationSpecifier.flagged(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for SmartListType.assigned(_:))
  {
    v32 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
    v23 = v40;
    (*(*(v32 - 8) + 16))(v40, a1, v32);
    v25 = &enum case for REMNavigationSpecifier.assigned(_:);
    goto LABEL_5;
  }

  if (v20 == enum case for SmartListType.completed(_:))
  {
    v33 = type metadata accessor for REMNavigationSpecifier.SmartListPathSpecifier();
    v23 = v40;
    (*(*(v33 - 8) + 16))(v40, a1, v33);
    v25 = &enum case for REMNavigationSpecifier.completed(_:);
    goto LABEL_5;
  }

  v34 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
  v35 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
  v36 = v40;
  (*(*(v35 - 8) + 104))(v40, v34, v35);
  v37 = enum case for REMNavigationSpecifier.root(_:);
  v38 = type metadata accessor for REMNavigationSpecifier();
  (*(*(v38 - 8) + 104))(v36, v37, v38);
  return (*(v11 + 8))(v13, v10);
}

uint64_t static AnyListEntityID.entityIdentifier(for:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v5 = sub_100058000(&unk_100792F80, &unk_10063BD70);
  __chkstk_darwin(v5 - 8);
  v7 = &v63 - v6;
  v8 = type metadata accessor for REMNavigationSpecifier();
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v64 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v65 = &v63 - v11;
  v12 = sub_100058000(&unk_100775660, &qword_10062F6B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v63 - v13;
  v15 = type metadata accessor for URL();
  v70 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v68 = &v63 - v19;
  v75 = a1;
  v76 = a2;
  v73 = a1;
  v74 = a2;
  v71 = 0xD000000000000013;
  v72 = 0x800000010067C670;
  sub_10029247C();
  sub_1002924D0();

  if (BidirectionalCollection<>.starts<A>(with:)())
  {

    v75 = 0xD000000000000016;
    v76 = 0x800000010067C690;
    v73 = a1;
    v74 = a2;
    v71 = 46;
    v72 = 0xE100000000000000;
    sub_10007D420();
    v20 = (StringProtocol.components<A>(separatedBy:)() + 16);
    if (*v20)
    {
      v21 = &v20[2 * *v20];
      v22 = *v21;
      v23 = v21[1];

      if (v22 == 7105633 && v23 == 0xE300000000000000)
      {
        goto LABEL_8;
      }
    }

    else
    {

      v22 = 0;
      v23 = 0xE000000000000000;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_9:
      v24._countAndFlagsBits = v22;
      v24._object = v23;
      String.append(_:)(v24);

      goto LABEL_10;
    }

LABEL_8:
    v22 = 0x6E696D65726C6C61;

    v23 = 0xEC00000073726564;
    goto LABEL_9;
  }

LABEL_10:
  URL.init(string:)();

  v25 = v70;
  if ((*(v70 + 48))(v14, 1, v15) == 1)
  {
    sub_1000079B4(v14, &unk_100775660, &qword_10062F6B0);
LABEL_17:
    v34 = type metadata accessor for AnyListEntityID(0);
    return (*(*(v34 - 8) + 56))(v69, 1, 1, v34);
  }

  v26 = v68;
  (*(v25 + 32))(v68, v14, v15);
  (*(v25 + 16))(v17, v26, v15);
  REMNavigationSpecifier.init(_:)();
  v27 = v66;
  v28 = v67;
  if ((*(v66 + 48))(v7, 1, v67) == 1)
  {
    (*(v25 + 8))(v26, v15);
    sub_1000079B4(v7, &unk_100792F80, &unk_10063BD70);
    goto LABEL_17;
  }

  v29 = v65;
  (*(v27 + 32))(v65, v7, v28);
  v30 = v64;
  (*(v27 + 16))(v64, v29, v28);
  v31 = (*(v27 + 88))(v30, v28);
  if (v31 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v27 + 8))(v29, v28);
    (*(v25 + 8))(v26, v15);
    (*(v27 + 96))(v30, v28);

    v32 = *(sub_100058000(&qword_100777A40, &qword_10063BDA0) + 48);
    v33 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
LABEL_16:
    (*(*(v33 - 8) + 8))(v30 + v32, v33);
    goto LABEL_17;
  }

  if (v31 == enum case for REMNavigationSpecifier.list(_:) || v31 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v27 + 96))(v30, v28);
    v36 = *v30;
    v37 = v25;
    v38 = *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v39 = [v36 uuid];
    v40 = v69;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v27 + 8))(v29, v28);
    (*(v37 + 8))(v68, v15);
    v41 = type metadata accessor for AnyListEntityID(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    v42 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
    return (*(*(v42 - 8) + 8))(v30 + v38, v42);
  }

  if (v31 == enum case for REMNavigationSpecifier.newList(_:))
  {
    goto LABEL_22;
  }

  if (v31 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v27 + 8))(v29, v28);
    (*(v25 + 8))(v26, v15);
    (*(v27 + 96))(v30, v28);

    v32 = *(sub_100058000(&unk_10076DF50, &unk_100631A20) + 48);
    v33 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
    goto LABEL_16;
  }

  if (v31 == enum case for REMNavigationSpecifier.section(_:) || v31 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v27 + 8))(v29, v28);
    (*(v25 + 8))(v26, v15);
    (*(v27 + 96))(v30, v28);

    v32 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v33 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
    goto LABEL_16;
  }

  if (v31 == enum case for REMNavigationSpecifier.root(_:))
  {
LABEL_22:
    v43 = *(v27 + 8);
    v43(v29, v28);
    (*(v25 + 8))(v26, v15);
    v43(v30, v28);
    goto LABEL_17;
  }

  if (v31 == enum case for REMNavigationSpecifier.today(_:))
  {
    v44 = *(v27 + 8);
    v44(v29, v28);
    (*(v25 + 8))(v26, v15);
    v45 = &enum case for SmartListType.today(_:);
LABEL_37:
    v46 = *v45;
    v47 = type metadata accessor for SmartListType();
    v48 = v69;
    (*(*(v47 - 8) + 104))(v69, v46, v47);
    v49 = type metadata accessor for AnyListEntityID(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    return (v44)(v30, v28);
  }

  if (v31 == enum case for REMNavigationSpecifier.scheduled(_:))
  {
    v44 = *(v27 + 8);
    v44(v29, v28);
    (*(v25 + 8))(v26, v15);
    v45 = &enum case for SmartListType.scheduled(_:);
    goto LABEL_37;
  }

  if (v31 == enum case for REMNavigationSpecifier.allReminders(_:))
  {
    v44 = *(v27 + 8);
    v44(v29, v28);
    (*(v25 + 8))(v26, v15);
    v45 = &enum case for SmartListType.all(_:);
    goto LABEL_37;
  }

  if (v31 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    v44 = *(v27 + 8);
    v44(v29, v28);
    (*(v25 + 8))(v26, v15);
    v45 = &enum case for SmartListType.flagged(_:);
    goto LABEL_37;
  }

  if (v31 == enum case for REMNavigationSpecifier.search(_:))
  {
LABEL_39:
    v50 = *(v66 + 8);
    v51 = v67;
    v50(v65, v67);
    (*(v70 + 8))(v68, v15);
    v50(v64, v51);
    goto LABEL_17;
  }

  v52 = v31;
  if (v31 == enum case for REMNavigationSpecifier.assigned(_:))
  {
    v53 = *(v66 + 8);
    v54 = v67;
    v53(v65, v67);
    (*(v70 + 8))(v68, v15);
    v55 = &enum case for SmartListType.assigned(_:);
LABEL_42:
    v56 = *v55;
    v57 = type metadata accessor for SmartListType();
    v58 = v69;
    (*(*(v57 - 8) + 104))(v69, v56, v57);
    v59 = type metadata accessor for AnyListEntityID(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
    return (v53)(v64, v54);
  }

  if (v31 == enum case for REMNavigationSpecifier.siriFoundInApps(_:) || v31 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    goto LABEL_39;
  }

  if (v31 == enum case for REMNavigationSpecifier.completed(_:))
  {
    v53 = *(v66 + 8);
    v54 = v67;
    v53(v65, v67);
    (*(v70 + 8))(v68, v15);
    v55 = &enum case for SmartListType.completed(_:);
    goto LABEL_42;
  }

  if (v31 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    goto LABEL_39;
  }

  v60 = enum case for REMNavigationSpecifier.newReminder(_:);
  v61 = *(v66 + 8);
  v61(v65, v67);
  (*(v70 + 8))(v68, v15);
  if (v52 == v60)
  {
    goto LABEL_17;
  }

  v62 = type metadata accessor for AnyListEntityID(0);
  (*(*(v62 - 8) + 56))(v69, 1, 1, v62);
  return (v61)(v64, v67);
}

uint64_t _s9Reminders15AnyListEntityIDO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v40 = type metadata accessor for UUID();
  v2 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v37 - v5;
  v7 = type metadata accessor for SmartListType();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnyListEntityID(0);
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  v19 = sub_100058000(&qword_100777AF8, qword_1006376E8);
  __chkstk_darwin(v19 - 8);
  v21 = &v37 - v20;
  v23 = *(v22 + 56);
  sub_1002923BC(v41, &v37 - v20);
  sub_1002923BC(v42, &v21[v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v28 = v9;
    v29 = v39;
    sub_1002923BC(v21, v18);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v29 + 32))(v28, &v21[v23], v7);
      sub_100292B14(&unk_100777B00, &type metadata accessor for SmartListType, &protocol conformance descriptor for SmartListType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v45 == v43 && v46 == v44)
      {
        v34 = *(v29 + 8);
        v34(v28, v7);

        v34(v18, v7);
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v36 = *(v29 + 8);
        v36(v28, v7);

        v36(v18, v7);
        if ((v35 & 1) == 0)
        {
          sub_100292420(v21);
          goto LABEL_13;
        }
      }

      sub_100292420(v21);
      v26 = 1;
      return v26 & 1;
    }

    (*(v29 + 8))(v18, v7);
LABEL_12:
    sub_1000079B4(v21, &qword_100777AF8, qword_1006376E8);
LABEL_13:
    v26 = 0;
    return v26 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1002923BC(v21, v12);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v30 = v38;
      v31 = v40;
      (*(v2 + 32))(v38, &v21[v23], v40);
      v26 = static UUID.== infix(_:_:)();
      v32 = *(v2 + 8);
      v32(v30, v31);
      v32(v12, v31);
      goto LABEL_9;
    }

    (*(v2 + 8))(v12, v40);
    goto LABEL_12;
  }

  sub_1002923BC(v21, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v2 + 8))(v15, v40);
    goto LABEL_12;
  }

  v25 = v40;
  (*(v2 + 32))(v6, &v21[v23], v40);
  v26 = static UUID.== infix(_:_:)();
  v27 = *(v2 + 8);
  v27(v6, v25);
  v27(v15, v25);
LABEL_9:
  sub_100292420(v21);
  return v26 & 1;
}

uint64_t type metadata accessor for AnyListEntityID(uint64_t a1)
{
  result = qword_100777AC0;
  if (!qword_100777AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002923BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyListEntityID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100292420(uint64_t a1)
{
  v2 = type metadata accessor for AnyListEntityID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10029247C()
{
  result = qword_100777A28;
  if (!qword_100777A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100777A28);
  }

  return result;
}

unint64_t sub_1002924D0()
{
  result = qword_100777A30;
  if (!qword_100777A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100777A30);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnyListEntityID(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v9 = type metadata accessor for UUID();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v7 = type metadata accessor for UUID();
      }

      else
      {
        v7 = type metadata accessor for SmartListType();
      }

      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for AnyListEntityID(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2 || result == 1)
  {
    v4 = type metadata accessor for UUID();
  }

  else
  {
    if (result)
    {
      return result;
    }

    v4 = type metadata accessor for SmartListType();
  }

  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t initializeWithCopy for AnyListEntityID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for UUID();
  }

  else
  {
    v6 = type metadata accessor for SmartListType();
  }

  (*(*(v6 - 8) + 16))(a1, a2, v6);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for AnyListEntityID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_100292420(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v6 = type metadata accessor for UUID();
    }

    else
    {
      v6 = type metadata accessor for SmartListType();
    }

    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for AnyListEntityID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for UUID();
  }

  else
  {
    v6 = type metadata accessor for SmartListType();
  }

  (*(*(v6 - 8) + 32))(a1, a2, v6);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for AnyListEntityID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_100292420(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {
      v6 = type metadata accessor for UUID();
    }

    else
    {
      v6 = type metadata accessor for SmartListType();
    }

    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100292A50(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for SmartListType();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v4 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100292B14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100292B5C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100777B10);
  v1 = sub_100003E30(v0, qword_100777B10);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100292C64()
{
  v1 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 1.0, 8.0}];
  [v1 setTableHeaderView:v2];

  v3 = *&v0[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableView];
  *&v0[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableView] = v1;
  v4 = v1;

  [v0 setView:v4];
}

id sub_100292D90()
{
  ObjectType = swift_getObjectType();
  v56 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TTRTemplateSharingViewModel();
  v61 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TTRTableViewAnimations();
  v4 = *(v58 - 8);
  *&v5 = __chkstk_darwin(v58).n128_u64[0];
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65.receiver = v0;
  v65.super_class = ObjectType;
  objc_msgSendSuper2(&v65, "viewDidLoad", v5);
  v7 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"didTapCancel:"];
  v8 = [v0 navigationItem];
  v53 = v7;
  [v8 setLeftBarButtonItem:?];

  sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
  static TTRLocalizableStrings.Common.continueButton.getter();
  v63 = ObjectType;
  v62[0] = v0;
  v9 = v0;
  v10 = UIBarButtonItem.init(doneButtonWithCustomTitle:target:action:)();
  v11 = [v9 navigationItem];
  v12 = v10;
  [v11 setRightBarButtonItem:v12];

  v13 = [v9 navigationItem];
  [v13 setLargeTitleDisplayMode:2];

  v14 = *&v9[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_cancelButton];
  *&v9[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_cancelButton] = v7;

  v15 = *&v9[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_commitButton];
  *&v9[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_commitButton] = v10;

  static TTRLocalizableStrings.Templates.showPreview.getter();
  v63 = ObjectType;
  v62[0] = v9;
  v16 = v9;
  v17 = String._bridgeToObjectiveC()();

  v18 = v63;
  if (v63)
  {
    v19 = sub_10000C36C(v62, v63);
    v20 = *(v18 - 8);
    v21 = __chkstk_darwin(v19);
    v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23, v21);
    v24 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v20 + 8))(v23, v18);
    sub_100004758(v62);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v17 style:0 target:v24 action:"didTapShowPreview:"];

  swift_unknownObjectRelease();
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10062D410;
  *(v26 + 32) = [objc_opt_self() flexibleSpaceItem];
  *(v26 + 40) = v25;
  v27 = v25;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setToolbarItems:isa];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D450;
  *(inited + 32) = sub_100293598();
  *(inited + 40) = sub_100293720();
  *(inited + 48) = sub_100293910();
  result = sub_100293B00();
  *(inited + 56) = result;
  v31 = OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableView;
  v32 = *&v16[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableView];
  if (!v32)
  {
    __break(1u);
    goto LABEL_12;
  }

  v63 = sub_100003540(0, &qword_100771B60, UITableView_ptr);
  v64 = &protocol witness table for UITableView;
  v62[0] = v32;
  v33 = v32;
  sub_1003E09F0(inited);
  (*(v4 + 104))(v59, enum case for TTRTableViewAnimations.middle(_:), v58);
  v34 = objc_allocWithZone(type metadata accessor for TTRITableDataController());
  v35 = TTRITableDataController.init(tableView:sections:rowInsertionAnimationType:collapseSectionIfItemsAreHidden:)();
  TTRITableDataController.customSectionSpacing.setter();
  v36 = OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableDataController;
  v37 = *&v16[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableDataController];
  *&v16[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableDataController] = v35;
  v38 = v35;

  result = *&v16[v31];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = [result setDataSource:v38];
  v39 = *&v16[v31];
  if (!v39)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  swift_setDeallocating();
  v40 = v39;
  swift_arrayDestroy();
  [v40 setDelegate:v38];

  v41 = *&v16[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_presenter];
  v42 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_viewModel;
  swift_beginAccess();
  v43 = v41 + v42;
  v44 = v60;
  v45 = v57;
  (*(v61 + 16))(v60, v43, v57);
  v46 = v55;
  v47 = v54;
  v48 = v56;
  v49 = (*(v55 + 104))(v54, enum case for TTRITableDataController.BatchUpdatesApplication.reload(_:), v56);
  if (*&v16[v36])
  {
    v59 = &v52;
    __chkstk_darwin(v49);
    *(&v52 - 2) = v16;
    *(&v52 - 1) = v44;
    v51 = v50;
    TTRITableDataController.performBatchUpdates(by:updates:)();

    v44 = v60;
    (*(v46 + 8))(v47, v48);
  }

  else
  {
    (*(v46 + 8))(v47, v48);
  }

  return (*(v61 + 8))(v44, v45);
}

uint64_t sub_100293598()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___imageSection;
  if (*(v1 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___imageSection))
  {
    v9 = *(v1 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___imageSection);
  }

  else
  {
    v10 = type metadata accessor for TTRITableSectionHeaderFooter();
    v11 = *(*(v10 - 8) + 56);
    v11(v7, 1, 1, v10);
    static TTRLocalizableStrings.Templates.publicTemplateContainsNoImagesText.getter();
    TTRITableSectionHeaderFooter.init(title:height:)();
    v11(v4, 0, 1, v10);
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v9 = TTRITableSection.init(header:footer:items:)();
    *(v1 + v8) = v9;
  }

  return v9;
}

uint64_t sub_100293720()
{
  v1 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___dateAndTimeSection;
  if (*(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___dateAndTimeSection))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___dateAndTimeSection);
  }

  else
  {
    v9 = type metadata accessor for TTRITableSectionHeaderFooter();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 1, 1, v9);
    static TTRLocalizableStrings.Templates.dateAndTimeLinkOptionDescription.getter();
    TTRITableSectionHeaderFooter.init(title:height:)();
    v10(v3, 0, 1, v9);
    sub_100058000(&qword_1007768B0, &qword_1006338A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    v12 = v0;
    v13 = sub_100294FB4(&OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___dateAndTimeCell, &static TTRLocalizableStrings.Templates.dateAndTimeLinkOption.getter, sub_1002960F8);
    v14 = sub_100296058();
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v8 = TTRITableSection.init(header:footer:items:)();
    *(v12 + v7) = v8;
  }

  return v8;
}

uint64_t sub_100293910()
{
  v1 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___tagsSection;
  if (*(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___tagsSection))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___tagsSection);
  }

  else
  {
    v9 = type metadata accessor for TTRITableSectionHeaderFooter();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 1, 1, v9);
    static TTRLocalizableStrings.Templates.tagsLinkOptionDescription.getter();
    TTRITableSectionHeaderFooter.init(title:height:)();
    v10(v3, 0, 1, v9);
    sub_100058000(&qword_1007768B0, &qword_1006338A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    v12 = v0;
    v13 = sub_100294FB4(&OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___tagsCell, &static TTRLocalizableStrings.Templates.tagsLinkOption.getter, sub_1002960BC);
    v14 = sub_100296058();
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v8 = TTRITableSection.init(header:footer:items:)();
    *(v12 + v7) = v8;
  }

  return v8;
}

uint64_t sub_100293B00()
{
  v1 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___locationsSection;
  if (*(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___locationsSection))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___locationsSection);
  }

  else
  {
    v9 = type metadata accessor for TTRITableSectionHeaderFooter();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 1, 1, v9);
    static TTRLocalizableStrings.Templates.locationsLinkOptionDescription.getter();
    TTRITableSectionHeaderFooter.init(title:height:)();
    v10(v3, 0, 1, v9);
    sub_100058000(&qword_1007768B0, &qword_1006338A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    v12 = v0;
    v13 = sub_100294FB4(&OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___locationsCell, &static TTRLocalizableStrings.Templates.locationsLinkOption.getter, sub_10029601C);
    v14 = sub_100296058();
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v8 = TTRITableSection.init(header:footer:items:)();
    *(v12 + v7) = v8;
  }

  return v8;
}

void sub_100293D38(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TTRTemplateSharingViewModel.Purpose();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRTemplateSharingViewModel();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewWillAppear:", a1 & 1, v10);
  v13 = UIViewController.effectiveNavigationControllerForBars.getter();
  if (v13)
  {
    v14 = v13;
    [v13 setToolbarHidden:0 animated:a1 & 1];
  }

  v15 = *&v1[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableView];
  if (v15)
  {
    v23[3] = sub_100003540(0, &qword_100771B60, UITableView_ptr);
    v23[4] = &protocol witness table for UITableView;
    v23[0] = v15;
    v16 = v15;
    UIViewController.deselectRowsAlongsideTransition(for:animated:)();
    sub_100004758(v23);
    sub_1002962C8(&qword_100777BD8, v17, type metadata accessor for TTRITemplateSharingConfigurationViewController, "Q}\r");
    TTRKeyboardAvoidance<>.startAvoidingKeyboard()();
    v18 = *&v1[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_presenter];
    v19 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_viewModel;
    swift_beginAccess();
    (*(v9 + 16))(v12, v18 + v19, v8);
    v20 = [v1 navigationItem];
    TTRTemplateSharingViewModel.purpose.getter();
    TTRTemplateSharingViewModel.Purpose.viewTitle.getter();
    (*(v5 + 8))(v7, v4);
    v21 = String._bridgeToObjectiveC()();

    [v20 setTitle:v21];

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1002941F4()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillLayoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_needsTableCellResize) == 1)
  {
    *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_needsTableCellResize) = 0;
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_10029629C;
    *(v3 + 24) = v2;
    v7[4] = sub_100026410;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100026440;
    v7[3] = &unk_10071DBB8;
    v4 = _Block_copy(v7);
    v5 = v0;

    [v1 performWithoutAnimation:v4];
    _Block_release(v4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1002943D0(uint64_t a1)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v60 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = &v59 - v5;
  v6 = sub_100058000(&qword_100777BC0, &unk_100633890);
  __chkstk_darwin(v6 - 8);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v64 = &v59 - v10;
  v11 = type metadata accessor for TTRTemplateSharingTemplateContentAttributes();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  sub_100293720();
  TTRTemplateSharingViewModel.contentAttributes.getter();
  static TTRTemplateSharingTemplateContentAttributes.dateAndTime.getter();
  v70 = sub_1002962C8(&qword_100777BC8, 255, &type metadata accessor for TTRTemplateSharingTemplateContentAttributes, &protocol conformance descriptor for TTRTemplateSharingTemplateContentAttributes);
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  v19(v14, v11);
  v69 = v19;
  v19(v17, v11);
  TTRITableSection.isHidden.setter();

  v67 = OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___dateAndTimeSection;

  v20 = TTRITableSection.isHidden.getter();

  if ((v20 & 1) == 0)
  {
    sub_100294FB4(&OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___dateAndTimeCell, &static TTRLocalizableStrings.Templates.dateAndTimeLinkOption.getter, sub_1002960F8);
    v66 = TTRITableCell.content.getter();

    TTRTemplateSharingViewModel.includesDateAndTime.getter();
    v21 = TTRITableCellContent.state.modify();
    TTRIToggleCellContentState.isOn.setter();
    v21(v71, 0);
  }

  sub_100293910();
  TTRTemplateSharingViewModel.contentAttributes.getter();
  static TTRTemplateSharingTemplateContentAttributes.tags.getter();
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v22 = v69;
  v69(v14, v11);
  v22(v17, v11);
  TTRITableSection.isHidden.setter();

  v66 = OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___tagsSection;

  v23 = TTRITableSection.isHidden.getter();

  v68 = v18;
  if ((v23 & 1) == 0)
  {
    sub_100294FB4(&OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___tagsCell, &static TTRLocalizableStrings.Templates.tagsLinkOption.getter, sub_1002960BC);
    v24 = TTRITableCell.content.getter();

    TTRTemplateSharingViewModel.includesTags.getter();
    v25 = a1;
    v26 = TTRITableCellContent.state.modify();
    v22 = v69;
    TTRIToggleCellContentState.isOn.setter();
    v26(v71, 0);
    a1 = v25;
  }

  sub_100293B00();
  TTRTemplateSharingViewModel.contentAttributes.getter();
  static TTRTemplateSharingTemplateContentAttributes.locations.getter();
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v22(v14, v11);
  v22(v17, v11);
  TTRITableSection.isHidden.setter();

  v65 = OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___locationsSection;

  v27 = TTRITableSection.isHidden.getter();

  if ((v27 & 1) == 0)
  {
    sub_100294FB4(&OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___locationsCell, &static TTRLocalizableStrings.Templates.locationsLinkOption.getter, sub_10029601C);
    v28 = TTRITableCell.content.getter();

    TTRTemplateSharingViewModel.includesLocations.getter();
    v29 = a1;
    v30 = TTRITableCellContent.state.modify();
    v22 = v69;
    TTRIToggleCellContentState.isOn.setter();
    v30(v71, 0);
    a1 = v29;
  }

  sub_100293598();
  TTRTemplateSharingViewModel.contentAttributes.getter();
  static TTRTemplateSharingTemplateContentAttributes.images.getter();
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v22(v14, v11);
  v22(v17, v11);
  TTRITableSection.isHidden.setter();

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006322B0;
  v32 = v66;
  *(inited + 32) = *(a1 + v67);
  *(inited + 40) = *&v32[a1];
  *(inited + 48) = *(a1 + v65);
  v71[0] = _swiftEmptyArrayStorage;
  v33 = inited & 0xC000000000000001;

  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_57;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

  while (1)
  {
    if (TTRITableSection.isHidden.getter())
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    if (v33)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_56;
      }
    }

    if (TTRITableSection.isHidden.getter())
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    if (v33)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {

      goto LABEL_22;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
  v34 = TTRITableSection.isHidden.getter();
  v35 = v64;
  if (v34)
  {
  }

  else
  {
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v36 = v71[0];
  v37 = v71[0] < 0 || (v71[0] & 0x4000000000000000) != 0;
  if (v37)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_36;
    }
  }

  else if (!*(v71[0] + 16))
  {
    goto LABEL_36;
  }

  if ((v36 & 0xC000000000000001) != 0)
  {
    goto LABEL_63;
  }

  if (!*(v36 + 16))
  {
    __break(1u);
    goto LABEL_65;
  }

  while (2)
  {
    TTRITableSection.header.getter();
    v38 = type metadata accessor for TTRITableSectionHeaderFooter();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v35, 1, v38) == 1)
    {
      sub_1000079B4(v35, &qword_100777BC0, &unk_100633890);
      v40 = v60;
      static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
      UIListContentConfiguration.usingRoundedSystemFont()();
      LODWORD(v70) = v37;
      v41 = v61;
      v42 = v62;
      v35 = v61 + 8;
      v69 = *(v61 + 8);
      v69(v40, v62);
      static TTRLocalizableStrings.Templates.includeText.getter();
      v43 = v63;
      UIListContentConfiguration.text.setter();
      (*(v41 + 16))(v40, v43, v42);
      v37 = v70;
      TTRITableSectionHeaderFooter.init(listContentConfiguration:height:)();
      (*(v39 + 56))(v8, 0, 1, v38);
      TTRITableSection.header.setter();

      v69(v63, v42);
    }

    else
    {

      sub_1000079B4(v35, &qword_100777BC0, &unk_100633890);
    }

LABEL_36:
    if (v37)
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
      if (v44 < 0)
      {
        goto LABEL_66;
      }

      v45 = v44;
      v46 = v44 != 0;
      if (_CocoaArrayWrapper.endIndex.getter() >= v46)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= v45)
        {
          goto LABEL_42;
        }

        __break(1u);
        break;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      continue;
    }

    break;
  }

  v45 = *(v36 + 16);
  v46 = v45 != 0;
  if (v45 < v46)
  {
    goto LABEL_62;
  }

LABEL_42:
  if ((v36 & 0xC000000000000001) != 0 && v45 > 1)
  {
    type metadata accessor for TTRITableSection();

    v47 = v46;
    do
    {
      v48 = v47 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v47);
      v47 = v48;
    }

    while (v45 != v48);
  }

  else
  {
  }

  if (v37)
  {
    _CocoaArrayWrapper.subscript.getter();
    v50 = v49;
    v46 = v51;
    v53 = v52;

    v53 >>= 1;
    v55 = v53 - v46;
    v54 = v53 <= v46;
    if (v53 == v46)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v50 = v36 + 32;
    v55 = v45 - v46;
    v54 = v45 <= v46;
    if (v45 == v46)
    {
      goto LABEL_55;
    }
  }

  if (v54)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  v56 = type metadata accessor for TTRITableSectionHeaderFooter();
  v57 = *(*(v56 - 8) + 56);
  v58 = v50 + 8 * v46;
  do
  {
    v58 += 8;
    v57(v8, 1, 1, v56);

    TTRITableSection.header.setter();

    --v55;
  }

  while (v55);
LABEL_55:
  swift_unknownObjectRelease();
}

uint64_t sub_100294FB4(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = sub_1002954AC(v3, a2, a3);
    *(v3 + v4) = v6;
  }

  return v6;
}

double sub_100295018()
{
  v1 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_presenter);
  if (qword_100766EF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_10076B0D8);
  v6 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Template Sharing cancel", 23, 2, v6);

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v4;
  sub_10009E31C(0, 0, v3, &unk_1006377B8, v9);

  return result;
}

double sub_1002951D4()
{
  v1 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  UIViewController.endFirstResponderEditing()();
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_presenter);
  if (qword_100766EF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_10076B0D8);
  v6 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Template Sharing create or update link", 38, 2, v6);

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v4;
  sub_10009E31C(0, 0, v3, &unk_1006377B0, v9);

  return result;
}

uint64_t sub_100295394(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_1000079B4(v9, &qword_10076AE40, &qword_10062EE50);
}

uint64_t sub_1002954AC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = sub_100058000(&qword_100776880, &qword_1006337B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TTRIToggleCellContentState();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v9 = (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  a2(v9);
  TTRIToggleCellContentState.init(icon:title:subtitle:ttriAccessibilitySubtitle:isOn:isSelectable:isControlHidden:isSeparatorHidden:ttriAccessibilitySimulatesExpandAndCollapse:ttriAccessibilityIsInSimulatedExpandedState:)();
  v10 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent());
  TTRIToggleCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRIToggleCellContent.stateChangeBlock.setter();

  sub_100058000(&qword_100776900, &unk_1006377A0);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

char *sub_10029568C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v8 = type metadata accessor for TTRTemplateSharingViewModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *&result[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_presenter];
    v14 = result;
    swift_unknownObjectRetain();

    v15 = TTRIToggleCellContentState.isOn.getter();
    if (qword_100766EF8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_10076B0D8);
    v17 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44(a3, a4, 2, v17);

    v18 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_viewModel;
    swift_beginAccess();
    (*(v9 + 16))(v11, v13 + v18, v8);
    a5(v15 & 1);
    sub_10009F318(v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1002959C4()
{
  v36 = type metadata accessor for TTRTemplateSharingViewModel.Purpose();
  v1 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRTemplateSharingViewModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = v29 - v14;
  result = [v0 isViewLoaded];
  if (result)
  {
    v31 = v11;
    v33 = v3;
    v34 = v1;
    v17 = *&v0[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_presenter];
    v18 = v9;
    v19 = OBJC_IVAR____TtC9Reminders28TTRITemplateSharingPresenter_viewModel;
    swift_beginAccess();
    v32 = v18;
    v30 = *(v18 + 16);
    v30(v15, v17 + v19, v8);
    *v7 = 1;
    v20 = (*(v5 + 104))(v7, enum case for TTRITableDataController.BatchUpdatesApplication.incremental(_:), v4);
    v35 = v0;
    if (*&v0[OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableDataController])
    {
      v29[1] = v29;
      __chkstk_darwin(v20);
      v29[-2] = v35;
      v29[-1] = v15;
      v22 = v21;
      TTRITableDataController.performBatchUpdates(by:updates:)();
    }

    (*(v5 + 8))(v7, v4);
    v23 = *(v32 + 8);
    v23(v15, v8);
    v24 = v17 + v19;
    v25 = v31;
    v30(v31, v24, v8);
    v26 = [v35 navigationItem];
    v27 = v33;
    TTRTemplateSharingViewModel.purpose.getter();
    TTRTemplateSharingViewModel.Purpose.viewTitle.getter();
    (*(v34 + 8))(v27, v36);
    v28 = String._bridgeToObjectiveC()();

    [v26 setTitle:v28];

    return (v23)(v25, v8);
  }

  return result;
}

id sub_100295D9C()
{
  result = *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableView);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100295E94(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100296438;
  }

  __break(1u);
  return result;
}

void (*sub_100295F14(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return destroy for TTRITemplateSavingDismissAnimationCoordinator.SourceView;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100295F94(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100296014;
  }

  __break(1u);
  return result;
}

unint64_t sub_100296058()
{
  result = qword_100777BD0;
  if (!qword_100777BD0)
  {
    sub_10005D20C(&qword_100776900, &unk_1006377A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100777BD0);
  }

  return result;
}

uint64_t sub_100296134(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_1000A0020(a1, v4, v5, v6);
}

uint64_t sub_1002961E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_10009F7F0(a1, v4, v5, v6);
}

id sub_10029629C()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableView);
  if (result)
  {
    return [result performBatchUpdates:0 completion:0];
  }

  __break(1u);
  return result;
}

uint64_t sub_1002962C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_100296310()
{
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_commitButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_tableDataController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController_needsTableCellResize) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___dateAndTimeCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___tagsCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___locationsCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___dateAndTimeSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___tagsSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___locationsSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders46TTRITemplateSharingConfigurationViewController____lazy_storage___imageSection) = 0;
  if (qword_1007670E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100777B10);
  v2 = sub_100008E04(_swiftEmptyArrayStorage);
  v3 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("init(coder:) has not been implemented", 37, 2uLL, v2, v3);
  __break(1u);
}

uint64_t sub_10029643C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100777BE0);
  v1 = sub_100003E30(v0, qword_100777BE0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100296560()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1007670F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100777BE0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "TTRIWelcomeNavigationViewController dealloc", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_1002968A4()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v1 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_tapGestureRecognizer;
    if (*&v0[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_tapGestureRecognizer])
    {
      return;
    }

    v2 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTap:"];
    [v0 addGestureRecognizer:v2];
    v3 = *&v0[v1];
    *&v0[v1] = v2;
  }

  else
  {
    v4 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_tapGestureRecognizer;
    if (!*&v0[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_tapGestureRecognizer])
    {
      return;
    }

    [v0 removeGestureRecognizer:?];
    v3 = *&v0[v4];
    *&v0[v4] = 0;
  }
}

id sub_100296984(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100058000(&qword_100768B50, &unk_1006378E0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_title;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &unk_10076B050, &unk_100631DF0);
  sub_10000794C(a1, &v12[v14], &unk_10076B050, &unk_100631DF0);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_1000079B4(v12, &unk_10076B050, &unk_100631DF0);
    }

    goto LABEL_6;
  }

  sub_10000794C(v12, v8, &unk_10076B050, &unk_100631DF0);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000079B4(v12, &qword_100768B50, &unk_1006378E0);
    return sub_100296CD0();
  }

  v17 = v20;
  (*(v4 + 32))(v20, &v12[v14], v3);
  sub_10029A238(&qword_100768B58, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle, &protocol conformance descriptor for TTRRemindersListViewModel.SectionHeaderTitle);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v4 + 8);
  v19(v17, v3);
  v19(v8, v3);
  result = sub_1000079B4(v12, &unk_10076B050, &unk_100631DF0);
  if ((v18 & 1) == 0)
  {
    return sub_100296CD0();
  }

  return result;
}

id sub_100296CD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v151 = type metadata accessor for TTRISeparator.Thickness();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v149 = (&v142 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v162 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v153 = &v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v152 = &v142 - v5;
  __chkstk_darwin(v6);
  v159 = &v142 - v7;
  __chkstk_darwin(v8);
  v160 = &v142 - v9;
  v158 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v156 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v155 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v14 - 8);
  v16 = &v142 - v15;
  v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_title;
  swift_beginAccess();
  v22 = v1 + v21;
  v23 = v1;
  sub_10000794C(v22, v16, &unk_10076B050, &unk_100631DF0);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v20, v16, v17);
    TTRRemindersListViewModel.SectionHeaderTitle.defaultTextColor.getter();
    v25 = v155[11](v13, v11);
    if (v25 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:))
    {
      v26 = 0;
      v27 = &selRef_secondaryLabelColor;
      v28 = &selRef_labelColor;
    }

    else
    {
      if (v25 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.secondary(_:))
      {
        v26 = 0;
        v28 = &selRef_secondaryLabelColor;
      }

      else
      {
        if (v25 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.disabled(_:))
        {
LABEL_71:
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          goto LABEL_72;
        }

        v26 = 1;
        v28 = &selRef_tertiaryLabelColor;
      }

      v27 = v28;
    }

    v29 = objc_opt_self();
    v155 = [v29 *v28];
    v154 = [v29 *v27];
    v30 = v156;
    TTRRemindersListViewModel.SectionHeaderTitle.textSize.getter();
    v31 = v157[11](v30, v158);
    v147 = v17;
    v145 = v18;
    if (v31 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:))
    {
      v32 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
      v33 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
      isa = UIFont.withBoldTrait()().super.isa;

      v35 = isa;
      v36 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
      v37 = v36;
      v38 = *(v23 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesTopConstraint);
      if (v26)
      {
        v39 = v36;
        if (v38)
        {
          [v38 setConstant:11.0];
        }

        v52 = *(v23 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesBottomConstraint);
        if (v52)
        {
          v51 = v23;
          [v52 setConstant:9.0];
          goto LABEL_32;
        }
      }

      else
      {
        v44 = v36;
        if (v38)
        {
          [v38 setConstant:14.0];
        }

        v53 = *(v23 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesBottomConstraint);
        if (v53)
        {
          v51 = v23;
          [v53 setConstant:4.0];
          goto LABEL_32;
        }
      }

      goto LABEL_30;
    }

    if (v31 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.medium(_:))
    {
      v32 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
      v40 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
      v41 = UIFont.withBoldTrait()().super.isa;

      v35 = v41;
      v37 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
      v42 = *(v23 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesTopConstraint);
      v43 = v37;
      if (v42)
      {
        [v42 setConstant:12.0];
      }

      v50 = *(v23 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesBottomConstraint);
      if (v50)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v31 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.headline(_:))
      {
LABEL_72:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_73;
      }

      v32 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
      v45 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
      v46 = UIFont.withBoldTrait()().super.isa;

      v35 = v46;
      v47 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
      v48 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesTopConstraint;
      v49 = *(v23 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesTopConstraint);
      if (!v49)
      {
        v51 = v23;
        v37 = v47;
LABEL_32:
        sub_100058000(&unk_100776BD0, &unk_100632860);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062D3F0;
        *(inited + 32) = NSFontAttributeName;
        sub_100003540(0, &qword_100771DF0, UIFont_ptr);
        v146 = v35;
        *(inited + 40) = v35;
        *(inited + 64) = v32;
        *(inited + 72) = NSForegroundColorAttributeName;
        *(inited + 104) = sub_100003540(0, &qword_100772610, UIColor_ptr);
        *(inited + 80) = v155;
        v55 = NSFontAttributeName;
        v56 = NSForegroundColorAttributeName;
        sub_100460A28(inited);
        swift_setDeallocating();
        sub_100058000(&unk_100776BE0, &unk_10062D7F0);
        v57 = swift_arrayDestroy();
        __chkstk_darwin(v57);
        v58 = v154;
        *(&v142 - 2) = v37;
        *(&v142 - 1) = v58;
        v59 = TTRRemindersListViewModel.SectionHeaderTitle.attributedTitleText(baseAttributes:secondaryTextAttributes:)();

        v158 = v37;

        v60 = v51;
        v61 = *(v51 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titleLabel);
        v144 = v59;
        __chkstk_darwin([v61 setAttributedText:v59]);
        *(&v142 - 2) = v58;
        __chkstk_darwin(v62);
        *(&v142 - 2) = v58;
        v63 = TTRRemindersListViewModel.SectionHeaderTitle.attributedSubtitleText(baseAttributes:secondaryTextAttributes:)();

        v157 = v63;
        if (v63)
        {
          v64 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_subtitleLabel;
          v65 = *(v60 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_subtitleLabel);
          p_ivar_lyt = v60;
          if (v65)
          {
            v67 = v63;
          }

          else
          {
            v72 = objc_allocWithZone(UILabel);
            v70 = v63;
            v73 = [v72 init];
            v74 = *(p_ivar_lyt + v64);
            *(p_ivar_lyt + v64) = v73;

            v75 = *(p_ivar_lyt + v64);
            if (!v75)
            {
              goto LABEL_40;
            }

            v76 = v20;
            v77 = v75;
            v63 = v157;
            v78 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
            [v77 setFont:v78];

            v20 = v76;
            v65 = *(p_ivar_lyt + v64);
            if (!v65)
            {
              goto LABEL_40;
            }
          }

          v68 = *(p_ivar_lyt + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesContainer);
          v69 = v65;
          [v68 addArrangedSubview:v69];
          [v69 setAttributedText:v63];

          v70 = v63;
        }

        else
        {
          v71 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_subtitleLabel;
          p_ivar_lyt = v51;
          if (!*(v51 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_subtitleLabel))
          {
            goto LABEL_41;
          }

          [*(v51 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesContainer) removeArrangedSubview:?];
          v70 = *(v51 + v71);
          *(v51 + v71) = 0;
        }

LABEL_40:

LABEL_41:
        v79 = *(p_ivar_lyt + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesContainer);
        v80 = TTRRemindersListViewModel.SectionHeaderTitle.text.getter();
        v82 = v81;

        v83 = HIBYTE(v82) & 0xF;
        if ((v82 & 0x2000000000000000) == 0)
        {
          v83 = v80 & 0xFFFFFFFFFFFFLL;
        }

        if (v83)
        {
          v84 = 0;
        }

        else
        {
          v84 = TTRRemindersListViewModel.SectionHeaderTitle.hidesTitleIfEmpty.getter();
        }

        v85 = v160;
        v156 = v79;
        [v79 setHidden:v84 & 1];
        v86 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_separatorState;
        swift_beginAccess();
        v87 = v161;
        v88 = v162;
        v143 = *(v161 + 16);
        v143(v85, p_ivar_lyt + v86, v162);
        v89 = v159;
        v160 = v20;
        v90 = v87;
        TTRRemindersListViewModel.SectionHeaderTitle.separator.getter();
        sub_10029A238(&qword_100768B70, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator, &protocol conformance descriptor for TTRRemindersListViewModel.SectionHeaderTitle.Separator);
        v91 = dispatch thunk of static Equatable.== infix(_:_:)();
        v92 = *(v87 + 8);
        v92(v89, v88);
        v92(v85, v88);
        v93 = v158;
        if (v91)
        {
          goto LABEL_62;
        }

        TTRRemindersListViewModel.SectionHeaderTitle.separator.getter();
        swift_beginAccess();
        (*(v90 + 40))(p_ivar_lyt + v86, v85, v88);
        swift_endAccess();
        v94 = v152;
        v95 = v143;
        v143(v152, p_ivar_lyt + v86, v88);
        v96 = *(v90 + 88);
        v97 = v96(v94, v88);
        v98 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.inset(_:);
        if (v97 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.inset(_:))
        {
          if (v97 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:))
          {
            goto LABEL_51;
          }

          if (v97 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:))
          {
            goto LABEL_73;
          }
        }

        v163.receiver = p_ivar_lyt;
        v163.super_class = ObjectType;
        if ((objc_msgSendSuper2(&v163, "floating") & 1) == 0)
        {
          v99 = *(p_ivar_lyt + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_isForFirstSection);
          goto LABEL_53;
        }

LABEL_51:
        v99 = 1;
LABEL_53:
        v100 = *(p_ivar_lyt + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparator);
        [v100 setHidden:v99];
        sub_100298F10(0);
        v101 = p_ivar_lyt + v86;
        v102 = v153;
        v103 = v162;
        v95(v153, v101, v162);
        LODWORD(v104) = v96(v102, v103);
        if (v104 == v98)
        {
          (*(v161 + 96))(v102, v103);
          TTRISeparator.dotted.setter();
          (*(v150 + 104))(v149, enum case for TTRISeparator.Thickness.hairline(_:), v151);
          TTRISeparator.thickness.setter();
          v105 = [objc_opt_self() separatorColor];
          TTRISeparator.backgroundColor.setter();
          sub_100058000(&qword_10076B780, &qword_10062D7C0);
          v106 = swift_allocObject();
          v162 = xmmword_10062D420;
          *(v106 + 16) = xmmword_10062D420;
          v107 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparatorLeadingConstraint;
          v108 = *(p_ivar_lyt + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparatorLeadingConstraint);
          if (!v108)
          {
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v109 = v106;
          v110 = p_ivar_lyt;
          v111 = objc_opt_self();
          *(v109 + 32) = v108;
          sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
          v112 = v108;
          v113 = Array._bridgeToObjectiveC()().super.isa;

          [v111 deactivateConstraints:v113];

          p_ivar_lyt = &TTRIAccountsListsTagsHeaderCell.ivar_lyt;
          v114 = [v100 leadingAnchor];
          v115 = [v110 contentView];
          v116 = [v115 layoutMarginsGuide];

          v100 = [v116 leadingAnchor];
          v117 = [v114 constraintEqualToAnchor:v100];

          v118 = *(v110 + v107);
          *(v110 + v107) = v117;

          v104 = swift_allocObject();
          *(v104 + 16) = v162;
          v119 = *(v110 + v107);
          if (v119)
          {
            goto LABEL_61;
          }

          __break(1u);
        }

        v93 = v158;
        if (v104 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:))
        {
LABEL_62:
          v135 = [v156 isHidden];
          v136 = *(p_ivar_lyt + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesBottomConstraint);
          if (v136)
          {
            [v136 setActive:v135 ^ 1];
            v137 = *(p_ivar_lyt + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_contentViewBottomToTopSeparatorBottomConstraint);
            v138 = v147;
            v139 = v160;
            v140 = v146;
            v141 = v157;
            if (v137)
            {
              [v137 setActive:v135];
              sub_100298F10(0);

              return (*(v145 + 8))(v139, v138);
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_68;
        }

        if (v104 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:))
        {
          TTRISeparator.dotted.setter();
          v120 = v149;
          *v149 = 0x4000000000000000;
          (*(v150 + 104))(v120, enum case for TTRISeparator.Thickness.custom(_:), v151);
          TTRISeparator.thickness.setter();
          v121 = [objc_opt_self() tertiarySystemFillColor];
          TTRISeparator.backgroundColor.setter();
          sub_100058000(&qword_10076B780, &qword_10062D7C0);
          v122 = swift_allocObject();
          v162 = xmmword_10062D420;
          *(v122 + 16) = xmmword_10062D420;
          v123 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparatorLeadingConstraint;
          v124 = *(p_ivar_lyt + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparatorLeadingConstraint);
          if (!v124)
          {
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          v125 = v122;
          v110 = p_ivar_lyt;
          v111 = objc_opt_self();
          *(v125 + 32) = v124;
          sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
          v126 = v124;
          v127 = Array._bridgeToObjectiveC()().super.isa;

          [v111 deactivateConstraints:v127];

          v128 = [v100 leadingAnchor];
          v129 = [p_ivar_lyt contentView];
          v130 = [v129 leadingAnchor];

          v131 = [v128 constraintEqualToAnchor:v130];
          v132 = *(p_ivar_lyt + v123);
          *(p_ivar_lyt + v123) = v131;

          v104 = swift_allocObject();
          *(v104 + 16) = v162;
          v119 = *(p_ivar_lyt + v123);
          if (!v119)
          {
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

LABEL_61:
          p_ivar_lyt = v110;
          *(v104 + 32) = v119;
          v133 = v119;
          v134 = Array._bridgeToObjectiveC()().super.isa;

          [v111 activateConstraints:v134];
          v93 = v158;

          goto LABEL_62;
        }

LABEL_73:
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v37 = v47;
      [v49 setConstant:12.0];
      v50 = *(v23 + v48);
      if (v50)
      {
LABEL_23:
        v51 = v23;
        [v50 setConstant:12.0];
        goto LABEL_32;
      }
    }

LABEL_30:
    v51 = v23;
    goto LABEL_32;
  }

  sub_1000079B4(v16, &unk_10076B050, &unk_100631DF0);
  [*(v1 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titleLabel) setAttributedText:0];
  result = *(v1 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_subtitleLabel);
  if (result)
  {
    return [result setAttributedText:0];
  }

  return result;
}

void sub_10029810C(char a1)
{
  v3 = a1 & 1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_isForFirstSection;
  LODWORD(v7) = v1[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_isForFirstSection];
  v1[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_isForFirstSection] = a1;
  if (v7 != v3)
  {
    v10 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_separatorState;
    swift_beginAccess();
    (*(v6 + 16))(v8, &v1[v10], v5);
    v11 = (*(v6 + 88))(v8, v5);
    if (v11 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.inset(_:))
    {
      if (v11 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:))
      {
        goto LABEL_6;
      }

      if (v11 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }
    }

    v14.receiver = v1;
    v14.super_class = ObjectType;
    if ((objc_msgSendSuper2(&v14, "floating") & 1) == 0)
    {
      v12 = v1[v9];
      goto LABEL_8;
    }

LABEL_6:
    v12 = 1;
LABEL_8:
    [*&v1[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparator] setHidden:v12];
    sub_100298F10(0);
  }
}

char *sub_1002982D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v112 = a2;
  v109 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v113 = *(v4 - 8);
  v114 = v4;
  __chkstk_darwin(v4);
  v108 = &v106[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = type metadata accessor for TTRISeparator.Thickness();
  v6 = *(v110 - 8);
  __chkstk_darwin(v110);
  v8 = &v106[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v2[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_title;
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_sectionID;
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  v2[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_isForFirstSection] = 0;
  v13 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_subtitleLabel;
  *&v2[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_subtitleLabel] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesTopConstraint] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesBottomConstraint] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparatorLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_contentViewBottomToTopSeparatorBottomConstraint] = 0;
  v2[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_hasBackgroundColor] = 2;
  *&v2[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_tapGestureRecognizer] = 0;
  v14 = [objc_allocWithZone(UILabel) init];
  v15 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titleLabel;
  *&v3[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titleLabel] = v14;
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v16 = v14;
  v17 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  [v16 setFont:v17];

  v18 = *&v3[v13];
  *&v3[v13] = 0;

  v111 = sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10062D420;
  v20 = *&v3[v15];
  *(v19 + 32) = v20;
  v21 = objc_allocWithZone(NUIContainerStackView);
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  v22 = v20;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = [v21 initWithArrangedSubviews:isa];

  v25 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesContainer;
  *&v3[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesContainer] = v24;
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v3[v25] setAxis:1];
  [*&v3[v25] setArrangedSubviewRemovalPolicy:2];
  [*&v3[v25] setSpacing:4.0];
  v26 = objc_allocWithZone(type metadata accessor for TTRISeparator());
  v27 = TTRISeparator.init(axis:)();
  v28 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparator;
  *&v3[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparator] = v27;
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = *&v3[v28];
  *v8 = 0x4000000000000000;
  (*(v6 + 104))(v8, enum case for TTRISeparator.Thickness.custom(_:), v110);
  v30 = v29;
  TTRISeparator.thickness.setter();

  [*&v3[v28] setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v31 = *&v3[v28];
  v32 = objc_opt_self();
  v33 = v31;
  v34 = v32;
  v35 = v112;
  v36 = [v34 tertiarySystemFillColor];
  TTRISeparator.backgroundColor.setter();

  v37 = *(v113 + 104);
  v107 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:);
  v37(&v3[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_separatorState]);
  if (v35)
  {

    v38 = String._bridgeToObjectiveC()();
  }

  else
  {
    v38 = 0;
  }

  v117.receiver = v3;
  v117.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v117, "initWithReuseIdentifier:", v38);

  v40 = v39;
  v41 = [v40 contentView];
  v42 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparator;
  [v41 addSubview:*&v40[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparator]];

  v43 = [v40 contentView];
  v44 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesContainer;
  [v43 addSubview:*&v40[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesContainer]];

  v45 = [*&v40[v44] topAnchor];
  v46 = [v40 contentView];
  v47 = [v46 topAnchor];

  v48 = [v45 constraintEqualToAnchor:v47 constant:14.0];
  v49 = *&v40[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesTopConstraint];
  v110 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesTopConstraint;
  *&v40[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesTopConstraint] = v48;

  v50 = [*&v40[v42] leadingAnchor];
  v51 = [v40 contentView];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor:v52];
  v54 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparatorLeadingConstraint;
  v55 = *&v40[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparatorLeadingConstraint];
  *&v40[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparatorLeadingConstraint] = v53;

  v56 = [v40 contentView];
  v57 = [v56 bottomAnchor];

  v58 = [*&v40[v44] bottomAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:4.0];

  v60 = *&v40[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesBottomConstraint];
  v109 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesBottomConstraint;
  *&v40[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesBottomConstraint] = v59;

  v61 = [v40 contentView];
  v62 = [v61 bottomAnchor];

  v63 = [*&v40[v42] bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  v65 = *&v40[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_contentViewBottomToTopSeparatorBottomConstraint];
  *&v40[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_contentViewBottomToTopSeparatorBottomConstraint] = v64;

  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1006308D0;
  v67 = *&v40[v54];
  if (!v67)
  {
    __break(1u);
    goto LABEL_15;
  }

  v68 = v66;
  *(v66 + 32) = v67;
  v69 = *&v40[v42];
  v70 = v67;
  v71 = [v69 trailingAnchor];
  v72 = [v40 contentView];
  v73 = [v72 trailingAnchor];

  v74 = [v71 constraintEqualToAnchor:v73];
  v68[5] = v74;
  v111 = v42;
  v75 = [*&v40[v42] topAnchor];
  v76 = [v40 contentView];
  v77 = [v76 topAnchor];

  v78 = [v75 constraintEqualToAnchor:v77];
  v68[6] = v78;
  v79 = [*&v40[v44] leadingAnchor];
  v80 = [v40 contentView];
  v81 = [v80 layoutMarginsGuide];

  v82 = [v81 leadingAnchor];
  v83 = [v79 constraintEqualToAnchor:v82];

  v68[7] = v83;
  v84 = [v40 contentView];

  v85 = [v84 layoutMarginsGuide];
  v86 = [v85 trailingAnchor];

  v87 = [*&v40[v44] trailingAnchor];
  v88 = [v86 constraintEqualToAnchor:v87];

  v68[8] = v88;
  v89 = *&v40[v110];
  if (!v89)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v68[9] = v89;
  v90 = *&v40[v109];
  if (!v90)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v91 = objc_opt_self();
  v92 = v89;
  v93 = v90;

  v68[10] = v93;
  sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
  v94 = Array._bridgeToObjectiveC()().super.isa;

  [v91 activateConstraints:v94];

  sub_100298F10(0);
  sub_100058000(&unk_10076BD70, &unk_10062FF20);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_10062D400;
  *(v95 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v95 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v96 = ObjectType;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v97 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_separatorState;
  swift_beginAccess();
  v98 = v113;
  v99 = &v40[v97];
  v100 = v108;
  v101 = v114;
  (*(v113 + 16))(v108, v99, v114);
  v102 = (*(v98 + 88))(v100, v101);
  v103 = v111;
  if (v102 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.inset(_:))
  {
    goto LABEL_10;
  }

  if (v102 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:))
  {
    goto LABEL_11;
  }

  if (v102 == v107)
  {
LABEL_10:
    v116.receiver = v40;
    v116.super_class = v96;
    if ((objc_msgSendSuper2(&v116, "floating") & 1) == 0)
    {
      v104 = v40[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_isForFirstSection];
      goto LABEL_13;
    }

LABEL_11:
    v104 = 1;
LABEL_13:
    [*&v40[v103] setHidden:v104];
    sub_100298F10(0);

    return v40;
  }

LABEL_17:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100298F10(char a1)
{
  v3 = type metadata accessor for TTRIRemindersListBackground.ViewType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIRemindersListBackground();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10076C030, &qword_1006301C0);
  *&v12 = __chkstk_darwin(v11 - 8).n128_u64[0];
  v14 = &v22 - v13;
  result = [*&v1[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesContainer] isHidden];
  if (result)
  {
    result = [*&v1[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparator] isHidden];
    v16 = result ^ 1;
    if (a1)
    {
      v17 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_hasBackgroundColor;
      goto LABEL_10;
    }

    v17 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_hasBackgroundColor;
    v19 = v1[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_hasBackgroundColor];
    if (v19 == 2 || ((v16 ^ v19) & 1) != 0)
    {
LABEL_10:
      v1[v17] = v16;
      if (result)
      {
        static UIBackgroundConfiguration.clear()();
LABEL_13:
        v21 = type metadata accessor for UIBackgroundConfiguration();
        (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
        return UITableViewHeaderFooterView.backgroundConfiguration.setter();
      }

LABEL_12:
      (*(v4 + 104))(v6, enum case for TTRIRemindersListBackground.ViewType.sectionHeaderFooter(_:), v3);
      v20 = [v1 traitCollection];
      TTRIRemindersListBackground.init(viewType:traitCollection:)();
      TTRIRemindersListBackground.backgroundConfiguration.getter();
      (*(v8 + 8))(v10, v7);
      goto LABEL_13;
    }
  }

  else if ((a1 & 1) != 0 || (v18 = v1[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_hasBackgroundColor], v18 == 2) || (v18 & 1) == 0)
  {
    v1[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_hasBackgroundColor] = 1;
    goto LABEL_12;
  }

  return result;
}

id sub_1002992EC(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v18, "floating", v6);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "setFloating:", a1 & 1);
  v16.receiver = v1;
  v16.super_class = ObjectType;
  result = objc_msgSendSuper2(&v16, "floating");
  if (v9 != result)
  {
    v11 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_separatorState;
    swift_beginAccess();
    (*(v5 + 16))(v8, &v1[v11], v4);
    v12 = (*(v5 + 88))(v8, v4);
    if (v12 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.inset(_:))
    {
      if (v12 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:))
      {
        goto LABEL_6;
      }

      if (v12 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }

    v15.receiver = v1;
    v15.super_class = ObjectType;
    if ((objc_msgSendSuper2(&v15, "floating") & 1) == 0)
    {
      v13 = v1[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_isForFirstSection];
      goto LABEL_8;
    }

LABEL_6:
    v13 = 1;
LABEL_8:
    [*&v1[OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparator] setHidden:v13];
    return sub_100298F10(0);
  }

  return result;
}

unint64_t sub_1002994E0(void *a1, void *a2)
{
  sub_100058000(&unk_100776BD0, &unk_100632860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = NSFontAttributeName;
  v5 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  *(inited + 40) = a1;
  *(inited + 64) = v5;
  *(inited + 72) = NSForegroundColorAttributeName;
  *(inited + 104) = sub_100003540(0, &qword_100772610, UIColor_ptr);
  *(inited + 80) = a2;
  v6 = a1;
  v7 = a2;
  v8 = NSFontAttributeName;
  v9 = NSForegroundColorAttributeName;
  v10 = sub_100460A28(inited);
  swift_setDeallocating();
  sub_100058000(&unk_100776BE0, &unk_10062D7F0);
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_1002995F4(void *a1)
{
  sub_100058000(&unk_100776BD0, &unk_100632860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = NSFontAttributeName;
  v3 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v4 = a1;
  v5 = NSFontAttributeName;
  v6 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  isa = UIFont.withBoldTrait()().super.isa;

  *(inited + 40) = isa;
  *(inited + 64) = v3;
  *(inited + 72) = NSForegroundColorAttributeName;
  *(inited + 104) = sub_100003540(0, &qword_100772610, UIColor_ptr);
  *(inited + 80) = v4;
  v8 = NSForegroundColorAttributeName;
  v9 = sub_100460A28(inited);
  swift_setDeallocating();
  sub_100058000(&unk_100776BE0, &unk_10062D7F0);
  swift_arrayDestroy();
  return v9;
}

unint64_t sub_100299744(void *a1)
{
  sub_100058000(&unk_100776BD0, &unk_100632860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = NSFontAttributeName;
  v3 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v4 = a1;
  v5 = NSFontAttributeName;
  *(inited + 40) = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  *(inited + 64) = v3;
  *(inited + 72) = NSForegroundColorAttributeName;
  *(inited + 104) = sub_100003540(0, &qword_100772610, UIColor_ptr);
  *(inited + 80) = v4;
  v6 = NSForegroundColorAttributeName;
  v7 = sub_100460A28(inited);
  swift_setDeallocating();
  sub_100058000(&unk_100776BE0, &unk_10062D7F0);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_100299914()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titleLabel) text];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_100546970((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v3;
    *(v9 + 5) = v5;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v10 = *(v0 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_subtitleLabel);
  if (v10)
  {
    v11 = [v10 text];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100546970(0, *(v6 + 2) + 1, 1, v6);
      }

      v17 = *(v6 + 2);
      v16 = *(v6 + 3);
      if (v17 >= v16 >> 1)
      {
        v6 = sub_100546970((v16 > 1), v17 + 1, 1, v6);
      }

      *(v6 + 2) = v17 + 1;
      v18 = &v6[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
    }
  }

  if (*(v6 + 2))
  {
    static TTRAccesibility.General.Label.Separator.getter();
    sub_100058000(&unk_100781F20, &unk_10062D7E0);
    sub_10006089C();
    v19 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {

    return 0;
  }

  return v19;
}

id sub_100299B28(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100299BA8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_title;
  swift_beginAccess();
  sub_10000794C(v1 + v10, v5, &unk_10076B050, &unk_100631DF0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000079B4(v5, &unk_10076B050, &unk_100631DF0);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    if (TTRRemindersListViewModel.SectionHeaderTitle.ttrAccessibilityIsPlaceholder.getter())
    {
      Reminder = static TTRAccesibility.RemindersList.Action.CreateReminderHint.getter();
      (*(v7 + 8))(v9, v6);
      return Reminder;
    }

    (*(v7 + 8))(v9, v6);
  }

  v16.receiver = v1;
  v16.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v16, "accessibilityHint");
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  Reminder = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return Reminder;
}

uint64_t type metadata accessor for TTRIRemindersListSectionHeader(uint64_t a1)
{
  result = qword_100777CB0;
  if (!qword_100777CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10029A024(uint64_t a1)
{
  sub_10029A1A4(319, &unk_100768A60, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle);
  if (v1 <= 0x3F)
  {
    sub_10029A1A4(319, &qword_100768A58, &type metadata accessor for TTRRemindersListViewModel.SectionID);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10029A1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10029A238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10029A280()
{
  *(v0 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_title;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_sectionID;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_isForFirstSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_titlesBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_topSeparatorLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_contentViewBottomToTopSeparatorBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_hasBackgroundColor) = 2;
  *(v0 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_tapGestureRecognizer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10029A3EC()
{
  v1 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_sectionID;
    swift_beginAccess();
    sub_10000794C(v0 + v10, v3, &qword_10076B070, &unk_100637140);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      swift_unknownObjectRelease();
      return sub_1000079B4(v3, &qword_10076B070, &unk_100637140);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v11 = sub_10000C36C((v9 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(v9 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
      v12 = *(*v11 + 72);
      v13 = *(*v11 + 80);
      sub_10000C36C((*v11 + 48), v12);
      (*(v13 + 16))(v12, v13);
      v15 = v14;
      ObjectType = swift_getObjectType();
      (*(v15 + 632))(v7, ObjectType, v15);
      swift_unknownObjectRelease();
      (*(v5 + 8))(v7, v4);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10029A644(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000077656956;
  v3 = 0x74786554656D616ELL;
  v4 = a1;
  v5 = 0xEE006E6F69746174;
  v6 = 0x75736F6C63736964;
  v7 = 0xEF65746174536572;
  if (a1 != 4)
  {
    v6 = 0xD000000000000016;
    v7 = 0x800000010066E7D0;
  }

  if (a1 == 3)
  {
    v6 = 0x6F6E6E4177656976;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x800000010066E780;
  v9 = 0xD000000000000018;
  v10 = 0x6F74617261706573;
  v11 = 0xE900000000000072;
  if (a1 == 1)
  {
    v10 = 0x74786554656D616ELL;
    v11 = 0xEC00000077656956;
  }

  if (a1)
  {
    v9 = v10;
    v8 = v11;
  }

  if (a1 <= 2u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 2)
  {
    v13 = v8;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0xEF65746174536572;
        if (v12 != 0x75736F6C63736964)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v2 = 0x800000010066E7D0;
        if (v12 != 0xD000000000000016)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_29;
    }

    v3 = 0x6F6E6E4177656976;
    v2 = 0xEE006E6F69746174;
  }

  else
  {
    if (!a2)
    {
      v2 = 0x800000010066E780;
      if (v12 != 0xD000000000000018)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      v2 = 0xE900000000000072;
      if (v12 != 0x6F74617261706573)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  if (v12 != v3)
  {
LABEL_32:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_29:
  if (v13 != v2)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

uint64_t sub_10029A850(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6F74617261706573;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xE900000000000072;
    }

    else
    {
      v4 = 0x800000010066E810;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000010066E830;
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x756F72676B636162;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (v2 == 3)
    {
      v4 = 0xEF726F6C6F43646ELL;
    }

    else
    {
      v4 = 0x800000010066E860;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F74617261706573;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v8 = 0xE900000000000072;
    }

    else
    {
      v8 = 0x800000010066E810;
    }

    if (v3 != v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v5 = 0x800000010066E860;
    v6 = 0xD000000000000014;
    if (a2 == 3)
    {
      v6 = 0x756F72676B636162;
      v5 = 0xEF726F6C6F43646ELL;
    }

    if (a2 == 2)
    {
      v7 = 0xD00000000000001BLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x800000010066E830;
    }

    else
    {
      v8 = v5;
    }

    if (v3 != v7)
    {
      goto LABEL_36;
    }
  }

  if (v4 != v8)
  {
LABEL_36:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

void sub_10029AA10(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for UICellConfigurationState();
  v97 = *(v10 - 8);
  v98 = v10;
  __chkstk_darwin(v10);
  v96 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for TTRISeparator.Thickness();
  v12 = *(v99 - 8);
  __chkstk_darwin(v99);
  v14 = (&v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v4[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModelObserver] = 0;
  v15 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModel;
  type metadata accessor for ViewModel(0);
  swift_allocObject();
  *&v4[v15] = sub_1002A3914();
  v16 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_updateHelper;
  sub_100058000(&qword_100777F18, &qword_100637D28);
  swift_allocObject();
  *&v4[v16] = TTRObservationTrackingUpdateHelper.init(loggingPrefix:)();
  v17 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_subtitleLabel;
  *&v4[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparatorConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_contentViewBottomToTopSeparatorBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_tapGestureRecognizer] = 0;
  v18 = [objc_allocWithZone(UILabel) init];
  v19 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titleLabel;
  *&v5[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titleLabel] = v18;
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v20 = v18;
  v21 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  [v20 setFont:v21];

  v22 = *&v5[v17];
  *&v5[v17] = 0;

  v101 = sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v23 = swift_allocObject();
  v100 = xmmword_10062D420;
  *(v23 + 16) = xmmword_10062D420;
  v24 = *&v5[v19];
  *(v23 + 32) = v24;
  v25 = objc_allocWithZone(NUIContainerStackView);
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  v26 = v24;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v28 = [v25 initWithArrangedSubviews:isa];

  v29 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesContainer;
  *&v5[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesContainer] = v28;
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v5[v29] setAxis:1];
  [*&v5[v29] setArrangedSubviewRemovalPolicy:2];
  [*&v5[v29] setSpacing:4.0];
  v30 = objc_allocWithZone(type metadata accessor for TTRISeparator());
  v31 = TTRISeparator.init(axis:)();
  v32 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparator;
  *&v5[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparator] = v31;
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = *&v5[v32];
  *v14 = 0x4000000000000000;
  (*(v12 + 104))(v14, enum case for TTRISeparator.Thickness.custom(_:), v99);
  v34 = v33;
  TTRISeparator.thickness.setter();

  [*&v5[v32] setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = *&v5[v32];
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 tertiarySystemFillColor];
  TTRISeparator.backgroundColor.setter();

  v103.receiver = v5;
  v103.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v103, "initWithFrame:", a1, a2, a3, a4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = v39;

  TTRObservationTrackingUpdateHelper.scheduleUpdate.setter();

  v41 = [v40 contentView];
  v42 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparator;
  [v41 addSubview:*&v40[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparator]];

  v43 = [v40 contentView];
  v44 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesContainer;
  [v43 addSubview:*&v40[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesContainer]];

  v45 = [*&v40[v44] topAnchor];
  v46 = [v40 contentView];
  v47 = [v46 topAnchor];

  v48 = [v45 constraintEqualToAnchor:v47 constant:14.0];
  ObjectType = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesTopConstraint;
  v49 = *&v40[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesTopConstraint];
  *&v40[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesTopConstraint] = v48;

  v50 = [*&v40[v42] leadingAnchor];
  v51 = [v40 contentView];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor:v52];
  v54 = swift_allocObject();
  *(v54 + 16) = v100;
  *(v54 + 32) = v53;
  v55 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparatorConstraints;
  swift_beginAccess();
  *&v40[v55] = v54;
  v56 = v53;

  v57 = [v40 contentView];
  v58 = [v57 bottomAnchor];

  v59 = [*&v40[v44] bottomAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:4.0];

  v61 = *&v40[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesBottomConstraint];
  *&v100 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesBottomConstraint;
  *&v40[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesBottomConstraint] = v60;

  v62 = [v40 contentView];
  v63 = [v62 bottomAnchor];

  v64 = [*&v40[v42] bottomAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  v66 = *&v40[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_contentViewBottomToTopSeparatorBottomConstraint];
  *&v40[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_contentViewBottomToTopSeparatorBottomConstraint] = v65;

  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1006308D0;
  *(v67 + 32) = v56;
  v68 = *&v40[v42];
  v101 = v56;
  v69 = [v68 trailingAnchor];
  v70 = [v40 contentView];
  v71 = [v70 trailingAnchor];

  v72 = [v69 constraintEqualToAnchor:v71];
  *(v67 + 40) = v72;
  v73 = [*&v40[v42] topAnchor];
  v74 = [v40 contentView];
  v75 = [v74 topAnchor];

  v76 = [v73 constraintEqualToAnchor:v75];
  *(v67 + 48) = v76;
  v77 = [*&v40[v44] leadingAnchor];
  v78 = [v40 contentView];
  v79 = [v78 layoutMarginsGuide];

  v80 = [v79 leadingAnchor];
  v81 = [v77 constraintEqualToAnchor:v80];

  *(v67 + 56) = v81;
  v82 = [v40 contentView];
  v83 = [v82 layoutMarginsGuide];

  v84 = [v83 trailingAnchor];
  v85 = [*&v40[v44] trailingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];

  *(v67 + 64) = v86;
  v87 = *(ObjectType + v40);
  if (v87)
  {
    *(v67 + 72) = v87;
    v88 = *&v40[v100];
    if (v88)
    {
      v89 = objc_opt_self();
      *(v67 + 80) = v88;
      sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
      v90 = v87;
      v91 = v88;
      v92 = Array._bridgeToObjectiveC()().super.isa;

      [v89 activateConstraints:v92];

      v93 = [v40 _bridgedConfigurationState];

      v94 = v96;
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10029B68C(v94);

      (*(v97 + 8))(v94, v98);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100058000(&qword_100777F20, &unk_100637D30);
      swift_allocObject();
      v95 = TTRViewModelObserver.init(didReceiveNewValue:)();

      *&v40[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModelObserver] = v95;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10029B630(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setNeedsUpdateConfiguration];
  }
}

uint64_t sub_10029B68C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIRemindersListBackground.ViewType();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRIRemindersListBackground();
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v36 = a1;
  v12 = UICellConfigurationState.traitCollection.getter();
  v13 = [v12 horizontalSizeClass];

  swift_getKeyPath();
  v37 = v2;
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__horizontalSizeClass;
  v15 = *(v2 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__horizontalSizeClass);

  v34 = v11;
  if (v15 != v13 && *(v2 + v14) != v13)
  {
    KeyPath = swift_getKeyPath();
    v30 = &v29;
    __chkstk_darwin(KeyPath);
    *(&v29 - 2) = v2;
    *(&v29 - 1) = v13;
    v37 = v2;

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v17 = UICellConfigurationState.isPinned.getter();
  v18 = v17 & 1;
  swift_getKeyPath();
  v37 = v2;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__isPinned;
  v20 = *(v2 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__isPinned);

  if (v18 != v20)
  {
    if (v18 == *(v2 + v19))
    {
      *(v2 + v19) = v17 & 1;
    }

    else
    {
      v21 = swift_getKeyPath();
      v30 = &v29;
      __chkstk_darwin(v21);
      *(&v29 - 2) = v2;
      *(&v29 - 8) = v17 & 1;
      v37 = v2;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  (*(v32 + 104))(v31, enum case for TTRIRemindersListBackground.ViewType.sectionHeaderFooter(_:), v33);
  UICellConfigurationState.traitCollection.getter();
  v22 = v34;
  TTRIRemindersListBackground.init(viewType:traitCollection:)();
  swift_getKeyPath();
  v37 = v2;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__background;
  swift_beginAccess();
  v24 = v35;
  v25 = *(v35 + 16);
  v25(v8, v2 + v23, v6);

  sub_1002A47A0(&qword_100777F10, &type metadata accessor for TTRIRemindersListBackground, &protocol conformance descriptor for TTRIRemindersListBackground);
  LOBYTE(v23) = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v24 + 8);
  v26(v8, v6);
  if ((v23 & 1) == 0)
  {
    v25(v8, v22, v6);

    sub_1002A2464(v8, v27);
  }

  v26(v22, v6);
  sub_1002A26E4();
  return sub_1002A2B7C();
}

void sub_10029BBE8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076B038, &unk_10062F250);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_100058000(&unk_10076B040, &qword_100637BB0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (*(Strong + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModelObserver))
    {

      TTRViewModelObserver.localValue.getter();

      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        sub_1000079B4(v8, &qword_10076B038, &unk_10062F250);
      }

      else
      {
        (*(v10 + 32))(v12, v8, v9);
        TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
        sub_10029C8E8(v5);
        (*(v3 + 8))(v5, v2);
        (*(v10 + 8))(v12, v9);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10029BF48(void *a1, uint64_t a2)
{
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v5.receiver = a1;
  v5.super_class = type metadata accessor for TTRIRemindersListSectionHeader_collectionView();
  objc_msgSendSuper2(&v5, "_bridgedUpdateConfigurationUsingState:", isa);

  sub_10029B68C(a2);
  sub_10029BFC4();
}

void sub_10029BFC4()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076B038, &unk_10062F250);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-v3];
  if (*(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModelObserver))
  {

    TTRViewModelObserver.localValue.getter();

    v5 = sub_100058000(&unk_10076B040, &qword_100637BB0);
    v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
    sub_1000079B4(v4, &qword_10076B038, &unk_10062F250);
    if (v6 != 1)
    {
      updated = TTRObservationTrackingUpdateHelper.hasUpdates.getter();
      if (updated)
      {
        v16[15] = 0;
        __chkstk_darwin(updated);
        v16[-16] = 0;
        *&v16[-8] = v1;
        v8 = TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();
        v16[14] = 1;
        __chkstk_darwin(v8);
        v16[-16] = v9;
        *&v16[-8] = v1;
        v10 = TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();
        v16[13] = 2;
        __chkstk_darwin(v10);
        v16[-16] = v11;
        *&v16[-8] = v1;
        v12 = TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();
        v16[12] = 3;
        __chkstk_darwin(v12);
        v16[-16] = v13;
        *&v16[-8] = v1;
        v14 = TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();
        v16[11] = 4;
        __chkstk_darwin(v14);
        v16[-16] = v15;
        *&v16[-8] = v1;
        TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10029C3A8()
{
  result = sub_1004B6464(&off_1007127A8);
  qword_100777CC0 = result;
  return result;
}

Swift::Int sub_10029C3DC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10029C4E0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10029C5D0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10029C6D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002A3CF4(*a1);
  *a2 = result;
  return result;
}

void sub_10029C700(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0x6F74617261706573;
  v5 = 0x800000010066E830;
  v6 = 0xD00000000000001BLL;
  v7 = 0xEF726F6C6F43646ELL;
  v8 = 0xD000000000000014;
  if (v2 == 3)
  {
    v8 = 0x756F72676B636162;
  }

  else
  {
    v7 = 0x800000010066E860;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000010066E810;
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

double sub_10029C7C0()
{
  if (qword_1007670F8 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_10029C82C()
{
  v1 = *v0;
  v2 = 0x6F74617261706573;
  v3 = 0xD00000000000001BLL;
  v4 = 0xD000000000000014;
  if (v1 == 3)
  {
    v4 = 0x756F72676B636162;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_10029C8E8(uint64_t a1)
{
  v2 = v1;
  v104 = 0;
  v4 = type metadata accessor for TTRRemindersListItemSeparatorFlags();
  v98 = *(v4 - 8);
  v99 = v4;
  __chkstk_darwin(v4);
  v96 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v100 = *(v6 - 8);
  v101 = v6;
  __chkstk_darwin(v6);
  v90 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v88 - v9;
  v94 = sub_100058000(&qword_100777F28, &unk_100637D40);
  __chkstk_darwin(v94);
  v12 = &v88 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v92 = *(v13 - 8);
  v93 = v13;
  __chkstk_darwin(v13);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v16 - 8);
  v103 = &v88 - v17;
  v102 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v107 = *(v102 - 8);
  __chkstk_darwin(v102);
  v95 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v88 - v20;
  __chkstk_darwin(v22);
  v24 = &v88 - v23;
  __chkstk_darwin(v25);
  v106 = &v88 - v26;
  v27 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v27 - 8);
  v91 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v88 - v30;
  __chkstk_darwin(v32);
  v105 = &v88 - v33;
  v97 = a1;
  TTRIRemindersListItemIntermediateViewModel.item.getter();
  v34 = type metadata accessor for TTRRemindersListViewModel.Item();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v10, 1, v34) == 1)
  {
    sub_1000079B4(v10, &qword_100772140, &qword_10062D9F0);
    v36 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
    (*(*(v36 - 8) + 56))(v12, 1, 1, v36);
    v37 = v103;
LABEL_6:
    (*(v100 + 56))(v105, 1, 1, v101);
    v41 = v102;
    (*(v107 + 104))(v106, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:), v102);
    v42 = type metadata accessor for TTRRemindersListViewModel.SectionID();
    (*(*(v42 - 8) + 56))(v37, 1, 1, v42);
    v43 = v104;
    v44 = v95;
    if (*(v2 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__hidesTitle))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v88 - 2) = v2;
      *(&v88 - 8) = 0;
      v109 = v2;
      sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v104 = v43;

      LODWORD(v94) = 0;
    }

    else
    {
      LODWORD(v94) = 0;
      *(v2 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__hidesTitle) = 0;
    }

    goto LABEL_22;
  }

  TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
  (*(v35 + 8))(v10, v34);
  v38 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
  v39 = *(v38 - 8);
  (*(v39 + 56))(v12, 0, 1, v38);
  v40 = (*(v39 + 88))(v12, v38);
  if (v40 != enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:) && v40 != enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:))
  {
    v37 = v103;
    if (v40 != enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    goto LABEL_6;
  }

  (*(v39 + 96))(v12, v38);
  (*(v92 + 32))(v15, v12, v93);
  v46 = v105;
  TTRRemindersListViewModel.SectionHeader.title.getter();
  sub_10000794C(v46, v31, &unk_10076B050, &unk_100631DF0);
  v47 = v100;
  v48 = v101;
  v89 = *(v100 + 48);
  v49 = v89(v31, 1, v101);
  v37 = v103;
  if (v49 == 1)
  {
    sub_1000079B4(v31, &unk_10076B050, &unk_100631DF0);
    v50 = v107;
    v41 = v102;
    (*(v107 + 104))(v24, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:), v102);
    (*(v50 + 32))(v106, v24, v41);
  }

  else
  {
    TTRRemindersListViewModel.SectionHeaderTitle.separator.getter();
    (*(v47 + 8))(v31, v48);
    v51 = *(v107 + 32);
    v52 = v21;
    v41 = v102;
    v51(v24, v52, v102);
    v51(v106, v24, v41);
  }

  TTRRemindersListViewModel.SectionHeader.id.getter();
  v53 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  (*(*(v53 - 8) + 56))(v37, 0, 1, v53);
  v54 = TTRRemindersListViewModel.SectionHeader.isTappable.getter();
  (*(v92 + 8))(v15, v93);
  v55 = v91;
  sub_10000794C(v105, v91, &unk_10076B050, &unk_100631DF0);
  v56 = v89(v55, 1, v48);
  v44 = v95;
  LODWORD(v94) = v54;
  if (v56 != 1)
  {
    v60 = v100;
    v61 = v90;
    (*(v100 + 32))(v90, v55, v48);
    v62 = TTRRemindersListViewModel.SectionHeaderTitle.text.getter();
    v64 = v63;

    v65 = HIBYTE(v64) & 0xF;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v65 = v62 & 0xFFFFFFFFFFFFLL;
    }

    v59 = v104;
    if (v65)
    {
      v57 = 0;
    }

    else
    {
      v57 = TTRRemindersListViewModel.SectionHeaderTitle.hidesTitleIfEmpty.getter();
    }

    (*(v60 + 8))(v61, v101);
    v58 = (v2 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__hidesTitle);
    if ((v57 & 1) == *(v2 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__hidesTitle))
    {
      goto LABEL_14;
    }

LABEL_21:
    v66 = swift_getKeyPath();
    __chkstk_darwin(v66);
    *(&v88 - 2) = v2;
    *(&v88 - 8) = v57 & 1;
    v109 = v2;
    sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v104 = v59;

    goto LABEL_22;
  }

  v57 = 0;
  v58 = (v2 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__hidesTitle);
  v59 = v104;
  if (*(v2 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__hidesTitle))
  {
    goto LABEL_21;
  }

LABEL_14:
  *v58 = v57 & 1;
LABEL_22:
  v67 = swift_getKeyPath();
  sub_1002A1880(v67, v37);

  v68 = swift_getKeyPath();
  sub_1002A1CA8(v68, v105);

  swift_getKeyPath();
  v109 = v2;
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v69 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__separator;
  swift_beginAccess();
  v70 = v107;
  v71 = *(v107 + 16);
  v71(v44, v2 + v69, v41);

  sub_1002A47A0(&qword_100768B70, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator, &protocol conformance descriptor for TTRRemindersListViewModel.SectionHeaderTitle.Separator);
  LOBYTE(v69) = dispatch thunk of static Equatable.== infix(_:_:)();
  v72 = *(v70 + 8);
  v107 = v70 + 8;
  v101 = v72;
  v72(v44, v41);
  if ((v69 & 1) == 0)
  {
    v71(v44, v106, v41);

    sub_1002A3054(v44, &OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__separator, &unk_100637CD8, sub_1002A4844);
  }

  v73 = v96;
  TTRIRemindersListItemIntermediateViewModel.separatorFlags.getter();
  v74 = TTRRemindersListItemSeparatorFlags.forceTopSeparatorHiddenForSectionHeader.getter();
  v75 = v74 & 1;
  (*(v98 + 8))(v73, v99);
  swift_getKeyPath();
  v108 = v2;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v76 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__forceHidesTopSeparator;
  LODWORD(v73) = *(v2 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__forceHidesTopSeparator);

  v77 = v94;
  if (v75 == v73)
  {
    v78 = v103;
  }

  else
  {
    v78 = v103;
    if (v75 == *(v2 + v76))
    {
      *(v2 + v76) = v74 & 1;
    }

    else
    {
      v79 = swift_getKeyPath();
      __chkstk_darwin(v79);
      *(&v88 - 2) = v2;
      *(&v88 - 8) = v74 & 1;
      v108 = v2;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v78 = v103;
    }
  }

  swift_getKeyPath();
  v108 = v2;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v80 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__isTappable;
  v81 = *(v2 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__isTappable);

  if ((v77 & 1) != v81)
  {
    if ((v77 & 1) == *(v2 + v80))
    {
      *(v2 + v80) = v77 & 1;
    }

    else
    {
      v82 = swift_getKeyPath();
      __chkstk_darwin(v82);
      *(&v88 - 2) = v2;
      *(&v88 - 8) = v77 & 1;
      v108 = v2;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  swift_getKeyPath();
  v108 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v83 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__hidesTitle;
  v84 = *(v2 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__hidesTitle);
  swift_getKeyPath();
  v108 = v2;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v85 = *(v2 + v83);

  if (v84 != v85)
  {
    if (v84 == *(v2 + v83))
    {
      *(v2 + v83) = v84;
    }

    else
    {
      v86 = swift_getKeyPath();
      __chkstk_darwin(v86);
      *(&v88 - 2) = v2;
      *(&v88 - 8) = v84;
      v108 = v2;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v78 = v103;
    }
  }

  sub_1002A26E4();
  sub_1002A2B7C();
  sub_1000079B4(v78, &qword_10076B070, &unk_100637140);
  v101(v106, v102);
  return sub_1000079B4(v105, &unk_10076B050, &unk_100631DF0);
}

void sub_10029D994(unsigned __int8 a1, uint64_t a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      sub_10029E7B8();
    }

    else
    {
      sub_10029DAD4();
    }
  }

  else if (a1 == 2)
  {
    v3 = *(a2 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModel);
    swift_getKeyPath();
    sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(a2 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesBottomConstraint);
    if (v4)
    {
      v5 = *(v3 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__hidesTitle);
      [v4 setActive:v5 ^ 1];
      v6 = *(a2 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_contentViewBottomToTopSeparatorBottomConstraint);
      if (v6)
      {
        [v6 setActive:v5];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else if (a1 == 3)
  {
    sub_10029ECC4();
  }

  else
  {
    sub_10029F3F8();
  }
}

id sub_10029DAD4()
{
  v1 = v0;
  v89 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v88 = *(v89 - 1);
  __chkstk_darwin(v89);
  v87 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v90 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v83 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModel);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel___observationRegistrar;
  v95 = v13;
  v91 = sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  v92 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__title;
  swift_beginAccess();
  v93 = v13;
  v16 = v13 + v15;
  v17 = v9;
  sub_10000794C(v16, v8, &unk_10076B050, &unk_100631DF0);
  v18 = (*(v10 + 48))(v8, 1, v9);
  v19 = off_100777000;
  if (v18 == 1)
  {
    sub_1000079B4(v8, &unk_10076B050, &unk_100631DF0);
    [*(v1 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titleLabel) setAttributedText:0];
    v20 = *(v1 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_subtitleLabel);
    v21 = v1;
    if (v20)
    {
      [v20 setAttributedText:0];
    }

    goto LABEL_42;
  }

  v86 = v1;
  (*(v10 + 32))(v12, v8, v17);
  v22 = v12;
  TTRRemindersListViewModel.SectionHeaderTitle.defaultTextColor.getter();
  v23 = v90[11](v5, v3);
  if (v23 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:))
  {
    v24 = v10;
    v25 = 0;
    v26 = &selRef_secondaryLabelColor;
    v27 = &selRef_labelColor;
  }

  else
  {
    if (v23 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.secondary(_:))
    {
      v24 = v10;
      v25 = 0;
      v27 = &selRef_secondaryLabelColor;
    }

    else
    {
      if (v23 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.disabled(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_44;
      }

      v24 = v10;
      v25 = 1;
      v27 = &selRef_tertiaryLabelColor;
    }

    v26 = v27;
  }

  v28 = objc_opt_self();
  v90 = [v28 *v27];
  v29 = [v28 *v26];
  v30 = v87;
  TTRRemindersListViewModel.SectionHeaderTitle.textSize.getter();
  v31 = (*(v88 + 11))(v30, v89);
  v85 = v17;
  v84 = v24;
  if (v31 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:))
  {
    v32 = v22;
    v33 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
    v34 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
    isa = UIFont.withBoldTrait()().super.isa;

    v36 = isa;
    v37 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
    v38 = v37;
    v39 = *(v86 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesTopConstraint);
    if (v25)
    {
      v40 = v37;
      if (v39)
      {
        [v39 setConstant:11.0];
      }

      v21 = v86;
      v52 = *(v86 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesBottomConstraint);
      if (v52)
      {
        [v52 setConstant:9.0];
      }
    }

    else
    {
      v45 = v37;
      if (v39)
      {
        [v39 setConstant:14.0];
      }

      v21 = v86;
      v53 = *(v86 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesBottomConstraint);
      if (v53)
      {
        [v53 setConstant:4.0];
      }
    }

    goto LABEL_31;
  }

  if (v31 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.medium(_:))
  {
    v32 = v22;
    v33 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
    v41 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
    v42 = UIFont.withBoldTrait()().super.isa;

    v36 = v42;
    v38 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
    v21 = v86;
    v43 = *(v86 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesTopConstraint);
    v44 = v38;
    if (v43)
    {
      [v43 setConstant:12.0];
    }

    v51 = *(v21 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesBottomConstraint);
    if (!v51)
    {
LABEL_31:
      sub_100058000(&unk_100776BD0, &unk_100632860);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D3F0;
      *(inited + 32) = NSFontAttributeName;
      sub_100003540(0, &qword_100771DF0, UIFont_ptr);
      v88 = v36;
      *(inited + 40) = v36;
      *(inited + 64) = v33;
      *(inited + 72) = NSForegroundColorAttributeName;
      *(inited + 104) = sub_100003540(0, &qword_100772610, UIColor_ptr);
      *(inited + 80) = v90;
      v55 = NSFontAttributeName;
      v56 = NSForegroundColorAttributeName;
      sub_100460A28(inited);
      swift_setDeallocating();
      sub_100058000(&unk_100776BE0, &unk_10062D7F0);
      v57 = swift_arrayDestroy();
      __chkstk_darwin(v57);
      *(&v83 - 2) = v38;
      *(&v83 - 1) = v29;
      v58 = TTRRemindersListViewModel.SectionHeaderTitle.attributedTitleText(baseAttributes:secondaryTextAttributes:)();

      v87 = v38;

      __chkstk_darwin([*(v21 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titleLabel) setAttributedText:v58]);
      *(&v83 - 2) = v29;
      __chkstk_darwin(v59);
      *(&v83 - 2) = v29;
      v60 = v32;
      v61 = TTRRemindersListViewModel.SectionHeaderTitle.attributedSubtitleText(baseAttributes:secondaryTextAttributes:)();
      v89 = v29;

      if (v61)
      {
        v62 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_subtitleLabel;
        v63 = *(v21 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_subtitleLabel);
        if (v63)
        {
          v64 = v61;
LABEL_34:
          v19 = off_100777000;
          v65 = *(v21 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesContainer);
          v66 = v63;
          [v65 addArrangedSubview:v66];
          v67 = v61;
          [v66 setAttributedText:v67];

          (*(v84 + 8))(v60, v85);
LABEL_42:
          v80 = *(v19[415] + v21);
          swift_getKeyPath();
          v81 = v93;
          v94 = v93;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          return [v80 setHidden:*(v81 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__hidesTitle)];
        }

        v73 = objc_allocWithZone(UILabel);
        v74 = v61;
        v75 = [v73 init];
        v76 = *(v21 + v62);
        *(v21 + v62) = v75;

        v77 = *(v21 + v62);
        if (v77)
        {
          v78 = v77;
          v79 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
          [v78 setFont:v79];

          v21 = v86;
          v63 = *(v21 + v62);
          if (v63)
          {
            goto LABEL_34;
          }
        }

        (*(v84 + 8))(v60, v85);
      }

      else
      {
        v68 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_subtitleLabel;
        v69 = *(v21 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_subtitleLabel);
        if (v69)
        {
          v19 = off_100777000;
          v70 = *(v21 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesContainer);
          v71 = v69;
          [v70 removeArrangedSubview:v71];

          (*(v84 + 8))(v60, v85);
          v72 = *(v21 + v68);
          *(v21 + v68) = 0;

          goto LABEL_42;
        }

        (*(v84 + 8))(v60, v85);
      }

      v19 = off_100777000;
      goto LABEL_42;
    }

LABEL_27:
    [v51 setConstant:12.0];
    goto LABEL_31;
  }

  v21 = v86;
  if (v31 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.headline(_:))
  {
    v32 = v22;
    v33 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
    v46 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
    v47 = UIFont.withBoldTrait()().super.isa;

    v36 = v47;
    v48 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
    v49 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesTopConstraint;
    v50 = *(v21 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesTopConstraint);
    if (!v50)
    {
      v38 = v48;
      goto LABEL_31;
    }

    v38 = v48;
    [v50 setConstant:12.0];
    v51 = *(v21 + v49);
    if (!v51)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_44:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_10029E7B8()
{
  v1 = v0;
  v2 = type metadata accessor for TTRISeparator.Thickness();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModel];
  swift_getKeyPath();
  v23[7] = v10;
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__effectiveSeparatorStyle;
  swift_beginAccess();
  (*(v7 + 16))(v9, v10 + v11, v6);
  v12 = (*(v7 + 88))(v9, v6);
  if (v12 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.inset(_:))
  {
    if (v12 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:))
    {
      if (v12 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:))
      {
        TTRISeparator.dotted.setter();
        *v5 = 0x4000000000000000;
        (*(v3 + 104))(v5, enum case for TTRISeparator.Thickness.custom(_:), v2);
        TTRISeparator.thickness.setter();
        v19 = [objc_opt_self() tertiarySystemFillColor];
        TTRISeparator.backgroundColor.setter();
        v14 = objc_opt_self();
        v20 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparatorConstraints;
        swift_beginAccess();
        sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v14 deactivateConstraints:isa];

        swift_beginAccess();
        *&v1[v20] = _swiftEmptyArrayStorage;

        sub_10029F834(&v1[v20], v1);
        goto LABEL_3;
      }

      (*(v7 + 8))(v9, v6);
    }

    v18 = 1;
    return [*&v1[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparator] setHidden:v18];
  }

  (*(v7 + 96))(v9, v6);
  TTRISeparator.dotted.setter();
  (*(v3 + 104))(v5, enum case for TTRISeparator.Thickness.hairline(_:), v2);
  TTRISeparator.thickness.setter();
  v13 = [objc_opt_self() separatorColor];
  TTRISeparator.backgroundColor.setter();
  v14 = objc_opt_self();
  v15 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparatorConstraints;
  swift_beginAccess();
  sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);

  v16 = Array._bridgeToObjectiveC()().super.isa;

  [v14 deactivateConstraints:v16];

  swift_beginAccess();
  *&v1[v15] = _swiftEmptyArrayStorage;

  sub_10029F940(&v1[v15], v1);
LABEL_3:
  swift_endAccess();

  v17 = Array._bridgeToObjectiveC()().super.isa;

  [v14 activateConstraints:v17];

  v18 = 0;
  return [*&v1[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparator] setHidden:v18];
}

uint64_t sub_10029ECC4()
{
  v1 = sub_100058000(&qword_10076C030, &qword_1006301C0);
  __chkstk_darwin(v1 - 8);
  v60 = &v46 - v2;
  v59 = type metadata accessor for UIBackgroundConfiguration();
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v53 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v46 - v5;
  v7 = type metadata accessor for UICellConfigurationState.DropState();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellConfigurationState();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100777F00, &qword_100637B48);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = type metadata accessor for TTRIRemindersListBackground();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v57 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v0;
  v18 = *&v0[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModel];
  swift_getKeyPath();
  v61[0] = v18;
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__effectiveBackground;
  swift_beginAccess();
  sub_10000794C(v18 + v19, v13, &qword_100777F00, &qword_100637B48);
  v58 = v15;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000079B4(v13, &qword_100777F00, &qword_100637B48);
    static UIBackgroundConfiguration.clear()();
    [v17 setAutomaticallyUpdatesBackgroundConfiguration:1];
    v20 = v56;
    v22 = v59;
    v21 = v60;
    (*(v56 + 16))(v60, v6, v59);
    (*(v20 + 56))(v21, 0, 1, v22);
    UICollectionViewCell.backgroundConfiguration.setter();
    return (*(v20 + 8))(v6, v22);
  }

  else
  {
    v24 = v56;
    v48 = v6;
    (*(v58 + 32))(v57, v13, v14);
    swift_getKeyPath();
    v61[0] = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *(v18 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__isStyledAsDropTarget) == 1;
    v47 = v14;
    if (v25)
    {
      v26 = [v17 traitCollection];
      v27 = v52;
      UICellConfigurationState.init(traitCollection:)();
      (*(v50 + 104))(v49, enum case for UICellConfigurationState.DropState.targeted(_:), v51);
      UICellConfigurationState.cellDropState.setter();
      v28 = v53;
      static UIBackgroundConfiguration.listCell()();
      v29 = v55;
      v61[3] = v55;
      v61[4] = &protocol witness table for UICellConfigurationState;
      v30 = sub_1000317B8(v61);
      v31 = v54;
      (*(v54 + 16))(v30, v27, v29);
      v32 = v48;
      UIBackgroundConfiguration.updated(for:)();
      v33 = v24;
      v34 = *(v24 + 8);
      v35 = v59;
      v34(v28, v59);
      sub_100004758(v61);
      [v17 setAutomaticallyUpdatesBackgroundConfiguration:0];
      v36 = v60;
      (*(v33 + 16))(v60, v32, v35);
      (*(v33 + 56))(v36, 0, 1, v35);
      UICollectionViewCell.backgroundConfiguration.setter();
      v34(v32, v35);
      (*(v31 + 8))(v27, v29);
      return (*(v58 + 8))(v57, v47);
    }

    else
    {
      v37 = v57;
      v38 = static REMFeatureFlags.isSolariumEnabled.getter();
      v39 = (v24 + 16);
      v40 = (v24 + 56);
      v41 = (v24 + 8);
      v42 = v59;
      v43 = (v58 + 8);
      v44 = v60;
      v45 = v48;
      if (v38)
      {
        static UIBackgroundConfiguration.listHeader()();
      }

      else
      {
        TTRIRemindersListBackground.backgroundConfiguration.getter();
      }

      [v17 setAutomaticallyUpdatesBackgroundConfiguration:1];
      (*v39)(v44, v45, v42);
      (*v40)(v44, 0, 1, v42);
      UICollectionViewCell.backgroundConfiguration.setter();
      (*v41)(v45, v42);
      return (*v43)(v37, v47);
    }
  }
}

void sub_10029F3F8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModel];
  swift_getKeyPath();
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__isTappable);
  v4 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_tapGestureRecognizer;
  v5 = *&v0[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_tapGestureRecognizer];
  if (v3 == 1)
  {
    if (v5)
    {
      return;
    }

    v6 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTap:"];
    v7 = [v1 contentView];
    [v7 addGestureRecognizer:v6];
  }

  else
  {
    if (!v5)
    {
      return;
    }

    [v0 removeGestureRecognizer:?];
    v6 = 0;
  }

  v8 = *&v1[v4];
  *&v1[v4] = v6;
}

uint64_t sub_10029F56C@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *a2;
  swift_beginAccess();
  return sub_10000794C(v12 + v10, a5, a3, a4);
}

uint64_t sub_10029F660(char *a1)
{
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10062D410;
  v3 = *&a1[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparator];
  v4 = [v3 leadingAnchor];
  v5 = [a1 contentView];
  v6 = [v5 layoutMarginsGuide];

  v7 = [v6 leadingAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];

  *(v2 + 32) = v8;
  v9 = [v3 trailingAnchor];
  v10 = [a1 contentView];
  v11 = [v10 layoutMarginsGuide];

  v12 = [v11 trailingAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];

  *(v2 + 40) = v13;
  return v2;
}

void sub_10029F834(uint64_t *a1, char *a2)
{

  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    v4 = sub_10029F660(a2);
  }

  else
  {
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10062D420;
    v5 = [*&a2[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparator] leadingAnchor];
    v6 = [a2 contentView];
    v7 = [v6 leadingAnchor];

    v8 = [v5 constraintEqualToAnchor:v7];
    *(v4 + 32) = v8;
  }

  *a1 = v4;
}

void sub_10029F940(uint64_t *a1, char *a2)
{

  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    v4 = sub_10029F660(a2);
  }

  else
  {
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10062D420;
    v5 = [*&a2[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparator] leadingAnchor];
    v6 = [a2 contentView];
    v7 = [v6 layoutMarginsGuide];

    v8 = [v7 leadingAnchor];
    v9 = [v5 constraintEqualToAnchor:v8];

    *(v4 + 32) = v9;
  }

  *a1 = v4;
}

uint64_t sub_10029FAA4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_10029FC00()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titleLabel) text];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_100546970((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v3;
    *(v9 + 5) = v5;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v10 = *(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_subtitleLabel);
  if (v10)
  {
    v11 = [v10 text];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100546970(0, *(v6 + 2) + 1, 1, v6);
      }

      v17 = *(v6 + 2);
      v16 = *(v6 + 3);
      if (v17 >= v16 >> 1)
      {
        v6 = sub_100546970((v16 > 1), v17 + 1, 1, v6);
      }

      *(v6 + 2) = v17 + 1;
      v18 = &v6[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
    }
  }

  if (*(v6 + 2))
  {
    static TTRAccesibility.General.Label.Separator.getter();
    sub_100058000(&unk_100781F20, &unk_10062D7E0);
    sub_10000E188(&qword_100771E20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
    v19 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {

    return 0;
  }

  return v19;
}

id sub_10029FE40(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10029FEC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v2 - 8);
  v4 = &ObjectType - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModel];
  swift_getKeyPath();
  v17 = v9;
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__title;
  swift_beginAccess();
  sub_10000794C(v9 + v10, v4, &unk_10076B050, &unk_100631DF0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &unk_10076B050, &unk_100631DF0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (TTRRemindersListViewModel.SectionHeaderTitle.ttrAccessibilityIsPlaceholder.getter())
    {
      Reminder = static TTRAccesibility.RemindersList.Action.CreateReminderHint.getter();
      (*(v6 + 8))(v8, v5);
      return Reminder;
    }

    (*(v6 + 8))(v8, v5);
  }

  v16.receiver = v1;
  v16.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v16, "accessibilityHint", ObjectType);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  Reminder = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return Reminder;
}

void (*sub_1002A0338(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModel);
  *(v3 + 8) = v5;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel___observationRegistrar;
  *v4 = v5;
  *(v4 + 24) = sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__isStyledAsDropTarget;
  *(v4 + 32) = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__isStyledAsDropTarget;
  *(v4 + 40) = *(v5 + v6);
  return sub_1002A0444;
}

void sub_1002A0444(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  swift_getKeyPath();
  v5 = v3[4];
  v6 = v3[1];
  *v3 = v6;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + v5);

  if (a2)
  {
    if ((v4 ^ v7))
    {
      v8 = v3[4];
      v9 = v3[1];
      if (v4 != *(v9 + v8))
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  else if ((v4 ^ v7))
  {
    v8 = v3[4];
    v9 = v3[1];
    if (v4 != *(v9 + v8))
    {
LABEL_7:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *v3 = v9;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      goto LABEL_9;
    }

LABEL_8:
    *(v9 + v8) = v4;
  }

LABEL_9:
  free(v3);
}

uint64_t sub_1002A0624()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModel);
  swift_getKeyPath();
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__isStyledAsDropTarget);
}

double sub_1002A06D4(uint64_t a1)
{
  v1 = a1;
  KeyPath = swift_getKeyPath();
  sub_1002A17F4(KeyPath, v1);

  return result;
}

void (*sub_1002A0734(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1002A0338(v2);
  return sub_1001861BC;
}

uint64_t sub_1002A07A4(uint64_t a1)
{
  v3 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__sectionID;
  swift_beginAccess();
  sub_10000794C(v1 + v6, v5, &qword_10076B070, &unk_100637140);
  v7 = sub_1002A3D40(v5, a1);
  sub_1000079B4(v5, &qword_10076B070, &unk_100637140);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_100019180(a1, v1 + v6, &qword_10076B070, &unk_100637140);
    swift_endAccess();
  }

  return sub_1000079B4(a1, &qword_10076B070, &unk_100637140);
}

uint64_t sub_1002A09A0(uint64_t a1)
{
  v3 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__title;
  swift_beginAccess();
  sub_10000794C(v1 + v6, v5, &unk_10076B050, &unk_100631DF0);
  v7 = sub_1002A4060(v5, a1);
  sub_1000079B4(v5, &unk_10076B050, &unk_100631DF0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_100019180(a1, v1 + v6, &unk_10076B050, &unk_100631DF0);
    swift_endAccess();
  }

  return sub_1000079B4(a1, &unk_10076B050, &unk_100631DF0);
}

void sub_1002A0BB0(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

void sub_1002A0C64(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1002A0D68()
{
  swift_getKeyPath();
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__horizontalSizeClass);
}

void sub_1002A0E10(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__horizontalSizeClass);
}

double sub_1002A0EE8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__horizontalSizeClass) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1002A1040@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *a3;
  swift_beginAccess();
  return sub_10000794C(v10 + v11, a6, a4, a5);
}

uint64_t sub_1002A1124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_100058000(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_10000794C(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_1002A11D0(uint64_t a1)
{
  v3 = sub_100058000(&qword_100777F00, &qword_100637B48);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__effectiveBackground;
  swift_beginAccess();
  sub_10000794C(v1 + v6, v5, &qword_100777F00, &qword_100637B48);
  v8 = sub_1002A444C(v5, a1, v7);
  sub_1000079B4(v5, &qword_100777F00, &qword_100637B48);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_100019180(a1, v1 + v6, &qword_100777F00, &qword_100637B48);
    swift_endAccess();
  }

  return sub_1000079B4(a1, &qword_100777F00, &qword_100637B48);
}

void sub_1002A13CC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v31 = a2;
  v6 = type metadata accessor for TTRIRemindersListBackground();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100777F08, &qword_100637C30);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v13 = sub_100058000(&qword_100777F00, &qword_100637B48);
  __chkstk_darwin(v13 - 8);
  v29 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  __chkstk_darwin(v18);
  v20 = &v27 - v19;
  v32 = v4;

  v30 = a1;
  v21 = v31;
  swift_getAtKeyPath();

  v22 = *(v10 + 56);
  sub_10000794C(v20, v12, &qword_100777F00, &qword_100637B48);
  sub_10000794C(v21, &v12[v22], &qword_100777F00, &qword_100637B48);
  v23 = *(v7 + 48);
  if (v23(v12, 1, v6) == 1)
  {
    sub_1000079B4(v20, &qword_100777F00, &qword_100637B48);
    if (v23(&v12[v22], 1, v6) == 1)
    {
      sub_1000079B4(v12, &qword_100777F00, &qword_100637B48);
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v12, v17, &qword_100777F00, &qword_100637B48);
  if (v23(&v12[v22], 1, v6) == 1)
  {
    sub_1000079B4(v20, &qword_100777F00, &qword_100637B48);
    (*(v7 + 8))(v17, v6);
LABEL_6:
    sub_1000079B4(v12, &qword_100777F08, &qword_100637C30);
LABEL_7:
    sub_10000794C(v21, v29, &qword_100777F00, &qword_100637B48);
    v32 = v4;

    swift_setAtReferenceWritableKeyPath();

    return;
  }

  v24 = v28;
  (*(v7 + 32))(v28, &v12[v22], v6);
  sub_1002A47A0(&qword_100777F10, &type metadata accessor for TTRIRemindersListBackground, &protocol conformance descriptor for TTRIRemindersListBackground);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v7 + 8);
  v26(v24, v6);
  sub_1000079B4(v20, &qword_100777F00, &qword_100637B48);
  v26(v17, v6);
  sub_1000079B4(v12, &qword_100777F00, &qword_100637B48);
  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }
}

double sub_1002A17F4(uint64_t a1, char a2)
{
  v2 = a2 & 1;

  swift_getAtKeyPath();

  if (v4 != v2)
  {

    swift_setAtReferenceWritableKeyPath();
  }

  return result;
}

void sub_1002A1880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100768B78, &unk_100637BA0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v12 - 8);
  v28 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  v31 = v3;

  v29 = a1;
  v20 = v30;
  swift_getAtKeyPath();

  v21 = *(v9 + 56);
  sub_10000794C(v19, v11, &qword_10076B070, &unk_100637140);
  sub_10000794C(v20, &v11[v21], &qword_10076B070, &unk_100637140);
  v22 = *(v6 + 48);
  if (v22(v11, 1, v5) == 1)
  {
    sub_1000079B4(v19, &qword_10076B070, &unk_100637140);
    if (v22(&v11[v21], 1, v5) == 1)
    {
      sub_1000079B4(v11, &qword_10076B070, &unk_100637140);
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v11, v16, &qword_10076B070, &unk_100637140);
  if (v22(&v11[v21], 1, v5) == 1)
  {
    sub_1000079B4(v19, &qword_10076B070, &unk_100637140);
    (*(v6 + 8))(v16, v5);
LABEL_6:
    sub_1000079B4(v11, &qword_100768B78, &unk_100637BA0);
LABEL_7:
    sub_10000794C(v20, v28, &qword_10076B070, &unk_100637140);
    v31 = v3;

    swift_setAtReferenceWritableKeyPath();

    return;
  }

  v23 = v27;
  (*(v6 + 32))(v27, &v11[v21], v5);
  sub_1002A47A0(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID, &protocol conformance descriptor for TTRRemindersListViewModel.SectionID);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v6 + 8);
  v25(v23, v5);
  sub_1000079B4(v19, &qword_10076B070, &unk_100637140);
  v25(v16, v5);
  sub_1000079B4(v11, &qword_10076B070, &unk_100637140);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_1002A1CA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100768B50, &unk_1006378E0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v12 - 8);
  v28 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  v31 = v3;

  v29 = a1;
  v20 = v30;
  swift_getAtKeyPath();

  v21 = *(v9 + 56);
  sub_10000794C(v19, v11, &unk_10076B050, &unk_100631DF0);
  sub_10000794C(v20, &v11[v21], &unk_10076B050, &unk_100631DF0);
  v22 = *(v6 + 48);
  if (v22(v11, 1, v5) == 1)
  {
    sub_1000079B4(v19, &unk_10076B050, &unk_100631DF0);
    if (v22(&v11[v21], 1, v5) == 1)
    {
      sub_1000079B4(v11, &unk_10076B050, &unk_100631DF0);
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v11, v16, &unk_10076B050, &unk_100631DF0);
  if (v22(&v11[v21], 1, v5) == 1)
  {
    sub_1000079B4(v19, &unk_10076B050, &unk_100631DF0);
    (*(v6 + 8))(v16, v5);
LABEL_6:
    sub_1000079B4(v11, &qword_100768B50, &unk_1006378E0);
LABEL_7:
    sub_10000794C(v20, v28, &unk_10076B050, &unk_100631DF0);
    v31 = v3;

    swift_setAtReferenceWritableKeyPath();

    return;
  }

  v23 = v27;
  (*(v6 + 32))(v27, &v11[v21], v5);
  sub_1002A47A0(&qword_100768B58, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle, &protocol conformance descriptor for TTRRemindersListViewModel.SectionHeaderTitle);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v6 + 8);
  v25(v23, v5);
  sub_1000079B4(v19, &unk_10076B050, &unk_100631DF0);
  v25(v16, v5);
  sub_1000079B4(v11, &unk_10076B050, &unk_100631DF0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_1002A216C@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  v9 = a3(0);
  return (*(*(v9 - 8) + 16))(a4, v11 + v8, v9);
}

uint64_t sub_1002A2294@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *a3;
  swift_beginAccess();
  v10 = a4(0);
  return (*(*(v10 - 8) + 16))(a5, v8 + v9, v10);
}

uint64_t sub_1002A2398(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TTRIRemindersListBackground();
  v4 = __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = (*(v7 + 16))(v6, a1, v4);
  return sub_1002A2464(v6, v8);
}

uint64_t sub_1002A2464(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRIRemindersListBackground();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__background;
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  sub_1002A47A0(&qword_100777F10, &type metadata accessor for TTRIRemindersListBackground, &protocol conformance descriptor for TTRIRemindersListBackground);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (v10)
  {
    swift_beginAccess();
    (*(v6 + 24))(v3 + v9, a1, v5);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v14[-2] = v3;
    v14[-1] = a1;
    v14[1] = v3;
    sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v11)(a1, v5);
}

uint64_t sub_1002A26E4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v23 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v22[0] = v22 - v6;
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  swift_getKeyPath();
  v26 = v0;
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__separator;
  swift_beginAccess();
  v11 = v3;
  v13 = v3 + 16;
  v12 = *(v3 + 16);
  v24 = v9;
  v12(v9, v0 + v10, v2);
  swift_getKeyPath();
  v25 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = v22[0];
  v22[1] = v13;
  v12(v22[0], v1 + v10, v2);
  v15 = (*(v11 + 88))(v14, v2);
  if (v15 == enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.inset(_:))
  {
LABEL_4:
    swift_getKeyPath();
    v25 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v1 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__forceHidesTopSeparator) & 1) != 0 || (swift_getKeyPath(), v25 = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v1 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__isPinned) == 1))
    {
      v16 = v24;
      (*(v11 + 8))(v24, v2);
      (*(v11 + 104))(v16, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:), v2);
    }

    goto LABEL_7;
  }

  if (v15 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:))
  {
    if (v15 != enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    goto LABEL_4;
  }

LABEL_7:
  swift_getKeyPath();
  v25 = v1;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__effectiveSeparatorStyle;
  swift_beginAccess();
  v18 = v23;
  v12(v23, v1 + v17, v2);

  sub_1002A47A0(&qword_100768B70, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator, &protocol conformance descriptor for TTRRemindersListViewModel.SectionHeaderTitle.Separator);
  v19 = v24;
  LOBYTE(v17) = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v11 + 8);
  v20(v18, v2);
  if ((v17 & 1) == 0)
  {
    v12(v18, v19, v2);

    sub_1002A3054(v18, &OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__effectiveSeparatorStyle, &unk_100637BE0, sub_1002A43FC);
  }

  return (v20)(v19, v2);
}

uint64_t sub_1002A2B7C()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100777F00, &qword_100637B48);
  __chkstk_darwin(v2 - 8);
  v4 = &v21[-v3];
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v21[-v10];
  swift_getKeyPath();
  v22 = v0;
  sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__hidesTitle) == 1 && (swift_getKeyPath(), v22 = v0, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v12 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__effectiveSeparatorStyle, swift_beginAccess(), (*(v6 + 16))(v11, v1 + v12, v5), (*(v6 + 104))(v8, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:), v5), LOBYTE(v12) = static TTRRemindersListViewModel.SectionHeaderTitle.Separator.== infix(_:_:)(), v13 = *(v6 + 8), v13(v8, v5), v13(v11, v5), (v12 & 1) != 0))
  {
    v14 = type metadata accessor for TTRIRemindersListBackground();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  }

  else
  {
    swift_getKeyPath();
    v22 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__background;
    swift_beginAccess();
    v16 = type metadata accessor for TTRIRemindersListBackground();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v4, v1 + v15, v16);
    (*(v17 + 56))(v4, 0, 1, v16);
  }

  KeyPath = swift_getKeyPath();
  sub_1002A13CC(KeyPath, v4, v19);

  return sub_1000079B4(v4, &qword_100777F00, &qword_100637B48);
}

uint64_t sub_1002A2F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v12 = __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  return sub_1002A3054(v14, a5, a6, a7);
}

uint64_t sub_1002A3054(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v17[0] = a4;
  v6 = v4;
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  swift_beginAccess();
  (*(v9 + 16))(v11, v4 + v12, v8);
  sub_1002A47A0(&qword_100768B70, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator, &protocol conformance descriptor for TTRRemindersListViewModel.SectionHeaderTitle.Separator);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v9 + 8);
  v14(v11, v8);
  if (v13)
  {
    swift_beginAccess();
    (*(v9 + 24))(v6 + v12, a1, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v17[-2] = v6;
    v17[-1] = a1;
    v17[1] = v6;
    sub_1002A47A0(&qword_100777EF8, type metadata accessor for ViewModel, &unk_100637AC8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v14)(a1, v8);
}

uint64_t sub_1002A32C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  v8 = a4(0);
  (*(*(v8 - 8) + 24))(a1 + v7, a2, v8);
  return swift_endAccess();
}

uint64_t sub_1002A3370()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__sectionID, &qword_10076B070, &unk_100637140);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__title, &unk_10076B050, &unk_100631DF0);
  v1 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__effectiveSeparatorStyle;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__effectiveBackground, &qword_100777F00, &qword_100637B48);
  v3(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__separator, v2);
  v4 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__background;
  v5 = type metadata accessor for TTRIRemindersListBackground();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel___observationRegistrar;
  v7 = type metadata accessor for ObservationRegistrar();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ViewModel(uint64_t a1)
{
  result = qword_100777DE8;
  if (!qword_100777DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A3570(uint64_t a1)
{
  sub_1002A37A4(319, &qword_100768A58, &type metadata accessor for TTRRemindersListViewModel.SectionID);
  if (v1 <= 0x3F)
  {
    sub_1002A37A4(319, &unk_100768A60, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
      if (v3 <= 0x3F)
      {
        sub_1002A37A4(319, &unk_100777DF8, &type metadata accessor for TTRIRemindersListBackground);
        if (v4 <= 0x3F)
        {
          type metadata accessor for TTRIRemindersListBackground();
          if (v5 <= 0x3F)
          {
            type metadata accessor for ObservationRegistrar();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1002A37A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_1002A3850()
{
  result = qword_100777EE8;
  if (!qword_100777EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100777EE8);
  }

  return result;
}

unint64_t sub_1002A38A8()
{
  result = qword_100777EF0;
  if (!qword_100777EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100777EF0);
  }

  return result;
}

uint64_t sub_1002A3914()
{
  v1 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__sectionID;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + v1, 1, 1, v2);
  v4 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__title;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  v6(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__isTappable) = 0;
  *(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__forceHidesTopSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__horizontalSizeClass) = 1;
  *(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__isStyledAsDropTarget) = 0;
  *(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__hidesTitle) = 0;
  v7 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__effectiveSeparatorStyle;
  v8 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:);
  v9 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v10 = *(*(v9 - 8) + 104);
  v10(v0 + v7, v8, v9);
  v11 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__effectiveBackground;
  v12 = type metadata accessor for TTRIRemindersListBackground();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v0 + v11, 1, 1, v12);
  v14(v0 + v11, 1, 1, v12);
  v10(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__separator, v8, v9);
  *(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__isPinned) = 0;
  (*(v13 + 104))(v0 + OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__background, enum case for TTRIRemindersListBackground.normalHeaderFooter(_:), v12);
  ObservationRegistrar.init()();
  return v0;
}

void sub_1002A3B9C()
{
  *(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModelObserver) = 0;
  v1 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModel;
  type metadata accessor for ViewModel(0);
  swift_allocObject();
  *(v0 + v1) = sub_1002A3914();
  v2 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_updateHelper;
  sub_100058000(&qword_100777F18, &qword_100637D28);
  swift_allocObject();
  *(v0 + v2) = TTRObservationTrackingUpdateHelper.init(loggingPrefix:)();
  *(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_titlesBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_topSeparatorConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_contentViewBottomToTopSeparatorBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_tapGestureRecognizer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1002A3CF4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007127D0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002A3D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100058000(&qword_100768B78, &unk_100637BA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_10000794C(a1, &v21 - v12, &qword_10076B070, &unk_100637140);
  sub_10000794C(a2, &v13[v15], &qword_10076B070, &unk_100637140);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000794C(v13, v10, &qword_10076B070, &unk_100637140);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1002A47A0(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID, &protocol conformance descriptor for TTRRemindersListViewModel.SectionID);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000079B4(v13, &qword_10076B070, &unk_100637140);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000079B4(v13, &qword_100768B78, &unk_100637BA0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000079B4(v13, &qword_10076B070, &unk_100637140);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1002A4060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100058000(&qword_100768B50, &unk_1006378E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_10000794C(a1, &v21 - v12, &unk_10076B050, &unk_100631DF0);
  sub_10000794C(a2, &v13[v15], &unk_10076B050, &unk_100631DF0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000794C(v13, v10, &unk_10076B050, &unk_100631DF0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1002A47A0(&qword_100768B58, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle, &protocol conformance descriptor for TTRRemindersListViewModel.SectionHeaderTitle);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000079B4(v13, &unk_10076B050, &unk_100631DF0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000079B4(v13, &qword_100768B50, &unk_1006378E0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000079B4(v13, &unk_10076B050, &unk_100631DF0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1002A444C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TTRIRemindersListBackground();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100777F00, &qword_100637B48);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_100058000(&qword_100777F08, &qword_100637C30);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v16 = *(v15 + 56);
  sub_10000794C(a1, &v22 - v13, &qword_100777F00, &qword_100637B48);
  sub_10000794C(a2, &v14[v16], &qword_100777F00, &qword_100637B48);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) != 1)
  {
    sub_10000794C(v14, v11, &qword_100777F00, &qword_100637B48);
    if (v17(&v14[v16], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v14[v16], v5);
      sub_1002A47A0(&qword_100777F10, &type metadata accessor for TTRIRemindersListBackground, &protocol conformance descriptor for TTRIRemindersListBackground);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v6 + 8);
      v20(v8, v5);
      v20(v11, v5);
      sub_1000079B4(v14, &qword_100777F00, &qword_100637B48);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    (*(v6 + 8))(v11, v5);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v5) != 1)
  {
LABEL_6:
    sub_1000079B4(v14, &qword_100777F08, &qword_100637C30);
    v18 = 1;
    return v18 & 1;
  }

  sub_1000079B4(v14, &qword_100777F00, &qword_100637B48);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1002A47A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002A4958(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

uint64_t sub_1002A4A14()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100777F30);
  v1 = sub_100003E30(v0, qword_100777F30);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1002A4ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v3 = sub_100058000(&qword_1007701A0, &qword_100631A50);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v32 = sub_100058000(&qword_100778000, &qword_100637DF8);
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v36 = &v27 - v6;
  v29 = type metadata accessor for TTRIQuickEntryStyle();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v29);
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v28 = &v27 - v11;
  (*(v7 + 104))(&v27 - v11, enum case for TTRIQuickEntryStyle.normal(_:), v10);
  v38 = static TTRIQuickEntryAssembly.fetchInitialListForReminderCreation(store:style:)();
  v12 = [objc_opt_self() mainRunLoop];
  v37 = v12;
  v13 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  sub_100058000(&qword_100778008, qword_100637E00);
  sub_100003540(0, &qword_10076DFB0, NSRunLoop_ptr);
  sub_10000E188(&qword_100778010, &qword_100778008, qword_100637E00, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100139DF0();
  Publisher.receive<A>(on:options:)();
  sub_1000079B4(v5, &qword_1007701A0, &qword_100631A50);

  v14 = swift_allocObject();
  v15 = v31;
  swift_weakInit();
  v16 = v29;
  v17 = v30;
  v18 = v28;
  (*(v7 + 16))(v30, v28, v29);
  v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  (*(v7 + 32))(v20 + v19, v17, v16);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v34;
  *v21 = v33;
  v21[1] = v22;
  sub_10000E188(&qword_100778018, &qword_100778000, &qword_100637DF8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  swift_unknownObjectRetain();
  v23 = v32;
  v24 = v36;
  v25 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v35 + 8))(v24, v23);
  (*(v7 + 8))(v18, v16);
  *(v15 + 24) = v25;

  return result;
}

void sub_1002A4F70(uint64_t *a1)
{
  if (*a1)
  {
    if (qword_100767100 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003E30(v1, qword_100777F30);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.rem_errorDescription.getter();
      v8 = v7;

      v9 = sub_100004060(v6, v8, &v10);

      *(v4 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unable to present Quick Entry; fetchInitialListForReminderCreation failed {error: %s}", v4, 0xCu);
      sub_100004758(v5);
    }

    else
    {
    }
  }
}

double sub_1002A5124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      type metadata accessor for TTRQuickEntryReminderCreationInteractorCapability();
      v8 = static TTRQuickEntryReminderCreationInteractorCapability.createReminder(objectID:initialList:)();
      v9 = static TTRIQuickEntryAssembly.createViewController(initialListForReminderCreation:reminderChangeItem:style:delegate:)();
      v10 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v9];
      swift_unknownObjectWeakAssign();
      v11 = [v10 presentationController];
      if (v11)
      {
        v12 = v11;
        swift_getObjectType();
        dispatch thunk of TTRIQuickEntryModuleInterface.prepareForModalPresentation(by:)();
      }

      [v7 presentViewController:v10 animated:1 completion:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1002A5298(uint64_t a1)
{
  v2 = type metadata accessor for TTRIViewControllerDismissalState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
  {
    if (v7 == enum case for TTRIViewControllerDismissalState.requested(_:))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        v10 = [Strong presentingViewController];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 presentedViewController];
          if (v12)
          {
            v13 = v12;
            sub_100003540(0, &qword_10076AD28, UIViewController_ptr);
            v14 = v9;
            v15 = static NSObject.== infix(_:_:)();

            if (v15)
            {
              [v11 dismissViewControllerAnimated:1 completion:0];
              v9 = v14;
            }

            else
            {
              v9 = v11;
              v11 = v14;
            }
          }

          v9 = v11;
        }
      }
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }
}

void sub_1002A5474(uint64_t a1, uint64_t a2, uint64_t countAndFlagsBits, void *a4, uint64_t a5, uint64_t a6)
{
  v10._countAndFlagsBits = 0x9C80E2206E696F4ALL;
  v10._object = 0xAE003F9D80E24025;
  v11._object = 0x800000010067CEC0;
  v11._countAndFlagsBits = 0xD000000000000037;
  TTRLocalizedString(_:comment:)(v10, v11);
  sub_100058000(&unk_100786CB0, &qword_100636EF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D400;
  *(v12 + 56) = &type metadata for String;
  v13 = sub_10005C390();
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  String.init(format:_:)();

  if (a4)
  {
    object = a4;
  }

  else
  {
    v15._countAndFlagsBits = 0x656E6F656D6F53;
    v16._countAndFlagsBits = 0xD000000000000067;
    v16._object = 0x800000010067CF00;
    v15._object = 0xE700000000000000;
    v17 = TTRLocalizedString(_:comment:)(v15, v16);
    countAndFlagsBits = v17._countAndFlagsBits;
    object = v17._object;
  }

  v18._object = 0x800000010067CF70;
  v19._countAndFlagsBits = 0xD00000000000004ALL;
  v19._object = 0x800000010067CFB0;
  v18._countAndFlagsBits = 0x100000000000003BLL;
  TTRLocalizedString(_:comment:)(v18, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10062D3F0;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = v13;
  *(v20 + 32) = countAndFlagsBits;
  *(v20 + 40) = object;
  *(v20 + 96) = &type metadata for String;
  *(v20 + 104) = v13;
  *(v20 + 72) = a1;
  *(v20 + 80) = a2;

  String.init(format:_:)();

  v21 = String._bridgeToObjectiveC()();

  v22 = String._bridgeToObjectiveC()();

  v42 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];

  v23._countAndFlagsBits = 0xD000000000000036;
  v24._countAndFlagsBits = 0x747065636341;
  v23._object = 0x800000010067D000;
  v24._object = 0xE600000000000000;
  TTRLocalizedString(_:comment:)(v24, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;

  v26 = String._bridgeToObjectiveC()();

  v49 = sub_1002A6408;
  v50 = v25;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_1001762CC;
  v48 = &unk_10071DD60;
  v27 = _Block_copy(&aBlock);

  v28 = objc_opt_self();
  v29 = [v28 actionWithTitle:v26 style:0 handler:v27];
  _Block_release(v27);

  v30._countAndFlagsBits = 0x656E696C636544;
  v31._object = 0x800000010067D040;
  v30._object = 0xE700000000000000;
  v31._countAndFlagsBits = 0xD000000000000037;
  TTRLocalizedString(_:comment:)(v30, v31);
  v32 = swift_allocObject();
  *(v32 + 16) = a5;
  *(v32 + 24) = a6;

  v33 = String._bridgeToObjectiveC()();

  v49 = sub_1002A6434;
  v50 = v32;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_1001762CC;
  v48 = &unk_10071DDB0;
  v34 = _Block_copy(&aBlock);

  v35 = [v28 actionWithTitle:v33 style:2 handler:v34];
  _Block_release(v34);

  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = a5;
  *(v36 + 24) = a6;

  v37 = String._bridgeToObjectiveC()();

  v49 = sub_1002A6460;
  v50 = v36;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_1001762CC;
  v48 = &unk_10071DE00;
  v38 = _Block_copy(&aBlock);

  v39 = [v28 actionWithTitle:v37 style:1 handler:v38];
  _Block_release(v38);

  [v42 addAction:v29];
  [v42 addAction:v35];
  [v42 addAction:v39];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    [Strong presentViewController:v42 animated:1 completion:0];
  }
}

void sub_1002A5A68(void *a1)
{
  v2 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = type metadata accessor for TTRIPopoverAnchor();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 store];
  v11 = [a1 objectID];
  aBlock[0] = 0;
  v12 = [v10 fetchListWithObjectID:v11 error:aBlock];

  if (v12)
  {
    v13 = aBlock[0];
    if ([v12 canBeShared] && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v15 = Strong;
      _s9Reminders23TTRListSharingUtilitiesC26addCKShareObserverIfNeeded3forySo7REMListC_tFZ_0(v12);
      v16 = [v15 view];
      if (v16)
      {
        v17 = v16;
        static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();

        (*(v6 + 16))(v4, v9, v5);
        (*(v6 + 56))(v4, 0, 1, v5);
        v18 = _s9Reminders23TTRListSharingUtilitiesC32shareSheetActivityViewController3for13popoverAnchorSo010UIActivityhI0CSo7REMListC_0A6UICore011TTRIPopoverL0VSgtFZ_0(v12, v4);
        sub_1000079B4(v4, &unk_10076FCD0, &unk_1006304D0);
        v19 = swift_allocObject();
        v19[2] = v12;
        aBlock[4] = sub_1002A648C;
        aBlock[5] = v19;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002A4958;
        aBlock[3] = &unk_10071DE50;
        v20 = _Block_copy(aBlock);
        v21 = v12;

        [v18 setCompletionWithItemsHandler:v20];
        _Block_release(v20);
        [v15 presentViewController:v18 animated:1 completion:0];

        (*(v6 + 8))(v9, v5);
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

  else
  {
    v22 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1002A5DFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((a2 & 1) == 0)
  {
    _s9Reminders23TTRListSharingUtilitiesC11cancelShare3forySo7REMListC_tFZ_0(a5);
    if (a4)
    {
      swift_errorRetain();
      if (qword_100767100 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100003E30(v7, qword_100777F30);
      swift_errorRetain();
      v8 = a5;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18 = v13;
        *v11 = 138412546;
        v14 = [v8 objectID];
        *(v11 + 4) = v14;
        *v12 = v14;
        *(v11 + 12) = 2080;
        swift_getErrorValue();
        v15 = Error.rem_errorDescription.getter();
        v17 = sub_100004060(v15, v16, &v18);

        *(v11 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v9, v10, "Share sheet failed, canceling the share request. {list.objectID: %@, error: %s}", v11, 0x16u);
        sub_1000079B4(v12, &unk_10076DF80, &qword_10062F730);

        sub_100004758(v13);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1002A6034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  v7[6] = swift_task_alloc();

  return _swift_task_switch(sub_1002A60D4, 0, 0);
}

uint64_t sub_1002A60D4()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = *(v0[2] + 40);
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TTRIPopoverAnchor();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1, v2, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v12 = (*(v3 + 16) + **(v3 + 16));
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1002A6290;
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[3];

  return v12(v10, v8, v9, ObjectType, v3);
}

uint64_t sub_1002A6290()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  sub_1000079B4(v1, &unk_10076FCD0, &unk_1006304D0);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1002A63B8()
{
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

double sub_1002A6494(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIQuickEntryStyle() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1002A5124(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1002A6558()
{
  sub_10056FD38();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowSearchResultViewModelSource(uint64_t a1)
{
  result = qword_100778048;
  if (!qword_100778048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1002A665C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableView] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_cancelButton] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_commitButton] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_tableDataController] = 0;
  a3[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_needsTableCellResize] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___badgeSection] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___badgeCell] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___nameCell] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___templateConfigurationSection] = 0;
  *&a3[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController____lazy_storage___includeCompletedCell] = 0;
  v7 = &a3[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_presenter];
  *v7 = a1;
  v7[1] = &off_10071F1B8;
  *&a3[OBJC_IVAR____TtC9Reminders32TTRITemplateSavingViewController_localUndoManager] = a2;
  v9.receiver = a3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_1002A6754(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRTemplateSavingViewModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[3] = type metadata accessor for TTRITemplateSavingRouter();
  v18[4] = &off_10072AD08;
  v18[0] = a2;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 40) = 0;
  swift_unknownObjectWeakInit();
  TTRTemplateSavingViewModel.init()();
  v12 = (a4 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_interactor);
  *v12 = a1;
  v12[1] = &protocol witness table for TTRTemplateSavingInteractor;
  sub_10000B0D8(v18, a4 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_router);
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_undoManager) = a3;
  type metadata accessor for TTRMainActorDeferredAction();
  swift_allocObject();
  v13 = a3;
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_deferredAction) = TTRMainActorDeferredAction.init()();
  sub_1002A6DF8(&qword_1007785E8, &unk_100639EA8, v14);

  TTRMainActorDeferredAction.delegate.setter();

  sub_1002FA208();

  sub_100004758(v18);
  v15 = OBJC_IVAR____TtC9Reminders27TTRITemplateSavingPresenter_viewModel;
  swift_beginAccess();
  (*(v9 + 40))(a4 + v15, v11, v8);
  swift_endAccess();
  return a4;
}

id sub_1002A6970(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for TTRTemplateSavingInteractor.CompletedReminderCountState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListOrCustomSmartList();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(TTRUndoManager);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithDebugIdentifier:v13];

  (*(v9 + 16))(v11, a1, v8);
  (*(v5 + 104))(v7, enum case for TTRTemplateSavingInteractor.CompletedReminderCountState.notLoaded(_:), v4);
  type metadata accessor for TTRTemplateSavingInteractor();
  swift_allocObject();
  v15 = v14;
  v16 = TTRTemplateSavingInteractor.init(sourceList:undoManager:completedReminderCountState:)();
  v17 = type metadata accessor for TTRITemplateSavingRouter();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v18 + 32) = a2;
  v39[3] = v17;
  v39[4] = &off_10072AD08;
  v39[0] = v18;
  type metadata accessor for TTRITemplateSavingPresenter(0);
  v19 = swift_allocObject();
  v20 = sub_10000AE84(v39, v17);
  v21 = __chkstk_darwin(v20);
  v23 = (&v39[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v26 = a2;
  v27 = v15;

  v28 = sub_1002A6754(v16, v25, v27, v19);
  sub_100004758(v39);
  v29 = objc_allocWithZone(type metadata accessor for TTRITemplateSavingViewController());

  v31 = sub_1002A665C(v30, v27, v29);
  v32 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v31];
  sub_1002A6DF8(&qword_1007785E0, &unk_100639EE0, v33);

  TTRTemplateSavingInteractor.delegate.setter();
  *(v28 + 24) = &off_100723BC0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v34 = v32;
  [v34 setModalPresentationStyle:2];
  v35 = [v34 presentationController];
  if (v35)
  {
    v36 = v35;
    [v35 setDelegate:v31];
  }

  if (a2)
  {
    *&v26[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_presentee + 8] = &off_100723BB0;
    swift_unknownObjectWeakAssign();
  }

  TTRTemplateSavingInteractor.start()();

  return v34;
}

uint64_t sub_1002A6DF8(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRITemplateSavingPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002A70D4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100778870);
  v1 = sub_100003E30(v0, qword_100778870);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002A719C(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = swift_unknownObjectRetain();
    v3 = sub_1004E86AC(v2, &off_100729E88, a1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong navigationController];

      if (v6)
      {
        [v6 pushViewController:v3 animated:1];
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100767108 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003E30(v7, qword_100778870);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Expect non-nil moduleDelegate", v9, 2u);
    }
  }
}

uint64_t sub_1002A7344()
{
  swift_unknownObjectWeakDestroy();
  sub_10014E5BC(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1002A73A8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100778930);
  v1 = sub_100003E30(v0, qword_100778930);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002A7470()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  if (*(v0 + 25))
  {
    if (qword_100767110 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_100778930);
    sub_1002AABC4(v0, v35);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    sub_1002AAEDC(v1);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      *v7 = 136315650;
      v8 = Array.description.getter();
      v9 = v3;
      v11 = sub_100004060(v8, v10, v35);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = Array.description.getter();
      v14 = sub_100004060(v12, v13, v35);

      *(v7 + 14) = v14;
      v3 = v9;
      *(v7 + 22) = 2080;
      v15 = Array.description.getter();
      v17 = sub_100004060(v15, v16, v35);

      *(v7 + 24) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "AboutYourDevices shouldn't be shown when eligibleForAutoUpgrade=true. {upgradableDevices: %s, unsupportedDevices: %s, participants: %s}", v7, 0x20u);
      swift_arrayDestroy();
    }
  }

  v35[0] = v2;

  sub_100081340(v18);
  v19 = *(v35[0] + 16);

  v20 = *(v3 + 16);
  if (v19)
  {
    return 2 * (v20 != 0);
  }

  if (v20)
  {
    return 1;
  }

  if (qword_100767110 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100003E30(v22, qword_100778930);
  sub_1002AABC4(v1, v35);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  sub_1002AAEDC(v1);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v25 = 136315650;
    v26 = Array.description.getter();
    v28 = sub_100004060(v26, v27, v35);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v29 = Array.description.getter();
    v31 = sub_100004060(v29, v30, v35);

    *(v25 + 14) = v31;
    *(v25 + 22) = 2080;
    v32 = Array.description.getter();
    v34 = sub_100004060(v32, v33, v35);

    *(v25 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "AboutYourDevices shouldn't be shown when hasDevicesIssues=false and hasSharedListsIssues=false. {upgradableDevices: %s, unsupportedDevices: %s, participants: %s}", v25, 0x20u);
    swift_arrayDestroy();
  }

  return 0;
}

id *sub_1002A7858()
{
  v1 = type metadata accessor for TTRUserDefaults.WelcomeScreenVersion();
  __chkstk_darwin(v1 - 8);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_presenter);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(v2 + 64);
    v8[0] = *(v2 + 48);
    v8[1] = v5;
    v8[2] = *(v2 + 80);
    v9 = *(v2 + 96);
    sub_1002AAF0C(v8, v7);
    sub_10046E6FC(v8);
    type metadata accessor for TTRUserDefaults();
    v6 = static TTRUserDefaults.appUserDefaults.getter();
    static TTRUserDefaults.WelcomeScreenVersion.current.getter();
    TTRUserDefaults.lastSeenWelcomeScreenVersion.setter();

    sub_10000C36C((v4 + 72), *(v4 + 96));
    swift_unknownObjectRetain();
    sub_100502974(sub_10014E5B8, v4);

    return sub_1002AAF68(v8);
  }

  return result;
}

uint64_t sub_1002A7998()
{
  v0 = type metadata accessor for TTRUserDefaults.WelcomeScreenVersion();
  __chkstk_darwin(v0 - 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    type metadata accessor for TTRUserDefaults();
    v3 = static TTRUserDefaults.appUserDefaults.getter();
    static TTRUserDefaults.WelcomeScreenVersion.current.getter();
    TTRUserDefaults.lastSeenWelcomeScreenVersion.setter();

    sub_10000C36C((v2 + 72), *(v2 + 96));
    swift_unknownObjectRetain();
    sub_100502974(sub_10014E5B0, v2);
  }

  return result;
}

uint64_t sub_1002A7AA0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return sub_100004758(v9);
}

void sub_1002A7B14()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 systemVersion];

  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() helpViewControllerWithIdentifier:v3 version:v2];

  if (v4)
  {
    [v4 setShowTopicViewOnLoad:1];
    [v4 setDisplayHelpTopicsOnly:1];
    v5 = String._bridgeToObjectiveC()();
    [v4 setSelectedHelpTopicID:v5];

    v6 = objc_allocWithZone(UINavigationController);
    v7 = v4;
    oslog = [v6 initWithRootViewController:v7];
    [v7 setModalPresentationStyle:2];

    [v0 presentViewController:oslog animated:1 completion:0];
  }

  else
  {
    if (qword_100767110 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_100778930);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Unable to create HLPHelpViewController", v10, 2u);
    }
  }
}

uint64_t sub_1002A7D8C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1002A7B14();

  return sub_100004758(v6);
}

void sub_1002A7DEC(uint64_t a1)
{
  sub_1000046FC(a1, v22);
  sub_100003540(0, &unk_10077A690, UIButton_ptr);
  if (swift_dynamicCast())
  {
    v2 = [v21 titleLabel];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 text];

      if (v4)
      {
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v6;

        if ([objc_opt_self() canSendMail])
        {
          v8 = [objc_allocWithZone(MFMailComposeViewController) init];
          [v8 setMailComposeDelegate:v1];
          sub_100058000(&unk_100771E10, &qword_100634270);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_10062D400;
          *(v9 + 32) = v5;
          *(v9 + 40) = v7;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v8 setToRecipients:isa];

          v11._object = 0x800000010067DB60;
          v12._countAndFlagsBits = 0xD000000000000040;
          v12._object = 0x800000010067DB80;
          v11._countAndFlagsBits = 0xD00000000000001ELL;
          TTRLocalizedString(_:comment:)(v11, v12);
          v13 = String._bridgeToObjectiveC()();

          [v8 setSubject:v13];

          v14._object = 0x800000010067DBD0;
          v15._countAndFlagsBits = 0xD00000000000003FLL;
          v15._object = 0x800000010067DC80;
          v14._countAndFlagsBits = 0x10000000000000ACLL;
          TTRLocalizedString(_:comment:)(v14, v15);
          v16 = String._bridgeToObjectiveC()();

          [v8 setMessageBody:v16 isHTML:0];

          [v1 presentViewController:v8 animated:1 completion:0];
          return;
        }

        if (qword_100767110 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100003E30(v17, qword_100778930);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "Mail services are not available, unable to send email.", v20, 2u);
        }
      }
    }
  }
}

void sub_1002A8178()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&unk_100772600, &unk_1006348F0);
  __chkstk_darwin(v3 - 8);
  v333 = &v294 - v4;
  v5 = type metadata accessor for UIButton.Configuration();
  v302 = *(v5 - 8);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v335 = &v294 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341.receiver = v1;
  v341.super_class = ObjectType;
  objc_msgSendSuper2(&v341, "viewDidLoad", v6);
  sub_1004E6850(&v342);
  v8 = v345;
  v9 = &v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_viewModel];
  v10 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_viewModel];
  v11 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_viewModel + 8];
  v12 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_viewModel + 16];
  v13 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_viewModel + 24];
  v14 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_viewModel + 32];
  v15 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_viewModel + 40];
  v16 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_viewModel + 48];
  v17 = v343;
  *v9 = v342;
  *(v9 + 1) = v17;
  *(v9 + 2) = v344;
  *(v9 + 6) = v8;
  sub_1002AABC4(&v342, v340);
  sub_10014E49C(v10, v11, v12, v13, v14, v15, v16);
  v18 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_titleLabel;
  v20 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_titleLabel];
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_titleLabel] = v18;

  v328 = objc_opt_self();
  v21 = [v328 systemFontOfSize:34.0 weight:UIFontWeightBold];
  v22 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle1];
  v23 = [v22 scaledFontForFont:v21];

  v24 = *&v1[v19];
  if (!v24)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  [v24 setFont:v23];
  v25 = *&v1[v19];
  if (!v25)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v334 = v5;
  v307 = v23;
  v308 = v21;
  [v25 setNumberOfLines:0];
  v26._countAndFlagsBits = 0xD00000000000001FLL;
  v26._object = 0x800000010067D3E0;
  v27._countAndFlagsBits = 0xD000000000000022;
  v27._object = 0x800000010067D400;
  v28 = TTRLocalizedString(_:comment:)(v26, v27);
  v315 = v19;
  v29 = *&v1[v19];
  if (!v29)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v30 = v29;
  object = v28._object;
  v31 = String._bridgeToObjectiveC()();
  [v30 setText:v31];

  v32._object = 0x800000010067D430;
  v33._countAndFlagsBits = 0xD00000000000006CLL;
  v33._object = 0x800000010067D450;
  v32._countAndFlagsBits = 0xD00000000000001ELL;
  v34 = TTRLocalizedString(_:comment:)(v32, v33);
  countAndFlagsBits = v34._countAndFlagsBits;
  v35._countAndFlagsBits = 0xD00000000000005ALL;
  v35._object = 0x800000010067D4C0;
  v36._countAndFlagsBits = 0x6E6174726F706D49;
  v36._object = 0xEA00000000003A74;
  v37 = TTRLocalizedString(_:comment:)(v36, v35)._object;
  v323 = sub_100058000(&unk_100776BD0, &unk_100632860);
  inited = swift_initStackObject();
  v324 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = NSForegroundColorAttributeName;
  v39 = objc_opt_self();
  v321 = NSForegroundColorAttributeName;
  v322 = v39;
  v40 = [v39 ttr_systemRedColor];
  v319 = sub_100003540(0, &qword_100772610, UIColor_ptr);
  *(inited + 64) = v319;
  *(inited + 40) = v40;
  sub_100460A28(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_100776BE0, &unk_10062D7F0);
  v41 = objc_allocWithZone(NSAttributedString);
  v312 = v37;
  v42 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  v44 = v43;
  v45 = sub_1002AABFC();
  v320 = v44;
  v318 = v45;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v47 = [v41 initWithString:v42 attributes:isa];

  v48 = sub_100003540(0, &qword_1007708F0, NSAttributedString_ptr);
  sub_100460A28(_swiftEmptyArrayStorage);
  v326 = sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v49 = swift_allocObject();
  v325 = xmmword_10062D420;
  *(v49 + 16) = xmmword_10062D420;
  *(v49 + 32) = v47;
  v306 = v47;
  v313 = v34._object;
  v332 = v48;
  v50 = static NSAttributedString.formattedString(format:formatAttributes:attributedStringsToInsert:)();

  v51 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v52 = v328;
  v53 = [v328 _preferredFontForTextStyle:UIFontTextStyleBody variant:1024];
  [v51 setFont:v53];

  [v51 setNumberOfLines:0];
  v54 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceSubtitle];
  v301 = OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceSubtitle;
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceSubtitle] = v51;
  v55 = v51;

  v305 = v50;
  [v55 setAttributedText:v50];

  v56 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v327 = UIFontTextStyleBody;
  v57 = [v52 preferredFontForTextStyle:UIFontTextStyleBody];
  [v56 setFont:v57];

  [v56 setNumberOfLines:0];
  v58 = OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceExplanation;
  v59 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceExplanation];
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceExplanation] = v56;
  v60 = v56;

  v61._countAndFlagsBits = 0x100000000000008FLL;
  v61._object = 0x800000010067D520;
  v62._countAndFlagsBits = 0xD000000000000048;
  v62._object = 0x800000010067D5B0;
  TTRLocalizedString(_:comment:)(v61, v62);
  v63 = String._bridgeToObjectiveC()();

  [v60 setText:v63];

  v64 = sub_1002AAC54();
  v65 = OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceLearnMore;
  v66 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceLearnMore];
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceLearnMore] = v64;
  v67 = v64;

  [v67 addTarget:v1 action:"didTapDevicesLearnMore:" forControlEvents:64];
  v68 = *&v1[v65];
  if (!v68)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v300 = v58;
  v69 = v68;
  v70._countAndFlagsBits = 0xD000000000000058;
  v70._object = 0x800000010067D600;
  v71._countAndFlagsBits = 0x6F4D206E7261654CLL;
  v71._object = 0xAD0000A680E26572;
  TTRLocalizedString(_:comment:)(v71, v70);
  v72 = String._bridgeToObjectiveC()();

  [v69 setTitle:v72 forState:0];

  v299 = v65;
  v73 = *&v1[v65];
  if (!v73)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  countAndFlagsBits = UIAccessibilityTraitLink;
  [v73 setAccessibilityTraits:?];
  v74 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v75 = v328;
  v76 = [v328 preferredFontForTextStyle:v327];
  [v74 setFont:v76];

  [v74 setNumberOfLines:0];
  v77 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceList];
  v297 = OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceList;
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceList] = v74;
  v78 = v74;

  v296 = *(&v342 + 1);
  v298 = v343;
  v311 = BYTE8(v343);
  v79 = *(&v344 + 1);
  v316 = v345;
  v340[0] = v344;
  v346 = v344;

  v331 = sub_100058000(&unk_100781F20, &unk_10062D7E0);
  v330 = sub_10006089C();
  BidirectionalCollection<>.joined(separator:)();
  sub_1000079B4(v340, &unk_100781F20, &unk_10062D7E0);
  v80 = String._bridgeToObjectiveC()();

  [v78 setText:v80];

  v81 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v82 = v327;
  v83 = [v75 _preferredFontForTextStyle:v327 variant:1024];
  [v81 setFont:v83];

  [v81 setNumberOfLines:0];
  v84 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_unsupportedSubtitle];
  v295 = OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_unsupportedSubtitle;
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_unsupportedSubtitle] = v81;
  v85 = v81;

  v86._object = 0x800000010067D660;
  v87._countAndFlagsBits = 0x1000000000000057;
  v87._object = 0x800000010067D690;
  v86._countAndFlagsBits = 0x1000000000000021;
  TTRLocalizedString(_:comment:)(v86, v87);
  v88 = String._bridgeToObjectiveC()();

  [v85 setText:v88];

  v89 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v90 = [v75 preferredFontForTextStyle:v82];
  [v89 setFont:v90];

  [v89 setNumberOfLines:0];
  v91 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_unsupportedDeviceList];
  v294 = OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_unsupportedDeviceList;
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_unsupportedDeviceList] = v89;
  v92 = v89;

  v346 = v79;

  BidirectionalCollection<>.joined(separator:)();
  v317 = v79;

  v93 = String._bridgeToObjectiveC()();

  [v92 setText:v93];

  v94._countAndFlagsBits = 0xD000000000000020;
  v94._object = 0x800000010067D6F0;
  v95._countAndFlagsBits = 0xD000000000000072;
  v95._object = 0x800000010067D720;
  v96 = TTRLocalizedString(_:comment:)(v94, v95)._object;
  v97._countAndFlagsBits = 0xD000000000000058;
  v97._object = 0x800000010067D7A0;
  v98._countAndFlagsBits = 0x6E6174726F706D49;
  v98._object = 0xEA00000000003A74;
  v99 = TTRLocalizedString(_:comment:)(v98, v97)._object;
  v100 = swift_initStackObject();
  *(v100 + 16) = v324;
  v101 = v322;
  *(v100 + 32) = v321;
  v102 = [v101 ttr_systemRedColor];
  *(v100 + 64) = v319;
  *(v100 + 40) = v102;
  sub_100460A28(v100);
  swift_setDeallocating();
  sub_1000079B4(v100 + 32, &unk_100776BE0, &unk_10062D7F0);
  v103 = objc_allocWithZone(NSAttributedString);
  v309 = v99;
  v104 = String._bridgeToObjectiveC()();
  v105 = Dictionary._bridgeToObjectiveC()().super.isa;

  v106 = [v103 initWithString:v104 attributes:v105];

  sub_100460A28(_swiftEmptyArrayStorage);
  v107 = swift_allocObject();
  *(v107 + 16) = v325;
  *(v107 + 32) = v106;
  v304 = v106;
  v310 = v96;
  v108 = v1;
  v109 = static NSAttributedString.formattedString(format:formatAttributes:attributedStringsToInsert:)();

  v110 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v111 = v327;
  v112 = v328;
  v113 = [v328 _preferredFontForTextStyle:v327 variant:1024];
  [v110 setFont:v113];

  [v110 setNumberOfLines:0];
  v114 = *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListSubtitle];
  *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListSubtitle] = v110;
  v115 = v110;

  v303 = v109;
  [v115 setAttributedText:v109];

  v116 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v117 = [v112 preferredFontForTextStyle:v111];
  [v116 setFont:v117];

  [v116 setNumberOfLines:0];
  v118 = *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListExplanation];
  *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListExplanation] = v116;
  v119 = v116;

  v120._countAndFlagsBits = 0x100000000000007DLL;
  v120._object = 0x800000010067D800;
  v121._countAndFlagsBits = 0xD00000000000004DLL;
  v121._object = 0x800000010067D880;
  TTRLocalizedString(_:comment:)(v120, v121);
  v122 = String._bridgeToObjectiveC()();

  [v119 setText:v122];

  v123 = sub_1002AAC54();
  v124 = OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListLearnMore;
  v125 = *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListLearnMore];
  *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListLearnMore] = v123;
  v126 = v123;

  [v126 addTarget:v108 action:"didTapSharedListsLearnMore:" forControlEvents:64];
  v127 = *&v108[v124];
  if (!v127)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  v128 = v127;
  v129._countAndFlagsBits = 0xD00000000000005DLL;
  v129._object = 0x800000010067D8D0;
  v130._countAndFlagsBits = 0x6F4D206E7261654CLL;
  v130._object = 0xAD0000A680E26572;
  TTRLocalizedString(_:comment:)(v130, v129);
  v131 = String._bridgeToObjectiveC()();

  [v128 setTitle:v131 forState:0];

  v132 = *&v108[v124];
  if (!v132)
  {
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  [v132 setAccessibilityTraits:countAndFlagsBits];
  v133 = v316;
  v346 = v316;
  v134 = *(v316 + 16);
  v135 = _swiftEmptyArrayStorage;
  v337 = v108;
  if (v134)
  {
    v339 = _swiftEmptyArrayStorage;

    specialized ContiguousArray.reserveCapacity(_:)();
    v136 = objc_opt_self();
    v331 = "didTapSharedListsParticipant:";
    v332 = v136;
    v329 = (v302 + 56);
    v330 = (v302 + 16);
    v137 = (v302 + 8);
    v138 = v133 + 40;
    v140 = v334;
    v139 = v335;
    do
    {

      v142 = [v332 buttonWithType:1];
      static UIButton.Configuration.plain()();
      UIButton.Configuration.contentInsets.setter();
      v143 = v333;
      (*v330)(v333, v139, v140);
      (*v329)(v143, 0, 1, v140);
      UIButton.configuration.setter();
      v144 = [v142 titleLabel];
      if (v144)
      {
        v145 = v144;
        v146 = [v328 preferredFontForTextStyle:v327];
        [v145 setFont:v146];
      }

      v140 = v334;
      v139 = v335;
      (*v137)(v335, v334);
      [v142 addTarget:v337 action:v331 forControlEvents:64];
      v141 = String._bridgeToObjectiveC()();
      [v142 setTitle:v141 forState:0];

      [v142 setAccessibilityTraits:countAndFlagsBits];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v138 += 16;
      --v134;
    }

    while (v134);
    sub_1000079B4(&v346, &unk_100781F20, &unk_10062D7E0);
    v135 = v339;
    v108 = v337;
  }

  if (v135 >> 62)
  {
    v147 = sub_100003540(0, &qword_10076B020, UIView_ptr);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v147 = sub_100003540(0, &qword_10076B020, UIView_ptr);
  }

  v148 = objc_allocWithZone(UIStackView);
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  v149 = Array._bridgeToObjectiveC()().super.isa;

  v150 = [v148 initWithArrangedSubviews:v149];

  v151 = OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListRecipients;
  v152 = *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListRecipients];
  *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListRecipients] = v150;
  v153 = v150;

  if (!v153)
  {
    goto LABEL_158;
  }

  [v153 setAxis:1];

  v154 = *&v108[v151];
  if (!v154)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v335 = v147;
  [v154 setAlignment:1];
  v155 = *&v108[v151];
  if (!v155)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  [v155 setSpacing:6.0];
  v156 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v157 = [v328 preferredFontForTextStyle:v327];
  [v156 setFont:v157];

  [v156 setNumberOfLines:0];
  v158 = *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_macOSUnavailableLabel];
  *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_macOSUnavailableLabel] = v156;
  v159 = v156;

  v160._countAndFlagsBits = 0x1000000000000053;
  v160._object = 0x800000010067D930;
  v161._countAndFlagsBits = 0xD000000000000062;
  v161._object = 0x800000010067D990;
  TTRLocalizedString(_:comment:)(v160, v161);
  v162 = String._bridgeToObjectiveC()();

  [v159 setText:v162];

  v163 = sub_1002AAC54();
  v164 = OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_macOSUnavailableLearnMore;
  v165 = *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_macOSUnavailableLearnMore];
  *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_macOSUnavailableLearnMore] = v163;
  v166 = v163;

  [v166 addTarget:v108 action:"didTapMacOSUnavailableLearnMore:" forControlEvents:64];
  v167 = *(v164 + v108);
  if (!v167)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v168 = v167;
  v169._countAndFlagsBits = 0xD00000000000005FLL;
  v169._object = 0x800000010067DA00;
  v170._countAndFlagsBits = 0x6F4D206E7261654CLL;
  v170._object = 0xAD0000A680E26572;
  TTRLocalizedString(_:comment:)(v170, v169);
  v171 = String._bridgeToObjectiveC()();

  [v168 setTitle:v171 forState:0];

  v172 = *(v164 + v108);
  if (!v172)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  [v172 setAccessibilityTraits:countAndFlagsBits];
  v173 = swift_allocObject();
  *(v173 + 16) = v325;
  v174 = *&v108[v315];
  if (!v174)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  *(v173 + 32) = v174;
  v175 = objc_allocWithZone(UIStackView);
  v176 = v174;
  v177 = Array._bridgeToObjectiveC()().super.isa;

  v178 = [v175 initWithArrangedSubviews:v177];

  v179 = OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_pageStackView;
  v180 = *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_pageStackView];
  *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_pageStackView] = v178;
  v181 = v178;

  if (!v181)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  [v181 setTranslatesAutoresizingMaskIntoConstraints:0];

  v182 = *&v108[v179];
  if (!v182)
  {
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  [v182 setAxis:1];
  v183 = *&v108[v179];
  if (!v183)
  {
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  [v183 setAlignment:1];
  v184 = *&v108[v179];
  if (!v184)
  {
    goto LABEL_167;
  }

  v185 = objc_opt_self();
  v186 = v184;
  v187 = [v185 mainScreen];
  [v187 bounds];
  v189 = v188;
  v191 = v190;
  v193 = v192;
  v195 = v194;

  v347.origin.x = v189;
  v347.origin.y = v191;
  v347.size.width = v193;
  v347.size.height = v195;
  if (CGRectGetHeight(v347) > 568.0)
  {
    v196 = 15.0;
  }

  else
  {
    v196 = 11.0;
  }

  v197 = &selRef_tableView_estimatedHeightForHeaderInSection_;
  v198 = [v186 arrangedSubviews];
  v199 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v199 >> 62)
  {
    v200 = _CocoaArrayWrapper.endIndex.getter();
    if (v200)
    {
LABEL_31:
      v201 = __OFSUB__(v200, 1);
      v202 = v200 - 1;
      if (v201)
      {
        __break(1u);
      }

      else if ((v199 & 0xC000000000000001) == 0)
      {
        if ((v202 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v202 < *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v203 = *(v199 + 8 * v202 + 32);
LABEL_36:
          v204 = v203;

          [v186 setCustomSpacing:v204 afterView:v196];

          goto LABEL_40;
        }

        __break(1u);
        goto LABEL_54;
      }

      v203 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_36;
    }
  }

  else
  {
    v200 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v200)
    {
      goto LABEL_31;
    }
  }

LABEL_40:
  if (sub_1002A7470() == 1)
  {
    goto LABEL_112;
  }

  if (!*&v108[v301])
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v164 = &selRef_layoutIfNeeded;
  [v186 addArrangedSubview:?];
  v205 = [v186 arrangedSubviews];
  v199 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v199 >> 62))
  {
    v206 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v206)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

LABEL_54:
  v206 = _CocoaArrayWrapper.endIndex.getter();
  if (v206)
  {
LABEL_44:
    v201 = __OFSUB__(v206, 1);
    v207 = v206 - 1;
    if (v201)
    {
      __break(1u);
    }

    else if ((v199 & 0xC000000000000001) == 0)
    {
      if ((v207 & 0x8000000000000000) != 0)
      {
        goto LABEL_81;
      }

      if (v207 >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_84;
      }

      v208 = *(v199 + 8 * v207 + 32);
      goto LABEL_49;
    }

    v208 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_49:
    v209 = v208;

    [v186 setCustomSpacing:v209 afterView:6.0];

    goto LABEL_56;
  }

LABEL_55:

LABEL_56:
  if (!*&v108[v300])
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  [v186 v164[74]];
  if (!*&v108[v299])
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  [v186 v164[74]];
  v210 = [v186 arrangedSubviews];
  v211 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v211 >> 62)
  {
    v212 = _CocoaArrayWrapper.endIndex.getter();
    if (v212)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v212 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v212)
    {
LABEL_60:
      v201 = __OFSUB__(v212, 1);
      v213 = v212 - 1;
      if (!v201)
      {
        if ((v211 & 0xC000000000000001) == 0)
        {
          if ((v213 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v213 < *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v214 = *(v211 + 8 * v213 + 32);
LABEL_65:
            v215 = v214;

            [v186 setCustomSpacing:v215 afterView:22.0];

            goto LABEL_68;
          }

          __break(1u);
          goto LABEL_97;
        }

LABEL_82:
        v214 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_65;
      }

      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }
  }

LABEL_68:
  if (*&v108[v297])
  {
    [v186 v164[74]];
    if (!*(v317 + 16))
    {
      goto LABEL_101;
    }

    v216 = [v186 arrangedSubviews];
    v199 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v199 >> 62))
    {
      v217 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v217)
      {
LABEL_72:
        v201 = __OFSUB__(v217, 1);
        v218 = v217 - 1;
        if (v201)
        {
          goto LABEL_139;
        }

        if ((v199 & 0xC000000000000001) != 0)
        {
          goto LABEL_140;
        }

        if ((v218 & 0x8000000000000000) != 0)
        {
          goto LABEL_142;
        }

        if (v218 >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_145;
        }

        for (i = *(v199 + 8 * v218 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
        {
          v220 = i;

          [v186 setCustomSpacing:v220 afterView:22.0];

LABEL_86:
          if (!*&v108[v295])
          {
            goto LABEL_177;
          }

          [v186 v164[74]];
          v221 = [v186 v197[156]];
          v211 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v211 >> 62)
          {
LABEL_97:
            v222 = _CocoaArrayWrapper.endIndex.getter();
            if (v222)
            {
LABEL_89:
              v201 = __OFSUB__(v222, 1);
              v223 = v222 - 1;
              if (v201)
              {
                __break(1u);
LABEL_142:
                __break(1u);
              }

              else if ((v211 & 0xC000000000000001) == 0)
              {
                if ((v223 & 0x8000000000000000) != 0)
                {
LABEL_145:
                  __break(1u);
LABEL_146:
                  __break(1u);
                  goto LABEL_147;
                }

                if (v223 >= *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_146;
                }

                v224 = *(v211 + 8 * v223 + 32);
                goto LABEL_94;
              }

              v224 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_94:
              v225 = v224;

              [v186 setCustomSpacing:v225 afterView:6.0];

              goto LABEL_99;
            }
          }

          else
          {
            v222 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v222)
            {
              goto LABEL_89;
            }
          }

LABEL_99:
          if (!*&v108[v294])
          {
            goto LABEL_178;
          }

          [v186 v164[74]];
LABEL_101:
          if (sub_1002A7470() == 2)
          {
            v226 = [v186 v197[156]];
            v227 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (!(v227 >> 62))
            {
              v228 = *((v227 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v228)
              {
                goto LABEL_104;
              }

LABEL_111:

LABEL_112:
              sub_1002AA6EC(v186, v108);
              goto LABEL_113;
            }

            v228 = _CocoaArrayWrapper.endIndex.getter();
            if (!v228)
            {
              goto LABEL_111;
            }

LABEL_104:
            v201 = __OFSUB__(v228, 1);
            v229 = v228 - 1;
            if (!v201)
            {
              if ((v227 & 0xC000000000000001) == 0)
              {
                if ((v229 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_150:
                  __break(1u);
                  goto LABEL_151;
                }

                if (v229 >= *((v227 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_150;
                }

                v230 = *(v227 + 8 * v229 + 32);
                goto LABEL_109;
              }

LABEL_148:
              v230 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_109:
              v231 = v230;

              [v186 setCustomSpacing:v231 afterView:22.0];

              goto LABEL_112;
            }

LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

LABEL_113:
          countAndFlagsBits = v186;
          v232 = [v108 contentView];
          if (!*&v108[v179])
          {
            goto LABEL_168;
          }

          v233 = v232;
          [v232 addSubview:?];

          v234 = swift_allocObject();
          *(v234 + 16) = xmmword_10062D450;
          v235 = *&v108[v179];
          if (!v235)
          {
            goto LABEL_169;
          }

          v236 = [v235 leadingAnchor];
          v237 = [v108 contentView];
          v238 = [v237 leadingAnchor];

          v239 = [v236 constraintEqualToAnchor:v238];
          *(v234 + 32) = v239;
          v240 = *&v108[v179];
          if (!v240)
          {
            goto LABEL_170;
          }

          v241 = [v240 trailingAnchor];
          v242 = [v108 contentView];
          v243 = [v242 trailingAnchor];

          v244 = [v241 constraintEqualToAnchor:v243];
          *(v234 + 40) = v244;
          v245 = *&v108[v179];
          if (!v245)
          {
            goto LABEL_171;
          }

          v246 = [v245 topAnchor];
          v247 = [v108 contentView];
          v248 = [v247 topAnchor];

          v249 = [v246 constraintEqualToAnchor:v248];
          *(v234 + 48) = v249;
          v250 = *&v108[v179];
          if (!v250)
          {
            goto LABEL_172;
          }

          v251 = v250;

          v252 = [v251 bottomAnchor];

          v253 = [v108 contentView];
          v254 = [v253 bottomAnchor];

          v255 = [v252 constraintEqualToAnchor:v254];
          *(v234 + 56) = v255;
          v256 = objc_opt_self();
          sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
          v257 = Array._bridgeToObjectiveC()().super.isa;

          [v256 activateConstraints:v257];

          v186 = 0xD00000000000001ELL;
          v179 = v317;
          v197 = countAndFlagsBits;
          if ((v311 & 1) == 0)
          {
            goto LABEL_130;
          }

          v164 = v298;

          v258 = [(SEL *)v197 arrangedSubviews];
          v259 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v259 >> 62)
          {
            v260 = _CocoaArrayWrapper.endIndex.getter();
            v108 = v337;
            if (!v260)
            {
LABEL_128:

              goto LABEL_129;
            }
          }

          else
          {
            v260 = *((v259 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v108 = v337;
            if (!v260)
            {
              goto LABEL_128;
            }
          }

          v201 = __OFSUB__(v260, 1);
          v261 = v260 - 1;
          if (v201)
          {
            __break(1u);
LABEL_136:
            v262 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_126;
          }

          if ((v259 & 0xC000000000000001) != 0)
          {
            goto LABEL_136;
          }

          if ((v261 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v261 < *((v259 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v262 = *(v259 + 8 * v261 + 32);
LABEL_126:
            v263 = v262;

            [(SEL *)v197 setCustomSpacing:v263 afterView:22.0];

LABEL_129:
            v264._object = 0x800000010067DAA0;
            v265._countAndFlagsBits = 0xD000000000000091;
            v265._object = 0x800000010067DAC0;
            v264._countAndFlagsBits = 0xD00000000000001ELL;
            TTRLocalizedString(_:comment:)(v264, v265);
            sub_100058000(&unk_100786CB0, &qword_100636EF0);
            v266 = swift_allocObject();
            *(v266 + 16) = v324;
            *(v266 + 56) = &type metadata for String;
            *(v266 + 64) = sub_10005C390();
            *(v266 + 32) = v296;
            *(v266 + 40) = v164;
            String.init(format:_:)();

            v267 = swift_initStackObject();
            *(v267 + 16) = v324;
            v268 = v321;
            *(v267 + 32) = v321;
            v269 = v268;
            v270 = [v322 secondaryLabelColor];
            *(v267 + 64) = v319;
            *(v267 + 40) = v270;
            sub_100460A28(v267);
            swift_setDeallocating();
            sub_1000079B4(v267 + 32, &unk_100776BE0, &unk_10062D7F0);
            v271 = objc_allocWithZone(NSAttributedString);
            v272 = String._bridgeToObjectiveC()();

            v273 = Dictionary._bridgeToObjectiveC()().super.isa;

            v274 = [v271 initWithString:v272 attributes:v273];

            v275 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
            v276 = [v328 _preferredFontForTextStyle:v327 variant:1024];
            [v275 setFont:v276];

            [v275 setNumberOfLines:0];
            [v275 setAttributedText:v274];
            v277 = *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_accountBeingUpgradedHint];
            *&v108[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_accountBeingUpgradedHint] = v275;
            v278 = v275;

            [(SEL *)v197 addArrangedSubview:v278];
LABEL_130:
            v339 = v340[0];
            sub_1002AAE6C(v340, &v338);

            sub_100081340(v279);
            v280 = v339[2];

            if (v280 || *(v316 + 16))
            {
              v281 = &selRef_linkButton;
            }

            else
            {
              v281 = &selRef_boldButton;
            }

            v282 = v337;
            v283 = [objc_opt_self() *v281];
            v284._countAndFlagsBits = 0xD000000000000017;
            v285._countAndFlagsBits = 0x4E20657461647055;
            v284._object = 0x800000010067DA60;
            v285._object = 0xEA0000000000776FLL;
            TTRLocalizedString(_:comment:)(v285, v284);
            v286 = String._bridgeToObjectiveC()();

            [v283 setTitle:v286 forState:0];

            [v283 addTarget:v282 action:"didTapUpgradeButton:" forControlEvents:64];
            v287 = [objc_opt_self() linkButton];
            v288._countAndFlagsBits = 0xD000000000000019;
            v289._countAndFlagsBits = 0x4C20657461647055;
            v289._object = 0xEC00000072657461;
            v288._object = 0x800000010067DA80;
            TTRLocalizedString(_:comment:)(v289, v288);
            v290 = String._bridgeToObjectiveC()();

            [v287 setTitle:v290 forState:0];

            [v287 addTarget:v282 action:"didTapLaterButton:" forControlEvents:64];
            v339 = v340[0];
            sub_1002AAE6C(v340, &v338);

            sub_100081340(v291);

            v292 = [v282 buttonTray];
            [v292 addButton:v283];

            v293 = [v282 buttonTray];
            [v293 addButton:v287];

            sub_1002AAEDC(&v342);
            return;
          }

          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          ;
        }
      }

LABEL_85:

      goto LABEL_86;
    }

LABEL_84:
    v217 = _CocoaArrayWrapper.endIndex.getter();
    if (v217)
    {
      goto LABEL_72;
    }

    goto LABEL_85;
  }

LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
}