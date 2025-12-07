uint64_t sub_100435BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_100435C60, v7, v6);
}

uint64_t sub_100435C60()
{
  v0[2] = *(v0[3] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_100435D24;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_100435D24()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10045A298, v3, v2);
}

BOOL sub_100435E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void, char *, uint64_t, char *))
{
  v9 = type metadata accessor for TTRAccountsListsViewModel.List();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    (*(v10 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
    type metadata accessor for MainActor();

    v17 = static MainActor.shared.getter();
    v18 = *(v10 + 80);
    v22 = a6;
    v19 = (v18 + 40) & ~v18;
    v20 = swift_allocObject();
    *(v20 + 2) = v17;
    *(v20 + 3) = &protocol witness table for MainActor;
    *(v20 + 4) = Strong;
    (*(v10 + 32))(&v20[v19], &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v22(0, 0, v14, a5, v20);
  }

  return Strong != 0;
}

uint64_t sub_100436084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_100436120, v7, v6);
}

uint64_t sub_100436120(uint64_t a1)
{
  v2 = TTRAccountsListsViewModel.List.isCustomSmartList.getter();
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_1004361C4;
  v4 = *(v1 + 32);

  return sub_100436358(v4, v2 & 1);
}

uint64_t sub_1004361C4(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1004362EC, v4, v3);
}

uint64_t sub_1004362EC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100436358(uint64_t a1, char a2)
{
  *(v3 + 315) = a2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  *(v3 + 360) = v4;
  *(v3 + 368) = *(v4 - 8);
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  v5 = type metadata accessor for TTRListOrCustomSmartList();
  *(v3 + 400) = v5;
  *(v3 + 408) = *(v5 - 8);
  *(v3 + 416) = swift_task_alloc();
  sub_100058000(&unk_10076DF20, &unk_10063BD50);
  *(v3 + 424) = swift_task_alloc();
  sub_100058000(&qword_1007831D8, &qword_10063F2A8);
  *(v3 + 432) = swift_task_alloc();
  v6 = type metadata accessor for TTRAccountsListsInteractorDeleteArguments();
  *(v3 + 440) = v6;
  v7 = *(v6 - 8);
  *(v3 + 448) = v7;
  *(v3 + 456) = *(v7 + 64);
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 480) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 488) = v9;
  *(v3 + 496) = v8;

  return _swift_task_switch(sub_1004365A4, v9, v8);
}

uint64_t sub_1004365A4()
{
  v96 = v0;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  aBlock = *(v0 + 360);
  v2 = *(v0 + 315);
  v3 = *(v0 + 344);
  v4 = type metadata accessor for Logger();
  *(v0 + 504) = sub_100003E30(v4, qword_100782E90);
  *(v0 + 512) = sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v6 = TTRAccountsListsViewModel.List.objectID.getter();
  v7 = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  *(inited + 48) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0xD000000000000011;
  if (v2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  v9 = 0xE500000000000000;
  if (v2)
  {
    v9 = 0xE400000000000000;
  }

  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0x8000000100686B50;
  *(inited + 96) = v8;
  v88 = v8;
  v90 = v9;
  *(inited + 104) = v9;
  if (v2)
  {
    v10 = &enum case for TTRAccountsListsViewModel.Item.customSmartList(_:);
  }

  else
  {
    v10 = &enum case for TTRAccountsListsViewModel.Item.list(_:);
  }

  v11 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("delete list {list.objectID: %@, isCustomSmartList: %@}", 54, 2, v11);

  sub_100058000(&unk_10076BAA0, &unk_10062FD90);
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D400;
  v16 = *(v1 + 16);
  v16(v15 + v14, v3, aBlock);
  v17 = v16;
  (*(v13 + 104))(v15 + v14, *v10, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = *sub_10000C36C((Strong + 48), *(Strong + 72));

    v20 = sub_10001D354();
    v21 = *(v0 + 424);
    if (v20)
    {
      swift_beginAccess();
      sub_100010540(v19 + 96, v0 + 272);
      sub_100396F88(v21);
      sub_100015124((v0 + 272));
    }

    else
    {
      (*(*(v0 + 408) + 56))(*(v0 + 424), 1, 1, *(v0 + 400));
    }

    swift_unknownObjectRelease();
  }

  else
  {
    (*(*(v0 + 408) + 56))(*(v0 + 424), 1, 1, *(v0 + 400));
  }

  v23 = *(v0 + 440);
  v22 = *(v0 + 448);
  v24 = *(v0 + 432);
  TTRAccountsListsInteractorDeleteArguments.init(items:viewModel:currentList:)();
  if ((*(v22 + 48))(v24, 1, v23) == 1)
  {
    v25 = *(v0 + 432);
    v26 = *(v0 + 376);
    v27 = *(v0 + 360);
    v28 = *(v0 + 344);

    sub_1000079B4(v25, &qword_1007831D8, &qword_10063F2A8);
    v17(v26, v28, v27);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v33 = *(v0 + 368);
    v32 = *(v0 + 376);
    v34 = *(v0 + 360);
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v95 = v37;
      *v35 = 138412546;
      v38 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v33 + 8))(v32, v34);
      *(v35 + 4) = v38;
      *v36 = v38;
      *(v35 + 12) = 2080;
      v39 = sub_100004060(v88, v90, &v95);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to construct delete arguments for deleting list {list.objectID: %@, isCustomSmartList: %s}", v35, 0x16u);
      sub_1000079B4(v36, &unk_10076DF80, &qword_10062F730);

      sub_100004758(v37);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }

    goto LABEL_36;
  }

  v40 = *(v0 + 472);
  v41 = *(v0 + 440);
  v42 = *(v0 + 448);
  v43 = *(v0 + 432);
  v44 = *(v42 + 32);
  *(v0 + 520) = v44;
  *(v0 + 528) = (v42 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v44(v40, v43, v41);
  if ((TTRAccountsListsInteractorDeleteArguments.shouldShowConfirmation.getter() & 1) == 0 && (static UIAccessibility.ttriIsAccessibilityRunning.getter() & 1) == 0)
  {

    v91 = *(v0 + 520);
    v72 = *(v0 + 464);
    v71 = *(v0 + 472);
    v73 = *(v0 + 448);
    v74 = *(v0 + 440);
    v89 = *(v0 + 352);
    v75 = swift_initStackObject();
    *(v75 + 16) = xmmword_10062D400;
    *(v75 + 32) = 0x746E656D75677261;
    *(v75 + 40) = 0xE900000000000073;
    v76 = TTRAccountsListsInteractorDeleteArguments.description.getter();
    *(v75 + 72) = &type metadata for String;
    *(v75 + 48) = v76;
    *(v75 + 56) = v77;
    v78 = sub_100008E04(v75);
    swift_setDeallocating();
    sub_1000079B4(v75 + 32, &unk_10076BA70, &qword_10062FD60);
    sub_10000FD44("Delete list {arguments: %@}", 27, 2, v78);

    static TTRLocalizableStrings.AccountsList.deleteListUndoAction.getter();
    v87 = objc_opt_self();
    v79 = String._bridgeToObjectiveC()();

    (*(v73 + 16))(v72, v71, v74);
    v80 = (*(v73 + 80) + 24) & ~*(v73 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = v89;
    v91(v81 + v80, v72, v74);
    v82 = swift_allocObject();
    *(v82 + 16) = sub_100456D78;
    *(v82 + 24) = v81;
    *(v0 + 256) = sub_100068444;
    *(v0 + 264) = v82;
    *(v0 + 224) = _NSConcreteStackBlock;
    *(v0 + 232) = 1107296256;
    *(v0 + 240) = sub_100026440;
    *(v0 + 248) = &unk_100728928;
    v45 = _Block_copy((v0 + 224));

    [v87 withActionName:v79 block:v45];

    _Block_release(v45);
    (*(v73 + 8))(v71, v74);
    v83 = 1;
    LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

    if ((v74 & 1) == 0)
    {
LABEL_37:

      v86 = *(v0 + 8);

      return v86(v83);
    }

    __break(1u);
    goto LABEL_32;
  }

  v45 = v17;
  sub_10001F128(&qword_1007831E0, &type metadata accessor for TTRAccountsListsInteractorDeleteArguments, &protocol conformance descriptor for TTRAccountsListsInteractorDeleteArguments);
  v46 = TTRAccountsListsDeleteArgumentsType.allListsToDelete()();
  if (!*(v46 + 16))
  {
    v55 = *(v0 + 315);

    v56 = *(v0 + 360);
    v57 = *(v0 + 344);
    if (v55 == 1)
    {
      (v45)(*(v0 + 392), v57, v56);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      v60 = os_log_type_enabled(v58, v59);
      v61 = *(v0 + 472);
      v63 = *(v0 + 440);
      v62 = *(v0 + 448);
      v64 = *(v0 + 392);
      v66 = *(v0 + 360);
      v65 = *(v0 + 368);
      if (v60)
      {
        aBlocka = *(v0 + 472);
        v67 = swift_slowAlloc();
        v92 = v63;
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        v69 = TTRAccountsListsViewModel.List.objectID.getter();
        (*(v65 + 8))(v64, v66);
        *(v67 + 4) = v69;
        *v68 = v69;
        v70 = "Failed to find REMSmartList -- failed to delete list {list.objectID: %@}";
LABEL_34:
        _os_log_impl(&_mh_execute_header, v58, v59, v70, v67, 0xCu);
        sub_1000079B4(v68, &unk_10076DF80, &qword_10062F730);

        (*(v62 + 8))(aBlocka, v92);
LABEL_36:
        v83 = 0;
        goto LABEL_37;
      }

      goto LABEL_35;
    }

LABEL_32:
    (v45)(*(v0 + 384), v57, v56);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    v84 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 472);
    v63 = *(v0 + 440);
    v62 = *(v0 + 448);
    v64 = *(v0 + 384);
    v66 = *(v0 + 360);
    v65 = *(v0 + 368);
    if (v84)
    {
      aBlocka = *(v0 + 472);
      v67 = swift_slowAlloc();
      v92 = v63;
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      v85 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v65 + 8))(v64, v66);
      *(v67 + 4) = v85;
      *v68 = v85;
      v70 = "Failed to find REMList -- failed to delete list {list.objectID: %@}";
      goto LABEL_34;
    }

LABEL_35:

    (*(v65 + 8))(v64, v66);
    (*(v62 + 8))(v61, v63);
    goto LABEL_36;
  }

  v47 = *(v0 + 416);
  v48 = *(v0 + 352);
  (*(*(v0 + 408) + 16))(v47, v46 + ((*(*(v0 + 408) + 80) + 32) & ~*(*(v0 + 408) + 80)), *(v0 + 400));

  sub_1002E91A0(v47);
  sub_1002E950C(v47);
  v49 = String._bridgeToObjectiveC()();

  v50 = String._bridgeToObjectiveC()();

  v51 = [objc_opt_self() alertControllerWithTitle:v49 message:v50 preferredStyle:1];
  *(v0 + 536) = v51;

  sub_10000C36C((v48 + 112), *(v48 + 136));
  sub_100058000(&qword_10076B260, &unk_10062F6F0);
  sub_100058000(&unk_100775890, &qword_10063B690);
  v52 = swift_allocObject();
  *(v0 + 544) = v52;
  *(v52 + 16) = xmmword_10062D3F0;
  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  *(v0 + 313) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Common.deleteButton.getter();
  *(v0 + 314) = 1;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  v53 = swift_task_alloc();
  *(v0 + 552) = v53;
  *v53 = v0;
  v53[1] = sub_10043733C;

  return sub_1001DFFD4(v51, v52);
}

uint64_t sub_10043733C(char a1)
{
  v2 = *v1;
  *(*v1 + 316) = a1;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);

  return _swift_task_switch(sub_100437488, v4, v3);
}

uint64_t sub_100437488()
{
  v1 = *(v0 + 316);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 400);

  (*(v3 + 8))(v2, v4);
  if (v1 != 2 && (*(v0 + 316) & 1) != 0)
  {
    v6 = *(v0 + 464);
    v5 = *(v0 + 472);
    v7 = *(v0 + 448);
    v8 = *(v0 + 440);
    v22 = *(v0 + 352);
    v23 = *(v0 + 520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x746E656D75677261;
    *(inited + 40) = 0xE900000000000073;
    v10 = TTRAccountsListsInteractorDeleteArguments.description.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v10;
    *(inited + 56) = v11;
    v12 = sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
    sub_10000FD44("Delete list {arguments: %@}", 27, 2, v12);

    static TTRLocalizableStrings.AccountsList.deleteListUndoAction.getter();
    v21 = objc_opt_self();
    v13 = String._bridgeToObjectiveC()();

    (*(v7 + 16))(v6, v5, v8);
    v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v22;
    v23(v15 + v14, v6, v8);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_100456D78;
    *(v16 + 24) = v15;
    *(v0 + 256) = sub_100068444;
    *(v0 + 264) = v16;
    *(v0 + 224) = _NSConcreteStackBlock;
    *(v0 + 232) = 1107296256;
    *(v0 + 240) = sub_100026440;
    *(v0 + 248) = &unk_100728928;
    v17 = _Block_copy((v0 + 224));

    [v21 withActionName:v13 block:v17];

    _Block_release(v17);
    (*(v7 + 8))(v5, v8);
    v18 = 1;
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  (*(*(v0 + 448) + 8))(*(v0 + 472), *(v0 + 440));
  v18 = 0;
LABEL_6:

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_100437844@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v7 + 96))(v10, v6);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v10, v12);
LABEL_5:
    if (a2 & 1) == 0 && (TTRAccountsListsViewModel.Item.isCollapsible.getter())
    {
      v13 = &enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:);
LABEL_11:
      v14 = *v13;
      v15 = type metadata accessor for TTRICollectionViewCellSelectionOption();
      v16 = *(*(v15 - 8) + 104);
      v17 = a3;
      v18 = v14;
      return v16(v17, v18, v15);
    }

LABEL_10:
    v13 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
    goto LABEL_11;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:))
  {
LABEL_4:
    (*(v7 + 8))(v10, v6);
    goto LABEL_5;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
LABEL_9:
    (*(v7 + 8))(v10, v6);
    goto LABEL_10;
  }

  if (v11 != enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    if (v11 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_4;
    }

    if (v11 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.group(_:))
    {
      goto LABEL_27;
    }

    if (v11 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
    {
      goto LABEL_4;
    }

    if (v11 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
    {
      goto LABEL_9;
    }

    if (v11 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_27:
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      if (v11 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
      {
        goto LABEL_5;
      }

      if (v11 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
      {
        if (qword_1007672D8 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_100003E30(v25, qword_100782E90);
        a3 = _swiftEmptyArrayStorage;
        v26 = sub_100008E04(_swiftEmptyArrayStorage);
        v27 = sub_100008E04(_swiftEmptyArrayStorage);
        sub_1003F9818("Unknown item type", 17, 2uLL, v26, v27);
        __break(1u);
        goto LABEL_42;
      }
    }

    v15 = type metadata accessor for TTRICollectionViewCellSelectionOption();
    v16 = *(*(v15 - 8) + 104);
    if (a2)
    {
      v24 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
LABEL_43:
      v18 = *v24;
      v17 = a3;
      return v16(v17, v18, v15);
    }

LABEL_42:
    v24 = &enum case for TTRICollectionViewCellSelectionOption.selectItem(_:);
    goto LABEL_43;
  }

  v20 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v21 = &enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:);
  if ((a2 & 1) == 0)
  {
    v21 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
  }

  (*(*(v20 - 8) + 104))(a3, *v21, v20);
  return (*(v7 + 8))(v10, v6);
}

void sub_100437CBC(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v6, v8);
    return;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_9;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    (*(v3 + 8))(v6, v2);
    return;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.account(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    goto LABEL_9;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {

    v12 = TTRAccountsListsViewModel.remCustomSmartList(for:)();

    if (v12)
    {
    }

LABEL_21:
    (*(v3 + 8))(v6, v2);
    return;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
LABEL_9:
    (*(v3 + 8))(v6, v2);

    v10 = TTRAccountsListsViewModel.remList(for:)();

    if (v10)
    {
    }
  }

  else
  {
    if (v7 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      goto LABEL_21;
    }

    if (v7 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v7 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003E30(v13, qword_100782E90);
      v14 = sub_100008E04(_swiftEmptyArrayStorage);
      v15 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2uLL, v14, v15);
      __break(1u);
    }
  }
}

uint64_t sub_1004380BC()
{
  v0 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
  if ((TTRAccountsListsViewModel.Item.isCollapsible.getter() & 1) != 0 && (sub_100058000(&unk_10078D430, &qword_100631760), sub_10000E188(&qword_100783258, &unk_10078D430, &qword_100631760, &protocol conformance descriptor for TTRICollectionViewCollapsedStatesPresenterCapability<A>), (dispatch thunk of TTRICollectionViewItemCollapsedStates.isCollapsed(_:)() & 1) == 0))
  {
    sub_100058000(&unk_10078D460, &unk_100646850);
    v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10062D400;
    (*(v1 + 16))(v6 + v5, v3, v0);
    v8[1] = v6;
    sub_100058000(&qword_100783260, &qword_10063F380);
    sub_10000E188(&unk_10078D470, &qword_100783260, &qword_10063F380, &protocol conformance descriptor for [A]);
    dispatch thunk of TTRICollectionViewItemCollapsedStates.collapse<A>(_:)();

    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.performPendingUpdatesImmediately()();
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_1004382F0(uint64_t a1, void *a2)
{
  ObjectType = a1;
  v129 = a2;
  v3 = type metadata accessor for TTRListOrCustomSmartList();
  v132 = *(v3 - 8);
  v133 = v3;
  __chkstk_darwin(v3);
  v135 = (&v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v134 = &v104 - v6;
  v7 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v131 = *(v7 - 8);
  __chkstk_darwin(v7);
  v130 = (&v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100058000(&qword_100783180, &qword_10063F1C8);
  v123 = *(v9 - 8);
  v124 = v9;
  __chkstk_darwin(v9);
  v122 = &v104 - v10;
  v11 = sub_100058000(&unk_10076B870, &qword_10062FC08);
  __chkstk_darwin(v11 - 8);
  v127 = &v104 - v12;
  v117 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v112 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsPresenterCapability.GroupCreationValidationError();
  v125 = *(v14 - 8);
  v126 = v14;
  __chkstk_darwin(v14);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&qword_100783248, &unk_10063F370);
  __chkstk_darwin(v17);
  v19 = &v104 - v18;
  v115 = type metadata accessor for TTRAccountsListsPresenterCapability.GroupCreationParams();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v21 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v113 = &v104 - v23;
  v24 = sub_100058000(&qword_10076BD88, &unk_10062FF30);
  __chkstk_darwin(v24 - 8);
  v26 = &v104 - v25;
  v27 = type metadata accessor for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v2;
  TTRAccountsListsPresenterCapability.paramsForCreatingGroup(byDropping:into:)();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v31 = &qword_10076BD88;
    v32 = &unk_10062FF30;
    v33 = v26;
LABEL_3:
    sub_1000079B4(v33, v31, v32);
    return;
  }

  (*(v28 + 32))(v30, v26, v27);
  TTRAccountsListsPresenterCapability.groupCreationParams(for:)();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v125;
    v34 = v126;
    (*(v125 + 32))(v16, v19, v126);
    sub_10001F128(&qword_100783250, &type metadata accessor for TTRAccountsListsPresenterCapability.GroupCreationValidationError, &protocol conformance descriptor for TTRAccountsListsPresenterCapability.GroupCreationValidationError);
    swift_willThrowTypedImpl();
    (*(v35 + 8))(v16, v34);
    (*(v28 + 8))(v30, v27);
    return;
  }

  v107 = v30;
  v108 = v28;
  v109 = v27;
  v36 = v114;
  v37 = *(v114 + 32);
  v38 = v115;
  v37(v21, v19, v115);
  v39 = v113;
  v37(v113, v21, v38);
  v40 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel;
  v41 = v118;

  v42 = TTRAccountsListsPresenterCapability.GroupCreationParams.account.getter();
  v43 = [v42 objectID];

  v44 = v127;
  TTRAccountsListsViewModel.account(with:)();

  v45 = v116;
  v46 = v117;
  if ((*(v116 + 48))(v44, 1, v117) == 1)
  {
    (*(v36 + 8))(v39, v38);
    (*(v108 + 8))(v107, v109);
    v31 = &unk_10076B870;
    v32 = &qword_10062FC08;
    v33 = v44;
    goto LABEL_3;
  }

  v126 = v40;
  (*(v45 + 32))(v112, v44, v46);
  v129 = *(v41 + 72);
  ObjectType = swift_getObjectType();
  v47 = TTRAccountsListsPresenterCapability.GroupCreationParams.account.getter();
  v48 = TTRAccountsListsPresenterCapability.GroupCreationParams.groupContext.getter();
  TTRAccountsListsPresenterCapability.GroupCreationParams.members.getter();
  v49 = v122;
  TTRAccountsListsPresenterCapability.GroupCreationParams.anchor.getter();
  v51 = v123;
  v50 = v124;
  (*(v123 + 104))(v49, enum case for TTRRelativeInsertionPosition.before<A>(_:), v124);
  v52 = dispatch thunk of TTRAccountsListsInteractorType.createNewGroup(account:groupContext:lists:position:)();

  (*(v51 + 8))(v49, v50);
  v53 = [v52 sublistContext];
  if (!v53)
  {
    goto LABEL_24;
  }

  v105 = v53;
  v106 = v52;
  v54 = [v52 saveRequest];
  v55 = TTRAccountsListsPresenterCapability.GroupCreationParams.account.getter();
  v129 = v54;
  v56 = [v54 updateAccount:v55];

  v57 = v118;

  v58 = TTRAccountsListsViewModel.remListsOrCustomSmartLists(in:)();

  v59 = *(v58 + 16);
  if (v59)
  {
    v104 = v56;
    v137[0] = _swiftEmptyArrayStorage;
    sub_1004A1F60(0, v59, 0);
    v60 = 0;
    v61 = v137[0];
    ObjectType = v58 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
    v127 = (v132 + 16);
    v125 = v132 + 88;
    LODWORD(v124) = enum case for TTRListOrCustomSmartList.list(_:);
    v111 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
    v122 = (v132 + 8);
    v123 = v132 + 96;
    v110 = enum case for TTRListOrCustomSmartListChangeItem.customSmartList(_:);
    v121 = (v131 + 104);
    v120 = enum case for TTRListOrCustomSmartListChangeItem.list(_:);
    v119 = v131 + 32;
    v126 = v58;
    while (v60 < *(v58 + 16))
    {
      v62 = v59;
      v63 = v7;
      v65 = v132;
      v64 = v133;
      v66 = *(v132 + 16);
      v67 = v134;
      v66(v134, ObjectType + *(v132 + 72) * v60, v133);
      v68 = v135;
      v66(v135, v67, v64);
      v69 = (*(v65 + 88))(v68, v64);
      v70 = &selRef_updateList_;
      v71 = v120;
      if (v69 != v124)
      {
        v70 = &selRef_updateSmartList_;
        v71 = v110;
        if (v69 != v111)
        {
          goto LABEL_25;
        }
      }

      v72 = v135;
      v73 = v133;
      (*v123)(v135, v133);
      v74 = *v72;
      v75 = [v129 *v70];

      (*v122)(v134, v73);
      v76 = v130;
      *v130 = v75;
      v7 = v63;
      (*v121)(v76, v71, v63);
      v137[0] = v61;
      v78 = v61[2];
      v77 = v61[3];
      if (v78 >= v77 >> 1)
      {
        sub_1004A1F60((v77 > 1), v78 + 1, 1);
        v61 = v137[0];
      }

      ++v60;
      v61[2] = v78 + 1;
      (*(v131 + 32))(v61 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v78, v76, v63);
      v59 = v62;
      v58 = v126;
      if (v62 == v60)
      {

        v57 = v118;
        v56 = v104;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    sub_100003E30(v101, qword_100782E90);
    v102 = sub_100008E04(_swiftEmptyArrayStorage);
    v103 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown list type", 17, 2uLL, v102, v103);
    __break(1u);
    return;
  }

  v61 = _swiftEmptyArrayStorage;
LABEL_19:
  v135 = *sub_10000C36C((v57 + 112), *(v57 + 136));
  v79 = objc_allocWithZone(TTRUndoManager);
  v80 = String._bridgeToObjectiveC()();
  v81 = [v79 initWithDebugIdentifier:v80];

  type metadata accessor for TTRIGroupDetailInteractor();
  v82 = swift_allocObject();
  v82[3] = 0;
  swift_unknownObjectWeakInit();
  v82[7] = 0;
  v82[4] = v56;
  type metadata accessor for TTRListEditor();
  sub_10001F128(&qword_10077C780, &type metadata accessor for TTRListEditor, &protocol conformance descriptor for TTRListEditor);
  v83 = v81;
  v134 = v56;
  v84 = v106;
  TTRUndoableEditing.init(changeItem:undoManager:)();
  v82[8] = v137[0];
  v85 = v105;
  v82[5] = v105;
  v82[6] = v61;
  v86 = v85;
  v82[7] = NSUndoManager.observeChanges<A>(target:handler:)();

  v87 = type metadata accessor for TTRIGroupDetailRouter();
  v88 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v139 = v87;
  v140 = &off_100729B00;
  v137[0] = v88;
  type metadata accessor for TTRIGroupDetailPresenter();
  v89 = swift_allocObject();
  v90 = sub_10000AE84(v137, v87);
  v91 = __chkstk_darwin(v90);
  v93 = (&v104 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v94 + 16))(v93, v91);
  v95 = *v93;
  *(v89 + 88) = v87;
  *(v89 + 96) = &off_100729B00;
  *(v89 + 64) = v95;
  *(v89 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v89 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v89 + 48) = v82;
  *(v89 + 56) = &off_10071E7D8;
  *(v89 + 112) = v83;
  *(v89 + 104) = 0;
  v96 = v83;

  sub_100004758(v137);
  type metadata accessor for TTRIGroupDetailViewController();
  v137[0] = v89;
  v137[1] = &off_100718120;
  v138 = 0;
  v139 = v96;
  sub_10001F128(&qword_10078C0F0, type metadata accessor for TTRIGroupDetailViewController, &unk_100645950);
  static TTRTypedController<>.instantiateFromStoryboard(with:)();

  v97 = v136;
  v98 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v136];

  v82[3] = &off_100718110;
  swift_unknownObjectWeakAssign();

  *(v89 + 24) = &off_10072E100;
  swift_unknownObjectWeakAssign();

  swift_beginAccess();
  *(v89 + 40) = &off_100727C98;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v100 = Strong;
    [Strong presentViewController:v98 animated:1 completion:0];
  }

  else
  {
  }

  (*(v116 + 8))(v112, v117);
  (*(v114 + 8))(v113, v115);
  (*(v108 + 8))(v107, v109);
}

void sub_100439410(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v75 = a5;
  v6 = sub_100058000(&qword_10078D480, &unk_100646860);
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v71 = &v67 - v7;
  v8 = sub_100058000(&qword_100783180, &qword_10063F1C8);
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin(v8);
  v72 = &v67 - v9;
  v10 = sub_100058000(&qword_100783220, &qword_10063F348);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  v13 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam();
  v78 = *(v13 - 8);
  __chkstk_darwin(v13);
  v77 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  v76 = v5;
  if (!TTRAccountsListsPresenterCapability.paramsForMoving(_:into:atUnadjustedIndex:containerIsInEditMode:)())
  {
    return;
  }

  if ((TTRAccountsListsPresenterCapability.RemindersInsertionPlan.shouldDisallow.getter() & 1) != 0 || (v18 = TTRAccountsListsPresenterCapability.RemindersInsertionPlan.generateOptimisticMoves()()) == 0)
  {
LABEL_22:

    return;
  }

  v19 = v18;
  TTRAccountsListsPresenterCapability.RemindersInsertionPlan.generateParamsForSaving()();
  v20 = v78;
  v21 = v13;
  if ((*(v78 + 48))(v12, 1, v13) == 1)
  {

    sub_1000079B4(v12, &qword_100783220, &qword_10063F348);
    return;
  }

  (*(v20 + 32))(v17, v12, v13);
  v22 = v77;
  (*(v20 + 16))(v77, v17, v13);
  v23 = (*(v20 + 88))(v22, v13);
  if (v23 == enum case for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam.moveToPinnedLists(_:))
  {
    (*(v20 + 96))(v22, v13);
    v24 = *v22;
    v25 = *(sub_100058000(&qword_100783238, &qword_10063F360) + 48);
    v26 = swift_allocObject();
    v27 = v76;
    *(v26 + 2) = v24;
    *(v26 + 3) = v27;

    v28 = sub_100058000(&qword_100783240, &qword_10063F368);
    (*(*(v28 - 8) + 8))(&v22[v25], v28);
    v29 = sub_100458B90;
LABEL_12:
    if (!*(v19 + 16))
    {
      (*(v20 + 8))(v17, v21);

      return;
    }

    v76 = v29;
    v77 = v26;
    v54 = v19;
    v55 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel;
    type metadata accessor for TTRAccountsListsViewModel();
    swift_allocObject();

    v56 = TTRAccountsListsViewModel.init(viewModel:)();
    TTRAccountsListsViewModel.performMoves(_:)(v54);
    *(v27 + v55) = v56;

    if (v75)
    {
LABEL_17:

LABEL_18:
      v76(Strong);

      (*(v20 + 8))(v17, v21);
      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v57 = swift_conformsToProtocol2();
      v58 = v71;
      if (v57)
      {
        sub_1000BEFE0(v56, v54);
        swift_unknownObjectRelease();
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      v58 = v71;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_18;
    }

    v60 = Strong;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      Strong = swift_unknownObjectRelease();
      goto LABEL_18;
    }

    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.makeUpdatesForMoves()();
    if (![v60 isViewLoaded])
    {
      swift_unknownObjectRelease();
      Strong = (*(v69 + 8))(v58, v70);
      goto LABEL_18;
    }

    if (*&v60[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {
      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = swift_allocObject();
      *(v62 + 16) = 512;
      *(v62 + 24) = 0;
      *(v62 + 32) = 0;
      *(v62 + 40) = v61;

      v63 = v71;
      TTRICollectionViewPresentationTreeManagementViewCapability.applyPresentationTree(with:completion:)();
      swift_unknownObjectRelease();

      (*(v69 + 8))(v63, v70);

      v20 = v78;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v23 == enum case for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam.moveToGroup(_:))
  {
    (*(v20 + 96))(v22, v13);
    v30 = *(v22 + 1);
    v67 = *v22;
    v68 = v30;
    v31 = sub_100058000(&qword_100783230, &qword_10063F358);
    v32 = v72;
    v33 = v73 + 32;
    v34 = *(v73 + 32);
    v35 = &v22[*(v31 + 64)];
    v77 = v17;
    v36 = v74;
    v34(v72, v35, v74);
    v37 = v19;
    v38 = (*(v33 + 48) + 40) & ~*(v33 + 48);
    v26 = swift_allocObject();
    v39 = v68;
    v27 = v76;
    *(v26 + 2) = v67;
    *(v26 + 3) = v27;
    *(v26 + 4) = v39;
    v40 = &v26[v38];
    v19 = v37;
    v41 = v36;
    v17 = v77;
    v34(v40, v32, v41);
    v20 = v78;

    v29 = sub_100458A98;
    goto LABEL_12;
  }

  if (v23 == enum case for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam.moveToAccount(_:))
  {
    (*(v20 + 96))(v22, v13);
    v42 = *(v22 + 1);
    v67 = *v22;
    v68 = v42;
    v43 = sub_100058000(&qword_100783228, &qword_10063F350);
    v44 = v72;
    v45 = v73 + 32;
    v46 = *(v73 + 32);
    v47 = &v22[*(v43 + 64)];
    v77 = v17;
    v48 = v74;
    v46(v72, v47, v74);
    v49 = v19;
    v50 = (*(v45 + 48) + 40) & ~*(v45 + 48);
    v26 = swift_allocObject();
    v51 = v68;
    v27 = v76;
    *(v26 + 2) = v67;
    *(v26 + 3) = v27;
    *(v26 + 4) = v51;
    v52 = &v26[v50];
    v19 = v49;
    v53 = v48;
    v17 = v77;
    v46(v52, v44, v53);
    v20 = v78;

    v29 = sub_100458958;
    goto LABEL_12;
  }

  if (v23 == enum case for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam.disallowed(_:))
  {
    (*(v20 + 8))(v17, v13);

    goto LABEL_22;
  }

LABEL_34:
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_100003E30(v64, qword_100782E90);
  v65 = sub_100008E04(_swiftEmptyArrayStorage);
  v66 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown saving params", 21, 2uLL, v65, v66);
  __break(1u);
}

uint64_t sub_100439D90@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v39 - v9;
  v10 = sub_100058000(&unk_10078D450, &qword_10062FBC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for TTRAccountsListsViewModel.List();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v39 - v21;
  v23 = sub_100058000(&qword_100783200, &qword_10063F310);
  v44 = *(v23 - 8);
  v45 = v23;
  __chkstk_darwin(v23);
  v25 = (&v39 - v24);
  v46 = a1;
  v26 = sub_1004B1A10(a1);
  v27 = (v17 + 48);
  if (v26)
  {
    TTRAccountsListsViewModel.Item.list.getter();
    if ((*v27)(v15, 1, v16) == 1)
    {
      v28 = &unk_10078D450;
      v29 = &qword_10062FBC0;
      v30 = v15;
LABEL_10:
      sub_1000079B4(v30, v28, v29);
      goto LABEL_11;
    }

    (*(v17 + 32))(v22, v15, v16);

    v31 = TTRAccountsListsViewModel.remList(for:)();

    (*(v17 + 8))(v22, v16);
    if (!v31)
    {
LABEL_11:
      v36 = sub_100058000(&qword_10076BB38, &qword_10063F300);
      return (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
    }

    *v25 = v31;
    v33 = v44;
    v32 = v45;
    (*(v44 + 104))(v25, enum case for TTRMoveRemindersToListPresenterCapability.TargetList.list<A>(_:), v45);
  }

  else
  {
    TTRAccountsListsViewModel.Item.listOrCustomSmartList.getter();
    if ((*v27)(v12, 1, v16) == 1)
    {
      v28 = &unk_10078D450;
      v29 = &qword_10062FBC0;
      v30 = v12;
      goto LABEL_10;
    }

    (*(v17 + 32))(v19, v12, v16);

    TTRAccountsListsViewModel.listOrCustomSmartList(for:)();

    v35 = v42;
    v34 = v43;
    if ((*(v42 + 48))(v5, 1, v43) == 1)
    {
      (*(v17 + 8))(v19, v16);
      v28 = &unk_10076DF20;
      v29 = &unk_10063BD50;
      v30 = v5;
      goto LABEL_10;
    }

    v38 = v40;
    (*(v35 + 32))(v40, v5, v34);
    (*(v35 + 16))(v41, v38, v34);
    sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
    TTRMoveRemindersToListPresenterCapability.TargetList.init(listOrCustomSmartList:)();
    (*(v35 + 8))(v38, v34);
    (*(v17 + 8))(v19, v16);
    v33 = v44;
    v32 = v45;
  }

  TTRMoveRemindersToListPresenterCapability.paramsForDropping(_:into:reminderForDragItem:)();
  return (*(v33 + 8))(v25, v32);
}

void sub_10043A388(void *a1)
{
  v53 = a1;
  v2 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100058000(&qword_100783208, &qword_10063F318);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v42 = &v42 - v4;
  v5 = sub_100058000(&qword_100783210, &qword_10063F320);
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  __chkstk_darwin(v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v51 = &v42 - v8;
  v52 = type metadata accessor for TTRListOrCustomSmartList();
  v9 = *(v52 - 8);
  __chkstk_darwin(v52);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100058000(&qword_1007831F8, &qword_10063F308);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  v16 = sub_100058000(&qword_10076BB38, &qword_10063F300);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v42 - v19;
  (*(v17 + 16))(&v42 - v19, v53, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == enum case for TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoTargetList.list<A>(_:))
  {
    (*(v17 + 96))(v20, v16);
    (*(v13 + 32))(v15, v20, v12);
    v53 = *(v1 + 72);
    swift_getObjectType();
    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoList.reminderIDs.getter();
    *v11 = TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoList.target.getter();
    v22 = v52;
    (*(v9 + 104))(v11, enum case for TTRListOrCustomSmartList.list(_:), v52);
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.move(remindersWithIDs:to:)();

    (*(v9 + 8))(v11, v22);
    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoList.acceptedDragItems.getter();
    (*(v13 + 8))(v15, v12);
    return;
  }

  if (v21 == enum case for TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoTargetList.customSmartList<A>(_:))
  {
    (*(v17 + 96))(v20, v16);
    v23 = v49;
    v24 = v50;
    v25 = *(v49 + 32);
    v26 = v51;
    v25(v51, v20, v50);
    v52 = v1;
    TTRMoveRemindersToListPresenterCapability.showSmartListAddInfoAlertIfNeeded(_:)();
    static TTRLocalizableStrings.UndoAction.dropOnCustomSmartList.getter();
    v53 = objc_opt_self();
    v27 = String._bridgeToObjectiveC()();

    v28 = v43;
    (*(v23 + 16))(v43, v26, v24);
    v29 = (*(v23 + 80) + 24) & ~*(v23 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v52;
    v25((v30 + v29), v28, v24);
    v31 = swift_allocObject();
    *(v31 + 16) = sub_10045771C;
    *(v31 + 24) = v30;
    aBlock[4] = sub_100068444;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_100728C70;
    v32 = _Block_copy(aBlock);

    [v53 withActionName:v27 block:v32];

    _Block_release(v32);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      v33 = v51;
      TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoCustomSmartList.acceptedDragItems.getter();
      (*(v23 + 8))(v33, v24);

      return;
    }

    __break(1u);
  }

  else if (v21 == enum case for TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoTargetList.predefinedSmartList<A>(_:))
  {
    (*(v17 + 96))(v20, v16);
    v34 = v44;
    v35 = v42;
    v36 = v20;
    v37 = v46;
    (*(v44 + 32))(v42, v36, v46);
    swift_getObjectType();
    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoPredefinedSmartList.reminderIDs.getter();
    v38 = v45;
    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoPredefinedSmartList.target.getter();
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.move(remindersWithIDs:to:)();

    (*(v47 + 8))(v38, v48);
    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoPredefinedSmartList.acceptedDragItems.getter();
    (*(v34 + 8))(v35, v37);
    return;
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100003E30(v39, qword_100782E90);
  v40 = sub_100008E04(_swiftEmptyArrayStorage);
  v41 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown params for dropping into target list", 44, 2uLL, v40, v41);
  __break(1u);
}

void *sub_10043AC20(unint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t (*a5)(char *), ...)
{
  v20 = a5;
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v5 = sub_100058000(&qword_10076BB30, &qword_10062FDC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_100058000(&qword_10076BB38, &qword_10063F300);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  type metadata accessor for TTRAccountsListsViewModel.Item();
  sub_10001F128(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item, &protocol conformance descriptor for TTRAccountsListsViewModel.Item);
  v14 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  v16 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44(v21, v22, 2, v16);

  sub_100439D90(v23, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_10076BB30, &qword_10062FDC0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v18 = v20(v11);
    (*(v9 + 8))(v11, v8);
    return v18;
  }
}

void sub_10043AF24(uint64_t a1)
{
  v2 = v1;
  v41 = *v2;
  v4 = type metadata accessor for REMAnalyticsEvent();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_1007831F8, &qword_10063F308);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v11 = sub_100058000(&qword_10076BB38, &qword_10063F300);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - v14;
  (*(v12 + 16))(&v37 - v14, a1, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoTargetList.list<A>(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    type metadata accessor for TTRUserDefaults();
    v38 = static TTRUserDefaults.appUserDefaults.getter();
    type metadata accessor for REMAnalyticsManager();
    v40 = static REMAnalyticsManager.shared.getter();
    v17 = sub_100058000(&qword_1007757E8, &unk_100635E60);
    v18 = v17[12];
    v39 = v4;
    v19 = &v6[v18];
    v37 = v17[16];
    v20 = &v6[v17[20]];
    v21 = enum case for REMRDLUserOperationDetail.rdl_dragToRecover(_:);
    v22 = type metadata accessor for REMRDLUserOperationDetail();
    v23 = v8;
    v24 = *(v22 - 8);
    (*(v24 + 104))(v6, v21, v22);
    (*(v24 + 56))(v6, 0, 1, v22);
    v25 = enum case for REMUserOperation.recoverReminder(_:);
    v26 = type metadata accessor for REMUserOperation();
    (*(*(v26 - 8) + 104))(v6, v25, v26);
    v27 = v38;
    *v19 = TTRUserDefaults.activitySessionId.getter();
    v19[1] = v28;
    TTRUserDefaults.activitySessionBeginTime.getter();
    *v20 = _typeName(_:qualified:)();
    v20[1] = v29;
    v30 = v42;
    v31 = v39;
    (*(v42 + 104))(v6, enum case for REMAnalyticsEvent.userOperation(_:), v39);
    REMAnalyticsManager.post(event:)();

    (*(v30 + 8))(v6, v31);
    swift_getObjectType();
    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoList.reminderIDs.getter();
    v32 = TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoList.target.getter();
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.recover(remindersWithIDs:to:)();

    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoList.acceptedDragItems.getter();
    (*(v23 + 8))(v10, v7);
  }

  else if (v16 == enum case for TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoTargetList.customSmartList<A>(_:) || v16 == enum case for TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoTargetList.predefinedSmartList<A>(_:))
  {
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100003E30(v34, qword_100782E90);
    v35 = sub_100008E04(_swiftEmptyArrayStorage);
    v36 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown paramsForDropping", 25, 2uLL, v35, v36);
    __break(1u);
  }
}

void sub_10043B48C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100782E90);
  v9 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Accounts Lists drop reminder(s) on hashtag label", 48, 2, v9);

  if ((sub_1004B1A10(a1) & 1) == 0)
  {
    aBlock[0] = a1;
    sub_100058000(&qword_10077CFC8, &qword_10063F1F0);
    sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
    sub_10000E188(&qword_10077CFD8, &qword_10077CFC8, &qword_10063F1F0, &protocol conformance descriptor for [A]);
    v10 = Sequence.completeCompactMap<A>(_:)();
    if (v10)
    {
      v11 = v10;
      static TTRLocalizableStrings.UndoAction.hashtagsChange.getter();
      v12 = objc_opt_self();
      v13 = String._bridgeToObjectiveC()();

      v14 = swift_allocObject();
      v14[2] = v4;
      v14[3] = v11;
      v14[4] = a2;
      v14[5] = a3;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_100456570;
      *(v15 + 24) = v14;
      aBlock[4] = sub_100026410;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026440;
      aBlock[3] = &unk_1007284F0;
      v16 = _Block_copy(aBlock);

      [v12 withActionName:v13 block:v16];

      _Block_release(v16);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_10043B76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100058000(&qword_100783188, &qword_10063F1F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v10 - v7);
  swift_getObjectType();
  *v8 = a2;
  (*(v6 + 104))(v8, enum case for Either.left<A, B>(_:), v5);

  dispatch thunk of TTRAccountsListsInteractorType.tagReminders(_:withHashtagName:)();
  return (*(v6 + 8))(v8, v5);
}

void sub_10043B8B4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v63 = a3;
  v4 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v4 - 8);
  v54 = &v51 - v5;
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = &v51 - v9;
  v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v53 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRAccountsListsViewModel.List();
  v57 = *(v13 - 8);
  v58 = v13;
  __chkstk_darwin(v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v19 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v51 - v24;
  v26 = sub_100058000(&qword_100783200, &qword_10063F310);
  v59 = *(v26 - 8);
  v60 = v26;
  __chkstk_darwin(v26);
  v28 = (&v51 - v27);
  v61 = a1;
  v29 = sub_1004B1A10(a1);
  v30 = (v20 + 88);
  v31 = *(v20 + 16);
  if (v29)
  {
    v31(v25, v62, v19);
    v32 = (*v30)(v25, v19);
    if (v32 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
    {
      v33 = sub_100058000(&qword_10076BB38, &qword_10063F300);
      (*(*(v33 - 8) + 56))(v63, 1, 1, v33);
      (*(v20 + 8))(v25, v19);
      return;
    }

    if (v32 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
    {
      (*(v20 + 96))(v25, v19);
      v39 = v57;
      v38 = v58;
      (*(v57 + 32))(v18, v25, v58);

      v40 = TTRAccountsListsViewModel.remList(for:)();

      (*(v39 + 8))(v18, v38);
      if (v40)
      {
        *v28 = v40;
        v37 = v59;
        v36 = v60;
        (*(v59 + 104))(v28, enum case for TTRMoveRemindersToListPresenterCapability.TargetList.list<A>(_:), v60);
        goto LABEL_14;
      }

LABEL_12:
      v46 = sub_100058000(&qword_10076BB38, &qword_10063F300);
      (*(*(v46 - 8) + 56))(v63, 1, 1, v46);
      return;
    }
  }

  else
  {
    v31(v22, v62, v19);
    v34 = (*v30)(v22, v19);
    if (v34 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
    {
      (*(v20 + 96))(v22, v19);
      v35 = v53;
      (*(v53 + 32))(v12, v22, v10);
      TTRAccountsListsViewModel.SmartList.type.getter();
      (*(v35 + 8))(v12, v10);
      v37 = v59;
      v36 = v60;
      (*(v59 + 104))(v28, enum case for TTRMoveRemindersToListPresenterCapability.TargetList.predefinedSmartList<A>(_:), v60);
LABEL_14:
      TTRMoveRemindersToListPresenterCapability.paramsForDropping(_:into:reminderForDragItem:)();
      (*(v37 + 8))(v28, v36);
      return;
    }

    if (v34 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
    {
      (*(v20 + 96))(v22, v19);
      v42 = v57;
      v41 = v58;
      (*(v57 + 32))(v15, v22, v58);

      v43 = v54;
      TTRAccountsListsViewModel.listOrCustomSmartList(for:)();

      v45 = v55;
      v44 = v56;
      if ((*(v55 + 48))(v43, 1, v56) != 1)
      {
        v47 = v51;
        (*(v45 + 32))(v51, v43, v44);
        (*(v45 + 16))(v52, v47, v44);
        sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
        TTRMoveRemindersToListPresenterCapability.TargetList.init(listOrCustomSmartList:)();
        (*(v45 + 8))(v47, v44);
        (*(v42 + 8))(v15, v41);
        v37 = v59;
        v36 = v60;
        goto LABEL_14;
      }

      (*(v42 + 8))(v15, v41);
      sub_1000079B4(v43, &unk_10076DF20, &unk_10063BD50);
      goto LABEL_12;
    }
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_100003E30(v48, qword_100782E90);
  v49 = sub_100008E04(_swiftEmptyArrayStorage);
  v50 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown list type", 17, 2uLL, v49, v50);
  __break(1u);
}

void *sub_10043C154(unint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t (*a5)(char *), ...)
{
  v19 = a5;
  v20 = a3;
  v21 = a4;
  v22 = a1;
  v6 = sub_100058000(&qword_10076BB30, &qword_10062FDC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_100058000(&qword_10076BB38, &qword_10063F300);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 72) = type metadata accessor for UUID();
  sub_1000317B8((inited + 48));
  TTRAccountsListsViewModel.PinnedList.id.getter();
  v15 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44(v20, v21, 2, v15);

  sub_10043B8B4(v22, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_10076BB30, &qword_10062FDC0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v17 = v19(v12);
    (*(v10 + 8))(v12, v9);
    return v17;
  }
}

void sub_10043C410(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TTRAccountsListsViewModel.List();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (!a1)
    {
      swift_getObjectType();
      v20 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
      v15 = [v20 nonUserInteractiveStore];

      sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
      v16 = static OS_dispatch_queue.main.getter();
      (*(v8 + 16))(v13, a4, v7);
      v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v22 = swift_allocObject();
      (*(v8 + 32))(v22 + v21, v13, v7);
      v35 = sub_1004523A8;
      v36 = v22;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100009DE4;
      v34 = &unk_100728068;
      v23 = _Block_copy(&aBlock);

      [v15 acceptCalDAVSharedList:a3 queue:v16 completion:v23];

      _Block_release(v23);
      goto LABEL_6;
    }

    if (a1 == 1)
    {
      swift_getObjectType();
      v14 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
      v15 = [v14 nonUserInteractiveStore];

      sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
      v16 = static OS_dispatch_queue.main.getter();
      (*(v8 + 16))(v13, a4, v7);
      v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v18 = swift_allocObject();
      (*(v8 + 32))(v18 + v17, v13, v7);
      v35 = sub_100452394;
      v36 = v18;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100009DE4;
      v34 = &unk_100728018;
      v19 = _Block_copy(&aBlock);

      [v15 rejectCalDAVSharedList:a3 queue:v16 completion:v19];
      _Block_release(v19);

LABEL_6:

      return;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100003E30(v24, qword_100782E90);
    (*(v8 + 16))(v10, a4, v7);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v8 + 8))(v10, v7);
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Canceled CalDAV share invitation response {list.objectID: %@}", v27, 0xCu);
      sub_1000079B4(v28, &unk_10076DF80, &qword_10062F730);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }
  }
}

void sub_10043C958(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v8 = type metadata accessor for TTRAccountsListsViewModel.List();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_100782E90);
    (*(v9 + 16))(v14, a2, v8);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = a3;
      v21 = v20;
      v33 = v20;
      *v18 = 138412546;
      v22 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v9 + 8))(v14, v8);
      *(v18 + 4) = v22;
      *v19 = v22;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_100004060(v23, v24, &v33);

      *(v18 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, v32, v18, 0x16u);
      sub_1000079B4(v19, &unk_10076DF80, &qword_10062F730);

      sub_100004758(v21);
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }
  }

  else
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100003E30(v26, qword_100782E90);
    (*(v9 + 16))(v11, a2, v8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v9 + 8))(v11, v8);
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, a4, v29, 0xCu);
      sub_1000079B4(v30, &unk_10076DF80, &qword_10062F730);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }
  }
}

void sub_10043CD94(uint64_t a1)
{
  v42 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = v38 - v5;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v38[0] = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v38 - v10;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x6F436D6574496D73;
  *(inited + 40) = 0xEB00000000746E75;
  v38[1] = v1;

  v14 = TTRAccountsListsViewModel.pinnedListsSectionItems.getter();

  v15 = *(v14 + 16);

  *(inited + 48) = v15;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 1835365449;
  *(inited + 88) = 0xE400000000000000;
  sub_10001F128(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item, &protocol conformance descriptor for TTRAccountsListsViewModel.Item);
  v16 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v16;
  *(inited + 104) = v17;
  v18 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Reminders Accounts List Show Context Menu {smItemCount: %ld} from {Item: %@)", 76, 2, v18);

  v19 = *(v7 + 16);
  v19(v11, a1, v6);
  v20 = (*(v7 + 88))(v11, v6);
  if (v20 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v7 + 96))(v11, v6);
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 8))(v11, v21);
    return;
  }

  if (v20 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_9;
  }

  if (v20 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    goto LABEL_12;
  }

  if (v20 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    v22 = 1;
    goto LABEL_15;
  }

  if (v20 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    goto LABEL_12;
  }

  if (v20 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
  {
LABEL_9:
    (*(v7 + 8))(v11, v6);
    return;
  }

  if (v20 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_12:
    v22 = 0;
LABEL_15:
    (*(v7 + 8))(v11, v6);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = v38[0];
    v19(v38[0], a1, v6);
    v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v26 = swift_allocObject();
    (*(v7 + 32))(v26 + v25, v24, v6);
    v27 = v26 + ((v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v27 = v23;
    *(v27 + 8) = v22;
    v28 = v40;
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    v29 = v41;
    v30 = v42;
    (*(v41 + 16))(v39, v28, v42);
    sub_10001F128(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
    AnyHashable.init<A>(_:)();
    (*(v29 + 8))(v28, v30);
    v31 = type metadata accessor for TTRITreeViewContextMenuItemIdentifier();
    memset(v45, 0, sizeof(v45));
    v32 = objc_allocWithZone(v31);
    sub_1001D3A20(aBlock, v32 + OBJC_IVAR____TtC9Reminders37TTRITreeViewContextMenuItemIdentifier_itemID);
    sub_10000794C(v45, v32 + OBJC_IVAR____TtC9Reminders37TTRITreeViewContextMenuItemIdentifier_userInfo, &qword_10076AE40, &qword_10062EE50);
    v44.receiver = v32;
    v44.super_class = v31;
    v33 = objc_msgSendSuper2(&v44, "init");
    sub_1000079B4(v45, &qword_10076AE40, &qword_10062EE50);
    sub_100077654(aBlock);
    v34 = objc_opt_self();
    aBlock[4] = sub_1004590B0;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10044EA48;
    aBlock[3] = &unk_100729120;
    v35 = _Block_copy(aBlock);

    [v34 configurationWithIdentifier:v33 previewProvider:0 actionProvider:v35];

    _Block_release(v35);
    return;
  }

  if (v20 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v20 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    v36 = sub_100008E04(_swiftEmptyArrayStorage);
    v37 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v36, v37);
    __break(1u);
  }
}

Class sub_10043D624(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v52) = a4;
  v53 = a3;
  v4 = sub_100058000(&unk_10078D440, &unk_10062FBB0);
  __chkstk_darwin(v4 - 8);
  v49 = v46 - v5;
  v6 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  __chkstk_darwin(v6);
  v47 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = v46 - v9;
  v10 = sub_100058000(&unk_10076B7F0, &qword_10063F330);
  __chkstk_darwin(v10 - 8);
  v12 = v46 - v11;
  v13 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&unk_10078D450, &qword_10062FBC0);
  __chkstk_darwin(v17 - 8);
  v19 = v46 - v18;
  v20 = type metadata accessor for TTRAccountsListsViewModel.List();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.Item.listOrCustomSmartList.getter();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1000079B4(v19, &unk_10078D450, &qword_10062FBC0);
    TTRAccountsListsViewModel.Item.group.getter();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1000079B4(v12, &unk_10076B7F0, &qword_10063F330);
      v24 = v49;
      TTRAccountsListsViewModel.Item.recentlyDeletedList.getter();
      v26 = v50;
      v25 = v51;
      if ((*(v50 + 48))(v24, 1, v51) == 1)
      {
        sub_1000079B4(v24, &unk_10078D440, &unk_10062FBB0);
        return 0;
      }

      else
      {
        v28 = *(v26 + 32);
        v29 = v48;
        v28(v48, v24, v25);
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v31 = Strong;
          v54 = _swiftEmptyArrayStorage;
          v32 = String._bridgeToObjectiveC()();
          v49 = [objc_opt_self() _systemImageNamed:v32];

          v52 = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
          v33 = static TTRLocalizableStrings.RecentlyDeletedList.deleteAllActionText.getter();
          v46[1] = v34;
          v46[2] = v33;
          v35 = swift_allocObject();
          swift_weakInit();
          v53 = v31;
          v36 = v47;
          (*(v26 + 16))(v47, v29, v25);
          v37 = (*(v26 + 80) + 24) & ~*(v26 + 80);
          v38 = v25;
          v39 = swift_allocObject();
          *(v39 + 16) = v35;
          v28((v39 + v37), v36, v25);
          v40 = v49;
          v41 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v42 = v54;
          sub_100003540(0, &unk_10076B890, UIMenu_ptr);
          v43._countAndFlagsBits = 0;
          v43._object = 0xE000000000000000;
          v55.value.super.isa = 0;
          v55.is_nil = 0;
          isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v43, 0, v55, 0, 0xFFFFFFFFFFFFFFFFLL, v42, v45).super.super.isa;

          (*(v26 + 8))(v48, v38);
        }

        else
        {
          (*(v26 + 8))(v29, v25);
          return 0;
        }
      }
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        isa = sub_10043DD68(v16);
      }

      else
      {
        isa = 0;
      }

      (*(v14 + 8))(v16, v13);
    }
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      isa = sub_100433774(v23, v52 & 1);
    }

    else
    {
      isa = 0;
    }

    (*(v21 + 8))(v23, v20);
  }

  return isa;
}

Class sub_10043DD68(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = _swiftEmptyArrayStorage;
  v8 = String._bridgeToObjectiveC()();
  v36 = objc_opt_self();
  v35 = [v36 _systemImageNamed:v8];

  v9 = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  v32[1] = static TTRLocalizableStrings.GroupDetail.showGroupInfoActionText.getter();
  v10 = swift_allocObject();
  v40 = v2;
  swift_weakInit();
  v11 = *(v5 + 16);
  v41 = a1;
  v33 = v11;
  v11(v7, a1, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v38 = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = *(v5 + 32);
  v34 = v12;
  v15 = v13 + v12;
  v16 = v14;
  v39 = v7;
  v14(v15, v7, v4);
  v37 = v35;
  v35 = v9;
  v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v36 _systemImageNamed:v18];

  v36 = static TTRLocalizableStrings.GroupDetail.deleteGroupActionText.getter();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v39;
  v33(v39, v41, v4);
  v22 = v34;
  v23 = v17;
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  v16(v24 + v22, v21, v4);
  v25 = v19;
  v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v27 = v42;
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v43.value.super.isa = 0;
  v43.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v28, 0, v43, 0, 0xFFFFFFFFFFFFFFFFLL, v27, v31).super.super.isa;

  return isa;
}

id sub_10043E1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIPopoverAnchor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_100782E90);
  v10 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Reminders Accounts List Show Context Menu For Hashtag Label", 59, 2, v10);

  v11 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v12 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v11;
  *(v13 + 3) = a1;
  *(v13 + 4) = a2;
  (*(v7 + 32))(&v13[v12], aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v14 = objc_opt_self();
  aBlock[4] = sub_100456268;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10044EA48;
  aBlock[3] = &unk_100728388;
  v15 = _Block_copy(aBlock);

  v16 = [v14 configurationWithIdentifier:0 previewProvider:0 actionProvider:v15];

  _Block_release(v15);
  return v16;
}

Class sub_10043E47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for TTRIPopoverAnchor();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v34 = Strong;
  v45 = a3;
  TTRWithUnsafeMainActor<A>(operation:)();
  v43 = v47;
  v46 = sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  v44 = static TTRLocalizableStrings.Hashtags.renameTagMenuItem.getter();
  v39 = v12;
  v13 = String._bridgeToObjectiveC()();
  v41 = objc_opt_self();
  v35 = [v41 _systemImageNamed:v13];

  v14 = swift_allocObject();
  swift_weakInit();
  v42 = *(v9 + 16);
  v42(&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v8;
  v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v38 = a5;
  v17 = a4;
  v18 = v45;
  *(v16 + 2) = v14;
  *(v16 + 3) = v18;
  *(v16 + 4) = a4;
  v40 = *(v9 + 32);
  v40(&v16[v15], &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  LODWORD(v14) = v43;
  v44 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v39 = static TTRLocalizableStrings.Hashtags.deleteTagMenuItem(tagCount:)();
  v35 = v19;
  v20 = String._bridgeToObjectiveC()();
  v41 = [v41 _systemImageNamed:v20];

  v21 = 2;
  if (v14)
  {
    v21 = 3;
  }

  v43 = v21;
  v22 = swift_allocObject();
  swift_weakInit();

  v24 = v36;
  v23 = v37;
  v42(v36, v38, v37);
  v25 = swift_allocObject();
  v26 = v45;
  *(v25 + 2) = v22;
  *(v25 + 3) = v26;
  *(v25 + 4) = v17;
  v40(&v25[v15], v24, v23);

  v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10062D410;
  *(v28 + 32) = v44;
  *(v28 + 40) = v27;
  v32 = v28;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v48.value.super.isa = 0;
  v48.is_nil = 0;
  v30.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, 0, v48, 0, 0xFFFFFFFFFFFFFFFFLL, v32, v33).super.super.isa;

  return v30.super.super.isa;
}

double sub_10043E900(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v46 = a3;
  v6 = type metadata accessor for TTRIPopoverAnchor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for TTRHashtagAssociationOperation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v39 - v16);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v45 = v11;
    v19 = v12;
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003E30(v20, qword_100782E90);
    v21 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Accounts lists show rename tag UI", 33, 2, v21);

    v22 = sub_10000C36C((Strong + 112), *(Strong + 136));
    *v17 = v46;
    v17[1] = a4;
    (*(v13 + 104))(v17, enum case for TTRHashtagAssociationOperation.renameHashtagLabel(_:), v12);
    v23 = *v22;
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v46 = v24;
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v45, 1, 1, v25);
      v26 = v42;
      (*(v13 + 16))(v42, v17, v19);
      v27 = *(v7 + 16);
      v41 = v19;
      v28 = v44;
      v27(v44, v43, v6);
      v29 = *(v13 + 80);
      v43 = a4;
      v30 = (v29 + 40) & ~v29;
      v31 = *(v7 + 80);
      v40 = v6;
      v32 = (v14 + v31 + v30) & ~v31;
      v33 = swift_allocObject();
      *(v33 + 2) = 0;
      *(v33 + 3) = 0;
      *(v33 + 4) = v23;
      v34 = &v33[v30];
      v35 = v41;
      (*(v13 + 32))(v34, v26, v41);
      (*(v7 + 32))(&v33[v32], v28, v40);
      v36 = v46;
      *&v33[(v8 + v32 + 7) & 0xFFFFFFFFFFFFFFF8] = v46;

      v37 = v36;
      sub_10009E31C(0, 0, v45, &unk_10063F1E8, v33);

      (*(v13 + 8))(v17, v35);
    }

    else
    {
      v38 = *(v13 + 8);

      v38(v17, v19);
    }
  }

  return result;
}

double sub_10043ED6C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v7 = type metadata accessor for TTRIPopoverAnchor();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  __chkstk_darwin(v7);
  v9 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for TTRHashtagAssociationOperation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v46 = (&v39 - v16);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v41 = a5;
    v45 = v12;
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_100782E90);
    v19 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Accounts lists delete tag", 25, 2, v19);

    v20 = sub_10000C36C((Strong + 112), *(Strong + 136));
    sub_100058000(&unk_100771E10, &qword_100634270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = v44;
    *(inited + 40) = a4;

    v22 = sub_10000FBDC(inited);
    swift_setDeallocating();
    sub_100007E80(inited + 32);
    v24 = v45;
    v23 = v46;
    *v46 = v22;
    (*(v13 + 104))(v23, enum case for TTRHashtagAssociationOperation.deleteHashtagLabels(_:), v24);
    v25 = *v20;
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v44 = v26;
      v27 = type metadata accessor for TaskPriority();
      v28 = *(*(v27 - 8) + 56);
      v40 = v11;
      v28(v11, 1, 1, v27);
      v29 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v29, v23, v24);
      v30 = v42;
      v31 = v43;
      (*(v42 + 16))(&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v43);
      v32 = (*(v13 + 80) + 40) & ~*(v13 + 80);
      v33 = (v14 + *(v30 + 80) + v32) & ~*(v30 + 80);
      v34 = swift_allocObject();
      *(v34 + 2) = 0;
      *(v34 + 3) = 0;
      *(v34 + 4) = v25;
      v35 = &v34[v32];
      v24 = v45;
      (*(v13 + 32))(v35, v29, v45);
      (*(v30 + 32))(&v34[v33], &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
      v36 = v44;
      *&v34[(v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8] = v44;

      v37 = v36;
      v38 = v34;
      v23 = v46;
      sub_10009E31C(0, 0, v40, &unk_10063F1E0, v38);
    }

    (*(v13 + 8))(v23, v24);
  }

  return result;
}

void sub_10043F208(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_100058000(&qword_100771DD0, qword_100634780);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;

  v17 = TTRAccountsListsViewModel.visiblePinnedLists.getter();

  v30 = a1;
  sub_1002ECBA8(sub_100453E58, v17, v16);

  sub_10000794C(v16, v13, &qword_100771DD0, qword_100634780);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_1000079B4(v16, &qword_100771DD0, qword_100634780);
    sub_1000079B4(v13, &qword_100771DD0, qword_100634780);
  }

  else
  {
    (*(v5 + 32))(v10, v13, v4);
    (*(v5 + 16))(v7, v10, v4);
    v18 = (*(v5 + 88))(v7, v4);
    if (v18 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
    {
      (*(v5 + 96))(v7, v4);
      v20 = v27;
      v19 = v28;
      v21 = v29;
      (*(v28 + 32))(v27, v7, v29);
      TTRAccountsListsViewModel.SmartList.shouldBeVisible.getter();
      (*(v19 + 8))(v20, v21);
      (*(v5 + 8))(v10, v4);
      sub_1000079B4(v16, &qword_100771DD0, qword_100634780);
    }

    else if (v18 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
    {
      v22 = *(v5 + 8);
      v22(v10, v4);
      sub_1000079B4(v16, &qword_100771DD0, qword_100634780);
      v22(v7, v4);
    }

    else
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100003E30(v23, qword_100782E90);
      v24 = sub_100008E04(_swiftEmptyArrayStorage);
      v25 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown list type", 17, 2uLL, v24, v25);
      __break(1u);
    }
  }
}

void sub_10043F68C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    TTRAccountsListsViewModel.SmartList.type.getter();
    sub_10001F128(&qword_10077B010, &type metadata accessor for TTRListType.PredefinedSmartListType, &protocol conformance descriptor for TTRListType.PredefinedSmartListType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v23 != v21 || v24 != v22)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v20 + 8))(v5, v3);
    (*(v7 + 8))(v9, v6);
  }

  else if (v15 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_100782E90);
    v17 = sub_100008E04(_swiftEmptyArrayStorage);
    v18 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown list type", 17, 2uLL, v17, v18);
    __break(1u);
  }
}

void sub_10043FA6C()
{
  static TTRLocalizableStrings.AccountsList.cantPinListAlertTitle.getter();
  static TTRLocalizableStrings.AccountsList.cantPinListAlertMessage.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertOKButton.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() actionWithTitle:v3 style:1 handler:0];

  [v7 addAction:v4];
  sub_10000C36C((v0 + 112), *(v0 + 136));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong presentViewController:v7 animated:1 completion:0];
  }
}

void sub_10043FBD4(uint64_t a1)
{
  v2 = type metadata accessor for TTRPermissionConfiguration.TTRUpgradeType();
  v76 = *(v2 - 8);
  v77 = v2;
  __chkstk_darwin(v2);
  v71 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v74 = &v69 - v5;
  __chkstk_darwin(v6);
  v75 = &v69 - v7;
  __chkstk_darwin(v8);
  v73 = &v69 - v9;
  v10 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v10 - 8);
  v79 = &v69 - v11;
  v12 = sub_100058000(&qword_100783140, &qword_10063F158);
  __chkstk_darwin(v12 - 8);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v69 - v15;
  v17 = type metadata accessor for REMAccountsListDataView.Model();
  v80 = *(v17 - 8);
  __chkstk_darwin(v17);
  v70 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v78 = &v69 - v20;
  v21 = type metadata accessor for TTRPrivacyType();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v69 - v26;
  v28 = type metadata accessor for TTRPermissionConfiguration.Action();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v32, a1, v28, v30);
  v33 = (*(v29 + 88))(v32, v28);
  if (v33 == enum case for TTRPermissionConfiguration.Action.dismiss(_:))
  {
    (*(v29 + 96))(v32, v28);
    (*(v22 + 32))(v27, v32, v21);
    v34 = v81;
    v84 = *(v81 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker);
    type metadata accessor for TTRIPrivacyChecker();
    TTRPrivacyChecker.dismissInlineRequest(for:)();
    v35 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
    swift_beginAccess();
    sub_10000794C(v34 + v35, v16, &qword_100783140, &qword_10063F158);
    v36 = v80;
    if ((*(v80 + 48))(v16, 1, v17) == 1)
    {
      (*(v22 + 8))(v27, v21);
      v37 = v16;
LABEL_4:
      sub_1000079B4(v37, &qword_100783140, &qword_10063F158);
      return;
    }

    v45 = v78;
    (*(v36 + 32))(v78, v16, v17);
    sub_10001AFE0(v45, 0, 2, 1);
    (*(v36 + 8))(v45, v17);
    (*(v22 + 8))(v27, v21);
    return;
  }

  v38 = v21;
  v40 = v80;
  v39 = v81;
  if (v33 == enum case for TTRPermissionConfiguration.Action.requestAccess(_:))
  {
    v41 = type metadata accessor for TaskPriority();
    v42 = v79;
    (*(*(v41 - 8) + 56))(v79, 1, 1, v41);
    v43 = *(v39 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker);
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v43;

    sub_10009E31C(0, 0, v42, &unk_10063F210, v44);

    (*(v29 + 8))(v32, v28);
    return;
  }

  if (v33 == enum case for TTRPermissionConfiguration.Action.openSettings(_:))
  {
    (*(v29 + 96))(v32, v28);
    (*(v22 + 32))(v24, v32, v38);
    TTRIPrivacyChecker.openSettingsApp(for:)();
    (*(v22 + 8))(v24, v38);
    return;
  }

  if (v33 == enum case for TTRPermissionConfiguration.Action.requestUpgrade(_:))
  {
    (*(v29 + 96))(v32, v28);
    v46 = *&v32[*(sub_100058000(&qword_100783190, &qword_10063F200) + 48)];
    v48 = v76;
    v47 = v77;
    v49 = v73;
    (*(v76 + 32))(v73, v32, v77);
    (*(v48 + 104))(v75, enum case for TTRPermissionConfiguration.TTRUpgradeType.iCloudSync(_:), v47);
    sub_10001F128(&qword_100783198, &type metadata accessor for TTRPermissionConfiguration.TTRUpgradeType, &protocol conformance descriptor for TTRPermissionConfiguration.TTRUpgradeType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v84 == v82 && v85 == v83)
    {
      v50 = 1;
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v59 = *(v48 + 8);
    v59(v75, v47);

    sub_100426100(v46, v50 & 1);

    v59(v49, v47);
    return;
  }

  v51 = v76;
  if (v33 != enum case for TTRPermissionConfiguration.Action.dismissUpgradeRequest(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100003E30(v63, qword_100782E90);
    v64 = sub_100008E04(_swiftEmptyArrayStorage);
    v65 = sub_100008E04(_swiftEmptyArrayStorage);
    v66 = "Unknown action";
    v67 = 14;
    goto LABEL_31;
  }

  (*(v29 + 96))(v32, v28);
  v52 = v74;
  v53 = v77;
  (*(v51 + 32))(v74, v32, v77);
  v54 = v71;
  (*(v51 + 16))(v71, v52, v53);
  v55 = (*(v51 + 88))(v54, v53);
  if (v55 != enum case for TTRPermissionConfiguration.TTRUpgradeType.calDAV(_:))
  {
    if (v55 == enum case for TTRPermissionConfiguration.TTRUpgradeType.iCloudSync(_:))
    {
      v57 = v39;
      v58 = v40;
      type metadata accessor for TTRUserDefaults();
      v56 = static TTRUserDefaults.appUserDefaults.getter();
      TTRUserDefaults.iCloudSyncTipDismissed.setter();
      goto LABEL_22;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100003E30(v68, qword_100782E90);
    v64 = sub_100008E04(_swiftEmptyArrayStorage);
    v65 = sub_100008E04(_swiftEmptyArrayStorage);
    v66 = "Unknown upgrade type";
    v67 = 20;
LABEL_31:
    sub_1003F9818(v66, v67, 2uLL, v64, v65);
    __break(1u);
    return;
  }

  type metadata accessor for TTRUserDefaults();
  v56 = static TTRUserDefaults.appUserDefaults.getter();
  TTRUserDefaults.migrationTipDismissed.setter();
  v57 = v39;
  v58 = v40;
LABEL_22:

  v60 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  swift_beginAccess();
  v61 = v72;
  sub_10000794C(v57 + v60, v72, &qword_100783140, &qword_10063F158);
  if ((*(v58 + 48))(v61, 1, v17) == 1)
  {
    (*(v51 + 8))(v52, v53);
    v37 = v61;
    goto LABEL_4;
  }

  v62 = v70;
  (*(v58 + 32))(v70, v61, v17);
  sub_10001AFE0(v62, 0, 2, 1);
  (*(v58 + 8))(v62, v17);
  (*(v51 + 8))(v52, v53);
}

uint64_t sub_100440708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  *(v4 + 16) = a4;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1004407D8;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v5, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1004407D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1004408CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  v6 = type metadata accessor for TTRIPopoverAnchor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  TTRWithUnsafeMainActor<A>(operation:)();
  result = 0;
  if ((aBlock & 1) == 0)
  {
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10062D410;
    v39 = static TTRLocalizableStrings.Hashtags.renameTagMenuItem.getter();
    v45 = v3;
    v10 = sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
    v43 = a3;
    v46 = v10;
    v35 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = *(v7 + 16);
    v42 = v7 + 16;
    v44 = v12;
    v12(&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v41 = *(v7 + 80);
    v13 = (v41 + 40) & ~v41;
    v38 = v13;
    v14 = swift_allocObject();
    v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = v7;
    v16 = v14;
    v17 = v48;
    *(v14 + 2) = v11;
    *(v14 + 3) = v17;
    *(v14 + 4) = a2;
    v40 = *(v15 + 32);
    v40(&v14[v13], &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v18 = objc_allocWithZone(UIAccessibilityCustomAction);
    v36 = a2;
    v19 = v18;

    v20 = String._bridgeToObjectiveC()();

    v53 = sub_100453E90;
    v54 = v16;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v39 = &v51;
    v51 = sub_10044E9F0;
    v52 = &unk_100728298;
    v21 = _Block_copy(&aBlock);
    v22 = v35;
    v23 = [v19 initWithName:v20 image:v35 actionHandler:v21];

    _Block_release(v21);

    *(v47 + 32) = v23;
    static TTRLocalizableStrings.Hashtags.deleteTagMenuItem(tagCount:)();
    v24 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v37;
    v27 = v6;
    v44(v37, v43, v6);
    v28 = v38;
    v29 = swift_allocObject();
    v30 = v48;
    *(v29 + 2) = v25;
    *(v29 + 3) = v30;
    *(v29 + 4) = v36;
    v40(&v29[v28], v26, v27);
    v31 = objc_allocWithZone(UIAccessibilityCustomAction);

    v32 = String._bridgeToObjectiveC()();

    v53 = sub_100453EA8;
    v54 = v29;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_10044E9F0;
    v52 = &unk_1007282E8;
    v33 = _Block_copy(&aBlock);
    v34 = [v31 initWithName:v32 image:v24 actionHandler:v33];

    _Block_release(v33);

    result = v47;
    *(v47 + 40) = v34;
  }

  return result;
}

BOOL sub_100440DAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v42 = a3;
  v6 = type metadata accessor for TTRIPopoverAnchor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v43 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v9 - 8);
  v44 = v38 - v10;
  v11 = type metadata accessor for TTRHashtagAssociationOperation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v41 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (v38 - v15);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v40 = a5;
    v18 = v11;
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_100782E90);
    v20 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Accounts lists show rename tag UI", 33, 2, v20);

    v21 = sub_10000C36C((Strong + 112), *(Strong + 136));
    v22 = v45;
    *v16 = v42;
    v16[1] = v22;
    (*(v12 + 104))(v16, enum case for TTRHashtagAssociationOperation.renameHashtagLabel(_:), v11);
    v23 = *v21;
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v42 = v24;
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v44, 1, 1, v25);
      v26 = v41;
      (*(v12 + 16))(v41, v16, v18);
      v27 = *(v7 + 16);
      v38[1] = v23;
      v27(v43, v40, v6);
      v28 = *(v12 + 80);
      v39 = v18;
      v40 = v6;
      v29 = (v28 + 40) & ~v28;
      v30 = (v13 + *(v7 + 80) + v29) & ~*(v7 + 80);
      v31 = swift_allocObject();
      *(v31 + 2) = 0;
      *(v31 + 3) = 0;
      *(v31 + 4) = v23;
      v32 = v26;
      v33 = v39;
      (*(v12 + 32))(&v31[v29], v32, v39);
      (*(v7 + 32))(&v31[v30], v43, v40);
      v34 = v42;
      *&v31[(v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8] = v42;

      v35 = v34;
      sub_10009E31C(0, 0, v44, &unk_10063F1D8, v31);

      (*(v12 + 8))(v16, v33);
    }

    else
    {
      v36 = *(v12 + 8);

      v36(v16, v11);
    }
  }

  return Strong != 0;
}

BOOL sub_100441220(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v46 = a3;
  v7 = type metadata accessor for TTRIPopoverAnchor();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v9 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for TTRHashtagAssociationOperation();
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v16 = (&v41 - v15);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v18 = Strong;
  if (Strong)
  {
    v47 = v12;
    v48 = Strong;
    v43 = a5;
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_100782E90);
    v20 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44("Accounts lists delete tag", 25, 2, v20);

    v21 = sub_10000C36C((v48 + 112), *(v48 + 136));
    sub_100058000(&unk_100771E10, &qword_100634270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = v46;
    *(inited + 40) = a4;

    v23 = sub_10000FBDC(inited);
    swift_setDeallocating();
    sub_100007E80(inited + 32);
    *v16 = v23;
    v24 = v49;
    v25 = v47;
    (*(v49 + 104))(v16, enum case for TTRHashtagAssociationOperation.deleteHashtagLabels(_:), v47);
    v26 = *v21;
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v46 = v27;
      v28 = type metadata accessor for TaskPriority();
      v29 = *(*(v28 - 8) + 56);
      v42 = v11;
      v29(v11, 1, 1, v28);
      v30 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v30, v16, v25);
      v31 = v44;
      v32 = v45;
      (*(v44 + 16))(&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v45);
      v33 = (*(v24 + 80) + 40) & ~*(v24 + 80);
      v34 = (v13 + *(v31 + 80) + v33) & ~*(v31 + 80);
      v35 = swift_allocObject();
      *(v35 + 2) = 0;
      *(v35 + 3) = 0;
      *(v35 + 4) = v26;
      v36 = &v35[v33];
      v25 = v47;
      (*(v49 + 32))(v36, v30, v47);
      (*(v31 + 32))(&v35[v34], &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
      v37 = v46;
      *&v35[(v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8] = v46;

      v38 = v37;
      v39 = v35;
      v24 = v49;
      sub_10009E31C(0, 0, v42, &unk_10063F1D0, v39);
    }

    (*(v24 + 8))(v16, v25);
    v18 = v48;
  }

  return v18 != 0;
}

id sub_1004416C8(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = *(v4 + 16);
  v11(&v26 - v9, a1, v3, v8);
  v12 = (*(v4 + 88))(v10, v3);
  if (v12 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v4 + 96))(v10, v3);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v10, v13);
LABEL_8:
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  if (v12 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
LABEL_7:
    (*(v4 + 8))(v10, v3);
    goto LABEL_8;
  }

  if (v12 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    (*(v4 + 8))(v10, v3);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v14 = swift_allocObject();
    *(v14 + 1) = xmmword_10062D410;
    v14[4] = sub_100441BD0(v1, a1);
    v14[5] = sub_10044252C(v1, a1);
  }

  else
  {
    if (v12 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      goto LABEL_7;
    }

    v14 = _swiftEmptyArrayStorage;
    if (v12 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v12 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100003E30(v22, qword_100782E90);
      v23 = sub_100008E04(_swiftEmptyArrayStorage);
      v24 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown list type", 17, 2uLL, v23, v24);
      __break(1u);
LABEL_33:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_11;
      }

LABEL_34:

      return 0;
    }
  }

LABEL_9:
  (v11)(v6, a1, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v15, v6, v3);
  v17 = static TTRDebugMenuUtilities.objectIDContextualActions(provideObjectID:)();

  v27 = v14;
  sub_100081654(v17);
  if (v27 >> 62)
  {
    goto LABEL_33;
  }

  if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_11:
  sub_100003540(0, &qword_10076BC40, UIContextualAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [objc_opt_self() configurationWithActions:isa];

  return v19;
}

id sub_100441BD0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_100458D78;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100422764;
  aBlock[3] = &unk_100728FE0;
  v9 = _Block_copy(aBlock);
  v10 = objc_opt_self();

  v11 = [v10 contextualActionWithStyle:1 title:0 handler:v9];
  _Block_release(v9);

  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  if (v13)
  {
    v14 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
    v15 = [v13 imageWithConfiguration:v14];

    if (v15)
    {
      v16 = objc_opt_self();
      v13 = v15;
      v17 = [v16 mainBundle];
      v23._object = 0x80000001006718B0;
      v18._countAndFlagsBits = 0x6574656C6544;
      v18._object = 0xE600000000000000;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      v23._countAndFlagsBits = 0xD00000000000002CLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v23);

      v20 = String._bridgeToObjectiveC()();

      [v13 setAccessibilityLabel:v20];
    }

    else
    {
      v13 = 0;
    }
  }

  [v11 setImage:v13];

  return v11;
}

double sub_100441F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a3;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v9 + 16))(v11, a6, v8);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v17;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = v16;
  (*(v9 + 32))(&v20[v18], v11, v8);
  v21 = &v20[v19];
  *v21 = v23;
  v21[1] = a4;

  sub_10009E31C(0, 0, v14, &unk_10063F390, v20);

  return result;
}

uint64_t sub_1004421EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v9;
  v7[11] = v8;

  return _swift_task_switch(sub_100442288, v9, v8);
}

uint64_t sub_100442288()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_100442380;
    v3 = v0[6];

    return sub_10042A5AC(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100442380(char a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_1004424A8, v4, v3);
}

uint64_t sub_1004424A8()
{
  v1 = *(v0 + 112);

  if ((v1 & 1) == 0)
  {
    (*(v0 + 56))(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

id sub_10044252C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_100458CC8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100422764;
  aBlock[3] = &unk_100728F90;
  v9 = _Block_copy(aBlock);
  v10 = objc_opt_self();

  v11 = [v10 contextualActionWithStyle:0 title:0 handler:v9];
  _Block_release(v9);

  sub_1004428D0(a2);
  static REMFeatureFlags.isSolariumEnabled.getter();
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  if (v13)
  {
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 configurationWithTextStyle:UIFontTextStyleBody scale:3];
    v17 = [v15 imageWithConfiguration:v16];

    if (v17)
    {
      v17 = v17;
      v18 = String._bridgeToObjectiveC()();

      [v17 setAccessibilityLabel:v18];
    }

    else
    {
    }
  }

  else
  {

    v17 = 0;
  }

  [v11 setImage:v17];
  v19 = [objc_opt_self() tertiaryLabelColor];
  [v11 setBackgroundColor:v19];

  return v11;
}

void sub_1004428D0(uint64_t a1)
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
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003E30(v9, qword_100782E90);
    v10 = sub_100008E04(_swiftEmptyArrayStorage);
    v11 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v10, v11);
    __break(1u);
  }
}

void sub_100442C54(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100003E30(v34, qword_100782E90);
    v35 = sub_100008E04(_swiftEmptyArrayStorage);
    v36 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v35, v36);
    __break(1u);
  }
}

void sub_1004432A8(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for TTRAccountsListsViewModel.List();
  v51 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + 16);
  v48 = a1;
  v15(v10, a1, v5, v12);
  v16 = (*(v6 + 88))(v10, v5);
  if (v16 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v6 + 96))(v10, v5);
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 8))(v10, v17);
    return;
  }

  if (v16 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v16 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v16 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v16 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_7;
  }

  if (v16 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v16 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    (*(v6 + 96))(v10, v5);
    (*(v51 + 32))(v14, v10, v11);
    TTRAccountsListsViewModel.List.pinState.getter();
    v20 = v49;
    v19 = v50;
    v21 = (*(v49 + 88))(v4, v50);
    if (v21 != enum case for TTRAccountsListsViewModel.List.PinState.supported(_:))
    {
      if (v21 == enum case for TTRAccountsListsViewModel.List.PinState.notSupported(_:))
      {
        (*(v51 + 8))(v14, v11);
        return;
      }

      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100003E30(v46, qword_100782E90);
      v43 = sub_100008E04(_swiftEmptyArrayStorage);
      v44 = sub_100008E04(_swiftEmptyArrayStorage);
      v45 = "Unknown pin state";
      goto LABEL_40;
    }

    (*(v51 + 8))(v14, v11);
    (*(v20 + 96))(v4, v19);
    if ((*v4 & 1) == 0)
    {
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = v47;
      (v15)(v47, v48, v5);
      v24 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v22;
      (*(v6 + 32))(v25 + v24, v23, v5);
      aBlock[4] = sub_100458B98;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100422764;
      aBlock[3] = &unk_100728EF0;
      v26 = _Block_copy(aBlock);
      v27 = objc_opt_self();

      v28 = [v27 contextualActionWithStyle:0 title:0 handler:v26];
      _Block_release(v26);

      v29 = String._bridgeToObjectiveC()();
      v30 = [objc_opt_self() _systemImageNamed:v29];

      if (v30)
      {
        v31 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
        v32 = [v30 imageWithConfiguration:v31];

        if (v32)
        {
          v33 = objc_opt_self();
          v30 = v32;
          v34 = [v33 mainBundle];
          v53._object = 0x80000001006718E0;
          v35._countAndFlagsBits = 7235920;
          v35._object = 0xE300000000000000;
          v36._countAndFlagsBits = 0;
          v36._object = 0xE000000000000000;
          v53._countAndFlagsBits = 0xD00000000000002BLL;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v53);

          v37 = String._bridgeToObjectiveC()();

          [v30 setAccessibilityLabel:v37];
        }

        else
        {
          v30 = 0;
        }
      }

      [v28 setImage:v30];
      v38 = [objc_opt_self() ttr_systemYellowColor];
      [v28 setBackgroundColor:v38];

      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_10062D420;
      *(v39 + 32) = v28;
      sub_100003540(0, &qword_10076BC40, UIContextualAction_ptr);
      v40 = v28;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [objc_opt_self() configurationWithActions:isa];
    }
  }

  else
  {
    if (v16 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v16 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v16 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v16 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v16 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v16 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v16 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v16 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_7:
      (*(v6 + 8))(v10, v5);
      return;
    }

    if (v16 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v16 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100003E30(v42, qword_100782E90);
      v43 = sub_100008E04(_swiftEmptyArrayStorage);
      v44 = sub_100008E04(_swiftEmptyArrayStorage);
      v45 = "Unknown list type";
LABEL_40:
      sub_1003F9818(v45, 17, 2uLL, v43, v44);
      __break(1u);
    }
  }
}

double sub_100443C0C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  (a3)(0, a2);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a7(a6);
  }

  return result;
}

double sub_100443C8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = TTRICollectionViewCollapsedStateChangeContext.shouldUpdateView.getter();

    if (v3)
    {
      TTRICollectionViewCollapsedStateChangeContext.prefersAnimated.getter();
      dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.scheduleUpdateForCollapsedStatesChange(animated:)();
    }

    else
    {
      dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.invalidateCachedCollapsedStates()();
    }
  }

  return result;
}

uint64_t sub_100443D34@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100058000(&qword_100783168, &unk_10063F1A0);
  __chkstk_darwin(v3 - 8);
  v36 = &v35 - v4;
  v5 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v11 = sub_100058000(&unk_100775640, &unk_10062DED0);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = type metadata accessor for TTRListType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState;
  if (*(v1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState) == 1 && (sub_1004442A0() & 1) != 0)
  {
    *(v1 + v18) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      (*(v15 + 56))(v13, 1, 1, v14);
LABEL_12:
      v27 = &unk_100775640;
      v28 = &unk_10062DED0;
      v29 = v13;
LABEL_13:
      sub_1000079B4(v29, v27, v28);
      v30 = type metadata accessor for TTRIAccountsListsSelection(0);
      return (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
    }

    v35 = a1;
    v20 = *sub_10000C36C((Strong + 48), *(Strong + 72));
    swift_beginAccess();
    sub_100010540(v20 + 96, v39);
    sub_10000E224(v40);
    sub_100015124(v39);
    v21 = v41;
    if (v41)
    {
      v22 = v42;
      sub_10000C36C(v40, v41);
      (*(v22 + 16))(v21, v22);
      sub_100004758(v40);
    }

    else
    {
      sub_1000079B4(v40, &unk_100792FE0, &unk_10063C8A0);
      (*(v15 + 56))(v13, 1, 1, v14);
    }

    swift_unknownObjectRelease();
    v26 = (*(v15 + 48))(v13, 1, v14);
    a1 = v35;
    if (v26 == 1)
    {
      goto LABEL_12;
    }

    (*(v15 + 32))(v17, v13, v14);

    v31 = v36;
    TTRAccountsListsViewModel.selection(forExternallyDisplayed:)();

    v33 = v37;
    v32 = v38;
    if ((*(v37 + 48))(v31, 1, v38) == 1)
    {
      (*(v15 + 8))(v17, v14);
      v27 = &qword_100783168;
      v28 = &unk_10063F1A0;
      v29 = v31;
      goto LABEL_13;
    }

    (*(v33 + 32))(v10, v31, v32);
    (*(v33 + 16))(v7, v10, v32);
    sub_100423BDC(v7, a1);
    (*(v33 + 8))(v10, v32);
    (*(v15 + 8))(v17, v14);
    v34 = type metadata accessor for TTRIAccountsListsSelection(0);
    return (*(*(v34 - 8) + 56))(a1, 0, 1, v34);
  }

  else
  {
    v23 = type metadata accessor for TTRIAccountsListsSelection(0);
    v24 = *(*(v23 - 8) + 56);

    return v24(a1, 1, 1, v23);
  }
}

uint64_t sub_1004442A0()
{

  v0 = TTRModuleState.modelReceived.getter();

  if ((v0 & 1) == 0)
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10000C36C((result + 48), *(result + 72));
    v2 = sub_10001D354();
    swift_unknownObjectRelease();
    return v2 == 2;
  }

  return result;
}

BOOL sub_100444328(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = sub_100015600(Strong);
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100782E90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v14 = v8;
    if (v3)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v3)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = v10;
    String.append(_:)(*&v9);

    v12 = sub_100004060(0, 0xE000000000000000, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Accounts Lists: set initial value of isRootViewCollapsedSnapshot { value: %s }", v7, 0xCu);
    sub_100004758(v8);
  }

  result = v3;
  *(a1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot) = v3;
  return result;
}

uint64_t sub_1004444EC(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  sub_100058000(&unk_10076DF20, &unk_10063BD50);
  v2[38] = swift_task_alloc();
  sub_100058000(&qword_1007831D8, &qword_10063F2A8);
  v2[39] = swift_task_alloc();
  v4 = type metadata accessor for TTRAccountsListsInteractorDeleteArguments();
  v2[40] = v4;
  v5 = *(v4 - 8);
  v2[41] = v5;
  v2[42] = *(v5 + 64);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[45] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[46] = v7;
  v2[47] = v6;

  return _swift_task_switch(sub_1004446C0, v7, v6);
}

void sub_1004446C0()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  sub_100058000(&unk_10076BAA0, &unk_10062FD90);
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10062D400;
  v8 = *(v2 + 16);
  v8(v7 + v6, v3, v1);
  (*(v5 + 104))(v7 + v6, enum case for TTRAccountsListsViewModel.Item.group(_:), v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *sub_10000C36C((Strong + 48), *(Strong + 72));

    v11 = sub_10001D354();
    v12 = *(v0 + 304);
    if (v11)
    {
      swift_beginAccess();
      sub_100010540(v10 + 96, v0 + 192);
      sub_100396F88(v12);
      sub_100015124((v0 + 192));
    }

    else
    {
      v15 = type metadata accessor for TTRListOrCustomSmartList();
      (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = *(v0 + 304);
    v14 = type metadata accessor for TTRListOrCustomSmartList();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  v16 = *(v0 + 320);
  v17 = *(v0 + 328);
  v18 = *(v0 + 312);
  TTRAccountsListsInteractorDeleteArguments.init(items:viewModel:currentList:)();
  v19 = (*(v17 + 48))(v18, 1, v16);
  if (v19 == 1)
  {
    v42 = *(v0 + 312);

    sub_1000079B4(v42, &qword_1007831D8, &qword_10063F2A8);
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 296);
    v44 = *(v0 + 280);
    v45 = *(v0 + 264);
    v46 = type metadata accessor for Logger();
    sub_100003E30(v46, qword_100782E90);
    v8(v43, v45, v44);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v51 = *(v0 + 288);
    v50 = *(v0 + 296);
    v52 = *(v0 + 280);
    if (v49)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      v55 = TTRAccountsListsViewModel.Group.objectID.getter();
      (*(v51 + 8))(v50, v52);
      *(v53 + 4) = v55;
      *v54 = v55;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to construct delete arguments for deleting group {group.objectID: %@}", v53, 0xCu);
      sub_1000079B4(v54, &unk_10076DF80, &qword_10062F730);
    }

    else
    {

      (*(v51 + 8))(v50, v52);
    }
  }

  else
  {
    v20 = *(v0 + 352);
    v21 = *(v0 + 320);
    v22 = *(v0 + 328);
    v23 = *(v0 + 312);
    v24 = *(v22 + 32);
    *(v0 + 384) = v24;
    *(v0 + 392) = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24(v20, v23, v21);
    if (TTRAccountsListsInteractorDeleteArguments.shouldShowConfirmation.getter() & 1) != 0 || (static UIAccessibility.ttriIsAccessibilityRunning.getter())
    {
      v25 = *(v0 + 272);
      v26 = TTRAccountsListsViewModel.Group.name.getter();
      v28 = v27;

      v29._object = 0x8000000100686F00;
      v30._countAndFlagsBits = 0xD000000000000031;
      v30._object = 0x8000000100686F20;
      v29._countAndFlagsBits = 0x100000000000001ALL;
      TTRLocalizedString(_:comment:)(v29, v30);
      sub_100058000(&unk_100786CB0, &qword_100636EF0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_10062D400;
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_10005C390();
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      static String.localizedStringWithFormat(_:_:)();

      sub_10001F128(&qword_1007831E0, &type metadata accessor for TTRAccountsListsInteractorDeleteArguments, &protocol conformance descriptor for TTRAccountsListsInteractorDeleteArguments);
      v32 = TTRAccountsListsDeleteArgumentsType.allListsToDelete()();
      sub_1002E9D98(v32);

      v33 = String._bridgeToObjectiveC()();

      v34 = String._bridgeToObjectiveC()();

      v35 = [objc_opt_self() alertControllerWithTitle:v33 message:v34 preferredStyle:1];
      *(v0 + 400) = v35;

      sub_10000C36C((v25 + 112), *(v25 + 136));
      sub_100058000(&qword_100783268, &qword_10063F3B0);
      sub_100058000(&qword_100783270, &qword_10063F3B8);
      v36 = swift_allocObject();
      *(v0 + 408) = v36;
      *(v36 + 16) = xmmword_10062F800;
      static TTRLocalizableStrings.Common.alertCancelButton.getter();
      *(v0 + 233) = 0;
      TTRIValueBasedAlertAction.init(title:style:value:)();
      v37._object = 0x8000000100686F60;
      v38._countAndFlagsBits = 0xD00000000000001ELL;
      v38._object = 0x8000000100686F80;
      v37._countAndFlagsBits = 0xD000000000000011;
      TTRLocalizedString(_:comment:)(v37, v38);
      *(v0 + 234) = 1;
      TTRIValueBasedAlertAction.init(title:style:value:)();
      v39._countAndFlagsBits = 0xD000000000000016;
      v39._object = 0x8000000100686FA0;
      v40._countAndFlagsBits = 0xD000000000000023;
      v40._object = 0x8000000100686FC0;
      TTRLocalizedString(_:comment:)(v39, v40);
      *(v0 + 235) = 2;
      TTRIValueBasedAlertAction.init(title:style:value:)();
      v41 = swift_task_alloc();
      *(v0 + 416) = v41;
      *v41 = v0;
      v41[1] = sub_10044523C;

      sub_100423728(v35, v36);
      return;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v73 = *(v0 + 384);
    v57 = *(v0 + 344);
    v56 = *(v0 + 352);
    v58 = *(v0 + 328);
    v70 = *(v0 + 320);
    v71 = *(v0 + 336);
    v72 = *(v0 + 272);
    v59 = type metadata accessor for Logger();
    sub_100003E30(v59, qword_100782E90);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D3F0;
    *(inited + 32) = 0x746E656D75677261;
    *(inited + 40) = 0xE900000000000073;
    *(inited + 48) = TTRAccountsListsInteractorDeleteArguments.description.getter();
    *(inited + 56) = v61;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0x7473694C7065656BLL;
    *(inited + 88) = 0xE900000000000073;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 0;
    v62 = sub_100008E04(inited);
    swift_setDeallocating();
    sub_100058000(&unk_10076BA70, &qword_10062FD60);
    swift_arrayDestroy();
    sub_10000FD44("Delete group {arguments: %@, keepLists: %d}", 43, 2, v62);

    static TTRLocalizableStrings.UndoAction.deleteGroup.getter();
    v69 = objc_opt_self();
    v63 = String._bridgeToObjectiveC()();

    (*(v58 + 16))(v57, v56, v70);
    v64 = (*(v58 + 80) + 24) & ~*(v58 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = v72;
    v73(v65 + v64, v57, v70);
    *(v65 + v64 + v71) = 0;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_100459020;
    *(v66 + 24) = v65;
    *(v0 + 176) = sub_100068444;
    *(v0 + 184) = v66;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100026440;
    *(v0 + 168) = &unk_100729080;
    v67 = _Block_copy((v0 + 144));

    [v69 withActionName:v63 block:v67];

    _Block_release(v67);
    (*(v58 + 8))(v56, v70);
    LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

    if (v58)
    {
      __break(1u);
      return;
    }
  }

  v68 = *(v0 + 8);

  v68(v19 != 1);
}

uint64_t sub_10044523C(char a1)
{
  v2 = *v1;
  *(*v1 + 236) = a1;

  v3 = *(v2 + 376);
  v4 = *(v2 + 368);

  return _swift_task_switch(sub_100445388, v4, v3);
}

uint64_t sub_100445388()
{
  v1 = *(v0 + 236);

  if (v1 <= 1)
  {
    if (v1)
    {
      v2 = 1;
      goto LABEL_6;
    }

LABEL_10:
    (*(*(v0 + 328) + 8))(*(v0 + 352), *(v0 + 320));
    v15 = 0;
    goto LABEL_11;
  }

  if (v1 != 2)
  {
    goto LABEL_10;
  }

  v2 = 0;
LABEL_6:
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 384);
  v3 = *(v0 + 352);
  v4 = *(v0 + 328);
  v19 = *(v0 + 344);
  v20 = *(v0 + 336);
  v5 = *(v0 + 320);
  v21 = *(v0 + 272);
  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100782E90);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x746E656D75677261;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 48) = TTRAccountsListsInteractorDeleteArguments.description.getter();
  *(inited + 56) = v8;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x7473694C7065656BLL;
  *(inited + 88) = 0xE900000000000073;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = v2;
  v9 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70, &qword_10062FD60);
  swift_arrayDestroy();
  sub_10000FD44("Delete group {arguments: %@, keepLists: %d}", 43, 2, v9);

  static TTRLocalizableStrings.UndoAction.deleteGroup.getter();
  v18 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();

  (*(v4 + 16))(v19, v3, v5);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v21;
  v22(v12 + v11, v19, v5);
  *(v12 + v11 + v20) = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100459020;
  *(v13 + 24) = v12;
  *(v0 + 176) = sub_100068444;
  *(v0 + 184) = v13;
  *(v0 + 144) = _NSConcreteStackBlock;
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_100026440;
  *(v0 + 168) = &unk_100729080;
  v14 = _Block_copy((v0 + 144));

  [v18 withActionName:v10 block:v14];

  _Block_release(v14);
  (*(v4 + 8))(v3, v5);
  v15 = 1;
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:

  v16 = *(v0 + 8);

  return v16(v15);
}

double sub_1004457B0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = type metadata accessor for TTRAccountsListsInteractorDeleteArguments();
  v6[3] = v3;
  v6[4] = sub_10001F128(&qword_1007831E0, &type metadata accessor for TTRAccountsListsInteractorDeleteArguments, &protocol conformance descriptor for TTRAccountsListsInteractorDeleteArguments);
  v4 = sub_1000317B8(v6);
  (*(*(v3 - 8) + 16))(v4, a2, v3);
  dispatch thunk of TTRAccountsListsInteractorType.delete(_:keepSublists:)();
  sub_100004758(v6);
  return sub_1004458A4();
}

double sub_1004458A4()
{
  if (TTRAccountsListsInteractorDeleteArguments.reminderCount.getter() >= 1)
  {
    if (TTRAccountsListsInteractorDeleteArguments.deletingCurrentList.getter())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        sub_10000C36C((Strong + 48), *(Strong + 72));
        if ((sub_10001D354() - 1) < 2u)
        {
          *(v2 + 161) = 1;
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {

      v3 = TTRAccountsListsInteractorDeleteArguments.accounts.getter();
      type metadata accessor for TTRIPrivacyChecker();
      TTRPrivacyChecker.showReminderDeletePrivacyWarningIfNeeded(for:)(v3);
    }
  }

  return result;
}

double sub_1004459A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v4 = type metadata accessor for TTRAccountsListsInteractorDeleteArguments();
  v7[3] = v4;
  v7[4] = sub_10001F128(&qword_1007831E0, &type metadata accessor for TTRAccountsListsInteractorDeleteArguments, &protocol conformance descriptor for TTRAccountsListsInteractorDeleteArguments);
  v5 = sub_1000317B8(v7);
  (*(*(v4 - 8) + 16))(v5, a2, v4);
  dispatch thunk of TTRAccountsListsInteractorType.delete(_:keepSublists:)();
  sub_100004758(v7);
  return sub_1004458A4();
}

void sub_100445AA4(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v55 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRAccountEditor.UndoPolicyForPinnedListOrderingChange();
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject();
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v19 = *(a1 + 16);
  if (!v19)
  {
LABEL_15:
    swift_getObjectType();
    dispatch thunk of TTRAccountsListsInteractorType.pin(lists:)();

    TTRAccountsListsViewModel.activePinnedListsDisplayOrder()();

    v33 = v38;
    v32 = v39;
    v34 = v40;
    (*(v39 + 104))(v38, enum case for TTRAccountEditor.UndoPolicyForPinnedListOrderingChange.disabled(_:), v40);
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.setPinnedListOrdering(_:undoPolicy:)();

    (*(v32 + 8))(v33, v34);
    return;
  }

  v21 = *(v15 + 16);
  v20 = v15 + 16;
  v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
  v53 = *(v20 + 56);
  v54 = v21;
  v52 = (v20 + 72);
  v51 = enum case for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject.pinnedList(_:);
  v43 = enum case for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject.listToPin(_:);
  v42 = (v20 + 80);
  v56 = (v7 + 32);
  v49 = (v7 + 56);
  v50 = (v20 - 8);
  v45 = v7;
  v48 = (v7 + 48);
  v23 = _swiftEmptyArrayStorage;
  v46 = v5;
  v44 = v20;
  while (1)
  {
    v24 = v54;
    (v54)(v18, v22, v11, v16);
    v24(v13, v18, v11);
    v25 = (*v52)(v13, v11);
    if (v25 != v51)
    {
      break;
    }

    v47 = v23;
    v26 = *v50;
    (*v50)(v18, v11);
    (*v49)(v5, 1, 1, v6);
    v26(v13, v11);
    v23 = v47;
LABEL_9:
    if ((*v48)(v5, 1, v6) == 1)
    {
      sub_1000079B4(v5, &unk_10076DF20, &unk_10063BD50);
    }

    else
    {
      v27 = v6;
      v28 = *v56;
      v29 = v27;
      (*v56)(v55, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100548454(0, v23[2] + 1, 1, v23);
      }

      v31 = v23[2];
      v30 = v23[3];
      if (v31 >= v30 >> 1)
      {
        v23 = sub_100548454((v30 > 1), v31 + 1, 1, v23);
      }

      v23[2] = v31 + 1;
      v28(v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v31, v55, v29);
      v6 = v29;
      v5 = v46;
    }

    v22 += v53;
    if (!--v19)
    {
      goto LABEL_15;
    }
  }

  if (v25 == v43)
  {
    (*v50)(v18, v11);
    (*v42)(v13, v11);
    (*v56)(v5, v13, v6);
    (*v49)(v5, 0, 1, v6);
    goto LABEL_9;
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100003E30(v35, qword_100782E90);
  v36 = sub_100008E04(_swiftEmptyArrayStorage);
  v37 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown move subject", 20, 2uLL, v36, v37);
  __break(1u);
}

void sub_1004460F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v38 = a2;
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v52 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v38 - v10);
  v13 = __chkstk_darwin(v12);
  v15 = &v38 - v14;
  v16 = *(a1 + 16);
  v39 = a1;
  if (v16)
  {
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v45 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v19 = a1 + v45;
    v20 = *(v17 + 56);
    v50 = (v17 + 72);
    v51 = v18;
    v49 = enum case for TTRListOrCustomSmartList.list(_:);
    v44 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
    v43 = (v17 - 8);
    v47 = (v17 + 16);
    v48 = (v17 + 80);
    v21 = _swiftEmptyArrayStorage;
    v46 = v17;
    while (1)
    {
      v22 = v51;
      (v51)(v15, v19, v6, v13);
      v22(v11, v15, v6);
      v23 = (*v50)(v11, v6);
      if (v23 == v49)
      {
        (*v48)(v11, v6);
        v24 = *v11;
        v25 = [*v11 isPinned];

        if (v25)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v23 != v44)
        {
          if (qword_1007672D8 != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for Logger();
          sub_100003E30(v35, qword_100782E90);
          v36 = sub_100008E04(_swiftEmptyArrayStorage);
          v37 = sub_100008E04(_swiftEmptyArrayStorage);
          sub_1003F9818("Unknown list type", 17, 2uLL, v36, v37);
          __break(1u);
          return;
        }

        (*v48)(v11, v6);
        v26 = *v11;
        v27 = [*v11 isPinned];

        if (v27)
        {
LABEL_10:
          v28 = *v47;
          (*v47)(v52, v15, v6);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v53 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1004A25B0(0, v21[2] + 1, 1);
            v21 = v53;
          }

          v31 = v21[2];
          v30 = v21[3];
          if (v31 >= v30 >> 1)
          {
            sub_1004A25B0((v30 > 1), v31 + 1, 1);
            v21 = v53;
          }

          v21[2] = v31 + 1;
          v28(v21 + v45 + v31 * v20, v52, v6);
          goto LABEL_4;
        }
      }

      (*v43)(v15, v6);
LABEL_4:
      v19 += v20;
      if (!--v16)
      {
        goto LABEL_16;
      }
    }
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_16:
  v32 = *(v38 + 72);
  ObjectType = swift_getObjectType();
  v34 = sub_1004B654C(v21);

  (v42)(v39, v40, v41, v34, ObjectType, v32);
}

id sub_10044650C(id *a1)
{
  v1 = sub_1004B1D24(*a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];

  return v3;
}

void sub_100446564(id *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1004B1D24(*a1);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = *&v3[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];

  v6 = [v5 hashtagContext];
  if (!v6)
  {

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

LABEL_6:
  *a2 = v5;
}

uint64_t sub_1004465F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10001EFA4;

  return sub_1004466B0(a5);
}

uint64_t sub_1004466B0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100446798, 0, 0);
}

uint64_t sub_100446798(uint64_t a1)
{
  REMList.ttrGroceryContext.getter();
  v2 = v1[5];
  if (v2)
  {
    sub_10000C36C(v1 + 2, v1[5]);
    LOBYTE(v2) = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();
    sub_100004758(v1 + 2);
  }

  else
  {
    sub_1000079B4((v1 + 2), &qword_1007757E0, &qword_100636780);
  }

  v3 = swift_task_alloc();
  v1[13] = v3;
  *v3 = v1;
  v3[1] = sub_100446894;

  return sub_100446B7C(v2 & 1);
}

uint64_t sub_100446894(char a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100446994, 0, 0);
}

uint64_t sub_100446994()
{
  if (*(v0 + 112) - 2 >= 2)
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 80);
    swift_getObjectType();
    dispatch thunk of TTRAccountsListsInteractorType.updateAutoCategorization(for:shouldAutoCategorizeItems:deleteExistingSections:)();
    type metadata accessor for TTRUserDefaults();
    v4 = static TTRUserDefaults.appUserDefaults.getter();
    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    v5 = sub_100058000(&qword_1007757E8, &unk_100635E60);
    v6 = (v1 + *(v5 + 48));
    v7 = (v1 + *(v5 + 80));
    v8 = enum case for REMUserOperation.autoCategorizeDisable(_:);
    v9 = type metadata accessor for REMUserOperation();
    (*(*(v9 - 8) + 104))(v1, v8, v9);
    *v6 = TTRUserDefaults.activitySessionId.getter();
    v6[1] = v10;
    TTRUserDefaults.activitySessionBeginTime.getter();
    *v7 = _typeName(_:qualified:)();
    v7[1] = v11;
    (*(v2 + 104))(v1, enum case for REMAnalyticsEvent.userOperation(_:), v3);
    REMAnalyticsManager.post(event:)();

    (*(v2 + 8))(v1, v3);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100446B7C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 115) = a1;
  v3 = type metadata accessor for TTRRemindersListLayout();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 64) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 72) = v5;
  *(v2 + 80) = v4;

  return _swift_task_switch(sub_100446C8C, v5, v4);
}

uint64_t sub_100446C8C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = enum case for TTRRemindersListLayout.list(_:);
  v6 = *(v4 + 104);
  v6(v1, enum case for TTRRemindersListLayout.list(_:), v3);
  (*(v4 + 16))(v2, v1, v3);
  v7 = (*(v4 + 88))(v2, v3);
  if (v7 == v5)
  {
    v30 = v6;
    v8 = 0xD000000000000097;
    v9 = "List Detail Done {objectID: %@}";
    v10 = 0x636553207065654BLL;
    v11 = 0xEE003F736E6F6974;
LABEL_5:
    v12 = *(v0 + 56);
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v15 = *(v0 + 24);
    v29 = *(v0 + 16);
    v28 = *(v0 + 115);
    v16 = v9 | 0x8000000000000000;
    TTRLocalizedString(_:comment:)(*&v10, *&v8);
    v17 = *(v14 + 8);
    v17(v12, v15);
    v30(v13, v5, v15);
    _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO031ConvertGroceryOrAutoCategorizede9ToRegularE5AlertO38keepExistingSectionConfirmationMessage10listLayout20shouldUseItemWordingSSAA012TTRReminderseU0O_SbtFZ_0(v13, v28);
    v17(v13, v15);
    v18 = String._bridgeToObjectiveC()();

    v19 = String._bridgeToObjectiveC()();

    v20 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:1];
    *(v0 + 88) = v20;

    sub_10000C36C((v29 + 112), *(v29 + 136));
    sub_100058000(&qword_100783278, &qword_10063F3F8);
    sub_100058000(&qword_100783280, &qword_10063F400);
    v21 = swift_allocObject();
    *(v0 + 96) = v21;
    *(v21 + 16) = xmmword_10062F800;
    v22._object = 0x8000000100672C50;
    v23._countAndFlagsBits = 1885693259;
    v23._object = 0xE400000000000000;
    v22._countAndFlagsBits = 0xD000000000000084;
    TTRLocalizedString(_:comment:)(v23, v22);
    *(v0 + 112) = 0;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    v24._countAndFlagsBits = 0x65766F6D6552;
    v25._object = 0x8000000100672C50;
    v24._object = 0xE600000000000000;
    v25._countAndFlagsBits = 0xD000000000000084;
    TTRLocalizedString(_:comment:)(v24, v25);
    *(v0 + 113) = 1;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    *(v0 + 114) = 2;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    v26 = swift_task_alloc();
    *(v0 + 104) = v26;
    *v26 = v0;
    v26[1] = sub_100207280;

    return sub_100423A0C(v20, v21);
  }

  if (v7 == enum case for TTRRemindersListLayout.columns(_:))
  {
    v30 = v6;
    v9 = "st to a regular list";
    v8 = 0xD000000000000096;
    v10 = 0x6C6F43207065654BLL;
    v11 = 0xED00003F736E6D75;
    goto LABEL_5;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

double sub_1004470E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    sub_100429650(a4);
  }

  else
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    sub_100429C6C(a4);
  }

  return result;
}

uint64_t sub_100447170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_100447208, v7, v6);
}

uint64_t sub_100447208()
{
  v0[2] = *(v0[3] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_1004472CC;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1004472CC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1004473EC, v3, v2);
}

uint64_t sub_1004473EC()
{
  v1 = *(v0 + 32);

  sub_10042F924(v1, 1);
  v2 = *(v0 + 8);

  return v2();
}

double sub_10044745C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for TTRAccountsListsViewModel.List();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    (*(v8 + 16))(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
    type metadata accessor for MainActor();

    v17 = static MainActor.shared.getter();
    v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = v17;
    *(v19 + 3) = &protocol witness table for MainActor;
    *(v19 + 4) = v15;
    (*(v8 + 32))(&v19[v18], &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_10009E31C(0, 0, v12, a5, v19);
  }

  return result;
}

uint64_t sub_100447684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_10044771C, v7, v6);
}

uint64_t sub_10044771C()
{
  v0[2] = *(v0[3] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_1004477E0;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1004477E0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100447900, v3, v2);
}

uint64_t sub_100447900()
{
  v1 = *(v0 + 32);

  sub_10042F924(v1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100447970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_100447A08, v7, v6);
}

uint64_t sub_100447A08()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = TTRAccountsListsViewModel.List.isCustomSmartList.getter();
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100447B14;
    v4 = v0[6];

    return sub_100436358(v4, v2 & 1);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100447B14()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100447C58, v3, v2);
}

uint64_t sub_100447C58()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100447CB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a4(a3);
  }

  return result;
}

double sub_100447D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v8 = a4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v9 + 16))(v11, a3, v8);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v17;
  *(v19 + 3) = &protocol witness table for MainActor;
  *(v19 + 4) = v16;
  (*(v9 + 32))(&v19[v18], v11, v8);

  sub_10009E31C(0, 0, v14, a6, v19);

  return result;
}

uint64_t sub_100447F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_100448018, v7, v6);
}

uint64_t sub_100448018()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_10042A468;
    v3 = v0[6];

    return sub_1004444EC(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

void sub_100448110(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = TTRAccountsListsViewModel.RecentlyDeletedList.accountID.getter();
    v3 = TTRAccountsListsViewModel.RecentlyDeletedList.count.getter();
    sub_100431434(v2, v3);
  }
}

uint64_t sub_100448190(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), __n128 a6)
{
  v38 = a3;
  v39 = a5;
  v44 = a2;
  v45 = a4;
  v7 = type metadata accessor for TTRAccountEditor.UndoPolicyForPinnedListOrderingChange();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v40 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100058000(&qword_100783140, &qword_10063F158);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for REMAccountsListDataView.Model();
  v43 = *(v12 - 8);
  __chkstk_darwin(v12);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 64);
  v14 = *(a1 + 72);
  ObjectType = swift_getObjectType();
  sub_100058000(&qword_1007831E8, &qword_100641D90);
  v17 = type metadata accessor for TTRListOrCustomSmartList();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v35 = xmmword_10062D400;
  *(v20 + 16) = xmmword_10062D400;
  (*(v18 + 16))(v20 + v19, v44, v17);
  v36 = v15;
  v44 = ObjectType;
  v21 = ObjectType;
  v22 = v12;
  v23 = v43;
  v45(v20, v21, v14);

  v24 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  swift_beginAccess();
  sub_10000794C(a1 + v24, v11, &qword_100783140, &qword_10063F158);
  if ((*(v23 + 48))(v11, 1, v22) == 1)
  {
    return sub_1000079B4(v11, &qword_100783140, &qword_10063F158);
  }

  v26 = v37;
  (*(v23 + 32))(v37, v11, v22);
  REMAccountsListDataView.Model.orderedPinnedLists.getter();
  v27 = Array<A>.init(pinnedLists:)();
  sub_100058000(&qword_1007831F0, &qword_10063F2C0);
  v28 = type metadata accessor for TTRAccountsListsViewModel.List();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v35;
  (*(v29 + 16))(v31 + v30, v38, v28);
  v39(v31, v27);

  v33 = v40;
  v32 = v41;
  *v40 = v27;
  v34 = v42;
  (*(v32 + 104))(v33, enum case for TTRAccountEditor.UndoPolicyForPinnedListOrderingChange.enabled(_:), v42);
  dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.setPinnedListOrdering(_:undoPolicy:)();

  (*(v32 + 8))(v33, v34);
  return (*(v23 + 8))(v26, v22);
}

void sub_10044861C(uint64_t a1)
{
  static TTRLocalizableStrings.AccountsList.addingRemindersToSmartListAlertTitle.getter();
  static TTRLocalizableStrings.AccountsList.addingRemindersToSmartListAlertMessage.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertOKButton.getter();
  v5 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() actionWithTitle:v5 style:1 handler:0];

  [v4 addAction:v8];
  sub_10000C36C((a1 + 112), *(a1 + 136));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong presentViewController:v4 animated:1 completion:0];
  }
}

uint64_t sub_100448788(uint64_t a1)
{
  v1 = type metadata accessor for TTRListOrCustomSmartList();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  sub_100058000(&qword_100783210, &qword_10063F320);
  TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoCustomSmartList.reminderIDs.getter();
  *v4 = TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoCustomSmartList.target.getter();
  (*(v2 + 104))(v4, enum case for TTRListOrCustomSmartList.customSmartList(_:), v1);
  dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.move(remindersWithIDs:to:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1004488E4()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100004758((v0 + 112));

  v1 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModelCreationOption;
  v2 = type metadata accessor for TTRAccountsListsViewModel.ModelCreationOption();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel, &qword_100783140, &qword_10063F158);
  sub_100452B0C(*(v0 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction), *(v0 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction + 8));

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_permissionRequest, &qword_100783148, &qword_10063F170);

  return v0;
}

uint64_t sub_100448A44()
{
  sub_1004488E4();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.UndoRedoItemsStates(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for TTRIRemindersListNavigationBarViewModel.UndoRedoItemsStates(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t assignWithCopy for TTRIAccountsListsPresenter.PostModelUpdateAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = v3;

  return a1;
}

uint64_t assignWithTake for TTRIAccountsListsPresenter.PostModelUpdateAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t *sub_100448C94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v8 = type metadata accessor for REMHashtagLabelSpecifier();
        (*(*(v8 - 8) + 16))(a1, a2, v8);
      }

      else
      {
        *a1 = *a2;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v9 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_100448E04(uint64_t *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v4 = type metadata accessor for REMHashtagLabelSpecifier();
LABEL_15:
      v5 = *(*(v4 - 8) + 8);

      v5(a1, v4);
      return;
    }

    if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return;
      }

      v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      goto LABEL_15;
    }
  }
}

uint64_t *sub_100448EE8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      *a1 = *a2;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *sub_10044900C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_10045164C(a1, type metadata accessor for TTRIAccountsListsSelection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v6 = type metadata accessor for REMHashtagLabelSpecifier();
        (*(*(v6 - 8) + 16))(a1, a2, v6);
      }

      else
      {
        *a1 = *a2;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v7 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_100449154(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_100449278(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_10045164C(a1, type metadata accessor for TTRIAccountsListsSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1004493C0(unint64_t a1)
{
  if (sub_1004B1A10(a1))
  {
    return 0;
  }

  sub_100058000(&qword_10077CFC8, &qword_10063F1F0);
  sub_100003540(0, &qword_10076BB00, REMReminder_ptr);
  sub_10000E188(&qword_10077CFD8, &qword_10077CFC8, &qword_10063F1F0, &protocol conformance descriptor for [A]);
  result = Sequence.completeCompactMap<A>(_:)();
  if (result)
  {

    return 1;
  }

  return result;
}

void sub_1004494B4(uint64_t a1, uint64_t a2)
{
  v3 = TTRICollectionViewCollapsedStatesPresenterCapability.collapsedItemIDs.getter();

  *(a2 + 8) = v3;
}

uint64_t sub_1004494F4()
{
  v1 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v1 - 8);
  v23 = &v21 - v2;
  v3 = sub_100058000(&qword_100783140, &qword_10063F158);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for REMAccountsListDataView.Model();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  swift_beginAccess();
  sub_10000794C(v0 + v13, v5, &qword_100783140, &qword_10063F158);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1000079B4(v5, &qword_100783140, &qword_10063F158);
  }

  v22 = *(v7 + 32);
  v22(v12, v5, v6);
  v15 = type metadata accessor for TaskPriority();
  v16 = v23;
  (*(*(v15 - 8) + 56))(v23, 1, 1, v15);
  (*(v7 + 16))(v9, v12, v6);
  type metadata accessor for MainActor();

  v17 = v0;
  v18 = static MainActor.shared.getter();
  v19 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = v17;
  v22(&v20[v19], v9, v6);
  sub_10009E31C(0, 0, v16, &unk_10063F188, v20);

  return (*(v7 + 8))(v12, v6);
}

void sub_100449828(uint64_t (**a1)(char *, uint64_t, uint64_t))
{
  v129 = a1;
  v133 = type metadata accessor for TTRAccountsListsViewModel.List();
  v124 = *(v133 - 8);
  __chkstk_darwin(v133);
  v113 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v115 = &v112 - v4;
  v5 = sub_100058000(&unk_10078D450, &qword_10062FBC0);
  __chkstk_darwin(v5 - 8);
  v114 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v118 = &v112 - v8;
  __chkstk_darwin(v9);
  v11 = &v112 - v10;
  __chkstk_darwin(v12);
  v14 = &v112 - v13;
  v15 = sub_100058000(&qword_10076B9A0, &qword_10062FCD0);
  v130 = *(v15 - 8);
  __chkstk_darwin(v15);
  v127 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v119 = &v112 - v18;
  v19 = sub_100058000(&qword_10076B998, &unk_10063F160);
  v125 = *(v19 - 8);
  v126 = v19;
  __chkstk_darwin(v19);
  v121 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v120 = &v112 - v22;
  v23 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v23 - 8);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v117 = &v112 - v27;
  __chkstk_darwin(v28);
  v123 = (&v112 - v29);
  __chkstk_darwin(v30);
  v32 = &v112 - v31;
  __chkstk_darwin(v33);
  v116 = &v112 - v34;
  __chkstk_darwin(v35);
  v122 = (&v112 - v36);
  v134 = type metadata accessor for TTRAccountsListsViewModel.Item();
  __chkstk_darwin(v134);
  v38 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  __chkstk_darwin(v40);
  v42 = &v112 - v41;
  v47 = __chkstk_darwin(v43);
  v48 = v1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction;
  v132 = *(v1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction);
  v49 = *(v1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction + 8);
  *v48 = 0;
  *(v48 + 8) = -1;
  if (v49 == 255)
  {
    return;
  }

  v50 = v1;
  v128 = v45;
  v51 = *(v130 + 2);
  v52 = (v130 + 88);
  v131 = v49;
  if ((v49 & 1) == 0)
  {
    v121 = &v112 - v44;
    v70 = v119;
    v51(v119, v129, v15, v47);
    if ((*v52)(v70, v15) == enum case for TTRTreeViewUpdates.incremental<A>(_:))
    {
      v112 = v50;
      (*(v130 + 12))(v70, v15);
      v71 = *(sub_100058000(&qword_10076B9A8, &qword_10062FCD8) + 48);
      (*(v125 + 32))(v120, v70, v126);
      v72 = type metadata accessor for TTRTreeViewAnimationByType();
      (*(*(v72 - 8) + 8))(&v70[v71], v72);
      v119 = TTRTreeDiffResult.insertedElements.getter();
      dispatch thunk of _AnySequenceBox._makeIterator()();
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v73 = v128 + 48;
      v74 = *(v128 + 48);
      if (v74(v32, 1, v134) != 1)
      {
        v96 = *(v128 + 32);
        v129 = (v124 + 48);
        v130 = v96;
        v123 = (v128 + 32);
        v124 += 8;
        v127 = (v128 + 8);
        (v96)(v42, v32, v134);
        while (1)
        {
          TTRAccountsListsViewModel.Item.listOrCustomSmartList.getter();
          v98 = v133;
          if ((*v129)(v14, 1, v133) == 1)
          {
            sub_1000079B4(v14, &unk_10078D450, &qword_10062FBC0);
          }

          else
          {
            v99 = v74;
            v100 = v73;
            v101 = TTRAccountsListsViewModel.List.objectID.getter();
            (*v124)(v14, v98);
            sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
            v102 = v132;
            v103 = v132;
            v104 = static NSObject.== infix(_:_:)();

            v73 = v100;
            v74 = v99;
            sub_100452B0C(v102, v131);
            if (v104)
            {

              (*(v125 + 8))(v120, v126);
              v76 = v116;
              (v130)(v116, v42, v134);
              v75 = 0;
              goto LABEL_13;
            }
          }

          v97 = v134;
          (*v127)(v42, v134);
          dispatch thunk of _AnyIteratorBoxBase.next()();
          if (v74(v32, 1, v97) == 1)
          {
            break;
          }

          (v130)(v42, v32, v134);
        }
      }

      (*(v125 + 8))(v120, v126);
      v75 = 1;
      v76 = v116;
LABEL_13:
      v77 = v128;
      v78 = v134;
      (*(v128 + 56))(v76, v75, 1, v134);
      v63 = v122;
      sub_100016588(v76, v122, &unk_100771B40, &unk_10062FB70);
      v79 = v74(v63, 1, v78);
      v80 = v112;
      if (v79 != 1)
      {
        v81 = v121;
        (*(v77 + 32))(v121, v63, v134);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v82 = *(v80 + 24);
          ObjectType = swift_getObjectType();
          (*(v82 + 88))(v81, 3, 1, ObjectType, v82);
          swift_unknownObjectRelease();
        }

        sub_100452B0C(v132, v131);
        (*(v128 + 8))(v81, v134);
        return;
      }
    }

    else
    {
      (*(v130 + 1))(v70, v15);
      v63 = v122;
      (*(v128 + 56))(v122, 1, 1, v134);
    }

LABEL_19:
    sub_100452B0C(v132, v131);
    sub_1000079B4(v63, &unk_100771B40, &unk_10062FB70);
    return;
  }

  v120 = v46;
  v53 = v127;
  v51(v127, v129, v15, v47);
  if ((*v52)(v53, v15) != enum case for TTRTreeViewUpdates.incremental<A>(_:))
  {
    (*(v130 + 1))(v53, v15);
    v63 = v123;
    (*(v128 + 56))(v123, 1, 1, v134);
    goto LABEL_19;
  }

  v112 = v50;
  (*(v130 + 12))(v53, v15);
  v54 = *(sub_100058000(&qword_10076B9A8, &qword_10062FCD8) + 48);
  (*(v125 + 32))(v121, v53, v126);
  v55 = type metadata accessor for TTRTreeViewAnimationByType();
  (*(*(v55 - 8) + 8))(&v53[v54], v55);
  v119 = TTRTreeDiffResult.insertedElements.getter();
  v56 = dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v129 = *(v128 + 48);
  v130 = (v128 + 48);
  v57 = (v129)(v25, 1, v134);
  v58 = v133;
  if (v57 == 1)
  {
LABEL_5:

    (*(v125 + 8))(v121, v126);
    v59 = 1;
    v60 = v117;
    goto LABEL_6;
  }

  v84 = v128 + 32;
  v127 = *(v128 + 32);
  v85 = (v124 + 48);
  v122 = (v124 + 8);
  v86 = (v128 + 8);
  (v127)(v38, v25, v134);
  while (1)
  {
    TTRAccountsListsViewModel.Item.listOrCustomSmartList.getter();
    if ((*v85)(v11, 1, v58) == 1)
    {
      sub_1000079B4(v11, &unk_10078D450, &qword_10062FBC0);
      goto LABEL_22;
    }

    v88 = TTRAccountsListsViewModel.List.objectID.getter();
    (*v122)(v11, v133);
    sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    v89 = v11;
    v90 = v84;
    v91 = v56;
    v92 = v132;
    v93 = v132;
    v94 = static NSObject.== infix(_:_:)();

    v58 = v133;
    v95 = v92;
    v56 = v91;
    v84 = v90;
    v11 = v89;
    sub_100452B0C(v95, v131);
    if (v94)
    {
      break;
    }

LABEL_22:
    v87 = v134;
    (*v86)(v38, v134);
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if ((v129)(v25, 1, v87) == 1)
    {
      goto LABEL_5;
    }

    (v127)(v38, v25, v134);
  }

  (*(v125 + 8))(v121, v126);
  v60 = v117;
  (v127)(v117, v38, v134);
  v59 = 0;
LABEL_6:
  v61 = v128;
  v62 = v134;
  (*(v128 + 56))(v60, v59, 1, v134);
  v63 = v123;
  sub_100016588(v60, v123, &unk_100771B40, &unk_10062FB70);
  v64 = (v129)(v63, 1, v62);
  v65 = v118;
  if (v64 == 1)
  {
    goto LABEL_19;
  }

  v66 = v120;
  (*(v61 + 32))(v120, v63, v134);
  TTRAccountsListsViewModel.Item.list.getter();
  v67 = v124;
  v68 = *(v124 + 48);
  if (v68(v65, 1, v58) == 1)
  {
    sub_1000079B4(v65, &unk_10078D450, &qword_10062FBC0);
    v69 = v114;
    TTRAccountsListsViewModel.Item.customSmartList.getter();
    if (v68(v69, 1, v58) == 1)
    {
      sub_100452B0C(v132, v131);
      (*(v128 + 8))(v66, v134);
      sub_1000079B4(v69, &unk_10078D450, &qword_10062FBC0);
      return;
    }

    v105 = v113;
    (*(v124 + 32))(v113, v69, v58);
    v109 = v112;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v110 = *(v109 + 24);
      v111 = swift_getObjectType();
      (*(v110 + 40))(v105, v111, v110);
LABEL_38:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v105 = v115;
    (*(v67 + 32))(v115, v65, v58);
    v106 = v112;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v107 = *(v106 + 24);
      v108 = swift_getObjectType();
      (*(v107 + 24))(v105, 0, v108, v107);
      goto LABEL_38;
    }
  }

  sub_100452B0C(v132, v131);
  (*(v124 + 8))(v105, v58);
  (*(v128 + 8))(v120, v134);
}

double sub_10044A778(void *a1, char a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((a2 & 1) == 0)
    {
      v9 = a4 & 1;
      v10 = Strong + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction;
      v11 = *(Strong + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction);
      *v10 = a1;
      v12 = *(v10 + 8);
      *(v10 + 8) = v9;
      v13 = a1;
      sub_100452B0C(v11, v12);
    }
  }

  return result;
}

uint64_t sub_10044A820()
{
  v1 = sub_100058000(&qword_100783140, &qword_10063F158);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for REMAccountsListDataView.Model();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
  swift_beginAccess();
  sub_10000794C(v0 + v8, v3, &qword_100783140, &qword_10063F158);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000079B4(v3, &qword_100783140, &qword_10063F158);
  }

  (*(v5 + 32))(v7, v3, v4);
  sub_10001AFE0(v7, 0, 2, 1);
  return (*(v5 + 8))(v7, v4);
}

id sub_10044A9F4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + 128);
  swift_unknownObjectRelease();
  return v1;
}

void sub_10044AA40(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, char a5)
{
  v6 = v5;
  static TTRLocalizableStrings.UndoAction.changeList.getter();
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();

  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = a1;
  v13[4] = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100458268;
  *(v14 + 24) = v13;
  aBlock[4] = sub_100068444;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100728DB0;
  v15 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [v11 withActionName:v12 block:v15];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if ((a5 & 1) == 0)
  {
LABEL_5:

    return;
  }

  if (a4 < 2u)
  {
    v17 = v6 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction;
    v18 = *(v6 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction);
    *v17 = a3;
    v19 = *(v17 + 8);
    *(v17 + 8) = 1;
    v20 = a3;
    sub_100452B0C(v18, v19);
    goto LABEL_5;
  }

  if (qword_1007672D8 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v21 = type metadata accessor for Logger();
  sub_100003E30(v21, qword_100782E90);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "TTRIAccountsListsPresenter: unexpect objectType from listDetailDidComplete", v24, 2u);
  }
}

void sub_10044AD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  ObjectType = swift_getObjectType();
  v5 = (*(a3 + 16))(ObjectType, a3);
  dispatch thunk of TTRAccountsListsInteractorType.registerUndoFor(listDetailUndoManager:)();
}

double sub_10044ADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;

  dispatch thunk of TTRListToCustomSmartListConverterType.convert(listID:reminders:completionHandler:)();

  return result;
}

void sub_10044AE84(void *a1, void *a2, int a3)
{
  v4 = v3;
  v29 = a3;
  v28 = a1;
  v6 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTRLocalizableStrings.UndoAction.addList.getter();
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();

  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10045778C;
  *(v14 + 24) = v13;
  aBlock[4] = sub_100068444;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100728CE8;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v11 withActionName:v12 block:v15];

  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    if (v29)
    {

      v17 = v28;
      TTRAccountsListsViewModel.item(with:)();

      v18 = v27;
      if ((*(v27 + 48))(v8, 1, v9) == 1)
      {
        sub_1000079B4(v8, &unk_100771B40, &unk_10062FB70);
        v19 = v4 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction;
        v20 = *(v4 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction);
        *v19 = v17;
        v21 = *(v19 + 8);
        *(v19 + 8) = 0;
        sub_100452B0C(v20, v21);
        v22 = v17;
      }

      else
      {
        v23 = v26;
        (*(v18 + 32))(v26, v8, v9);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v24 = *(v4 + 24);
          ObjectType = swift_getObjectType();
          (*(v24 + 88))(v23, 3, 1, ObjectType, v24);
          swift_unknownObjectRelease();
        }

        (*(v18 + 8))(v23, v9);
      }
    }
  }
}

uint64_t sub_10044B278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_10044B36C, v7, v6);
}

uint64_t sub_10044B36C()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_10044B448;

  return sub_100482668(v1, v3, 0, 0, 1);
}

uint64_t sub_10044B448()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  v3 = v2[11];
  v4 = v2[10];
  if (v0)
  {
    v5 = sub_10044B720;
  }

  else
  {
    v5 = sub_10044B5D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10044B5D0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getObjectType();
    v1 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
    type metadata accessor for TTRUserDefaults();
    v2 = static TTRUserDefaults.appUserDefaults.getter();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    type metadata accessor for TTRStoreReviewController();
    v4 = swift_allocObject();
    sub_100079270(v1, v2, sub_100079600, v3, v4);
    if (sub_1004666BC())
    {
      sub_1004672E0(0);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10044B720()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10044B828(uint64_t a1, int a2)
{
  v4 = sub_100058000(&qword_100783218, &qword_10063F328);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for TTRAccountsListsPresenterCapability.CustomSmartListCreationParams();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_100003E30(v11, qword_100782E90);
  v13 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Create custom smart list for hashtag labels", 43, 2, v13);

  TTRAccountsListsPresenterCapability.customSmartListCreationParams(forHashtagLabels:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100783218, &qword_10063F328);
  }

  else
  {
    v26 = a2;
    (*(v8 + 32))(v10, v6, v7);
    v27 = *(v2 + 72);
    swift_getObjectType();
    v14 = TTRAccountsListsPresenterCapability.CustomSmartListCreationParams.account.getter();
    v28 = v12;
    v15 = v14;
    TTRAccountsListsPresenterCapability.CustomSmartListCreationParams.name.getter();
    v25 = v2;
    v16 = TTRAccountsListsPresenterCapability.CustomSmartListCreationParams.filter.getter();
    v17 = dispatch thunk of TTRAccountsListsInteractorType.createNewCustomSmartListAllowingUndo(in:name:filter:)();

    (*(v8 + 8))(v10, v7);
    if (v17)
    {
      v18 = v26 & 1;
      v19 = v25 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction;
      v20 = *(v25 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_postModelUpdateAction);
      *v19 = v17;
      v21 = *(v19 + 8);
      *(v19 + 8) = v18;
      sub_100452B0C(v20, v21);
      return;
    }
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to create custom smart list for hashtag labels", v24, 2u);
  }
}

uint64_t sub_10044BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 72);
    v11 = result;
    ObjectType = swift_getObjectType();
    v13 = a4(a2, ObjectType, v10);
    v14 = *sub_10000C36C((v11 + 112), *(v11 + 136));

    a5(v13, v11, a3, v14);
  }

  return result;
}

uint64_t sub_10044BC94@<X0>(void *a2@<X2>, int a3@<W3>, char *a4@<X8>)
{
  v67 = a3;
  v74 = type metadata accessor for TTRAccountsListsViewModel.List();
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10078D450, &qword_10062FBC0);
  __chkstk_darwin(v8 - 8);
  v73 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v64 - v11;
  __chkstk_darwin(v13);
  v15 = &v64 - v14;
  v16 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v71 = *(v16 - 8);
  v72 = v16;
  __chkstk_darwin(v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100058000(&unk_10076B7F0, &qword_10063F330);
  __chkstk_darwin(v19 - 8);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v64 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    v38 = 0;
    goto LABEL_31;
  }

  v26 = result;
  v64 = v15;
  v69 = a4;
  v70 = v4;
  v27 = [a2 isGroup];
  v68 = v26;

  v65 = a2;
  v28 = [a2 objectID];
  if (v27)
  {
    TTRAccountsListsViewModel.group(with:)();

    sub_10000794C(v24, v21, &unk_10076B7F0, &qword_10063F330);
    v30 = v71;
    v29 = v72;
    if ((*(v71 + 48))(v21, 1, v72) == 1)
    {
      sub_1000079B4(v21, &unk_10076B7F0, &qword_10063F330);
      a4 = v69;
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100003E30(v31, qword_100782E90);
      v32 = v65;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        v37 = [v32 objectID];
        *(v35 + 4) = v37;
        *v36 = v37;
        _os_log_impl(&_mh_execute_header, v33, v34, "Couldn't find the group to select {list.objectID: %@}", v35, 0xCu);
        sub_1000079B4(v36, &unk_10076DF80, &qword_10062F730);
      }

      else
      {
      }

      result = sub_1000079B4(v24, &unk_10076B7F0, &qword_10063F330);
      v38 = 0;
      goto LABEL_31;
    }

    (*(v30 + 32))(v18, v21, v29);
    v47 = v68;
    Strong = swift_unknownObjectWeakLoadStrong();
    a4 = v69;
    if (Strong)
    {
      v49 = *(v47 + 24);
      ObjectType = swift_getObjectType();
      (*(v49 + 32))(v18, v67 & 1, ObjectType, v49);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v30 + 8))(v18, v29);
    v61 = &unk_10076B7F0;
    v62 = &qword_10063F330;
    v63 = v24;
LABEL_30:
    result = sub_1000079B4(v63, v61, v62);
    v38 = 1;
    goto LABEL_31;
  }

  TTRAccountsListsViewModel.pinnedListInnerList(with:)();

  v39 = v75;
  v40 = *(v75 + 48);
  v41 = v74;
  if (v40(v12, 1, v74) == 1)
  {
    v42 = v68;

    v43 = [v65 objectID];
    v44 = v64;
    TTRAccountsListsViewModel.list(with:)();

    v39 = v75;
    v45 = v40(v12, 1, v41);
    a4 = v69;
    v46 = v73;
    if (v45 != 1)
    {
      sub_1000079B4(v12, &unk_10078D450, &qword_10062FBC0);
    }
  }

  else
  {
    v44 = v64;
    (*(v39 + 32))(v64, v12, v41);
    (*(v39 + 56))(v44, 0, 1, v41);
    v42 = v68;
    a4 = v69;
    v46 = v73;
  }

  sub_10000794C(v44, v46, &unk_10078D450, &qword_10062FBC0);
  if (v40(v46, 1, v41) != 1)
  {
    v58 = v66;
    (*(v39 + 32))(v66, v46, v41);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v59 = *(v42 + 24);
      v60 = swift_getObjectType();
      (*(v59 + 24))(v58, v67 & 1, v60, v59);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v75 + 8))(v58, v41);
    v61 = &unk_10078D450;
    v62 = &qword_10062FBC0;
    v63 = v44;
    goto LABEL_30;
  }

  sub_1000079B4(v46, &unk_10078D450, &qword_10062FBC0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_100003E30(v51, qword_100782E90);
  v52 = v65;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    v57 = [v52 objectID];
    *(v55 + 4) = v57;
    *v56 = v57;
    _os_log_impl(&_mh_execute_header, v53, v54, "Couldn't find the list to select {list.objectID: %@}", v55, 0xCu);
    sub_1000079B4(v56, &unk_10076DF80, &qword_10062F730);
  }

  else
  {
  }

  result = sub_1000079B4(v44, &unk_10078D450, &qword_10062FBC0);
  v38 = 0;
LABEL_31:
  *a4 = v38;
  return result;
}

uint64_t sub_10044C598@<X0>(void *a2@<X2>, char *a3@<X8>)
{
  v30 = a3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.List();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10078D450, &qword_10062FBC0);
  __chkstk_darwin(v9 - 8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v31 = v29 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v29[1] = v3;
    v16 = [a2 isPinned];

    v17 = [a2 objectID];
    if (v16)
    {
      v18 = v31;
      TTRAccountsListsViewModel.pinnedListInnerList(with:)();
    }

    else
    {
      v18 = v31;
      TTRAccountsListsViewModel.customSmartList(with:)();
    }

    sub_10000794C(v18, v11, &unk_10078D450, &qword_10062FBC0);
    if ((*(v6 + 48))(v11, 1, v5) == 1)
    {
      sub_1000079B4(v11, &unk_10078D450, &qword_10062FBC0);
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100003E30(v20, qword_100782E90);
      v21 = a2;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = [v21 objectID];
        *(v24 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&_mh_execute_header, v22, v23, "Couldn't find the list to select {list.objectID: %@}", v24, 0xCu);
        sub_1000079B4(v25, &unk_10076DF80, &qword_10062F730);
      }

      else
      {
      }

      v19 = 0;
    }

    else
    {
      (*(v6 + 32))(v8, v11, v5);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v15 + 24);
        ObjectType = swift_getObjectType();
        (*(v27 + 40))(v8, ObjectType, v27);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      (*(v6 + 8))(v8, v5);
      v19 = 1;
    }

    result = sub_1000079B4(v31, &unk_10078D450, &qword_10062FBC0);
  }

  else
  {
    v19 = 0;
  }

  *v30 = v19;
  return result;
}

void sub_10044C9D8(uint64_t a2@<X2>, char a3@<W3>, char *a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v8 = Strong;

  v9 = TTRAccountsListsViewModel.canDisplay(_:)();

  if ((v9 & 1) == 0)
  {

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v8 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 48))(a2, a3 & 1, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v12 = 1;
LABEL_8:
  *a4 = v12;
}

void sub_10044CAF0(uint64_t a2@<X2>, char *a3@<X8>)
{
  v5 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v9 = Strong;

  TTRAccountsListsViewModel.hashtagsItem.getter();

  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {

    sub_1000079B4(v7, &unk_100771B40, &unk_10062FB70);
LABEL_4:
    v11 = 0;
    goto LABEL_9;
  }

  sub_1000079B4(v7, &unk_100771B40, &unk_10062FB70);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v9 + 24);
    ObjectType = swift_getObjectType();
    (*(v12 + 56))(a2, ObjectType, v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v11 = 1;
LABEL_9:
  *a3 = v11;
}

uint64_t sub_10044CCAC(uint64_t a1)
{
  v3 = type metadata accessor for TTRListType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 64))(a1, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  swift_getObjectType();
  v9 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  (*(v4 + 104))(v6, enum case for TTRListType.tagged(_:), v3);
  dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
  return (*(v4 + 8))(v6, v3);
}

void *sub_10044CE40()
{
  v83 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v1 = *(v83 - 8);
  __chkstk_darwin(v83);
  v66 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v79 = &v61 - v4;
  v95 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v5 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10078D510, &unk_1006468E0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  v15 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  v80 = *(v15 - 8);
  __chkstk_darwin(v15);
  v93 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v76 = &v61 - v18;
  v19 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v97 = *(v19 - 8);
  __chkstk_darwin(v19);
  v96 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  if (*(v0 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isEditing))
  {
    return _swiftEmptyArrayStorage;
  }

  v25 = TTRAccountsListsViewModel.visiblePinnedLists.getter();

  v92 = *(v25 + 16);
  if (v92)
  {
    v26 = v5;
    v27 = 0;
    v89 = v97 + 88;
    v90 = v97 + 16;
    v88 = enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:);
    v75 = enum case for TTRAccountsListsViewModel.PinnedList.list(_:);
    v87 = (v97 + 96);
    v74 = (v7 + 32);
    v73 = (v7 + 8);
    v86 = (v80 + 56);
    v72 = (v26 + 32);
    v71 = (v1 + 88);
    v70 = enum case for TTRListType.PredefinedSmartListType.today(_:);
    v68 = enum case for TTRListType.PredefinedSmartListType.scheduled(_:);
    v67 = enum case for TTRListType.PredefinedSmartListType.all(_:);
    v65 = enum case for TTRListType.PredefinedSmartListType.flagged(_:);
    v69 = (v26 + 8);
    v64 = enum case for TTRListType.PredefinedSmartListType.assigned(_:);
    v63 = (v1 + 8);
    v85 = (v97 + 8);
    v62 = enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:);
    v84 = (v80 + 48);
    v61 = enum case for TTRListType.PredefinedSmartListType.completed(_:);
    v24 = _swiftEmptyArrayStorage;
    v81 = v23;
    v82 = v19;
    v28 = v96;
    v91 = v25;
    while (1)
    {
      if (v27 >= *(v25 + 16))
      {
        __break(1u);
LABEL_30:
        if (qword_1007672D8 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_100003E30(v55, qword_100782E90);
        v56 = sub_100008E04(_swiftEmptyArrayStorage);
        v57 = sub_100008E04(_swiftEmptyArrayStorage);
        v58 = "Unknown pinned list type";
        v59 = 24;
        goto LABEL_33;
      }

      v98 = v24;
      v29 = v97;
      v30 = v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v97 + 72) * v27;
      v31 = *(v97 + 16);
      v31(v23, v30, v19);
      v31(v28, v23, v19);
      v32 = (*(v29 + 88))(v28, v19);
      if (v32 != v88)
      {
        if (v32 != v75)
        {
          goto LABEL_30;
        }

        v36 = v14;
        (*v87)(v28, v19);
        v37 = v77;
        v38 = v28;
        v39 = v78;
        (*v74)(v77, v38, v78);
        v40 = TTRAccountsListsViewModel.List.name.getter();
        v42 = v41;
        v43 = *(v15 + 20);
        v44 = TTRAccountsListsViewModel.List.objectID.getter();
        (*v73)(v37, v39);
        *(v11 + v43) = v44;
        type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
        swift_storeEnumTagMultiPayload();
        v35 = 0;
        *v11 = v40;
        v11[1] = v42;
        v23 = v81;
        v19 = v82;
        v14 = v36;
        v24 = v98;
        goto LABEL_20;
      }

      (*v87)(v28, v19);
      (*v72)(v94, v28, v95);
      v33 = v79;
      TTRAccountsListsViewModel.SmartList.type.getter();
      v34 = (*v71)(v33, v83);
      v24 = v98;
      if (v34 == v70 || v34 == v68 || v34 == v67 || v34 == v65 || v34 == v64)
      {
        goto LABEL_19;
      }

      if (v34 != v62)
      {
        break;
      }

      (*v69)(v94, v95);
      v35 = 1;
LABEL_20:
      (*v86)(v11, v35, 1, v15);
      sub_100016588(v11, v14, &unk_10078D510, &unk_1006468E0);
      (*v85)(v23, v19);
      if ((*v84)(v14, 1, v15) == 1)
      {
        sub_1000079B4(v14, &unk_10078D510, &unk_1006468E0);
        v28 = v96;
      }

      else
      {
        v50 = v76;
        sub_10005C2C4(v14, v76);
        sub_10005C2C4(v50, v93);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v96;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_100548278(0, v24[2] + 1, 1, v24);
        }

        v53 = v24[2];
        v52 = v24[3];
        if (v53 >= v52 >> 1)
        {
          v24 = sub_100548278((v52 > 1), v53 + 1, 1, v24);
        }

        v24[2] = v53 + 1;
        sub_10005C2C4(v93, v24 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v53);
      }

      v25 = v91;
      if (v92 == ++v27)
      {
        goto LABEL_27;
      }
    }

    if (v34 != v61)
    {
      while (1)
      {
        if (qword_1007672D8 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_100003E30(v60, qword_100782E90);
        v56 = sub_100008E04(_swiftEmptyArrayStorage);
        v57 = sub_100008E04(_swiftEmptyArrayStorage);
        v58 = "Unknown predefined smart list type";
        v59 = 34;
LABEL_33:
        sub_1003F9818(v58, v59, 2uLL, v56, v57);
        __break(1u);
      }
    }

LABEL_19:
    v45 = v66;
    v46 = v94;
    TTRAccountsListsViewModel.SmartList.type.getter();
    v47 = TTRListType.PredefinedSmartListType.title.getter();
    v49 = v48;
    (*v63)(v45, v83);
    TTRAccountsListsViewModel.SmartList.type.getter();
    (*v69)(v46, v95);
    type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
    v23 = v81;
    swift_storeEnumTagMultiPayload();
    v35 = 0;
    *v11 = v47;
    v11[1] = v49;
    v19 = v82;
    goto LABEL_20;
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_27:

  return v24;
}

BOOL sub_10044D8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 96))(a2, a3, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

id sub_10044D948()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 128);
    swift_unknownObjectRelease();
    return v1;
  }

  else
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100782E90);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Accounts list presenter's moduleDelegate is not set when presenting search result, so unable to return a proper undoManager.", v6, 2u);
    }

    v7 = objc_allocWithZone(TTRUndoManager);
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 initWithDebugIdentifier:v8];

    return v9;
  }
}

unint64_t sub_10044DAB4()
{
  result = qword_100783130;
  if (!qword_100783130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783130);
  }

  return result;
}

id sub_10044DB08(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v45 = v5;
  v46 = a2;
  v10 = v9;
  v11 = objc_allocWithZone(TTRUndoManager);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithDebugIdentifier:v12];

  v14 = type metadata accessor for TTRUserDefaults();
  v15 = static TTRUserDefaults.appUserDefaults.getter();
  v16 = type metadata accessor for TTRSmartListVersionWarningInteractor();
  v17 = swift_allocObject();
  v17[5] = v14;
  v17[6] = &protocol witness table for TTRUserDefaults;
  v17[2] = v15;
  v17[7] = 20;
  v42 = v16;
  v43 = &protocol witness table for TTRSmartListVersionWarningInteractor;
  v41[0] = v17;
  v18 = sub_10001F128(&qword_1007831A0, type metadata accessor for TTRListDetailAssembly.ListComponentsCreator, &unk_10063A9CC);
  v19 = *(v18 + 40);

  v19(&v44, &v46, v13, v41, v10, v18);
  sub_100004758(v41);
  v20 = v44;
  sub_100058000(&qword_1007831A8, &qword_10063F238);
  swift_allocObject();

  v21 = v13;
  v22 = sub_100422C90(v20, v21);
  v23 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v24 = static TTRInteractorEditsCommitting<>.async.getter();
  v42 = v23;
  v43 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  v41[0] = v24;
  v25 = objc_allocWithZone(type metadata accessor for TTRListToCustomSmartListConverter());
  v26 = a1;
  v27 = TTRListToCustomSmartListConverter.init(store:committer:)();
  v28 = type metadata accessor for TTRIListDetailRouter();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v29 + 24) = v17;
  type metadata accessor for TTRListDetailListViewModelSource();
  v30 = swift_allocObject();
  v42 = v28;
  v43 = &off_10071E810;
  v41[0] = v29;
  sub_100058000(&qword_1007831B0, &unk_10063F240);
  v31 = swift_allocObject();
  *(v31 + *(*v31 + 264) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v31 + *(*v31 + 272) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v31 + *(*v31 + 280) + 8) = 0;
  swift_unknownObjectWeakInit();
  v32 = (v31 + *(*v31 + 312));
  *v32 = 0;
  v32[1] = 0;
  v33 = (v31 + *(*v31 + 304));
  *v33 = v27;
  v33[1] = &protocol witness table for TTRListToCustomSmartListConverter;
  sub_10000B0D8(v41, v31 + *(*v31 + 296));
  *(v31 + *(*v31 + 288)) = a3 & 1;

  v34 = v21;

  v35 = v27;

  v36 = sub_100454B84(v22, v30, v34, &TTRListEditor.changeItem.getter, TTRListDetailViewModel.init(changeItem:));

  sub_100004758(v41);
  v37 = objc_allocWithZone(type metadata accessor for TTRIListDetailViewController(0));

  v39 = sub_10044F94C(v38, v37);

  swift_beginAccess();
  v22[3] = &off_100716708;
  swift_unknownObjectWeakAssign();

  *&v36[*(*v36 + 264) + 8] = &off_10071E838;
  swift_unknownObjectWeakAssign();
  *&v36[*(*v36 + 272) + 8] = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v39;
}

id sub_10044E000(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v45 = v5;
  v46 = a2;
  v10 = v9;
  v11 = objc_allocWithZone(TTRUndoManager);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithDebugIdentifier:v12];

  v14 = type metadata accessor for TTRUserDefaults();
  v15 = static TTRUserDefaults.appUserDefaults.getter();
  v16 = type metadata accessor for TTRSmartListVersionWarningInteractor();
  v17 = swift_allocObject();
  v17[5] = v14;
  v17[6] = &protocol witness table for TTRUserDefaults;
  v17[2] = v15;
  v17[7] = 20;
  v42 = v16;
  v43 = &protocol witness table for TTRSmartListVersionWarningInteractor;
  v41[0] = v17;
  v18 = sub_10001F128(&qword_1007831B8, type metadata accessor for TTRListDetailAssembly.CustomSmartListComponentsCreator, &unk_10063A9B0);
  v19 = *(v18 + 40);

  v19(&v44, &v46, v13, v41, v10, v18);
  sub_100004758(v41);
  v20 = v44;
  sub_100058000(&qword_1007831C0, &qword_10063F250);
  swift_allocObject();

  v21 = v13;
  v22 = sub_100422FC0(v20, v21);
  v23 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v24 = static TTRInteractorEditsCommitting<>.async.getter();
  v42 = v23;
  v43 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  v41[0] = v24;
  v25 = objc_allocWithZone(type metadata accessor for TTRListToCustomSmartListConverter());
  v26 = a1;
  v27 = TTRListToCustomSmartListConverter.init(store:committer:)();
  v28 = type metadata accessor for TTRIListDetailRouter();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v29 + 24) = v17;
  type metadata accessor for TTRListDetailCustomSmartListViewModelSource();
  v30 = swift_allocObject();
  v42 = v28;
  v43 = &off_10071E810;
  v41[0] = v29;
  sub_100058000(&qword_1007831C8, &qword_10063F258);
  v31 = swift_allocObject();
  *(v31 + *(*v31 + 264) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v31 + *(*v31 + 272) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v31 + *(*v31 + 280) + 8) = 0;
  swift_unknownObjectWeakInit();
  v32 = (v31 + *(*v31 + 312));
  *v32 = 0;
  v32[1] = 0;
  v33 = (v31 + *(*v31 + 304));
  *v33 = v27;
  v33[1] = &protocol witness table for TTRListToCustomSmartListConverter;
  sub_10000B0D8(v41, v31 + *(*v31 + 296));
  *(v31 + *(*v31 + 288)) = a3 & 1;

  v34 = v21;

  v35 = v27;

  v36 = sub_100454B84(v22, v30, v34, &TTRSmartListEditor.changeItem.getter, TTRListDetailViewModel.init(changeItem:));

  sub_100004758(v41);
  v37 = objc_allocWithZone(type metadata accessor for TTRIListDetailViewController(0));

  v39 = sub_10044F94C(v38, v37);

  swift_beginAccess();
  v22[3] = &off_100716708;
  swift_unknownObjectWeakAssign();

  *&v36[*(*v36 + 264) + 8] = &off_10071E838;
  swift_unknownObjectWeakAssign();
  *&v36[*(*v36 + 272) + 8] = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v39;
}

id sub_10044E4F8(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v45 = v5;
  v46 = a2;
  v10 = v9;
  v11 = objc_allocWithZone(TTRUndoManager);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithDebugIdentifier:v12];

  v14 = type metadata accessor for TTRUserDefaults();
  v15 = static TTRUserDefaults.appUserDefaults.getter();
  v16 = type metadata accessor for TTRSmartListVersionWarningInteractor();
  v17 = swift_allocObject();
  v17[5] = v14;
  v17[6] = &protocol witness table for TTRUserDefaults;
  v17[2] = v15;
  v17[7] = 20;
  v42 = v16;
  v43 = &protocol witness table for TTRSmartListVersionWarningInteractor;
  v41[0] = v17;
  v18 = sub_10001F128(&qword_100783298, type metadata accessor for TTRListDetailAssembly.TemplateComponentsCreator, &unk_10063A978);
  v19 = *(v18 + 40);

  v19(&v44, &v46, v13, v41, v10, v18);
  sub_100004758(v41);
  v20 = v44;
  sub_100058000(&qword_1007832A0, &qword_10063F430);
  swift_allocObject();

  v21 = v13;
  v22 = sub_1004232BC(v20, v21);
  v23 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v24 = static TTRInteractorEditsCommitting<>.async.getter();
  v42 = v23;
  v43 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  v41[0] = v24;
  v25 = objc_allocWithZone(type metadata accessor for TTRListToCustomSmartListConverter());
  v26 = a1;
  v27 = TTRListToCustomSmartListConverter.init(store:committer:)();
  v28 = type metadata accessor for TTRIListDetailRouter();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v29 + 24) = v17;
  type metadata accessor for TTRListDetailTemplateViewModelSource();
  v30 = swift_allocObject();
  v42 = v28;
  v43 = &off_10071E810;
  v41[0] = v29;
  sub_100058000(qword_1007832A8, &qword_10063F438);
  v31 = swift_allocObject();
  *(v31 + *(*v31 + 264) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v31 + *(*v31 + 272) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v31 + *(*v31 + 280) + 8) = 0;
  swift_unknownObjectWeakInit();
  v32 = (v31 + *(*v31 + 312));
  *v32 = 0;
  v32[1] = 0;
  v33 = (v31 + *(*v31 + 304));
  *v33 = v27;
  v33[1] = &protocol witness table for TTRListToCustomSmartListConverter;
  sub_10000B0D8(v41, v31 + *(*v31 + 296));
  *(v31 + *(*v31 + 288)) = a3 & 1;

  v34 = v21;

  v35 = v27;

  v36 = sub_100454B84(v22, v30, v34, &TTRTemplateEditor.changeItem.getter, TTRListDetailViewModel.init(changeItem:));

  sub_100004758(v41);
  v37 = objc_allocWithZone(type metadata accessor for TTRIListDetailViewController(0));

  v39 = sub_10044F94C(v38, v37);

  swift_beginAccess();
  v22[3] = &off_100716708;
  swift_unknownObjectWeakAssign();

  *&v36[*(*v36 + 264) + 8] = &off_10071E838;
  swift_unknownObjectWeakAssign();
  *&v36[*(*v36 + 272) + 8] = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v39;
}

uint64_t sub_10044E9F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

id sub_10044EA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_10044EAD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_100010540(a4 + 96, &v24);
  if (v27 == 8)
  {
    sub_100005FD0(&v24, v28);
    v11 = v29;
    v12 = v30;
    v13 = sub_10000C36C(v28, v29);
    sub_1003982D4(v13, a4, v11, v12);
  }

  else
  {
    sub_100015124(&v24);
    v14 = *(a4 + 56);
    sub_10000794C(a2, v10 + v8[5], &unk_10076BB50, &unk_10062DEA0);
    *v10 = a1;
    *(v10 + v8[6]) = v14;
    v15 = v8[7];
    v23 = *(a4 + 64);
    *(v10 + v15) = v23;
    *(v10 + v8[8]) = 0;
    type metadata accessor for TTRIShowSiriFoundInAppsAssembly();

    swift_unknownObjectRetain();
    v16 = a1;
    v17 = sub_10048CCA8(v28, v10, a3);
    v18 = v29;
    v19 = v30;
    v20 = sub_10000C36C(v28, v29);
    v25 = v18;
    v26 = *(v19 + 8);
    v21 = sub_1000317B8(&v24);
    (*(*(v18 - 8) + 16))(v21, v20, v18);
    v27 = 8;
    sub_1003944FC(&v24, v17);

    sub_10045164C(v10, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
    sub_100015124(&v24);
  }

  return sub_100004758(v28);
}

uint64_t sub_10044ECFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_100010540(a4 + 96, &v24);
  if (v27 == 7)
  {
    sub_100005FD0(&v24, v28);
    v11 = v29;
    v12 = v30;
    v13 = sub_10000C36C(v28, v29);
    sub_1003982D4(v13, a4, v11, v12);
  }

  else
  {
    sub_100015124(&v24);
    v14 = *(a4 + 56);
    sub_10000794C(a2, v10 + v8[5], &unk_10076BB50, &unk_10062DEA0);
    *v10 = a1;
    *(v10 + v8[6]) = v14;
    v15 = v8[7];
    v23 = *(a4 + 64);
    *(v10 + v15) = v23;
    *(v10 + v8[8]) = 0;
    type metadata accessor for TTRIShowAssignedAssembly();

    swift_unknownObjectRetain();
    v16 = a1;
    v17 = sub_100173B4C(v28, v10, a3);
    v18 = v29;
    v19 = v30;
    v20 = sub_10000C36C(v28, v29);
    v25 = v18;
    v26 = *(v19 + 8);
    v21 = sub_1000317B8(&v24);
    (*(*(v18 - 8) + 16))(v21, v20, v18);
    v27 = 7;
    sub_1003944FC(&v24, v17);

    sub_10045164C(v10, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
    sub_100015124(&v24);
  }

  return sub_100004758(v28);
}

uint64_t sub_10044EF20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v8);
  v10 = (&v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_100010540(a4 + 96, v20);
  if (v21 == 11)
  {
    sub_100005FD0(v20, v22);
    v11 = v23;
    v12 = v24;
    v13 = sub_10000C36C(v22, v23);
    sub_1003982D4(v13, a4, v11, *(v12 + 8));
    return sub_100004758(v22);
  }

  else
  {
    sub_100015124(v20);
    v15 = *(a4 + 56);
    sub_10000794C(a2, v10 + v8[5], &unk_10076BB50, &unk_10062DEA0);
    *v10 = a1;
    *(v10 + v8[6]) = v15;
    v16 = v8[7];
    v19 = *(a4 + 64);
    *(v10 + v16) = v19;
    *(v10 + v8[8]) = 0;

    swift_unknownObjectRetain();
    v17 = a1;
    v18 = sub_100337B6C(v22, v10, a3);
    sub_10000B0D8(v22, v20);
    v21 = 11;
    sub_1003944FC(v20, v18);

    sub_100015124(v20);
    sub_100004758(v22);
    return sub_10045164C(v10, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  }
}

uint64_t sub_10044F0EC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v8);
  v10 = (&v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for REMHashtagLabelSpecifier();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_100010540(a4 + 96, v29);
  if (v30 == 10)
  {
    sub_100005FD0(v29, v31);
    sub_10000C36C(v31, v32);
    swift_getObjectType();
    dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
    swift_unknownObjectRelease();
    sub_10001F128(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier, &protocol conformance descriptor for REMHashtagLabelSpecifier);
    dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v12 + 8))(v14, v11);
    v16 = v32;
    v15 = v33;
    sub_10000C36C(v31, v32);
    (*(*(v15 + 8) + 40))(v16);
    sub_10000C36C(v31, v32);
    swift_getObjectType();
    dispatch thunk of TTRShowTaggedDataModelSourceType.nonNilHashtagContext.getter();
    swift_getObjectType();
    (*(v12 + 16))(v14, a1, v11);
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.setter();
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      sub_1002FB7EC(1);
      v19 = sub_100341598();
      sub_10001A06C(v19);
    }

    return sub_100004758(v31);
  }

  else
  {
    sub_100015124(v29);
    v21 = v8[5];
    v22 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v22 - 8) + 56))(v10 + v21, 1, 1, v22);
    v23 = *(a4 + 56);
    *v10 = a2;
    *(v10 + v8[6]) = v23;
    v24 = v8[7];
    v28 = *(a4 + 64);
    *(v10 + v24) = v28;
    *(v10 + v8[8]) = 0;
    type metadata accessor for TTRIShowTaggedAssembly();

    swift_unknownObjectRetain();
    v25 = a2;
    v26 = sub_1003962A4();
    v27 = sub_100528FF0(v31, v10, a1, !v26, a3);
    sub_10000B0D8(v31, v29);
    v30 = 10;
    sub_1003944FC(v29, v27);

    sub_100015124(v29);
    sub_100004758(v31);
    return sub_10045164C(v10, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  }
}

void sub_10044F500(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5, uint64_t a6)
{
  v12 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v12);
  v14 = (&v39[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_100010540(a6 + 96, v39);
  if (v40 != 9)
  {
    sub_100015124(v39);
    if ((a3 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_20:
    v32 = v12[5];
    v33 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v33 - 8) + 56))(v14 + v32, 1, 1, v33);
    v34 = *(a6 + 56);
    *v14 = a4;
    *(v14 + v12[6]) = v34;
    v35 = v12[7];
    v38 = *(a6 + 64);
    *(v14 + v35) = v38;
    *(v14 + v12[8]) = 0;
    type metadata accessor for TTRIShowSearchResultAssembly();

    swift_unknownObjectRetain();
    v36 = a4;
    v37 = sub_10037209C(v41, v14, a1, a2, a5, &off_100721070);
    *(*sub_10000C36C(v41, v42) + OBJC_IVAR____TtC9Reminders29TTRIShowSearchResultPresenter_didFinalizeSearchQuery) = a3 & 1;
    sub_10000B0D8(v41, v39);
    v40 = 9;
    sub_1003944FC(v39, v37);

    sub_100015124(v39);
    sub_10045164C(v14, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
LABEL_21:
    sub_100004758(v41);
    return;
  }

  sub_100005FD0(v39, v41);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong detailViewController];

    if (v17)
    {
      sub_10000C36C(v41, v42);
      swift_getObjectType();
      dispatch thunk of TTRShowSearchResultDataModelSourceType.searchTerm.getter();
      if (v18)
      {
      }

      v19 = *(*sub_10000C36C(v41, v42) + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
      if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
      {
        swift_getObjectType();
        dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
        swift_unknownObjectRelease();
      }

      sub_1004EF1A4(v19, v20);
      TTRRemindersListEditingSessionProviderCapability.flushPendingSaves()();
      swift_getObjectType();

      dispatch thunk of TTRShowSearchResultDataModelSourceType.searchTerm.setter();
      *(*sub_10000C36C(v41, v42) + OBJC_IVAR____TtC9Reminders29TTRIShowSearchResultPresenter_didFinalizeSearchQuery) = a3 & 1;
      if (a3)
      {
        [*sub_10000C36C(v41 v42)];
        v21 = swift_unknownObjectWeakLoadStrong();
        if (v21)
        {
          v22 = v21;
          sub_1002FB7EC(1);
          v23 = sub_100341598();
          sub_10001A06C(v23);
        }

        v24 = swift_unknownObjectWeakLoadStrong();
        if (!v24 || (v25 = v24, v26 = [v24 traitCollection], v25, v27 = objc_msgSend(v26, "horizontalSizeClass"), v26, v27 != 1))
        {
          [v17 becomeFirstResponder];
        }
      }

      goto LABEL_21;
    }
  }

  sub_100004758(v41);
  if (a3)
  {
    goto LABEL_20;
  }

LABEL_18:
  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
    goto LABEL_20;
  }

  v29 = v28;
  v30 = [v28 traitCollection];

  v31 = [v30 horizontalSizeClass];
  if (v31 != 1)
  {
    goto LABEL_20;
  }
}

id sub_10044F94C(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100058000(&qword_100776A40, &unk_100636E90);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_100058000(&qword_100776A48, qword_100638FE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_tableDataController] = 0;
  a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_autoBeginEditingPerformed] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___nameCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___listTypeCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___editFiltersCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsCell] = 0;
  static TTRHelpAnchor.IOSHelpTopic.defaultVersion.getter();
  TTRHelpAnchor.IOSHelpTopic.init(identifier:helpTopicID:version:)();
  v11 = type metadata accessor for TTRHelpAnchor.IOSHelpTopic();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = type metadata accessor for TTRHelpAnchor.MacOSHelpAnchor();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  TTRHelpAnchor.init(iOSHelpTopic:macOSHelpAnchor:)();
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListSection] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListActionCell] = 0;
  v13 = &a2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter];
  *v13 = a1;
  v13[1] = &off_100716718;
  v15.receiver = a2;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
}

id sub_10044FC24(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_100058000(&qword_10077FE60, &unk_10063BFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10062D3F0;
  *(v10 + 32) = a2;
  *(v10 + 40) = &off_1007166B8;
  v45 = a5;

  if (a3)
  {
    sub_10037373C(a3, a4);

    v11 = a4;
  }

  else
  {
    v11 = 0;
    a5 = 0;
  }

  *(v10 + 48) = v11;
  *(v10 + 56) = a5;
  sub_100058000(&qword_10077FE68, &unk_10063F220);
  sub_100058000(&qword_10077FE70, &unk_10063C000);
  sub_10000E188(&qword_10077FE78, &qword_10077FE68, &unk_10063F220, &protocol conformance descriptor for [A]);
  v12 = Sequence.removingNils<A>()();

  v13 = type metadata accessor for TTRIListDetailContainerRouter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46[3] = v13;
  v46[4] = &off_100714510;
  v46[0] = v14;
  type metadata accessor for TTRIListDetailContainerPresenter();
  v15 = swift_allocObject();
  v16 = sub_10000AE84(v46, v13);
  v17 = __chkstk_darwin(v16);
  v19 = (v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v15[9] = v13;
  v15[10] = &off_100714510;
  v15[6] = v21;
  v15[3] = 0;
  swift_unknownObjectWeakInit();
  v15[5] = 0;
  swift_unknownObjectWeakInit();
  v15[11] = v12;

  sub_100004758(v46);
  sub_100058000(&qword_10077FE80, &qword_10063F230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  v23._countAndFlagsBits = 0xD000000000000013;
  v24._countAndFlagsBits = 0x7473694C2077654ELL;
  v23._object = 0x80000001006737D0;
  v25._object = 0x80000001006737F0;
  v24._object = 0xE800000000000000;
  v25._countAndFlagsBits = 0xD00000000000001ELL;
  v26 = TTRLocalizedString(_:value:comment:)(v23, v24, v25);
  *(inited + 32) = 7824750;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v26;
  *(inited + 64) = a1;
  if (a3)
  {
    sub_10037373C(a3, a4);
    v27 = a1;
    v28._countAndFlagsBits = 0xD000000000000019;
    v28._object = 0x8000000100683020;
    v29._object = 0x80000001006737F0;
    v30._countAndFlagsBits = 0x6574616C706D6554;
    v30._object = 0xE900000000000073;
    v29._countAndFlagsBits = 0xD00000000000001ELL;
    v31 = TTRLocalizedString(_:value:comment:)(v28, v30, v29);
    v32 = a3;
    inited = sub_1005476A0(1, 2, 1, inited);
    swift_unknownObjectRelease();

    *(inited + 16) = 2;
    *(inited + 72) = 0x6574616C706D6574;
    *(inited + 80) = 0xE900000000000073;
    *(inited + 88) = v31;
    *(inited + 104) = v32;
  }

  else
  {
    v33 = a1;
  }

  v34 = objc_allocWithZone(type metadata accessor for TTRIListDetailContainerViewController()) + OBJC_IVAR____TtC9Reminders37TTRIListDetailContainerViewController_presenter;
  *v34 = v15;
  v34[1] = &off_10072B858;

  v35 = sub_1004069E8(inited, 0);
  v15[3] = &off_1007192B8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v36 = [v35 presentationController];
  if (v36)
  {
    v37 = v36;
    [v36 setDelegate:v35];
  }

  v38 = *(v12 + 16);
  if (v38)
  {
    v44[1] = v14;
    v45 = v12;
    v39 = (v12 + 40);
    do
    {
      v40 = *v39;
      ObjectType = swift_getObjectType();
      v42 = *(v40 + 16);

      swift_unknownObjectRetain();
      v42(v15, &off_10072B838, ObjectType, v40);
      swift_unknownObjectRelease();
      v39 += 2;
      --v38;
    }

    while (v38);
  }

  return v35;
}

id sub_10045015C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v6 = type metadata accessor for TTRTemplatesListStyle();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(a1 + 16) store];
  v31 = sub_100453854(v11, a1, 0, a2, &off_100727CC0);
  v13 = v12;

  v14 = *(a1 + 24);
  v15 = [v14 capabilities];
  v16 = [v15 supportsTemplates];

  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v16)
  {
    (*(v7 + 104))(v10, enum case for TTRTemplatesListStyle.listCreation(_:), v6);
    v18 = sub_1004D06B4(v10, v14, v29, v30);
    v19 = v20;
    v22 = v21;
    (*(v7 + 8))(v10, v6);
    v17 = *(v22 + 8);
    v23 = v18;
    swift_unknownObjectRetain();
  }

  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v25 = v31;
  v26 = sub_1003731D0(v31, v13, v18, v19, v17, ObjectType, &off_1007166B8);
  swift_unknownObjectRelease();
  sub_100053470(v18, v19);
  sub_100053470(v18, v19);

  return v26;
}

void *sub_100450394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRIListSharingRouter();
  v18[3] = v8;
  v18[4] = &off_100727A40;
  v18[0] = a2;
  type metadata accessor for TTRIListSharingPresenter();
  v9 = swift_allocObject();
  v10 = sub_10000AE84(v18, v8);
  v11 = __chkstk_darwin(v10);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v9[12] = v8;
  v9[13] = &off_100727A40;
  v9[9] = v15;
  v9[3] = 0;
  swift_unknownObjectWeakInit();
  v9[5] = 0;
  swift_unknownObjectWeakInit();
  v9[16] = 0;
  v9[6] = 0;
  v9[7] = a1;
  v9[8] = &off_100727170;
  v9[14] = a3;
  v9[15] = a4;
  sub_100004758(v18);
  return v9;
}

void sub_1004504F8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 store];
  v6 = [a1 objectID];
  v19[0] = 0;
  v7 = [v5 fetchListWithObjectID:v6 error:v19];

  if (v7)
  {
    v8 = v19[0];
    v9 = sub_100450768(v7, a2, [v7 isOwnedByMe] ^ 1u, &off_100727B80);
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong presentedViewController];
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        *(v14 + 16) = v11;
        *(v14 + 24) = v9;
        *(v14 + 32) = 1;
        v19[4] = sub_10023A490;
        v19[5] = v14;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 1107296256;
        v19[2] = sub_10001047C;
        v19[3] = &unk_100728860;
        v15 = _Block_copy(v19);
        v16 = v11;
        v17 = v9;

        [v13 dismissViewControllerAnimated:1 completion:v15];

        _Block_release(v15);
        return;
      }

      [v11 presentViewController:v9 animated:1 completion:0];
    }
  }

  else
  {
    v18 = v19[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id sub_100450768(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = objc_allocWithZone(TTRUndoManager);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithDebugIdentifier:v7];

  type metadata accessor for TTRListSharingInteractor();
  swift_allocObject();
  v9 = v8;
  v10 = sub_10041BB64(a1, v9);
  type metadata accessor for TTRIListSharingRouter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRListSharingContactProvider();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  v13 = [objc_opt_self() defaultProvider];
  v14 = [v13 contactStore];

  *(v12 + 32) = v14;
  v15 = v9;

  v16 = sub_100450394(v10, v11, v15, v12);
  type metadata accessor for TTRIListSharingViewController();
  sub_10001F128(&qword_10076BF48, type metadata accessor for TTRIListSharingViewController, &unk_100630030);
  static TTRTypedController<>.instantiateFromStoryboard(with:)();

  v17 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v19];
  v10[3] = &off_100726848;
  swift_unknownObjectWeakAssign();

  v16[3] = &off_100715958;
  swift_unknownObjectWeakAssign();

  v16[5] = a4;
  swift_unknownObjectWeakAssign();
  *(v12 + 24) = &off_100726838;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();

  return v17;
}

void sub_100450A40(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRUserDefaults();
  v7 = static TTRUserDefaults.appUserDefaults.getter();
  v8 = TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.getter();

  if (v8)
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003E30(v9, qword_100780A58);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "showWelcomeScreen: Showing upgrade screen because iCloud sync was enabled since last app start.", v12, 2u);
    }

    v13 = static TTRUserDefaults.appUserDefaults.getter();
    TTRUserDefaults.showUpgradeWhenICloudSyncEnabled.setter();
  }

  v17 = sub_100450BD0(a3, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = a1 & 1;
    v16 = Strong;
    [Strong presentViewController:v17 animated:v15 completion:0];
  }
}

id sub_100450BD0(uint64_t a1, void *a2)
{
  type metadata accessor for TTRWelcomeNavigationInteractor();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v4 = type metadata accessor for TTRIWelcomeNavigationRouter();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23[3] = v4;
  v23[4] = &off_10072CC28;
  v23[0] = v5;
  type metadata accessor for TTRIWelcomeNavigationPresenter();
  v6 = swift_allocObject();
  v7 = sub_10000AE84(v23, v4);
  v8 = __chkstk_darwin(v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = *v10;
  v6[12] = v4;
  v6[13] = &off_10072CC28;
  v6[9] = v12;
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  v6[5] = 0;
  swift_unknownObjectWeakInit();
  v6[7] = v3;
  v6[8] = &off_100729DC8;
  v6[6] = a2;

  sub_10012E7EC(a2);
  sub_100004758(v23);
  if (a2 == 1)
  {
    v14 = sub_1005AD684(v6, &off_100729E78);
  }

  else
  {
    v14 = sub_1004F9328(v6, &off_100729EA0, a2, v13);
  }

  v15 = v14;
  swift_unknownObjectRelease();
  v16 = type metadata accessor for TTRIWelcomeNavigationViewController();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC9Reminders35TTRIWelcomeNavigationViewController_presenter];
  *v18 = v6;
  *(v18 + 1) = &off_100729ED8;
  v22.receiver = v17;
  v22.super_class = v16;

  v19 = objc_msgSendSuper2(&v22, "initWithRootViewController:", v15);

  *(v3 + 24) = &off_100729ED0;
  swift_unknownObjectWeakAssign();

  v6[3] = &off_10071DBE0;
  swift_unknownObjectWeakAssign();
  v6[5] = &off_100721018;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();

  return v19;
}

uint64_t sub_100450E7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[1] = a4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMNavigationSpecifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
  *v13 = [a1 objectID];
  v15 = enum case for REMNavigationSpecifier.ListPathSpecifier.DetailSection.none(_:);
  v16 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  v17 = enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:);
  v18 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  (*(*(v18 - 8) + 104))(&v13[v14], v17, v18);
  (*(v11 + 104))(v13, enum case for REMNavigationSpecifier.list(_:), v10);
  if (qword_100767100 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003E30(v19, qword_100777F30);
  REMNavigationSpecifier.url.getter();
  sub_1003F9C58(0x73746E756F636341, 0xED00007473694C20, 0x746544207473694CLL, 0xEB000000006C6961, v9);
  (*(v7 + 8))(v9, v6);
  type metadata accessor for TTRListDetailAssembly.ListComponentsCreator();
  swift_initStackObject();
  v20 = [a1 saveRequest];
  v21 = [v20 store];

  v22 = sub_10044DB08(v21, a1, 1, a2, &off_100727CC0);
  v24 = v23;

  v25 = v22;

  v26 = sub_10044FC24(v25, v24, 0, 0, 0);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    [Strong presentViewController:v26 animated:1 completion:0];

    v26 = v28;
  }

  return (*(v11 + 8))(v13, v10);
}

void sub_100451264(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRListDetailAssembly.CustomSmartListComponentsCreator();
  swift_initStackObject();
  v6 = [a1 saveRequest];
  v7 = [v6 store];

  v8 = sub_10044E000(v7, a1, 1, a2, &off_100727CC0);
  v10 = v9;

  v11 = v8;

  v12 = sub_10044FC24(v11, v10, 0, 0, 0);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong presentViewController:v12 animated:1 completion:0];
  }
}

uint64_t sub_100451390(void *a1, char a2, void *a3)
{
  v6 = [a1 isGroup];
  sub_10000C36C(a3 + 6, a3[9]);
  if (v6)
  {
    sub_100394170(a1, a3, v8);
  }

  else
  {
    sub_100393888(a1, a3, &off_100721110, a2 & 1, v8);
  }

  return sub_100004758(v8);
}

uint64_t sub_100451434(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v23[-1] - v11;
  v13 = sub_10000C36C((a3 + 48), *(a3 + 72));
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = *v13;
  v16 = *(*v13 + 56);
  sub_10000794C(v12, v9 + v7[7], &unk_10076BB50, &unk_10062DEA0);
  *v9 = a2;
  v17 = v7[8];
  v22 = *(v15 + 64);
  v18 = v22;
  *(v9 + v17) = v16;
  *(v9 + v7[9]) = v18;
  *(v9 + v7[10]) = 0;

  swift_unknownObjectRetain();
  v19 = a2;
  v20 = sub_10056D524(v25, v9, a1, a3);
  sub_10000B0D8(v25, v23);
  v24 = 12;
  sub_1003944FC(v23, v20);

  sub_100015124(v23);
  sub_100004758(v25);
  sub_10045164C(v9, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  return sub_1000079B4(v12, &unk_10076BB50, &unk_10062DEA0);
}

uint64_t sub_10045164C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004516B4(uint64_t a1, void *a2, int a3, void *a4)
{
  v109 = a3;
  v111 = a2;
  v6 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v6);
  v110 = (&v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  *&v108 = &v107 - v12;
  __chkstk_darwin(v13);
  v15 = &v107 - v14;
  __chkstk_darwin(v16);
  v18 = &v107 - v17;
  __chkstk_darwin(v19);
  v21 = &v107 - v20;
  v22 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v26, a1, v22, v24);
  v27 = (*(v23 + 88))(v26, v22);
  if (v27 == enum case for TTRListType.PredefinedSmartListType.today(_:))
  {
    v28 = sub_10000C36C(a4 + 6, a4[9]);
    v29 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    v30 = *v28;
    swift_beginAccess();
    sub_100010540(v30 + 96, &v112);
    if (v115 == 6)
    {
      sub_100005FD0(&v112, v116);
      v31 = v117;
      v32 = v118;
      v33 = sub_10000C36C(v116, v117);
      sub_1003982D4(v33, v30, v31, v32);
      sub_1000079B4(v21, &unk_10076BB50, &unk_10062DEA0);
      return sub_100004758(v116);
    }

    sub_100015124(&v112);
    v40 = *(v30 + 56);
    v41 = v110;
    sub_10000794C(v21, v110 + v6[5], &unk_10076BB50, &unk_10062DEA0);
    v42 = v111;
    *v41 = v111;
    v43 = v6[6];
    v108 = *(v30 + 64);
    v44 = v108;
    *(v41 + v43) = v40;
    *(v41 + v6[7]) = v44;
    *(v41 + v6[8]) = v109 & 1;
    type metadata accessor for TTRIShowTodayAssembly();

    swift_unknownObjectRetain();
    v45 = v42;
    v46 = sub_100323FE4(v116, v41, a4);
    v48 = v117;
    v47 = v118;
    v49 = sub_10000C36C(v116, v117);
    v113 = v48;
    v114 = *(v47 + 8);
    v50 = sub_1000317B8(&v112);
    (*(*(v48 - 8) + 16))(v50, v49, v48);
    v115 = 6;
    sub_1003944FC(&v112, v46);

    sub_10045164C(v41, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
    v51 = v21;
    goto LABEL_12;
  }

  if (v27 == enum case for TTRListType.PredefinedSmartListType.scheduled(_:))
  {
    v34 = sub_10000C36C(a4 + 6, a4[9]);
    v35 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v35 - 8) + 56))(v18, 1, 1, v35);
    v36 = *v34;
    swift_beginAccess();
    sub_100010540(v36 + 96, &v112);
    if (v115 == 3)
    {
      sub_100005FD0(&v112, v116);
      v37 = v117;
      v38 = v118;
      v39 = sub_10000C36C(v116, v117);
      sub_1003982D4(v39, v36, v37, v38);
      sub_1000079B4(v18, &unk_10076BB50, &unk_10062DEA0);
      return sub_100004758(v116);
    }

    sub_100015124(&v112);
    v59 = *(v36 + 56);
    v60 = v110;
    sub_10000794C(v18, v110 + v6[5], &unk_10076BB50, &unk_10062DEA0);
    v61 = v111;
    *v60 = v111;
    v62 = v6[6];
    v108 = *(v36 + 64);
    v63 = v108;
    *(v60 + v62) = v59;
    *(v60 + v6[7]) = v63;
    *(v60 + v6[8]) = v109 & 1;
    type metadata accessor for TTRIShowScheduledAssembly();
    v64 = v61;

    swift_unknownObjectRetain();
    v65 = sub_100182D54(v116, v60, a4);
    v67 = v117;
    v66 = v118;
    v68 = sub_10000C36C(v116, v117);
    v113 = v67;
    v114 = *(v66 + 8);
    v69 = sub_1000317B8(&v112);
    (*(*(v67 - 8) + 16))(v69, v68, v67);
    v115 = 3;
    sub_1003944FC(&v112, v65);

    sub_10045164C(v60, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
    v51 = v18;
LABEL_12:
    sub_1000079B4(v51, &unk_10076BB50, &unk_10062DEA0);
    sub_100015124(&v112);
    return sub_100004758(v116);
  }

  if (v27 == enum case for TTRListType.PredefinedSmartListType.all(_:))
  {
    v52 = a4;
    v53 = sub_10000C36C(a4 + 6, a4[9]);
    v54 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v54 - 8) + 56))(v15, 1, 1, v54);
    v55 = *v53;
    swift_beginAccess();
    sub_100010540(v55 + 96, &v112);
    if (v115 == 5)
    {
      sub_100005FD0(&v112, v116);
      v56 = v117;
      v57 = v118;
      v58 = sub_10000C36C(v116, v117);
      sub_1003982D4(v58, v55, v56, v57);
      sub_1000079B4(v15, &unk_10076BB50, &unk_10062DEA0);
      return sub_100004758(v116);
    }

    sub_100015124(&v112);
    v79 = *(v55 + 56);
    v80 = v110;
    sub_10000794C(v15, v110 + v6[5], &unk_10076BB50, &unk_10062DEA0);
    v81 = v111;
    *v80 = v111;
    v82 = v6[6];
    v108 = *(v55 + 64);
    v83 = v108;
    *(v80 + v82) = v79;
    *(v80 + v6[7]) = v83;
    *(v80 + v6[8]) = v109 & 1;
    type metadata accessor for TTRIShowAllRemindersAssembly();
    v84 = v81;

    swift_unknownObjectRetain();
    v85 = sub_1003F1080(v116, v80, v52);
    v87 = v117;
    v86 = v118;
    v88 = sub_10000C36C(v116, v117);
    v113 = v87;
    v114 = *(v86 + 8);
    v89 = sub_1000317B8(&v112);
    (*(*(v87 - 8) + 16))(v89, v88, v87);
    v115 = 5;
    sub_1003944FC(&v112, v85);

    sub_10045164C(v80, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
    v51 = v15;
    goto LABEL_12;
  }

  if (v27 == enum case for TTRListType.PredefinedSmartListType.flagged(_:))
  {
    v71 = a4;
    v72 = sub_10000C36C(a4 + 6, a4[9]);
    v73 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v74 = v108;
    (*(*(v73 - 8) + 56))(v108, 1, 1, v73);
    v75 = *v72;
    swift_beginAccess();
    sub_100010540(v75 + 96, &v112);
    if (v115 == 4)
    {
      sub_100005FD0(&v112, v116);
      v76 = v117;
      v77 = v118;
      v78 = sub_10000C36C(v116, v117);
      sub_1003982D4(v78, v75, v76, v77);
      sub_1000079B4(v74, &unk_10076BB50, &unk_10062DEA0);
      return sub_100004758(v116);
    }

    sub_100015124(&v112);
    v92 = *(v75 + 56);
    v93 = v110;
    sub_10000794C(v74, v110 + v6[5], &unk_10076BB50, &unk_10062DEA0);
    v94 = v111;
    *v93 = v111;
    v95 = v6[6];
    v107 = *(v75 + 64);
    v96 = v107;
    *(v93 + v95) = v92;
    *(v93 + v6[7]) = v96;
    *(v93 + v6[8]) = v109 & 1;
    type metadata accessor for TTRIShowFlaggedAssembly();
    v97 = v94;

    swift_unknownObjectRetain();
    v98 = sub_10028D05C(v116, v93, v71);
    v100 = v117;
    v99 = v118;
    v101 = sub_10000C36C(v116, v117);
    v113 = v100;
    v114 = *(v99 + 8);
    v102 = sub_1000317B8(&v112);
    (*(*(v100 - 8) + 16))(v102, v101, v100);
    v115 = 4;
    sub_1003944FC(&v112, v98);

    sub_10045164C(v93, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
    v51 = v74;
    goto LABEL_12;
  }

  if (v27 == enum case for TTRListType.PredefinedSmartListType.assigned(_:))
  {
    v90 = sub_10000C36C(a4 + 6, a4[9]);
    v91 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v91 - 8) + 56))(v10, 1, 1, v91);
    sub_10044ECFC(v111, v10, a4, *v90);
    return sub_1000079B4(v10, &unk_10076BB50, &unk_10062DEA0);
  }

  if (v27 == enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:))
  {
    v103 = sub_10000C36C(a4 + 6, a4[9]);
    v104 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v104 - 8) + 56))(v10, 1, 1, v104);
    sub_10044EAD8(v111, v10, a4, *v103);
    return sub_1000079B4(v10, &unk_10076BB50, &unk_10062DEA0);
  }

  if (v27 == enum case for TTRListType.PredefinedSmartListType.completed(_:))
  {
    v105 = sub_10000C36C(a4 + 6, a4[9]);
    v106 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v106 - 8) + 56))(v10, 1, 1, v106);
    sub_10044EF20(v111, v10, a4, *v105);
    return sub_1000079B4(v10, &unk_10076BB50, &unk_10062DEA0);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_100452320(char a1)
{
  v3 = *(type metadata accessor for TTRAccountsListsViewModel.List() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_10043C410(a1, v4, v5, v6);
}

void sub_100452454(char a1)
{
  v2 = a1 & 1;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100783140, &qword_10063F158);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for REMAccountsListDataView.Model();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isEditing);
  if (v15 != v2)
  {
    *(v1 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isEditing) = v2;
    v16 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
    swift_beginAccess();
    sub_10000794C(v1 + v16, v7, &qword_100783140, &qword_10063F158);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000079B4(v7, &qword_100783140, &qword_10063F158);
    }

    else
    {
      v26 = *(v9 + 32);
      v26(v14, v7, v8);
      sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
      v27 = static OS_dispatch_queue.main.getter();
      v17 = swift_allocObject();
      swift_weakInit();
      (*(v9 + 16))(v11, v14, v8);
      v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      v26((v19 + v18), v11, v8);
      *(v19 + v18 + v10) = v15;
      aBlock[4] = sub_100452988;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001047C;
      aBlock[3] = &unk_100728158;
      v20 = _Block_copy(aBlock);

      v21 = v29;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10001F128(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100058000(&qword_100780A50, &qword_100635D30);
      sub_10000E188(&qword_10076B7E0, &qword_100780A50, &qword_100635D30, &protocol conformance descriptor for [A]);
      v22 = v31;
      v23 = v28;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v24 = v27;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v20);

      (*(v33 + 8))(v22, v23);
      (*(v30 + 8))(v21, v32);
      (*(v9 + 8))(v14, v8);
    }
  }
}

double sub_100452988()
{
  v1 = *(type metadata accessor for REMAccountsListDataView.Model() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = v3[*(v1 + 64)];

  return sub_10042B560(v2, v3, v4);
}

uint64_t sub_100452A3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return a2(a1, ObjectType, v5);
}

uint64_t sub_100452A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100783148, &qword_10063F170);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100452B0C(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

void sub_100452B28(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100459530(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2 && EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v5, v8, v2);
    v13 = (*(v3 + 88))(v5, v2);
    if (v13 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v14 = *(v3 + 8);
      v14(v8, v2);
      v14(v5, v2);
    }

    else if (v13 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      v15 = *(v3 + 8);
      v15(v8, v2);
      v15(v5, v2);
    }

    else
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100003E30(v16, qword_100782E90);
      v17 = sub_100008E04(_swiftEmptyArrayStorage);
      v18 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown pinnedListSelection type", 32, 2uLL, v17, v18);
      __break(1u);
    }
  }

  else
  {
    sub_10045164C(v11, type metadata accessor for TTRIAccountsListsSelection);
  }
}

void sub_100452E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100459530(a1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_10045164C(v20, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v6 + 32))(v11, v20, v5);
    (*(v6 + 16))(v8, v11, v5);
    v26 = (*(v6 + 88))(v8, v5);
    if (v26 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v27 = *(v6 + 8);
      v27(v11, v5);
      v27(v8, v5);
      return;
    }

    if (v26 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      v28 = *(v6 + 8);
      v28(v11, v5);
      v28(v8, v5);
      return;
    }
  }

  else
  {
    a2 = *v20;
    if (!*(*v20 + 16))
    {

      v29 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
      goto LABEL_17;
    }

    v22 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v17, a2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v22);

    (*(v23 + 56))(v17, 0, 1, v22);
    sub_10000794C(v17, v14, &unk_100771B40, &unk_10062FB70);
    v24 = (*(v23 + 88))(v14, v22);
    if (v24 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
    {
      (*(v23 + 96))(v14, v22);
      v25 = type metadata accessor for UUID();
      (*(*(v25 - 8) + 8))(v14, v25);
LABEL_17:
      sub_1000079B4(v17, &unk_100771B40, &unk_10062FB70);
      return;
    }

    if (v24 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
LABEL_16:
      (*(v23 + 8))(v14, v22);
      goto LABEL_17;
    }

    if (v24 == enum case for TTRAccountsListsViewModel.Item.list(_:))
    {
      (*(v23 + 8))(v14, v22);
      sub_1000079B4(v17, &unk_100771B40, &unk_10062FB70);
      return;
    }

    if (v24 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      goto LABEL_16;
    }

    if (v24 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v24 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_17;
    }

    (*(v23 + 8))(v14, v22);
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100003E30(v30, qword_100782E90);
    v31 = sub_100008E04(_swiftEmptyArrayStorage);
    v32 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v31, v32);
    __break(1u);
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100003E30(v33, qword_100782E90);
  v34 = sub_100008E04(_swiftEmptyArrayStorage);
  v35 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818(a2, v37, 2uLL, v34, v35);
  __break(1u);
}

void sub_10045356C(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100459530(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v8, v11, v2);
      (*(v3 + 16))(v5, v8, v2);
      v13 = (*(v3 + 88))(v5, v2);
      if (v13 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
      {
        v14 = *(v3 + 8);
        v14(v8, v2);
        v14(v5, v2);
      }

      else if (v13 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
      {
        v15 = *(v3 + 8);
        v15(v8, v2);
        v15(v5, v2);
      }

      else
      {
        if (qword_1007672D8 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_100003E30(v16, qword_100782E90);
        v17 = sub_100008E04(_swiftEmptyArrayStorage);
        v18 = sub_100008E04(_swiftEmptyArrayStorage);
        sub_1003F9818("Unknown pinnedListSelection", 27, 2uLL, v17, v18);
        __break(1u);
      }
    }

    else
    {
    }
  }

  else
  {
    sub_10045164C(v11, type metadata accessor for TTRIAccountsListsSelection);
  }
}

id sub_100453854(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v55 = a4;
  v8 = type metadata accessor for TTRRemindersListListType();
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRListDetailViewModel(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(TTRUndoManager);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithDebugIdentifier:v14];

  v16 = type metadata accessor for TTRUserDefaults();
  v17 = static TTRUserDefaults.appUserDefaults.getter();
  v18 = type metadata accessor for TTRSmartListVersionWarningInteractor();
  v19 = swift_allocObject();
  v19[5] = v16;
  v19[6] = &protocol witness table for TTRUserDefaults;
  v19[2] = v17;
  v19[7] = 20;
  v61 = v18;
  v62 = &protocol witness table for TTRSmartListVersionWarningInteractor;
  v60[0] = v19;
  sub_10000B0D8(v60, v59);
  swift_retain_n();
  v20 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for TTRListDetailCreationEditor();
  v21 = swift_allocObject();
  v57 = v16;
  v58 = &protocol witness table for TTRUserDefaults;
  *&v56 = v20;
  *(v21 + 16) = a2;
  sub_100005FD0(v59, v21 + 32);
  *(v21 + 24) = v15;
  sub_100005FD0(&v56, v21 + 72);
  v22 = v15;

  sub_100004758(v60);

  sub_100058000(&qword_100783170, &qword_10063F1B8);
  swift_allocObject();
  v23 = v22;

  v25 = sub_100422838(v24, v23);
  v26 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v27 = static TTRInteractorEditsCommitting<>.async.getter();
  v61 = v26;
  v62 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  v60[0] = v27;
  v28 = objc_allocWithZone(type metadata accessor for TTRListToCustomSmartListConverter());
  v29 = a1;
  v30 = TTRListToCustomSmartListConverter.init(store:committer:)();
  v31 = type metadata accessor for TTRIListDetailRouter();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v32 + 24) = v19;
  type metadata accessor for TTRListDetailCreationViewModelSource();
  v33 = swift_allocObject();
  v61 = v31;
  v62 = &off_10071E810;
  v60[0] = v32;
  sub_100058000(&qword_100783178, &qword_10063F1C0);
  v34 = swift_allocObject();
  *(v34 + *(*v34 + 264) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v34 + *(*v34 + 272) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v34 + *(*v34 + 280) + 8) = 0;
  swift_unknownObjectWeakInit();
  v35 = (v34 + *(*v34 + 312));
  *v35 = 0;
  v35[1] = 0;
  v36 = (v34 + *(*v34 + 304));
  *v36 = v30;
  v36[1] = &protocol witness table for TTRListToCustomSmartListConverter;
  sub_10000B0D8(v60, v34 + *(*v34 + 296));
  *(v34 + *(*v34 + 288)) = a3 & 1;
  v34[2] = v25;
  v34[3] = v33;
  v48 = v33;
  v34[4] = v23;

  v49 = v23;

  v37 = v30;

  v39 = v50;
  TTRListDetailViewModel.init(changeItem:)(v38, v50);
  v40 = *(v11 + 76);
  v41 = v51;
  v42 = v52;
  v43 = v53;
  (*(v52 + 16))(v51, &v39[v40], v53);
  sub_10045164C(v39, type metadata accessor for TTRListDetailViewModel);
  (*(v42 + 32))(v34 + *(*v34 + 136), v41, v43);
  sub_100004758(v60);
  v44 = objc_allocWithZone(type metadata accessor for TTRIListDetailViewController(0));

  v46 = sub_10044F94C(v45, v44);

  swift_beginAccess();
  v25[3] = &off_100716708;
  swift_unknownObjectWeakAssign();

  *(v34 + *(*v34 + 264) + 8) = &off_10071E838;
  swift_unknownObjectWeakAssign();
  *(v34 + *(*v34 + 272) + 8) = v54;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v46;
}

uint64_t sub_100453EC0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for TTRIPopoverAnchor() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8);
}

uint64_t sub_100453F4C()
{
  v0 = sub_100058000(&qword_10077FDA8, &qword_10063F1B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_100058000(&unk_10076B870, &qword_10062FC08);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_100058000(&unk_10076B880, &unk_10063BDF0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100782E90);
  v15 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Add New List", 12, 2, v15);

  TTRAccountsListsViewModel.accountCollection.getter();

  sub_100015E68(v5);
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    return sub_1000079B4(v5, &unk_10076B870, &qword_10062FC08);
  }

  (*(v11 + 32))(v13, v5, v10);
  v17 = type metadata accessor for TTRRemindersListListType();
  (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
  sub_100426520(v13, 0, 0, v2);
  sub_1000079B4(v2, &qword_10077FDA8, &qword_10063F1B0);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1004542D4()
{
  v0 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v21 = *(v0 - 8);
  v22 = v0;
  __chkstk_darwin(v0);
  v2 = (&v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100058000(&unk_10076B880, &unk_10063BDF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  v7 = sub_100058000(&qword_100783288, &qword_10063F410);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_100782E90);
  v14 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Add New Group", 13, 2, v14);

  TTRAccountsListsViewModel.accountCollection.getter();

  v15 = sub_100058000(&qword_100783290, &qword_10063F418);
  swift_getOpaqueTypeConformance2();
  Sequence.firstMap<A>(_:)();
  (*(v4 + 8))(v6, v3);
  sub_10000794C(v12, v9, &qword_100783288, &qword_10063F410);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_1000079B4(v12, &qword_100783288, &qword_10063F410);
    v12 = v9;
  }

  else
  {
    v16 = *&v9[*(v15 + 48)];
    v18 = v21;
    v17 = v22;
    (*(v21 + 32))(v2, v9, v22);
    sub_100426B94(v2, v16);

    (*(v18 + 8))(v2, v17);
  }

  return sub_1000079B4(v12, &qword_100783288, &qword_10063F410);
}

uint64_t sub_100454688(void *a1)
{
  v1 = [a1 items];
  sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = type metadata accessor for TTRIRemindersListDragReminder();
      v18 = 0xD000000000000029;
      v19 = 0x8000000100677B80;
      AnyHashable.init<A>(_:)();
      UIDragItem.localObject<A>(ofType:forKey:)();
      sub_100077654(v20);
      v9 = v21;
      if (!v21)
      {

        return 0;
      }

      v10 = *&v21[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];
      v16 = v6;
      v11 = i;
      v12 = v21[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList];
      v13 = objc_allocWithZone(v8);
      v13[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder____lazy_storage___hasSubtasks] = 2;
      *&v13[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder] = v10;
      v13[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList] = v12;
      i = v11;
      v17.receiver = v13;
      v17.super_class = v8;
      v14 = v10;

      ++v4;
      if (v7 == v11)
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

  return 1;
}

id sub_1004548C8()
{
  v0 = sub_100058000(&unk_100775660, &qword_10062F6B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  URL.init(string:)();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v7 = result;
    sub_10000794C(v5, v2, &unk_100775660, &qword_10062F6B0);
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    v11 = 0;
    if ((*(v9 + 48))(v2, 1, v8) != 1)
    {
      URL._bridgeToObjectiveC()(v10);
      v11 = v12;
      (*(v9 + 8))(v2, v8);
    }

    sub_100008E04(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = [v7 openSensitiveURL:v11 withOptions:isa];

    if ((v14 & 1) == 0)
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100003E30(v15, qword_100782E90);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "TTRIAccountsListsPresenter: Failed to open Settings to turn on iCloud for Reminders", v18, 2u);
      }
    }

    return sub_1000079B4(v5, &unk_100775660, &qword_10062F6B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100454B84(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(id), void (*a5)(uint64_t))
{
  v20 = a4;
  v21 = a5;
  v9 = type metadata accessor for TTRRemindersListListType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRListDetailViewModel(0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  *(v5 + 4) = a3;

  v17 = a3;
  v18 = v20(v17);
  v21(v18);
  (*(v10 + 16))(v12, &v16[*(v14 + 76)], v9);
  sub_10045164C(v16, type metadata accessor for TTRListDetailViewModel);
  (*(v10 + 32))(&v5[*(*v5 + 136)], v12, v9);
  return v5;
}