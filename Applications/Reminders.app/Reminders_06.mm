id sub_1000AE6AC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_timeZoneOverrideChangedObserver] = 0;
  v5 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
  v6 = type metadata accessor for TTRIAccountsListsSelection(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&v2[v5], 1, 1, v6);
  v8 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel;
  type metadata accessor for TTRAccountsListsViewModel();
  swift_allocObject();
  *&v2[v8] = TTRAccountsListsViewModel.init()();
  v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentEditModeTransition] = 2;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController] = 0;
  v9 = &v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_pendingSearchTerm];
  *v9 = 0;
  v9[1] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addListButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addReminderButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___searchButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___timeZoneOverrideButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addGroupButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___editButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___actionMenuButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___actionMenuWithBadgeButton] = 0;
  v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_needsWorkaround51600172] = 1;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_accountSpinnerVisibleByAccountID] = &_swiftEmptyDictionarySingleton;
  v10 = &v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentBarButtonItemConfiguration];
  v10[2] = -2;
  *v10 = -258;
  v11 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_dropExceedsMaximumNumberOfPinnedListsTracker;
  type metadata accessor for TTRIAccountsListsDropExceedsMaximumNumberOfPinnedListsTracker();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v2[v11] = v12;
  v7(&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_lastAppliedSelection], 1, 1, v6);
  sub_1001013F4(&qword_10076BE40, type metadata accessor for TTRIAccountsListsViewController, &unk_10062FB30);
  static TTRTypedController.currentArgument.getter();
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter] = v17[1];
  v17[0].receiver = v2;
  v17[0].super_class = ObjectType;
  v13 = [(objc_super *)v17 initWithCoder:a1];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    sub_1000AE568();
  }

  return v14;
}

id sub_1000AE95C()
{
  ObjectType = swift_getObjectType();
  v2 = v0;
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + qword_10078A548);
      if (v6)
      {
        v7 = v6;
        sub_1003BBE48();
      }
    }
  }

  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t type metadata accessor for TTRIAccountsListsViewController(uint64_t a1)
{
  result = qword_10076B3B8;
  if (!qword_10076B3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AEC7C()
{
  v188.receiver = v0;
  v188.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v188, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_134;
  }

  v2 = v1;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_131;
  }

  v4 = *(v3 + qword_10078A540);
  if (!v4)
  {
    __break(1u);
    goto LABEL_103;
  }

  type metadata accessor for TTRIAccountsListsViewListCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = v4;
  v7 = String._bridgeToObjectiveC()();
  [v6 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

  v8 = [v0 view];
  if (!v8)
  {
    goto LABEL_134;
  }

  v2 = v8;
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
LABEL_131:

    goto LABEL_134;
  }

  v10 = *(v9 + qword_10078A540);
  if (!v10)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  type metadata accessor for TTRIAccountsListsViewPinnedListsCell();
  v11 = swift_getObjCClassFromMetadata();
  v12 = v10;
  v13 = String._bridgeToObjectiveC()();
  [v12 registerClass:v11 forCellReuseIdentifier:v13];

  v14 = [v0 view];
  if (!v14)
  {
    goto LABEL_134;
  }

  v2 = v14;
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    goto LABEL_131;
  }

  v16 = *(v15 + qword_10078A540);
  if (!v16)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  type metadata accessor for TTRIAccountListsViewGroupCell(0);
  v17 = swift_getObjCClassFromMetadata();
  v18 = v16;
  v19 = String._bridgeToObjectiveC()();
  [v18 registerClass:v17 forCellReuseIdentifier:v19];

  v20 = [v0 view];
  if (!v20)
  {
    goto LABEL_134;
  }

  v2 = v20;
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    goto LABEL_131;
  }

  v22 = *(v21 + qword_10078A540);
  if (!v22)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  type metadata accessor for TTRIRemindersListTipCell();
  v23 = swift_getObjCClassFromMetadata();
  v24 = v22;
  v25 = String._bridgeToObjectiveC()();
  [v24 registerClass:v23 forCellReuseIdentifier:v25];

  v26 = [v0 view];
  if (!v26)
  {
    goto LABEL_134;
  }

  v2 = v26;
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    goto LABEL_131;
  }

  v28 = *(v27 + qword_10078A540);
  if (!v28)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  type metadata accessor for TTRIHashtagCollectionCell();
  v29 = swift_getObjCClassFromMetadata();
  v30 = v28;
  v31 = String._bridgeToObjectiveC()();
  [v30 registerClass:v29 forCellReuseIdentifier:v31];

  v32 = [v0 view];
  if (!v32)
  {
    goto LABEL_134;
  }

  v2 = v32;
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    goto LABEL_131;
  }

  v34 = *(v33 + qword_10078A540);
  if (!v34)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  type metadata accessor for TTRIInlinePermissionHeaderViewCell();
  v35 = swift_getObjCClassFromMetadata();
  v36 = v34;
  v37 = String._bridgeToObjectiveC()();
  [v36 registerClass:v35 forCellReuseIdentifier:v37];

  v38 = [v0 view];
  if (!v38)
  {
    goto LABEL_134;
  }

  v2 = v38;
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    goto LABEL_131;
  }

  v40 = *(v39 + qword_10078A540);
  if (!v40)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  type metadata accessor for TTRIInlinePermissionPrimaryButtonViewCell();
  v41 = swift_getObjCClassFromMetadata();
  v42 = v40;
  v43 = String._bridgeToObjectiveC()();
  [v42 registerClass:v41 forCellReuseIdentifier:v43];

  v44 = [v0 view];
  if (!v44)
  {
    goto LABEL_134;
  }

  v2 = v44;
  v45 = swift_dynamicCastClass();
  if (!v45)
  {
    goto LABEL_131;
  }

  v46 = *(v45 + qword_10078A540);
  if (!v46)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  sub_100058000(&qword_10076BD18, &qword_10062FED0);
  v47 = swift_getObjCClassFromMetadata();
  v48 = v46;
  v49 = String._bridgeToObjectiveC()();
  [v48 registerClass:v47 forCellReuseIdentifier:v49];

  v50 = [v0 view];
  if (!v50)
  {
    goto LABEL_134;
  }

  v2 = v50;
  v51 = swift_dynamicCastClass();
  if (!v51)
  {
    goto LABEL_131;
  }

  v52 = *(v51 + qword_10078A540);
  if (!v52)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  type metadata accessor for TTRIAccountsListsRecentlyDeletedCell(0);
  v53 = swift_getObjCClassFromMetadata();
  v54 = v52;
  v55 = String._bridgeToObjectiveC()();
  [v54 registerClass:v53 forCellReuseIdentifier:v55];

  v56 = [v0 view];
  if (!v56)
  {
    goto LABEL_134;
  }

  v2 = v56;
  v57 = swift_dynamicCastClass();
  if (!v57)
  {
    goto LABEL_131;
  }

  v58 = *(v57 + qword_10078A540);
  if (!v58)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  type metadata accessor for TTRIAccountsListsSuggestGroceriesCell(0);
  v59 = swift_getObjCClassFromMetadata();
  v60 = v58;
  v61 = String._bridgeToObjectiveC()();
  [v60 registerClass:v59 forCellReuseIdentifier:v61];

  v62 = [v0 view];
  if (!v62)
  {
    goto LABEL_134;
  }

  v2 = v62;
  v63 = swift_dynamicCastClass();
  if (!v63)
  {
    goto LABEL_131;
  }

  v64 = v63;
  static TTRAccesibility.AccountsList.ID.AccountsListTable.getter();
  v65 = String._bridgeToObjectiveC()();

  [v64 setAccessibilityIdentifier:v65];

  v66 = [v0 view];
  if (!v66)
  {
    goto LABEL_134;
  }

  v67 = v66;
  v68 = swift_dynamicCastClass();
  if (!v68)
  {
LABEL_133:

    goto LABEL_134;
  }

  v69 = v68;
  sub_100058000(&qword_10076BD20, &qword_10062FED8);
  swift_allocObject();
  v2 = v0;
  v70 = sub_1003D8280();

  v71 = *(v69 + qword_10078A548);
  if (!v71)
  {
    goto LABEL_112;
  }

  v72 = v71;
  sub_1003BB374(v70);

  v73 = [v2 view];
  if (!v73)
  {
    goto LABEL_134;
  }

  v74 = v73;
  v75 = swift_dynamicCastClass();
  if (!v75)
  {
    goto LABEL_132;
  }

  v76 = v75;
  sub_100058000(&qword_10076BD28, &qword_10062FEE0);
  v77 = swift_allocObject();
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77[2] = sub_100100E1C;
  v77[3] = v78;
  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77[4] = sub_100100E24;
  v77[5] = v79;
  v80 = *(v76 + qword_10078A548);
  if (!v80)
  {
    goto LABEL_113;
  }

  v81 = v80;

  *&v81[qword_100771748] = v77;

  v82 = [v2 view];
  if (!v82)
  {
    goto LABEL_134;
  }

  v67 = v82;
  v83 = swift_dynamicCastClass();
  if (!v83)
  {
    goto LABEL_133;
  }

  v84 = v83;
  sub_100058000(&qword_10076BD30, &qword_10062FEE8);
  swift_allocObject();
  v85 = v2;
  v2 = sub_1003D84F0();

  sub_100058000(&qword_10076BD38, &qword_10062FEF0);
  swift_allocObject();
  v86 = v85;

  v87 = sub_1003D8C94();

  v2[74] = v87;

  sub_100058000(&qword_10076BD40, &qword_10062FEF8);
  swift_allocObject();
  v88 = v86;
  v89 = sub_1000F4B24(v88);

  v2[75] = v89;

  v90 = *(v84 + qword_10078A548);
  if (!v90)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  *&v90[qword_100771758] = v2;

  v91 = v90;

  v92 = *&v91[qword_100771730];
  v93 = v2[2];

  v94 = v92;
  v95 = v93();

  if (v95)
  {
    v96 = v91;
  }

  else
  {
    v96 = 0;
  }

  [v94 setDelegate:v96];

  v97 = [v88 view];
  if (!v97)
  {
    goto LABEL_134;
  }

  v67 = v97;
  v98 = swift_dynamicCastClass();
  if (!v98)
  {
    goto LABEL_133;
  }

  v99 = v98;
  v100 = objc_allocWithZone(sub_100058000(&qword_10076BD48, &qword_10062FF00));
  v2 = v88;
  v101 = sub_1003D8D98();

  v102 = *(v99 + qword_10078A548);
  if (!v102)
  {
    goto LABEL_115;
  }

  v103 = qword_100771708;
  v104 = *&v102[qword_100771708];
  *&v102[qword_100771708] = v101;
  v105 = v101;
  v106 = v102;

  if (*&v102[v103])
  {
    swift_unknownObjectWeakAssign();
    v107 = *&v102[v103];
  }

  else
  {
    v107 = 0;
  }

  [*&v106[qword_100771730] setDragDelegate:v107];

  v108 = [v2 view];
  if (!v108)
  {
    goto LABEL_134;
  }

  v67 = v108;
  v109 = swift_dynamicCastClass();
  if (!v109)
  {
    goto LABEL_133;
  }

  v110 = v109;
  v111 = objc_allocWithZone(sub_100058000(&qword_10076BD50, &qword_10062FF08));
  v2 = v2;
  v112 = sub_1003D8FDC();

  v113 = *(v110 + qword_10078A548);
  if (!v113)
  {
    goto LABEL_116;
  }

  v114 = qword_100771710;
  v115 = *&v113[qword_100771710];
  *&v113[qword_100771710] = v112;
  v116 = v112;
  v117 = v113;

  if (*&v113[v114])
  {
    swift_unknownObjectWeakAssign();
    v118 = *&v113[v114];
  }

  else
  {
    v118 = 0;
  }

  [*&v117[qword_100771730] setDropDelegate:v118];

  v119 = [v2 view];
  if (!v119)
  {
    goto LABEL_134;
  }

  v74 = v119;
  v120 = swift_dynamicCastClass();
  if (!v120)
  {
    goto LABEL_132;
  }

  v121 = v120 + qword_10077A998;
  swift_beginAccess();
  *(v121 + 8) = &off_100714F58;
  swift_unknownObjectWeakAssign();

  v122 = [v2 view];
  if (!v122)
  {
LABEL_134:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v74 = v122;
  v123 = swift_dynamicCastClass();
  if (!v123)
  {
LABEL_132:

    goto LABEL_134;
  }

  v124 = *(v123 + qword_10078A540);
  if (!v124)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  [v124 setDragInteractionEnabled:1];

  v125 = [v2 view];
  if (!v125)
  {
    goto LABEL_134;
  }

  v74 = v125;
  v126 = swift_dynamicCastClass();
  if (!v126)
  {
    goto LABEL_132;
  }

  v127 = *(v126 + qword_10078A540);
  if (!v127)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  [v127 setRowHeight:UITableViewAutomaticDimension];

  v128 = [v2 view];
  if (!v128)
  {
    goto LABEL_134;
  }

  v74 = v128;
  v129 = swift_dynamicCastClass();
  if (!v129)
  {
    goto LABEL_132;
  }

  v130 = *(v129 + qword_10078A540);
  if (!v130)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  [v130 setEstimatedRowHeight:56.0];

  v131 = [v2 view];
  if (!v131)
  {
    goto LABEL_134;
  }

  v74 = v131;
  v132 = swift_dynamicCastClass();
  if (!v132)
  {
    goto LABEL_132;
  }

  v133 = *(v132 + qword_10078A540);
  if (!v133)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  [v133 _setHeaderAndFooterViewsFloat:0];

  v134 = [v2 view];
  if (!v134)
  {
    goto LABEL_134;
  }

  v74 = v134;
  v135 = swift_dynamicCastClass();
  if (!v135)
  {
    goto LABEL_132;
  }

  v136 = *(v135 + qword_10078A540);
  if (!v136)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  [v136 setInsetsContentViewsToSafeArea:0];

  v137 = [v2 view];
  if (!v137)
  {
    goto LABEL_134;
  }

  v67 = v137;
  v138 = swift_dynamicCastClass();
  if (!v138)
  {
    goto LABEL_133;
  }

  v139 = v138;
  type metadata accessor for TTRIAccountsListsSectionHeaderView(0);
  static UITableViewHeaderFooterView.headerFooterViewIdentifier.getter();
  v140 = *(v139 + qword_10078A540);
  if (!v140)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v141 = swift_getObjCClassFromMetadata();
  v142 = v140;
  v143 = String._bridgeToObjectiveC()();

  [v142 registerClass:v141 forHeaderFooterViewReuseIdentifier:v143];

  v144 = [v2 view];
  if (!v144)
  {
    goto LABEL_134;
  }

  v67 = v144;
  v145 = swift_dynamicCastClass();
  if (!v145)
  {
    goto LABEL_133;
  }

  v146 = v145;
  type metadata accessor for TTRIAccountsListsTagsSectionHeaderView(0);
  static UITableViewHeaderFooterView.headerFooterViewIdentifier.getter();
  v147 = *(v146 + qword_10078A540);
  if (!v147)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v148 = swift_getObjCClassFromMetadata();
  v149 = v147;
  v150 = String._bridgeToObjectiveC()();

  [v149 registerClass:v148 forHeaderFooterViewReuseIdentifier:v150];

  v151 = [v2 view];
  if (!v151)
  {
    goto LABEL_134;
  }

  v74 = v151;
  v152 = swift_dynamicCastClass();
  if (!v152)
  {
    goto LABEL_132;
  }

  v153 = *(v152 + qword_10078A540);
  if (!v153)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v154 = v153;

  [v154 setKeyboardDismissMode:2];
  if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0 || (UIViewController.isIPadIdiom.getter() & 1) == 0)
  {
    goto LABEL_89;
  }

  v155 = [v2 view];
  if (!v155)
  {
    goto LABEL_134;
  }

  v74 = v155;
  v156 = swift_dynamicCastClass();
  if (!v156)
  {
    goto LABEL_132;
  }

  v157 = *(v156 + qword_10078A540);
  if (!v157)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v158 = v157;

  v159 = [objc_opt_self() clearColor];
  [v158 setBackgroundColor:v159];

LABEL_89:
  sub_1000B0100();
  v160 = [v2 view];
  if (!v160)
  {
    goto LABEL_134;
  }

  v67 = v160;
  if (!swift_dynamicCastClass())
  {
    goto LABEL_133;
  }

  sub_100058000(&qword_10076BD58, &unk_10062FF10);
  v161 = type metadata accessor for TTRUserDefaults();
  static TTRUserDefaults.appUserDefaults.getter();
  *(&v186 + 1) = v161;
  v187 = &protocol witness table for TTRUserDefaults;
  *&v185 = TTRTreeViewCollapsedStatesUserDefaultsPersistence.__allocating_init(autosaveName:userDefaults:)();
  sub_100058000(&qword_10076BD60, &unk_10063D3F0);
  swift_allocObject();
  sub_10000E188(&qword_10076BD68, &qword_10076BD58, &unk_10062FF10, &protocol conformance descriptor for TTRTreeViewCollapsedStatesUserDefaultsPersistence<A>);
  v162 = TTRAnyTreeViewCollapsedStatesPersisting.init<A>(base:)();
  sub_1003BE7B8(v162);

  sub_1000B021C();
  v163 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
  v164 = swift_unknownObjectRetain();
  v165 = sub_1000153CC(v164);
  v166 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController);
  *(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController) = v165;
  v167 = v165;

  v168 = [objc_allocWithZone(type metadata accessor for TTRISearchController()) initWithSearchResultsController:v167];
  v169 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  v170 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController);
  *(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController) = v168;
  v171 = v168;

  if (!v171)
  {
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v172 = *(v163 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v172 == 2)
  {
    LOBYTE(v172) = sub_100444328(v163);
  }

  [v171 setAutomaticallyShowsSearchResultsController:v172 & 1];

  v173 = *(v2 + v169);
  if (!v173)
  {
    goto LABEL_126;
  }

  [v173 setSearchResultsUpdater:v2];
  v174 = *(v2 + v169);
  if (!v174)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  [v174 setDelegate:v2];
  v175 = *(v2 + v169);
  if (!v175)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v176 = [v175 searchBar];
  [v176 setDelegate:v2];

  v177 = *(v2 + v169);
  if (!v177)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v178 = [v177 searchBar];
  [v178 setLookToDictateEnabled:1];

  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    v179 = [objc_opt_self() currentDevice];
    [v179 userInterfaceIdiom];
  }

  else
  {
    v179 = [v2 navigationItem];
    [v179 setSearchController:*(v2 + v169)];
  }

  sub_1000B17BC();
  sub_100058000(&unk_10076BD70, &unk_10062FF20);
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_10062D400;
  *(v180 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v180 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v181 = [objc_opt_self() defaultCenter];
  v182 = static NSNotificationName.timeZoneOverrideDidChange.getter();
  v185 = 0u;
  v186 = 0u;
  v183 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v184 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

  sub_1000079B4(&v185, &qword_10076AE40, &qword_10062EE50);

  *(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_timeZoneOverrideChangedObserver) = v184;
}

void sub_1000B0100()
{
  v4 = [v0 view];
  if (!v4)
  {
    goto LABEL_11;
  }

  type metadata accessor for TTRIAccountsListsTreeView(0);
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
LABEL_10:

LABEL_11:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = *(*&v0[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v3 == 2)
  {
    LOBYTE(v3) = sub_100444328(*&v0[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter]);
  }

  if (!*(v2 + qword_10078A540))
  {
    __break(1u);
    goto LABEL_10;
  }

  [*(v2 + qword_10078A540) setSelectionFollowsFocus:(v3 & 1) == 0];
}

void sub_1000B021C()
{
  v1 = v0;
  v127 = sub_100058000(&unk_10078D400, &qword_10062FC00);
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v118 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v135 = &v118 - v4;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v129 = *(v5 - 8);
  __chkstk_darwin(v5);
  v137 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076B870, &qword_10062FC08);
  __chkstk_darwin(v7 - 8);
  v136 = &v118 - v8;
  v139 = sub_100058000(&unk_10078D410, &unk_10062FC10);
  v9 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v118 - v10;
  v124 = sub_100058000(&unk_10076B880, &unk_10063BDF0);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v12 = (&v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v122 = &v118 - v14;
  v15 = type metadata accessor for TTRAccountsListsViewModel.AccountsCapabilities();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = __chkstk_darwin(v19).n128_u64[0];
  v22 = &v118 - v21;
  v23 = [v0 isEditing];
  v128 = v5;
  v121 = v9;
  v131 = v12;
  if (v23)
  {
    v24 = 0x800000;
    goto LABEL_20;
  }

  v25 = [v0 view];
  if (!v25)
  {
LABEL_98:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v26 = v25;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
LABEL_97:

    goto LABEL_98;
  }

  v28 = *(v27 + qword_10078A540);
  if (!v28)
  {
    __break(1u);
    goto LABEL_97;
  }

  v29 = [v28 isEditing];

  v30 = *(*&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v29)
  {
    if (v30 == 2)
    {
      LOBYTE(v30) = sub_100444328(*&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter]);
    }

    v24 = (v30 & 1) == 0;
  }

  else
  {
    if (v30 == 2)
    {
      LOBYTE(v30) = sub_100444328(*&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter]);
    }

    TTRAccountsListsViewModel.accountsCapabilities.getter();

    static TTRAccountsListsViewModel.AccountsCapabilities.supportsTemplates.getter();
    sub_1001013F4(&unk_10078D420, &type metadata accessor for TTRAccountsListsViewModel.AccountsCapabilities, &protocol conformance descriptor for TTRAccountsListsViewModel.AccountsCapabilities);
    v31 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v32 = *(v16 + 8);
    v32(v18, v15);
    v32(v22, v15);
    v33 = 256;
    if ((v31 & 1) == 0)
    {
      v34 = [objc_opt_self() daemonUserDefaults];
      v35 = [v34 timeZoneOverrideEnabled];

      if (v35)
      {
        v33 = 256;
      }

      else
      {
        v33 = 0;
      }
    }

    v36 = [objc_opt_self() daemonUserDefaults];
    v37 = [v36 timeZoneOverrideEnabled];

    if (v37)
    {
      v38 = 0x10000;
    }

    else
    {
      v38 = 0;
    }

    v24 = v33 | v38 | ((v30 & 1) == 0) | 0x400000;
  }

LABEL_20:
  v39 = static REMFeatureFlags.isSolariumEnabled.getter();
  v40 = v39;
  v41 = &v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentBarButtonItemConfiguration];
  v42 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentBarButtonItemConfiguration] | (v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentBarButtonItemConfiguration + 2] << 16);
  if ((~v42 & 0xFEFEFE) == 0)
  {
    goto LABEL_21;
  }

  v45 = (v42 >> 22) & 3;
  if (v45)
  {
    if (v45 != 1)
    {
      if (v24 != 0x800000)
      {
        goto LABEL_21;
      }

      goto LABEL_63;
    }

    if ((v24 & 0xC00000) != 0x400000 || ((v24 & 0x10000) == 0) == (v42 & 0x10000) >> 16 || ((v24 & 0x100) == 0) == (*&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentBarButtonItemConfiguration] & 0x100) >> 8)
    {
LABEL_21:
      v41[2] = BYTE2(v24);
      *v41 = v24;
      if (v24 >> 22 == 1)
      {
        if ((v39 & 1) == 0)
        {
          if ((v24 & 0x10000) != 0)
          {
            v48 = &OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___actionMenuWithBadgeButton;
            v49 = &static TTRCommonAsset.Image.ellipsisBadgeIcon.getter;
          }

          else
          {
            v48 = &OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___actionMenuButton;
            v49 = &static TTRCommonAsset.Image.actionMenuIcon.getter;
          }

          v52 = sub_1000B5330(v48, v49);
          sub_100058000(&qword_10076B780, &qword_10062D7C0);
          v53 = swift_allocObject();
          *(v53 + 16) = xmmword_10062D420;
          if ((v24 & 0x100) != 0)
          {
            v54 = v52;
          }

          else
          {
            v54 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___editButton, &selRef_didTapEdit_, 2);
          }

          *(v53 + 32) = v54;

          v141 = v53;
          goto LABEL_51;
        }

        sub_100058000(&qword_10076B780, &qword_10062D7C0);
        v43 = swift_allocObject();
        v134 = xmmword_10062D420;
        *(v43 + 16) = xmmword_10062D420;
        if ((v24 & 0x100) != 0)
        {
          v44 = sub_1000B5330(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___actionMenuButton, &static TTRCommonAsset.Image.actionMenuIcon.getter);
        }

        else
        {
          v44 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___editButton, &selRef_didTapEdit_, 2);
        }

        *(v43 + 32) = v44;
        v141 = v43;
        if ((v24 & 0x10000) != 0)
        {
          v50 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
          v51 = *(v50 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
          if (v51 == 2)
          {
            if (sub_100444328(v50))
            {
              goto LABEL_95;
            }
          }

          else if (v51)
          {
LABEL_95:
            v113 = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___timeZoneOverrideButton, sub_1000B4D08);
            [v113 setEnabled:1];

            inited = swift_initStackObject();
            *(inited + 16) = v134;
            v115 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___timeZoneOverrideButton];
            *(inited + 32) = v115;
            v116 = v115;
            sub_100018520(inited);
          }
        }
      }

      else
      {
        sub_100058000(&qword_10076B780, &qword_10062D7C0);
        v46 = swift_allocObject();
        v134 = xmmword_10062D420;
        *(v46 + 16) = xmmword_10062D420;
        *(v46 + 32) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"didTapDone:"];
        v141 = v46;
        if (v24 >> 22)
        {
          sub_100058000(&qword_10076B780, &qword_10062D7C0);
          v47 = swift_allocObject();
          *(v47 + 16) = v134;
          *(v47 + 32) = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addGroupButton, sub_1000B5030);
          v140 = v47;
          if ((v40 & 1) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_56;
        }
      }

LABEL_51:
      if (v24)
      {
        v140 = _swiftEmptyArrayStorage;
        if (v40)
        {
          goto LABEL_56;
        }

LABEL_58:
        sub_100058000(&qword_10076B780, &qword_10062D7C0);
        v57 = swift_initStackObject();
        *(v57 + 16) = xmmword_10062D410;
        *(v57 + 32) = [objc_opt_self() flexibleSpaceItem];
        *(v57 + 40) = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addListButton, sub_1000B4A70);
LABEL_59:
        sub_100018520(v57);
        if (static REMFeatureFlags.isSolariumEnabled.getter())
        {
          v60 = [objc_opt_self() currentDevice];
          v61 = [v60 userInterfaceIdiom];

          if (v61 != 1)
          {
            sub_100058000(&qword_10076B780, &qword_10062D7C0);
            v62 = swift_initStackObject();
            *(v62 + 16) = xmmword_10062D420;
            *(v62 + 32) = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___searchButton, &selRef_didTapSearch_, 12);
            sub_100018520(v62);
          }
        }

        v63 = [v1 navigationItem];
        sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v63 setRightBarButtonItems:isa];

        v65 = Array._bridgeToObjectiveC()().super.isa;

        [v1 setToolbarItems:v65];

        goto LABEL_63;
      }

      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      if ((v40 & 1) == 0)
      {
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_10062D420;
        v59 = *(sub_1000B4C4C() + 16);

        *(v58 + 32) = v59;
        v140 = v58;
        goto LABEL_58;
      }

      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_10062D410;
      *(v55 + 32) = [objc_opt_self() flexibleSpaceItem];
      v56 = *(sub_1000B4C4C() + 16);

      *(v55 + 40) = v56;
      v140 = v55;
LABEL_56:
      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      v57 = swift_initStackObject();
      *(v57 + 16) = xmmword_10062D420;
      *(v57 + 32) = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addListButton, sub_1000B4A70);
      goto LABEL_59;
    }
  }

  else if ((v24 & 0xC00000) != 0)
  {
    goto LABEL_21;
  }

  if ((v42 ^ v24))
  {
    goto LABEL_21;
  }

LABEL_63:
  LODWORD(v132) = v40;
  v66 = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addListButton, sub_1000B4A70);
  AssociatedConformanceWitness = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel;

  TTRAccountsListsViewModel.accountsCapabilities.getter();

  static TTRAccountsListsViewModel.AccountsCapabilities.supportsAddList.getter();
  sub_1001013F4(&unk_10078D420, &type metadata accessor for TTRAccountsListsViewModel.AccountsCapabilities, &protocol conformance descriptor for TTRAccountsListsViewModel.AccountsCapabilities);
  v67 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v68 = *(v16 + 8);
  v68(v18, v15);
  v68(v22, v15);
  [v66 setEnabled:v67 & 1];

  v69 = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addGroupButton, sub_1000B5030);

  TTRAccountsListsViewModel.accountsCapabilities.getter();

  static TTRAccountsListsViewModel.AccountsCapabilities.supportsGroups.getter();
  v70 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v68(v18, v15);
  v68(v22, v15);
  [v69 setEnabled:v70 & 1];

  v71 = sub_1000B4C4C();
  *&v134 = v1;

  TTRAccountsListsViewModel.accountsCapabilities.getter();

  static TTRAccountsListsViewModel.AccountsCapabilities.supportsAddReminder.getter();
  v72 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v68(v18, v15);
  v68(v22, v15);
  v73 = *(v71 + 48);
  if (v73)
  {
    v74 = v73;
    [v74 setEnabled:v72 & 1];
  }

  else
  {
    [*(v71 + 16) setEnabled:v72 & 1];
  }

  v75 = v128;
  v76 = v137;
  v77 = v136;

  v78 = v134;
  v79 = *(v134 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addListButton);
  if ([v79 isEnabled] && (sub_1000B90D4(v132 & 1, v78) & 1) != 0)
  {
    v80 = sub_100038760();
    [v79 setMenu:v80];
    if (v80)
    {
      v81 = 0;
    }

    else
    {
      v81 = "didTapNewList:";
    }

    [v79 setAction:v81];
  }

  v82 = *&v78[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addGroupButton];
  v120 = "didTapNewGroup:";
  v83 = v82;
  if ([v83 isEnabled])
  {
    v84 = [v78 toolbarItems];
    if (v84)
    {
      v85 = v84;
      sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
      v86 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v87 = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addGroupButton, sub_1000B5030);
      v141 = v87;
      __chkstk_darwin(v87);
      v117 = &v141;
      v88 = sub_10000C108(sub_1000386C0, (&v118 - 4), v86);

      if (v88)
      {
        v118 = v83;
        v89 = *&v78[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
        *&v134 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel;

        v90 = v122;
        TTRAccountsListsViewModel.accountCollection.getter();

        (*(v123 + 16))(v131, v90, v124);
        swift_getOpaqueTypeConformance2();
        dispatch thunk of Sequence.makeIterator()();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        dispatch thunk of IteratorProtocol.next()();
        v91 = v129;
        v92 = *(v129 + 48);
        v132 = v129 + 48;
        v131 = v92;
        if (v92(v77, 1, v75) == 1)
        {
          v93 = _swiftEmptyArrayStorage;
        }

        else
        {
          v98 = *(v91 + 32);
          v97 = v91 + 32;
          v130 = v98;
          v119 = (v97 - 16);
          v93 = _swiftEmptyArrayStorage;
          v99 = (v97 - 24);
          v129 = v97;
          v98(v76, v77, v75);
          while (1)
          {

            v100 = TTRAccountsListsViewModel.remAccount(for:)();

            if (v100)
            {
              v101 = [v100 groupContext];
              if (v101)
              {
                v102 = v101;
                v103 = v89;
                v104 = v125;
                (*v119)(v125, v76, v75);
                v105 = TTRAccountsListsViewModel.Account.name.getter();
                v106 = v76;
                v108 = v107;

                (*v99)(v106, v75);
                v109 = v127;
                *(v104 + *(v127 + 32)) = v102;
                v110 = (v104 + *(v109 + 28));
                *v110 = v105;
                v110[1] = v108;
                sub_100016588(v104, v135, &unk_10078D400, &qword_10062FC00);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v93 = sub_1005477C0(0, v93[2] + 1, 1, v93);
                }

                v112 = v93[2];
                v111 = v93[3];
                v76 = v137;
                v89 = v103;
                if (v112 >= v111 >> 1)
                {
                  v93 = sub_1005477C0((v111 > 1), v112 + 1, 1, v93);
                }

                v93[2] = v112 + 1;
                sub_100016588(v135, v93 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v112, &unk_10078D400, &qword_10062FC00);
                v77 = v136;
              }

              else
              {
                (*v99)(v76, v75);
              }
            }

            else
            {
              (*v99)(v76, v75);
            }

            dispatch thunk of IteratorProtocol.next()();
            if (v131(v77, 1, v75) == 1)
            {
              break;
            }

            v130(v76, v77, v75);
          }
        }

        (*(v121 + 8))(v138, v139);
        (*(v123 + 8))(v122, v124);
        v94 = swift_allocObject();
        swift_weakInit();
        v95.super.super.isa = sub_100038FC4(v93, sub_1000FD670, v94, &unk_10078D400, &qword_10062FC00, &unk_1007153E8, sub_100100420).super.super.isa;

        v83 = v118;
        [v118 setMenu:v95.super.super.isa];
        if (v95.super.super.isa)
        {
          v96 = 0;
        }

        else
        {
          v96 = v120;
        }

        [v83 setAction:v96];
      }
    }
  }
}

id sub_1000B17BC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v30 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_10076B870, &qword_10062FC08);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_100058000(&unk_10076B880, &unk_10063BDF0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (result)
  {
    v29 = v2;

    TTRAccountsListsViewModel.accountCollection.getter();

    sub_100015E68(v7);
    (*(v9 + 8))(v11, v8);
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      return sub_1000079B4(v7, &unk_10076B870, &qword_10062FC08);
    }

    (*(v13 + 32))(v16, v7, v12);
    if ((TTRAccountsListsViewModel.Account.isTheOnlyAccount.getter() & 1) == 0)
    {
      return (*(v13 + 8))(v16, v12);
    }

    (*(v13 + 16))(v4, v16, v12);
    (*(v30 + 104))(v4, enum case for TTRAccountsListsViewModel.Item.account(_:), v29);
    v18 = [v1 view];
    if (v18)
    {
      v19 = v18;
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
LABEL_18:

        goto LABEL_20;
      }

      v21 = *(v20 + qword_10078A548);
      if (!v21)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v22 = v21;
      v23 = sub_1000CA7E0(v4);

      if (v23)
      {
LABEL_13:
        (*(v30 + 8))(v4, v29);
        return (*(v13 + 8))(v16, v12);
      }

      v24 = [v1 view];
      if (v24)
      {
        v25 = v24;
        v26 = swift_dynamicCastClass();
        if (!v26)
        {

          goto LABEL_20;
        }

        v27 = *(v26 + qword_10078A548);
        if (v27)
        {
          v28 = v27;
          sub_1000F4FD4(v4, 5);

          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

LABEL_20:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1000B1C2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000B021C();
  }
}

uint64_t sub_1000B1CC8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TTRINavigationBarConfig();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v2;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "viewWillAppear:", a1 & 1, v7);
  v10 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
  if (*(v10 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState + 1) == 1)
  {
    *(v10 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState) = 1;
  }

  swift_getObjectType();
  dispatch thunk of TTRAccountsListsInteractorType.resumeUpdates()();
  sub_100019008(0, 0);
  v11 = UIViewController.effectiveNavigationControllerForBars.getter();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 navigationBar];
    v14 = [v2 view];
    if (!v14)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v15 = v14;
    v16 = [v14 tintColor];

    TTRINavigationBarConfig.init(tintColor:)();
    UINavigationBar.apply(_:)();

    (*(v6 + 8))(v9, v5);
  }

  v13 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
  if (!v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = *(v10 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  v18 = v13;
  if (v17 == 2)
  {
    LOBYTE(v17) = sub_100444328(v10);
  }

  [v13 setObscuresBackgroundDuringPresentation:v17 & 1];

  v19 = [v2 view];
  if (!v19)
  {
    goto LABEL_15;
  }

  v13 = v19;
  v20 = type metadata accessor for TTRIAccountsListsTreeView(0);
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v25[3] = v20;
    v25[4] = sub_1001013F4(&qword_10076BD10, type metadata accessor for TTRIAccountsListsTreeView, &unk_10063E710);
    v25[0] = v22;
    UIViewController.deselectRowsAlongsideTransition(for:animated:)();
    return sub_100004758(v25);
  }

LABEL_14:

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000B2030(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidAppear:", a1 & 1, v5);
  v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_needsWorkaround51600172] = 0;
  v8 = &v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_pendingSearchTerm];
  if (!*&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_pendingSearchTerm + 8])
  {
    goto LABEL_9;
  }

  v9 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  v10 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
  if (v10)
  {
    v11 = [v10 searchBar];
    if (*(v8 + 1))
    {

      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    [v11 setText:v12];

    *v8 = 0;
    *(v8 + 1) = 0;

    v13 = *&v1[v9];
    if (v13)
    {
      v14 = [v13 searchBar];
      v15 = [v14 text];

      if (v15)
      {

        sub_100058000(&qword_10076B7B8, &qword_10062FB98);
        v16 = swift_allocBox();
        sub_1000B3FE8(v17);
        *v7 = v16;
        swift_storeEnumTagMultiPayload();
        sub_1000B551C(v7, 4, 0);
        sub_100100B78(v7, type metadata accessor for TTRIAccountsListsSelection);
      }

LABEL_9:

      TTRModuleState.viewDidAppear()();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000B22B0(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillDisappear:", a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + qword_10078A540);
      if (v6)
      {
        v7 = [v6 contextMenuInteraction];

        [v7 dismissMenu];

        TTRModuleState.viewWillDisappear()();

        swift_getObjectType();
        return dispatch thunk of TTRAccountsListsInteractorType.pauseUpdates()();
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000B24D8()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLayoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_needsWorkaround51600172) == 1)
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + qword_10078A540);
        if (v4)
        {
          v5 = v4;

          [v5 _scrollToTopIfPossible:0];
          return;
        }

        __break(1u);
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1000B2634(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078D510, &unk_1006468E0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v37 - v11);
  v13 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  v39 = *(v13 - 8);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v2 splitViewController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 displayMode];

    if (v19 == 1)
    {
      goto LABEL_5;
    }
  }

  v20 = [v2 presentedViewController];
  if (v20)
  {

LABEL_5:
    v21 = 0;
    return v21 & 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    v21 = [v2 isEditing] ^ 1;
    return v21 & 1;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    sub_10000794C(v41, &v46, &qword_10076AE40, &qword_10062EE50);
    v24 = *(&v47 + 1);
    if (*(&v47 + 1))
    {
      v25 = sub_10000C36C(&v46, *(&v47 + 1));
      v26 = *(v24 - 8);
      v27 = __chkstk_darwin(v25);
      v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v29, v27);
      v30 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v26 + 8))(v29, v24);
      sub_100004758(&v46);
    }

    else
    {
      v30 = 0;
    }

    v45.receiver = v2;
    v45.super_class = ObjectType;
    v21 = objc_msgSendSuper2(&v45, "canPerformAction:withSender:", a1, v30);
    swift_unknownObjectRelease();
    return v21 & 1;
  }

  if ([v2 isEditing])
  {
    goto LABEL_5;
  }

  sub_10000794C(v41, &v46, &qword_10076AE40, &qword_10062EE50);
  if (!*(&v47 + 1))
  {
LABEL_25:
    v31 = &qword_10076AE40;
    v32 = &qword_10062EE50;
    v33 = &v46;
    goto LABEL_26;
  }

  sub_100003540(0, &unk_10076BAB0, UIKeyCommand_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v23 = v43;
  if ([v43 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v46 = v43;
  v47 = v44;
  if (!*(&v44 + 1))
  {

    goto LABEL_25;
  }

  sub_100058000(&qword_100768358, &qword_10062FDA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_5;
  }

  sub_1005F6EE8(v42, v12);
  if ((*(v39 + 48))(v12, 1, v13) == 1)
  {

    v31 = &unk_10078D510;
    v32 = &unk_1006468E0;
    v33 = v12;
LABEL_26:
    sub_1000079B4(v33, v31, v32);
    goto LABEL_5;
  }

  sub_1001006AC(v12, v16, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
  sub_100100B10(&v16[*(v13 + 20)], v9, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100100B78(v16, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);

    sub_100100B78(v9, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier);
    v21 = 1;
  }

  else
  {
    v35 = v37;
    v34 = v38;
    (*(v37 + 32))(v6, v9, v38);
    sub_10043F208(v6);
    v21 = v36;

    (*(v35 + 8))(v6, v34);
    sub_100100B78(v16, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
  }

  return v21 & 1;
}

void sub_1000B2CF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  ObjectType = swift_getObjectType();
  sub_100452454(v5);
  v43.receiver = v2;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, "setEditing:animated:", v5 & 1, a2 & 1);
  v7 = [v2 view];
  if (!v7)
  {
    goto LABEL_36;
  }

  v8 = v7;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    goto LABEL_35;
  }

  v10 = *(v9 + qword_10078A540);
  if (!v10)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v10 setEditing:v5 & 1 animated:a2 & 1];

  v11 = [v2 isEditing];
  v12 = [v2 view];
  v8 = v12;
  if (v11)
  {
    if (v12)
    {
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        __chkstk_darwin(v13);
        v38 = v2;
        v15 = *(v14 + qword_10078A548);
        if (!v15)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v16 = v15;
        sub_1000CB2F0(sub_1000FD690, &v37);

        goto LABEL_13;
      }

      goto LABEL_35;
    }
  }

  else if (v12)
  {
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = *(v17 + qword_10078A548);
      if (!v18)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v19 = v18;
      sub_1000CC2FC();

LABEL_13:
      sub_1000B021C();
      v20 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
      v21 = *&v3[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
      if (v21)
      {
        v22 = [v21 searchBar];
        v8 = [v22 searchTextField];

        v42 = v8;
        v23 = _swiftEmptyArrayStorage;
        v41 = _swiftEmptyArrayStorage;
        if (v8)
        {
          v8 = v8;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v40 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v23 = v41;
        }

        sub_1000079B4(&v42, &qword_100777950, &unk_10062FC20);
        sub_1000F5CF0(v23, v5 & 1, a2 & 1);
        v24 = [v3 isEditing];
        v25 = *&v3[v20];
        if (!v24)
        {
          if (v25)
          {
            v32 = v25;

            v33 = [v32 searchBar];

            v28 = [v33 searchTextField];
            v34 = UIAccessibilityTraitNotEnabled;
            v35 = [v28 accessibilityTraits];
            v36 = -1;
            if ((v35 & v34) != 0)
            {
              v36 = ~v34;
            }

            [v28 setAccessibilityTraits:v36 & v35];
            goto LABEL_28;
          }

          goto LABEL_34;
        }

        if (v25)
        {
          v26 = v25;

          v27 = [v26 searchBar];

          v28 = [v27 searchTextField];
          v29 = UIAccessibilityTraitNotEnabled;
          v30 = [v28 accessibilityTraits];
          if ((v29 & ~v30) != 0)
          {
            v31 = v29;
          }

          else
          {
            v31 = 0;
          }

          [v28 setAccessibilityTraits:v31 | v30];
LABEL_28:

          return;
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      goto LABEL_30;
    }

LABEL_35:
  }

LABEL_36:
  v39 = 0;
  v38 = 367;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000B3140(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_100058000(&unk_10076B7F0, &qword_10063F330);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;

  TTRAccountsListsViewModel.item(with:)();

  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_1000079B4(v4, &unk_100771B40, &unk_10062FB70);
    v10 = type metadata accessor for TTRAccountsListsViewModel.Group();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
LABEL_4:
    v12 = 0;
    goto LABEL_5;
  }

  TTRAccountsListsViewModel.Item.group.getter();
  (*(v9 + 8))(v4, v8);
  v11 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v12 = 1;
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    goto LABEL_4;
  }

LABEL_5:
  sub_1000079B4(v7, &unk_10076B7F0, &qword_10063F330);
  return v12;
}

id sub_1000B33D8(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&unk_10078D520, &unk_1006468F0);
  __chkstk_darwin(v3 - 8);
  v80 = &v76 - v4;
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v81 = *(v5 - 8);
  v82 = v5;
  __chkstk_darwin(v5);
  v76 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v7 - 8);
  v78 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v83 = (&v76 - v10);
  __chkstk_darwin(v11);
  v13 = (&v76 - v12);
  __chkstk_darwin(v14);
  v16 = (&v76 - v15);
  __chkstk_darwin(v17);
  v19 = (&v76 - v18);
  v20 = type metadata accessor for TTRIAccountsListsSelection(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v77 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  __chkstk_darwin(v26);
  v28 = &v76 - v27;
  __chkstk_darwin(v29);
  v84 = &v76 - v30;
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v76 - v33;
  v85 = a1;
  [a1 action];
  if (static Selector.== infix(_:_:)())
  {
    sub_1000B3FE8(v19);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      return sub_1000079B4(v19, &unk_10076B7C0, &unk_10062FBA0);
    }

    sub_1001006AC(v19, v34, type metadata accessor for TTRIAccountsListsSelection);
    sub_10042DDB8(v34);
    if (v36)
    {
      v37 = v85;
      if (v36 == 1)
      {
        *&v88[0] = [v85 attributes];
        v47 = 0;
      }

      else
      {
        *&v88[0] = [v85 attributes];
        v47 = 1;
      }

      UIMenuElementAttributes.setDisabled(_:)(v47);
      [v37 setAttributes:*&v88[0]];
      v46 = 0;
    }

    else
    {
      v37 = v85;
      *&v88[0] = [v85 attributes];
      UIMenuElementAttributes.setDisabled(_:)(0);
      [v37 setAttributes:*&v88[0]];
      v46 = 1;
    }

    [v37 setState:v46];
    static TTRLocalizableStrings.RemindersList.autoCategorizationTitle.getter();
    v48 = String._bridgeToObjectiveC()();

    [v37 setTitle:v48];

    v49 = static TTRCommonAsset.Image.autoCategorizationIcon.getter();
    [v37 setImage:v49];

    goto LABEL_32;
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_1000B3FE8(v16);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      return sub_1000079B4(v16, &unk_10076B7C0, &unk_10062FBA0);
    }

    v34 = v84;
    sub_1001006AC(v16, v84, type metadata accessor for TTRIAccountsListsSelection);
    sub_100452B28(v34);
    if (v38)
    {
      v39 = v85;
      if (v38 != 1)
      {
        *&v88[0] = [v85 attributes];
        UIMenuElementAttributes.setDisabled(_:)(1);
        [v39 setAttributes:*&v88[0]];
LABEL_32:
        v53 = v34;
        return sub_100100B78(v53, type metadata accessor for TTRIAccountsListsSelection);
      }

      *&v88[0] = [v85 attributes];
      UIMenuElementAttributes.setDisabled(_:)(0);
      [v39 setAttributes:*&v88[0]];
      v40._countAndFlagsBits = 0x694C206E69706E55;
      v41._countAndFlagsBits = 0xD00000000000002ALL;
      v41._object = 0x8000000100671560;
      v40._object = 0xEA00000000007473;
      TTRLocalizedString(_:comment:)(v40, v41);
      v42 = String._bridgeToObjectiveC()();

      [v39 setTitle:v42];

      v43 = String._bridgeToObjectiveC()();
      v44 = [objc_opt_self() _systemImageNamed:v43];
    }

    else
    {
      v39 = v85;
      *&v88[0] = [v85 attributes];
      UIMenuElementAttributes.setDisabled(_:)(0);
      [v39 setAttributes:*&v88[0]];
      v56._countAndFlagsBits = 0x7473694C206E6950;
      v57._object = 0x8000000100671590;
      v56._object = 0xE800000000000000;
      v57._countAndFlagsBits = 0xD000000000000028;
      TTRLocalizedString(_:comment:)(v56, v57);
      v58 = String._bridgeToObjectiveC()();

      [v39 setTitle:v58];

      v43 = String._bridgeToObjectiveC()();
      v44 = [objc_opt_self() _systemImageNamed:v43];
    }

    v59 = v44;

    [v39 setImage:v59];
LABEL_31:

    goto LABEL_32;
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_1000B3FE8(v13);
    if ((*(v21 + 48))(v13, 1, v20) == 1)
    {
      return sub_1000079B4(v13, &unk_10076B7C0, &unk_10062FBA0);
    }

    sub_1001006AC(v13, v28, type metadata accessor for TTRIAccountsListsSelection);
    sub_100452E1C(v28);
    v51 = v50;
    v52 = v85;
    *&v88[0] = [v85 attributes];
    UIMenuElementAttributes.setDisabled(_:)((v51 & 1) == 0);
    [v52 setAttributes:*&v88[0]];
    v53 = v28;
    return sub_100100B78(v53, type metadata accessor for TTRIAccountsListsSelection);
  }

  if (static Selector.== infix(_:_:)())
  {
    v45 = v83;
    sub_1000B3FE8(v83);
    if ((*(v21 + 48))(v45, 1, v20) != 1)
    {
      sub_1001006AC(v45, v25, type metadata accessor for TTRIAccountsListsSelection);
      sub_100452E2C(v25);
      v61 = v60;
      v62 = v85;
      *&v88[0] = [v85 attributes];
      UIMenuElementAttributes.setDisabled(_:)((v61 & 1) == 0);
      [v62 setAttributes:*&v88[0]];
      v53 = v25;
      return sub_100100B78(v53, type metadata accessor for TTRIAccountsListsSelection);
    }

    return sub_1000079B4(v45, &unk_10076B7C0, &unk_10062FBA0);
  }

  if (static Selector.== infix(_:_:)())
  {
    v54 = [v1 isEditing];
    v55 = v85;
    if (v54)
    {
      goto LABEL_46;
    }

    if ([v85 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v86 = 0u;
      v87 = 0u;
    }

    v69 = v81;
    v68 = v82;
    v70 = v80;
    v88[0] = v86;
    v88[1] = v87;
    if (!*(&v87 + 1))
    {
      v71 = &qword_10076AE40;
      v72 = &qword_10062EE50;
      v73 = v88;
      goto LABEL_45;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_46:
      *&v88[0] = [v55 attributes];
      UIMenuElementAttributes.setDisabled(_:)(1);
      return [v55 setAttributes:*&v88[0]];
    }

    TTRListType.PredefinedSmartListType.init(rawValue:)();
    if ((*(v69 + 48))(v70, 1, v68) == 1)
    {
      v71 = &unk_10078D520;
      v72 = &unk_1006468F0;
      v73 = v70;
LABEL_45:
      sub_1000079B4(v73, v71, v72);
      goto LABEL_46;
    }

    v74 = v76;
    (*(v69 + 32))(v76, v70, v68);
    sub_10043F208(v74);
    [v55 setState:v75 & 1];
    return (*(v69 + 8))(v74, v68);
  }

  else
  {
    if (static Selector.== infix(_:_:)())
    {
      v45 = v78;
      sub_1000B3FE8(v78);
      if ((*(v21 + 48))(v45, 1, v20) != 1)
      {
        v34 = v77;
        sub_1001006AC(v45, v77, type metadata accessor for TTRIAccountsListsSelection);
        sub_10045356C(v34);
        v64 = v63;
        v65 = v85;
        *&v88[0] = [v85 attributes];
        UIMenuElementAttributes.setDisabled(_:)((v64 & 1) == 0);
        [v65 setAttributes:*&v88[0]];
        v66._countAndFlagsBits = 0x73694C20776F6853;
        v66._object = 0xEE006F666E492074;
        v67._countAndFlagsBits = 0xD00000000000002ELL;
        v67._object = 0x8000000100671530;
        TTRLocalizedString(_:comment:)(v66, v67);
        v59 = String._bridgeToObjectiveC()();

        [v65 setTitle:v59];
        goto LABEL_31;
      }

      return sub_1000079B4(v45, &unk_10076B7C0, &unk_10062FBA0);
    }

    v89.receiver = v1;
    v89.super_class = ObjectType;
    return objc_msgSendSuper2(&v89, "validateCommand:", v85);
  }
}

void sub_1000B3FE8(void *a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v47 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = sub_100058000(&qword_10076B850, &qword_10062FBE8);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v15 = &v46 - v14;
  v16 = [v1 view];
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = v16;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  if (!swift_dynamicCastClass())
  {
LABEL_24:

LABEL_25:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_26;
  }

  sub_1002EA7D4(v15);

  v18 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
  if ((*(*(v18 - 8) + 48))(v15, 1, v18) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v31 = v48;
      *v48 = *v15;
      v32 = type metadata accessor for TTRIAccountsListsSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v24 = sub_100058000(&unk_10076B860, &unk_100639720);
      (*(v6 + 32))(v11, &v15[*(v24 + 48)], v5);
      (*(v6 + 16))(v8, v11, v5);
      v25 = (*(v6 + 88))(v8, v5);
      if (v25 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
      {
        (*(v6 + 96))(v8, v5);
        v26 = v47;
        (*(v47 + 32))(v4, v8, v2);
        v27 = v48;
        TTRAccountsListsViewModel.SmartList.type.getter();
        (*(v26 + 8))(v4, v2);
        (*(v6 + 8))(v11, v5);
        v28 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
        v29 = type metadata accessor for TTRAccountsListsPinnedListSelection();
        (*(*(v29 - 8) + 104))(v27, v28, v29);
        v30 = type metadata accessor for TTRIAccountsListsSelection(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v30 - 8) + 56))(v27, 0, 1, v30);
LABEL_20:
        v42 = type metadata accessor for TTRAccountsListsViewModel.Item();
        (*(*(v42 - 8) + 8))(v15, v42);
        return;
      }

      if (v25 != enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
      {
LABEL_26:
        if (qword_100766F00 != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        sub_100003E30(v43, qword_10076B2A0);
        v44 = sub_100008E04(_swiftEmptyArrayStorage);
        v45 = sub_100008E04(_swiftEmptyArrayStorage);
        sub_1003F9818("Unknown pinned list type", 24, 2uLL, v44, v45);
        __break(1u);
        return;
      }

      (*(v6 + 8))(v11, v5);
      (*(v6 + 96))(v8, v5);
      v39 = type metadata accessor for TTRAccountsListsViewModel.List();
      v36 = v48;
      (*(*(v39 - 8) + 32))(v48, v8, v39);
      v40 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
      v41 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v41 - 8) + 104))(v36, v40, v41);
      v37 = type metadata accessor for TTRIAccountsListsSelection(0);
    }

    else
    {
      v33 = *(sub_100058000(&qword_10076B858, &unk_10062FBF0) + 48);
      v34 = type metadata accessor for REMHashtagLabelSpecifier();
      v35 = &v15[v33];
      v36 = v48;
      (*(*(v34 - 8) + 32))(v48, v35, v34);
      v37 = type metadata accessor for TTRIAccountsListsSelection(0);
    }

    swift_storeEnumTagMultiPayload();
    (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    goto LABEL_20;
  }

  v19 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  v20 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ([v20 isActive])
  {
LABEL_8:
    v22 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
    swift_beginAccess();
    sub_10000794C(&v1[v22], v48, &unk_10076B7C0, &unk_10062FBA0);
    return;
  }

  v21 = *&v1[v19];
  if (!v21)
  {
    goto LABEL_23;
  }

  if ([v21 isBeingPresented])
  {
    goto LABEL_8;
  }

  v38 = type metadata accessor for TTRIAccountsListsSelection(0);
  (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
}

uint64_t sub_1000B47F0()
{
  v1 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRAccountsListsViewModel.hashtagsItem.getter();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000079B4(v3, &unk_100771B40, &unk_10062FB70);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = [v0 view];
  if (!v8)
  {
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v9 = v8;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
LABEL_12:

    goto LABEL_13;
  }

  v11 = *(v10 + qword_10078A548);
  if (!v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  v13 = sub_1000DE964(v7);

  (*(v5 + 8))(v7, v4);
  if (v13)
  {
    type metadata accessor for TTRIHashtagCollectionCell();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id sub_1000B4A70(void *a1)
{
  ObjectType = swift_getObjectType();
  static TTRLocalizableStrings.AccountsList.addListText.getter();
  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    static TTRCommonAsset.Image.addListIcon.getter();
    swift_unknownObjectRetain();
    return UIBarButtonItem.init(title:image:target:action:menu:)();
  }

  else
  {
    v14[3] = ObjectType;
    v14[0] = a1;
    v4 = a1;
    v5 = String._bridgeToObjectiveC()();

    if (ObjectType)
    {
      v6 = sub_10000C36C(v14, ObjectType);
      v7 = *(ObjectType - 8);
      v8 = __chkstk_darwin(v6);
      v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v10, v8);
      v11 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v7 + 8))(v10, ObjectType);
      sub_100004758(v14);
    }

    else
    {
      v11 = 0;
    }

    v12 = objc_allocWithZone(UIBarButtonItem);
    v13 = [v12 initWithTitle:v5 style:0 target:v11 action:{0, v14[0]}];

    swift_unknownObjectRelease();
    return v13;
  }
}

uint64_t sub_1000B4C4C()
{
  v1 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addReminderButton;
  if (*&v0[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addReminderButton])
  {
    v2 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addReminderButton];
  }

  else
  {
    v5[3] = swift_getObjectType();
    v5[0] = v0;
    type metadata accessor for TTRIAddReminderBarButtonModule();
    swift_allocObject();
    v3 = v0;
    v2 = sub_1001C60D8(1, v5, "didTapNewReminder:");
    *&v0[v1] = v2;
  }

  return v2;
}

id sub_1000B4D08(uint64_t a1)
{
  sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
  v1._object = 0x80000001006711A0;
  v2._countAndFlagsBits = 0xD000000000000035;
  v2._object = 0x80000001006711C0;
  v1._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:comment:)(v1, v2);
  static TTRCommonAsset.Image.timeZoneOverrideIcon.getter();
  swift_unknownObjectRetain();
  v3 = UIBarButtonItem.init(title:image:target:action:menu:)();
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000FD678;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10010C96C;
  aBlock[3] = &unk_100715040;
  v6 = _Block_copy(aBlock);
  v7 = v3;

  v8 = [v4 elementWithUncachedProvider:v6];
  _Block_release(v6);
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v9._countAndFlagsBits = 0x6E6F5A20656D6954;
  v10._countAndFlagsBits = 0xD00000000000001ELL;
  v10._object = 0x8000000100671220;
  v9._object = 0xE900000000000065;
  v11 = TTRLocalizedString(_:comment:)(v9, v10);
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v8;
  v19.value.super.isa = v13;
  v19.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v11, 0, v19, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v17).super.super.isa;
  [v7 setMenu:isa];

  return v7;
}

id sub_1000B4FCC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1000B5030(void *a1)
{
  ObjectType = swift_getObjectType();
  v3._countAndFlagsBits = 0x756F724720646441;
  v4._object = 0x80000001006712D0;
  v3._object = 0xE900000000000070;
  v4._countAndFlagsBits = 0xD00000000000003ELL;
  TTRLocalizedString(_:comment:)(v3, v4);
  v16[3] = ObjectType;
  v16[0] = a1;
  v5 = a1;
  v6 = String._bridgeToObjectiveC()();

  if (ObjectType)
  {
    v7 = sub_10000C36C(v16, ObjectType);
    v8 = *(ObjectType - 8);
    v9 = __chkstk_darwin(v7);
    v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, ObjectType);
    sub_100004758(v16);
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(UIBarButtonItem);
  v14 = [v13 initWithTitle:v6 style:0 target:v12 action:{0, v16[0]}];

  swift_unknownObjectRelease();
  return v14;
}

id sub_1000B51E8(uint64_t a1)
{
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithImage:a1 style:0 target:0 action:0];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_1000FD680;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10010CA7C;
  v7[3] = &unk_100715068;
  v3 = _Block_copy(v7);

  [v1 _setSecondaryActionsProvider:v3];
  _Block_release(v3);
  v4 = v1;
  static TTRAccesibility.AccountsList.Label.AccountsListButton.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 setAccessibilityLabel:v5];

  return v4;
}

id sub_1000B5330(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = sub_1000B51E8(v6);

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

Class sub_1000B53A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  swift_unknownObjectRetain();

  v5 = swift_allocObject();
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7 = sub_100428028(sub_1000FD688, v5);
  swift_unknownObjectRelease();

  return v7;
}

void sub_1000B54A4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000B2CF8(1, 1);
  }
}

void sub_1000B551C(uint64_t a1, uint64_t a2, int a3)
{
  v224 = a3;
  v236 = a2;
  v243 = a1;
  v208 = sub_100058000(&qword_10076B7B8, &qword_10062FB98);
  __chkstk_darwin(v208);
  v214 = &v202 - v3;
  v229 = type metadata accessor for REMHashtagLabelSpecifier();
  v228 = *(v229 - 8);
  __chkstk_darwin(v229);
  v226 = &v202 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v218 = *(v230 - 8);
  __chkstk_darwin(v230);
  v227 = &v202 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v231 = *(v6 - 8);
  v232 = v6;
  __chkstk_darwin(v6);
  v225 = &v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v235 = &v202 - v9;
  v10 = sub_100058000(&unk_10078D440, &unk_10062FBB0);
  __chkstk_darwin(v10 - 8);
  v205 = &v202 - v11;
  v207 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v203 = &v202 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&unk_10076B7F0, &qword_10063F330);
  __chkstk_darwin(v13 - 8);
  v211 = &v202 - v14;
  v212 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v210 = *(v212 - 8);
  __chkstk_darwin(v212);
  v204 = &v202 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&unk_10078D450, &qword_10062FBC0);
  __chkstk_darwin(v16 - 8);
  v216 = &v202 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v220 = &v202 - v19;
  v20 = type metadata accessor for TTRAccountsListsViewModel.List();
  v233 = *(v20 - 8);
  v234 = v20;
  __chkstk_darwin(v20);
  v223 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v209 = &v202 - v23;
  __chkstk_darwin(v24);
  v215 = &v202 - v25;
  v26 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v27 = *(v26 - 8);
  v239 = v26;
  v240 = v27;
  __chkstk_darwin(v26);
  v29 = &v202 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v222 = &v202 - v31;
  __chkstk_darwin(v32);
  v217 = &v202 - v33;
  __chkstk_darwin(v34);
  v202 = &v202 - v35;
  __chkstk_darwin(v36);
  v219 = &v202 - v37;
  __chkstk_darwin(v38);
  v221 = &v202 - v39;
  v40 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v40 - 8);
  v213 = &v202 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v202 - v43;
  __chkstk_darwin(v45);
  v47 = &v202 - v46;
  __chkstk_darwin(v48);
  v237 = &v202 - v49;
  __chkstk_darwin(v50);
  v238 = (&v202 - v51);
  v52 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v52 - 8);
  v54 = &v202 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v57 = &v202 - v56;
  __chkstk_darwin(v58);
  v60 = &v202 - v59;
  __chkstk_darwin(v61);
  v63 = &v202 - v62;
  __chkstk_darwin(v64);
  v66 = &v202 - v65;
  v67 = type metadata accessor for TTRIAccountsListsSelection(0);
  v241 = *(v67 - 8);
  __chkstk_darwin(v67);
  v69 = (&v202 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100100B10(v243, v69, type metadata accessor for TTRIAccountsListsSelection);
  v242 = v67;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v80 = v228;
      v81 = v226;
      v82 = v69;
      v83 = v229;
      (*(v228 + 32))(v226, v82, v229);
      v84 = v244;

      TTRAccountsListsViewModel.hashtagsItem.getter();

      v86 = v239;
      v85 = v240;
      if ((*(v240 + 48))(v57, 1, v239) == 1)
      {
        sub_1000079B4(v57, &unk_100771B40, &unk_10062FB70);
      }

      else
      {
        (*(v85 + 32))(v29, v57, v86);
        v115 = sub_1000B47F0();
        if (v115)
        {
          v116 = v115;
          TTRIHashtagCollectionCell.allowsExcludedSelection.setter();
        }

        v117 = [v84 view];
        if (!v117)
        {
          goto LABEL_116;
        }

        v71 = v117;
        type metadata accessor for TTRIAccountsListsTreeView(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_112;
        }

        sub_1002EBB5C(v29, v81, 0, 0);

        (*(v85 + 8))(v29, v86);
      }

      v118 = v238;
      (*(v241 + 56))(v238, 1, 1, v242);
      v119 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
      swift_beginAccess();
      sub_10000D184(v118, v84 + v119, &unk_10076B7C0, &unk_10062FBA0);
      swift_endAccess();
      sub_100426264(v81);
      (*(v80 + 8))(v81, v83);
      return;
    }

    v235 = *v69;
    v101 = swift_projectBox();
    sub_10000794C(v101, v237, &unk_10076B7C0, &unk_10062FBA0);
    v102 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
    v103 = v244;
    swift_beginAccess();
    sub_10000794C(v103 + v102, v47, &unk_10076B7C0, &unk_10062FBA0);
    v104 = *(v241 + 48);
    LODWORD(v103) = v104(v47, 1, v242);
    sub_1000079B4(v47, &unk_10076B7C0, &unk_10062FBA0);
    if (v103 == 1)
    {
      v105 = [v244 view];
      if (!v105)
      {
        goto LABEL_116;
      }

      v71 = v105;
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v106 = swift_dynamicCastClass();
      if (!v106)
      {
        goto LABEL_112;
      }

      v107 = v106;
      (*(v240 + 56))(v54, 1, 1, v239);
      v108 = qword_10078A548;
      v109 = *(v107 + qword_10078A548);
      if (!v109)
      {
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v110 = v109;
      v111 = sub_1000DF504(0);

      v112 = *(v107 + v108);
      if (!v112)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v113 = v112;
      sub_1000DFB6C(v54, 1, 0);

      sub_1002EE0CC(v111, 1);

      sub_1000079B4(v54, &unk_100771B40, &unk_10062FB70);
    }

    sub_10000794C(v237, v44, &unk_10076B7C0, &unk_10062FBA0);
    v114 = v242;
    if (v104(v44, 1, v242) == 1)
    {
      sub_1000079B4(v44, &unk_10076B7C0, &unk_10062FBA0);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v123 = swift_projectBox();
        v124 = v214;
        sub_10000794C(v123, v214, &qword_10076B7B8, &qword_10062FB98);
        sub_1000079B4(v124, &unk_10076B7C0, &unk_10062FBA0);

        v125 = v244;
        v126 = v213;
        sub_10000794C(&v244[v102], v213, &unk_10076B7C0, &unk_10062FBA0);
        v71 = v104(v126, 1, v114);
        sub_1000079B4(v126, &unk_10076B7C0, &unk_10062FBA0);
        if (v71 != 1)
        {
          goto LABEL_45;
        }

        v71 = swift_allocBox();
        v127 = *(v241 + 56);
        v127(v128, 1, 1, v114);
        v129 = v238;
        *v238 = v71;
        swift_storeEnumTagMultiPayload();
        v127(v129, 0, 1, v114);
        swift_beginAccess();
        v130 = &v125[v102];
        v131 = v129;
LABEL_44:
        sub_10000D184(v131, v130, &unk_10076B7C0, &unk_10062FBA0);
        swift_endAccess();
LABEL_45:
        v143 = v236 & 4;
        v144 = *(*&v125[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
        if (v144 == 2)
        {
          if (!sub_100444328(*&v125[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter]))
          {
LABEL_47:
            v145 = *&v125[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
            if (!v145)
            {
LABEL_104:
              __break(1u);
              goto LABEL_105;
            }

            v146 = [v145 searchBar];
            v147 = [v146 text];

            if (v147)
            {
              v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v150 = v149;
            }

            else
            {
              v148 = 0;
              v150 = 0xE000000000000000;
            }

            sub_100425958(v148, v150, v143 != 0);

            goto LABEL_80;
          }
        }

        else if ((v144 & 1) == 0)
        {
          goto LABEL_47;
        }

        v151 = *&v125[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController];
        if (!v151)
        {
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        v71 = *&v125[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
        if (!v71)
        {
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        v152 = v151;
        v153 = [v71 searchBar];
        v154 = [v153 text];

        if (v154)
        {
          v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v157 = v156;
        }

        else
        {
          v155 = 0;
          v157 = 0xE000000000000000;
        }

        sub_100505C14(v155, v157, v143 >> 2);

LABEL_80:
        v71 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
        v187 = *&v125[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
        if (v187)
        {
          if (([v187 isActive] & 1) == 0)
          {
            v188 = *(v71 + v125);
            if (!v188)
            {
LABEL_109:
              __break(1u);
LABEL_110:
              __break(1u);
              goto LABEL_111;
            }

            if (([v188 isBeingPresented] & 1) == 0)
            {
              v189 = *(v71 + v125);
              if (!v189)
              {
LABEL_111:
                __break(1u);
                goto LABEL_112;
              }

              [v189 setActive:1];
            }
          }

          sub_1000079B4(v237, &unk_10076B7C0, &unk_10062FBA0);

          return;
        }

        __break(1u);
        goto LABEL_102;
      }

      sub_100100B78(v44, type metadata accessor for TTRIAccountsListsSelection);
    }

    v71 = v238;
    sub_100100B10(v243, v238, type metadata accessor for TTRIAccountsListsSelection);
    (*(v241 + 56))(v71, 0, 1, v114);
    v125 = v244;
    swift_beginAccess();
    v130 = &v125[v102];
    v131 = v71;
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload)
  {
    v87 = v231;
    v88 = v235;
    v89 = v69;
    v90 = v232;
    (*(v231 + 32))(v235, v89, v232);
    v91 = v225;
    (*(v87 + 16))(v225, v88, v90);
    v92 = (*(v87 + 88))(v91, v90);
    v93 = v240;
    v95 = v233;
    v94 = v234;
    if (v92 != enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v120 = v239;
      if (v92 != enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_115;
      }

      (*(v87 + 96))(v91, v90);
      v121 = v223;
      (*(v95 + 32))(v223, v91, v94);
      v122 = v244;

      TTRAccountsListsViewModel.pinnedListsItem(containingListFor:)();

      if ((*(v93 + 48))(v60, 1, v120) == 1)
      {
        (*(v95 + 8))(v121, v94);
        (*(v87 + 8))(v235, v90);
        sub_1000079B4(v60, &unk_100771B40, &unk_10062FB70);
        return;
      }

      (*(v93 + 32))(v222, v60, v120);
      v137 = [v122 view];
      if (!v137)
      {
        goto LABEL_116;
      }

      v71 = v137;
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v138 = swift_dynamicCastClass();
      v139 = v223;
      if (!v138)
      {
        goto LABEL_112;
      }

      v140 = v222;
      sub_1002EB35C(v222, v223, 0, 0);

      v141 = v238;
      (*(v241 + 56))(v238, 1, 1, v242);
      v142 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
      swift_beginAccess();
      sub_10000D184(v141, v122 + v142, &unk_10076B7C0, &unk_10062FBA0);
      swift_endAccess();
      if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
      {
        sub_100424E14(v139);
        (*(v93 + 8))(v140, v239);
      }

      else
      {
        v191 = TTRAccountsListsViewModel.List.sharingStatus.getter();
        if (v191 < 3 || v191 == 4)
        {
          sub_1004249C8(v139, v224 & 1);
          v192 = v222;
          v193 = v239;
        }

        else
        {
          v197 = v222;
          v198 = v239;
          if (v191 != 3)
          {
            goto LABEL_117;
          }

          sub_100424288(v139);
          v192 = v197;
          v193 = v198;
        }

        (*(v93 + 8))(v192, v193);
      }

      (*(v95 + 8))(v139, v94);
LABEL_94:
      (*(v87 + 8))(v235, v90);
      return;
    }

    (*(v87 + 96))(v91, v90);
    v96 = v218;
    (*(v218 + 32))(v227, v91, v230);
    v97 = v244;

    TTRAccountsListsViewModel.pinnedListsItem(containingListFor:)();

    v98 = v239;
    if ((*(v93 + 48))(v63, 1, v239) == 1)
    {
      sub_1000079B4(v63, &unk_100771B40, &unk_10062FB70);
      v99 = v242;
      v100 = v227;
LABEL_37:
      v135 = v238;
      (*(v241 + 56))(v238, 1, 1, v99);
      v136 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
      swift_beginAccess();
      sub_10000D184(v135, v97 + v136, &unk_10076B7C0, &unk_10062FBA0);
      swift_endAccess();
      sub_100425274(v100, v224 & 1);
      (*(v96 + 8))(v100, v230);
      goto LABEL_94;
    }

    (*(v93 + 32))(v217, v63, v98);
    v132 = [v97 view];
    if (!v132)
    {
      goto LABEL_116;
    }

    v71 = v132;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    v133 = swift_dynamicCastClass();
    v99 = v242;
    if (v133)
    {
      v134 = v217;
      v100 = v227;
      sub_1002EB344(v217, v227, 0, 0);

      (*(v240 + 8))(v134, v98);
      goto LABEL_37;
    }

LABEL_112:

    goto LABEL_116;
  }

  v71 = *v69;
  v72 = v244;
  v74 = v239;
  v73 = v240;
  if (v236)
  {
    goto LABEL_63;
  }

  v75 = [v244 view];
  if (!v75)
  {
    goto LABEL_116;
  }

  v76 = v75;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v77 = swift_dynamicCastClass();
  if (!v77)
  {

    goto LABEL_116;
  }

  v78 = v77;
  if (v71[2])
  {
    (*(v73 + 16))(v66, v71 + ((*(v73 + 80) + 32) & ~*(v73 + 80)), v74);
    v79 = 0;
  }

  else
  {
    v79 = 1;
  }

  (*(v73 + 56))(v66, v79, 1, v74);
  v158 = qword_10078A548;
  v159 = *(v78 + qword_10078A548);
  if (!v159)
  {
    goto LABEL_103;
  }

  v160 = v159;
  v161 = sub_1000DF504(0);

  v162 = *(v78 + v158);
  if (!v162)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v163 = v162;
  sub_1000DFB6C(v66, 1, 0);

  sub_1002EE0CC(v161, 1);

  sub_1000079B4(v66, &unk_100771B40, &unk_10062FB70);
  v74 = v239;
  v73 = v240;
  if ((v236 & 8) == 0)
  {
    v164 = [v72 view];
    if (v164)
    {
      v91 = v164;
      v165 = swift_dynamicCastClass();
      if (v165)
      {
        v166 = *(v165 + qword_10078A540);
        if (v166)
        {
          [v166 scrollToNearestSelectedRowAtScrollPosition:0 animated:1];

          goto LABEL_63;
        }

        goto LABEL_110;
      }

LABEL_115:
    }

LABEL_116:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_117;
  }

LABEL_63:
  v167 = v238;
  (*(v241 + 56))(v238, 1, 1, v242);
  v168 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
  swift_beginAccess();
  sub_10000D184(v167, v72 + v168, &unk_10076B7C0, &unk_10062FBA0);
  swift_endAccess();
  if (!v71[2])
  {

    return;
  }

  v169 = v219;
  (*(v73 + 16))(v219, v71 + ((*(v73 + 80) + 32) & ~*(v73 + 80)), v74);

  v170 = v221;
  (*(v73 + 32))(v221, v169, v74);
  v171 = v220;
  TTRAccountsListsViewModel.Item.list.getter();
  v173 = v233;
  v172 = v234;
  v174 = *(v233 + 48);
  if (v174(v171, 1, v234) == 1)
  {
    sub_1000079B4(v171, &unk_10078D450, &qword_10062FBC0);
    v175 = v216;
    TTRAccountsListsViewModel.Item.customSmartList.getter();
    if (v174(v175, 1, v172) == 1)
    {
      sub_1000079B4(v175, &unk_10078D450, &qword_10062FBC0);
      v176 = v211;
      TTRAccountsListsViewModel.Item.group.getter();
      v177 = v210;
      v178 = v212;
      if ((*(v210 + 48))(v176, 1, v212) == 1)
      {
        sub_1000079B4(v176, &unk_10076B7F0, &qword_10063F330);
        v179 = v205;
        TTRAccountsListsViewModel.Item.recentlyDeletedList.getter();
        v180 = v206;
        v181 = v207;
        if ((*(v206 + 48))(v179, 1, v207) == 1)
        {
          sub_1000079B4(v179, &unk_10078D440, &unk_10062FBB0);
          v182 = v202;
          (*(v73 + 104))(v202, enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:), v74);
          v183 = static TTRAccountsListsViewModel.Item.== infix(_:_:)();
          v184 = *(v73 + 8);
          v184(v182, v74);
          if (v183)
          {
            sub_100430AB4();
          }

          v184(v170, v74);
          return;
        }

        v195 = v203;
        (*(v180 + 32))(v203, v179, v181);
        v196 = TTRAccountsListsViewModel.RecentlyDeletedList.accountID.getter();
        sub_100425C0C(v196);

        (*(v180 + 8))(v195, v181);
      }

      else
      {
        v194 = v204;
        (*(v177 + 32))(v204, v176, v178);
        sub_100425510(v194);
        (*(v177 + 8))(v194, v178);
      }
    }

    else
    {
      v190 = v209;
      (*(v173 + 32))(v209, v175, v172);
      sub_100424E14(v190);
      (*(v173 + 8))(v190, v172);
    }

LABEL_88:
    (*(v73 + 8))(v170, v74);
    return;
  }

  v185 = v215;
  (*(v173 + 32))(v215, v171, v172);
  v186 = TTRAccountsListsViewModel.List.sharingStatus.getter();
  if (v186 < 3 || v186 == 4)
  {
    sub_1004249C8(v185, v224 & 1);
LABEL_75:
    (*(v173 + 8))(v185, v172);
    goto LABEL_88;
  }

  if (v186 == 3)
  {
    sub_100424288(v185);
    goto LABEL_75;
  }

LABEL_117:
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v199 = type metadata accessor for Logger();
  sub_100003E30(v199, qword_100782E90);
  v200 = sub_100008E04(_swiftEmptyArrayStorage);
  v201 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("unknown sharing status", 22, 2uLL, v200, v201);
  __break(1u);
}

void sub_1000B7230(int a1)
{
  v51 = a1;
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  v54 = *(v2 - 8);
  v55 = v2;
  __chkstk_darwin(v2);
  v50 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = sub_100058000(&qword_10076B850, &qword_10062FBE8);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  v13 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v13 - 8);
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v52 = (&v48 - v20);
  v21 = [v1 view];
  if (!v21)
  {
    goto LABEL_34;
  }

  v22 = v21;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    goto LABEL_33;
  }

  v24 = *(v23 + qword_10078A540);
  if (!v24)
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v25 = [v24 isEditing];

  if (v25)
  {
    return;
  }

  v22 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  v26 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController);
  if (!v26)
  {
    goto LABEL_31;
  }

  if ([v26 isActive])
  {
    return;
  }

  v27 = *&v22[v1];
  if (!v27)
  {
    goto LABEL_32;
  }

  if ([v27 isBeingPresented])
  {
    return;
  }

  v28 = [v1 view];
  if (!v28)
  {
LABEL_34:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22 = v28;
  if (!swift_dynamicCastClass())
  {
LABEL_33:

    goto LABEL_34;
  }

  sub_1002EA7D4(v12);

  v29 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
  if ((*(*(v29 - 8) + 48))(v12, 1, v29) == 1)
  {
    v30 = v52;
    sub_100016120(v52);
    v32 = v54;
    v31 = v55;
    goto LABEL_22;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100100B78(v12, type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v34 = *(sub_100058000(&unk_10076B860, &unk_100639720) + 48);
    v35 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    (*(*(v35 - 8) + 8))(&v12[v34], v35);
    v36 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v36 - 8) + 8))(v12, v36);
LABEL_17:
    v32 = v54;
    v31 = v55;
    v30 = v52;
    (*(v54 + 56))(v52, 1, 1, v55);
    goto LABEL_22;
  }

  v37 = sub_100058000(&qword_10076B858, &unk_10062FBF0);
  v38 = v49;
  v39 = &v12[*(v37 + 48)];
  v48 = *(v49 + 32);
  v48(v9, v39, v4);

  TTRAccountsListsViewModel.validateHashtagSelection(_:allowsLenientFallback:)();

  sub_1001013F4(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier, &protocol conformance descriptor for REMHashtagLabelSpecifier);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v38 + 8);
  v41(v9, v4);
  if (v40)
  {
    v41(v6, v4);
    v42 = 1;
    v31 = v55;
  }

  else
  {
    v48(v17, v6, v4);
    v31 = v55;
    swift_storeEnumTagMultiPayload();
    v42 = 0;
  }

  v32 = v54;
  (*(v54 + 56))(v17, v42, 1, v31);
  v30 = v52;
  sub_100016588(v17, v52, &unk_10076B7C0, &unk_10062FBA0);
  v43 = type metadata accessor for TTRAccountsListsViewModel.Item();
  (*(*(v43 - 8) + 8))(v12, v43);
LABEL_22:
  v44 = v53;
  sub_10000794C(v30, v53, &unk_10076B7C0, &unk_10062FBA0);
  if ((*(v32 + 48))(v44, 1, v31) == 1)
  {
    sub_1000079B4(v30, &unk_10076B7C0, &unk_10062FBA0);
  }

  else
  {
    v45 = v44;
    v46 = v50;
    sub_1001006AC(v45, v50, type metadata accessor for TTRIAccountsListsSelection);
    if (v51)
    {
      v47 = 8;
    }

    else
    {
      v47 = 0;
    }

    sub_1000B551C(v46, v47, 0);
    sub_100100B78(v46, type metadata accessor for TTRIAccountsListsSelection);
    v44 = v30;
  }

  sub_1000079B4(v44, &unk_10076B7C0, &unk_10062FBA0);
}

void sub_1000B7984()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100782E90);
  v3 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Accounts Lists New Reminder", 27, 2, v3);

  sub_10000C36C((v1 + 112), *(v1 + 136));
  swift_getObjectType();
  v5 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
  v4 = sub_1001013F4(&unk_10078D530, type metadata accessor for TTRIAccountsListsPresenter, &unk_10063EFE0);
  sub_1002A4ADC(v5, v1, v4);
}

void sub_1000B7BE4()
{
  v1 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  v4 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
  if (!v4)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v5 = v1;
  v6 = [v4 searchBar];
  v7 = [v6 text];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  sub_100505C14(v8, v10, 0);

  if (!*&v2[v3])
  {
    goto LABEL_12;
  }

  [v2 presentViewController:? animated:? completion:?];
}

void sub_1000B7DF0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t), void (*a6)(id, uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    v10 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v11 = a1;
  }

  v12 = sub_1000B4FCC(a4, a5);
  a6(v12, v13, v14, v15);

  sub_1000079B4(v16, &qword_10076AE40, &qword_10062EE50);
}

uint64_t sub_1000B7EB0()
{
  v0 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v9 - v1);
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B3FE8(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1000079B4(v2, &unk_10076B7C0, &unk_10062FBA0);
  }

  sub_1001006AC(v2, v6, type metadata accessor for TTRIAccountsListsSelection);
  sub_10042DDB8(v6);
  if (v8 != 2)
  {
    sub_10042E2B0(v6);
  }

  return sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
}

void sub_1000B80FC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v7 - 8);
  v9 = (v16 - v8);
  v10 = type metadata accessor for TTRIAccountsListsSelection(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v15 = a1;
  }

  sub_1000B3FE8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_1000079B4(v16, &qword_10076AE40, &qword_10062EE50);
    sub_1000079B4(v9, &unk_10076B7C0, &unk_10062FBA0);
  }

  else
  {
    sub_1001006AC(v9, v13, type metadata accessor for TTRIAccountsListsSelection);
    a4(v13);
    sub_100100B78(v13, type metadata accessor for TTRIAccountsListsSelection);
    sub_1000079B4(v16, &qword_10076AE40, &qword_10062EE50);
  }
}

uint64_t sub_1000B8328(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for TTRIAccountsListsSelection(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B3FE8(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1000079B4(v5, &unk_10076B7C0, &unk_10062FBA0);
  }

  sub_1001006AC(v5, v9, type metadata accessor for TTRIAccountsListsSelection);
  sub_100452E1C(v9);
  if (v11)
  {
    a2(v9);
  }

  return sub_100100B78(v9, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_1000B84E0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  sub_1000B8328(v7, a4);

  return sub_1000079B4(v9, &qword_10076AE40, &qword_10062EE50);
}

void sub_1000B856C(uint64_t a1)
{
  v2 = sub_100058000(&unk_10078D520, &unk_1006468F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, &v17, &qword_10076AE40, &qword_10062EE50);
  if (*(&v18 + 1))
  {
    sub_100003540(0, &unk_10076BD00, UICommand_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v9 = v15;
    if ([v15 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      TTRListType.PredefinedSmartListType.init(rawValue:)();
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        (*(v6 + 32))(v8, v4, v5);
        sub_10043F208(v8);
        sub_10042B2D8((v13 & 1) == 0, v8);

        (*(v6 + 8))(v8, v5);
        return;
      }

      v10 = &unk_10078D520;
      v11 = &unk_1006468F0;
      v12 = v4;
      goto LABEL_12;
    }
  }

  v10 = &qword_10076AE40;
  v11 = &qword_10062EE50;
  v12 = &v17;
LABEL_12:
  sub_1000079B4(v12, v10, v11);
}

uint64_t sub_1000B8830(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
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

void sub_1000B8974(uint64_t a1)
{
  v2 = sub_100058000(&unk_10078D450, &qword_10062FBC0);
  __chkstk_darwin(v2 - 8);
  v45 = &v39 - v3;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v48);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  __chkstk_darwin(v11);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100058000(&unk_10078D510, &unk_1006468E0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v39 - v15);
  v17 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, &v52, &qword_10076AE40, &qword_10062EE50);
  if (!*(&v53 + 1))
  {
    goto LABEL_11;
  }

  v41 = v7;
  sub_100003540(0, &unk_10076BAB0, UIKeyCommand_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v21 = v50;
  if ([v50 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  v52 = v50;
  v53 = v51;
  if (!*(&v51 + 1))
  {

LABEL_11:
    v22 = &qword_10076AE40;
    v23 = &qword_10062EE50;
    v24 = &v52;
    goto LABEL_12;
  }

  sub_100058000(&qword_100768358, &qword_10062FDA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  sub_1005F6EE8(v49, v16);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v40 = v21;
    sub_1001006AC(v16, v20, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
    sub_100100B10(&v20[*(v17 + 20)], v13, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = *v13;

      v26 = v45;
      TTRAccountsListsViewModel.pinnedListInnerList(with:)();

      v28 = v46;
      v27 = v47;
      v29 = (*(v46 + 48))(v26, 1, v47);
      v30 = v41;
      if (v29 == 1)
      {
        sub_100100B78(v20, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);

        v22 = &unk_10078D450;
        v23 = &qword_10062FBC0;
        v24 = v26;
        goto LABEL_12;
      }

      v36 = v42;
      (*(v28 + 32))(v42, v26, v27);
      (*(v28 + 16))(v30, v36, v27);
      v37 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
      v38 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v38 - 8) + 104))(v30, v37, v38);
      swift_storeEnumTagMultiPayload();
      sub_1000B551C(v30, 0, 0);

      sub_100100B78(v30, type metadata accessor for TTRIAccountsListsSelection);
      (*(v28 + 8))(v36, v27);
    }

    else
    {
      v32 = v43;
      v31 = v44;
      (*(v43 + 32))(v10, v13, v44);
      v33 = v41;
      (*(v32 + 16))(v41, v10, v31);
      v34 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
      v35 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v35 - 8) + 104))(v33, v34, v35);
      swift_storeEnumTagMultiPayload();
      sub_1000B551C(v33, 0, 0);

      sub_100100B78(v33, type metadata accessor for TTRIAccountsListsSelection);
      (*(v32 + 8))(v10, v31);
    }

    sub_100100B78(v20, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
    return;
  }

  v22 = &unk_10078D510;
  v23 = &unk_1006468E0;
  v24 = v16;
LABEL_12:
  sub_1000079B4(v24, v22, v23);
}

uint64_t sub_1000B90D4(char a1, id a2)
{
  if (a1)
  {
    v2 = [a2 navigationItem];
    v3 = [v2 rightBarButtonItems];

    if (v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = [a2 toolbarItems];
    if (v3)
    {
LABEL_5:
      sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addListButton, sub_1000B4A70);
      v8 = v5;
      __chkstk_darwin(v5);
      v7[2] = &v8;
      LOBYTE(v3) = sub_10000C108(sub_100101514, v7, v4);
    }
  }

  return v3 & 1;
}

void sub_1000B92B8(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v6 setAlpha:a2];

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_1000B939C(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v4 + 96))(v7, v3);
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v7, v9);
    return;
  }

  if (v8 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v8 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_5;
  }

  if (v8 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    goto LABEL_8;
  }

  if (v8 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_5;
  }

  if (v8 != enum case for TTRAccountsListsViewModel.Item.list(_:) && v8 != enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) && v8 != enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    if (v8 != enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) && v8 != enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) && v8 != enum case for TTRAccountsListsViewModel.Item.tipSection(_:) && v8 != enum case for TTRAccountsListsViewModel.Item.tip(_:) && v8 != enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) && v8 != enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
    {
      if (v8 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
      {
LABEL_8:
        [v1 isEditing];
        (*(v4 + 8))(v7, v3);
        return;
      }

      if (v8 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
      {
        return;
      }

      if (v8 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
      {
        [v1 isEditing];
        return;
      }

      goto LABEL_37;
    }

LABEL_5:
    (*(v4 + 8))(v7, v3);
    return;
  }

  (*(v4 + 8))(v7, v3);
  if (([v1 isEditing] & 1) == 0)
  {
    return;
  }

  v12 = [v1 view];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = *(v14 + qword_10078A540);
      if (v15)
      {
        [v15 hasActiveDrop];

        return;
      }

      __break(1u);
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_37:
  if (qword_100766F00 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_10076B2A0);
  v17 = sub_100008E04(_swiftEmptyArrayStorage);
  v18 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown item type", 17, 2uLL, v17, v18);
  __break(1u);
}

void sub_1000B9840(uint64_t a1)
{
  sub_10000B2BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_1000B993C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v58 - v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = v7 + 16;
  v18 = *(v7 + 16);
  (v18)(&v58 - v15, a2, v6, v14);
  v19 = (*(v7 + 88))(v16, v6);
  if (v19 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    goto LABEL_54;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:))
  {
    goto LABEL_55;
  }

  if (v19 != enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    if (v19 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
    {
      goto LABEL_18;
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_55;
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
    {
LABEL_18:
      v30 = *(v7 + 8);
      v7 += 8;
      v30(v16, v6);
      type metadata accessor for TTRIAccountsListsViewListCell(0);
      v31 = *(a1 + qword_10078A540);
      if (v31)
      {
        v32 = v31;
        v33 = UITableView.dequeueReusableCell<A>(_:)();

        v34 = v33;
        TTRAccountsListsViewModel.Item.accessibilityIdentifier.getter();
        v35 = String._bridgeToObjectiveC()();

        [v34 setAccessibilityIdentifier:v35];

        *&v34[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listsViewListCellDelegate + 8] = &off_100714E10;
        swift_unknownObjectWeakAssign();
        v28 = v34;
        sub_1000F5F5C(v28, a2);

        return v28;
      }

      goto LABEL_50;
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.group(_:))
    {
      type metadata accessor for TTRIAccountListsViewGroupCell(0);
      v37 = *(a1 + qword_10078A540);
      if (!v37)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        (v18)(v9, v16, v6);
        (*(v7 + 96))(v9, v6);
        v48 = type metadata accessor for UUID();
        (*(*(v48 - 8) + 8))(v9, v48);
        while (1)
        {
LABEL_55:
          v49 = *(v7 + 8);
          v7 += 8;
          v49(v16, v6);
          if (qword_100766F00 != -1)
          {
            swift_once();
          }

          v50 = type metadata accessor for Logger();
          sub_100003E30(v50, qword_10076B2A0);
          v6 = _swiftEmptyArrayStorage;
          v16 = sub_100008E04(_swiftEmptyArrayStorage);
          v51 = sub_100008E04(_swiftEmptyArrayStorage);
          v52 = "Item should be displayed by a section header, not a cell";
          for (i = 56; ; i = 17)
          {
            sub_1003F9818(v52, i, 2uLL, v16, v51);
            __break(1u);
LABEL_59:
            v54 = enum case for TTRAccountsListsViewModel.PermissionRequest.combined(_:);
            v55 = v18[1];
            ++v18;
            v56 = v42;
            (v55)(v12, v17);
            if (v56 == v54)
            {
              break;
            }

LABEL_60:
            if (qword_100766F00 != -1)
            {
              swift_once();
            }

            v57 = type metadata accessor for Logger();
            sub_100003E30(v57, qword_10076B2A0);
            v6 = _swiftEmptyArrayStorage;
            v16 = sub_100008E04(_swiftEmptyArrayStorage);
            v51 = sub_100008E04(_swiftEmptyArrayStorage);
            v52 = "Unknown item type";
          }
        }
      }

      v38 = v37;
      v39 = UITableView.dequeueReusableCell<A>(_:)();

      v40 = v39;
      TTRAccountsListsViewModel.Item.accessibilityIdentifier.getter();
      v41 = String._bridgeToObjectiveC()();

      [v40 setAccessibilityIdentifier:v41];

LABEL_47:
      v27 = v40;
      goto LABEL_9;
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:))
    {
      goto LABEL_55;
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:))
    {
      (v18)(v12, v16, v6);
      (*(v7 + 96))(v12, v6);
      v17 = type metadata accessor for TTRAccountsListsViewModel.PermissionRequest();
      v18 = *(v17 - 8);
      v42 = (v18[11])(v12, v17);
      if (v42 != enum case for TTRAccountsListsViewModel.PermissionRequest.header(_:))
      {
        goto LABEL_33;
      }

      v19 = type metadata accessor for TTRIInlinePermissionHeaderViewCell();
      v43 = *(a1 + qword_10078A540);
      if (v43)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:))
    {
      goto LABEL_55;
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.tip(_:))
    {
      v42 = type metadata accessor for TTRIRemindersListTipCell();
      v44 = *(a1 + qword_10078A540);
      if (!v44)
      {
        __break(1u);
LABEL_33:
        if (v42 != enum case for TTRAccountsListsViewModel.PermissionRequest.primaryButton(_:))
        {
          goto LABEL_59;
        }

        type metadata accessor for TTRIInlinePermissionPrimaryButtonViewCell();
        v43 = *(a1 + qword_10078A540);
        if (!v43)
        {
          goto LABEL_52;
        }

LABEL_35:
        v45 = v43;
        v46 = UITableView.dequeueReusableCell<A>(_:)();

        v28 = v46;
        sub_1000F5F5C(v28, a2);

        (v18[1])(v12, v17);
        goto LABEL_10;
      }

LABEL_46:
      v47 = v44;
      v40 = UITableView.dequeueReusableCell<A>(_:)();

      goto LABEL_47;
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
    {
      goto LABEL_55;
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
    {
      v19 = type metadata accessor for TTRIHashtagCollectionCell();
      v44 = *(a1 + qword_10078A540);
      if (v44)
      {
        goto LABEL_46;
      }

      __break(1u);
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      v19 = type metadata accessor for TTRIAccountsListsRecentlyDeletedCell(0);
      v44 = *(a1 + qword_10078A540);
      if (v44)
      {
        goto LABEL_46;
      }

      __break(1u);
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
    {
      goto LABEL_55;
    }

    if (v19 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_60;
    }

    type metadata accessor for TTRIAccountsListsSuggestGroceriesCell(0);
    v44 = *(a1 + qword_10078A540);
    if (!v44)
    {
      goto LABEL_53;
    }

    goto LABEL_46;
  }

  type metadata accessor for TTRIAccountsListsViewPinnedListsCell();
  v20 = *(a1 + qword_10078A540);
  if (!v20)
  {
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v21 = v20;
  v22 = UITableView.dequeueReusableCell<A>(_:)();

  v23 = *(v3 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
  v24 = OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache;
  *&v22[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache] = *(v23 + 56);

  v12 = *(v23 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v12 == 2)
  {
    v12 = sub_100444328(v23);
  }

  v18 = &selRef_layoutIfNeeded;
  v9 = [v22 containerView];
  v25 = *&v22[v24];
  v17 = *&v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache];
  *&v9[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = v25;

  v26 = [v22 containerView];
  if (!v26)
  {
    goto LABEL_49;
  }

  v26[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectionFollowsFocus] = (v12 & 1) == 0;

  v27 = v22;
LABEL_9:
  v28 = v27;
  sub_1000F5F5C(v27, a2);

LABEL_10:
  (*(v7 + 8))(v16, v6);
  return v28;
}

void sub_1000BA1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a2, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v8 + 96))(v11, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v11, v13);
    return;
  }

  if (v12 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_5;
  }

  if (v12 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    goto LABEL_8;
  }

  if (v12 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_5;
  }

  if (v12 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    goto LABEL_8;
  }

  if (v12 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
  {
LABEL_5:
    (*(v8 + 8))(v11, v7);
    return;
  }

  if (v12 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_8:
    (*(v8 + 8))(v11, v7);
    goto LABEL_9;
  }

  if (v12 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
  {
    if (v12 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_100766F00 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_10076B2A0);
      v20 = sub_100008E04(_swiftEmptyArrayStorage);
      v21 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2uLL, v20, v21);
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

LABEL_9:
    v14 = *(a1 + qword_10078A548);
    if (v14)
    {
      v15 = v14;
      v16 = sub_1000DF504(0);

      *v6 = v16;
      swift_storeEnumTagMultiPayload();
      sub_1000B551C(v6, 1, 0);
      sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
      return;
    }

    goto LABEL_31;
  }
}

void *sub_1000BA5E0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  (a3)(0, v13);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    swift_unknownObjectRetain();

    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v8);
    type metadata accessor for MainActor();

    v20 = static MainActor.shared.getter();
    v21 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = v20;
    *(v22 + 3) = &protocol witness table for MainActor;
    *(v22 + 4) = v19;
    (*(v9 + 32))(&v22[v21], v11, v8);

    sub_10009E31C(0, 0, v15, &unk_10062FF98, v22);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1000BA86C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  (a3)(0, a2);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_unknownObjectRetain();

    a7(a6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000BA904(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v6, v8);
    return;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_7;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    static TTRAccesibility.AccountsList.Action.ListInfo.getter();
LABEL_15:
    (*(v3 + 8))(v6, v2);
    return;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    static TTRAccesibility.AccountsList.Action.SmartListInfo.getter();
    goto LABEL_15;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    static TTRAccesibility.AccountsList.Action.GroupInfo.getter();
    goto LABEL_15;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_7:
    (*(v3 + 8))(v6, v2);
    return;
  }

  if (v7 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v7 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003E30(v9, qword_10076B2A0);
    v10 = sub_100008E04(_swiftEmptyArrayStorage);
    v11 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v10, v11);
    __break(1u);
  }
}

void sub_1000BAC88(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsViewModel.List();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10, v16);
  v19 = (*(v11 + 88))(v13, v10);
  if (v19 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v11 + 96))(v13, v10);
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 8))(v13, v20);
LABEL_7:
    v21 = v40;
    *(v40 + 32) = 0;
    *v21 = 0u;
    v21[1] = 0u;
    return;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
LABEL_6:
    (*(v11 + 8))(v13, v10);
    goto LABEL_7;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    (*(v11 + 96))(v13, v10);
    v22 = v39;
    (*(v39 + 32))(v9, v13, v7);
    v23 = TTRAccountsListsViewModel.Account.objectID.getter();
    v24 = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    v25 = v40;
    *(v40 + 24) = v24;
    v25[4] = &protocol witness table for REMObjectID;
    *v25 = v23;
    (*(v22 + 8))(v9, v7);
  }

  else
  {
    if (v19 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
    {
      (*(v11 + 96))(v13, v10);
      (*(v15 + 32))(v18, v13, v14);
      v31 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v15 + 8))(v18, v14);
      v32 = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v33 = v40;
      *(v40 + 24) = v32;
      v33[4] = &protocol witness table for REMObjectID;
      *v33 = v31;
      return;
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.group(_:))
    {
      (*(v11 + 96))(v13, v10);
      v27 = v37;
      v26 = v38;
      (*(v38 + 32))(v6, v13, v37);
      v28 = TTRAccountsListsViewModel.Group.objectID.getter();
      v29 = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v30 = v40;
      *(v40 + 24) = v29;
      v30[4] = &protocol witness table for REMObjectID;
      *v30 = v28;
      (*(v26 + 8))(v6, v27);
      return;
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      goto LABEL_6;
    }

    if (v19 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_7;
    }

    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100003E30(v34, qword_10076B2A0);
    v35 = sub_100008E04(_swiftEmptyArrayStorage);
    v36 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v35, v36);
    __break(1u);
  }
}

void sub_1000BB2DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000B021C();
  }
}

void sub_1000BB330(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v61 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v59 = &v53[-v7];
  __chkstk_darwin(v8);
  v63 = &v53[-v9];
  v10 = sub_100058000(&qword_10076BDE0, &unk_100649F00);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v53[-v12];
  v14 = sub_100058000(&qword_10076BC58, &unk_10062FE80);
  __chkstk_darwin(v14 - 8);
  v55 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v53[-v17];
  __chkstk_darwin(v19);
  v21 = &v53[-v20];
  v67 = sub_100058000(&qword_10076BDE8, &qword_10062FF70);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v58 = &v53[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v23);
  v65 = &v53[-v25];
  v26 = *(v4 + 16);
  v60 = a1;
  v56 = v26;
  v57 = v4 + 16;
  (v26)(v21, a1, v3, v24);
  (*(v4 + 56))(v21, 0, 1, v3);
  TTRAccountsListsViewModel.HashtagFilterOperation.selectedItem.getter();
  v27 = *(v11 + 56);
  sub_10000794C(v21, v13, &qword_10076BC58, &unk_10062FE80);
  sub_10000794C(v18, &v13[v27], &qword_10076BC58, &unk_10062FE80);
  v64 = v4;
  v28 = *(v4 + 48);
  if (v28(v13, 1, v3) != 1)
  {
    sub_10000794C(v13, v55, &qword_10076BC58, &unk_10062FE80);
    if (v28(&v13[v27], 1, v3) != 1)
    {
      v45 = v64;
      v46 = &v13[v27];
      v47 = v63;
      (*(v64 + 32))(v63, v46, v3);
      sub_1001013F4(&unk_10076BDD0, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option, &protocol conformance descriptor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
      v48 = v55;
      v54 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = *(v45 + 8);
      v49(v47, v3);
      sub_1000079B4(v18, &qword_10076BC58, &unk_10062FE80);
      sub_1000079B4(v21, &qword_10076BC58, &unk_10062FE80);
      v49(v48, v3);
      sub_1000079B4(v13, &qword_10076BC58, &unk_10062FE80);
      v30 = v67;
      if (v54)
      {
        v29 = &enum case for TTRValueBasedMenuItem.SelectionState.on<A>(_:);
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    sub_1000079B4(v18, &qword_10076BC58, &unk_10062FE80);
    sub_1000079B4(v21, &qword_10076BC58, &unk_10062FE80);
    (*(v64 + 8))(v55, v3);
LABEL_6:
    sub_1000079B4(v13, &qword_10076BDE0, &unk_100649F00);
    v30 = v67;
LABEL_7:
    v29 = &enum case for TTRValueBasedMenuItem.SelectionState.off<A>(_:);
    goto LABEL_8;
  }

  sub_1000079B4(v18, &qword_10076BC58, &unk_10062FE80);
  sub_1000079B4(v21, &qword_10076BC58, &unk_10062FE80);
  if (v28(&v13[v27], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1000079B4(v13, &qword_10076BC58, &unk_10062FE80);
  v29 = &enum case for TTRValueBasedMenuItem.SelectionState.on<A>(_:);
  v30 = v67;
LABEL_8:
  v31 = v30;
  (*(v66 + 104))(v65, *v29);
  v32 = v59;
  v56(v59, v60, v3);
  v33 = v64;
  v34 = (*(v64 + 88))(v32, v3);
  v35 = v34;
  if (v34 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.any(_:) || v34 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.all(_:))
  {
    v36 = *(v33 + 104);
    v37 = v63;
    v36(v63, v34, v3);
    v38 = TTRAccountsListsViewModel.HashtagFilterOperation.Option.localizedOptionString.getter();
    v59 = v39;
    v60 = v38;
    (*(v33 + 8))(v37, v3);
    v40 = v65;
    v41 = v66;
    (*(v66 + 16))(v58, v65, v31);
    v36(v61, v35, v3);
    sub_1001013F4(&unk_10076BDD0, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option, &protocol conformance descriptor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
    v42 = v62;
    TTRValueBasedMenuItem.init(title:image:state:value:)();
    (*(v41 + 8))(v40, v67);
    v43 = enum case for TTRValueBasedMenuElement.item<A>(_:);
    v44 = sub_100058000(&qword_10076BDF0, &qword_10062FF78);
    (*(*(v44 - 8) + 104))(v42, v43, v44);
  }

  else
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100003E30(v50, qword_10076B2A0);
    v51 = sub_100008E04(_swiftEmptyArrayStorage);
    v52 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown option type", 19, 2uLL, v51, v52);
    __break(1u);
  }
}

void sub_1000BBAF8(unint64_t a1, uint64_t a2)
{
  v202 = a1;
  v4 = sub_100058000(&qword_1007819C0, &qword_10062FE60);
  v219 = *(v4 - 8);
  __chkstk_darwin(v4);
  v218 = &v187 - v5;
  v208 = type metadata accessor for Logger();
  v206 = *(v208 - 1);
  __chkstk_darwin(v208);
  v221 = &v187 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076BDA0, &unk_10063D3D0);
  v203 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = (&v187 - v8);
  v199 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v196 = *(v199 - 8);
  __chkstk_darwin(v199);
  v11 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v209 = &v187 - v13;
  v14 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v14 - 8);
  v212 = &v187 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v213 = &v187 - v17;
  v214 = type metadata accessor for IndexPath();
  v195 = *(v214 - 8);
  __chkstk_darwin(v214);
  v198 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v200 = &v187 - v20;
  v21 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v21 - 8);
  isa = &v187 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v220 = &v187 - v25;
  __chkstk_darwin(v26);
  v210 = (&v187 - v27);
  v223 = sub_100058000(&unk_1007819A0, &qword_10062FF50);
  v205 = *(v223 - 8);
  __chkstk_darwin(v223);
  v216 = (&v187 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v31 = &v187 - v30;
  v217 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v224 = *(v217 - 8);
  __chkstk_darwin(v217);
  v222 = (&v187 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v33);
  v215 = &v187 - v34;
  __chkstk_darwin(v35);
  v37 = &v187 - v36;
  __chkstk_darwin(v38);
  v204 = &v187 - v39;
  v40 = sub_100058000(&unk_10076BD90, &qword_10063D3E0);
  __chkstk_darwin(v40);
  v42 = &v187 - v41;
  v211 = v2;
  *(*(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_dropExceedsMaximumNumberOfPinnedListsTracker) + 16) = 0;
  v207 = a2;
  sub_1003B3EEC(&v187 - v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return;
    }

    v60 = *(v224 + 8);
    v61 = v42;
LABEL_22:
    v60(v61, v217);
    return;
  }

  if (!EnumCaseMultiPayload)
  {
    v223 = v4;
    v44 = *&v42[*(sub_100058000(&unk_1007819B0, &unk_10062FF40) + 48)];
    v45 = v224;
    v46 = v222;
    (*(v224 + 32))(v222, v42, v217);
    v47 = sub_1003B772C(1);
    v48 = *(v47 + 16);
    if (v48)
    {
      v216 = v44;
      v49 = v208;
      v50 = v206;
      v51 = v220;
      if (v48 == 1)
      {
        if (qword_100766F00 != -1)
        {
          swift_once();
        }

        sub_100003E30(v49, qword_10076B2A0);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Unexpected: handling single item move in treeView(_:performDropWith:)", v54, 2u);
        }
      }

      v215 = *(v211 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
      Strong = v217;
      (*(v45 + 16))(v51, v46, v217);
      (*(v45 + 56))(v51, 0, 1, Strong);
      if (qword_1007672D8 == -1)
      {
LABEL_11:
        v56 = sub_100003E30(v49, qword_100782E90);
        v50[2](v221, v56, v49);
        sub_100058000(&unk_100775610, &unk_1006323A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062F800;
        *(inited + 32) = 1835365481;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = Array.description.getter();
        *(inited + 56) = v58;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 49;
        *(inited + 88) = 0xE100000000000000;
        sub_10000794C(v51, isa, &unk_100771B40, &unk_10062FB70);
        if ((*(v45 + 48))(isa, 1, Strong) == 1)
        {
          sub_1000079B4(isa, &unk_100771B40, &unk_10062FB70);
          v59 = (inited + 96);
          *(inited + 120) = &type metadata for String;
        }

        else
        {
          sub_1001013F4(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item, &protocol conformance descriptor for TTRAccountsListsViewModel.Item);
          v83 = Strong;
          v84 = TTRTreeStorageItem.treeItemDescription.getter();
          v85 = v45;
          v86 = v84;
          v88 = v87;
          (*(v85 + 8))(isa, v83);
          v59 = (inited + 96);
          *(inited + 120) = &type metadata for String;
          if (v88)
          {
            *v59 = v86;
            v45 = v224;
            v51 = v220;
LABEL_181:
            *(inited + 104) = v88;
            *(inited + 128) = 50;
            *(inited + 136) = 0xE100000000000000;
            *(inited + 168) = &type metadata for Int;
            *(inited + 144) = v216;
            v178 = sub_100008E04(inited);
            swift_setDeallocating();
            sub_100058000(&unk_10076BA70, &qword_10062FD60);
            swift_arrayDestroy();
            v179 = v221;
            sub_10000FD44("Accounts Lists move item {item: %@, to (%@, %d)}", 48, 2, v178);

            (v50[1])(v179, v49);
            v180 = v51;
            v181 = v51;
            v182 = v210;
            sub_10000794C(v180, v210, &unk_100771B40, &unk_10062FB70);
            sub_1001013F4(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item, &protocol conformance descriptor for TTRAccountsListsViewModel.Item);
            v183 = v218;
            v184 = v217;
            TTRTreeLocation.init(parent:index:)();
            v185 = v223;
            TTRTreeLocation.parent.getter();
            v186 = TTRTreeLocation.index.getter();
            sub_100439410(v47, v182, v186, 0, 0);

            sub_1000079B4(v182, &unk_100771B40, &unk_10062FB70);
            (*(v219 + 8))(v183, v185);
            sub_1000079B4(v181, &unk_100771B40, &unk_10062FB70);
            (*(v45 + 8))(v222, v184);
            return;
          }

          v45 = v224;
          v51 = v220;
        }

        *v59 = 7104878;
        v88 = 0xE300000000000000;
        goto LABEL_181;
      }

LABEL_200:
      swift_once();
      goto LABEL_11;
    }

    (*(v45 + 8))(v46, v217);
    goto LABEL_183;
  }

  v62 = v224;
  v63 = *(v224 + 32);
  v64 = v204;
  v219 = v224 + 32;
  v218 = v63;
  (v63)(v204, v42, v217);
  v65 = sub_1003B5198(1);
  v66 = v65[2];
  if (!v66)
  {

    v77 = sub_1003B7468(v76);
    v78 = v77[2];
    if (v78)
    {
      v226 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v79 = v77 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
      v80 = v203[9];
      do
      {
        sub_10000794C(v79, v9, &unk_10076BDA0, &unk_10063D3D0);
        v81 = *v9;
        sub_1000079B4(v9, &unk_10076BDA0, &unk_10063D3D0);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v79 += v80;
        --v78;
      }

      while (v78);

      v82 = v226;
      v64 = v204;
    }

    else
    {

      v82 = _swiftEmptyArrayStorage;
    }

    v162 = sub_1004B1A10(v82);
    v163 = v224;
    if (v162)
    {
      v164 = sub_10043ABFC(v82, v64);
    }

    else
    {
      v164 = sub_10043A364(v82, v64);
    }

    v165 = v164;

    v166 = *(v202 + qword_10078A548);
    if (!v166)
    {
      goto LABEL_212;
    }

    v167 = v166;
    v168 = sub_1000DE964(v64);

    if (!v168)
    {
      (*(v163 + 8))(v64, v217);
      goto LABEL_183;
    }

    [v168 bounds];
    CGRect.center.getter();
    v170 = v169;
    v172 = v171;
    v173 = v217;
    if (v165 >> 62)
    {
      v174 = _CocoaArrayWrapper.endIndex.getter();
      if (v174)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v174 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v174)
      {
LABEL_172:
        if (v174 >= 1)
        {
          v175 = 0;
          do
          {
            if ((v165 & 0xC000000000000001) != 0)
            {
              v176 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v176 = *(v165 + 8 * v175 + 32);
            }

            v177 = v176;
            ++v175;
            sub_1003B6A6C(v176, v64, v170, v172, 0.0, 0.0);

            v173 = v217;
          }

          while (v174 != v175);
          goto LABEL_202;
        }

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
        return;
      }
    }

LABEL_202:

    (*(v224 + 8))(v64, v173);
    return;
  }

  v197 = v11;
  v226 = _swiftEmptyArrayStorage;
  v67 = v65;
  sub_1004A2154(0, v66, 0);
  isa = v226;
  v68 = (*(v205 + 80) + 32) & ~*(v205 + 80);
  v201 = v67;
  v69 = v67 + v68;
  v221 = v205[9];
  v222 = (v62 + 16);
  v194 = v67 + v68;
  v193 = v66;
  v70 = v66;
  v71 = v217;
  do
  {
    sub_10000794C(v69, v31, &unk_1007819A0, &qword_10062FF50);
    v72 = &v31[*(v223 + 40)];
    v220 = *v222;
    (v220)(v37, v72, v71);
    sub_1000079B4(v31, &unk_1007819A0, &qword_10062FF50);
    v226 = isa;
    v74 = *(isa + 16);
    v73 = *(isa + 24);
    if (v74 >= v73 >> 1)
    {
      sub_1004A2154((v73 > 1), v74 + 1, 1);
      v71 = v217;
      isa = v226;
    }

    *(isa + 16) = v74 + 1;
    (v218)(isa + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v74, v37, v71);
    v69 += v221;
    --v70;
  }

  while (v70);
  v51 = v204;
  sub_1004382F0(isa, v204);
  if (v75)
  {

    v60 = *(v224 + 8);
    v61 = v51;
    goto LABEL_22;
  }

  v89 = v210;
  v90 = v217;
  (v220)(v210, v51, v217);
  v47 = v224;
  (*(v224 + 56))(v89, 0, 1, v90);
  sub_100439410(isa, v89, 0, 1, 0);
  v92 = v91;

  sub_1000079B4(v89, &unk_100771B40, &unk_10062FB70);
  if (v92)
  {
    v93 = 0;
    v211 = qword_10078A548;
    v210 = v196 + 1;
    v208 = (v195 + 56);
    v192 = (v195 + 48);
    v190 = (v195 + 32);
    v189 = (v195 + 8);
    v196 = (v47 + 8);
    Strong = v90;
    v45 = v202;
    v50 = v199;
    v49 = v209;
    while (1)
    {
      if (v93 >= v201[2])
      {
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
        goto LABEL_198;
      }

      v218 = v93;
      v96 = v216;
      sub_10000794C(&v194[v93 * v221], v216, &unk_1007819A0, &qword_10062FF50);
      (v220)(v215, v96 + *(v223 + 40), Strong);
      v97 = *(v45 + v211);
      if (!v97)
      {
        goto LABEL_210;
      }

      v98 = v97;
      v99 = sub_1000C8540(&unk_10076B770, &qword_10062FB68, sub_1000E8430, sub_1000E1A68);
      v101 = v100;
      v224 = v102;
      isa = v103;
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      v104 = v197;
      if (!*(v101 + 16) || (v219 = v101, v105 = sub_1003AB730(v49), (v106 & 1) == 0))
      {

        v108 = *v210;
        (*v210)(v49, v50);
LABEL_49:
        v116 = v213;
        v118 = *v208;
        (*v208)(v213, 1, 1, v214);
LABEL_50:
        sub_1000079B4(v116, &unk_100771B10, qword_10062E540);
        goto LABEL_51;
      }

      v203 = v98;
      v205 = v99;
      v107 = *(*(v219 + 56) + 8 * v105);
      v108 = *v210;

      v108(v49, v50);
      v109 = sub_10000FA7C(v107, sub_10057E9A0);

      if (!v109)
      {

        goto LABEL_49;
      }

      v110 = v224;
      v111 = *(v224 + 16);
      v191 = v108;
      v195 = v109;
      if (!v111)
      {
        break;
      }

      v47 = v224;
      v112 = sub_1003B3EDC();
      if ((v113 & 1) == 0)
      {
        break;
      }

      v188 = *(*(v110 + 56) + 8 * v112);
      if ((isa & 1) == 0)
      {
        if ((v188 & 0x8000000000000000) != 0)
        {
          goto LABEL_204;
        }

        if (v188 >= v205[2])
        {
          goto LABEL_205;
        }

        Strong = v205[2 * v188 + 5];
        if (Strong >> 62)
        {
          isa = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          isa = *((Strong & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v47 = 0;
        v150 = v195;
        while (isa != v47)
        {
          if ((Strong & 0xC000000000000001) != 0)
          {
            v151 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            swift_unknownObjectRelease();
            v150 = v195;
            v152 = v151 == v195;
            v49 = v209;
            if (v152)
            {
              goto LABEL_131;
            }
          }

          else
          {
            if (v47 >= *((Strong & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_194;
            }

            if (*(Strong + 8 * v47 + 32) == v150)
            {
LABEL_131:

              v116 = v213;
              IndexPath.init(row:section:)();
              v117 = 0;
              v104 = v197;
              goto LABEL_86;
            }
          }

          v134 = __OFADD__(v47++, 1);
          if (v134)
          {
            goto LABEL_195;
          }
        }

        v117 = 1;
        v104 = v197;
        goto LABEL_85;
      }

      v50 = v195;
      Strong = swift_weakLoadStrong();

      v114 = 0;
      if (Strong)
      {
        while (1)
        {
          v134 = __OFADD__(v114++, 1);
          if (v134)
          {
            break;
          }

          v51 = Strong;
          swift_beginAccess();
          Strong = *(Strong + 64);
          if (Strong >> 62)
          {
            v49 = _CocoaArrayWrapper.endIndex.getter();
            if (!v49)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v49 = *((Strong & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v49)
            {
              goto LABEL_89;
            }
          }

          v206 = Strong & 0xFFFFFFFFFFFFFF8;

          isa = 0;
          do
          {
            if ((Strong & 0xC000000000000001) != 0)
            {
              v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v138 = isa + 1;
              if (__OFADD__(isa, 1))
              {
                goto LABEL_185;
              }
            }

            else
            {
              if (isa >= *(v206 + 16))
              {
                goto LABEL_191;
              }

              v47 = *(Strong + 8 * isa + 32);

              v138 = isa + 1;
              if (__OFADD__(isa, 1))
              {
LABEL_185:
                __break(1u);
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
LABEL_188:
                __break(1u);
LABEL_189:
                __break(1u);
LABEL_190:
                __break(1u);
LABEL_191:
                __break(1u);
LABEL_192:
                __break(1u);
                goto LABEL_193;
              }
            }

            if (v47 == v50)
            {

LABEL_89:

              goto LABEL_90;
            }

            v134 = __OFADD__(v114, 1);
            v139 = v114 + 1;
            if (v134)
            {
              goto LABEL_186;
            }

            if (*(v47 + 48))
            {
              v225 = 0;
              sub_10023C598(v47, &v225);
              v45 = v225;
              *(v47 + 40) = v225;
              *(v47 + 48) = 0;
            }

            else
            {
              v45 = *(v47 + 40);
            }

            v134 = __OFADD__(v139, v45);
            v114 = v139 + v45;
            if (v134)
            {
              goto LABEL_187;
            }

            ++isa;
          }

          while (v138 != v49);

LABEL_90:
          Strong = swift_weakLoadStrong();

          v50 = v51;
          v49 = v209;
          if (!Strong)
          {
            goto LABEL_45;
          }
        }

LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

LABEL_45:

      v115 = v114 - 1;
      v50 = v199;
      if (__OFSUB__(v114, 1))
      {
        goto LABEL_208;
      }

      v51 = v204;
      v104 = v197;
      v116 = v213;
      if (v115 < 0)
      {
        v117 = 1;
      }

      else
      {
        IndexPath.init(row:section:)();
        v117 = 0;
      }

LABEL_86:
      v137 = v214;
      v118 = *v208;
      (*v208)(v116, v117, 1, v214);

      if ((*v192)(v116, 1, v137) == 1)
      {

        v45 = v202;
        v108 = v191;
        goto LABEL_50;
      }

      v140 = v118;
      v141 = v200;
      (*v190)(v200, v116, v137);
      v142 = v50;
      v143 = v203;
      v144 = *(v203 + qword_100771730);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v145 = [v144 cellForRowAtIndexPath:isa];

      v50 = v142;

      v146 = v141;
      v118 = v140;
      v51 = v204;
      (*v189)(v146, v137);
      v45 = v202;
      v108 = v191;
      if (v145)
      {

        v147 = v215;
        sub_1003B60D0(*v216, v215);
        v94 = *v196;
        v148 = v147;
LABEL_155:
        Strong = v217;
        v94(v148, v217);
        goto LABEL_35;
      }

LABEL_51:
      v119 = *(v45 + v211);
      if (!v119)
      {
        goto LABEL_211;
      }

      v205 = v119;
      v206 = sub_1000C8540(&unk_10076B770, &qword_10062FB68, sub_1000E8430, sub_1000E1A68);
      v121 = v120;
      v224 = v122;
      isa = v123;
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      if (!*(v121 + 16) || (v219 = v121, v124 = sub_1003AB730(v104), (v125 & 1) == 0))
      {

        v108(v104, v50);
LABEL_33:
        v94 = *v196;
        Strong = v217;
        (*v196)(v215, v217);
        v95 = v212;
        v118(v212, 1, 1, v214);
        goto LABEL_34;
      }

      v126 = *(*(v219 + 56) + 8 * v124);

      v108(v104, v50);
      v127 = sub_10000FA7C(v126, sub_10057E9A0);

      if (!v127)
      {

        goto LABEL_33;
      }

      v128 = v224;
      v129 = *(v224 + 16);
      v195 = v127;
      if (v129)
      {
        v47 = v224;
        v130 = sub_1003B3EDC();
        v131 = v212;
        if ((v132 & 1) == 0)
        {
          v149 = 1;
LABEL_116:
          Strong = v217;
          goto LABEL_150;
        }

        v188 = *(*(v128 + 56) + 8 * v130);
        if (isa)
        {
          v50 = v195;
          Strong = swift_weakLoadStrong();

          v133 = 0;
          if (Strong)
          {
            v191 = v118;
            do
            {
              v134 = __OFADD__(v133++, 1);
              if (v134)
              {
                goto LABEL_199;
              }

              v51 = Strong;
              swift_beginAccess();
              Strong = *(Strong + 64);
              if (Strong >> 62)
              {
                v49 = _CocoaArrayWrapper.endIndex.getter();
                if (v49)
                {
LABEL_65:
                  v203 = (Strong & 0xFFFFFFFFFFFFFF8);

                  isa = 0;
                  while (1)
                  {
                    if ((Strong & 0xC000000000000001) != 0)
                    {
                      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v135 = isa + 1;
                      if (__OFADD__(isa, 1))
                      {
                        goto LABEL_188;
                      }
                    }

                    else
                    {
                      if (isa >= v203[2])
                      {
                        goto LABEL_192;
                      }

                      v47 = *(Strong + 8 * isa + 32);

                      v135 = isa + 1;
                      if (__OFADD__(isa, 1))
                      {
                        goto LABEL_188;
                      }
                    }

                    if (v47 == v50)
                    {
                      break;
                    }

                    v134 = __OFADD__(v133, 1);
                    v136 = v133 + 1;
                    if (v134)
                    {
                      goto LABEL_189;
                    }

                    if (*(v47 + 48))
                    {
                      v225 = 0;
                      sub_10023C598(v47, &v225);
                      v45 = v225;
                      *(v47 + 40) = v225;
                      *(v47 + 48) = 0;
                    }

                    else
                    {
                      v45 = *(v47 + 40);
                    }

                    v134 = __OFADD__(v136, v45);
                    v133 = v136 + v45;
                    if (v134)
                    {
                      goto LABEL_190;
                    }

                    ++isa;
                    if (v135 == v49)
                    {

                      goto LABEL_81;
                    }
                  }

LABEL_81:
                  v118 = v191;
                  goto LABEL_61;
                }
              }

              else
              {
                v49 = *((Strong & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v49)
                {
                  goto LABEL_65;
                }
              }

LABEL_61:
              Strong = swift_weakLoadStrong();

              v50 = v51;
              v49 = v209;
            }

            while (Strong);
          }

          v161 = v133 - 1;
          v50 = v199;
          if (__OFSUB__(v133, 1))
          {
            goto LABEL_209;
          }

          Strong = v217;
          v45 = v202;
          v51 = v204;
          v131 = v212;
          if (v161 < 0)
          {
            v149 = 1;
          }

          else
          {
            IndexPath.init(row:section:)();
            v149 = 0;
          }

          goto LABEL_150;
        }

        if ((v188 & 0x8000000000000000) != 0)
        {
          goto LABEL_206;
        }

        if (v188 >= *(v206 + 16))
        {
          goto LABEL_207;
        }

        Strong = *(v206 + 16 * v188 + 40);
        if (Strong >> 62)
        {
          isa = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          isa = *((Strong & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v47 = 0;
        while (isa != v47)
        {
          if ((Strong & 0xC000000000000001) != 0)
          {
            v153 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            swift_unknownObjectRelease();
            v152 = v153 == v195;
            v49 = v209;
            if (v152)
            {
              goto LABEL_146;
            }
          }

          else
          {
            if (v47 >= *((Strong & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_196;
            }

            if (*(Strong + 8 * v47 + 32) == v195)
            {
LABEL_146:

              v131 = v212;
              IndexPath.init(row:section:)();
              v149 = 0;
              goto LABEL_116;
            }
          }

          v134 = __OFADD__(v47++, 1);
          if (v134)
          {
            goto LABEL_197;
          }
        }
      }

      v149 = 1;
      Strong = v217;
      v131 = v212;
LABEL_150:
      v154 = v214;
      v118(v131, v149, 1, v214);

      if ((*v192)(v131, 1, v154) != 1)
      {
        v155 = v198;
        (*v190)(v198, v131, v154);
        v156 = v205;
        v157 = *(v205 + qword_100771730);
        v158 = IndexPath._bridgeToObjectiveC()().super.isa;
        isa = [v157 cellForRowAtIndexPath:v158];

        (*v189)(v155, v154);
        if (isa)
        {
          [isa bounds];
          CGRect.center.getter();
          sub_1003B6A6C(*v216, v51, v159, v160, 0.0, 0.0);
        }

        v94 = *v196;
        v148 = v215;
        goto LABEL_155;
      }

      v95 = v131;
      v94 = *v196;
      (*v196)(v215, Strong);
LABEL_34:
      sub_1000079B4(v95, &unk_100771B10, qword_10062E540);
LABEL_35:
      v47 = (v218 + 1);
      sub_1000079B4(v216, &unk_1007819A0, &qword_10062FF50);
      v93 = v47;
      if (v47 == v193)
      {
        v94(v51, Strong);
        goto LABEL_183;
      }
    }

    v117 = 1;
LABEL_85:
    v116 = v213;
    goto LABEL_86;
  }

  (*(v47 + 8))(v51, v90);
LABEL_183:
}

uint64_t sub_1000BDD44(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v44 = a2;
  v5 = sub_100058000(&qword_10076BB30, &qword_10062FDC0);
  __chkstk_darwin(v5 - 8);
  v41 = &v40 - v6;
  v7 = sub_100058000(&qword_10076BD88, &unk_10062FF30);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v10 - 8);
  v40 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v45 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  v21 = sub_100058000(&unk_10076BD90, &qword_10063D3E0);
  __chkstk_darwin(v21);
  v23 = &v40 - v22;
  sub_10000794C(a1, &v40 - v22, &unk_10076BD90, &qword_10063D3E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v45 + 8))(v23, v15);
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
    v29 = v45;
    v30 = v15;
    (*(v45 + 32))(v17, v23, v15);
    sub_1001AACA0();
    if (v32)
    {
      v33 = v41;
      sub_100439D90(v31, v41);

      (*(v29 + 8))(v17, v30);
      v34 = sub_100058000(&qword_10076BB38, &qword_10063F300);
      v27 = (*(*(v34 - 8) + 48))(v33, 1, v34) != 1;
      sub_1000079B4(v33, &qword_10076BB30, &qword_10062FDC0);
    }

    else
    {
      TTRAccountsListsPresenterCapability.paramsForCreatingGroup(byDropping:into:)();
      v37 = type metadata accessor for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams();
      if ((*(*(v37 - 8) + 48))(v9, 1, v37) == 1)
      {
        sub_1000079B4(v9, &qword_10076BD88, &unk_10062FF30);
        v38 = v45;
        v39 = v40;
        (*(v45 + 16))(v40, v17, v30);
        (*(v38 + 56))(v39, 0, 1, v30);
        v27 = TTRAccountsListsPresenterCapability.canMove(_:into:atUnadjustedIndex:containerIsInEditMode:)();

        sub_1000079B4(v39, &unk_100771B40, &unk_10062FB70);
        (*(v38 + 8))(v17, v30);
      }

      else
      {

        (*(v45 + 8))(v17, v15);
        sub_1000079B4(v9, &qword_10076BD88, &unk_10062FF30);
        v27 = 1;
      }
    }
  }

  else
  {
    sub_100058000(&unk_1007819B0, &unk_10062FF40);
    v25 = v45;
    (*(v45 + 32))(v20, v23, v15);
    sub_1001AACA0();
    if (v26)
    {

      (*(v25 + 8))(v20, v15);
LABEL_7:
      v27 = 0;
      return v27 & 1;
    }

    (*(v25 + 16))(v14, v20, v15);
    (*(v25 + 56))(v14, 0, 1, v15);
    v35 = TTRAccountsListsPresenterCapability.paramsForMoving(_:into:atUnadjustedIndex:containerIsInEditMode:)();

    if (v35)
    {
      v27 = TTRAccountsListsPresenterCapability.RemindersInsertionPlan.shouldDisallow.getter() ^ 1;
      v36 = TTRAccountsListsPresenterCapability.RemindersInsertionPlan.hasSubjectExceedingMaximumNumberOfPinnedLists.getter();
    }

    else
    {
      v27 = 0;
      v36 = 0;
    }

    sub_1000079B4(v14, &unk_100771B40, &unk_10062FB70);
    (*(v25 + 8))(v20, v15);
    *v42 = v36 & 1;
  }

  return v27 & 1;
}

void sub_1000BE3A0(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for TTRIAccountsListsSelection(0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([v2 isViewLoaded])
  {
    if (a2)
    {
      v9 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v9 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        v10 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
        v11 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
        if (v11)
        {
          v12 = [v11 searchBar];
          v13 = String._bridgeToObjectiveC()();
          [v12 setText:v13];

          v14 = *&v2[v10];
          if (v14)
          {
            v15 = [v14 searchBar];
            v16 = [v15 text];

            if (v16)
            {

              sub_100058000(&qword_10076B7B8, &qword_10062FB98);
              v17 = swift_allocBox();
              sub_1000B3FE8(v18);
              *v8 = v17;
              swift_storeEnumTagMultiPayload();
              sub_1000B551C(v8, 4, 0);
              sub_100100B78(v8, type metadata accessor for TTRIAccountsListsSelection);
            }

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }
    }
  }

  else
  {
    v19 = &v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_pendingSearchTerm];
    *v19 = a1;
    *(v19 + 1) = a2;
  }
}

void sub_1000BE5A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = a2;
  v68 = type metadata accessor for TTRTreeViewAnimationByType();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100058000(&qword_10076B998, &unk_10063F160);
  v67 = *(v65 - 8);
  __chkstk_darwin(v65);
  v7 = &v58 - v6;
  v8 = sub_100058000(&qword_10076B9A0, &qword_10062FCD0);
  v71 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for TTRIAccountsListsViewUpdates(0);
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v58 - v18;
  if ([v3 isViewLoaded])
  {
    v72 = v15;
    v59 = v11;
    v20 = *(v11 + 20);
    v21 = v70;
    v3[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentEditModeTransition] = *(v70 + v20 + 1);
    v22 = [v3 view];
    if (v22)
    {
      v23 = v22;
      v61 = v7;
      v73 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v62 = v23;
      v24 = swift_dynamicCastClass();
      v60 = v24;
      if (v24)
      {
        v63 = &v58;
        __chkstk_darwin(v24);
        v58 = &v58 - 4;
        v56 = v3;
        v57 = a1;
        v25 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100100B10(v21, v19, type metadata accessor for TTRIAccountsListsViewUpdates);
        sub_100100B10(v19, v72, type metadata accessor for TTRIAccountsListsViewUpdates);
        sub_100100B10(v19, v73, type metadata accessor for TTRIAccountsListsViewUpdates);
        v26 = v21;
        v27 = (*(v69 + 80) + 24) & ~*(v69 + 80);
        v28 = swift_allocObject();
        *(v28 + 16) = v25;
        sub_1001006AC(v19, v28 + v27, type metadata accessor for TTRIAccountsListsViewUpdates);
        v29 = v71;
        (*(v71 + 16))(v10, v26, v8);
        v30 = (*(v29 + 88))(v10, v8);
        if (v30 == enum case for TTRTreeViewUpdates.incremental<A>(_:))
        {
          (*(v29 + 96))(v10, v8);
          v31 = *(sub_100058000(&qword_10076B9A8, &qword_10062FCD8) + 48);
          v32 = v61;
          v33 = v65;
          (*(v67 + 32))(v61, v10, v65);
          v34 = v66;
          v35 = &v10[v31];
          v36 = v64;
          (*(v66 + 32))(v64, v35, v68);
          swift_retain_n();
          v37 = TTRTreeDiffResult.isEmpty.getter();
          if (v37)
          {
            *&v3[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel] = a1;

            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            v39 = v73;
            if (Strong)
            {
              v40 = Strong;
              *(Strong + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentEditModeTransition) = 2;
              sub_1000B17BC();
              v41 = v72;
              sub_1000B7230(v72[*(v59 + 20)]);
              sub_1000B021C();

              v42 = v40;
            }

            else
            {

              v42 = v62;
              v41 = v72;
            }

            sub_100100B78(v39, type metadata accessor for TTRIAccountsListsViewUpdates);

            sub_100100B78(v41, type metadata accessor for TTRIAccountsListsViewUpdates);
            (*(v34 + 8))(v36, v68);
            (*(v67 + 8))(v61, v33);
            goto LABEL_21;
          }

          __chkstk_darwin(v37);
          v52 = v58;
          *(&v58 - 6) = sub_1000FF81C;
          *(&v58 - 5) = v52;
          v53 = v60;
          *(&v58 - 4) = v32;
          *(&v58 - 3) = v53;
          v56 = v36;
          v54 = *(v53 + qword_10078A548);
          v25 = v73;
          if (v54)
          {
            v55 = v54;
            sub_1001A0EA8(0, 0, sub_1000FF864, v28, v55, sub_1000FF8D8);

            sub_100100B78(v25, type metadata accessor for TTRIAccountsListsViewUpdates);

            sub_100100B78(v72, type metadata accessor for TTRIAccountsListsViewUpdates);

            (*(v34 + 8))(v36, v68);
            (*(v67 + 8))(v32, v33);
LABEL_21:

            return;
          }
        }

        else
        {
          v43 = v30;
          v44 = enum case for TTRTreeViewUpdates.reload<A>(_:);

          if (v43 != v44)
          {
LABEL_26:
            sub_100100B78(v73, type metadata accessor for TTRIAccountsListsViewUpdates);
            sub_100100B78(v72, type metadata accessor for TTRIAccountsListsViewUpdates);
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return;
          }

          sub_100100B78(v72, type metadata accessor for TTRIAccountsListsViewUpdates);
          *&v3[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel] = a1;

          v45 = *(v60 + qword_10078A548);
          v46 = v73;
          if (v45)
          {
            v47 = v45;
            sub_1000C8050();

            swift_beginAccess();
            v48 = swift_unknownObjectWeakLoadStrong();
            v49 = v59;
            if (v48)
            {
              v50 = v48;
              *(v48 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentEditModeTransition) = 2;
              sub_1000B17BC();
              sub_1000B7230(*(v46 + *(v49 + 20)));
              sub_1000B021C();

              v51 = v50;
            }

            else
            {

              v51 = v62;
            }

            sub_100100B78(v46, type metadata accessor for TTRIAccountsListsViewUpdates);
            goto LABEL_21;
          }

          sub_100100B78(v46, type metadata accessor for TTRIAccountsListsViewUpdates);
          __break(1u);
        }

        sub_100100B78(v25, type metadata accessor for TTRIAccountsListsViewUpdates);

        sub_100100B78(v72, type metadata accessor for TTRIAccountsListsViewUpdates);
        __break(1u);
      }
    }

    LODWORD(v57) = 0;
    v56 = 367;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_26;
  }

  *&v3[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel] = a1;
}

void sub_1000BEF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(Strong + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentEditModeTransition) = 2;
    sub_1000B17BC();
    v6 = type metadata accessor for TTRIAccountsListsViewUpdates(0);
    sub_1000B7230(*(a3 + *(v6 + 20)));
    sub_1000B021C();
  }
}

void sub_1000BEFE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ([v3 isViewLoaded])
  {
    v5 = [v3 view];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        __chkstk_darwin(v7);
        v9 = *(v8 + qword_10078A548);
        if (v9)
        {
          v10 = v9;
          sub_1001A0EA8(0, 0, 0, 0, v10, sub_100100B04);

          return;
        }

        __break(1u);
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *&v3[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel] = a1;
  }
}

uint64_t sub_1000BF188(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v62 = sub_100058000(&qword_1007819C0, &qword_10062FE60);
  v12 = *(v62 - 8);
  __chkstk_darwin(v62);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v61 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v17 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100058000(&qword_10076BC30, &qword_10062FE68);
  __chkstk_darwin(v19 - 8);
  v58 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v56 = a1;
  v57 = &v49 - v22;
  *&a1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel] = a2;

  v23 = 0;
  v49 = a3;
  v24 = *(a3 + 16);
  v25 = v16;
  v54 = (v12 + 32);
  v55 = (v17 + 32);
  v50 = (v17 + 8);
  v51 = (v12 + 8);
  v52 = v24;
  v26 = v24 == 0;
  if (v24)
  {
    goto LABEL_3;
  }

LABEL_2:
  v27 = sub_100058000(&qword_10076BC38, &qword_10062FE70);
  v28 = v58;
  (*(*(v27 - 8) + 56))(v58, 1, 1, v27);
  v59 = v24;
  v29 = v62;
  while (1)
  {
    v32 = v28;
    v33 = v57;
    sub_100016588(v32, v57, &qword_10076BC30, &qword_10062FE68);
    v34 = sub_100058000(&qword_10076BC38, &qword_10062FE70);
    result = (*(*(v34 - 8) + 48))(v33, 1, v34);
    if (result == 1)
    {
      return result;
    }

    v36 = *(v34 + 48);
    (*v55)(v60, v33, v61);
    v37 = *v54;
    (*v54)(v25, v33 + v36, v29);
    v38 = v53;
    v37();
    v39 = [v56 view];
    if (!v39)
    {
      goto LABEL_17;
    }

    v17 = v39;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    v40 = swift_dynamicCastClass();
    if (!v40)
    {
      goto LABEL_16;
    }

    v41 = v40;
    v42 = v62;
    v43 = v25;
    v44 = TTRTreeLocation.index.getter();
    TTRTreeLocation.parent.getter();
    v45 = TTRTreeLocation.index.getter();
    TTRTreeLocation.parent.getter();
    v46 = *(v41 + qword_10078A548);
    if (!v46)
    {
      goto LABEL_15;
    }

    v47 = v46;
    v48 = v60;
    sub_1000D59B8(v60, v44, v11, v45, v8);

    sub_1000079B4(v8, &unk_100771B40, &unk_10062FB70);
    sub_1000079B4(v11, &unk_100771B40, &unk_10062FB70);
    v17 = *v51;
    (*v51)(v38, v42);
    (v17)(v43, v42);
    (*v50)(v48, v61);
    v25 = v43;
    v24 = v52;
    v23 = v59;
    v26 = v59 >= v52;
    if (v59 == v52)
    {
      goto LABEL_2;
    }

LABEL_3:
    v28 = v58;
    if (v26)
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:

LABEL_17:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v17 = sub_100058000(&qword_10076BC38, &qword_10062FE70);
    v30 = *(v17 - 1);
    sub_10000794C(v49 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23, v28, &qword_10076BC38, &qword_10062FE70);
    v31 = __OFADD__(v23, 1);
    v59 = v23 + 1;
    v29 = v62;
    if (v31)
    {
      goto LABEL_14;
    }

    (*(v30 + 56))(v28, 0, 1, v17);
  }
}

uint64_t sub_1000BF7E0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.List.pinState.getter();
  v11 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v12 = type metadata accessor for TTRAccountsListsViewModel.List();
    (*(*(v12 - 8) + 16))(v6, a1, v12);
    v13 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
    v14 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v14 - 8) + 104))(v6, v13, v14);
  }

  else
  {
    sub_100058000(&unk_10076BAA0, &unk_10062FD90);
    v15 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10062D400;
    v19 = type metadata accessor for TTRAccountsListsViewModel.List();
    (*(*(v19 - 8) + 16))(v18 + v17, a1, v19);
    (*(v16 + 104))(v18 + v17, enum case for TTRAccountsListsViewModel.Item.list(_:), v15);
    *v6 = v18;
  }

  swift_storeEnumTagMultiPayload();
  sub_1000B551C(v6, 0, a2 & 1);
  return sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
}

void sub_1000BFAE8(uint64_t a1)
{
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v2);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.List.pinState.getter();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == enum case for TTRAccountsListsViewModel.List.PinState.supported(_:))
  {
    (*(v6 + 96))(v8, v5);
    if (*v8)
    {
      v10 = type metadata accessor for TTRAccountsListsViewModel.List();
      (*(*(v10 - 8) + 16))(v4, a1, v10);
      v11 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
      v12 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v12 - 8) + 104))(v4, v11, v12);
LABEL_6:
      swift_storeEnumTagMultiPayload();
      sub_1000B551C(v4, 0, 0);
      sub_100100B78(v4, type metadata accessor for TTRIAccountsListsSelection);
      return;
    }

LABEL_5:
    sub_100058000(&unk_10076BAA0, &unk_10062FD90);
    v13 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10062D400;
    v17 = type metadata accessor for TTRAccountsListsViewModel.List();
    (*(*(v17 - 8) + 16))(v16 + v15, a1, v17);
    (*(v14 + 104))(v16 + v15, enum case for TTRAccountsListsViewModel.Item.customSmartList(_:), v13);
    *v4 = v16;
    goto LABEL_6;
  }

  if (v9 == enum case for TTRAccountsListsViewModel.List.PinState.notSupported(_:))
  {
    goto LABEL_5;
  }

  if (qword_100766F00 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003E30(v18, qword_10076B2A0);
  v19 = sub_100008E04(_swiftEmptyArrayStorage);
  v20 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown pin state", 17, 2uLL, v19, v20);
  __break(1u);
}

uint64_t sub_1000BFE9C(uint64_t a1)
{
  v3 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v21 - v10);
  v12 = type metadata accessor for REMHashtagLabelSpecifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B3FE8(v11);
  v16 = type metadata accessor for TTRIAccountsListsSelection(0);
  if ((*(*(v16 - 8) + 48))(v11, 1, v16) == 1)
  {
    return sub_1000079B4(v11, &unk_10076B7C0, &unk_10062FBA0);
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_100100B78(v11, type metadata accessor for TTRIAccountsListsSelection);
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_1001013F4(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier, &protocol conformance descriptor for REMHashtagLabelSpecifier);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return (*(v13 + 8))(v15, v12);
  }

  TTRAccountsListsViewModel.hashtagsItem.getter();

  v18 = v22;
  if ((*(v22 + 48))(v5, 1, v6) == 1)
  {
    (*(v13 + 8))(v15, v12);
    return sub_1000079B4(v5, &unk_100771B40, &unk_10062FB70);
  }

  (*(v18 + 32))(v8, v5, v6);
  v19 = [v1 view];
  if (!v19)
  {
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20 = v19;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_14;
  }

  sub_1002EBB5C(v8, a1, 0, 0);

  (*(v18 + 8))(v8, v6);
  return (*(v13 + 8))(v15, v12);
}

void sub_1000C0300()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = String._bridgeToObjectiveC()();
  v15 = sub_1000C0584;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1001762CC;
  v14 = &unk_100715400;
  v5 = _Block_copy(&v11);

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:1 handler:v5];
  _Block_release(v5);

  v8 = String._bridgeToObjectiveC()();
  v15 = sub_1000C0624;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1001762CC;
  v14 = &unk_100715428;
  v9 = _Block_copy(&v11);

  v10 = [v6 actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v3 addAction:v10];
  [v3 addAction:v7];
  [v0 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_1000C0584()
{
  if (qword_100766F00 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_10076B2A0);
  v1 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("User tapped OK at migration fail prompt.", 40, 2, v1);
}

uint64_t sub_1000C0624()
{
  v0 = sub_100058000(&unk_100775660, &qword_10062F6B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = [objc_opt_self() defaultWorkspace];
    if (v8)
    {
      v9 = v8;
      LSApplicationWorkspace.open(universalLink:)();
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_1000C07C8(int a1)
{
  v98 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076B7B8, &qword_10062FB98);
  __chkstk_darwin(v9 - 8);
  v11 = &v89 - v10;
  v12 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v89 - v13);
  v15 = type metadata accessor for TTRIAccountsListsSelection(0);
  v99 = *(v15 - 8);
  v100 = v15;
  __chkstk_darwin(v15);
  v96 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v89 - v18;
  v20 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  *&v21 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v23 = &v89 - v22;
  if (![v1 isViewLoaded])
  {
    return;
  }

  v93 = v8;
  if (qword_100766F00 != -1)
  {
    swift_once();
  }

  v90 = v11;
  v91 = v5;
  v95 = a1;
  v94 = v3;
  v24 = type metadata accessor for Logger();
  v25 = sub_100003E30(v24, qword_10076B2A0);
  v26 = v1;
  v92 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v89 = v6;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 136315138;
    aBlock = 0;
    v103 = 0xE000000000000000;
    v31 = v26;
    v32 = *&v26[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
    v101 = v30;
    v33 = *(v32 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
    if (v33 == 2)
    {
      LOBYTE(v33) = sub_100444328(v32);
    }

    v34 = (v33 & 1) == 0;
    if (v33)
    {
      v35 = 0x65736C6166;
    }

    else
    {
      v35 = 1702195828;
    }

    if (v34)
    {
      v36 = 0xE400000000000000;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    v37 = v36;
    String.append(_:)(*&v35);

    v38 = sub_100004060(aBlock, v103, &v101);

    *(v29 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "Reloading tree view because isInExpandedSplitView has changed { newValue: %s }", v29, 0xCu);
    sub_100004758(v30);

    v6 = v89;
  }

  else
  {
    v31 = v26;
  }

  v39 = [v31 view];
  if (!v39)
  {
    goto LABEL_76;
  }

  v40 = v39;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v41 = swift_dynamicCastClass();
  if (!v41)
  {
LABEL_75:

    goto LABEL_76;
  }

  v42 = *(v41 + qword_10078A548);
  if (!v42)
  {
    __break(1u);
    goto LABEL_64;
  }

  v43 = v42;
  sub_1000C8050();

  v44 = [v31 view];
  if (!v44)
  {
LABEL_76:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v40 = v44;
  v45 = swift_dynamicCastClass();
  v46 = v95;
  if (!v45)
  {
    goto LABEL_75;
  }

  v47 = v45;

  TTRAccountsListsViewModel.hashtagsHeaderItem.getter();

  v48 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v49 = (*(*(v48 - 8) + 48))(v23, 1, v48);
  v50 = *(v47 + qword_10078A548);
  if (!v50)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v51 = v49 == 1;
  v52 = v50;
  sub_1000DAA98(v23, v51, 5);

  sub_1000079B4(v23, &unk_100771B40, &unk_10062FB70);
  sub_1000B0100();
  sub_1000B021C();
  v53 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  v54 = *&v31[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
  if (v46)
  {
    if (v54)
    {
      [v54 setObscuresBackgroundDuringPresentation:1];
      v55 = *&v31[v53];
      if (v55)
      {
        [v55 setAutomaticallyShowsSearchResultsController:1];
        v56 = *&v31[v53];
        if (v56)
        {
          if ([v56 isActive])
          {
            goto LABEL_28;
          }

          v57 = *&v31[v53];
          if (!v57)
          {
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          if ([v57 isBeingPresented])
          {
LABEL_28:
            v58 = *&v31[v53];
            if (v58)
            {
LABEL_38:
              v62 = [v58 searchBar];
              v63 = [v62 text];

              if (v63)
              {
                v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v66 = v65;

                v67 = HIBYTE(v66) & 0xF;
                if ((v66 & 0x2000000000000000) == 0)
                {
                  v67 = v64 & 0xFFFFFFFFFFFFLL;
                }

                v68 = v67 != 0;
                goto LABEL_46;
              }

              goto LABEL_45;
            }

            goto LABEL_70;
          }

LABEL_45:
          v68 = 0;
          goto LABEL_46;
        }

LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (!v54)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  [v54 setObscuresBackgroundDuringPresentation:0];
  v59 = *&v31[v53];
  if (!v59)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  [v59 setShowsSearchResultsController:0];
  sub_1000B3FE8(v14);
  if ((*(v99 + 48))(v14, 1, v100) == 1)
  {
    sub_1000079B4(v14, &unk_10076B7C0, &unk_10062FBA0);
    v60 = *&v31[v53];
    if (!v60)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if ([v60 isActive])
    {
      goto LABEL_37;
    }

    v61 = *&v31[v53];
    if (!v61)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if ([v61 isBeingPresented])
    {
LABEL_37:
      v58 = *&v31[v53];
      if (v58)
      {
        goto LABEL_38;
      }

      goto LABEL_73;
    }

    goto LABEL_45;
  }

  sub_1001006AC(v14, v19, type metadata accessor for TTRIAccountsListsSelection);
  v69 = v96;
  sub_1001006AC(v19, v96, type metadata accessor for TTRIAccountsListsSelection);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_100100B78(v69, type metadata accessor for TTRIAccountsListsSelection);
    goto LABEL_45;
  }

  v70 = swift_projectBox();
  v71 = v90;
  sub_10000794C(v70, v90, &qword_10076B7B8, &qword_10062FB98);
  sub_1000079B4(v71, &unk_10076B7C0, &unk_10062FBA0);

  v68 = 1;
LABEL_46:
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v100 = v31;
    aBlock = v75;
    *v74 = 136315394;
    if (v46)
    {
      v76 = 1702195828;
    }

    else
    {
      v76 = 0x65736C6166;
    }

    if (v46)
    {
      v77 = 0xE400000000000000;
    }

    else
    {
      v77 = 0xE500000000000000;
    }

    v78 = sub_100004060(v76, v77, &aBlock);

    *(v74 + 4) = v78;
    *(v74 + 12) = 2080;
    if (v68)
    {
      v79 = 1702195828;
    }

    else
    {
      v79 = 0x65736C6166;
    }

    if (v68)
    {
      v80 = 0xE400000000000000;
    }

    else
    {
      v80 = 0xE500000000000000;
    }

    v81 = sub_100004060(v79, v80, &aBlock);

    *(v74 + 14) = v81;
    _os_log_impl(&_mh_execute_header, v72, v73, "Accounts list view rootViewCollapseStateDidChange {isCollapsed: %s, shouldPerformSearch: %s}", v74, 0x16u);
    swift_arrayDestroy();
  }

  v83 = v93;
  v82 = v94;
  if (v68)
  {
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v84 = static OS_dispatch_queue.main.getter();
    v85 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v106 = sub_1000FD668;
    v107 = v85;
    aBlock = _NSConcreteStackBlock;
    v103 = 1107296256;
    v104 = sub_10001047C;
    v105 = &unk_100714FF0;
    v86 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1001013F4(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v87 = v97;
    sub_100058000(&qword_100780A50, &qword_100635D30);
    sub_10000E188(&qword_10076B7E0, &qword_100780A50, &qword_100635D30, &protocol conformance descriptor for [A]);
    v88 = v98;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v86);

    (*(v82 + 8))(v87, v88);
    (*(v6 + 8))(v83, v91);
  }
}

void sub_1000C13AC(uint64_t a1)
{
  v1 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v1);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  v7 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController);
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = [v7 searchBar];
  v9 = [v8 isFirstResponder];

  v10 = *&v5[v6];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v11 = [v10 searchBar];
  v12 = [v11 text];

  if (v12)
  {

    sub_100058000(&qword_10076B7B8, &qword_10062FB98);
    v13 = swift_allocBox();
    sub_1000B3FE8(v14);
    *v3 = v13;
    swift_storeEnumTagMultiPayload();
    if (v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = 4;
    }

    sub_1000B551C(v3, v15, 0);

    sub_100100B78(v3, type metadata accessor for TTRIAccountsListsSelection);
  }

  else
  {
  }
}

uint64_t sub_1000C1564(uint64_t a1, int a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100058000(&unk_10076BAA0, &unk_10062FD90);
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10062D400;
  v11 = type metadata accessor for TTRAccountsListsViewModel.Group();
  (*(*(v11 - 8) + 16))(v10 + v9, a1, v11);
  (*(v8 + 104))(v10 + v9, enum case for TTRAccountsListsViewModel.Item.group(_:), v7);
  *v6 = v10;
  swift_storeEnumTagMultiPayload();
  sub_1000B551C(v6, 0, a2);
  return sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_1000C1730(uint64_t a1, int a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  v8 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
  v9 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  swift_storeEnumTagMultiPayload();
  sub_1000B551C(v6, 0, a2);
  return sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_1000C1874(uint64_t a1)
{
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_1000B551C(v4, 0, 0);
  return sub_100100B78(v4, type metadata accessor for TTRIAccountsListsSelection);
}

void sub_1000C1970(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [v4 view];
  if (!v8)
  {
    goto LABEL_7;
  }

  type metadata accessor for TTRIAccountsListsTreeView(0);
  if (!swift_dynamicCastClass())
  {

LABEL_7:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  sub_1000E596C(a1, a2, a3 & 1);
}

uint64_t sub_1000C1A68(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  swift_storeEnumTagMultiPayload();
  sub_1000B551C(v5, 16, 0);
  return sub_100100B78(v5, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_1000C1B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return TTRIHashtagCollectionCellDelegate.hashtagCollectionCell(_:layoutResultDidChange:)(a1, a2, ObjectType, a4);
}

uint64_t sub_1000C1BB8(int a1, id a2, uint64_t a3, uint64_t a4)
{
  v4 = [a2 items];
  sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for TTRIAccountsListsPresenter(0);
  v6 = sub_1004493C0(v5);

  return v6 & 1;
}

uint64_t sub_1000C1C90(int a1, id a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 items];
  sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10043B48C(v7, a3, a4);
}

uint64_t sub_1000C1D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return TTRIHashtagCollectionCellDelegate.hashtagCollectionCellRequestAddTag(_:)(a1, ObjectType, a3);
}

void sub_1000C1DFC(void *a1)
{
  if ([a1 isBeingDismissed])
  {
    v2 = 1;
  }

  else
  {
    type metadata accessor for TTRISearchController();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v2 = *(v3 + OBJC_IVAR____TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController_ttri_isBeingDismissed);
    }

    else
    {
      v2 = 0;
    }
  }

  if ([a1 isActive] && (v2 & 1) == 0)
  {

    sub_1000C1EA4(0);
  }
}

void sub_1000C1EA4(char a1)
{
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v3);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
  v7 = *(v6 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v7 == 2)
  {
    if (!sub_100444328(v6))
    {
LABEL_3:
      v8 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController);
      if (v8)
      {
        v9 = [v8 searchBar];
        v10 = [v9 text];

        if (v10)
        {

          sub_100058000(&qword_10076B7B8, &qword_10062FB98);
          v11 = swift_allocBox();
          sub_1000B3FE8(v12);
          *v5 = v11;
          swift_storeEnumTagMultiPayload();
          if (a1)
          {
            v13 = 4;
          }

          else
          {
            v13 = 0;
          }

          sub_1000B551C(v5, v13, 0);
          sub_100100B78(v5, type metadata accessor for TTRIAccountsListsSelection);
        }

        return;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController);
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController);
  if (!v15)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v16 = v14;
  v17 = [v15 searchBar];
  v18 = [v17 text];

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  sub_1005065C4(v19, v21, a1 & 1);
}

uint64_t sub_1000C2140(void *a1)
{
  result = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
  v4 = *(result + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v4 == 2)
  {
    result = sub_100444328(result);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if ((v4 & 1) == 0)
  {
    return result;
  }

  v5 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController);
  if (v5)
  {
    v6 = v5;
    v7 = [a1 searchBar];
    v8 = [v7 text];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    sub_100505C14(v9, v11, 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000C2328(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100058000(&qword_10076B7B8, &qword_10062FB98);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v6 - 8);
  v46 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v44 = &v42 - v9;
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  __chkstk_darwin(v13);
  v43 = &v42 - v14;
  __chkstk_darwin(v15);
  v17 = (&v42 - v16);
  v18 = type metadata accessor for TTRIAccountsListsSelection(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v45 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v42 - v22;
  __chkstk_darwin(v24);
  v26 = &v42 - v25;
  type metadata accessor for TTRISearchController();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    *(v27 + OBJC_IVAR____TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController_ttri_isBeingDismissed) = 1;
  }

  sub_100019008(0, 1);
  v28 = *(*(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter) + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v28 != 2)
  {
    if (v28)
    {
      return;
    }

LABEL_7:
    sub_1000B3FE8(v17);
    v29 = *(v19 + 48);
    if (v29(v17, 1, v18) == 1)
    {
      sub_1000079B4(v17, &unk_10076B7C0, &unk_10062FBA0);
      return;
    }

    sub_1001006AC(v17, v26, type metadata accessor for TTRIAccountsListsSelection);
    sub_100100B10(v26, v23, type metadata accessor for TTRIAccountsListsSelection);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_100100B78(v26, type metadata accessor for TTRIAccountsListsSelection);
      v33 = v23;
LABEL_23:
      sub_100100B78(v33, type metadata accessor for TTRIAccountsListsSelection);
      return;
    }

    v42 = v29;
    v30 = swift_projectBox();
    sub_10000794C(v30, v5, &qword_10076B7B8, &qword_10062FB98);
    sub_1000079B4(v5, &unk_10076B7C0, &unk_10062FBA0);

    v31 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
    swift_beginAccess();
    sub_10000794C(v2 + v31, v12, &unk_10076B7C0, &unk_10062FBA0);
    if (v42(v12, 1, v18) == 1)
    {
      v32 = v12;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_100100B78(v12, type metadata accessor for TTRIAccountsListsSelection);
        goto LABEL_18;
      }

      v34 = swift_projectBox();
      sub_10000794C(v34, v5, &qword_10076B7B8, &qword_10062FB98);
      v35 = v5;
      v36 = v43;
      sub_100016588(v35, v43, &unk_10076B7C0, &unk_10062FBA0);

      v37 = v36;
      v38 = v44;
      sub_100016588(v37, v44, &unk_10076B7C0, &unk_10062FBA0);
      if (v42(v38, 1, v18) != 1)
      {
        v40 = v38;
LABEL_22:
        v41 = v45;
        sub_1001006AC(v40, v45, type metadata accessor for TTRIAccountsListsSelection);
        sub_1000B551C(v41, 0, 0);
        sub_100100B78(v41, type metadata accessor for TTRIAccountsListsSelection);
        v33 = v26;
        goto LABEL_23;
      }

      v32 = v38;
    }

    sub_1000079B4(v32, &unk_10076B7C0, &unk_10062FBA0);
LABEL_18:
    v39 = v46;
    sub_100016120(v46);
    if (v42(v39, 1, v18) == 1)
    {
      sub_100100B78(v26, type metadata accessor for TTRIAccountsListsSelection);
      sub_1000079B4(v39, &unk_10076B7C0, &unk_10062FBA0);
      return;
    }

    v40 = v39;
    goto LABEL_22;
  }

  if (!sub_100444328(*(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter)))
  {
    goto LABEL_7;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for TTRRemindersListViewModelSource.NextDataModelUpdateOptions(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRIAccountsListsViewController.BarButtonItemConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFD)
  {
    if ((a2 + 31457282) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 14680066;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 14680066;
      }
    }
  }

  if ((((*(a1 + 2) >> 6) | (4 * ((*a1 >> 2) & 0x3F80 | (*a1 >> 1) | (((*(a1 + 2) >> 1) & 0x1F) << 14)))) ^ 0x1FFFFFu) >= 0x1FFFFD)
  {
    v4 = -1;
  }

  else
  {
    v4 = ((*(a1 + 2) >> 6) | (4 * ((*a1 >> 2) & 0x3F80 | (*a1 >> 1) | (((*(a1 + 2) >> 1) & 0x1F) << 14)))) ^ 0x1FFFFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIAccountsListsViewController.BarButtonItemConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 31457282) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0x1FFFFD)
  {
    v3 = 0;
  }

  if (a2 > 0x1FFFFD)
  {
    *result = a2 + 2;
    *(result + 2) = (a2 - 2097150) >> 16;
    if (v3)
    {
      v4 = ((a2 - 2097150) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      v5 = ((-a2 >> 2) & 0x7FFFF) - (a2 << 19);
      *(result + 2) = ((8 * v5) & 0xFE0000) >> 16;
      *result = (4 * v5) & 0xFE00 | (2 * (v5 & 0x7F));
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1000C2BBC(unsigned __int16 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = (v2 >> 8) & 1;
  v4 = v2 & 0xFF00FFFF | (*(a1 + 2) << 16);
  v5 = v1 >> 6;
  v6 = (v4 & 1 | (2 * v3) & 0xFFFFFFFB | (4 * (v1 & 1))) + 2;
  if ((v4 << 8) >> 8 >= 0)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

unsigned __int16 *sub_1000C2C08(unsigned __int16 *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = (*result | (*(result + 2) << 16)) & 0x1010101 | (a2 << 22);
  }

  else
  {
    v2 = ((a2 - 2) << 7) & 0x100 | (a2 - 2) & 1 | ((((a2 - 2) >> 2) & 1) << 16) | 0xFF800000;
  }

  *result = v2;
  *(result + 2) = BYTE2(v2);
  return result;
}

uint64_t sub_1000C2C60(void *a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 view];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
LABEL_9:

LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v15 = *(v14 + qword_10078A548);
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  sub_1001D45F8(a1, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000079B4(v6, &unk_100771B40, &unk_10062FB70);
  }

  (*(v8 + 32))(v11, v6, v7);
  sub_10042BF78(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000C2EB8(void *a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 view];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
LABEL_9:

LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v15 = *(v14 + qword_10078A548);
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  sub_1001D45F8(a1, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000079B4(v6, &unk_100771B40, &unk_10062FB70);
  }

  (*(v8 + 32))(v11, v6, v7);
  sub_10042F45C(v11, 0);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000C3114(void *a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_10078D440, &unk_10062FBB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v2 view];
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = v18;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
LABEL_12:

LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v30 = v2;
  v21 = *(v20 + qword_10078A548);
  if (!v21)
  {
    __break(1u);
    goto LABEL_12;
  }

  v22 = v21;
  sub_1001D45F8(a1, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v23 = &unk_100771B40;
    v24 = &unk_10062FB70;
    v25 = v12;
LABEL_8:
    sub_1000079B4(v25, v23, v24);
    return 0;
  }

  (*(v14 + 32))(v17, v12, v13);
  TTRAccountsListsViewModel.Item.recentlyDeletedList.getter();
  v26 = v31;
  if ((*(v31 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v23 = &unk_10078D440;
    v24 = &unk_10062FBB0;
    v25 = v6;
    goto LABEL_8;
  }

  (*(v26 + 32))(v9, v6, v7);
  v28 = TTRAccountsListsViewModel.RecentlyDeletedList.accountID.getter();
  v29 = TTRAccountsListsViewModel.RecentlyDeletedList.count.getter();
  sub_100431434(v28, v29);

  (*(v26 + 8))(v9, v7);
  (*(v14 + 8))(v17, v13);
  return 1;
}

uint64_t sub_1000C3508(uint64_t a1)
{
  v25 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v30 = *(v25 - 8);
  __chkstk_darwin(v25);
  v29 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRAccountsListsViewModel.List();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_100058000(&qword_10076BC60, &qword_1006494F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  v16 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
  swift_beginAccess();
  sub_10000794C(a1 + v16, v15, &qword_10076BC60, &qword_1006494F0);
  if ((*(v7 + 48))(v15, 1, v6))
  {
    sub_1000079B4(v15, &qword_10076BC60, &qword_1006494F0);
    return 0;
  }

  v19 = v27;
  v18 = v28;
  v21 = v29;
  v20 = v30;
  sub_100100B10(v15, v12, type metadata accessor for TTRIAccountsListsViewListCell.ListItem);
  sub_1000079B4(v15, &qword_10076BC60, &qword_1006494F0);
  sub_100100B10(v12, v9, type metadata accessor for TTRIAccountsListsViewListCell.ListItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100100B78(v12, type metadata accessor for TTRIAccountsListsViewListCell.ListItem);
    sub_100100B78(v9, type metadata accessor for TTRIAccountsListsViewListCell.ListItem);
  }

  else
  {
    (*(v19 + 32))(v5, v9, v18);
    TTRAccountsListsViewModel.List.pinState.getter();
    v22 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
    (*(v20 + 8))(v21, v25);
    (*(v19 + 8))(v5, v18);
    sub_100100B78(v12, type metadata accessor for TTRIAccountsListsViewListCell.ListItem);
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(v26 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentEditModeTransition);
  if (v23 == 2)
  {
    return 0;
  }

  if (v23)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_1000C38F4(uint64_t a1)
{
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v68 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v58 - v9);
  v70 = type metadata accessor for REMHashtagLabelSpecifier();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v58 - v13;
  __chkstk_darwin(v14);
  v71 = &v58 - v15;
  v16 = sub_100058000(&qword_10076BC58, &unk_10062FE80);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v19 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v58 - v24;
  sub_1000046FC(a1, v72);
  v26 = swift_dynamicCast();
  v27 = *(v20 + 56);
  if ((v26 & 1) == 0)
  {
    v27(v18, 1, 1, v19);
    v28 = &qword_10076BC58;
    v29 = &unk_10062FE80;
    v30 = v18;
    goto LABEL_5;
  }

  v27(v18, 0, 1, v19);
  (*(v20 + 32))(v25, v18, v19);
  v62 = v1;
  sub_1000B3FE8(v10);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    (*(v20 + 8))(v25, v19);
    v28 = &unk_10076B7C0;
    v29 = &unk_10062FBA0;
    v30 = v10;
LABEL_5:
    sub_1000079B4(v30, v28, v29);
    return;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v20 + 8))(v25, v19);
    sub_100100B78(v10, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  v32 = v70;
  v31 = v71;
  v33 = v10;
  v34 = v67;
  (*(v67 + 32))(v71, v33, v70);
  v35 = v69;
  v61 = *(v34 + 16);
  v61(v69, v31, v32);
  v36 = (*(v34 + 88))(v35, v32);
  v37 = v36;
  if (v36 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v34 + 96))(v35, v32);
    v58 = *v35;
    (*(v20 + 16))(v22, v25, v19);
    v38 = (*(v20 + 88))(v22, v19);
    v60 = v3;
    if (v38 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.any(_:))
    {
      v39 = v37;
      v40 = &enum case for REMHashtagLabelSpecifier.Operation.or(_:);
LABEL_16:
      v41 = v65;
      v42 = v66;
      v43 = v68;
      (*(v65 + 104))(v68, *v40, v66);
      v44 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
      v59 = v44;
      v45 = v63;
      *v63 = v58;
      (*(v41 + 16))(&v45[v44], v43, v42);
      v46 = *(v34 + 104);
      v47 = v34;
      v48 = v70;
      v46(v45, v39, v70);
      v49 = v64;
      v61(v64, v45, v48);
      swift_storeEnumTagMultiPayload();
      sub_1000B551C(v49, 16, 0);
      sub_100100B78(v49, type metadata accessor for TTRIAccountsListsSelection);
      v50 = *(v47 + 8);
      v50(v45, v48);
      v51 = *(v41 + 8);
      v51(v68, v42);
      v50(v71, v48);
      (*(v20 + 8))(v25, v19);
      v51(&v69[v59], v42);
      return;
    }

    if (v38 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.all(_:))
    {
      v39 = v37;
      v40 = &enum case for REMHashtagLabelSpecifier.Operation.and(_:);
      goto LABEL_16;
    }

    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100003E30(v57, qword_10076B2A0);
    v53 = sub_100008E04(_swiftEmptyArrayStorage);
    v54 = sub_100008E04(_swiftEmptyArrayStorage);
    v55 = "Unknown operation";
    v56 = 17;
  }

  else
  {
    if (v36 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v36 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      (*(v34 + 8))(v71, v32);
      (*(v20 + 8))(v25, v19);
      return;
    }

    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100003E30(v52, qword_10076B2A0);
    v53 = sub_100008E04(_swiftEmptyArrayStorage);
    v54 = sub_100008E04(_swiftEmptyArrayStorage);
    v55 = "Unknown selection type";
    v56 = 22;
  }

  sub_1003F9818(v55, v56, 2uLL, v53, v54);
  __break(1u);
}

uint64_t sub_1000C4170(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

void *sub_1000C420C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000C4260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void *sub_1000C42B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000C4308(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = v11 | (v10 << 6);
        v13 = *(*(v5 + 56) + 8 * v12);
        if (v13 >= a1)
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_6;
        }
      }

      v30 = a2;
      v31 = v13 + a2;
      if (__OFADD__(v13, a2))
      {
        goto LABEL_27;
      }

      v15 = *(*(v5 + 48) + 8 * v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v2;
      v17 = *(v2 + 16);
      v32 = v17;
      v18 = sub_1003B3EDC();
      v20 = v17[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_28;
      }

      v24 = v19;
      if (v17[3] < v23)
      {
        break;
      }

      v2 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v18;
        sub_1003AE0D8();
        v18 = v28;
LABEL_14:
        v2 = v29;
      }

      if (v24)
      {
        *(v32[7] + 8 * v18) = v31;
      }

      else
      {
        v32[(v18 >> 6) + 8] |= 1 << v18;
        *(v32[6] + 8 * v18) = v15;
        *(v32[7] + 8 * v18) = v31;
        v26 = v32[2];
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_29;
        }

        v32[2] = v27;
      }

      *(v2 + 16) = v32;
      a2 = v30;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    sub_100548DB0(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_1003B3EDC();
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_30;
    }

    goto LABEL_14;
  }

LABEL_6:
  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return;
    }

    v8 = *(v5 + 64 + 8 * v14);
    ++v10;
    if (v8)
    {
      v10 = v14;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_100058000(&qword_10076BB78, &qword_10062FDD0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000C4548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v14 = v13 | (v12 << 6);
        v15 = *(*(v7 + 56) + 8 * v14);
        if (v15 >= a1 && v15 <= a2)
        {
          break;
        }

        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v33 = a3;
      v34 = v15 + a3;
      if (__OFADD__(v15, a3))
      {
        goto LABEL_30;
      }

      v18 = *(*(v7 + 48) + 8 * v14);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v3;
      v20 = *(v3 + 16);
      v35 = v18;
      v36 = v20;
      v21 = sub_1003B3EDC();
      v23 = v20[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_31;
      }

      v27 = v22;
      if (v20[3] < v26)
      {
        break;
      }

      v3 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v21;
        sub_1003AE0D8();
        v21 = v31;
LABEL_17:
        v3 = v32;
      }

      if (v27)
      {
        *(v36[7] + 8 * v21) = v34;
      }

      else
      {
        v36[(v21 >> 6) + 8] |= 1 << v21;
        *(v36[6] + 8 * v21) = v35;
        *(v36[7] + 8 * v21) = v34;
        v29 = v36[2];
        v25 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v25)
        {
          goto LABEL_32;
        }

        v36[2] = v30;
      }

      *(v3 + 16) = v36;
      a3 = v33;
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    sub_100548DB0(v26, isUniquelyReferenced_nonNull_native);
    v21 = sub_1003B3EDC();
    if ((v27 & 1) != (v28 & 1))
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

LABEL_9:
  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v11)
    {

      return;
    }

    v10 = *(v7 + 64 + 8 * v17);
    ++v12;
    if (v10)
    {
      v12 = v17;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_100058000(&qword_10076BB78, &qword_10062FDD0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000C478C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = v11 | (v10 << 6);
        v13 = *(*(v5 + 56) + 8 * v12);
        if (v13 >= a1)
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_6;
        }
      }

      v30 = a2;
      v31 = v13 + a2;
      if (__OFADD__(v13, a2))
      {
        goto LABEL_27;
      }

      v15 = *(*(v5 + 48) + 8 * v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v2;
      v17 = *(v2 + 16);
      v32 = v17;
      v18 = sub_1003B3EDC();
      v20 = v17[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_28;
      }

      v24 = v19;
      if (v17[3] < v23)
      {
        break;
      }

      v2 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v18;
        sub_1003AF2F0();
        v18 = v28;
LABEL_14:
        v2 = v29;
      }

      if (v24)
      {
        *(v32[7] + 8 * v18) = v31;
      }

      else
      {
        v32[(v18 >> 6) + 8] |= 1 << v18;
        *(v32[6] + 8 * v18) = v15;
        *(v32[7] + 8 * v18) = v31;
        v26 = v32[2];
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_29;
        }

        v32[2] = v27;
      }

      *(v2 + 16) = v32;
      a2 = v30;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    sub_10054B2C4(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_1003B3EDC();
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_30;
    }

    goto LABEL_14;
  }

LABEL_6:
  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      return;
    }

    v8 = *(v5 + 64 + 8 * v14);
    ++v10;
    if (v8)
    {
      v10 = v14;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_100058000(&qword_10076B788, &unk_10062FB80);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000C49CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v14 = v13 | (v12 << 6);
        v15 = *(*(v7 + 56) + 8 * v14);
        if (v15 >= a1 && v15 <= a2)
        {
          break;
        }

        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v33 = a3;
      v34 = v15 + a3;
      if (__OFADD__(v15, a3))
      {
        goto LABEL_30;
      }

      v18 = *(*(v7 + 48) + 8 * v14);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v3;
      v20 = *(v3 + 16);
      v35 = v18;
      v36 = v20;
      v21 = sub_1003B3EDC();
      v23 = v20[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_31;
      }

      v27 = v22;
      if (v20[3] < v26)
      {
        break;
      }

      v3 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v21;
        sub_1003AF2F0();
        v21 = v31;
LABEL_17:
        v3 = v32;
      }

      if (v27)
      {
        *(v36[7] + 8 * v21) = v34;
      }

      else
      {
        v36[(v21 >> 6) + 8] |= 1 << v21;
        *(v36[6] + 8 * v21) = v35;
        *(v36[7] + 8 * v21) = v34;
        v29 = v36[2];
        v25 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v25)
        {
          goto LABEL_32;
        }

        v36[2] = v30;
      }

      *(v3 + 16) = v36;
      a3 = v33;
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    sub_10054B2C4(v26, isUniquelyReferenced_nonNull_native);
    v21 = sub_1003B3EDC();
    if ((v27 & 1) != (v28 & 1))
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

LABEL_9:
  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v11)
    {

      return;
    }

    v10 = *(v7 + 64 + 8 * v17);
    ++v12;
    if (v10)
    {
      v12 = v17;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_100058000(&qword_10076B788, &unk_10062FB80);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000C4C10(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v38 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_27:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v32 = (v5 + 2);
      v33 = a1 & 0xC000000000000001;
      v31 = (v5 + 1);
      v29 = a1 & 0xFFFFFFFFFFFFFF8;
      v30 = (v7 + 8);
      do
      {
        if (v33)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v10 >= *(v29 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(a1 + 8 * v10 + 32);

          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v12 = *(*v7 + 144);
        swift_beginAccess();
        v13 = v7 + v12;
        v14 = v37;
        v15 = v38;
        (*v32)(v37, v13, v38);
        v16 = v35;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        (*v31)(v14, v15);
        sub_1000C6E2C(v16, v7);
        (*v30)(v16, v36);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *(v3 + 16);
        v5 = v39;
        v19 = sub_1003B3EDC();
        v20 = v5[2];
        v21 = (v18 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_24;
        }

        v23 = v18;
        if (v5[3] >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v39;
            if (v18)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1003AE0D8();
            v5 = v39;
            if (v23)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_100548DB0(v22, isUniquelyReferenced_nonNull_native);
          v24 = sub_1003B3EDC();
          if ((v23 & 1) != (v25 & 1))
          {
            sub_100058000(&qword_10076BB78, &qword_10062FDD0);
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v19 = v24;
          v5 = v39;
          if (v23)
          {
LABEL_4:
            *(v5[7] + 8 * v19) = v34;

            goto LABEL_5;
          }
        }

        v5[(v19 >> 6) + 8] |= 1 << v19;
        *(v5[6] + 8 * v19) = v7;
        *(v5[7] + 8 * v19) = v34;
        v26 = v5[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_25;
        }

        v5[2] = v28;
LABEL_5:
        *(v3 + 16) = v5;
        ++v10;
      }

      while (v11 != v9);
    }
  }
}

void sub_1000C4FC8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v38 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_27:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v32 = (v5 + 2);
      v33 = a1 & 0xC000000000000001;
      v31 = (v5 + 1);
      v29 = a1 & 0xFFFFFFFFFFFFFF8;
      v30 = (v7 + 8);
      do
      {
        if (v33)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v10 >= *(v29 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(a1 + 8 * v10 + 32);

          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v12 = *(*v7 + 144);
        swift_beginAccess();
        v13 = v7 + v12;
        v14 = v37;
        v15 = v38;
        (*v32)(v37, v13, v38);
        v16 = v35;
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        (*v31)(v14, v15);
        sub_1000C70F8(v16, v7);
        (*v30)(v16, v36);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *(v3 + 16);
        v5 = v39;
        v19 = sub_1003B3EDC();
        v20 = v5[2];
        v21 = (v18 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_24;
        }

        v23 = v18;
        if (v5[3] >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v39;
            if (v18)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1003AF2F0();
            v5 = v39;
            if (v23)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_10054B2C4(v22, isUniquelyReferenced_nonNull_native);
          v24 = sub_1003B3EDC();
          if ((v23 & 1) != (v25 & 1))
          {
            sub_100058000(&qword_10076B788, &unk_10062FB80);
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v19 = v24;
          v5 = v39;
          if (v23)
          {
LABEL_4:
            *(v5[7] + 8 * v19) = v34;

            goto LABEL_5;
          }
        }

        v5[(v19 >> 6) + 8] |= 1 << v19;
        *(v5[6] + 8 * v19) = v7;
        *(v5[7] + 8 * v19) = v34;
        v26 = v5[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_25;
        }

        v5[2] = v28;
LABEL_5:
        *(v3 + 16) = v5;
        ++v10;
      }

      while (v11 != v9);
    }
  }
}

uint64_t sub_1000C5380(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v44 - 8);
  __chkstk_darwin(v44);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v11 = sub_1000C5D90(a1, sub_1003B2E94);
  v43 = v12;
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D420;
  v14 = inited & 0xC000000000000001;
  *(inited + 32) = v11;

  v42 = v11;
  if (v14)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
  }

  v15 = *(*v11 + 144);
  swift_beginAccess();
  v38 = *(v5 + 16);
  v39 = v5 + 16;
  v38(v7, v11 + v15, v4);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v16 = *(v5 + 8);
  v41 = v5 + 8;
  v37 = v16;
  v16(v7, v4);
  sub_1000C687C(v10, v11);
  v17 = *(v8 + 8);
  v40 = v8 + 8;
  v36 = v17;
  v17(v10, v44);
  sub_1003B3EDC();
  if ((v18 & 1) == 0)
  {

    goto LABEL_8;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v2 + 16);
  v46[0] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {

    sub_1003B3EE8();

    *(v2 + 16) = v20;
LABEL_8:
    swift_setDeallocating();
    swift_arrayDestroy();
    v22 = v42;
    v21 = v43;
    if (v43 >> 62)
    {
      v31 = v43;
      v32 = _CocoaArrayWrapper.endIndex.getter();
      v21 = v31;
      v23 = v32;
      if (!v32)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v23 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_22;
      }
    }

    if (v23 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_24:
    sub_1003AE0D8();
    v20 = v46[0];
  }

  v24 = 0;
  v25 = v21 & 0xC000000000000001;
  do
  {
    if (v25)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v21 + 8 * v24 + 32);
    }

    v27 = *(*v26 + 144);
    swift_beginAccess();
    v38(v7, v26 + v27, v4);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v37(v7, v4);
    sub_1000C687C(v10, v26);
    v36(v10, v44);
    sub_1003B3EDC();
    if (v28)
    {
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v2 + 16);
      v45 = v30;
      if ((v29 & 1) == 0)
      {
        sub_1003AE0D8();
        v30 = v45;
      }

      sub_1003B3EE8();

      *(v2 + 16) = v30;
    }

    else
    {
    }

    ++v24;
    v22 = v42;
    v21 = v43;
  }

  while (v23 != v24);
LABEL_22:
  sub_1000C4308(v35, -1);
  return v22;
}