uint64_t sub_100383650(int a1, int a2, uint64_t a3)
{
  LODWORD(v38) = a2;
  v36 = a1;
  v4 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35[-v5];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a3 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v11 = *(a3 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v12 = *(a3 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 96);
  v15 = v11;
  v16 = v14(ObjectType, v12);

  if ((v16 ^ v38))
  {
    goto LABEL_9;
  }

  sub_100383958(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100772140, &qword_10062D9F0);
LABEL_9:
    v33 = 0;
    return v33 & 1;
  }

  v17 = v7;
  v38 = a3;
  v18 = v37;
  (*(v8 + 32))(v37, v6, v17);
  v19 = *v10;
  v20 = *(v10 + 8);
  v21 = swift_getObjectType();
  v22 = *(v20 + 64);
  v23 = v19;
  v24 = v22(v21, v20);

  if (v24)
  {

    (*(v8 + 8))(v18, v17);
    goto LABEL_9;
  }

  v25 = v18;
  v26 = *(v38 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v27 = *(v38 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v38 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v26);
  if (((*(v27 + 536))(v25, v26, v27) & 1) == 0)
  {
    (*(v8 + 8))(v25, v17);
    goto LABEL_9;
  }

  v28 = *v10;
  v29 = *(v10 + 8);
  v30 = swift_getObjectType();
  v31 = *(v29 + 200);
  v32 = v28;
  LOBYTE(v29) = v31(v25, v30, v29);

  (*(v8 + 8))(v25, v17);
  v33 = v29 ^ v36;
  return v33 & 1;
}

uint64_t sub_100383958@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23[-1] - v4;
  v6 = v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v7 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v8 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 64);
  v11 = v7;
  v12 = v10(ObjectType, v8);

  if (!v12)
  {
    v13 = *v6;
    v14 = *(v6 + 8);
    v15 = swift_getObjectType();
    v16 = *(v14 + 72);
    v17 = v13;
    v12 = v16(v15, v14);

    if (!v12)
    {
      goto LABEL_7;
    }
  }

  swift_getObjectType();
  dispatch thunk of TTRIShowRemindersEditableReminderCell.viewModel.getter();

  if (!v24)
  {
    sub_1000079B4(v23, &qword_100780978, &unk_10063C720);
LABEL_7:
    v18 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
LABEL_8:
    sub_1000079B4(v5, &qword_100772140, &qword_10062D9F0);
    type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  sub_10000C36C(v23, v24);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v20(v5, 0, 1, v18);
  sub_100004758(v23);
  if ((*(v19 + 48))(v5, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  (*(v19 + 32))(a1, v5, v18);
  return (v20)(a1, 0, 1, v18);
}

double sub_100383CE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
  v3 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v5 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 160);
  v8 = v4;
  v9 = v7(1, ObjectType, v5);

  if (!*(v9 + 16))
  {

    v10 = *v3;
    v11 = *(v3 + 8);
    v12 = swift_getObjectType();
    v13 = *(v11 + 80);
    v14 = v10;
    v9 = v13(v12, v11);
  }

  (*(v2 + 648))(v9, v1, v2);

  return result;
}

double sub_100383E20()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
  v3 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v5 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 160);
  v8 = v4;
  v9 = v7(1, ObjectType, v5);

  if (!*(v9 + 16))
  {

    v10 = *v3;
    v11 = *(v3 + 8);
    v12 = swift_getObjectType();
    v13 = *(v11 + 80);
    v14 = v10;
    v9 = v13(v12, v11);
  }

  (*(v2 + 656))(v9, v1, v2);

  return result;
}

double sub_100383F60()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
  v3 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v5 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 160);
  v8 = v4;
  v9 = v7(1, ObjectType, v5);

  if (!*(v9 + 16))
  {

    v10 = *v3;
    v11 = *(v3 + 8);
    v12 = swift_getObjectType();
    v13 = *(v11 + 80);
    v14 = v10;
    v9 = v13(v12, v11);
  }

  (*(v2 + 664))(v9, v1, v2);

  return result;
}

void sub_1003840A0(void *a1)
{
  ObjectType = swift_getObjectType();
  v194 = type metadata accessor for TTRRemindersListPostponeType();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = &v183 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v186 = &v183 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v189 = &v183 - v6;
  __chkstk_darwin(v7);
  v191 = &v183 - v8;
  __chkstk_darwin(v9);
  v11 = &v183 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  v196 = v12;
  v197 = v13;
  __chkstk_darwin(v12);
  v15 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v188 = &v183 - v17;
  __chkstk_darwin(v18);
  v190 = &v183 - v19;
  __chkstk_darwin(v20);
  v195 = &v183 - v21;
  v22 = sub_100058000(&qword_100775AB0, &unk_1006360A0);
  __chkstk_darwin(v22 - 8);
  v24 = &v183 - v23;
  v25 = type metadata accessor for TTRRemindersListLayout();
  v26 = *(v25 - 8);
  v198 = v25;
  v199 = v26;
  __chkstk_darwin(v25);
  v187 = &v183 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v183 - v29;
  __chkstk_darwin(v31);
  v33 = &v183 - v32;
  v34 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v35 = *(v34 - 8);
  *&v36 = __chkstk_darwin(v34).n128_u64[0];
  v38 = &v183 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  [a1 action];
  if (static Selector.== infix(_:_:)())
  {
    v40._countAndFlagsBits = 0xD00000000000002DLL;
    v41._countAndFlagsBits = 0x696D65522077654ELL;
    v41._object = 0xEC0000007265646ELL;
    v40._object = 0x8000000100683B30;
    TTRLocalizedString(_:comment:)(v41, v40);
    v42._countAndFlagsBits = 0xD000000000000029;
    v43._countAndFlagsBits = 0x6D6574492077654ELL;
    v42._object = 0x8000000100683B60;
    v43._object = 0xE800000000000000;
    TTRLocalizedString(_:comment:)(v43, v42);
    v44 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    v45 = v200;
    swift_beginAccess();
    (*(v35 + 16))(v38, &v45[v44], v34);
    TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    (*(v35 + 8))(v38, v34);

    v46 = String._bridgeToObjectiveC()();

    [v39 setDiscoverabilityTitle:v46];
LABEL_8:

    return;
  }

  v183 = v15;
  v47 = v200;
  v184 = a1;
  if (static Selector.== infix(_:_:)())
  {
    v48 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentLayout;
    swift_beginAccess();
    v49 = v199;
    v50 = &v47[v48];
    v51 = v198;
    (*(v199 + 16))(v33, v50, v198);
    static TTRLocalizableStrings.Sections.newSectionActionText(listLayout:)();
LABEL_7:
    (*(v49 + 8))(v33, v51);
    v54 = String._bridgeToObjectiveC()();
    v55 = v184;
    [v184 setTitle:v54];

    v46 = String._bridgeToObjectiveC()();

    [v55 setDiscoverabilityTitle:v46];
    goto LABEL_8;
  }

  if (static Selector.== infix(_:_:)())
  {
    v52 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentLayout;
    swift_beginAccess();
    v49 = v199;
    v53 = &v47[v52];
    v51 = v198;
    (*(v199 + 16))(v33, v53, v198);
    static TTRLocalizableStrings.Sections.newSectionWithSelection(listLayout:)();
    goto LABEL_7;
  }

  if (static Selector.== infix(_:_:)())
  {
    v56._countAndFlagsBits = 0xD000000000000011;
    v56._object = 0x800000010067C1D0;
    v57._object = 0x8000000100683AF0;
    v57._countAndFlagsBits = 0xD000000000000032;
    TTRLocalizedString(_:comment:)(v56, v57);
    v58 = String._bridgeToObjectiveC()();
    v59 = v184;
    [v184 setTitle:v58];

    v60 = String._bridgeToObjectiveC()();

    [v59 setDiscoverabilityTitle:v60];

    v61 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    (*(v35 + 16))(v38, &v47[v61], v34);
    LOBYTE(v61) = TTRRemindersListViewModel.ListInfo.canCreateCustomSmartListForHashtagsState.getter();
    (*(v35 + 8))(v38, v34);
    *&v201 = [v59 attributes];
    UIMenuElementAttributes.setDisabled(_:)((v61 & 1) == 0);
    [v59 setAttributes:v201];
    return;
  }

  v62 = v47;
  if (static Selector.== infix(_:_:)())
  {
    v63 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v64 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v63);
    (*(v64 + 296))(&v204, v63, v64);
    sub_10000C36C(&v204, *(&v205 + 1));
    dispatch thunk of TTRRemindersListEditingState.editingTarget.getter();
    v65 = sub_100058000(&qword_100775AB8, &unk_10063C7B0);
    LODWORD(v63) = (*(*(v65 - 8) + 48))(v24, 1, v65);
    sub_1000079B4(v24, &qword_100775AB0, &unk_1006360A0);
    if (v63 == 1)
    {
      v66 = "o key command title";
      v67 = 0x6445207472617453;
      v68 = 0xED0000676E697469;
      v69 = 0xD000000000000037;
    }

    else
    {
      v66 = " for editing a reminder";
      v69 = 0xD00000000000002CLL;
      v67 = 0x7469644520646E45;
      v68 = 0xEB00000000676E69;
    }

    v72 = v66 | 0x8000000000000000;
    TTRLocalizedString(_:comment:)(*&v67, *&v69);
    v73 = v184;
    v74 = String._bridgeToObjectiveC()();

    [v73 setTitle:v74];

    goto LABEL_20;
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_100383958(v11);
    v71 = v196;
    v70 = v197;
    if ((*(v197 + 48))(v11, 1, v196) == 1)
    {
      sub_1000079B4(v11, &qword_100772140, &qword_10062D9F0);
    }

    else
    {
      v78 = v195;
      (*(v70 + 32))(v195, v11, v71);
      v79 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v80 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v79);
      sub_100058000(&qword_100772150, &unk_100635D00);
      v81 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_10062D400;
      (*(v70 + 16))(v82 + v81, v78, v71);
      LOBYTE(v79) = (*(v80 + 672))(v82, v79, v80);

      v83 = v184;
      *&v204 = [v184 attributes];
      UIMenuElementAttributes.setDisabled(_:)((v79 & 1) == 0);
      [v83 setAttributes:v204];
      v84._countAndFlagsBits = 0xD000000000000012;
      v84._object = 0x8000000100683A20;
      v85._countAndFlagsBits = 0xD000000000000033;
      v85._object = 0x8000000100683A40;
      TTRLocalizedString(_:comment:)(v84, v85);
      v86 = String._bridgeToObjectiveC()();

      [v83 setTitle:v86];

      (*(v70 + 8))(v78, v71);
    }

    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    v75 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v76 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v75);
    v77 = (*(v76 + 872))(v75, v76);
LABEL_26:
    v89 = v77;
    v90 = v184;
    *&v204 = [v184 attributes];
    UIMenuElementAttributes.setDisabled(_:)((v89 & 1) == 0);
    [v90 setAttributes:v204];
    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    v87 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v88 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v87);
    v77 = (*(v88 + 880))(v87, v88);
    goto LABEL_26;
  }

  if (static Selector.== infix(_:_:)())
  {
    v91._countAndFlagsBits = 0x6D6F4320776F6853;
    v92._countAndFlagsBits = 0xD000000000000037;
    v92._object = 0x80000001006839A0;
    v91._object = 0xEE00646574656C70;
    TTRLocalizedString(_:comment:)(v91, v92);
    v93._countAndFlagsBits = 0x6D6F432065646948;
    v94._countAndFlagsBits = 0xD000000000000037;
    v94._object = 0x80000001006839E0;
    v93._object = 0xEE00646574656C70;
    TTRLocalizedString(_:comment:)(v93, v94);
    v95 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    v96 = v35;
    v198 = *(v35 + 16);
    v199 = v95;
    v198(v38, &v47[v95], v34);
    TTRRemindersListViewModel.ListInfo.completedRemindersShown.getter();
    v97 = v34;
    v98 = *(v96 + 8);
    v98(v38, v97);

    v99 = String._bridgeToObjectiveC()();

    v100 = v184;
    [v184 setTitle:v99];

    v101 = [v100 title];
    if (!v101)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = String._bridgeToObjectiveC()();
    }

    [v100 setDiscoverabilityTitle:v101];

    v198(v38, &v200[v199], v97);
    TTRRemindersListViewModel.ListInfo.completedRemindersShown.getter();
    v98(v38, v97);
    v105 = String._bridgeToObjectiveC()();
    v106 = [objc_opt_self() _systemImageNamed:v105];

    [v100 setImage:v106];
    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    static TTRLocalizableStrings.RemindersList.autoCategorizationTitle.getter();
    v102 = String._bridgeToObjectiveC()();
    v103 = v184;
    [v184 setTitle:v102];

    v200 = String._bridgeToObjectiveC()();

    [v103 setDiscoverabilityTitle:v200];
    v104 = v200;

    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    v107 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v108 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v107);
    v109 = v193;
    v110 = v192;
    v111 = v194;
    (*(v193 + 104))(v192, enum case for TTRRemindersListPostponeType.weekend(_:), v194);
    (*(v108 + 688))(v110, v107, v108);
    (*(v109 + 8))(v110, v111);
LABEL_47:
    v46 = String._bridgeToObjectiveC()();

    [v184 setDiscoverabilityTitle:v46];
    goto LABEL_8;
  }

  if (static Selector.== infix(_:_:)())
  {
    v112 = &v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v113 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v114 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
    v115 = swift_getObjectType();
    v116 = *(v114 + 64);
    v117 = v113;
    v118 = v116(v115, v114);

    if (v118 || (v119 = *v112, v120 = *(v112 + 1), v121 = swift_getObjectType(), v122 = *(v120 + 72), v123 = v119, v118 = v122(v121, v120), v123, v118))
    {
      swift_getObjectType();
      dispatch thunk of TTRIShowRemindersEditableReminderCell.viewModel.getter();

      if (*(&v202 + 1))
      {
        sub_100005FD0(&v201, &v204);
        v124._countAndFlagsBits = 0xD000000000000011;
        v124._object = 0x8000000100678450;
        v125._object = 0x8000000100683920;
        v125._countAndFlagsBits = 0xD000000000000032;
        TTRLocalizedString(_:comment:)(v124, v125);
        v126._countAndFlagsBits = 0xD000000000000012;
        v126._object = 0x8000000100678400;
        v127._countAndFlagsBits = 0xD000000000000034;
        v127._object = 0x8000000100683960;
        TTRLocalizedString(_:comment:)(v126, v127);
        sub_10000C36C(&v204, *(&v205 + 1));
        dispatch thunk of TTRIRemindersListReminderCellViewModel.isCompleted.getter();

        v128 = String._bridgeToObjectiveC()();
        v129 = v184;
        [v184 setTitle:v128];

        v130 = String._bridgeToObjectiveC()();

        [v129 setDiscoverabilityTitle:v130];

LABEL_20:
        sub_100004758(&v204);
        return;
      }
    }

    else
    {
      v203 = 0;
      v201 = 0u;
      v202 = 0u;
    }

    sub_1000079B4(&v201, &qword_100780978, &unk_10063C720);
    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    v131._countAndFlagsBits = 0x5220746E65646E49;
    v131._object = 0xEF7265646E696D65;
    v132._countAndFlagsBits = 0xD000000000000036;
    v132._object = 0x80000001006838A0;
    TTRLocalizedString(_:comment:)(v131, v132);
    v133 = 0x4920746E65646E49;
    v134 = 0xEB000000006D6574;
    v135 = 0x80000001006838E0;
    v136 = 0xD000000000000032;
LABEL_46:
    TTRLocalizedString(_:comment:)(*&v133, *&v136);
    v139 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    (*(v35 + 16))(v38, &v47[v139], v34);
    TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    (*(v35 + 8))(v38, v34);

    goto LABEL_47;
  }

  if (static Selector.== infix(_:_:)())
  {
    v137._countAndFlagsBits = 0xD000000000000010;
    v137._object = 0x8000000100683800;
    v138._countAndFlagsBits = 0xD000000000000038;
    v138._object = 0x8000000100683820;
    TTRLocalizedString(_:comment:)(v137, v138);
    v133 = 0x20746E656474754FLL;
    v134 = 0xEC0000006D657449;
    v136 = 0xD000000000000034;
    v135 = 0x8000000100683860;
    goto LABEL_46;
  }

  if (static Selector.== infix(_:_:)())
  {
    v140 = v191;
    sub_100383958(v191);
    if ((*(v197 + 48))(v140, 1, v196) == 1)
    {
      v141 = &v211;
LABEL_56:
      sub_1000079B4(*(v141 - 32), &qword_100772140, &qword_10062D9F0);
      return;
    }

    v143 = v190;
    (*(v197 + 32))(v190, v191, v196);
    v144 = *&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v145 = *&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v144);
    if ((*(v145 + 80))(v143, v144, v145) == 2)
    {
      v146 = v184;
      *&v204 = [v184 attributes];
      UIMenuElementAttributes.setDisabled(_:)(1);
      [v146 setAttributes:v204];
    }

    else
    {
      v156._countAndFlagsBits = 0xD000000000000025;
      v156._object = 0x80000001006837A0;
      v157._countAndFlagsBits = 1734437958;
      v157._object = 0xE400000000000000;
      TTRLocalizedString(_:comment:)(v157, v156);
      v158._countAndFlagsBits = 0xD000000000000027;
      v159._countAndFlagsBits = 0x67616C666E55;
      v158._object = 0x80000001006837D0;
      v159._object = 0xE600000000000000;
      TTRLocalizedString(_:comment:)(v159, v158);

      v160 = String._bridgeToObjectiveC()();
      v161 = v184;
      [v184 setTitle:v160];

      v162 = String._bridgeToObjectiveC()();

      [v161 setDiscoverabilityTitle:v162];

      *&v204 = [v161 attributes];
      UIMenuElementAttributes.setDisabled(_:)(0);
      [v161 setAttributes:v204];
    }

    v154 = *(v197 + 8);
    v155 = &v210;
    goto LABEL_68;
  }

  if (static Selector.== infix(_:_:)())
  {
    v142 = v189;
    sub_100383958(v189);
    if ((*(v197 + 48))(v142, 1, v196) == 1)
    {
      v141 = &v209;
      goto LABEL_56;
    }

    v150 = v188;
    (*(v197 + 32))(v188, v189, v196);
    v151 = *&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v152 = *&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v151);
    if ((*(v152 + 224))(v150, v151, v152) != 2)
    {
      static TTRLocalizableStrings.RemindersList.keyCommandTitleForAddingStructuredHashtag(hasExistingStructuredHashtags:)();
      v153 = String._bridgeToObjectiveC()();

      [v184 setDiscoverabilityTitle:v153];
    }

    v154 = *(v197 + 8);
    v155 = &v208;
LABEL_68:
    v154(*(v155 - 32), v196);
    return;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      swift_beginAccess();
      v163 = v187;
      TTRRemindersListViewModel.ListInfo.listLayout.getter();
      swift_endAccess();
      v164 = (*(v199 + 88))(v163, v198);
      if (v164 == enum case for TTRRemindersListLayout.list(_:))
      {
        v165 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
        v166 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
        sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v165);
        v77 = (*(v166 + 1096))(v165, v166);
        goto LABEL_26;
      }

      if (v164 != enum case for TTRRemindersListLayout.columns(_:))
      {
        goto LABEL_94;
      }

LABEL_77:
      v148 = v184;
      *&v204 = [v184 attributes];
      v149 = 1;
      goto LABEL_78;
    }

    if (static Selector.== infix(_:_:)())
    {
      v167 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v168 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v167);
      if ((*(*(v168 + 8) + 8))(v167))
      {
        goto LABEL_62;
      }

      goto LABEL_77;
    }

    if ((static Selector.== infix(_:_:)() & 1) == 0)
    {
      v207.receiver = v47;
      v207.super_class = ObjectType;
      objc_msgSendSuper2(&v207, "validateCommand:", v184);
      return;
    }

    v169 = v186;
    sub_100383958(v186);
    if ((*(v197 + 48))(v169, 1, v196) == 1)
    {
      sub_1000079B4(v186, &qword_100772140, &qword_10062D9F0);
      goto LABEL_77;
    }

    v170 = v183;
    (*(v197 + 32))(v183, v186, v196);
    v171 = &v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
    v172 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v173 = *&v47[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], *&v62[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24]);
    if (((*(v173 + 768))(v170, v172, v173) & 1) == 0)
    {
      (*(v197 + 8))(v183, v196);
      goto LABEL_77;
    }

    if ([v184 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v201 = 0u;
      v202 = 0u;
    }

    v204 = v201;
    v205 = v202;
    if (*(&v202 + 1))
    {
      if (swift_dynamicCast())
      {
        v174 = v206;
LABEL_93:
        v175 = *(v171 + 3);
        v176 = *(v171 + 4);
        sub_10000C36C(v171, v175);
        v177 = v183;
        v178 = (*(v176 + 760))(v183, v175, v176) == v174;
        v179 = v184;
        *&v204 = [v184 attributes];
        UIMenuElementAttributes.setDisabled(_:)(v178);
        [v179 setAttributes:v204];
        (*(v197 + 8))(v177, v196);
        return;
      }
    }

    else
    {
      sub_1000079B4(&v204, &qword_10076AE40, &qword_10062EE50);
    }

    v174 = 0;
    goto LABEL_93;
  }

  swift_beginAccess();
  TTRRemindersListViewModel.ListInfo.listLayout.getter();
  swift_endAccess();
  v147 = (*(v199 + 88))(v30, v198);
  if (v147 == enum case for TTRRemindersListLayout.list(_:))
  {
    goto LABEL_77;
  }

  if (v147 == enum case for TTRRemindersListLayout.columns(_:))
  {
LABEL_62:
    v148 = v184;
    *&v204 = [v184 attributes];
    v149 = 0;
LABEL_78:
    UIMenuElementAttributes.setDisabled(_:)(v149);
    [v148 setAttributes:v204];
    return;
  }

LABEL_94:
  if (qword_100767228 != -1)
  {
    swift_once();
  }

  v180 = type metadata accessor for Logger();
  sub_100003E30(v180, qword_100780830);
  v181 = sub_100008E04(_swiftEmptyArrayStorage);
  v182 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown list layout type", 24, 2uLL, v181, v182);
  __break(1u);
}

id sub_100385D2C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_100003540(0, &unk_10076BD00, UICommand_ptr);
  v5._object = 0x8000000100683770;
  v6._countAndFlagsBits = 1701736270;
  v6._object = 0xE400000000000000;
  v5._countAndFlagsBits = 0xD000000000000029;
  TTRLocalizedString(_:comment:)(v6, v5);
  aBlock = 0u;
  v52 = 0u;
  v7 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  *&aBlock = [v7 attributes];
  UIMenuElementAttributes.setDisabled(_:)(0);
  [v7 setAttributes:aBlock];
  v8 = [a1 identifier];
  v9 = static UIDeferredMenuElementIdentifier.moveToSectionIdentifier.getter();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

LABEL_5:

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v7;
    v53 = sub_1003912A0;
    v54 = v16;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_10010C96C;
    *(&v52 + 1) = &unk_1007241C8;
    v17 = _Block_copy(&aBlock);
    v18 = objc_opt_self();

    v19 = [v18 providerWithElementProvider:v17];
    goto LABEL_6;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_5;
  }

  v22 = v8;
  v23 = static UIDeferredMenuElementIdentifier.moveToListIdentifier.getter();
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {

LABEL_12:

    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v7;
    v53 = sub_100391250;
    v54 = v30;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_10010C96C;
    *(&v52 + 1) = &unk_100724178;
    v17 = _Block_copy(&aBlock);
    v31 = objc_opt_self();

    v19 = [v31 providerWithElementProvider:v17];
    goto LABEL_6;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_12;
  }

  v32 = v22;
  v33 = static UIDeferredMenuElementIdentifier.tagsIdentifier.getter();
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {

LABEL_17:

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v7;
    v53 = sub_100391248;
    v54 = v40;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_10010C96C;
    *(&v52 + 1) = &unk_100724128;
    v17 = _Block_copy(&aBlock);
    v41 = objc_opt_self();

    v19 = [v41 providerWithElementProvider:v17];
    goto LABEL_6;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_17;
  }

  v42 = static UIDeferredMenuElementIdentifier.sortByIdentifier.getter();
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;
  if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
  {
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {
      v55.receiver = v2;
      v55.super_class = ObjectType;
      v20 = objc_msgSendSuper2(&v55, "providerForDeferredMenuElement:", a1);

      return v20;
    }
  }

  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v7;
  v53 = sub_100391240;
  v54 = v49;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v52 = sub_10010C96C;
  *(&v52 + 1) = &unk_1007240D8;
  v17 = _Block_copy(&aBlock);
  v50 = objc_opt_self();

  v19 = [v50 providerWithElementProvider:v17];
LABEL_6:
  v20 = v19;
  _Block_release(v17);

  return v20;
}

double sub_100386424(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_100383958(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      v15 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v16 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v15);
      v17 = (*(v16 + 1088))(v12, v15, v16);
      if (v17)
      {
        v18 = v17;
        v19 = [v17 children];
        sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
        v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        a1(v20);

        (*(v10 + 8))(v12, v9);
        return result;
      }

      (*(v10 + 8))(v12, v9);
    }
  }

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10062D420;
  *(v22 + 32) = a4;
  v23 = a4;
  a1(v22);

  return result;
}

double sub_100386704(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_100383958(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      v15 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v16 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v15);
      v17 = (*(v16 + 280))(v12, v15, v16);
      if (v17)
      {
        v18 = v17;
        v19 = [v17 children];
        sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
        v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        a1(v20);

        (*(v10 + 8))(v12, v9);
        return result;
      }

      (*(v10 + 8))(v12, v9);
    }
  }

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10062D420;
  *(v22 + 32) = a4;
  v23 = a4;
  a1(v22);

  return result;
}

double sub_1003869E4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_100383958(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_1000079B4(v8, &qword_100772140, &qword_10062D9F0);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      v15 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v16 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v15);
      v17 = (*(v16 + 248))(v12, v15, v16);
      if (v17)
      {
        v18 = v17;
        v19 = [v17 children];
        sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
        v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        a1(v20);

        (*(v10 + 8))(v12, v9);
        return result;
      }

      (*(v10 + 8))(v12, v9);
    }
  }

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10062D420;
  *(v22 + 32) = a4;
  v23 = a4;
  a1(v22);

  return result;
}

double sub_100386CC4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v7 = Strong;
  v8 = (Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
  v9 = v8[3];
  v10 = v8[4];
  sub_10000C36C(v8, v9);
  v11 = (*(v10 + 288))(v9, v10);
  if (!v11)
  {

LABEL_5:
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10062D420;
    *(v15 + 32) = a4;
    v16 = a4;
    a1(v15);
    goto LABEL_6;
  }

  v12 = v11;
  v13 = [v11 children];
  sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  a1(v14);
LABEL_6:

  return result;
}

uint64_t sub_100386F48()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v11 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  sub_100058000(&qword_100772150, &unk_100635D00);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  (*(v5 + 16))(v14 + v13, v7, v4);
  v15 = *(v11 + 216);
  v16 = v10;
  v15(v14, ObjectType, v11);

  swift_setDeallocating();
  v17 = *(v5 + 8);
  v17(v14 + v13, v4);
  swift_deallocClassInstance();
  return (v17)(v7, v4);
}

uint64_t sub_1003871A4()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v11 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  sub_100058000(&qword_100772150, &unk_100635D00);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  (*(v5 + 16))(v14 + v13, v7, v4);
  v15 = *(v11 + 208);
  v16 = v10;
  v15(v14, ObjectType, v11);

  swift_setDeallocating();
  v17 = *(v5 + 8);
  v17(v14 + v13, v4);
  swift_deallocClassInstance();
  return (v17)(v7, v4);
}

uint64_t sub_100387400(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
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

  a4(v7);

  return sub_1000079B4(v9, &qword_10076AE40, &qword_10062EE50);
}

void sub_1003876D4()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v4 = v2[4];
  sub_10000C36C(v2, v3);
  sub_100207888(0, v3, v4);
  LODWORD(v4) = UIAccessibilityLayoutChangedNotification;
  v5 = v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v6 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v7 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 64);
  v10 = v6;
  argument = v9(ObjectType, v7);

  UIAccessibilityPostNotification(v4, argument);
}

void sub_1003877D0()
{
  v1 = type metadata accessor for TTREditingStateOption.InputType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v7 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 64);
  v10 = v6;
  v11 = v9(ObjectType, v7);

  if (v11 || (v12 = *v5, v13 = *(v5 + 8), v14 = swift_getObjectType(), v15 = *(v13 + 72), v16 = v12, v11 = v15(v14, v13), v16, v11))
  {
    swift_getObjectType();
    (*(v2 + 104))(v4, enum case for TTREditingStateOption.InputType.unspecified(_:), v1);
    dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_100387B0C()
{
  v1 = v0;
  v2 = type metadata accessor for TTREditingStateOption.InputType();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v30[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100775AB0, &unk_1006360A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30[-1] - v6;
  v8 = (v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v9);
  (*(v10 + 296))(v30, v9, v10);
  sub_10000C36C(v30, v30[3]);
  dispatch thunk of TTRRemindersListEditingState.editingTarget.getter();
  v11 = sub_100058000(&qword_100775AB8, &unk_10063C7B0);
  v12 = (*(*(v11 - 8) + 48))(v7, 1, v11);
  sub_1000079B4(v7, &qword_100775AB0, &unk_1006360A0);
  if (v12 == 1)
  {
    v13 = v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
    v14 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
    v15 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 64);
    v18 = v14;
    v19 = v17(ObjectType, v15);

    if (v19 || (v20 = *v13, v21 = *(v13 + 8), v22 = swift_getObjectType(), v23 = *(v21 + 72), v24 = v20, v19 = v23(v22, v21), v24, v19))
    {
      swift_getObjectType();
      v25 = v29;
      (*(v29 + 104))(v4, enum case for TTREditingStateOption.InputType.unspecified(_:), v2);
      dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();

      (*(v25 + 8))(v4, v2);
    }
  }

  else
  {
    v26 = v8[3];
    v27 = v8[4];
    sub_10000C36C(v8, v26);
    (*(v27 + 456))(v26, v27);
  }

  return sub_100004758(v30);
}

void sub_100388074()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0;
  v8 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v10 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 64);
  v13 = v9;
  v14 = v12(ObjectType, v10);

  if (v14 || (v15 = *v8, v16 = *(v8 + 8), v17 = swift_getObjectType(), v18 = *(v16 + 72), v19 = v15, v14 = v18(v17, v16), v19, v14))
  {
    v20 = v7;
    sub_100383958(v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
    }

    else
    {
      v21 = v28;
      (*(v5 + 32))(v28, v3, v4);
      swift_getObjectType();
      v22 = dispatch thunk of TTRIShowRemindersEditableReminderCell.viewForAnchoringPopover.getter();
      if (v22)
      {
        v23 = v22;
        v24 = (v20 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
        v25 = *(v20 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
        v26 = v24[4];
        sub_10000C36C(v24, v25);
        (*(v26 + 120))(v21, v23, v25, v26);

        (*(v5 + 8))(v21, v4);
      }

      else
      {
        (*(v5 + 8))(v21, v4);
      }
    }
  }
}

uint64_t sub_100388348()
{
  v1 = v0;
  v23 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v7 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 64);
  v10 = v6;
  v11 = v9(ObjectType, v7);

  if (v11 || (v12 = *v5, v13 = *(v5 + 8), v14 = swift_getObjectType(), v15 = *(v13 + 72), v16 = v12, v11 = v15(v14, v13), v16, v11))
  {
    swift_getObjectType();
    dispatch thunk of TTRIShowRemindersEditableReminderCell.viewModel.getter();

    if (*(&v25 + 1))
    {
      sub_100005FD0(&v24, v27);
      v17 = (v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
      v18 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
      v19 = v17[4];
      sub_10000C36C(v17, v18);
      sub_10000C36C(v27, v28);
      v20 = dispatch thunk of TTRIRemindersListReminderCellViewModel.isCompleted.getter();
      sub_10000C36C(v27, v28);
      dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
      (*(v19 + 48))((v20 & 1) == 0, v4, v18, v19);
      (*(v2 + 8))(v4, v23);
      return sub_100004758(v27);
    }
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  return sub_1000079B4(&v24, &qword_100780978, &unk_10063C720);
}

uint64_t sub_1003885C0()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v9);
  sub_100058000(&qword_100772150, &unk_100635D00);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D400;
  (*(v5 + 16))(v12 + v11, v7, v4);
  (*(v10 + 744))(v12, v9, v10);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003887FC()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v9);
  sub_100058000(&qword_100772150, &unk_100635D00);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D400;
  (*(v5 + 16))(v12 + v11, v7, v4);
  (*(v10 + 752))(v12, v9, v10);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100388A38()
{
  v1 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000079B4(v3, &qword_100772140, &qword_10062D9F0);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = (v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v11 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v10);
  v12 = (*(v11 + 80))(v7, v10, v11);
  if (v12 != 2)
  {
    v13 = v12;
    v14 = v9[3];
    v15 = v9[4];
    sub_10000C36C(v9, v14);
    (*(v15 + 96))(v13 & 1, v7, v14, v15);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_100388C5C(uint64_t a1)
{
  v3 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_10000794C(a1, &v20, &qword_10076AE40, &qword_10062EE50);
    if (*(&v21 + 1))
    {
      sub_100003540(0, &unk_10076BD00, UICommand_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_12;
      }

      v13 = v18;
      if ([v18 propertyList])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
      }

      v20 = v18;
      v21 = v19;
      if (*(&v19 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          (*(v7 + 8))(v9, v6);

          return;
        }

        v14 = v17[1];
        v15 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
        v16 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
        sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v15);
        (*(v16 + 776))(v9, v14, v15, v16);

LABEL_12:
        (*(v7 + 8))(v9, v6);
        return;
      }

      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v10 = &qword_10076AE40;
    v11 = &qword_10062EE50;
    v12 = &v20;
    goto LABEL_15;
  }

  v10 = &qword_100772140;
  v11 = &qword_10062D9F0;
  v12 = v5;
LABEL_15:
  sub_1000079B4(v12, v10, v11);
}

uint64_t sub_100389228(uint64_t a1, unsigned int *a2)
{
  v4 = type metadata accessor for TTRRemindersListPostponeType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100383958(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000079B4(v10, &qword_100772140, &qword_10062D9F0);
  }

  (*(v12 + 32))(v14, v10, v11);
  v16 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v17 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v16);
  (*(v5 + 104))(v7, *a2, v4);
  (*(v17 + 704))(v14, v7, v16, v17);
  (*(v5 + 8))(v7, v4);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1003894D4(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
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

  sub_100389228(v7, a4);

  return sub_1000079B4(v9, &qword_10076AE40, &qword_10062EE50);
}

double sub_1003899DC()
{
  v1 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
  v2 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
  sub_10000C36C(&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v1);
  if ([v0 isEditing])
  {
    v3 = &v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v4 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v5 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 160);
    v8 = v4;
    v9 = v7(1, ObjectType, v5);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  (*(v2 + 1064))(v9, v1, v2);

  return result;
}

void sub_100389C08()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListLayout();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  swift_beginAccess();
  TTRRemindersListViewModel.ListInfo.listLayout.getter();
  swift_endAccess();
  v9 = (*(v3 + 88))(v8, v2);
  v10 = enum case for TTRRemindersListLayout.list(_:);
  if (v9 != enum case for TTRRemindersListLayout.list(_:))
  {
    if (v9 == enum case for TTRRemindersListLayout.columns(_:))
    {
      v11 = (v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
      v12 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
      v13 = v11[4];
      sub_10000C36C(v11, v12);
      (*(v3 + 104))(v5, v10, v2);
      (*(v13 + 1072))(v5, v12, v13);
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      if (qword_100767228 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100003E30(v14, qword_100780830);
      v15 = sub_100008E04(_swiftEmptyArrayStorage);
      v16 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown list layout type", 24, 2uLL, v15, v16);
      __break(1u);
    }
  }
}

void sub_100389E64()
{
  v1 = type metadata accessor for TTRRemindersListLayout();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  swift_beginAccess();
  TTRRemindersListViewModel.ListInfo.listLayout.getter();
  swift_endAccess();
  v8 = (*(v2 + 88))(v7, v1);
  if (v8 == enum case for TTRRemindersListLayout.list(_:))
  {
    v9 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
    v10 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
    sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v9);
    (*(v2 + 104))(v4, enum case for TTRRemindersListLayout.columns(_:), v1);
    (*(v10 + 1072))(v4, v9, v10);
    (*(v2 + 8))(v4, v1);
  }

  else if (v8 != enum case for TTRRemindersListLayout.columns(_:))
  {
    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780830);
    v12 = sub_100008E04(_swiftEmptyArrayStorage);
    v13 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown list layout type", 24, 2uLL, v12, v13);
    __break(1u);
  }
}

uint64_t sub_10038A0C0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
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

  a4(v7);

  return sub_1000079B4(v9, &qword_10076AE40, &qword_10062EE50);
}

uint64_t sub_10038A3F8(uint64_t a1)
{
  v2 = v1;
  v80 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for TTRTemplatePublicLinkData();
  v75 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100058000(&unk_1007809B0, &unk_10063C750);
  __chkstk_darwin(v69);
  v78 = &v65 - v6;
  v7 = sub_100058000(&qword_1007693B0, &unk_100631DC0);
  __chkstk_darwin(v7 - 8);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v65 - v10;
  __chkstk_darwin(v11);
  v77 = &v65 - v12;
  v13 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v68 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = &v65 - v17;
  __chkstk_darwin(v18);
  v20 = &v65 - v19;
  v21 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
  swift_beginAccess();
  v22 = *(v14 + 16);
  v82 = v14 + 16;
  v22(v20, &v1[v21], v13);
  TTRRemindersListViewModel.ListInfo.name.getter();
  v23 = *(v14 + 8);
  v23(v20, v13);
  v24 = String._bridgeToObjectiveC()();

  [v2 setTitle:v24];

  v79 = v21;
  v83 = v22;
  v22(v20, &v2[v21], v13);
  v25 = TTRRemindersListViewModel.ListInfo.color.getter();
  v84 = v23;
  v81 = v14 + 8;
  v23(v20, v13);
  v26 = TTRRemindersListViewModel.ListInfo.color.getter();
  sub_100003540(0, &qword_100772610, UIColor_ptr);
  v27 = static NSObject.== infix(_:_:)();

  if ((v27 & 1) == 0)
  {
    sub_10037BE04();
  }

  v28 = v79;
  v83(v20, &v2[v79], v13);
  v29 = TTRRemindersListViewModel.ListInfo.hasDefaultNewReminderButton.getter();
  v84(v20, v13);
  if ((v29 ^ TTRRemindersListViewModel.ListInfo.hasDefaultNewReminderButton.getter()) & 1) != 0 || (v83(v20, &v2[v28], v13), v30 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter(), v84(v20, v13), ((v30 ^ TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter())) || (v83(v20, &v2[v28], v13), v31 = TTRRemindersListViewModel.ListInfo.shouldAutoCategorizeItems.getter() & 1, v84(v20, v13), v31 != (TTRRemindersListViewModel.ListInfo.shouldAutoCategorizeItems.getter() & 1)))
  {
    sub_10037DD70(1, 0);
  }

  v32 = v76;
  v83(v76, &v2[v28], v13);
  v33 = TTRRemindersListViewModel.ListInfo.collapsedStatesAutosaveName.getter();
  v35 = v34;
  v84(v32, v13);
  v36 = TTRRemindersListViewModel.ListInfo.collapsedStatesAutosaveName.getter();
  v38 = v77;
  v39 = v78;
  if (!v35)
  {
    if (!v37)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (!v37)
  {
LABEL_13:

LABEL_14:
    sub_10038AE90();
    goto LABEL_15;
  }

  if (v33 == v36 && v35 == v37)
  {

    goto LABEL_15;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v49 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v40 = v79;
  if ((v27 & 1) == 0)
  {
LABEL_26:
    sub_10037CFB0();
    goto LABEL_27;
  }

  v41 = v68;
  v83(v68, &v2[v79], v13);
  TTRRemindersListViewModel.ListInfo.templateStatus.getter();
  v84(v41, v13);
  v42 = v74;
  TTRRemindersListViewModel.ListInfo.templateStatus.getter();
  v43 = *(v69 + 48);
  sub_10000794C(v38, v39, &qword_1007693B0, &unk_100631DC0);
  sub_10000794C(v42, v39 + v43, &qword_1007693B0, &unk_100631DC0);
  v44 = v38;
  v45 = *(v75 + 48);
  v46 = v70;
  if (v45(v39, 1, v70) == 1)
  {
    sub_1000079B4(v42, &qword_1007693B0, &unk_100631DC0);
    v39 = v78;
    sub_1000079B4(v44, &qword_1007693B0, &unk_100631DC0);
    v47 = v45(v39 + v43, 1, v46);
    v40 = v79;
    if (v47 == 1)
    {
      sub_1000079B4(v39, &qword_1007693B0, &unk_100631DC0);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v48 = v67;
  sub_10000794C(v39, v67, &qword_1007693B0, &unk_100631DC0);
  if (v45(v39 + v43, 1, v46) == 1)
  {
    sub_1000079B4(v74, &qword_1007693B0, &unk_100631DC0);
    sub_1000079B4(v77, &qword_1007693B0, &unk_100631DC0);
    (*(v75 + 8))(v48, v46);
    v40 = v79;
LABEL_21:
    sub_1000079B4(v39, &unk_1007809B0, &unk_10063C750);
    goto LABEL_26;
  }

  v50 = v75;
  v51 = v39 + v43;
  v52 = v66;
  (*(v75 + 32))(v66, v51, v46);
  sub_1003912B4(&qword_10077C0C8, &type metadata accessor for TTRTemplatePublicLinkData, &protocol conformance descriptor for TTRTemplatePublicLinkData);
  LODWORD(v76) = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v50 + 8);
  v53(v52, v46);
  sub_1000079B4(v74, &qword_1007693B0, &unk_100631DC0);
  sub_1000079B4(v77, &qword_1007693B0, &unk_100631DC0);
  v53(v48, v46);
  sub_1000079B4(v39, &qword_1007693B0, &unk_100631DC0);
  v40 = v79;
  if ((v76 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_25:
  v83(v20, &v2[v40], v13);
  v54 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter() & 1;
  v84(v20, v13);
  if (v54 != (TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter() & 1))
  {
    goto LABEL_26;
  }

LABEL_27:
  sub_10037C41C();
  if ([objc_opt_self() deviceSupportsPencil] && (v83(v20, &v2[v40], v13), v55 = v71, TTRRemindersListViewModel.ListInfo.iOS.getter(), v84(v20, v13), v56 = TTRRemindersListViewModel.ListInfo.IOS.hasBottomInsetForPencilInput.getter(), (*(v72 + 8))(v55, v73), (v56 & 1) != 0))
  {
    v57 = 176.0;
  }

  else
  {
    v57 = 0.0;
  }

  v58 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight];
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight] = v57;
  if (v57 != v58)
  {
    sub_10038B168();
  }

  v59 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  v60 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
  ObjectType = swift_getObjectType();
  v83(v20, &v2[v40], v13);
  v62 = *(v60 + 136);
  v63 = v59;
  v62(v20, ObjectType, v60);

  v84(v20, v13);
  return sub_10037D5CC();
}

id sub_10038AE90()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (result)
  {
    v8 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    (*(v3 + 16))(v6, &v1[v8], v2);
    TTRRemindersListViewModel.ListInfo.collapsedStatesAutosaveName.getter();
    v10 = v9;
    (*(v3 + 8))(v6, v2);
    if (v10)
    {
      sub_100058000(&qword_1007809D0, &qword_10063C768);
      v11 = type metadata accessor for TTRUserDefaults();
      v12 = static TTRUserDefaults.appUserDefaults.getter();
      v20[3] = v11;
      v20[4] = &protocol witness table for TTRUserDefaults;
      v20[0] = v12;
      v20[0] = TTRTreeViewCollapsedStatesUserDefaultsPersistence.__allocating_init(autosaveName:userDefaults:)();
      sub_100058000(&unk_1007809C0, &qword_10063C760);
      swift_allocObject();
      sub_10000E188(&qword_1007809D8, &qword_1007809D0, &qword_10063C768, &protocol conformance descriptor for TTRTreeViewCollapsedStatesUserDefaultsPersistence<A>);
    }

    else
    {
      sub_100058000(&unk_100781770, &unk_10063D230);
      swift_allocObject();
      v20[0] = TTRTreeViewCollapsedStatesInMemoryPersistence.init()();
      sub_100058000(&unk_1007809C0, &qword_10063C760);
      swift_allocObject();
      sub_10000E188(&unk_100781780, &unk_100781770, &unk_10063D230, &protocol conformance descriptor for TTRTreeViewCollapsedStatesInMemoryPersistence<A>);
    }

    v13 = TTRAnyTreeViewCollapsedStatesPersisting.init<A>(base:)();
    v14 = &v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v15 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v16 = *(v14 + 1);
    ObjectType = swift_getObjectType();
    v18 = *(v16 + 224);

    v19 = v15;
    v18(v13, ObjectType, v16);
  }

  return result;
}

void sub_10038B168()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v30 - v4;
  v6 = [v0 isViewLoaded];
  if (v6)
  {
    v7 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight;
    v8 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight];
    if (v8 <= 0.0)
    {
      v9 = sub_10037BD64(v6);
      if (v9)
      {

        v10 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarHeight];
        v11 = v10 + *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight];
      }

      else
      {
        v11 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight];
        v10 = 0.0;
      }

      goto LABEL_15;
    }

    if (v8 >= 100.0)
    {
      v13 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
      v14 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
      sub_10000C36C(&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v13);
      v15 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_cellTitleItemGainingFocus_forKeyboardAvoidance;
      swift_beginAccess();
      sub_10000794C(&v0[v15], v5, &qword_100772140, &qword_10062D9F0);
      v16 = (*(v14 + 368))(v5, v13, v14);
      sub_1000079B4(v5, &qword_100772140, &qword_10062D9F0);
      v10 = v8;
      v11 = v8;
      if ((v16 & 1) == 0)
      {
LABEL_15:
        v24 = &v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
        v25 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
        v26 = *(v24 + 1);
        ObjectType = swift_getObjectType();
        v28 = *(v26 + 184);
        v29 = v25;
        v28(v8 <= 0.0, v8 <= 0.0, ObjectType, v26, v11, v10);

        return;
      }

      v17 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
      v18 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8];
      v19 = swift_getObjectType();
      sub_10000794C(&v1[v15], v5, &qword_100772140, &qword_10062D9F0);
      v20 = *(v18 + 144);
      v21 = v17;
      v22 = v20(v5, v19, v18);

      sub_1000079B4(v5, &qword_100772140, &qword_10062D9F0);
      if (v22 - *&v1[v7] < 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v22 - *&v1[v7];
      }

      type metadata accessor for TTRAutoCompleteReminderProvider();
      v12 = static TTRAutoCompleteReminderProvider.resultLimit.getter() * 44.0;
      if (v23 * 0.2 < v12)
      {
        v12 = v23 * 0.2;
      }
    }

    else
    {
      v12 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight];
    }

    v11 = v8 + v12;
    v10 = v8;
    goto LABEL_15;
  }
}

void sub_10038B458(double a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10002E9C4(a1, 0.0000000149011612, *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight]) & 1) == 0)
  {
    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003E30(v7, qword_100780830);
    v8 = v1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v24 = v3;
      v12 = v11;
      v13 = swift_slowAlloc();
      v23 = v4;
      v25[0] = v13;
      *v12 = 136315394;
      v14 = Double.description.getter();
      v16 = sub_100004060(v14, v15, v25);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = Double.description.getter();
      v19 = sub_100004060(v17, v18, v25);

      *(v12 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Update keyboardHeight from %s to %s", v12, 0x16u);
      swift_arrayDestroy();
      v4 = v23;

      v3 = v24;
    }

    sub_10038B168();
    if ([v8 isViewLoaded])
    {
      v20 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
      swift_beginAccess();
      (*(v4 + 16))(v6, &v8[v20], v3);
      v21 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
      (*(v4 + 8))(v6, v3);
      if (v21)
      {
        sub_10038B740();
        sub_100176458();
      }
    }
  }
}

uint64_t sub_10038B740()
{
  v1 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___autoCategorizationController;
  if (*(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___autoCategorizationController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___autoCategorizationController);
  }

  else
  {
    type metadata accessor for TTRIAutoCategorizationOverlayController(0);
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 32) = 0;
    v3 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityTimeOfMostRecentChange;
    v4 = type metadata accessor for Date();
    (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
    v5 = OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_ttriAccessibilityMostRecentChangeSummary;
    v6 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
    (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
    *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayTimer) = 0;
    *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController_overlayHostingController) = 0;
    *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_workaroundOverlayBottomConstraint) = 0;
    *(v2 + OBJC_IVAR____TtC9Reminders39TTRIAutoCategorizationOverlayController__115183495_alreadyAppliedWorkaround) = 0;
    *(v2 + 24) = &off_100723EC0;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_10038B8A0(void *a1, void *a2, char a3)
{
  v5 = &v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  if (*&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController] != a1)
  {
    v29 = *&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    v28 = *&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
    *v5 = a1;
    v5[1] = a2;
    v7 = a1;
    if ([v3 isViewLoaded])
    {
      [v29 willMoveToParentViewController:0];
      sub_10037B998();
      if (a3)
      {
        v8 = 5242880;
      }

      else
      {
        v8 = 0;
      }

      v9 = swift_allocObject();
      *(v9 + 16) = v3;
      v34 = sub_1003904F8;
      v35 = v9;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_10001047C;
      v33 = &unk_100723F70;
      v10 = _Block_copy(&aBlock);
      v11 = v29;
      v12 = v3;

      v13 = swift_allocObject();
      *(v13 + 16) = v28;
      *(v13 + 32) = v7;
      *(v13 + 40) = a2;
      *(v13 + 48) = v12;
      v34 = sub_100390500;
      v35 = v13;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_100174F78;
      v33 = &unk_100723FC0;
      v14 = _Block_copy(&aBlock);
      v15 = v7;
      v16 = v11;
      v17 = v12;

      [v17 transitionFromViewController:v16 toViewController:v15 duration:v8 options:v10 animations:v14 completion:0.25];
      _Block_release(v14);
      _Block_release(v10);

      v18 = *v5;
      v19 = v5[1];
      ObjectType = swift_getObjectType();
      v21 = v19[14];
      v22 = v18;
      v21(v17, ObjectType, v19);

      v23 = UIViewController.effectiveNavigationBar.getter();
      if (v23)
      {
        v24 = v23;
        [v23 setNeedsLayout];
      }

      v25 = UIViewController.effectiveNavigationControllerForBars.getter();
      if (v25)
      {
        v26 = v25;
        v27 = [v25 viewIfLoaded];

        [v27 setNeedsLayout];
      }
    }

    else
    {
    }
  }
}

double sub_10038BBA4(uint64_t isEscapingClosureAtFileLocation)
{
  sub_100058000(&qword_10076B920, &qword_10062FC60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10062D3F0;
  v3 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listMessagingView);
  *(v2 + 32) = v3;
  *(v2 + 40) = sub_10037BD64(v3);
  sub_100058000(&qword_100780A08, &qword_100642AF0);
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  sub_10000E188(&qword_100788500, &qword_100780A08, &qword_100642AF0, &protocol conformance descriptor for [A]);
  v4 = Sequence.removingNils<A>()();

  v19[0] = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 superview];
      v11 = [isEscapingClosureAtFileLocation view];
      if (v10)
      {
        if (v11)
        {
          v12 = v11;

          if (v10 == v12)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v11)
        {
LABEL_17:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_6;
        }
      }

LABEL_6:
      ++v6;
      if (v9 == i)
      {
        v13 = v19[0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_24:

  if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    goto LABEL_29;
  }

  if (*(v13 + 16))
  {
    while (1)
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 24) = isEscapingClosureAtFileLocation;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_100390558;
      *(v16 + 24) = v15;
      v19[4] = sub_100026410;
      v19[5] = v16;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 1107296256;
      v19[2] = sub_100026440;
      v19[3] = &unk_100724060;
      v13 = _Block_copy(v19);
      v17 = isEscapingClosureAtFileLocation;

      [v14 performWithoutAnimation:v13];
      _Block_release(v13);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_29:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
LABEL_30:
  }

  return result;
}

void sub_10038BF60(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_14:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v9 = [a2 view];
    if (!v9)
    {
      break;
    }

    v10 = v9;
    [v9 bringSubviewToFront:v7];

    if (v8 == v4)
    {
      return;
    }
  }

  __break(1u);
}

void sub_10038C068(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100058000(&unk_1007809F8, &qword_10063C778);
    TTRViewModelObserver.ValueChangeInfo.oldValue.getter();
    sub_10038C0E4(v4);
  }
}

void sub_10038C0E4(unsigned int a1)
{
  v2 = v1;
  if (*&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentPreferredChromelessBarStatesObserver])
  {

    TTRViewModelObserver.localValue.getter();

    if (v15 != 2)
    {
      if (a1 == 2 || ((v15 ^ a1) & 1) != 0)
      {
        v5 = [v1 navigationItem];
        v6 = [v5 scrollEdgeAppearance];

        if (v6)
        {
          v7 = [v6 copy];

          v8 = &selRef_configureWithDefaultBackground;
          if ((v15 & 1) == 0)
          {
            v8 = &selRef_configureWithTransparentBackground;
          }

          [v7 *v8];
          v9 = [v2 navigationItem];
          [v9 setScrollEdgeAppearance:v7];
        }
      }

      v10 = sub_10037BD64(v4);
      if (v10)
      {
        if (a1 == 2 || (v15 & 0x100) >> 8 != ((a1 >> 8) & 1))
        {
          v11 = v10;
          v12 = [v10 standardAppearance];
          v13 = [v12 copy];

          v14 = &selRef_configureWithDefaultBackground;
          if ((v15 & 0x100) != 0)
          {
            v14 = &selRef_configureWithTransparentBackground;
          }

          [v13 *v14];
          [v11 setStandardAppearance:v13];
          [v11 setNeedsLayout];

          v10 = v13;
        }
      }
    }
  }
}

void sub_10038C2C8(uint64_t a1, char a2, void *a3)
{
  v5 = a1;
  v6 = sub_10037BD64(a1);
  if (v6)
  {
    v11 = v6;
    if (a2)
    {
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v11;
      *(v8 + 24) = v5 & 1;
      aBlock[4] = sub_1003901D8;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001047C;
      aBlock[3] = &unk_100723F20;
      v9 = _Block_copy(aBlock);
      v10 = v11;

      [v7 animateWithDuration:v9 animations:0.33];

      _Block_release(v9);
      return;
    }

    [v6 setHidden:v5 & 1];
  }

  else
  {
    v11 = [a3 navigationController];
    [v11 setToolbarHidden:v5 & 1 animated:a2 & 1];
  }
}

void sub_10038C454()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 view];
  if (!v11)
  {
    goto LABEL_54;
  }

  v12 = v11;
  [v11 setAccessibilityElements:0];

  v13 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
  swift_beginAccess();
  (*(v7 + 16))(v10, &v1[v13], v6);
  LOBYTE(v13) = TTRRemindersListViewModel.ListInfo.hasDefaultNewReminderButton.getter();
  v14 = (*(v7 + 8))(v10, v6);
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v14 = [v1 isEditing];
    v15 = v14 ^ 1;
  }

  v16 = sub_10037BD64(v14);
  if (v16)
  {
    v17 = v16;
    if (([v16 isHidden] | v15))
    {
      goto LABEL_12;
    }

    v18 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_emptyListMessaging;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v18], v2);
    LOBYTE(v18) = TTRRemindersListViewModel.EmptyListMessagingType.shouldUseUnavailableConfiguration.getter();
    (*(v3 + 8))(v5, v2);
    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }

    v19 = [v1 view];
    if (!v19)
    {
      goto LABEL_55;
    }

    v20 = v19;
    v21 = [v19 accessibilityElements];

    if (v21)
    {
      v22 = v17;
      v17 = v21;
LABEL_11:

LABEL_12:
      return;
    }

    v23 = [objc_opt_self() defaultVoiceOverOptions];
    if (!v23)
    {
      goto LABEL_12;
    }

    v22 = v23;
    v24 = [v1 view];
    if (!v24)
    {
      goto LABEL_56;
    }

    v25 = v24;
    v26 = [v24 _accessibilityLeafDescendantsWithOptions:v22];

    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v27 + 16))
    {

      goto LABEL_11;
    }

    v28 = [v1 view];
    if (!v28)
    {
LABEL_57:
      __break(1u);
      return;
    }

    v29 = v28;
    v50 = v27;
    sub_100058000(&unk_100777760, &unk_1006372A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 56) = sub_100003540(0, &qword_100780998, UIToolbar_ptr);
    *(inited + 32) = v17;
    v51 = inited;
    v31 = *(v27 + 16);
    v32 = _swiftEmptyArrayStorage[2];
    v33 = v32 + v31;
    v34 = __OFADD__(v32, v31);
    v35 = v17;
    if (!v34)
    {
      v17 = v35;

      v36 = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v33 > _swiftEmptyArrayStorage[3] >> 1)
      {
        if (v32 <= v33)
        {
          v38 = v32 + v31;
        }

        else
        {
          v38 = v32;
        }

        v36 = sub_1005470E4(isUniquelyReferenced_nonNull_native, v38, 1, _swiftEmptyArrayStorage);
      }

      if (*(v27 + 16))
      {
        if ((*(v36 + 3) >> 1) - *(v36 + 2) < v31)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        swift_arrayInitWithCopy();

        v39 = *(v36 + 2);
        if (v31)
        {
          v40 = __OFADD__(v39, v31);
          v39 += v31;
          if (v40)
          {
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          *(v36 + 2) = v39;
        }
      }

      else
      {

        if (v31)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v39 = *(v36 + 2);
      }

      v41 = v51;
      v42 = *(v51 + 16);
      v43 = v39 + v42;
      if (!__OFADD__(v39, v42))
      {

        v44 = swift_isUniquelyReferenced_nonNull_native();
        if (!v44 || v43 > *(v36 + 3) >> 1)
        {
          if (v39 <= v43)
          {
            v45 = v39 + v42;
          }

          else
          {
            v45 = v39;
          }

          v36 = sub_1005470E4(v44, v45, 1, v36);
        }

        if (*(v41 + 16))
        {
          if ((*(v36 + 3) >> 1) - *(v36 + 2) >= v42)
          {
            swift_arrayInitWithCopy();

            if (!v42)
            {
LABEL_49:
              sub_100058000(&unk_1007809A0, &unk_10063C740);
              swift_arrayDestroy();
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v29 setAccessibilityElements:isa];

              goto LABEL_11;
            }

            v46 = *(v36 + 2);
            v40 = __OFADD__(v46, v42);
            v47 = v46 + v42;
            if (!v40)
            {
              *(v36 + 2) = v47;
              goto LABEL_49;
            }

            goto LABEL_53;
          }

          goto LABEL_52;
        }

        if (!v42)
        {
          goto LABEL_49;
        }

        goto LABEL_51;
      }
    }

    __break(1u);
    goto LABEL_51;
  }
}

void sub_10038CA04()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_11;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_1003AB968(v6), (v3 & 1) == 0))
  {

    sub_100077654(v6);
LABEL_11:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_12;
  }

  sub_1000046FC(*(v1 + 56) + 32 * v2, &v7);
  sub_100077654(v6);

  if (!*(&v8 + 1))
  {
LABEL_12:
    sub_1000079B4(&v7, &qword_10076AE40, &qword_10062EE50);
    goto LABEL_13;
  }

  sub_100003540(0, &qword_100780A30, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    UIViewController.endFirstResponderEditing()();
    return;
  }

  v4 = v6[0];
  v5 = [v6[0] integerValue];

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    return;
  }

  if ((v5 & 0xFFFFFFFE) != 0xC)
  {
    goto LABEL_13;
  }
}

void sub_10038CB88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState];
  v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] = 1;
  if (v8 == 1)
  {
    goto LABEL_5;
  }

  v9 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v2[v9], v4);
  LOBYTE(v9) = TTRIShowRemindersDeferredItemUpdates.isEmpty.getter();
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    goto LABEL_5;
  }

  v10 = [v2 view];
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsLayout];

LABEL_5:
    sub_10038CD04(a1);
    sub_10037DD70(0, 1);
    return;
  }

  __break(1u);
}

void sub_10038CD04(uint64_t a1)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100780A28, &unk_10063C7A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for TTRIKeyboardNotification();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3, v12);
  TTRIKeyboardNotification.init(notification:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000079B4(v9, &qword_100780A28, &unk_10063C7A0);
    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_100780830);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "TTRIShowRemindersViewController: invalid keyboard change notification", v18, 2u);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v19 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
    v20 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 176);
    v23 = v19;
    v24 = v22(v14, ObjectType, v20);

    if (static TTRIKeyboard.isInFloatingKeyboardMode.getter())
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v24;
    }

    v26 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight);
    *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight) = v25;
    sub_10038B458(v26);
    (*(v11 + 8))(v14, v10);
  }
}

id sub_10038D078()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState];
  v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] = 2;
  if (v6 == 2)
  {
    goto LABEL_5;
  }

  v7 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v7], v2);
  LOBYTE(v7) = TTRIShowRemindersDeferredItemUpdates.isEmpty.getter();
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    goto LABEL_5;
  }

  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result setNeedsLayout];

LABEL_5:
    v10 = &v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
    v11 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v12 = v10[4];
    sub_10000C36C(v10, v11);
    return (*(v12 + 992))(v11, v12);
  }

  __break(1u);
  return result;
}

void sub_10038D228()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState];
  v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] = 3;
  if (v6 == 3)
  {
    goto LABEL_5;
  }

  v7 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v7], v2);
  LOBYTE(v7) = TTRIShowRemindersDeferredItemUpdates.isEmpty.getter();
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    goto LABEL_5;
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 setNeedsLayout];

LABEL_5:
    v10 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight];
    *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight] = 0;
    sub_10038B458(v10);
    sub_10037DD70(0, 1);
    return;
  }

  __break(1u);
}

id sub_10038D3C4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight;
  v7 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight];
  v8 = v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState];
  v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] = 0;
  if (v8)
  {
    v9 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v9], v2);
    LOBYTE(v9) = TTRIShowRemindersDeferredItemUpdates.isEmpty.getter();
    (*(v3 + 8))(v5, v2);
    if ((v9 & 1) == 0)
    {
      result = [v1 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v11 = result;
      [result setNeedsLayout];
    }
  }

  v12 = *&v1[v6];
  *&v1[v6] = 0;
  sub_10038B458(v12);
  if (fabs(v7) >= 0.0000000149011612)
  {
    sub_10037DD70(0, 1);
  }

  v13 = &v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v14 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
  v15 = v13[4];
  sub_10000C36C(v13, v14);
  return (*(v15 + 992))(v14, v15);
}

void sub_10038D5B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight;
  v13 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight);
  sub_10038CD04(a1);
  v14 = *(v2 + v12);
  if (v14 > 0.0 && v13 > 0.0 && v14 != v13)
  {
    v40 = v8;
    v16 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
    v17 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v41 = v11;
    v19 = v5;
    v20 = v7;
    v21 = v4;
    v22 = ObjectType;
    v23 = *(v17 + 64);
    v24 = v16;
    v39 = v9;
    v25 = v24;
    v26 = v22;
    v27 = v21;
    v28 = v20;
    v29 = v19;
    v30 = v17;
    v31 = v40;
    v32 = v41;
    v33 = v23(v26, v30);
    v35 = v34;

    v36 = v39;
    if (v33)
    {
      v32[3] = swift_getObjectType();
      v32[4] = *(*(v35 + 8) + 8);
      *v32 = v33;
      (*(v36 + 104))(v32, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.keyboardFrameChange(_:), v31);
      v37 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
      swift_beginAccess();
      (*(v29 + 16))(v28, v2 + v37, v27);
      v38 = v33;
      TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.setter();
      sub_10037AF34(v28);
    }
  }

  sub_10037DD70(0, 1);
}

uint64_t sub_10038D86C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for TTRIShowRemindersViewController(uint64_t a1)
{
  result = qword_100780918;
  if (!qword_100780918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10038DC58(uint64_t a1)
{
  type metadata accessor for TTRRemindersListLayout();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TTRRemindersListViewModel.ListInfo();
    if (v2 <= 0x3F)
    {
      type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
      if (v3 <= 0x3F)
      {
        type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
        if (v4 <= 0x3F)
        {
          sub_10038DEB8(319, &qword_100780928, &type metadata accessor for TTRSharedWithYouHighlight);
          if (v5 <= 0x3F)
          {
            sub_10038DEB8(319, &qword_100780930, &type metadata accessor for TTRRemindersListViewModel.Item);
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

void sub_10038DEB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10038DF0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v9 = *(a1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v10 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  (*(v5 + 104))(v7, enum case for TTRIShowRemindersEditableCellScrollingTarget.cell(_:), v4);
  v12 = *(v10 + 168);
  v13 = v9;
  v12(v7, a2, 1, ObjectType, v10);

  return (*(v5 + 8))(v7, v4);
}

id sub_10038E060(void *a1)
{
  v2 = v1;
  if ([v1 isViewLoaded])
  {
    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_100780830);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "TTRIShowRemindersViewController: prepareForModalPresentation is called after viewDidLoad", v7, 2u);
    }
  }

  result = [a1 setDelegate:v2];
  v9 = &v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_navigationItemOptions];
  if (*&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_navigationItemOptions + 8] == 1)
  {
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 0;
  }

  return result;
}

uint64_t sub_10038E190(char *a1, char a2, int a3)
{
  v4 = v3;
  v53 = a3;
  v7 = type metadata accessor for TTRRemindersListLayout();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentLayout;
  swift_beginAccess();
  v14 = *(v8 + 16);
  v14(v12, &v4[v13], v7);
  sub_1003912B4(&qword_1007809E0, &type metadata accessor for TTRRemindersListLayout, &protocol conformance descriptor for TTRRemindersListLayout);
  v55 = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = v8;
  v15 = *(v8 + 8);
  result = v15(v12, v7);
  if (a1 & 1) == 0 || (a2)
  {
    v50 = v13;
    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003E30(v17, qword_100780830);
    v14(v54, v55, v7);
    v18 = v4;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v51 = v18;

    v49 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v47 = v21;
      v48 = swift_slowAlloc();
      v56[0] = v48;
      *v21 = 136315394;
      v22 = v50;
      v14(v12, &v4[v50], v7);
      sub_1003912B4(&qword_1007809E8, &type metadata accessor for TTRRemindersListLayout, &protocol conformance descriptor for TTRRemindersListLayout);
      v23 = v19;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v15(v12, v7);
      v27 = sub_100004060(v24, v26, v56);

      v28 = v47;
      *(v47 + 1) = v27;
      *(v28 + 6) = 2080;
      v29 = v54;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v15(v29, v7);
      v33 = sub_100004060(v30, v32, v56);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v49, "TTRIShowRemindersViewController: replace content view controller {from: %s, to: %s}", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v15(v54, v7);
      v22 = v50;
    }

    swift_beginAccess();
    v34 = &v4[v22];
    v35 = v55;
    (*(v52 + 24))(v34, v55, v7);
    swift_endAccess();
    v36 = *&v51[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v37 = *&v51[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v51[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v36);
    v38 = (*(v37 + 16))(v35, v36, v37);
    v40 = v39;
    v42 = v41;
    ObjectType = swift_getObjectType();
    v44 = *(v42 + 32);
    v45 = swift_unknownObjectRetain();
    v44(v45, &off_100723D78, ObjectType, v42);
    sub_10038B8A0(v38, v40, v53 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10038E674(void *a1, char a2)
{
  v5 = type metadata accessor for AppEntityID();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 view];
  v11 = result;
  if (a2)
  {
    if (result)
    {
      type metadata accessor for GroupEntity();
      v12 = a1;
      AppEntityID.init(objectID:)();
      v13 = &qword_10076BE30;
      v14 = &type metadata accessor for GroupEntity;
      v15 = &protocol conformance descriptor for GroupEntity;
LABEL_6:
      sub_1003912B4(v13, v14, v15);
      UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

      return (*(v6 + 8))(v9, v5);
    }

    __break(1u);
  }

  else if (result)
  {
    type metadata accessor for ListEntity();
    v16 = a1;
    AppEntityID.init(objectID:)();
    v13 = &qword_100771DE8;
    v14 = &type metadata accessor for ListEntity;
    v15 = &protocol conformance descriptor for ListEntity;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_10038E818(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMFeatureFlags();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 isViewLoaded];
  if (result)
  {
    (*(v9 + 104))(v12, enum case for REMFeatureFlags.viewAnnotation(_:), v8);
    v14 = REMFeatureFlags.isEnabled.getter();
    result = (*(v9 + 8))(v12, v8);
    if (v14)
    {
      (*(v5 + 16))(v7, a1, v4);
      result = (*(v5 + 88))(v7, v4);
      if (result != enum case for TTRListType.PredefinedSmartListType.today(_:) && result != enum case for TTRListType.PredefinedSmartListType.scheduled(_:) && result != enum case for TTRListType.PredefinedSmartListType.all(_:) && result != enum case for TTRListType.PredefinedSmartListType.flagged(_:) && result != enum case for TTRListType.PredefinedSmartListType.assigned(_:) && result != enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:) && result != enum case for TTRListType.PredefinedSmartListType.completed(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t sub_10038EC08()
{
  result = qword_100780938;
  if (!qword_100780938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780938);
  }

  return result;
}

void sub_10038EC5C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v79 = a3;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v68 = *(v4 - 8);
  v69 = v4;
  __chkstk_darwin(v4);
  v70 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v77 = *(v6 - 8);
  v78 = v6;
  __chkstk_darwin(v6);
  v67 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v72 = *(v8 - 8);
  v73 = v8;
  __chkstk_darwin(v8);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  v19 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v23 = TTRIReminderCellTitleModuleInterface.editableReminderCell.getter();
  if (v23)
  {
    v25 = v24;
    v74 = v23;
    (*(v20 + 16))(v22, v79, v19);
    v26 = (*(v20 + 88))(v22, v19);
    if (v26 == enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:))
    {
      dispatch thunk of TTRReminderCellTitleModuleInterface.editingState.getter();
      sub_10000C36C(v81, v81[3]);
      dispatch thunk of TTRReminderCellTitleEditingState.editingItem.getter();

      (*(v77 + 56))(v18, 0, 1, v78);
      v27 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_cellTitleItemGainingFocus_forKeyboardAvoidance;
      v28 = v80;
      swift_beginAccess();
      sub_10030DB18(v18, v28 + v27);
      swift_endAccess();
      sub_100004758(v81);
      return;
    }

    if (v26 == enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:))
    {
      v29 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
      v30 = v80;
      swift_beginAccess();
      v31 = v76;
      v32 = *(v75 + 16);
      v32(v12, v30 + v29, v76);
      v33 = v25;
      TTRIShowRemindersDeferredItemUpdates.needsRefreshCellSizes.setter();
      sub_10037AF34(v12);
      v34 = v74;
      ObjectType = swift_getObjectType();
      v37 = v71;
      v36 = v72;
      *(v71 + 3) = ObjectType;
      v37[4] = *(*(v33 + 8) + 8);
      *v37 = v34;
      (*(v36 + 104))(v37, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.beginEditing(_:), v73);
      v32(v12, v30 + v29, v31);
      v38 = v34;
      TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.setter();
      sub_10037AF34(v12);
      (*(v77 + 56))(v18, 1, 1, v78);
      v39 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_cellTitleItemGainingFocus_forKeyboardAvoidance;
      swift_beginAccess();
      sub_10030DB18(v18, v30 + v39);
      swift_endAccess();
      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v38);

      return;
    }

    if (v26 == enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:))
    {
      v40 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
      v41 = v80;
      swift_beginAccess();
      v42 = v76;
      v43 = *(v75 + 16);
      v43(v12, v41 + v40, v76);
      TTRIShowRemindersDeferredItemUpdates.needsRefreshCellSizes.setter();
      sub_10037AF34(v12);
      sub_100058000(&qword_100780A10, &qword_10063C780);
      v44 = v74;
      v45 = swift_getObjectType();
      v46 = v71;
      *(v71 + 3) = v45;
      v46[4] = *(*(v25 + 8) + 8);
      *v46 = v44;
      v47 = v44;
      static TTRIShowRemindersEditableCellScrollingTarget.reminderTitle.getter();
      (*(v72 + 104))(v46, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.textChange(_:), v73);
      v43(v12, v41 + v40, v42);
      TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.setter();
      sub_10037AF34(v12);

      return;
    }

    if (v26 == enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
    {
      v48 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
      v49 = v80;
      swift_beginAccess();
      (*(v75 + 16))(v12, v49 + v48, v76);
      TTRIShowRemindersDeferredItemUpdates.needsRefreshCellSizes.setter();
      sub_10037AF34(v12);
      TTRIReminderCellTitleModuleInterface.item.getter();
      v51 = v77;
      v50 = v78;
      if ((*(v77 + 48))(v15, 1, v78) == 1)
      {

        sub_1000079B4(v15, &qword_100772140, &qword_10062D9F0);
        return;
      }

      v52 = v67;
      (*(v51 + 32))(v67, v15, v50);
      v53 = v70;
      TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
      v54 = v68;
      v55 = v69;
      v56 = (*(v68 + 88))(v53, v69);
      if (v56 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
      {
        v57 = (v49 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
        v58 = v54;
        v59 = *(v49 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
        v60 = *(v49 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
        sub_10000C36C(v57, v59);
        sub_100058000(&qword_100772150, &unk_100635D00);
        v61 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_10062D400;
        (*(v51 + 16))(v62 + v61, v52, v50);
        (*(v60 + 912))(v62, v59, v60);

        (*(v51 + 8))(v52, v50);
        (*(v58 + 8))(v70, v55);
        return;
      }

      if (v56 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v56 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
      {
        (*(v51 + 8))(v52, v50);

        (*(v54 + 8))(v53, v55);
        return;
      }

      if (v56 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        (*(v51 + 8))(v52, v50);

        return;
      }
    }

    else
    {
      if (qword_100767228 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_100003E30(v63, qword_100780830);
      v64 = sub_100008E04(_swiftEmptyArrayStorage);
      v65 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown editing event", 21, 2uLL, v64, v65);
      __break(1u);
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

uint64_t sub_10038F640()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 88);
  v5 = v1;
  LOBYTE(v1) = v4(ObjectType, v2);

  return v1 & 1;
}

void sub_10038F6BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 152);
  v5 = v1;
  v4(ObjectType, v2);
}

void sub_10038F748(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v35 = a3;
  v5 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v33 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v15 = TTRIReminderCellNotesModuleInterface.editableReminderCell.getter();
  if (v15)
  {
    v17 = v15;
    v29 = v16;
    v31 = v5;
    v18 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
    swift_beginAccess();
    v30 = *(v12 + 16);
    v30(v14, v4 + v18, v11);
    TTRIShowRemindersDeferredItemUpdates.needsRefreshCellSizes.setter();
    v32 = v4;
    sub_10037AF34(v14);
    (*(v8 + 16))(v10, v35, v7);
    v19 = (*(v8 + 88))(v10, v7);
    if (v19 == enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:))
    {
LABEL_9:

      return;
    }

    if (v19 == enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:))
    {
      ObjectType = swift_getObjectType();
      v21 = v33;
      v22 = v34;
      *(v34 + 3) = ObjectType;
      v22[4] = *(*(v29 + 8) + 8);
      *v22 = v17;
      (*(v21 + 104))(v22, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.beginEditing(_:), v31);
      v30(v14, v32 + v18, v11);
      v23 = v17;
LABEL_7:
      TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.setter();
      sub_10037AF34(v14);
      goto LABEL_9;
    }

    v24 = v34;
    if (v19 == enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:))
    {
      sub_100058000(&qword_100780A10, &qword_10063C780);
      v24[3] = swift_getObjectType();
      v24[4] = *(*(v29 + 8) + 8);
      *v24 = v17;
      v25 = v17;
      static TTRIShowRemindersEditableCellScrollingTarget.reminderNotes.getter();
      (*(v33 + 104))(v24, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.textChange(_:), v31);
      v30(v14, v32 + v18, v11);
      goto LABEL_7;
    }

    if (v19 == enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
    {
      goto LABEL_9;
    }

    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100003E30(v26, qword_100780830);
    v27 = sub_100008E04(_swiftEmptyArrayStorage);
    v28 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown editing event", 21, 2uLL, v27, v28);
    __break(1u);
  }
}

void sub_10038FBAC(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v34 = a3;
  v5 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v15 = TTRIReminderCellHashtagModuleInterface.editableReminderCell.getter();
  if (v15)
  {
    v17 = v15;
    v29 = v16;
    v30 = v5;
    v18 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
    swift_beginAccess();
    v28 = *(v12 + 16);
    v28(v14, v4 + v18, v11);
    TTRIShowRemindersDeferredItemUpdates.needsRefreshCellSizes.setter();
    v31 = v4;
    sub_10037AF34(v14);
    (*(v8 + 16))(v10, v34, v7);
    v19 = (*(v8 + 88))(v10, v7);
    if (v19 == enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:))
    {
LABEL_7:

      return;
    }

    if (v19 == enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:))
    {
      ObjectType = swift_getObjectType();
      v21 = v32;
      v22 = v33;
      *(v33 + 3) = ObjectType;
      v23 = v30;
      v22[4] = *(*(v29 + 8) + 8);
      *v22 = v17;
      (*(v21 + 104))(v22, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.beginEditing(_:), v23);
      v28(v14, v31 + v18, v11);
      v24 = v17;
      TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.setter();
      sub_10037AF34(v14);
      goto LABEL_7;
    }

    if (v19 == enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:) || v19 == enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
    {
      goto LABEL_7;
    }

    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100003E30(v25, qword_100780830);
    v26 = sub_100008E04(_swiftEmptyArrayStorage);
    v27 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown editing event", 21, 2uLL, v26, v27);
    __break(1u);
  }
}

void sub_10038FF74()
{
  sub_10037BE04();
  v1 = sub_10037BD64(v0);
  if (v1)
  {

    v2 = UIViewController.effectiveNavigationControllerForBars.getter();
    if (v2)
    {
      v3 = v2;
      [v2 setToolbarHidden:1 animated:1];
    }
  }
}

uint64_t sub_10038FFF0()
{
  v1 = (*v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000C36C(v1, v2);
  return (*(v3 + 824))(v2, v3) & 1;
}

uint64_t sub_100390054(void *a1)
{
  a1[2] = sub_1003912B4(&qword_100780940, type metadata accessor for TTRIShowRemindersViewController, &unk_10063C624);
  a1[3] = sub_1003912B4(&qword_100780948, type metadata accessor for TTRIShowRemindersViewController, &unk_10063C64C);
  result = sub_1003912B4(&qword_100780950, type metadata accessor for TTRIShowRemindersViewController, &unk_10063C674);
  a1[4] = result;
  return result;
}

double sub_100390100(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100390114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100390178(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100390240(int a1, int a2)
{
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v8 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v7);
  v9 = (*(v8 + 504))(v7, v8);
  v10 = *(v9 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_templatesItemVisibilityOverride);
  if (v10 == 2)
  {
    if (v6 == 2)
    {
      goto LABEL_13;
    }

LABEL_12:
    *(v9 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_templatesItemVisibilityOverride) = v6;
    sub_100081EF8(0xD000000000000027, 0x8000000100683BE0);
    goto LABEL_13;
  }

  if ((a1 | a2) & 1) == 0 || ((v10 ^ v6))
  {
    goto LABEL_12;
  }

LABEL_13:

  return swift_unknownObjectRelease();
}

objc_class *sub_10039032C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
  (*(v2 + 504))(v1, v2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = sub_10010E890();
    v5 = v4;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = 0;
  }

  UIViewController.effectiveNavigationBar.getter();
  return v3;
}

uint64_t sub_1003903E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
  (*(v2 + 920))(v5, v1, v2);
  if (v6)
  {
    sub_10000C36C(v5, v6);
    if ([objc_opt_self() isInternalInstall])
    {
      swift_getObjectType();
      v3 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.isGroceryOrAutoCategorizedList.getter();
    }

    else
    {
      v3 = 0;
    }

    sub_100004758(v5);
  }

  else
  {
    sub_1000079B4(v5, &qword_10077B360, &qword_100639AB8);
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1003904D8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1003904E8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

double sub_100390500()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];
  [v1 removeFromParentViewController];
  [v2 didMoveToParentViewController:v3];
  return sub_10037DC0C(0);
}

void sub_100390560()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  v3 = ceil(v2 / 44.0);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_100390618(__n128 a1)
{
  v2 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator;
  *(v1 + v6) = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___toolbar) = 1;
  *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState) = 0;
  v7 = v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_navigationItemOptions;
  *v7 = xmmword_10062E1C0;
  *(v7 + 16) = 0;
  v8 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_emptyListMessaging;
  v9 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v10 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  (*(*(v10 - 8) + 104))(v1 + v8, v9, v10);
  (*(v3 + 104))(v5, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.none(_:), v2);
  TTRIShowRemindersDeferredItemUpdates.init(needsRefreshCellSizes:pendingScrollAction:)();
  *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarHeight) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarController) = 0;
  v11 = v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_lastSetLargeTitleColor;
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listMessagingView) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_currentTextInputModeObserver) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentPreferredChromelessBarStatesObserver) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___autoCategorizationController) = 0;
  v12 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_swHighlightToShowInNavBar;
  v13 = type metadata accessor for TTRSharedWithYouHighlight();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_cellTitleItemGainingFocus_forKeyboardAvoidance;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003908F8(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListLayout();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v42 - v13;
  v15 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_emptyListMessaging;
  swift_beginAccess();
  v49 = *(v9 + 16);
  v49(v14, &v1[v15], v8);
  v16 = TTRRemindersListViewModel.EmptyListMessagingType.shouldUseUnavailableConfiguration.getter();
  v17 = *(v9 + 8);
  v17(v14, v8);
  if ((v16 & 1) == 0)
  {
    v19 = 0;
    goto LABEL_7;
  }

  v49(v11, &v2[v15], v8);
  v42[1] = TTRRemindersListViewModel.EmptyListMessagingType.imageSystemName.getter();
  v19 = v18;
  v17(v11, v8);
  v42[2] = v19;
  if (!v19)
  {
LABEL_7:
    v32 = v2;
    goto LABEL_11;
  }

  v49(v14, &v2[v15], v8);
  v20 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentLayout;
  swift_beginAccess();
  v43 = v17;
  v21 = v47;
  v22 = v48;
  (*(v47 + 16))(v7, &v2[v20], v48);
  v19 = TTRRemindersListViewModel.EmptyListMessagingType.localizedSubtitle(currentLayout:)();
  (*(v21 + 8))(v7, v22);
  v43(v14, v8);
  v48 = v19;
  if (v19)
  {
    v23 = [objc_opt_self() emptyProminentConfiguration];
    v24 = String._bridgeToObjectiveC()();

    v25 = [objc_opt_self() _systemImageNamed:v24];

    [v23 setImage:v25];
    v49(v14, &v2[v15], v8);
    v27 = v44;
    v26 = v45;
    v28 = v46;
    (*(v45 + 104))(v44, enum case for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat.standard(_:), v46);
    TTRRemindersListViewModel.EmptyListMessagingType.localizedTitle(withTextFormat:)();
    v30 = v29;
    (*(v26 + 8))(v27, v28);
    v43(v14, v8);
    if (v30)
    {
      v31 = String._bridgeToObjectiveC()();
    }

    else
    {
      v31 = 0;
    }

    [v23 setText:v31];

    v33 = [v23 textProperties];
    v34 = [v23 textProperties];
    v35 = [v34 font];

    isa = UIFont.withRoundedDesign()().super.isa;
    [v33 setFont:isa];

    v37 = [v23 secondaryTextProperties];
    v38 = [v23 secondaryTextProperties];
    v39 = [v38 font];

    v40 = UIFont.withRoundedDesign()().super.isa;
    [v37 setFont:v40];

    v41 = v48;
    [v23 setSecondaryAttributedText:v48];

    v19 = v23;
    v32 = v2;
  }

  else
  {

    v32 = v2;
  }

LABEL_11:
  [v32 ttr_setContentUnavailableConfiguration:v19];
}

uint64_t sub_100390EC0()
{
  v1 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-1] - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v5 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v4);
  (*(v5 + 832))(v12, v4, v5);
  if (!v13)
  {
    return sub_1000079B4(v12, &unk_100780A18, &unk_10063C788);
  }

  v6 = *sub_10000C36C(v12, v13);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;
  sub_10009E31C(0, 0, v3, &unk_10063C798, v9);

  return sub_100004758(v12);
}

uint64_t sub_100391058()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
  (*(v2 + 832))(v9, v1, v2);
  if (!v10)
  {
    return sub_1000079B4(v9, &unk_100780A18, &unk_10063C788);
  }

  v3 = *sub_10000C36C(v9, v10);
  if (swift_unknownObjectWeakLoadStrong())
  {
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = v5;
      v8[3] = type metadata accessor for TTRIShowTemplatePresenter(0);
      v8[4] = &off_10071AA88;
      v8[0] = v3;
      (*(v6 + 16))(v8, ObjectType, v6);

      swift_unknownObjectRelease();
      sub_100004758(v8);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return sub_100004758(v9);
}

uint64_t sub_10039118C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001AA3C;

  return sub_1001E42C4();
}

uint64_t sub_100391258(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_1003912B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10039134C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100780A58);
  v1 = sub_100003E30(v0, qword_100780A58);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100391414(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48, &qword_10063C8B8);
      dispatch thunk of Promise.then<A>(on:closure:)();

      v10 = dispatch thunk of Promise.cast<A>(as:)();
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10078A340, &qword_10063C8B0);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10078A340, &qword_10063C8B0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_1003917A8(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48, &qword_10063C8B8);
      dispatch thunk of Promise.then<A>(on:closure:)();

      sub_100058000(&qword_100775650, &unk_10063BD60);
      v10 = dispatch thunk of Promise.cast<A>(as:)();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10077FD80, &unk_100648790);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10077FD80, &unk_100648790);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_100391B44(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48, &qword_10063C8B8);
      dispatch thunk of Promise.then<A>(on:closure:)();

      sub_100058000(&qword_10077FD70, &qword_10063BDA8);
      v10 = dispatch thunk of Promise.cast<A>(as:)();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10077FD98, &qword_10063BDD0);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10077FD98, &qword_10063BDD0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_100391EE0(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48, &qword_10063C8B8);
      dispatch thunk of Promise.then<A>(on:closure:)();

      sub_100058000(&qword_10077FDC0, &qword_10063BE28);
      v10 = dispatch thunk of Promise.cast<A>(as:)();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10077FDC8, &unk_10063C910);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10077FDC8, &unk_10063C910);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_10039227C(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48, &qword_10063C8B8);
      dispatch thunk of Promise.then<A>(on:closure:)();

      sub_100058000(&qword_10077FDD0, &qword_10063BE40);
      v10 = dispatch thunk of Promise.cast<A>(as:)();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10077FDD8, &qword_10063BE50);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10077FDD8, &qword_10063BE50);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_100392618(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48, &qword_10063C8B8);
      dispatch thunk of Promise.then<A>(on:closure:)();

      sub_100058000(&qword_10077FDE0, &qword_10063BE58);
      v10 = dispatch thunk of Promise.cast<A>(as:)();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10077FDE8, &unk_10063C920);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10077FDE8, &unk_10063C920);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_1003929B4(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48, &qword_10063C8B8);
      dispatch thunk of Promise.then<A>(on:closure:)();

      sub_100058000(&qword_10077FDF0, &qword_10063BE70);
      v10 = dispatch thunk of Promise.cast<A>(as:)();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10077FDF8, &unk_10063BE80);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10077FDF8, &unk_10063BE80);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_100392D50(int a1, uint64_t a2, id a3, char a4)
{
  v5 = [a3 objectID];
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  firstly<A>(closure:)();
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v9;
  v10[4] = a2;

  v11 = zalgo.getter();
  sub_100058000(&qword_100775650, &unk_10063BD60);
  v12 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v12;
}

uint64_t sub_100392EBC(uint64_t a1, uint64_t a2, void *a3, char a4)
{

  TTRModuleState.initialLoadPromise.getter();

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  v8 = a3;
  v9 = zalgo.getter();
  v10 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v10;
}

uint64_t sub_100392FA4(int a1, uint64_t a2, id a3)
{
  v4 = [a3 objectID];
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  firstly<A>(closure:)();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = a2;

  v10 = zalgo.getter();
  sub_100058000(&qword_100775650, &unk_10063BD60);
  v11 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v11;
}

uint64_t sub_100393108(uint64_t a1, uint64_t a2, void *a3)
{

  TTRModuleState.initialLoadPromise.getter();

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a3;
  v6 = a3;
  v7 = zalgo.getter();
  v8 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v8;
}

uint64_t sub_100393220(uint64_t a1, int a2, id a3, uint64_t a4, uint64_t a5)
{
  v5 = [a3 list];

  TTRModuleState.initialLoadPromise.getter();

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = 0;
  v8 = v5;
  v9 = zalgo.getter();
  v10 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v10;
}

uint64_t sub_100393318(uint64_t a1, int a2, id a3)
{
  v3 = [a3 smartList];

  TTRModuleState.initialLoadPromise.getter();

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = v3;
  v7 = zalgo.getter();
  v8 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v8;
}

uint64_t sub_100393418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);

  TTRModuleState.initialLoadPromise.getter();

  v7 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v5 + 32))(v9 + v8, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v10 = zalgo.getter();
  v11 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v11;
}

uint64_t sub_1003935C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  v13 = (v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v17 = [a1 store];
  v18 = *(v6 + 56);
  sub_10000794C(a2, v16 + v13[7], &unk_10076BB50, &unk_10062DEA0);
  *v16 = v17;
  *(v16 + v13[8]) = v18;
  v19 = v13[9];
  v31 = *(v6 + 64);
  *(v16 + v19) = v31;
  *(v16 + v13[10]) = 0;
  type metadata accessor for TTRIShowRemindersInListAssembly();

  swift_unknownObjectRetain();
  v20 = sub_1005A9588(a5, v16, a1, a3, a4, 1);
  sub_10000B0D8(a5, v34);
  v34[40] = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *(Strong + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10062D420;
    *(v24 + 32) = v20;
    sub_100003540(0, &qword_10076AD28, UIViewController_ptr);
    v25 = v20;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v23 setViewControllers:isa animated:0];

    sub_1002FB7EC(0);
  }

  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    sub_10001A06C(a1);
  }

  sub_10000E224(v32);
  if (v33)
  {
    sub_1000079B4(v32, &unk_100792FE0, &unk_10063C8A0);
    v29 = swift_unknownObjectWeakLoadStrong();

    if (v29)
    {
      swift_unknownObjectRelease();
    }

    sub_100079664(v16);
  }

  else
  {
    sub_100079664(v16);

    sub_1000079B4(v32, &unk_100792FE0, &unk_10063C8A0);
  }

  swift_beginAccess();
  sub_100371B94(v34, v6 + 96);
  return swift_endAccess();
}

uint64_t sub_100393888@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v12);
  v14 = (&v35[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_100010540(v6 + 96, v35);
  if (v36)
  {
    sub_100015124(v35);
    v15 = [a1 store];
    v16 = v12[5];
    v17 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v17 - 8) + 56))(v14 + v16, 1, 1, v17);
    v18 = *(v6 + 56);
    *v14 = v15;
    *(v14 + v12[6]) = v18;
    v19 = v12[7];
    v34 = *(v6 + 64);
    *(v14 + v19) = v34;
    *(v14 + v12[8]) = a4 & 1;
    type metadata accessor for TTRIShowRemindersInListAssembly();

    swift_unknownObjectRetain();
    v20 = sub_1005A9588(a5, v14, a1, a2, a3, 0);
    sub_10000B0D8(a5, v35);
    v36 = 0;
    sub_1003944FC(v35, v20);

    sub_100015124(v35);
    return sub_100079664(v14);
  }

  else
  {
    sub_100005FD0(v35, &v37);
    sub_10000C36C(&v37, v38);
    swift_getObjectType();
    v22 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
    if (v22)
    {
      v23 = v22;
      v24 = [v22 objectID];
    }

    else
    {
      v24 = 0;
    }

    v25 = [a1 objectID];
    v26 = v25;
    if (v24)
    {
      if (v25)
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        static NSObject.== infix(_:_:)();
      }

      else
      {
        v26 = v24;
      }
    }

    v28 = v38;
    v27 = v39;
    sub_10000C36C(&v37, v38);
    (*(*(v27 + 8) + 40))(v28);
    v29 = *(*sub_10000C36C(&v37, v38) + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v29, v30);
    swift_getObjectType();
    dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.setList(_:advancesAfterDate:)();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      sub_1002FB7EC(1);
      v33 = sub_100341598();
      sub_10001A06C(v33);
    }

    return sub_100005FD0(&v37, a5);
  }
}

uint64_t sub_100393C18@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v10);
  v12 = (&v49[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_100010540(v4 + 96, v49);
  if (v50 != 1)
  {
    sub_100015124(v49);
LABEL_35:
    v42 = [a1 store];
    v43 = v10[5];
    v44 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v44 - 8) + 56))(v12 + v43, 1, 1, v44);
    v45 = *(v5 + 56);
    *v12 = v42;
    *(v12 + v10[6]) = v45;
    v46 = v10[7];
    v48 = *(v5 + 64);
    *(v12 + v46) = v48;
    *(v12 + v10[8]) = 0;
    type metadata accessor for TTRIShowCustomSmartListAssembly();

    swift_unknownObjectRetain();
    v47 = sub_1004F97FC(a4, v12, a1, a2, a3, 0);
    sub_10000B0D8(a4, v49);
    v50 = 1;
    sub_1003944FC(v49, v47);

    sub_100015124(v49);
    return sub_100079664(v12);
  }

  *&v48 = a4;
  sub_100005FD0(v49, &v51);
  sub_10000C36C(&v51, v52);
  swift_getObjectType();
  v13 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = [v13 smartListType];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_10000C36C(&v51, v52);
  swift_getObjectType();
  v22 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 objectID];
  }

  else
  {
    v24 = 0;
  }

  v25 = [a1 objectID];
  v26 = v25;
  if (!v24)
  {
    if (!v25)
    {
      goto LABEL_19;
    }

LABEL_33:

LABEL_34:
    sub_100004758(&v51);
    a4 = v48;
    goto LABEL_35;
  }

  if (!v25)
  {
    v26 = v24;
    goto LABEL_33;
  }

  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v27 = static NSObject.== infix(_:_:)();

  if ((v27 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_19:
  sub_10000C36C(&v51, v52);
  swift_getObjectType();
  v28 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
  if (v28)
  {
    v29 = v28;
    v30 = [v28 objectID];
  }

  else
  {
    v30 = 0;
  }

  v31 = [a1 objectID];
  v32 = v31;
  if (v30)
  {
    v33 = v48;
    if (v31)
    {
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      static NSObject.== infix(_:_:)();
    }

    else
    {
      v32 = v30;
    }
  }

  else
  {
    v33 = v48;
  }

  v34 = v52;
  v35 = v53;
  sub_10000C36C(&v51, v52);
  (*(*(v35 + 8) + 40))(v34);
  v36 = *(*sub_10000C36C(&v51, v52) + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
    swift_unknownObjectRelease();
  }

  sub_1004EF1A4(v36, v37);
  swift_getObjectType();
  dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.setSmartList(_:advancesAfterDate:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    sub_1002FB7EC(1);
    v40 = sub_100341598();
    sub_10001A06C(v40);
  }

  return sub_100005FD0(&v51, v33);
}

uint64_t sub_100394170@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v8);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_100010540(v4 + 96, v31);
  if (v32 == 2)
  {
    sub_100005FD0(v31, &v33);
    sub_10000C36C(&v33, v34);
    swift_getObjectType();
    v11 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 objectID];
    }

    else
    {
      v13 = 0;
    }

    v21 = [a1 objectID];
    v22 = v21;
    if (v13)
    {
      if (v21)
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        static NSObject.== infix(_:_:)();
      }

      else
      {
        v22 = v13;
      }
    }

    v24 = v34;
    v23 = v35;
    sub_10000C36C(&v33, v34);
    (*(*(v23 + 8) + 40))(v24);
    v25 = *(*sub_10000C36C(&v33, v34) + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v25, v26);
    swift_getObjectType();
    dispatch thunk of TTRShowGroupDataModelSourceBaseType.setGroup(_:advancesAfterDate:)();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      sub_1002FB7EC(1);
      v29 = sub_100341598();
      sub_10001A06C(v29);
    }

    return sub_100005FD0(&v33, a4);
  }

  else
  {
    sub_100015124(v31);
    v14 = [a1 store];
    v15 = v8[5];
    v16 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v16 - 8) + 56))(&v10[v15], 1, 1, v16);
    v17 = *(v4 + 56);
    *v10 = v14;
    *&v10[v8[6]] = v17;
    v18 = v8[7];
    v30 = *(v4 + 64);
    *&v10[v18] = v30;
    v10[v8[8]] = 0;
    type metadata accessor for TTRIShowGroupAssembly();

    swift_unknownObjectRetain();
    v19 = sub_1003A3078(a4, v10, a1, a2);
    sub_10000B0D8(a4, v31);
    v32 = 2;
    sub_1003944FC(v31, v19);

    sub_100015124(v31);
    return sub_100079664(v10);
  }
}

uint64_t sub_1003944FC(__int128 *a1, void *a2)
{
  swift_beginAccess();
  sub_10039829C(a1, v2 + 96);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2;
    sub_1002FB2D8(a2);
  }

  sub_10000E224(v9);
  return sub_1000079B4(v9, &unk_100792FE0, &unk_10063C8A0);
}

void sub_1003945A0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v1 = static TTRLocalizableStrings.Templates.publicTemplateDownloading.getter();
    v3 = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10048DE3C(v1, v3, Strong);
  }
}

uint64_t sub_10039464C(uint64_t a1)
{
  v1[5] = a1;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_1003946E4, v3, v2);
}

uint64_t sub_1003946E4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 72) = *(Strong + 80);

    return _swift_task_switch(sub_1003947BC, 0, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1003947BC()
{
  v1 = *(v0[9] + 16);
  v0[10] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1003948A8;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v3 = v0[7];
    v4 = v0[8];

    return _swift_task_switch(sub_1001E2124, v3, v4);
  }
}

uint64_t sub_1003948A8()
{

  return _swift_task_switch(sub_1003949A4, 0, 0);
}

uint64_t sub_1003949A4()
{
  v1 = *(v0 + 72);

  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  return _swift_task_switch(sub_1001E2124, v3, v4);
}

void sub_100394A1C(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48[1] = a6;
  v49 = a7;
  v13 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v13 - 8);
  v15 = v48 - v14;
  v16 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v16);
  v18 = (v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_100058000(&unk_10077D160, &qword_10063C8E0);
  __chkstk_darwin(v19 - 8);
  v21 = v48 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v48[0] = a8;
    swift_beginAccess();
    sub_1000EA904(a4, v21);
    swift_endAccess();
    sub_1000079B4(v21, &unk_10077D160, &qword_10063C8E0);
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      if (a2)
      {
        v26 = swift_unknownObjectWeakLoadStrong();
        if (v26)
        {
          v27 = v26;
          v28 = UIViewController.isIPadIdiom.getter();
        }

        else
        {
          v28 = 0;
        }

        v43 = sub_10010BED4(a1, v28 & 1);
        v44 = type metadata accessor for TaskPriority();
        (*(*(v44 - 8) + 56))(v15, 1, 1, v44);
        type metadata accessor for MainActor();

        v45 = v43;
        v46 = static MainActor.shared.getter();
        v47 = swift_allocObject();
        v47[2] = v46;
        v47[3] = &protocol witness table for MainActor;
        v47[4] = v23;
        v47[5] = v45;
        sub_10009E31C(0, 0, v15, &unk_10063C8F0, v47);
      }

      else
      {
        v29 = v16[5];
        v30 = type metadata accessor for TTRRemindersListViewModel.ItemID();
        (*(*(v30 - 8) + 56))(v18 + v29, 1, 1, v30);
        v31 = type metadata accessor for TTRAttachmentThumbnailSizeProvider();
        v32 = static TTRAttachmentThumbnailSizeProviding<>.remindersList.getter();
        v53[3] = v31;
        v53[4] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
        v53[0] = v32;
        sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
        static OS_dispatch_queue.main.getter();
        type metadata accessor for RDIDispatchQueue();
        static RDIDispatchQueue.utilityQueue.getter();
        v33 = type metadata accessor for TTRThumbnailGenerator();
        swift_allocObject();
        v34 = TTRThumbnailGenerator.init(queue:backgroundQueue:)();
        v51 = v33;
        v52 = &protocol witness table for TTRThumbnailGenerator;
        v50 = v34;
        type metadata accessor for TTRAttachmentThumbnailsManager();
        swift_allocObject();
        v35 = TTRAttachmentThumbnailsManager.init(thumbnailSizeProvider:thumbnailGenerator:)();
        *v18 = a5;
        v36 = *(v23 + 64);
        *(v18 + v16[6]) = v35;
        *(v18 + v16[7]) = v36;
        *(v18 + v16[8]) = 0;
        swift_unknownObjectRetain();
        v37 = a5;
        v38 = REMiCloudSharedItemSpecifier.PublicTemplate.name.getter();
        v40 = sub_10010ACF0(v53, v18, a1, v38, v39, v49);

        sub_100004758(v53);
        v41 = v25;
        v42 = UIViewController.topPresentedViewController.getter();

        [v42 presentViewController:v40 animated:1 completion:0];

        sub_100079664(v18);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100394EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100394F44, v7, v6);
}

uint64_t sub_100394F44()
{
  sub_100058000(&qword_10076B260, &unk_10062F6F0);
  sub_100058000(&unk_100775890, &qword_10063B690);
  v1 = swift_allocObject();
  *(v0 + 56) = v1;
  *(v1 + 16) = xmmword_10062D400;
  static TTRLocalizableStrings.Common.alertOKButton.getter();
  *(v0 + 72) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1003950B4;
  v3 = *(v0 + 24);

  return sub_1003951F8(v3, v1);
}

uint64_t sub_1003950B4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100223F40, v3, v2);
}

uint64_t sub_1003951F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100395294, v5, v4);
}

uint64_t sub_100395294()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1000A8258;
    v3 = v0[2];
    v4 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 10, v3, v4, 0, 0, 1, &type metadata for Bool);
  }

  else
  {

    v5 = v0[1];

    return v5(2);
  }
}

uint64_t sub_100395398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v13;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  type metadata accessor for MainActor();
  v8[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[11] = v10;
  v8[12] = v9;

  return _swift_task_switch(sub_100395440, v10, v9);
}

uint64_t sub_100395440()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = sub_100058000(&qword_100780B50, &qword_10063C8D8);
  *v3 = v0;
  v3[1] = sub_100395534;

  return TTRPotentiallyLongOperationPerformer.perform<A>(_:)(v0 + 16, &unk_10063C8D0, v2, v4);
}

uint64_t sub_100395534()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_100395678, v3, v2);
}

uint64_t sub_100395678()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1(v2, v3);
  sub_100284F88(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100395708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a1;
  v6 = type metadata accessor for UUID();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v4[17] = v7;
  *v7 = v4;
  v7[1] = sub_100395838;

  return REMStore.downloadPublicTemplate(withPublicLinkURLUUID:)(a3);
}

uint64_t sub_100395838(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_100395C74;
  }

  else
  {
    v6 = sub_100395998;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100395998()
{
  v31 = v0;

  if (qword_100767230 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100780A58);
  (*(v4 + 16))(v2, v5, v3);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v14 = v0[11];
  v13 = v0[12];
  if (v10)
  {
    v15 = v0[10];
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 136315650;
    v0[6] = v15;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = sub_100004060(v17, v18, &v30);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    (*(v13 + 8))(v12, v14);
    v23 = sub_100004060(v20, v22, &v30);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v11;
    *v29 = v11;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Downloaded public template. Will show public template. {templatePublicLinkURLUUID: %s, publicTemplateObjectID: %@}", v16, 0x20u);
    sub_1000079B4(v29, &unk_10076DF80, &qword_10062F730);

    swift_arrayDestroy();
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v25 = v0[8];
  v26 = v0[19] != 0;
  *v25 = v11;
  *(v25 + 8) = v26;

  v27 = v0[1];

  return v27();
}

uint64_t sub_100395C74()
{
  v31 = v0;

  if (qword_100767230 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100780A58);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[10];
    v29 = v0[11];
    v11 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v11 = 136315650;
    v0[5] = v10;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = sub_100004060(v12, v13, &v30);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v9 + 8))(v8, v29);
    v18 = sub_100004060(v15, v17, &v30);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    swift_getErrorValue();
    v19 = Error.rem_errorDescription.getter();
    v21 = sub_100004060(v19, v20, &v30);

    *(v11 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Failed to download public template. {templatePublicLinkURLUUID: %s, error: %s}", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[11];

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[19];
  v26 = v0[8];
  *v26 = v25;
  *(v26 + 8) = v25 != 0;

  v27 = v0[1];

  return v27();
}

void sub_100395F48(void *a1, void *a2, char a3)
{
  sub_100391414(1);
  swift_allocObject();
  swift_weakInit();
  v6 = zalgo.getter();
  sub_100058000(&qword_10077FD70, &qword_10063BDA8);
  dispatch thunk of Promise.then<A>(on:closure:)();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v8 = a1;
  v9 = a2;
  v10 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();
}

void sub_10039609C(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_1003962A4();
  sub_100391414(1);
  swift_allocObject();
  swift_weakInit();
  v6 = zalgo.getter();
  sub_100058000(&qword_10077FD70, &qword_10063BDA8);
  dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  *(v8 + v7 + v4) = !v5;
  v9 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();
}

BOOL sub_1003962A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong isCollapsed];
  }

  else
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 traitCollection];

      v6 = [v5 horizontalSizeClass];
      return v6 == 1;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_100396340(uint64_t a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = *(v1 + 32);
  swift_unknownObjectRetain();

  TTRModuleState.initialLoadPromise.getter();

  v7 = swift_allocObject();
  *(v7 + 16) = sub_10003A9B0;
  *(v7 + 24) = v6;
  swift_unknownObjectRetain();
  v8 = zalgo.getter();
  sub_100058000(&qword_10077FD70, &qword_10063BDA8);
  dispatch thunk of Promise.then<A>(on:closure:)();
  swift_unknownObjectRelease();

  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v11 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();
}

uint64_t sub_100396564(void *a1, uint64_t a2)
{
  if (sub_1003962A4())
  {
    sub_100391414(1);
    swift_allocObject();
    swift_weakInit();
    v5 = zalgo.getter();
    sub_100058000(&qword_10077FD70, &qword_10063BDA8);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  else
  {
    v6 = *(v2 + 32);
    swift_unknownObjectRetain();

    TTRModuleState.initialLoadPromise.getter();

    v7 = swift_allocObject();
    *(v7 + 16) = sub_100371EEC;
    *(v7 + 24) = v6;
    swift_unknownObjectRetain();
    v5 = zalgo.getter();
    sub_100058000(&qword_10077FD70, &qword_10063BDA8);
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();
  }

  v8 = sub_1003962A4();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = !v8;
  v10 = a1;

  v11 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();
}

uint64_t sub_100396780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 32);
    swift_unknownObjectRetain();

    TTRModuleState.initialLoadPromise.getter();

    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    *(v8 + 24) = v7;
    swift_unknownObjectRetain();
    v9 = zalgo.getter();
    sub_100058000(&qword_10077FD70, &qword_10063BDA8);
    v10 = dispatch thunk of Promise.then<A>(on:closure:)();

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = type metadata accessor for PromiseError();
    sub_10016CE9C();
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for PromiseError.abandoned(_:), v10);
    swift_willThrow();
  }

  return v10;
}

double sub_10039690C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_getObjectType();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a4;

  dispatch thunk of TTRListToCustomSmartListConverterType.convert(listID:reminders:completionHandler:)();

  return result;
}

uint64_t sub_1003969FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  sub_100010540(v3 + 96, &v29);
  sub_10000E224(v32);
  sub_100015124(&v29);
  v7 = sub_10001D354();
  if (v7)
  {
    if (v7 == 1)
    {
      sub_10000794C(v32, &v29, &unk_100792FE0, &unk_10063C8A0);
      v8 = *(&v30 + 1);
      if (*(&v30 + 1))
      {
        v9 = v31;
        sub_10000C36C(&v29, *(&v30 + 1));
        (*(v9 + 128))(&v27, a1, a2, v8, v9);
        sub_1000079B4(v32, &unk_100792FE0, &unk_10063C8A0);
        result = sub_100004758(&v29);
      }

      else
      {
        sub_1000079B4(v32, &unk_100792FE0, &unk_10063C8A0);
        result = sub_1000079B4(&v29, &unk_100792FE0, &unk_10063C8A0);
        v27 = 0u;
        v28 = 0u;
      }

      v19 = v27;
      v20 = v28;
      goto LABEL_24;
    }

    sub_10000794C(v32, &v29, &unk_100792FE0, &unk_10063C8A0);
    v17 = *(&v30 + 1);
    if (*(&v30 + 1))
    {
      v18 = v31;
      sub_10000C36C(&v29, *(&v30 + 1));
      (*(v18 + 128))(&v27, a1, a2, v17, v18);
      sub_100004758(&v29);
      if (*(&v28 + 1))
      {
        sub_1000079B4(v32, &unk_100792FE0, &unk_10063C8A0);
        result = sub_100007DD8(&v27, &v29);
LABEL_23:
        v19 = v29;
        v20 = v30;
LABEL_24:
        *a3 = v19;
        *(a3 + 16) = v20;
        return result;
      }
    }

    else
    {
      sub_1000079B4(&v29, &unk_100792FE0, &unk_10063C8A0);
      v27 = 0u;
      v28 = 0u;
    }

    v21 = *(v3 + 32);
    swift_unknownObjectRetain();

    v22 = TTRModuleState.isReady.getter();

    if (v22)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        v25 = *(v21 + 24);
        ObjectType = swift_getObjectType();
        if ((*(v25 + 8))(a1, a2, ObjectType, v25))
        {
          *(&v30 + 1) = ObjectType;
          swift_unknownObjectRelease();
          *&v29 = v24;
          result = sub_1000079B4(v32, &unk_100792FE0, &unk_10063C8A0);
          goto LABEL_21;
        }

        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
    result = sub_1000079B4(v32, &unk_100792FE0, &unk_10063C8A0);
    v29 = 0u;
    v30 = 0u;
LABEL_21:
    if (*(&v28 + 1))
    {
      result = sub_1000079B4(&v27, &qword_10076AE40, &qword_10062EE50);
    }

    goto LABEL_23;
  }

  v11 = *(v3 + 32);
  swift_unknownObjectRetain();

  v12 = TTRModuleState.isReady.getter();

  if (v12)
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = *(v11 + 24);
      v16 = swift_getObjectType();
      if ((*(v15 + 8))(a1, a2, v16, v15))
      {
        *(a3 + 24) = v16;
        swift_unknownObjectRelease();
        *a3 = v14;
        return sub_1000079B4(v32, &unk_100792FE0, &unk_10063C8A0);
      }

      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
  result = sub_1000079B4(v32, &unk_100792FE0, &unk_10063C8A0);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

char *sub_100396DCC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ([result isCollapsed])
    {
      v3 = [*&v2[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_mainNavigationController] viewControllers];
      sub_100003540(0, &qword_10076AD28, UIViewController_ptr);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v10[0] = *&v2[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController];
      __chkstk_darwin(v5);
      v9[2] = v10;
      LOBYTE(v3) = sub_10000C158(sub_1003989D8, v9, v4);

      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
    }

    swift_beginAccess();
    sub_100010540(v0 + 96, v10);
    sub_10000E224(v11);
    sub_100015124(v10);
    v6 = v12;
    if (v12)
    {
      v7 = v13;
      sub_10000C36C(v11, v12);
      v8 = (*(v7 + 104))(v6, v7);
      sub_100004758(v11);
      return v8;
    }

    sub_1000079B4(v11, &unk_100792FE0, &unk_10063C8A0);
    return 0;
  }

  return result;
}

uint64_t sub_100396F88@<X0>(uint64_t *a1@<X8>)
{
  sub_100010540(v1, v14);
  if (v15 - 2 >= 0xB)
  {
    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_3;
      }

      sub_100005FD0(v14, v12);
      sub_10000C36C(v12, v13);
      swift_getObjectType();
      v5 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
      if (v5)
      {
        *a1 = v5;
        v6 = &enum case for TTRListOrCustomSmartList.customSmartList(_:);
LABEL_11:
        v8 = *v6;
        v9 = type metadata accessor for TTRListOrCustomSmartList();
        v10 = *(v9 - 8);
        (*(v10 + 104))(a1, v8, v9);
        (*(v10 + 56))(a1, 0, 1, v9);
        return sub_100004758(v12);
      }
    }

    else
    {
      sub_100005FD0(v14, v12);
      sub_10000C36C(v12, v13);
      swift_getObjectType();
      v7 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
      if (v7)
      {
        *a1 = v7;
        v6 = &enum case for TTRListOrCustomSmartList.list(_:);
        goto LABEL_11;
      }
    }

    v11 = type metadata accessor for TTRListOrCustomSmartList();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    return sub_100004758(v12);
  }

  sub_100015124(v14);
LABEL_3:
  v3 = type metadata accessor for TTRListOrCustomSmartList();
  return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
}

void *sub_1003971A0@<X0>(uint64_t a1@<X8>)
{
  sub_100010540(v1, v10);
  switch(v11)
  {
    case 3:
      v4 = &enum case for TTRListType.PredefinedSmartListType.scheduled(_:);
      goto LABEL_10;
    case 4:
      v4 = &enum case for TTRListType.PredefinedSmartListType.flagged(_:);
      goto LABEL_10;
    case 5:
      v4 = &enum case for TTRListType.PredefinedSmartListType.all(_:);
      goto LABEL_10;
    case 6:
      v4 = &enum case for TTRListType.PredefinedSmartListType.today(_:);
      goto LABEL_10;
    case 7:
      v4 = &enum case for TTRListType.PredefinedSmartListType.assigned(_:);
      goto LABEL_10;
    case 8:
      v4 = &enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:);
      goto LABEL_10;
    case 11:
      v4 = &enum case for TTRListType.PredefinedSmartListType.completed(_:);
LABEL_10:
      v5 = *v4;
      v6 = type metadata accessor for TTRListType.PredefinedSmartListType();
      v7 = *(v6 - 8);
      (*(v7 + 104))(a1, v5, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      return sub_100015124(v10);
    case 13:
      v9 = type metadata accessor for TTRListType.PredefinedSmartListType();
      return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
    default:
      v3 = type metadata accessor for TTRListType.PredefinedSmartListType();
      (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
      return sub_100015124(v10);
  }
}

uint64_t sub_100397370(uint64_t (*a1)(uint64_t, uint64_t), __n128 a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v10 = objc_opt_self();
  v11 = [v10 ppt];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = *(a4 + 40);
  v14 = swift_unknownObjectRetain();
  v15 = a1(v14, v13);
  swift_unknownObjectRelease();
  static os_signpost_type_t.end.getter();
  v16 = [v10 ppt];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v12(v9, v6);
  return v15;
}

uint64_t sub_100397544(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a1 != 1)
  {
    v8 = objc_opt_self();
    _StringGuts.grow(_:)(43);

    v20 = 0xD000000000000028;
    v21 = 0x8000000100683D40;
    v9._countAndFlagsBits = a2;
    v9._object = a3;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 125;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v7 = 0x8000000100683D40;
    v11 = String._bridgeToObjectiveC()();

    v12 = [v8 internalErrorWithDebugDescription:v11];
LABEL_6:
    v12;

    swift_willThrow();
    return v7;
  }

  swift_beginAccess();
  sub_100010540(a4 + 96, &v20);
  sub_10000E224(&v18);
  sub_100015124(&v20);
  if (!v19)
  {
    sub_1000079B4(&v18, &unk_100792FE0, &unk_10063C8A0);
    v13 = objc_opt_self();
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v14._countAndFlagsBits = 0xD00000000000004BLL;
    v14._object = 0x8000000100683D70;
    String.append(_:)(v14);
    v15._countAndFlagsBits = a2;
    v15._object = a3;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 125;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v7 = v21;
    v11 = String._bridgeToObjectiveC()();

    v12 = [v13 internalErrorWithDebugDescription:v11];
    goto LABEL_6;
  }

  sub_100005FD0(&v18, v22);
  sub_10000B0D8(v22, &v20);
  sub_100058000(&qword_10077FD80, &unk_100648790);
  swift_allocObject();
  v7 = Promise.init(value:)();
  sub_100004758(v22);
  return v7;
}

uint64_t sub_10039778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  firstly<A>(closure:)();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;

  v9 = zalgo.getter();
  sub_100058000(&qword_100775650, &unk_10063BD60);
  v10 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v10;
}

uint64_t sub_10039788C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);

  TTRModuleState.initialLoadPromise.getter();

  v9 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v7 + 32))(v11 + v10, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v11 + v10 + v8) = a4;
  v12 = zalgo.getter();
  v13 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v13;
}

void *sub_100397A48()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();

  sub_100015124((v0 + 96));
  return v0;
}

uint64_t sub_100397AA0()
{
  sub_100397A48();

  return swift_deallocClassInstance();
}

uint64_t assignWithCopy for TTRIRootRouter.CurrentDetailContents(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = *(a1 + 40);
    if (v3 >= 0xD)
    {
      v3 = *a1 + 13;
    }

    if (v3 <= 0xC)
    {
      v4 = a2;
      sub_100004758(a1);
      a2 = v4;
    }

    v5 = *(a2 + 40);
    if (v5 >= 0xD)
    {
      v5 = *a2 + 13;
    }

    switch(v5)
    {
      case 0u:
        v6 = *(a2 + 3);
        *(a1 + 24) = v6;
        *(a1 + 32) = *(a2 + 4);
        (**(v6 - 8))(a1);
        *(a1 + 40) = 0;
        return a1;
      case 1u:
        v15 = *(a2 + 3);
        *(a1 + 24) = v15;
        *(a1 + 32) = *(a2 + 4);
        (**(v15 - 8))(a1);
        v8 = 1;
        goto LABEL_23;
      case 2u:
        v12 = *(a2 + 3);
        *(a1 + 24) = v12;
        *(a1 + 32) = *(a2 + 4);
        (**(v12 - 8))(a1);
        v8 = 2;
        goto LABEL_23;
      case 3u:
        v13 = *(a2 + 3);
        *(a1 + 24) = v13;
        *(a1 + 32) = *(a2 + 4);
        (**(v13 - 8))(a1);
        v8 = 3;
        goto LABEL_23;
      case 4u:
        v9 = *(a2 + 3);
        *(a1 + 24) = v9;
        *(a1 + 32) = *(a2 + 4);
        (**(v9 - 8))(a1);
        v8 = 4;
        goto LABEL_23;
      case 5u:
        v16 = *(a2 + 3);
        *(a1 + 24) = v16;
        *(a1 + 32) = *(a2 + 4);
        (**(v16 - 8))(a1);
        v8 = 5;
        goto LABEL_23;
      case 6u:
        v19 = *(a2 + 3);
        *(a1 + 24) = v19;
        *(a1 + 32) = *(a2 + 4);
        (**(v19 - 8))(a1);
        v8 = 6;
        goto LABEL_23;
      case 7u:
        v14 = *(a2 + 3);
        *(a1 + 24) = v14;
        *(a1 + 32) = *(a2 + 4);
        (**(v14 - 8))(a1);
        v8 = 7;
        goto LABEL_23;
      case 8u:
        v21 = *(a2 + 3);
        *(a1 + 24) = v21;
        *(a1 + 32) = *(a2 + 4);
        (**(v21 - 8))(a1);
        v8 = 8;
        goto LABEL_23;
      case 9u:
        v11 = *(a2 + 3);
        *(a1 + 24) = v11;
        *(a1 + 32) = *(a2 + 4);
        (**(v11 - 8))(a1);
        v8 = 9;
        goto LABEL_23;
      case 0xAu:
        v20 = *(a2 + 3);
        *(a1 + 24) = v20;
        *(a1 + 32) = *(a2 + 4);
        (**(v20 - 8))(a1);
        v8 = 10;
        goto LABEL_23;
      case 0xBu:
        v7 = *(a2 + 3);
        *(a1 + 24) = v7;
        *(a1 + 32) = *(a2 + 4);
        (**(v7 - 8))(a1);
        v8 = 11;
        goto LABEL_23;
      case 0xCu:
        v10 = *(a2 + 3);
        *(a1 + 24) = v10;
        *(a1 + 32) = *(a2 + 4);
        (**(v10 - 8))(a1);
        v8 = 12;
LABEL_23:
        *(a1 + 40) = v8;
        break;
      default:
        v17 = *a2;
        v18 = a2[1];
        *(a1 + 25) = *(a2 + 25);
        *a1 = v17;
        *(a1 + 16) = v18;
        break;
    }
  }

  return a1;
}

__n128 initializeWithTake for TTRIRootRouter.CurrentDetailContents(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 assignWithTake for TTRIRootRouter.CurrentDetailContents(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 0xD)
    {
      v2 = *a1 + 13;
    }

    if (v2 <= 0xC)
    {
      v3 = a1;
      v4 = a2;
      sub_100004758(a1);
      a2 = v4;
      a1 = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 0xD)
    {
      v5 = *a2 + 13;
    }

    switch(v5)
    {
      case 0u:
        result = *a2;
        v7 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v7;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 0;
        break;
      case 1u:
        result = *a2;
        v15 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v15;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 1;
        break;
      case 2u:
        result = *a2;
        v12 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v12;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 2;
        break;
      case 3u:
        result = *a2;
        v13 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v13;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 3;
        break;
      case 4u:
        result = *a2;
        v9 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v9;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 4;
        break;
      case 5u:
        result = *a2;
        v16 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v16;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 5;
        break;
      case 6u:
        result = *a2;
        v18 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v18;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 6;
        break;
      case 7u:
        result = *a2;
        v14 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v14;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 7;
        break;
      case 8u:
        result = *a2;
        v20 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v20;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 8;
        break;
      case 9u:
        result = *a2;
        v11 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v11;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 9;
        break;
      case 0xAu:
        result = *a2;
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 10;
        break;
      case 0xBu:
        result = *a2;
        v8 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v8;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 11;
        break;
      case 0xCu:
        result = *a2;
        v10 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v10;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 12;
        break;
      default:
        v17 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v17;
        result = *(a2 + 25);
        *(a1 + 25) = result;
        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIRootRouter.CurrentDetailContents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 41))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xE)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIRootRouter.CurrentDetailContents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003981A0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 0xD)
  {
    return (*a1 + 13);
  }

  return result;
}

uint64_t sub_1003981BC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 13;
    LOBYTE(a2) = 13;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1003981F4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = UIViewController.topPresentedViewController.getter();

  return v2;
}

uint64_t sub_1003982D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  (*(a4 + 40))(a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1002FB7EC(1);
    v12 = sub_100341598();
    sub_10001A06C(v12);
  }

  return (*(v6 + 8))(v9, a3);
}

void sub_1003984D4()
{
  v1 = *(type metadata accessor for REMHashtagLabelSpecifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_10044B828(v2, *(v2 + *(v1 + 64)));
}

void sub_10039863C(char *x8_0@<X8>)
{
  v4 = *(type metadata accessor for TTRListType.PredefinedSmartListType() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  sub_10044C9D8(v2 + v5, *(v2 + v5 + *(v4 + 64)), x8_0);
}

uint64_t sub_10039875C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_100395708(a1, v4, v5, v6);
}

uint64_t sub_100398810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA3C;

  return sub_100394EAC(a1, v4, v5, v7, v6);
}

uint64_t sub_10039893C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100398A0C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v4;
  if (!v5)
  {
    return;
  }

  v15[2] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_15;
      }

      v14 = a3 + v8;
      a1(v15, &v14);
      if (v6)
      {
        goto LABEL_20;
      }

      v6 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      if (v10 == ++v8)
      {
        goto LABEL_17;
      }

      if (v11 == v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
}

void sub_100398B5C(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_1004A1C8C(0, v9, 0);
    v10 = v21;
    v16 = v6 + 32;
    v11 = (a3 + 40);
    while (1)
    {
      v12 = *v11;
      v20[0] = *(v11 - 1);
      v20[1] = v12;
      v13 = v20[0];
      v18(v20);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v21 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_1004A1C8C((v14 > 1), v15 + 1, 1);
        v10 = v21;
      }

      v11 += 2;
      v10[2] = v15 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v8, v17);
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_100398D20(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13[2] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
LABEL_18:

      __break(1u);
      return;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v10 = *(a3 + 8 * j + 32);
      }

      v4 = v10;
      v12 = v10;
      a1(v13, &v12);
      if (v5)
      {
        goto LABEL_18;
      }

      v5 = 0;

      v4 = v13[0];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_100398E94(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_100058000(&qword_10076BDF0, &qword_10062FF78);
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v15 - v7;
  v9 = *(a3 + 16);
  if (v9)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_1004A20F4(0, v9, 0);
    v10 = v21;
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = a3 + v17;
    v16 = (v6 + 32);
    v12 = *(v6 + 72);
    while (1)
    {
      v19(v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_1004A20F4((v13 > 1), v14 + 1, 1);
        v10 = v21;
      }

      v10[2] = v14 + 1;
      (*v16)(v10 + v17 + v14 * v12, v8, v18);
      v11 += v12;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_100399058(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_100058000(&qword_10076BDF0, &qword_10062FF78);
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v15 - v7;
  v9 = *(a3 + 16);
  if (v9)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_1004A20F4(0, v9, 0);
    v10 = v21;
    v11 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option() - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = v6 + 32;
    v16 = *(v11 + 72);
    while (1)
    {
      v19(v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_1004A20F4((v13 > 1), v14 + 1, 1);
        v10 = v21;
      }

      v10[2] = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v18);
      v12 += v16;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_100399264(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v11[2] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = *(type metadata accessor for TTRReminderSwipeAction() - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(v11, v9);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += v10;
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1003993A8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v42 = a2;
  v40 = sub_100058000(&qword_10076E8E0, &unk_100631E00);
  __chkstk_darwin(v40);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = v31 - v8;
  v38 = type metadata accessor for TTRRemindersListTreeViewModel.SectionsContainer();
  v9 = *(v38 - 8);
  __chkstk_darwin(v38);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (v12)
  {
    v43 = v3;
    v37 = v6;
    v44 = _swiftEmptyArrayStorage;
    sub_1004A229C(0, v12, 0);
    v13 = v44;
    v14 = 0;
    v36 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
    v15 = *(v36 - 8);
    v16 = *(v15 + 16);
    v34 = v15 + 16;
    v35 = v16;
    v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v32 = v12;
    v33 = (v15 + 32);
    v31[0] = *(v15 + 72);
    v31[1] = v9 + 32;
    while (1)
    {
      v18 = v13;
      v19 = v9;
      v20 = v11;
      v22 = v39;
      v21 = v40;
      v23 = *(v40 + 48);
      v24 = v36;
      v35(&v39[v23], v17, v36);
      v25 = v37;
      *v37 = v14;
      v26 = &v22[v23];
      v27 = v25;
      (*v33)(&v25[*(v21 + 48)], v26, v24);
      v11 = v20;
      v28 = v43;
      v41(v27);
      v43 = v28;
      if (v28)
      {
        break;
      }

      sub_1000079B4(v27, &qword_10076E8E0, &unk_100631E00);
      v13 = v18;
      v44 = v18;
      v30 = v18[2];
      v29 = v18[3];
      if (v30 >= v29 >> 1)
      {
        sub_1004A229C((v29 > 1), v30 + 1, 1);
        v13 = v44;
      }

      ++v14;
      v13[2] = v30 + 1;
      v9 = v19;
      (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v30, v11, v38);
      v17 += v31[0];
      if (v32 == v14)
      {
        return;
      }
    }

    sub_1000079B4(v27, &qword_10076E8E0, &unk_100631E00);

    __break(1u);
  }
}

void sub_1003996D0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v24 = a2;
  v22 = type metadata accessor for IndexPath();
  v25 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a4;
  v9 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    return;
  }

  v29 = _swiftEmptyArrayStorage;
  sub_1004A1DB4(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v27 = v4;
    v10 = 0;
    v11 = v29;
    v12 = v26;
    if (v26 <= a3)
    {
      v12 = a3;
    }

    v20 = v12 - a3 + 1;
    v21 = v25 + 32;
    while (v10 < v9)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_17;
      }

      v28 = a3 + v10;
      v14 = v8;
      v15 = v27;
      v23(&v28);
      v27 = v15;
      if (v15)
      {
        goto LABEL_22;
      }

      v29 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_1004A1DB4((v16 > 1), v17 + 1, 1);
        v11 = v29;
      }

      v11[2] = v17 + 1;
      v18 = v11 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v17;
      v8 = v14;
      (*(v25 + 32))(v18, v14, v22);
      if (v26 < a3)
      {
        goto LABEL_18;
      }

      if (v20 == ++v10)
      {
        goto LABEL_19;
      }

      if (v13 == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
}

void sub_100399908(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_1004A22E0(0, v9, 0);
    v10 = v21;
    v11 = *(type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group() - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = v6 + 32;
    v16 = *(v11 + 72);
    while (1)
    {
      v19(v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_1004A22E0((v13 > 1), v14 + 1, 1);
        v10 = v21;
      }

      v10[2] = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v18);
      v12 += v16;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_100399B0C(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v11[1] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    for (i = (a3 + 16 * v6 + 24); ; i -= 2)
    {
      v9 = *i;
      v10[0] = *(i - 1);
      v10[1] = v9;

      (a1)(v11, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      --v6;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100399C20(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076BDB8, &qword_10062FF58);
  __chkstk_darwin(v9 - 8);
  v34 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  v17 = sub_100058000(&qword_10076BDC8, &unk_100649EF0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v28 - v19;
  v21 = sub_10039B7CC(a1);
  sub_10039A0BC(v21 & 1);
  v22 = OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView_menu;
  swift_beginAccess();
  sub_10039BAA0(v2 + v22, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_1000079B4(v16, &qword_10076BDB8, &qword_10062FF58);
  }

  (*(v18 + 32))(v20, v16, v17);
  (*(v29 + 16))(v6, a1, v30);
  v24 = v31;
  TTRAccountsListsViewModel.HashtagFilterOperation.Option.init(selection:)();
  v25 = TTRValueBasedMenu.children.getter();
  __chkstk_darwin(v25);
  *(&v28 - 2) = v24;
  sub_100398E94(sub_10039BB10, (&v28 - 4), v25);

  sub_10039BCB0(&unk_10076BDD0, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option, &protocol conformance descriptor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
  v26 = v33;
  TTRValueBasedMenu.init(children:)();
  (*(v32 + 8))(v24, v26);
  (*(v18 + 56))(v13, 0, 1, v17);
  v27 = v34;
  sub_10039BAA0(v2 + v22, v34);
  swift_beginAccess();
  sub_10039BB30(v13, v2 + v22);
  swift_endAccess();
  sub_10039A538(v27);
  sub_1000079B4(v27, &qword_10076BDB8, &qword_10062FF58);
  sub_1000079B4(v13, &qword_10076BDB8, &qword_10062FF58);
  return (*(v18 + 8))(v20, v17);
}

id sub_10039A0BC(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchTime();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10039A940();
  v15 = [v14 isHidden];

  if (v15)
  {
    if ((a1 & 1) == 0)
    {
      v16 = static TTRAccesibility.General.Announcements.MoreOptionsShown.getter();
      v18 = v17;
      v19 = 0;
      goto LABEL_9;
    }

    v16 = 0;
    v18 = 0;
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      v19 = 0;
      v16 = 0;
      v18 = 0;
      goto LABEL_9;
    }

    v16 = static TTRAccesibility.General.Announcements.FewerOptionsShown.getter();
    v18 = v20;
  }

  v19 = 1;
LABEL_9:
  result = [*(v1 + OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton) setHidden:v19];
  if (v18)
  {
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v30 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v29 = v13;
    v31 = *(v8 + 8);
    v31(v10, v35);
    v22 = swift_allocObject();
    *(v22 + 16) = v16;
    *(v22 + 24) = v18;
    aBlock[4] = sub_10039B328;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001047C;
    aBlock[3] = &unk_100724970;
    v23 = _Block_copy(aBlock);

    v24 = v33;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10039BCB0(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100058000(&qword_100780A50, &qword_100635D30);
    v25 = v32;
    v28 = v6;
    sub_10000E188(&qword_10076B7E0, &qword_100780A50, &qword_100635D30, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v29;
    v26 = v30;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v23);

    (*(v4 + 8))(v25, v3);
    (*(v34 + 8))(v24, v28);
    return (v31)(v27, v35);
  }

  return result;
}

void sub_10039A538(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076BDC8, &unk_100649EF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v27[-v6];
  v7 = sub_100058000(&qword_10076BDB8, &qword_10062FF58);
  __chkstk_darwin(v7 - 8);
  v9 = &v27[-v8];
  v10 = sub_100058000(&qword_100780BA0, &qword_10063C9B0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v27[-v12];
  v14 = OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView_menu;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_10039BAA0(&v2[v14], v13);
  sub_10039BAA0(a1, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1000079B4(v13, &qword_10076BDB8, &qword_10062FF58);
      return;
    }
  }

  else
  {
    sub_10039BAA0(v13, v9);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = *(v5 + 32);
      v20 = &v13[v15];
      v21 = v5;
      v22 = v30;
      v19(v30, v20, v4);
      sub_10000E188(&qword_100780BA8, &qword_10076BDC8, &unk_100649EF0, &protocol conformance descriptor for TTRValueBasedMenu<A>);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = v21;
      v23 = *(v21 + 8);
      v23(v22, v4);
      v23(v9, v4);
      sub_1000079B4(v13, &qword_10076BDB8, &qword_10062FF58);
      if (v28)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v9, v4);
  }

  v29 = v5;
  sub_1000079B4(v13, &qword_100780BA0, &qword_10063C9B0);
LABEL_7:
  v17 = sub_10039A940();
  if (v16(&v2[v14], 1, v4))
  {
    v18 = 0;
  }

  else
  {
    v25 = v29;
    v24 = v30;
    (*(v29 + 16))(v30, &v2[v14], v4);
    *(swift_allocObject() + 16) = v2;
    v26 = v2;
    v18 = TTRValueBasedMenu.buildMenu(selectionHandler:)();

    (*(v25 + 8))(v24, v4);
  }

  [v17 setMenu:v18];
}

id sub_10039A940()
{
  v1 = OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton);
  }

  else
  {
    v4 = sub_10039AE6C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10039A9A0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_1000FCD64(a1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10039AA24()
{
  v0 = UIAccessibilityAnnouncementNotification;
  v1 = String._bridgeToObjectiveC()();
  UIAccessibilityPostNotification(v0, v1);
}

char *sub_10039AA7C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView_menu;
  v6 = sub_100058000(&qword_10076BDC8, &unk_100649EF0);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  *&v2[OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v19.receiver = v2;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, "initWithReuseIdentifier:", v7);

  v9 = *&v8[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView];
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006322B0;
  v11 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView;
  v12 = *&v8[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView];
  *(v10 + 32) = v12;
  v13 = v8;
  v14 = v9;
  v15 = v12;
  *(v10 + 40) = sub_10039A940();
  *(v10 + 48) = sub_10039BBA8();
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setArrangedSubviews:isa];

  [*&v13[OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton] setCustomAlignmentRectInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v17 = *&v8[v11];

  [v17 setIsAccessibilityElement:0];
  sub_10039AC90();

  return v13;
}

id sub_10039AC90()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [v4 setAxis:v3 & 1];

  return [v4 setAlignment:v5];
}

void *sub_10039AE6C()
{
  v0 = sub_100058000(&qword_100769CF8, &qword_10062E8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for UIButton.Configuration.Size();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  static UIButton.Configuration.plain()();
  (*(v4 + 104))(v6, enum case for UIButton.Configuration.Size.small(_:), v3);
  UIButton.Configuration.buttonSize.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v14 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v14 - 8) + 56))(v2, 0, 1, v14);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  sub_100003540(0, &unk_10077A690, UIButton_ptr);
  (*(v8 + 16))(v10, v13, v7);
  v15 = UIButton.init(configuration:primaryAction:)();
  [v15 setChangesSelectionAsPrimaryAction:1];
  [v15 setShowsMenuAsPrimaryAction:1];
  (*(v8 + 8))(v13, v7);
  return v15;
}

void sub_10039B12C()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView_menu, &qword_10076BDB8, &qword_10062FF58);
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton);
}

uint64_t type metadata accessor for TTRIAccountsListsTagsSectionHeaderView(uint64_t a1)
{
  result = qword_100780B88;
  if (!qword_100780B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10039B22C(uint64_t a1)
{
  sub_10039B2C4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10039B2C4(uint64_t a1)
{
  if (!qword_100780B98)
  {
    sub_10005D20C(&qword_10076BDC8, &unk_100649EF0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100780B98);
    }
  }
}

uint64_t sub_10039B330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v32 = a2;
  v4 = sub_100058000(&qword_10076BDE8, &qword_10062FF70);
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v36 = &v27 - v5;
  v33 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100780BB0, &qword_10063C9B8);
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = sub_100058000(&qword_10076BDF0, &qword_10062FF78);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = *(v11 + 16);
  v15(&v27 - v13, a1, v10, v12);
  v16 = (*(v11 + 88))(v14, v10);
  if (v16 == enum case for TTRValueBasedMenuElement.item<A>(_:))
  {
    v17 = *(v11 + 96);
    v29 = v16;
    v17(v14, v10);
    (*(v37 + 32))(v9, v14, v7);
    v18 = v30;
    TTRValueBasedMenuItem.value.getter();
    v28 = &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option;
    sub_10039BCB0(&qword_100780BB8, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option, &protocol conformance descriptor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
    v19 = v33;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v31 + 8))(v18, v19);
    v20 = v40;
    v21 = v39;
    v22 = TTRValueBasedMenuItem.title.getter();
    v31 = v23;
    v32 = v22;
    v24 = &enum case for TTRValueBasedMenuItem.SelectionState.on<A>(_:);
    if (v20 != v21)
    {
      v24 = &enum case for TTRValueBasedMenuItem.SelectionState.off<A>(_:);
    }

    (*(v34 + 104))(v36, *v24, v35);
    TTRValueBasedMenuItem.value.getter();
    sub_10039BCB0(&unk_10076BDD0, v28, &protocol conformance descriptor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
    v25 = v38;
    TTRValueBasedMenuItem.init(title:image:state:value:)();
    (*(v37 + 8))(v9, v7);
    return (*(v11 + 104))(v25, v29, v10);
  }

  else if (v16 == enum case for TTRValueBasedMenuElement.separator<A>(_:))
  {
    return (v15)(v38, a1, v10);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10039B7CC(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v10 = __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = *(v3 + 16);
  v13(&v22 - v11, a1, v2, v10);
  v14 = *(v3 + 88);
  v15 = v14(v12, v2);
  if (v15 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v15 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {
    return 1;
  }

  (v13)(v8, v12, v2);
  static REMHashtagLabelSpecifier.empty.getter();
  sub_10039BCB0(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier, &protocol conformance descriptor for REMHashtagLabelSpecifier);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v3 + 8);
  v19(v5, v2);
  v19(v8, v2);
  if (v18)
  {
    v19(v12, v2);
    return 1;
  }

  else if (v14(v12, v2) == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v3 + 96))(v12, v2);

    v20 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
    v21 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v21 - 8) + 8))(&v12[v20], v21);
    return 0;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10039BAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BDB8, &qword_10062FF58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10039BB30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BDB8, &qword_10062FF58);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_10039BBA8()
{
  v0 = [objc_allocWithZone(UIView) init];
  type metadata accessor for UILayoutPriority(0);
  sub_10039BCB0(&unk_10077A6B0, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v1) = v4;
  [v0 setContentHuggingPriority:0 forAxis:v1];
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v2) = v4;
  [v0 setContentCompressionResistancePriority:0 forAxis:v2];
  return v0;
}

uint64_t sub_10039BCB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10039BCF8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(TTRUndoManager);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithDebugIdentifier:v5];

  type metadata accessor for TTREditTodaySectionsInteractor();
  swift_allocObject();
  v7 = v6;
  v8 = a1;
  TTREditTodaySectionsInteractor.init(store:undoManager:)();
  type metadata accessor for TTRIEditTodaySectionsRouter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_10039C020();
  type metadata accessor for TTREditTodaySectionsPresenter();
  swift_allocObject();
  v9 = v7;

  v10 = TTREditTodaySectionsPresenter.init(interactor:router:undoManager:needsDiscardChangesConfirmation:)();
  type metadata accessor for TTREditTodaySectionsModelObject();
  swift_allocObject();
  TTREditTodaySectionsModelObject.init()();

  State.init(wrappedValue:)();
  v11 = (objc_allocWithZone(type metadata accessor for TTRIEditTodaySectionsHostingController(0)) + qword_1007861D0);
  *v11 = v10;
  v11[1] = &protocol witness table for TTREditTodaySectionsPresenter;

  swift_retain_n();

  v12 = TTRIHostingControllerWithCustomUndo.init(rootView:undoManager:)();
  v13 = objc_allocWithZone(UINavigationController);
  v14 = v12;
  v15 = [v13 initWithRootViewController:v14];

  TTREditTodaySectionsInteractor.delegate.setter();

  TTREditTodaySectionsPresenter.delegate.setter();
  swift_unknownObjectRetain();
  TTREditTodaySectionsPresenter.moduleDelegate.setter();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  v16 = v15;
  v17 = [v16 presentationController];
  if (v17)
  {
    v18 = v17;
    [v17 setDelegate:v14];
  }

  TTREditTodaySectionsInteractor.start()();

  return v16;
}

unint64_t sub_10039C020()
{
  result = qword_100780BC0;
  if (!qword_100780BC0)
  {
    type metadata accessor for TTRIEditTodaySectionsRouter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780BC0);
  }

  return result;
}

uint64_t sub_10039C078(void *a1)
{
  v2 = v1;
  v4 = swift_isaMask & *a1;
  if ([v2 localContext])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    type metadata accessor for TTRIAnyTreeViewDragSessionContext(0, *(v4 + 80), *(v4 + 88), v5);
    if (swift_dynamicCast())
    {
      result = v7;
      if (*(v7 + qword_1007A8800) == a1)
      {
        return result;
      }
    }
  }

  else
  {
    sub_1000079B4(v10, &qword_10076AE40, &qword_10062EE50);
  }

  return 0;
}

uint64_t sub_10039C1A0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100780BD0);
  v1 = sub_100003E30(v0, qword_100780BD0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10039C268(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(qword_100780EF0, &qword_10063CB80);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for TTRITreeViewDropProposal(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a2, v11, qword_100780EF0, &qword_10063CB80);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000079B4(v11, qword_100780EF0, &qword_10063CB80);
  }

  else
  {
    sub_10039FF24(v11, v15, type metadata accessor for TTRITreeViewDropProposal);
    if (sub_10039D2C4(a1))
    {
      sub_1000079B4(a2, qword_100780EF0, &qword_10063CB80);

      sub_10039FF24(v15, a3, type metadata accessor for TTRITreeViewDropProposal);
      return;
    }

    sub_10039FE60(v15);
  }

  v16 = [a1 intent];
  if (v16 >= 4)
  {
    if (qword_100767238 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003E30(v20, qword_100780BD0);
    v21 = sub_100008E04(_swiftEmptyArrayStorage);
    v22 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("unknown intent", 14, 2uLL, v21, v22);
    __break(1u);
  }

  else
  {
    v17 = v16;
    v18 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
    (*(*(v18 - 8) + 56))(v8, (v17 + 1), 4, v18);
    v19 = [a1 operation];

    sub_1000079B4(a2, qword_100780EF0, &qword_10063CB80);
    sub_10039FF24(v8, a3 + *(v12 + 20), type metadata accessor for TTRITreeViewDropProposal.Intent);
    *a3 = v19;
  }
}

uint64_t sub_10039C5CC()
{
  sub_10039FE60(v0 + qword_1007A8670);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10039C614()
{
  sub_10039C5CC();

  return swift_deallocClassInstance();
}

uint64_t sub_10039C66C(uint64_t a1)
{
  v2 = *v1;
  v3 = swift_isaMask;
  swift_beginAccess();
  type metadata accessor for TTRITreeViewDropUpdateCoordinator(0, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v4);
  Dictionary.subscript.getter();
  swift_endAccess();
  return v6;
}

uint64_t sub_10039C754(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_10039F250(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

id sub_10039C7D0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v7 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v43 = type metadata accessor for TTRITreeViewDropProposal(0);
  __chkstk_darwin(v43);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_100780EE0, &unk_10063CB70);
  __chkstk_darwin(v14 - 8);
  v16 = (&v41 - v15);
  *(v3 + qword_100780CB8) = a2;
  swift_unknownObjectRelease();
  v17 = swift_unknownObjectRetain();
  v18 = sub_10039C66C(v17);
  if (!v18)
  {
    v18 = sub_10039CC8C(v3, a2);
  }

  v19 = v18;
  v20 = sub_100058000(qword_100771F18, &qword_100634320);
  v21 = *(v20 + 64);
  *v16 = a2;
  v16[1] = a1;
  sub_10000794C(a3, v16 + v21, &unk_100771B10, qword_10062E540);
  v22 = *(v20 - 8);
  v23 = *(v22 + 56);
  v44 = v20;
  v41 = v22 + 56;
  v42 = v23;
  v23(v16, 0, 1, v20);
  v24 = qword_1007A84A0;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v25 = a1;
  sub_10039FDF0(v16, v19 + v24);
  swift_endAccess();
  v26 = *(v3 + qword_100780C98);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    v29 = sub_1001893F4();

    v26(v29, v19);
    v43 = *(v43 + 20);
    sub_10039FEBC(&v13[v43], v11, type metadata accessor for TTRITreeViewDropProposal.Intent);
    v30 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
    v31 = v13;
    v32 = *(*(v30 - 8) + 48);
    v33 = v32(v11, 4, v30);
    v34 = v31;
    if ((v33 - 2) >= 3)
    {
      if (!v33)
      {
        v35 = type metadata accessor for IndexPath();
        (*(*(v35 - 8) + 8))(v11, v35);
      }
    }

    else
    {
      sub_10015A8D8(v19, v31);
    }

    sub_1001BF42C(v31);
    sub_1001BF6C8();
    v42(v16, 1, 1, v44);
    swift_beginAccess();
    sub_10039FDF0(v16, v19 + v24);
    swift_endAccess();
    v36 = v45;
    sub_10039FEBC(v31 + v43, v45, type metadata accessor for TTRITreeViewDropProposal.Intent);
    v37 = v32(v36, 4, v30);
    if (v37 <= 1)
    {
      v38 = 0;
      if (!v37)
      {
        v39 = type metadata accessor for IndexPath();
        (*(*(v39 - 8) + 8))(v36, v39);
        v38 = 0;
      }
    }

    else if (v37 == 2)
    {
      v38 = 1;
    }

    else if (v37 == 3)
    {
      v38 = 2;
    }

    else
    {
      v38 = 3;
    }

    v40 = [objc_allocWithZone(UITableViewDropProposal) initWithDropOperation:*v34 intent:v38];

    sub_10039FE60(v34);
    return v40;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10039CC8C(void *a1, uint64_t a2)
{
  v3 = swift_isaMask & *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    type metadata accessor for TTRITreeViewDropUpdateCoordinator(0, *(v3 + 80), *(v3 + 88), v5);
    v7 = sub_1001B7764(v6);

    sub_10039CD48(v8, a2);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10039CD48(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = swift_isaMask;
  swift_beginAccess();
  type metadata accessor for TTRITreeViewDropUpdateCoordinator(255, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v5);
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  return swift_endAccess();
}

id sub_10039CE24(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (a5)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a3;
  swift_unknownObjectRetain();
  v15 = a1;
  v16 = sub_10039C7D0(v14, a4, v11);

  swift_unknownObjectRelease();
  sub_1000079B4(v11, &unk_100771B10, qword_10062E540);

  return v16;
}

void sub_10039CFCC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

id sub_10039D050(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v12 = sub_10039FB74(v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

double sub_10039D1A0(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();

  return result;
}

BOOL sub_10039D2C4(void *a1)
{
  v3 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRITreeViewDropProposal(0);
  sub_10039FEBC(v1 + *(v6 + 20), v5, type metadata accessor for TTRITreeViewDropProposal.Intent);
  v7 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v8 = (*(*(v7 - 8) + 48))(v5, 4, v7);
  if (v8 <= 1)
  {
    v10 = 0;
    if (!v8)
    {
      v11 = type metadata accessor for IndexPath();
      (*(*(v11 - 8) + 8))(v5, v11);
      v10 = 0;
    }
  }

  else
  {
    v9 = 2;
    if (v8 != 3)
    {
      v9 = 3;
    }

    if (v8 == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }
  }

  v12 = [objc_allocWithZone(UITableViewDropProposal) initWithDropOperation:*v1 intent:v10];
  v13 = [v12 operation];
  if (v13 == [a1 operation])
  {
    v14 = [v12 intent];
    v15 = [a1 intent];

    return v14 == v15;
  }

  else
  {

    return 0;
  }
}

uint64_t UIDropOperation.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 1702260589;
      }

      return 63;
    }

    return 2037411683;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6564646962726F66;
      }

      return 63;
    }

    return 0x6C65636E6163;
  }
}

uint64_t sub_10039D51C(uint64_t a1)
{
  result = type metadata accessor for TTRITreeViewDropProposal(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_10039D698(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = *(a3 + 20);
    v7 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(&a2[v6], 4, v7))
    {
      v9 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
      memcpy(&v4[v6], &a2[v6], *(*(v9 - 8) + 64));
    }

    else
    {
      v11 = type metadata accessor for IndexPath();
      (*(*(v11 - 8) + 16))(&v4[v6], &a2[v6], v11);
      (*(v8 + 56))(&v4[v6], 0, 4, v7);
    }
  }

  return v4;
}

uint64_t sub_10039D834(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  result = (*(*(v4 - 8) + 48))(a1 + v3, 4, v4);
  if (!result)
  {
    v6 = type metadata accessor for IndexPath();
    v7 = *(*(v6 - 8) + 8);

    return v7(a1 + v3, v6);
  }

  return result;
}

char *sub_10039D8F4(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 4, v6))
  {
    v8 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for IndexPath();
    (*(*(v9 - 8) + 16))(&a1[v5], &a2[v5], v9);
    (*(v7 + 56))(&a1[v5], 0, 4, v6);
  }

  return a1;
}

char *sub_10039DA24(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 4, v6);
  v10 = v8(&a2[v5], 4, v6);
  if (!v9)
  {
    if (!v10)
    {
      v14 = type metadata accessor for IndexPath();
      (*(*(v14 - 8) + 24))(&a1[v5], &a2[v5], v14);
      return a1;
    }

    sub_1000079B4(&a1[v5], &qword_100780DC0, &unk_1006344C0);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
    memcpy(&a1[v5], &a2[v5], *(*(v12 - 8) + 64));
    return a1;
  }

  v11 = type metadata accessor for IndexPath();
  (*(*(v11 - 8) + 16))(&a1[v5], &a2[v5], v11);
  (*(v7 + 56))(&a1[v5], 0, 4, v6);
  return a1;
}

char *sub_10039DBD8(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 4, v6))
  {
    v8 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for IndexPath();
    (*(*(v9 - 8) + 32))(&a1[v5], &a2[v5], v9);
    (*(v7 + 56))(&a1[v5], 0, 4, v6);
  }

  return a1;
}

char *sub_10039DD08(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 4, v6);
  v10 = v8(&a2[v5], 4, v6);
  if (!v9)
  {
    if (!v10)
    {
      v14 = type metadata accessor for IndexPath();
      (*(*(v14 - 8) + 40))(&a1[v5], &a2[v5], v14);
      return a1;
    }

    sub_1000079B4(&a1[v5], &qword_100780DC0, &unk_1006344C0);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
    memcpy(&a1[v5], &a2[v5], *(*(v12 - 8) + 64));
    return a1;
  }

  v11 = type metadata accessor for IndexPath();
  (*(*(v11 - 8) + 32))(&a1[v5], &a2[v5], v11);
  (*(v7 + 56))(&a1[v5], 0, 4, v6);
  return a1;
}

uint64_t sub_10039DEE4(uint64_t a1)
{
  result = type metadata accessor for TTRITreeViewDropProposal.Intent(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_10039DF80(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 4, v7))
  {
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    (*(v8 + 56))(a1, 0, 4, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_10039E110(uint64_t a1)
{
  v2 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  result = (*(*(v2 - 8) + 48))(a1, 4, v2);
  if (!result)
  {
    v4 = type metadata accessor for IndexPath();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *sub_10039E1CC(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 4, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 4, v6);
    return a1;
  }
}

void *sub_10039E320(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 4, v6);
  v10 = v8(a2, 4, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for IndexPath();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 4, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for IndexPath();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      return a1;
    }

    sub_1000079B4(a1, &qword_100780DC0, &unk_1006344C0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *sub_10039E4FC(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 4, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 4, v6);
    return a1;
  }
}

void *sub_10039E650(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 4, v6);
  v10 = v8(a2, 4, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for IndexPath();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 4, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for IndexPath();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      return a1;
    }

    sub_1000079B4(a1, &qword_100780DC0, &unk_1006344C0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_10039E854(uint64_t a1)
{
  v2 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 4, v2);
}

uint64_t sub_10039E8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 4, v4);
}

uint64_t sub_10039E944(uint64_t a1)
{
  result = type metadata accessor for IndexPath();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

unint64_t sub_10039E9BC()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10039FEBC(v1, v8, type metadata accessor for TTRITreeViewDropProposal.Intent);
  v9 = sub_100058000(&qword_100780DC0, &unk_1006344C0);
  v10 = (*(*(v9 - 8) + 48))(v8, 4, v9);
  if (v10 <= 1)
  {
    if (v10)
    {
      return 0x6669636570736E75;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v14 = 0;
      v15 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v14 = 0xD000000000000013;
      v15 = 0x8000000100684070;
      sub_10039EDAC();
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13 = v14;
      (*(v3 + 8))(v5, v2);
      return v13;
    }
  }

  else if (v10 == 2)
  {
    return 0x747265736E69;
  }

  else if (v10 == 3)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t sub_10039EC4C()
{
  _StringGuts.grow(_:)(27);

  strcpy(v9, "(operation: ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = 0xE400000000000000;
      v3 = 2037411683;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 0xE400000000000000;
      v3 = 1702260589;
      goto LABEL_11;
    }

LABEL_8:
    v2 = 0xE100000000000000;
    v3 = 63;
    goto LABEL_11;
  }

  if (!v1)
  {
    v2 = 0xE600000000000000;
    v3 = 0x6C65636E6163;
    goto LABEL_11;
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 0xE90000000000006ELL;
  v3 = 0x6564646962726F66;
LABEL_11:
  v4 = v2;
  String.append(_:)(*&v3);

  v5._countAndFlagsBits = 0x746E65746E69202CLL;
  v5._object = 0xEA0000000000203ALL;
  String.append(_:)(v5);
  type metadata accessor for TTRITreeViewDropProposal(0);
  v6._countAndFlagsBits = sub_10039E9BC();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9[0];
}

unint64_t sub_10039EDAC()
{
  result = qword_1007720C0;
  if (!qword_1007720C0)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007720C0);
  }

  return result;
}

uint64_t sub_10039EE04(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_100058000(qword_100780EF0, &qword_10063CB80);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TTRITreeViewDropProposal(0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v3 + qword_100780BE8) = a1;
  *(v3 + qword_100780BF0) = a2;
  swift_unknownObjectRetain();
  v13 = a2;
  v14 = [a1 proposal];
  sub_10000794C(a3, v9, qword_100780EF0, &qword_10063CB80);
  sub_10039C268(v14, v9, v12);
  sub_1000079B4(a3, qword_100780EF0, &qword_10063CB80);
  sub_10039FF24(v12, v3 + qword_1007A8670, type metadata accessor for TTRITreeViewDropProposal);
  return v3;
}

void *sub_10039EF80(void *a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v5 = sub_100058000(qword_100780EF0, &qword_10063CB80);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for TTRITreeViewDropProposal(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v13 = sub_10039C66C([a1 session]);
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_1001BFC50();
    sub_1000079B4(v10, qword_100780EF0, &qword_10063CB80);
    v14 = qword_1007A8498;
    swift_beginAccess();
    sub_10039FEBC(v13 + v14, v10, type metadata accessor for TTRITreeViewDropProposal);

    v12(v10, 0, 1, v11);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    type metadata accessor for TTRITreeViewDropCoordinator(0, *(v4 + 80), *(v4 + 88), v16);
    sub_10000794C(v10, v7, qword_100780EF0, &qword_10063CB80);
    swift_allocObject();
    v18 = swift_unknownObjectRetain();
    v19 = sub_10039EE04(v18, v17, v7);
    swift_unknownObjectRelease();

    v20 = *(v2 + qword_100780C80);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v21 = result;
      v22 = sub_1001893F4();

      v20(v22, v19);

      return sub_1000079B4(v10, qword_100780EF0, &qword_10063CB80);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10039F250(uint64_t a1)
{
  v3 = *(v1 + qword_100780C88);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1001893F4();

    v7 = v3(v6, a1);
    return (v7 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10039F2D8(uint64_t a1)
{
  *(v1 + qword_100780CB8) = a1;
  swift_unknownObjectRelease();
  v3 = *(v1 + qword_100780C90);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1001893F4();
    swift_unknownObjectRetain();

    v3(v6, a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_10039F384(uint64_t a1)
{
  v3 = *(v1 + qword_100780CA0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1001893F4();

    v3(v6, a1);
    if (sub_10039C66C(a1))
    {
      sub_1001BF48C();
      sub_1001BFC50();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10039F44C(void *a1)
{
  v3 = *((swift_isaMask & *v1) + 0x50);
  v57 = type metadata accessor for Optional();
  v65 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = v50 - v4;
  v60 = *(v3 - 8);
  __chkstk_darwin(v5);
  v7 = v50 - v6;
  v66 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v64 = v50 - v9;
  v10 = type metadata accessor for Optional();
  __chkstk_darwin(v10 - 8);
  v67 = v50 - v11;
  v68 = v1;
  v12 = *(v1 + qword_100780CA8);
  v13 = qword_100780C78;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = Strong;
  v16 = sub_1001893F4();

  v12(v16, a1);
  if (sub_10039C66C(a1))
  {
    sub_1001BFC50();
  }

  v17 = [a1 localDragSession];
  v18 = v64;
  if (!v17)
  {
LABEL_32:
    v49 = v68;
    sub_10039CD48(0, a1);
    *(v49 + qword_100780CB8) = 0;
    swift_unknownObjectRelease();
    return;
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = sub_1001893F4();

    v22 = sub_10039C078(v21);
    swift_unknownObjectRelease();

    if (v22)
    {
      v23 = qword_1007A8810;
      swift_beginAccess();
      v50[2] = v22;
      v24 = *(v22 + v23);
      v51 = a1;
      v55 = v7;
      if ((v24 & 0xC000000000000001) != 0)
      {

        __CocoaSet.makeIterator()();
        swift_getAssociatedConformanceWitness();
        Set.Iterator.init(_cocoa:)();
        v24 = v69;
        v25 = v70;
        v26 = v71;
        v63 = v72;
        v27 = v73;
      }

      else
      {
        v28 = -1 << *(v24 + 32);
        v25 = v24 + 56;
        v26 = ~v28;
        v29 = -v28;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v27 = v30 & *(v24 + 56);

        v63 = 0;
      }

      v31 = v65;
      v65 = (v59 + 56);
      v50[1] = v26;
      v32 = (v26 + 64) >> 6;
      v56 = v59 + 16;
      v62 = (v59 + 32);
      v61 = (v60 + 6);
      v54 = (v60 + 4);
      v52 = v60 + 1;
      v60 = (v59 + 8);
      v53 = (v31 + 1);
      while (1)
      {
        v33 = v58;
        if ((v24 & 0x8000000000000000) == 0)
        {
          break;
        }

        while (1)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            v35 = v67;
LABEL_31:

            (*v65)(v35, 1, 1, AssociatedTypeWitness);
            sub_10008BA48(v24);
            a1 = v51;
            goto LABEL_32;
          }

          v36 = v24;
          v37 = v13;
          v38 = v67;
          _forceBridgeFromObjectiveC<A>(_:_:)();
          v35 = v38;
          v13 = v37;
          v24 = v36;
          swift_unknownObjectRelease();
LABEL_25:
          (*v65)(v35, 0, 1, AssociatedTypeWitness);
          (*v62)(v18, v35, AssociatedTypeWitness);
          v41 = swift_unknownObjectWeakLoadStrong();
          if (!v41)
          {
            goto LABEL_35;
          }

          v44 = v41;
          sub_10018B550(v18, v42, v43, v33);

          v45 = v66;
          if ((*v61)(v33, 1, v66) != 1)
          {
            break;
          }

          (*v60)(v18, AssociatedTypeWitness);
          (*v53)(v33, v57);
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_15;
          }
        }

        v46 = v55;
        (*v54)(v55, v33, v45);
        v47 = swift_unknownObjectWeakLoadStrong();
        if (!v47)
        {
          goto LABEL_36;
        }

        v48 = v47;
        sub_1001A2A10(v46, 100);

        (*v52)(v46, v45);
        v18 = v64;
        (*v60)(v64, AssociatedTypeWitness);
      }

LABEL_15:
      if (v27)
      {
        v34 = v63;
        v35 = v67;
LABEL_24:
        v40 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        (*(v59 + 16))(v35, *(v24 + 48) + *(v59 + 72) * (v40 | (v34 << 6)), AssociatedTypeWitness);
        goto LABEL_25;
      }

      v39 = v63;
      v35 = v67;
      while (1)
      {
        v34 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v34 >= v32)
        {
          goto LABEL_31;
        }

        v27 = *(v25 + 8 * v34);
        ++v39;
        if (v27)
        {
          v63 = v34;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    goto LABEL_32;
  }

LABEL_38:
  __break(1u);
}