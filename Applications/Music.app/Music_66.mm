void sub_1007501D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a1;
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v24 - v7;
  __chkstk_darwin();
  v10 = v24 - v9;
  type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  __chkstk_darwin();
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v24 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_storeEnumTagMultiPayload();
    v17 = sub_100761518(a2, v14);
    sub_100761B84(v14, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
    if ((v17 & 1) == 0)
    {
      sub_1007630D8(a2, v12, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        UICellConfigurationState.isFocused.getter();
        v24[0] = v24;
        __chkstk_darwin();
        LOBYTE(v24[-2]) = v18 & 1;
        v25[3] = sub_10010FC20(&qword_1011A1008, &qword_100EE07F0);
        v25[4] = sub_100020674(&qword_1011A1010, &qword_1011A1008, &qword_100EE07F0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
        sub_10001C8B8(v25);
        sub_10010FC20(&qword_1011A1018, &qword_100EE07F8);
        sub_100764A9C(&qword_1011A1020, &qword_1011A1018, &qword_100EE07F8, sub_100763574);
        UIHostingConfiguration<>.init(content:)();
        UICollectionViewCell.contentConfiguration.setter();
      }

      else
      {
        sub_100761B84(v12, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      }

      if (UICellConfigurationState.isFocused.getter())
      {
        UICollectionViewCell.backgroundConfiguration.getter();
        v19 = type metadata accessor for UIBackgroundConfiguration();
        if ((*(*(v19 - 8) + 48))(v10, 1, v19))
        {
          sub_1000089F8(v10, v8, &qword_1011888C0, &qword_100EC2FA0);
          UICollectionViewCell.backgroundConfiguration.setter();

          v20 = v10;
LABEL_11:
          sub_1000095E8(v20, &qword_1011888C0, &qword_100EC2FA0);
          return;
        }

        v22 = [objc_opt_self() tintColor];
        UIBackgroundConfiguration.backgroundColor.setter();
      }

      else
      {
        UICollectionViewCell.backgroundConfiguration.getter();
        v21 = type metadata accessor for UIBackgroundConfiguration();
        if ((*(*(v21 - 8) + 48))(v6, 1, v21))
        {
          sub_1000089F8(v6, v8, &qword_1011888C0, &qword_100EC2FA0);
          UICollectionViewCell.backgroundConfiguration.setter();

          v20 = v6;
          goto LABEL_11;
        }

        v23 = [objc_opt_self() tableCellPlainBackgroundColor];
        UIBackgroundConfiguration.backgroundColor.setter();
      }

      UICollectionViewCell.backgroundConfiguration.setter();
    }
  }
}

void sub_100750688(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *, uint64_t), uint64_t a5)
{
  v31 = a2;
  sub_10010FC20(&qword_1011A0F78, &qword_100EE0740);
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  v32 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IndexPath();
  v33 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v27 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v30 = a5;
    v28 = a4;
    v20 = sub_10074B480();
    v29 = a1;
    v21 = [v20 indexPathForCell:a1];

    if (v21)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = v33;
      (*(v33 + 32))(v17, v15, v13);
      v23 = *&v19[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
      if (v23)
      {
        v24 = v23;
        dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

        v25 = (*(v32 + 48))(v9, 1, v10);
        v26 = v29;
        if (v25 == 1)
        {
          (*(v22 + 8))(v17, v13);

          sub_1000095E8(v9, &qword_1011A0F78, &qword_100EE0740);
        }

        else
        {
          sub_100763140(v9, v12, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
          v28(v26, v12, v31);

          sub_100761B84(v12, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
          (*(v22 + 8))(v17, v13);
        }
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
}

unint64_t sub_1007509D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_10010FC20(&qword_1011A0F90, &unk_100EE0750);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(UICollectionViewCell) init];
  }

  v11 = result;
  v12 = *(result + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource);
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v14 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v7 + 8))(v9, v6);
  result = IndexPath.safeSection.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v14 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = v14 + 16 * result;
  v17 = *(v15 + 32);
  v16 = *(v15 + 40);

  if (v17 == 0x7069636974726170 && v16 == 0xEC00000073746E61)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {

      return [objc_allocWithZone(UICollectionViewCell) init];
    }
  }

  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v20 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();

  return v20;
}

void sub_100750C08(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (Strong[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_preferredWidth + 8])
    {
      v3 = Strong;
      v4 = sub_10074B480();
      [v4 contentSize];
      v7 = v6;
    }

    else
    {
      v7 = *&Strong[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_preferredWidth];
      v8 = Strong;
      v4 = sub_10074B480();
      [v4 contentSize];
    }

    v9 = v5;

    [v2 setPreferredContentSize:{v7, v9}];
  }
}

void sub_100750CDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100752B70(0);
  }
}

double sub_100750D7C()
{
  v1 = v0;
  v58 = sub_10010FC20(&qword_101183A40, &qword_100EBF468);
  v56 = *(v58 - 8);
  __chkstk_darwin();
  v54 = &v49 - v2;
  v59 = sub_10010FC20(&qword_101183A48, &qword_100EBF470);
  v57 = *(v59 - 8);
  __chkstk_darwin();
  v55 = &v49 - v3;
  v4 = sub_10010FC20(&qword_1011A0FC0, &unk_100EE0778);
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin();
  v60 = &v49 - v5;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v66 = &v49 - v6;
  v7 = sub_10010FC20(&unk_101183B90, &unk_100EBD478);
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin();
  v9 = &v49 - v8;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10010E5A8(_swiftEmptyArrayStorage);
    v10 = v48;
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v11 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_observables;
  swift_beginAccess();
  *(v1 + v11) = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v63 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session;
  v13 = *(v1 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  type metadata accessor for SharePlayTogetherSession(0);
  sub_100763090(&unk_101189E70, type metadata accessor for SharePlayTogetherSession, &protocol conformance descriptor for SharePlayTogetherSession);
  v14 = v13;
  v15 = ObservableObject<>.objectWillChange.getter();

  v67 = v15;
  v16 = sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v68 = v17;
  v18 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = v66;
  v51 = v18;
  v50 = v20;
  v49 = v19 + 56;
  (v20)(v66, 1, 1);
  type metadata accessor for ObservableObjectPublisher();
  v22 = sub_1000206BC();
  v53 = v16;
  v52 = v22;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v21, &qword_101182140, &unk_100EBD2A0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&qword_101183BA0, &unk_101183B90, &unk_100EBD478, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v23 = v65;
  Publisher<>.sink(receiveValue:)();

  (*(v64 + 8))(v9, v23);
  v24 = v12;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v25 = v63;
  v26 = *(v1 + v63);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  *(v28 + 24) = v27;
  v29 = *((swift_isaMask & *v26) + 0x360);
  v30 = v26;

  v29(sub_1007631B8, v28);

  v31 = *(v1 + v25);
  v32 = *((swift_isaMask & *v31) + 0x110);
  v33 = v31;
  LOBYTE(v27) = v32();

  if (v27)
  {
    v34 = v24;
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v35 = qword_101218AC8;
    v36 = (*(*qword_101218AC8 + 720))(0, 0);
    v37 = v54;
    (*(*v35 + 552))(v36);
    v38 = static OS_dispatch_queue.main.getter();
    v67 = v38;
    v39 = v66;
    v50(v66, 1, 1, v51);
    sub_100020674(&unk_101183A50, &qword_101183A40, &qword_100EBF468, &protocol conformance descriptor for Published<A>.Publisher);
    v40 = v55;
    v41 = v58;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v39, &qword_101182140, &unk_100EBD2A0);

    (*(v56 + 8))(v37, v41);
    sub_100020674(&qword_101183A60, &qword_101183A48, &qword_100EBF470, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v42 = v59;
    v43 = v60;
    Publisher.dropFirst(_:)();
    (*(v57 + 8))(v40, v42);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = v34;
    sub_100020674(&qword_1011A0FC8, &qword_1011A0FC0, &unk_100EE0778, &protocol conformance descriptor for Publishers.Drop<A>);

    v46 = v62;
    Publisher<>.sink(receiveValue:)();

    (*(v61 + 8))(v43, v46);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_100751704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  aBlock[4] = sub_1007631D0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010BD818;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100763090(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v15);
}

void sub_100751A08(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v19[-v7];
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + 16);
  v9 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v10 = *(v4 + 16);
  if (a1)
  {
    v10(v6, v9, v3);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "[SharePlayTogetherSessionManagementViewcontroller] Session ended observer called, but we have a pending session. Not dismissing.", v13, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10(v8, v9, v3);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[SharePlayTogetherSessionManagementViewcontroller] Session ended observer called, dismissing.", v16, 2u);
    }

    (*(v4 + 8))(v8, v3);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_100751C84(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (v9)
    {
      v26 = a3;
      v12 = *&Strong[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session];
      v13 = *((swift_isaMask & *v9) + 0x378);
      v14 = v9;
      v15 = v12;
      LOBYTE(v12) = v13();

      if (v12)
      {
        v16 = Logger.sharePlayTogether.unsafeMutableAddressor();
        (*(v6 + 16))(v8, v16, v5);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "[SharePlayTogetherSessionManagementViewcontroller] Got new equivalent session, waiting for connection.", v19, 2u);
        }

        (*(v6 + 8))(v8, v5);
        v20 = v26;
        swift_beginAccess();
        *(v20 + 16) = 1;
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v22 + 24) = v14;
        v23 = *((swift_isaMask & *v14) + 0x358);
        v24 = v14;

        v23(sub_1007631C8, v22);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_100751F8C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = Logger.sharePlayTogether.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v7, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "[SharePlayTogetherSessionManagementViewcontroller] New session connected, updating.", v10, 2u);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
    *(Strong + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session) = a2;
    v14 = a2;

    sub_100752B70(1);
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    sub_100750D7C();
  }
}

void sub_100752164(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  objc_msgSendSuper2(&v11, "viewIsAppearing:", a1 & 1);
  v3 = sub_10074B480();
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor:v5];

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 clearColor];
    [v7 setBackgroundColor:v8];

    v9 = [v1 traitCollection];
    v10 = [v9 userInterfaceIdiom];

    if (v10 != 3)
    {
      [v1 setOverrideUserInterfaceStyle:2];
    }

    sub_100752B70(0);
  }

  else
  {
    __break(1u);
  }
}

void sub_10075237C()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 safeAreaLayoutGuide];

    [v3 layoutFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = &v0[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastSeenSafeAreaLayoutFrame];
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    if (!CGRectEqualToRect(v18, *&v0[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastSeenSafeAreaLayoutFrame]))
    {
      *v12 = v5;
      v12[1] = v7;
      v12[2] = v9;
      v12[3] = v11;
      v13 = sub_10074B480();
      [v13 setFrame:{v5, v7, v9, v11}];

      v14 = [v0 traitCollection];
      v15 = [v14 userInterfaceIdiom];

      if (v15 == 3)
      {
        v16 = [*&v0[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView] collectionViewLayout];
        [v16 invalidateLayout];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1007525E8()
{
  sub_10010FC20(&unk_1011A0FB0, &unk_100EE0768);
  __chkstk_darwin();
  v33 = &v31 - v1;
  v34 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  __chkstk_darwin();
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v5 = &v31 - v4;
  v6 = type metadata accessor for IndexPath();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin();
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v8 = *(v31 - 8);
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v31 - v11;
  __chkstk_darwin();
  v14 = &v31 - v13;
  v37 = v0;
  v15 = *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  v16 = *((swift_isaMask & *v15) + 0x180);
  v17 = v15;
  v18 = v16();

  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_6:

    return;
  }

  v20 = 0;
  while (1)
  {
    if (v20 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    sub_1007630D8(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v10, type metadata accessor for SharePlayTogetherSession.Participant);
    if (v10[32])
    {
      break;
    }

    ++v20;
    sub_100761B84(v10, type metadata accessor for SharePlayTogetherSession.Participant);
    if (v19 == v20)
    {
      goto LABEL_6;
    }
  }

  sub_100763140(v10, v12, type metadata accessor for SharePlayTogetherSession.Participant);
  sub_100763140(v12, v14, type metadata accessor for SharePlayTogetherSession.Participant);
  v21 = v37;
  v22 = *(v37 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource);
  if (!v22)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1007630D8(v14, v3, type metadata accessor for SharePlayTogetherSession.Participant);
  swift_storeEnumTagMultiPayload();
  v23 = v22;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  sub_100761B84(v3, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  v25 = v35;
  v24 = v36;
  if ((*(v35 + 48))(v5, 1, v36) == 1)
  {
    sub_100761B84(v14, type metadata accessor for SharePlayTogetherSession.Participant);
    sub_1000095E8(v5, &unk_10118BCE0, &qword_100EC6450);
  }

  else
  {
    v26 = v32;
    (*(v25 + 32))(v32, v5, v24);
    v27 = v33;
    sub_1007630D8(v14, v33, type metadata accessor for SharePlayTogetherSession.Participant);
    (*(v8 + 56))(v27, 0, 1, v31);
    v28 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastPendingParticipantScrolledTo;
    swift_beginAccess();
    sub_10006B010(v27, v21 + v28, &unk_1011A0FB0, &unk_100EE0768);
    swift_endAccess();
    v29 = sub_10074B480();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v29 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

    (*(v25 + 8))(v26, v24);
    sub_100761B84(v14, type metadata accessor for SharePlayTogetherSession.Participant);
  }
}

void sub_100752B70(int a1)
{
  v2 = v1;
  v62 = a1;
  v3 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
  __chkstk_darwin();
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  v66 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011A0F90, &unk_100EE0750);
  v61 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v59 - v10;
  sub_100763090(&qword_1011A0F98, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier, &unk_100EE06EC);
  v64 = v11;
  v65 = v6;
  NSDiffableDataSourceSnapshot.init()();
  v63 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session;
  v12 = *&v2[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session];
  v13 = &swift_isaMask;
  v14 = *((swift_isaMask & *v12) + 0x180);
  v15 = v12;
  v16 = v14();

  swift_unknownObjectWeakInit();
  v17 = *(v16 + 16);
  if (v17)
  {
    v59 = v2;
    v60 = v9;
    v72 = _swiftEmptyArrayStorage;
    v68 = v17;
    sub_10066CF1C(0, v17, 0);
    v18 = 0;
    v69 = v72;
    *&v67 = v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v19 = v66;
    while (v18 < *(v16 + 16))
    {
      v20 = v16;
      v21 = v13;
      sub_1007630D8(v67 + *(v3 + 72) * v18, v5, type metadata accessor for SharePlayTogetherSession.Participant);
      sub_1007535E8(v5, &v70, v8);
      sub_100761B84(v5, type metadata accessor for SharePlayTogetherSession.Participant);
      v22 = v69;
      v72 = v69;
      v24 = v69[2];
      v23 = v69[3];
      if (v24 >= v23 >> 1)
      {
        sub_10066CF1C((v23 > 1), v24 + 1, 1);
        v19 = v66;
        v22 = v72;
      }

      ++v18;
      v22[2] = v24 + 1;
      v25 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v69 = v22;
      sub_100763140(v8, v22 + v25 + *(v19 + 72) * v24, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      v13 = v21;
      v16 = v20;
      if (v68 == v18)
      {

        v2 = v59;
        v9 = v60;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v69 = _swiftEmptyArrayStorage;
LABEL_9:
  swift_unknownObjectWeakDestroy();
  v26 = [v2 traitCollection];
  v27 = [v26 userInterfaceIdiom];

  v28 = v64;
  if (v27 == 3)
  {
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109C2C0);
    v29 = *&v2[v63];
    v5 = v28;
    v30 = *((*v13 & *v29) + 0x180);
    v31 = v29;
    v32 = v30();

    v33 = *(v32 + 16);

    if (v33)
    {
      NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109C2F0);
      v70 = 0;
      v71 = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }

    sub_10010FC20(&qword_1011A0FA0, &qword_100EDB410);
    v34 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    *(swift_allocObject() + 16) = xmmword_100EBC6B0;
    swift_storeEnumTagMultiPayload();
    v70 = 0;
    v71 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109C320);
    sub_10010FC20(&qword_1011A0FA0, &qword_100EDB410);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100EBC6B0;
    *(v55 + v34) = MRGroupSessionNearbyContactDiscoveryEnabled();
    swift_storeEnumTagMultiPayload();
    v70 = 0;
    v71 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v28 = v5;
  }

  else
  {
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109C350);
    v35 = sub_10010FC20(&qword_1011A0FA0, &qword_100EDB410);
    v36 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v66 = *(v66 + 72);
    v68 = v35;
    v37 = swift_allocObject();
    v67 = xmmword_100EBC6B0;
    *(v37 + 16) = xmmword_100EBC6B0;
    v5 = v65;
    swift_storeEnumTagMultiPayload();
    v70 = 0;
    v71 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v38 = v63;
    v39 = *&v2[v63];
    v40 = *((*v13 & *v39) + 0x1B0);
    v41 = v39;
    v42 = v40();

    if (v42 >= 1)
    {
      v43 = swift_allocObject();
      *(v43 + 16) = v67;
      v44 = *&v2[v38];
      v45 = v2;
      v46 = *((swift_isaMask & *v44) + 0x1B0);
      v47 = v44;
      v48 = v46();
      v2 = v45;
      v28 = v64;
      v49 = v48;

      *(v43 + v36) = v49;
      swift_storeEnumTagMultiPayload();
      v70 = 0;
      v71 = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }

    v70 = 0;
    v71 = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109C380);
    v50 = *&v2[v38];
    v51 = *((swift_isaMask & *v50) + 0x110);
    v52 = v50;
    v53 = v51();

    if ((v53 & 1) == 0)
    {
      *(swift_allocObject() + 16) = v67;
      swift_storeEnumTagMultiPayload();
      v70 = 0;
      v71 = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }

    if (*(*&v2[v38] + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost) == 1)
    {
      v54 = swift_allocObject();
      *(v54 + 16) = v67;
      *(v54 + v36) = MRGroupSessionNearbyContactDiscoveryEnabled();
      swift_storeEnumTagMultiPayload();
      v70 = 0;
      v71 = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }
  }

  v56 = *&v2[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
  if (v62)
  {
    if (v56)
    {
      v57 = v56;

      dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();

      (*(v61 + 8))(v28, v9);
      return;
    }

    goto LABEL_25;
  }

  if (v56)
  {
    v58 = v56;

    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v61 + 8))(v28, v9);

    return;
  }

LABEL_26:
  __break(1u);
  sub_100761B84(v5, type metadata accessor for SharePlayTogetherSession.Participant);

  __break(1u);
}

uint64_t sub_1007535E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011A0FA8, &qword_100EE0760);
  __chkstk_darwin();
  v10 = &v39 - v9;
  sub_10010FC20(&unk_1011A0FB0, &unk_100EE0768);
  __chkstk_darwin();
  v44 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v39 - v12;
  __chkstk_darwin();
  v14 = &v39 - v13;
  __chkstk_darwin();
  v16 = &v39 - v15;
  v47 = a1;
  sub_1007630D8(a1, &v39 - v15, type metadata accessor for SharePlayTogetherSession.Participant);
  v17 = *(v6 + 56);
  v17(v16, 0, 1, v5);
  swift_beginAccess();
  v46 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  v43 = v6 + 56;
  v45 = v17;
  if (Strong)
  {
    v19 = Strong;
    v20 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastPendingParticipantScrolledTo;
    swift_beginAccess();
    sub_1000089F8(v19 + v20, v14, &unk_1011A0FB0, &unk_100EE0768);
  }

  else
  {
    (v17)(_TtC5Music13AuthPresenter.vtable, v14, 1, 1, v5);
  }

  v21 = *(v8 + 48);
  sub_1000089F8(v16, v10, &unk_1011A0FB0, &unk_100EE0768);
  sub_1000089F8(v14, &v10[v21], &unk_1011A0FB0, &unk_100EE0768);
  v22 = *(v6 + 48);
  if (v22(v10, 1, v5) != 1)
  {
    v27 = v42;
    sub_1000089F8(v10, v42, &unk_1011A0FB0, &unk_100EE0768);
    v40 = v5;
    if (v22(&v10[v21], 1, v5) != 1)
    {
      v32 = v41;
      sub_100763140(&v10[v21], v41, type metadata accessor for SharePlayTogetherSession.Participant);
      v33 = static SharePlayTogetherSession.Participant.__derived_struct_equals(_:_:)(v27, v32);
      sub_100761B84(v32, type metadata accessor for SharePlayTogetherSession.Participant);
      sub_1000095E8(v14, &unk_1011A0FB0, &unk_100EE0768);
      sub_1000095E8(v16, &unk_1011A0FB0, &unk_100EE0768);
      sub_100761B84(v27, type metadata accessor for SharePlayTogetherSession.Participant);
      sub_1000095E8(v10, &unk_1011A0FB0, &unk_100EE0768);
      v26 = v47;
      v23 = v40;
      v25 = v45;
      if ((v33 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1000095E8(v14, &unk_1011A0FB0, &unk_100EE0768);
    sub_1000095E8(v16, &unk_1011A0FB0, &unk_100EE0768);
    sub_100761B84(v27, type metadata accessor for SharePlayTogetherSession.Participant);
    v23 = v40;
    v25 = v45;
LABEL_9:
    sub_1000095E8(v10, &qword_1011A0FA8, &qword_100EE0760);
    v26 = v47;
    goto LABEL_10;
  }

  sub_1000095E8(v14, &unk_1011A0FB0, &unk_100EE0768);
  v23 = v5;
  sub_1000095E8(v16, &unk_1011A0FB0, &unk_100EE0768);
  v24 = v22(&v10[v21], 1, v5);
  v25 = v45;
  if (v24 != 1)
  {
    goto LABEL_9;
  }

  sub_1000095E8(v10, &unk_1011A0FB0, &unk_100EE0768);
  v26 = v47;
LABEL_13:
  if (*(v26 + 32))
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    v37 = v44;
    v25(v44, 1, 1, v23);
    v38 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastPendingParticipantScrolledTo;
    swift_beginAccess();
    sub_10006B010(v37, v36 + v38, &unk_1011A0FB0, &unk_100EE0768);
    swift_endAccess();
  }

LABEL_10:
  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    v30 = v44;
    v25(v44, 1, 1, v23);
    v31 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastPendingParticipantScrolledTo;
    swift_beginAccess();
    sub_10006B010(v30, v29 + v31, &unk_1011A0FB0, &unk_100EE0768);
    swift_endAccess();
  }

LABEL_14:
  sub_1007630D8(v26, v48, type metadata accessor for SharePlayTogetherSession.Participant);
  type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_100753C48(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_viewDidAppearOnce) == 1)
    {
      sub_1007525E8();
    }
  }
}

void sub_100753CB0()
{
  v1 = [v0 presentedViewController];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

    goto LABEL_14;
  }

  v4 = [v3 viewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_10004056C(0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v10 = v6;

  type metadata accessor for QRCodeOverlayViewController();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    (*((swift_isaMask & *v7) + 0x1D8))();

    goto LABEL_17;
  }

LABEL_14:
  v8 = [v0 presentedViewController];
  if (!v8)
  {
    return;
  }

  v10 = v8;
  type metadata accessor for QRCodeOverlayViewController();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    (*((swift_isaMask & *v9) + 0x1D8))();
  }

LABEL_17:
}

id sub_100753F1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharePlayTogetherSessionManagementViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10075404C(uint64_t a1)
{
  sub_1007645AC(319, &qword_1011A0EB0, type metadata accessor for SharePlayTogetherSession.Participant, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100754274(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  sub_10010FC20(&qword_1011A0F78, &qword_100EE0740);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = *&v2[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
  if (v9)
  {
    v10 = v9;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v11 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
    if ((*(*(v11 - 8) + 48))(v8, 1, v11) != 1)
    {
      sub_1000089F8(v8, v6, &qword_1011A0F78, &qword_100EE0740);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 4)
      {
        v13 = *&v3[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session];
        v14 = *((swift_isaMask & *v13) + 0x258);
        v15 = v13;
        v14(&v25);
        v16 = *(&v25 + 1);
        v17 = v26;
        v18 = v27;

        if (!v18)
        {
          sub_1000095E8(v8, &qword_1011A0F78, &qword_100EE0740);
          return;
        }

        v29 = v25;
        v30 = v26;
        v31 = v18;
        v32 = v28;
        sub_10002BC44(v16, v17);
        v19 = v18;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v20 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
        v21 = QRCodeOverlayViewController.init(qrCode:title:subtitle:)(&v29);
        v22 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v21];

        [v22 setModalPresentationStyle:5];
        [v3 presentViewController:v22 animated:0 completion:0];

        sub_1000095E8(&v25, &unk_1011A0F80, &qword_100EE0748);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        MRSetGroupSessionNearbyContactDiscoveryEnabled();
        sub_100752B70(0);
      }

      else
      {
        sub_100761B84(v6, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      }
    }

    sub_1000095E8(v8, &qword_1011A0F78, &qword_100EE0740);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100754784(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  sub_100762EB8(v9);
  LOBYTE(a1) = v12;

  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

uint64_t sub_1007548A4(uint64_t a1)
{
  result = type metadata accessor for SharePlayTogetherSession.Participant(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_100754960@<Q0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011A10D0, &qword_100EE08E8);
  __chkstk_darwin();
  v3 = v9 - v2;
  *v3 = static HorizontalAlignment.center.getter();
  *(v3 + 1) = 0x4000000000000000;
  v3[16] = 0;
  v4 = sub_10010FC20(&qword_1011A10F0, &qword_100EE0900);
  sub_100754AB0(&v3[*(v4 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v3, a1, &qword_1011A10D0, &qword_100EE08E8);
  v5 = a1 + *(sub_10010FC20(&qword_1011A10B8, &qword_100EE08E0) + 36);
  v6 = v9[5];
  *(v5 + 64) = v9[4];
  *(v5 + 80) = v6;
  *(v5 + 96) = v9[6];
  v7 = v9[1];
  *v5 = v9[0];
  *(v5 + 16) = v7;
  result = v9[3];
  *(v5 + 32) = v9[2];
  *(v5 + 48) = result;
  return result;
}

uint64_t sub_100754AB0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v1 = sub_10010FC20(&qword_1011A10F8, &unk_100EE0908) - 8;
  __chkstk_darwin();
  v53 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v51 - v3;
  v5 = Image.init(systemName:)();
  v6 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v61 = v5;
  v62 = KeyPath;
  v63 = v6;
  static Font.Weight.semibold.getter();
  sub_10010FC20(&unk_1011A1100, &unk_100ED3F40);
  sub_100238768();
  View.fontWeight(_:)();

  v8 = *(sub_10010FC20(&qword_1011A1110, &qword_100EE0918) + 36);
  v52 = v4;
  v9 = (v4 + v8);
  v10 = *(sub_10010FC20(&unk_1011A1118, &qword_100EE0920) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v11 = type metadata accessor for SymbolRenderingMode();
  (*(*(v11 - 8) + 56))(v9 + v10, 0, 1, v11);
  *v9 = swift_getKeyPath();
  LOBYTE(v9) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v12 = v4 + *(v1 + 44);
  *v12 = v9;
  *(v12 + 8) = v13;
  *(v12 + 16) = v14;
  *(v12 + 24) = v15;
  *(v12 + 32) = v16;
  *(v12 + 40) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v61 = String.init(localized:table:bundle:locale:comment:)();
  v62 = v17;
  sub_100009838();
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.body.getter();
  v23 = Text.font(_:)();
  v25 = v24;
  LOBYTE(v4) = v26;

  sub_10011895C(v18, v20, v22 & 1);

  static Font.Weight.bold.getter();
  v27 = Text.fontWeight(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011895C(v23, v25, v4 & 1);

  LOBYTE(v23) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v31 & 1;
  LOBYTE(v61) = v31 & 1;
  LOBYTE(v57) = 0;
  v43 = v52;
  v44 = v53;
  sub_1000089F8(v52, v53, &qword_1011A10F8, &unk_100EE0908);
  v45 = v54;
  sub_1000089F8(v44, v54, &qword_1011A10F8, &unk_100EE0908);
  v46 = (v45 + *(sub_10010FC20(&unk_1011A1128, qword_100EE0958) + 48));
  *&v57 = v27;
  *(&v57 + 1) = v29;
  LOBYTE(v58) = v42;
  *(&v58 + 1) = *v56;
  DWORD1(v58) = *&v56[3];
  *(&v58 + 1) = v33;
  LOBYTE(v59) = v23;
  *(&v59 + 1) = *v55;
  DWORD1(v59) = *&v55[3];
  *(&v59 + 1) = v35;
  *v60 = v37;
  *&v60[8] = v39;
  *&v60[16] = v41;
  v60[24] = 0;
  v47 = v57;
  v48 = v58;
  *(v46 + 57) = *&v60[9];
  v49 = *v60;
  v46[2] = v59;
  v46[3] = v49;
  *v46 = v47;
  v46[1] = v48;
  sub_1000089F8(&v57, &v61, &qword_10117FF50, &qword_100ED7890);
  sub_1000095E8(v43, &qword_1011A10F8, &unk_100EE0908);
  v61 = v27;
  v62 = v29;
  LOBYTE(v63) = v42;
  *(&v63 + 1) = *v56;
  HIDWORD(v63) = *&v56[3];
  v64 = v33;
  v65 = v23;
  *v66 = *v55;
  *&v66[3] = *&v55[3];
  v67 = v35;
  v68 = v37;
  v69 = v39;
  v70 = v41;
  v71 = 0;
  sub_1000095E8(&v61, &qword_10117FF50, &qword_100ED7890);
  return sub_1000095E8(v44, &qword_1011A10F8, &unk_100EE0908);
}

double sub_100755040@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  *a4 = v7;
  v8 = v7;
  State.init(wrappedValue:)();
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  v9 = type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v10 = *(v9 + 28);
  *(a4 + v10) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;

  return result;
}

double sub_100755104@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  type metadata accessor for SharePlayTogetherSession(0);
  sub_100763090(&unk_101189E70, type metadata accessor for SharePlayTogetherSession, &protocol conformance descriptor for SharePlayTogetherSession);
  v10 = v9;
  *a5 = ObservedObject.init(wrappedValue:)();
  *(a5 + 8) = v11;
  *(a5 + 16) = a2;
  v12 = type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView(0);
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  v13 = *(v12 + 28);
  *(a5 + v13) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;

  return result;
}

id sub_10075520C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v11 = *(a1 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  v8 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  sub_1007630D8(a2, a4 + v8[5], type metadata accessor for SharePlayTogetherSession.Participant);
  v9 = v8[7];
  *(a4 + v9) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  *a4 = v11;
  *(a4 + v8[6]) = a3;

  return v11;
}

uint64_t sub_1007552DC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = sub_10010FC20(&unk_1011A1030, &unk_100EE0800) - 8;
  __chkstk_darwin();
  v4 = &v19 - v3;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for MainActor();
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  Toggle<>.init(_:isOn:)();
  v9 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v11 = &v4[*(v2 + 44)];
  *v11 = KeyPath;
  v11[1] = v9;
  if (v20)
  {
    v12 = [objc_opt_self() _carSystemFocusPrimaryColor];
    v13 = Color.init(uiColor:)();
  }

  else
  {
    v13 = static Color.primary.getter();
  }

  v14 = v13;
  v15 = swift_getKeyPath();
  v16 = v21;
  sub_10003D17C(v4, v21, &unk_1011A1030, &unk_100EE0800);
  result = sub_10010FC20(&qword_1011A1018, &qword_100EE07F8);
  v18 = (v16 + *(result + 36));
  *v18 = v15;
  v18[1] = v14;
  return result;
}

uint64_t sub_100755504@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v49 = a2;
  v50 = a3;
  v63 = a4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011A1688, &qword_100EE0F38);
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin();
  v51 = &v48 - v8;
  v55 = sub_10010FC20(&qword_1011A1690, &qword_100EE0F40);
  __chkstk_darwin();
  v57 = &v48 - v9;
  v60 = sub_10010FC20(&qword_1011A1698, &qword_100EE0F48);
  v58 = *(v60 - 8);
  __chkstk_darwin();
  v54 = &v48 - v10;
  sub_10010FC20(&qword_1011A16A0, &qword_100EE0F50);
  __chkstk_darwin();
  v61 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v48 - v12;
  v62 = static HorizontalAlignment.center.getter();
  v69 = 0;
  sub_100755F00(&v65);
  v84 = *&v66[64];
  v85 = *&v66[80];
  v86[0] = *&v66[96];
  *(v86 + 9) = *&v66[105];
  v81 = *&v66[16];
  v82 = *&v66[32];
  v83 = *&v66[48];
  v79 = v65;
  v80 = *v66;
  v87[5] = *&v66[64];
  v87[6] = *&v66[80];
  v88[0] = *&v66[96];
  *(v88 + 9) = *&v66[105];
  v87[2] = *&v66[16];
  v87[3] = *&v66[32];
  v87[4] = *&v66[48];
  v87[0] = v65;
  v87[1] = *v66;
  sub_1000089F8(&v79, v64, &qword_1011A16A8, &qword_100EE0F58);
  sub_1000095E8(v87, &qword_1011A16A8, &qword_100EE0F58);
  *(&v68[5] + 7) = v84;
  *(&v68[6] + 7) = v85;
  *(&v68[7] + 7) = v86[0];
  v68[8] = *(v86 + 9);
  *(&v68[1] + 7) = v80;
  *(&v68[2] + 7) = v81;
  *(&v68[3] + 7) = v82;
  *(&v68[4] + 7) = v83;
  *(v68 + 7) = v79;
  v59 = v69;
  static Alignment.center.getter();
  v14 = 1;
  v15 = _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v16 = swift_isaMask & *a1;
  *(&v70[6] + 7) = *&v70[21];
  *(&v70[8] + 7) = *&v70[23];
  *(&v70[10] + 7) = *&v70[25];
  *(&v70[12] + 7) = *&v70[27];
  *(v70 + 7) = *&v70[15];
  *(&v70[2] + 7) = *&v70[17];
  *(&v70[4] + 7) = *&v70[19];
  (*(v16 + 600))(&v71, v15);
  if (v73)
  {
    v75 = v71;
    v76 = v72;
    v77 = v73;
    v78 = v74;
    v17 = swift_allocObject();
    v18 = v49;
    v19 = v50;
    v17[2] = a1;
    v17[3] = v18;
    v17[4] = v19;
    __chkstk_darwin();
    v20 = a1;
    sub_100030444(v18, v19);
    sub_10010FC20(&qword_1011A16C0, &qword_100EE0F70);
    sub_100765540();
    v21 = v51;
    Button.init(action:label:)();
    KeyPath = swift_getKeyPath();
    v50 = KeyPath;
    v23 = static Color.primary.getter();
    v49 = v23;
    v24 = [objc_opt_self() systemBackgroundColor];
    v25 = Color.init(_:)();
    v26 = static Color.accentColor.getter();
    *&v65 = KeyPath;
    BYTE8(v65) = 0;
    *v66 = v23;
    *&v66[8] = v25;
    *&v66[16] = 0;
    *&v66[24] = v26;
    sub_100020674(&qword_1011A16E0, &qword_1011A1688, &qword_100EE0F38, &protocol conformance descriptor for Button<A>);
    sub_100764EF4();
    v27 = v57;
    v28 = v53;
    View.buttonStyle<A>(_:)();

    (*(v52 + 8))(v21, v28);
    v29 = v27;
    v30 = &v27[*(v55 + 36)];
    v31 = *(type metadata accessor for RoundedRectangle() + 20);
    v32 = enum case for RoundedCornerStyle.continuous(_:);
    v33 = type metadata accessor for RoundedCornerStyle();
    (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
    __asm { FMOV            V0.2D, #8.0 }

    *v30 = _Q0;
    *&v30[*(sub_10010FC20(&qword_101185680, &qword_100EC1010) + 36)] = 256;
    sub_10010FC20(&unk_101181640, &qword_100EBD090);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100EBC6B0;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *(v39 + 32) = String.init(localized:table:bundle:locale:comment:)();
    *(v39 + 40) = v40;
    sub_1007655F8();
    sub_100009838();
    v41 = v54;
    View.accessibilityInputLabels<A>(_:)();
    sub_1000095E8(&v71, &unk_1011A0F80, &qword_100EE0748);

    sub_1000095E8(v29, &qword_1011A1690, &qword_100EE0F40);
    sub_10003D17C(v41, v13, &qword_1011A1698, &qword_100EE0F48);
    v14 = 0;
  }

  (*(v58 + 56))(v13, v14, 1, v60);
  v42 = v61;
  sub_1000089F8(v13, v61, &qword_1011A16A0, &qword_100EE0F50);
  *(&v64[12] + 1) = v68[5];
  *(&v64[14] + 1) = v68[6];
  *(&v64[16] + 1) = v68[7];
  *(&v64[18] + 1) = v68[8];
  *(&v64[4] + 1) = v68[1];
  *(&v64[6] + 1) = v68[2];
  *(&v64[8] + 1) = v68[3];
  *(&v64[10] + 1) = v68[4];
  *(&v64[2] + 1) = v68[0];
  *(&v64[32] + 1) = *&v70[12];
  *(&v64[28] + 1) = *&v70[8];
  *(&v64[30] + 1) = *&v70[10];
  *(&v64[20] + 1) = *v70;
  *(&v64[22] + 1) = *&v70[2];
  *(&v64[24] + 1) = *&v70[4];
  v44 = v62;
  v43 = v63;
  v64[0] = v62;
  v64[1] = 0x4014000000000000;
  v45 = v59;
  LOBYTE(v64[2]) = v59;
  v64[34] = *(&v70[13] + 7);
  *(&v64[26] + 1) = *&v70[6];
  memcpy(v63, v64, 0x118uLL);
  v46 = sub_10010FC20(&qword_1011A16B0, &qword_100EE0F60);
  sub_1000089F8(v42, v43 + *(v46 + 48), &qword_1011A16A0, &qword_100EE0F50);
  sub_1000089F8(v64, &v65, &qword_1011A16B8, &qword_100EE0F68);
  sub_1000095E8(v13, &qword_1011A16A0, &qword_100EE0F50);
  sub_1000095E8(v42, &qword_1011A16A0, &qword_100EE0F50);
  *&v66[81] = v68[5];
  *&v66[97] = v68[6];
  *&v66[113] = v68[7];
  *&v66[129] = v68[8];
  *&v66[17] = v68[1];
  *&v66[33] = v68[2];
  *&v66[49] = v68[3];
  *&v66[65] = v68[4];
  *&v66[1] = v68[0];
  *v67 = *&v70[12];
  *&v66[209] = *&v70[8];
  *&v66[225] = *&v70[10];
  *&v66[145] = *v70;
  *&v66[161] = *&v70[2];
  *&v66[177] = *&v70[4];
  *&v65 = v44;
  *(&v65 + 1) = 0x4014000000000000;
  v66[0] = v45;
  *&v67[15] = *(&v70[13] + 7);
  *&v66[193] = *&v70[6];
  return sub_1000095E8(&v65, &qword_1011A16B8, &qword_100EE0F68);
}

uint64_t sub_100755F00@<X0>(_OWORD *a1@<X8>)
{
  v65 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v63 = &v57[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v62 = &v57[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *&v77 = String.init(localized:table:bundle:locale:comment:)();
  *(&v77 + 1) = v3;
  v64 = sub_100009838();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.footnote.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10011895C(v4, v6, v8 & 1);

  static Font.Weight.semibold.getter();
  v14 = Text.fontWeight(_:)();
  v16 = v15;
  v18 = v17;
  sub_10011895C(v9, v11, v13 & 1);

  static Color.primary.getter();
  v19 = Text.foregroundColor(_:)();
  v59 = v20;
  v60 = v19;
  LOBYTE(v11) = v21;
  v61 = v22;

  sub_10011895C(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v58 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v66 = v11 & 1;
  LOBYTE(v77) = v11 & 1;
  LOBYTE(v82[0]) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *&v77 = String.init(localized:table:bundle:locale:comment:)();
  *(&v77 + 1) = v31;
  v32 = Text.init<A>(_:)();
  v34 = v33;
  LOBYTE(v16) = v35;
  static Font.caption.getter();
  v36 = Text.font(_:)();
  v38 = v37;
  v40 = v39;

  sub_10011895C(v32, v34, v16 & 1);

  static Color.primary.getter();
  v41 = Text.foregroundColor(_:)();
  v43 = v42;
  LODWORD(v64) = v44;
  v46 = v45;

  sub_10011895C(v36, v38, v40 & 1);

  v47 = swift_getKeyPath();
  v49 = v59;
  v48 = v60;
  *&v72 = v60;
  *(&v72 + 1) = v59;
  LOBYTE(v73) = v66;
  *(&v73 + 1) = *v71;
  DWORD1(v73) = *&v71[3];
  v50 = v61;
  *(&v73 + 1) = v61;
  *&v74 = KeyPath;
  BYTE8(v74) = 1;
  *(&v74 + 9) = *v70;
  HIDWORD(v74) = *&v70[3];
  LOBYTE(v16) = v58;
  LOBYTE(v75) = v58;
  DWORD1(v75) = *&v69[3];
  *(&v75 + 1) = *v69;
  *(&v75 + 1) = v24;
  *&v76[0] = v26;
  *(&v76[0] + 1) = v28;
  *&v76[1] = v30;
  BYTE8(v76[1]) = 0;
  v77 = v72;
  v78 = v73;
  *(v81 + 9) = *(v76 + 9);
  v80 = v75;
  v81[0] = v76[0];
  v79 = v74;
  LOBYTE(v38) = v64 & 1;
  v68 = v64 & 1;
  v51 = v73;
  v52 = v65;
  *v65 = v72;
  v52[1] = v51;
  v53 = v79;
  v54 = v80;
  v55 = v81[1];
  v52[4] = v81[0];
  v52[5] = v55;
  v52[2] = v53;
  v52[3] = v54;
  *(v52 + 12) = v41;
  *(v52 + 13) = v43;
  *(v52 + 112) = v38;
  *(v52 + 15) = v46;
  *(v52 + 16) = v47;
  *(v52 + 136) = 1;
  sub_1000089F8(&v72, v82, qword_1011A16F8, &unk_100EE0FB0);
  sub_10021D0C0(v41, v43, v38);

  sub_10011895C(v41, v43, v38);

  v82[0] = v48;
  v82[1] = v49;
  v83 = v66;
  *v84 = *v71;
  *&v84[3] = *&v71[3];
  v85 = v50;
  v86 = KeyPath;
  v87 = 1;
  *v88 = *v70;
  *&v88[3] = *&v70[3];
  v89 = v16;
  *&v90[3] = *&v69[3];
  *v90 = *v69;
  v91 = v24;
  v92 = v26;
  v93 = v28;
  v94 = v30;
  v95 = 0;
  return sub_1000095E8(v82, qword_1011A16F8, &unk_100EE0FB0);
}

__n128 sub_100756450@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = static VerticalAlignment.center.getter();
  v6 = *(a1 + 24);
  v7 = QRCodeOverlayViewController.ImageViewRepresentable.init(image:)();
  v9 = v8;
  v11 = v10;
  v12 = v6;
  LOBYTE(v6) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LOBYTE(v23) = v9 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v22[23] = v24;
  *&v22[7] = v23;
  *&v22[39] = v25;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9 & 1;
  *(a2 + 40) = v11;
  *(a2 + 48) = v6;
  *(a2 + 56) = v14;
  *(a2 + 64) = v16;
  *(a2 + 72) = v18;
  *(a2 + 80) = v20;
  *(a2 + 88) = 0;
  *(a2 + 105) = *&v22[16];
  result = *&v22[32];
  *(a2 + 121) = *&v22[32];
  *(a2 + 89) = *v22;
  *(a2 + 136) = *(&v25 + 1);
  return result;
}

uint64_t sub_10075657C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v7 = sub_10010FC20(&qword_1011A1680, &qword_100EE0F30);
  return sub_100755504(v4, v5, v6, (a1 + *(v7 + 44)));
}

__n128 sub_1007565E8@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_10010FC20(&qword_1011A1568, &qword_100EE0E68);
  __chkstk_darwin();
  v5 = v37 - v4;
  v6 = sub_10010FC20(&qword_1011A1570, &qword_100EE0E70);
  __chkstk_darwin();
  v8 = v37 - v7;
  v9 = sub_10010FC20(&qword_1011A1578, &qword_100EE0E78);
  __chkstk_darwin();
  v11 = v37 - v10;
  if (qword_10117FCA8 != -1)
  {
    swift_once();
  }

  v12 = qword_101219510;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = v12;
  v5[16] = 0;
  v13 = sub_10010FC20(&qword_1011A1580, &qword_100EE0E80);
  sub_100756970(v2, &v5[*(v13 + 44)]);
  LOBYTE(v12) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10003D17C(v5, v8, &qword_1011A1568, &qword_100EE0E68);
  v22 = &v8[*(v6 + 36)];
  *v22 = v12;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10003D17C(v8, v11, &qword_1011A1570, &qword_100EE0E70);
  v32 = &v11[*(v9 + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v11, a1, &qword_1011A1578, &qword_100EE0E78);
  v33 = a1 + *(sub_10010FC20(&qword_1011A1588, &qword_100EE0E88) + 36);
  v34 = v37[5];
  *(v33 + 64) = v37[4];
  *(v33 + 80) = v34;
  *(v33 + 96) = v37[6];
  v35 = v37[1];
  *v33 = v37[0];
  *(v33 + 16) = v35;
  result = v37[3];
  *(v33 + 32) = v37[2];
  *(v33 + 48) = result;
  return result;
}

uint64_t sub_100756970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView(0);
  v5 = *(v4 - 8);
  v55 = v4;
  v56 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = type metadata accessor for DynamicTypeSize();
  v57 = *(v7 - 8);
  v58 = v7;
  __chkstk_darwin();
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011A1590, &qword_100EE0E90);
  __chkstk_darwin();
  v11 = &v51 - v10;
  v12 = sub_10010FC20(&qword_1011A1598, &qword_100EE0E98);
  __chkstk_darwin();
  v59 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v51 - v14;
  __chkstk_darwin();
  v17 = &v51 - v16;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v18 = sub_10010FC20(&qword_1011A15A0, &qword_100EE0EA0);
  sub_100757048(a1, &v11[*(v18 + 44)]);
  if (*(a1 + 16) != 1)
  {
    if (qword_10117FCB0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (qword_10117FCB8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_5:
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003D17C(v11, v15, &qword_1011A1590, &qword_100EE0E90);
  v19 = &v15[*(v12 + 36)];
  v20 = v79[1];
  *v19 = v79[0];
  *(v19 + 1) = v20;
  *(v19 + 2) = v79[2];
  v54 = v17;
  sub_10003D17C(v15, v17, &qword_1011A1598, &qword_100EE0E98);
  v55 = *(v55 + 28);
  sub_10056CABC(v9);
  v53 = DynamicTypeSize.isAccessibilitySize.getter();
  v21 = v58;
  v22 = *(v57 + 8);
  v22(v9, v58);
  v23 = static Alignment.leading.getter();
  v52 = v24;
  sub_1007630D8(a1, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView);
  v25 = *(v56 + 80);
  v57 = a1;
  v26 = (v25 + 16) & ~v25;
  v27 = swift_allocObject();
  sub_100763140(&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView);
  sub_10010FC20(&qword_1011A15A8, &qword_100EE0EA8);
  sub_100020674(&qword_1011A15B0, &qword_1011A15A8, &qword_100EE0EA8, &protocol conformance descriptor for TupleView<A>);
  AxisStack.init(axis:alignment:spacing:content:)(v53 & 1, v23, v52, 0, 1, sub_100764FC8, v27, &v80);
  v28 = static Edge.Set.bottom.getter();
  sub_10056CABC(v9);
  DynamicTypeSize.isAccessibilitySize.getter();
  v22(v9, v21);
  Axis.rawValue.getter();
  Axis.rawValue.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v77 = 0;
  sub_10056CABC(v9);
  DynamicTypeSize.isAccessibilitySize.getter();
  v22(v9, v21);
  LODWORD(v23) = Axis.rawValue.getter();
  v37 = Axis.rawValue.getter();
  v38 = v23 == v37;
  v39 = v23 != v37;
  v40 = v38;
  v41 = v54;
  v42 = v59;
  sub_1000089F8(v54, v59, &qword_1011A1598, &qword_100EE0E98);
  v43 = v60;
  sub_1000089F8(v42, v60, &qword_1011A1598, &qword_100EE0E98);
  v44 = sub_10010FC20(&qword_1011A15B8, &qword_100EE0EB0);
  v45 = v43 + *(v44 + 48);
  *&v64 = v83;
  v61 = v80;
  v62 = v81;
  v63 = v82;
  BYTE8(v64) = v28;
  HIDWORD(v64) = *&v78[3];
  *(&v64 + 9) = *v78;
  *&v65 = v30;
  *(&v65 + 1) = v32;
  *&v66 = v34;
  *(&v66 + 1) = v36;
  v67 = 0;
  *(v45 + 96) = 0;
  v46 = v66;
  *(v45 + 64) = v65;
  *(v45 + 80) = v46;
  v47 = v62;
  *v45 = v61;
  *(v45 + 16) = v47;
  v48 = v64;
  *(v45 + 32) = v63;
  *(v45 + 48) = v48;
  v49 = v43 + *(v44 + 64);
  *v49 = 0;
  *(v49 + 8) = v40;
  *(v49 + 9) = v39;
  sub_1000089F8(&v61, v68, &qword_1011A15C0, &qword_100EE0EB8);
  sub_1000095E8(v41, &qword_1011A1598, &qword_100EE0E98);
  v68[0] = v80;
  v68[1] = v81;
  v68[2] = v82;
  v69 = v83;
  v70 = v28;
  *v71 = *v78;
  *&v71[3] = *&v78[3];
  v72 = v30;
  v73 = v32;
  v74 = v34;
  v75 = v36;
  v76 = 0;
  sub_1000095E8(v68, &qword_1011A15C0, &qword_100EE0EB8);
  return sub_1000095E8(v42, &qword_1011A1598, &qword_100EE0E98);
}

uint64_t sub_100757048@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v40 = sub_10010FC20(&qword_1011A1440, &unk_100ECAF00);
  __chkstk_darwin();
  v4 = v35 - v3;
  v5 = type metadata accessor for Image.Scale();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_101198DF0, &unk_100ED7950);
  __chkstk_darwin();
  v11 = (v35 - v10);
  v39 = sub_10010FC20(&unk_1011A1660, &qword_100EE0F20);
  v36 = *(v39 - 8);
  __chkstk_darwin();
  v38 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v37 = v35 - v14;
  if (*(a1 + 16))
  {
    v15 = &enum case for Image.Scale.medium(_:);
  }

  else
  {
    (*((swift_isaMask & **(a1 + 8)) + 0x150))(v13);
    v15 = &enum case for Image.Scale.large(_:);
  }

  v16 = Image.init(_internalSystemName:)();
  v17 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  (*(v6 + 104))(v8, *v15, v5);
  v19 = swift_getKeyPath();
  v20 = *(v9 + 36);
  v35[1] = v9;
  v21 = (v11 + v20);
  v22 = sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0);
  (*(v6 + 32))(v21 + *(v22 + 28), v8, v5);
  *v21 = v19;
  *v11 = v16;
  v11[1] = KeyPath;
  v11[2] = v17;
  v23 = enum case for DynamicTypeSize.large(_:);
  v24 = type metadata accessor for DynamicTypeSize();
  (*(*(v24 - 8) + 104))(v4, v23, v24);
  sub_100763090(&qword_1011A1490, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_10061686C();
    sub_100020674(&qword_1011A14A0, &qword_1011A1440, &unk_100ECAF00, &protocol conformance descriptor for PartialRangeThrough<A>);
    v26 = v37;
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v4, &qword_1011A1440, &unk_100ECAF00);
    sub_1000095E8(v11, &qword_101198DF0, &unk_100ED7950);
    v27 = v36;
    v28 = *(v36 + 16);
    v30 = v38;
    v29 = v39;
    v28(v38, v26, v39);
    v31 = v41;
    *v41 = 0;
    *(v31 + 8) = 1;
    v32 = sub_10010FC20(&qword_1011A1678, &qword_100EE0F28);
    v28(v31 + *(v32 + 48), v30, v29);
    v33 = v31 + *(v32 + 64);
    *v33 = 0;
    v33[8] = 1;
    v34 = *(v27 + 8);
    v34(v26, v29);
    return (v34)(v30, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100757548@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v132 = a2;
  v125 = sub_10010FC20(&qword_1011A15C8, &qword_100EE0EC0);
  __chkstk_darwin();
  v124 = &v100 - v3;
  v112 = type metadata accessor for Capsule();
  __chkstk_darwin();
  v110 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin();
  v109 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView(0) - 8);
  v6 = *(v113 + 64);
  __chkstk_darwin();
  v114 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011A15D0, &qword_100EE0EC8);
  v115 = *(v7 - 8);
  v116 = v7;
  __chkstk_darwin();
  v126 = &v100 - v8;
  v9 = sub_10010FC20(&qword_1011A15D8, &qword_100EE0ED0);
  v118 = *(v9 - 8);
  v119 = v9;
  __chkstk_darwin();
  v117 = &v100 - v10;
  v11 = sub_10010FC20(&qword_1011A15E0, &qword_100EE0ED8);
  v121 = *(v11 - 8);
  v122 = v11;
  __chkstk_darwin();
  v107 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v100 - v13;
  v123 = sub_10010FC20(&qword_1011A15E8, &qword_100EE0EE0);
  __chkstk_darwin();
  v104 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v100 - v15;
  __chkstk_darwin();
  v103 = &v100 - v16;
  __chkstk_darwin();
  v108 = &v100 - v17;
  v130 = sub_10010FC20(&qword_1011A15F0, &qword_100EE0EE8);
  v128 = *(v130 - 8);
  __chkstk_darwin();
  v120 = &v100 - v18;
  sub_10010FC20(&qword_1011A15F8, &qword_100EE0EF0);
  __chkstk_darwin();
  v133 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v100 - v20;
  v22 = type metadata accessor for DynamicTypeSize();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = (&v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = static HorizontalAlignment.leading.getter();
  v26 = 1;
  LOBYTE(v137) = 1;
  sub_1007585D4(a1, v143);
  *&v142[7] = v143[0];
  *&v142[23] = v143[1];
  *&v142[39] = v143[2];
  *&v142[55] = v143[3];
  v129 = v137;
  sub_10056CABC(v25);
  DynamicTypeSize.isAccessibilitySize.getter();
  (*(v23 + 8))(v25, v22);
  v27 = Axis.rawValue.getter();
  v28 = Axis.rawValue.getter();
  v134 = static Color.accentColor.getter();
  v127 = a1;
  v29 = *(a1 + 8);
  if ((*((swift_isaMask & *v29) + 0x268))())
  {
    v101 = v28;
    v102 = v27;
    v100 = v21;
    v30 = (*((swift_isaMask & *v29) + 0x118))();
    v31 = v114;
    sub_1007630D8(v127, v114, type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView);
    v32 = (*(v113 + 80) + 16) & ~*(v113 + 80);
    if (v30)
    {
      v33 = swift_allocObject();
      sub_100763140(v31, v33 + v32, type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView);
      sub_10010FC20(&qword_1011A1610, &unk_100EE0F08);
      sub_100765254();
      Button.init(action:label:)();
      KeyPath = swift_getKeyPath();
      v114 = KeyPath;
      v35 = static Color.white.getter();
      v36 = [objc_opt_self() _carSystemFocusPrimaryColor];
      v37 = Color.init(_:)();
      v38 = static Color.red.getter();
      v137 = KeyPath;
      LOBYTE(v138) = 0;
      *v139 = v35;
      *&v139[8] = v37;
      *&v139[16] = v38;
      *&v139[24] = v134;
      v39 = sub_100020674(&qword_1011A1638, &qword_1011A15D0, &qword_100EE0EC8, &protocol conformance descriptor for Button<A>);
      v40 = sub_100764EF4();

      v41 = v116;
      v42 = v117;
      v43 = v126;
      View.buttonStyle<A>(_:)();

      (*(v115 + 8))(v43, v41);
      v137 = v41;
      v138 = &type metadata for SharePlayTogetherSessionManagementViewController.FocusableButtonStyle;
      *v139 = v39;
      *&v139[8] = v40;
      swift_getOpaqueTypeConformance2();
      v44 = v106;
      v45 = v119;
      View.bold(_:)();
      (*(v118 + 8))(v42, v45);
      if (*(v127 + 16) == 1)
      {
        v46 = *(v111 + 20);
        v47 = enum case for RoundedCornerStyle.continuous(_:);
        v48 = type metadata accessor for RoundedCornerStyle();
        v49 = v109;
        (*(*(v48 - 8) + 104))(&v109[v46], v47, v48);
        __asm { FMOV            V0.2D, #6.0 }

        *v49 = _Q0;
        sub_100763090(&qword_1011A1658, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
      }

      else
      {
        v73 = enum case for RoundedCornerStyle.continuous(_:);
        v74 = type metadata accessor for RoundedCornerStyle();
        (*(*(v74 - 8) + 104))(v110, v73, v74);
        sub_100763090(&qword_1011A1518, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
      }

      v75 = AnyShape.init<A>(_:)();
      v21 = v100;
      v76 = v123;
      v77 = v108;
      v78 = v103;
      (*(v121 + 32))(v103, v44, v122);
      v79 = v78 + *(v76 + 36);
      *v79 = v75;
      *(v79 + 8) = 256;
      sub_10003D17C(v78, v77, &qword_1011A15E8, &qword_100EE0EE0);
    }

    else
    {
      v55 = swift_allocObject();
      sub_100763140(v31, v55 + v32, type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView);
      sub_10010FC20(&qword_1011A1610, &unk_100EE0F08);
      sub_100765254();
      v56 = v126;
      Button.init(action:label:)();
      v57 = swift_getKeyPath();
      v114 = v57;
      v58 = static Color.white.getter();
      v113 = v58;
      v59 = [objc_opt_self() _carSystemFocusPrimaryColor];
      v60 = Color.init(_:)();
      v61 = static Color.red.getter();
      v137 = v57;
      LOBYTE(v138) = 0;
      *v139 = v58;
      *&v139[8] = v60;
      *&v139[16] = v61;
      *&v139[24] = v134;
      v62 = sub_100020674(&qword_1011A1638, &qword_1011A15D0, &qword_100EE0EC8, &protocol conformance descriptor for Button<A>);
      v63 = sub_100764EF4();

      v65 = v116;
      v64 = v117;
      View.buttonStyle<A>(_:)();

      (*(v115 + 8))(v56, v65);
      v137 = v65;
      v138 = &type metadata for SharePlayTogetherSessionManagementViewController.FocusableButtonStyle;
      *v139 = v62;
      *&v139[8] = v63;
      swift_getOpaqueTypeConformance2();
      v66 = v107;
      v67 = v119;
      View.bold(_:)();
      (*(v118 + 8))(v64, v67);
      if (*(v127 + 16) == 1)
      {
        v68 = *(v111 + 20);
        v69 = enum case for RoundedCornerStyle.continuous(_:);
        v70 = type metadata accessor for RoundedCornerStyle();
        v71 = v109;
        (*(*(v70 - 8) + 104))(&v109[v68], v69, v70);
        __asm { FMOV            V0.2D, #6.0 }

        *v71 = _Q0;
        sub_100763090(&qword_1011A1658, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
      }

      else
      {
        v80 = enum case for RoundedCornerStyle.continuous(_:);
        v81 = type metadata accessor for RoundedCornerStyle();
        (*(*(v81 - 8) + 104))(v110, v80, v81);
        sub_100763090(&qword_1011A1518, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
      }

      v82 = AnyShape.init<A>(_:)();
      v21 = v100;
      v83 = v123;
      v84 = v104;
      (*(v121 + 32))(v104, v66, v122);
      v85 = v84 + *(v83 + 36);
      *v85 = v82;
      *(v85 + 8) = 256;
      v77 = v105;
      sub_10003D17C(v84, v105, &qword_1011A15E8, &qword_100EE0EE0);
    }

    LOBYTE(v28) = v101;
    sub_1000089F8(v77, v124, &qword_1011A15E8, &qword_100EE0EE0);
    swift_storeEnumTagMultiPayload();
    sub_1007652E0();
    v86 = v120;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v77, &qword_1011A15E8, &qword_100EE0EE0);
    sub_10003D17C(v86, v21, &qword_1011A15F0, &qword_100EE0EE8);
    v26 = 0;
    LOBYTE(v27) = v102;
  }

  (*(v128 + 56))(v21, v26, 1, v130);
  v87 = v27;
  v88 = v27 != v28;
  v89 = v87 == v28;
  v90 = v133;
  sub_1000089F8(v21, v133, &qword_1011A15F8, &qword_100EE0EF0);
  v91 = v131;
  v135[0] = v131;
  v135[1] = 0;
  v92 = v129;
  v136[0] = v129;
  *&v136[1] = *v142;
  *&v136[17] = *&v142[16];
  *&v136[33] = *&v142[32];
  *&v136[49] = *&v142[48];
  v93 = *&v142[63];
  *&v136[64] = *&v142[63];
  v94 = *v136;
  v95 = v132;
  *v132 = v131;
  v95[1] = v94;
  v96 = *&v136[16];
  v97 = *&v136[48];
  v95[3] = *&v136[32];
  v95[4] = v97;
  v95[2] = v96;
  *(v95 + 10) = v93;
  *(v95 + 11) = 0;
  *(v95 + 96) = v89;
  *(v95 + 97) = v88;
  v98 = sub_10010FC20(&qword_1011A1600, &qword_100EE0EF8);
  sub_1000089F8(v90, v95 + *(v98 + 64), &qword_1011A15F8, &qword_100EE0EF0);
  sub_1000089F8(v135, &v137, &qword_1011A1608, &qword_100EE0F00);

  sub_1000095E8(v21, &qword_1011A15F8, &qword_100EE0EF0);
  sub_1000095E8(v90, &qword_1011A15F8, &qword_100EE0EF0);
  v137 = v91;
  v138 = 0;
  v139[0] = v92;
  *&v139[17] = *&v142[16];
  v140 = *&v142[32];
  *v141 = *&v142[48];
  *&v141[15] = *&v142[63];
  *&v139[1] = *v142;
  return sub_1000095E8(&v137, &qword_1011A1608, &qword_100EE0F00);
}

double sub_1007585D4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  v5 = __chkstk_darwin();
  v6 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v7 = 0;
    v39 = 0;
    v40 = 0;
    v38 = 0;
  }

  else
  {
    (*((swift_isaMask & *v6) + 0x128))(v5);
    if (!v8)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
    }

    sub_100009838();
    v7 = Text.init<A>(_:)();
    v10 = v9;
    v12 = *((swift_isaMask & *v6) + 0x268);
    v40 = v13;
    v38 = v11 & 1;
    sub_10021D0C0(v7, v13, v11 & 1);
    v39 = v10;

    if ((v12(v14) & 1) == 0 && (*((swift_isaMask & *v6) + 0x1E0))() < 1)
    {
      v28 = 0;
      v30 = 0;
      v35 = 0;
      v34 = 0;
      goto LABEL_11;
    }
  }

  v15 = *((swift_isaMask & *v6) + 0x1B0);
  v37 = v7;
  if ((v15)(v5) < 1)
  {
    LocalizedStringKey.init(stringLiteral:)();
  }

  else
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
    v15();
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v17._countAndFlagsBits = 0x6963697472615020;
    v17._object = 0xEF297328746E6170;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
    LocalizedStringKey.init(stringInterpolation:)();
  }

  v18 = Text.init(_:tableName:bundle:comment:)();
  v20 = v19;
  v22 = v21;
  static Color.secondary.getter();
  v23 = Text.foregroundColor(_:)();
  v25 = v24;
  v27 = v26;

  sub_10011895C(v18, v20, v22 & 1);

  static Font.caption.getter();
  v28 = Text.font(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_10011895C(v23, v25, v27 & 1);

  v35 = v32 & 1;
  sub_10021D0C0(v28, v30, v32 & 1);

  v7 = v37;
LABEL_11:
  sub_10024EA48(v7, v40, v38, v39);
  sub_10024EA48(v28, v30, v35, v34);
  sub_10024EA04(v7, v40, v38, v39);
  sub_10024EA04(v28, v30, v35, v34);
  *a2 = v7;
  a2[1] = v40;
  a2[2] = v38;
  a2[3] = v39;
  a2[4] = v28;
  a2[5] = v30;
  a2[6] = v35;
  a2[7] = v34;
  sub_10024EA04(v28, v30, v35, v34);
  return sub_10024EA04(v7, v40, v38, v39);
}

uint64_t sub_100758AF4(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    return (*((swift_isaMask & **(result + 8)) + 0x340))();
  }

  v1 = *(result + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

__n128 sub_100758B98@<Q0>(uint64_t a3@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v22) = 256;
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = static Edge.Set.horizontal.getter();
  v12 = [objc_opt_self() defaultMetrics];
  [v12 scaledValueForValue:12.0];

  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v30[55] = v34;
  *&v30[71] = v35;
  *&v30[87] = v36;
  *&v30[103] = v37;
  *&v30[7] = v31;
  *&v30[23] = v32;
  *&v30[39] = v33;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v14;
  *(a3 + 48) = v16;
  *(a3 + 56) = v18;
  *(a3 + 64) = v20;
  *(a3 + 72) = 0;
  *(a3 + 137) = *&v30[64];
  *(a3 + 153) = *&v30[80];
  *(a3 + 169) = *&v30[96];
  *(a3 + 184) = *(&v37 + 1);
  *(a3 + 73) = *v30;
  *(a3 + 89) = *&v30[16];
  *(a3 + 105) = *&v30[32];
  *(a3 + 121) = *&v30[48];
  *(a3 + 256) = v27;
  *(a3 + 272) = v28;
  *(a3 + 288) = v29;
  *(a3 + 192) = v23;
  *(a3 + 208) = v24;
  result = v26;
  *(a3 + 224) = v25;
  *(a3 + 240) = v26;
  return result;
}

void sub_100758E28(uint64_t a1)
{
  static Color.white.getter();
  Color.opacity(_:)();

  UIScreen.Dimensions.size.getter();
  qword_1011A0E00 = v1;
  qword_1011A0E08 = v2;
  byte_1011A0E10 = v3;
}

uint64_t sub_100758E88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011A13D0, &qword_100EE0D00);
  __chkstk_darwin();
  v6 = v42 - v5;
  v7 = sub_10010FC20(&qword_1011A13D8, &qword_100EE0D08);
  __chkstk_darwin();
  v9 = v42 - v8;
  v10 = sub_10010FC20(&qword_1011A13E0, &qword_100EE0D10);
  __chkstk_darwin();
  v12 = v42 - v11;
  if (qword_10117FCA8 != -1)
  {
    swift_once();
  }

  v13 = qword_101219510;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = v13;
  v6[16] = 0;
  v14 = sub_10010FC20(&qword_1011A13E8, &qword_100EE0D18);
  sub_10075929C(v2, &v6[*(v14 + 44)]);
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = &v6[*(v4 + 36)];
  v16 = v42[3];
  *v15 = v42[2];
  *(v15 + 1) = v16;
  *(v15 + 2) = v42[4];
  type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v6, v9, &qword_1011A13D0, &qword_100EE0D00);
  v17 = &v9[*(v7 + 36)];
  v18 = v42[10];
  *(v17 + 4) = v42[9];
  *(v17 + 5) = v18;
  *(v17 + 6) = v42[11];
  v19 = v42[6];
  *v17 = v42[5];
  *(v17 + 1) = v19;
  v20 = v42[8];
  *(v17 + 2) = v42[7];
  *(v17 + 3) = v20;
  v21 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10003D17C(v9, v12, &qword_1011A13D8, &qword_100EE0D08);
  v30 = &v12[*(v10 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_10003D17C(v12, a1, &qword_1011A13E0, &qword_100EE0D10);
  result = sub_10010FC20(&unk_1011A13F0, &unk_100EE0D20);
  v41 = a1 + *(result + 36);
  *v41 = v31;
  *(v41 + 8) = v33;
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  *(v41 + 32) = v39;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_10075929C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v4 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  v75 = *(v4 - 8);
  __chkstk_darwin();
  v76 = v5;
  v77 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicTypeSize();
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin();
  v81 = (&v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for ArtworkImage.ReusePolicy();
  v8 = *(v72 - 8);
  __chkstk_darwin();
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v14 = &v68 - v13;
  v15 = sub_10010FC20(&unk_1011A1400, &unk_100ECAD80);
  v16 = *(v15 - 8);
  v69 = v15;
  v70 = v16;
  __chkstk_darwin();
  v18 = &v68 - v17;
  v73 = sub_10010FC20(&unk_10119F190, &qword_100EC1520);
  v71 = *(v73 - 1);
  __chkstk_darwin();
  v20 = &v68 - v19;
  v21 = sub_10010FC20(&unk_1011A1410, &qword_100ECAD90);
  v79 = *(v21 - 8);
  v80 = v21;
  __chkstk_darwin();
  v78 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v68 - v23;
  sub_100759CDC(v14);
  v24 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v24 - 8) + 56))(v12, 8, 11, v24);
  v74 = v4;
  if (*(a1 + *(v4 + 24)) == 1)
  {
    if (qword_10117FCB8 != -1)
    {
      swift_once();
    }

    v25 = &qword_101219520;
  }

  else
  {
    if (qword_10117FCB0 != -1)
    {
      swift_once();
    }

    v25 = &qword_101219518;
  }

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(*v25, 0, *v25, 0, 0, 1, 2, v104);
  v26 = v72;
  (*(v8 + 104))(v10, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v72);
  v27 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v14, v12, v104, v10, v18);
  (*(v8 + 8))(v10, v26, v27);
  sub_100761B84(v12, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v14, &unk_10118A5E0, &unk_100EBCD90);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v69;
  View.corner(_:)(0, 0, 2, v69, OpaqueTypeConformance2);
  (*(v70 + 8))(v18, v29);
  if (qword_10117FCC0 != -1)
  {
    swift_once();
  }

  v30 = qword_1011A0E00;
  v31 = *&qword_1011A0E08;
  v32 = byte_1011A0E10;
  *&v93[0] = v29;
  *(&v93[0] + 1) = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v32;
  v35 = v73;
  View.border(_:corner:)(v30, v34, 0, 0, 2, v73, v33, v31);
  (*(v71 + 8))(v20, v35);
  v74 = *(v74 + 28);
  v36 = v81;
  sub_10056CABC(v81);
  LODWORD(v72) = DynamicTypeSize.isAccessibilitySize.getter();
  v37 = v83;
  v73 = *(v82 + 8);
  (v73)(v36, v83);
  v38 = static Alignment.leading.getter();
  v82 = v39;
  v40 = a1;
  v41 = v77;
  sub_1007630D8(v40, v77, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView);
  v42 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v43 = swift_allocObject();
  sub_100763140(v41, v43 + v42, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView);
  sub_10010FC20(&qword_1011A1420, &qword_100EE0D30);
  sub_100020674(&qword_1011A1428, &qword_1011A1420, &qword_100EE0D30, &protocol conformance descriptor for TupleView<A>);
  AxisStack.init(axis:alignment:spacing:content:)(v72 & 1, v38, v82, 0, 1, sub_100764BA0, v43, &v105);
  LODWORD(v82) = static Edge.Set.bottom.getter();
  sub_10056CABC(v36);
  DynamicTypeSize.isAccessibilitySize.getter();
  v44 = v73;
  (v73)(v36, v37);
  Axis.rawValue.getter();
  Axis.rawValue.getter();
  EdgeInsets.init(_all:)();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v102 = 0;
  sub_10056CABC(v36);
  DynamicTypeSize.isAccessibilitySize.getter();
  v44(v36, v37);
  LODWORD(v38) = Axis.rawValue.getter();
  v53 = Axis.rawValue.getter();
  LODWORD(v83) = v38 != v53;
  LOBYTE(v37) = v38 == v53;
  v55 = v78;
  v54 = v79;
  v56 = *(v79 + 16);
  v57 = v85;
  v58 = v80;
  v56(v78, v85, v80);
  v59 = v84;
  v56(v84, v55, v58);
  v60 = sub_10010FC20(&qword_1011A1430, &qword_100EE0D38);
  v61 = &v59[*(v60 + 48)];
  *&v89 = v108;
  v86 = v105;
  v87 = v106;
  v88 = v107;
  LOBYTE(v38) = v82;
  BYTE8(v89) = v82;
  HIDWORD(v89) = *&v103[3];
  *(&v89 + 9) = *v103;
  *&v90 = v46;
  *(&v90 + 1) = v48;
  *&v91 = v50;
  *(&v91 + 1) = v52;
  v92 = 0;
  v61[96] = 0;
  v62 = v91;
  *(v61 + 4) = v90;
  *(v61 + 5) = v62;
  v63 = v87;
  *v61 = v86;
  *(v61 + 1) = v63;
  v64 = v89;
  *(v61 + 2) = v88;
  *(v61 + 3) = v64;
  v65 = &v59[*(v60 + 64)];
  *v65 = 0;
  v65[8] = v37;
  v65[9] = v83;
  sub_1000089F8(&v86, v93, &qword_1011A1438, &unk_100EE0D40);
  v66 = *(v54 + 8);
  v66(v57, v58);
  v93[0] = v105;
  v93[1] = v106;
  v93[2] = v107;
  v94 = v108;
  v95 = v38;
  *v96 = *v103;
  *&v96[3] = *&v103[3];
  v97 = v46;
  v98 = v48;
  v99 = v50;
  v100 = v52;
  v101 = 0;
  sub_1000095E8(v93, &qword_1011A1438, &unk_100EE0D40);
  return (v66)(v55, v58);
}

uint64_t sub_100759CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v5 = &v17 - v4;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  sub_1000089F8(v2 + *(v8 + 32), v5, &qword_101186E00, &qword_100EC31E0);
  v9 = type metadata accessor for SocialProfile();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_1000095E8(v5, &qword_101186E00, &qword_100EC31E0);
    v11 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  else
  {
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v9, &protocol witness table for SocialProfile, v7);
    (*(v10 + 8))(v5, v9);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) != 1)
    {
      sub_100763140(v7, a1, type metadata accessor for ArtworkImage.ViewModel);
      return (*(v13 + 56))(a1, 0, 1, v12);
    }
  }

  sub_1000095E8(v7, &unk_10118A5E0, &unk_100EBCD90);
  sub_100009F78(0, &qword_1011A1560, MPArtworkCatalog_ptr);
  v14 = static MPArtworkCatalog.monogram(for:layoutDirection:)(*(v2 + 16), *(v2 + 24), 0, 1);
  if (v14)
  {
    return ArtworkImage.ViewModel.init(_:)(v14, a1);
  }

  v16 = type metadata accessor for ArtworkImage.ViewModel(0);
  return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
}

uint64_t sub_100759FE8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = a1;
  v59 = a2;
  v60 = a1;
  v56 = sub_10010FC20(&qword_1011A1440, &unk_100ECAF00);
  __chkstk_darwin();
  v64 = &v52 - v3;
  v55 = sub_10010FC20(&qword_1011A1448, &qword_100EE0D50);
  __chkstk_darwin();
  v69 = &v52 - v4;
  v5 = sub_10010FC20(&qword_1011A1450, &qword_100EE0D58);
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin();
  v68 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v52 - v7;
  v8 = type metadata accessor for DynamicTypeSize();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin();
  v10 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for AccessibilityChildBehavior();
  v11 = *(v61 - 8);
  __chkstk_darwin();
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_1011A1458, &qword_100EE0D60);
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin();
  v66 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v52 - v16;
  v18 = static HorizontalAlignment.leading.getter();
  v75 = 1;
  sub_10075A804(v2, &v86);
  v81 = v90;
  v82 = v91;
  v83 = v92;
  v77 = v86;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  v84[0] = v86;
  v84[1] = v87;
  v84[2] = v88;
  v84[3] = v89;
  v84[4] = v90;
  v84[5] = v91;
  v85 = v92;
  sub_1000089F8(&v77, &v70, &qword_1011A1460, &qword_100EE0D68);
  sub_1000095E8(v84, &qword_1011A1460, &qword_100EE0D68);
  *(&v74[3] + 7) = v80;
  *(&v74[4] + 7) = v81;
  *(&v74[5] + 7) = v82;
  *(v74 + 7) = v77;
  *(&v74[1] + 7) = v78;
  *(&v74[6] + 7) = v83;
  *(&v74[2] + 7) = v79;
  v19 = v75;
  LOBYTE(v2) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  *(&v71[3] + 1) = v74[3];
  *(&v71[4] + 1) = v74[4];
  *(&v71[5] + 1) = v74[5];
  v71[6] = *(&v74[5] + 15);
  *(v71 + 1) = v74[0];
  *(&v71[1] + 1) = v74[1];
  v76 = 0;
  v70 = v18;
  LOBYTE(v71[0]) = v19;
  *(&v71[2] + 1) = v74[2];
  LOBYTE(v72) = v2;
  *(&v72 + 1) = v20;
  *&v73[0] = v21;
  *(&v73[0] + 1) = v22;
  *&v73[1] = v23;
  BYTE8(v73[1]) = 0;
  static AccessibilityChildBehavior.combine.getter();
  sub_10010FC20(&qword_1011A1468, &qword_100EE0D70);
  sub_100764BCC();
  v65 = v17;
  View.accessibilityElement(children:)();
  (*(v11 + 8))(v13, v61);
  v24 = v64;
  v94 = v72;
  v95[0] = v73[0];
  *(v95 + 9) = *(v73 + 9);
  v90 = v71[3];
  v91 = v71[4];
  v92 = v71[5];
  v93 = v71[6];
  v86 = v70;
  v87 = v71[0];
  v88 = v71[1];
  v89 = v71[2];
  sub_1000095E8(&v86, &qword_1011A1468, &qword_100EE0D70);
  v25 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  v26 = v60;
  sub_10056CABC(v10);
  DynamicTypeSize.isAccessibilitySize.getter();
  v28 = v62;
  v27 = v63;
  (*(v62 + 8))(v10, v63);
  v29 = Axis.rawValue.getter();
  v30 = Axis.rawValue.getter();
  v31 = static Color.accentColor.getter();
  if (*(v26 + *(v25 + 24)))
  {
    v32 = 0x4014000000000000;
  }

  else
  {
    v32 = 0x4030000000000000;
  }

  v33 = static VerticalAlignment.center.getter();
  v34 = v69;
  *v69 = v33;
  *(v34 + 1) = v32;
  v34[16] = 0;
  v35 = &v34[*(sub_10010FC20(&qword_1011A1488, &qword_100EE0D80) + 44)];
  v61 = v31;
  sub_10075ACE0(v26, v31, v35);
  (*(v28 + 104))(v24, enum case for DynamicTypeSize.accessibility2(_:), v27);
  sub_100763090(&qword_1011A1490, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    LODWORD(v63) = v29 != v30;
    LODWORD(v62) = v29 == v30;
    sub_100020674(&qword_1011A1498, &qword_1011A1448, &qword_100EE0D50, &protocol conformance descriptor for HStack<A>);
    sub_100020674(&qword_1011A14A0, &qword_1011A1440, &unk_100ECAF00, &protocol conformance descriptor for PartialRangeThrough<A>);
    v37 = v67;
    v38 = v69;
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v24, &qword_1011A1440, &unk_100ECAF00);
    sub_1000095E8(v38, &qword_1011A1448, &qword_100EE0D50);
    v40 = v53;
    v39 = v54;
    v41 = *(v53 + 16);
    v42 = v66;
    v41(v66, v65, v54);
    v43 = v57;
    v69 = *(v57 + 16);
    v44 = v37;
    v45 = v58;
    (v69)(v68, v44, v58);
    v46 = v59;
    v41(v59, v42, v39);
    v47 = sub_10010FC20(&qword_1011A14A8, &qword_100EE0D88);
    v48 = &v46[*(v47 + 48)];
    *v48 = 0;
    v48[8] = v62;
    v48[9] = v63;
    v49 = v68;
    (v69)(&v46[*(v47 + 64)], v68, v45);

    v50 = *(v43 + 8);
    v50(v67, v45);
    v51 = *(v40 + 8);
    v51(v65, v39);
    v50(v49, v45);
    return (v51)(v66, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10075A804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v3 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  v4 = *(v3 + 20);
  v5 = a1 + v4;
  if (*(a1 + v4 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(a1 + v4 + 24);
  }

  else
  {
    v6 = *v5;
  }

  v54 = v6;
  v55 = v7;
  sub_100009838();

  v43 = Text.init<A>(_:)();
  v39 = v8;
  v40 = v9;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v38 = static Color.primary.getter();
  v36 = swift_getKeyPath();
  v42 = v11 & 1;
  v68 = v11 & 1;
  v67 = 0;
  if (*(a1 + *(v3 + 24)))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v16 = String.init(localized:table:bundle:locale:comment:)();
    if (*(v5 + 32) == 1)
    {

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v16 = String.init(localized:table:bundle:locale:comment:)();
    }

    v54 = v16;
    v55 = v17;
    v18 = Text.init<A>(_:)();
    v20 = v19;
    v22 = v21;
    static Color.secondary.getter();
    v23 = Text.foregroundColor(_:)();
    v25 = v24;
    v27 = v26;

    sub_10011895C(v18, v20, v22 & 1);

    static Font.caption.getter();
    v12 = Text.font(_:)();
    v13 = v28;
    v30 = v29;
    v15 = v31;

    sub_10011895C(v23, v25, v27 & 1);

    v14 = v30 & 1;
    sub_10021D0C0(v12, v13, v30 & 1);
  }

  *&v44 = v43;
  *(&v44 + 1) = v39;
  LOBYTE(v45) = v42;
  *(&v45 + 1) = *v66;
  DWORD1(v45) = *&v66[3];
  *(&v45 + 1) = v40;
  *&v46 = KeyPath;
  *(&v46 + 1) = 2;
  LOBYTE(v47) = 0;
  *(&v47 + 1) = *v65;
  DWORD1(v47) = *&v65[3];
  *(&v47 + 1) = v36;
  v48 = v38;
  v53 = v38;
  v51 = v46;
  v52 = v47;
  v49 = v44;
  v50 = v45;
  sub_1000089F8(&v44, &v54, &qword_1011A1558, &qword_100EE0E60);
  sub_10024EA48(v12, v13, v14, v15);
  sub_10024EA04(v12, v13, v14, v15);
  v32 = v52;
  *(a2 + 32) = v51;
  *(a2 + 48) = v32;
  v33 = v53;
  v34 = v50;
  *a2 = v49;
  *(a2 + 16) = v34;
  *(a2 + 64) = v33;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  *(a2 + 96) = v15;
  sub_10024EA04(v12, v13, v14, v15);
  v54 = v43;
  v55 = v39;
  v56 = v42;
  *v57 = *v66;
  *&v57[3] = *&v66[3];
  v58 = v40;
  v59 = KeyPath;
  v60 = 2;
  v61 = 0;
  *v62 = *v65;
  *&v62[3] = *&v65[3];
  v63 = v36;
  v64 = v38;
  return sub_1000095E8(&v54, &qword_1011A1558, &qword_100EE0E60);
}

uint64_t sub_10075ACE0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a2;
  v98 = a3;
  v73 = sub_10010FC20(&qword_1011A14B0, &qword_100EE0D90);
  __chkstk_darwin();
  v5 = v70 - v4;
  v77 = sub_10010FC20(&qword_1011A14B8, &qword_100EE0D98);
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v87 = v70 - v6;
  v7 = sub_10010FC20(&qword_1011A14C0, &qword_100EE0DA0);
  v97 = *(v7 - 8);
  __chkstk_darwin();
  v75 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = v70 - v9;
  sub_10010FC20(&qword_1011A14C8, &qword_100EE0DA8);
  __chkstk_darwin();
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v70 - v12;
  v79 = type metadata accessor for Capsule();
  __chkstk_darwin();
  v78 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  v88 = *(v99 - 8);
  __chkstk_darwin();
  v89 = v15;
  v90 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&qword_1011A14D0, &qword_100EE0DB0);
  __chkstk_darwin();
  v18 = v70 - v17;
  v86 = sub_10010FC20(&qword_1011A14D8, &qword_100EE0DB8);
  v85 = *(v86 - 8);
  __chkstk_darwin();
  v92 = v70 - v19;
  v95 = sub_10010FC20(&qword_1011A14E0, &qword_100EE0DC0);
  v20 = *(v95 - 8);
  __chkstk_darwin();
  v84 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = v70 - v22;
  sub_10010FC20(&qword_1011A14E8, &qword_100EE0DC8);
  __chkstk_darwin();
  v96 = v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin();
  v100 = a1;
  v101 = v70 - v25;
  v26 = *a1;
  v27 = swift_isaMask & **a1;
  v93 = *(v27 + 0x120);
  v94 = v27 + 288;
  if ((v93(v24) & 1) != 0 && (*(v100 + *(v99 + 20) + 32) & 1) != 0 || ((*((swift_isaMask & *v26) + 0x118))() & 1) != 0 && *(v100 + *(v99 + 20) + 33) == 1)
  {
    v72 = v5;
    v80 = v13;
    v81 = v7;
    v82 = v11;
    v28 = *(v100 + *(v99 + 24));
    v71 = v28;
    v29 = v90;
    sub_1007630D8(v100, v90, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView);
    v30 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v31 = swift_allocObject();
    sub_100763140(v29, v31 + v30, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView);
    v70[1] = v16;
    v102 = Int.seconds.getter(32);
    sub_100363C0C();
    ScaledMetric.init(wrappedValue:)();
    *v18 = v28;
    *(v18 + 1) = sub_100764F9C;
    *(v18 + 2) = v31;
    *(v18 + 3) = sub_10075BBCC;
    *(v18 + 4) = 0;
    KeyPath = swift_getKeyPath();
    v33 = static Color.white.getter();
    v34 = [objc_opt_self() _carSystemFocusPrimaryColor];
    v35 = Color.init(_:)();
    static Color.primary.getter();
    v36 = Color.opacity(_:)();

    v102 = *&KeyPath;
    v103 = 0;
    v104 = v33;
    v105 = v35;
    v106 = v36;
    v107 = v91;
    sub_100020674(&qword_1011A1520, &qword_1011A14D0, &qword_100EE0DB0, &unk_100EE10F8);
    sub_100764EF4();

    View.buttonStyle<A>(_:)();

    sub_1000095E8(v18, &qword_1011A14D0, &qword_100EE0DB0);
    if (v71 == 1)
    {
      v37 = enum case for RoundedCornerStyle.continuous(_:);
      v38 = type metadata accessor for RoundedCornerStyle();
      (*(*(v38 - 8) + 104))(v78, v37, v38);
      sub_100763090(&qword_1011A1518, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
    }

    else
    {
      sub_100764F48();
    }

    v41 = AnyShape.init<A>(_:)();
    v42 = v84;
    (*(v85 + 32))(v84, v92, v86);
    v43 = v95;
    v44 = &v42[*(v95 + 36)];
    *v44 = v41;
    *(v44 + 4) = 256;
    v45 = v42;
    v46 = v83;
    sub_10003D17C(v45, v83, &qword_1011A14E0, &qword_100EE0DC0);
    v47 = v46;
    v48 = v101;
    sub_10003D17C(v47, v101, &qword_1011A14E0, &qword_100EE0DC0);
    v39 = (*(v20 + 56))(v48, 0, 1, v43);
    v40 = v98;
    v11 = v82;
    v7 = v81;
    v13 = v80;
    v5 = v72;
  }

  else
  {
    v39 = (*(v20 + 56))(v101, 1, 1, v95);
    v40 = v98;
  }

  if (((v93)(v39) & 1) != 0 && *(v100 + *(v99 + 20) + 32) == 1)
  {
    v80 = v13;
    v81 = v7;
    v82 = v11;
    v49 = *(v100 + *(v99 + 24));
    LODWORD(v99) = v49;
    v50 = v90;
    sub_1007630D8(v100, v90, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView);
    v51 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v52 = swift_allocObject();
    sub_100763140(v50, v52 + v51, type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView);
    v102 = Int.seconds.getter(32);
    sub_100363C0C();
    ScaledMetric.init(wrappedValue:)();
    *v5 = v49;
    *(v5 + 1) = sub_100764E48;
    *(v5 + 2) = v52;
    *(v5 + 3) = sub_10075BDB8;
    *(v5 + 4) = 0;
    v53 = swift_getKeyPath();
    v54 = static Color.white.getter();
    v55 = [objc_opt_self() _carSystemFocusPrimaryColor];
    v56 = Color.init(_:)();
    v57 = static Color.green.getter();
    v102 = *&v53;
    v103 = 0;
    v104 = v54;
    v105 = v56;
    v106 = v57;
    v107 = v91;
    sub_100020674(&qword_1011A1500, &qword_1011A14B0, &qword_100EE0D90, &unk_100EE10F8);
    sub_100764EF4();

    View.buttonStyle<A>(_:)();

    sub_1000095E8(v5, &qword_1011A14B0, &qword_100EE0D90);
    if (v99 == 1)
    {
      v58 = enum case for RoundedCornerStyle.continuous(_:);
      v59 = type metadata accessor for RoundedCornerStyle();
      (*(*(v59 - 8) + 104))(v78, v58, v59);
      sub_100763090(&qword_1011A1518, &type metadata accessor for Capsule, &protocol conformance descriptor for Capsule);
    }

    else
    {
      sub_100764F48();
    }

    v61 = AnyShape.init<A>(_:)();
    v11 = v82;
    v7 = v81;
    v13 = v80;
    v62 = v75;
    (*(v76 + 32))(v75, v87, v77);
    v63 = &v62[*(v7 + 36)];
    *v63 = v61;
    *(v63 + 4) = 256;
    v64 = v62;
    v65 = v74;
    sub_10003D17C(v64, v74, &qword_1011A14C0, &qword_100EE0DA0);
    sub_10003D17C(v65, v13, &qword_1011A14C0, &qword_100EE0DA0);
    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  (*(v97 + 56))(v13, v60, 1, v7);
  v66 = v101;
  v67 = v96;
  sub_1000089F8(v101, v96, &qword_1011A14E8, &qword_100EE0DC8);
  sub_1000089F8(v13, v11, &qword_1011A14C8, &qword_100EE0DA8);
  sub_1000089F8(v67, v40, &qword_1011A14E8, &qword_100EE0DC8);
  v68 = sub_10010FC20(&unk_1011A14F0, &qword_100EE0DD0);
  sub_1000089F8(v11, v40 + *(v68 + 48), &qword_1011A14C8, &qword_100EE0DA8);
  sub_1000095E8(v13, &qword_1011A14C8, &qword_100EE0DA8);
  sub_1000095E8(v66, &qword_1011A14E8, &qword_100EE0DC8);
  sub_1000095E8(v11, &qword_1011A14C8, &qword_100EE0DA8);
  return sub_1000095E8(v67, &qword_1011A14E8, &qword_100EE0DC8);
}

uint64_t sub_10075BB2C(void **a1, __n128 a2)
{
  if (*(a1 + *(type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0) + 20) + 32) == 1)
  {
    return (*((swift_isaMask & **a1) + 0x330))();
  }

  else
  {
    return (*((swift_isaMask & **a1) + 0x338))();
  }
}

uint64_t sub_10075BBCC()
{
  sub_10010FC20(&qword_1011A1528, &qword_100EE0E08);
  __chkstk_darwin();
  v1 = v6 - v0;
  *v1 = static VerticalAlignment.center.getter();
  *(v1 + 1) = 0;
  v1[16] = 1;
  sub_10010FC20(&qword_1011A1530, &qword_100EE0E10);
  v2 = Image.init(systemName:)();
  v3 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v6[1] = v2;
  v6[2] = KeyPath;
  v6[3] = v3;
  static Font.Weight.bold.getter();
  sub_10010FC20(&unk_1011A1100, &unk_100ED3F40);
  sub_100238768();
  View.fontWeight(_:)();

  LocalizedStringKey.init(stringLiteral:)();
  sub_100020674(&qword_1011A1538, &qword_1011A1528, &qword_100EE0E08, &protocol conformance descriptor for HStack<A>);
  View.accessibilityLabel(_:)();

  return sub_1000095E8(v1, &qword_1011A1528, &qword_100EE0E08);
}

uint64_t sub_10075BDB8@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10010FC20(&unk_1011A1540, &unk_100EE0E18);
  return sub_10075BE08(a1 + *(v3 + 44));
}

uint64_t sub_10075BE08@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v21 = *(v1 - 8);
  v22 = v1;
  __chkstk_darwin();
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_10119A280, &qword_100EC11C0);
  v5 = *(v4 - 8);
  v18 = v4;
  v19 = v5;
  __chkstk_darwin();
  v7 = &v17 - v6;
  v20 = sub_10010FC20(&qword_1011A1550, &qword_100EE0E28);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = Image.init(systemName:)();
  v11 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v24 = v10;
  v25 = KeyPath;
  v26 = v11;
  static Font.Weight.bold.getter();
  v13 = sub_10010FC20(&unk_1011A1100, &unk_100ED3F40);
  v14 = sub_100238768();
  View.fontWeight(_:)();

  static AccessibilityTraits.isSelected.getter();
  v24 = v13;
  v25 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v18;
  View.accessibilityRemoveTraits(_:)();
  (*(v21 + 8))(v3, v22);
  (*(v19 + 8))(v7, v15);
  LocalizedStringKey.init(stringLiteral:)();
  ModifiedContent<>.accessibilityLabel(_:)();

  return sub_1000095E8(v9, &qword_1011A1550, &qword_100EE0E28);
}

uint64_t sub_10075C108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = *(a1 + 16);
  v13[1] = a2;
  type metadata accessor for ModifiedContent();
  v15 = *(a1 + 24);
  v4 = v15;
  v16 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  v5 = type metadata accessor for Button();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v13 - v9;
  v13[4] = v13[0];
  v13[5] = v4;
  v14 = v2;

  Button.init(action:label:)();
  swift_getWitnessTable();
  sub_100663950();
  v11 = *(v6 + 8);
  v11(v8, v5);
  sub_100663950();
  return (v11)(v10, v5);
}

uint64_t sub_10075C2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v20 = *(a2 - 8);
  __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v15 = &v19 - v14;
  (*(a1 + 24))(v13);
  if ((*a1 & 1) == 0)
  {
    type metadata accessor for SharePlayTogetherSessionManagementViewController.ScaledButton(0, a2, a3, v16);
    v19 = a3;
    sub_10010FC20(&qword_10119A070, "@R\n");
    ScaledMetric.wrappedValue.getter();
    sub_10010FC20(&qword_10119A070, "@R\n");
    a3 = v19;
    ScaledMetric.wrappedValue.getter();
  }

  static Alignment.center.getter();
  View.frame(width:height:alignment:)();
  (*(v20 + 8))(v8, a2);
  v22 = a3;
  v23 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  sub_100663950();
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_100663950();
  return (v17)(v15, v9);
}

uint64_t sub_10075C5C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011A1388, &qword_100EE0C98);
  __chkstk_darwin();
  v6 = &v37[-1] - v5;
  v7 = sub_10010FC20(&qword_1011A1390, &qword_100EE0CA0);
  v36 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v37[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v37[-1] - v11;
  (*((swift_isaMask & *a1) + 0x258))(v37, v10);
  if (v37[3])
  {
    *v6 = static VerticalAlignment.center.getter();
    *(v6 + 1) = 0x4020000000000000;
    v6[16] = 0;
    v13 = sub_10010FC20(&qword_1011A1398, &qword_100EE0CA8);
    sub_10075C95C(&v6[*(v13 + 44)]);
    v14 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = &v6[*(sub_10010FC20(&unk_1011A13A0, &unk_100EE0CB0) + 36)];
    *v23 = v14;
    *(v23 + 1) = v16;
    *(v23 + 2) = v18;
    *(v23 + 3) = v20;
    *(v23 + 4) = v22;
    v23[40] = 0;
    v24 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v25 = &v6[*(v4 + 36)];
    *v25 = v24;
    *(v25 + 1) = v26;
    *(v25 + 2) = v27;
    *(v25 + 3) = v28;
    *(v25 + 4) = v29;
    v25[40] = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1000095E8(v37, &unk_1011A0F80, &qword_100EE0748);
    sub_10003D17C(v6, v9, &qword_1011A1388, &qword_100EE0C98);
    v30 = &v9[*(v7 + 36)];
    v31 = v43;
    *(v30 + 4) = v42;
    *(v30 + 5) = v31;
    *(v30 + 6) = v44;
    v32 = v39;
    *v30 = v38;
    *(v30 + 1) = v32;
    v33 = v41;
    *(v30 + 2) = v40;
    *(v30 + 3) = v33;
    sub_10003D17C(v9, v12, &qword_1011A1390, &qword_100EE0CA0);
    sub_10003D17C(v12, a2, &qword_1011A1390, &qword_100EE0CA0);
    return (*(v36 + 56))(a2, 0, 1, v7);
  }

  else
  {
    v35 = *(v36 + 56);

    return v35(a2, 1, 1, v7);
  }
}

uint64_t sub_10075C95C@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v39 = type metadata accessor for Font.TextStyle();
  v1 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188610, &qword_100EC4D60);
  __chkstk_darwin();
  v4 = &v35 - v3;
  v5 = sub_10010FC20(&unk_1011A13B0, &qword_100EE0CC0) - 8;
  __chkstk_darwin();
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = (&v35 - v7);
  v35 = Image.init(systemName:)();
  static Font.Weight.medium.getter();
  v9 = type metadata accessor for Font.Design();
  v10 = *(v9 - 8);
  v36 = *(v10 + 56);
  v37 = v10 + 56;
  v36(v4, 1, 1, v9);
  v11 = static Font.system(size:weight:design:)();
  sub_1000095E8(v4, &qword_101188610, &qword_100EC4D60);
  KeyPath = swift_getKeyPath();
  v13 = (v8 + *(sub_10010FC20(&qword_101198DF0, &unk_100ED7950) + 36));
  v14 = *(sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0) + 28);
  v15 = enum case for Image.Scale.medium(_:);
  v16 = type metadata accessor for Image.Scale();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  *v8 = v35;
  v8[1] = KeyPath;
  v8[2] = v11;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = (v8 + *(v5 + 44));
  v18 = v43;
  *v17 = v42;
  v17[1] = v18;
  v17[2] = v44;
  LocalizedStringKey.init(stringLiteral:)();
  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  LOBYTE(KeyPath) = v22;
  v23 = v38;
  v24 = v39;
  (*(v1 + 104))(v38, enum case for Font.TextStyle.callout(_:), v39);
  v36(v4, 1, 1, v9);
  static Font.Weight.medium.getter();
  static Font.system(_:design:weight:)();
  sub_1000095E8(v4, &qword_101188610, &qword_100EC4D60);
  (*(v1 + 8))(v23, v24);
  v25 = Text.font(_:)();
  v27 = v26;
  LOBYTE(v4) = v28;
  v30 = v29;

  sub_10011895C(v19, v21, KeyPath & 1);

  v31 = v40;
  sub_1000089F8(v8, v40, &unk_1011A13B0, &qword_100EE0CC0);
  v32 = v41;
  sub_1000089F8(v31, v41, &unk_1011A13B0, &qword_100EE0CC0);
  v33 = v32 + *(sub_10010FC20(&qword_1011A13C8, &qword_100EE0CF8) + 48);
  *v33 = v25;
  *(v33 + 8) = v27;
  *(v33 + 16) = v4 & 1;
  *(v33 + 24) = v30;
  sub_10021D0C0(v25, v27, v4 & 1);

  sub_1000095E8(v8, &unk_1011A13B0, &qword_100EE0CC0);
  sub_10011895C(v25, v27, v4 & 1);

  return sub_1000095E8(v31, &unk_1011A13B0, &qword_100EE0CC0);
}

__n128 sub_10075CE60@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = *(type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0) - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin();
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*((swift_isaMask & **v1) + 0x258))(&v50, v7);
  if (v52)
  {
    v34 = *(&v50 + 1);
    v32 = v51;
    v33 = v53;
    v54 = v50;
    v55 = v51;
    v31 = v52;
    sub_10056CABC(v9);
    v35 = DynamicTypeSize.isAccessibilitySize.getter();
    v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = *(v6 + 8);
    v10(v9, v5);
    sub_10056CABC(v9);
    v11 = DynamicTypeSize.isAccessibilitySize.getter();
    v10(v9, v5);
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0x4034000000000000;
    }

    v13 = v30;
    sub_1007630D8(v2, v30, type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell);
    v14 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v15 = swift_allocObject();
    sub_100763140(v13, v15 + v14, type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell);
    v16 = v15 + ((v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v16 = v54;
    v18 = v31;
    v17 = v32;
    *(v16 + 16) = v55;
    *(v16 + 24) = v18;
    v19 = v34;
    *(v16 + 32) = v33;
    sub_10002BC44(v19, v17);
    v20 = v18;
    v21 = static Alignment.center.getter();
    v23 = v22;
    sub_10010FC20(&qword_1011A1330, &qword_100EE0C68);
    sub_100020674(&qword_1011A1338, &qword_1011A1330, &qword_100EE0C68, &protocol conformance descriptor for TupleView<A>);
    AxisStack.init(axis:alignment:spacing:content:)(v35 & 1, v21, v23, v12, 0, sub_1007648D4, v15, v48);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1000095E8(&v50, &unk_1011A0F80, &qword_100EE0748);
    v45 = v48[8];
    v46 = v48[9];
    v47 = v49;
    v41 = v48[4];
    v42 = v48[5];
    v43 = v48[6];
    v44 = v48[7];
    v37 = v48[0];
    v38 = v48[1];
    v39 = v48[2];
    v40 = v48[3];
    UIScreen.Dimensions.size.getter();
    v64 = v45;
    v65 = v46;
    v66 = v47;
    v60 = v41;
    v61 = v42;
    v62 = v43;
    v63 = v44;
    v56 = v37;
    v57 = v38;
    v58 = v39;
    v59 = v40;
  }

  else
  {
    sub_1007648B4(&v56);
  }

  v24 = v65;
  *(a1 + 128) = v64;
  *(a1 + 144) = v24;
  *(a1 + 160) = v66;
  v25 = v61;
  *(a1 + 64) = v60;
  *(a1 + 80) = v25;
  v26 = v63;
  *(a1 + 96) = v62;
  *(a1 + 112) = v26;
  v27 = v57;
  *a1 = v56;
  *(a1 + 16) = v27;
  result = v59;
  *(a1 + 32) = v58;
  *(a1 + 48) = result;
  return result;
}

double sub_10075D2D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a2;
  v38 = *(type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0) - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin();
  v5 = sub_10010FC20(&qword_1011A1340, &qword_100EE0C70);
  v6 = *(v5 - 8);
  v42 = v5;
  v43 = v6;
  __chkstk_darwin();
  v8 = &v34 - v7;
  sub_10010FC20(&qword_1011A1348, &qword_100EE0C78);
  __chkstk_darwin();
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v34 - v10;
  LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  static Font.subheadline.getter();
  v17 = Text.font(_:)();
  v34 = v18;
  v35 = v17;
  v36 = v19;
  v37 = v20;

  sub_10011895C(v12, v14, v16 & 1);

  sub_1007630D8(v39, &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell);
  v21 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v22 = swift_allocObject();
  sub_100763140(&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell);
  v44 = v40;
  sub_10010FC20(&qword_1011A1350, &qword_100EE0C80);
  sub_1007649E4();
  Button.init(action:label:)();
  v23 = AccessibilityString.qrCodeButtonLabel.unsafeMutableAddressor();
  v24 = *v23;
  v25 = v23[1];
  v26 = sub_100020674(&qword_1011A1378, &qword_1011A1340, &qword_100EE0C70, &protocol conformance descriptor for Button<A>);

  v27 = v24;
  v28 = v42;
  View.accessibilityLabel(_:)(v27, v25, v42, v26);

  (*(v43 + 8))(v8, v28);
  v29 = v41;
  sub_1000089F8(v11, v41, &qword_1011A1348, &qword_100EE0C78);
  v31 = v34;
  v30 = v35;
  *a3 = v35;
  *(a3 + 8) = v31;
  LOBYTE(v8) = v36 & 1;
  *(a3 + 16) = v36 & 1;
  *(a3 + 24) = v37;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v32 = sub_10010FC20(&qword_1011A1380, &qword_100EE0C90);
  sub_1000089F8(v29, a3 + *(v32 + 64), &qword_1011A1348, &qword_100EE0C78);
  sub_10021D0C0(v30, v31, v8);

  sub_1000095E8(v11, &qword_1011A1348, &qword_100EE0C78);
  sub_1000095E8(v29, &qword_1011A1348, &qword_100EE0C78);
  sub_10011895C(v30, v31, v8);

  return result;
}

double sub_10075D738@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = QRCodeOverlayViewController.ImageViewRepresentable.init(image:)();
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v10 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v4;
  *(a2 + 8) = v6 & 1;
  *(a2 + 16) = v8;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v10;
  *(a2 + 40) = v13;
  *(a2 + 56) = v14;
  result = *&v15;
  *(a2 + 72) = v15;
  return result;
}

double sub_10075D7F4@<D0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ButtonStyleConfiguration.Label();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10010FC20(&qword_1011A1850, &qword_100EE1148);
  __chkstk_darwin();
  v45 = &v38 - v11;
  v44 = sub_10010FC20(&qword_1011A1858, &qword_100EE1150);
  __chkstk_darwin();
  v13 = &v38 - v12;
  ButtonStyleConfiguration.label.getter();
  v50 = *(v2 + 8);
  v47 = v2;
  v14 = *v2;
  v49 = *v47;
  v15 = v50;
  v41 = v4;
  v42 = v3;
  v40 = v6;
  if (v50 == 1)
  {
    v16 = v14;
  }

  else
  {

    v17 = static os_log_type_t.fault.getter();
    v39 = v7;
    v18 = v3;
    v19 = v17;
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000095E8(&v49, &qword_1011A1860, &qword_100EE1158);
    v21 = v18;
    v7 = v39;
    (*(v4 + 8))(v6, v21);
    v16 = v48[0];
  }

  v22 = (v16 & 1) == 0;
  v23 = 2;
  if (!v22)
  {
    v23 = 3;
  }

  v24 = v47[v23];
  KeyPath = swift_getKeyPath();
  v26 = v45;
  (*(v8 + 32))(v45, v10, v7);
  v27 = (v26 + *(v43 + 36));
  *v27 = KeyPath;
  v27[1] = v24;
  if (v15)
  {
  }

  else
  {
    sub_1000089F8(&v49, v48, &qword_1011A1860, &qword_100EE1158);

    v28 = static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v30 = v40;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000095E8(&v49, &qword_1011A1860, &qword_100EE1158);
    (*(v41 + 8))(v30, v42);
    LOBYTE(v14) = v48[0];
  }

  v31 = 4;
  if (v14)
  {
    v31 = 5;
  }

  v32 = v47[v31];
  v33 = static Alignment.center.getter();
  v35 = v34;
  sub_10003D17C(v26, v13, &qword_1011A1850, &qword_100EE1148);
  v36 = &v13[*(v44 + 36)];
  *v36 = v32;
  *(v36 + 1) = v33;
  *(v36 + 2) = v35;
  sub_10003D17C(v13, v46, &qword_1011A1858, &qword_100EE1150);

  return result;
}

uint64_t sub_10075DC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = type metadata accessor for AppInterfaceContext.Activity(0);
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v4[17] = *(v6 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[21] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10075DDBC, v8, v7);
}

uint64_t sub_10075DDBC()
{
  v1 = v0[14];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v5 style:1 handler:0];

  [v4 addAction:v7];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  v0[6] = sub_10069D768;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10027D328;
  v0[5] = &unk_1010BDD40;
  v9 = _Block_copy(v0 + 2);

  v10 = [v6 actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v4 addAction:v10];
  v11 = [v1 delegate];
  if (!v11)
  {

    v0[12] = 0;
    *(v0 + 4) = 0u;
    *(v0 + 5) = 0u;
LABEL_9:
    sub_1000095E8((v0 + 8), &unk_101184EA0, &unk_100EBFA20);
    goto LABEL_10;
  }

  v0[13] = v11;
  sub_10010FC20(&unk_101184050, &unk_100EBFA30);
  sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v0[12] = 0;
    *(v0 + 4) = 0u;
    *(v0 + 5) = 0u;
    goto LABEL_8;
  }

  v12 = v0[11];
  if (!v12)
  {
LABEL_8:

    goto LABEL_9;
  }

  v13 = *(*sub_10000954C(v0 + 8, v12) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(v0 + 8);
  if (v13)
  {
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[18];
    v17 = v0[16];
    *v14 = v4;
    *(v14 + 8) = 1;
    *(v14 + 16) = &_swiftEmptySetSingleton;
    swift_storeEnumTagMultiPayload();
    sub_1007630D8(v14, v15, type metadata accessor for AppInterfaceContext.Activity);
    sub_1007630D8(v15, v16, type metadata accessor for AppInterfaceContext.Activity);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_100763140(v16, v19 + v18, type metadata accessor for AppInterfaceContext.Activity);
    v20 = v4;
    sub_100706900(v15, sub_100139B24, v19);

    sub_100761B84(v15, type metadata accessor for AppInterfaceContext.Activity);
    sub_100761B84(v14, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
  }

LABEL_10:

  v21 = v0[1];

  return v21();
}

uint64_t sub_10075E33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 512) = v16;
  *(v8 + 232) = a8;
  *(v8 + 240) = v15;
  *(v8 + 216) = a6;
  *(v8 + 224) = a7;
  *(v8 + 200) = a4;
  *(v8 + 208) = a5;
  v9 = type metadata accessor for AppInterfaceContext.Activity(0);
  *(v8 + 248) = v9;
  *(v8 + 256) = *(v9 - 8);
  *(v8 + 264) = swift_task_alloc();
  sub_10010FC20(&unk_1011841F0, &qword_100ECF040);
  *(v8 + 272) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 280) = v10;
  *(v8 + 288) = *(v10 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = type metadata accessor for SharePlayProxCard(0);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = type metadata accessor for SharePlayProxCard.ViewModel(0);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v8 + 408) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v8 + 416) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 424) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 432) = v11;
  *(v8 + 440) = v12;

  return _swift_task_switch(sub_10075E660, v11, v12);
}

uint64_t sub_10075E660()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = swift_allocObject();
  *(v0 + 448) = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v1;
  v168 = v6;
  v7 = v1;
  sub_100030444(v3, v4);
  v8 = v5;
  v166 = v2;
  if (v2 == 1)
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 200);
    v11 = Image.init(_internalSystemName:)();

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v12 = String.init(localized:table:bundle:locale:comment:)();
    v163 = v13;
    v164 = v12;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_10010FC20(&qword_101186688, &qword_100EC2038);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100EBC6B0;
    v15 = [v10 hostDisplayName];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_10001CDD0();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    v19 = String.init(format:_:)();
    v159 = v20;
    v160 = v19;

    swift_beginAccess();
    *(v9 + 16) = 1;
  }

  else
  {
    v21 = *(v0 + 200);
    v169 = Image.init(_internalSystemName:)();

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_10010FC20(&qword_101186688, &qword_100EC2038);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100EBC6B0;
    v23 = [v21 hostDisplayName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_10001CDD0();
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    v27 = String.init(format:_:)();
    v163 = v28;
    v164 = v27;

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v160 = String.init(localized:table:bundle:locale:comment:)();
    v11 = v169;
    v159 = v29;
  }

  v170 = v11;
  *(v0 + 456) = v11;
  v30 = *(v0 + 400);
  v31 = *(v0 + 240);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v155 = v33;
  v156 = v32;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34 = String.init(localized:table:bundle:locale:comment:)();
  v152 = v35;
  v153 = v34;
  swift_beginAccess();
  v151 = *(v31 + 16);
  v162 = swift_allocObject();
  *(v162 + 16) = sub_100763CD0;
  *(v162 + 24) = v168;
  v36 = objc_allocWithZone(type metadata accessor for SharePlayProxCardViewController(0));
  v37 = &v36[qword_10119DAA0];
  *v37 = 0;
  v37[1] = 0;
  v157 = v37;
  v161 = v36;
  v38 = &v36[qword_10119DAA8];
  v39 = type metadata accessor for Artwork();
  *v38 = 0;
  v38[1] = 0;
  v158 = v38;
  v40 = *(v39 - 8);
  (*(v40 + 56))(v30, 1, 1, v39);
  v41 = objc_opt_self();

  v42 = [v41 shared];
  v43 = [v42 activeUserState];

  v44 = [v43 music];
  v45 = [v44 userProfile];

  v154 = v45;
  if (v45)
  {
    v46 = [v45 name];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = [v45 artworkInfo];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 responseDictionary];

      if (v52)
      {
        v53 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = sub_10005476C(v53);

        if (v54)
        {
          v55 = *(v0 + 392);
          v56 = *(v0 + 400);
          Artwork.init(_:)();
          sub_10006B010(v55, v56, &unk_101188920, &qword_100EBCC50);
        }
      }
    }

    v57 = *(v0 + 384);
    sub_1000089F8(*(v0 + 400), v57, &unk_101188920, &qword_100EBCC50);
    v58 = (*(v40 + 48))(v57, 1, v39);
    sub_1000095E8(v57, &unk_101188920, &qword_100EBCC50);
    if (v58 != 1)
    {
      v59 = v47;
LABEL_25:
      v82 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_100EBC6C0;
  *(v60 + 32) = CNContactThumbnailImageDataKey;
  v171 = v60;
  v61 = objc_opt_self();
  v62 = CNContactThumbnailImageDataKey;
  v63 = [v61 descriptorForRequiredKeysForStyle:0];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v64 = [objc_allocWithZone(CNContactStore) init];
  sub_10010FC20(&qword_1011A1138, &qword_100EE0970);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 176) = 0;
  v66 = [v64 _ios_meContactWithKeysToFetch:isa error:v0 + 176];

  v67 = *(v0 + 176);
  if (!v66)
  {
    v59 = v47;
    v71 = v67;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_25;
  }

  if (!v49)
  {
    v68 = [v61 stringFromContact:v66 style:0];
    if (v68)
    {
      v69 = v68;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v70;
    }

    else
    {
      v49 = 0;
    }
  }

  v72 = *(v0 + 376);
  sub_1000089F8(*(v0 + 400), v72, &unk_101188920, &qword_100EBCC50);
  v73 = (*(v40 + 48))(v72, 1, v39);
  v74 = *(v0 + 376);
  if (v73 != 1)
  {
    v59 = v47;

    sub_1000095E8(v74, &unk_101188920, &qword_100EBCC50);
    goto LABEL_25;
  }

  sub_1000095E8(*(v0 + 376), &unk_101188920, &qword_100EBCC50);
  v75 = [v66 thumbnailImageData];
  v59 = v47;
  if (!v75)
  {

    goto LABEL_25;
  }

  v76 = v75;
  v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;

  v80 = objc_allocWithZone(UIImage);
  v81 = Data._bridgeToObjectiveC()().super.isa;
  v82 = [v80 initWithData:v81];

  sub_10002C064(v77, v79);
LABEL_26:
  v83 = v166 == 1;
  v85 = *(v0 + 360);
  v84 = *(v0 + 368);
  v87 = *(v0 + 344);
  v86 = *(v0 + 352);
  v88 = *(v0 + 328);
  v149 = *(v0 + 336);
  v150 = *(v0 + 400);
  v148 = *(v0 + 512);
  v167 = *(v0 + 240);
  sub_1000089F8(v150, v84 + v86[10], &unk_101188920, &qword_100EBCC50);
  *v84 = v170;
  *(v84 + 8) = v164;
  *(v84 + 16) = v163;
  *(v84 + 24) = v160;
  *(v84 + 32) = v159;
  *(v84 + 40) = v156;
  *(v84 + 48) = v155;
  *(v84 + 56) = v153;
  *(v84 + 64) = v152;
  *(v84 + 72) = v151;
  *(v84 + v86[11]) = v82;
  v89 = (v84 + v86[12]);
  *v89 = v59;
  v89[1] = v49;
  v90 = v84 + v86[13];
  *v90 = sub_100766240;
  *(v90 + 8) = 0;
  *(v90 + 16) = 0;
  v165 = v83;
  *(v84 + v86[14]) = v83;
  type metadata accessor for SharePlayProxCard.CardState(0);
  swift_allocObject();
  v91 = sub_100693508();
  v92 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1007630D8(v84, v85, type metadata accessor for SharePlayProxCard.ViewModel);

  sub_1006918DC(v85, v87);
  v93 = (v87 + *(v88 + 24));
  v95 = *v93;
  v94 = v93[1];

  sub_100020438(v95, v94);
  *v93 = sub_100766244;
  v93[1] = v92;
  *&v161[qword_10119DA90] = v91;
  sub_1007630D8(v84, &v161[qword_10119DA98], type metadata accessor for SharePlayProxCard.ViewModel);
  v96 = *v157;
  v97 = v157[1];
  *v157 = sub_100763CE0;
  v157[1] = v162;

  sub_100020438(v96, v97);
  v98 = *v158;
  v99 = v158[1];
  *v158 = 0;
  v158[1] = 0;
  sub_100020438(v98, v99);
  sub_1007630D8(v87, v149, type metadata accessor for SharePlayProxCard);
  v103 = Card.ViewController.init(content:)(v149, v100, v101, v102);
  *(v0 + 464) = v103;

  sub_100761B84(v84, type metadata accessor for SharePlayProxCard.ViewModel);
  sub_1000095E8(v150, &unk_101188920, &qword_100EBCC50);
  sub_100761B84(v87, type metadata accessor for SharePlayProxCard);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  swift_beginAccess();
  if ((*(v167 + 16) & 1) == 0 && v148)
  {
    v104 = *(v0 + 320);
    v105 = *(v0 + 280);
    v106 = *(v0 + 288);
    v107 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*(v106 + 16))(v104, v107, v105);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&_mh_execute_header, v108, v109, "Auto connecting", v110, 2u);
    }

    v111 = *(v0 + 320);
    v112 = *(v0 + 280);
    v113 = *(v0 + 288);
    v115 = *(v0 + 216);
    v114 = *(v0 + 224);
    v117 = *(v0 + 200);
    v116 = *(v0 + 208);

    (*(v113 + 8))(v111, v112);
    sub_10075FFF8(v103, v165, v117, v116, v115, v114);
  }

  v118 = *(v0 + 288);
  v119 = *(v0 + 240);
  swift_beginAccess();
  LODWORD(v119) = *(v119 + 16);
  v120 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v121 = *(v118 + 16);
  *(v0 + 472) = v121;
  v122 = *(v0 + 280);
  if (v119 != 1)
  {
    v123 = (v0 + 304);
    v121(*(v0 + 304), v120, v122);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      v127 = "Presenting join card";
      goto LABEL_36;
    }

LABEL_37:
    v128 = *v123;
    goto LABEL_38;
  }

  v123 = (v0 + 312);
  v121(*(v0 + 312), v120, v122);
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v124, v125))
  {
    goto LABEL_37;
  }

  v126 = swift_slowAlloc();
  *v126 = 0;
  v127 = "Presenting identity creation card";
LABEL_36:
  _os_log_impl(&_mh_execute_header, v124, v125, v127, v126, 2u);
  v128 = *v123;

LABEL_38:
  v129 = *(v0 + 280);
  v130 = *(v0 + 288);
  v131 = *(v0 + 200);

  v132 = *(v130 + 8);
  *(v0 + 480) = v132;
  v132(v128, v129);
  v133 = [v131 hostInfo];
  LODWORD(v129) = [v133 routeType];

  if (v129 != 1)
  {
    v134 = [*(v0 + 200) hostInfo];
    v135 = [v134 routeType];

    if (v135 != 2)
    {
      if (qword_10117F8A8 != -1)
      {
        swift_once();
      }

      sub_10058BB38(2, 2);
    }
  }

  v136 = [*(v0 + 224) delegate];
  if (!v136)
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_53:
    sub_1000095E8(v0 + 16, &unk_101184EA0, &unk_100EBFA20);
    goto LABEL_54;
  }

  *(v0 + 184) = v136;
  sub_10010FC20(&unk_101184050, &unk_100EBFA30);
  sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_52;
  }

  v137 = *(v0 + 40);
  if (!v137)
  {
LABEL_52:

    goto LABEL_53;
  }

  v138 = *(*sub_10000954C((v0 + 16), v137) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);
  *(v0 + 488) = v138;

  sub_10000959C((v0 + 16));
  if (v138)
  {
    v139 = *(v0 + 264);
    v140 = sub_10010EAAC(&off_10109C3B0);
    swift_arrayDestroy();
    *v139 = v103;
    *(v139 + 8) = 1;
    *(v139 + 16) = v140;
    swift_storeEnumTagMultiPayload();
    v141 = v103;
    v142 = swift_task_alloc();
    *(v0 + 496) = v142;
    *v142 = v0;
    v142[1] = sub_10075F968;
    v144 = *(v0 + 264);
    v143 = *(v0 + 272);

    return sub_100706024(v143, v144);
  }

LABEL_54:
  v146 = *(v0 + 272);
  (*(*(v0 + 256) + 56))(v146, 1, 1, *(v0 + 248));
  sub_1000095E8(v146, &unk_1011841F0, &qword_100ECF040);

  v147 = *(v0 + 8);

  return v147();
}

uint64_t sub_10075F968()
{
  v2 = *v1;
  (*v1)[63] = v0;

  sub_100761B84(v2[33], type metadata accessor for AppInterfaceContext.Activity);

  v3 = v2[55];
  v4 = v2[54];
  if (v0)
  {
    v5 = sub_10075FCCC;
  }

  else
  {
    v5 = sub_10075FB20;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10075FB20()
{
  v1 = v0[58];

  v2 = v0[34];
  (*(v0[32] + 56))(v2, 0, 1, v0[31]);
  sub_1000095E8(v2, &unk_1011841F0, &qword_100ECF040);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10075FCCC()
{
  v24 = v0;
  v1 = v0[59];
  v2 = v0[37];
  v3 = v0[35];

  v4 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[63];
    v21 = v0[37];
    v22 = v0[60];
    v19 = v0[58];
    v20 = v0[35];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446210;
    v0[24] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000105AC(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to present join card: %{public}s", v8, 0xCu);
    sub_10000959C(v9);

    v22(v21, v20);
  }

  else
  {
    v13 = v0[60];
    v14 = v0[58];
    v15 = v0[37];
    v16 = v0[35];

    v13(v15, v16);
  }

  v17 = v0[1];

  return v17();
}

double sub_10075FFF8(char *a1, char a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v36 - v16;
  if (a2)
  {
    v18 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*(v13 + 16))(v17, v18, v12);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Connecting to Sing session", v21, 2u);
    }

    (*(v13 + 8))(v17, v12);
    v22 = swift_allocObject();
    v22[2] = a3;
    v22[3] = a4;
    v22[4] = a5;
    aBlock[4] = sub_100763D68;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BDC28;
    v23 = _Block_copy(aBlock);
    v24 = a3;
    sub_100030444(a4, a5);

    [a1 dismissViewControllerAnimated:1 completion:v23];
    _Block_release(v23);
  }

  else
  {
    v37 = a3;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock[0]) = 1;

    static Published.subscript.setter();
    v26 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*(v13 + 16))(v15, v26, v12);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Connecting to session", v29, 2u);
    }

    (*(v13 + 8))(v15, v12);
    v30 = v37;
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v31 = qword_101218AC8;
    v32 = swift_allocObject();
    v32[2] = a1;
    v32[3] = a4;
    v32[4] = a5;
    v32[5] = a6;
    v33 = *(*v31 + 712);
    sub_100030444(a4, a5);
    v34 = a1;
    v35 = a6;
    v33(v30, sub_100763D5C, v32);
  }

  return result;
}

double sub_100760424(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v24 = *(v13 - 8);
  v25 = v13;
  __chkstk_darwin();
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_1007643C8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010BDC78;
  v17 = _Block_copy(aBlock);
  swift_errorRetain();
  v18 = a2;
  sub_100030444(a3, a4);
  v19 = a5;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100763090(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v23;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v26 + 8))(v12, v10);
  (*(v24 + 8))(v15, v25);

  return result;
}

void sub_100760740(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v64 = a5;
  v65 = a2;
  v8 = type metadata accessor for AppInterfaceContext.Activity(0);
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  __chkstk_darwin();
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v55 - v11;
  v59 = v12;
  __chkstk_darwin();
  v14 = &v55 - v13;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v55 - v19;
  if (a1)
  {
    v56 = v14;
    v62 = a3;
    v63 = a4;
    swift_errorRetain();
    v21 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*(v16 + 16))(v18, v21, v15);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to join session: %{public}@", v24, 0xCu);
      sub_1000095E8(v25, &unk_101183D70, &unk_100EC6540);
    }

    (*(v16 + 8))(v18, v15);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;

    static Published.subscript.setter();
    v27 = *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    if (v27 == 1)
    {
      String.init(localized:table:bundle:locale:comment:)();
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      v28._countAndFlagsBits = 0x414E5245544E495BLL;
      v28._object = 0xEB00000000205D4CLL;
      String.append(_:)(v28);
      v66 = a1;
      sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
      _print_unlocked<A, B>(_:_:)();
      v29 = String._bridgeToObjectiveC()();

      v30 = String._bridgeToObjectiveC()();

      v31 = [objc_opt_self() alertControllerWithTitle:v29 message:v30 preferredStyle:1];

      v32 = v31;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v33 = String._bridgeToObjectiveC()();

      v34 = [objc_opt_self() actionWithTitle:v33 style:0 handler:0];

      [v32 addAction:v34];
      v35 = [v64 delegate];
      v36 = v62;
      if (v35)
      {
        v66 = v35;
        sub_10010FC20(&unk_101184050, &unk_100EBFA30);
        sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
        if (swift_dynamicCast())
        {
          if (*(&v68 + 1))
          {
            v37 = *(*sub_10000954C(&aBlock, *(&v68 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C(&aBlock);
            if (!v37)
            {
              goto LABEL_18;
            }

LABEL_17:
            v50 = v56;
            *v56 = v32;
            *(v50 + 8) = 1;
            *(v50 + 16) = &_swiftEmptySetSingleton;
            swift_storeEnumTagMultiPayload();
            v51 = v61;
            sub_1007630D8(v50, v61, type metadata accessor for AppInterfaceContext.Activity);
            v52 = v60;
            sub_1007630D8(v51, v60, type metadata accessor for AppInterfaceContext.Activity);
            v53 = (*(v58 + 80) + 32) & ~*(v58 + 80);
            v54 = swift_allocObject();
            *(v54 + 16) = 0;
            *(v54 + 24) = 0;
            sub_100763140(v52, v54 + v53, type metadata accessor for AppInterfaceContext.Activity);
            v32 = v32;
            sub_100706900(v51, sub_100139B24, v54);

            sub_100761B84(v51, type metadata accessor for AppInterfaceContext.Activity);
            sub_100761B84(v50, type metadata accessor for AppInterfaceContext.Activity);
LABEL_18:
            if (v36)
            {
LABEL_19:
              swift_errorRetain();
              v36(a1);

LABEL_23:

              return;
            }

LABEL_22:

            goto LABEL_23;
          }

          goto LABEL_21;
        }
      }
    }

    else
    {
      String.init(localized:table:bundle:locale:comment:)();
      v44 = String._bridgeToObjectiveC()();

      v45 = [objc_opt_self() alertControllerWithTitle:0 message:v44 preferredStyle:1];

      v32 = v45;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v46 = String._bridgeToObjectiveC()();

      v47 = [objc_opt_self() actionWithTitle:v46 style:0 handler:0];

      [v32 addAction:v47];
      v48 = [v64 delegate];
      v36 = v62;
      if (v48)
      {
        v66 = v48;
        sub_10010FC20(&unk_101184050, &unk_100EBFA30);
        sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
        if (swift_dynamicCast())
        {
          if (*(&v68 + 1))
          {
            v49 = *(*sub_10000954C(&aBlock, *(&v68 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C(&aBlock);
            if (!v49)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

LABEL_21:
          sub_1000095E8(&aBlock, &unk_101184EA0, &unk_100EBFA20);
          if (v36)
          {
            goto LABEL_19;
          }

          goto LABEL_22;
        }
      }
    }

    v69 = 0;
    aBlock = 0u;
    v68 = 0u;
    goto LABEL_21;
  }

  v38 = Logger.sharePlayTogether.unsafeMutableAddressor();
  (*(v16 + 16))(v20, v38, v15);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Joined session", v41, 2u);
  }

  (*(v16 + 8))(v20, v15);
  v42 = swift_allocObject();
  *(v42 + 16) = a3;
  *(v42 + 24) = a4;
  v69 = sub_1007643D8;
  v70 = v42;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v68 = sub_10002BC98;
  *(&v68 + 1) = &unk_1010BDCC8;
  v43 = _Block_copy(&aBlock);
  sub_100030444(a3, a4);

  [v65 dismissViewControllerAnimated:1 completion:v43];
  _Block_release(v43);
}

uint64_t sub_1007612C8(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100761470(uint64_t a1)
{
  sub_10010FC20(&qword_101198DB0, &qword_100ED7910);
  __chkstk_darwin();
  sub_1000089F8(a1, &v4 - v2, &qword_101198DB0, &qword_100ED7910);
  return EnvironmentValues.symbolRenderingMode.setter();
}

uint64_t sub_100761518(uint64_t a1, char *a2)
{
  v42 = a1;
  v43 = a2;
  sub_10010FC20(&qword_101186E00, &qword_100EC31E0);
  __chkstk_darwin();
  v40 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v40 - v3;
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  __chkstk_darwin();
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v40 - v7;
  type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
  __chkstk_darwin();
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v40 - v11;
  __chkstk_darwin();
  v14 = (&v40 - v13);
  sub_10010FC20(&qword_1011A0F70, &qword_100EE0738);
  __chkstk_darwin();
  v16 = &v40 - v15;
  v18 = *(v17 + 56);
  sub_1007630D8(v42, &v40 - v15, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  sub_1007630D8(v43, &v16[v18], type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  v43 = v16;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v21 = v41;
    if (!EnumCaseMultiPayload)
    {
      v20 = v43;
      sub_1007630D8(v43, v14, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_22;
      }

      v22 = *v14 == *&v20[v18];
      goto LABEL_12;
    }

    v20 = v43;
    sub_1007630D8(v43, v12, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100761B84(v12, type metadata accessor for SharePlayTogetherSession.Participant);
      goto LABEL_22;
    }

    v24 = v12;
    v25 = v8;
    sub_100763140(v24, v8, type metadata accessor for SharePlayTogetherSession.Participant);
    v26 = v6;
    sub_100763140(&v20[v18], v6, type metadata accessor for SharePlayTogetherSession.Participant);
    if ((*v8 != *v6 || *(v8 + 1) != *(v6 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v8[32] != v6[32])
    {
      v22 = 0;
LABEL_41:
      sub_100761B84(v26, type metadata accessor for SharePlayTogetherSession.Participant);
      sub_100761B84(v25, type metadata accessor for SharePlayTogetherSession.Participant);
      sub_100761B84(v43, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
      return v22 & 1;
    }

    sub_1000089F8(&v8[*(v4 + 32)], v21, &qword_101186E00, &qword_100EC31E0);
    v28 = type metadata accessor for SocialProfile();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (v30(v21, 1, v28) == 1)
    {
      sub_1000095E8(v21, &qword_101186E00, &qword_100EC31E0);
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v33 = v21;
      v31 = SocialProfile.id.getter();
      v32 = v34;
      (*(v29 + 8))(v33, v28);
    }

    v35 = v40;
    sub_1000089F8(v26 + *(v4 + 32), v40, &qword_101186E00, &qword_100EC31E0);
    if (v30(v35, 1, v28) == 1)
    {
      sub_1000095E8(v35, &qword_101186E00, &qword_100EC31E0);
      if (!v32)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v36 = v35;
      v37 = SocialProfile.id.getter();
      v39 = v38;
      (*(v29 + 8))(v36, v28);
      if (!v32)
      {
        if (!v39)
        {
LABEL_38:
          v22 = 1;
          goto LABEL_41;
        }

        v22 = 0;
LABEL_40:

        goto LABEL_41;
      }

      if (v39)
      {
        if (v31 == v37 && v32 == v39)
        {

          v22 = 1;
        }

        else
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_40;
      }
    }

    v22 = 0;
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v20 = v43;
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
LABEL_14:
        sub_100761B84(v20, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
        v22 = 1;
        return v22 & 1;
      }
    }

    else
    {
      v23 = swift_getEnumCaseMultiPayload();
      if (v23 == 4)
      {
        goto LABEL_14;
      }
    }

LABEL_22:
    sub_1000095E8(v20, &qword_1011A0F70, &qword_100EE0738);
    v22 = 0;
    return v22 & 1;
  }

  v20 = v43;
  sub_1007630D8(v43, v10, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_22;
  }

  v22 = *v10 ^ v20[v18] ^ 1;
LABEL_12:
  sub_100761B84(v20, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  return v22 & 1;
}

uint64_t sub_100761B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100761BE4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v148 = a1;
  v119 = type metadata accessor for AppInterfaceContext.Activity(0);
  v120 = *(v119 - 8);
  __chkstk_darwin();
  v122 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v124 = &v118 - v12;
  v121 = v13;
  __chkstk_darwin();
  v123 = (&v118 - v14);
  v145 = type metadata accessor for SharePlayProxCard(0);
  __chkstk_darwin();
  v146 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v147 = &v118 - v16;
  v143 = type metadata accessor for SharePlayProxCard.ViewModel(0);
  __chkstk_darwin();
  v144 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v118 - v18;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v126 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v127 = &v118 - v21;
  __chkstk_darwin();
  v125 = &v118 - v22;
  __chkstk_darwin();
  v24 = &v118 - v23;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v142 = String.init(localized:table:bundle:locale:comment:)();
  v141 = v25;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v138 = String.init(localized:table:bundle:locale:comment:)();
  v137 = v26;
  if (a2)
  {
    v151 = sub_100766240;
    v152 = 0;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v151 = String.init(localized:table:bundle:locale:comment:)();
    v152 = v27;
  }

  v150 = a2 ^ 1;
  v133 = Image.init(_internalSystemName:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v132 = String.init(localized:table:bundle:locale:comment:)();
  v131 = v28;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v129 = String.init(localized:table:bundle:locale:comment:)();
  v128 = v29;
  v30 = swift_allocObject();
  v31 = a3;
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;
  v140 = v30;
  v32 = a4;
  v33 = swift_allocObject();
  v34 = a5;
  *(v33 + 16) = a5;
  *(v33 + 24) = a6;
  v139 = v33;
  v35 = a6;
  v36 = objc_allocWithZone(type metadata accessor for SharePlayProxCardViewController(0));
  v37 = &v36[qword_10119DAA0];
  *v37 = 0;
  v37[1] = 0;
  v134 = v37;
  v136 = v36;
  v38 = &v36[qword_10119DAA8];
  v39 = type metadata accessor for Artwork();
  *v38 = 0;
  v38[1] = 0;
  v135 = v38;
  v40 = *(v39 - 8);
  v41 = v24;
  (*(v40 + 56))(v24, 1, 1, v39);
  v42 = objc_opt_self();
  sub_100030444(v31, v32);
  sub_100030444(v34, v35);
  v43 = [v42 shared];
  v44 = [v43 activeUserState];

  v45 = [v44 music];
  v46 = [v45 userProfile];

  v130 = v46;
  if (v46)
  {
    v47 = [v46 name];
    v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = [v46 artworkInfo];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 responseDictionary];

      if (v52)
      {
        v53 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = sub_10005476C(v53);

        if (v54)
        {
          v55 = v125;
          Artwork.init(_:)();
          sub_10006B010(v55, v41, &unk_101188920, &qword_100EBCC50);
        }
      }
    }

    v56 = v127;
    sub_1000089F8(v41, v127, &unk_101188920, &qword_100EBCC50);
    v57 = (*(v40 + 48))(v56, 1, v39);
    sub_1000095E8(v56, &unk_101188920, &qword_100EBCC50);
    if (v57 != 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v149 = 0;
    v49 = 0;
  }

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_100EBC6C0;
  *(v58 + 32) = CNContactThumbnailImageDataKey;
  *&v154 = v58;
  v59 = objc_opt_self();
  v60 = CNContactThumbnailImageDataKey;
  v61 = [v59 descriptorForRequiredKeysForStyle:0];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v62 = [objc_allocWithZone(CNContactStore) init];
  sub_10010FC20(&qword_1011A1138, &qword_100EE0970);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v157 = 0;
  v64 = [v62 _ios_meContactWithKeysToFetch:isa error:&v157];

  v65 = v157;
  if (v64)
  {
    if (!v49)
    {
      v66 = [v59 stringFromContact:v64 style:0];
      if (v66)
      {
        v67 = v66;
        v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v68;
      }

      else
      {
        v49 = 0;
      }
    }

    v70 = v126;
    sub_1000089F8(v41, v126, &unk_101188920, &qword_100EBCC50);
    if ((*(v40 + 48))(v70, 1, v39) == 1)
    {
      sub_1000095E8(v70, &unk_101188920, &qword_100EBCC50);
      v71 = [v64 thumbnailImageData];
      if (v71)
      {
        v72 = v71;
        v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;

        v76 = objc_allocWithZone(UIImage);
        v77 = Data._bridgeToObjectiveC()().super.isa;
        v78 = [v76 initWithData:v77];

        sub_10002C064(v73, v75);
        goto LABEL_26;
      }
    }

    else
    {

      sub_1000095E8(v70, &unk_101188920, &qword_100EBCC50);
    }
  }

  else
  {
    v69 = v65;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_25:
  v78 = 0;
LABEL_26:
  v79 = v143;
  sub_1000089F8(v41, &v19[*(v143 + 40)], &unk_101188920, &qword_100EBCC50);
  v80 = v142;
  *v19 = v133;
  *(v19 + 1) = v80;
  v81 = v138;
  *(v19 + 2) = v141;
  *(v19 + 3) = v81;
  v82 = v132;
  *(v19 + 4) = v137;
  *(v19 + 5) = v82;
  v83 = v129;
  *(v19 + 6) = v131;
  *(v19 + 7) = v83;
  *(v19 + 8) = v128;
  v19[72] = 1;
  *&v19[v79[11]] = v78;
  v84 = &v19[v79[12]];
  *v84 = v149;
  v84[1] = v49;
  v85 = &v19[v79[13]];
  v86 = v152;
  *v85 = v151;
  *(v85 + 1) = v86;
  LODWORD(v149) = v150 & 1;
  v85[16] = v150 & 1;
  v19[v79[14]] = 0;
  type metadata accessor for SharePlayProxCard.CardState(0);
  swift_allocObject();
  v87 = sub_100693508();
  v88 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = v144;
  sub_1007630D8(v19, v144, type metadata accessor for SharePlayProxCard.ViewModel);

  v90 = v147;
  sub_1006918DC(v89, v147);
  v91 = (v90 + *(v145 + 24));
  v92 = *v91;
  v93 = v91[1];

  sub_100020438(v92, v93);
  *v91 = sub_100763AF0;
  v91[1] = v88;
  v94 = v136;
  *&v136[qword_10119DA90] = v87;
  sub_1007630D8(v19, &v94[qword_10119DA98], type metadata accessor for SharePlayProxCard.ViewModel);
  v95 = v134;
  v96 = *v134;
  v97 = v134[1];
  v98 = v140;
  *v134 = sub_100763AC0;
  v95[1] = v98;

  sub_100020438(v96, v97);
  v99 = v135;
  v100 = *v135;
  v101 = v135[1];
  v102 = v139;
  *v135 = sub_1001D281C;
  v99[1] = v102;

  sub_100020438(v100, v101);
  v103 = v146;
  sub_1007630D8(v90, v146, type metadata accessor for SharePlayProxCard);
  v107 = Card.ViewController.init(content:)(v103, v104, v105, v106);

  sub_100761B84(v19, type metadata accessor for SharePlayProxCard.ViewModel);
  sub_1000095E8(v41, &unk_101188920, &qword_100EBCC50);
  sub_100761B84(v90, type metadata accessor for SharePlayProxCard);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v108 = [v148 delegate];
  if (!v108)
  {
    sub_10069A538(v151, v152, v149);

    v156 = 0;
    v154 = 0u;
    v155 = 0u;
LABEL_34:
    sub_1000095E8(&v154, &unk_101184EA0, &unk_100EBFA20);
    return;
  }

  v153 = v108;
  sub_10010FC20(&unk_101184050, &unk_100EBFA30);
  sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v156 = 0;
    v154 = 0u;
    v155 = 0u;
    v109 = v152;
    goto LABEL_33;
  }

  v109 = v152;
  if (!*(&v155 + 1))
  {
LABEL_33:
    sub_10069A538(v151, v109, v150 & 1);

    goto LABEL_34;
  }

  v110 = *(*sub_10000954C(&v154, *(&v155 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&v154);
  if (v110)
  {
    v111 = sub_10010EAAC(&off_101099610);
    swift_arrayDestroy();
    v112 = v123;
    *v123 = v107;
    *(v112 + 8) = 1;
    *(v112 + 16) = v111;
    swift_storeEnumTagMultiPayload();
    v113 = v124;
    sub_1007630D8(v112, v124, type metadata accessor for AppInterfaceContext.Activity);
    v114 = v122;
    sub_1007630D8(v113, v122, type metadata accessor for AppInterfaceContext.Activity);
    v115 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v116 = swift_allocObject();
    *(v116 + 16) = 0;
    *(v116 + 24) = 0;
    sub_100763140(v114, v116 + v115, type metadata accessor for AppInterfaceContext.Activity);
    v117 = v107;
    sub_100706900(v113, sub_100137E88, v116);

    sub_10069A538(v151, v109, v150 & 1);

    sub_100761B84(v113, type metadata accessor for AppInterfaceContext.Activity);
    sub_100761B84(v112, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
    sub_10069A538(v151, v109, v150 & 1);
  }
}

void sub_100762D78()
{
  v1 = v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_preferredWidth;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = (v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_onDismiss);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_observables) = &_swiftEmptySetSingleton;
  v3 = (v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastSeenSafeAreaLayoutFrame);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_lastPendingParticipantScrolledTo;
  v5 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_contentSizeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_discoveryPreferenceObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_sessionAssertion) = 0;
  *(v0 + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_viewDidAppearOnce) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100762EB8(uint64_t a1)
{
  sub_10010FC20(&qword_1011A0F78, &qword_100EE0740);
  __chkstk_darwin();
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v14 - v5;
  v7 = [v1 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 3)
  {
    v9 = *&v1[OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_dataSource];
    if (v9)
    {
      v10 = v9;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      v11 = type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier(0);
      if ((*(*(v11 - 8) + 48))(v6, 1, v11) != 1)
      {
        sub_1000089F8(v6, v3, &qword_1011A0F78, &qword_100EE0740);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 4)
        {
          sub_100761B84(v3, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
        }
      }

      sub_1000095E8(v6, &qword_1011A0F78, &qword_100EE0740);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100763090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1007630D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100763140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007631FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_10074CDC4(a1, a2, a3, a4, v10, v11);
}

id sub_1007632C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10010FC20(&unk_1011A0FE0, &qword_100EE0798) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(v7 + 64);
  v11 = *(sub_10010FC20(&qword_1011A0FD8, &qword_100EE0790) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_10010FC20(&qword_1011A0FD0, &qword_100EE0788) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v8 + v15) & ~v8;
  return sub_10074F708(a1, a2, a3, *(v3 + 16), v3 + v9, v3 + v12, v3 + v15, v3 + v16, v3 + ((v10 + v8 + v16) & ~v8));
}

unint64_t sub_10076347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10010FC20(&unk_10118A650, &qword_100EC02B0) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_1007509D8(a1, a2, a3, a4, v10, v11);
}

unint64_t sub_100763574()
{
  result = qword_1011A1028;
  if (!qword_1011A1028)
  {
    sub_1001109D0(&unk_1011A1030, &unk_100EE0800);
    sub_100020674(&qword_1011966E8, &qword_1011A1040, &qword_100ED50D8, &protocol conformance descriptor for Toggle<A>);
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1028);
  }

  return result;
}

uint64_t sub_100763658@<X0>(_BYTE *a1@<X8>)
{
  result = MRGroupSessionNearbyContactDiscoveryEnabled();
  *a1 = result;
  return result;
}

id sub_1007636EC@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  *a1 = v2;
  return v2;
}

unint64_t sub_100763704()
{
  result = qword_1011A1068;
  if (!qword_1011A1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1068);
  }

  return result;
}

uint64_t sub_100763758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10074EFB0(a1, v4, v5, v6);
}

unint64_t sub_100763878()
{
  result = qword_1011A10C0;
  if (!qword_1011A10C0)
  {
    sub_1001109D0(&qword_1011A10B8, &qword_100EE08E0);
    sub_100020674(&qword_1011A10C8, &qword_1011A10D0, &qword_100EE08E8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A10C0);
  }

  return result;
}

double sub_100763968@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(v1[2] + OBJC_IVAR____TtC5Music48SharePlayTogetherSessionManagementViewController_session);
  *a1 = v4;
  a1[1] = v2;
  a1[2] = v3;
  v5 = v4;

  return result;
}

unint64_t sub_1007639B8()
{
  result = qword_1011A10E0;
  if (!qword_1011A10E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A10E0);
  }

  return result;
}

uint64_t sub_100763A0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10074DE08(a1, v4, v5, v6);
}

uint64_t sub_100763AC0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100763B24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10075DC50(a1, v4, v5, v6);
}

uint64_t sub_100763BD8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_10075E33C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100763D0C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100763D68()
{
  v1 = *(v0 + 24);
  result = sub_100763DA0(*(v0 + 16));
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t sub_100763DA0(void *a1)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v65 = &v55[-v2];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v12 = &v55[-v11];
  v13 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v14 = *(v8 + 16);
  v62 = v13;
  v63 = v8 + 16;
  v61 = v14;
  v14(v12);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v59 = v7;
    v19 = v18;
    v60 = swift_slowAlloc();
    v66 = v60;
    *v19 = 136315138;
    v20 = v15;
    v64 = v10;
    v21 = v20;
    v22 = [v20 description];
    v56 = v17;
    v23 = v4;
    v24 = v3;
    v25 = v22;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v15;
    v58 = v6;
    v27 = v26;
    v28 = v8;
    v30 = v29;

    v10 = v64;
    v3 = v24;
    v4 = v23;
    v31 = sub_1000105AC(v27, v30, &v66);
    v8 = v28;
    v6 = v58;

    *(v19 + 4) = v31;
    v15 = v57;
    _os_log_impl(&_mh_execute_header, v16, v56, "Launch SingMic with %s", v19, 0xCu);
    sub_10000959C(v60);

    v7 = v59;
  }

  v60 = *(v8 + 8);
  (v60)(v12, v7);
  v32 = v15;
  v33 = [v15 joinContinuitySingURLString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = v65;
  URL.init(string:)();

  if ((*(v4 + 48))(v34, 1, v3) == 1)
  {
    sub_1000095E8(v34, &qword_101183A20, &unk_100EBCF80);
    v61(v10, v62, v7);
    v35 = v32;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = v7;
      v40 = swift_slowAlloc();
      v66 = v40;
      *v38 = 136315138;
      v41 = v35;
      v42 = [v41 description];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v10;
      v45 = v44;

      v46 = sub_1000105AC(v43, v45, &v66);

      *(v38 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unable to launch SingMic %s", v38, 0xCu);
      sub_10000959C(v40);

      v47 = v64;
      v48 = v39;
    }

    else
    {

      v47 = v10;
      v48 = v7;
    }

    return (v60)(v47, v48);
  }

  else
  {
    (*(v4 + 32))(v6, v34, v3);
    v49 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v50);
    v52 = v51;
    sub_10010CD7C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_100763090(&qword_10118A3E0, type metadata accessor for OpenExternalURLOptionsKey, &unk_100EBC3A0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v49 openURL:v52 options:isa completionHandler:0];

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1007643D8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

void sub_100764444(uint64_t a1)
{
  sub_100764518(319);
  if (v1 <= 0x3F)
  {
    sub_10002EF7C(319);
    if (v2 <= 0x3F)
    {
      sub_1007645AC(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100764518(uint64_t a1)
{
  if (!qword_1011A11B8)
  {
    type metadata accessor for SharePlayTogetherSession(255);
    sub_100763090(&unk_101189E70, type metadata accessor for SharePlayTogetherSession, &protocol conformance descriptor for SharePlayTogetherSession);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A11B8);
    }
  }
}

void sub_1007645AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100764638(uint64_t a1)
{
  type metadata accessor for SharePlayTogetherSession(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SharePlayTogetherSession.Participant(319);
    if (v2 <= 0x3F)
    {
      sub_1007645AC(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100764734(uint64_t a1)
{
  type metadata accessor for SharePlayTogetherSession(319);
  if (v1 <= 0x3F)
  {
    sub_1004653BC();
    if (v2 <= 0x3F)
    {
      sub_10002EF7C(319);
      if (v3 <= 0x3F)
      {
        sub_1007645AC(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

double sub_1007648B4(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1007648D4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_10075D2D4(v1 + v4, v5, a1);
}

uint64_t sub_100764970()
{
  v1 = type metadata accessor for SharePlayTogetherSessionManagementViewController.QRCodeCell(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 24);
  if (v4)
  {
    return v4();
  }

  return result;
}

unint64_t sub_1007649E4()
{
  result = qword_1011A1358;
  if (!qword_1011A1358)
  {
    sub_1001109D0(&qword_1011A1350, &qword_100EE0C80);
    sub_100764A9C(&qword_1011A1360, &qword_1011A1368, &qword_100EE0C88, sub_100764B4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1358);
  }

  return result;
}

uint64_t sub_100764A9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100764B4C()
{
  result = qword_1011A1370;
  if (!qword_1011A1370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1370);
  }

  return result;
}

unint64_t sub_100764BCC()
{
  result = qword_1011A1470;
  if (!qword_1011A1470)
  {
    sub_1001109D0(&qword_1011A1468, &qword_100EE0D70);
    sub_100020674(&qword_1011A1478, &qword_1011A1480, &qword_100EE0D78, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1470);
  }

  return result;
}

uint64_t sub_100764C84()
{
  v1 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = v2 + *(v1 + 20);

  v4 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v5 = type metadata accessor for SocialProfile();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(&v3[v4], 1, v5))
  {
    (*(v6 + 8))(&v3[v4], v5);
  }

  v7 = *(v1 + 28);
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100764E48()
{
  v1 = type metadata accessor for SharePlayTogetherSessionManagementViewController.ParticipantView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  return (*((swift_isaMask & **v2) + 0x328))(&v2[*(v1 + 20)]);
}

unint64_t sub_100764EF4()
{
  result = qword_1011A1508;
  if (!qword_1011A1508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1508);
  }

  return result;
}

unint64_t sub_100764F48()
{
  result = qword_1011A1510;
  if (!qword_1011A1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1510);
  }

  return result;
}

uint64_t sub_100764FF4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_100765080()
{
  v1 = type metadata accessor for SharePlayTogetherSessionManagementViewController.StatusHeaderView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 24))
  {
  }

  v3 = *(v1 + 28);
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DynamicTypeSize();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100765254()
{
  result = qword_1011A1618;
  if (!qword_1011A1618)
  {
    sub_1001109D0(&qword_1011A1610, &unk_100EE0F08);
    sub_100618510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1618);
  }

  return result;
}

unint64_t sub_1007652E0()
{
  result = qword_1011A1640;
  if (!qword_1011A1640)
  {
    sub_1001109D0(&qword_1011A15E8, &qword_100EE0EE0);
    sub_1001109D0(&qword_1011A15D8, &qword_100EE0ED0);
    sub_1001109D0(&qword_1011A15D0, &qword_100EE0EC8);
    sub_100020674(&qword_1011A1638, &qword_1011A15D0, &qword_100EE0EC8, &protocol conformance descriptor for Button<A>);
    sub_100764EF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011A1648, &qword_1011A1650, &qword_100EE0F18, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1640);
  }

  return result;
}

uint64_t sub_10076548C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_100765508()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_100765540()
{
  result = qword_1011A16C8;
  if (!qword_1011A16C8)
  {
    sub_1001109D0(&qword_1011A16C0, &qword_100EE0F70);
    sub_100020674(&qword_1011A16D0, &qword_1011A16D8, &qword_100EE0F78, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A16C8);
  }

  return result;
}

unint64_t sub_1007655F8()
{
  result = qword_1011A16E8;
  if (!qword_1011A16E8)
  {
    sub_1001109D0(&qword_1011A1690, &qword_100EE0F40);
    sub_1001109D0(&qword_1011A1688, &qword_100EE0F38);
    sub_100020674(&qword_1011A16E0, &qword_1011A1688, &qword_100EE0F38, &protocol conformance descriptor for Button<A>);
    sub_100764EF4();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011A16F0, &qword_101185680, &qword_100EC1010, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A16E8);
  }

  return result;
}

void sub_100765734(uint64_t a1)
{
  sub_10001F7E8();
  if (v1 <= 0x3F)
  {
    sub_100402A50(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100765814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100765870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1007658E0()
{
  result = qword_1011A1798;
  if (!qword_1011A1798)
  {
    sub_1001109D0(&qword_1011A17A0, &qword_100EE1090);
    sub_100020674(&qword_1011A17A8, &qword_1011A17B0, &qword_100EE1098, &protocol conformance descriptor for AxisStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1798);
  }

  return result;
}

uint64_t sub_100765998(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100765A14()
{
  result = qword_1011A17C8;
  if (!qword_1011A17C8)
  {
    sub_1001109D0(&qword_1011A1390, &qword_100EE0CA0);
    sub_100765AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A17C8);
  }

  return result;
}

unint64_t sub_100765AA0()
{
  result = qword_1011A17D0;
  if (!qword_1011A17D0)
  {
    sub_1001109D0(&qword_1011A1388, &qword_100EE0C98);
    sub_100765B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A17D0);
  }

  return result;
}

unint64_t sub_100765B2C()
{
  result = qword_1011A17D8;
  if (!qword_1011A17D8)
  {
    sub_1001109D0(&unk_1011A13A0, &unk_100EE0CB0);
    sub_100020674(&qword_1011A17E0, &qword_1011A17E8, &qword_100EE10A8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A17D8);
  }

  return result;
}

unint64_t sub_100765BE4()
{
  result = qword_1011A17F0;
  if (!qword_1011A17F0)
  {
    sub_1001109D0(&unk_1011A13F0, &unk_100EE0D20);
    sub_100765C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A17F0);
  }

  return result;
}

unint64_t sub_100765C70()
{
  result = qword_1011A17F8;
  if (!qword_1011A17F8)
  {
    sub_1001109D0(&qword_1011A13E0, &qword_100EE0D10);
    sub_100765CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A17F8);
  }

  return result;
}

unint64_t sub_100765CFC()
{
  result = qword_1011A1800;
  if (!qword_1011A1800)
  {
    sub_1001109D0(&qword_1011A13D8, &qword_100EE0D08);
    sub_100765D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1800);
  }

  return result;
}

unint64_t sub_100765D88()
{
  result = qword_1011A1808;
  if (!qword_1011A1808)
  {
    sub_1001109D0(&qword_1011A13D0, &qword_100EE0D00);
    sub_100020674(&qword_1011A1810, &qword_1011A1818, &qword_100EE10B0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1808);
  }

  return result;
}

unint64_t sub_100765E40()
{
  result = qword_1011A1820;
  if (!qword_1011A1820)
  {
    sub_1001109D0(&qword_1011A1588, &qword_100EE0E88);
    sub_100765ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1820);
  }

  return result;
}

unint64_t sub_100765ECC()
{
  result = qword_1011A1828;
  if (!qword_1011A1828)
  {
    sub_1001109D0(&qword_1011A1578, &qword_100EE0E78);
    sub_100765F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1828);
  }

  return result;
}

unint64_t sub_100765F58()
{
  result = qword_1011A1830;
  if (!qword_1011A1830)
  {
    sub_1001109D0(&qword_1011A1570, &qword_100EE0E70);
    sub_100020674(&qword_1011A1838, &qword_1011A1568, &qword_100EE0E68, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1830);
  }

  return result;
}

unint64_t sub_10076607C()
{
  result = qword_1011A1868;
  if (!qword_1011A1868)
  {
    sub_1001109D0(&qword_1011A1858, &qword_100EE1150);
    sub_100766134();
    sub_100020674(&unk_1011A1880, &qword_1011A0A40, &unk_100EE1160, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1868);
  }

  return result;
}

unint64_t sub_100766134()
{
  result = qword_1011A1870;
  if (!qword_1011A1870)
  {
    sub_1001109D0(&qword_1011A1850, &qword_100EE1148);
    sub_100763090(&qword_101187968, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1870);
  }

  return result;
}

uint64_t sub_100766268()
{
  v1 = v0;
  sub_10010FC20(&unk_1011845C0, &unk_100EC0310);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6B0;
  v3 = sub_10031EA10(xmmword_100EBC6B0);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *&v18[0] = v4;
  *(&v18[0] + 1) = v6;
  v7._countAndFlagsBits = 0x7265746C69462ELL;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  v9 = *(*(v1 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController) + 48);
  swift_beginAccess();
  v10 = v9[3];
  v18[1] = v9[2];
  v11 = v9[4];
  v12 = v9[5];
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = v12;
  v18[0] = v9[1];
  v13 = swift_allocObject();
  swift_weakInit();

  sub_10030DC78(v18, v17);
  v14.super.super.isa = sub_100398190(sub_10076F1D8, v13).super.super.isa;

  sub_10030DCB0(v18);

  if (v14.super.super.isa)
  {
    v15 = [(objc_class *)v14.super.super.isa children];

    sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
    v14.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v8 = 0;
  }

  *(v2 + 32) = v8;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = v14;
  return v2;
}

id sub_100766448(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_hasAppearedOnce] = 0;
  v5 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___headerRegistration;
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___listCellRegistration;
  v8 = sub_10010FC20(&unk_1011A1918, &qword_100EE11B8);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  *&v2[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView] = 0;
  v9 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_prefetchingController;
  v10 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v2[v9] = sub_10003AAD8(0xD000000000000021, 0x8000000100E56E80);
  *&v2[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___searchController] = 0;
  v11 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___actionMetricsReportingContext;
  v12 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  *&v2[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController] = 0;
  v13 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
  v14 = type metadata accessor for Artist();
  (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
  sub_10030D9E8(a1, v28);
  sub_10010FC20(&unk_1011A1930, &unk_100EE1200);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController] = sub_1003A22BC(v28);
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v16 = String._bridgeToObjectiveC()();

  [v15 setTitle:v16];

  UIViewController.playActivityFeatureIdentifier.setter(2);
  v17 = [v15 traitCollection];

  v18 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    v21 = [v15 navigationItem];
    [v21 setLargeTitleDisplayMode:v18];
  }

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100EBC6B0;
  v23 = sub_100217F14();
  *(v22 + 32) = &type metadata for LibraryFilterTrait;
  *(v22 + 40) = v23;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100EBC6B0;
  v25 = sub_100137E8C();
  *(v24 + 32) = &type metadata for MusicLibraryTrait;
  *(v24 + 40) = v25;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v15;
}

uint64_t sub_1007668F0()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, "viewDidLoad");
  v2 = sub_100766D24();
  v3 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_prefetchingController];
  [v2 setPrefetchDataSource:v3];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = (v3 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v6 = *(v3 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v7 = *(v3 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider + 8);
  *v5 = sub_100770D60;
  v5[1] = v4;

  sub_100020438(v6, v7);

  v8 = (v3 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v9 = *(v3 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v10 = *(v3 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider + 8);
  *v8 = sub_100767218;
  v8[1] = 0;
  sub_100020438(v9, v10);
  v11 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView];
  v12 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
  v13 = v11;
  v14 = [v12 init];
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v17 + 80) = 0;
  *(v17 + 88) = v15;
  v18 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1002193FC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010BE2A0;
  v19 = _Block_copy(aBlock);

  v20 = [v18 initWithSectionProvider:v19 configuration:v14];

  _Block_release(v19);

  [v13 setCollectionViewLayout:v20];

  v21 = [v1 navigationItem];
  v22 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController];
  v23 = sub_1003A67A4();
  [v21 setRightBarButtonItem:v23];

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  *(v22 + 16) = sub_100770D68;
  *(v22 + 24) = v24;

  sub_100020438(v25, v26);

  v27 = sub_100767EE4();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = *(v27 + 88);
  v30 = *(v27 + 96);
  *(v27 + 88) = sub_100770D70;
  *(v27 + 96) = v28;

  sub_100020438(v29, v30);

  v34[3] = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v31 = sub_10001C8B8(v34);
  sub_100769F1C(v31);
  v35[3] = sub_10010FC20(&unk_1011A1918, &qword_100EE11B8);
  v32 = sub_10001C8B8(v35);
  sub_10076A1A4(v32);
  return swift_arrayDestroy();
}

id sub_100766D24()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView];
LABEL_6:
    v45 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600, UICollectionViewCompositionalLayout_ptr);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v47.receiver = v16;
    v47.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v47, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v46.receiver = v27;
    v46.super_class = v14;
    objc_msgSendSuper2(&v46, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryArtistsListView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];
      v41 = v38[2];
      v42 = v38[3];

      v43 = UIView.withAccessibilityIdentifier(_:)(v39, v40, v41, v42);

      v44 = *&v1[v10];
      *&v1[v10] = v43;
      v12 = v43;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_10076711C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    sub_10045B4D0();
    v6 = UITraitCollection.subscript.getter();

    if (v6)
    {
      v7 = 44.0;
    }

    else
    {
      v7 = 48.0;
    }
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [objc_opt_self() currentTraitCollection];
  [v8 displayScale];

  return v7;
}

unint64_t sub_100767218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v4 = sub_10010FC20(&qword_101193B90, &qword_100EBD7A0);
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin();
  v6 = &v25 - v5;
  v7 = sub_10010FC20(&qword_1011A1980, &unk_100EC8E10);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = type metadata accessor for Artist();
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A1988, &qword_100EE12C8);
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = sub_10010FC20(&qword_10118D0F8, &unk_100EC8E20);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v25 - v18;
  sub_1000089F8(a1, v32, &unk_101183F30, qword_100EBF960);
  if (!v33)
  {
    sub_1000095E8(v32, &unk_101183F30, qword_100EBF960);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_7;
  }

  v20 = swift_dynamicCast();
  (*(v17 + 56))(v15, v20 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_7:
    sub_1000095E8(v15, &qword_1011A1988, &qword_100EE12C8);
    v24 = type metadata accessor for Artwork();
    return (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
  }

  (*(v17 + 32))(v19, v15, v16);
  v21 = MusicLibrarySectionedResponse.sections.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v21 + 16))
  {
    (*(v8 + 16))(v10, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);

    MusicLibrarySection.items.getter();
    (*(v8 + 8))(v10, v7);
    IndexPath.item.getter();
    v23 = v27;
    MusicItemCollection.subscript.getter();
    (*(v26 + 8))(v6, v23);
    sub_10010FC20(&unk_10118F200, &unk_100ECB940);
    swift_allocObject();
    MusicAttributeProperty.init(_:)();
    Artist.subscript.getter();

    (*(v28 + 8))(v13, v29);
    return (*(v17 + 8))(v19, v16);
  }

  __break(1u);
  return result;
}

double sub_1007677B0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = sub_10010FC20(&qword_10118D0F8, &unk_100EC8E20);
  v50 = *(v7 - 8);
  __chkstk_darwin();
  v48 = &v43 - v8;
  sub_10010FC20(&qword_10118D0F0, &unk_100EE1210);
  __chkstk_darwin();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v43 - v11;
  v51 = *(sub_10010FC20(&qword_1011A1988, &qword_100EE12C8) - 8);
  v13 = *(v51 + 64);
  __chkstk_darwin();
  v53 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = &v43 - v14;
  __chkstk_darwin();
  v49 = &v43 - v15;
  __chkstk_darwin();
  v17 = &v43 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v45 = a2;
    v46 = a3;
    v47 = a1;
    RequestResponse.Revision.content.getter(v12);
    v20 = sub_10010FC20(&unk_10118D100, &unk_100EE1220);
    v44 = *(*(v20 - 8) + 48);
    if ((v44)(v12, 1, v20) == 1)
    {
      sub_1000095E8(v12, &qword_10118D0F0, &unk_100EE1210);
      v21 = 1;
      v22 = v50;
    }

    else
    {
      v22 = v50;
      v50[2](v17, v12, v7);
      sub_1000095E8(v12, &unk_10118D100, &unk_100EE1220);
      v21 = 0;
    }

    (v22[7])(v17, v21, 1, v7);
    v50 = sub_100766D24();
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v10);

    v24 = v17;
    if ((v44)(v10, 1, v20) == 1)
    {
      sub_1000095E8(v10, &qword_10118D0F0, &unk_100EE1210);
      v44 = 0;
    }

    else
    {
      v25 = v48;
      v22[2](v48, v10, v7);
      sub_1000095E8(v10, &unk_10118D100, &unk_100EE1220);
      v44 = MusicLibrarySectionedResponse.sections.getter();
      (v22[1])(v25, v7);
    }

    v26 = v49;
    sub_1000089F8(v17, v49, &qword_1011A1988, &qword_100EE12C8);
    if ((v22[6])(v26, 1, v7) == 1)
    {
      sub_1000095E8(v26, &qword_1011A1988, &qword_100EE12C8);
      v49 = 0;
    }

    else
    {
      v49 = MusicLibrarySectionedResponse.sections.getter();
      (v22[1])(v26, v7);
    }

    v27 = [*(sub_100767EE4() + 32) searchBar];
    LODWORD(v48) = [v27 isFirstResponder];

    v28 = v52;
    sub_1000089F8(v24, v52, &qword_1011A1988, &qword_100EE12C8);
    v29 = *(v51 + 80);
    v30 = swift_allocObject();
    v31 = v46;
    v30[2] = v45;
    v30[3] = v31;
    v30[4] = v19;
    sub_10003D17C(v28, v30 + ((v29 + 40) & ~v29), &qword_1011A1988, &qword_100EE12C8);
    v32 = v53;
    sub_1000089F8(v24, v53, &qword_1011A1988, &qword_100EE12C8);
    v33 = swift_allocObject();
    *(v33 + 16) = v19;
    sub_10003D17C(v32, v33 + ((v29 + 24) & ~v29), &qword_1011A1988, &qword_100EE12C8);
    v34 = swift_allocObject();
    v53 = v24;
    v35 = v34;
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v37 = v47;
    *(v36 + 16) = v35;
    *(v36 + 24) = v37;
    v38 = v19;

    v39 = sub_10010FC20(&qword_1011A1980, &unk_100EC8E10);
    v40 = sub_100770E64();
    v42 = v39;
    v41 = v50;
    UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(v44, v49, 0, 0, 1, v48 ^ 1, sub_100770D78, v30, sub_100768144, 0, sub_1007682DC, 0, sub_100770DEC, v33, sub_100770E5C, v36, v42, v40);

    sub_1000095E8(v53, &qword_1011A1988, &qword_100EE12C8);
  }

  else
  {
    a2();
  }

  return result;
}

uint64_t sub_100767EE4()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0, v3);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_100767F88(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&qword_1011A1988, &qword_100EE12C8);
  v7 = __chkstk_darwin();
  v9 = &v16 - v8;
  a1(v7);
  v10 = *(a3 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_prefetchingController);
  sub_1000089F8(a4, v9, &qword_1011A1988, &qword_100EE12C8);
  v11 = sub_10010FC20(&qword_10118D0F8, &unk_100EC8E20);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1000095E8(v9, &qword_1011A1988, &qword_100EE12C8);
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    *(&v18 + 1) = v11;
    v13 = sub_10001C8B8(&v17);
    (*(v12 + 32))(v13, v9, v11);
  }

  v14 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();
  sub_10006B010(&v17, v10 + v14, &unk_101183F30, qword_100EBF960);
  return swift_endAccess();
}

uint64_t sub_100768144(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MusicFavoriteStatus();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  type metadata accessor for Artist();
  sub_100770F18(&qword_1011A1948, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
  if (static MusicItem<>.==~ infix(_:_:)())
  {
    Artist.favoriteStatus.getter();
    Artist.favoriteStatus.getter();
    v8 = static MusicFavoriteStatus.== infix(_:_:)();
    v9 = *(v3 + 8);
    v9(v5, v2);
    v9(v7, v2);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1007682DC(uint64_t a1)
{
  v2 = type metadata accessor for MusicFavoriteStatus();
  v39 = *(v2 - 8);
  __chkstk_darwin();
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v35 - v4;
  v5 = type metadata accessor for Artwork();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10010FC20(&unk_101191420, &unk_100EC9120);
  __chkstk_darwin();
  v9 = &v35 - v8;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v35 - v11;
  __chkstk_darwin();
  v14 = &v35 - v13;
  v42 = a1;
  v15 = Artist.name.getter();
  v17 = v16;
  if (v15 == Artist.name.getter() && v17 == v18)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v43 = v6;
  v35 = v2;
  sub_10010FC20(&unk_10118F200, &unk_100ECB940);
  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();

  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();

  v20 = v43;
  v21 = *(v41 + 48);
  sub_1000089F8(v14, v9, &unk_101188920, &qword_100EBCC50);
  sub_1000089F8(v12, &v9[v21], &unk_101188920, &qword_100EBCC50);
  v22 = *(v20 + 48);
  if (v22(v9, 1, v5) == 1)
  {
    sub_1000095E8(v12, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
    if (v22(&v9[v21], 1, v5) == 1)
    {
      sub_1000095E8(v9, &unk_101188920, &qword_100EBCC50);
LABEL_13:
      v29 = v37;
      Artist.favoriteStatus.getter();
      v30 = v38;
      Artist.favoriteStatus.getter();
      v24 = static MusicFavoriteStatus.== infix(_:_:)();
      v31 = *(v39 + 8);
      v32 = v30;
      v33 = v35;
      v31(v32, v35);
      v31(v29, v33);
      return v24 & 1;
    }

    goto LABEL_10;
  }

  v23 = v40;
  sub_1000089F8(v9, v40, &unk_101188920, &qword_100EBCC50);
  if (v22(&v9[v21], 1, v5) == 1)
  {
    sub_1000095E8(v12, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
    (*(v43 + 8))(v23, v5);
LABEL_10:
    sub_1000095E8(v9, &unk_101191420, &unk_100EC9120);
    goto LABEL_11;
  }

  v25 = v43;
  v26 = &v9[v21];
  v27 = v36;
  (*(v43 + 32))(v36, v26, v5);
  sub_100770F18(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  LODWORD(v41) = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v25 + 8);
  v28(v27, v5);
  sub_1000095E8(v12, &unk_101188920, &qword_100EBCC50);
  sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
  v28(v23, v5);
  sub_1000095E8(v9, &unk_101188920, &qword_100EBCC50);
  if (v41)
  {
    goto LABEL_13;
  }

LABEL_11:
  v24 = 0;
  return v24 & 1;
}

double sub_100768984(char *a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011A1988, &qword_100EE12C8);
  __chkstk_darwin();
  v5 = &v27 - v4;
  sub_10010FC20(&qword_10118D0F0, &unk_100EE1210);
  __chkstk_darwin();
  v7 = &v27 - v6;
  v8 = sub_10010FC20(&qword_10118D0F8, &unk_100EC8E20);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v27 - v10;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v7);

  v12 = sub_10010FC20(&unk_10118D100, &unk_100EE1220);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1000095E8(v7, &qword_10118D0F0, &unk_100EE1210);
    v13 = 1;
  }

  else
  {
    (*(v9 + 16))(v11, v7, v8);
    sub_1000095E8(v7, &unk_10118D100, &unk_100EE1220);
    v14 = MusicLibrarySectionedResponse.isEmpty.getter(v8);
    (*(v9 + 8))(v11, v8);
    v13 = !v14;
  }

  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v15 = sub_100766D24();
  [v15 setBouncesVertically:v13 & 1];

  [*&a1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v13 & 1];
  v16 = sub_100767EE4();
  sub_1000089F8(a2, v5, &qword_1011A1988, &qword_100EE12C8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_1000095E8(v5, &qword_1011A1988, &qword_100EE12C8);
  }

  else
  {
    v17 = MusicLibrarySectionedResponse.isEmpty.getter(v8);
    (*(v9 + 8))(v5, v8);
    if (!v17)
    {
      v26 = *(v16 + 64);
      *(v16 + 64) = 1;
      if (v26)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v18 = (*(*&a1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v19 = v18[1];
  if (!v19)
  {
    v25 = *(v16 + 64);
    *(v16 + 64) = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v20 = *v18 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v21 = v20;
  }

  v22 = v21 != 0;
  v23 = *(v16 + 64);
  *(v16 + 64) = v22;
  if (v23 != v22)
  {
LABEL_12:
    sub_10043EAB8();
  }

LABEL_13:

  return result;
}

void sub_100768D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_10118B098, &qword_100EC8B80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v22[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController;

    v11 = RequestResponse.Controller.revision.getter();

    v12 = *(v11 + *(*v11 + 112));

    if (v12 == *(a3 + *(*a3 + 112)))
    {
      v13 = [v9 navigationItem];
      v14 = sub_1003A67A4();
      [v13 setRightBarButtonItem:v14];

      v15 = *&v9[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController];
      if (v15)
      {
        v16 = *(*&v9[v10] + 48);
        swift_beginAccess();
        v17 = v16[3];
        v24 = v16[2];
        v25 = v17;
        v18 = v16[5];
        v26 = v16[4];
        v27 = v18;
        v23 = v16[1];
        v19 = v15;
        sub_10030DC78(&v23, v22);
        type metadata accessor for TitledSection();
        type metadata accessor for Artist();
        MusicLibrarySectionedRequest.init()();

        MusicLibrarySectionedRequest.library.setter();
        MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
        v20._countAndFlagsBits = *(&v24 + 1);
        v20._object = v25;
        MusicLibrarySectionedRequest.filterItems(text:)(v20);
        sub_10030CCE8(v7);
        sub_10030DCB0(&v23);
        v21 = MusicLibrarySectionedRequest.includeOnlyDownloadedContent.getter();
        (*(v5 + 8))(v7, v4);
        sub_1002081DC(v21 & 1);
      }

      sub_100768FF0();
    }
  }
}

void sub_100768FF0()
{
  v1 = v0;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v90 = &v81 - v2;
  v3 = type metadata accessor for IndexPath();
  v93 = *(v3 - 8);
  __chkstk_darwin();
  v91 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v81 - v5;
  v6 = sub_10010FC20(&qword_101193B90, &qword_100EBD7A0);
  v98 = *(v6 - 8);
  v99 = v6;
  __chkstk_darwin();
  v97 = &v81 - v7;
  v8 = sub_10010FC20(&qword_1011A1980, &unk_100EC8E10);
  v95 = *(v8 - 8);
  v96 = v8;
  __chkstk_darwin();
  v94 = &v81 - v9;
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v104 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v81 - v11;
  __chkstk_darwin();
  v92 = &v81 - v12;
  __chkstk_darwin();
  v101 = &v81 - v13;
  v14 = type metadata accessor for Artist();
  v15 = *(v14 - 8);
  v106 = v14;
  v107 = v15;
  __chkstk_darwin();
  v89 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v81 - v17;
  sub_10010FC20(&qword_10118D0F0, &unk_100EE1210);
  __chkstk_darwin();
  v88 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v81 - v19;
  __chkstk_darwin();
  v22 = &v81 - v21;
  v23 = sub_10010FC20(&qword_10118D0F8, &unk_100EC8E20);
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v87 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v81 - v26;
  __chkstk_darwin();
  v29 = &v81 - v28;
  v103 = *&v0[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController];
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v22);

  v30 = sub_10010FC20(&unk_10118D100, &unk_100EE1220);
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v102 = v31 + 48;
  if (v32(v22, 1, v30) == 1)
  {
    sub_1000095E8(v22, &qword_10118D0F0, &unk_100EE1210);
LABEL_4:
    v35 = v105;
    (*(v107 + 56))(v105, 1, 1, v106);
    v36 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
    swift_beginAccess();
    v37 = v104;
    sub_1000089F8(&v1[v36], v104, &unk_101184930, &unk_100EC05C0);
    swift_beginAccess();
    sub_1002190E0(v35, &v1[v36], &unk_101184930, &unk_100EC05C0);
    swift_endAccess();
    sub_10076C380(v37);
    sub_1000095E8(v37, &unk_101184930, &unk_100EC05C0);
    v38 = v35;
LABEL_5:
    sub_1000095E8(v38, &unk_101184930, &unk_100EC05C0);
    return;
  }

  v84 = v32;
  v85 = v3;
  v83 = *(v24 + 16);
  v83(v29, v22, v23);
  sub_1000095E8(v22, &unk_10118D100, &unk_100EE1220);
  v33 = MusicLibrarySectionedResponse.isEmpty.getter(v23);
  v34 = *(v24 + 8);
  v34(v29, v23);
  if (v33)
  {
    goto LABEL_4;
  }

  v82 = v34;
  v39 = [v1 traitCollection];
  sub_10045B4D0();
  v40 = UITraitCollection.subscript.getter();

  if (v40)
  {
    v41 = sub_100766D24();
    v42 = [v41 indexPathsForSelectedItems];

    if (!v42 || (v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v42, v44 = *(v43 + 16), , !v44))
    {
      RequestResponse.Controller.revision.getter();
      RequestResponse.Revision.content.getter(v20);

      if (v84(v20, 1, v30) == 1)
      {
        sub_1000095E8(v20, &qword_10118D0F0, &unk_100EE1210);
      }

      else
      {
        v83(v27, v20, v23);
        sub_1000095E8(v20, &unk_10118D100, &unk_100EE1220);
        v45 = MusicLibrarySectionedResponse.sections.getter();
        v82(v27, v23);
        if (*(v45 + 16))
        {
          v47 = v94;
          v46 = v95;
          v48 = v96;
          (*(v95 + 16))(v94, v45 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v96);

          v49 = v97;
          MusicLibrarySection.items.getter();
          (*(v46 + 8))(v47, v48);
          v50 = v101;
          sub_10034DA48(v101);
          (*(v98 + 8))(v49, v99);
          v52 = v106;
          v51 = v107;
          v53 = *(v107 + 48);
          if (v53(v50, 1, v106) != 1)
          {
            v54 = v51;
            v55 = v52;
            v98 = *(v54 + 32);
            v99 = v54 + 32;
            (v98)(v100, v50, v52);
            v56 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
            swift_beginAccess();
            v101 = v56;
            v57 = &v1[v56];
            v58 = v92;
            sub_1000089F8(v57, v92, &unk_101184930, &unk_100EC05C0);
            v59 = v55;
            if (v53(v58, 1, v55) == 1)
            {
              sub_1000095E8(v58, &unk_101184930, &unk_100EC05C0);
              v60 = v107;
              v61 = v93;
            }

            else
            {
              v62 = v89;
              (v98)(v89, v58, v55);
              RequestResponse.Controller.revision.getter();
              v63 = v88;
              RequestResponse.Revision.content.getter(v88);

              if (v84(v63, 1, v30) == 1)
              {
                sub_1000095E8(v63, &qword_10118D0F0, &unk_100EE1210);
                v60 = v107;
                (*(v107 + 8))(v62, v59);
                v61 = v93;
                v64 = v90;
                (*(v93 + 56))(v90, 1, 1, v85);
              }

              else
              {
                v65 = v87;
                v83(v87, v63, v23);
                sub_1000095E8(v63, &unk_10118D100, &unk_100EE1220);
                v64 = v90;
                sub_10050663C(v62, v90);
                v82(v65, v23);
                v61 = v93;
                v66 = v62;
                v67 = v85;
                v68 = (*(v93 + 48))(v64, 1, v85);
                v60 = v107;
                if (v68 != 1)
                {
                  v76 = v86;
                  (*(v61 + 32))(v86, v64, v67);
                  v77 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView];
                  isa = IndexPath._bridgeToObjectiveC()().super.isa;
                  [v77 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

                  (*(v61 + 8))(v76, v67);
                  v79 = *(v60 + 8);
                  v80 = v106;
                  v79(v66, v106);
                  v79(v100, v80);
                  return;
                }

                v59 = v106;
                (*(v107 + 8))(v66, v106);
              }

              sub_1000095E8(v64, &unk_10118BCE0, &qword_100EC6450);
            }

            v69 = *&v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView];
            v70 = v91;
            IndexPath.init(item:section:)();
            v71 = IndexPath._bridgeToObjectiveC()().super.isa;
            (*(v61 + 8))(v70, v85);
            [v69 selectItemAtIndexPath:v71 animated:v1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_hasAppearedOnce] scrollPosition:0];

            v72 = v105;
            v73 = v100;
            (*(v60 + 16))(v105, v100, v59);
            (*(v60 + 56))(v72, 0, 1, v59);
            v74 = v101;
            v75 = v104;
            sub_1000089F8(&v1[v101], v104, &unk_101184930, &unk_100EC05C0);
            swift_beginAccess();
            sub_1002190E0(v72, &v1[v74], &unk_101184930, &unk_100EC05C0);
            swift_endAccess();
            sub_10076C380(v75);
            sub_1000095E8(v75, &unk_101184930, &unk_100EC05C0);
            sub_1000095E8(v72, &unk_101184930, &unk_100EC05C0);
            (*(v60 + 8))(v73, v59);
            return;
          }

          goto LABEL_18;
        }
      }

      v50 = v101;
      (*(v107 + 56))(v101, 1, 1, v106);
LABEL_18:
      v38 = v50;
      goto LABEL_5;
    }
  }
}

double sub_100769DF4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController);
    v8 = Strong;

    if (a2)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    v11 = *(v7 + 48);
    swift_beginAccess();
    v12 = *(v11 + 48);
    v18[1] = *(v11 + 32);
    v13 = *(v11 + 80);
    v18[3] = *(v11 + 64);
    v18[4] = v13;
    v18[2] = v12;
    v18[0] = *(v11 + 16);
    v19 = *(v11 + 16);
    v14 = *(v11 + 56);
    v15 = *(v11 + 72);
    v16 = *(v11 + 88);
    v20 = *(v11 + 32);
    v25 = v16;
    v24 = v15;
    v23 = v14;

    sub_10030DC78(v18, v17);

    v21 = v9;
    v22 = v10;
    sub_100378C30(&v19);
  }

  return result;
}

uint64_t sub_100769F1C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_10076A1A4@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011A1950, &unk_100EE1238);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011A1950, &unk_100EE1238);
  v8 = sub_10010FC20(&unk_1011A1918, &qword_100EE11B8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_1011A1950, &unk_100EE1238);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for Artist();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_1011A1950, &unk_100EE1238);
  return swift_endAccess();
}

void sub_10076A464(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v15[-v8];
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewWillAppear:", a1 & 1, v7);
  v10 = [v2 traitCollection];
  sub_10045B4D0();
  v11 = UITraitCollection.subscript.getter();

  if ((v11 & 1) == 0)
  {
    v12 = sub_100766D24();
    UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1 & 1);

    swift_unknownObjectRelease();
    v13 = type metadata accessor for Artist();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
    swift_beginAccess();
    sub_1000089F8(v2 + v14, v6, &unk_101184930, &unk_100EC05C0);
    swift_beginAccess();
    sub_1002190E0(v9, v2 + v14, &unk_101184930, &unk_100EC05C0);
    swift_endAccess();
    sub_10076C380(v6);
    sub_1000095E8(v6, &unk_101184930, &unk_100EC05C0);
    sub_1000095E8(v9, &unk_101184930, &unk_100EC05C0);
  }

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
}

uint64_t sub_10076A7B8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for MetricsEvent.Page(0);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v5);
  sub_100768FF0();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  *(v2 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_hasAppearedOnce) = 1;
  v8 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v9 = MetricsEvent.Page.libraryArtistsList.unsafeMutableAddressor();
  sub_100770C90(v9, v7, type metadata accessor for MetricsEvent.Page);
  v10 = sub_10053771C();
  v12 = v11;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v13 = qword_101218AD0;
  v14 = GroupActivitiesManager.hasJoined.getter();
  v15 = GroupActivitiesManager.participantsCount.getter();
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v8) + 0xA0))(v7, v10, v12, v14 & 1, v15, *(v13 + v16));

  return sub_100770D00(v7, type metadata accessor for MetricsEvent.Page);
}

void sub_10076AA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a1;
  v22[1] = a4;
  sub_10010FC20(&qword_10118D0F0, &unk_100EE1210);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = sub_10010FC20(&qword_10118D0F8, &unk_100EC8E20);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v22 - v9;
  v11 = sub_10010FC20(&qword_1011A1980, &unk_100EC8E10);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v22 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v19 = sub_10010FC20(&unk_10118D100, &unk_100EE1220);
    if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
    {
      sub_1000095E8(v6, &qword_10118D0F0, &unk_100EE1210);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_10118D100, &unk_100EE1220);
    v20 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v21 = IndexPath.section.getter();
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *(v20 + 16))
    {
      (*(v12 + 16))(v14, v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v21, v11);

      (*(v12 + 32))(v16, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v22[2], v22[3], v23);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v16, v11);
      return;
    }

    __break(1u);
  }
}

double sub_10076AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Artist();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v6 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  (*(v6 + 32))(v11 + v10, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  UICollectionViewCell.configurationUpdateHandler.setter();

  return result;
}

void *sub_10076AFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v6 = &v31 - v5;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_1011A1958, &qword_100EE1248);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v31 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v32 = v10;
    v33 = v8;
    v34 = v6;
    v35 = v7;

    v17 = v16;
    v18 = [v17 traitCollection];
    sub_10045B4D0();
    UITraitCollection.subscript.getter();

    v19 = __chkstk_darwin().n128_u64[0];
    *(&v31 - 4) = v36;
    *(&v31 - 3) = v17;
    v36 = a2;
    *(&v31 - 2) = a2;
    *(&v31 - 1) = v19;
    sub_10010FC20(&qword_1011A1960, &qword_100EE1250);
    sub_100770BA4();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v37[3] = v11;
    v37[4] = sub_100020674(&qword_1011A1978, &qword_1011A1958, &qword_100EE1248, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v37);
    UIHostingConfiguration.margins(_:_:)();
    (*(v12 + 8))(v14, v11);
    UICollectionViewCell.contentConfiguration.setter();
    v20 = [v17 traitCollection];
    if (UITraitCollection.subscript.getter())
    {
      v21 = v32;
      static UIBackgroundConfiguration.listAccompaniedSidebarCell()();
      UIBackgroundConfiguration.cornerRadius.setter();
    }

    else
    {
      v21 = v32;
      static UIBackgroundConfiguration.listCell()();
    }

    v22 = [v17 traitCollection];
    v23 = UITraitCollection.subscript.getter();

    v24 = v35;
    if (v23)
    {
      UICellConfigurationState.isSelected.getter();
      UIBackgroundConfiguration.backgroundInsets.setter();
      v25 = UICellConfigurationState.isSelected.getter();
      v26 = v33;
      if (v25)
      {
        v27 = [v17 traitCollection];

        v28 = [v27 userInterfaceIdiom];
        if (v28 != 6)
        {
          UIBackgroundConfiguration.edgesAddingLayoutMarginsToBackgroundInsets.setter();
          v29 = [objc_opt_self() tintColor];
          UIBackgroundConfiguration.backgroundColor.setter();
        }
      }

      else
      {
      }
    }

    else
    {

      v26 = v33;
    }

    v30 = v34;
    (*(v26 + 16))(v34, v21, v24);
    (*(v26 + 56))(v30, 0, 1, v24);
    UICollectionViewCell.backgroundConfiguration.setter();

    return (*(v26 + 8))(v21, v24);
  }

  return result;
}

uint64_t sub_10076B510@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v60[1] = a2;
  v4 = a1;
  v68 = a1;
  v72 = a3;
  v71 = sub_10010FC20(&unk_1011847A0, &unk_100EC0470);
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v69 = v60 - v5;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v73 = v60 - v6;
  v66 = type metadata accessor for MusicFavoriteStatus();
  v7 = *(v66 - 1);
  __chkstk_darwin();
  v65 = (v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = v60 - v9;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v14 = v60 - v13;
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v16;
  v17 = _s8ListCellVMa(0);
  __chkstk_darwin();
  v19 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Artist();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v20, &protocol witness table for Artist, v14);
  v21 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v21 - 8) + 56))(v12, 7, 11, v21);
  v22 = [v4 traitCollection];
  v67 = sub_10045B4D0();
  LOBYTE(v4) = UITraitCollection.subscript.getter();

  if (v4)
  {
    v23 = 0x4046000000000000;
  }

  else
  {
    v23 = 0x4048000000000000;
  }

  ArtworkImage.Size.init(cgSize:)(v23, v23, 0, v74);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v14, v12, 0, 1, v74, 0, 0, 2, v16);
  v63 = sub_10034E548();
  v62 = v24;
  Artist.favoriteStatus.getter();
  v25 = v65;
  v26 = v66;
  (*(v7 + 104))(v65, enum case for MusicFavoriteStatus.favorited(_:), v66);
  v61 = static MusicFavoriteStatus.== infix(_:_:)();
  v27 = *(v7 + 8);
  v27(v25, v26);
  v27(v10, v26);
  v28 = type metadata accessor for ContentRating();
  v29 = *(*(v28 - 8) + 56);
  v29(v73, 1, 1, v28);
  *&v77 = 0;
  v75 = 0u;
  v76 = 0u;
  sub_10010FC20(&unk_1011847C0, &unk_100EC0480);
  swift_allocObject();
  v65 = OptionalObservableObject.init(publisher:)(&v75);
  *&v77 = 0;
  v75 = 0u;
  v76 = 0u;
  sub_10010FC20(&unk_10118D300, &qword_100EBCE20);
  swift_allocObject();
  v60[2] = OptionalObservableObject.init(publisher:)(&v75);
  v30 = static HierarchicalShapeStyle.primary.getter();
  *(v19 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v19 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v19 = v30;
  v31 = &v19[v17[6]];
  v33 = v17[9];
  v32 = v17[10];
  v29(&v19[v32], 1, 1, v28);
  v66 = &v19[v17[11]];
  v34 = v17[14];
  *&v19[v34] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v35 = v64;
  sub_100770C90(v64, &v19[v17[5]], type metadata accessor for ArtworkImage.Info);
  *(v31 + 1) = 0;
  *(v31 + 2) = 0;
  *v31 = 0;
  v36 = &v19[v17[7]];
  v37 = v62;
  *v36 = v63;
  v36[1] = v37;
  v38 = &v19[v17[8]];
  LOBYTE(v37) = v61 & 1;
  *v38 = 0;
  *(v38 + 1) = 0;
  v19[v33] = v37;
  v39 = v73;
  sub_1002190E0(v73, &v19[v32], &unk_10118D2F0, &unk_100EBCE10);
  v40 = &v19[v17[12]];
  sub_100020674(&unk_1011847D0, &unk_1011847C0, &unk_100EC0480, &protocol conformance descriptor for OptionalObservableObject<A>);

  *v40 = ObservedObject.init(wrappedValue:)();
  v40[1] = v41;
  v42 = &v19[v17[13]];
  sub_100020674(&qword_10118D310, &unk_10118D300, &qword_100EBCE20, &protocol conformance descriptor for OptionalObservableObject<A>);
  v43 = ObservedObject.init(wrappedValue:)();
  v45 = v44;

  sub_1000095E8(v39, &unk_10118D2F0, &unk_100EBCE10);
  sub_100770D00(v35, type metadata accessor for ArtworkImage.Info);
  *v42 = v43;
  v42[1] = v45;
  v46 = v68;
  v47 = v66;
  *v66 = 0;
  *(v47 + 1) = 0;
  v48 = [v46 traitCollection];
  LOBYTE(v43) = UITraitCollection.subscript.getter();

  if (v43 & 1) != 0 && (UICellConfigurationState.isSelected.getter())
  {
    v49 = static Color.white.getter();
    *(&v76 + 1) = &type metadata for Color;
    *&v77 = &protocol witness table for Color;
    *&v75 = v49;
  }

  else
  {
    v50 = static HierarchicalShapeStyle.primary.getter();
    *(&v76 + 1) = &type metadata for HierarchicalShapeStyle;
    *&v77 = &protocol witness table for HierarchicalShapeStyle;
    LODWORD(v75) = v50;
  }

  sub_10000959C(v19);
  sub_100059A8C(&v75, v19);
  v51 = [v46 traitCollection];
  v52 = UITraitCollection.subscript.getter();

  v19[40] = v52 & 1;
  sub_100770F18(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100770F18(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);

  v53 = v69;
  View.artworkCaching(owner:)();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v54 = v72;
  (*(v70 + 32))(v72, v53, v71);
  v55 = (v54 + *(sub_10010FC20(&qword_1011A1960, &qword_100EE1250) + 36));
  v56 = v80;
  v55[4] = v79;
  v55[5] = v56;
  v55[6] = v81;
  v57 = v76;
  *v55 = v75;
  v55[1] = v57;
  v58 = v78;
  v55[2] = v77;
  v55[3] = v58;
  return sub_100770D00(v19, _s8ListCellVMa);
}

uint64_t sub_10076BF70@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v31 - v5;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_1011838D0, &unk_100EC0320);
  v12 = type metadata accessor for Actions.MetricsReportingContext(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return sub_1006F45C8(v10, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v37 = v1;
  sub_1000095E8(v10, &unk_1011838D0, &unk_100EC0320);
  v14 = MetricsEvent.Page.libraryArtistsList.unsafeMutableAddressor();
  sub_100770C90(v14, v6, type metadata accessor for MetricsEvent.Page);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = v4;
  v17 = *(*(v15 - 8) + 56);
  v17(v6, 0, 1, v15);
  v36 = v16;
  sub_1000089F8(v6, v16, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v18 = sub_10053771C();
  v34 = v19;
  v35 = v18;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v20 = qword_101218AD0;
  v33 = GroupActivitiesManager.hasJoined.getter();
  v32 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = v12[5];
  v17(&a1[v23], 1, 1, v15);
  v24 = v12[7];
  v25 = &a1[v12[6]];
  v26 = v12[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v36, &a1[v23], &unk_1011838F0, &qword_100EC1070);
  v27 = v34;
  *v25 = v35;
  *(v25 + 1) = v27;
  *&a1[v24] = 0;
  *&a1[v26] = 0;
  v28 = &a1[v12[9]];
  *v28 = v33 & 1;
  *(v28 + 1) = v32;
  *(v28 + 2) = v22;
  sub_100770C90(a1, v8, type metadata accessor for Actions.MetricsReportingContext);
  (*(v13 + 56))(v8, 0, 1, v12);
  v29 = v37;
  swift_beginAccess();
  sub_10006B010(v8, v29 + v11, &unk_1011838D0, &unk_100EC0320);
  return swift_endAccess();
}

void sub_10076C380(uint64_t a1)
{
  v51 = a1;
  v47 = sub_10010FC20(&qword_10118B098, &qword_100EC8B80);
  v46 = *(v47 - 8);
  __chkstk_darwin();
  v45 = &v43[-v2];
  v3 = type metadata accessor for Artist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v48 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v49 = &v43[-v6];
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v43[-v9];
  v11 = sub_10010FC20(&qword_1011A1940, &qword_100EE1230) - 8;
  __chkstk_darwin();
  v13 = &v43[-v12];
  v14 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
  swift_beginAccess();
  v15 = *(v11 + 56);
  v50 = v1;
  sub_1000089F8(&v1[v14], v13, &unk_101184930, &unk_100EC05C0);
  sub_1000089F8(v51, &v13[v15], &unk_101184930, &unk_100EC05C0);
  v51 = v4;
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      sub_1000095E8(v13, &unk_101184930, &unk_100EC05C0);
      return;
    }

    goto LABEL_6;
  }

  sub_1000089F8(v13, v10, &unk_101184930, &unk_100EC05C0);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v51 + 8))(v10, v3);
LABEL_6:
    sub_1000095E8(v13, &qword_1011A1940, &qword_100EE1230);
    v17 = v50;
    goto LABEL_7;
  }

  v37 = v49;
  (*(v51 + 32))(v49, &v13[v15], v3);
  sub_100770F18(&qword_1011A1948, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v51 + 8);
  v38(v37, v3);
  v38(v10, v3);
  sub_1000095E8(v13, &unk_101184930, &unk_100EC05C0);
  v17 = v50;
  if (v44)
  {
    return;
  }

LABEL_7:
  sub_1000089F8(&v17[v14], v8, &unk_101184930, &unk_100EC05C0);
  if (v16(v8, 1, v3) != 1)
  {
    v21 = v51;
    v22 = v48;
    (*(v51 + 32))(v48, v8, v3);
    v23 = *(*&v17[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController] + 48);
    swift_beginAccess();
    v24 = v23[3];
    v54 = v23[2];
    v55 = v24;
    v25 = v23[5];
    v56 = v23[4];
    v57 = v25;
    v53 = v23[1];
    sub_10030DC78(&v53, v52);
    type metadata accessor for TitledSection();
    v26 = v45;
    MusicLibrarySectionedRequest.init()();

    v27 = v47;
    MusicLibrarySectionedRequest.library.setter();
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    v28._countAndFlagsBits = *(&v54 + 1);
    v28._object = v55;
    MusicLibrarySectionedRequest.filterItems(text:)(v28);
    sub_10030CCE8(v26);
    sub_10030DCB0(&v53);
    LOBYTE(v23) = MusicLibrarySectionedRequest.includeOnlyDownloadedContent.getter();
    (*(v46 + 8))(v26, v27);
    v29 = *(v21 + 16);
    v30 = v49;
    v29(v49, v22, v3);
    v31 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
    v32 = sub_1001FAE8C(v30, v23 & 1);
    if (sub_10016EEEC(v32, 0, 1, v17))
    {
      v33 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController;
      v34 = *&v17[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController];
      *&v17[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController] = v32;
      if (!v34)
      {
LABEL_20:
        (*(v51 + 8))(v22, v3);
        return;
      }

      v35 = v32;
      v32 = v34;
      v36 = static NSObject.== infix(_:_:)();

      if ((v36 & 1) != 0 || *&v17[v33])
      {
      }

      else
      {
        v42 = v32;
        v32 = sub_10016F044(v42, 1, v17);
      }
    }

    else
    {
      v39 = *&v17[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController];
      *&v17[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController] = 0;
      if (v39)
      {
        v40 = v39;
        v41 = sub_10016F044(v40, 1, v17);

        v32 = v41;
      }
    }

    goto LABEL_20;
  }

  sub_1000095E8(v8, &unk_101184930, &unk_100EC05C0);
  v18 = *&v17[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController];
  *&v17[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController] = 0;
  if (v18)
  {
    v19 = v18;
    v20 = sub_10016F044(v19, 1, v17);
  }
}

uint64_t sub_10076CDD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v16 - v8;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v10 == a3)
  {
    goto LABEL_7;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    strcpy(v16, "Unknown kind=");
    v16[7] = -4864;
    v13._countAndFlagsBits = a2;
    v13._object = a3;
    String.append(_:)(v13);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
  }

  sub_100769F1C(v9);
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v14 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_10076D0F8(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  __chkstk_darwin();
  v32 = &v30 - v4;
  v5 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.DisplayedState();
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_1011A1918, &qword_100EE11B8);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v30 - v13;
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v30 - v17;
  sub_10037CEC8(a2, &v30 - v17);
  sub_10076A1A4(v14);
  v35 = sub_1007FDC30(v14, a2, v18);
  (*(v12 + 8))(v14, v11);
  v19 = [v2 traitCollection];
  sub_10045B4D0();
  LOBYTE(a2) = UITraitCollection.subscript.getter();

  if ((a2 & 1) == 0)
  {
    sub_10010FC20(&unk_101184740, &qword_100ED5D60);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_100EBC6B0;
    v20 = v30;
    v21 = v31;
    (*(v30 + 104))(v10, enum case for UICellAccessory.DisplayedState.always(_:), v31);
    v22 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v33 + 8))(v7, v34);
    (*(v20 + 8))(v10, v21);
    v23 = v35;
    UICollectionViewListCell.accessories.setter();
    v24 = v23;

    [v24 directionalLayoutMargins];
    [v24 setDirectionalLayoutMargins:?];
  }

  sub_1000089F8(v18, v16, &unk_101184930, &unk_100EC05C0);
  v25 = type metadata accessor for Artist();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v16, 1, v25) == 1)
  {
    sub_1000095E8(v16, &unk_101184930, &unk_100EC05C0);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  else
  {
    *(&v37 + 1) = v25;
    v38 = &protocol witness table for Artist;
    v27 = sub_10001C8B8(&v36);
    (*(v26 + 32))(v27, v16, v25);
  }

  v28 = v35;

  sub_1000095E8(v18, &unk_101184930, &unk_100EC05C0);
  sub_1000095E8(&v36, &qword_1011A3DD0, &unk_100EC03F0);
  return v28;
}

uint64_t sub_10076D8D4(uint64_t a1)
{
  type metadata accessor for Artist();
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1, v2);
  return sub_100735278(v4, 1);
}

unint64_t sub_10076D994(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v97 = a4;
  v109 = a3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v99 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v86 - v9;
  v104 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v105 = v10;
  v106 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v86 - v11;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v14 = &v86 - v13;
  v101 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v102 = v15;
  v103 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v86 - v16;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v98 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v86 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v22 = Strong;
  v93 = v7;
  v94 = v5;
  v95 = v4;
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  v24 = type metadata accessor for Artist();
  *(inited + 56) = v24;
  *(inited + 64) = &protocol witness table for Artist;
  v25 = sub_10001C8B8((inited + 32));
  (*(*(v24 - 8) + 16))(v25, v109, v24);
  v26 = [v22 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v92 = v122[0];
  v27 = type metadata accessor for Actions.PlaybackContext(0);
  v96 = *(v27 - 8);
  v28 = v96[7];
  v107 = v20;
  v28(v20, 1, 1, v27);
  v29 = type metadata accessor for PlaylistContext(0);
  v30 = *(*(v29 - 8) + 56);
  v108 = v17;
  v30(v17, 1, 1, v29);
  v31 = type metadata accessor for IndexPath();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v14, v97, v31);
  (*(v32 + 56))(v14, 0, 1, v31);
  sub_100376F1C(v14, v122);
  sub_1000095E8(v14, &unk_10118BCE0, &qword_100EC6450);
  sub_10076BF70(v12);
  v33 = type metadata accessor for Actions.MetricsReportingContext(0);
  v34 = *(*(v33 - 8) + 56);
  v109 = v12;
  v34(v12, 0, 1, v33);
  sub_100008FE4(inited + 32, v121);

  sub_1000089F8(v122, &v116, &unk_1011845E0, &unk_100EBF3A0);
  v35 = v22;
  if (v119 == 1)
  {
    v127 = 0;
    memset(v126, 0, sizeof(v126));
    v128 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v22, v126, v120);
    v36 = v100;
    v37 = v98;
    if (v119 != 1)
    {
      sub_1000095E8(&v116, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v116, v120);
    v36 = v100;
    v37 = v98;
  }

  swift_getObjectType();
  v39 = swift_conformsToProtocol2();
  v40 = v107;
  v41 = v96;
  if (v39)
  {
    v97 = v39;
    v42 = v35;
    v98 = v35;
  }

  else
  {
    v97 = 0;
    v98 = 0;
  }

  v100 = swift_allocBox();
  v44 = v43;
  sub_1000089F8(v40, v37, &unk_10118AB20, &unk_100EBF390);
  v47 = v41[6];
  v45 = v41 + 6;
  v46 = v47;
  if (v47(v37, 1, v27) == 1)
  {
    v48 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    (*(*(v48 - 8) + 56))(v36, 1, 1, v48);
    v118 = 0;
    v116 = 0u;
    v117 = 0u;
    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v49 = qword_101218AD8;
    sub_1000089F8(v36, v99, &unk_1011838E0, &unk_100EC1670);
    v90 = v49;
    v50 = UIViewController.playActivityInformation.getter();
    v88 = v52;
    v89 = v51;
    v54 = v53;
    sub_1000089F8(&v116, &v114, &unk_101183910, &unk_100EBDD00);
    if (v115)
    {
      sub_100059A8C(&v114, &v123);
    }

    else
    {
      v87 = v50;
      v96 = v45;
      v113 = v35;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v55 = v35;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v110, &v123);
      }

      else
      {
        v112 = 0;
        v110 = 0u;
        v111 = 0u;
        *&v123 = v55;
        v56 = v55;
        v57 = String.init<A>(reflecting:)();
        *(&v124 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v125 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v123 = v57;
        *(&v123 + 1) = v58;
        if (*(&v111 + 1))
        {
          sub_1000095E8(&v110, &unk_101183910, &unk_100EBDD00);
        }
      }

      v50 = v87;
      if (v115)
      {
        sub_1000095E8(&v114, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v90, v99, v50, v89, v88, v54, &v123, v44);
    sub_1000095E8(&v116, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v36, &unk_1011838E0, &unk_100EC1670);
    if (v46(v37, 1, v27) != 1)
    {
      sub_1000095E8(v37, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_1006F45C8(v37, v44, type metadata accessor for Actions.PlaybackContext);
  }

  v59 = *(v27 + 28);
  sub_1000089F8(&v44[v59], &v123, &unk_101183910, &unk_100EBDD00);
  if (*(&v124 + 1))
  {
    v60 = v35;
    sub_100059A8C(&v123, &v116);
    v61 = v108;
  }

  else
  {
    *&v116 = v35;
    v60 = v35;
    v62 = v35;
    v63 = String.init<A>(reflecting:)();
    *(&v117 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v118 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v116 = v63;
    *(&v116 + 1) = v64;
    v61 = v108;
    if (*(&v124 + 1))
    {
      sub_1000095E8(&v123, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_100EBDC20;
  *(v65 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v65 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v65 + 32) = 0x4D747865746E6F43;
  *(v65 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v116, v65 + 72);
  v66 = static Player.CommandIssuer<>.combining(_:)(v65);
  v68 = v67;

  sub_10000959C(&v116);
  *(&v117 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v118 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v116 = v66;
  *(&v116 + 1) = v68;
  sub_10006B010(&v116, &v44[v59], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v121, &v116);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v99 = String.init<A>(describing:)();
  v96 = v69;
  v90 = swift_allocObject();
  v91 = v60;
  swift_unknownObjectWeakInit();
  sub_100008FE4(v121, &v114);
  sub_10012B7A8(v120, &v116);
  v70 = v106;
  sub_1000089F8(v109, v106, &unk_1011838D0, &unk_100EC0320);
  v71 = v103;
  sub_1000089F8(v61, v103, &unk_1011845D0, &unk_100EBF380);
  v72 = (*(v104 + 80) + 160) & ~*(v104 + 80);
  v73 = (v105 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
  v75 = (*(v101 + 80) + v74 + 8) & ~*(v101 + 80);
  v105 = (v75 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + v102 + 31) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  sub_100059A8C(&v114, v77 + 16);
  *(v77 + 56) = v92;
  sub_10012B828(&v116, v77 + 64);
  sub_10003D17C(v70, v77 + v72, &unk_1011838D0, &unk_100EC0320);
  *(v77 + v73) = v90;
  *(v77 + v74) = v100;
  sub_10003D17C(v71, v77 + v75, &unk_1011845D0, &unk_100EBF380);
  v78 = v77 + v105;
  v79 = v97;
  *v78 = v98;
  *(v78 + 8) = v79;
  *(v78 + 16) = 2;
  v80 = (v77 + v76);
  *v80 = variable initialization expression of Library.Context.playlistVariants;
  v80[1] = 0;
  swift_unknownObjectRetain();

  v81 = v93;
  UUID.init()();
  v82 = UUID.uuidString.getter();
  v84 = v83;
  (*(v94 + 8))(v81, v95);
  v129._countAndFlagsBits = v99;
  v129._object = v96;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v123, v129, v82, v84, sub_1001CFB84, v77);
  swift_unknownObjectRelease();
  sub_10012BA6C(v120);
  sub_10000959C(v121);

  v38 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v120[0] = v123;
  sub_100015BB0(v120);
  v116 = v124;
  sub_100015BB0(&v116);

  sub_1000095E8(v109, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(v122, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v108, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v107, &unk_10118AB20, &unk_100EBF390);
  return v38;
}

id sub_10076E964(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = sub_10023D4E4(v9, 0, 1);

  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t sub_10076EAC4()
{
  sub_10010FC20(&qword_10118D0F0, &unk_100EE1210);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = sub_10010FC20(&qword_10118D0F8, &unk_100EC8E20);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v8 = sub_10010FC20(&unk_10118D100, &unk_100EE1220);
  if ((*(*(v8 - 8) + 48))(v1, 1, v8) == 1)
  {
    sub_1000095E8(v1, &qword_10118D0F0, &unk_100EE1210);
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118D100, &unk_100EE1220);
    (*(v3 + 32))(v7, v5, v2);
    if (MusicLibrarySectionedResponse.isEmpty.getter(v2))
    {
      *(&v12 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v13 = &protocol witness table for UIContentUnavailableConfiguration;
      v9 = sub_10001C8B8(&v11);
      sub_1007DD678(v9);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v3 + 8))(v7, v2);
    }

    (*(v3 + 8))(v7, v2);
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

uint64_t type metadata accessor for LibraryArtistsListViewController(uint64_t a1)
{
  result = qword_1011A1900;
  if (!qword_1011A1900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10076EFF0(uint64_t a1)
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650, &qword_100EC02B0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_1011A1910, &unk_1011A1918, &qword_100EE11B8);
    if (v2 <= 0x3F)
    {
      sub_1000397C8(319, &qword_1011845B0, type metadata accessor for Actions.MetricsReportingContext);
      if (v3 <= 0x3F)
      {
        sub_1000397C8(319, &qword_1011A1928, &type metadata accessor for Artist);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10076F1E0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v3 = sub_10049CB78();

  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[5];
  v18[3] = v4[4];
  v18[4] = v7;
  v18[1] = v5;
  v18[2] = v6;
  v13 = v4[1];
  v14 = v3 & 1;
  v8 = *(v4 + 33);
  v9 = *(v4 + 49);
  v10 = *(v4 + 65);
  *&v17[15] = v7;
  v18[0] = v13;
  *v17 = v10;
  v16 = v9;
  v15 = v8;
  sub_10030DC78(v18, v12);
  return sub_100378C30(&v13);
}

uint64_t sub_10076F2E4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v3 = *&v15[0];
  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = v4[2];
  v7 = v4[4];
  v6 = v4[5];
  v15[0] = v4[1];
  v15[1] = v5;
  v8 = v4[3];
  v15[3] = v7;
  v15[4] = v6;
  v15[2] = v8;
  v9 = *&v15[0];
  v10 = v4[2];
  v11 = v4[3];
  v14[3] = v4[4];
  v14[4] = v6;
  v14[2] = v11;
  v14[1] = v10;
  sub_10030DC78(v15, v13);

  *&v14[0] = v9;
  *(&v14[0] + 1) = v3;
  return sub_100378C30(v14);
}

uint64_t sub_10076F3D8()
{
  sub_10010FC20(&qword_10118D0F0, &unk_100EE1210);
  __chkstk_darwin();
  v1 = &v10 - v0;
  v2 = sub_10010FC20(&qword_10118D0F8, &unk_100EC8E20);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_10118D100, &unk_100EE1220);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &qword_10118D0F0, &unk_100EE1210);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118D100, &unk_100EE1220);
    v8 = MusicLibrarySectionedResponse.sections.getter();
    (*(v3 + 8))(v5, v2);
    v7 = *(v8 + 16);
  }

  return v7;
}

uint64_t sub_10076F5DC(unint64_t a1)
{
  v19 = a1;
  v1 = sub_10010FC20(&qword_101193B90, &qword_100EBD7A0);
  v18 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = sub_10010FC20(&qword_1011A1980, &unk_100EC8E10);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - v6;
  sub_10010FC20(&qword_10118D0F0, &unk_100EE1210);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = sub_10010FC20(&qword_10118D0F8, &unk_100EC8E20);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - v12;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&unk_10118D100, &unk_100EE1220);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &qword_10118D0F0, &unk_100EE1210);
    return 0;
  }

  (*(v11 + 16))(v13, v9, v10);
  sub_1000095E8(v9, &unk_10118D100, &unk_100EE1220);
  v16 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v11 + 8))(v13, v10);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v16 + 16) <= v19)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&qword_10118C150, &qword_101193B90, &qword_100EBD7A0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v17 = dispatch thunk of Collection.distance(from:to:)();
  (*(v18 + 8))(v3, v1);
  return v17;
}

uint64_t sub_10076F9F8(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v16[-v6];
  __chkstk_darwin();
  v9 = &v16[-v8];
  v10 = type metadata accessor for Artist();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10037CEC8(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000095E8(v9, &unk_101184930, &unk_100EC05C0);
  }

  (*(v11 + 32))(v13, v9, v10);
  (*(v11 + 16))(v7, v13, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v15 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
  swift_beginAccess();
  sub_1000089F8(v2 + v15, v5, &unk_101184930, &unk_100EC05C0);
  swift_beginAccess();
  sub_1002190E0(v7, v2 + v15, &unk_101184930, &unk_100EC05C0);
  swift_endAccess();
  sub_10076C380(v5);
  sub_1000095E8(v5, &unk_101184930, &unk_100EC05C0);
  sub_1000095E8(v7, &unk_101184930, &unk_100EC05C0);
  return (*(v11 + 8))(v13, v10);
}

id sub_10076FCC0(uint64_t a1)
{
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v3 = &v39 - v2;
  v4 = type metadata accessor for Artist();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v55 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v39 - v7;
  __chkstk_darwin();
  v10 = &v39 - v9;
  v11 = *(type metadata accessor for IndexPath() - 8);
  __chkstk_darwin();
  v15 = __chkstk_darwin();
  v16 = &v39 - v12;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v53 = v10;
  v54 = v11;
  v17 = *(v11 + 16);
  v18 = *(v11 + 80);
  v56 = v13;
  v50 = v17;
  v51 = v14;
  (v17)(&v39 - v12, a1 + ((v18 + 32) & ~v18), v13, v15);
  sub_10037CEC8(v16, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    (*(v54 + 8))(v16, v56);
    sub_1000095E8(v3, &unk_101184930, &unk_100EC05C0);
    return 0;
  }

  v45 = ~v18;
  v52 = v16;
  v20 = v5;
  v49 = *(v5 + 32);
  v40 = v18;
  v21 = v8;
  v22 = v5 + 32;
  v23 = v53;
  v49(v53, v3, v4);
  v43 = v22;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v48 = v20;
  v41 = *(v20 + 16);
  v41(v21, v23, v4);
  v24 = *(v20 + 80);
  v25 = v4;
  v42 = v24 | 7;
  v44 = swift_allocObject();
  v49((v44 + ((v24 + 16) & ~v24)), v21, v4);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v55;
  v27 = v25;
  v46 = v25;
  v41(v55, v23, v25);
  v28 = v51;
  v29 = v56;
  v50(v51, v52, v56);
  v30 = (v24 + 24) & ~v24;
  v31 = (v6 + v40 + v30) & v45;
  v32 = swift_allocObject();
  *(v32 + 16) = v39;
  v49((v32 + v30), v26, v27);
  v33 = v54;
  (*(v54 + 32))(v32 + v31, v28, v29);
  v34 = objc_opt_self();
  v61 = sub_1007709D0;
  v62 = v44;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100747E6C;
  v60 = &unk_1010BE160;
  v35 = _Block_copy(&aBlock);

  v61 = sub_100770A30;
  v62 = v32;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100747EBC;
  v60 = &unk_1010BE188;
  v36 = _Block_copy(&aBlock);

  v37 = isa;
  v38 = [v34 configurationWithIdentifier:isa previewProvider:v35 actionProvider:v36];

  _Block_release(v36);
  _Block_release(v35);
  (*(v48 + 8))(v53, v46);
  (*(v33 + 8))(v52, v56);

  return v38;
}

id sub_1007702DC(void *a1, void *a2)
{
  v32 = a2;
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v30 - v5;
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = type metadata accessor for Artist();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v13 = &v30 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [a1 identifier];
  sub_10010FC20(&unk_1011846A0, &unk_100EC8F60);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if ((v19 & 1) == 0)
  {
    v20(v13, 1, 1, v14);
    v21 = &unk_10118BCE0;
    v22 = &qword_100EC6450;
    v23 = v13;
    goto LABEL_5;
  }

  v20(v13, 0, 1, v14);
  (*(v15 + 32))(v18, v13, v14);
  sub_10037CEC8(v18, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v21 = &unk_101184930;
    v22 = &unk_100EC05C0;
    v23 = v8;
LABEL_5:
    sub_1000095E8(v23, v21, v22);
    return [v32 setPreferredCommitStyle:0];
  }

  v25 = v31;
  (*(v10 + 32))(v31, v8, v9);
  (*(v10 + 16))(v6, v25, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v26 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
  v27 = v33;
  swift_beginAccess();
  sub_1000089F8(v27 + v26, v4, &unk_101184930, &unk_100EC05C0);
  swift_beginAccess();
  sub_1002190E0(v6, v27 + v26, &unk_101184930, &unk_100EC05C0);
  swift_endAccess();
  sub_10076C380(v4);
  sub_1000095E8(v4, &unk_101184930, &unk_100EC05C0);
  sub_1000095E8(v6, &unk_101184930, &unk_100EC05C0);
  v28 = sub_100766D24();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v28 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

  (*(v10 + 8))(v31, v9);
  return (*(v15 + 8))(v18, v14);
}

void sub_1007707C0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_hasAppearedOnce) = 0;
  v2 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___headerRegistration;
  v3 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___listCellRegistration;
  v5 = sub_10010FC20(&unk_1011A1918, &qword_100EE11B8);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___collectionView) = 0;
  v6 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_prefetchingController;
  v7 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v6) = sub_10003AAD8(0xD000000000000021, 0x8000000100E56E80);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___searchController) = 0;
  v8 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController____lazy_storage___actionMetricsReportingContext;
  v9 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_navigatedDetailViewController) = 0;
  v10 = OBJC_IVAR____TtC5Music32LibraryArtistsListViewController_selectedArtist;
  v11 = type metadata accessor for Artist();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007709D0()
{
  v1 = *(type metadata accessor for Artist() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10076D8D4(v2);
}

unint64_t sub_100770A30(uint64_t a1)
{
  v3 = *(type metadata accessor for Artist() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10076D994(a1, v7, (v1 + v4), v8);
}

void *sub_100770B10(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Artist() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10076AFD0(a1, a2, v6, v7);
}

unint64_t sub_100770BA4()
{
  result = qword_1011A1968;
  if (!qword_1011A1968)
  {
    sub_1001109D0(&qword_1011A1960, &qword_100EE1250);
    _s8ListCellVMa(255);
    sub_100770F18(&qword_10118D2E0, _s8ListCellVMa, &unk_100ED7588);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1968);
  }

  return result;
}

uint64_t sub_100770C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100770D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}