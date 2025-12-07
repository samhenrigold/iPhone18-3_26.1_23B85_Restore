void sub_10033EF48()
{
  UIViewController.endFirstResponderEditing()();
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter);
  if (qword_100767098 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100777798);
  v3 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Templates List Done", 19, 2, v3);

  if ((*(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004BE910();

      swift_unknownObjectRelease();
    }

    else
    {
      sub_100288C94();
      sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router), *(v1 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_router + 24));
      if (qword_1007674F8 != -1)
      {
        swift_once();
      }

      sub_100003E30(v2, qword_1007925F0);
      sub_1003F99F4(0x6574616C706D6554, 0xEE007473694C2073);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = [Strong presentingViewController];

        if (v6)
        {
          [v6 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }
}

uint64_t sub_10033F160(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
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

uint64_t type metadata accessor for TTRITemplatesListViewController(uint64_t a1)
{
  result = qword_10077FB80;
  if (!qword_10077FB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10033F360(uint64_t a1)
{
  type metadata accessor for TTRTemplatesListStyle();
  if (v1 <= 0x3F)
  {
    sub_10033F450(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10033F450(uint64_t a1)
{
  if (!qword_10077FB90)
  {
    type metadata accessor for TTRTemplatesListViewModel();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10077FB90);
    }
  }
}

uint64_t sub_10033F4A8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRTemplatesListStyle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for TTRTemplatesListStyle.listCreation(_:), v2, v4);
  sub_10033FB04();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    if (qword_100767208 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_10077FB00);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "TTRITemplatesListViewController: unexpected call to popoverAnchorForDiscardChangesAlert", v11, 2u);
    }
  }

  v12 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController____lazy_storage___cancelButton, &selRef_didTapCancel_, 1);
  static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)();

  v13 = type metadata accessor for TTRIPopoverAnchor();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

void sub_10033F6E8(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRIPopoverAnchor();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  v10 = *(v3 + OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource);
  if (v10)
  {
    v11 = v10;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v12 = v16;
    if (v16)
    {
      v13 = IndexPath._bridgeToObjectiveC()().super.isa;
      v14 = [a1 cellForItemAtIndexPath:v13];

      if (v14)
      {
        static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
        sub_100285EE0(v12);

        (*(v6 + 8))(v8, v5);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Class sub_10033F988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = sub_10033C658(a3);

  return v6;
}

unint64_t sub_10033FB04()
{
  result = qword_10077FB98;
  if (!qword_10077FB98)
  {
    type metadata accessor for TTRTemplatesListStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077FB98);
  }

  return result;
}

uint64_t sub_10033FB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10077FBA0, &qword_10063BA40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10033FBCC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v7);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = type metadata accessor for TTRAttachmentThumbnailSizeProvider();
    v13 = static TTRAttachmentThumbnailSizeProviding<>.remindersList.getter();
    v24[3] = v12;
    v24[4] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
    v24[0] = v13;
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.main.getter();
    type metadata accessor for RDIDispatchQueue();
    static RDIDispatchQueue.utilityQueue.getter();
    v14 = type metadata accessor for TTRThumbnailGenerator();
    swift_allocObject();
    v15 = TTRThumbnailGenerator.init(queue:backgroundQueue:)();
    v23[3] = v14;
    v23[4] = &protocol witness table for TTRThumbnailGenerator;
    v23[0] = v15;
    type metadata accessor for TTRAttachmentThumbnailsManager();
    swift_allocObject();
    v16 = TTRAttachmentThumbnailsManager.init(thumbnailSizeProvider:thumbnailGenerator:)();
    v17 = v7[5];
    v18 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v18 - 8) + 56))(v9 + v17, 1, 1, v18);
    type metadata accessor for TTRIHashtagAssociationNoOpModuleInterface();
    v19 = swift_allocObject();
    *v9 = a2;
    *(v9 + v7[6]) = v16;
    v20 = (v9 + v7[7]);
    *v20 = v19;
    v20[1] = &off_10071ECD0;
    *(v9 + v7[8]) = 0;
    type metadata accessor for TTRIShowTemplateAssembly();
    v21 = a2;
    v22 = sub_1004D2E70(v24, v9, a1, a3);
    sub_100004758(v24);
    [v11 presentViewController:v22 animated:1 completion:0];

    sub_100079664(v9);
    swift_unknownObjectWeakAssign();
  }
}

void sub_10033FE28()
{
  v1 = v0;
  v2 = type metadata accessor for TTRTemplatesListViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter];
  v7 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  LOBYTE(v6) = TTRTemplatesListViewModel.shouldShowContentUnavailableMessage.getter();
  (*(v3 + 8))(v5, v2);
  v8 = 0;
  if (v6)
  {
    v9 = [objc_opt_self() emptyProminentConfiguration];
    v10 = String._bridgeToObjectiveC()();
    v11 = objc_opt_self();
    v12 = [v11 _systemImageNamed:v10];

    [v9 setImage:v12];
    static TTRLocalizableStrings.Templates.noTemplates.getter();
    v13 = String._bridgeToObjectiveC()();

    [v9 setText:v13];

    v14 = [v9 textProperties];
    v15 = [v9 textProperties];
    v16 = [v15 font];

    isa = UIFont.withRoundedDesign()().super.isa;
    [v14 setFont:isa];

    v18 = [v9 secondaryTextProperties];
    v19 = [v9 secondaryTextProperties];
    v20 = [v19 font];

    v21 = UIFont.withRoundedDesign()().super.isa;
    [v18 setFont:v21];

    v22._countAndFlagsBits = 0xD00000000000002BLL;
    v22._object = 0x8000000100682A50;
    v23._countAndFlagsBits = 0xD000000000000062;
    v23._object = 0x8000000100682A80;
    v24._countAndFlagsBits = 0xD00000000000008ELL;
    v24._object = 0x8000000100682AF0;
    TTRLocalizedString(_:value:comment:)(v22, v23, v24);
    v25 = String._bridgeToObjectiveC()();
    v26 = [v11 _systemImageNamed:v25];

    v39[1] = v26;
    sub_100058000(&qword_10077FBD0, &qword_10063BA70);
    Optional<A>.ensureNonNil()();

    v27 = v39[2];
    v28 = [v9 secondaryTextProperties];
    v29 = [v28 font];

    v30 = [objc_opt_self() configurationWithFont:v29];
    v31 = [v27 imageWithConfiguration:v30];

    v32 = [v9 secondaryTextProperties];
    v33 = [v32 color];

    v34 = [v31 imageWithTintColor:v33];
    v35 = objc_allocWithZone(NSMutableAttributedString);
    v36 = String._bridgeToObjectiveC()();

    v37 = [v35 initWithString:v36];

    v38._countAndFlagsBits = 0x3E4E4F43493CLL;
    v38._object = 0xE600000000000000;
    NSMutableAttributedString.replace(placeholder:with:)(v38, v34);
    [v9 setSecondaryAttributedText:v37];

    v8 = v9;
  }

  [v1 ttr_setContentUnavailableConfiguration:v8];
}

void sub_100340354(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplatesListViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10077FBB0, &unk_1006374D0);
  __chkstk_darwin(v6 - 8);
  v8 = v29 - v7;
  v9 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  __chkstk_darwin(v9);
  v30 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v31 = v29 - v12;
  v13 = *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_dataSource];
  if (v13)
  {
    v14 = v13;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v15 = aBlock[0];
    if (aBlock[0])
    {
      v29[1] = v1;
      v16 = *&v1[OBJC_IVAR____TtC9Reminders31TTRITemplatesListViewController_presenter];
      v17 = OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_viewModel;
      swift_beginAccess();
      v18 = v16 + v17;
      v19 = v32;
      (*(v3 + 16))(v5, v18, v2);
      TTRTemplatesListViewModel.template(with:)();
      (*(v3 + 8))(v5, v2);
      if ((*(v19 + 48))(v8, 1, v9) == 1)
      {

        sub_1000079B4(v8, &unk_10077FBB0, &unk_1006374D0);
      }

      else
      {
        v20 = *(v19 + 32);
        v29[0] = v15;
        v21 = v31;
        v20(v31, v8, v9);
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = v30;
        (*(v19 + 16))(v30, v21, v9);
        v24 = (*(v19 + 80) + 24) & ~*(v19 + 80);
        v25 = v19;
        v26 = swift_allocObject();
        *(v26 + 16) = v22;
        v20((v26 + v24), v23, v9);
        v27 = objc_opt_self();
        aBlock[4] = sub_1003407AC;
        aBlock[5] = v26;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10044EA48;
        aBlock[3] = &unk_100720E00;
        v28 = _Block_copy(aBlock);

        [v27 configurationWithIdentifier:0 previewProvider:0 actionProvider:v28];

        _Block_release(v28);

        (*(v25 + 8))(v21, v9);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Class sub_1003407AC(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTemplatesListViewModel.Template() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10033F988(a1, v4, v5);
}

void *sub_100340838(char *a1)
{
  type metadata accessor for TTRTemplatesListViewModel.Template();
  v3 = *(v1 + 16);

  return sub_10033E414(a1, v3);
}

uint64_t sub_1003408C4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TTRTemplatesListViewModel.Template() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

unint64_t sub_10034094C()
{
  result = qword_1007758A0;
  if (!qword_1007758A0)
  {
    sub_10005D20C(&unk_10077FBC0, &qword_100635F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007758A0);
  }

  return result;
}

uint64_t sub_1003409B0(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRTemplatesListViewModel.Template() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_10033E6FC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100340AC8(uint64_t a1, uint64_t a2, id *a3)
{
  v7 = *(sub_100058000(&qword_10077FBE8, &qword_10063BA88) - 8);
  v9 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_10033CF30(v8, a1, a2, a3, v9);
}

uint64_t sub_100340B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077FBB0, &unk_1006374D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Class sub_100340BD4()
{
  v1 = *(sub_100058000(&unk_10077FBB0, &unk_1006374D0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10033C47C(v2, v3);
}

uint64_t sub_100340C44(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100340D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for IndexPath() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_10033B0BC(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100340DAC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100058000(&qword_10077FC30, &qword_10063BAC0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10001AA3C;

  return sub_10033B49C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100340F20()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_100341064, v3, v2);
}

uint64_t sub_100341064()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);

  v3 = *(v0 + 130);
  static Date.now.getter();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  swift_beginAccess();
  sub_10000AE84(v1 + 32, *(v1 + 56));
  dispatch thunk of TTRICloudIsOffUserDefaults.lastICloudIsOffPromptDate.setter();
  swift_endAccess();
  if (v3 == 2)
  {
    v5 = *(v0 + 104);
  }

  else
  {
    v5 = *(v0 + 104);
    if (v3)
    {
      sub_1005AD97C();
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10034119C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_1003412F8, v4, v3);
}

uint64_t sub_1003412F8()
{
  *(v0 + 32) = *(v0 + 80);
  v1 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
  *(v0 + 136) = v1;
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_1003413BC;
  v3 = *(v0 + 128);

  return TTRPrivacyChecker.checkAndPromptAccessForRemindersWithLocation(with:)(v1, v3, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1003413BC()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100341518, v4, v3);
}

uint64_t sub_100341518()
{

  sub_100003540(0, &qword_10077FE10, CNContactStore_ptr);
  static CNContactStore.requestContactsAuthorizationIfNeeded()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100341598()
{
  v1 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v1 - 8);
  v3 = (&v15[-1] - v2);
  v4 = type metadata accessor for TTRListOrCustomSmartList();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15[-1] - v9;
  v11 = *sub_10000C36C((v0 + 48), *(v0 + 72));
  if (!sub_10001D354())
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_6;
  }

  swift_beginAccess();
  sub_100010540(v11 + 96, v15);
  sub_100396F88(v3);
  sub_100015124(v15);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_6:
    sub_1000079B4(v3, &unk_10076DF20, &unk_10063BD50);
    return 0;
  }

  v12 = *(v5 + 32);
  v12(v10, v3, v4);
  v12(v7, v10, v4);
  if ((*(v5 + 88))(v7, v4) == enum case for TTRListOrCustomSmartList.list(_:))
  {
    (*(v5 + 96))(v7, v4);
    return *v7;
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t sub_100341810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[7] = v8;
  v6[8] = v7;

  return _swift_task_switch(sub_1003418AC, v8, v7);
}

uint64_t sub_1003418AC()
{
  sub_10000C36C((v0[3] + 48), *(v0[3] + 72));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100341968;
  v3 = v0[4];
  v2 = v0[5];

  return sub_1003951F8(v3, v2);
}

uint64_t sub_100341968(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);

  *v4 = a1;
  v5 = *(v3 + 64);
  v6 = *(v3 + 56);

  return _swift_task_switch(sub_1001E2124, v6, v5);
}

uint64_t sub_100341AAC()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();
  sub_100004758((v0 + 48));

  return v0;
}

uint64_t sub_100341B24()
{
  sub_100341AAC();

  return swift_deallocClassInstance();
}

BOOL sub_100341B68(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for URL();
  v47 = *(v3 - 8);
  __chkstk_darwin(v3);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_100058000(&unk_100792F80, &unk_10063BD70);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for REMNavigationSpecifier();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  __chkstk_darwin(v11);
  v44 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = &v44 - v14;
  if (qword_100767210 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_10077FC40);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 7107189;
  *(inited + 40) = 0xE300000000000000;
  v17 = URL.absoluteString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  v19 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Navigate to url {url: %@}", 25, 2, v19);

  v20 = v47;
  v21 = *(v47 + 16);
  v21(v7, a1, v3);
  REMNavigationSpecifier.init(_:)();
  v22 = (*(v49 + 48))(v10, 1, v50);
  v23 = v22;
  if (v22 == 1)
  {
    v33 = v3;
    sub_1000079B4(v10, &unk_100792F80, &unk_10063BD70);
    v34 = v45;
    v21(v45, a1, v33);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51 = v38;
      *v37 = 136315138;
      v39 = URL.absoluteString.getter();
      v41 = v40;
      (*(v20 + 8))(v34, v33);
      v42 = sub_100004060(v39, v41, &v51);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to parse navigation specifier from url - failed to navigate to url {url: %s}", v37, 0xCu);
      sub_100004758(v38);
    }

    else
    {

      (*(v20 + 8))(v34, v33);
    }
  }

  else
  {
    v24 = v48;
    v25 = v49;
    v26 = *(v49 + 32);
    LODWORD(v47) = v22;
    v27 = v50;
    v26(v48, v10, v50);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v44;
    (*(v25 + 16))(v44, v24, v27);
    v30 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    v26((v31 + v30), v29, v27);
    *(v31 + ((v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_100371F60;
    *(v32 + 24) = v31;

    TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

    v23 = v47;
    (*(v25 + 8))(v48, v27);
  }

  return v23 != 1;
}

uint64_t sub_100342154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_1003423DC(a2, a3);
  }

  else
  {
    v5 = type metadata accessor for PromiseError();
    sub_10036ED08(&qword_1007817D0, &type metadata accessor for PromiseError, &protocol conformance descriptor for PromiseError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for PromiseError.abandoned(_:), v5);
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1003423DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMNavigationSpecifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767210 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_10077FC40);
  v14 = *(v10 + 16);
  v32 = a1;
  v14(v12, a1, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = a2;
    v27 = v18;
    v33 = v18;
    *v17 = 136315138;
    REMNavigationSpecifier.url.getter();
    sub_10036ED08(&unk_100792F90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v19 = v31;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v3;
    v22 = v21;
    (*(v30 + 8))(v8, v19);
    (*(v10 + 8))(v12, v9);
    v23 = sub_100004060(v20, v22, &v33);
    v3 = v28;

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "TTRIRootPresenter: handle navigation specifier: %s", v17, 0xCu);
    sub_100004758(v27);
    a2 = v29;
  }

  else
  {

    v24 = (*(v10 + 8))(v12, v9);
  }

  __chkstk_darwin(v24);
  *(&v26 - 4) = v32;
  *(&v26 - 3) = v3;
  *(&v26 - 2) = a2;
  return firstly<A>(closure:)();
}

uint64_t sub_100342760(uint64_t a1, void *a2, uint64_t a3)
{
  v196 = a3;
  v181 = a2;
  v185 = type metadata accessor for URL();
  v184 = *(v185 - 8);
  __chkstk_darwin(v185);
  v183 = &v180 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v189 = *(v188 - 8);
  __chkstk_darwin(v188);
  v182 = &v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v187 = &v180 - v6;
  v195 = type metadata accessor for REMNavigationSpecifier();
  v194 = *(v195 - 8);
  v7 = *(v194 + 64);
  __chkstk_darwin(v195);
  v190 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v197 = &v180 - v9;
  v193 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v193);
  v180 = (&v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v191 = (&v180 - v12);
  __chkstk_darwin(v13);
  v192 = (&v180 - v14);
  v15 = sub_100058000(&unk_100775640, &unk_10062DED0);
  __chkstk_darwin(v15 - 8);
  v17 = &v180 - v16;
  v18 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v18 - 8);
  v186 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  *&v198 = &v180 - v21;
  __chkstk_darwin(v22);
  *&v200 = &v180 - v23;
  v24 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v180 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  *v31 = static OS_dispatch_queue.main.getter();
  (*(v29 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v28);
  v32 = _dispatchPreconditionTest(_:)();
  (*(v29 + 8))(v31, v28);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  TTRUserActivityWindowSceneRestorationPayload.state.getter();
  v33 = (*(v25 + 88))(v27, v24);
  if (v33 == enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedListID(_:))
  {
    (*(v25 + 96))(v27, v24);
    v34 = *v27;
    v35 = sub_100058000(&qword_10076E920, &qword_100631E30);
    sub_100371B24(v27 + *(v35 + 48), v200);
    v36 = v199;
    v37 = v199[4];
    swift_getObjectType();
    *&v203 = v37;
    swift_unknownObjectRetain();
    v38 = dispatch thunk of TTRItemFetchingInteractorCapability.fetchListSynchronously(for:)();
    swift_unknownObjectRelease();
    if (v38)
    {
      v39 = [v38 isGroup];
      swift_getObjectType();
      *v17 = v34;
      if (v39)
      {
        v17[8] = 1;
        v40 = enum case for TTRListType.list(_:);
        v41 = type metadata accessor for TTRListType();
        v42 = *(v41 - 8);
        (*(v42 + 104))(v17, v40, v41);
        (*(v42 + 56))(v17, 0, 1, v41);
        v43 = v34;
        dispatch thunk of TTRPerWindowLastSelectedListStorage.lastSelectedListInWindow.setter();
        v44 = *sub_10000C36C(v36 + 6, v36[9]);
        v45 = [v38 store];
        v46 = *(v44 + 56);
        v47 = v193;
        v48 = v192;
        sub_10000794C(v200, v192 + *(v193 + 20), &unk_10076BB50, &unk_10062DEA0);
        *v48 = v45;
        v49 = v47[6];
        v198 = *(v44 + 64);
        v50 = v198;
        *(v48 + v49) = v46;
        *(v48 + v47[7]) = v50;
        *(v48 + v47[8]) = 0;
        type metadata accessor for TTRIShowGroupAssembly();

        swift_unknownObjectRetain();
        v51 = sub_1003A3078(&v207, v48, v38, v36);
        sub_10000B0D8(&v207, &v203);
        v206 = 2;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v53 = Strong;
          v54 = *(Strong + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController);
          sub_100058000(&qword_10076B780, &qword_10062D7C0);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_10062D420;
          *(v55 + 32) = v51;
          sub_100003540(0, &qword_10076AD28, UIViewController_ptr);
          v56 = v51;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v54 setViewControllers:isa animated:0];

          sub_1002FB7EC(0);
        }

        sub_10000E224(v201);
        if (v202)
        {
          sub_1000079B4(v201, &unk_100792FE0, &unk_10063C8A0);
          v58 = swift_unknownObjectWeakLoadStrong();

          if (v58)
          {
            swift_unknownObjectRelease();
          }

          sub_100079664(v192);
        }

        else
        {
          sub_100079664(v192);

          sub_1000079B4(v201, &unk_100792FE0, &unk_10063C8A0);
        }

        swift_beginAccess();
        sub_100371B94(&v203, v44 + 96);
        swift_endAccess();

        sub_100004758(&v207);
        sub_1000079B4(v200, &unk_10076BB50, &unk_10062DEA0);
        return 1;
      }

      v17[8] = 0;
      v121 = enum case for TTRListType.list(_:);
      v122 = type metadata accessor for TTRListType();
      v123 = *(v122 - 8);
      (*(v123 + 104))(v17, v121, v122);
      v68 = 1;
      (*(v123 + 56))(v17, 0, 1, v122);
      v124 = v34;
      dispatch thunk of TTRPerWindowLastSelectedListStorage.lastSelectedListInWindow.setter();
      sub_10000C36C(v36 + 6, v36[9]);
      v125 = v200;
      sub_1003935C0(v38, v200, v36, &off_100721110, &v203);

      sub_100004758(&v203);
      v126 = v125;
      goto LABEL_37;
    }

    v109 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
    v110 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
    v111 = v197;
    (*(*(v110 - 8) + 104))(v197, v109, v110);
    v112 = v194;
    v113 = v195;
    (*(v194 + 104))(v111, enum case for REMNavigationSpecifier.root(_:), v195);
    v114 = swift_allocObject();
    swift_weakInit();
    v115 = v190;
    (*(v112 + 16))(v190, v111, v113);
    v116 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v117 = (v7 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
    v118 = swift_allocObject();
    *(v118 + 16) = v114;
    (*(v112 + 32))(v118 + v116, v115, v113);
    *(v118 + v117) = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = sub_100371F60;
    *(v119 + 24) = v118;

    TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

    (*(v112 + 8))(v111, v113);
    v120 = v200;
LABEL_29:
    sub_1000079B4(v120, &unk_10076BB50, &unk_10062DEA0);

    return 1;
  }

  if (v33 == enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedCustomSmartListID(_:))
  {
    (*(v25 + 96))(v27, v24);
    v59 = *v27;
    v60 = sub_100058000(&qword_10076E920, &qword_100631E30);
    v61 = v198;
    sub_100371B24(v27 + *(v60 + 48), v198);
    v62 = v199;
    v63 = v199[4];
    swift_getObjectType();
    *&v203 = v63;
    swift_unknownObjectRetain();
    v64 = dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartListSynchronously(for:)();
    swift_unknownObjectRelease();
    if (v64)
    {
      swift_getObjectType();
      *v17 = v59;
      v65 = enum case for TTRListType.customSmartList(_:);
      v66 = type metadata accessor for TTRListType();
      v67 = *(v66 - 8);
      (*(v67 + 104))(v17, v65, v66);
      v68 = 1;
      (*(v67 + 56))(v17, 0, 1, v66);
      v69 = v59;
      dispatch thunk of TTRPerWindowLastSelectedListStorage.lastSelectedListInWindow.setter();
      v70 = *sub_10000C36C(v62 + 6, v62[9]);
      v71 = [v64 store];
      v72 = *(v70 + 56);
      v73 = v193;
      v74 = v191;
      sub_10000794C(v198, v191 + *(v193 + 20), &unk_10076BB50, &unk_10062DEA0);
      *v74 = v71;
      v75 = v73[6];
      v200 = *(v70 + 64);
      v76 = v200;
      *(v74 + v75) = v72;
      *(v74 + v73[7]) = v76;
      *(v74 + v73[8]) = 0;
      type metadata accessor for TTRIShowCustomSmartListAssembly();

      swift_unknownObjectRetain();
      v77 = sub_1004F97FC(&v207, v74, v64, v62, &off_100721100, 1);
      sub_10000B0D8(&v207, &v203);
      v206 = 1;
      v78 = swift_unknownObjectWeakLoadStrong();
      if (v78)
      {
        v79 = v78;
        v80 = *(v78 + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController);
        sub_100058000(&qword_10076B780, &qword_10062D7C0);
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_10062D420;
        *(v81 + 32) = v77;
        sub_100003540(0, &qword_10076AD28, UIViewController_ptr);
        v82 = v77;
        v83 = Array._bridgeToObjectiveC()().super.isa;

        [v80 setViewControllers:v83 animated:0];

        sub_1002FB7EC(0);
      }

      sub_10000E224(v201);
      if (v202)
      {
        sub_1000079B4(v201, &unk_100792FE0, &unk_10063C8A0);
        v84 = swift_unknownObjectWeakLoadStrong();

        if (v84)
        {
          swift_unknownObjectRelease();
        }

        sub_100079664(v191);
      }

      else
      {
        sub_100079664(v191);

        sub_1000079B4(v201, &unk_100792FE0, &unk_10063C8A0);
      }

      swift_beginAccess();
      sub_100371B94(&v203, v70 + 96);
      swift_endAccess();

      sub_100004758(&v207);
      v126 = v198;
LABEL_37:
      sub_1000079B4(v126, &unk_10076BB50, &unk_10062DEA0);
      return v68;
    }

    v128 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
    v129 = type metadata accessor for REMNavigationSpecifier.RootPathSpecifier();
    v130 = v197;
    (*(*(v129 - 8) + 104))(v197, v128, v129);
    v131 = v194;
    v132 = v130;
    v133 = v195;
    (*(v194 + 104))(v130, enum case for REMNavigationSpecifier.root(_:), v195);
    v134 = swift_allocObject();
    swift_weakInit();
    v135 = v190;
    (*(v131 + 16))(v190, v132, v133);
    v136 = (*(v131 + 80) + 24) & ~*(v131 + 80);
    v137 = (v7 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
    v138 = swift_allocObject();
    *(v138 + 16) = v134;
    (*(v131 + 32))(v138 + v136, v135, v133);
    *(v138 + v137) = 0;
    v139 = swift_allocObject();
    *(v139 + 16) = sub_100371F60;
    *(v139 + 24) = v138;

    TTRStartupItemQueue.enqueueItem<A, B>(startupContext:promise:)();

    (*(v131 + 8))(v197, v133);
    v120 = v61;
    goto LABEL_29;
  }

  if (v33 != enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:))
  {
    if (v33 == enum case for TTRUserActivityWindowSceneRestorationPayload.State.search(_:))
    {
      goto LABEL_39;
    }

    if (v33 == enum case for TTRUserActivityWindowSceneRestorationPayload.State.tagged(_:))
    {
      (*(v25 + 96))(v27, v24);
      v127 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v127 - 8) + 8))(v27, v127);
LABEL_40:
      v151 = v197;
      TTRUserActivityWindowSceneRestorationPayload.navigationSpecifier.getter();
      v152 = v183;
      REMNavigationSpecifier.url.getter();
      (*(v194 + 8))(v151, v195);
      v68 = sub_100341B68(v152, 0);
      (*(v184 + 8))(v152, v185);
      return v68;
    }

    if (v33 == enum case for TTRUserActivityWindowSceneRestorationPayload.State.reminderDetail(_:))
    {
LABEL_39:
      (*(v25 + 8))(v27, v24);
      goto LABEL_40;
    }

LABEL_60:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_61;
  }

  (*(v25 + 96))(v27, v24);
  v85 = *(sub_100058000(&qword_1007693A0, &unk_1006324E0) + 48);
  v86 = v189;
  v87 = v187;
  v88 = v188;
  (*(v189 + 32))(v187, v27, v188);
  v89 = v186;
  sub_100371B24(v27 + v85, v186);
  v90 = v182;
  (*(v86 + 16))(v182, v87, v88);
  v91 = (*(v86 + 88))(v90, v88);
  if (v91 == enum case for TTRListType.PredefinedSmartListType.today(_:))
  {
    v92 = v199;
    v93 = *sub_10000C36C(v199 + 6, v199[9]);
    swift_beginAccess();
    sub_100010540(v93 + 96, &v203);
    if (v206 != 6)
    {
      sub_100015124(&v203);
      v94 = *(v93 + 56);
      v95 = v193;
      v96 = v87;
      v97 = v180;
      sub_10000794C(v89, v180 + *(v193 + 20), &unk_10076BB50, &unk_10062DEA0);
      v98 = v181;
      *v97 = v181;
      v99 = v95[6];
      v200 = *(v93 + 64);
      v100 = v200;
      *(v97 + v99) = v94;
      *(v97 + v95[7]) = v100;
      *(v97 + v95[8]) = 0;
      type metadata accessor for TTRIShowTodayAssembly();
      v101 = v89;
      v102 = v98;

      swift_unknownObjectRetain();
      v103 = sub_100323FE4(&v207, v97, v92);
      v104 = v208;
      v105 = v209;
      v106 = sub_10000C36C(&v207, v208);
      v204 = v104;
      v205 = *(v105 + 8);
      v107 = sub_1000317B8(&v203);
      (*(*(v104 - 8) + 16))(v107, v106, v104);
      v108 = 6;
LABEL_50:
      v206 = v108;
      sub_1003944FC(&v203, v103);

      sub_100079664(v97);
      sub_1000079B4(v101, &unk_10076BB50, &unk_10062DEA0);
      (*(v86 + 8))(v96, v88);
      sub_100015124(&v203);
      goto LABEL_51;
    }

    goto LABEL_46;
  }

  v140 = v199;
  if (v91 == enum case for TTRListType.PredefinedSmartListType.scheduled(_:))
  {
    v93 = *sub_10000C36C(v199 + 6, v199[9]);
    swift_beginAccess();
    sub_100010540(v93 + 96, &v203);
    if (v206 != 3)
    {
      sub_100015124(&v203);
      v141 = *(v93 + 56);
      v142 = v193;
      v96 = v87;
      v97 = v180;
      sub_10000794C(v89, v180 + *(v193 + 20), &unk_10076BB50, &unk_10062DEA0);
      v143 = v181;
      *v97 = v181;
      v144 = v142[6];
      v200 = *(v93 + 64);
      v145 = v200;
      *(v97 + v144) = v141;
      *(v97 + v142[7]) = v145;
      *(v97 + v142[8]) = 0;
      type metadata accessor for TTRIShowScheduledAssembly();
      v101 = v89;
      v146 = v143;

      swift_unknownObjectRetain();
      v103 = sub_100182D54(&v207, v97, v140);
      v147 = v208;
      v148 = v209;
      v149 = sub_10000C36C(&v207, v208);
      v204 = v147;
      v205 = *(v148 + 8);
      v150 = sub_1000317B8(&v203);
      (*(*(v147 - 8) + 16))(v150, v149, v147);
      v108 = 3;
      goto LABEL_50;
    }

LABEL_46:
    sub_100005FD0(&v203, &v207);
    v163 = v208;
    v164 = v209;
    v165 = sub_10000C36C(&v207, v208);
    sub_1003982D4(v165, v93, v163, v164);
    sub_1000079B4(v89, &unk_10076BB50, &unk_10062DEA0);
    (*(v86 + 8))(v87, v88);
LABEL_51:
    sub_100004758(&v207);
    return 1;
  }

  if (v91 == enum case for TTRListType.PredefinedSmartListType.all(_:))
  {
    v93 = *sub_10000C36C(v199 + 6, v199[9]);
    swift_beginAccess();
    sub_100010540(v93 + 96, &v203);
    if (v206 != 5)
    {
      sub_100015124(&v203);
      v153 = *(v93 + 56);
      v154 = v193;
      v96 = v87;
      v97 = v180;
      sub_10000794C(v89, v180 + *(v193 + 20), &unk_10076BB50, &unk_10062DEA0);
      v155 = v181;
      *v97 = v181;
      v156 = v154[6];
      v200 = *(v93 + 64);
      v157 = v200;
      *(v97 + v156) = v153;
      *(v97 + v154[7]) = v157;
      *(v97 + v154[8]) = 0;
      type metadata accessor for TTRIShowAllRemindersAssembly();
      v101 = v89;

      swift_unknownObjectRetain();
      v158 = v155;
      v103 = sub_1003F1080(&v207, v97, v140);
      v159 = v208;
      v160 = v209;
      v161 = sub_10000C36C(&v207, v208);
      v204 = v159;
      v205 = *(v160 + 8);
      v162 = sub_1000317B8(&v203);
      (*(*(v159 - 8) + 16))(v162, v161, v159);
      v108 = 5;
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v91 == enum case for TTRListType.PredefinedSmartListType.flagged(_:))
  {
    v93 = *sub_10000C36C(v199 + 6, v199[9]);
    swift_beginAccess();
    sub_100010540(v93 + 96, &v203);
    if (v206 != 4)
    {
      sub_100015124(&v203);
      v167 = *(v93 + 56);
      v168 = v193;
      v96 = v87;
      v97 = v180;
      sub_10000794C(v89, v180 + *(v193 + 20), &unk_10076BB50, &unk_10062DEA0);
      v169 = v181;
      *v97 = v181;
      v170 = v168[6];
      v200 = *(v93 + 64);
      v171 = v200;
      *(v97 + v170) = v167;
      *(v97 + v168[7]) = v171;
      *(v97 + v168[8]) = 0;
      type metadata accessor for TTRIShowFlaggedAssembly();
      v101 = v89;
      v172 = v169;

      swift_unknownObjectRetain();
      v103 = sub_10028D05C(&v207, v97, v140);
      v173 = v208;
      v174 = v209;
      v175 = sub_10000C36C(&v207, v208);
      v204 = v173;
      v205 = *(v174 + 8);
      v176 = sub_1000317B8(&v203);
      (*(*(v173 - 8) + 16))(v176, v175, v173);
      v108 = 4;
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v91 == enum case for TTRListType.PredefinedSmartListType.assigned(_:))
  {
    v166 = sub_10000C36C(v199 + 6, v199[9]);
    sub_10044ECFC(v181, v89, v140, *v166);
LABEL_58:
    sub_1000079B4(v89, &unk_10076BB50, &unk_10062DEA0);
    (*(v86 + 8))(v87, v88);
    return 1;
  }

  if (v91 == enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:))
  {
    v178 = sub_10000C36C(v199 + 6, v199[9]);
    sub_10044EAD8(v181, v89, v140, *v178);
    goto LABEL_58;
  }

  if (v91 == enum case for TTRListType.PredefinedSmartListType.completed(_:))
  {
    v179 = sub_10000C36C(v199 + 6, v199[9]);
    sub_10044EF20(v181, v89, v140, *v179);
    goto LABEL_58;
  }

LABEL_61:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100344304()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100344424, v3, v2);
}

uint64_t sub_100344424()
{

  TTRStartupItemQueue.start()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100344490(uint64_t a1, uint64_t *a2, void *a3)
{
  v210 = a3;
  v211 = a2;
  v4 = type metadata accessor for REMAnalyticsEvent();
  v202 = *(v4 - 8);
  v203 = v4;
  __chkstk_darwin(v4);
  v201 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v6 - 8);
  v176 = &v174 - v7;
  v8 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v199 = *(v8 - 8);
  v200 = v8;
  __chkstk_darwin(v8);
  v196 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v177 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v184 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v12;
  __chkstk_darwin(v13);
  v187 = &v174 - v14;
  v198 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v195 = *(v198 - 8);
  v15 = *(v195 + 64);
  __chkstk_darwin(v198);
  v194 = &v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v197 = &v174 - v17;
  v18 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v192 = *(v18 - 8);
  v193 = v18;
  __chkstk_darwin(v18);
  v190 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = v19;
  __chkstk_darwin(v20);
  v191 = &v174 - v21;
  v22 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v208 = *(v22 - 8);
  v209 = v22;
  __chkstk_darwin(v22);
  v206 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v204 = &v174 - v25;
  v205 = v26;
  __chkstk_darwin(v27);
  v207 = &v174 - v28;
  v29 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  __chkstk_darwin(v32);
  v34 = &v174 - v33;
  v35 = type metadata accessor for REMNavigationSpecifier();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin(v35);
  v39 = (&v174 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(v36 + 16);
  v188 = a1;
  v40(v39, a1, v35, v37);
  v41 = (*(v36 + 88))(v39, v35);
  if (v41 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v36 + 96))(v39, v35);
    v210 = *v39;
    v42 = *(sub_100058000(&qword_100777A40, &qword_10063BDA0) + 48);
    v43 = v211;
    v209 = *(v30 + 32);
    v174 = v29;
    v208 = &v174 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v34;
    v175 = v34;
    v209(v34, v39 + v42, v29);
    v45 = v43[4];
    swift_getObjectType();
    v212 = v45;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v46 = zalgoIfMain.getter();
    v47 = v208;
    v48 = v44;
    v49 = v174;
    (*(v30 + 16))(v208, v48, v174);
    v50 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v43;
    v209((v51 + v50), v47, v49);

    v52 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v30 + 8))(v175, v49);
    return v52;
  }

  v53 = v211;
  if (v41 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v36 + 96))(v39, v35);
    v54 = *v39;
    v55 = *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v56 = *(v208 + 4);
    v204 = v208 + 32;
    v200 = v56;
    v56(v207, v39 + v55, v209);
    v57 = v53;
    if ((v210 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v58 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v59 = v201;
      v60 = &v201[v58[12]];
      v61 = v58[16];
      v62 = &v201[v58[20]];
      v63 = enum case for REMUserOperation.widgetShowList(_:);
      v64 = type metadata accessor for REMUserOperation();
      (*(*(v64 - 8) + 104))(v59, v63, v64);
      v65 = type metadata accessor for Date();
      *v60 = 0;
      *(v60 + 1) = 0;
      (*(*(v65 - 8) + 56))(&v59[v61], 1, 1, v65);
      *v62 = 0;
      *(v62 + 1) = 0;
      v67 = v202;
      v66 = v203;
      (*(v202 + 104))(v59, enum case for REMAnalyticsEvent.userOperation(_:), v203);
      REMAnalyticsManager.post(event:)();

      (*(v67 + 8))(v59, v66);
    }

    v68 = v57[4];
    swift_getObjectType();
    v212 = v68;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v69 = zalgoIfMain.getter();
    v71 = v208;
    v70 = v209;
    v72 = *(v208 + 2);
    v73 = v206;
    v211 = v54;
    v74 = v207;
    v72(v206, v207, v209);
    v75 = (v71[80] + 24) & ~v71[80];
    v76 = (v205 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    *(v77 + 16) = v57;
    v200(v77 + v75, v73, v70);
    *(v77 + v76) = v210;

    v52 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v71 + 1))(v74, v70);
    return v52;
  }

  v78 = v210;
  if (v41 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v36 + 96))(v39, v35);
    v79 = *v39;
    v80 = sub_100058000(&unk_100793000, &unk_10063BD90);
    v81 = *(v208 + 4);
    v82 = v39 + *(v80 + 48);
    v207 = v208 + 32;
    v200 = v81;
    v81(v204, v82, v209);
    v83 = v53;
    if ((v78 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v84 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v85 = v201;
      v86 = &v201[v84[12]];
      v87 = v84[16];
      v88 = &v201[v84[20]];
      v89 = enum case for REMUserOperation.widgetShowList(_:);
      v90 = type metadata accessor for REMUserOperation();
      (*(*(v90 - 8) + 104))(v85, v89, v90);
      v91 = type metadata accessor for Date();
      *v86 = 0;
      *(v86 + 1) = 0;
      (*(*(v91 - 8) + 56))(&v85[v87], 1, 1, v91);
      *v88 = 0;
      *(v88 + 1) = 0;
      v93 = v202;
      v92 = v203;
      (*(v202 + 104))(v85, enum case for REMAnalyticsEvent.userOperation(_:), v203);
      REMAnalyticsManager.post(event:)();

      (*(v93 + 8))(v85, v92);
    }

    v94 = v83[4];
    swift_getObjectType();
    v212 = v94;
    v95 = v83;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v96 = zalgoIfMain.getter();
    v98 = v208;
    v97 = v209;
    v99 = v206;
    v100 = v204;
    (*(v208 + 2))(v206, v204, v209);
    v101 = (v98[80] + 24) & ~v98[80];
    v102 = swift_allocObject();
    *(v102 + 16) = v95;
    v200(v102 + v101, v99, v97);

    v52 = dispatch thunk of Promise.then<A>(on:closure:)();

    goto LABEL_12;
  }

  if (v41 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v36 + 96))(v39, v35);
    v103 = v199;
    v104 = v196;
    v105 = v39;
    v106 = v200;
    (*(v199 + 32))(v196, v105, v200);
    v107 = sub_10000C36C(v53 + 6, v53[9]);
    __chkstk_darwin(v107);
    *(&v174 - 2) = v108;
    *(&v174 - 1) = v104;
    v52 = firstly<A>(closure:)();
    (*(v103 + 8))(v104, v106);
    return v52;
  }

  if (v41 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v36 + 96))(v39, v35);
    v210 = *v39;
    v110 = *(sub_100058000(&unk_10076DF50, &unk_100631A20) + 48);
    v111 = v195;
    v209 = *(v195 + 32);
    v112 = v197;
    v209(v197, v39 + v110, v198);
    v113 = v53;
    v114 = v53[4];
    swift_getObjectType();
    v212 = v114;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v115 = zalgoIfMain.getter();
    v116 = v194;
    v117 = v112;
    v118 = v198;
    (*(v111 + 16))(v194, v117, v198);
    v119 = (*(v111 + 80) + 24) & ~*(v111 + 80);
    v120 = swift_allocObject();
    *(v120 + 16) = v113;
    v209((v120 + v119), v116, v118);

    v52 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v111 + 8))(v197, v118);
    return v52;
  }

  if (v41 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v36 + 96))(v39, v35);
    v210 = *v39;
    v121 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v98 = v192;
    v97 = v193;
    v209 = *(v192 + 4);
    v100 = v191;
    v209(v191, v39 + v121, v193);
    v122 = v53;
    v123 = v53[4];
    swift_getObjectType();
    v212 = v123;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v96 = zalgoIfMain.getter();
    v124 = v190;
    (*(v98 + 2))(v190, v100, v97);
    v125 = (v98[80] + 24) & ~v98[80];
    v126 = swift_allocObject();
    *(v126 + 16) = v122;
    v209((v126 + v125), v124, v97);

LABEL_22:
    v52 = dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_12:

    (*(v98 + 1))(v100, v97);
    return v52;
  }

  if (v41 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v36 + 96))(v39, v35);
    v210 = *v39;
    v127 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v98 = v192;
    v97 = v193;
    v209 = *(v192 + 4);
    v100 = v191;
    v209(v191, v39 + v127, v193);
    v128 = v53;
    v129 = v53[4];
    swift_getObjectType();
    v212 = v129;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v96 = zalgoIfMain.getter();
    v130 = v190;
    (*(v98 + 2))(v190, v100, v97);
    v131 = (v98[80] + 24) & ~v98[80];
    v132 = swift_allocObject();
    *(v132 + 16) = v128;
    v209((v132 + v131), v130, v97);

    goto LABEL_22;
  }

  if (v41 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v211 + 6, v211[9]);
    v52 = sub_100391414(0);
    (*(v36 + 8))(v39, v35);
    return v52;
  }

  if (v41 == enum case for REMNavigationSpecifier.today(_:) || v41 == enum case for REMNavigationSpecifier.scheduled(_:) || v41 == enum case for REMNavigationSpecifier.allReminders(_:) || v41 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_37;
  }

  if (v41 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v36 + 96))(v39, v35);
    v133 = v185;
    v134 = v53;
    v135 = *(v185 + 32);
    v136 = v187;
    v137 = v186;
    v135(v187, v39, v186);
    v138 = *sub_10000C36C(v134 + 6, v134[9]);
    sub_100391414(0);
    v139 = v184;
    (*(v133 + 16))(v184, v136, v137);
    v140 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v141 = (v183 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
    v142 = swift_allocObject();
    v135((v142 + v140), v139, v137);
    *(v142 + v141) = v138;

    v143 = zalgo.getter();
    v52 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v133 + 8))(v187, v137);
    return v52;
  }

  if (v41 == enum case for REMNavigationSpecifier.assigned(_:) || v41 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_37;
  }

  if (v41 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v36 + 96))(v39, v35);
    v144 = v181;
    v145 = v180;
    v146 = v182;
    (*(v181 + 32))(v180, v39, v182);
    sub_10000C36C(v53 + 6, v53[9]);
    v52 = sub_100369914(v145);
    (*(v144 + 8))(v145, v146);
    return v52;
  }

  if (v41 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_37:
    (*(v36 + 8))(v39, v35);
    v147 = v53;
    if ((v78 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v148 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v149 = v201;
      v150 = &v201[v148[12]];
      v151 = v148[16];
      v152 = &v201[v148[20]];
      v153 = enum case for REMUserOperation.widgetShowList(_:);
      v154 = type metadata accessor for REMUserOperation();
      (*(*(v154 - 8) + 104))(v149, v153, v154);
      v155 = type metadata accessor for Date();
      *v150 = 0;
      *(v150 + 1) = 0;
      (*(*(v155 - 8) + 56))(&v149[v151], 1, 1, v155);
      *v152 = 0;
      *(v152 + 1) = 0;
      v157 = v202;
      v156 = v203;
      (*(v202 + 104))(v149, enum case for REMAnalyticsEvent.userOperation(_:), v203);
      REMAnalyticsManager.post(event:)();

      (*(v157 + 8))(v149, v156);
    }

    sub_10000C36C(v147 + 6, v147[9]);
    return sub_100361F8C(v188, v78 & 1, sub_1003629B0, &qword_10078A340, &qword_10063C8B0);
  }

  if (v41 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v36 + 96))(v39, v35);
    v158 = v178;
    v159 = v177;
    v160 = v179;
    (*(v178 + 32))(v177, v39, v179);
    v161 = sub_10000C36C(v53 + 6, v53[9]);
    v162 = v53[4];
    swift_getObjectType();
    v212 = v162;
    v163 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v159, v163, v53, *v161);

    v164 = objc_opt_self();
    v165 = String._bridgeToObjectiveC()();
    v166 = [v164 internalErrorWithDebugDescription:v165];

    sub_100058000(&qword_10078A340, &qword_10063C8B0);
    swift_allocObject();
    v52 = Promise.init(error:)();
    (*(v158 + 8))(v159, v160);
    return v52;
  }

  if (v41 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v211 + 6, v211[9]);
    return firstly<A>(closure:)();
  }

  if (v41 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v167 = type metadata accessor for TaskPriority();
    v168 = v176;
    (*(*(v167 - 8) + 56))(v176, 1, 1, v167);
    type metadata accessor for MainActor();

    v169 = static MainActor.shared.getter();
    v170 = swift_allocObject();
    v170[2] = v169;
    v170[3] = &protocol witness table for MainActor;
    v170[4] = v53;
    sub_10009E31C(0, 0, v168, &unk_10063BD88, v170);

    v171 = objc_opt_self();
    v172 = String._bridgeToObjectiveC()();
    v173 = [v171 internalErrorWithDebugDescription:v172];

    sub_100058000(&qword_10078A340, &qword_10063C8B0);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100345F60(void *a1, void *a2, void (*a3)(char *, char *, uint64_t))
{
  v204 = a3;
  v205 = a2;
  v206 = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v196 = *(v3 - 1);
  v197 = v3;
  __chkstk_darwin(v3);
  v195 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v5 - 8);
  v172 = &v169 - v6;
  v7 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v193 = *(v7 - 8);
  v194 = v7;
  __chkstk_darwin(v7);
  v192 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v180 = *(v181 - 8);
  v11 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v182 = &v169 - v13;
  v191 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v189 = *(v191 - 8);
  v14 = *(v189 + 64);
  __chkstk_darwin(v191);
  v188 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v190 = &v169 - v16;
  v187 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v17;
  __chkstk_darwin(v18);
  v185 = &v169 - v19;
  v20 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v202 = *(v20 - 8);
  v203 = v20;
  __chkstk_darwin(v20);
  v200 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v198 = (&v169 - v23);
  v199 = v24;
  __chkstk_darwin(v25);
  v201 = &v169 - v26;
  v27 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v33 = type metadata accessor for REMNavigationSpecifier();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v37, v206, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v39 = *(sub_100058000(&qword_100777A40, &qword_10063BDA0) + 48);
    v204 = *(v28 + 32);
    v170 = v27;
    v203 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v32;
    v171 = v32;
    v204(v32, v37 + v39, v27);
    v41 = v205;
    v42 = v205[4];
    swift_getObjectType();
    v207 = v42;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v43 = zalgoIfMain.getter();
    v44 = v203;
    v45 = v40;
    v46 = v170;
    (*(v28 + 16))(v203, v45, v170);
    v47 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v41;
    v204((v48 + v47), v44, v46);

    sub_100058000(&qword_100775650, &unk_10063BD60);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v28 + 8))(v171, v46);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v34 + 96))(v37, v33);
    v50 = *v37;
    v51 = *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v52 = *(v202 + 32);
    v206 = (v202 + 32);
    v198 = v52;
    v52(v201, v37 + v51, v203);
    if ((v204 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v53 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v54 = v195;
      v55 = &v195[v53[12]];
      v56 = v53[16];
      v57 = &v195[v53[20]];
      v58 = enum case for REMUserOperation.widgetShowList(_:);
      v59 = type metadata accessor for REMUserOperation();
      (*(*(v59 - 8) + 104))(v54, v58, v59);
      v60 = type metadata accessor for Date();
      *v55 = 0;
      *(v55 + 1) = 0;
      (*(*(v60 - 8) + 56))(&v54[v56], 1, 1, v60);
      *v57 = 0;
      *(v57 + 1) = 0;
      v62 = v196;
      v61 = v197;
      (*(v196 + 104))(v54, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v62 + 8))(v54, v61);
    }

    v63 = v205;
    v64 = v205[4];
    swift_getObjectType();
    v207 = v64;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v65 = zalgoIfMain.getter();
    v66 = v201;
    v67 = v202;
    v68 = *(v202 + 16);
    v69 = v200;
    v197 = v50;
    v70 = v203;
    v68(v200, v201, v203);
    v71 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v72 = (v199 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v198(v73 + v71, v69, v70);
    *(v73 + v72) = v204;

    sub_100058000(&qword_100775650, &unk_10063BD60);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v67 + 8))(v66, v70);
    return v49;
  }

  v74 = v204;
  if (v38 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v75 = *v37;
    v76 = v37 + *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v206 = *(v202 + 32);
    (v206)(v198, v76, v203);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v77 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v78 = v195;
      v79 = &v195[v77[12]];
      v80 = v77[16];
      v81 = &v195[v77[20]];
      v82 = enum case for REMUserOperation.widgetShowList(_:);
      v83 = type metadata accessor for REMUserOperation();
      (*(*(v83 - 8) + 104))(v78, v82, v83);
      v84 = type metadata accessor for Date();
      *v79 = 0;
      *(v79 + 1) = 0;
      (*(*(v84 - 8) + 56))(&v78[v80], 1, 1, v84);
      *v81 = 0;
      *(v81 + 1) = 0;
      v86 = v196;
      v85 = v197;
      (*(v196 + 104))(v78, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v86 + 8))(v78, v85);
    }

    v87 = v205;
    v88 = v205[4];
    swift_getObjectType();
    v207 = v88;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v91 = v202;
    v90 = v203;
    v92 = *(v202 + 16);
    v204 = v75;
    v93 = v200;
    v94 = v198;
    v92(v200, v198, v203);
    v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    (v206)(v96 + v95, v93, v90);

    sub_100058000(&qword_100775650, &unk_10063BD60);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v204;
    goto LABEL_12;
  }

  if (v38 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v99 = v192;
    v98 = v193;
    v100 = v194;
    (*(v193 + 32))(v192, v37, v194);
    v101 = sub_10000C36C(v205 + 6, v205[9]);
    __chkstk_darwin(v101);
    *(&v169 - 2) = v102;
    *(&v169 - 1) = v99;
    sub_100058000(&qword_100775650, &unk_10063BD60);
    v49 = firstly<A>(closure:)();
    (*(v98 + 8))(v99, v100);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v34 + 96))(v37, v33);
    v103 = *v37;
    v104 = *(sub_100058000(&unk_10076DF50, &unk_100631A20) + 48);
    v105 = v189;
    v106 = v190;
    v206 = *(v189 + 32);
    (v206)(v190, v37 + v104, v191);
    v107 = v205;
    v108 = v205[4];
    swift_getObjectType();
    v207 = v108;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v109 = zalgoIfMain.getter();
    v110 = v188;
    v111 = v106;
    v112 = v191;
    (*(v105 + 16))(v188, v111, v191);
    v113 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = v107;
    (v206)(v114 + v113, v110, v112);

    sub_100058000(&qword_100775650, &unk_10063BD60);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v105 + 8))(v190, v112);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v116 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v116, v187);
    v117 = v205;
    v118 = v205[4];
    swift_getObjectType();
    v207 = v118;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v119 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v120 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    v204((v121 + v120), v119, v90);

    sub_100058000(&qword_100775650, &unk_10063BD60);
LABEL_22:
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v206;
LABEL_12:

    (*(v91 + 8))(v94, v90);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v122 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v122, v187);
    v123 = v205;
    v124 = v205[4];
    swift_getObjectType();
    v207 = v124;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v125 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v126 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v123;
    v204((v127 + v126), v125, v90);

    sub_100058000(&qword_100775650, &unk_10063BD60);
    goto LABEL_22;
  }

  v128 = v205;
  if (v38 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    v49 = sub_1003917A8(0);
    (*(v34 + 8))(v37, v33);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.today(_:) || v38 == enum case for REMNavigationSpecifier.scheduled(_:) || v38 == enum case for REMNavigationSpecifier.allReminders(_:) || v38 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v34 + 96))(v37, v33);
    v129 = v180;
    v130 = *(v180 + 32);
    v131 = v182;
    v132 = v181;
    v130(v182, v37, v181);
    v133 = *sub_10000C36C(v128 + 6, v128[9]);
    v206 = sub_100391414(0);
    v134 = v179;
    (*(v129 + 16))(v179, v131, v132);
    v135 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v136 = swift_allocObject();
    v130((v136 + v135), v134, v132);
    *(v136 + ((v11 + v135 + 7) & 0xFFFFFFFFFFFFFFF8)) = v133;

    v137 = zalgo.getter();
    sub_100058000(&qword_100775650, &unk_10063BD60);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v129 + 8))(v182, v132);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.assigned(_:) || v38 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v34 + 96))(v37, v33);
    v138 = v177;
    v139 = v176;
    v140 = v37;
    v141 = v178;
    (*(v177 + 32))(v176, v140, v178);
    sub_10000C36C(v128 + 6, v128[9]);
    v49 = sub_100369BFC(v139);
    (*(v138 + 8))(v139, v141);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_36:
    (*(v34 + 8))(v37, v33);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v142 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v143 = v195;
      v144 = &v195[v142[12]];
      v145 = v142[16];
      v146 = &v195[v142[20]];
      v147 = enum case for REMUserOperation.widgetShowList(_:);
      v148 = type metadata accessor for REMUserOperation();
      (*(*(v148 - 8) + 104))(v143, v147, v148);
      v149 = type metadata accessor for Date();
      *v144 = 0;
      *(v144 + 1) = 0;
      (*(*(v149 - 8) + 56))(&v143[v145], 1, 1, v149);
      *v146 = 0;
      *(v146 + 1) = 0;
      v151 = v196;
      v150 = v197;
      (*(v196 + 104))(v143, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v151 + 8))(v143, v150);
    }

    sub_10000C36C(v128 + 6, v128[9]);
    return sub_100361F8C(v206, v74 & 1, sub_100363730, &qword_10077FD80, &unk_100648790);
  }

  if (v38 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v34 + 96))(v37, v33);
    v152 = v174;
    v153 = v173;
    v154 = v175;
    (*(v174 + 32))(v173, v37, v175);
    v155 = sub_10000C36C(v128 + 6, v128[9]);
    v156 = v128[4];
    swift_getObjectType();
    v207 = v156;
    v157 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v153, v157, v128, *v155);

    v158 = objc_opt_self();
    v159 = String._bridgeToObjectiveC()();
    v160 = [v158 internalErrorWithDebugDescription:v159];

    sub_100058000(&qword_10077FD80, &unk_100648790);
    swift_allocObject();
    v49 = Promise.init(error:)();
    (*(v152 + 8))(v153, v154);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    sub_100058000(&qword_100775650, &unk_10063BD60);
    return firstly<A>(closure:)();
  }

  if (v38 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v161 = type metadata accessor for TaskPriority();
    v162 = v172;
    (*(*(v161 - 8) + 56))(v172, 1, 1, v161);
    type metadata accessor for MainActor();
    v163 = v205;

    v164 = static MainActor.shared.getter();
    v165 = swift_allocObject();
    v165[2] = v164;
    v165[3] = &protocol witness table for MainActor;
    v165[4] = v163;
    sub_10009E31C(0, 0, v162, &unk_10063BE20, v165);

    v166 = objc_opt_self();
    v167 = String._bridgeToObjectiveC()();
    v168 = [v166 internalErrorWithDebugDescription:v167];

    sub_100058000(&qword_10077FD80, &unk_100648790);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100347A98(void *a1, void *a2, void (*a3)(char *, char *, uint64_t))
{
  v204 = a3;
  v205 = a2;
  v206 = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v196 = *(v3 - 1);
  v197 = v3;
  __chkstk_darwin(v3);
  v195 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v5 - 8);
  v172 = &v169 - v6;
  v7 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v193 = *(v7 - 8);
  v194 = v7;
  __chkstk_darwin(v7);
  v192 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v180 = *(v181 - 8);
  v11 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v182 = &v169 - v13;
  v191 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v189 = *(v191 - 8);
  v14 = *(v189 + 64);
  __chkstk_darwin(v191);
  v188 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v190 = &v169 - v16;
  v187 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v17;
  __chkstk_darwin(v18);
  v185 = &v169 - v19;
  v20 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v202 = *(v20 - 8);
  v203 = v20;
  __chkstk_darwin(v20);
  v200 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v198 = (&v169 - v23);
  v199 = v24;
  __chkstk_darwin(v25);
  v201 = &v169 - v26;
  v27 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v33 = type metadata accessor for REMNavigationSpecifier();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v37, v206, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v39 = *(sub_100058000(&qword_100777A40, &qword_10063BDA0) + 48);
    v204 = *(v28 + 32);
    v170 = v27;
    v203 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v32;
    v171 = v32;
    v204(v32, v37 + v39, v27);
    v41 = v205;
    v42 = v205[4];
    swift_getObjectType();
    v207 = v42;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v43 = zalgoIfMain.getter();
    v44 = v203;
    v45 = v40;
    v46 = v170;
    (*(v28 + 16))(v203, v45, v170);
    v47 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v41;
    v204((v48 + v47), v44, v46);

    sub_100058000(&qword_10077FD70, &qword_10063BDA8);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v28 + 8))(v171, v46);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v34 + 96))(v37, v33);
    v50 = *v37;
    v51 = *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v52 = *(v202 + 32);
    v206 = (v202 + 32);
    v198 = v52;
    v52(v201, v37 + v51, v203);
    if ((v204 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v53 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v54 = v195;
      v55 = &v195[v53[12]];
      v56 = v53[16];
      v57 = &v195[v53[20]];
      v58 = enum case for REMUserOperation.widgetShowList(_:);
      v59 = type metadata accessor for REMUserOperation();
      (*(*(v59 - 8) + 104))(v54, v58, v59);
      v60 = type metadata accessor for Date();
      *v55 = 0;
      *(v55 + 1) = 0;
      (*(*(v60 - 8) + 56))(&v54[v56], 1, 1, v60);
      *v57 = 0;
      *(v57 + 1) = 0;
      v62 = v196;
      v61 = v197;
      (*(v196 + 104))(v54, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v62 + 8))(v54, v61);
    }

    v63 = v205;
    v64 = v205[4];
    swift_getObjectType();
    v207 = v64;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v65 = zalgoIfMain.getter();
    v66 = v201;
    v67 = v202;
    v68 = *(v202 + 16);
    v69 = v200;
    v197 = v50;
    v70 = v203;
    v68(v200, v201, v203);
    v71 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v72 = (v199 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v198(v73 + v71, v69, v70);
    *(v73 + v72) = v204;

    sub_100058000(&qword_10077FD70, &qword_10063BDA8);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v67 + 8))(v66, v70);
    return v49;
  }

  v74 = v204;
  if (v38 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v75 = *v37;
    v76 = v37 + *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v206 = *(v202 + 32);
    (v206)(v198, v76, v203);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v77 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v78 = v195;
      v79 = &v195[v77[12]];
      v80 = v77[16];
      v81 = &v195[v77[20]];
      v82 = enum case for REMUserOperation.widgetShowList(_:);
      v83 = type metadata accessor for REMUserOperation();
      (*(*(v83 - 8) + 104))(v78, v82, v83);
      v84 = type metadata accessor for Date();
      *v79 = 0;
      *(v79 + 1) = 0;
      (*(*(v84 - 8) + 56))(&v78[v80], 1, 1, v84);
      *v81 = 0;
      *(v81 + 1) = 0;
      v86 = v196;
      v85 = v197;
      (*(v196 + 104))(v78, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v86 + 8))(v78, v85);
    }

    v87 = v205;
    v88 = v205[4];
    swift_getObjectType();
    v207 = v88;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v91 = v202;
    v90 = v203;
    v92 = *(v202 + 16);
    v204 = v75;
    v93 = v200;
    v94 = v198;
    v92(v200, v198, v203);
    v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    (v206)(v96 + v95, v93, v90);

    sub_100058000(&qword_10077FD70, &qword_10063BDA8);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v204;
    goto LABEL_12;
  }

  if (v38 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v99 = v192;
    v98 = v193;
    v100 = v194;
    (*(v193 + 32))(v192, v37, v194);
    v101 = sub_10000C36C(v205 + 6, v205[9]);
    __chkstk_darwin(v101);
    *(&v169 - 2) = v102;
    *(&v169 - 1) = v99;
    sub_100058000(&qword_10077FD70, &qword_10063BDA8);
    v49 = firstly<A>(closure:)();
    (*(v98 + 8))(v99, v100);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v34 + 96))(v37, v33);
    v103 = *v37;
    v104 = *(sub_100058000(&unk_10076DF50, &unk_100631A20) + 48);
    v105 = v189;
    v106 = v190;
    v206 = *(v189 + 32);
    (v206)(v190, v37 + v104, v191);
    v107 = v205;
    v108 = v205[4];
    swift_getObjectType();
    v207 = v108;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v109 = zalgoIfMain.getter();
    v110 = v188;
    v111 = v106;
    v112 = v191;
    (*(v105 + 16))(v188, v111, v191);
    v113 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = v107;
    (v206)(v114 + v113, v110, v112);

    sub_100058000(&qword_10077FD70, &qword_10063BDA8);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v105 + 8))(v190, v112);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v116 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v116, v187);
    v117 = v205;
    v118 = v205[4];
    swift_getObjectType();
    v207 = v118;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v119 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v120 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    v204((v121 + v120), v119, v90);

    sub_100058000(&qword_10077FD70, &qword_10063BDA8);
LABEL_22:
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v206;
LABEL_12:

    (*(v91 + 8))(v94, v90);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v122 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v122, v187);
    v123 = v205;
    v124 = v205[4];
    swift_getObjectType();
    v207 = v124;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v125 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v126 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v123;
    v204((v127 + v126), v125, v90);

    sub_100058000(&qword_10077FD70, &qword_10063BDA8);
    goto LABEL_22;
  }

  v128 = v205;
  if (v38 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    v49 = sub_100391B44(0);
    (*(v34 + 8))(v37, v33);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.today(_:) || v38 == enum case for REMNavigationSpecifier.scheduled(_:) || v38 == enum case for REMNavigationSpecifier.allReminders(_:) || v38 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v34 + 96))(v37, v33);
    v129 = v180;
    v130 = *(v180 + 32);
    v131 = v182;
    v132 = v181;
    v130(v182, v37, v181);
    v133 = *sub_10000C36C(v128 + 6, v128[9]);
    v206 = sub_100391414(0);
    v134 = v179;
    (*(v129 + 16))(v179, v131, v132);
    v135 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v136 = swift_allocObject();
    v130((v136 + v135), v134, v132);
    *(v136 + ((v11 + v135 + 7) & 0xFFFFFFFFFFFFFFF8)) = v133;

    v137 = zalgo.getter();
    sub_100058000(&qword_10077FD70, &qword_10063BDA8);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v129 + 8))(v182, v132);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.assigned(_:) || v38 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v34 + 96))(v37, v33);
    v138 = v177;
    v139 = v176;
    v140 = v37;
    v141 = v178;
    (*(v177 + 32))(v176, v140, v178);
    sub_10000C36C(v128 + 6, v128[9]);
    v49 = sub_10036A1EC(v139);
    (*(v138 + 8))(v139, v141);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_36:
    (*(v34 + 8))(v37, v33);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v142 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v143 = v195;
      v144 = &v195[v142[12]];
      v145 = v142[16];
      v146 = &v195[v142[20]];
      v147 = enum case for REMUserOperation.widgetShowList(_:);
      v148 = type metadata accessor for REMUserOperation();
      (*(*(v148 - 8) + 104))(v143, v147, v148);
      v149 = type metadata accessor for Date();
      *v144 = 0;
      *(v144 + 1) = 0;
      (*(*(v149 - 8) + 56))(&v143[v145], 1, 1, v149);
      *v146 = 0;
      *(v146 + 1) = 0;
      v151 = v196;
      v150 = v197;
      (*(v196 + 104))(v143, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v151 + 8))(v143, v150);
    }

    sub_10000C36C(v128 + 6, v128[9]);
    return sub_100361F8C(v206, v74 & 1, sub_100365260, &qword_10077FD98, &qword_10063BDD0);
  }

  if (v38 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v34 + 96))(v37, v33);
    v152 = v174;
    v153 = v173;
    v154 = v175;
    (*(v174 + 32))(v173, v37, v175);
    v155 = sub_10000C36C(v128 + 6, v128[9]);
    v156 = v128[4];
    swift_getObjectType();
    v207 = v156;
    v157 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v153, v157, v128, *v155);

    v158 = objc_opt_self();
    v159 = String._bridgeToObjectiveC()();
    v160 = [v158 internalErrorWithDebugDescription:v159];

    sub_100058000(&qword_10077FD98, &qword_10063BDD0);
    swift_allocObject();
    v49 = Promise.init(error:)();
    (*(v152 + 8))(v153, v154);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    sub_100058000(&qword_10077FD70, &qword_10063BDA8);
    return firstly<A>(closure:)();
  }

  if (v38 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v161 = type metadata accessor for TaskPriority();
    v162 = v172;
    (*(*(v161 - 8) + 56))(v172, 1, 1, v161);
    type metadata accessor for MainActor();
    v163 = v205;

    v164 = static MainActor.shared.getter();
    v165 = swift_allocObject();
    v165[2] = v164;
    v165[3] = &protocol witness table for MainActor;
    v165[4] = v163;
    sub_10009E31C(0, 0, v162, &unk_10063BE18, v165);

    v166 = objc_opt_self();
    v167 = String._bridgeToObjectiveC()();
    v168 = [v166 internalErrorWithDebugDescription:v167];

    sub_100058000(&qword_10077FD98, &qword_10063BDD0);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003495D0(void *a1, void *a2, void (*a3)(char *, char *, uint64_t))
{
  v204 = a3;
  v205 = a2;
  v206 = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v196 = *(v3 - 1);
  v197 = v3;
  __chkstk_darwin(v3);
  v195 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v5 - 8);
  v172 = &v169 - v6;
  v7 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v193 = *(v7 - 8);
  v194 = v7;
  __chkstk_darwin(v7);
  v192 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v180 = *(v181 - 8);
  v11 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v182 = &v169 - v13;
  v191 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v189 = *(v191 - 8);
  v14 = *(v189 + 64);
  __chkstk_darwin(v191);
  v188 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v190 = &v169 - v16;
  v187 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v17;
  __chkstk_darwin(v18);
  v185 = &v169 - v19;
  v20 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v202 = *(v20 - 8);
  v203 = v20;
  __chkstk_darwin(v20);
  v200 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v198 = (&v169 - v23);
  v199 = v24;
  __chkstk_darwin(v25);
  v201 = &v169 - v26;
  v27 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v33 = type metadata accessor for REMNavigationSpecifier();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v37, v206, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v39 = *(sub_100058000(&qword_100777A40, &qword_10063BDA0) + 48);
    v204 = *(v28 + 32);
    v170 = v27;
    v203 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v32;
    v171 = v32;
    v204(v32, v37 + v39, v27);
    v41 = v205;
    v42 = v205[4];
    swift_getObjectType();
    v207 = v42;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v43 = zalgoIfMain.getter();
    v44 = v203;
    v45 = v40;
    v46 = v170;
    (*(v28 + 16))(v203, v45, v170);
    v47 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v41;
    v204((v48 + v47), v44, v46);

    sub_100058000(&qword_10077FDC0, &qword_10063BE28);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v28 + 8))(v171, v46);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v34 + 96))(v37, v33);
    v50 = *v37;
    v51 = *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v52 = *(v202 + 32);
    v206 = (v202 + 32);
    v198 = v52;
    v52(v201, v37 + v51, v203);
    if ((v204 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v53 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v54 = v195;
      v55 = &v195[v53[12]];
      v56 = v53[16];
      v57 = &v195[v53[20]];
      v58 = enum case for REMUserOperation.widgetShowList(_:);
      v59 = type metadata accessor for REMUserOperation();
      (*(*(v59 - 8) + 104))(v54, v58, v59);
      v60 = type metadata accessor for Date();
      *v55 = 0;
      *(v55 + 1) = 0;
      (*(*(v60 - 8) + 56))(&v54[v56], 1, 1, v60);
      *v57 = 0;
      *(v57 + 1) = 0;
      v62 = v196;
      v61 = v197;
      (*(v196 + 104))(v54, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v62 + 8))(v54, v61);
    }

    v63 = v205;
    v64 = v205[4];
    swift_getObjectType();
    v207 = v64;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v65 = zalgoIfMain.getter();
    v66 = v201;
    v67 = v202;
    v68 = *(v202 + 16);
    v69 = v200;
    v197 = v50;
    v70 = v203;
    v68(v200, v201, v203);
    v71 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v72 = (v199 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v198(v73 + v71, v69, v70);
    *(v73 + v72) = v204;

    sub_100058000(&qword_10077FDC0, &qword_10063BE28);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v67 + 8))(v66, v70);
    return v49;
  }

  v74 = v204;
  if (v38 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v75 = *v37;
    v76 = v37 + *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v206 = *(v202 + 32);
    (v206)(v198, v76, v203);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v77 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v78 = v195;
      v79 = &v195[v77[12]];
      v80 = v77[16];
      v81 = &v195[v77[20]];
      v82 = enum case for REMUserOperation.widgetShowList(_:);
      v83 = type metadata accessor for REMUserOperation();
      (*(*(v83 - 8) + 104))(v78, v82, v83);
      v84 = type metadata accessor for Date();
      *v79 = 0;
      *(v79 + 1) = 0;
      (*(*(v84 - 8) + 56))(&v78[v80], 1, 1, v84);
      *v81 = 0;
      *(v81 + 1) = 0;
      v86 = v196;
      v85 = v197;
      (*(v196 + 104))(v78, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v86 + 8))(v78, v85);
    }

    v87 = v205;
    v88 = v205[4];
    swift_getObjectType();
    v207 = v88;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v91 = v202;
    v90 = v203;
    v92 = *(v202 + 16);
    v204 = v75;
    v93 = v200;
    v94 = v198;
    v92(v200, v198, v203);
    v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    (v206)(v96 + v95, v93, v90);

    sub_100058000(&qword_10077FDC0, &qword_10063BE28);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v204;
    goto LABEL_12;
  }

  if (v38 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v99 = v192;
    v98 = v193;
    v100 = v194;
    (*(v193 + 32))(v192, v37, v194);
    v101 = sub_10000C36C(v205 + 6, v205[9]);
    __chkstk_darwin(v101);
    *(&v169 - 2) = v102;
    *(&v169 - 1) = v99;
    sub_100058000(&qword_10077FDC0, &qword_10063BE28);
    v49 = firstly<A>(closure:)();
    (*(v98 + 8))(v99, v100);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v34 + 96))(v37, v33);
    v103 = *v37;
    v104 = *(sub_100058000(&unk_10076DF50, &unk_100631A20) + 48);
    v105 = v189;
    v106 = v190;
    v206 = *(v189 + 32);
    (v206)(v190, v37 + v104, v191);
    v107 = v205;
    v108 = v205[4];
    swift_getObjectType();
    v207 = v108;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v109 = zalgoIfMain.getter();
    v110 = v188;
    v111 = v106;
    v112 = v191;
    (*(v105 + 16))(v188, v111, v191);
    v113 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = v107;
    (v206)(v114 + v113, v110, v112);

    sub_100058000(&qword_10077FDC0, &qword_10063BE28);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v105 + 8))(v190, v112);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v116 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v116, v187);
    v117 = v205;
    v118 = v205[4];
    swift_getObjectType();
    v207 = v118;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v119 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v120 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    v204((v121 + v120), v119, v90);

    sub_100058000(&qword_10077FDC0, &qword_10063BE28);
LABEL_22:
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v206;
LABEL_12:

    (*(v91 + 8))(v94, v90);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v122 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v122, v187);
    v123 = v205;
    v124 = v205[4];
    swift_getObjectType();
    v207 = v124;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v125 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v126 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v123;
    v204((v127 + v126), v125, v90);

    sub_100058000(&qword_10077FDC0, &qword_10063BE28);
    goto LABEL_22;
  }

  v128 = v205;
  if (v38 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    v49 = sub_100391EE0(0);
    (*(v34 + 8))(v37, v33);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.today(_:) || v38 == enum case for REMNavigationSpecifier.scheduled(_:) || v38 == enum case for REMNavigationSpecifier.allReminders(_:) || v38 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v34 + 96))(v37, v33);
    v129 = v180;
    v130 = *(v180 + 32);
    v131 = v182;
    v132 = v181;
    v130(v182, v37, v181);
    v133 = *sub_10000C36C(v128 + 6, v128[9]);
    v206 = sub_100391414(0);
    v134 = v179;
    (*(v129 + 16))(v179, v131, v132);
    v135 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v136 = swift_allocObject();
    v130((v136 + v135), v134, v132);
    *(v136 + ((v11 + v135 + 7) & 0xFFFFFFFFFFFFFFF8)) = v133;

    v137 = zalgo.getter();
    sub_100058000(&qword_10077FDC0, &qword_10063BE28);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v129 + 8))(v182, v132);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.assigned(_:) || v38 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v34 + 96))(v37, v33);
    v138 = v177;
    v139 = v176;
    v140 = v37;
    v141 = v178;
    (*(v177 + 32))(v176, v140, v178);
    sub_10000C36C(v128 + 6, v128[9]);
    v49 = sub_10036A4E4(v139);
    (*(v138 + 8))(v139, v141);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_36:
    (*(v34 + 8))(v37, v33);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v142 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v143 = v195;
      v144 = &v195[v142[12]];
      v145 = v142[16];
      v146 = &v195[v142[20]];
      v147 = enum case for REMUserOperation.widgetShowList(_:);
      v148 = type metadata accessor for REMUserOperation();
      (*(*(v148 - 8) + 104))(v143, v147, v148);
      v149 = type metadata accessor for Date();
      *v144 = 0;
      *(v144 + 1) = 0;
      (*(*(v149 - 8) + 56))(&v143[v145], 1, 1, v149);
      *v146 = 0;
      *(v146 + 1) = 0;
      v151 = v196;
      v150 = v197;
      (*(v196 + 104))(v143, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v151 + 8))(v143, v150);
    }

    sub_10000C36C(v128 + 6, v128[9]);
    return sub_100361F8C(v206, v74 & 1, sub_100365FF8, &qword_10077FDC8, &unk_10063C910);
  }

  if (v38 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v34 + 96))(v37, v33);
    v152 = v174;
    v153 = v173;
    v154 = v175;
    (*(v174 + 32))(v173, v37, v175);
    v155 = sub_10000C36C(v128 + 6, v128[9]);
    v156 = v128[4];
    swift_getObjectType();
    v207 = v156;
    v157 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v153, v157, v128, *v155);

    v158 = objc_opt_self();
    v159 = String._bridgeToObjectiveC()();
    v160 = [v158 internalErrorWithDebugDescription:v159];

    sub_100058000(&qword_10077FDC8, &unk_10063C910);
    swift_allocObject();
    v49 = Promise.init(error:)();
    (*(v152 + 8))(v153, v154);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    sub_100058000(&qword_10077FDC0, &qword_10063BE28);
    return firstly<A>(closure:)();
  }

  if (v38 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v161 = type metadata accessor for TaskPriority();
    v162 = v172;
    (*(*(v161 - 8) + 56))(v172, 1, 1, v161);
    type metadata accessor for MainActor();
    v163 = v205;

    v164 = static MainActor.shared.getter();
    v165 = swift_allocObject();
    v165[2] = v164;
    v165[3] = &protocol witness table for MainActor;
    v165[4] = v163;
    sub_10009E31C(0, 0, v162, &unk_10063BE30, v165);

    v166 = objc_opt_self();
    v167 = String._bridgeToObjectiveC()();
    v168 = [v166 internalErrorWithDebugDescription:v167];

    sub_100058000(&qword_10077FDC8, &unk_10063C910);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10034B108(void *a1, void *a2, void (*a3)(char *, char *, uint64_t))
{
  v204 = a3;
  v205 = a2;
  v206 = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v196 = *(v3 - 1);
  v197 = v3;
  __chkstk_darwin(v3);
  v195 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v5 - 8);
  v172 = &v169 - v6;
  v7 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v193 = *(v7 - 8);
  v194 = v7;
  __chkstk_darwin(v7);
  v192 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v180 = *(v181 - 8);
  v11 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v182 = &v169 - v13;
  v191 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v189 = *(v191 - 8);
  v14 = *(v189 + 64);
  __chkstk_darwin(v191);
  v188 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v190 = &v169 - v16;
  v187 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v17;
  __chkstk_darwin(v18);
  v185 = &v169 - v19;
  v20 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v202 = *(v20 - 8);
  v203 = v20;
  __chkstk_darwin(v20);
  v200 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v198 = (&v169 - v23);
  v199 = v24;
  __chkstk_darwin(v25);
  v201 = &v169 - v26;
  v27 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v33 = type metadata accessor for REMNavigationSpecifier();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v37, v206, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v39 = *(sub_100058000(&qword_100777A40, &qword_10063BDA0) + 48);
    v204 = *(v28 + 32);
    v170 = v27;
    v203 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v32;
    v171 = v32;
    v204(v32, v37 + v39, v27);
    v41 = v205;
    v42 = v205[4];
    swift_getObjectType();
    v207 = v42;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v43 = zalgoIfMain.getter();
    v44 = v203;
    v45 = v40;
    v46 = v170;
    (*(v28 + 16))(v203, v45, v170);
    v47 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v41;
    v204((v48 + v47), v44, v46);

    sub_100058000(&qword_10077FDD0, &qword_10063BE40);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v28 + 8))(v171, v46);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v34 + 96))(v37, v33);
    v50 = *v37;
    v51 = *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v52 = *(v202 + 32);
    v206 = (v202 + 32);
    v198 = v52;
    v52(v201, v37 + v51, v203);
    if ((v204 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v53 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v54 = v195;
      v55 = &v195[v53[12]];
      v56 = v53[16];
      v57 = &v195[v53[20]];
      v58 = enum case for REMUserOperation.widgetShowList(_:);
      v59 = type metadata accessor for REMUserOperation();
      (*(*(v59 - 8) + 104))(v54, v58, v59);
      v60 = type metadata accessor for Date();
      *v55 = 0;
      *(v55 + 1) = 0;
      (*(*(v60 - 8) + 56))(&v54[v56], 1, 1, v60);
      *v57 = 0;
      *(v57 + 1) = 0;
      v62 = v196;
      v61 = v197;
      (*(v196 + 104))(v54, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v62 + 8))(v54, v61);
    }

    v63 = v205;
    v64 = v205[4];
    swift_getObjectType();
    v207 = v64;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v65 = zalgoIfMain.getter();
    v66 = v201;
    v67 = v202;
    v68 = *(v202 + 16);
    v69 = v200;
    v197 = v50;
    v70 = v203;
    v68(v200, v201, v203);
    v71 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v72 = (v199 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v198(v73 + v71, v69, v70);
    *(v73 + v72) = v204;

    sub_100058000(&qword_10077FDD0, &qword_10063BE40);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v67 + 8))(v66, v70);
    return v49;
  }

  v74 = v204;
  if (v38 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v75 = *v37;
    v76 = v37 + *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v206 = *(v202 + 32);
    (v206)(v198, v76, v203);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v77 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v78 = v195;
      v79 = &v195[v77[12]];
      v80 = v77[16];
      v81 = &v195[v77[20]];
      v82 = enum case for REMUserOperation.widgetShowList(_:);
      v83 = type metadata accessor for REMUserOperation();
      (*(*(v83 - 8) + 104))(v78, v82, v83);
      v84 = type metadata accessor for Date();
      *v79 = 0;
      *(v79 + 1) = 0;
      (*(*(v84 - 8) + 56))(&v78[v80], 1, 1, v84);
      *v81 = 0;
      *(v81 + 1) = 0;
      v86 = v196;
      v85 = v197;
      (*(v196 + 104))(v78, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v86 + 8))(v78, v85);
    }

    v87 = v205;
    v88 = v205[4];
    swift_getObjectType();
    v207 = v88;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v91 = v202;
    v90 = v203;
    v92 = *(v202 + 16);
    v204 = v75;
    v93 = v200;
    v94 = v198;
    v92(v200, v198, v203);
    v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    (v206)(v96 + v95, v93, v90);

    sub_100058000(&qword_10077FDD0, &qword_10063BE40);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v204;
    goto LABEL_12;
  }

  if (v38 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v99 = v192;
    v98 = v193;
    v100 = v194;
    (*(v193 + 32))(v192, v37, v194);
    v101 = sub_10000C36C(v205 + 6, v205[9]);
    __chkstk_darwin(v101);
    *(&v169 - 2) = v102;
    *(&v169 - 1) = v99;
    sub_100058000(&qword_10077FDD0, &qword_10063BE40);
    v49 = firstly<A>(closure:)();
    (*(v98 + 8))(v99, v100);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v34 + 96))(v37, v33);
    v103 = *v37;
    v104 = *(sub_100058000(&unk_10076DF50, &unk_100631A20) + 48);
    v105 = v189;
    v106 = v190;
    v206 = *(v189 + 32);
    (v206)(v190, v37 + v104, v191);
    v107 = v205;
    v108 = v205[4];
    swift_getObjectType();
    v207 = v108;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v109 = zalgoIfMain.getter();
    v110 = v188;
    v111 = v106;
    v112 = v191;
    (*(v105 + 16))(v188, v111, v191);
    v113 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = v107;
    (v206)(v114 + v113, v110, v112);

    sub_100058000(&qword_10077FDD0, &qword_10063BE40);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v105 + 8))(v190, v112);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v116 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v116, v187);
    v117 = v205;
    v118 = v205[4];
    swift_getObjectType();
    v207 = v118;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v119 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v120 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    v204((v121 + v120), v119, v90);

    sub_100058000(&qword_10077FDD0, &qword_10063BE40);
LABEL_22:
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v206;
LABEL_12:

    (*(v91 + 8))(v94, v90);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v122 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v122, v187);
    v123 = v205;
    v124 = v205[4];
    swift_getObjectType();
    v207 = v124;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v125 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v126 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v123;
    v204((v127 + v126), v125, v90);

    sub_100058000(&qword_10077FDD0, &qword_10063BE40);
    goto LABEL_22;
  }

  v128 = v205;
  if (v38 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    v49 = sub_10039227C(0);
    (*(v34 + 8))(v37, v33);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.today(_:) || v38 == enum case for REMNavigationSpecifier.scheduled(_:) || v38 == enum case for REMNavigationSpecifier.allReminders(_:) || v38 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v34 + 96))(v37, v33);
    v129 = v180;
    v130 = *(v180 + 32);
    v131 = v182;
    v132 = v181;
    v130(v182, v37, v181);
    v133 = *sub_10000C36C(v128 + 6, v128[9]);
    v206 = sub_100391414(0);
    v134 = v179;
    (*(v129 + 16))(v179, v131, v132);
    v135 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v136 = swift_allocObject();
    v130((v136 + v135), v134, v132);
    *(v136 + ((v11 + v135 + 7) & 0xFFFFFFFFFFFFFFF8)) = v133;

    v137 = zalgo.getter();
    sub_100058000(&qword_10077FDD0, &qword_10063BE40);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v129 + 8))(v182, v132);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.assigned(_:) || v38 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v34 + 96))(v37, v33);
    v138 = v177;
    v139 = v176;
    v140 = v37;
    v141 = v178;
    (*(v177 + 32))(v176, v140, v178);
    sub_10000C36C(v128 + 6, v128[9]);
    v49 = sub_10036A7DC(v139);
    (*(v138 + 8))(v139, v141);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_36:
    (*(v34 + 8))(v37, v33);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v142 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v143 = v195;
      v144 = &v195[v142[12]];
      v145 = v142[16];
      v146 = &v195[v142[20]];
      v147 = enum case for REMUserOperation.widgetShowList(_:);
      v148 = type metadata accessor for REMUserOperation();
      (*(*(v148 - 8) + 104))(v143, v147, v148);
      v149 = type metadata accessor for Date();
      *v144 = 0;
      *(v144 + 1) = 0;
      (*(*(v149 - 8) + 56))(&v143[v145], 1, 1, v149);
      *v146 = 0;
      *(v146 + 1) = 0;
      v151 = v196;
      v150 = v197;
      (*(v196 + 104))(v143, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v151 + 8))(v143, v150);
    }

    sub_10000C36C(v128 + 6, v128[9]);
    return sub_100361F8C(v206, v74 & 1, sub_100366D90, &qword_10077FDD8, &qword_10063BE50);
  }

  if (v38 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v34 + 96))(v37, v33);
    v152 = v174;
    v153 = v173;
    v154 = v175;
    (*(v174 + 32))(v173, v37, v175);
    v155 = sub_10000C36C(v128 + 6, v128[9]);
    v156 = v128[4];
    swift_getObjectType();
    v207 = v156;
    v157 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v153, v157, v128, *v155);

    v158 = objc_opt_self();
    v159 = String._bridgeToObjectiveC()();
    v160 = [v158 internalErrorWithDebugDescription:v159];

    sub_100058000(&qword_10077FDD8, &qword_10063BE50);
    swift_allocObject();
    v49 = Promise.init(error:)();
    (*(v152 + 8))(v153, v154);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    sub_100058000(&qword_10077FDD0, &qword_10063BE40);
    return firstly<A>(closure:)();
  }

  if (v38 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v161 = type metadata accessor for TaskPriority();
    v162 = v172;
    (*(*(v161 - 8) + 56))(v172, 1, 1, v161);
    type metadata accessor for MainActor();
    v163 = v205;

    v164 = static MainActor.shared.getter();
    v165 = swift_allocObject();
    v165[2] = v164;
    v165[3] = &protocol witness table for MainActor;
    v165[4] = v163;
    sub_10009E31C(0, 0, v162, &unk_10063BE48, v165);

    v166 = objc_opt_self();
    v167 = String._bridgeToObjectiveC()();
    v168 = [v166 internalErrorWithDebugDescription:v167];

    sub_100058000(&qword_10077FDD8, &qword_10063BE50);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10034CC40(void *a1, void *a2, void (*a3)(char *, char *, uint64_t))
{
  v204 = a3;
  v205 = a2;
  v206 = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v196 = *(v3 - 1);
  v197 = v3;
  __chkstk_darwin(v3);
  v195 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v5 - 8);
  v172 = &v169 - v6;
  v7 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v193 = *(v7 - 8);
  v194 = v7;
  __chkstk_darwin(v7);
  v192 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v180 = *(v181 - 8);
  v11 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v182 = &v169 - v13;
  v191 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v189 = *(v191 - 8);
  v14 = *(v189 + 64);
  __chkstk_darwin(v191);
  v188 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v190 = &v169 - v16;
  v187 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v17;
  __chkstk_darwin(v18);
  v185 = &v169 - v19;
  v20 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v202 = *(v20 - 8);
  v203 = v20;
  __chkstk_darwin(v20);
  v200 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v198 = (&v169 - v23);
  v199 = v24;
  __chkstk_darwin(v25);
  v201 = &v169 - v26;
  v27 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v33 = type metadata accessor for REMNavigationSpecifier();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v37, v206, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v39 = *(sub_100058000(&qword_100777A40, &qword_10063BDA0) + 48);
    v204 = *(v28 + 32);
    v170 = v27;
    v203 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v32;
    v171 = v32;
    v204(v32, v37 + v39, v27);
    v41 = v205;
    v42 = v205[4];
    swift_getObjectType();
    v207 = v42;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v43 = zalgoIfMain.getter();
    v44 = v203;
    v45 = v40;
    v46 = v170;
    (*(v28 + 16))(v203, v45, v170);
    v47 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v41;
    v204((v48 + v47), v44, v46);

    sub_100058000(&qword_10077FDE0, &qword_10063BE58);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v28 + 8))(v171, v46);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v34 + 96))(v37, v33);
    v50 = *v37;
    v51 = *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v52 = *(v202 + 32);
    v206 = (v202 + 32);
    v198 = v52;
    v52(v201, v37 + v51, v203);
    if ((v204 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v53 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v54 = v195;
      v55 = &v195[v53[12]];
      v56 = v53[16];
      v57 = &v195[v53[20]];
      v58 = enum case for REMUserOperation.widgetShowList(_:);
      v59 = type metadata accessor for REMUserOperation();
      (*(*(v59 - 8) + 104))(v54, v58, v59);
      v60 = type metadata accessor for Date();
      *v55 = 0;
      *(v55 + 1) = 0;
      (*(*(v60 - 8) + 56))(&v54[v56], 1, 1, v60);
      *v57 = 0;
      *(v57 + 1) = 0;
      v62 = v196;
      v61 = v197;
      (*(v196 + 104))(v54, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v62 + 8))(v54, v61);
    }

    v63 = v205;
    v64 = v205[4];
    swift_getObjectType();
    v207 = v64;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v65 = zalgoIfMain.getter();
    v66 = v201;
    v67 = v202;
    v68 = *(v202 + 16);
    v69 = v200;
    v197 = v50;
    v70 = v203;
    v68(v200, v201, v203);
    v71 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v72 = (v199 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v198(v73 + v71, v69, v70);
    *(v73 + v72) = v204;

    sub_100058000(&qword_10077FDE0, &qword_10063BE58);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v67 + 8))(v66, v70);
    return v49;
  }

  v74 = v204;
  if (v38 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v75 = *v37;
    v76 = v37 + *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v206 = *(v202 + 32);
    (v206)(v198, v76, v203);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v77 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v78 = v195;
      v79 = &v195[v77[12]];
      v80 = v77[16];
      v81 = &v195[v77[20]];
      v82 = enum case for REMUserOperation.widgetShowList(_:);
      v83 = type metadata accessor for REMUserOperation();
      (*(*(v83 - 8) + 104))(v78, v82, v83);
      v84 = type metadata accessor for Date();
      *v79 = 0;
      *(v79 + 1) = 0;
      (*(*(v84 - 8) + 56))(&v78[v80], 1, 1, v84);
      *v81 = 0;
      *(v81 + 1) = 0;
      v86 = v196;
      v85 = v197;
      (*(v196 + 104))(v78, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v86 + 8))(v78, v85);
    }

    v87 = v205;
    v88 = v205[4];
    swift_getObjectType();
    v207 = v88;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v91 = v202;
    v90 = v203;
    v92 = *(v202 + 16);
    v204 = v75;
    v93 = v200;
    v94 = v198;
    v92(v200, v198, v203);
    v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    (v206)(v96 + v95, v93, v90);

    sub_100058000(&qword_10077FDE0, &qword_10063BE58);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v204;
    goto LABEL_12;
  }

  if (v38 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v99 = v192;
    v98 = v193;
    v100 = v194;
    (*(v193 + 32))(v192, v37, v194);
    v101 = sub_10000C36C(v205 + 6, v205[9]);
    __chkstk_darwin(v101);
    *(&v169 - 2) = v102;
    *(&v169 - 1) = v99;
    sub_100058000(&qword_10077FDE0, &qword_10063BE58);
    v49 = firstly<A>(closure:)();
    (*(v98 + 8))(v99, v100);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v34 + 96))(v37, v33);
    v103 = *v37;
    v104 = *(sub_100058000(&unk_10076DF50, &unk_100631A20) + 48);
    v105 = v189;
    v106 = v190;
    v206 = *(v189 + 32);
    (v206)(v190, v37 + v104, v191);
    v107 = v205;
    v108 = v205[4];
    swift_getObjectType();
    v207 = v108;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v109 = zalgoIfMain.getter();
    v110 = v188;
    v111 = v106;
    v112 = v191;
    (*(v105 + 16))(v188, v111, v191);
    v113 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = v107;
    (v206)(v114 + v113, v110, v112);

    sub_100058000(&qword_10077FDE0, &qword_10063BE58);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v105 + 8))(v190, v112);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v116 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v116, v187);
    v117 = v205;
    v118 = v205[4];
    swift_getObjectType();
    v207 = v118;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v119 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v120 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    v204((v121 + v120), v119, v90);

    sub_100058000(&qword_10077FDE0, &qword_10063BE58);
LABEL_22:
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v206;
LABEL_12:

    (*(v91 + 8))(v94, v90);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v122 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v122, v187);
    v123 = v205;
    v124 = v205[4];
    swift_getObjectType();
    v207 = v124;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v125 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v126 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v123;
    v204((v127 + v126), v125, v90);

    sub_100058000(&qword_10077FDE0, &qword_10063BE58);
    goto LABEL_22;
  }

  v128 = v205;
  if (v38 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    v49 = sub_100392618(0);
    (*(v34 + 8))(v37, v33);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.today(_:) || v38 == enum case for REMNavigationSpecifier.scheduled(_:) || v38 == enum case for REMNavigationSpecifier.allReminders(_:) || v38 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v34 + 96))(v37, v33);
    v129 = v180;
    v130 = *(v180 + 32);
    v131 = v182;
    v132 = v181;
    v130(v182, v37, v181);
    v133 = *sub_10000C36C(v128 + 6, v128[9]);
    v206 = sub_100391414(0);
    v134 = v179;
    (*(v129 + 16))(v179, v131, v132);
    v135 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v136 = swift_allocObject();
    v130((v136 + v135), v134, v132);
    *(v136 + ((v11 + v135 + 7) & 0xFFFFFFFFFFFFFFF8)) = v133;

    v137 = zalgo.getter();
    sub_100058000(&qword_10077FDE0, &qword_10063BE58);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v129 + 8))(v182, v132);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.assigned(_:) || v38 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v34 + 96))(v37, v33);
    v138 = v177;
    v139 = v176;
    v140 = v37;
    v141 = v178;
    (*(v177 + 32))(v176, v140, v178);
    sub_10000C36C(v128 + 6, v128[9]);
    v49 = sub_10036AAD4(v139);
    (*(v138 + 8))(v139, v141);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_36:
    (*(v34 + 8))(v37, v33);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v142 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v143 = v195;
      v144 = &v195[v142[12]];
      v145 = v142[16];
      v146 = &v195[v142[20]];
      v147 = enum case for REMUserOperation.widgetShowList(_:);
      v148 = type metadata accessor for REMUserOperation();
      (*(*(v148 - 8) + 104))(v143, v147, v148);
      v149 = type metadata accessor for Date();
      *v144 = 0;
      *(v144 + 1) = 0;
      (*(*(v149 - 8) + 56))(&v143[v145], 1, 1, v149);
      *v146 = 0;
      *(v146 + 1) = 0;
      v151 = v196;
      v150 = v197;
      (*(v196 + 104))(v143, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v151 + 8))(v143, v150);
    }

    sub_10000C36C(v128 + 6, v128[9]);
    return sub_100361F8C(v206, v74 & 1, sub_100367B28, &qword_10077FDE8, &unk_10063C920);
  }

  if (v38 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v34 + 96))(v37, v33);
    v152 = v174;
    v153 = v173;
    v154 = v175;
    (*(v174 + 32))(v173, v37, v175);
    v155 = sub_10000C36C(v128 + 6, v128[9]);
    v156 = v128[4];
    swift_getObjectType();
    v207 = v156;
    v157 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v153, v157, v128, *v155);

    v158 = objc_opt_self();
    v159 = String._bridgeToObjectiveC()();
    v160 = [v158 internalErrorWithDebugDescription:v159];

    sub_100058000(&qword_10077FDE8, &unk_10063C920);
    swift_allocObject();
    v49 = Promise.init(error:)();
    (*(v152 + 8))(v153, v154);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    sub_100058000(&qword_10077FDE0, &qword_10063BE58);
    return firstly<A>(closure:)();
  }

  if (v38 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v161 = type metadata accessor for TaskPriority();
    v162 = v172;
    (*(*(v161 - 8) + 56))(v172, 1, 1, v161);
    type metadata accessor for MainActor();
    v163 = v205;

    v164 = static MainActor.shared.getter();
    v165 = swift_allocObject();
    v165[2] = v164;
    v165[3] = &protocol witness table for MainActor;
    v165[4] = v163;
    sub_10009E31C(0, 0, v162, &unk_10063BE60, v165);

    v166 = objc_opt_self();
    v167 = String._bridgeToObjectiveC()();
    v168 = [v166 internalErrorWithDebugDescription:v167];

    sub_100058000(&qword_10077FDE8, &unk_10063C920);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10034E778(void *a1, void *a2, void (*a3)(char *, char *, uint64_t))
{
  v204 = a3;
  v205 = a2;
  v206 = a1;
  v3 = type metadata accessor for REMAnalyticsEvent();
  v196 = *(v3 - 1);
  v197 = v3;
  __chkstk_darwin(v3);
  v195 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v5 - 8);
  v172 = &v169 - v6;
  v7 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v193 = *(v7 - 8);
  v194 = v7;
  __chkstk_darwin(v7);
  v192 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for REMNavigationSpecifier.TaggedPathSpecifier();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for REMNavigationSpecifier.SearchPathSpecifier();
  v180 = *(v181 - 8);
  v11 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v182 = &v169 - v13;
  v191 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v189 = *(v191 - 8);
  v14 = *(v189 + 64);
  __chkstk_darwin(v191);
  v188 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v190 = &v169 - v16;
  v187 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v17;
  __chkstk_darwin(v18);
  v185 = &v169 - v19;
  v20 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v202 = *(v20 - 8);
  v203 = v20;
  __chkstk_darwin(v20);
  v200 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v198 = (&v169 - v23);
  v199 = v24;
  __chkstk_darwin(v25);
  v201 = &v169 - v26;
  v27 = type metadata accessor for REMNavigationSpecifier.AccountPathSpecifier();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  v33 = type metadata accessor for REMNavigationSpecifier();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v37, v206, v33, v35);
  v38 = (*(v34 + 88))(v37, v33);
  if (v38 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v39 = *(sub_100058000(&qword_100777A40, &qword_10063BDA0) + 48);
    v204 = *(v28 + 32);
    v170 = v27;
    v203 = &v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v32;
    v171 = v32;
    v204(v32, v37 + v39, v27);
    v41 = v205;
    v42 = v205[4];
    swift_getObjectType();
    v207 = v42;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchAccount(for:)();
    swift_unknownObjectRelease();
    v43 = zalgoIfMain.getter();
    v44 = v203;
    v45 = v40;
    v46 = v170;
    (*(v28 + 16))(v203, v45, v170);
    v47 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v41;
    v204((v48 + v47), v44, v46);

    sub_100058000(&qword_10077FDF0, &qword_10063BE70);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v28 + 8))(v171, v46);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v34 + 96))(v37, v33);
    v50 = *v37;
    v51 = *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v52 = *(v202 + 32);
    v206 = (v202 + 32);
    v198 = v52;
    v52(v201, v37 + v51, v203);
    if ((v204 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v53 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v54 = v195;
      v55 = &v195[v53[12]];
      v56 = v53[16];
      v57 = &v195[v53[20]];
      v58 = enum case for REMUserOperation.widgetShowList(_:);
      v59 = type metadata accessor for REMUserOperation();
      (*(*(v59 - 8) + 104))(v54, v58, v59);
      v60 = type metadata accessor for Date();
      *v55 = 0;
      *(v55 + 1) = 0;
      (*(*(v60 - 8) + 56))(&v54[v56], 1, 1, v60);
      *v57 = 0;
      *(v57 + 1) = 0;
      v62 = v196;
      v61 = v197;
      (*(v196 + 104))(v54, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v62 + 8))(v54, v61);
    }

    v63 = v205;
    v64 = v205[4];
    swift_getObjectType();
    v207 = v64;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchList(for:)();
    swift_unknownObjectRelease();
    v65 = zalgoIfMain.getter();
    v66 = v201;
    v67 = v202;
    v68 = *(v202 + 16);
    v69 = v200;
    v197 = v50;
    v70 = v203;
    v68(v200, v201, v203);
    v71 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v72 = (v199 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v198(v73 + v71, v69, v70);
    *(v73 + v72) = v204;

    sub_100058000(&qword_10077FDF0, &qword_10063BE70);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v67 + 8))(v66, v70);
    return v49;
  }

  v74 = v204;
  if (v38 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v75 = *v37;
    v76 = v37 + *(sub_100058000(&unk_100793000, &unk_10063BD90) + 48);
    v206 = *(v202 + 32);
    (v206)(v198, v76, v203);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v77 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v78 = v195;
      v79 = &v195[v77[12]];
      v80 = v77[16];
      v81 = &v195[v77[20]];
      v82 = enum case for REMUserOperation.widgetShowList(_:);
      v83 = type metadata accessor for REMUserOperation();
      (*(*(v83 - 8) + 104))(v78, v82, v83);
      v84 = type metadata accessor for Date();
      *v79 = 0;
      *(v79 + 1) = 0;
      (*(*(v84 - 8) + 56))(&v78[v80], 1, 1, v84);
      *v81 = 0;
      *(v81 + 1) = 0;
      v86 = v196;
      v85 = v197;
      (*(v196 + 104))(v78, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v86 + 8))(v78, v85);
    }

    v87 = v205;
    v88 = v205[4];
    swift_getObjectType();
    v207 = v88;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchCustomSmartList(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v91 = v202;
    v90 = v203;
    v92 = *(v202 + 16);
    v204 = v75;
    v93 = v200;
    v94 = v198;
    v92(v200, v198, v203);
    v95 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v87;
    (v206)(v96 + v95, v93, v90);

    sub_100058000(&qword_10077FDF0, &qword_10063BE70);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v204;
    goto LABEL_12;
  }

  if (v38 == enum case for REMNavigationSpecifier.newList(_:))
  {
    (*(v34 + 96))(v37, v33);
    v99 = v192;
    v98 = v193;
    v100 = v194;
    (*(v193 + 32))(v192, v37, v194);
    v101 = sub_10000C36C(v205 + 6, v205[9]);
    __chkstk_darwin(v101);
    *(&v169 - 2) = v102;
    *(&v169 - 1) = v99;
    sub_100058000(&qword_10077FDF0, &qword_10063BE70);
    v49 = firstly<A>(closure:)();
    (*(v98 + 8))(v99, v100);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v34 + 96))(v37, v33);
    v103 = *v37;
    v104 = *(sub_100058000(&unk_10076DF50, &unk_100631A20) + 48);
    v105 = v189;
    v106 = v190;
    v206 = *(v189 + 32);
    (v206)(v190, v37 + v104, v191);
    v107 = v205;
    v108 = v205[4];
    swift_getObjectType();
    v207 = v108;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchReminder(for:)();
    swift_unknownObjectRelease();
    v109 = zalgoIfMain.getter();
    v110 = v188;
    v111 = v106;
    v112 = v191;
    (*(v105 + 16))(v188, v111, v191);
    v113 = (*(v105 + 80) + 24) & ~*(v105 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = v107;
    (v206)(v114 + v113, v110, v112);

    sub_100058000(&qword_10077FDF0, &qword_10063BE70);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v105 + 8))(v190, v112);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v116 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v116, v187);
    v117 = v205;
    v118 = v205[4];
    swift_getObjectType();
    v207 = v118;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v119 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v120 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    v204((v121 + v120), v119, v90);

    sub_100058000(&qword_10077FDF0, &qword_10063BE70);
LABEL_22:
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();
    v97 = v206;
LABEL_12:

    (*(v91 + 8))(v94, v90);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v34 + 96))(v37, v33);
    v206 = *v37;
    v122 = *(sub_100058000(&qword_100777A38, &qword_100637630) + 48);
    v91 = v186;
    v204 = *(v186 + 32);
    v94 = v185;
    v90 = v187;
    v204(v185, v37 + v122, v187);
    v123 = v205;
    v124 = v205[4];
    swift_getObjectType();
    v207 = v124;
    swift_unknownObjectRetain();
    dispatch thunk of TTRItemFetchingInteractorCapability.fetchSmartListSection(for:)();
    swift_unknownObjectRelease();
    v89 = zalgoIfMain.getter();
    v125 = v184;
    (*(v91 + 16))(v184, v94, v90);
    v126 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v123;
    v204((v127 + v126), v125, v90);

    sub_100058000(&qword_10077FDF0, &qword_10063BE70);
    goto LABEL_22;
  }

  v128 = v205;
  if (v38 == enum case for REMNavigationSpecifier.root(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    v49 = sub_1003929B4(0);
    (*(v34 + 8))(v37, v33);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.today(_:) || v38 == enum case for REMNavigationSpecifier.scheduled(_:) || v38 == enum case for REMNavigationSpecifier.allReminders(_:) || v38 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.search(_:))
  {
    (*(v34 + 96))(v37, v33);
    v129 = v180;
    v130 = *(v180 + 32);
    v131 = v182;
    v132 = v181;
    v130(v182, v37, v181);
    v133 = *sub_10000C36C(v128 + 6, v128[9]);
    v206 = sub_100391414(0);
    v134 = v179;
    (*(v129 + 16))(v179, v131, v132);
    v135 = (*(v129 + 80) + 16) & ~*(v129 + 80);
    v136 = swift_allocObject();
    v130((v136 + v135), v134, v132);
    *(v136 + ((v11 + v135 + 7) & 0xFFFFFFFFFFFFFFF8)) = v133;

    v137 = zalgo.getter();
    sub_100058000(&qword_10077FDF0, &qword_10063BE70);
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v129 + 8))(v182, v132);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.assigned(_:) || v38 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    goto LABEL_36;
  }

  if (v38 == enum case for REMNavigationSpecifier.tagged(_:))
  {
    (*(v34 + 96))(v37, v33);
    v138 = v177;
    v139 = v176;
    v140 = v37;
    v141 = v178;
    (*(v177 + 32))(v176, v140, v178);
    sub_10000C36C(v128 + 6, v128[9]);
    v49 = sub_10036ADCC(v139);
    (*(v138 + 8))(v139, v141);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.completed(_:))
  {
LABEL_36:
    (*(v34 + 8))(v37, v33);
    if ((v74 & 2) != 0)
    {
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v142 = sub_100058000(&qword_1007757E8, &unk_100635E60);
      v143 = v195;
      v144 = &v195[v142[12]];
      v145 = v142[16];
      v146 = &v195[v142[20]];
      v147 = enum case for REMUserOperation.widgetShowList(_:);
      v148 = type metadata accessor for REMUserOperation();
      (*(*(v148 - 8) + 104))(v143, v147, v148);
      v149 = type metadata accessor for Date();
      *v144 = 0;
      *(v144 + 1) = 0;
      (*(*(v149 - 8) + 56))(&v143[v145], 1, 1, v149);
      *v146 = 0;
      *(v146 + 1) = 0;
      v151 = v196;
      v150 = v197;
      (*(v196 + 104))(v143, enum case for REMAnalyticsEvent.userOperation(_:), v197);
      REMAnalyticsManager.post(event:)();

      (*(v151 + 8))(v143, v150);
    }

    sub_10000C36C(v128 + 6, v128[9]);
    return sub_100361F8C(v206, v74 & 1, sub_1003688C0, &qword_10077FDF8, &unk_10063BE80);
  }

  if (v38 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v34 + 96))(v37, v33);
    v152 = v174;
    v153 = v173;
    v154 = v175;
    (*(v174 + 32))(v173, v37, v175);
    v155 = sub_10000C36C(v128 + 6, v128[9]);
    v156 = v128[4];
    swift_getObjectType();
    v207 = v156;
    v157 = dispatch thunk of TTRItemFetchingInteractorCapability.store.getter();
    sub_10036C484(v153, v157, v128, *v155);

    v158 = objc_opt_self();
    v159 = String._bridgeToObjectiveC()();
    v160 = [v158 internalErrorWithDebugDescription:v159];

    sub_100058000(&qword_10077FDF8, &unk_10063BE80);
    swift_allocObject();
    v49 = Promise.init(error:)();
    (*(v152 + 8))(v153, v154);
    return v49;
  }

  if (v38 == enum case for REMNavigationSpecifier.newReminder(_:))
  {
    sub_10000C36C(v205 + 6, v205[9]);
    sub_100058000(&qword_10077FDF0, &qword_10063BE70);
    return firstly<A>(closure:)();
  }

  if (v38 == enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
  {
    v161 = type metadata accessor for TaskPriority();
    v162 = v172;
    (*(*(v161 - 8) + 56))(v172, 1, 1, v161);
    type metadata accessor for MainActor();
    v163 = v205;

    v164 = static MainActor.shared.getter();
    v165 = swift_allocObject();
    v165[2] = v164;
    v165[3] = &protocol witness table for MainActor;
    v165[4] = v163;
    sub_10009E31C(0, 0, v162, &unk_10063BE78, v165);

    v166 = objc_opt_self();
    v167 = String._bridgeToObjectiveC()();
    v168 = [v166 internalErrorWithDebugDescription:v167];

    sub_100058000(&qword_10077FDF8, &unk_10063BE80);
    swift_allocObject();
    return Promise.init(error:)();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003502B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100350348, v6, v5);
}

uint64_t sub_100350348()
{
  v0[2] = *(v0[3] + 96);
  v1 = swift_task_alloc();
  v0[7] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_100223E20;

  return TTRPrivacyChecker.checkAndPromptNotificationAndLocationAccessForRemindersInCalendar()(v2, &protocol witness table for TTRIPrivacyChecker);
}

void sub_1003503FC(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) != 0 || *(a3 + 161) == 1)
  {
    type metadata accessor for TTRIPrivacyChecker();
    TTRPrivacyChecker.showReminderDeletePrivacyWarningIfNeeded()();
    *(a3 + 161) = 0;
  }
}

void *sub_100350460(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v6);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v68 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v67 = &v64 - v13;
  __chkstk_darwin(v14);
  v16 = &v64 - v15;
  v17 = *sub_10000C36C(v2 + 6, v2[9]);
  if (sub_10001D354() >= 2u)
  {
    *v16 = a2 & 1;
    v16[1] = 0;
    v50 = enum case for REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier.revealSubtasks(_:);
    v51 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier();
    (*(*(v51 - 8) + 104))(v16, v50, v51);
    (*(v10 + 104))(v16, enum case for REMNavigationSpecifier.ReminderPathSpecifier.showInList(_:), v9);
    v52 = a1;
    v53 = [a1 list];
    v54 = [v53 objectID];

    v55 = [v54 description];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v57;
    *&v66 = v56;

    v68 = &v64;
    v59 = __chkstk_darwin(v58);
    *(&v64 - 2) = v52;
    v60 = v67;
    (*(v10 + 16))(v67, v16, v9, v59);
    v61 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v52;
    (*(v10 + 32))(v62 + v61, v60, v9);
    v63 = v52;
    sub_10035EB18(v66, v65, sub_10036BD30, (&v64 - 4), sub_10036BD38, v62);

    return (*(v10 + 8))(v16, v9);
  }

  else
  {
    v18 = a1;
    v67 = v9;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v20 = result;
      v21 = v8;
      v22 = v68;
      *v68 = a2 & 1;
      *(v22 + 1) = 1;
      v23 = enum case for REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier.revealSubtasks(_:);
      v24 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.ShowInListPathSpecifier();
      (*(*(v24 - 8) + 104))(v22, v23, v24);
      v25 = v10;
      (*(v10 + 104))(v22, enum case for REMNavigationSpecifier.ReminderPathSpecifier.showInList(_:), v67);
      v26 = v18;
      v27 = [v18 list];
      v28 = [v18 store];
      v29 = v6[5];
      v30 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      (*(*(v30 - 8) + 56))(&v21[v29], 1, 1, v30);
      v31 = *(v17 + 56);
      *v21 = v28;
      v32 = v6[6];
      v66 = *(v17 + 64);
      v33 = v66;
      *&v21[v32] = v31;
      *&v21[v6[7]] = v33;
      v21[v6[8]] = 0;
      type metadata accessor for TTRIShowRemindersInListAssembly();

      swift_unknownObjectRetain();
      v34 = v27;
      *&v66 = v21;
      v35 = v21;
      v36 = v34;
      v37 = sub_1005A9588(v69, v35, v27, v3, &off_100721110, 0);

      v38 = *sub_10000C36C(v69, v70);
      v39 = objc_allocWithZone(UINavigationController);

      v40 = [v39 initWithRootViewController:v37];
      v41 = [v40 navigationBar];
      [v41 setPrefersLargeTitles:1];

      v42 = [v40 presentationController];
      if (v42)
      {
        v43 = v42;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v44 = *(v38 + 24);
          ObjectType = swift_getObjectType();
          (*(v44 + 104))(v43, ObjectType, v44);
          swift_unknownObjectRelease();
        }

        *(v38 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_hasPreparedForModalPresentation) = 1;
      }

      [v20 presentViewController:v40 animated:1 completion:0];
      v46 = v70;
      v47 = v71;
      sub_10000C36C(v69, v70);
      v48 = v26;
      v49 = v68;
      (*(*(v47 + 8) + 56))(v48, v68, &type metadata for Any[8], &type metadata for Any[8], v46);

      sub_100079664(v66);
      (*(v25 + 8))(v49, v67);
      return sub_100004758(v69);
    }
  }

  return result;
}

void sub_100350B10(uint64_t a1, char a2)
{
  sub_10000C36C((v2 + 48), *(v2 + 72));
  if ((sub_10001D354() - 1) <= 1u)
  {
    sub_10000C36C((v2 + 48), *(v2 + 72));
    sub_100391414(1);
    v4 = swift_allocObject();
    *(v4 + 16) = a2 & 1;
    *(v4 + 24) = v2;

    v5 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
  }
}

uint64_t sub_100350CAC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100391414(0);
  v6 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v9 = zalgo.getter();
  v10 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v10;
}

uint64_t sub_100350E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v17[0] = a5;
  v17[1] = a6;
  v8 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100391414(0);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v14 = zalgo.getter();
  sub_100058000(a4, v17[0]);
  v15 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v15;
}

uint64_t sub_100351008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v39 = a2;
  v3 = sub_100058000(&unk_10076B870, &qword_10062FC08);
  __chkstk_darwin(v3 - 8);
  v38 = &v31 - v4;
  v5 = sub_100058000(&unk_10076B880, &unk_10063BDF0);
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v33 = &v31 - v6;
  v37 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMNavigationSpecifier.NewListPathSpecifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100058000(&qword_10077FDA8, &qword_10063F1B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v16 = type metadata accessor for TTRRemindersListListType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v15, 1, 1, v16);
  (*(v10 + 16))(v12, v39, v9);
  v19 = (*(v10 + 88))(v12, v9);
  v36 = v7;
  if (v19 == enum case for REMNavigationSpecifier.NewListPathSpecifier.list(_:))
  {
    v20 = &enum case for TTRRemindersListListType.standard(_:);
  }

  else if (v19 == enum case for REMNavigationSpecifier.NewListPathSpecifier.groceryList(_:))
  {
    v20 = &enum case for TTRRemindersListListType.groceries(_:);
  }

  else
  {
    if (v19 != enum case for REMNavigationSpecifier.NewListPathSpecifier.customSmartList(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v20 = &enum case for TTRRemindersListListType.smartList(_:);
  }

  sub_1000079B4(v15, &qword_10077FDA8, &qword_10063F1B0);
  (*(v10 + 96))(v12, v9);
  v22 = *v12;
  v21 = v12[1];
  (*(v17 + 104))(v15, *v20, v16);
  v18(v15, 0, 1, v16);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    v23 = v33;
    TTRAccountsListsViewModel.accountCollection.getter();

    v24 = v38;
    sub_100015E68(v38);
    (*(v34 + 8))(v23, v35);
    v26 = v36;
    v25 = v37;
    if ((*(v36 + 48))(v24, 1, v37) == 1)
    {
      sub_1000079B4(v24, &unk_10076B870, &qword_10062FC08);
    }

    else
    {
      v27 = v32;
      (*(v26 + 32))(v32, v24, v25);
      sub_100426520(v27, v22, v21, v15);
      (*(v26 + 8))(v27, v25);
    }

    swift_unknownObjectRelease();
  }

  v28 = objc_opt_self();
  v29 = String._bridgeToObjectiveC()();
  [v28 internalErrorWithDebugDescription:v29];

  swift_willThrow();
  return sub_1000079B4(v15, &qword_10077FDA8, &qword_10063F1B0);
}

uint64_t sub_100351584(uint64_t a1)
{
  sub_100391414(0);
  swift_allocObject();
  swift_weakInit();
  v1 = zalgo.getter();
  v2 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v2;
}

uint64_t sub_10035162C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  sub_100391414(0);
  swift_allocObject();
  swift_weakInit();
  v6 = zalgo.getter();
  sub_100058000(a2, a3);
  v7 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v7;
}

uint64_t sub_1003516E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 32);
    swift_unknownObjectRetain();

    sub_10000C36C((v3 + 112), *(v3 + 136));
    swift_getObjectType();
    v4 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
    v5 = sub_10036ED08(&unk_10078D530, type metadata accessor for TTRIAccountsListsPresenter, &unk_10063EFE0);
    sub_1002A4ADC(v4, v3, v5);
    swift_unknownObjectRelease();
  }

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  [v6 internalErrorWithDebugDescription:v7];

  return swift_willThrow();
}

uint64_t sub_10035182C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_10036E45C;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_100391414(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78, &unk_10063BDB0);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10078A340, &qword_10063C8B0);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0, &unk_10063C8A0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80, &unk_100648790);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0, &unk_10063C8A0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650, &unk_10063BD60);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0, &unk_10063C8A0);
  return v79;
}

uint64_t sub_10035245C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF0;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_1003917A8(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78, &unk_10063BDB0);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10077FD80, &unk_100648790);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0, &unk_10063C8A0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80, &unk_100648790);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0, &unk_10063C8A0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650, &unk_10063BD60);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  sub_100058000(&qword_100775650, &unk_10063BD60);
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0, &unk_10063C8A0);
  return v79;
}

uint64_t sub_10035309C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF0;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_100024898(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78, &unk_10063BDB0);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10077FDB8, &qword_10063BE10);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0, &unk_10063C8A0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80, &unk_100648790);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0, &unk_10063C8A0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650, &unk_10063BD60);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  sub_100058000(&qword_10077FDB0, &qword_10063BE00);
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0, &unk_10063C8A0);
  return v79;
}

uint64_t sub_100353CDC(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF0;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_100391B44(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78, &unk_10063BDB0);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10077FD98, &qword_10063BDD0);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0, &unk_10063C8A0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80, &unk_100648790);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0, &unk_10063C8A0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650, &unk_10063BD60);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  sub_100058000(&qword_10077FD70, &qword_10063BDA8);
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0, &unk_10063C8A0);
  return v79;
}

uint64_t sub_10035491C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF0;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_100391EE0(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78, &unk_10063BDB0);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10077FDC8, &unk_10063C910);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0, &unk_10063C8A0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80, &unk_100648790);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0, &unk_10063C8A0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650, &unk_10063BD60);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  sub_100058000(&qword_10077FDC0, &qword_10063BE28);
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0, &unk_10063C8A0);
  return v79;
}

uint64_t sub_10035555C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF0;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_10039227C(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78, &unk_10063BDB0);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10077FDD8, &qword_10063BE50);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0, &unk_10063C8A0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80, &unk_100648790);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0, &unk_10063C8A0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650, &unk_10063BD60);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  sub_100058000(&qword_10077FDD0, &qword_10063BE40);
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0, &unk_10063C8A0);
  return v79;
}

uint64_t sub_10035619C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF0;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_100392618(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78, &unk_10063BDB0);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10077FDE8, &unk_10063C920);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0, &unk_10063C8A0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80, &unk_100648790);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0, &unk_10063C8A0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650, &unk_10063BD60);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  sub_100058000(&qword_10077FDE0, &qword_10063BE58);
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0, &unk_10063C8A0);
  return v79;
}

uint64_t sub_100356DDC(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v87 = a4;
  v102 = a3;
  v91 = a2;
  v5 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v5 - 8);
  v83 = &v80 - v6;
  v86 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v7;
  __chkstk_darwin(v8);
  v84 = &v80 - v9;
  v89 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v89 - 1);
  v10 = *(v88 + 64);
  __chkstk_darwin(v89);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v80 - v13;
  v14 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v80 - v20;
  v22 = *(v15 + 16);
  v82 = a1;
  v22(&v80 - v20, a1, v14, v19);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v15 + 96))(v21, v14);
    v24 = v88;
    v90 = *(v88 + 32);
    v25 = v92;
    v26 = v21;
    v27 = v89;
    v90(v92, v26);
    swift_unknownObjectRetain();

    v91 = TTRModuleState.initialLoadPromise.getter();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v25;
    v30 = v27;
    (*(v24 + 16))(v11, v29, v27);
    v31 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v32 = swift_allocObject();
    v33 = v102;
    *(v32 + 16) = v28;
    *(v32 + 24) = v33;
    (v90)(v32 + v31, v11, v30);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF0;
    *(v34 + 24) = v32;
    v35 = v33;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v24 + 8))(v92, v30);
  }

  v40 = v87;
  v41 = v91;
  v42 = v102;
  if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v15 + 8))(v21, v14);
  }

  else
  {
    if (v23 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
    {
      return sub_1003929B4(0);
    }

    if (v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:) && v23 != enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_20;
    }
  }

  (v22)(v17, v82, v14);
  v44 = v83;
  REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
  v15 = v85;
  v14 = v86;
  if ((*(v85 + 48))(v44, 1, v86) == 1)
  {
    sub_1000079B4(v44, &qword_10077FD78, &unk_10063BDB0);
    v45 = objc_opt_self();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 internalErrorWithDebugDescription:v46];

    sub_100058000(&qword_10077FDF8, &unk_10063BE80);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v48 = *(v15 + 32);
  v92 = (v15 + 32);
  v89 = v48;
  (v48)(v84, v44, v14);
  v17 = v41;
  swift_beginAccess();
  sub_100010540((v41 + 96), &v95);
  if (v98)
  {
    sub_100015124(&v95);
    v49 = v42;
    goto LABEL_32;
  }

LABEL_20:
  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v50 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  v49 = v42;
  if (v50)
  {
    v51 = v50;
    v52 = [v50 objectID];
  }

  else
  {
    v52 = 0;
  }

  v53 = [v42 objectID];
  v54 = v53;
  if (v52)
  {
    if (v53)
    {
      sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
      v55 = static NSObject.== infix(_:_:)();

      if (v55)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    v54 = v52;
  }

  else if (!v53)
  {
    goto LABEL_42;
  }

LABEL_31:
  sub_100004758(v99);
LABEL_32:
  sub_100010540((v17 + 96), &v95);
  if (v98 != 2)
  {
    sub_100015124(&v95);
LABEL_46:
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    goto LABEL_47;
  }

  sub_100005FD0(&v95, v99);
  sub_10000C36C(v99, v100);
  swift_getObjectType();
  v56 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
  if (v56)
  {
    v57 = v56;
    v58 = [v56 objectID];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v49 objectID];
  v60 = v59;
  if (!v58)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

LABEL_44:

LABEL_45:
    sub_100004758(v99);
    goto LABEL_46;
  }

  if (!v59)
  {
    v60 = v58;
    goto LABEL_44;
  }

  sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
  v61 = static NSObject.== infix(_:_:)();

  if ((v61 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  v62 = v100;
  v63 = v101;
  v64 = sub_10000C36C(v99, v100);
  *(&v96 + 1) = v62;
  v97 = *(v63 + 8);
  v65 = sub_1000317B8(&v95);
  (*(*(v62 - 8) + 16))(v65, v64, v62);
  sub_100004758(v99);
LABEL_47:
  sub_10000794C(&v95, &v93, &unk_100792FE0, &unk_10063C8A0);
  if (v94)
  {
    sub_100005FD0(&v93, v99);
    v66 = v100;
    v67 = v101;
    v68 = sub_10000C36C(v99, v100);
    sub_1003982D4(v68, v17, v66, v67);
    sub_10000B0D8(v99, &v93);
    sub_100058000(&qword_10077FD80, &unk_100648790);
    swift_allocObject();
    Promise.init(value:)();
    sub_100004758(v99);
  }

  else
  {
    sub_1000079B4(&v93, &unk_100792FE0, &unk_10063C8A0);
    sub_100391414(0);
    v69 = swift_allocObject();
    *(v69 + 16) = v17;
    *(v69 + 24) = v49;
    *(v69 + 32) = v40 & 1;
    v70 = v49;

    v71 = zalgo.getter();
    sub_100058000(&qword_100775650, &unk_10063BD60);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  v72 = v81;
  v73 = v84;
  (*(v15 + 16))(v81, v84, v14);
  v74 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v75 = (v80 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (v89)(v76 + v74, v72, v14);
  *(v76 + v75) = v49;
  v77 = v49;

  v78 = zalgo.getter();
  sub_100058000(&qword_10077FDF0, &qword_10063BE70);
  v79 = dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v15 + 8))(v73, v14);
  sub_1000079B4(&v95, &unk_100792FE0, &unk_10063C8A0);
  return v79;
}

uint64_t sub_100357A1C(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_10036E730;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_100391414(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78, &unk_10063BDB0);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10078A340, &qword_10063C8B0);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650, &unk_10063BD60);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80, &unk_100648790);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100358510(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF8;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_1003917A8(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78, &unk_10063BDB0);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10077FD80, &unk_100648790);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650, &unk_10063BD60);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      sub_100058000(&qword_100775650, &unk_10063BD60);
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80, &unk_100648790);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100359014(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF8;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_100024898(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78, &unk_10063BDB0);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10077FDB8, &qword_10063BE10);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650, &unk_10063BD60);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      sub_100058000(&qword_10077FDB0, &qword_10063BE00);
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80, &unk_100648790);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100359B18(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF8;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_100391B44(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78, &unk_10063BDB0);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10077FD98, &qword_10063BDD0);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650, &unk_10063BD60);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      sub_100058000(&qword_10077FD70, &qword_10063BDA8);
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80, &unk_100648790);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10035A61C(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF8;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_100391EE0(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78, &unk_10063BDB0);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10077FDC8, &unk_10063C910);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650, &unk_10063BD60);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      sub_100058000(&qword_10077FDC0, &qword_10063BE28);
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80, &unk_100648790);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10035B120(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF8;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_10039227C(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78, &unk_10063BDB0);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10077FDD8, &qword_10063BE50);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650, &unk_10063BD60);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      sub_100058000(&qword_10077FDD0, &qword_10063BE40);
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80, &unk_100648790);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10035BC24(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF8;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_100392618(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78, &unk_10063BDB0);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10077FDE8, &unk_10063C920);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650, &unk_10063BD60);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      sub_100058000(&qword_10077FDE0, &qword_10063BE58);
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80, &unk_100648790);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10035C728(uint64_t a1, uint64_t a2, void *a3)
{
  v89 = a2;
  v90 = a3;
  v4 = sub_100058000(&qword_10077FD78, &unk_10063BDB0);
  __chkstk_darwin(v4 - 8);
  v83 = &v79 - v5;
  v85 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v6;
  __chkstk_darwin(v7);
  v84 = &v79 - v8;
  v9 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v88 = *(v9 - 8);
  v10 = *(v88 + 8);
  __chkstk_darwin(v9);
  v87 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v79 - v12;
  v13 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v79 - v19;
  v21 = *(v14 + 16);
  v82 = a1;
  v21(&v79 - v19, a1, v13, v18);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showDetail(_:))
  {
    (*(v14 + 96))(v20, v13);
    v23 = v88;
    v86 = *(v88 + 4);
    v24 = v98;
    (v86)(v98, v20, v9);
    swift_unknownObjectRetain();

    v89 = TTRModuleState.initialLoadPromise.getter();

    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v87;
    v27 = v24;
    v28 = v9;
    (*(v23 + 2))(v87, v27, v9);
    v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v30 = swift_allocObject();
    v31 = v90;
    *(v30 + 16) = v25;
    *(v30 + 24) = v31;
    v32 = v30 + v29;
    v33 = v28;
    (v86)(v32, v26, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_100371EF8;
    *(v34 + 24) = v30;
    v35 = v31;
    v36 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();

    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    [v37 internalErrorWithDebugDescription:v38];

    swift_willThrow();
    return (*(v23 + 1))(v98, v33);
  }

  v40 = v89;
  v41 = v90;
  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showEdits(_:))
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_9;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showInAccount(_:))
  {
    return sub_1003929B4(0);
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.newReminder(_:) || v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showSectionlessSection(_:))
  {
LABEL_9:
    (v21)(v16, v82, v13);
    v43 = v83;
    REMNavigationSpecifier.CommonListPathSpecifier.init(listPathSpecifier:)();
    v44 = v86;
    v45 = v85;
    if ((*(v86 + 48))(v43, 1, v85) == 1)
    {
      sub_1000079B4(v43, &qword_10077FD78, &unk_10063BDB0);
      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v46 internalErrorWithDebugDescription:v47];

      sub_100058000(&qword_10077FDF8, &unk_10063BE80);
      swift_allocObject();
      return Promise.init(error:)();
    }

    v49 = *(v44 + 32);
    v49(v84, v43, v45);
    v50 = v40;
    swift_beginAccess();
    sub_100010540(v40 + 96, &v91);
    v98 = (v44 + 32);
    v88 = v49;
    if (v94 != 1)
    {
      sub_100015124(&v91);
      v52 = v41;
LABEL_34:
      sub_100391414(0);
      v67 = swift_allocObject();
      *(v67 + 16) = v50;
      *(v67 + 24) = v52;
      v68 = v52;

      v69 = zalgo.getter();
      sub_100058000(&qword_100775650, &unk_10063BD60);
      dispatch thunk of Promise.then<A>(on:closure:)();

LABEL_35:
      v70 = v86;
      v71 = v81;
      v72 = v84;
      (*(v86 + 16))(v81, v84, v45);
      v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v74 = (v80 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
      v75 = swift_allocObject();
      v88((v75 + v73), v71, v45);
      *(v75 + v74) = v52;
      v76 = v52;
      v77 = zalgo.getter();
      sub_100058000(&qword_10077FDF0, &qword_10063BE70);
      v78 = dispatch thunk of Promise.then<A>(on:closure:)();

      (*(v70 + 8))(v72, v45);
      return v78;
    }

    sub_100005FD0(&v91, v95);
    sub_10000C36C(v95, v96);
    swift_getObjectType();
    v51 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    v52 = v41;
    if (v51)
    {
      v53 = v51;
      v54 = [v51 objectID];
    }

    else
    {
      v54 = 0;
    }

    v57 = [v41 objectID];
    v58 = v57;
    if (v54)
    {
      if (v57)
      {
        sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        v59 = static NSObject.== infix(_:_:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        [*sub_10000C36C(v95 v96)];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = Strong;
          sub_1002FB7EC(1);
          v62 = sub_100341598();
          sub_10001A06C(v62);
        }

        v63 = v96;
        v64 = v97;
        v65 = sub_10000C36C(v95, v96);
        v92 = v63;
        v93 = *(v64 + 8);
        v66 = sub_1000317B8(&v91);
        (*(*(v63 - 8) + 16))(v66, v65, v63);
        sub_100058000(&qword_10077FD80, &unk_100648790);
        swift_allocObject();
        Promise.init(value:)();

        sub_100004758(v95);
        goto LABEL_35;
      }

      v58 = v54;
    }

    else if (!v57)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100004758(v95);
    goto LABEL_34;
  }

  if (v22 == enum case for REMNavigationSpecifier.ListPathSpecifier.showManageSharedList(_:))
  {
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveC()();
    [v55 internalErrorWithDebugDescription:v56];

    return swift_willThrow();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10035D22C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v19[0] = a4;
  v19[1] = a5;
  v8 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = a1[3];
  v12 = a1[4];
  sub_10000C36C(a1, v11);
  (*(v12 + 8))(v11, v12);
  (*(v9 + 16))(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v15 = a3;
  v16 = zalgo.getter();
  v17 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v17;
}

uint64_t sub_10035D3E0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v23 = a4;
  v24 = a5;
  v10 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  sub_10000C36C(a1, v14);
  (*(v15 + 8))(v14, v15);
  (*(v11 + 16))(v13, a2, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v13, v10);
  *(v18 + v17) = a3;
  v19 = a3;
  v20 = zalgo.getter();
  sub_100058000(v24, v25);
  v21 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v21;
}

uint64_t sub_10035D59C(void *a1, uint64_t a2, void *a3)
{
  v21 = a3;
  v22 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a2, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  v14 = enum case for REMNavigationSpecifier.CommonListPathSpecifier.showSectionlessSection(_:);
  (*(v9 + 8))(v12, v8);
  v15 = a1[3];
  v16 = a1[4];
  sub_10000C36C(a1, v15);
  if (v13 != v14)
  {
    return (*(v16 + 88))(a2, &type metadata for Any[8], &type metadata for Any[8], v15, v16);
  }

  v17 = [v21 objectID];
  v18 = v22;
  (*(v5 + 104))(v7, enum case for REMNavigationSpecifier.SectionPathSpecifier.showExpanded(_:), v22);
  v19 = (*(v16 + 80))(v17, v7, &type metadata for Any[8], &type metadata for Any[8], v15, v16);

  (*(v5 + 8))(v7, v18);
  return v19;
}

uint64_t sub_10035D840(void *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = type metadata accessor for REMNavigationSpecifier.SectionPathSpecifier();
  v28 = *(v9 - 8);
  v29 = v9;
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMNavigationSpecifier.CommonListPathSpecifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(a4, a5);
  v17 = *(v13 + 16);
  v26 = a2;
  v17(v15, a2, v12);
  LODWORD(a2) = (*(v13 + 88))(v15, v12);
  v18 = enum case for REMNavigationSpecifier.CommonListPathSpecifier.showSectionlessSection(_:);
  (*(v13 + 8))(v15, v12);
  v19 = a1[3];
  v20 = a1[4];
  sub_10000C36C(a1, v19);
  if (a2 != v18)
  {
    return (*(v20 + 88))(v26, v16, v16, v19, v20);
  }

  v21 = [v27 objectID];
  v23 = v28;
  v22 = v29;
  (*(v28 + 104))(v11, enum case for REMNavigationSpecifier.SectionPathSpecifier.showExpanded(_:), v29);
  v24 = (*(v20 + 80))(v21, v11, v16, v16, v19, v20);

  (*(v23 + 8))(v11, v22);
  return v24;
}

uint64_t sub_10035DAEC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035EB18(v10, v12, sub_100371EFC, v19, sub_100371F3C, v14);

  return v16;
}

uint64_t sub_10035DCE0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035ED90(v10, v12, sub_100371EFC, v19, sub_10036FF30, v14);

  return v16;
}

uint64_t sub_10035DED4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F004(v10, v12, sub_100371EFC, v19, sub_10036F31C, v14);

  return v16;
}

uint64_t sub_10035E0C8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F28C(v10, v12, sub_100371EFC, v19, sub_10036FAA0, v14);

  return v16;
}

uint64_t sub_10035E2BC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F514(v10, v12, sub_100371EFC, v19, sub_1003703DC, v14);

  return v16;
}

uint64_t sub_10035E4B0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035F79C(v10, v12, sub_100371EFC, v19, sub_1003708D0, v14);

  return v16;
}

uint64_t sub_10035E6A4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035FA24(v10, v12, sub_100371EFC, v19, sub_100370D60, v14);

  return v16;
}

uint64_t sub_10035E898(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [a1 list];
  v8 = [v7 objectID];

  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v20 = a1;
  (*(v5 + 16))(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v5 + 32))(v14 + v13, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v15 = a1;
  v16 = sub_10035FCAC(v10, v12, sub_100371EFC, v19, sub_1003715D8, v14);

  return v16;
}

uint64_t sub_10035EA8C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = sub_100058000(a4, a5);
  v9 = a1[3];
  v10 = a1[4];
  sub_10000C36C(a1, v9);
  return (*(v10 + 56))(a2, a3, v8, v8, v9, v10);
}

uint64_t sub_10035EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10001D354();
  if (v9)
  {
    swift_beginAccess();
    sub_100010540(v6 + 96, v21);
    sub_10000E224(&v19);
    sub_100015124(v21);
    if (v20)
    {
      sub_100005FD0(&v19, v22);
      v10 = v23;
      v11 = v24;
      sub_10000C36C(v22, v23);
      if (((*(v11 + 24))(v10, v11) & 1) == 0)
      {
        v16 = objc_opt_self();
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 internalErrorWithDebugDescription:v17];

        sub_100058000(&qword_10078A340, &qword_10063C8B0);
        swift_allocObject();
        v14 = Promise.init(error:)();
        sub_100004758(v22);
        return v14;
      }

      v9 = sub_100004758(v22);
    }

    else
    {
      v9 = sub_1000079B4(&v19, &unk_100792FE0, &unk_10063C8A0);
    }
  }

  __chkstk_darwin(v9);
  sub_100058000(&qword_100775650, &unk_10063BD60);
  firstly<A>(closure:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = zalgo.getter();
  v14 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v14;
}

uint64_t sub_10035ED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10001D354();
  if (v9)
  {
    swift_beginAccess();
    sub_100010540(v6 + 96, v21);
    sub_10000E224(&v19);
    sub_100015124(v21);
    if (v20)
    {
      sub_100005FD0(&v19, v22);
      v10 = v23;
      v11 = v24;
      sub_10000C36C(v22, v23);
      if (((*(v11 + 24))(v10, v11) & 1) == 0)
      {
        v16 = objc_opt_self();
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 internalErrorWithDebugDescription:v17];

        sub_100058000(&qword_10077FD80, &unk_100648790);
        swift_allocObject();
        v14 = Promise.init(error:)();
        sub_100004758(v22);
        return v14;
      }

      v9 = sub_100004758(v22);
    }

    else
    {
      v9 = sub_1000079B4(&v19, &unk_100792FE0, &unk_10063C8A0);
    }
  }

  __chkstk_darwin(v9);
  sub_100058000(&qword_100775650, &unk_10063BD60);
  firstly<A>(closure:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = zalgo.getter();
  v14 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v14;
}