uint64_t sub_100399A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10007EBC0(&unk_1006C0240, &unk_1005534D0);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for FMIPBeaconShare();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100399BA0, v8, v7);
}

uint64_t sub_100399BA0()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v6 = *(*(*(v5 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 24) + 64);
  *(swift_task_alloc() + 16) = v4;

  sub_100110880(sub_1003B0618, v6, v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[2];
    sub_100012DF0(v0[4], &unk_1006C0240, &unk_1005534D0);
    *(*(v7 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingCircleUpdatedAttention) + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) = 1;
    sub_1002B20D8();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);

    dispatch thunk of FMFManager.contactsController.getter();

    FMIPBeaconShare.shareeHandle.getter();
    v8 = dispatch thunk of FMFContactsDataController.lookupSlimContact(byHandle:)();

    if (!v8)
    {
      v9 = FMIPBeaconShare.shareeHandle.getter();
      v8 = sub_1000EC68C(v9, v10);
    }

    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];
    v14 = *(v0[2] + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingCircleUpdatedAttention);
    sub_1003E57C8(v8);
    *(v14 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) = 0;
    sub_1002B20D8();

    (*(v12 + 8))(v11, v13);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100399DE8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPBeaconShare.identifier.getter();
  v6 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_100399ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  sub_10007EBC0(&unk_1006B8DD0, &unk_100555060);
  v5[15] = swift_task_alloc();
  v6 = type metadata accessor for DelegatedSharesReportingState();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  sub_10007EBC0(&qword_1006BD088, &qword_10055EA98);
  v5[19] = swift_task_alloc();
  type metadata accessor for FMItemDetailViewModel(0);
  v5[20] = swift_task_alloc();
  v5[21] = type metadata accessor for DelegationState(0);
  v5[22] = swift_task_alloc();
  v7 = type metadata accessor for DelegatedURLShare();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v8 = type metadata accessor for FMIPItem();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[29] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10039A14C, v10, v9);
}

uint64_t sub_10039A14C()
{

  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_100008FC0(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v0 + 2);
  if ((My & 1) == 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "FMItemDetailContentViewController: Feature not enabled";
    goto LABEL_11;
  }

  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = *(v0[13] + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v7 = *(v6 + 40);
  v8 = *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v7 + v9));
  (*(v4 + 16))(v3, v7 + v8, v5);
  os_unfair_lock_unlock((v7 + v9));

  LOBYTE(v7) = FMIPItem.isOwner.getter();
  (*(v4 + 8))(v3, v5);
  if (v7)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "FMItemDetailContentViewController: Item belongs to owner, this action is only for sharees";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);

LABEL_12:

    goto LABEL_13;
  }

  v18 = v0[24];
  v39 = v0[23];
  v20 = v0[21];
  v19 = v0[22];
  v21 = v0[19];
  v22 = v0[20];
  v23 = v0[13];
  v24 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v6 + v24, v22, type metadata accessor for FMItemDetailViewModel);
  v25 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v38 = v23;
  v26 = *(*(*(v23 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 24) + 64);

  sub_10037FE6C(v22, v26, v19);

  sub_1003ABABC(v22, type metadata accessor for FMItemDetailViewModel);
  sub_100035318(&v19[*(v20 + 20)], v21, &qword_1006BD088, &qword_10055EA98);
  if ((*(v18 + 48))(v21, 1, v39) == 1)
  {
    sub_100012DF0(v0[19], &qword_1006BD088, &qword_10055EA98);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100005B14(v27, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "FMItemDetailContentViewController: No delegated URL share to create";
    goto LABEL_11;
  }

  v29 = v0[24];
  v28 = v0[25];
  v30 = v0[23];
  v31 = v0[18];
  v33 = v0[16];
  v32 = v0[17];
  v34 = v0[15];
  (*(v29 + 32))(v28, v0[19], v30);
  (*(v29 + 16))(v31, v28, v30);
  (*(v29 + 56))(v31, 0, 1, v30);
  (*(v32 + 104))(v31, enum case for DelegatedSharesReportingState.hasAlreadyReported(_:), v33);
  LostModeManagementSectionViewModel.presentShareeLandingPageAsPendingAction(reportingState:)();
  (*(v32 + 8))(v31, v33);
  (*(v29 + 8))(v28, v30);
  v35 = *(*(v38 + v25) + 56);
  v36 = type metadata accessor for FMSelectionPendingAction(0);
  (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
  v37 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();

  sub_1000BBF40(v34, v35 + v37, &unk_1006B8DD0, &unk_100555060);
  swift_endAccess();

LABEL_13:

  v16 = v0[1];

  return v16();
}

void sub_10039A7E0(char *a1)
{
  v2 = sub_10007EBC0(&unk_1006B8DD0, &unk_100555060);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = *(*&a1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v6 = type metadata accessor for FMSelectionPendingAction(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();

  sub_1000BBF40(v4, v5 + v7, &unk_1006B8DD0, &unk_100555060);
  swift_endAccess();

  v8 = [a1 view];
  if (v8)
  {
    v9 = v8;
    [v8 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10039A940(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a6;
  v62 = a7;
  v60 = a5;
  v69 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v9 - 8);
  v68 = v9;
  __chkstk_darwin(v9);
  v66 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v63 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMSelectionPendingAction(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(sub_10007EBC0(&qword_1006BB1E0, &unk_100558B50) - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(a3);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  __chkstk_darwin(v23);
  v26 = &v52 - v24;
  v28 = v27;
  v70 = a4;
  if (!v27)
  {
    v54 = v17;
    v55 = v15;
    v56 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = v14;
    v58 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = 0;
    v29 = v69;
    sub_100007204(v69, &v52 - v24, &qword_1006BB1E0, &unk_100558B50);
    v30 = type metadata accessor for FMIPAddress();
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    if (v32(v26, 1, v30) == 1)
    {
      sub_100012DF0(v26, &qword_1006BB1E0, &unk_100558B50);
      goto LABEL_6;
    }

    v53 = FMIPAddress.label.getter();
    v28 = v33;
    (*(v31 + 8))(v26, v30);
    if (!v28)
    {
LABEL_6:
      sub_100007204(v29, v22, &qword_1006BB1E0, &unk_100558B50);
      if (v32(v22, 1, v30) == 1)
      {
        sub_100012DF0(v22, &qword_1006BB1E0, &unk_100558B50);
      }

      else
      {
        v34 = FMIPAddress.formattedAddressLines.getter();
        (*(v31 + 8))(v22, v30);
        if (v34)
        {
          a4 = v70;
          if (v34[2])
          {
            v35 = v34[4];
            v28 = v34[5];

            v25 = v35;
          }

          else
          {

            v25 = 0;
            v28 = 0;
          }

          goto LABEL_12;
        }
      }

      v25 = 0;
      v28 = 0;
      a4 = v70;
LABEL_12:
      v16 = v58;
      v19 = v56;
      v14 = v57;
      v15 = v55;
      v17 = v54;
      goto LABEL_13;
    }

    a4 = v70;
    v16 = v58;
    v19 = v56;
    v14 = v57;
    v15 = v55;
    v17 = v54;
    v25 = v53;
  }

LABEL_13:
  v36 = &a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress];
  *v36 = v25;
  *(v36 + 1) = v28;

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v59 = static OS_dispatch_queue.main.getter();
  sub_1003B027C(v60, v16, type metadata accessor for FMSelectionPendingAction);
  sub_100007204(v69, v19, &qword_1006BB1E0, &unk_100558B50);
  v37 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v38 = (v15 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (*(v17 + 80) + v38 + 8) & ~*(v17 + 80);
  v40 = swift_allocObject();
  v41 = v68;
  v42 = v40;
  sub_1003B0214(v16, v40 + v37, type metadata accessor for FMSelectionPendingAction);
  v43 = v70;
  *(v42 + v38) = v70;
  sub_100035318(v19, v42 + v39, &qword_1006BB1E0, &unk_100558B50);
  v44 = (v42 + ((v18 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  v45 = v62;
  *v44 = v61;
  v44[1] = v45;
  aBlock[4] = sub_1003B0684;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063AA40;
  v46 = _Block_copy(aBlock);
  v47 = v43;

  v48 = v63;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  v49 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v50 = v59;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v46);

  (*(v67 + 8))(v49, v41);
  return (*(v64 + 8))(v48, v65);
}

void sub_10039B080(uint64_t a1, char *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v82 = a5;
  v83 = a4;
  v74 = a3;
  v81 = a2;
  v6 = type metadata accessor for FMIPSeparationLocation();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v73 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006BC990, &unk_100558AC0);
  __chkstk_darwin(v8 - 8);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v71 - v11;
  __chkstk_darwin(v12);
  v80 = &v71 - v13;
  v14 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v71 - v15;
  v17 = sub_10007EBC0(&qword_1006B68E0, &unk_100558AA0);
  __chkstk_darwin(v17 - 8);
  v19 = &v71 - v18;
  v20 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v75 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FMSelectionPendingAction(0);
  __chkstk_darwin(v26);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  My = type metadata accessor for Feature.FindMy();
  v85 = My;
  v86 = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v30 = sub_100008FC0(aBlock);
  (*(*(My - 8) + 104))(v30, enum case for Feature.FindMy.separationAlerts(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if (My)
  {
    sub_1003B027C(a1, v28, type metadata accessor for FMSelectionPendingAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 5:
        sub_10037F428(0, v32, v33);
        break;
      case 4:
        FMIPSeparationEvent.init(itemOrDeviceCount:addSafeLocationTapped:addToAllTapped:homeRemoved:)();
        v44 = type metadata accessor for FMIPSeparationEvent();
        (*(*(v44 - 8) + 56))(v19, 0, 1, v44);
        v45 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationEvent;
        v46 = v81;
        swift_beginAccess();
        sub_1000BBF40(v19, &v46[v45], &qword_1006B68E0, &unk_100558AA0);
        swift_endAccess();
        v47 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
        swift_beginAccess();
        sub_100007204(&v46[v47], v16, &unk_1006BB1B0, qword_10055C5C0);
        v48 = type metadata accessor for FMIPSafeLocation();
        LODWORD(v47) = (*(*(v48 - 8) + 48))(v16, 1, v48);
        sub_100012DF0(v16, &unk_1006BB1B0, qword_10055C5C0);
        if (v47 != 1)
        {
          sub_10037F428(1, v49, v50);
        }

        v52 = v78;
        v51 = v79;
        v53 = *(v78 + 56);
        v54 = v80;
        v53(v80, 1, 1, v79);
        v55 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
        v56 = *(*&v46[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
        swift_beginAccess();
        v57 = v56 + *(type metadata accessor for FMPendingActionInfo(0) + 20);
        v58 = v77;
        sub_100007204(v57, v77, &qword_1006BC990, &unk_100558AC0);
        if ((*(v52 + 48))(v58, 1, v51) == 1)
        {
          sub_100012DF0(v58, &qword_1006BC990, &unk_100558AC0);
        }

        else
        {
          v59 = v73;
          (*(v52 + 32))(v73, v58, v51);
          v60 = v72;
          FMIPSeparationLocation.with(address:)();
          (*(v52 + 8))(v59, v51);
          sub_100012DF0(v54, &qword_1006BC990, &unk_100558AC0);
          v53(v60, 0, 1, v51);
          sub_100035318(v60, v54, &qword_1006BC990, &unk_100558AC0);
        }

        v61 = *(*&v46[v55] + 16);
        v62 = (*&v46[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
        swift_beginAccess();
        v64 = *v62;
        v63 = v62[1];
        v88 = 0xD00000000000001ELL;
        v89 = 0x800000010058DB30;

        v65 = v61;
        v66._countAndFlagsBits = v64;
        v66._object = v63;
        String.append(_:)(v66);
        v67 = [objc_opt_self() standardUserDefaults];
        v68 = String._bridgeToObjectiveC()();

        LOBYTE(v64) = [v67 BOOLForKey:v68];

        if ((v64 & 1) == 0)
        {
          sub_1003A3310(v54);
        }

        v69 = *(*&v46[v55] + 16);
        v69[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
        v70 = v69;
        sub_10041E45C();

        v39 = sub_100012DF0(v54, &qword_1006BC990, &unk_100558AC0);
        break;
      case 3:
        v34 = v81;
        sub_10037F428(1, v32, v33);
        sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
        v35 = static OS_dispatch_queue.main.getter();
        v36 = swift_allocObject();
        *(v36 + 16) = v34;
        v86 = sub_1003B079C;
        v87 = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        v85 = &unk_10063AA90;
        v37 = _Block_copy(aBlock);
        v38 = v34;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
        sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v37);

        (*(v76 + 8))(v22, v20);
        v39 = (*(v75 + 8))(v25, v23);
        break;
      default:
        v39 = sub_1003ABABC(v28, type metadata accessor for FMSelectionPendingAction);
        break;
    }

    v83(v39);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100005B14(v40, qword_1006D4630);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "FMDItemDetailContentViewController: Separation Feature Not Enabled.", v43, 2u);
    }
  }
}

uint64_t sub_10039BB74(char *a1)
{
  v2 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_100007204(&a1[v9], v4, &unk_1006BB1B0, qword_10055C5C0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100012DF0(v4, &unk_1006BB1B0, qword_10055C5C0);
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = a1;
  sub_1003A2FC4(v8, 0, sub_1003B07A4, v11);

  return (*(v6 + 8))(v8, v5);
}

double sub_10039BD7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for FMIPSafeLocation();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_1000BBF40(v5, a2 + v7, &unk_1006BB1B0, qword_10055C5C0);
  swift_endAccess();
  v8 = (a2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress);
  *v8 = 0;
  v8[1] = 0;

  return result;
}

uint64_t sub_10039BE98(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void *), uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  v5 = type metadata accessor for FMIPSafeLocationType();
  v54 = *(v5 - 8);
  __chkstk_darwin(v5);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v50 - v8;
  v9 = sub_10007EBC0(&qword_1006BB1E0, &unk_100558B50);
  __chkstk_darwin(v9 - 8);
  v51 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = &v50 - v12;
  v13 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for FMIPSafeLocation();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v23 = UUID.uuidString.getter();
  sub_1000E65EC(v23, v24, v18);

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v25 = &unk_1006BB1B0;
    v26 = qword_10055C5C0;
    v27 = v18;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    (*(v20 + 16))(v15, v22, v19);
    (*(v20 + 56))(v15, 0, 1, v19);
    v28 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
    v29 = a1;
    swift_beginAccess();
    sub_1000BBF40(v15, &a1[v28], &unk_1006BB1B0, qword_10055C5C0);
    swift_endAccess();
    v30 = v57;
    v50 = v19;
    FMIPSafeLocation.address.getter();
    v31 = v52;
    FMIPSafeLocation.type.getter();
    v33 = v53;
    v32 = v54;
    (*(v54 + 104))(v53, enum case for FMIPSafeLocationType.home(_:), v5);
    sub_1003ABA74(&qword_1006B1320, &type metadata accessor for FMIPSafeLocationType, &protocol conformance descriptor for FMIPSafeLocationType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v34 = *(v32 + 8);
    v34(v33, v5);
    v34(v31, v5);
    v36 = v58;
    v35 = v59;
    v37 = type metadata accessor for FMIPAddress();
    v38 = *(v37 - 8);
    if (v35 == v36)
    {
      v39 = v51;
      (*(v38 + 56))(v51, 1, 1, v37);
      v40 = [objc_opt_self() mainBundle];
      v60._object = 0x8000000100587150;
      v41._object = 0x8000000100587130;
      v60._countAndFlagsBits = 0xD000000000000025;
      v41._countAndFlagsBits = 0xD000000000000013;
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v60);

      v55(v39, v43._countAndFlagsBits, v43._object);

      sub_100012DF0(v39, &qword_1006BB1E0, &unk_100558B50);
      (*(v20 + 8))(v22, v50);
      v27 = v30;
      v25 = &qword_1006BB1E0;
      v26 = &unk_100558B50;
    }

    else
    {
      v44 = v50;
      if ((*(v38 + 48))(v30, 1, v37) == 1)
      {
        v45 = swift_allocObject();
        v46 = v55;
        v47 = v56;
        v45[2] = v29;
        v45[3] = v46;
        v45[4] = v47;
        v48 = v29;

        dispatch thunk of FMIPReverseGeocodingCache.address(for:completion:)();
      }

      else
      {
        v55(v30, 0, 0);
      }

      (*(v20 + 8))(v22, v44);
      v25 = &qword_1006BB1E0;
      v26 = &unk_100558B50;
      v27 = v30;
    }
  }

  return sub_100012DF0(v27, v25, v26);
}

uint64_t sub_10039C514(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, void))
{
  v5 = sub_10007EBC0(&qword_1006BB1E0, &unk_100558B50);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-v6];
  v8 = sub_10037F738(v13);
  v10 = v9;
  v11 = type metadata accessor for FMIPSafeLocation();
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    sub_100007204(a1, v7, &qword_1006BB1E0, &unk_100558B50);
    FMIPSafeLocation.address.setter();
  }

  (v8)(v13, 0);
  return a3(a1, 0, 0);
}

void sub_10039C650(uint64_t a1)
{
  My = type metadata accessor for Feature.FindMy();
  v11 = My;
  v12 = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v4 = sub_100008FC0(v10);
  (*(*(My - 8) + 104))(v4, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v10);
  if (My)
  {
    sub_10039C86C(a1);
  }

  else if ((*(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight) & 1) == 0)
  {
    v5 = type metadata accessor for FMItemDetailViewModel(0);
    v6 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton);
    if ((*(a1 + *(v5 + 80)) & 2) != 0)
    {
      v6[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 1;
    }

    else
    {
      v6[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      sub_1000D3C9C();
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = 0;
      v12 = sub_100141408;
      v13 = v8;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_100004AE4;
      v11 = &unk_10063A888;
      v9 = _Block_copy(v10);
      v6 = v6;

      [v7 animateWithDuration:v9 animations:0.35];
      _Block_release(v9);
    }

    v6[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
    sub_1000D17E8();
  }
}

void sub_10039C86C(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for FMItemDetailViewModel(0) + 80));
  if ((v2 & 0x806) != 0)
  {
    v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight] = 0;
  }

  if ((v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight] & 1) == 0 && (v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight] & 1) == 0)
  {
    if ((v2 & 2) != 0)
    {
      v23 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending] = 1;
      if (v23 != 1 && swift_unknownObjectWeakLoadStrong())
      {
        sub_10011D7E0();
        swift_unknownObjectRelease();
      }

      v24 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError] = 0;
      if (v24)
      {
        sub_10039FF90();
      }

      v20 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 1;
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
      sub_1000D17E8();
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
      v17 = objc_opt_self();
      v25 = swift_allocObject();
      *(v25 + 16) = v20;
      v40 = sub_100141428;
      v41 = v25;
      v36 = _NSConcreteStackBlock;
      v37 = 1107296256;
      v22 = &unk_10063A838;
    }

    else if ((v2 & 4) != 0)
    {
      v26 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending] = 1;
      if (v26 != 1 && swift_unknownObjectWeakLoadStrong())
      {
        sub_10011D7E0();
        swift_unknownObjectRelease();
      }

      v27 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError] = 0;
      if (v27)
      {
        sub_10039FF90();
      }

      v20 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 1;
      sub_1000D17E8();
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 1;
      v17 = objc_opt_self();
      v28 = swift_allocObject();
      *(v28 + 16) = v20;
      v40 = sub_100141428;
      v41 = v28;
      v36 = _NSConcreteStackBlock;
      v37 = 1107296256;
      v22 = &unk_10063A7E8;
    }

    else if ((v2 & 0x800) != 0 && v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundAttempted] == 1)
    {
      v3 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending] = 0;
      if ((v3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        sub_10011D7F0();
        swift_unknownObjectRelease();
      }

      v4 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundErrorAttention];
      *(v4 + OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode) = 3;
      v5 = v1;
      sub_1003F0AB4();
      v6 = v1;
      v7 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError] = 1;
      if ((v7 & 1) == 0 && *(v4 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) == 1)
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_100005B14(v8, qword_1006D4630);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "FMItemDetailContentViewController: Show sound error", v11, 2u);
        }

        v12 = objc_opt_self();
        v13 = swift_allocObject();
        v6 = v5;
        *(v13 + 16) = v5;
        v40 = sub_1003B0E6C;
        v41 = v13;
        v36 = _NSConcreteStackBlock;
        v37 = 1107296256;
        v38 = sub_100004AE4;
        v39 = &unk_10063A798;
        v14 = _Block_copy(&v36);
        v15 = v5;

        [v12 animateWithDuration:4 delay:v14 options:0 animations:0.3 completion:0.0];
        _Block_release(v14);
      }

      v16 = *&v6[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v16[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      sub_1000D3C9C();
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(v18 + 24) = 0;
      v40 = sub_100141408;
      v41 = v18;
      v36 = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_100004AE4;
      v39 = &unk_10063A6F8;
      v19 = _Block_copy(&v36);
      v20 = v16;

      [v17 animateWithDuration:v19 animations:0.35];
      _Block_release(v19);
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
      sub_1000D17E8();
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v40 = sub_100141428;
      v41 = v21;
      v36 = _NSConcreteStackBlock;
      v37 = 1107296256;
      v22 = &unk_10063A748;
    }

    else
    {
      v29 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending] = 0;
      if (v29 == 1 && swift_unknownObjectWeakLoadStrong())
      {
        sub_10011D7F0();
        swift_unknownObjectRelease();
      }

      v30 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      sub_1000D3C9C();
      v17 = objc_opt_self();
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      v40 = sub_100141408;
      v41 = v31;
      v36 = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_100004AE4;
      v39 = &unk_10063A658;
      v32 = _Block_copy(&v36);
      v20 = v30;

      [v17 animateWithDuration:v32 animations:0.35];
      _Block_release(v32);
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
      sub_1000D17E8();
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
      v33 = swift_allocObject();
      *(v33 + 16) = v20;
      v40 = sub_100141428;
      v41 = v33;
      v36 = _NSConcreteStackBlock;
      v37 = 1107296256;
      v22 = &unk_10063A6A8;
    }

    v38 = sub_100004AE4;
    v39 = v22;
    v34 = _Block_copy(&v36);
    v35 = v20;

    [v17 animateWithDuration:4 delay:v34 options:0 animations:0.3 completion:{0.0, v36, v37}];
    _Block_release(v34);
  }
}

double sub_10039D0F4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMItemDetailContentViewController: Play Sound button pressed", v11, 2u);
  }

  v12 = v4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending];
  v4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending] = 1;
  if (v12 != 1 && swift_unknownObjectWeakLoadStrong())
  {
    sub_10011D7E0();
    swift_unknownObjectRelease();
  }

  v13 = *(*&v4[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 mainBundle];
  v24._object = 0x8000000100579A00;
  v17._countAndFlagsBits = 0xD000000000000023;
  v17._object = 0x80000001005902A0;
  v18.value._object = 0x80000001005799E0;
  v24._countAndFlagsBits = 0xD000000000000018;
  v18.value._countAndFlagsBits = 0xD000000000000013;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v24);

  sub_100062900(a2, a3);
  v21 = v4;
  sub_1003DD088(v15, v20._countAndFlagsBits, v20._object, v21, a2, a3, v21, a1);

  sub_10001835C(a2, a3);

  return result;
}

void sub_10039D344(char a1, void (*a2)(void), uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v10 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for FMIPItem();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v38 = a5;
    v39 = a3;
    v17 = (*&a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
    swift_beginAccess();
    v19 = *v17;
    v18 = v17[1];

    sub_1000E5FF8(v19, v18, v12);

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_100012DF0(v12, &qword_1006B07D0, qword_100552820);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100005B14(v20, qword_1006D4630);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "FMItemDetailContentViewController: cannot play sound on unknown item", v23, 2u);
      }

      if (a2)
      {
LABEL_14:
        a2(0);
      }
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      v28 = *&a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 1;
      v29 = objc_opt_self();
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      aBlock[4] = sub_100141428;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_10063A450;
      v31 = _Block_copy(aBlock);
      v32 = v28;

      [v29 animateWithDuration:4 delay:v31 options:0 animations:0.3 completion:0.0];
      _Block_release(v31);
      a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight] = 1;
      a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight] = 0;
      v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 1;
      sub_1000D17E8();
      v33 = a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError];
      a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError] = 0;
      if (v33)
      {
        sub_10039FF90();
      }

      v34 = swift_allocObject();
      v34[2] = a4;
      v34[3] = a2;
      v35 = v39;
      v34[4] = v39;

      v36 = a4;
      sub_100062900(a2, v35);
      sub_1000DB0B0(v16, v38, 0, sub_1003B0134, v34);

      (*(v14 + 8))(v16, v13);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "FMItemDetailContentViewController: <snd>  Couldn't play sound, BT is off", v27, 2u);
    }

    if (a2)
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_10039D8AC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v52 = a5;
  v53 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPItemActionStatus();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v49 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v51 = a4;
  a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundAttempted] = 1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = *(v13 + 16);
  v50 = a1;
  v19(v17, a1, v12);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = a3;
  v23 = v21;
  v60 = v22;

  if (os_log_type_enabled(v20, v23))
  {
    v24 = swift_slowAlloc();
    v48 = v19;
    v25 = v24;
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v25 = 136315394;
    sub_1003ABA74(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v13 + 8))(v17, v12);
    v29 = sub_100005B4C(v26, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v61 = v60;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v30 = String.init<A>(describing:)();
    v32 = sub_100005B4C(v30, v31, aBlock);

    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v20, v23, "FMItemDetailContentViewController: Play sound command finished with status: %s, error: %s", v25, 0x16u);
    swift_arrayDestroy();

    v19 = v48;
  }

  else
  {

    (*(v13 + 8))(v17, v12);
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v33 = static OS_dispatch_queue.main.getter();
  v34 = v49;
  v19(v49, v50, v12);
  v35 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v36 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v39 = v51;
  v38 = v52;
  *(v37 + 2) = v51;
  *(v37 + 3) = v38;
  v40 = v53;
  *(v37 + 4) = v53;
  (*(v13 + 32))(&v37[v35], v34, v12);
  *&v37[v36] = v60;
  aBlock[4] = sub_1003B0140;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063A4C8;
  v41 = _Block_copy(aBlock);
  swift_errorRetain();
  v42 = v39;
  sub_100062900(v38, v40);

  v43 = v54;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  v44 = v56;
  v45 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v41);

  (*(v58 + 8))(v44, v45);
  return (*(v55 + 8))(v43, v57);
}

uint64_t sub_10039DF24(_BYTE *a1, void (*a2)(_BOOL8), uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for FMIPItemActionStatus();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a4, v10, v12);
  if (a5)
  {
    swift_getErrorValue();
    v15 = v25[5];
    v16 = v25[6];
    swift_errorRetain();
    if (sub_100271D20(v15, v16) == 1)
    {
      swift_getErrorValue();
      v17 = sub_100271E80(v25[1], v25[2]);
      v19 = v18;
      if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v23 = 0;
      goto LABEL_12;
    }

LABEL_8:
    v23 = 1;
LABEL_12:
    sub_10039E134(v23, a1, a2, a3, v14, a5);

    return (*(v11 + 8))(v14, v10);
  }

  sub_10039E134(0, a1, a2, a3, v14, 0);
  return (*(v11 + 8))(v14, v10);
}

void sub_10039E134(int a1, _BYTE *a2, void (*a3)(_BOOL8), uint64_t a4, uint64_t a5, void *a6)
{
  v92 = a5;
  v93 = a3;
  v10 = type metadata accessor for FMIPItemActionStatus();
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v15 = &v81 - v14;
  if (a2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight] == 1)
  {
    v84 = a6;
    v87 = a1;
    v88 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight;
    v90 = a2;
    v86 = v13;
    v91 = v12;
    v89 = a4;
    My = type metadata accessor for Feature.FindMy();
    v101 = My;
    v17 = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v102 = v17;
    v18 = sub_100008FC0(&aBlock);
    v19 = *(*(My - 8) + 104);
    LODWORD(v83) = enum case for Feature.FindMy.spPlaySoundAll(_:);
    v19(v18);
    v20 = isFeatureEnabled(_:)();
    sub_100006060(&aBlock);
    if ((v20 & 1) == 0)
    {
      v21 = v90;
      v22 = *&v90[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v22[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
      v85 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v102 = sub_100141428;
      v103 = v23;
      aBlock = _NSConcreteStackBlock;
      v99 = 1107296256;
      v100 = sub_100004AE4;
      v101 = &unk_10063A518;
      v24 = _Block_copy(&aBlock);
      v25 = v22;

      [v85 animateWithDuration:4 delay:v24 options:0 animations:0.3 completion:0.0];
      _Block_release(v24);
      v21[v88] = 0;
    }

    v26 = v91;
    (*(v91 + 16))(v15, v92, v10);
    v27 = (*(v26 + 88))(v15, v10);
    v28 = enum case for FMIPItemActionStatus.success(_:);
    LODWORD(v85) = enum case for FMIPItemActionStatus.pending(_:);
    if (v27 == enum case for FMIPItemActionStatus.success(_:) || v27 == enum case for FMIPItemActionStatus.pending(_:))
    {
      v101 = My;
      v102 = v17;
      v30 = sub_100008FC0(&aBlock);
      (v19)(v30, v83, My);
      v31 = isFeatureEnabled(_:)();
      sub_100006060(&aBlock);
      v32 = v91;
      if ((v31 & 1) == 0)
      {
        v33 = v90;
        v34 = v90[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError];
        v90[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError] = 0;
        if (v34)
        {
          sub_10039FF90();
        }

        v35 = *&v33[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
        *(v35 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active) = 1;
        *(v35 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending) = 0;
        sub_1000D17E8();
      }

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100005B14(v36, qword_1006D4630);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "FMItemDetailContentViewController: Play sound command completed successfully", v39, 2u);
      }

      if (v93)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      v83 = sub_100005B14(v45, qword_1006D4630);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v90;
      v82 = v10;
      if (v48)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v97[0] = v51;
        *v50 = 136315138;
        aBlock = 0;
        v99 = 0xE000000000000000;
        if (v87)
        {
          v52 = 1702195828;
        }

        else
        {
          v52 = 0x65736C6166;
        }

        if (v87)
        {
          v53 = 0xE400000000000000;
        }

        else
        {
          v53 = 0xE500000000000000;
        }

        v54 = v53;
        String.append(_:)(*&v52);

        v55 = sub_100005B4C(aBlock, v99, v97);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v46, v47, "FMItemDetailContentViewController: Show failure attention, should show it? %s", v50, 0xCu);
        sub_100006060(v51);
      }

      v32 = v91;
      v56 = v84;
      if (v84)
      {
        swift_getErrorValue();
        v56 = sub_100271D20(v94, v95);
      }

      v57 = v87;
      v58 = sub_1003F19BC(v56);
      if ((v58 - 3) <= 1u)
      {
        v59 = *&v49[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
        swift_beginAccess();
        if (*(v59 + 32) > 500)
        {
          v58 = 2;
        }

        else
        {
          v58 = 3;
        }
      }

      v60 = *&v49[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundErrorAttention];
      *(v60 + OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode) = v58;
      sub_1003F0AB4();
      v61 = v49[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError];
      v49[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError] = v57 & 1;
      if (v61 != (v57 & 1))
      {
        if (v57)
        {
          if (*(v60 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed))
          {
            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              *v64 = 0;
              _os_log_impl(&_mh_execute_header, v62, v63, "FMItemDetailContentViewController: Show sound error", v64, 2u);
            }

            v65 = objc_opt_self();
            v66 = swift_allocObject();
            *(v66 + 16) = v49;
            v102 = sub_1003B01D4;
            v103 = v66;
            aBlock = _NSConcreteStackBlock;
            v99 = 1107296256;
            v100 = sub_100004AE4;
            v101 = &unk_10063A608;
            v67 = _Block_copy(&aBlock);
            v68 = v49;

            [v65 animateWithDuration:4 delay:v67 options:0 animations:0.3 completion:0.0];
            _Block_release(v67);
          }
        }

        else
        {
          sub_10039FF90();
        }
      }

      v49[v88] = 0;
      v69 = *&v49[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v69[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
      sub_1000D17E8();
      v69[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      sub_1000D3C9C();
      v70 = objc_opt_self();
      v71 = swift_allocObject();
      *(v71 + 16) = v69;
      *(v71 + 24) = 0;
      v102 = sub_100141408;
      v103 = v71;
      aBlock = _NSConcreteStackBlock;
      v99 = 1107296256;
      v100 = sub_100004AE4;
      v101 = &unk_10063A568;
      v72 = _Block_copy(&aBlock);
      v73 = v69;

      [v70 animateWithDuration:v72 animations:0.35];
      _Block_release(v72);
      v73[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      v102 = sub_100141428;
      v103 = v74;
      aBlock = _NSConcreteStackBlock;
      v99 = 1107296256;
      v100 = sub_100004AE4;
      v101 = &unk_10063A5B8;
      v75 = _Block_copy(&aBlock);
      v76 = v73;

      [v70 animateWithDuration:4 delay:v75 options:0 animations:0.3 completion:0.0];
      _Block_release(v75);
      v10 = v82;
      (*(v32 + 8))(v15, v82);
      if (v93)
      {
LABEL_49:
        v77 = *(v32 + 104);
        v78 = v86;
        v77(v86, v85, v10);
        sub_1003ABA74(&qword_1006B6898, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v79 = v10;
        v80 = *(v32 + 8);
        v80(v78, v79);
        if (aBlock == v96)
        {
          v44 = 1;
        }

        else
        {
          v77(v78, v28, v79);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v80(v78, v79);
          v44 = aBlock == v96;
        }

        goto LABEL_52;
      }
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100005B14(v40, qword_1006D4630);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "FMItemDetailContentViewController: Play sound command completed but stop sound was pressed.", v43, 2u);
    }

    if (v93)
    {
      v44 = 1;
LABEL_52:
      v93(v44);
    }
  }
}

uint64_t sub_10039ED70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMItemDetailContentViewController: Stop Sound button pressed", v11, 2u);
  }

  v12 = *&v3[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v34 = sub_1001412AC;
  v35 = v14;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100004AE4;
  v33 = &unk_10063A338;
  v15 = _Block_copy(&aBlock);
  v16 = v12;

  [v13 animateWithDuration:4 delay:v15 options:0 animations:0.3 completion:0.0];
  _Block_release(v15);
  v16[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  sub_1000D3C9C();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = 0;
  v34 = sub_100141408;
  v35 = v17;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100004AE4;
  v33 = &unk_10063A388;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  [v13 animateWithDuration:v18 animations:0.35];
  _Block_release(v18);
  v19[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  sub_1000D17E8();
  v3[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight] = 1;
  v3[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight] = 0;
  v20 = *(*&v3[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + 40);
  v21 = *(*v20 + class metadata base offset for ManagedBuffer + 16);
  v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v20 + v22));
  (*(v5 + 16))(v7, v20 + v21, v4);
  os_unfair_lock_unlock((v20 + v22));

  v23 = swift_allocObject();
  v25 = v28;
  v24 = v29;
  v23[2] = v3;
  v23[3] = v25;
  v23[4] = v24;
  v26 = v3;
  sub_100062900(v25, v24);
  sub_1000DB0B0(v7, 0, 1, sub_1003B00C0, v23);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10039F208(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v49 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPItemActionStatus();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v46 = v14;
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v45 = *(v13 + 16);
  v45(v17, a1, v12);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = a1;
    v22 = v21;
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v22 = 136315394;
    sub_1003ABA74(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = a6;
    v25 = v24;
    (*(v13 + 8))(v17, v12);
    v26 = sub_100005B4C(v23, v25, aBlock);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v56 = a3;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v27 = String.init<A>(describing:)();
    v29 = sub_100005B4C(v27, v28, aBlock);

    *(v22 + 14) = v29;
    a6 = v44;
    _os_log_impl(&_mh_execute_header, v19, v20, "FMItemDetailContentViewController: Stop sound command finished with status: %s : %s", v22, 0x16u);
    swift_arrayDestroy();

    a1 = v43;
  }

  else
  {

    (*(v13 + 8))(v17, v12);
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  v31 = v47;
  v45(v47, a1, v12);
  v32 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v33 = swift_allocObject();
  v35 = v48;
  v34 = v49;
  *(v33 + 2) = v48;
  *(v33 + 3) = v34;
  *(v33 + 4) = a6;
  (*(v13 + 32))(&v33[v32], v31, v12);
  aBlock[4] = sub_1003B00CC;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063A400;
  v36 = _Block_copy(aBlock);
  v37 = v35;
  sub_100062900(v34, a6);

  v38 = v50;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  v39 = v52;
  v40 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v54 + 8))(v39, v40);
  return (*(v51 + 8))(v38, v53);
}

void sub_10039F858(uint64_t a1, void (*a2)(_BOOL8))
{
  v4 = type metadata accessor for FMIPItemActionStatus();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight) == 1)
  {
    *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight) = 0;
    if (!a2)
    {
      return;
    }

    v10 = v6;
    (*(v5 + 104))(v9, enum case for FMIPItemActionStatus.success(_:), v6, v7);
    sub_1003ABA74(&qword_1006B6898, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v5 + 8))(v9, v10);
    v11 = v16[1] == v16[0];
    goto LABEL_10;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMItemDetailContentViewController: Stop sound command completed but play sound was pressed.", v15, 2u);
  }

  if (a2)
  {
    v11 = 1;
LABEL_10:
    a2(v11);
  }
}

uint64_t sub_10039FAAC()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPAnalyticsActionType();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for FMIPItemState();
  v4 = *(v42 - 8);
  __chkstk_darwin(v42);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v14 = *(v33 + 40);
  v15 = *(*v14 + class metadata base offset for ManagedBuffer + 16);
  v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v14 + v16));
  v34 = *(v11 + 16);
  v35 = v11 + 16;
  v34(v13, v14 + v15, v10);
  os_unfair_lock_unlock((v14 + v16));

  FMIPItem.state.getter();
  v17 = *(v11 + 8);
  v36 = v13;
  v37 = v11 + 8;
  v38 = v10;
  v17(v13, v10);
  v18 = v17;
  static FMIPItemState.soundPlaying.getter();
  sub_1003ABA74(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v19 = v42;
  LOBYTE(v14) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v20 = *(v4 + 8);
  v20(v6, v19);
  v20(v9, v19);
  if ((v14 & 1) != 0 || *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight) == 1)
  {
    v21 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError);
    *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError) = 0;
    if (v21)
    {
      sub_10039FF90();
    }

    return sub_10039ED70(0, 0);
  }

  else
  {
    v23 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError);
    *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError) = 0;
    if (v23)
    {
      sub_10039FF90();
    }

    sub_10039D0F4(0, 0, 0);
    v24 = *(v33 + 40);
    v25 = *(*v24 + class metadata base offset for ManagedBuffer + 16);
    v26 = (*(*v24 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v24 + v26));
    v27 = v36;
    v28 = v38;
    v34(v36, v24 + v25, v38);
    os_unfair_lock_unlock((v24 + v26));

    v30 = v39;
    v29 = v40;
    v31 = v41;
    (*(v40 + 104))(v39, enum case for FMIPAnalyticsActionType.playSound(_:), v41);
    v32 = sub_1003A49A0(v27, v30);
    (*(v29 + 8))(v30, v31, v32);
    return v18(v27, v28);
  }
}

void sub_10039FF90()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMItemDetailContentViewController: Hide sound error", v5, 2u);
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v17 = sub_1003B0074;
  v18 = v7;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100004AE4;
  v16 = &unk_10063A298;
  v8 = _Block_copy(&v13);
  v9 = v1;

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v17 = sub_1003B00B8;
  v18 = v10;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10037A044;
  v16 = &unk_10063A2E8;
  v11 = _Block_copy(&v13);
  v12 = v9;

  [v6 animateWithDuration:4 delay:v8 options:v11 animations:0.3 completion:0.0];
  _Block_release(v11);
  _Block_release(v8);
}

void sub_1003A01DC(char a1, uint64_t a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMItemDetailContentViewController: Hide sound error done (completed=%{BOOL}d)", v7, 8u);
  }

  if (a1)
  {
    v8 = *(a2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundErrorAttention);
    [v8 setAlpha:0.0];

    [v8 setHidden:1];
  }
}

void sub_1003A032C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMItemDetailContentViewController: Notify me button toggled", v8, 2u);
  }

  v9 = (*(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v11 = *v9;
  v10 = v9[1];

  sub_1000E5FF8(v11, v10, v4);

  v12 = type metadata accessor for FMIPItem();
  v13 = (*(*(v12 - 8) + 48))(v4, 1, v12);
  sub_100012DF0(v4, &qword_1006B07D0, qword_100552820);
  if (v13 == 1)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "FMItemDetailContentViewController: cannot enable lost mode on unknown itemt", v16, 2u);
    }
  }
}

void sub_1003A0668()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMItemDetailContentViewController: Left Behind Button Toggled", v5, 2u);
  }

  if (v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocationAdded] == 1)
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000C5474(sub_1003B0E64, v6, 0, 0);
  }

  else
  {
    v7 = sub_10037F798(&aBlock);
    v9 = v8;
    v10 = type metadata accessor for FMIPSeparationEvent();
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {
      FMIPSeparationEvent.addSafeLocationTapped.setter();
    }

    (v7)(&aBlock, 0);
    v11 = objc_opt_self();
    v12 = [v11 mainBundle];
    v62._object = 0x800000010057D660;
    v13._countAndFlagsBits = 0xD00000000000002ALL;
    v13._object = 0x8000000100586AB0;
    v14.value._object = 0x800000010057D640;
    v62._countAndFlagsBits = 0xD00000000000001BLL;
    v14.value._countAndFlagsBits = 0xD000000000000016;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v62);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100552220;
    v18 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress];
    v17 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress + 8];
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_10008EE84();
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = 0xE000000000000000;
    if (v17)
    {
      v20 = v17;
    }

    *(v16 + 32) = v19;
    *(v16 + 40) = v20;

    String.init(format:_:)();

    v21 = v11;
    v22 = [v11 mainBundle];
    v63._object = 0x800000010057D660;
    v23._countAndFlagsBits = 0xD00000000000002DLL;
    v23._object = 0x8000000100586AE0;
    v24.value._object = 0x800000010057D640;
    v63._countAndFlagsBits = 0xD00000000000001BLL;
    v24.value._countAndFlagsBits = 0xD000000000000016;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v63);

    v26 = swift_allocObject();
    *(v26 + 16) = v1;
    v52 = v1;
    v27 = String._bridgeToObjectiveC()();

    v59 = sub_1003AFF48;
    v60 = v26;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100017328;
    v58 = &unk_10063A040;
    v28 = _Block_copy(&aBlock);

    v51 = objc_opt_self();
    v54 = [v51 actionWithTitle:v27 style:0 handler:v28];
    _Block_release(v28);

    v29 = v21;
    v30 = [v21 mainBundle];
    v64._object = 0x800000010057D660;
    v31._countAndFlagsBits = 0xD000000000000030;
    v31._object = 0x8000000100586B10;
    v32.value._object = 0x800000010057D640;
    v64._countAndFlagsBits = 0xD00000000000001BLL;
    v32.value._countAndFlagsBits = 0xD000000000000016;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v64);

    v34 = String._bridgeToObjectiveC()();

    v35 = String._bridgeToObjectiveC()();

    v36 = [objc_opt_self() alertControllerWithTitle:v34 message:v35 preferredStyle:1];

    [v36 addAction:v54];
    v37 = [v29 mainBundle];
    v65._object = 0x800000010057D660;
    v38._countAndFlagsBits = 0xD000000000000032;
    v38._object = 0x8000000100591590;
    v39.value._object = 0x800000010057D640;
    v65._countAndFlagsBits = 0xD00000000000001BLL;
    v39.value._countAndFlagsBits = 0xD000000000000016;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v65);

    v41 = swift_allocObject();
    *(v41 + 16) = v52;
    v53 = v52;
    v42 = String._bridgeToObjectiveC()();

    v59 = sub_1003AFF88;
    v60 = v41;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100017328;
    v58 = &unk_10063A090;
    v43 = _Block_copy(&aBlock);

    v44 = [v51 actionWithTitle:v42 style:0 handler:v43];
    _Block_release(v43);

    [v36 addAction:v44];
    v45 = [v29 mainBundle];
    v46._countAndFlagsBits = 0xD000000000000013;
    v66._object = 0x800000010057B8F0;
    v46._object = 0x800000010057B8D0;
    v66._countAndFlagsBits = 0xD000000000000025;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v66);

    v48 = String._bridgeToObjectiveC()();

    v59 = State.rawValue.getter;
    v60 = 0;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100017328;
    v58 = &unk_10063A0B8;
    v49 = _Block_copy(&aBlock);

    v50 = [v51 actionWithTitle:v48 style:0 handler:v49];
    _Block_release(v49);

    [v36 addAction:v50];
    [v53 presentViewController:v36 animated:1 completion:0];
  }
}

void sub_1003A0E80(char *a1)
{
  v2 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-v3];
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10037F798(v20);
  v11 = v10;
  v12 = type metadata accessor for FMIPSeparationEvent();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    FMIPSeparationEvent.addToAllTapped.setter();
  }

  (v9)(v20, 0);
  v13 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_100007204(&a1[v13], v4, &unk_1006BB1B0, qword_10055C5C0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BB1B0, qword_10055C5C0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100005B14(v14, qword_1006D4630);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "FMItemDetailContentViewController: No pending safe location.", v17, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    v19 = a1;
    sub_1003A2FC4(v8, 1, sub_1003B0034, v18);

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1003A11B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_1003A1494(char *a1)
{
  v2 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_100007204(&a1[v9], v4, &unk_1006BB1B0, qword_10055C5C0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BB1B0, qword_10055C5C0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "FMItemDetailContentViewController: No pending safe location.", v13, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v15 = a1;
    sub_1003A2FC4(v8, 0, sub_1003AFFD0, v14);

    (*(v6 + 8))(v8, v5);
  }
}

double sub_1003A1750(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    v40 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    aBlock[4] = a4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = a5;
    v17 = _Block_copy(aBlock);
    v18 = a2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v40;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v41 + 8))(v11, v9);
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMItemDetailContentViewController: Add Safe Location failed", v24, 2u);
    }

    v25 = objc_opt_self();
    v26 = [v25 mainBundle];
    v44._object = 0x800000010057D660;
    v27._countAndFlagsBits = 0xD00000000000001ELL;
    v27._object = 0x8000000100586B90;
    v28.value._object = 0x800000010057D640;
    v44._countAndFlagsBits = 0xD00000000000001BLL;
    v28.value._countAndFlagsBits = 0xD000000000000016;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v44);

    v31 = [v25 mainBundle];
    v45._object = 0x800000010057D660;
    v32._countAndFlagsBits = 0xD00000000000002ALL;
    v32._object = 0x8000000100586BB0;
    v33.value._object = 0x800000010057D640;
    v45._countAndFlagsBits = 0xD00000000000001BLL;
    v33.value._countAndFlagsBits = 0xD000000000000016;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v45);

    v36 = [v25 mainBundle];
    v46._object = 0x8000000100579B60;
    v37._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v37._object = 0xEF454C5449545F4ELL;
    v46._countAndFlagsBits = 0xD000000000000021;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v46);

    sub_10027CEB4(v30._countAndFlagsBits, v30._object, v35._countAndFlagsBits, v35._object, v39._countAndFlagsBits, v39._object);
  }

  return result;
}

uint64_t sub_1003A1CC0(uint64_t a1)
{
  v2 = type metadata accessor for FMItemDetailViewModel(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocationAdded) = 1;
  v5 = *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v6 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v5 + v6, v4, type metadata accessor for FMItemDetailViewModel);
  sub_1003912F8(v4, v7, v8);
  return sub_1003ABABC(v4, type metadata accessor for FMItemDetailViewModel);
}

void sub_1003A1DFC()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for FMIPItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v28 = &v28 - v10;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMItemDetailContentViewController: Rename button toggled", v14, 2u);
  }

  v15 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v16 = (*&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];

  sub_1000E5FF8(v18, v17, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &qword_1006B07D0, qword_100552820);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMItemDetailContentViewController: cannot rename an unknown item", v21, 2u);
    }
  }

  else
  {
    v22 = v28;
    (*(v6 + 32))(v28, v4, v5);
    v23 = *&v1[v15];
    (*(v6 + 16))(v8, v22, v5);
    v24 = objc_allocWithZone(type metadata accessor for FMRenameItemViewController(0));

    v25 = sub_1000C8980(v23, v8);
    objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
    v26 = v25;
    v27 = sub_1000CC510(v26, 2);
    [v27 setDelegate:v27];
    [v1 presentViewController:v27 animated:1 completion:0];

    (*(v6 + 8))(v22, v5);
  }
}

uint64_t sub_1003A225C()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v6 = *(*&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + 40);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v6 + v8));
  (*(v2 + 16))(v4, v6 + v7, v1);
  os_unfair_lock_unlock((v6 + v8));

  v9 = *&v0[v5];

  sub_1000DEF40(v4, v9, v0);

  return (*(v2 + 8))(v4, v1);
}

void sub_1003A2410(int a1)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for FMItemDetailViewModel(0);
  __chkstk_darwin(v3 - 8);
  v30 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for FMIPItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v31 = &v27 - v13;
  v14 = (*(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];

  sub_1000E5FF8(v15, v16, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100012DF0(v7, &qword_1006B07D0, qword_100552820);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100005B14(v17, qword_1006D4630);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "FMItemDetailContentViewController: Cannot toggle notify when left behind for unknown item", v20, 2u);
    }
  }

  else
  {
    v28 = *(v9 + 32);
    v21 = v31;
    v28(v31, v7, v8);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v11, v21, v8);
    v23 = (*(v9 + 80) + 25) & ~*(v9 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v29 & 1;
    v28((v24 + v23), v11, v8);
    sub_1000C5474(sub_1003AFEC8, v24, 0, 0);
    v25 = v30;
    sub_1003B027C(v14, v30, type metadata accessor for FMItemDetailViewModel);
    sub_10038AC90(v25, v26);
    sub_10039C650(v25);
    sub_100392B50(v25);
    sub_1003987F8();

    sub_1003ABABC(v25, type metadata accessor for FMItemDetailViewModel);
    (*(v9 + 8))(v31, v8);
    *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate) = 0;
  }
}

double sub_1003A2868(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = type metadata accessor for FMIPNotifyItemActionType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = a3 & 1;
    v16 = Strong;
    (*(v11 + 16))(v13, a4, v10);
    (*(v7 + 104))(v9, enum case for FMIPNotifyItemActionType.whenSeparated(_:), v6);
    type metadata accessor for FMIPNotifyItemAction();
    swift_allocObject();
    v17 = FMIPNotifyItemAction.init(item:type:state:)();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;

    v19 = v16;
    sub_1000D6A90(v17, sub_1003AFF40, v18);
  }

  return result;
}

void sub_1003A2AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FMIPItemActionStatus();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  (*(v8 + 16))(v10, a1, v7);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = a4;
    v15 = v14;
    v26 = swift_slowAlloc();
    *v15 = 136315394;
    sub_1003ABA74(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v8 + 8))(v10, v7);
    v19 = sub_100005B4C(v16, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v25 = a3;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v20 = String.init<A>(describing:)();
    v22 = sub_100005B4C(v20, v21, &v26);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMItemDetailContentViewController: Enable leashing completed with status: %s, error: %s", v15, 0x16u);
    swift_arrayDestroy();

    a4 = v24;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  *(a4 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = 2;
}

void sub_1003A2DC8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v3 = type metadata accessor for FMSeparationWelcomeScreenViewController();
  v4 = objc_allocWithZone(v3);

  v6 = sub_1004DEC88(v5, 0);
  v7 = objc_allocWithZone(v3);

  v9 = sub_1004DEC88(v8, 1);
  *&v9[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_delegate + 8] = &off_100639198;
  swift_unknownObjectWeakAssign();
  v10 = *&v1[v2];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100552EE0;
  *(v11 + 32) = v6;
  *(v11 + 40) = v9;
  v12 = objc_allocWithZone(type metadata accessor for FMPageViewController());

  v13 = v6;
  v14 = v9;
  v15 = sub_100141E10(v10, v11);
  v16 = [objc_allocWithZone(type metadata accessor for FMTransparentNavigationController()) initWithRootViewController:v15];
  [v1 presentViewController:v16 animated:1 completion:0];
  v17 = [objc_opt_self() standardUserDefaults];
  v18 = String._bridgeToObjectiveC()();
  [v17 setBool:1 forKey:v18];
}

double sub_1003A2FC4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for FMIPSafeLocation();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v11;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMItemNotificationsViewController: Add Safe Location", v17, 2u);
    v11 = v26;
  }

  sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100552220;
  v19 = (*(v5 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *(v18 + 32) = v20;
  *(v18 + 40) = v21;
  if (a2)
  {

    (*(v11 + 16))(v13, a1, v10);
    type metadata accessor for FMIPAssignSafeLocationToAllSupportedBeaconsAction();
    swift_allocObject();
    v22 = FMIPAssignSafeLocationToAllSupportedBeaconsAction.init(location:)();
  }

  else
  {
    (*(v11 + 16))(v13, a1, v10);
    type metadata accessor for FMIPAssignMultipleSafeLocationsItemAction();
    swift_allocObject();

    v22 = FMIPAssignMultipleSafeLocationsItemAction.init(beaconUUIDs:location:)();
  }

  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;

  sub_1000D6C5C(v23, sub_10021E964, v24);

  return result;
}

uint64_t sub_1003A3310(uint64_t a1)
{
  v101 = a1;
  v2 = sub_10007EBC0(&qword_1006BC990, &unk_100558AC0);
  __chkstk_darwin(v2 - 8);
  v105 = &v91 - v3;
  v4 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v4 - 8);
  v106 = &v91 - v5;
  v103 = type metadata accessor for FMIPItem();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for TimeZone();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v91 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v107 = v1;
  v17 = *(*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v104 = type metadata accessor for FMPendingActionInfo(0);
  sub_100007204(v17 + *(v104 + 28), v11, &unk_1006B0000, &unk_100552AA0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_100012DF0(v11, &unk_1006B0000, &unk_100552AA0);
  }

  v96 = v13;
  v19 = *(v13 + 32);
  v97 = v12;
  v19(v15, v11, v12);
  v20 = [objc_allocWithZone(NSDateFormatter) init];
  static TimeZone.autoupdatingCurrent.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (v98)[1](v8, v99);
  [v20 setTimeZone:isa];

  [v20 setTimeStyle:1];
  v99 = v15;
  v22 = Date._bridgeToObjectiveC()().super.isa;
  v98 = v20;
  v23 = [v20 stringFromDate:v22];

  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v24;

  v95 = v16;
  v25 = v107;
  v91 = *&v107[v16];
  sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100552220;
  v94 = *&v25[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource];
  v27 = *(v94 + 40);
  v28 = *(*v27 + class metadata base offset for ManagedBuffer + 16);
  v29 = (*(*v27 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v27 + v29));
  v30 = v102;
  v31 = v27 + v28;
  v32 = v100;
  v33 = v103;
  (*(v102 + 16))(v100, v31, v103);
  os_unfair_lock_unlock((v27 + v29));

  v34 = FMIPItem.identifier.getter();
  v36 = v35;
  (*(v30 + 8))(v32, v33);
  *(v26 + 32) = v34;
  *(v26 + 40) = v36;
  v37 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  v38 = v106;
  sub_100007204(&v25[v37], v106, &unk_1006BB1B0, qword_10055C5C0);
  v39 = v105;
  sub_100007204(v101, v105, &qword_1006BC990, &unk_100558AC0);
  v40 = objc_allocWithZone(type metadata accessor for FMSeparationNotificationWelcomeViewController(0));
  v41 = &v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollHandler];
  *v41 = 0;
  v41[1] = 0;
  *&v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v42 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_titleLabel;
  *&v40[v42] = [objc_allocWithZone(UILabel) init];
  v43 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_subtitleLabel;
  *&v40[v43] = [objc_allocWithZone(UILabel) init];
  v44 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollView;
  *&v40[v44] = [objc_allocWithZone(UIScrollView) init];
  v45 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollContentView;
  *&v40[v45] = [objc_allocWithZone(UIView) init];
  v46 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_actionButton;
  v47 = objc_opt_self();
  v48 = [v47 systemBlueColor];
  v49 = type metadata accessor for FMSingleLinePlatterButton();
  v50 = objc_allocWithZone(v49);
  *&v40[v46] = sub_100038758(v48, 1, 0, 1);
  v51 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_secondaryActionButton;
  v52 = [v47 clearColor];
  v53 = objc_allocWithZone(v49);
  *&v40[v51] = sub_100038758(v52, 1, 0, 1);
  v54 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_informativeImage;
  sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
  v59 = sub_1003DE3DC(0xD00000000000001ALL, 0x8000000100586BE0, 6778480, 0xE300000000000000, v55, v56, v57, v58, v91);
  v60 = [objc_allocWithZone(UIImageView) initWithImage:v59];

  *&v40[v54] = v60;
  *&v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_heightConstraint] = 0;
  (*(v30 + 56))(&v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleItem], 1, 1, v33);
  v61 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleDevice;
  v62 = type metadata accessor for FMIPDevice();
  (*(*(v62 - 8) + 56))(&v40[v61], 1, 1, v62);
  v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType] = 2;
  v63 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_safeLocationSuggestion;
  v64 = type metadata accessor for FMIPSafeLocation();
  (*(*(v64 - 8) + 56))(&v40[v63], 1, 1, v64);
  v65 = &v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationTime];
  *v65 = 0;
  v65[1] = 0;
  v66 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationLocation;
  v67 = type metadata accessor for FMIPSeparationLocation();
  (*(*(v67 - 8) + 56))(&v40[v66], 1, 1, v67);
  v68 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_mapSnapshotter;
  type metadata accessor for FMMapSnapshotter();
  swift_allocObject();
  *&v40[v68] = sub_10012114C();
  v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_type] = 0;
  *&v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconUUIDs] = v26;
  swift_beginAccess();
  v69 = v38;
  v70 = v91;
  sub_1000BBE44(v69, &v40[v63], &unk_1006BB1B0, qword_10055C5C0);
  swift_endAccess();
  v71 = *(v70 + 7) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v72 = 1;
  v73 = *(v71 + *(v104 + 32));
  if (v73)
  {
    v72 = *(v73 + 16);
  }

  *&v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconCount] = v72;
  v74 = v92;
  *v65 = v93;
  v65[1] = v74;

  swift_beginAccess();
  sub_1000BBE44(v39, &v40[v66], &qword_1006BC990, &unk_100558AC0);
  swift_endAccess();
  *&v40[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = v70;
  v75 = type metadata accessor for FMMediatedViewController();
  v110.receiver = v40;
  v110.super_class = v75;

  v76 = objc_msgSendSuper2(&v110, "initWithNibName:bundle:", 0, 0);
  sub_1002EEB9C();
  sub_1002EF8A8();
  v77 = objc_allocWithZone(UITapGestureRecognizer);
  v78 = v76;
  v79 = [v77 initWithTarget:v78 action:"primaryAction"];
  [*&v78[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_actionButton] addGestureRecognizer:v79];
  v80 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v78 action:"secondaryAction"];

  [*&v78[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_secondaryActionButton] addGestureRecognizer:v80];

  sub_100012DF0(v39, &qword_1006BC990, &unk_100558AC0);
  sub_100012DF0(v106, &unk_1006BB1B0, qword_10055C5C0);
  *&v78[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate + 8] = &off_100639188;
  v81 = v107;
  swift_unknownObjectWeakAssign();
  v82 = [objc_allocWithZone(type metadata accessor for FMTransparentNavigationController()) initWithRootViewController:v78];
  [v81 presentViewController:v82 animated:1 completion:0];
  v83 = *(*&v81[v95] + 16);
  v84 = (v94 + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v86 = *v84;
  v85 = v84[1];
  v108 = 0xD00000000000001ELL;
  v109 = 0x800000010058DB30;

  v87 = v83;
  v88._countAndFlagsBits = v86;
  v88._object = v85;
  String.append(_:)(v88);
  v89 = [objc_opt_self() standardUserDefaults];
  v90 = String._bridgeToObjectiveC()();

  [v89 setBool:1 forKey:v90];

  return (*(v96 + 8))(v99, v97);
}

void sub_1003A402C(const char *a1, void (*a2)(char *, uint64_t, uint64_t, __n128), const char *a3)
{
  v26 = a3;
  v27 = a2;
  v5 = v3;
  v6 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for FMIPItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, a1, v16, 2u);
  }

  v17 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v18 = (*(v5 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];

  sub_1000E5FF8(v20, v19, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100012DF0(v8, &qword_1006B07D0, qword_100552820);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, v26, v23, 2u);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v24 = *(v5 + v17);

    (v27)(v12, v24, v5);

    (*(v10 + 8))(v12, v9);
  }
}

void sub_1003A4498()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v17._object = 0x800000010057FC90;
  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x800000010057FC60;
  v17._countAndFlagsBits = 0xD000000000000035;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v17);

  v5 = [v1 mainBundle];
  v18._object = 0x80000001005942A0;
  v6._countAndFlagsBits = 0xD000000000000027;
  v6._object = 0x8000000100594270;
  v18._countAndFlagsBits = 0xD000000000000039;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v18);

  v8 = [v1 mainBundle];
  v19._object = 0x8000000100579B60;
  v9._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v9._object = 0xEF454C5449545F4ELL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v19);

  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() actionWithTitle:v11 style:0 handler:0];

  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  [v15 addAction:v12];
  [v0 presentViewController:v15 animated:1 completion:0];
}

void sub_1003A47E0(uint64_t a1)
{
  sub_1003B0BFC(319, &qword_1006BB190, &type metadata accessor for FMIPSafeLocation);
  if (v1 <= 0x3F)
  {
    sub_1003B0BFC(319, &qword_1006B67B0, &type metadata accessor for FMIPSeparationEvent);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1003A49A0(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v24 = a1;
  v2 = type metadata accessor for FMIPItem();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMIPAnalyticsProductType();
  __chkstk_darwin(v4 - 8);
  v21 = type metadata accessor for FMIPAnalyticsOwnerContext();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPAnalyticsActionType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPActionEvent();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v22, v8, v14);

  v17 = v24;
  v18 = FMIPItem.isOwner.getter();
  v19 = &enum case for FMIPAnalyticsOwnerContext.owner(_:);
  if ((v18 & 1) == 0)
  {
    v19 = &enum case for FMIPAnalyticsOwnerContext.shared(_:);
  }

  (*(v5 + 104))(v7, *v19, v21);
  (*(v25 + 16))(v23, v17, v26);
  FMIPAnalyticsProductType.init(item:)();
  FMIPActionEvent.init(type:ownerContext:productType:)();
  FMIPManager.enqueue(actionEvent:)();
  (*(v13 + 8))(v16, v12);

  return result;
}

uint64_t sub_1003A4CF4()
{
  v1 = type metadata accessor for FMItemDetailViewModel(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v5 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v4 + v5, v3, type metadata accessor for FMItemDetailViewModel);
  sub_10038AC90(v3, v6);
  sub_10039C650(v3);
  sub_100392B50(v3);
  sub_1003987F8();
  result = sub_1003ABABC(v3, type metadata accessor for FMItemDetailViewModel);
  *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate) = 0;
  return result;
}

uint64_t sub_1003A4DF4()
{
  v1 = type metadata accessor for FMItemDetailViewModel(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v5 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v4 + v5, v3, type metadata accessor for FMItemDetailViewModel);
  sub_10038B13C();
  return sub_1003ABABC(v3, type metadata accessor for FMItemDetailViewModel);
}

uint64_t sub_1003A4EF4(uint64_t a1)
{
  sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {

    return sub_1004244CC();
  }

  return result;
}

double sub_1003A4F78(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsView);
  v2[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_disabled] = 1;
  [v2 setUserInteractionEnabled:0];
  sub_1003F61C0();
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostView);
  v3[OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_disabled] = 1;
  [v3 setUserInteractionEnabled:0];
  sub_1004FD044();
  return sub_1003A5010();
}

double sub_1003A5010()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + 40);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v6 + v8));
  (*(v3 + 16))(v5, v6 + v7, v2);
  os_unfair_lock_unlock((v6 + v8));

  type metadata accessor for FMIPFirmwareUpdateAction();
  swift_allocObject();
  v9 = FMIPFirmwareUpdateAction.init(item:updateInitiated:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;

  v11 = v1;
  sub_1000D6A90(v9, sub_1003B0B34, v10);

  return result;
}

void sub_1003A51F8(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v32._object = 0x8000000100579A00;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v4._object = 0x80000001005943B0;
  v5.value._object = 0x80000001005799E0;
  v32._countAndFlagsBits = 0xD000000000000018;
  v5.value._countAndFlagsBits = 0xD000000000000013;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v32);

  v7 = [v2 mainBundle];
  v33._object = 0x8000000100579A00;
  v8._countAndFlagsBits = 0xD00000000000002ELL;
  v8._object = 0x80000001005943E0;
  v9.value._object = 0x80000001005799E0;
  v33._countAndFlagsBits = 0xD000000000000018;
  v9.value._countAndFlagsBits = 0xD000000000000013;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v33);

  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  v14 = [v2 mainBundle];
  v34._object = 0x800000010057B4A0;
  v15._countAndFlagsBits = 0x425F4C45434E4143;
  v15._object = 0xED00004E4F545455;
  v34._countAndFlagsBits = 0xD00000000000001FLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v34);

  v17 = String._bridgeToObjectiveC()();

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v17 style:1 handler:0];

  v20 = [v2 mainBundle];
  v35._object = 0x8000000100579A00;
  v21._countAndFlagsBits = 0xD00000000000002DLL;
  v21._object = 0x8000000100594410;
  v22.value._object = 0x80000001005799E0;
  v35._countAndFlagsBits = 0xD000000000000018;
  v22.value._countAndFlagsBits = 0xD000000000000013;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v35);

  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;

  v25 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100009624;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_10063AE28;
  v26 = _Block_copy(aBlock);

  v27 = [v18 actionWithTitle:v25 style:0 handler:v26];
  _Block_release(v26);

  [v13 addAction:v19];
  [v13 addAction:v27];
  [v30 presentViewController:v13 animated:1 completion:0];
}

uint64_t sub_1003A55E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FMItemDetailViewModel(0);
  __chkstk_darwin(v7 - 8);
  v9 = (v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FMIPItemActionStatus();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28[1] = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28[0] = v11;
    v20 = v19;
    v29[0] = v19;
    *v18 = 136315138;
    v29[3] = a3;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v21 = String.init<A>(describing:)();
    v23 = sub_100005B4C(v21, v22, v29);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMItemDetailContentViewController: firmware update completed with error: %s", v18, 0xCu);
    sub_100006060(v20);
    v11 = v28[0];
  }

  (*(v11 + 104))(v13, enum case for FMIPItemActionStatus.success(_:), v10);
  sub_1003ABA74(&qword_1006B6898, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v11 + 8))(v13, v10);
  v24 = *(a4 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v25 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v24 + v25, v9, type metadata accessor for FMItemDetailViewModel);
  sub_10038AC90(v9, v26);
  sub_10039C650(v9);
  sub_100392B50(v9);
  sub_1003987F8();
  result = sub_1003ABABC(v9, type metadata accessor for FMItemDetailViewModel);
  *(a4 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate) = 0;
  return result;
}

void sub_1003A5990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldHoldItem) = 0;
  *(*(v3 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + 96) = 1;
  sub_100104C2C(a1, a2, a3);
}

double sub_1003A59D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  if ((a3 & 1) == 0)
  {
    return sub_10039D0F4(a2, a6, a7);
  }

  sub_10039ED70(a6, a7);
  return result;
}

void sub_1003A59F8()
{
  sub_1003A2410(0);

  sub_10037F428(0, v0, v1);
}

uint64_t sub_1003A5A28(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingState;
  v7 = enum case for DelegatedSharesReportingState.unknown(_:);
  v8 = type metadata accessor for DelegatedSharesReportingState();
  (*(*(v8 - 8) + 104))(v3 + v6, v7, v8);
  v9 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesUpdaterContinuation;
  v10 = sub_10007EBC0(&qword_1006BCF00, &qword_10055E868);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingStateContinuation;
  v12 = sub_10007EBC0(&qword_1006BCF10, &qword_10055E870);
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_itemProximityContinuation;
  v14 = sub_10007EBC0(&unk_1006BCF20, &qword_10055E878);
  (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  v15 = (v3 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate);
  *v15 = 0;
  v15[1] = 0;
  v16 = *(a1 + 24);

  v17 = *(v16 + 32);

  *(v3 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_actionController) = v17;
  v18 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_accessoryId;
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 32))(v3 + v18, a2, v19);
  v20 = (v3 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate);
  v21 = *(v3 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate);
  v22 = *(v3 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate + 8);
  *v20 = 0;
  v20[1] = 0;
  sub_10001835C(v21, v22);
  v23 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_reportingState;
  v24 = enum case for LostModeReportingState.unknown(_:);
  v25 = type metadata accessor for LostModeReportingState();
  (*(*(v25 - 8) + 104))(v3 + v23, v24, v25);
  return v3;
}

uint64_t sub_1003A5C98()
{
  v0 = type metadata accessor for PersonModel.Handle();
  __chkstk_darwin(v0 - 8);
  v1 = FMIPItemLostModeMetadata.email.getter();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    FMIPItemLostModeMetadata.email.getter();
  }

  else
  {
    FMIPItemLostModeMetadata.ownerNumber.getter();
  }

  PersonModel.Handle.init(rawValue:)();
  FMIPItemLostModeMetadata.message.getter();
  return LostModeInfo.init(handle:message:)();
}

uint64_t sub_1003A5D6C(__n128 a1)
{
  v2 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingState;
  v3 = type metadata accessor for DelegatedSharesReportingState();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_reportingState;
  v5 = type metadata accessor for LostModeReportingState();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  sub_100012DF0(v1 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesUpdaterContinuation, &qword_1006BD098, &qword_10055EAA8);
  sub_100012DF0(v1 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingStateContinuation, &qword_1006BD0C8, &qword_10055EAD8);
  sub_100012DF0(v1 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_itemProximityContinuation, &qword_1006BD0A0, &qword_10055EAB0);
  sub_10001835C(*(v1 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate), *(v1 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate + 8));

  v6 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_accessoryId;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  return swift_deallocClassInstance();
}

void sub_1003A5F34(uint64_t a1, __n128 a2)
{
  type metadata accessor for DelegatedSharesReportingState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for LostModeReportingState();
    if (v3 <= 0x3F)
    {
      sub_1003A614C(319, &qword_1006BCEF8, &qword_1006BCF00, &qword_10055E868);
      if (v4 <= 0x3F)
      {
        sub_1003A614C(319, &qword_1006BCF08, &qword_1006BCF10, &qword_10055E870);
        if (v5 <= 0x3F)
        {
          sub_1003A614C(319, &qword_1006BCF18, &unk_1006BCF20, &qword_10055E878);
          if (v6 <= 0x3F)
          {
            type metadata accessor for UUID();
            if (v7 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1003A614C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10007EC08(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1003A61A0(uint64_t a1)
{
  v2 = v1;
  *(v2 + 24) = a1;

  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  v5 = (a1 + 32);
  while (1)
  {
    v9 = *v5++;
    v8 = v9;
    v10 = v9 == 2;
    v11 = 0xD000000000000015;
    if (v9 == 2)
    {
      v11 = 0xD000000000000010;
    }

    v12 = 0x8000000100578BC0;
    if (v10)
    {
      v12 = 0x8000000100578BA0;
    }

    v13 = 0x7449656D616E6572;
    if (v8)
    {
      v13 = 0x744965766F6D6572;
    }

    v14 = v8 <= 1 ? v13 : v11;
    v15 = v8 <= 1 ? 0xEA00000000006D65 : v12;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + 16);
    v30 = v17;
    *(v2 + 16) = 0x8000000000000000;
    v18 = sub_10000726C(v14, v15);
    v20 = v17[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (v17[3] < v23)
    {
      sub_1001B4FEC(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_10000726C(v14, v15);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_30;
      }

LABEL_22:
      if (v24)
      {
        goto LABEL_3;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v29 = v18;
    sub_1001BD468();
    v18 = v29;
    if (v24)
    {
LABEL_3:
      v6 = v18;

      v7 = v30;
      *(v30[7] + v6) = v8;
      goto LABEL_4;
    }

LABEL_23:
    v7 = v17;
    v17[(v18 >> 6) + 8] |= 1 << v18;
    v26 = (v17[6] + 16 * v18);
    *v26 = v14;
    v26[1] = v15;
    *(v17[7] + v18) = v8;
    v27 = v17[2];
    v22 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v22)
    {
      goto LABEL_29;
    }

    v17[2] = v28;
LABEL_4:
    *(v2 + 16) = v7;
    swift_endAccess();
    if (!--v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1003A63D0(uint64_t a1)
{
  v2 = v1;
  v53 = type metadata accessor for UUID();
  v4 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v49 - v11;
  __chkstk_darwin(v12);
  v56 = &v49 - v13;
  *(v2 + 24) = a1;

  v14 = *(a1 + 16);
  if (!v14)
  {
    return;
  }

  v15 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v16 = *(v7 + 72);
  v50 = (v4 + 8);
  v51 = (v4 + 32);
  v54 = v16;
  while (1)
  {
    v20 = v56;
    sub_1003B027C(v15, v56, type metadata accessor for FMBeaconSharingModuleEntry);
    v21 = v20;
    v22 = v55;
    sub_1003B027C(v21, v55, type metadata accessor for FMBeaconSharingModuleEntry);
    v23 = sub_10007EBC0(&qword_1006B9D48, &unk_10055EB50);
    v24 = (*(*(v23 - 8) + 48))(v22, 2, v23);
    if (v24)
    {
      v25 = v24 == 1 ? 25933 : 0x6F73726550646441;
      v26 = v24 == 1 ? 0xE200000000000000 : 0xE90000000000006ELL;
    }

    else
    {
      v27 = *(v23 + 48);
      v28 = *(v23 + 64);
      v29 = v52;
      v30 = v55;
      v31 = v53;
      (*v51)(v52, v55 + v28, v53);
      v25 = UUID.uuidString.getter();
      v26 = v32;
      (*v50)(v29, v31);
      sub_1003ABABC(v30 + v27, type metadata accessor for FMBeaconSharingModuleShareState);
      sub_1003ABABC(v30, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    }

    swift_beginAccess();
    v33 = v9;
    sub_1003B0214(v56, v9, type metadata accessor for FMBeaconSharingModuleEntry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v2 + 16);
    v35 = v57;
    *(v2 + 16) = 0x8000000000000000;
    v37 = sub_10000726C(v25, v26);
    v38 = v35[2];
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      break;
    }

    v41 = v36;
    if (v35[3] >= v40)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v9 = v33;
        if (v36)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1001BD9B8();
        v9 = v33;
        if (v41)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1001B590C(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_10000726C(v25, v26);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_27;
      }

      v37 = v42;
      v9 = v33;
      if (v41)
      {
LABEL_3:

        v17 = v57;
        v18 = v57[7] + v37 * v54;
        v19 = v54;
        sub_1003AFE20(v9, v18, type metadata accessor for FMBeaconSharingModuleEntry);
        goto LABEL_4;
      }
    }

    v17 = v57;
    v57[(v37 >> 6) + 8] |= 1 << v37;
    v44 = (v17[6] + 16 * v37);
    *v44 = v25;
    v44[1] = v26;
    v45 = v17[7] + v37 * v54;
    v19 = v54;
    sub_1003B0214(v9, v45, type metadata accessor for FMBeaconSharingModuleEntry);
    v46 = v17[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_26;
    }

    v17[2] = v48;
LABEL_4:
    *(v2 + 16) = v17;

    swift_endAccess();
    v15 += v19;
    if (!--v14)
    {
      return;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1003A68A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMModernPlatterButtonEntry(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = &v34 - v11;
  *(v2 + 24) = a1;

  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    v38 = (v35 + 16);
    v36 = (v35 + 8);
    while (1)
    {
      v15 = v37;
      sub_1003B027C(v13, v37, type metadata accessor for FMModernPlatterButtonEntry);
      v16 = *v38;
      v17 = v4;
      (*v38)(v6, v15, v4);
      swift_beginAccess();
      sub_1003B0214(v15, v39, type metadata accessor for FMModernPlatterButtonEntry);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(v2 + 16);
      v19 = v40;
      *(v2 + 16) = 0x8000000000000000;
      v20 = sub_1001B3964(v6);
      v22 = v19[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        break;
      }

      v26 = v21;
      if (v19[3] >= v25)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v20;
          sub_1001BFA4C();
          v20 = v33;
        }
      }

      else
      {
        sub_1001B8E38(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_1001B3964(v6);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_17;
        }
      }

      v4 = v17;
      v28 = v40;
      if (v26)
      {
        sub_1003AFE20(v39, v40[7] + v20 * v14, type metadata accessor for FMModernPlatterButtonEntry);
        (*v36)(v6, v17);
      }

      else
      {
        v40[(v20 >> 6) + 8] |= 1 << v20;
        v29 = v35;
        v30 = v20;
        v16((v28[6] + *(v35 + 72) * v20), v6, v4);
        sub_1003B0214(v39, v28[7] + v30 * v14, type metadata accessor for FMModernPlatterButtonEntry);
        (*(v29 + 8))(v6, v4);
        v31 = v28[2];
        v24 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v24)
        {
          goto LABEL_16;
        }

        v28[2] = v32;
      }

      *(v2 + 16) = v28;

      swift_endAccess();
      v13 += v14;
      if (!--v12)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void sub_1003A6C78(char a1, uint64_t a2)
{
  v5 = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    (*((swift_isaMask & *v3) + 0x148))(&v5, v4);
  }
}

void sub_1003A6D40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    (*((swift_isaMask & *v4) + 0x148))(a1, v5);
  }
}

double sub_1003A6E10(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v7 = *(a1 + qword_1006C2B70 + 16);
  v11[0] = *(a1 + qword_1006C2B70);
  v11[1] = v7;
  v11[2] = *(a1 + qword_1006C2B70 + 32);
  v12 = *(a1 + qword_1006C2B70 + 48);
  sub_100007204(v11, v10, a2, a3);
  sub_10037D084(v11);
  sub_100012DF0(v11, a2, a3);

  a4(v8);

  return result;
}

uint64_t sub_1003A6EC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = sub_10007EBC0(a3, a4);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = swift_projectBox();
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  return (*(v5 + 8))(v7, v4);
}

id sub_1003A6FF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UIListContentConfiguration();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMModernPlatterButtonEntry(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [a1 dequeueReusableCellWithIdentifier:v17 forIndexPath:isa];

  swift_beginAccess();
  v20 = *(a4 + 16);
  if (*(v20 + 16))
  {

    v21 = sub_1001B3964(a3);
    if (v22)
    {
      sub_1003B027C(*(v20 + 56) + *(v11 + 72) * v21, v13, type metadata accessor for FMModernPlatterButtonEntry);

      sub_1003B0214(v13, v16, type metadata accessor for FMModernPlatterButtonEntry);
      [v19 setAccessoryView:0];
      [v19 setAccessoryType:0];
      v23 = objc_opt_self();
      v24 = v19;
      v25 = [v23 clearColor];
      [v24 setBackgroundColor:v25];

      v26 = [objc_allocWithZone(UIView) init];
      v27 = [v23 secondarySystemFillColor];
      [v26 setBackgroundColor:v27];

      [v24 setSelectedBackgroundView:v26];
      sub_1004ED5E8();
      UIListContentConfiguration.text.setter();
      v28 = [v23 systemBlueColor];
      v29 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v29(v41, 0);
      [v24 setAccessoryView:0];
      [v24 setAccessoryType:0];
      LODWORD(v27) = v16[*(v10 + 20)];
      [v24 setUserInteractionEnabled:v16[*(v10 + 20)]];

      v30 = [v24 contentView];
      v31 = v30;
      v32 = 0.5;
      if (v27)
      {
        v32 = 1.0;
      }

      [v30 setAlpha:{v32, v39}];

      v33 = v40;
      v41[3] = v40;
      v41[4] = &protocol witness table for UIListContentConfiguration;
      v34 = sub_100008FC0(v41);
      v35 = v39;
      (*(v39 + 16))(v34, v9, v33);
      UITableViewCell.contentConfiguration.setter();
      v36 = v24;
      v37 = String._bridgeToObjectiveC()();
      [v36 setAccessibilityIdentifier:v37];

      (*(v35 + 8))(v9, v33);
      sub_1003ABABC(v16, type metadata accessor for FMModernPlatterButtonEntry);
    }

    else
    {
    }
  }

  return v19;
}

void sub_1003A74C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = objc_opt_self();
  sub_1003B027C(a3, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMBeaconSharingModuleEntry);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  sub_1003B0214(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FMBeaconSharingModuleEntry);
  aBlock[4] = sub_1003AFC34;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100639C30;
  v11 = _Block_copy(aBlock);

  [v8 setCompletionBlock:v11];
  _Block_release(v11);
}

uint64_t sub_1003A7678(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v4 = *(result + 40);

    v2(a2);

    return sub_10001835C(v2, v4);
  }

  return result;
}

uint64_t sub_1003A76EC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1003A7724(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v4;
  v8[4] = sub_1003AF914;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100004AE4;
  v8[3] = &unk_100639910;
  v7 = _Block_copy(v8);

  [v5 setCompletionBlock:v7];
  _Block_release(v7);
}

uint64_t sub_1003A7818(uint64_t result, char *a2)
{
  v4 = *a2;
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *(result + 40);

    v2(&v4);

    return sub_10001835C(v2, v3);
  }

  return result;
}

char *sub_1003A78F0(uint64_t a1)
{
  v475 = a1;
  *&v459 = swift_getObjectType();
  v2 = type metadata accessor for ItemManagementSectionView();
  __chkstk_darwin(v2 - 8);
  v380 = &v375 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = type metadata accessor for ManagedItem.Properties();
  __chkstk_darwin(v379);
  v377 = &v375 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ManagedItem();
  __chkstk_darwin(v5 - 8);
  v378 = &v375 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OwnerInfoSectionView();
  __chkstk_darwin(v7 - 8);
  v381 = &v375 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v421 = type metadata accessor for UIHostingControllerSizingOptions();
  v419 = *(v421 - 8);
  __chkstk_darwin(v421);
  v420 = &v375 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LostModeManagementSectionView();
  __chkstk_darwin(v10 - 8);
  v418 = &v375 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ItemContactInfoEditItemsProvider();
  __chkstk_darwin(v12 - 8);
  v417 = &v375 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ItemContactInfoUpdater();
  __chkstk_darwin(v14 - 8);
  v416 = &v375 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ItemContactInfoValidator();
  __chkstk_darwin(v16 - 8);
  v415 = &v375 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ItemContactInfoFormatter();
  __chkstk_darwin(v18 - 8);
  v414 = &v375 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ItemContactInfoProvider();
  __chkstk_darwin(v20 - 8);
  v413 = &v375 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DelegatedSharesInvalidator();
  __chkstk_darwin(v22 - 8);
  v458 = &v375 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PunchoutHandler();
  __chkstk_darwin(v24 - 8);
  v457 = &v375 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PasteboardHandler();
  __chkstk_darwin(v26 - 8);
  v456 = &v375 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for FMIPBeaconSharingLimits();
  v409 = *(v28 - 8);
  v410 = v28;
  __chkstk_darwin(v28);
  v408 = &v375 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ShareLiveLocationURLGenerator();
  __chkstk_darwin(v30 - 8);
  v455 = &v375 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies();
  __chkstk_darwin(v32 - 8);
  v412 = &v375 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10007EBC0(&qword_1006BCFD8, &qword_10055E990);
  __chkstk_darwin(v34 - 8);
  v454 = &v375 - v35;
  v443 = type metadata accessor for DelegatedSharesUpdater();
  v442 = *(v443 - 8);
  __chkstk_darwin(v443);
  v453 = &v375 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v465 = &v375 - v38;
  v39 = sub_10007EBC0(&qword_1006BCFE0, &qword_10055E998);
  v406 = *(v39 - 8);
  v407 = v39;
  __chkstk_darwin(v39);
  v405 = &v375 - v40;
  v441 = sub_10007EBC0(&qword_1006BCFE8, &qword_10055E9A0);
  v440 = *(v441 - 8);
  __chkstk_darwin(v441);
  v404 = &v375 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v438 = &v375 - v43;
  v439 = type metadata accessor for ItemProximityProvider();
  v437 = *(v439 - 8);
  __chkstk_darwin(v439);
  v411 = &v375 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v464 = &v375 - v46;
  v47 = sub_10007EBC0(&qword_1006BCFF0, &qword_10055E9A8);
  v402 = *(v47 - 8);
  v403 = v47;
  __chkstk_darwin(v47);
  v401 = &v375 - v48;
  v49 = sub_10007EBC0(&qword_1006BCFF8, &qword_10055E9B0);
  v435 = *(v49 - 8);
  v436 = v49;
  __chkstk_darwin(v49);
  v400 = &v375 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v433 = &v375 - v52;
  v434 = type metadata accessor for LostModeStatusProvider();
  v432 = *(v434 - 8);
  __chkstk_darwin(v434);
  v452 = &v375 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v463 = &v375 - v55;
  v56 = type metadata accessor for DelegatedSharesReportingStatusProvider();
  v430 = *(v56 - 8);
  v431 = v56;
  __chkstk_darwin(v56);
  v451 = &v375 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v462 = &v375 - v59;
  v395 = sub_10007EBC0(&qword_1006BD000, &qword_10055E9B8);
  v393 = *(v395 - 8);
  __chkstk_darwin(v395);
  v394 = &v375 - v60;
  v61 = sub_10007EBC0(&qword_1006BD008, &unk_10055E9C0);
  v428 = *(v61 - 8);
  v429 = v61;
  __chkstk_darwin(v61);
  v392 = &v375 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v427 = &v375 - v64;
  v65 = type metadata accessor for LostAccessoryType();
  v390 = *(v65 - 8);
  v391 = v65;
  __chkstk_darwin(v65);
  v389 = &v375 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for LostAccessory();
  v425 = *(v67 - 8);
  v426 = v67;
  __chkstk_darwin(v67);
  v450 = &v375 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v461 = &v375 - v70;
  v470 = type metadata accessor for LostAccessory.Capabilities();
  v460 = *(v470 - 8);
  __chkstk_darwin(v470);
  v388 = &v375 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v376 = &v375 - v73;
  __chkstk_darwin(v74);
  v375 = &v375 - v75;
  __chkstk_darwin(v76);
  v424 = &v375 - v77;
  v78 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v78 - 8);
  v386 = &v375 - v79;
  v471 = type metadata accessor for UUID();
  v423 = *(v471 - 8);
  __chkstk_darwin(v471);
  v449 = &v375 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v81);
  v387 = &v375 - v82;
  v399 = v83;
  __chkstk_darwin(v84);
  v474 = &v375 - v85;
  v469 = type metadata accessor for FMItemDetailViewModel(0);
  v396 = *(v469 - 8);
  __chkstk_darwin(v469);
  v397 = v86;
  v398 = &v375 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v87);
  v422 = &v375 - v88;
  v445 = type metadata accessor for FMIPItem();
  v466 = *(v445 - 8);
  __chkstk_darwin(v445);
  v444 = &v375 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10007EBC0(&qword_1006B0080, &unk_100552AF0);
  __chkstk_darwin(v90 - 8);
  v384 = &v375 - v91;
  v446 = type metadata accessor for FMPlatterIcon(0);
  __chkstk_darwin(v446);
  v93 = &v375 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v476 = v1;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v448 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton;
  v473 = objc_opt_self();
  v94 = [v473 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v385 = 0x8000000100593DC0;
  v95 = type metadata accessor for FMIconPlatterButton(0);
  v96 = objc_allocWithZone(v95);
  v97 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v96[v97] = [objc_allocWithZone(UIImageView) init];
  v98 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v96[v98] = [objc_allocWithZone(UILabel) init];
  v99 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v96[v99] = [objc_allocWithZone(UILabel) init];
  v100 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v96[v100] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v101 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v102 = type metadata accessor for FMPlatterBackgroundView();
  v382 = v102;
  v103 = objc_allocWithZone(v102);
  v103[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v485.receiver = v103;
  v485.super_class = v102;
  v104 = objc_msgSendSuper2(&v485, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v96[v101] = v104;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v105 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v94;
  v472 = type metadata accessor for FMPlatterIcon;
  sub_1003B027C(v93, &v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], type metadata accessor for FMPlatterIcon);
  v106 = &v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v106 = 0xD00000000000001CLL;
  *(v106 + 1) = 0x8000000100593DC0;
  *(v106 + 3) = 0;
  *(v106 + 4) = 0;
  *(v106 + 2) = 0;
  v106[40] = 2;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v96[v105] = 1;
  v484.receiver = v96;
  v484.super_class = v95;
  v107 = v94;
  v108 = objc_msgSendSuper2(&v484, "init");
  sub_1000D3C9C();
  v109 = objc_opt_self();
  v467 = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = v108;
  *(v110 + 24) = 0;
  *&v488 = sub_100140B98;
  *(&v488 + 1) = v110;
  *&v486 = _NSConcreteStackBlock;
  *(&v486 + 1) = 1107296256;
  v468 = &v487;
  *&v487 = sub_100004AE4;
  *(&v487 + 1) = &unk_100639320;
  v111 = _Block_copy(&v486);
  v112 = v108;

  [v109 animateWithDuration:v111 animations:0.35];
  _Block_release(v111);

  v447 = type metadata accessor for FMPlatterIcon;
  sub_1003ABABC(v93, type metadata accessor for FMPlatterIcon);
  *(v448 + v476) = v112;
  v383 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_directionsButton;
  v113 = [v473 systemBlueColor];
  swift_storeEnumTagMultiPayload();
  v114 = objc_allocWithZone(v95);
  v115 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v114[v115] = [objc_allocWithZone(UIImageView) init];
  v116 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v114[v116] = [objc_allocWithZone(UILabel) init];
  v117 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v114[v117] = [objc_allocWithZone(UILabel) init];
  v118 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v114[v118] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v119 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v120 = v382;
  v121 = objc_allocWithZone(v382);
  v121[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v483.receiver = v121;
  v483.super_class = v120;
  v122 = objc_msgSendSuper2(&v483, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v114[v119] = v122;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v123 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v113;
  sub_1003B027C(v93, &v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v472);
  v124 = &v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v124 = 0xD00000000000001FLL;
  *(v124 + 1) = 0x800000010057F980;
  v124[40] = 0;
  *(v124 + 3) = 0;
  *(v124 + 4) = 0;
  *(v124 + 2) = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v114[v123] = 0;
  v482.receiver = v114;
  v482.super_class = v95;
  v125 = v113;
  v126 = objc_msgSendSuper2(&v482, "init");
  sub_1000D3C9C();
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = 0;
  *&v488 = sub_100141408;
  *(&v488 + 1) = v127;
  *&v486 = _NSConcreteStackBlock;
  *(&v486 + 1) = 1107296256;
  *&v487 = sub_100004AE4;
  *(&v487 + 1) = &unk_100639370;
  v128 = _Block_copy(&v486);
  v129 = v126;

  [v467 animateWithDuration:v128 animations:0.35];
  _Block_release(v128);

  sub_1003ABABC(v93, v447);
  *(v476 + v383) = v129;
  v383 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_findButton;
  v130 = [v473 systemGreenColor];
  v131 = *(sub_10007EBC0(&qword_1006C0020, &qword_100555030) + 48);
  *v93 = 1;
  v132 = enum case for FMFindingType.owner(_:);
  v133 = type metadata accessor for FMFindingType();
  (*(*(v133 - 8) + 104))(&v93[v131], v132, v133);
  v134 = enum case for FMFindingTechnology.precision(_:);
  v135 = type metadata accessor for FMFindingTechnology();
  (*(*(v135 - 8) + 104))(v93, v134, v135);
  swift_storeEnumTagMultiPayload();
  v136 = objc_allocWithZone(v95);
  v137 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v136[v137] = [objc_allocWithZone(UIImageView) init];
  v138 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v136[v138] = [objc_allocWithZone(UILabel) init];
  v139 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v136[v139] = [objc_allocWithZone(UILabel) init];
  v140 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v136[v140] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v141 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v142 = objc_allocWithZone(v120);
  v142[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v481.receiver = v142;
  v481.super_class = v120;
  v143 = objc_msgSendSuper2(&v481, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v136[v141] = v143;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v144 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v130;
  sub_1003B027C(v93, &v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v472);
  v145 = &v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v145 = 0xD000000000000019;
  *(v145 + 1) = 0x8000000100586460;
  v145[40] = 0;
  *(v145 + 3) = 0;
  *(v145 + 4) = 0;
  *(v145 + 2) = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v136[v144] = 0;
  v480.receiver = v136;
  v480.super_class = v95;
  v146 = v130;
  v147 = objc_msgSendSuper2(&v480, "init");
  sub_1000D3C9C();
  v148 = swift_allocObject();
  *(v148 + 16) = v147;
  *(v148 + 24) = 0;
  *&v488 = sub_100141408;
  *(&v488 + 1) = v148;
  *&v486 = _NSConcreteStackBlock;
  *(&v486 + 1) = 1107296256;
  *&v487 = sub_100004AE4;
  *(&v487 + 1) = &unk_1006393C0;
  v149 = _Block_copy(&v486);
  v150 = v147;

  [v467 animateWithDuration:v149 animations:0.35];
  _Block_release(v149);

  sub_1003ABABC(v93, v447);
  v151 = v476;
  *(v476 + v383) = v150;
  v152 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostView;
  v153 = objc_allocWithZone(type metadata accessor for FMItemMarkAsLostView());
  *(v151 + v152) = sub_1004FBB6C();
  v154 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingContentView;
  *(v151 + v154) = [objc_allocWithZone(UIView) init];
  v155 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingViewPlatterBackgroundView;
  v156 = objc_allocWithZone(v120);
  v156[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v479.receiver = v156;
  v479.super_class = v120;
  v157 = objc_msgSendSuper2(&v479, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  v158 = v151;
  *(v151 + v155) = v157;
  v383 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isSharedLostItem;
  *(v151 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isSharedLostItem) = 0;
  *(v151 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRemovingShare) = 0;
  *(v151 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldHoldItem) = 0;
  v159 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsView;
  v160 = objc_allocWithZone(type metadata accessor for FMItemNotificationsView());
  *(v151 + v159) = sub_1003F51F8();
  v161 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_locationServicesAttention;
  v162 = type metadata accessor for FMExtendedPlatterInfoView(0);
  v163 = objc_allocWithZone(v162);
  *(v158 + v161) = sub_10032B2F8(1, 0);
  v164 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lowBatteryAttention;
  v165 = objc_allocWithZone(v162);
  *(v158 + v164) = sub_10032B2F8(1, 0);
  v166 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_inaccurateAttention;
  v167 = objc_allocWithZone(v162);
  *(v158 + v166) = sub_10032B2F8(1, 0);
  v168 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lostModeAttention;
  v169 = objc_allocWithZone(v162);
  *(v158 + v168) = sub_10032B2F8(0, 0);
  v170 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAttention;
  v171 = objc_allocWithZone(v162);
  *(v158 + v170) = sub_10032B2F8(1, 0);
  v172 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundErrorAttention;
  v173 = objc_allocWithZone(type metadata accessor for FMFailablePlatterInfoView(0));
  v174 = OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable;
  v173[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable] = 0;
  v173[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode] = 0;
  v173[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_localizableType] = 1;
  v173[v174] = 0;
  v175 = sub_1002AEC90(0);
  sub_1003F0AB4();

  *(v158 + v172) = v175;
  v176 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingCircleUpdatedAttention;
  v177 = objc_allocWithZone(type metadata accessor for FMBeaconSharingCircleUpdatedAttentionModule(0));
  *(v158 + v176) = sub_1003E5B30();
  v178 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_oldShareAttention;
  v179 = objc_allocWithZone(v162);
  *(v158 + v178) = sub_10032B2F8(1, 0);
  v180 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsOffAttention;
  v181 = objc_allocWithZone(v162);
  *(v158 + v180) = sub_10032B2F8(1, 1);
  v182 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_firstButtonsStackView;
  *(v158 + v182) = [objc_allocWithZone(UIStackView) init];
  v183 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackView;
  *(v158 + v183) = [objc_allocWithZone(UIStackView) init];
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackBottomConstraint) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemConnectionManager) = 0;
  v184 = (v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_conditionSubscription);
  *v184 = 0;
  v184[1] = 0;
  v185 = (v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_locationSubscription);
  *v185 = 0;
  v185[1] = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundAttempted) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isUpdatingShareInFlight) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate) = 1;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSerialNumber) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_showSeparationAttention) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRangingServiceAvailable) = 1;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenFoundOnOverride) = 2;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = 2;
  v186 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  v187 = type metadata accessor for FMIPSafeLocation();
  (*(*(v187 - 8) + 56))(v158 + v186, 1, 1, v187);
  v188 = (v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress);
  *v188 = 0;
  v188[1] = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocationAdded) = 0;
  v189 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationEvent;
  v190 = type metadata accessor for FMIPSeparationEvent();
  (*(*(v190 - 8) + 56))(v158 + v189, 1, 1, v190);
  v191 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_geocodingCache;
  v192 = v384;
  static Locale.autoupdatingCurrent.getter();
  v193 = type metadata accessor for Locale();
  (*(*(v193 - 8) + 56))(v192, 0, 1, v193);
  type metadata accessor for FMIPReverseGeocodingCache();
  swift_allocObject();
  *(v158 + v191) = FMIPReverseGeocodingCache.init(preferredLocale:)();
  type metadata accessor for FMItemDetailDataSource(0);
  swift_allocObject();

  v195 = sub_100105520(v194);
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) = v195;
  v196 = *(v195 + 40);
  v472 = v195;
  v197 = *(*v196 + class metadata base offset for ManagedBuffer + 16);
  v198 = (*(*v196 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v196 + v198));
  v199 = v466;
  v446 = *(v466 + 16);
  v447 = (v466 + 16);
  v200 = v444;
  v201 = v445;
  v446(v444, v196 + v197, v445);
  os_unfair_lock_unlock((v196 + v198));

  v202 = FMIPItem.identifier.getter();
  v204 = v203;
  v205 = *(v199 + 8);
  v205(v200, v201);
  v206 = objc_allocWithZone(type metadata accessor for FMTrustedLocationDetailViewController());

  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_trustedLocationsDetailViewController) = sub_1004A811C(v207, v202, v204);
  v208 = objc_allocWithZone(type metadata accessor for FMFindingExperiencePresenter(0));

  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_findingExperiencePresenter) = sub_100160AB0(v209);
  v210 = objc_allocWithZone(type metadata accessor for FMErrorConditionsAttentionModule());

  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_errorConditionsAttentionModule) = sub_1004F28B0(v211);
  v212 = objc_allocWithZone(type metadata accessor for FMAccessoryDetailView());
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_accessoryDetailView) = sub_1002CC8E8();
  v213 = objc_allocWithZone(type metadata accessor for FMBeaconSharingModuleView(0));

  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingView) = sub_100299D2C(v214);
  v215 = v472;
  v216 = *(v472 + 5);
  v217 = *(*v216 + class metadata base offset for ManagedBuffer + 16);
  v218 = (*(*v216 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v216 + v218));
  v446(v200, v216 + v217, v201);
  os_unfair_lock_unlock((v216 + v218));

  LOBYTE(v216) = FMIPItem.isOwner.getter();
  v466 = v199 + 8;
  v384 = v205;
  v205(v200, v201);
  v219 = objc_allocWithZone(type metadata accessor for FMItemBottomActionsModule(0));
  *&v219[qword_1006B1698 + 8] = 0;
  swift_unknownObjectWeakInit();
  v219[qword_1006B16A0] = v216 & 1;
  v220 = sub_10037B210(0);
  v221 = String._bridgeToObjectiveC()();
  [v220 setAccessibilityIdentifier:v221];

  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_bottomActionsModule) = v220;
  v222 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  v223 = v422;
  sub_1003B027C(v215 + v222, v422, type metadata accessor for FMItemDetailViewModel);
  v224 = *(v223 + *(v469 + 108));
  *(v158 + v383) = v224;
  v225 = *(v448 + v158);
  v226 = 0x8000000100590640;
  v227 = 0xD000000000000018;
  if (v224)
  {
    v228 = 1;
  }

  else
  {
    v227 = 0xD00000000000001CLL;
    v226 = v385;
    v228 = 2;
  }

  v229 = &v225[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  v230 = *&v225[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  v231 = *&v225[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 8];
  v232 = *&v225[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 16];
  v233 = *&v225[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 24];
  v234 = *&v225[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 32];
  *v229 = v227;
  *(v229 + 1) = v226;
  *(v229 + 2) = 0;
  *(v229 + 3) = 0;
  *(v229 + 4) = 0;
  v235 = v229[40];
  v229[40] = v228;
  v236 = v225;
  v237 = v234;
  v238 = v423;
  sub_1000D5A54(v230, v231, v232, v233, v237, v235);
  sub_1000D3C9C();
  v239 = swift_allocObject();
  *(v239 + 16) = v236;
  *(v239 + 24) = 1;
  *&v488 = sub_100141408;
  *(&v488 + 1) = v239;
  *&v486 = _NSConcreteStackBlock;
  *(&v486 + 1) = 1107296256;
  *&v487 = sub_100004AE4;
  *(&v487 + 1) = &unk_100639410;
  v240 = _Block_copy(&v486);
  v241 = v236;
  v242 = v471;
  v243 = v241;

  [v467 animateWithDuration:v240 animations:0.35];
  v244 = v240;
  v245 = v386;
  _Block_release(v244);

  v246 = v223;
  UUID.init(uuidString:)();
  if ((*(v238 + 48))(v245, 1, v242) == 1)
  {
    goto LABEL_25;
  }

  v247 = *(v238 + 32);
  v468 = (v238 + 32);
  v467 = v247;
  (v247)(v474, v245, v242);
  *&v486 = 0;
  sub_1003ABA74(&qword_1006BD010, &type metadata accessor for LostAccessory.Capabilities, &protocol conformance descriptor for LostAccessory.Capabilities);
  v248 = v424;
  dispatch thunk of OptionSet.init(rawValue:)();
  v249 = *(v223 + *(v469 + 56));
  if ((v249 & 2) != 0)
  {
    v250 = v238;
    v251 = v376;
    static LostAccessory.Capabilities.isLostModeEnabled.getter();
    v252 = v375;
    sub_10037A098(v375, v251);
    v253 = v246;
    v254 = *(v460 + 8);
    v255 = v251;
    v238 = v250;
    v256 = v470;
    v254(v255, v470);
    v254(v252, v256);
    v246 = v253;
  }

  if ((v249 & 0x1000) != 0 && (*(*(v475 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentMyLocationInRestrictedRegion) & 1) == 0)
  {
    v257 = v376;
    static LostAccessory.Capabilities.isDelegatedSharesEnabled.getter();
    v258 = v238;
    v259 = v375;
    sub_10037A098(v375, v257);
    v260 = *(v460 + 8);
    v261 = v470;
    v260(v257, v470);
    v262 = v259;
    v238 = v258;
    v260(v262, v261);
  }

  v263 = *(v238 + 16);
  v264 = v474;
  v265 = v471;
  v263(v387, v474, v471);
  v386 = (v238 + 16);
  v266 = v263;
  v448 = v263;
  (*(v460 + 16))(v388, v248, v470);
  v267 = FMIPProductType.isAirTag.getter();
  v268 = &enum case for LostAccessoryType.airTag(_:);
  if ((v267 & 1) == 0)
  {
    v268 = &enum case for LostAccessoryType.accessory(_:);
  }

  (*(v390 + 104))(v389, *v268, v391);
  LostAccessory.init(id:capabilities:accessoryType:)();
  v269 = v449;
  v266(v449, v264, v265);
  type metadata accessor for FMItemDetailLostModeStatusCoordinator(0);
  v270 = swift_allocObject();

  v273 = sub_1003A5A28(v271, v269, v272);
  *(v476 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lostModeStatusCoordinator) = v270;
  __chkstk_darwin(v273);
  type metadata accessor for DelegatedSharesReportingState();
  v274 = v246;
  v275 = enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:);
  (*(v393 + 104))(v394, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v395);

  v276 = v427;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v428 + 16))(v392, v276, v429);
  DelegatedSharesReportingStatusProvider.init(stream:)();

  LostModeStatusProvider.init(streamCreationBlock:)();
  type metadata accessor for ItemProximityProvider.Proximity();
  (*(v402 + 104))(v401, v275, v403);
  v277 = v433;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v435 + 16))(v400, v277, v436);
  v278 = ItemProximityProvider.init(stream:)();
  __chkstk_darwin(v278);
  v403 = v270;
  v279 = v475;
  type metadata accessor for DelegatedURLShare();
  (*(v406 + 104))(v405, v275, v407);
  v280 = v438;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v440 + 16))(v404, v280, v441);
  DelegatedSharesUpdater.init(stream:)();
  v281 = *(v279 + 24);
  v469 = *(v281 + 32);
  v282 = sub_10007EBC0(&qword_1006BD018, &qword_10055E9D0);
  (*(*(v282 - 8) + 56))(v454, 1, 1, v282);
  (*(v425 + 16))(v450, v461, v426);
  (*(v430 + 16))(v451, v462, v431);
  (*(v432 + 16))(v452, v463, v434);
  v283 = OBJC_IVAR____TtC6FindMy17FMDevicesProvider_sharingLimits;
  swift_beginAccess();
  v285 = v408;
  v284 = v409;
  v286 = v281 + v283;
  v287 = v410;
  (*(v409 + 16))(v408, v286, v410);

  v407 = FMIPBeaconSharingLimits.maxDelegatedShares.getter();
  (*(v284 + 8))(v285, v287);
  v288 = v398;
  sub_1003B027C(v274, v398, type metadata accessor for FMItemDetailViewModel);
  v289 = v449;
  v290 = v471;
  v291 = v386;
  v448(v449, v474, v471);
  v292 = (*(v396 + 80) + 16) & ~*(v396 + 80);
  v293 = (v397 + v292 + 7) & 0xFFFFFFFFFFFFFFF8;
  v294 = (v291[64] + v293 + 8) & ~v291[64];
  v295 = (v399 + v294 + 7) & 0xFFFFFFFFFFFFFFF8;
  v296 = swift_allocObject();
  sub_1003B0214(v288, v296 + v292, type metadata accessor for FMItemDetailViewModel);
  *(v296 + v293) = v475;
  (v467)(v296 + v294, v289, v290);
  v297 = v469;
  *(v296 + v295) = v469;
  *(v296 + ((v295 + 15) & 0xFFFFFFFFFFFFFFF8)) = v459;

  ShareLiveLocationURLGenerator.init(maxShareLocationLimit:shareURLGenerator:)();
  PasteboardHandler.init(copyURLBlock:)();
  PunchoutHandler.init(urlPunchoutBlock:activityPunchoutBlock:)();

  DelegatedSharesInvalidator.init(urlInvalidationBlock:)();
  (*(v442 + 16))(v453, v465, v443);
  (*(v437 + 16))(v411, v464, v439);
  v298 = v472;

  ItemContactInfoProvider.init(contactInfoBlock:notifyWhenFoundBlock:)();
  ItemContactInfoFormatter.init(phoneNumberFormatBlock:phoneNumberUnformatBlock:)();
  ItemContactInfoValidator.init(emailValidationBlock:phoneNumberValidationBlock:)();
  v299 = swift_allocObject();
  *(v299 + 16) = v298;
  *(v299 + 24) = v297;
  v300 = swift_allocObject();
  *(v300 + 16) = v298;
  *(v300 + 24) = v297;
  v301 = swift_allocObject();
  *(v301 + 16) = v298;
  *(v301 + 24) = v297;
  swift_retain_n();
  swift_retain_n();
  ItemContactInfoUpdater.init(enableBlock:updateBlock:disableBlock:)();
  ItemContactInfoEditItemsProvider.init(visibleEditItemsBlock:userInteractableEditItemsBlock:)();
  LostModeManagementSectionViewModel.Dependencies.init(delegatedSharesStatusProvider:lostModeStatusProvider:linkGenerator:pasteboardHandler:punchoutHandler:delegatedSharesInvalidator:delegatedSharesUpdater:itemProximityProvider:contactInfoProvider:contactInfoFormatter:contactInfoValidator:contactInfoUpdater:contactInfoEditItemsProvider:)();
  type metadata accessor for LostModeManagementSectionViewModel();
  swift_allocObject();
  v302 = LostModeManagementSectionViewModel.init(initialDestination:lostAccessory:dependencies:)();
  v303 = v476;
  *(v476 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostViewModel) = v302;

  LostModeManagementSectionView.init(viewModel:)();
  v304 = objc_allocWithZone(sub_10007EBC0(&qword_1006BD020, &qword_10055EA48));
  v305 = UIHostingController.init(rootView:)();
  v306 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostHostingController;
  *(v303 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostHostingController) = v305;
  v307 = sub_10007EBC0(&qword_1006B3280, &unk_100555040);
  v308 = *(v419 + 80);
  v468 = *(v419 + 72);
  v467 = v308;
  v309 = swift_allocObject();
  v459 = xmmword_100552220;
  *(v309 + 16) = xmmword_100552220;
  v310 = v305;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  *&v486 = v309;
  v311 = sub_1003ABA74(&qword_1006C1310, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
  v312 = sub_10007EBC0(&qword_1006B3288, &unk_10055A8A0);
  v313 = sub_100004098(&qword_1006C1320, &qword_1006B3288, &unk_10055A8A0, &protocol conformance descriptor for [A]);
  v457 = v312;
  v456 = v313;
  v458 = v311;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v245 = *(v303 + v306);
  UIHostingController.safeAreaRegions.setter();

  v314 = [*(v303 + v306) view];
  if (!v314)
  {
    __break(1u);
    goto LABEL_23;
  }

  v315 = v314;
  v316 = [v473 clearColor];
  [v315 setBackgroundColor:v316];

  type metadata accessor for OwnerInfoSectionViewModel();
  swift_allocObject();
  v317 = OwnerInfoSectionViewModel.init(account:serialNumber:)();
  v318 = v476;
  *(v476 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_ownerInfoSectionViewModel) = v317;

  OwnerInfoSectionView.init(viewModel:)();
  v319 = objc_allocWithZone(sub_10007EBC0(&qword_1006BD028, &qword_10055EA50));
  v320 = UIHostingController.init(rootView:)();
  v321 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_ownerInfoSectionViewHostingController;
  *(v318 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_ownerInfoSectionViewHostingController) = v320;
  v455 = v307;
  v322 = swift_allocObject();
  *(v322 + 16) = v459;
  v323 = v320;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  *&v486 = v322;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v245 = *(v318 + v321);
  UIHostingController.safeAreaRegions.setter();

  v324 = [*(v318 + v321) view];
  if (!v324)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v325 = v324;
  v326 = [v473 clearColor];
  [v325 setBackgroundColor:v326];

  v327 = *(v472 + 5);
  v328 = *(*v327 + class metadata base offset for ManagedBuffer + 16);
  v329 = (*(*v327 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v327 + v329));
  v330 = v444;
  v331 = v445;
  v446(v444, v327 + v328, v445);
  os_unfair_lock_unlock((v327 + v329));

  FMIPItem.isOwner.getter();
  (v384)(v330, v331);
  *&v486 = 0;
  sub_1003ABA74(&qword_1006BD030, &type metadata accessor for ManagedItem.Properties, &protocol conformance descriptor for ManagedItem.Properties);
  dispatch thunk of OptionSet.init(rawValue:)();
  ManagedItem.init(isOwnedByMe:properties:)();
  type metadata accessor for ItemManagementSectionViewModel();
  swift_allocObject();
  v332 = ItemManagementSectionViewModel.init(managedItem:)();
  v333 = v476;
  *(v476 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemManagementViewModel) = v332;

  ItemManagementSectionView.init(viewModel:)();
  v334 = objc_allocWithZone(sub_10007EBC0(&qword_1006BD038, &unk_10055EA58));
  v335 = UIHostingController.init(rootView:)();
  v336 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemManagementHostingController;
  *(v333 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemManagementHostingController) = v335;
  v337 = swift_allocObject();
  *(v337 + 16) = v459;
  v338 = v335;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  *&v486 = v337;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v339 = *(v333 + v336);
  UIHostingController.safeAreaRegions.setter();

  v245 = [*(v333 + v336) view];
  if (!v245)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    sub_100012DF0(v245, &unk_1006B20C0, &unk_100552E10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v340 = [v473 clearColor];
  [v245 setBackgroundColor:v340];

  v478 = 0;
  v486 = xmmword_100554AC0;
  v487 = xmmword_100554AD0;
  v488 = xmmword_100552170;
  v489 = xmmword_100552180;
  v490 = xmmword_100552190;
  v491 = xmmword_1005521A0;
  v492 = xmmword_1005521B0;
  v493 = xmmword_1005521C0;
  v494 = xmmword_1005521D0;
  v495 = xmmword_1005521E0;
  v496 = 0;
  v497 = 0x403A000000000000;
  v498 = 0;
  __asm { FMOV            V0.2D, #16.0 }

  v499 = _Q0;
  v500 = 0x4046000000000000;
  v501 = 0;

  v347 = sub_100278C9C(v346, &v486);
  *(v472 + 4) = &off_1006392E8;
  swift_unknownObjectWeakAssign();
  *(*&v347[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsView] + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_delegate + 8) = &off_100639200;
  swift_unknownObjectWeakAssign();
  *(*&v347[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_trustedLocationsDetailViewController] + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_delegate + 8) = &off_1006391F0;
  swift_unknownObjectWeakAssign();
  *(*&v347[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_bottomActionsModule] + qword_1006B1698 + 8) = &off_100639178;
  swift_unknownObjectWeakAssign();
  *(*&v347[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_accessoryDetailView] + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_delegate + 8) = &off_1006391C8;
  swift_unknownObjectWeakAssign();
  My = type metadata accessor for Feature.FindMy();
  v477[3] = My;
  v477[4] = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v349 = sub_100008FC0(v477);
  (*(*(My - 8) + 104))(v349, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v477);
  v350 = v424;
  v351 = v471;
  v352 = v474;
  if ((My & 1) == 0)
  {
    *(*&v347[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostView] + OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_delegate + 8) = &off_100639220;
    swift_unknownObjectWeakAssign();
  }

  *(*&v347[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_findingExperiencePresenter] + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_delegate + 8) = &off_1006391A8;
  swift_unknownObjectWeakAssign();
  v353 = v475;
  v354 = *(v475 + 16);
  v355 = v347;
  v356 = v354;
  v357 = sub_1003CC7C8(v355, v356);

  v358 = &v355[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_conditionSubscription];
  *v358 = v357;
  v358[1] = &off_100635798;
  swift_unknownObjectRelease();
  v359 = *(v353 + 40);
  v360 = v355;
  v361 = v359;
  v362 = sub_1003CBC60(v360, v361);

  v363 = &v360[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_locationSubscription];
  *v363 = v362;
  v363[1] = &off_10063F000;
  swift_unknownObjectRelease();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v364 = type metadata accessor for Logger();
  sub_100005B14(v364, qword_1006D4630);
  v365 = Logger.logObject.getter();
  v366 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v365, v366))
  {
    v367 = swift_slowAlloc();
    v368 = swift_slowAlloc();
    *v367 = 138412290;
    *(v367 + 4) = v360;
    *v368 = v347;
    v369 = v360;
    _os_log_impl(&_mh_execute_header, v365, v366, "🧭 FMItemDetailContentViewController%@: init", v367, 0xCu);
    sub_100012DF0(v368, &unk_1006AF760, &qword_100552DB0);
  }

  swift_unknownObjectWeakAssign();
  v370 = *&v360[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
  v371 = String._bridgeToObjectiveC()();
  [v370 setAccessibilityIdentifier:v371];

  v372 = *&v360[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_directionsButton];
  v373 = String._bridgeToObjectiveC()();
  [v372 setAccessibilityIdentifier:v373];

  (*(v442 + 8))(v465, v443);
  (*(v440 + 8))(v438, v441);
  (*(v437 + 8))(v464, v439);
  (*(v435 + 8))(v433, v436);
  (*(v432 + 8))(v463, v434);
  (*(v430 + 8))(v462, v431);
  (*(v428 + 8))(v427, v429);
  (*(v425 + 8))(v461, v426);
  (*(v460 + 8))(v350, v470);
  (*(v423 + 8))(v352, v351);
  sub_1003ABABC(v422, type metadata accessor for FMItemDetailViewModel);
  return v360;
}

uint64_t sub_1003AB5AC(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(type metadata accessor for FMItemDetailViewModel(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v2 + v9);
  v14 = *(v2 + v12);
  v15 = *(v2 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_1000E3478;

  return sub_100381464(a1, a2, v2 + v8, v13, v2 + v11, v14, v15);
}

uint64_t sub_1003AB754(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1002AB55C;

  return sub_100382714(a1, v1);
}

uint64_t sub_1003AB7EC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1003B0D4C;

  return sub_100382EA4(v0);
}

uint64_t sub_1003AB87C(uint64_t a1, char a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000EE760;

  return sub_100383330(a1, a2, v7, v6);
}

uint64_t sub_1003AB92C(uint64_t a1, char a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000EE760;

  return sub_100384194(a1, a2, v7, v6);
}

uint64_t sub_1003AB9DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000EE760;

  return sub_100384FA0(v2, v3);
}

uint64_t sub_1003ABA74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003ABABC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003ABB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10007EBC0(&qword_1006B9FD0, &qword_10055BD30);

  return sub_100385540(a1, a2, a3);
}

uint64_t sub_1003ABBF0()
{
  v1 = sub_10007EBC0(&qword_1006B9FD0, &qword_10055BD30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (v9 + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_1003ABD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_10007EBC0(&qword_1006B9FD0, &qword_10055BD30) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FMIPItem() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v12 + *(v11 + 64);
  v14 = *(v4 + v13);
  v15 = *(v4 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8);

  return a4(a1, a2, a3, v4 + v9, v4 + v12, v14, v15);
}

uint64_t sub_1003ABF40(uint64_t a1, uint64_t a2)
{
  sub_10007EBC0(&qword_1006BD078, &qword_10055EA88);

  return sub_100382BDC(a1, a2);
}

uint64_t sub_1003ABFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for FMItemDetailViewModel(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_10007EBC0(&qword_1006BD080, &qword_10055EA90) - 8);
  v14 = v3 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_100382130(a1, a2, a3, v3 + v8, v3 + v11, v14);
}

uint64_t sub_1003AC180(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10007EBC0(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1003AC204(uint64_t a1)
{
  sub_10007EBC0(&qword_1006BD0B0, &qword_10055EAC0);

  return sub_10038072C(a1, v2);
}

void sub_1003AC374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(v3 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton) + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active) & 1) != 0 || *(v3 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight) == 1)
  {
    a1 = sub_10039ED70(0, 0);
  }

  *(*(v3 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + 96) = 0;
  sub_100104C2C(a1, a2, a3);
}

void sub_1003AC3E4()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B0080, &unk_100552AF0);
  __chkstk_darwin(v2 - 8);
  v106 = &v104 - v3;
  v112 = type metadata accessor for FMPlatterIcon(0);
  __chkstk_darwin(v112);
  v5 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v105 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton;
  v111 = objc_opt_self();
  v6 = [v111 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for FMIconPlatterButton(0);
  v8 = objc_allocWithZone(v7);
  v9 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v8[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v8[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v8[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v8[v12] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v13 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v14 = type metadata accessor for FMPlatterBackgroundView();
  v15 = objc_allocWithZone(v14);
  v15[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v125.receiver = v15;
  v125.super_class = v14;
  v16 = objc_msgSendSuper2(&v125, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v8[v13] = v16;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v17 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v6;
  v107 = type metadata accessor for FMPlatterIcon;
  sub_1003B027C(v5, &v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], type metadata accessor for FMPlatterIcon);
  v18 = &v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v18 = 0xD00000000000001CLL;
  *(v18 + 1) = 0x8000000100593DC0;
  *(v18 + 3) = 0;
  *(v18 + 4) = 0;
  *(v18 + 2) = 0;
  v18[40] = 2;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v8[v17] = 1;
  v124.receiver = v8;
  v124.super_class = v7;
  v19 = v7;
  v20 = v6;
  v21 = objc_msgSendSuper2(&v124, "init");
  sub_1000D3C9C();
  v22 = objc_opt_self();
  v109 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = 0;
  v122 = sub_100141408;
  v123 = v23;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v110 = &v120;
  v120 = sub_100004AE4;
  v121 = &unk_10063AD38;
  v24 = _Block_copy(&aBlock);
  v25 = v21;

  [v22 animateWithDuration:v24 animations:0.35];
  _Block_release(v24);

  v108 = type metadata accessor for FMPlatterIcon;
  sub_1003ABABC(v5, type metadata accessor for FMPlatterIcon);
  *(v1 + v105) = v25;
  v105 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_directionsButton;
  v26 = [v111 systemBlueColor];
  swift_storeEnumTagMultiPayload();
  v27 = objc_allocWithZone(v19);
  v28 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v27[v28] = [objc_allocWithZone(UIImageView) init];
  v29 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v27[v29] = [objc_allocWithZone(UILabel) init];
  v30 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v27[v30] = [objc_allocWithZone(UILabel) init];
  v31 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v27[v31] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v32 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v33 = objc_allocWithZone(v14);
  v33[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v117.receiver = v33;
  v117.super_class = v14;
  v34 = objc_msgSendSuper2(&v117, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v27[v32] = v34;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v35 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v26;
  sub_1003B027C(v5, &v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v107);
  v36 = &v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v36 = 0xD00000000000001FLL;
  *(v36 + 1) = 0x800000010057F980;
  v36[40] = 0;
  *(v36 + 3) = 0;
  *(v36 + 4) = 0;
  *(v36 + 2) = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v27[v35] = 0;
  v116.receiver = v27;
  v116.super_class = v19;
  v37 = v26;
  v38 = objc_msgSendSuper2(&v116, "init");
  sub_1000D3C9C();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = 0;
  v122 = sub_100141408;
  v123 = v39;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_100004AE4;
  v121 = &unk_10063AD88;
  v40 = _Block_copy(&aBlock);
  v41 = v38;

  [v109 animateWithDuration:v40 animations:0.35];
  _Block_release(v40);

  sub_1003ABABC(v5, v108);
  *(v1 + v105) = v41;
  v105 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_findButton;
  v42 = [v111 systemGreenColor];
  v43 = *(sub_10007EBC0(&qword_1006C0020, &qword_100555030) + 48);
  *v5 = 1;
  v44 = enum case for FMFindingType.owner(_:);
  v45 = type metadata accessor for FMFindingType();
  (*(*(v45 - 8) + 104))(&v5[v43], v44, v45);
  v46 = enum case for FMFindingTechnology.precision(_:);
  v47 = type metadata accessor for FMFindingTechnology();
  (*(*(v47 - 8) + 104))(v5, v46, v47);
  swift_storeEnumTagMultiPayload();
  v48 = objc_allocWithZone(v19);
  v49 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v48[v49] = [objc_allocWithZone(UIImageView) init];
  v50 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v48[v50] = [objc_allocWithZone(UILabel) init];
  v51 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v48[v51] = [objc_allocWithZone(UILabel) init];
  v52 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v48[v52] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v53 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v54 = objc_allocWithZone(v14);
  v54[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v115.receiver = v54;
  v115.super_class = v14;
  v55 = objc_msgSendSuper2(&v115, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v48[v53] = v55;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v56 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v42;
  sub_1003B027C(v5, &v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v107);
  v57 = &v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v57 = 0xD000000000000019;
  *(v57 + 1) = 0x8000000100586460;
  v57[40] = 0;
  *(v57 + 3) = 0;
  *(v57 + 4) = 0;
  *(v57 + 2) = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v48[v56] = 0;
  v114.receiver = v48;
  v114.super_class = v19;
  v58 = v42;
  v59 = objc_msgSendSuper2(&v114, "init");
  sub_1000D3C9C();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = 0;
  v122 = sub_100141408;
  v123 = v60;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_100004AE4;
  v121 = &unk_10063ADD8;
  v61 = _Block_copy(&aBlock);
  v62 = v59;

  [v109 animateWithDuration:v61 animations:0.35];
  _Block_release(v61);

  sub_1003ABABC(v5, v108);
  *(v1 + v105) = v62;
  v63 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostView;
  v64 = objc_allocWithZone(type metadata accessor for FMItemMarkAsLostView());
  *(v1 + v63) = sub_1004FBB6C();
  v65 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingContentView;
  *(v1 + v65) = [objc_allocWithZone(UIView) init];
  v66 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingViewPlatterBackgroundView;
  v67 = objc_allocWithZone(v14);
  v67[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v113.receiver = v67;
  v113.super_class = v14;
  v68 = objc_msgSendSuper2(&v113, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v66) = v68;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isSharedLostItem) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRemovingShare) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldHoldItem) = 0;
  v69 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsView;
  v70 = objc_allocWithZone(type metadata accessor for FMItemNotificationsView());
  *(v1 + v69) = sub_1003F51F8();
  v71 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_locationServicesAttention;
  v72 = type metadata accessor for FMExtendedPlatterInfoView(0);
  v73 = objc_allocWithZone(v72);
  *(v1 + v71) = sub_10032B2F8(1, 0);
  v74 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lowBatteryAttention;
  v75 = objc_allocWithZone(v72);
  *(v1 + v74) = sub_10032B2F8(1, 0);
  v76 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_inaccurateAttention;
  v77 = objc_allocWithZone(v72);
  *(v1 + v76) = sub_10032B2F8(1, 0);
  v78 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lostModeAttention;
  v79 = objc_allocWithZone(v72);
  *(v1 + v78) = sub_10032B2F8(0, 0);
  v80 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAttention;
  v81 = objc_allocWithZone(v72);
  *(v1 + v80) = sub_10032B2F8(1, 0);
  v82 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundErrorAttention;
  v83 = objc_allocWithZone(type metadata accessor for FMFailablePlatterInfoView(0));
  v84 = OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable;
  v83[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable] = 0;
  v83[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode] = 0;
  v83[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_localizableType] = 1;
  v83[v84] = 0;
  v85 = sub_1002AEC90(0);
  sub_1003F0AB4();

  *(v1 + v82) = v85;
  v86 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingCircleUpdatedAttention;
  v87 = objc_allocWithZone(type metadata accessor for FMBeaconSharingCircleUpdatedAttentionModule(0));
  *(v1 + v86) = sub_1003E5B30();
  v88 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_oldShareAttention;
  v89 = objc_allocWithZone(v72);
  *(v1 + v88) = sub_10032B2F8(1, 0);
  v90 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsOffAttention;
  v91 = objc_allocWithZone(v72);
  *(v1 + v90) = sub_10032B2F8(1, 1);
  v92 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_firstButtonsStackView;
  *(v1 + v92) = [objc_allocWithZone(UIStackView) init];
  v93 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackView;
  *(v1 + v93) = [objc_allocWithZone(UIStackView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemConnectionManager) = 0;
  v94 = (v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_conditionSubscription);
  *v94 = 0;
  v94[1] = 0;
  v95 = (v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_locationSubscription);
  *v95 = 0;
  v95[1] = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundAttempted) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isUpdatingShareInFlight) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSerialNumber) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_showSeparationAttention) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRangingServiceAvailable) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenFoundOnOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = 2;
  v96 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  v97 = type metadata accessor for FMIPSafeLocation();
  (*(*(v97 - 8) + 56))(v1 + v96, 1, 1, v97);
  v98 = (v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress);
  *v98 = 0;
  v98[1] = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocationAdded) = 0;
  v99 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationEvent;
  v100 = type metadata accessor for FMIPSeparationEvent();
  (*(*(v100 - 8) + 56))(v1 + v99, 1, 1, v100);
  v101 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_geocodingCache;
  v102 = v106;
  static Locale.autoupdatingCurrent.getter();
  v103 = type metadata accessor for Locale();
  (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
  type metadata accessor for FMIPReverseGeocodingCache();
  swift_allocObject();
  *(v1 + v101) = FMIPReverseGeocodingCache.init(preferredLocale:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003AD550(int a1)
{
  v2 = v1;
  LODWORD(v49) = a1;
  v3 = type metadata accessor for FMIPAnalyticsActionType();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPNotifyItemActionType();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for FMIPItem();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v48 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v42 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource];
  v18 = (v42 + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];

  sub_1000E5FF8(v20, v19, v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100012DF0(v10, &qword_1006B07D0, qword_100552820);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMItemDetailContentViewController: Cannot toggle notify when found for unknown item", v24, 2u);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    v25 = *(v12 + 16);
    v41 = v17;
    v25(v14, v17, v11);
    (*(v46 + 104))(v7, enum case for FMIPNotifyItemActionType.whenFound(_:), v47);
    type metadata accessor for FMIPNotifyItemAction();
    swift_allocObject();
    v26 = v49;
    v27 = v49 & 1;
    v28 = FMIPNotifyItemAction.init(item:type:state:)();
    v29 = v28;
    v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenFoundOnOverride] = v27;
    if (v26)
    {
      v30 = *(v42 + 40);
      v31 = *(*v30 + class metadata base offset for ManagedBuffer + 16);
      v32 = *(*v30 + 48) + 3;
      v49 = v28;
      v33 = v32 & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v30 + v33));
      v25(v14, (v30 + v31), v11);
      os_unfair_lock_unlock((v30 + v33));

      v35 = v43;
      v34 = v44;
      v36 = v45;
      (*(v44 + 104))(v43, enum case for FMIPAnalyticsActionType.enableNotifyWhenFound(_:), v45);
      v37 = sub_1003A49A0(v14, v35);
      v38 = v35;
      v29 = v49;
      (*(v34 + 8))(v38, v36, v37);
      (*(v12 + 8))(v14, v11);
    }

    v39 = swift_allocObject();
    *(v39 + 16) = v2;
    *(v39 + 24) = v27;

    v40 = v2;
    sub_1000D6A90(v29, sub_1003AFCA0, v39);

    (*(v12 + 8))(v41, v11);
  }
}

double sub_1003ADB1C()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMItemDetailContentViewController: handle itemNotificationViewSelectNWLBDetailLabel", v3, 2u);
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000C5474(sub_1003AFC98, v4, 0, 0);

  return result;
}

uint64_t sub_1003ADC58(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMItemDetailViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    if (a1)
    {
      v12 = 28239;
    }

    else
    {
      v12 = 6710863;
    }

    if (a1)
    {
      v13 = 0xE200000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_100005B4C(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMItemDetailContentViewController: Airplane Mode is %s", v10, 0xCu);
    sub_100006060(v11);
  }

  v15 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v16 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v15 + v16, v6, type metadata accessor for FMItemDetailViewModel);
  sub_10038B13C();
  return sub_1003ABABC(v6, type metadata accessor for FMItemDetailViewModel);
}

uint64_t sub_1003ADE74(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMItemDetailViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    if (a1)
    {
      v12 = 6710863;
    }

    else
    {
      v12 = 28239;
    }

    if (a1)
    {
      v13 = 0xE300000000000000;
    }

    else
    {
      v13 = 0xE200000000000000;
    }

    v14 = sub_100005B4C(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMItemDetailContentViewController: BT is %s", v10, 0xCu);
    sub_100006060(v11);
  }

  v15 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v16 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v15 + v16, v6, type metadata accessor for FMItemDetailViewModel);
  sub_10038B13C();
  return sub_1003ABABC(v6, type metadata accessor for FMItemDetailViewModel);
}

void sub_1003AE090(uint64_t a1, uint64_t a2)
{
  v2 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006B0120, &qword_100552B60);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100005B14(v9, qword_1006D4630);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "FMItemDetailContentViewController: Error opening settings. Invalid URL", v12, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v13 = [objc_opt_self() defaultWorkspace];
    if (v13)
    {
      v15 = v13;
      URL._bridgeToObjectiveC()(v14);
      v17 = v16;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v15 openSensitiveURL:v17 withOptions:isa];
    }

    (*(v6 + 8))(v8, v5);
  }
}

void sub_1003AE34C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UIListContentConfiguration();
  v91 = *(v9 - 8);
  v92 = v9;
  __chkstk_darwin(v9);
  v94 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v93 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v90 = &v85 - v15;
  __chkstk_darwin(v16);
  v18 = &v85 - v17;
  __chkstk_darwin(v19);
  v21 = &v85 - v20;
  __chkstk_darwin(v22);
  v95 = &v85 - v23;
  v24 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v26 = [a1 dequeueReusableCellWithIdentifier:v24 forIndexPath:isa];

  swift_beginAccess();
  v27 = *(a5 + 16);
  if (!*(v27 + 16))
  {
    return;
  }

  v28 = sub_10000726C(a3, a4);
  if ((v29 & 1) == 0)
  {

    return;
  }

  sub_1003B027C(*(v27 + 56) + *(v12 + 72) * v28, v21, type metadata accessor for FMBeaconSharingModuleEntry);

  sub_1003B0214(v21, v95, type metadata accessor for FMBeaconSharingModuleEntry);
  [v26 setAccessoryView:0];
  [v26 setAccessoryType:0];
  v30 = objc_opt_self();
  v88 = v26;
  v31 = v26;
  v32 = [v30 clearColor];
  [v31 setBackgroundColor:v32];

  v33 = [objc_allocWithZone(UIView) init];
  v34 = [v30 secondarySystemFillColor];
  [v33 setBackgroundColor:v34];

  v89 = v31;
  v87 = v33;
  [v31 setSelectedBackgroundView:v33];
  sub_1004ED5E8();
  sub_1002924FC(&v102);
  v35 = v103;
  v36 = v105 | ((v106 | (v107 << 16)) << 32);
  v37 = v108;
  if (v109 > 1u)
  {
    LODWORD(v86) = v104;
    if (v109 == 2)
    {
      v40 = v94;
      UIListContentConfiguration.text.setter();
      UIListContentConfiguration.secondaryText.setter();
      v41 = [objc_allocWithZone(UISwitch) init];
      sub_10000905C(0, &qword_1006AF730, UIAction_ptr);
      v42 = v95;
      sub_1003B027C(v95, v18, type metadata accessor for FMBeaconSharingModuleEntry);
      v43 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v44 = swift_allocObject();
      *(v44 + 16) = a5;
      sub_1003B0214(v18, v44 + v43, type metadata accessor for FMBeaconSharingModuleEntry);

      v45 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      [v41 addAction:v45 forControlEvents:4096];
      [v41 setOn:v86 & 1];
      v46 = v89;
      [v89 setSelectionStyle:0];
      [v46 setAccessoryView:v41];

LABEL_18:
      v86 = 0;
      v54 = 0;
      v85 = 0;
      v49 = 0;
LABEL_22:
      v53 = v93;
      goto LABEL_23;
    }

    v40 = v94;
    UIListContentConfiguration.text.setter();
    UIListContentConfiguration.secondaryText.setter();
    if (v37)
    {
      v55 = objc_opt_self();
      v54 = swift_allocObject();
      *(v54 + 16) = v86;
      *(v54 + 23) = BYTE6(v36);
      *(v54 + 21) = WORD2(v36);
      *(v54 + 17) = v36;
      v46 = v89;
      *(v54 + 24) = v37;
      *(v54 + 32) = v46;
      v56 = swift_allocObject();
      v86 = sub_1003B0E78;
      *(v56 + 16) = sub_1003B0E78;
      *(v56 + 24) = v54;
      v100 = sub_1003B0D50;
      v101 = v56;
      aBlock = _NSConcreteStackBlock;
      v97 = 1107296256;
      v98 = sub_1000095FC;
      v99 = &unk_100639BE0;
      v57 = _Block_copy(&aBlock);
      v58 = v46;

      [v55 performWithoutAnimation:v57];
      _Block_release(v57);
      LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

      v53 = v93;
      if ((v55 & 1) == 0)
      {
        v85 = 0;
        v49 = 0;
        v42 = v95;
        goto LABEL_23;
      }

LABEL_33:
      __break(1u);
      return;
    }

    v46 = v89;
    [v89 setAccessoryView:0];
LABEL_21:
    v86 = 0;
    v54 = 0;
    v85 = 0;
    v49 = 0;
    v42 = v95;
    goto LABEL_22;
  }

  if (!v109)
  {
    v38 = v94;
    UIListContentConfiguration.text.setter();
    if (v35)
    {
      v39 = [v30 systemRedColor];
    }

    else
    {
      v39 = [v30 systemBlueColor];
    }

    v59 = v39;
    v60 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v60(&aBlock, 0);
    v40 = v38;
    v42 = v95;
    v46 = v89;
    [v89 setAccessoryView:0];
    [v46 setAccessoryType:0];
    goto LABEL_18;
  }

  v47 = v104;
  v40 = v94;
  UIListContentConfiguration.text.setter();
  UIListContentConfiguration.secondaryText.setter();
  if (!v37)
  {
    v46 = v89;
    [v89 setAccessoryType:1];
    goto LABEL_21;
  }

  v48 = objc_opt_self();
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v49 + 23) = BYTE6(v36);
  *(v49 + 21) = WORD2(v36);
  *(v49 + 17) = v36;
  v46 = v89;
  *(v49 + 24) = v37;
  *(v49 + 32) = v46;
  v50 = swift_allocObject();
  v85 = sub_1003B0E74;
  *(v50 + 16) = sub_1003B0E74;
  *(v50 + 24) = v49;
  v100 = sub_1003B0D50;
  v101 = v50;
  aBlock = _NSConcreteStackBlock;
  v97 = 1107296256;
  v98 = sub_1000095FC;
  v99 = &unk_100639B68;
  v51 = _Block_copy(&aBlock);
  v52 = v46;

  [v48 performWithoutAnimation:v51];
  _Block_release(v51);
  LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

  v53 = v93;
  if (v48)
  {
    __break(1u);
    goto LABEL_33;
  }

  v86 = 0;
  v54 = 0;
  v42 = v95;
LABEL_23:
  v61 = v90;
  sub_1003B027C(v42, v90, type metadata accessor for FMBeaconSharingModuleEntry);
  v62 = sub_10007EBC0(&qword_1006B9D48, &unk_10055EB50);
  v63 = *(*(v62 - 8) + 48);
  v64 = v63(v61, 2, v62);
  if (v64)
  {
    v65 = v64 != 1;
  }

  else
  {
    v66 = v49;
    v67 = v54;
    v68 = v40;
    v69 = *(v62 + 48);
    v70 = *(v62 + 64);
    v71 = type metadata accessor for UUID();
    v72 = v61 + v70;
    v46 = v89;
    (*(*(v71 - 8) + 8))(v72, v71);
    v73 = v61 + v69;
    v40 = v68;
    v54 = v67;
    v49 = v66;
    v42 = v95;
    sub_1003ABABC(v73, type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1003ABABC(v61, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    v65 = 1;
  }

  [v46 setUserInteractionEnabled:{v65, v85}];

  v74 = [v46 contentView];
  sub_1003B027C(v42, v53, type metadata accessor for FMBeaconSharingModuleEntry);
  v75 = v63(v53, 2, v62);
  v76 = 1.0;
  if (v75)
  {
    v78 = v91;
    v77 = v92;
    if (v75 == 1)
    {
      v76 = 0.5;
    }
  }

  else
  {
    v79 = *(v62 + 48);
    v80 = *(v62 + 64);
    v81 = type metadata accessor for UUID();
    (*(*(v81 - 8) + 8))(v53 + v80, v81);
    sub_1003ABABC(v53 + v79, type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1003ABABC(v53, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    v76 = 1.0;
    v78 = v91;
    v77 = v92;
  }

  [v74 setAlpha:v76];

  v99 = v77;
  v100 = &protocol witness table for UIListContentConfiguration;
  v82 = sub_100008FC0(&aBlock);
  (*(v78 + 16))(v82, v40, v77);
  UITableViewCell.contentConfiguration.setter();
  v83 = v46;
  v84 = String._bridgeToObjectiveC()();
  [v83 setAccessibilityIdentifier:v84];

  (*(v78 + 8))(v40, v77);
  sub_1003ABABC(v42, type metadata accessor for FMBeaconSharingModuleEntry);
  sub_10001835C(v86, v54);
  sub_10001835C(v85, v49);
}

void sub_1003AF04C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UIListContentConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v15 = [a1 dequeueReusableCellWithIdentifier:v13 forIndexPath:isa];

  swift_beginAccess();
  v16 = *(a5 + 16);
  if (*(v16 + 16))
  {

    v17 = sub_10000726C(a3, a4);
    if ((v18 & 1) == 0)
    {

      return;
    }

    v59 = v10;
    v60 = v9;
    v19 = *(*(v16 + 56) + v17);

    [v15 setAccessoryView:0];
    [v15 setAccessoryType:0];
    v20 = objc_opt_self();
    v57 = v15;
    v21 = v15;
    v22 = [v20 clearColor];
    [v21 setBackgroundColor:v22];

    v23 = [objc_allocWithZone(UIView) init];
    v24 = [v20 secondarySystemFillColor];
    [v23 setBackgroundColor:v24];

    v58 = v23;
    [v21 setSelectedBackgroundView:v23];
    sub_1004ED5E8();
    sub_1000EF468(v19, &v67);
    v25 = v68;
    v26 = v70 | ((v71 | (v72 << 16)) << 32);
    v27 = v73;
    if (v74 > 1u)
    {
      HIDWORD(v56) = v69;
      if (v74 != 2)
      {
        UIListContentConfiguration.text.setter();
        UIListContentConfiguration.secondaryText.setter();
        if (!v27)
        {
          v49 = "setAccessoryView:";
LABEL_20:
          [v21 v49];
          goto LABEL_21;
        }

        v42 = objc_opt_self();
        v41 = swift_allocObject();
        *(v41 + 16) = BYTE4(v56);
        *(v41 + 23) = BYTE6(v26);
        *(v41 + 21) = WORD2(v26);
        *(v41 + 17) = v26;
        *(v41 + 24) = v27;
        *(v41 + 32) = v21;
        v43 = swift_allocObject();
        *(v43 + 16) = sub_1003AF908;
        *(v43 + 24) = v41;
        v65 = sub_1003B0D50;
        v66 = v43;
        aBlock = _NSConcreteStackBlock;
        v62 = 1107296256;
        v63 = sub_1000095FC;
        v64 = &unk_1006398C0;
        v44 = _Block_copy(&aBlock);
        v45 = v21;

        [v42 performWithoutAnimation:v44];
        _Block_release(v44);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          v36 = 0;
          v34 = 0;
          v40 = sub_1003AF908;
          goto LABEL_22;
        }

LABEL_25:
        __break(1u);
        return;
      }

      UIListContentConfiguration.text.setter();
      UIListContentConfiguration.secondaryText.setter();
      v29 = [objc_allocWithZone(UISwitch) init];
      sub_10000905C(0, &qword_1006AF730, UIAction_ptr);
      v30 = swift_allocObject();
      *(v30 + 16) = a5;
      *(v30 + 24) = v19;

      v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      [v29 addAction:v31 forControlEvents:4096];
      [v29 setOn:BYTE4(v56) & 1];
      [v21 setSelectionStyle:0];
      [v21 setAccessoryView:v29];
    }

    else
    {
      if (!v74)
      {
        UIListContentConfiguration.text.setter();
        if (v25)
        {
          v28 = [v20 systemRedColor];
        }

        else
        {
          v28 = [v20 systemBlueColor];
        }

        v47 = v28;
        v48 = UIListContentConfiguration.textProperties.modify();
        UIListContentConfiguration.TextProperties.color.setter();
        v48(&aBlock, 0);
        [v21 setAccessoryView:0];
        v49 = "setAccessoryType:";
        goto LABEL_20;
      }

      v32 = v69;
      UIListContentConfiguration.text.setter();
      UIListContentConfiguration.secondaryText.setter();
      if (v27)
      {
        v33 = objc_opt_self();
        v34 = swift_allocObject();
        *(v34 + 16) = v32;
        *(v34 + 23) = BYTE6(v26);
        *(v34 + 21) = WORD2(v26);
        *(v34 + 17) = v26;
        *(v34 + 24) = v27;
        *(v34 + 32) = v21;
        v35 = swift_allocObject();
        v36 = sub_1003AF8FC;
        *(v35 + 16) = sub_1003AF8FC;
        *(v35 + 24) = v34;
        v65 = sub_1003B0D50;
        v66 = v35;
        aBlock = _NSConcreteStackBlock;
        v62 = 1107296256;
        v63 = sub_1000095FC;
        v64 = &unk_100639848;
        v37 = _Block_copy(&aBlock);
        v38 = v21;

        [v33 performWithoutAnimation:v37];
        _Block_release(v37);
        v39 = swift_isEscapingClosureAtFileLocation();

        if ((v39 & 1) == 0)
        {
          v40 = 0;
          v41 = 0;
LABEL_22:
          [v21 setUserInteractionEnabled:1];

          v50 = [v21 contentView];
          [v50 setAlpha:1.0];

          v51 = v60;
          v64 = v60;
          v65 = &protocol witness table for UIListContentConfiguration;
          v52 = sub_100008FC0(&aBlock);
          v53 = v59;
          (*(v59 + 16))(v52, v12, v51);
          UITableViewCell.contentConfiguration.setter();
          v54 = v21;
          v55 = String._bridgeToObjectiveC()();
          [v54 setAccessibilityIdentifier:v55];

          (*(v53 + 8))(v12, v51);
          sub_10001835C(v40, v41);
          sub_10001835C(v36, v34);
          return;
        }

        __break(1u);
        goto LABEL_25;
      }

      [v21 setAccessoryType:1];
    }

LABEL_21:
    v40 = 0;
    v41 = 0;
    v36 = 0;
    v34 = 0;
    goto LABEL_22;
  }
}

void sub_1003AF99C(uint64_t a1)
{
  v3 = *(type metadata accessor for FMBeaconSharingModuleEntry(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1003A74C0(a1, v4, v5);
}

uint64_t sub_1003AFA10()
{
  v1 = *(type metadata accessor for FMBeaconSharingModuleEntry(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  v6 = sub_10007EBC0(&qword_1006B9D48, &unk_10055EB50);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 2, v6))
  {
    type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v7 = type metadata accessor for FMFFriend();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
    }

    v8 = *(v6 + 48);
    v9 = sub_10007EBC0(&qword_1006B9DF8, &unk_10055B9B0);
    if (!(*(*(v9 - 8) + 48))(v5 + v8, 1, v9))
    {
      v10 = type metadata accessor for FMIPBeaconShareState();
      (*(*(v10 - 8) + 8))(v5 + v8, v10);
    }

    v11 = *(v6 + 64);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1003AFC34()
{
  v1 = *(type metadata accessor for FMBeaconSharingModuleEntry(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1003A7678(v2, v3);
}

uint64_t sub_1003AFD08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003AFD78(uint64_t result)
{
  v2 = *(v1 + 16);
  if (result)
  {
    if (*(*(v2 + qword_1006C2B78) + 16))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(v2 + qword_1006C2B70) != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *(v2 + qword_1006C2BA0) = v3;
  return result;
}

uint64_t sub_1003AFDD0(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_1003AFE20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double sub_1003AFEC8(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPItem() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 25) & ~*(v3 + 80));

  return sub_1003A2868(a1, v4, v5, v6);
}

void sub_1003B00CC()
{
  type metadata accessor for FMIPItemActionStatus();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_10039F858(v1, v2);
}

uint64_t sub_1003B0140()
{
  v1 = *(type metadata accessor for FMIPItemActionStatus() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  return sub_10039DF24(v3, v4, v6, v0 + v2, v5);
}

uint64_t sub_1003B0214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B027C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B02EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_10039A940(a1, a2, a3, v9, v3 + v8, v11, v12);
}

uint64_t sub_1003B03A8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_10039BE98(v3, v0 + v2, v5, v6);
}

uint64_t sub_1003B0460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000EE760;

  return sub_100399ED4(a1, v4, v5, v7, v6);
}

uint64_t sub_1003B0520(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000EE760;

  return sub_100399A74(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1003B0638()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1003B0684()
{
  v1 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_10007EBC0(&qword_1006BB1E0, &unk_100558B50) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_10039B080(v0 + v2, v6, v0 + v5, v8, v9);
}

void sub_1003B07AC(unint64_t a1, uint64_t a2)
{
  type metadata accessor for FMIPLocation();

  sub_100395C24(a1, a2);
}

uint64_t sub_1003B0900()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1003B09CC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000E3478;

  return sub_100390310(a1, v6, v7, v8, v1 + v5);
}

void sub_1003B0B64(uint64_t a1)
{
  sub_1003B0BFC(319, &unk_1006BD278, &type metadata accessor for DelegatedURLShare);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1003B0BFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1003B0EC4(uint64_t a1)
{
  sub_10000AF8C();
  if (v1 <= 0x3F)
  {
    sub_10000905C(319, &qword_1006C0000, UIColor_ptr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        sub_1003B102C();
        if (v4 <= 0x3F)
        {
          sub_1003B1084(319);
          if (v5 <= 0x3F)
          {
            sub_1003B10EC(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1003B102C()
{
  if (!qword_1006BD310)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BD310);
    }
  }
}

void sub_1003B1084(uint64_t a1)
{
  if (!qword_1006BD318)
  {
    sub_10000905C(255, &qword_1006BFD00, CNContact_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006BD318);
    }
  }
}

void sub_1003B10EC(uint64_t a1)
{
  if (!qword_1006BD320)
  {
    type metadata accessor for FMLocationAlertRowViewModel(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1006BD320);
    }
  }
}

void sub_1003B118C(uint64_t a1)
{
  sub_10000AF8C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FMFLocationAlertTriggerType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::Int sub_1003B1234()
{
  Hasher.init(_seed:)();
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  FMFLocationAlertTriggerType.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1003B12F4(uint64_t a1)
{
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  FMFLocationAlertTriggerType.rawValue.getter();
  String.hash(into:)();

  return result;
}

Swift::Int sub_1003B13A8(uint64_t a1)
{
  Hasher.init(_seed:)();
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  FMFLocationAlertTriggerType.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1003B14B0(int *a1@<X0>, void *a2@<X1>, void *a3@<X3>, double a4@<X4>, double a5@<X5>, int a6@<W6>, int a7@<W7>, Swift::String *a8@<X8>, char a9)
{
  v400 = a7;
  v423 = a6;
  v387 = a5;
  v390 = a4;
  v428 = a3;
  v432 = a2;
  v448 = a8;
  v10 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v10 - 8);
  v424 = v380 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v414 = v380 - v13;
  v14 = sub_10007EBC0(&qword_1006B0038, &unk_10055EDB0);
  __chkstk_darwin(v14 - 8);
  v395 = v380 - v15;
  v431 = type metadata accessor for FMFConfigValue();
  v430 = *(v431 - 8);
  __chkstk_darwin(v431);
  v429 = v380 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10007EBC0(&unk_1006B0670, &unk_100554180);
  __chkstk_darwin(v17 - 8);
  v442 = (v380 - v18);
  v427 = sub_10007EBC0(&qword_1006B14A8, &qword_10055EDC0);
  __chkstk_darwin(v427);
  v437 = v380 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v389 = v380 - v21;
  v22 = sub_10007EBC0(&unk_1006C2460, &unk_100553880);
  __chkstk_darwin(v22 - 8);
  v401 = v380 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v436 = v380 - v25;
  __chkstk_darwin(v26);
  v421 = v380 - v27;
  __chkstk_darwin(v28);
  v386 = v380 - v29;
  __chkstk_darwin(v30);
  v391 = v380 - v31;
  __chkstk_darwin(v32);
  v393 = v380 - v33;
  v385 = type metadata accessor for FormatStyleCapitalizationContext();
  v384 = *(v385 - 8);
  __chkstk_darwin(v385);
  v383 = v380 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Date();
  v440 = *(v35 - 8);
  v441 = v35;
  __chkstk_darwin(v35);
  v402 = v380 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v396 = v380 - v38;
  __chkstk_darwin(v39);
  v411 = v380 - v40;
  __chkstk_darwin(v41);
  object = v380 - v42;
  __chkstk_darwin(v43);
  v404 = v380 - v44;
  v435 = type metadata accessor for FMFLocationSource();
  v438 = *(v435 - 8);
  __chkstk_darwin(v435);
  countAndFlagsBits = v380 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v403 = v380 - v47;
  v48 = type metadata accessor for FMFLocation();
  v445 = *(v48 - 8);
  v446 = v48;
  __chkstk_darwin(v48);
  v397 = v380 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v405 = v380 - v51;
  v52 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v52 - 8);
  v422 = v380 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v410 = v380 - v55;
  __chkstk_darwin(v56);
  v409 = v380 - v57;
  __chkstk_darwin(v58);
  v408 = v380 - v59;
  __chkstk_darwin(v60);
  v399 = v380 - v61;
  __chkstk_darwin(v62);
  v398 = v380 - v63;
  __chkstk_darwin(v64);
  v392 = v380 - v65;
  __chkstk_darwin(v66);
  v406 = v380 - v67;
  __chkstk_darwin(v68);
  v388 = v380 - v69;
  __chkstk_darwin(v70);
  v72 = v380 - v71;
  __chkstk_darwin(v73);
  v75 = v380 - v74;
  __chkstk_darwin(v76);
  v443 = v380 - v77;
  __chkstk_darwin(v78);
  v447 = v380 - v79;
  v80 = type metadata accessor for FMFRelationshipType();
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v83 = v380 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v84);
  v86 = v380 - v85;
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.sharesLocationWithMe.getter();
  v87 = sub_1003B518C(&qword_1006B4070, &type metadata accessor for FMFRelationshipType, &protocol conformance descriptor for FMFRelationshipType);
  v407 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v88 = *(v81 + 8);
  v88(v83, v80);
  v88(v86, v80);
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.followsMyLocation.getter();
  v439 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v88(v83, v80);
  v88(v86, v80);
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.sharesLocationWithMe.getter();
  v413 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v88(v83, v80);
  v88(v86, v80);
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.willShareLocationWithMe.getter();
  v415 = v87;
  v394 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v418 = v83;
  v88(v83, v80);
  v417 = v86;
  v89 = v86;
  v90 = v445;
  v420 = v80;
  v419 = v81 + 8;
  v416 = v88;
  v88(v89, v80);
  v91 = a1;
  sub_1003B89E8(a1);
  v93 = v92;
  v94 = FMFFriend.supportsShallowOrLiveLocations.getter();
  v412 = v93;
  if (v94 == 2 || (v94 & 1) == 0 || (FMFFriend.fallbackToLegacy.getter() & 1) != 0)
  {
    v95 = 0;
    goto LABEL_5;
  }

  v126 = v447;
  FMFFriend.location.getter();
  v127 = *(v90 + 48);
  v128 = v446;
  if (v127(v126, 1, v446) == 1)
  {
    sub_100012DF0(v126, &qword_1006AF740, &unk_100552330);
  }

  else
  {
    v138 = FMFLocation.isLivePending.getter();
    (*(v90 + 8))(v126, v128);
    if (v138)
    {
      v95 = 1;
LABEL_28:
      v90 = v445;
      goto LABEL_5;
    }
  }

  v139 = v443;
  FMFFriend.location.getter();
  if (v127(v139, 1, v128) == 1)
  {
    sub_100012DF0(v139, &qword_1006AF740, &unk_100552330);
    v95 = 0;
    goto LABEL_28;
  }

  v95 = FMFLocation.isLivePaused.getter();
  v90 = v445;
  (*(v445 + 8))(v139, v128);
LABEL_5:
  FMFFriend.location.getter();
  v96 = v446;
  v447 = *(v90 + 48);
  if ((v447)(v75, 1, v446) == 1)
  {
    sub_100012DF0(v75, &qword_1006AF740, &unk_100552330);
    v97 = 0;
    v98 = v447;
    if ((a9 & 1) == 0)
    {
LABEL_7:
      v434 = v95 | v97;
      goto LABEL_10;
    }
  }

  else
  {
    v97 = FMFLocation.locateInProgress.getter();
    (*(v90 + 8))(v75, v96);
    v98 = v447;
    if ((a9 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v434 = 0;
LABEL_10:
  v99 = objc_opt_self();
  v433 = [v99 secondaryLabelColor];
  FMFFriend.location.getter();
  v100 = v446;
  v101 = v98(v72, 1, v446);
  v443 = (v90 + 48);
  if (v101 == 1)
  {
    sub_100012DF0(v72, &qword_1006AF740, &unk_100552330);
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    v102 = v442;
    goto LABEL_46;
  }

  v103 = *(v90 + 32);
  v104 = v90;
  v105 = v405;
  v103(v405, v72, v100);
  if (a9)
  {
    v106 = [objc_opt_self() mainBundle];
    v452._object = 0x800000010057DA00;
    v107._countAndFlagsBits = 0xD00000000000001CLL;
    v107._object = 0x800000010057D9E0;
    v452._countAndFlagsBits = 0xD00000000000002ELL;
    v108._countAndFlagsBits = 0;
    v108._object = 0xE000000000000000;
    v109 = NSLocalizedString(_:tableName:bundle:value:comment:)(v107, 0, v106, v108, v452);
    countAndFlagsBits = v109._countAndFlagsBits;
    object = v109._object;

    (*(v104 + 8))(v105, v100);
    v102 = v442;
    v90 = v104;
    goto LABEL_46;
  }

  v382 = v99;
  v110 = v403;
  FMFLocation.locationSource.getter();
  v111 = v438;
  v112 = *(v438 + 104);
  v113 = countAndFlagsBits;
  v114 = v435;
  v112(countAndFlagsBits, enum case for FMFLocationSource.secureLive(_:), v435);
  sub_1003B518C(&qword_1006B14E8, &type metadata accessor for FMFLocationSource, &protocol conformance descriptor for FMFLocationSource);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v117 = *(v111 + 8);
  v116 = v111 + 8;
  v115 = v117;
  v117(v113, v114);
  v117(v110, v114);
  v118 = v105;
  if (v450[0] == v449 && (FMFLocation.isLivePaused.getter() & 1) == 0)
  {
    v133 = [objc_opt_self() mainBundle];
    v134._countAndFlagsBits = 0xD000000000000019;
    v454._object = 0x8000000100594480;
    v134._object = 0x8000000100594460;
    v454._countAndFlagsBits = 0xD00000000000002BLL;
    v135._countAndFlagsBits = 0;
    v135._object = 0xE000000000000000;
    v136 = NSLocalizedString(_:tableName:bundle:value:comment:)(v134, 0, v133, v135, v454);
    countAndFlagsBits = v136._countAndFlagsBits;
    object = v136._object;

    v137 = [v382 systemGreenColor];
    v90 = v445;
    v100 = v446;
    (*(v445 + 8))(v118, v446);
    v433 = v137;
    v102 = v442;
    goto LABEL_46;
  }

  v119 = FMFLocation.location.getter();
  if (!v119)
  {
    v102 = v442;
    if (v434)
    {
      v129 = [objc_opt_self() mainBundle];
      v453._object = 0x800000010057D9B0;
      v130._countAndFlagsBits = 0xD00000000000001DLL;
      v130._object = 0x800000010057D990;
      v453._countAndFlagsBits = 0xD00000000000002FLL;
      v131._countAndFlagsBits = 0;
      v131._object = 0xE000000000000000;
      v132 = NSLocalizedString(_:tableName:bundle:value:comment:)(v130, 0, v129, v131, v453);
      countAndFlagsBits = v132._countAndFlagsBits;
      object = v132._object;

      v90 = v445;
      v100 = v446;
      (*(v445 + 8))(v118, v446);
    }

    else
    {
      v90 = v445;
      v100 = v446;
      (*(v445 + 8))(v118, v446);
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    goto LABEL_46;
  }

  v381 = v115;
  v120 = v119;
  v121 = [v119 timestamp];

  v122 = object;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v440 + 32))(v404, v122, v441);
  Date.timeIntervalSinceNow.getter();
  if (v123 >= 3600.0)
  {
    v140 = sub_100455280();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v142 = [v140 stringFromDate:isa];

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v143;
  }

  else
  {
    v124 = v383;
    static FormatStyleCapitalizationContext.beginningOfSentence.getter();
    countAndFlagsBits = sub_1000CA844(v124);
    object = v125;
    (*(v384 + 8))(v124, v385);
  }

  v144 = v389;
  v145 = v393;
  v146 = v388;
  FMFFriend.location.getter();
  v147 = v446;
  v148 = (v447)(v146, 1, v446);
  v380[1] = v116;
  if (v148 == 1)
  {
    sub_100012DF0(v146, &qword_1006AF740, &unk_100552330);
    v149 = 1;
  }

  else
  {
    FMFLocation.locationSource.getter();
    (*(v445 + 8))(v146, v147);
    v149 = 0;
  }

  v150 = v438;
  v151 = *(v438 + 56);
  v152 = v145;
  v153 = v145;
  v154 = v435;
  v151(v152, v149, 1, v435);
  v155 = v391;
  v112(v391, enum case for FMFLocationSource.stewie(_:), v154);
  v156 = v154;
  v151(v155, 0, 1, v154);
  v157 = *(v427 + 48);
  sub_100007204(v153, v144, &unk_1006C2460, &unk_100553880);
  sub_100007204(v155, v144 + v157, &unk_1006C2460, &unk_100553880);
  v158 = *(v150 + 48);
  if (v158(v144, 1, v156) == 1)
  {
    sub_100012DF0(v155, &unk_1006C2460, &unk_100553880);
    sub_100012DF0(v393, &unk_1006C2460, &unk_100553880);
    v159 = v158(v144 + v157, 1, v156);
    v100 = v446;
    if (v159 == 1)
    {
      sub_100012DF0(v144, &unk_1006C2460, &unk_100553880);
      v90 = v445;
      v102 = v442;
LABEL_42:
      v170 = [objc_opt_self() mainBundle];
      v171.value._countAndFlagsBits = 0xD000000000000012;
      v455._countAndFlagsBits = 0xD000000000000017;
      v455._object = 0x800000010057FD20;
      v172._object = 0x8000000100594440;
      v171.value._object = 0x800000010057FD00;
      v172._countAndFlagsBits = 0xD00000000000001ALL;
      v173._countAndFlagsBits = 0;
      v173._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v172, v171, v170, v173, v455);

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v174 = swift_allocObject();
      *(v174 + 16) = xmmword_100552220;
      *(v174 + 56) = &type metadata for String;
      *(v174 + 64) = sub_10008EE84();
      v175 = object;
      *(v174 + 32) = countAndFlagsBits;
      *(v174 + 40) = v175;
      countAndFlagsBits = String.init(format:_:)();
      object = v176;

      goto LABEL_43;
    }

    goto LABEL_38;
  }

  v160 = v386;
  sub_100007204(v144, v386, &unk_1006C2460, &unk_100553880);
  v161 = v158(v144 + v157, 1, v156);
  v162 = v156;
  v100 = v446;
  if (v161 == 1)
  {
    sub_100012DF0(v391, &unk_1006C2460, &unk_100553880);
    sub_100012DF0(v393, &unk_1006C2460, &unk_100553880);
    v381(v160, v162);
LABEL_38:
    sub_100012DF0(v144, &qword_1006B14A8, &qword_10055EDC0);
    v90 = v445;
    v102 = v442;
    goto LABEL_43;
  }

  v163 = v144 + v157;
  v164 = v144;
  v165 = v403;
  (*(v438 + 32))(v403, v163, v162);
  sub_1003B518C(&qword_1006B14E0, &type metadata accessor for FMFLocationSource, &protocol conformance descriptor for FMFLocationSource);
  v166 = v160;
  v167 = dispatch thunk of static Equatable.== infix(_:_:)();
  v168 = v165;
  v169 = v381;
  v381(v168, v162);
  sub_100012DF0(v391, &unk_1006C2460, &unk_100553880);
  sub_100012DF0(v393, &unk_1006C2460, &unk_100553880);
  v169(v166, v162);
  sub_100012DF0(v164, &unk_1006C2460, &unk_100553880);
  v90 = v445;
  v102 = v442;
  if (v167)
  {
    goto LABEL_42;
  }

LABEL_43:
  v177 = v404;
  Date.timeIntervalSinceNow.getter();
  v178 = &selRef_systemRedColor;
  if (v179 >= -900.0)
  {
    v178 = &selRef_systemGreenColor;
  }

  v180 = [v382 *v178];

  (*(v440 + 8))(v177, v441);
  (*(v90 + 8))(v405, v100);
  v433 = v180;
LABEL_46:
  v181 = FMFFriend.contactHandles.getter();
  v182 = v181;
  v183 = *(v181 + 16);
  if (v183)
  {
    v184 = v91;
    v185 = sub_10002E21C(*(v181 + 16), 0);
    v186 = sub_100016318(v450, v185 + 4, v183, v182);
    v187 = v450[0];
    v188 = v450[2];
    LOBYTE(v91) = v451;

    sub_10000BEC8(v187);
    if (v186 != v183)
    {
      goto LABEL_151;
    }

    v91 = v184;
    v90 = v445;
    v100 = v446;
    v102 = v442;
  }

  else
  {
    v185 = _swiftEmptyArrayStorage;
  }

  v450[0] = v185;
  sub_10000BED0(v450);

  if (*(v450[0] + 2))
  {
    v186 = *(v450[0] + 5);
    v405 = *(v450[0] + 4);

    v404 = FMFFriend.contactHandles.getter();
    FMFFriend.contact.getter();
    v189 = type metadata accessor for FMFContact();
    v190 = *(v189 - 8);
    if ((*(v190 + 48))(v102, 1, v189) == 1)
    {
      sub_100012DF0(v102, &unk_1006B0670, &unk_100554180);
      v191 = 0;
    }

    else
    {
      FMFContact.storeUUID.getter();
      (*(v190 + 8))(v102, v189);
      type metadata accessor for FMFCoreHelper();
      v191 = static FMFCoreHelper.contact(for:keysToFetch:)();
    }

    v185 = v408;
    v192 = type metadata accessor for FMPersonDetailViewModel(0);
    *(&v448->_countAndFlagsBits + v192[17]) = v191;
    v193 = v406;
    FMFFriend.location.getter();
    v194 = (v447)(v193, 1, v100);
    v442 = v192;
    v444 = v91;
    if (v194 == 1)
    {

      sub_100012DF0(v193, &qword_1006AF740, &unk_100552330);
      v195 = 0;
      v196 = 0;
      v197 = 0;
      LOBYTE(v91) = 1;
    }

    else
    {
      v198 = FMFLocation.location.getter();
      v199 = *(v90 + 8);
      v200 = v193;
      v201 = v198;
      v199(v200, v100);
      if (v201)
      {
        v197 = v432;
        if (v432)
        {
          v408 = v186;
          v202 = v430;
          v203 = v429;
          v204 = v431;
          (*(v430 + 104))(v429, enum case for FMFConfigValue.peopleFindingNearbyDistance(_:), v431);
          v449 = 0x4034000000000000;
          v205 = v197;
          FMFWaldoGlobalConfig<A>(_:fallback:)();
          (*(v202 + 8))(v203, v204);
          v206 = v450[0];
          [v205 distanceFromLocation:v201];
          v208 = v207;
          v209 = v205;
          [v205 horizontalAccuracy];
          v211 = v210;
          v212 = v201;
          [v201 horizontalAccuracy];
          LODWORD(v406) = v208 / sqrt(*&v206 * *&v206 + v211 * v211 + v213 * v213) < 1.5;
          v214 = v392;
          FMFFriend.location.getter();
          v215 = v446;
          if ((v447)(v214, 1, v446) == 1)
          {
            sub_100012DF0(v214, &qword_1006AF740, &unk_100552330);
            v216 = 1;
          }

          else
          {
            v216 = FMFLocation.isOld.getter();
            v199(v214, v215);
          }

          v184 = v212;
          v188 = v209;
          [v209 distanceFromLocation:v184];
          v271 = v270;
          [v209 horizontalAccuracy];
          v273 = v272;
          [v184 horizontalAccuracy];
          LOBYTE(v91) = v216 | (v271 / sqrt(v273 * v273 + v274 * v274 + 4000000.0) < 1.5);
          v186 = v408;
          if ((v91 & 1) == 0)
          {
            if (qword_1006AEBE0 != -1)
            {
              swift_once();
            }

            v275 = type metadata accessor for Logger();
            sub_100005B14(v275, qword_1006D4630);
            v276 = Logger.logObject.getter();
            v277 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v276, v277))
            {
              v278 = swift_slowAlloc();
              *v278 = 67109376;
              *(v278 + 4) = 1;
              *(v278 + 8) = 1024;
              *(v278 + 10) = 1;
              _os_log_impl(&_mh_execute_header, v276, v277, "FMPersonDetailViewModel canStartDiscovering is false, location old?: %{BOOL}d, isFarAway: %{BOOL}d", v278, 0xEu);
            }
          }

          if (qword_1006AEC58 != -1)
          {
            goto LABEL_152;
          }

          goto LABEL_91;
        }

        v195 = 0;
        v196 = 0;
      }

      else
      {

        v195 = 0;
        v196 = 0;
        v197 = 0;
      }

      LOBYTE(v91) = 1;
      v192 = v442;
    }

    v217 = v405;
    v218 = v404;
    while (1)
    {
      v219 = v448;
      *(&v448->_countAndFlagsBits + v192[33]) = v195;
      *(&v219->_countAndFlagsBits + v192[34]) = v91 & 1;
      v219[1]._countAndFlagsBits = v196;
      v219[1]._object = v197;
      v220 = (v219 + v192[15]);
      *v220 = v217;
      v220[1] = v186;
      *(&v219->_countAndFlagsBits + v192[16]) = v218;
      v219[6]._countAndFlagsBits = FMFFriend.name.getter();
      v219[6]._object = v221;
      v219[7]._countAndFlagsBits = FMFFriend.properName.getter();
      v219[7]._object = v222;
      v219[8]._countAndFlagsBits = FMFFriend.shortName.getter();
      v219[8]._object = v223;
      v219->_countAndFlagsBits = FMFFriend.identifier.getter();
      v219->_object = v224;
      if (v407 & 1 | ((v439 & 1) == 0))
      {
        v225 = v398;
        FMFFriend.location.getter();
        v226 = (v447)(v225, 1, v100);
        v227 = v445;
        v228 = v414;
        if (v226 == 1)
        {
          v229 = v414;
          v230 = v185;
          v231 = &qword_1006AF740;
          v232 = &unk_100552330;
LABEL_80:
          sub_100012DF0(v225, v231, v232);
          v258 = v399;
          FMFFriend.location.getter();
          v253 = sub_100050DA8(v258, 1);
          v254 = v259;
          v261 = v260;
          v263 = v262;
          sub_100012DF0(v258, &qword_1006AF740, &unk_100552330);
          v252 = 0;
          v264 = v448;
          v448[3]._countAndFlagsBits = v261;
          v264[3]._object = v263;
          v255 = v433;
          v256 = countAndFlagsBits;
          v257 = object;
          v185 = v230;
          v228 = v229;
          v233 = v441;
          v192 = v442;
          goto LABEL_102;
        }

        v238 = v397;
        (*(v445 + 32))(v397, v225, v100);
        v225 = v395;
        FMFLocation.label.getter();
        v239 = type metadata accessor for FMFLabel();
        if ((*(*(v239 - 8) + 48))(v225, 1, v239) != 1)
        {
          v229 = v228;
          v230 = v185;
          (*(v227 + 8))(v238, v100);
          v231 = &qword_1006B0038;
          v232 = &unk_10055EDB0;
          goto LABEL_80;
        }

        sub_100012DF0(v225, &qword_1006B0038, &unk_10055EDB0);
        v240 = v399;
        FMFFriend.location.getter();
        v241 = sub_1000532F8(v240, 1);
        v428 = v242;
        sub_100012DF0(v240, &qword_1006AF740, &unk_100552330);
        v243 = objc_opt_self();
        v244 = [v243 mainBundle];
        v456._object = 0x8000000100579940;
        v245._countAndFlagsBits = 0xD00000000000001ELL;
        v245._object = 0x8000000100579920;
        v456._countAndFlagsBits = 0xD000000000000030;
        v246._countAndFlagsBits = 0;
        v246._object = 0xE000000000000000;
        v247 = NSLocalizedString(_:tableName:bundle:value:comment:)(v245, 0, v244, v246, v456);

        if (v241 == v247._countAndFlagsBits && v428 == v247._object)
        {

          v192 = v442;
        }

        else
        {
          v298 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v192 = v442;
          if ((v298 & 1) == 0)
          {
            v368 = [v243 mainBundle];
            v459._object = 0x800000010057D9B0;
            v369._countAndFlagsBits = 0xD00000000000001DLL;
            v369._object = 0x800000010057D990;
            v459._countAndFlagsBits = 0xD00000000000002FLL;
            v370._countAndFlagsBits = 0;
            v370._object = 0xE000000000000000;
            v371 = NSLocalizedString(_:tableName:bundle:value:comment:)(v369, 0, v368, v370, v459);

            if (v241 == v371._countAndFlagsBits && v428 == v371._object)
            {

              v233 = v441;
              v192 = v442;
              v227 = v445;
              v372 = v446;
              goto LABEL_143;
            }

            v373 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v233 = v441;
            v192 = v442;
            v227 = v445;
            v372 = v446;
            if (v373)
            {
LABEL_143:
              if (v434)
              {
                v374 = v372;

                v372 = v374;
                v241 = 0;
                v428 = 0xE000000000000000;
              }

              (*(v227 + 8))(v397, v372);
              v253 = 0;
              v254 = 0;
              v375 = v448;
              v376 = v428;
              v448[3]._countAndFlagsBits = v241;
              v375[3]._object = v376;
              v252 = v434 ^ 1;
            }

            else
            {
              (*(v445 + 8))(v397, v446);
              v253 = 0;
              v254 = 0;
              v377 = v448;
              v378 = v428;
              v448[3]._countAndFlagsBits = v241;
              v377[3]._object = v378;
              v252 = 1;
            }

            v255 = v433;
LABEL_78:
            v256 = countAndFlagsBits;
            v257 = object;
            goto LABEL_102;
          }
        }

        v227 = v445;
        (*(v445 + 8))(v397, v446);
        v253 = 0;
        v254 = 0;
        v299 = v448;
        v300 = v428;
        v448[3]._countAndFlagsBits = v241;
        v299[3]._object = v300;
        v252 = 1;
        v233 = v441;
        v255 = v433;
        v256 = countAndFlagsBits;
        v257 = object;
      }

      else
      {
        v227 = v445;
        v228 = v414;
        v233 = v441;
        if (v400)
        {
          v234 = [objc_opt_self() mainBundle];
          if (v394)
          {
            v379 = 0x800000010057D950;
            v235 = 0xD000000000000026;
            v236 = 0x800000010057D920;
            v237 = 0xD000000000000038;
          }

          else
          {
            v379 = 0x800000010057D8F0;
            v236 = 0x800000010057D8D0;
            v237 = 0xD00000000000002CLL;
            v235 = 0xD00000000000001ALL;
          }

          v250._countAndFlagsBits = 0;
          v250._object = 0xE000000000000000;
          v251 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v235, 0, v234, v250, *&v237);

          v252 = 0;
          v253 = 0;
          v254 = 0;
          v448[3] = v251;
          v255 = v433;
          v192 = v442;
          goto LABEL_78;
        }

        if (v434)
        {
          v248 = 0;
          v249 = 0xE000000000000000;
        }

        else
        {
          v265 = [objc_opt_self() mainBundle];
          v457._object = 0x800000010057D890;
          v266._countAndFlagsBits = 0xD000000000000026;
          v266._object = 0x800000010057D860;
          v457._countAndFlagsBits = 0xD000000000000038;
          v267._countAndFlagsBits = 0;
          v267._object = 0xE000000000000000;
          v268 = NSLocalizedString(_:tableName:bundle:value:comment:)(v266, 0, v265, v267, v457);
          v248 = v268._countAndFlagsBits;
          v249 = v268._object;

          v192 = v442;
        }

        v255 = v433;
        v256 = countAndFlagsBits;
        v257 = object;
        v252 = 0;
        v253 = 0;
        v254 = 0;
        v269 = v448;
        v448[3]._countAndFlagsBits = v248;
        v269[3]._object = v249;
      }

LABEL_102:
      v301 = v448;
      v448[2]._countAndFlagsBits = v253;
      v301[2]._object = v254;
      v301[4]._object = v256;
      v301[5]._countAndFlagsBits = v257;
      LOBYTE(v301[4]._countAndFlagsBits) = v252 & 1;
      v301[5]._object = v255;
      FMFFriend.location.getter();
      v302 = v446;
      if ((v447)(v185, 1, v446) == 1)
      {
        sub_100012DF0(v185, &qword_1006AF740, &unk_100552330);
        v303 = v421;
        v304 = v436;
      }

      else
      {
        v305 = FMFLocation.location.getter();
        (*(v227 + 8))(v185, v302);
        v303 = v421;
        v304 = v436;
        if (v305)
        {
          v306 = [v305 timestamp];

          v307 = v396;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v308 = v440;
          v309 = *(v440 + 32);
          v309(v228, v307, v233);
          (*(v308 + 56))(v228, 0, 1, v233);
          v310 = v411;
          v309(v411, v228, v233);
          v192 = v442;
          goto LABEL_108;
        }
      }

      v308 = v440;
      (*(v440 + 56))(v228, 1, 1, v233);
      v310 = v411;
      static Date.distantFuture.getter();
      if ((*(v308 + 48))(v228, 1, v233) != 1)
      {
        sub_100012DF0(v228, &unk_1006B0000, &unk_100552AA0);
      }

LABEL_108:
      v312 = *(v308 + 32);
      v311 = (v308 + 32);
      v313 = v448 + v192[14];
      v428 = v312;
      v312(v313, v310, v233);
      v314 = v409;
      FMFFriend.location.getter();
      if ((v447)(v314, 1, v302) == 1)
      {
        sub_100012DF0(v314, &qword_1006AF740, &unk_100552330);
        v315 = 0;
        v316 = v410;
      }

      else
      {
        v317 = FMFLocation.location.getter();
        (*(v445 + 8))(v314, v302);
        v316 = v410;
        if (v317)
        {

          v315 = 1;
        }

        else
        {
          v315 = 0;
        }
      }

      *(&v448->_countAndFlagsBits + v192[23]) = v315;
      FMFFriend.location.getter();
      v318 = (v447)(v316, 1, v302);
      v433 = v311;
      if (v318 == 1)
      {
        sub_100012DF0(v316, &qword_1006AF740, &unk_100552330);
        v319 = 1;
      }

      else
      {
        FMFLocation.locationSource.getter();
        (*(v445 + 8))(v316, v302);
        v319 = 0;
      }

      v320 = v438;
      v321 = *(v438 + 56);
      v322 = v435;
      v321(v303, v319, 1, v435);
      (*(v320 + 104))(v304, enum case for FMFLocationSource.stewie(_:), v322);
      v321(v304, 0, 1, v322);
      v323 = *(v427 + 48);
      v324 = v437;
      sub_100007204(v303, v437, &unk_1006C2460, &unk_100553880);
      sub_100007204(v304, v324 + v323, &unk_1006C2460, &unk_100553880);
      v325 = v304;
      v326 = *(v320 + 48);
      if (v326(v324, 1, v322) == 1)
      {
        sub_100012DF0(v325, &unk_1006C2460, &unk_100553880);
        v327 = v437;
        sub_100012DF0(v303, &unk_1006C2460, &unk_100553880);
        v328 = v326(v327 + v323, 1, v322);
        v329 = v417;
        v330 = v412;
        if (v328 == 1)
        {
          sub_100012DF0(v327, &unk_1006C2460, &unk_100553880);
          v331 = 1;
LABEL_122:
          v185 = v420;
          v333 = v418;
          v334 = v413;
          goto LABEL_124;
        }

LABEL_121:
        sub_100012DF0(v327, &qword_1006B14A8, &qword_10055EDC0);
        v331 = 0;
        goto LABEL_122;
      }

      v332 = v401;
      sub_100007204(v324, v401, &unk_1006C2460, &unk_100553880);
      if (v326(v324 + v323, 1, v322) == 1)
      {
        sub_100012DF0(v436, &unk_1006C2460, &unk_100553880);
        v327 = v437;
        sub_100012DF0(v303, &unk_1006C2460, &unk_100553880);
        (*(v438 + 8))(v332, v322);
        v329 = v417;
        v330 = v412;
        goto LABEL_121;
      }

      v335 = v438;
      v336 = v324 + v323;
      v337 = v403;
      (*(v438 + 32))(v403, v336, v322);
      sub_1003B518C(&qword_1006B14E0, &type metadata accessor for FMFLocationSource, &protocol conformance descriptor for FMFLocationSource);
      v331 = dispatch thunk of static Equatable.== infix(_:_:)();
      v338 = *(v335 + 8);
      v338(v337, v322);
      sub_100012DF0(v436, &unk_1006C2460, &unk_100553880);
      sub_100012DF0(v303, &unk_1006C2460, &unk_100553880);
      v338(v332, v322);
      sub_100012DF0(v324, &unk_1006C2460, &unk_100553880);
      v185 = v420;
      v333 = v418;
      v329 = v417;
      v334 = v413;
      v330 = v412;
LABEL_124:
      v91 = v442;
      v339 = v448;
      *(&v448->_countAndFlagsBits + v442[24]) = v331 & 1;
      v340 = v444;
      *(&v339->_countAndFlagsBits + v91[25]) = FMFFriend.favoriteOrder.getter() != 0x7FFFFFFFFFFFFFFFLL;
      *(&v339->_countAndFlagsBits + v91[28]) = v330;
      sub_1003BA6F4(v340);
      *(&v339->_countAndFlagsBits + v91[29]) = v341 & 1;
      v342 = v91[19];
      LODWORD(v438) = v334 & 1;
      *(&v339->_countAndFlagsBits + v342) = v334 & 1;
      FMFFriend.relationshipType.getter();
      static FMFRelationshipType.willShareLocationWithMe.getter();
      v343 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v344 = v416;
      v416(v333, v185);
      v344(v329, v185);
      *(&v339->_countAndFlagsBits + v91[20]) = v343 & 1;
      FMFFriend.relationshipType.getter();
      static FMFRelationshipType.followsMyLocation.getter();
      v345 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v344(v333, v185);
      v344(v329, v185);
      *(&v339->_countAndFlagsBits + v91[21]) = v345 & 1;
      FMFFriend.relationshipType.getter();
      static FMFRelationshipType.sharesLocationWithMe.getter();
      v346 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v344(v333, v185);
      v344(v329, v185);
      v347 = v340;
      *(&v339->_countAndFlagsBits + v91[22]) = v346 & 1;
      *(&v339->_countAndFlagsBits + v91[30]) = v423 & 1;
      v348 = v424;
      FMFFriend.shareExpires.getter();
      v349 = v440;
      v350 = v441;
      if ((*(v440 + 48))(v348, 1, v441) == 1)
      {
        sub_100012DF0(v348, &unk_1006B0000, &unk_100552AA0);
        v351 = 0;
        v352 = 0;
      }

      else
      {
        v353 = v402;
        (v428)(v402, v348, v350);
        v354 = v349;
        v351 = Date.locationShareRemainingFull.getter();
        v352 = v355;
        (*(v354 + 8))(v353, v350);
      }

      v188 = v445;
      v186 = v446;
      v356 = v422;
      v184 = v447;
      v357 = v448;
      v358 = (&v448->_countAndFlagsBits + v91[18]);
      *v358 = v351;
      v358[1] = v352;
      *(&v357->_countAndFlagsBits + v91[26]) = v434 & 1;
      FMFFriend.location.getter();
      if ((v184)(v356, 1, v186) == 1)
      {
        sub_100012DF0(v356, &qword_1006AF740, &unk_100552330);
      }

      else
      {
        v359 = FMFLocation.location.getter();
        v360 = *(v188 + 1);
        v188 += 8;
        v360(v356, v186);
        if (v359)
        {
          [v359 horizontalAccuracy];
          v362 = v361;

          goto LABEL_132;
        }
      }

      v362 = 0.0;
LABEL_132:
      if ((*&v362 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v362 <= -9.22337204e18)
      {
        goto LABEL_149;
      }

      if (v362 < 9.22337204e18)
      {
        v363 = v430;
        v364 = v429;
        v365 = v431;
        (*(v430 + 104))(v429, enum case for FMFConfigValue.inaccuracyRadiusThreshold(_:), v431);
        v449 = 0x7FFFFFFFFFFFFFFFLL;
        FMFGlobalConfig<A>(_:fallback:)();

        v366 = type metadata accessor for FMFFriend();
        (*(*(v366 - 8) + 8))(v347, v366);
        (*(v363 + 8))(v364, v365);
        v367 = v448;
        *(&v448->_countAndFlagsBits + v91[27]) = v450[0] < v362;
        *(&v367->_countAndFlagsBits + v91[31]) = v438;
        *(&v367->_countAndFlagsBits + v91[32]) = v439 & 1;
        return;
      }

LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      swift_once();
LABEL_91:
      v279 = qword_1006D48A8;
      v280 = [qword_1006D48A8 localizedDistanceFromLocation:v184 toLocation:v188];
      v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v197 = v281;

      if (!v428)
      {

        v192 = v442;
LABEL_137:
        v100 = v446;
        goto LABEL_138;
      }

      v282 = sub_1000FF754(v390);
      v192 = v442;
      if (!v283)
      {

        goto LABEL_137;
      }

      v391 = v188;
      v392 = v283;
      v393 = v282;

      v284 = v387;
      v285 = [objc_allocWithZone(MKDistanceFormatter) init];
      v286 = [v279 measurementSystem];
      if (v286 != 1)
      {
        if (v286 == 2)
        {
          v287 = 1;
        }

        else
        {
          v287 = 2;
        }

        [v285 setUnits:v287];
      }

      v288 = [v285 stringFromDistance:v284];
      v428 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v290 = v289;

      v291 = [objc_opt_self() mainBundle];
      v458._object = 0x800000010057DF30;
      v292._countAndFlagsBits = 0x415045535F415445;
      v292._object = 0xED0000524F544152;
      v458._countAndFlagsBits = 0xD00000000000001FLL;
      v293._countAndFlagsBits = 0;
      v293._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v292, 0, v291, v293, v458);

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v294 = swift_allocObject();
      *(v294 + 16) = xmmword_100552210;
      *(v294 + 56) = &type metadata for String;
      v295 = sub_10008EE84();
      *(v294 + 32) = v428;
      *(v294 + 40) = v290;
      *(v294 + 96) = &type metadata for String;
      *(v294 + 104) = v295;
      v296 = v393;
      *(v294 + 64) = v295;
      *(v294 + 72) = v296;
      *(v294 + 80) = v392;
      v196 = String.init(format:_:)();
      v197 = v297;

      v100 = v446;
      v192 = v442;
LABEL_138:
      v217 = v405;
      v218 = v404;
      v195 = v406;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1003B479C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v2 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v38 - v6;
  v8 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v8 - 8);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v39 = &v38 - v17;
  __chkstk_darwin(v18);
  v45 = &v38 - v19;
  FMFLocationAlert.location.getter();
  v20 = type metadata accessor for FMFLocation();
  v21 = *(v20 - 8);
  v40 = *(v21 + 48);
  if (v40(v7, 1, v20) == 1)
  {
    sub_100012DF0(v7, &qword_1006AF740, &unk_100552330);
  }

  else
  {
    v22 = FMFLocation.location.getter();
    (*(v21 + 8))(v7, v20);
    if (v22)
    {
      v23 = [v22 timestamp];

      v38 = v4;
      v24 = v39;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = *(v14 + 32);
      v26 = v24;
      v4 = v38;
      v25(v12, v26, v13);
      v41 = *(v14 + 56);
      v41(v12, 0, 1, v13);
      v25(v45, v12, v13);
      goto LABEL_7;
    }
  }

  v41 = *(v14 + 56);
  v41(v12, 1, 1, v13);
  static Date.distantPast.getter();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_100012DF0(v12, &unk_1006B0000, &unk_100552AA0);
  }

LABEL_7:
  FMFLocationAlert.location.getter();
  if (v40(v4, 1, v20) == 1)
  {
    sub_100012DF0(v4, &qword_1006AF740, &unk_100552330);
  }

  else
  {
    v27 = FMFLocation.location.getter();
    (*(v21 + 8))(v4, v20);
    if (v27)
    {
      v28 = [v27 timestamp];

      v29 = v39;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = *(v14 + 32);
      v31 = v44;
      v30(v44, v29, v13);
      v41(v31, 0, 1, v13);
      v32 = v43;
      v30(v43, v31, v13);
      goto LABEL_13;
    }
  }

  v33 = v44;
  v41(v44, 1, 1, v13);
  v32 = v43;
  static Date.distantPast.getter();
  if ((*(v14 + 48))(v33, 1, v13) != 1)
  {
    sub_100012DF0(v33, &unk_1006B0000, &unk_100552AA0);
  }

LABEL_13:
  v34 = v45;
  v35 = static Date.< infix(_:_:)();
  v36 = *(v14 + 8);
  v36(v32, v13);
  v36(v34, v13);
  return v35 & 1;
}

void sub_1003B4D20(__int128 *a1)
{
  v2 = v1;
  String.hash(into:)();
  if (*(v1 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 40))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 40))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 64));
  String.hash(into:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 120))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 136))
    {
LABEL_8:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_11;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 136))
    {
      goto LABEL_8;
    }
  }

  Hasher._combine(_:)(0);
LABEL_11:
  v4 = type metadata accessor for FMPersonDetailViewModel(0);
  type metadata accessor for Date();
  sub_1003B518C(&qword_1006B1480, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  sub_1003B8054(a1, *(v1 + v4[16]));
  v5 = *(v1 + v4[17]);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    v6 = v5;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + v4[18] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v4[19]));
  Hasher._combine(_:)(*(v2 + v4[20]));
  Hasher._combine(_:)(*(v2 + v4[21]));
  Hasher._combine(_:)(*(v2 + v4[22]));
  Hasher._combine(_:)(*(v2 + v4[23]));
  Hasher._combine(_:)(*(v2 + v4[24]));
  Hasher._combine(_:)(*(v2 + v4[25]));
  Hasher._combine(_:)(*(v2 + v4[26]));
  Hasher._combine(_:)(*(v2 + v4[27]));
  sub_1003B7ED8(a1, *(v2 + v4[28]));
  Hasher._combine(_:)(*(v2 + v4[29]));
  Hasher._combine(_:)(*(v2 + v4[30]));
  Hasher._combine(_:)(*(v2 + v4[31]));
  Hasher._combine(_:)(*(v2 + v4[32]));
  Hasher._combine(_:)(*(v2 + v4[33]));
  Hasher._combine(_:)(*(v2 + v4[34]));
}

uint64_t sub_1003B504C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_1003B50C0()
{
  Hasher.init(_seed:)();
  sub_1003B4D20(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1003B5104(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1003B4D20(v2);
  return Hasher._finalize()();
}

uint64_t sub_1003B518C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003B51D4(uint64_t a1)
{
  result = sub_1003B518C(&qword_1006BD4B0, type metadata accessor for FMPersonDetailViewModel, &unk_10055ED3C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003B522C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1003B53E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v33 - v9;
  v12 = __chkstk_darwin(v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_1003B518C(&qword_1006B6918, &type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_1003B518C(&qword_1006B7AA8, &type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1003B5794(void *a1)
{
  v2 = *(type metadata accessor for FMFLocationAlert() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F3CC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1003B583C(v5);
  *a1 = v3;
}

void sub_1003B583C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMFLocationAlert();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMFLocationAlert() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003B61D0(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1003B5968(0, v2, 1, a1);
  }
}

void sub_1003B5968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v8 - 8);
  v91 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v67[-v11];
  v13 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v13 - 8);
  v92 = &v67[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v90 = &v67[-v16];
  v89 = type metadata accessor for Date();
  v17 = *(v89 - 8);
  __chkstk_darwin(v89);
  v19 = &v67[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v77 = &v67[-v21];
  __chkstk_darwin(v22);
  v98 = &v67[-v23];
  v24 = type metadata accessor for FMFLocationAlert();
  __chkstk_darwin(v24);
  v81 = &v67[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v99 = &v67[-v27];
  v30 = __chkstk_darwin(v28);
  v97 = &v67[-v31];
  v69 = a2;
  if (a3 != a2)
  {
    v32 = *a4;
    v34 = *(v29 + 16);
    v33 = v29 + 16;
    v84 = v34;
    v35 = *(v33 + 56);
    v76 = (v17 + 32);
    v96 = (v17 + 56);
    v93 = (v17 + 48);
    v82 = (v33 - 8);
    v83 = (v17 + 8);
    v85 = v33;
    v36 = v32 + v35 * (a3 - 1);
    v78 = -v35;
    v79 = (v33 + 16);
    v37 = a1 - a3;
    v80 = v32;
    v68 = v35;
    v38 = v32 + v35 * a3;
    v87 = v19;
    v88 = v12;
    v86 = v24;
LABEL_5:
    v73 = a3;
    v70 = v38;
    v71 = v37;
    v72 = v36;
    while (1)
    {
      v95 = v37;
      v39 = v84;
      (v84)(v97, v38, v24, v30);
      v39(v99, v36, v24);
      FMFLocationAlert.location.getter();
      v40 = type metadata accessor for FMFLocation();
      v41 = *(v40 - 8);
      v42 = *(v41 + 48);
      if (v42(v12, 1, v40) == 1)
      {
        sub_100012DF0(v12, &qword_1006AF740, &unk_100552330);
      }

      else
      {
        v43 = FMFLocation.location.getter();
        (*(v41 + 8))(v12, v40);
        if (v43)
        {
          v44 = [v43 timestamp];

          v45 = v77;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v74 = v41;
          v46 = *v76;
          v75 = v42;
          v48 = v89;
          v47 = v90;
          v46(v90, v45, v89);
          v94 = *v96;
          v94(v47, 0, 1, v48);
          v49 = v47;
          v42 = v75;
          v46(v98, v49, v48);
          v41 = v74;
          goto LABEL_12;
        }
      }

      v48 = v89;
      v50 = v90;
      v94 = *v96;
      v94(v90, 1, 1, v89);
      static Date.distantPast.getter();
      if ((*v93)(v50, 1, v48) != 1)
      {
        sub_100012DF0(v50, &unk_1006B0000, &unk_100552AA0);
      }

LABEL_12:
      v51 = v91;
      FMFLocationAlert.location.getter();
      if (v42(v51, 1, v40) == 1)
      {
        sub_100012DF0(v51, &qword_1006AF740, &unk_100552330);
        v52 = v87;
      }

      else
      {
        v53 = FMFLocation.location.getter();
        (*(v41 + 8))(v51, v40);
        v52 = v87;
        if (v53)
        {
          v54 = [v53 timestamp];

          v55 = v77;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v56 = *v76;
          v57 = v92;
          (*v76)(v92, v55, v48);
          v94(v57, 0, 1, v48);
          v56(v52, v57, v48);
          goto LABEL_18;
        }
      }

      v58 = v92;
      v94(v92, 1, 1, v48);
      static Date.distantPast.getter();
      if ((*v93)(v58, 1, v48) != 1)
      {
        sub_100012DF0(v92, &unk_1006B0000, &unk_100552AA0);
      }

LABEL_18:
      v59 = v98;
      v60 = static Date.< infix(_:_:)();
      v61 = *v83;
      (*v83)(v52, v48);
      v61(v59, v48);
      v62 = *v82;
      v24 = v86;
      (*v82)(v99, v86);
      v62(v97, v24);
      v12 = v88;
      v63 = v95;
      if ((v60 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v80)
      {
        __break(1u);
        return;
      }

      v64 = *v79;
      v65 = v81;
      (*v79)(v81, v38, v24);
      swift_arrayInitWithTakeFrontToBack();
      v64(v36, v65, v24);
      v36 += v78;
      v38 += v78;
      v66 = __CFADD__(v63, 1);
      v37 = v63 + 1;
      if (v66)
      {
LABEL_4:
        a3 = v73 + 1;
        v36 = v72 + v68;
        v37 = v71 - 1;
        v38 = v70 + v68;
        if (v73 + 1 == v69)
        {
          return;
        }

        goto LABEL_5;
      }
    }
  }
}

void sub_1003B61D0(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v200 = a1;
  v8 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v8 - 8);
  v10 = &v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v233 = &v197 - v12;
  __chkstk_darwin(v13);
  v212 = &v197 - v14;
  __chkstk_darwin(v15);
  v17 = &v197 - v16;
  v18 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v18 - 8);
  v240 = &v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v232 = &v197 - v21;
  __chkstk_darwin(v22);
  v216 = &v197 - v23;
  __chkstk_darwin(v24);
  v211 = &v197 - v25;
  v238 = type metadata accessor for Date();
  v26 = *(v238 - 8);
  __chkstk_darwin(v238);
  v231 = &v197 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v245 = &v197 - v29;
  __chkstk_darwin(v30);
  v210 = &v197 - v31;
  __chkstk_darwin(v32);
  v225 = &v197 - v33;
  __chkstk_darwin(v34);
  v220 = &v197 - v35;
  v36 = type metadata accessor for FMFLocationAlert();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v205 = &v197 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v228 = &v197 - v40;
  __chkstk_darwin(v41);
  v247 = &v197 - v42;
  __chkstk_darwin(v43);
  v244 = &v197 - v44;
  __chkstk_darwin(v45);
  v217 = &v197 - v46;
  __chkstk_darwin(v47);
  v219 = &v197 - v48;
  __chkstk_darwin(v49);
  v198 = &v197 - v50;
  v54 = __chkstk_darwin(v51);
  v218 = a3;
  v55 = *(a3 + 8);
  v214 = v37;
  if (v55 < 1)
  {
    v57 = _swiftEmptyArrayStorage;
LABEL_120:
    a3 = *v200;
    if (!*v200)
    {
      goto LABEL_160;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_154:
      v57 = sub_10025EFD4(v57);
    }

    v248 = v57;
    v192 = *(v57 + 2);
    if (v192 >= 2)
    {
      while (*v218)
      {
        v193 = *&v57[16 * v192];
        v194 = *&v57[16 * v192 + 24];
        sub_1003B783C(&(*v218)[*(v214 + 72) * v193], &(*v218)[*(v214 + 72) * *&v57[16 * v192 + 16]], &(*v218)[*(v214 + 72) * v194], a3);
        if (v5)
        {
          goto LABEL_132;
        }

        if (v194 < v193)
        {
          goto LABEL_147;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_10025EFD4(v57);
        }

        if (v192 - 2 >= *(v57 + 2))
        {
          goto LABEL_148;
        }

        v195 = &v57[16 * v192];
        *v195 = v193;
        *(v195 + 1) = v194;
        v248 = v57;
        sub_10025EF48(v192 - 1);
        v57 = v248;
        v192 = *(v248 + 2);
        if (v192 <= 1)
        {
          goto LABEL_132;
        }
      }

      goto LABEL_158;
    }

LABEL_132:

    return;
  }

  v201 = &v197 - v53;
  v239 = v52;
  v56 = 0;
  v236 = v37 + 16;
  v237 = (v37 + 8);
  v224 = (v26 + 32);
  v246 = (v26 + 56);
  v241 = (v26 + 48);
  v235 = (v26 + 8);
  v57 = _swiftEmptyArrayStorage;
  v234 = (v37 + 32);
  v199 = a4;
  v230 = v10;
  v213 = v17;
  while (1)
  {
    v58 = v56;
    v215 = v57;
    if (v56 + 1 >= v55)
    {
      v101 = v56 + 1;
      goto LABEL_37;
    }

    v221 = v55;
    v59 = *v218;
    v60 = *(v37 + 72);
    v61 = &(*v218)[v60 * (v56 + 1)];
    v62 = *(v37 + 16);
    v202 = v56;
    v243 = v61;
    v63 = v239;
    v62(v201, v54);
    v242 = v59;
    v226 = v60;
    v64 = &v59[v60 * v202];
    v65 = v202;
    v66 = v198;
    v222 = v62;
    (v62)(v198, v64, v63);
    LODWORD(v223) = sub_1003B479C(v201, v66);
    if (v5)
    {
      v196 = *v237;
      (*v237)(v66, v63);
      v196(v201, v63);
      goto LABEL_132;
    }

    v203 = 0;
    a3 = *v237;
    (*v237)(v66, v63);
    v209 = a3;
    (a3)(v201, v63);
    v67 = (v65 + 2);
    v68 = v243;
    v69 = v226;
    v70 = &v242[v226 * v67];
    v71 = v217;
    while (1)
    {
      v101 = v221;
      if (v221 == v67)
      {
        break;
      }

      v242 = v67;
      v84 = v239;
      v85 = v222;
      (v222)(v219, v70, v239);
      v85(v71, v68, v84);
      FMFLocationAlert.location.getter();
      v86 = type metadata accessor for FMFLocation();
      v87 = *(v86 - 8);
      v88 = *(v87 + 48);
      v89 = v88(v17, 1, v86);
      v243 = v68;
      v227 = v88;
      if (v89 == 1)
      {
        sub_100012DF0(v17, &qword_1006AF740, &unk_100552330);
      }

      else
      {
        v90 = FMFLocation.location.getter();
        (*(v87 + 8))(v17, v86);
        if (v90)
        {
          v91 = [v90 timestamp];

          v92 = v225;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v93 = *v224;
          v94 = v211;
          v95 = v238;
          (*v224)(v211, v92, v238);
          v229 = *v246;
          (v229)(v94, 0, 1, v95);
          v93(v220, v94, v95);
          goto LABEL_18;
        }
      }

      v96 = v211;
      v97 = v238;
      v229 = *v246;
      (v229)(v211, 1, 1, v238);
      static Date.distantPast.getter();
      if ((*v241)(v96, 1, v97) != 1)
      {
        sub_100012DF0(v96, &unk_1006B0000, &unk_100552AA0);
      }

LABEL_18:
      v98 = v212;
      v99 = v210;
      FMFLocationAlert.location.getter();
      if (v227(v98, 1, v86) == 1)
      {
        sub_100012DF0(v98, &qword_1006AF740, &unk_100552330);
        v57 = v215;
        v69 = v226;
        v73 = v229;
LABEL_20:
        v100 = v216;
        v79 = v238;
        v73(v216, 1, 1, v238);
        static Date.distantPast.getter();
        if ((*v241)(v100, 1, v79) != 1)
        {
          sub_100012DF0(v216, &unk_1006B0000, &unk_100552AA0);
        }

        goto LABEL_10;
      }

      v72 = FMFLocation.location.getter();
      (*(v87 + 8))(v98, v86);
      v57 = v215;
      v69 = v226;
      v73 = v229;
      if (!v72)
      {
        goto LABEL_20;
      }

      v74 = [v72 timestamp];

      v75 = v225;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v76 = *v224;
      v77 = v216;
      v78 = v75;
      v79 = v238;
      (*v224)(v216, v78, v238);
      v73(v77, 0, 1, v79);
      v76(v99, v77, v79);
LABEL_10:
      v80 = v220;
      v81 = static Date.< infix(_:_:)();
      v82 = *v235;
      (*v235)(v99, v79);
      v82(v80, v79);
      v71 = v217;
      a3 = v239;
      v83 = v209;
      (v209)(v217, v239);
      v83(v219, a3);
      v67 = v242 + 1;
      v70 += v69;
      v68 = &v243[v69];
      v37 = v214;
      v17 = v213;
      if ((v223 ^ v81))
      {
        v101 = v242;
        break;
      }
    }

    v5 = v203;
    a4 = v199;
    v58 = v202;
    if ((v223 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (v101 < v202)
    {
      goto LABEL_153;
    }

    if (v202 < v101)
    {
      v102 = v101;
      a3 = v69 * (v101 - 1);
      v103 = v101 * v69;
      v221 = v101;
      v104 = v202 * v69;
      do
      {
        if (v58 != --v102)
        {
          v106 = *v218;
          if (!*v218)
          {
            goto LABEL_157;
          }

          v107 = *v234;
          (*v234)(v205, &v106[v104], v239);
          if (v104 < a3 || &v106[v104] >= &v106[v103])
          {
            v105 = v239;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v105 = v239;
            if (v104 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v107(&v106[a3], v205, v105);
          v5 = v203;
          v57 = v215;
          v69 = v226;
        }

        ++v58;
        a3 -= v69;
        v103 -= v69;
        v104 += v69;
      }

      while (v58 < v102);
      a4 = v199;
      v37 = v214;
      v17 = v213;
      v101 = v221;
      v58 = v202;
    }

LABEL_37:
    v108 = v218[1];
    if (v101 >= v108)
    {
      goto LABEL_46;
    }

    if (__OFSUB__(v101, v58))
    {
      goto LABEL_150;
    }

    if (v101 - v58 >= a4)
    {
LABEL_46:
      v110 = v101;
      if (v101 < v58)
      {
        goto LABEL_149;
      }

      goto LABEL_47;
    }

    if (__OFADD__(v58, a4))
    {
      goto LABEL_151;
    }

    if (v58 + a4 >= v108)
    {
      v109 = v218[1];
    }

    else
    {
      v109 = v58 + a4;
    }

    if (v109 < v58)
    {
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    if (v101 == v109)
    {
      goto LABEL_46;
    }

    v203 = v5;
    v156 = *v218;
    v157 = *(v37 + 72);
    v229 = *(v37 + 16);
    v158 = &v156[v157 * (v101 - 1)];
    v226 = -v157;
    v202 = v58;
    v159 = (v58 - v101);
    v227 = v156;
    v204 = v157;
    v160 = &v156[v101 * v157];
    v161 = v233;
    v162 = v238;
    v163 = v239;
    v206 = v109;
LABEL_99:
    v221 = v101;
    v207 = v160;
    v208 = v159;
    v164 = v159;
    v209 = v158;
    v165 = v158;
LABEL_100:
    v242 = v164;
    v166 = v229;
    (v229)(v244, v160, v163, v54);
    v166(v247, v165, v163);
    FMFLocationAlert.location.getter();
    v167 = type metadata accessor for FMFLocation();
    v168 = *(v167 - 8);
    v169 = *(v168 + 6);
    if (v169(v161, 1, v167) == 1)
    {
      sub_100012DF0(v161, &qword_1006AF740, &unk_100552330);
LABEL_104:
      v177 = v232;
      v243 = *v246;
      (v243)(v232, 1, 1, v162);
      static Date.distantPast.getter();
      if ((*v241)(v177, 1, v162) != 1)
      {
        sub_100012DF0(v177, &unk_1006B0000, &unk_100552AA0);
      }
    }

    else
    {
      v170 = FMFLocation.location.getter();
      (*(v168 + 1))(v161, v167);
      if (!v170)
      {
        goto LABEL_104;
      }

      v171 = [v170 timestamp];

      v223 = v169;
      v172 = v225;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v222 = v168;
      v173 = *v224;
      v174 = v162;
      v175 = v232;
      v176 = v172;
      v169 = v223;
      (*v224)(v232, v176, v174);
      v243 = *v246;
      (v243)(v175, 0, 1, v174);
      v173(v245, v175, v174);
      v168 = v222;
    }

    v178 = v230;
    FMFLocationAlert.location.getter();
    if (v169(v178, 1, v167) == 1)
    {
      sub_100012DF0(v178, &qword_1006AF740, &unk_100552330);
      v163 = v239;
LABEL_110:
      v185 = v240;
      v162 = v238;
      (v243)(v240, 1, 1, v238);
      v184 = v231;
      static Date.distantPast.getter();
      if ((*v241)(v185, 1, v162) != 1)
      {
        sub_100012DF0(v240, &unk_1006B0000, &unk_100552AA0);
      }
    }

    else
    {
      v179 = FMFLocation.location.getter();
      (*(v168 + 1))(v178, v167);
      v163 = v239;
      if (!v179)
      {
        goto LABEL_110;
      }

      v180 = [v179 timestamp];

      v181 = v225;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v182 = *v224;
      v183 = v240;
      v162 = v238;
      (*v224)(v240, v181, v238);
      (v243)(v183, 0, 1, v162);
      v184 = v231;
      v182(v231, v183, v162);
    }

    v186 = v245;
    v187 = static Date.< infix(_:_:)();
    v188 = *v235;
    (*v235)(v184, v162);
    v188(v186, v162);
    a3 = *v237;
    (*v237)(v247, v163);
    (a3)(v244, v163);
    if (v187)
    {
      break;
    }

    v161 = v233;
LABEL_98:
    v101 = v221 + 1;
    v158 = &v209[v204];
    v159 = v208 - 1;
    v160 = &v207[v204];
    v110 = v206;
    if (v221 + 1 != v206)
    {
      goto LABEL_99;
    }

    v5 = v203;
    v37 = v214;
    v17 = v213;
    v57 = v215;
    v58 = v202;
    if (v206 < v202)
    {
      goto LABEL_149;
    }

LABEL_47:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_10008B8B8(0, *(v57 + 2) + 1, 1, v57);
    }

    a3 = *(v57 + 2);
    v111 = *(v57 + 3);
    v112 = a3 + 1;
    if (a3 >= v111 >> 1)
    {
      v57 = sub_10008B8B8((v111 > 1), a3 + 1, 1, v57);
    }

    *(v57 + 2) = v112;
    v113 = &v57[16 * a3];
    *(v113 + 4) = v58;
    *(v113 + 5) = v110;
    v114 = *v200;
    if (!*v200)
    {
      goto LABEL_159;
    }

    v206 = v110;
    if (a3)
    {
      while (2)
      {
        v115 = v112 - 1;
        if (v112 >= 4)
        {
          v120 = &v57[16 * v112 + 32];
          v121 = *(v120 - 64);
          v122 = *(v120 - 56);
          v126 = __OFSUB__(v122, v121);
          v123 = v122 - v121;
          if (v126)
          {
            goto LABEL_136;
          }

          v125 = *(v120 - 48);
          v124 = *(v120 - 40);
          v126 = __OFSUB__(v124, v125);
          v118 = v124 - v125;
          v119 = v126;
          if (v126)
          {
            goto LABEL_137;
          }

          v127 = &v57[16 * v112];
          v129 = *v127;
          v128 = *(v127 + 1);
          v126 = __OFSUB__(v128, v129);
          v130 = v128 - v129;
          if (v126)
          {
            goto LABEL_139;
          }

          v126 = __OFADD__(v118, v130);
          v131 = v118 + v130;
          if (v126)
          {
            goto LABEL_142;
          }

          if (v131 >= v123)
          {
            v149 = &v57[16 * v115 + 32];
            v151 = *v149;
            v150 = *(v149 + 1);
            v126 = __OFSUB__(v150, v151);
            v152 = v150 - v151;
            if (v126)
            {
              goto LABEL_146;
            }

            if (v118 < v152)
            {
              v115 = v112 - 2;
            }
          }

          else
          {
LABEL_66:
            if (v119)
            {
              goto LABEL_138;
            }

            v132 = &v57[16 * v112];
            v134 = *v132;
            v133 = *(v132 + 1);
            v135 = __OFSUB__(v133, v134);
            v136 = v133 - v134;
            v137 = v135;
            if (v135)
            {
              goto LABEL_141;
            }

            v138 = &v57[16 * v115 + 32];
            v140 = *v138;
            v139 = *(v138 + 1);
            v126 = __OFSUB__(v139, v140);
            v141 = v139 - v140;
            if (v126)
            {
              goto LABEL_144;
            }

            if (__OFADD__(v136, v141))
            {
              goto LABEL_145;
            }

            if (v136 + v141 < v118)
            {
              goto LABEL_80;
            }

            if (v118 < v141)
            {
              v115 = v112 - 2;
            }
          }
        }

        else
        {
          if (v112 == 3)
          {
            v116 = *(v57 + 4);
            v117 = *(v57 + 5);
            v126 = __OFSUB__(v117, v116);
            v118 = v117 - v116;
            v119 = v126;
            goto LABEL_66;
          }

          v142 = &v57[16 * v112];
          v144 = *v142;
          v143 = *(v142 + 1);
          v126 = __OFSUB__(v143, v144);
          v136 = v143 - v144;
          v137 = v126;
LABEL_80:
          if (v137)
          {
            goto LABEL_140;
          }

          v145 = &v57[16 * v115];
          v147 = *(v145 + 4);
          v146 = *(v145 + 5);
          v126 = __OFSUB__(v146, v147);
          v148 = v146 - v147;
          if (v126)
          {
            goto LABEL_143;
          }

          if (v148 < v136)
          {
            break;
          }
        }

        a3 = v115 - 1;
        if (v115 - 1 >= v112)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*v218)
        {
          goto LABEL_156;
        }

        v153 = *&v57[16 * a3 + 32];
        v154 = *&v57[16 * v115 + 40];
        sub_1003B783C(&(*v218)[*(v37 + 72) * v153], &(*v218)[*(v37 + 72) * *&v57[16 * v115 + 32]], &(*v218)[*(v37 + 72) * v154], v114);
        if (v5)
        {
          goto LABEL_132;
        }

        if (v154 < v153)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_10025EFD4(v57);
        }

        if (a3 >= *(v57 + 2))
        {
          goto LABEL_135;
        }

        v155 = &v57[16 * a3];
        *(v155 + 4) = v153;
        *(v155 + 5) = v154;
        v248 = v57;
        sub_10025EF48(v115);
        v57 = v248;
        v112 = *(v248 + 2);
        if (v112 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v55 = v218[1];
    v56 = v206;
    a4 = v199;
    if (v206 >= v55)
    {
      goto LABEL_120;
    }
  }

  v189 = v242;
  if (v227)
  {
    a3 = *v234;
    v190 = v228;
    (*v234)(v228, v160, v163);
    swift_arrayInitWithTakeFrontToBack();
    (a3)(v165, v190, v163);
    v165 += v226;
    v160 += v226;
    v191 = __CFADD__(v189, 1);
    v164 = v189 + 1;
    v161 = v233;
    if (v191)
    {
      goto LABEL_98;
    }

    goto LABEL_100;
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}