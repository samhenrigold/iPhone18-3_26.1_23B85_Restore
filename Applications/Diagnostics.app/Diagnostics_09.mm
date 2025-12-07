void sub_100101D4C()
{
  v1 = [v0 contentView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView]];
}

void sub_100101DB0()
{
  v1 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  [*&v0[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView] setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED90;
  v3 = [*&v0[v1] topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 safeAreaLayoutGuide];

  v6 = [v5 topAnchor];
  v7 = [v3 constraintEqualToAnchor:v6];

  *(v2 + 32) = v7;
  v8 = [*&v0[v1] bottomAnchor];
  v9 = [v0 contentView];
  v10 = [v9 safeAreaLayoutGuide];

  v11 = [v10 bottomAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];

  *(v2 + 40) = v12;
  v13 = sub_10014FCF8(&off_1001BDBA8);
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  LOBYTE(v14) = sub_1000743A4(v15, v13);
  v13, v16, v17, v18, v19, v20, v21, v22;
  if (v14)
  {
    v23 = sub_100102050(v0);
  }

  else
  {
    v23 = sub_1001021C8(v0);
  }

  v24 = v23;
  v25 = objc_opt_self();
  sub_100074470(v24);
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2, v26, v27, v28, v29, v30, v31, v32;
  [v25 activateConstraints:isa];
}

id sub_100102050(char *a1)
{
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED90;
  v3 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  v4 = [*&a1[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView] widthAnchor];
  v5 = [a1 contentView];
  v6 = [v5 widthAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 multiplier:0.666666667];
  *(v2 + 32) = v7;
  v8 = [*&a1[v3] centerXAnchor];
  result = [a1 view];
  if (result)
  {
    v10 = result;
    v11 = [result centerXAnchor];

    v12 = [v8 constraintEqualToAnchor:v11];
    *(v2 + 40) = v12;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001021C8(char *a1)
{
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED90;
  v3 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  v4 = [*&a1[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView] leadingAnchor];
  v5 = [a1 contentView];
  v6 = [v5 safeAreaLayoutGuide];

  v7 = [v6 leadingAnchor];
  v8 = [v4 constraintEqualToAnchor:v7 constant:18.0];

  *(v2 + 32) = v8;
  v9 = [*&a1[v3] trailingAnchor];
  v10 = [a1 contentView];
  v11 = [v10 safeAreaLayoutGuide];

  v12 = [v11 trailingAnchor];
  v13 = [v9 constraintEqualToAnchor:v12 constant:-18.0];

  *(v2 + 40) = v13;
  return v2;
}

id sub_100102894(uint64_t a1, DARootViewController *a2, uint64_t a3, DARootViewController *a4, uint64_t a5, DARootViewController *a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableViewPadding] = 0x4032000000000000;
  *&v7[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_cellHeight] = 0x404E000000000000;
  *&v7[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_fontSizeTableCell] = 0x4031000000000000;
  *&v7[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_fontSizeTableCellDetail] = 0x402A000000000000;
  v12 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  *&v7[v12] = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v13 = String._bridgeToObjectiveC()();
  a2, v14, v15, v16, v17, v18, v19, v20;
  if (!a4)
  {
    v21 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v29 = 0;
    goto LABEL_6;
  }

  v21 = String._bridgeToObjectiveC()();
  a4, v22, v23, v24, v25, v26, v27, v28;
  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v29 = String._bridgeToObjectiveC()();
  a6, v30, v31, v32, v33, v34, v35, v36;
LABEL_6:
  v39.receiver = v7;
  v39.super_class = type metadata accessor for ConsentNoticeTableViewController();
  v37 = objc_msgSendSuper2(&v39, "initWithTitle:detailText:symbolName:contentLayout:", v13, v21, v29, a7);

  return v37;
}

id sub_100102AB0(uint64_t a1, DARootViewController *a2, uint64_t a3, DARootViewController *a4, void *a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableViewPadding] = 0x4032000000000000;
  *&v6[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_cellHeight] = 0x404E000000000000;
  *&v6[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_fontSizeTableCell] = 0x4031000000000000;
  *&v6[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_fontSizeTableCellDetail] = 0x402A000000000000;
  v11 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  *&v6[v11] = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v12 = String._bridgeToObjectiveC()();
  a2, v13, v14, v15, v16, v17, v18, v19;
  if (a4)
  {
    v20 = String._bridgeToObjectiveC()();
    a4, v21, v22, v23, v24, v25, v26, v27;
  }

  else
  {
    v20 = 0;
  }

  v30.receiver = v6;
  v30.super_class = type metadata accessor for ConsentNoticeTableViewController();
  v28 = objc_msgSendSuper2(&v30, "initWithTitle:detailText:icon:contentLayout:", v12, v20, a5, a6);

  return v28;
}

id sub_100102C98(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ConsentNoticeTableViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100102D00()
{
  v0 = objc_allocWithZone(UITableViewCell);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithStyle:3 reuseIdentifier:v1];

  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemGroupedBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = objc_opt_self();
  v7 = [v6 defaultMetrics];
  v8 = objc_opt_self();
  v9 = [v8 systemFontOfSize:17.0 weight:UIFontWeightBold];
  v10 = [v7 scaledFontForFont:v9];

  v11 = [v4 textLabel];
  if (v11)
  {
    v12 = v11;
    [v11 setFont:v10];
  }

  v13 = [v6 defaultMetrics];
  v14 = [v8 systemFontOfSize:13.0];
  v15 = [v13 scaledFontForFont:v14];

  v16 = [v4 detailTextLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setFont:v15];
  }

  v18 = [v4 detailTextLabel];
  if (v18)
  {
    v19 = v18;
    v20 = [v3 secondaryLabelColor];
    [v19 setTextColor:v20];
  }

  return v4;
}

void sub_100102FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_100064AFC(a1, a2);
    if ((v10 & 1) == 0)
    {
      v8, v10, v11, v12, v13, v14, v15, v16;
      return;
    }

    v17 = *(*(v8 + 56) + 8 * v9);
    swift_unknownObjectRetain();
    v8, v18, v19, v20, v21, v22, v23, v24;
    v25 = [v17 state];
    v26 = [v25 phase];

    if (!v26 || (v27 = [v17 state], v28 = objc_msgSend(v27, "phase"), v27, v28 == 1))
    {
      v29 = [v17 state];
      v30 = [v29 phase];

      if (v30 == 1)
      {
        sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
        v31 = static OS_os_log.default.getter();
        v32 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Resetting device state...", 25, 2, &_mh_execute_header, v31, v32, &_swiftEmptyArrayStorage);

        v33 = [v17 state];
        [v33 resetState];
      }

      v34 = [v17 state];
      [v34 setPhase:2];

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRetain();
        sub_1000E78B0(0, 0, a3, v17);
        swift_unknownObjectRelease_n();
        return;
      }

      if (a3)
      {
        if ([v17 respondsToSelector:"startInOperationMode:"])
        {
          [v17 startInOperationMode:a3];
        }
      }

      else
      {
        [v17 start];
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10010321C()
{
  v1 = *v0;

  return v1;
}

NSString sub_100103258()
{
  result = String._bridgeToObjectiveC()();
  qword_10020A578 = result;
  return result;
}

NSString sub_100103290()
{
  result = String._bridgeToObjectiveC()();
  qword_10020A580 = result;
  return result;
}

void sub_1001032C8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devices;
  v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics13DeviceManager_devices);
  if (a1[2] <= v5[2] >> 3)
  {
    *&v109 = v5;

    sub_100106A4C(a1);
    v6 = v5;
  }

  else
  {

    v6 = sub_100105FC0(a1, v5);
  }

  v7 = *(v2 + v4);
  if (*&v7->hostAppBundleIdentifier[8] <= a1[2] >> 3)
  {
    *&v109 = a1;

    sub_100106A4C(v7);
    v7, v15, v16, v17, v18, v19, v20, v21;
    v100 = a1;
  }

  else
  {

    v100 = sub_100105FC0(v7, a1);
    v7, v8, v9, v10, v11, v12, v13, v14;
  }

  v22 = 0;
  v23 = v6 + 7;
  v24 = 1 << *(v6 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v6[7];
  v107 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
  v27 = (v24 + 63) >> 6;
  v98 = v27;
  v99 = v2;
  v101 = v6;
  while (v26)
  {
LABEL_15:
    v29 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    sub_1000681EC(v6[6] + 40 * (v29 | (v22 << 6)), &v109);
    sub_10003C49C(&qword_100201820, &unk_100184668);
    if (swift_dynamicCast())
    {
      v30 = v108;
      v31 = swift_dynamicCastObjCProtocolConditional();
      if (!v31)
      {
        goto LABEL_27;
      }

      v32 = v31;
      swift_unknownObjectRetain();
      if ([v32 delegate])
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_27;
      }

      v33 = [objc_opt_self() sharedApplication];
      v34 = [v33 delegate];

      if (!v34)
      {
        goto LABEL_26;
      }

      type metadata accessor for AppDelegate();
      v35 = swift_dynamicCastClass();
      if (!v35)
      {
        swift_unknownObjectRelease();
LABEL_26:
        swift_unknownObjectRelease();
        v2 = v99;
        goto LABEL_27;
      }

      v36 = v35;
      if (qword_1001FC6D8 != -1)
      {
        swift_once();
      }

      v37 = qword_10020A390;
      [v32 setViewControllerDelegate:{qword_10020A390, v98}];
      [v32 setStatusBarResponder:v37];
      v38 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_rootViewController;
      [v32 setBrightnessResponder:*(v36 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_rootViewController)];
      [v32 setVolumeHUDResponder:*(v36 + v38)];
      [v32 setUserAlertResponder:*(v36 + v38)];
      v2 = v99;
      [v32 setDelegate:v99];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_27:
      ObjectType = swift_getObjectType();
      v39 = [v108 state];
      v40 = v2;
      v41 = [v39 serialNumber];

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = *(v40 + v107);
      *(v40 + v107) = 0x8000000000000000;
      sub_100142710(v30, v42, v44, isUniquelyReferenced_nonNull_native);
      v44, v46, v47, v48, v49, v50, v51, v52;
      *(v40 + v107) = v108;
      swift_endAccess();
      v53 = [objc_opt_self() defaultCenter];
      if (qword_1001FC810 != -1)
      {
        swift_once();
      }

      v103 = qword_10020A578;
      sub_10003C49C(&qword_1002018D0, &qword_100180840);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10017EC10;
      AnyHashable.init<A>(_:)();
      v55 = [v30 state];
      *(inited + 96) = sub_10003E110(0, &qword_1001FF0E0, off_1001BA118);
      *(inited + 72) = v55;
      AnyHashable.init<A>(_:)();
      *(inited + 168) = ObjectType;
      *(inited + 144) = v30;
      swift_unknownObjectRetain();
      v56 = sub_1000D57AC(inited);
      swift_setDeallocating();
      sub_10003C49C(&qword_1001FE6C0, &unk_100180660);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v56, v58, v59, v60, v61, v62, v63, v64;
      [v53 postNotificationName:v103 object:v40 userInfo:isa];

      [v30 connect];
      swift_unknownObjectRelease();
      v2 = v40;
      v6 = v101;
      v27 = v98;
    }
  }

  while (1)
  {
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v28 >= v27)
    {
      break;
    }

    v26 = v23[v28];
    ++v22;
    if (v26)
    {
      v22 = v28;
      goto LABEL_15;
    }
  }

  v65 = 0;
  v66 = v100;
  v67 = 1 << *(v100 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & v100[7];
  v70 = (v67 + 63) >> 6;
  while (v69)
  {
LABEL_38:
    v72 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    sub_1000681EC(v66[6] + 40 * (v72 | (v65 << 6)), &v109);
    sub_10003C49C(&qword_100201820, &unk_100184668);
    if (swift_dynamicCast())
    {
      v106 = swift_getObjectType();
      v73 = [v108 state];
      v74 = [v73 phase];

      if ((v74 - 2) <= 2)
      {
        [v108 end];
      }

      v75 = [v108 state];
      v76 = [v75 serialNumber];

      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      swift_beginAccess();
      sub_100155C78(v77, v79);
      swift_endAccess();
      v79, v80, v81, v82, v83, v84, v85, v86;
      swift_unknownObjectRelease();
      v104 = [objc_opt_self() defaultCenter];
      if (qword_1001FC818 != -1)
      {
        swift_once();
      }

      v102 = qword_10020A580;
      sub_10003C49C(&qword_1002018D0, &qword_100180840);
      v87 = swift_initStackObject();
      *(v87 + 16) = xmmword_10017EC10;
      AnyHashable.init<A>(_:)();
      v88 = [v108 state];
      *(v87 + 96) = sub_10003E110(0, &qword_1001FF0E0, off_1001BA118);
      *(v87 + 72) = v88;
      AnyHashable.init<A>(_:)();
      *(v87 + 168) = v106;
      *(v87 + 144) = v108;
      swift_unknownObjectRetain();
      v89 = sub_1000D57AC(v87);
      swift_setDeallocating();
      sub_10003C49C(&qword_1001FE6C0, &unk_100180660);
      swift_arrayDestroy();
      v90 = Dictionary._bridgeToObjectiveC()().super.isa;
      v89, v91, v92, v93, v94, v95, v96, v97;
      [v104 postNotificationName:v102 object:v99 userInfo:v90];
      swift_unknownObjectRelease();

      v66 = v100;
    }
  }

  while (1)
  {
    v71 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v71 >= v70)
    {

      return;
    }

    v69 = v100[v71 + 7];
    ++v65;
    if (v69)
    {
      v65 = v71;
      goto LABEL_38;
    }
  }

LABEL_46:
  __break(1u);
}

double sub_100103D48()
{
  v1 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_activeDevicesBySerialNumber;
  swift_beginAccess();
  v2 = 0;
  v3 = *(v0 + v1);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  do
  {
    if (!v6)
    {
      do
      {
        v8 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_19;
        }

        if (v8 >= v7)
        {
          sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
          v17 = static OS_os_log.default.getter();
          v18 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("No devices active which require a prevent idle task assertion.", 62, 2, &_mh_execute_header, v17, v18, &_swiftEmptyArrayStorage);

          if (qword_1001FC6B8 != -1)
          {
            goto LABEL_20;
          }

          goto LABEL_14;
        }

        v6 = *(v3 + 64 + 8 * v8);
        ++v2;
      }

      while (!v6);
      v2 = v8;
    }

    v6 &= v6 - 1;
    type metadata accessor for DeviceEnhancedLogging();
  }

  while (swift_dynamicCastClass());
  sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);

  swift_unknownObjectRetain();
  v9 = static OS_os_log.default.getter();
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Active devices need a prevent idle task assertion.", 50, 2, &_mh_execute_header, v9, v10, &_swiftEmptyArrayStorage);

  if (qword_1001FC6B8 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v11 = qword_10020A368;
    v12 = getpid();
    v13 = [objc_opt_self() mainBundle];
    v14 = [v13 bundleIdentifier];

    if (v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v26 = *&v11[OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendQueue];
    v27 = swift_allocObject();
    *(v27 + 16) = v11;
    *(v27 + 24) = v12;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_10010755C;
    *(v28 + 24) = v27;
    v42 = sub_10003DAA4;
    v43 = v28;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_100060C48;
    v41 = &unk_1001C6A90;
    v29 = _Block_copy(&aBlock);
    v30 = v11;

    dispatch_sync(v26, v29);
    _Block_release(v29);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();
    swift_unknownObjectRelease();
    v16, v31, v32, v33, v34, v35, v36, v37;

    if ((v26 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
LABEL_14:
    v19 = qword_10020A368;
    v20 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendQueue);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1000FADD4;
    *(v22 + 24) = v21;
    v42 = sub_10003E41C;
    v43 = v22;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_100060C48;
    v41 = &unk_1001C6B08;
    v23 = _Block_copy(&aBlock);
    v24 = v19;

    dispatch_sync(v20, v23);
    _Block_release(v23);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if ((v20 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  return result;
}

char *sub_100104234(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC11Diagnostics13DeviceManager_devices] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC11Diagnostics13DeviceManager_activeDevicesBySerialNumber] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC11Diagnostics13DeviceManager_monitor] = 0;
  v75.receiver = v1;
  v75.super_class = type metadata accessor for DeviceManager();
  v3 = objc_msgSendSuper2(&v75, "init");
  sub_100105A70();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001845E0;
  *(inited + 32) = sub_10003E110(0, &qword_100201828, off_1001BA110);
  *(inited + 40) = sub_10003E110(0, &qword_100201830, off_1001BA0E8);
  *(inited + 48) = sub_10003E110(0, &qword_100201838, off_1001BA0F0);
  *(inited + 56) = sub_10003E110(0, &qword_100201840, off_1001BA0F8);
  v5 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if ((v5 & 1) == 0)
  {
    v6 = sub_10003E110(0, &qword_100201848, off_1001BA108);
    inited = sub_1000D5228(1, 5, 1, inited, v7, v8, v9, v10);
    *(inited + 16) = 5;
    *(inited + 64) = v6;
    v15 = *(inited + 24);
    if (v15 <= 0xB)
    {
      inited = sub_1000D5228((v15 > 1), 6, 1, inited, v11, v12, v13, v14);
    }

    v16 = type metadata accessor for DeviceObserverTimberLorryDevelopment();
    *(inited + 16) = 6;
    *(inited + 72) = v16;
    v21 = *(inited + 24);
    if (v21 <= 0xD)
    {
      inited = sub_1000D5228((v21 > 1), 7, 1, inited, v17, v18, v19, v20);
    }

    v22 = type metadata accessor for DeviceObserverEnhancedLogging();
    *(inited + 16) = 7;
    *(inited + 80) = v22;
  }

  if (os_variant_has_internal_content())
  {
    v28 = *(inited + 16);
    v27 = *(inited + 24);
    if (v28 >= v27 >> 1)
    {
      inited = sub_1000D5228((v27 > 1), v28 + 1, 1, inited, v23, v24, v25, v26);
    }

    v29 = sub_10003E110(0, &unk_100201850, off_1001BA100);
    *(inited + 16) = v28 + 1;
    *(inited + 8 * v28 + 32) = v29;
  }

  v30 = sub_10014B804(inited);
  inited, v31, v32, v33, v34, v35, v36, v37;
  v38 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v30, v40, v41, v42, v43, v44, v45, v46;
  v47 = [v38 initWithArray:isa];

  aBlock = 0;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  v48 = aBlock;
  if (!aBlock)
  {
    __break(1u);
  }

  v49 = Set._bridgeToObjectiveC()().super.isa;
  v48, v50, v51, v52, v53, v54, v55, v56;
  v57 = [objc_opt_self() aggregatorWithObserverClasses:v49];

  v58 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_monitor;
  v59 = *&v3[OBJC_IVAR____TtC11Diagnostics13DeviceManager_monitor];
  *&v3[OBJC_IVAR____TtC11Diagnostics13DeviceManager_monitor] = v57;

  v60 = *&v3[v58];
  if (v60)
  {
    v61 = swift_allocObject();
    *(v61 + 16) = v3;
    v80 = sub_1001074FC;
    v81 = v61;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_100104AE8;
    v79 = &unk_1001C69C8;
    v62 = _Block_copy(&aBlock);
    v63 = v60;
    v64 = v3;

    v65 = [v63 beginDiscoveringDevicesWithHandler:v62];
    _Block_release(v62);
    swift_unknownObjectRelease();
  }

  v66 = [objc_opt_self() defaultCenter];
  v67 = objc_opt_self();
  v68 = @"com.apple.Diagnostics.deviceStateChangedNotification";
  v69 = [v67 mainQueue];
  v70 = swift_allocObject();
  *(v70 + 16) = v3;
  v80 = sub_10010751C;
  v81 = v70;
  aBlock = _NSConcreteStackBlock;
  v77 = 1107296256;
  v78 = sub_100060B2C;
  v79 = &unk_1001C6A18;
  v71 = _Block_copy(&aBlock);
  v72 = v3;

  v73 = [v66 addObserverForName:v68 object:0 queue:v69 usingBlock:v71];
  _Block_release(v71);
  swift_unknownObjectRelease();

  return v72;
}

uint64_t sub_1001047F4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1001075B8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C6B58;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

void sub_100104A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11Diagnostics13DeviceManager_devices);
  *(a1 + OBJC_IVAR____TtC11Diagnostics13DeviceManager_devices) = a2;

  sub_1001032C8(v2);

  v2, v3, v4, v5, v6, v7, v8, v9;
}

void sub_100104AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);

  v3, v4, v5, v6, v7, v8, v9, v10;
}

void sub_100104B60(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v12 = sub_100064B74(v80), (v5 & 1) == 0))
  {
    v4, v5, v6, v7, v8, v9, v10, v11;
    sub_10003DB48(v80);
LABEL_11:
    v81 = 0u;
    v82 = 0u;
    goto LABEL_12;
  }

  sub_10003E010(*(v4 + 56) + 32 * v12, &v81);
  sub_10003DB48(v80);
  v4, v13, v14, v15, v16, v17, v18, v19;
  if (!*(&v82 + 1))
  {
LABEL_12:
    sub_10003DD84(&v81, &unk_1001FD720, &unk_10017ED20);
    return;
  }

  sub_10003E110(0, &unk_100201860, off_1001BA120);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v20 = v80[0];
  v21 = [v80[0] snapshot];
  v22 = [v21 phase];

  v23 = v22 - 2;
  v24 = [v20 snapshot];
  v25 = [v24 serialNumber];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (v23 > 2)
  {
    swift_beginAccess();
    sub_100155C78(v26, v28);
    swift_endAccess();
    v28, v60, v61, v62, v63, v64, v65, v66;
    swift_unknownObjectRelease();
    sub_100103D48();
LABEL_19:

    return;
  }

  v29 = [v20 snapshot];
  v30 = [v29 serialNumber];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
  swift_beginAccess();
  v42 = *(a2 + v34);
  if (!*(v42 + 16))
  {
    v67 = v33;
LABEL_17:
    v67, v35, v36, v37, v38, v39, v40, v41;
    v52 = 0;
    goto LABEL_18;
  }

  v43 = sub_100064AFC(v31, v33);
  v45 = v44;
  v33, v44, v46, v47, v48, v49, v50, v51;
  if ((v45 & 1) == 0)
  {
    v67 = v42;
    goto LABEL_17;
  }

  v52 = *(*(v42 + 56) + 8 * v43);
  swift_unknownObjectRetain();
  v42, v53, v54, v55, v56, v57, v58, v59;
LABEL_18:
  swift_beginAccess();
  sub_10013C484(v52, v26, v28);
  swift_endAccess();
  if (([v20 changedProperties] & 2) == 0)
  {
    goto LABEL_19;
  }

  v68 = [v20 snapshot];
  v69 = [v68 suiteName];

  if (v69)
  {
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;
  }

  else
  {
    v70 = 0;
    v72 = 0;
  }

  sub_100106E2C(v70, v72);

  v72, v73, v74, v75, v76, v77, v78, v79;
}

void sub_100104F48(SEL *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics13DeviceManager_devices);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        sub_1000681EC(*(v2 + 48) + 40 * (v9 | (v8 << 6)), &v12);
        sub_10003C49C(&qword_100201820, &unk_100184668);
        if (swift_dynamicCast())
        {
          if ([v11 isLocal])
          {
            [v11 *a1];
          }

          swift_unknownObjectRelease();
          v7 = v8;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v7 = v8;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v8 = v7;
      }
    }
  }

  __break(1u);
}

double sub_1001050D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v3(v5, v7);
  sub_10005F18C(v5, v7);

  return result;
}

id sub_100105158(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeviceManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10010523C(unsigned __int8 a1, void *a2, id a3)
{
  v3 = a3;
  if (a1 - 1 > 1)
  {
    v7 = [a3 state];
    [v7 setPhase:0];

    v8 = [v3 state];
    [v8 addErrorCode:0 userInfo:0];

    v9 = [v3 state];
    [v9 removeErrorCode:0];
  }

  else
  {
    if (a2)
    {
      if (([a3 respondsToSelector:"startInOperationMode:"] & 1) == 0)
      {
        return;
      }

      v5 = "startInOperationMode:";
      v6 = v3;
      a3 = a2;
    }

    else
    {
      v5 = "start";
      v6 = a3;
    }

    [v6 v5];
  }
}

void sub_100105504(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4)
{
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  v6 = a3;
  (*(a4 + 16))(a4, a1);
}

void sub_100105570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate;
  swift_beginAccess();
  sub_1001059B4(v4 + v9, v15);
  if (v16)
  {
    sub_10004476C(v15, v12);
    sub_10003DD84(v15, &qword_100201810, &unk_100181730);
    v10 = v13;
    v11 = v14;
    sub_1000442A0(v12, v13);
    (*(v11 + 16))(v4, a1, a2, a3, a4, v10, v11);
    sub_100044554(v12);
  }

  else
  {
    sub_10003DD84(v15, &qword_100201810, &unk_100181730);
  }
}

void sub_100105760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate;
  swift_beginAccess();
  sub_1001059B4(v4 + v9, v15);
  if (v16)
  {
    sub_10004476C(v15, v12);
    sub_10003DD84(v15, &qword_100201810, &unk_100181730);
    v10 = v13;
    v11 = v14;
    sub_1000442A0(v12, v13);
    (*(v11 + 32))(v4, a1, a2, a3, a4, v10, v11);
    sub_100044554(v12);
  }

  else
  {
    sub_10003DD84(v15, &qword_100201810, &unk_100181730);
  }
}

void sub_100105948(int a1, int a2, id a3, void (*a4)(void))
{
  v5 = [a3 identifier];
  a4();
}

uint64_t sub_1001059B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_100201810, &unk_100181730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100105A24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_100105A70()
{
  v0 = sub_10003C49C(&qword_1002018E0, &qword_100184680);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1002018E8;
    v3 = &unk_100184688;
  }

  else
  {
    v2 = &unk_1001FD020;
    v3 = &qword_10017F1A0;
  }

  return sub_10003C49C(v2, v3);
}

void *sub_100105AE8(unint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v66[0] = a1;
    v57 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v41 = a1;
      v3 = _CocoaArrayWrapper.endIndex.getter();
      a1 = v41;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = a1;

    if (v3)
    {
      v11 = 0;
      v63 = v62 & 0xC000000000000001;
      v61 = v62 & 0xFFFFFFFFFFFFFF8;
      v59 = (v62 + 32);
      v65 = v2 + 7;
      while (1)
      {
        if (v63)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v61 + 16))
          {
            goto LABEL_46;
          }

          a1 = *&v59[8 * v11];
        }

        v64 = a1;
        v12 = __OFADD__(v11++, 1);
        if (v12)
        {
          goto LABEL_45;
        }

        v13 = NSObject._rawHashValue(seed:)(v2[5]);
        v14 = -1 << *(v2 + 32);
        v15 = v13 & ~v14;
        v16 = v15 >> 6;
        v17 = 1 << v15;
        if (((1 << v15) & v65[v15 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v11 == v3)
        {
          goto LABEL_40;
        }
      }

      v18 = ~v14;
      sub_10003E110(0, &qword_100202990, NSError_ptr);
      while (1)
      {
        v19 = *(v2[6] + 8 * v15);
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          break;
        }

        v15 = (v15 + 1) & v18;
        v16 = v15 >> 6;
        v17 = 1 << v15;
        if (((1 << v15) & v65[v15 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v66[1] = v11;

      v22 = *(v2 + 32);
      v23 = v22 & 0x3F;
      v24 = ((1 << v22) + 63) >> 6;
      v55 = v24;
      if (v23 <= 0xD)
      {
LABEL_19:
        v56 = &v54;
        __chkstk_darwin(v21);
        v26 = &v54 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v26, v65, v25);
        v27 = v2[2];
        v28 = *&v26[8 * v16] & ~v17;
        v60 = v26;
        *&v26[8 * v16] = v28;
        v58 = v27 - 1;
        if (v57)
        {
          a1 = _CocoaArrayWrapper.endIndex.getter();
          v64 = a1;
        }

        else
        {
          v64 = *(v61 + 16);
        }

        while (1)
        {
          if (v11 == v64)
          {
            v2 = sub_10012A804(v60, v55, v58, v2);
            goto LABEL_40;
          }

          if (v63)
          {
            a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v11 >= *(v61 + 16))
            {
              goto LABEL_44;
            }

            a1 = *&v59[8 * v11];
          }

          v29 = a1;
          v12 = __OFADD__(v11++, 1);
          if (v12)
          {
            break;
          }

          v30 = NSObject._rawHashValue(seed:)(v2[5]);
          v31 = -1 << *(v2 + 32);
          v32 = v30 & ~v31;
          v33 = v32 >> 6;
          v34 = 1 << v32;
          if (((1 << v32) & v65[v32 >> 6]) != 0)
          {
            v35 = ~v31;
            while (1)
            {
              v36 = *(v2[6] + 8 * v32);
              v37 = static NSObject.== infix(_:_:)();

              if (v37)
              {
                break;
              }

              v32 = (v32 + 1) & v35;
              v33 = v32 >> 6;
              v34 = 1 << v32;
              if (((1 << v32) & v65[v32 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v38 = v60[v33];
            v60[v33] = v38 & ~v34;
            if ((v38 & v34) != 0)
            {
              v39 = v58 - 1;
              if (__OFSUB__(v58, 1))
              {
                __break(1u);
              }

              --v58;
              if (!v39)
              {

                v2 = &_swiftEmptySetSingleton;
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v42 = 8 * v24;

      v43 = v42;
      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_19;
      }

      v44 = swift_slowAlloc();
      memcpy(v44, v65, v43);
      sub_100106588(v44, v55, v2, v15, v66);
      v46 = v45;

      v62, v47, v48, v49, v50, v51, v52, v53;
      return v46;
    }

    else
    {
LABEL_40:
      v62, v4, v5, v6, v7, v8, v9, v10;
    }
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void *sub_100105FC0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v3 = a1;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = -1 << *(a1 + 32);
  v44 = ~v6;
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (63 - v6) >> 6;
  v10 = a2 + 7;
  v11 = 0;
  v12 = 0;
  v46 = a1 + 56;

  {
    v14 = v8;
    if (!v8)
    {
      break;
    }

LABEL_12:
    sub_1000681EC(*(v3 + 48) + 40 * (__clz(__rbit64(v14)) | (v12 << 6)), &v48);
    if (!*(&v49 + 1))
    {
      goto LABEL_43;
    }

    v8 = (v14 - 1) & v14;
    v51 = v48;
    v52 = v49;
    v53 = v50;
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v11 = v16 & ~v17;
    v3 = v11 >> 6;
    v14 = 1 << v11;
    if (((1 << v11) & v10[v11 >> 6]) != 0)
    {
      v18 = ~v17;
      while (1)
      {
        sub_1000681EC(v2[6] + 40 * v11, &v48);
        v19 = static AnyHashable.== infix(_:_:)();
        sub_10003DB48(&v48);
        if (v19)
        {
          break;
        }

        v11 = (v11 + 1) & v18;
        v3 = v11 >> 6;
        v14 = 1 << v11;
        if (((1 << v11) & v10[v11 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v55 = v44;
      v56 = v12;
      v57 = v8;
      v21 = v46;
      v20 = i;
      v54[0] = i;
      v54[1] = v46;
      v22 = sub_10003DB48(&v51);
      v23 = *(v2 + 32);
      v42[0] = ((1 << v23) + 63) >> 6;
      v13 = 8 * v42[0];
      if ((v23 & 0x3Fu) <= 0xD)
      {
        goto LABEL_20;
      }

      goto LABEL_49;
    }

LABEL_6:
    sub_10003DB48(&v51);
    v11 = v12;
    v5 = v46;
  }

  v15 = v11;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v39 = v13;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v40 = swift_slowAlloc();
        memcpy(v40, v2 + 7, v39);
        v41 = sub_1001067D8(v40, v42[0], v2, v11, v54);

        v20 = v54[0];
        v44 = v55;
        v2 = v41;
LABEL_41:
        v37 = v20;
        goto LABEL_44;
      }

      v21 = v46;
      v20 = i;
LABEL_20:
      v42[1] = v42;
      __chkstk_darwin(v22);
      v25 = v42 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v25, v2 + 7, v24);
      v26 = *&v25[8 * v3] & ~v14;
      v43 = v25;
      *&v25[8 * v3] = v26;
      v11 = v2[2] - 1;
      while (1)
      {
        while (1)
        {
          if (!v8)
          {
            v27 = v12;
            while (1)
            {
              v28 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                break;
              }

              if (v28 >= v9)
              {
                v50 = 0;
                v48 = 0u;
                v49 = 0u;
                goto LABEL_40;
              }

              v8 = *(v21 + 8 * v28);
              ++v27;
              if (v8)
              {
                v12 = v28;
                goto LABEL_28;
              }
            }

            __break(1u);
            goto LABEL_47;
          }

LABEL_28:
          v29 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          sub_1000681EC(*(v20 + 48) + 40 * (v29 | (v12 << 6)), &v48);
          if (!*(&v49 + 1))
          {
LABEL_40:
            sub_10003DD84(&v48, &qword_1002018D8, &qword_100184678);
            v2 = sub_10012AF70(v43, v42[0], v11, v2);
            goto LABEL_41;
          }

          v45 = v11;
          v51 = v48;
          v52 = v49;
          v53 = v50;
          v30 = AnyHashable._rawHashValue(seed:)(v2[5]);
          v14 = -1 << *(v2 + 32);
          v31 = v30 & ~v14;
          v3 = v31 >> 6;
          v32 = 1 << v31;
          if (((1 << v31) & v10[v31 >> 6]) != 0)
          {
            break;
          }

LABEL_21:
          sub_10003DB48(&v51);
          v21 = v46;
          v20 = i;
          v11 = v45;
        }

        sub_1000681EC(v2[6] + 40 * v31, &v48);
        v33 = static AnyHashable.== infix(_:_:)();
        sub_10003DB48(&v48);
        if ((v33 & 1) == 0)
        {
          v14 = ~v14;
          do
          {
            v31 = (v31 + 1) & v14;
            v3 = v31 >> 6;
            v32 = 1 << v31;
            if (((1 << v31) & v10[v31 >> 6]) == 0)
            {
              goto LABEL_21;
            }

            sub_1000681EC(v2[6] + 40 * v31, &v48);
            v34 = static AnyHashable.== infix(_:_:)();
            sub_10003DB48(&v48);
          }

          while ((v34 & 1) == 0);
        }

        v11 = v45;
        sub_10003DB48(&v51);
        v35 = v43[v3];
        v43[v3] = v35 & ~v32;
        v21 = v46;
        if ((v35 & v32) != 0)
        {
          v36 = __OFSUB__(v11--, 1);
          v20 = i;
          if (v36)
          {
            goto LABEL_48;
          }

          if (!v11)
          {

            v2 = &_swiftEmptySetSingleton;
            goto LABEL_41;
          }
        }

        else
        {
          v20 = i;
        }
      }
    }

    if (v12 >= v9)
    {
      break;
    }

    v14 = *(v5 + 8 * v12);
    ++v15;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
LABEL_43:
  sub_10003DD84(&v48, &qword_1002018D8, &qword_100184678);
  v37 = v3;
LABEL_44:
  sub_10004A320(v37);
  return v2;
}

void sub_100106588(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v30 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_10012A804(a1, a2, v27, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v25 = v5[1];
          v13 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v12 = *(v11 + 8 * v10 + 32);
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_27;
          }
        }

        v5[1] = v13;
        v14 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v30 + 8 * (v16 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_10003E110(0, &qword_100202990, NSError_ptr);
        v19 = *(*(a3 + 48) + 8 * v16);
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          break;
        }

        v21 = ~v15;
        while (1)
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v30 + 8 * (v16 >> 6))) == 0)
          {
            break;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = static NSObject.== infix(_:_:)();

          if (v23)
          {
            goto LABEL_16;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_16:
      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_29;
    }

    if (v27 != 1)
    {
      continue;
    }

    break;
  }
}

char *sub_1001067D8(char *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *&result[(a4 >> 3) & 0x1FFFFFFFFFFFFFF8] &= (-1 << a4) - 1;
  v37 = v7 - 1;
  v8 = a3 + 56;
  while (1)
  {
    do
    {
      while (1)
      {
        v9 = *a5;
        v10 = a5[1];
        v12 = a5[2];
        v11 = a5[3];
        v13 = a5[4];
        if (!v13)
        {
          v15 = (v12 + 64) >> 6;
          v16 = a5[3];
          while (1)
          {
            v14 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
              goto LABEL_25;
            }

            if (v14 >= v15)
            {
              break;
            }

            v13 = *(v10 + 8 * v14);
            ++v16;
            if (v13)
            {
              goto LABEL_9;
            }
          }

          v34 = 0;
          if (v15 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (v12 + 64) >> 6;
          }

          v32 = 0u;
          v33 = 0u;
          *a5 = v9;
          a5[1] = v10;
          a5[2] = v12;
          a5[3] = v29 - 1;
          a5[4] = 0;
LABEL_23:
          sub_10003DD84(&v32, &qword_1002018D8, &qword_100184678);

          return sub_10012AF70(v31, a2, v37, a3);
        }

        v14 = a5[3];
LABEL_9:
        v17 = (v13 - 1) & v13;
        sub_1000681EC(*(v9 + 48) + 40 * (__clz(__rbit64(v13)) | (v14 << 6)), &v32);
        v18 = *(&v33 + 1);
        *a5 = v9;
        a5[1] = v10;
        a5[2] = v12;
        a5[3] = v14;
        a5[4] = v17;
        if (!v18)
        {
          goto LABEL_23;
        }

        v35[0] = v32;
        v35[1] = v33;
        v36 = v34;
        v19 = AnyHashable._rawHashValue(seed:)(*(a3 + 40));
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v8 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_2:
        result = sub_10003DB48(v35);
      }

      sub_1000681EC(*(a3 + 48) + 40 * v21, &v32);
      v24 = static AnyHashable.== infix(_:_:)();
      sub_10003DB48(&v32);
      if ((v24 & 1) == 0)
      {
        v25 = ~v20;
        do
        {
          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v8 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_2;
          }

          sub_1000681EC(*(a3 + 48) + 40 * v21, &v32);
          v26 = static AnyHashable.== infix(_:_:)();
          sub_10003DB48(&v32);
        }

        while ((v26 & 1) == 0);
      }

      result = sub_10003DB48(v35);
      v27 = v31[v22];
      v31[v22] = v27 & ~v23;
    }

    while ((v27 & v23) == 0);
    v28 = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
      break;
    }

    --v37;
    if (!v28)
    {
      return &_swiftEmptySetSingleton;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_100106A4C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1000681EC(*(a1 + 48) + 40 * (v10 | (v9 << 6)), v12);
      sub_100127FFC(v11);
      sub_10003DB48(v12);
      sub_10003DD84(v11, &qword_1002018D8, &qword_100184678);
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

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

double sub_100106B74(uint64_t a1, DARootViewController *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
  swift_beginAccess();
  v11 = *(a5 + v10);
  v12 = *(v11 + 16);

  if (v12)
  {

    sub_100064AFC(a1, a2);
    if (v13)
    {
      swift_unknownObjectRetain();
      v11, v20, v21, v22, v23, v24, v25, v26;
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
        v29 = String._bridgeToObjectiveC()();
        v30 = swift_allocObject();
        *(v30 + 16) = sub_1001075C0;
        *(v30 + 24) = a6;
        aBlock[4] = sub_100107600;
        aBlock[5] = v30;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001050D0;
        aBlock[3] = &unk_1001C6BA8;
        v31 = _Block_copy(aBlock);

        [v28 getAsset:v29 completion:v31];
        _Block_release(v31);

        swift_unknownObjectRelease();

        return result;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v11, v13, v14, v15, v16, v17, v18, v19;
    }
  }

  v33 = static os_log_type_t.error.getter();
  sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
  v34 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v34, v33))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_100056B7C(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v34, v33, "Unable to find the device with %s serial number or the device is not local", v35, 0xCu);
    sub_100044554(v36);
  }

  sub_1000876C4(0, 0xF000000000000000, a6);

  return result;
}

void sub_100106E2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1001FC6B8 != -1)
    {
      swift_once();
    }

    v2 = qword_10020A368;
    v3 = OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState;
    if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState) == 2)
    {
      *(v2 + v3) = SBSIsReachabilityEnabled() != 0;
    }

    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v5 = qword_10020A4F8;
    *(v4 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    *(v4 + 64) = sub_1000516BC();
    *(v4 + 32) = v5;
    v6 = v5;
    v7 = static OS_os_log.default.getter();
    v8 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Disabling Reachability", 22, 2, &_mh_execute_header, v7, v8, v4);
    v4, v9, v10, v11, v12, v13, v14, v15;

LABEL_15:

    SBSSetReachabilityEnabled();
    return;
  }

  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState) != 2)
  {
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v17 = qword_10020A4F8;
    *(v16 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    *(v16 + 64) = sub_1000516BC();
    *(v16 + 32) = v17;
    v18 = v17;
    v19 = static OS_os_log.default.getter();
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Reverting Reachability state", 28, 2, &_mh_execute_header, v19, v20, v16);
    v16, v21, v22, v23, v24, v25, v26, v27;

    goto LABEL_15;
  }
}

double sub_1001070CC(void *a1, char a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  v9 = [a1 state];
  v10 = [v9 suiteName];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate;
    swift_beginAccess();
    sub_1001059B4(a3 + v14, v49);
    if (v50)
    {
      sub_10004476C(v49, v46);
      sub_10003DD84(v49, &qword_100201810, &unk_100181730);
      v45 = v11;
      v22 = a2;
      v24 = v47;
      v23 = v48;
      sub_1000442A0(v46, v47);
      v25 = [a1 state];
      v26 = [v25 serialNumber];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      (*(v23 + 8))(a3, v45, v13, v22 & 1, v27, v29, sub_1001074AC, v8, v24, v23);
      v29, v30, v31, v32, v33, v34, v35, v36;
      v13, v37, v38, v39, v40, v41, v42, v43;
      sub_100044554(v46);
    }

    else
    {
      v13, v15, v16, v17, v18, v19, v20, v21;
      sub_10003DD84(v49, &qword_100201810, &unk_100181730);
    }
  }

  else
  {
    a4[2](a4, 1);
  }

  return result;
}

void sub_100107324(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate;
  swift_beginAccess();
  sub_1001059B4(a3 + v9, &v14);
  if (v15)
  {
    sub_100049F74(&v14, v16);
    v10 = v17;
    v11 = v18;
    sub_1000442A0(v16, v17);
    v12 = *(v11 + 24);
    _Block_copy(a4);
    v12(a3, a1, a2, sub_1001074A4, v8, v10, v11);
    sub_100044554(v16);
  }

  else
  {
    _Block_copy(a4);
    sub_10003DD84(&v14, &qword_100201810, &unk_100181730);
    v13 = [a2 identifier];
    (a4)[2](a4, v13, 0);
  }
}

uint64_t sub_1001074C4()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

double sub_100107504(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100107524()
{

  return _swift_deallocObject(v0, 28, 7, v1);
}

uint64_t sub_100107578()
{
  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 32, 7, v8);
}

uint64_t sub_1001075C8()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

unint64_t sub_100107678()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0xD000000000000032;
  }

  return v1;
}

id sub_1001076CC()
{
  type metadata accessor for UIImageAsyncLoader();
  v0 = swift_allocObject();
  v0[2] = &_swiftEmptySetSingleton;
  v0[3] = &_swiftEmptySetSingleton;
  v0[4] = 10;
  result = [objc_allocWithZone(NSLock) init];
  v0[5] = result;
  qword_10020A588 = v0;
  return result;
}

DARootViewController *sub_100107734(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  v19 = &_swiftEmptyArrayStorage;
  v15 = dispatch_semaphore_create(0);
  sub_10010CFAC(a1, v2, &v19, v15);
  static DispatchTime.now()();
  *v7 = 10;
  (*(v5 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v4);
  + infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  v16 = *(v9 + 8);
  v16(v11, v8);
  OS_dispatch_semaphore.wait(timeout:)();

  v16(v14, v8);
  return v19;
}

void sub_10010795C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  if (!a1)
  {
    if (a2)
    {
      swift_errorRetain();
      v14 = static os_log_type_t.error.getter();
      sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_10017EC00;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = v17;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_10003DFBC();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
      v19 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v19, "Icon loading error occurred: %@", 31, 2, v15);
      v15, v20, v21, v22, v23, v24, v25, v26;
    }

    goto LABEL_8;
  }

  swift_beginAccess();
  v9 = *(a3 + 16);
  v10 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v9;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = sub_10003B994(v9);
  *(a3 + 16) = v9;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (*(v9 + 16) > a4)
  {
    v12 = v9 + 8 * a4;
    v13 = *(v12 + 32);
    *(v12 + 32) = a1;
    *(a3 + 16) = v9;
    swift_endAccess();

LABEL_8:
    dispatch_group_leave(a5);
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_100107B7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_10003C49C(&qword_1001FDF98, qword_100182250);
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v23 - v14;
  v16 = *(a3 + 40);
  [v16 lock];
  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    type metadata accessor for ImageLoader(0);
    v18 = swift_allocObject();
    v24 = a5;
    v25 = a6;
    v19 = v18;
    v27[1] = 0;
    v27[2] = 0;
    v28 = 2;
    Published.init(initialValue:)();
    v26 = v16;
    v20 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
    *(v19 + v20) = [objc_allocWithZone(NSLock) init];
    *(v19 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
    v21 = (v19 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
    *v21 = a1;
    v21[1] = a2;
    swift_beginAccess();

    sub_10003C49C(&qword_1001FDFA0, &qword_10017FE30);
    Published.projectedValue.getter();
    swift_endAccess();
    v22 = swift_allocObject();
    v22[2] = v24;
    v22[3] = 0;
    v22[4] = a3;
    v22[5] = v19;
    sub_100107FEC();

    Publisher<>.sink(receiveValue:)();

    (*(v12 + 8))(v15, v11);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();

    sub_100108C88(v27, v19);
    swift_endAccess();

    sub_100086EF0();
    [v26 unlock];
  }

  else
  {

    [v16 unlock];
  }
}

double sub_100107E8C(uint64_t *a1, void (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = *a1;
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v8 = a1[1];
      sub_10010C574();
      v9 = swift_allocError();
      *v10 = v7;
      v10[1] = v8;

      a2(0, v9);
    }
  }

  else
  {
    (a2)(*a1, 0, a3);
  }

  swift_beginAccess();
  sub_100128134(a5);
  swift_endAccess();

  return result;
}

uint64_t sub_100107F7C(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocClassInstance();
}

unint64_t sub_100107FEC()
{
  result = qword_1001FDFA8;
  if (!qword_1001FDFA8)
  {
    sub_10003C4E4(&qword_1001FDF98, qword_100182250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDFA8);
  }

  return result;
}

Swift::Int sub_100108050(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10003C49C(&qword_100201A30, &unk_1001847F0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10003E110(0, &qword_100202990, NSError_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100109A34(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100108240(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10003C49C(&qword_100201A00, &unk_100185150);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for ImageLoader(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100109EBC(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        String.hash(into:)();
        result = Hasher._finalize()();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10010844C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10003C49C(&qword_100201A18, &qword_1001847E0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v25 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CardState();
      do
      {
        swift_dynamicCast();
        v19 = *(v2 + 16);
        if (*(v2 + 24) <= v19)
        {
          sub_10010A398(v19 + 1);
        }

        v2 = v25;
        Hasher.init(_seed:)();
        v3 = [*(v24 + 40) serialNumber];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v5 = v4;

        String.hash(into:)();
        v5, v6, v7, v8, v9, v10, v11, v12;
        result = Hasher._finalize()();
        v14 = v25 + 56;
        v15 = -1 << *(v25 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v25 + 56 + 8 * (v16 >> 6))) != 0)
        {
          v18 = __clz(__rbit64((-1 << v16) & ~*(v25 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v15) >> 6;
          do
          {
            if (++v17 == v21 && (v20 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v22 = v17 == v21;
            if (v17 == v21)
            {
              v17 = 0;
            }

            v20 |= v22;
            v23 = *(v14 + 8 * v17);
          }

          while (v23 == -1);
          v18 = __clz(__rbit64(~v23)) + (v17 << 6);
        }

        *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v25 + 48) + 8 * v18) = v24;
        ++*(v25 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100108684(Swift::Int *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {
      v6, v10, v11, v12, v13, v14, v15, v16;

      sub_10003E110(0, &qword_100202990, NSError_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v26 = sub_100108050(v7, result + 1);
    v27 = v26[2];
    if (v26[3] <= v27)
    {
      sub_100109A34(v27 + 1);
    }

    v25 = v8;
    sub_10010AB00(v25, v26);
    v6, v28, v29, v30, v31, v32, v33, v34;
    *v3 = v26;
    goto LABEL_16;
  }

  sub_10003E110(0, &qword_100202990, NSError_ptr);
  v18 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v19 = -1 << *(v6 + 32);
  v20 = v18 & ~v19;
  if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v3;
    v25 = a2;
    sub_10010AD18(v25, v20, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
LABEL_16:
    *a1 = v25;
    return 1;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v20);
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v35 = *(*(v6 + 48) + 8 * v20);
  *a1 = v35;
  v36 = v35;
  return 0;
}

uint64_t sub_1001088BC(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v26 = &v25 - v9;
  v27 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v11 = *(a2 + 8);
  Hasher._combine(_:)(*(a2 + 8));
  v12 = *(a2 + 16);
  Hasher._combine(_:)(v12);
  v30 = v4;
  v13 = *(v4 + 28);
  type metadata accessor for Date();
  sub_10010ED6C();
  v31 = a2;
  v29 = v13;
  dispatch thunk of Hashable.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    do
    {
      sub_10010EDC4(*(v10 + 48) + v18 * v16, v7);
      if (v11 == v7[8] && *(v7 + 2) == v12)
      {
        v19 = static Date.== infix(_:_:)();
        sub_10003DC58(v7);
        if (v19)
        {
          sub_10003DC58(v31);
          sub_10010EDC4(*(v10 + 48) + v18 * v16, v28);
          return 0;
        }
      }

      else
      {
        sub_10003DC58(v7);
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  v21 = v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v31;
  v24 = v26;
  sub_10010EDC4(v31, v26);
  v32 = *v21;
  sub_10010AE88(v24, v16, isUniquelyReferenced_nonNull_native);
  *v21 = v32;
  sub_10003DBF4(v23, v28);
  return 1;
}

uint64_t sub_100108B3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1000681EC(*(v6 + 48) + 40 * v9, v16);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_10003DB48(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_10003DB48(a2);
    sub_1000681EC(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000681EC(a2, v16);
    v15 = *v3;
    sub_10010B104(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_100108C88(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {
      v6, v9, v10, v11, v12, v13, v14, v15;

      type metadata accessor for ImageLoader(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (!__OFADD__(result, 1))
    {
      v26 = sub_100108240(v7, result + 1);
      v27 = *(v26 + 16);
      if (*(v26 + 24) <= v27)
      {
        sub_100109EBC(v27 + 1);
      }

      sub_10010AB84(v28, v26);
      v6, v29, v30, v31, v32, v33, v34, v35;
      *v3 = v26;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    Hasher.init(_seed:)();
    v17 = (a2 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
    String.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = -1 << *(v6 + 32);
    v20 = v18 & ~v19;
    if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v2;

      sub_10010B27C(v25, v20, isUniquelyReferenced_nonNull_native);
      *v2 = v37;
LABEL_20:
      *a1 = a2;
      return 1;
    }

    v21 = ~v19;
    while (1)
    {
      v22 = (*(*(v6 + 48) + 8 * v20) + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
      v23 = *v22 == *v17 && v22[1] == v17[1];
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v6 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v20);

    return 0;
  }

  return result;
}

uint64_t sub_100108EC8(uint64_t a1, uint64_t a2, DARootViewController *a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  if (a3 >= 9)
  {
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_100184910[a3]);
  }

  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = (*(v6 + 48) + 16 * v9);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();
      if (v13 >= 9)
      {

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100184910[v13]);
        sub_100078568(v12, v13);
      }

      v14 = Hasher._finalize()();
      Hasher.init(_seed:)();
      if (a3 >= 9)
      {
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100184910[a3]);
      }

      v15 = Hasher._finalize()();
      sub_1000784F0(v12, v13, v16, v17, v18, v19, v20, v21);
      if (v14 == v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_1000784F0(a2, a3, v22, v23, v24, v25, v26, v27);
    v30 = *(*(v6 + 48) + 16 * v9);
    *a1 = v30;
    sub_100078568(v30, *(&v30 + 1));
    return 0;
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;
    sub_100078568(a2, a3);
    sub_10010B410(a2, a3, v9, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }
}

uint64_t sub_1001090EC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {
      v6, v9, v10, v11, v12, v13, v14, v15;

      type metadata accessor for CardState();
      swift_dynamicCast();
      result = 0;
      *a1 = v84;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v57 = sub_10010844C(v7, result + 1);
        v58 = *(v57 + 16);
        if (*(v57 + 24) <= v58)
        {
          sub_10010A398(v58 + 1);
        }

        sub_10010AC34(v59, v57);
        v6, v60, v61, v62, v63, v64, v65, v66;
        *v3 = v57;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v81 = v2;
    Hasher.init(_seed:)();
    v17 = [*(a2 + 40) serialNumber];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    String.hash(into:)();
    v19, v20, v21, v22, v23, v24, v25, v26;
    v27 = Hasher._finalize()();
    v28 = -1 << *(v6 + 32);
    v29 = v27 & ~v28;
    if ((*(v6 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
    {
      v83 = ~v28;
      while (1)
      {
        v30 = *(*(*(v6 + 48) + 8 * v29) + 40);

        v31 = [v30 serialNumber];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = [*(a2 + 40) serialNumber];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        if (v32 == v36 && v34 == v38)
        {

          v34, v67, v68, v69, v70, v71, v72, v73;
          v38, v74, v75, v76, v77, v78, v79, v80;
          goto LABEL_22;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v34, v41, v42, v43, v44, v45, v46, v47;
        v38, v48, v49, v50, v51, v52, v53, v54;
        if (v40)
        {
          break;
        }

        v29 = (v29 + 1) & v83;
        if (((*(v6 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_22:
      *a1 = *(*(v6 + 48) + 8 * v29);

      return 0;
    }

    else
    {
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = *v81;

      sub_10010B640(v56, v29, isUniquelyReferenced_nonNull_native);
      *v81 = v85;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_100109418(Swift::Int *a1, Swift::Int a2, DARootViewController *a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v15 = -1 << *(v7 + 32);
  v16 = v8 & ~v15;
  if ((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *v18 == a2 && v19 == a3;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v19, v9, v10, v11, v12, v13, v14;
    v23 = (*(v7 + 48) + 16 * v16);
    v24 = v23[1];
    *a1 = *v23;
    a1[1] = v24;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;

    sub_10010B894(a2, a3, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100109568(_BYTE *a1, char a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  if (a2)
  {
    v5 = 0x776569766572;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  String.hash(into:)();
  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = Hasher._finalize()();
  v22 = -1 << *(v4 + 32);
  v23 = v14 & ~v22;
  if ((*(v4 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v24 = ~v22;
    while (1)
    {
      v25 = *(*(v4 + 48) + v23) ? 0x776569766572 : 0;
      v26 = (*(*(v4 + 48) + v23) ? 0xE600000000000000 : 0xE000000000000000);
      if (v25 == v5 && v26 == v6)
      {
        break;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v26, v29, v30, v31, v32, v33, v34, v35;
      v6, v36, v37, v38, v39, v40, v41, v42;
      if (v28)
      {
        goto LABEL_23;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v4 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v26, v15, v16, v17, v18, v19, v20, v21;
    v6, v51, v52, v53, v54, v55, v56, v57;
LABEL_23:
    result = 0;
    v44 = *(*(v4 + 48) + v23);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *v58;
    v44 = a2 & 1;
    sub_10010BA14(a2 & 1, v23, isUniquelyReferenced_nonNull_native, v45, v46, v47, v48, v49);
    *v58 = v60;
    result = 1;
  }

  *a1 = v44;
  return result;
}

void sub_10010970C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10003C49C(&qword_100201A28, &qword_1001847E8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v34 + 72);
      sub_10003DBF4(v20 + v21 * (v17 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      NSObject.hash(into:)();
      Hasher._combine(_:)(v5[8]);
      Hasher._combine(_:)(*(v5 + 2));
      type metadata accessor for Date();
      sub_10010ED6C();
      dispatch thunk of Hashable.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_10003DBF4(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_100109A34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&qword_100201A30, &unk_1001847F0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100109C5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&unk_100202980, &qword_100184810);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v28 = *v18;
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      v19 = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v28;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100109EBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&qword_100201A00, &unk_100185150);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10010A118(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&qword_100201A38, &unk_100185160);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      Hasher.init(_seed:)();
      if (v19 >= 9)
      {
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100184910[v19]);
      }

      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10010A398(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&qword_100201A18, &qword_1001847E0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v37 = v1;
    v38 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      v18 = [*(v17 + 40) serialNumber];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      String.hash(into:)();
      v20, v21, v22, v23, v24, v25, v26, v27;
      v28 = Hasher._finalize()();
      v29 = -1 << *(v5 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v12 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v12 + 8 * v31);
          if (v35 != -1)
          {
            v13 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v30) & ~*(v12 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v38;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      bzero(v7, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v36;
    }

    v2 = v37;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10010A628(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&qword_100201A40, &unk_100184800);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10010A888(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&qword_100201A48, &qword_100185170);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v35 = v1;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      if (v17)
      {
        v18 = 0xE600000000000000;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      String.hash(into:)();
      v18, v19, v20, v21, v22, v23, v24, v25;
      v26 = Hasher._finalize()();
      v27 = -1 << *(v5 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero((v3 + 56), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_10010AB00(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_10010AB84(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10010AC34(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = [*(a1 + 40) serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  String.hash(into:)();
  v6, v7, v8, v9, v10, v11, v12, v13;
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_10010AD18(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100109A34(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100128764();
      goto LABEL_12;
    }

    sub_10010BEF4(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10003E110(0, &qword_100202990, NSError_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10010AE88(uint64_t a1, unint64_t a2, char a3)
{
  v30 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v7 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v27 = v7;
  v28 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10010970C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100128580();
      goto LABEL_16;
    }

    sub_10010BBFC(v10 + 1);
  }

  v12 = *v3;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v13 = *(a1 + 8);
  Hasher._combine(_:)(*(a1 + 8));
  v14 = *(a1 + 16);
  Hasher._combine(_:)(v14);
  v15 = *(v30 + 28);
  type metadata accessor for Date();
  sub_10010ED6C();
  v29 = v15;
  dispatch thunk of Hashable.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v12 + 32);
  a2 = v16 & ~v17;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v7 + 72);
    do
    {
      sub_10010EDC4(*(v12 + 48) + v19 * a2, v9);
      if (v13 == v9[8] && *(v9 + 2) == v14)
      {
        v20 = static Date.== infix(_:_:)();
        sub_10003DC58(v9);
        if (v20)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_10003DC58(v9);
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10003DBF4(a1, *(v21 + 48) + *(v27 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

void sub_10010B104(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100109C5C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1001288B4();
      goto LABEL_12;
    }

    sub_10010C108(v7 + 1);
  }

  v9 = *v3;
  v10 = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_1000681EC(*(v9 + 48) + 40 * a2, v20);
      v13 = static AnyHashable.== infix(_:_:)();
      sub_10003DB48(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(result + 16);
  *v15 = *result;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(result + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10010B27C(Swift::Int result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_100109EBC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100128A2C();
      goto LABEL_16;
    }

    sub_10010C334(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = (result + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ImageLoader(0);
    do
    {
      v13 = (*(*(v8 + 48) + 8 * a2) + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
      v14 = *v13 == *v9 && v13[1] == v9[1];
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = result;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10010B410(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a4)
  {
    sub_10010A118(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_100128A40();
      goto LABEL_21;
    }

    sub_10010C5C8(v7 + 1);
  }

  v9 = *v4;
  Hasher.init(_seed:)();
  if (a2 >= 9)
  {
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(qword_100184910[a2]);
  }

  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a3 = v10 & ~v11;
  if ((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v9 + 48) + 16 * a3);
      v14 = *v13;
      v15 = v13[1];
      Hasher.init(_seed:)();
      if (v15 >= 9)
      {

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100184910[v15]);
        sub_100078568(v14, v15);
      }

      v16 = Hasher._finalize()();
      Hasher.init(_seed:)();
      if (a2 >= 9)
      {
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100184910[a2]);
      }

      v17 = Hasher._finalize()();
      sub_1000784F0(v14, v15, v18, v19, v20, v21, v22, v23);
      if (v16 == v17)
      {
        goto LABEL_24;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_21:
  v24 = *v29;
  *(*v29 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v25 = (*(v24 + 48) + 16 * a3);
  *v25 = a1;
  v25[1] = a2;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return;
  }

  __break(1u);
LABEL_24:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10010B640(uint64_t a1, unint64_t a2, char a3)
{
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10010A398(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_100128B9C();
      goto LABEL_16;
    }

    sub_10010C82C(v7 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  v10 = [*(a1 + 40) serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  String.hash(into:)();
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = Hasher._finalize()();
  v21 = -1 << *(v9 + 32);
  a2 = v20 & ~v21;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v22 = ~v21;
    type metadata accessor for CardState();
    do
    {
      v23 = *(*(*(v9 + 48) + 8 * a2) + 40);

      v24 = [v23 serialNumber];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v26;

      v27 = [*(a1 + 40) serialNumber];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v29;

      if (v25 == v28 && v4 == v5)
      {
        goto LABEL_19;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v4, v32, v33, v34, v35, v36, v37, v38;
      v5, v39, v40, v41, v42, v43, v44, v45;
      if (v31)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v22;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v46 = *v64;
  *(*v64 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v46 + 48) + 8 * a2) = a1;
  v47 = *(v46 + 16);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (!v48)
  {
    *(v46 + 16) = v49;
    return;
  }

  __break(1u);
LABEL_19:

  v4, v50, v51, v52, v53, v54, v55, v56;
  v5, v57, v58, v59, v60, v61, v62, v63;
LABEL_20:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10010B894(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10010A628(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100128CF0();
      goto LABEL_16;
    }

    sub_10010CA98(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10010BA14(char a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a2;
  v12 = *(v8->super.super.super.super.isa + 2);
  v13 = *(v8->super.super.super.super.isa + 3);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_10010A888(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100128E4C();
      goto LABEL_28;
    }

    sub_10010CCD0(v12 + 1);
  }

  isa = v8->super.super.super.super.isa;
  Hasher.init(_seed:)();
  if (a1)
  {
    v15 = 0x776569766572;
  }

  else
  {
    v15 = 0;
  }

  if (a1)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  String.hash(into:)();
  v9, v16, v17, v18, v19, v20, v21, v22;
  v8 = v56;
  v23 = Hasher._finalize()();
  v24 = -1 << *(isa + 32);
  v10 = v23 & ~v24;
  if ((*(isa + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10))
  {
    v25 = ~v24;
    do
    {
      v26 = *(*(isa + 6) + v10) ? 0x776569766572 : 0;
      v8 = (*(*(isa + 6) + v10) ? 0xE600000000000000 : 0xE000000000000000);
      if (v26 == v15 && v8 == v9)
      {
        goto LABEL_31;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v8, v29, v30, v31, v32, v33, v34, v35;
      v9, v36, v37, v38, v39, v40, v41, v42;
      if (v28)
      {
        goto LABEL_32;
      }

      v10 = (v10 + 1) & v25;
    }

    while (((*(isa + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10) & 1) != 0);
  }

LABEL_28:
  v43 = *v54;
  *(*v54 + 8 * (v10 >> 6) + 56) |= 1 << v10;
  *(*(v43 + 48) + v10) = a1 & 1;
  v44 = *(v43 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (!v45)
  {
    *(v43 + 16) = v46;
    return;
  }

  __break(1u);
LABEL_31:
  v8, a2, a3, a4, a5, a6, a7, a8;
  v9, v47, v48, v49, v50, v51, v52, v53;
LABEL_32:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10010BBFC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10003C49C(&qword_100201A28, &qword_1001847E8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_10010EDC4(v20 + v21 * (v17 | (v9 << 6)), v5);
      Hasher.init(_seed:)();
      NSObject.hash(into:)();
      Hasher._combine(_:)(v5[8]);
      Hasher._combine(_:)(*(v5 + 2));
      type metadata accessor for Date();
      sub_10010ED6C();
      dispatch thunk of Hashable.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_10003DBF4(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_10010BEF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&qword_100201A30, &unk_1001847F0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(v16);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v26;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_10010C108(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&unk_100202980, &qword_100184810);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_1000681EC(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v27);
      v19 = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v27[0];
      v15 = v27[1];
      *(v13 + 32) = v28;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_10010C334(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&qword_100201A00, &unk_100185150);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();

      String.hash(into:)();
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

unint64_t sub_10010C574()
{
  result = qword_100201A08;
  if (!qword_100201A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201A08);
  }

  return result;
}

void sub_10010C5C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&qword_100201A38, &unk_100185160);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      Hasher.init(_seed:)();
      if (v18 >= 9)
      {

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100184910[v18]);
        sub_100078568(v19, v18);
      }

      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

void sub_10010C82C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&qword_100201A18, &qword_1001847E0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v37 = v1;
    v38 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      v18 = *(v17 + 40);

      v19 = [v18 serialNumber];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      String.hash(into:)();
      v21, v22, v23, v24, v25, v26, v27, v28;
      v29 = Hasher._finalize()();
      v30 = -1 << *(v5 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v12 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v12 + 8 * v32);
          if (v36 != -1)
          {
            v13 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v31) & ~*(v12 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v38;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v37;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_10010CA98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&qword_100201A40, &unk_100184800);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_10010CCD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003C49C(&qword_100201A48, &qword_100185170);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      if (v16)
      {
        v17 = 0xE600000000000000;
      }

      else
      {
        v17 = 0xE000000000000000;
      }

      String.hash(into:)();
      v17, v18, v19, v20, v21, v22, v23, v24;
      v25 = Hasher._finalize()();
      v26 = -1 << *(v5 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v33;
        goto LABEL_29;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

DARootViewController *sub_10010CF18(DARootViewController *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return &_swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_10003C49C(&qword_100201A10, &qword_1001847D8);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v5;
  }

  return result;
}

void sub_10010CFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v97[1] = a4;
  v97[0] = a3;
  v111 = sub_10003C49C(&qword_1001FDF98, qword_100182250);
  v6 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = v97 - v7;
  v105 = type metadata accessor for DispatchTimeInterval();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v101 = (v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = type metadata accessor for DispatchTime();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v99 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v100 = v97 - v11;
  v12 = dispatch_group_create();
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v13 + 16) = sub_10010CF18(0, v14);
  v98 = (v13 + 16);
  v107 = v13;
  v108 = v12;
  v113 = v14;
  if (v14)
  {
    v15 = 0;
    v109 = (v6 + 8);
    v16 = (a1 + 40);
    v106 = xmmword_10017EC00;
    v112 = a2;
    do
    {
      v34 = *(v16 - 1);
      v35 = *v16;

      dispatch_group_enter(v12);
      v36 = swift_allocObject();
      v36[2] = v13;
      v36[3] = v15;
      v117 = v36;
      v36[4] = v12;
      v37 = *(a2 + 40);
      swift_retain_n();
      v38 = v12;
      [v37 lock];
      v39 = (v35 >> 56) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v39 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {

        type metadata accessor for ImageLoader(0);
        v17 = swift_allocObject();
        v118[1] = 0;
        v118[2] = 0;
        v119 = 2;
        Published.init(initialValue:)();
        v115 = v37;
        v18 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
        *(v17 + v18) = [objc_allocWithZone(NSLock) init];
        *(v17 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
        v19 = (v17 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
        *v19 = v34;
        v19[1] = v35;
        swift_beginAccess();

        sub_10003C49C(&qword_1001FDFA0, &qword_10017FE30);
        v20 = v110;
        Published.projectedValue.getter();
        swift_endAccess();
        v21 = swift_allocObject();
        v116 = v15;
        v22 = v117;
        v21[2] = sub_10010F00C;
        v21[3] = v22;
        v21[4] = a2;
        v21[5] = v17;
        sub_100107FEC();

        v114 = v35;
        v23 = v13;
        v24 = v12;
        v25 = v111;
        Publisher<>.sink(receiveValue:)();

        v26 = v25;
        v12 = v24;
        v13 = v23;
        (*v109)(v20, v26);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        swift_beginAccess();

        sub_100108C88(v118, v17);
        swift_endAccess();

        sub_100086EF0();
        [v115 unlock];

        v114, v27, v28, v29, v30, v31, v32, v33;
        v15 = v116;
      }

      else
      {
        [v37 unlock];
        sub_10010C574();
        swift_allocError();
        *v40 = 0;
        v40[1] = 0;
        swift_errorRetain();
        v41 = static os_log_type_t.error.getter();
        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v42 = swift_allocObject();
        *(v42 + 16) = v106;
        swift_getErrorValue();
        v43 = Error.localizedDescription.getter();
        v45 = v44;
        *(v42 + 56) = &type metadata for String;
        *(v42 + 64) = sub_10003DFBC();
        *(v42 + 32) = v43;
        *(v42 + 40) = v45;
        v13 = v107;
        sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
        v46 = static OS_os_log.default.getter();
        v12 = v108;
        os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v46, "Icon loading error occurred: %@", 31, 2, v42);
        v42, v47, v48, v49, v50, v51, v52, v53;

        dispatch_group_leave(v38);
        v35, v54, v55, v56, v57, v58, v59, v60;
      }

      ++v15;
      v16 += 2;
      a2 = v112;
    }

    while (v113 != v15);
  }

  v61 = v99;
  static DispatchTime.now()();
  v62 = v101;
  *v101 = 10;
  v63 = v104;
  v64 = v105;
  (*(v104 + 104))(v62, enum case for DispatchTimeInterval.seconds(_:), v105);
  v65 = v100;
  + infix(_:_:)();
  (*(v63 + 8))(v62, v64);
  v66 = *(v102 + 8);
  v67 = v103;
  v66(v61, v103);
  OS_dispatch_group.wait(timeout:)();
  v66(v65, v67);
  v68 = v98;
  swift_beginAccess();
  v69 = *v68;
  v70 = &_swiftEmptyArrayStorage;
  v118[0] = &_swiftEmptyArrayStorage;
  v71 = *(v69 + 16);

  for (i = 0; ; ++i)
  {
    if (v71 == i)
    {
      v69, v72, v73, v74, v75, v76, v77, v78;
      v82 = *v97[0];
      *v97[0] = v70;

      v82, v83, v84, v85, v86, v87, v88, v89;
      OS_dispatch_semaphore.signal()();

      v70, v90, v91, v92, v93, v94, v95, v96;
      return;
    }

    if (i >= *(v69 + 16))
    {
      break;
    }

    v80 = *(v69 + 8 * i + 32);
    if (v80)
    {
      v81 = v80;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v118[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v70 = v118[0];
    }
  }

  __break(1u);
}

double sub_10010D8B0(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a7;
  v43 = a8;
  v14 = sub_10003C49C(&qword_1001FDF98, qword_100182250);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v19 = *(a3 + 40);

  [v19 lock];
  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v40 = a9;
    type metadata accessor for ImageLoader(0);
    v21 = swift_allocObject();
    v44[1] = 0;
    v44[2] = 0;
    v45 = 2;
    Published.init(initialValue:)();
    v41 = v19;
    v22 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
    *(v21 + v22) = [objc_allocWithZone(NSLock) init];
    *(v21 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
    v23 = (v21 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
    *v23 = a1;
    v23[1] = a2;
    swift_beginAccess();

    sub_10003C49C(&qword_1001FDFA0, &qword_10017FE30);
    Published.projectedValue.getter();
    swift_endAccess();
    v24 = swift_allocObject();
    v24[2] = v43;
    v24[3] = v18;
    v24[4] = a3;
    v24[5] = v21;
    sub_100107FEC();

    Publisher<>.sink(receiveValue:)();

    (*(v15 + 8))(v17, v14);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();

    sub_100108C88(v44, v21);
    swift_endAccess();

    sub_100086EF0();
    [v41 unlock];
  }

  else
  {
    [v19 unlock];
    sub_10010C574();
    swift_allocError();
    *v25 = 0;
    v25[1] = 0;
    swift_errorRetain();
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v26 = qword_10020A4F8;
    v27 = static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    v29 = Error.localizedDescription.getter();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_10003DFBC();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    os_log(_:dso:log:type:_:)("Instructional prompt icon loading error: %@", 43, 2, &_mh_execute_header, v26, v27, v28);
    v28, v32, v33, v34, v35, v36, v37, v38;

    a4(0);
  }

  return result;
}

double sub_10010DCF4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_10003C49C(&qword_1001FDF98, qword_100182250);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = *(a3 + 40);
  v14 = a4;
  [v13 lock];
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    type metadata accessor for ImageLoader(0);
    v16 = swift_allocObject();
    v38[1] = 0;
    v38[2] = 0;
    v39 = 2;
    Published.init(initialValue:)();
    v37 = v13;
    v17 = v12;
    v18 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
    *(v16 + v18) = [objc_allocWithZone(NSLock) init];
    *(v16 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
    v19 = (v16 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
    *v19 = a1;
    v19[1] = a2;
    swift_beginAccess();

    sub_10003C49C(&qword_1001FDFA0, &qword_10017FE30);
    Published.projectedValue.getter();
    swift_endAccess();
    v20 = swift_allocObject();
    v20[2] = sub_10010EEA0;
    v20[3] = v17;
    v20[4] = a3;
    v20[5] = v16;
    sub_100107FEC();

    Publisher<>.sink(receiveValue:)();

    (*(v9 + 8))(v11, v8);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();

    sub_100108C88(v38, v16);
    swift_endAccess();

    sub_100086EF0();
    [v37 unlock];
  }

  else
  {
    [v13 unlock];
    sub_10010C574();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0;
    swift_errorRetain();
    v22 = static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    v24 = Error.localizedDescription.getter();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_10003DFBC();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v27 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v27, "Icon loading error occurred: %@", 31, 2, v23);
    v23, v28, v29, v30, v31, v32, v33, v34;
  }

  return result;
}

double sub_10010E128(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  v10 = sub_10003C49C(&qword_1001FDF98, qword_100182250);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = *(a3 + 40);

  [v15 lock];
  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    type metadata accessor for ImageLoader(0);
    v17 = swift_allocObject();
    v24[1] = 0;
    v24[2] = 0;
    v25 = 2;
    Published.init(initialValue:)();
    v23 = v15;
    v18 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
    *(v17 + v18) = [objc_allocWithZone(NSLock) init];
    *(v17 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
    v19 = (v17 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
    *v19 = a1;
    v19[1] = a2;
    swift_beginAccess();

    sub_10003C49C(&qword_1001FDFA0, &qword_10017FE30);
    Published.projectedValue.getter();
    swift_endAccess();
    v20 = swift_allocObject();
    v20[2] = sub_10010E4D4;
    v20[3] = v14;
    v20[4] = a3;
    v20[5] = v17;
    sub_100107FEC();

    Publisher<>.sink(receiveValue:)();

    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();

    sub_100108C88(v24, v17);
    swift_endAccess();

    sub_100086EF0();
    [v23 unlock];
  }

  else
  {
    [v15 unlock];
    a4(0, 1);
  }

  return result;
}

uint64_t sub_10010E49C()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

void sub_10010E4E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v91 = a4;
  v90 = a3;
  v105 = sub_10003C49C(&qword_1001FDF98, qword_100182250);
  v6 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v90 - v7;
  v99 = type metadata accessor for DispatchTimeInterval();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = type metadata accessor for DispatchTime();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v93 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v94 = &v90 - v11;
  v12 = dispatch_group_create();
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v13 + 16) = sub_10010CF18(0, v14);
  v92 = (v13 + 16);
  v101 = v12;
  v102 = v13;
  v107 = v14;
  if (v14)
  {
    v15 = 0;
    v103 = (v6 + 8);
    v16 = (a1 + 40);
    v100 = xmmword_10017EC00;
    v106 = a2;
    do
    {
      v34 = *(v16 - 1);
      v35 = *v16;

      dispatch_group_enter(v12);
      v36 = swift_allocObject();
      v36[2] = v13;
      v36[3] = v15;
      v111 = v36;
      v36[4] = v12;
      v37 = *(a2 + 40);
      swift_retain_n();
      v38 = v12;
      [v37 lock];
      v39 = (v35 >> 56) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v39 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {

        type metadata accessor for ImageLoader(0);
        v17 = swift_allocObject();
        v112[1] = 0;
        v112[2] = 0;
        v113 = 2;
        Published.init(initialValue:)();
        v109 = v37;
        v18 = OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock;
        *(v17 + v18) = [objc_allocWithZone(NSLock) init];
        *(v17 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 0;
        v19 = (v17 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
        *v19 = v34;
        v19[1] = v35;
        swift_beginAccess();

        sub_10003C49C(&qword_1001FDFA0, &qword_10017FE30);
        v20 = v104;
        Published.projectedValue.getter();
        swift_endAccess();
        v21 = swift_allocObject();
        v110 = v15;
        v22 = v111;
        v21[2] = sub_10010ED60;
        v21[3] = v22;
        v21[4] = a2;
        v21[5] = v17;
        sub_100107FEC();

        v108 = v35;
        v23 = v13;
        v24 = v12;
        v25 = v105;
        Publisher<>.sink(receiveValue:)();

        v26 = v25;
        v12 = v24;
        v13 = v23;
        (*v103)(v20, v26);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        swift_beginAccess();

        sub_100108C88(v112, v17);
        swift_endAccess();

        sub_100086EF0();
        [v109 unlock];

        v108, v27, v28, v29, v30, v31, v32, v33;
        v15 = v110;
      }

      else
      {
        [v37 unlock];
        sub_10010C574();
        swift_allocError();
        *v40 = 0;
        v40[1] = 0;
        swift_errorRetain();
        v41 = static os_log_type_t.error.getter();
        sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
        v42 = swift_allocObject();
        *(v42 + 16) = v100;
        swift_getErrorValue();
        v43 = Error.localizedDescription.getter();
        v45 = v44;
        *(v42 + 56) = &type metadata for String;
        *(v42 + 64) = sub_10003DFBC();
        *(v42 + 32) = v43;
        *(v42 + 40) = v45;
        v13 = v102;
        sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
        v46 = static OS_os_log.default.getter();
        v12 = v101;
        os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v46, "Icon loading error occurred: %@", 31, 2, v42);
        v42, v47, v48, v49, v50, v51, v52, v53;

        dispatch_group_leave(v38);
        v35, v54, v55, v56, v57, v58, v59, v60;
      }

      ++v15;
      v16 += 2;
      a2 = v106;
    }

    while (v107 != v15);
  }

  v61 = v93;
  static DispatchTime.now()();
  v62 = v95;
  *v95 = 10;
  v63 = v98;
  v64 = v99;
  (*(v98 + 104))(v62, enum case for DispatchTimeInterval.seconds(_:), v99);
  v65 = v94;
  + infix(_:_:)();
  (*(v63 + 8))(v62, v64);
  v66 = *(v96 + 8);
  v67 = v97;
  v66(v61, v97);
  v68 = v12;
  OS_dispatch_group.wait(timeout:)();
  v66(v65, v67);
  v69 = v92;
  swift_beginAccess();
  v70 = *v69;
  v71 = &_swiftEmptyArrayStorage;
  v112[0] = &_swiftEmptyArrayStorage;
  v72 = *(v70 + 16);

  for (i = 0; ; ++i)
  {
    if (v72 == i)
    {
      v70, v73, v74, v75, v76, v77, v78, v79;
      sub_1000EFD24(v90, v91);

      v71, v83, v84, v85, v86, v87, v88, v89;
      return;
    }

    if (i >= *(v70 + 16))
    {
      break;
    }

    v81 = *(v70 + 8 * i + 32);
    if (v81)
    {
      v82 = v81;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v71 = v112[0];
      v68 = v101;
    }
  }

  __break(1u);
}

uint64_t sub_10010ED24(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 24, 7, v9);
}

unint64_t sub_10010ED6C()
{
  result = qword_100201A20;
  if (!qword_100201A20)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201A20);
  }

  return result;
}

uint64_t sub_10010EDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModalPresentationCoordinator.QueueEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010EE28()
{

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_10010EE68()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_10010EEA8()
{

  return _swift_deallocObject(v0, 48, 7, v1);
}

uint64_t sub_10010EEF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10010EF40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10010EF94(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10010EFAC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

double sub_10010F060(uint64_t a1)
{
  v2 = v1;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10003DAAC(v3, qword_10020A510);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    type metadata accessor for DSHardwareButtonEvents(0);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    v11 = sub_100056B7C(v8, v9, &v24);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Consuming %s event", v6, 0xCu);
    sub_100044554(v7);
  }

  v20 = v2 + OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler;
  v21 = *(v2 + OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler);
  if (v21)
  {
    v22 = *(v20 + 8);

    v21(v23);
    return sub_10003C52C(v21, v22);
  }

  return result;
}

id sub_10010F244(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ButtonEventsConsumer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10010F2B0()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10010F35C;

  return sub_10010F978();
}

uint64_t sub_10010F35C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010F498, v1, v0);
}

uint64_t sub_10010F498()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_10010F4F8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentVerticalMargin] = 0x4032000000000000;
  *&v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentLeadingMargin] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentTrailingMargin] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_chevronTrailingMargin] = 0xC020000000000000;
  *&v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_mainStackViewSpacing] = 0x4028000000000000;
  v9 = OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_mainLayout;
  *&v4[v9] = [objc_allocWithZone(UIStackView) init];
  v10 = OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_imageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = &v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentView];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_fileBrowsingURL] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ReviewableFileView();
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  sub_10010F67C();

  return v12;
}

void sub_10010F67C()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_mainLayout];
  [v1 setAxis:0];
  [v1 setAlignment:3];
  [v1 setSpacing:12.0];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_imageView];
  [v2 setContentMode:1];
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v3];
  [v0 addSubview:v1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10017ED60;
  v6 = [v1 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [v1 trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [v1 topAnchor];
  v13 = [v0 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [v1 bottomAnchor];
  v16 = [v0 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5, v18, v19, v20, v21, v22, v23, v24;
  [v4 activateConstraints:isa];
}

uint64_t sub_10010F978()
{
  v1[2] = v0;
  sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for UIListContentConfiguration();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_10010FAA4, v4, v3);
}

uint64_t sub_10010FAA4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_mainLayout);
  v0[10] = v1;
  v2 = [v1 arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090, UIView_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v13 = *(v3 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 removeFromSuperview];

      ++v12;
      if (v15 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v16 = v0[2];
  v3, v4, v5, v6, v7, v8, v9, v10;
  v17 = *(v16 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_fileBrowsingURL);
  v0[11] = v17;
  if (v17)
  {
    v18 = v0[3];
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v17;
    swift_retain_n();
    v21 = sub_1001101E4(0, 0, v18, &unk_1001849D8, v20);
    v0[12] = v21;
    sub_10011064C(v18);
    v22 = swift_task_alloc();
    v0[13] = v22;
    *v22 = v0;
    v22[1] = sub_10010FD70;
    v23 = v0[6];
    v24 = v0[4];

    return Task<>.value.getter(v23, v21, v24);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10010FD70()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10010FEB4, v3, v2);
}

uint64_t sub_10010FEB4()
{
  UIListContentConfiguration.directionalLayoutMargins.setter();
  if (sub_1000AD234())
  {
    v1 = [objc_opt_self() secondaryLabelColor];
    v2 = objc_opt_self();
    v3 = [v2 configurationWithHierarchicalColor:v1];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v4 = [v2 configurationWithTraitCollection:0];

      v3 = v4;
    }

    v5 = *(v0[2] + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_imageView);
    v6 = v3;
    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

    if (v8)
    {
      v9 = [v8 imageWithAlignmentRectInsets:{0.0, 0.0, 0.0, -8.0}];
    }

    else
    {
      v9 = 0;
    }

    [v5 setImage:v9];
  }

  else
  {
    v5 = *(v0[2] + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_imageView);
    [v5 setImage:0];
  }

  v10 = v0[10];
  v11 = v0[6];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[2];
  v15 = UIListContentConfiguration.makeContentView()();
  v16 = (v14 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentView);
  v17 = *(v14 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentView);
  *v16 = v15;
  v16[1] = v18;
  v19 = v15;

  [v10 addArrangedSubview:v19];

  [v10 addArrangedSubview:v5];

  (*(v13 + 8))(v11, v12);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100110164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100110184, 0, 0);
}

uint64_t sub_100110184()
{
  sub_1000AD404();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001101E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000F00F0(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10011064C(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for UIListContentConfiguration();

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for UIListContentConfiguration();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_100110494()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewableFileView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100110558()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_100110598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003DEC8;

  return sub_100110164(a1, v4, v5, v6);
}

uint64_t sub_10011064C(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001106B4()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_1001106EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000494BC;

  return sub_100056908(a1, v4);
}

uint64_t sub_1001107A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003DEC8;

  return sub_100056908(a1, v4);
}

void sub_10011085C()
{
  *(v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentVerticalMargin) = 0x4032000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentLeadingMargin) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentTrailingMargin) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_chevronTrailingMargin) = 0xC020000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_mainStackViewSpacing) = 0x4028000000000000;
  v1 = OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_mainLayout;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_imageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = (v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_contentView);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_fileBrowsingURL) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100110CC8(uint64_t a1)
{
  v28 = a1;
  v2 = type metadata accessor for TargetDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  __chkstk_darwin(v6 - 8);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v26 = &v26 - v9;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_10003C49C(&qword_100201B80, qword_100184A68);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_device;
  swift_beginAccess();
  v18 = *(v14 + 56);
  sub_100044704(v1 + v17, v16, &qword_1001FFE10, qword_100181340);
  sub_100044704(v28, &v16[v18], &qword_1001FFE10, qword_100181340);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10003DD84(v16, &qword_1001FFE10, qword_100181340);
    }

    goto LABEL_6;
  }

  sub_100044704(v16, v12, &qword_1001FFE10, qword_100181340);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_10003DD84(v16, &qword_100201B80, qword_100184A68);
LABEL_7:
    v20 = *(v1 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_targetDeviceView);
    v16 = v26;
    sub_100044704(v1 + v17, v26, &qword_1001FFE10, qword_100181340);
    v21 = OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device;
    swift_beginAccess();
    v22 = v27;
    sub_100044704(v20 + v21, v27, &qword_1001FFE10, qword_100181340);
    swift_beginAccess();
    sub_10008CF1C(v16, v20 + v21);
    swift_endAccess();
    sub_100122594(v22);
    sub_10003DD84(v22, &qword_1001FFE10, qword_100181340);
    return sub_10003DD84(v16, &qword_1001FFE10, qword_100181340);
  }

  (*(v3 + 32))(v5, &v16[v18], v2);
  sub_100112D58();
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v3 + 8);
  v25(v5, v2);
  v25(v12, v2);
  result = sub_10003DD84(v16, &qword_1001FFE10, qword_100181340);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1001110D4()
{
  v1 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v1 - 8);
  v3 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v75 = v0;
  v76 = &v67 - v6;
  v74 = *(v0 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_fileReviewStackView);
  v7 = [v74 arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090, UIView_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v18 = *(v8 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 removeFromSuperview];

      ++v17;
      if (v20 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v8, v9, v10, v11, v12, v13, v14, v15;
  v21 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files;
  v22 = *(v75 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files);
  if (v22 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_16;
    }

LABEL_36:
    type metadata accessor for PaddedLabel();
    v76 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000022, 0x8000000100192A70);
    v53 = v52;
    v54 = String._bridgeToObjectiveC()();
    v53, v55, v56, v57, v58, v59, v60, v61;
    [v76 setText:v54];

    v62 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v76 setFont:v62];

    v63 = [objc_opt_self() secondaryLabelColor];
    [v76 setTextColor:v63];

    [v76 setTextAlignment:1];
    v64 = v76;
    v65 = &v76[OBJC_IVAR____TtC11DiagnosticsP33_8A86E77067E9CB1515C284E58CEE59BA11PaddedLabel_padding];
    *v65 = xmmword_1001849F0;
    *(v65 + 1) = xmmword_1001849F0;
    [v64 invalidateIntrinsicContentSize];
    [v74 addArrangedSubview:v76];
    v66 = v76;

    return;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_16:
  v23 = *(v75 + v21);
  if (v23 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      return;
    }
  }

  type metadata accessor for ReviewableFileView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v72 = type metadata accessor for MainActor();
  if (v24 < 1)
  {
    __break(1u);
  }

  else
  {
    v68 = v23 & 0xC000000000000001;
    v69 = "handleFileTapped:";

    v25 = 0;
    v26 = &unk_1001FFE20;
    v70 = v24;
    v71 = v23;
    do
    {
      if (v68)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v38 = *&v23->remoteCardFilter[8 * v25];
      }

      v39 = [objc_allocWithZone(ObjCClassFromMetadata) init];
      *&v39[OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_fileBrowsingURL] = v38;
      swift_retain_n();

      v40 = type metadata accessor for TaskPriority();
      v41 = *(v40 - 8);
      v42 = v76;
      (*(v41 + 56))(v76, 1, 1, v40);
      v43 = v39;
      v44 = static MainActor.shared.getter();
      v45 = swift_allocObject();
      v45[2] = v44;
      v45[3] = &protocol witness table for MainActor;
      v45[4] = v43;
      sub_100044704(v42, v3, v26, &unk_10017ED10);
      LODWORD(v44) = (*(v41 + 48))(v3, 1, v40);

      if (v44 == 1)
      {
        sub_10003DD84(v3, v26, &unk_10017ED10);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v41 + 8))(v3, v40);
      }

      v46 = v26;
      v47 = v45[2];
      swift_unknownObjectRetain();

      if (v47)
      {
        swift_getObjectType();
        v48 = dispatch thunk of Actor.unownedExecutor.getter();
        v50 = v49;
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      sub_10003DD84(v76, v46, &unk_10017ED10);
      v51 = swift_allocObject();
      *(v51 + 16) = &unk_100184A58;
      *(v51 + 24) = v45;
      if (v50 | v48)
      {
        v77 = 0;
        v78 = 0;
        v79 = v48;
        v80 = v50;
      }

      v27 = v70;
      v23 = v71;
      ++v25;
      swift_task_create();

      v28 = objc_allocWithZone(UITapGestureRecognizer);
      v29 = [v28 initWithTarget:v75 action:v69];
      [v43 addGestureRecognizer:v29];

      [v74 addArrangedSubview:v43];

      v37 = v27 == v25;
      v26 = v46;
    }

    while (!v37);
    v23, v30, v31, v32, v33, v34, v35, v36;
  }
}

void sub_1001117C0()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_fileReviewStackView];
  [v1 setAxis:1];
  [v1 setSpacing:0.0];
  [v0 setSelectionStyle:0];
  v2 = [objc_opt_self() systemGroupedBackgroundColor];
  [v0 setBackgroundColor:v2];

  if (_UISolariumEnabled())
  {
    v3 = [v0 layer];
    [v3 setCornerRadius:26.0];
  }
}

void sub_1001118C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView;
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView];
  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_targetDeviceView];
  v5 = v3;
  v6 = v4;
  sub_100131CE8(v4);

  v7 = *&v1[v2];
  v8 = *&v1[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_fileReviewStackView];
  v9 = *&v7[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_detailsView];
  *&v7[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_detailsView] = v8;
  v10 = v8;
  v11 = v7;
  sub_100131DB8(v9);

  v12 = [v1 contentView];
  [v12 addSubview:*&v1[v2]];

  v13 = [v1 contentView];
  [v13 invalidateIntrinsicContentSize];

  sub_1001110D4();
}

void sub_1001119D8()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_targetDeviceView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView;
  [*&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10017EDA0;
  v5 = [v1 heightAnchor];
  v6 = [v5 constraintEqualToConstant:80.0];

  *(v4 + 32) = v6;
  v7 = [*&v0[v2] leadingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor:v9];
  *(v4 + 40) = v10;
  v11 = [*&v0[v2] trailingAnchor];
  v12 = [v0 contentView];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v4 + 48) = v14;
  v15 = [*&v0[v2] topAnchor];
  v16 = [v0 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v4 + 56) = v18;
  v19 = [*&v0[v2] bottomAnchor];
  v20 = [v0 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor:v21];
  *(v4 + 64) = v22;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4, v23, v24, v25, v26, v27, v28, v29;
  [v3 activateConstraints:isa];
}

void sub_100111D0C()
{
  v1 = sub_10003C49C(&qword_1001FFE10, qword_100181340);
  __chkstk_darwin(v1 - 8);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v21[-v5];
  v7 = type metadata accessor for DeviceFileReviewCell(0);
  v22.receiver = v0;
  v22.super_class = v7;
  objc_msgSendSuper2(&v22, "prepareForReuse");
  v8 = type metadata accessor for TargetDevice();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_device;
  swift_beginAccess();
  sub_100044704(&v0[v9], v3, &qword_1001FFE10, qword_100181340);
  swift_beginAccess();
  sub_10008CF1C(v6, &v0[v9]);
  swift_endAccess();
  sub_100110CC8(v3);
  sub_10003DD84(v3, &qword_1001FFE10, qword_100181340);
  sub_10003DD84(v6, &qword_1001FFE10, qword_100181340);
  v10 = *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files];
  *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files] = &_swiftEmptyArrayStorage;
  v11 = sub_10011291C(&_swiftEmptyArrayStorage, v10);
  v10, v12, v13, v14, v15, v16, v17, v18;
  if ((v11 & 1) == 0)
  {
    sub_1001110D4();
  }

  v19 = *&v0[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView];
  v19[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded] = 0;
  v20 = v19;
  sub_1001321AC();
}

void sub_100111F3C(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v7 = v2;
    type metadata accessor for ReviewableFileView();
    v3 = swift_dynamicCastClass();
    if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC11Diagnostics18ReviewableFileView_fileBrowsingURL)) != 0 && (v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL)) != 0)
    {
      v6 = *(v1 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL + 8);

      sub_10003C48C(v5, v6);
      v5(v4);
      sub_10005A598(v5, v6);
    }

    else
    {
    }
  }
}

void sub_1001120B4(uint64_t a1, uint64_t a2, DARootViewController *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_headerViewHeight] = 0x4054000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expansionViewCornerRadius] = 0x403A000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_noFilesVerticalPadding] = 0x4038000000000000;
  v7 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_device;
  v8 = type metadata accessor for TargetDevice();
  v9 = *(*(v8 - 8) + 56);
  v9(&v4[v7], 1, 1, v8);
  *&v4[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files] = &_swiftEmptyArrayStorage;
  v10 = &v4[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for ExpandableSection()) init];
  sub_10008CB7C(v32);
  v12 = type metadata accessor for TargetDeviceDescriptionView(0);
  v13 = objc_allocWithZone(v12);
  v9(&v13[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device], 1, 1, v8);
  *&v13[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView] = 0;
  *&v13[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView] = 0;
  *&v13[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView] = 0;
  v14 = &v13[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
  *v14 = v32[0];
  v15 = v32[1];
  v16 = v32[2];
  v17 = v32[3];
  *(v14 + 8) = v33;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 1) = v15;
  sub_1000CC778(v32, v31);
  v30.receiver = v13;
  v30.super_class = v12;
  v18 = objc_msgSendSuper2(&v30, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001229B0();
  if (*&v18[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView])
  {
    v19 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_targetDeviceView;
    [v18 addSubview:?];
    sub_100122AFC();
    sub_100122E00();
    sub_1000CC900(v32);

    *&v4[v19] = v18;
    v20 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_fileReviewStackView;
    *&v4[v20] = [objc_allocWithZone(UIStackView) init];
    if (a3)
    {
      v21 = String._bridgeToObjectiveC()();
      a3, v22, v23, v24, v25, v26, v27, v28;
    }

    else
    {
      v21 = 0;
    }

    v29.receiver = v4;
    v29.super_class = type metadata accessor for DeviceFileReviewCell(0);
    objc_msgSendSuper2(&v29, "initWithStyle:reuseIdentifier:", a1, v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001123B4(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_headerViewHeight] = 0x4054000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expansionViewCornerRadius] = 0x403A000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_noFilesVerticalPadding] = 0x4038000000000000;
  v4 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_device;
  v5 = type metadata accessor for TargetDevice();
  v6 = *(*(v5 - 8) + 56);
  v6(&v2[v4], 1, 1, v5);
  *&v2[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files] = &_swiftEmptyArrayStorage;
  v7 = &v2[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for ExpandableSection()) init];
  sub_10008CB7C(v22);
  v9 = type metadata accessor for TargetDeviceDescriptionView(0);
  v10 = objc_allocWithZone(v9);
  v6(&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_device], 1, 1, v5);
  *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView] = 0;
  *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_detailsStackView] = 0;
  *&v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_deviceImageView] = 0;
  v11 = &v10[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_configuration];
  *v11 = v22[0];
  v12 = v22[1];
  v13 = v22[2];
  v14 = v22[3];
  *(v11 + 8) = v23;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 1) = v12;
  sub_1000CC778(v22, v21);
  v20.receiver = v10;
  v20.super_class = v9;
  v15 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001229B0();
  if (*&v15[OBJC_IVAR____TtC11Diagnostics27TargetDeviceDescriptionView_stackView])
  {
    v16 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_targetDeviceView;
    [v15 addSubview:?];
    sub_100122AFC();
    sub_100122E00();
    sub_1000CC900(v22);

    *&v2[v16] = v15;
    v17 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_fileReviewStackView;
    *&v2[v17] = [objc_allocWithZone(UIStackView) init];
    v19.receiver = v2;
    v19.super_class = type metadata accessor for DeviceFileReviewCell(0);
    v18 = objc_msgSendSuper2(&v19, "initWithCoder:", a1);

    if (v18)
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100112670()
{
  sub_10003DD84(v0 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_device, &qword_1001FFE10, qword_100181340);
  *(v0 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files), v1, v2, v3, v4, v5, v6, v7;
  sub_10005A598(*(v0 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL), *(v0 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL + 8));

  v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_fileReviewStackView);
}

id sub_10011271C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for DeviceFileReviewCell(uint64_t a1)
{
  result = qword_100201B70;
  if (!qword_100201B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100112850(uint64_t a1)
{
  sub_1000CC568(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10011291C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            goto LABEL_26;
          }
        }

        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        LOBYTE(v4) = static URL.== infix(_:_:)();

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v14 = (v3 + 32);
    v15 = (a2 + 32);
    v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v5 - 1;
    while (1)
    {
      if (!v16)
      {
        goto LABEL_40;
      }

      if (!v17)
      {
        break;
      }

      v19 = *v14++;
      a2 = v19;
      v20 = *v15++;
      v3 = v20;

      v4 = static URL.== infix(_:_:)();

      v22 = v18-- != 0;
      if (v4)
      {
        --v17;
        --v16;
        if (v22)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_100112B74()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_100112BB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_10010F2B0();
}

uint64_t sub_100112C68()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_100112CA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003DEC8;

  return sub_100056810(a1, v4);
}

unint64_t sub_100112D58()
{
  result = qword_100201EE0;
  if (!qword_100201EE0)
  {
    type metadata accessor for TargetDevice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201EE0);
  }

  return result;
}

double sub_100112DCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel);
  v2 = objc_opt_self();
  v3 = [v2 defaultMetrics];
  v4 = objc_opt_self();
  v5 = [v4 boldSystemFontOfSize:14.0];
  v6 = [v3 scaledFontForFont:v5];

  [v1 setFont:v6];
  [v1 setNumberOfLines:0];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  [v1 setTextColor:v8];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *(v0 + OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel);
  v10 = [v2 defaultMetrics];
  v11 = [v4 systemFontOfSize:14.0];
  v12 = [v10 scaledFontForFont:v11];

  [v9 setFont:v12];
  v13 = [v7 secondaryLabelColor];
  [v9 setTextColor:v13];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  return sub_10011351C();
}

void sub_100112FE0()
{
  v1 = [v0 contentView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel]];

  v2 = [v0 contentView];
  [v2 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel]];
}

void sub_100113084()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel];
  v42 = v1;
  v2 = [v1 leadingAnchor];
  v3 = [v0 contentView];
  v4 = [v3 leadingAnchor];

  v40 = [v2 constraintEqualToAnchor:v4 constant:15.0];
  v5 = [v1 trailingAnchor];
  v6 = [v0 contentView];
  v7 = [v6 trailingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:-15.0];
  v9 = *&v0[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel];
  v10 = [v9 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v45 = [v10 constraintEqualToAnchor:v11 constant:15.0];

  v12 = [v9 trailingAnchor];
  v13 = [v0 trailingAnchor];
  v43 = [v12 constraintEqualToAnchor:v13 constant:-15.0];

  LODWORD(v14) = 1148829696;
  [v40 setPriority:v14];
  LODWORD(v15) = 1148829696;
  [v8 setPriority:v15];
  LODWORD(v16) = 1148829696;
  [v45 setPriority:v16];
  LODWORD(v17) = 1148829696;
  [v43 setPriority:v17];
  v44 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100181CB0;
  v19 = [v42 topAnchor];
  v20 = [v0 contentView];
  v21 = [v20 topAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:12.0];
  *(v18 + 32) = v22;
  *(v18 + 40) = v40;
  *(v18 + 48) = v8;
  v41 = v40;
  v23 = v8;
  v24 = [v9 topAnchor];
  v25 = [v42 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:2.0];

  *(v18 + 56) = v26;
  v27 = [v9 bottomAnchor];
  v28 = [v0 contentView];
  v29 = [v28 bottomAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:-12.0];
  *(v18 + 64) = v30;
  *(v18 + 72) = v45;
  *(v18 + 80) = v43;
  sub_10007E540();
  v31 = v45;
  v32 = v43;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18, v33, v34, v35, v36, v37, v38, v39;
  [v44 activateConstraints:isa];
}

double sub_10011351C()
{
  [*&v0[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel] setAlpha:0.0];
  [*&v0[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel] setAlpha:0.0];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_opt_self();
  v6[4] = sub_1001139F0;
  v6[5] = v1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100031FA8;
  v6[3] = &unk_1001C7038;
  v3 = _Block_copy(v6);
  v4 = v0;

  [v2 animateWithDuration:0x10000 delay:v3 options:0 animations:0.375 completion:0.0];
  _Block_release(v3);

  return result;
}

id sub_100113660(uint64_t a1, uint64_t a2, DARootViewController *a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_fontSizeSuiteTitle] = 0x402C000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_fontSizeDate] = 0x402C000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_verticalMargin] = 0x4028000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_verticalPadding] = 0x4000000000000000;
  v6 = OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel;
  *&v3[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
    a3, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v8 = 0;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for HistoryTableViewCell();
  v16 = objc_msgSendSuper2(&v18, "initWithStyle:reuseIdentifier:", a1, v8);

  return v16;
}

id sub_1001137C0(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_fontSizeSuiteTitle] = 0x402C000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_fontSizeDate] = 0x402C000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_verticalMargin] = 0x4028000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_verticalPadding] = 0x4000000000000000;
  v3 = OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HistoryTableViewCell();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1001138D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel);
}

id sub_100113914()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HistoryTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001139B8()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

id sub_1001139F0()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_suiteLabel) setAlpha:1.0];
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics20HistoryTableViewCell_dateLabel);

  return [v2 setAlpha:1.0];
}

double sub_100113A50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100113A68()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer];
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = [v1 layer];
  if (qword_1001FC750 != -1)
  {
    swift_once();
  }

  [v3 setCornerRadius:*&qword_10020A3D8];

  [v1 setClipsToBounds:0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView];
  [v4 setAxis:1];
  [v4 setDistribution:0];
  [v4 setAlignment:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *&v0[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView];
  v6 = type metadata accessor for CardViewSessionCell();
  v14 = v6;
  v15 = &off_1001C7078;
  v13[0] = v0;
  v7 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_delegate;
  swift_beginAccess();
  v8 = v0;
  sub_1001196C4(v13, v5 + v7, &unk_1001FD4D0, &unk_100184AF0);
  swift_endAccess();
  v9 = *&v8[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView];
  v14 = v6;
  v15 = &off_1001C7060;
  v13[0] = v8;
  v10 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate;
  swift_beginAccess();
  v11 = v8;
  sub_1001196C4(v13, v9 + v10, &qword_1001FD030, &unk_10017EEE0);
  return swift_endAccess();
}

void sub_100113CA0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer];
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView];
  [v2 addSubview:v3];
  v4 = [v1 contentView];
  [v4 addSubview:v2];

  v5 = *&v1[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView];
  v6 = [v3 arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090, UIView_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7, v8, v9, v10, v11, v12, v13, v14;
  sub_1000E9D04(v5, v15, 0);
}

double sub_100113DC4()
{
  *(*(v0 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView) + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_state) = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
  swift_retain_n();

  sub_10003E6C8();

  return result;
}

void sub_100113E48(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (&v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = type metadata accessor for DispatchQoS();
  v6 = *(v68 - 8);
  __chkstk_darwin(v68);
  v8 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v66 - v14;
  if (*(a1 + 19) != 1)
  {
    sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
    v66 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v67 = *(v10 + 8);
    v67(v12, v9);
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    aBlock[4] = sub_1001196A0;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C7650;
    v26 = _Block_copy(aBlock);
    v27 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = v66;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v26);

    (*(v69 + 8))(v5, v3);
    (*(v6 + 8))(v8, v68);
    v67(v15, v9);
    return;
  }

  v16 = sub_100066608();
  type metadata accessor for DashboardViewController();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {

    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v29 = qword_10020A4F8;
    v30 = static os_log_type_t.error.getter();

    os_log(_:dso:log:type:_:)("Attempted to update card session cell full screen when not in a card session!", 77, 2, &_mh_execute_header, v29, v30, &_swiftEmptyArrayStorage);
    return;
  }

  v18 = *(v17 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager);
  v19 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v20 = *(v18 + v19);
  if (!*(v20 + 16))
  {
    v24 = 0;
    goto LABEL_19;
  }

  v21 = sub_100068EB8();
  if (v22)
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    if (v23 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (!*(v20 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!*(v20 + 16))
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v24 = 0;
    if (!*(v20 + 16))
    {
      goto LABEL_19;
    }
  }

  v31 = sub_100068EB8();
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

  v33 = *(*(v20 + 56) + 8 * v31);
  if (v33 >> 62)
  {
    v65 = _CocoaArrayWrapper.endIndex.getter();
    v35 = __OFADD__(v24, v65);
    v24 += v65;
    if (v35)
    {
      goto LABEL_34;
    }

LABEL_19:
    v36 = *(a1 + 40);
    v37 = [v36 suiteName];
    if (!v37)
    {

      return;
    }

    v38 = v37;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v39;

    v8 = *(a1 + 56);
    if (!v8)
    {
      v5, v40, v41, v42, v43, v44, v45, v46;

      return;
    }

    v19 = *(a1 + 64);

    v47 = [v36 sessionSettings];
    v48 = [v47 fullscreenPromptsEnabled];

    if (v48)
    {
      goto LABEL_28;
    }

    if (qword_1001FC838 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = __OFADD__(v24, v34);
  v24 += v34;
  if (!v35)
  {
    goto LABEL_19;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_23:
  v49 = sub_100066608();
  v50 = [v49 presentedViewController];

  if (v50)
  {

LABEL_28:
    sub_100117874(v20, v5, v8, v19);
    sub_10003C52C(v8, v19);

    v5, v58, v59, v60, v61, v62, v63, v64;
    return;
  }

  if (v24 >= 2)
  {
    goto LABEL_28;
  }

  v5, v51, v52, v53, v54, v55, v56, v57;
  v8(1);

  sub_10003C52C(v8, v19);
}

void sub_1001144D4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView);
  *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType) = a1;
  v3 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel);
  v4 = &OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber;
  if (a1)
  {
    v4 = &OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei;
  }

  v5 = *(v2 + *v4 + 8);
  if (v5)
  {

    v13 = String._bridgeToObjectiveC()();
    v5, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    v13 = 0;
  }

  [v3 setText:v13];
}

void sub_1001145A4(void *a1)
{
  if (a1)
  {
    v56 = a1;
    [v56 floatValue];
    v3 = v2 / 100.0;
    v4 = *(v1 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView);
    v5 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView;
    v6 = *(v4 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView);
    v7 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView;
    v8 = *&v6[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView];
    [v8 alpha];
    if (v3 >= 0.0)
    {
      if (v9 == 1.0)
      {
        [v8 alpha];
        if (v31 == 1.0)
        {
          v32 = swift_allocObject();
          *(v32 + 16) = v8;
          v33 = objc_opt_self();
          v61 = sub_10004487C;
          v62 = v32;
          aBlock = _NSConcreteStackBlock;
          v58 = 1107296256;
          v59 = sub_100031FA8;
          v60 = &unk_1001C74E8;
          v34 = _Block_copy(&aBlock);
          v35 = v8;

          [v33 animateWithDuration:0x20000 delay:v34 options:0 animations:0.125 completion:0.0];
          _Block_release(v34);
        }
      }

      v36 = *&v6[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView];
      v37 = swift_allocObject();
      *(v37 + 16) = v6;
      v38 = v6;
      sub_10006D6C4(v36, sub_100119F94, v37);

      v39 = *&v38[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView];
      [v39 alpha];
      if (v40 == 1.0)
      {
        [v39 alpha];
        if (v41 == 1.0)
        {
          v42 = swift_allocObject();
          *(v42 + 16) = v39;
          v43 = objc_opt_self();
          v61 = sub_10004487C;
          v62 = v42;
          aBlock = _NSConcreteStackBlock;
          v58 = 1107296256;
          v59 = sub_100031FA8;
          v60 = &unk_1001C7498;
          v44 = _Block_copy(&aBlock);
          v45 = v39;

          [v43 animateWithDuration:0x20000 delay:v44 options:0 animations:0.125 completion:0.0];
          _Block_release(v44);
        }
      }

      v46 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView;
      v47 = *(v4 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView);
      [v47 alpha];
      if (v48 == 0.0)
      {
        v49 = swift_allocObject();
        *(v49 + 16) = v47;
        v50 = objc_opt_self();
        v61 = sub_10003E440;
        v62 = v49;
        aBlock = _NSConcreteStackBlock;
        v58 = 1107296256;
        v59 = sub_100031FA8;
        v60 = &unk_1001C7448;
        v51 = _Block_copy(&aBlock);
        v52 = v47;

        [v50 animateWithDuration:0x10000 delay:v51 options:0 animations:0.375 completion:0.0];
        _Block_release(v51);
      }

      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *(v4 + v46));
      [*(v4 + v46) progress];
      v54 = v53 < v3;
      *&v55 = v3;
      [*(v4 + v46) setProgress:v54 animated:v55];
    }

    else
    {
      if (v9 == 0.0)
      {
        [v8 alpha];
        if (v10 == 0.0)
        {
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          v12 = objc_opt_self();
          v61 = sub_10003E440;
          v62 = v11;
          aBlock = _NSConcreteStackBlock;
          v58 = 1107296256;
          v59 = sub_100031FA8;
          v60 = &unk_1001C7600;
          v13 = _Block_copy(&aBlock);
          v14 = v8;

          [v12 animateWithDuration:0x10000 delay:v13 options:0 animations:0.375 completion:0.0];
          _Block_release(v13);
        }
      }

      v15 = *&v6[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView];
      v16 = swift_allocObject();
      *(v16 + 16) = v6;
      v17 = v6;
      sub_10006D6C4(v15, sub_100119F94, v16);

      v18 = *&v17[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView];
      [v18 alpha];
      if (v19 == 1.0)
      {
        [v18 alpha];
        if (v20 == 1.0)
        {
          v21 = swift_allocObject();
          *(v21 + 16) = v18;
          v22 = objc_opt_self();
          v61 = sub_10004487C;
          v62 = v21;
          aBlock = _NSConcreteStackBlock;
          v58 = 1107296256;
          v59 = sub_100031FA8;
          v60 = &unk_1001C75B0;
          v23 = _Block_copy(&aBlock);
          v24 = v18;

          [v22 animateWithDuration:0x20000 delay:v23 options:0 animations:0.125 completion:0.0];
          _Block_release(v23);
        }
      }

      [*&v6[v7] startAnimating];
      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *(v4 + v5));
      v25 = *(v4 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView);
      [v25 alpha];
      if (v26 == 1.0)
      {
        v27 = swift_allocObject();
        *(v27 + 16) = v25;
        v28 = objc_opt_self();
        v61 = sub_10004487C;
        v62 = v27;
        aBlock = _NSConcreteStackBlock;
        v58 = 1107296256;
        v59 = sub_100031FA8;
        v60 = &unk_1001C7560;
        v29 = _Block_copy(&aBlock);
        v30 = v25;

        [v28 animateWithDuration:0x20000 delay:v29 options:0 animations:0.125 completion:0.0];
        _Block_release(v29);

        return;
      }
    }
  }
}

void sub_100114D8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10004BDE0(1u, a1, a2);
  }

  else
  {
    sub_10004BDE0(0, a1, 0);

    sub_100118EC0();
  }
}

void sub_100114DF0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_deviceInformationView);
  v4 = [a1 displayDeviceIdentifier];
  *(v3 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierVisible) = v4;
  v5 = *(v3 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel);
  [v5 alpha];
  if (!v4)
  {
    if (v6 == 1.0)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v5;
      v18 = objc_opt_self();
      v32 = sub_10004487C;
      v33 = v17;
      v28 = _NSConcreteStackBlock;
      v29 = 1107296256;
      v30 = sub_100031FA8;
      v31 = &unk_1001C7330;
      v19 = _Block_copy(&v28);
      v20 = v5;

      [v18 animateWithDuration:0x20000 delay:v19 options:0 animations:0.125 completion:0.0];
      _Block_release(v19);
    }

    v11 = *(v3 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView);
    [v11 alpha];
    if (v21 == 0.0)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = v11;
      v23 = objc_opt_self();
      v32 = sub_10003E440;
      v33 = v22;
      v28 = _NSConcreteStackBlock;
      v29 = 1107296256;
      v30 = sub_100031FA8;
      v31 = &unk_1001C72E0;
      v15 = _Block_copy(&v28);
      v16 = v11;

      [v23 animateWithDuration:0x10000 delay:v15 options:0 animations:0.375 completion:0.0];
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v6 == 0.0)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = objc_opt_self();
    v32 = sub_10003E440;
    v33 = v7;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100031FA8;
    v31 = &unk_1001C73D0;
    v9 = _Block_copy(&v28);
    v10 = v5;

    [v8 animateWithDuration:0x10000 delay:v9 options:0 animations:0.375 completion:0.0];
    _Block_release(v9);
  }

  v11 = *(v3 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView);
  [v11 alpha];
  if (v12 != 1.0)
  {
    goto LABEL_11;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = objc_opt_self();
  v32 = sub_10004487C;
  v33 = v13;
  v28 = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100031FA8;
  v31 = &unk_1001C7380;
  v15 = _Block_copy(&v28);
  v16 = v11;

  [v14 animateWithDuration:0x20000 delay:v15 options:0 animations:0.125 completion:0.0];
LABEL_10:
  _Block_release(v15);

LABEL_12:
  v24 = [a1 deviceIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  sub_10003F294(v25, v27);
}

void sub_10011529C(void *a1, uint64_t a2)
{
  sub_100118EC0();
  sub_100116098(1);
  sub_10004287C(a1, a2);
}

void sub_1001152EC(uint64_t a1)
{
  sub_100118EC0();
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView);
  v3 = [*(v1 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView) arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090, UIView_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4, v5, v6, v7, v8, v9, v10, v11;
  sub_1000E9D04(v2, v12, 1);
  v13 = *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler];
  if (v13)
  {
    v14 = *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler + 8];

    v13(v15);
    sub_10003C52C(v13, v14);
  }

  sub_10004BDE0(0, 0, 0);
  sub_10004287C(2, 5);
}

void sub_100115428(uint64_t a1)
{
  sub_100118EC0();
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView);
  v3 = [*(v1 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView) arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090, UIView_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4, v5, v6, v7, v8, v9, v10, v11;
  sub_1000E9D04(v2, v12, 1);
  v13 = *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler];
  if (v13)
  {
    v14 = *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler + 8];

    v13(v15);
    sub_10003C52C(v13, v14);
  }

  sub_10004287C(2, 5);
  v16 = sub_10004BDE0(4u, 0, 0);
  v17 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView;
  v18 = *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView];
  v42 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView;
  v19 = *&v18[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView];
  [v19 alpha];
  if (v20 == 0.0)
  {
    [v19 alpha];
    if (v21 == 0.0)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = v19;
      v23 = objc_opt_self();
      v47 = sub_10003D8B8;
      v48 = v22;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_100031FA8;
      v46 = &unk_1001C7290;
      v24 = _Block_copy(&aBlock);
      v25 = v19;

      [v23 animateWithDuration:0x10000 delay:v24 options:0 animations:0.375 completion:0.0];
      _Block_release(v24);
    }
  }

  v26 = *&v18[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView];
  v27 = swift_allocObject();
  *(v27 + 16) = v18;
  v28 = v18;
  sub_10006D6C4(v26, sub_100119660, v27);

  v29 = *&v28[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView];
  [v29 alpha];
  if (v30 == 1.0)
  {
    [v29 alpha];
    if (v31 == 1.0)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = v29;
      v41 = objc_opt_self();
      v47 = sub_10004487C;
      v48 = v32;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_100031FA8;
      v46 = &unk_1001C7240;
      v33 = _Block_copy(&aBlock);
      v34 = v29;

      [v41 animateWithDuration:0x20000 delay:v33 options:0 animations:0.125 completion:0.0];
      _Block_release(v33);
    }
  }

  [*&v18[v42] startAnimating];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *&v2[v17]);
  v35 = *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView];
  [v35 alpha];
  if (v36 == 1.0)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    v38 = objc_opt_self();
    v47 = sub_10004487C;
    v48 = v37;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100031FA8;
    v46 = &unk_1001C71F0;
    v39 = _Block_copy(&aBlock);
    v40 = v35;

    [v38 animateWithDuration:0x20000 delay:v39 options:0 animations:0.125 completion:0.0];
    _Block_release(v39);
  }
}

void sub_100115954()
{
  v1 = v0;
  v2 = sub_100066608();
  type metadata accessor for DashboardViewController();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    sub_100118EC0();
    v5 = *&v0[OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView];
    v6 = [*&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView] arrangedSubviews];
    sub_10003E110(0, &qword_1001FF090, UIView_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7, v8, v9, v10, v11, v12, v13, v14;
    sub_1000E9D04(v5, v15, 1);
    v16 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler];
    if (v16)
    {
      v17 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler + 8];

      v16(v18);
      sub_10003C52C(v16, v17);
    }

    sub_10004287C(3, 4);
    sub_10004BDE0(3u, 0, 0);
    v19 = v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_pauseStateAnimation];
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v4;
    v21 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView;
    v22 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView];
    v23 = *(v22 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView);
    v24 = v1;
    v25 = v2;
    [v23 alpha];
    if (v26 == 1.0)
    {
      if (v19)
      {
        [v23 setAlpha:0.0];
      }

      else
      {
        [v23 alpha];
        if (v29 == 1.0)
        {
          v30 = swift_allocObject();
          *(v30 + 16) = v23;
          v51 = sub_10004487C;
          v52 = v30;
          v46 = objc_opt_self();
          aBlock = _NSConcreteStackBlock;
          v48 = 1107296256;
          v49 = sub_100031FA8;
          v50 = &unk_1001C7178;
          v31 = _Block_copy(&aBlock);
          v32 = v23;

          [v46 animateWithDuration:0x20000 delay:v31 options:0 animations:0.125 completion:0.0];
          _Block_release(v31);
        }
      }
    }

    sub_1000856BC(v19 ^ 1, sub_100119640, v20);
    v33 = *(v22 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView);
    [v33 alpha];
    if (v34 == 1.0)
    {
      if (v19)
      {
        [v33 setAlpha:0.0];
      }

      else
      {
        [v33 alpha];
        if (v35 == 1.0)
        {
          v36 = swift_allocObject();
          *(v36 + 16) = v33;
          v37 = objc_opt_self();
          v51 = sub_10004487C;
          v52 = v36;
          aBlock = _NSConcreteStackBlock;
          v48 = 1107296256;
          v49 = sub_100031FA8;
          v50 = &unk_1001C7128;
          v38 = _Block_copy(&aBlock);
          v39 = v33;

          [v37 animateWithDuration:0x20000 delay:v38 options:0 animations:0.125 completion:0.0];
          _Block_release(v38);
        }
      }
    }

    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *&v5[v21]);
    v40 = *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView];
    [v40 alpha];
    if (v41 == 1.0)
    {
      v42 = swift_allocObject();
      *(v42 + 16) = v40;
      v43 = objc_opt_self();
      v51 = sub_100044298;
      v52 = v42;
      aBlock = _NSConcreteStackBlock;
      v48 = 1107296256;
      v49 = sub_100031FA8;
      v50 = &unk_1001C70D8;
      v44 = _Block_copy(&aBlock);
      v45 = v40;

      [v43 animateWithDuration:0x20000 delay:v44 options:0 animations:0.125 completion:0.0];
      _Block_release(v44);
    }

    else
    {
    }
  }

  else
  {

    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v27 = qword_10020A4F8;
    v28 = static os_log_type_t.error.getter();

    os_log(_:dso:log:type:_:)("Attempted to archive layout when not in card session!", 53, 2, &_mh_execute_header, v27, v28, &_swiftEmptyArrayStorage);
  }
}

void sub_100115F74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if ((v5 & 1) == 0 && !sub_1000660CC() && (*(a2 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_pauseStateAnimation) & 1) == 0)
  {
    v6 = a3;
    sub_1000E8DD8(0, 0, v6);
  }
}

void sub_100116044(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    *(*(a2 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager) + OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly) = 1;
    sub_100151130();
  }
}

void sub_100116098(int a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView);
  v5 = [v4 arrangedSubviews];
  sub_10003E110(0, &qword_1001FF090, UIView_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_15:
    v6, v7, v8, v9, v10, v11, v12, v13;
    v29 = &_swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_3:
  v43 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v14 < 0)
  {
    __break(1u);
    return;
  }

  v40 = v2;
  v41 = v4;
  v42 = a1;
  v15 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v23 = *(v6 + 8 * v15 + 32);
    }

    v24 = v23;
    v25 = [objc_allocWithZone(UIView) init];
    type metadata accessor for CardStackSubviewContainer();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {
      goto LABEL_5;
    }

    v27 = *(v26 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
    v27;

    if (v27)
    {
      v24 = v25;
LABEL_5:
    }

    ++v15;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v14 != v15);
  v6, v16, v17, v18, v19, v20, v21, v22;
  v29 = v43;
  LOBYTE(a1) = v42;
  v2 = v40;
LABEL_16:
  v30 = *(v2 + OBJC_IVAR____TtC11Diagnostics19CardViewSessionCell_testRunnerView);
  v43 = v30;
  __chkstk_darwin(v28);
  v39[2] = &v43;
  v31 = sub_1000785D4(sub_1001199DC, v39, v29);
  v29, v32, v33, v34, v35, v36, v37, v38;
  if (v31)
  {
    sub_1000E9EE4(v30, a1 & 1);
  }
}

void sub_100116300(void *a1)
{
  v282 = 0;
  v284 = a1;
  v2 = [a1 errors];
  sub_10003C49C(&qword_100201C30, &unk_100183150);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v286 = sub_10014B558(v3, v4);
  v3, v5, v6, v7, v8, v9, v10, v11;
  v275 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState;
  v276 = v1;
  v12 = *(v1 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
  v13 = &_swiftEmptyArrayStorage;
  if (!v12)
  {
LABEL_23:
    v314 = v13;

    sub_100074824(v286);
    v16 = v314;
    if (v314 >> 62)
    {
      goto LABEL_118;
    }

    v38 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_25;
    }

LABEL_119:
    v13, v31, v32, v33, v34, v35, v36, v37;
    v16, v259, v260, v261, v262, v263, v264, v265;
    return;
  }

  swift_beginAccess();
  v14 = *(v12 + 72);
  v314 = &_swiftEmptyArrayStorage;
  if ((v14 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_10003E110(0, &qword_100202990, NSError_ptr);
    sub_1000AC8BC(&qword_1001FFED0, &qword_100202990, NSError_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v14 = v289[5];
    v15 = v289[6];
    v16 = v289[7];
    v17 = v289[8];
    v18 = v289[9];
  }

  else
  {
    v19 = -1 << *(v14 + 32);
    v15 = (v14 + 56);
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = (v21 & *(v14 + 56));

    v17 = 0;
  }

  v285 = v16;
  v22 = (v16 + 64) >> 6;
  while (v14 < 0)
  {
    v28 = __CocoaSet.Iterator.next()();
    if (!v28 || (v304 = v28, sub_10003E110(0, &qword_100202990, NSError_ptr), v26 = swift_dynamicCast(), v27 = v309, v13 = v17, v25 = v18, !v309))
    {
LABEL_22:
      sub_10004A320(v14);
      v13 = v314;
      goto LABEL_23;
    }

LABEL_20:
    v16 = &v268;
    v309 = v27;
    __chkstk_darwin(v26);
    v267 = &v309;
    v29 = v282;
    v30 = sub_1000785D4(sub_100119F78, v266, v286);
    v282 = v29;
    if (v30)
    {
    }

    else
    {
      v16 = &v314;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    v17 = v13;
    v18 = v25;
  }

  v23 = v17;
  v24 = v18;
  v13 = v17;
  if (v18)
  {
LABEL_16:
    v25 = (v24 - 1) & v24;
    v26 = *(*(v14 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v24)))));
    v27 = v26;
    if (!v26)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v13 = (v23 + 1);
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v22)
    {
      goto LABEL_22;
    }

    v24 = v15[v13];
    ++v23;
    if (v24)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_118:
  v38 = _CocoaArrayWrapper.endIndex.getter();
  if (!v38)
  {
    goto LABEL_119;
  }

LABEL_25:
  if (v38 >= 1)
  {
    v39 = 0;
    v278 = v16 & 0xC000000000000001;
    v272 = "AIRPODS_CONNECTION_LOST_IPAD";
    v273 = @"productClass";
    v277 = xmmword_10017EC10;
    v274 = xmmword_10017EC00;
    v270 = "AIRPODS_CONNECTION_LOST_PHONE";
    v271 = "Unimplemented Error Code cases";
    v269 = "AIRPODS_CONNECTION_LOST_IPOD";
    v280 = v16;
    v281 = v13;
    v279 = v38;
    while (1)
    {
      if (v278)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v51 = *(v16 + 8 * v39 + 32);
      }

      v52 = v51;
      v285 = v39;
      v53 = [v51 code];
      LODWORD(v286) = static os_log_type_t.error.getter();
      if (qword_1001FC7A0 != -1)
      {
        swift_once();
      }

      v54 = qword_10020A4E8;
      v283 = sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
      v55 = swift_allocObject();
      *(v55 + 16) = v277;
      v56 = v52;
      v57 = [v56 description];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;
      v61 = v56;

      *(v55 + 56) = &type metadata for String;
      v62 = sub_10003DFBC();
      *(v55 + 64) = v62;
      *(v55 + 32) = v58;
      *(v55 + 40) = v60;
      v63 = [v284 serialNumber];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67 = v54;
      *(v55 + 96) = &type metadata for String;
      *(v55 + 104) = v62;
      *(v55 + 72) = v64;
      *(v55 + 80) = v66;
      os_log(_:dso:log:_:_:)(v286, &_mh_execute_header, v54, "Displaying error %@ for device %@", 33, 2, v55);
      v55, v68, v69, v70, v71, v72, v73, v74;
      if (v53 <= 6)
      {
        break;
      }

      if (v53 > 10)
      {
        if (v53 == 11)
        {
          v180 = [v284 attributes];
          sub_10003C49C(&unk_1001FD010, &unk_10017EED0);
          v181 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v285;
          if (!*(v181 + 16))
          {
            v183, v183, v184, v185, v186, v187, v188, v189;
LABEL_89:
            v181, v200, v201, v202, v203, v204, v205, v206;
LABEL_90:
            v13 = v281;
LABEL_91:
            v304 = 4;
            v305 = 0u;
            v306 = 0u;
            v307 = 0;
            v308 = 2;
            goto LABEL_106;
          }

          v190 = v183;
          v191 = sub_100064AFC(v182, v183);
          v193 = v192;
          v190, v192, v194, v195, v196, v197, v198, v199;
          if ((v193 & 1) == 0)
          {
            goto LABEL_89;
          }

          v207 = *(*(v181 + 56) + 8 * v191);
          swift_unknownObjectRetain();
          v181, v208, v209, v210, v211, v212, v213, v214;
          v289[0] = v207;
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_90;
          }

          v113 = v288;
          v13 = v281;
          if (v287 != 0x646F50656D6F48 || v288 != 0xE700000000000000)
          {
            v251 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v113, v252, v253, v254, v255, v256, v257, v258;
            if (v251)
            {
LABEL_116:

              goto LABEL_30;
            }

            goto LABEL_91;
          }

          goto LABEL_82;
        }

        v76 = v285;
        if (v53 == 12)
        {
          v287 = v61;
          __chkstk_darwin(v75);
          v267 = &v287;
          v13 = v281;
          v165 = v282;
          v166 = sub_1000785D4(sub_100119958, v266, v281);
          v282 = v165;
          if ((v166 & 1) == 0)
          {
            DeviceClass = GestaltGetDeviceClass();
            if (DeviceClass == 2)
            {
              v168 = 0xD00000000000001CLL;
              v169 = v270;
            }

            else if (DeviceClass == 3)
            {
              v168 = 0xD00000000000001CLL;
              v169 = v269;
            }

            else
            {
              v168 = 0xD00000000000001DLL;
              v169 = v271;
            }

            v179 = v276;
            sub_1001172F8(v168, (v169 | 0x8000000000000000));
            v249 = (v169 | 0x8000000000000000);
            goto LABEL_112;
          }

          goto LABEL_98;
        }

        if (v53 != 13)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v76 = v285;
        if ((v53 - 9) >= 2)
        {
          if (v53 == 7)
          {
            v287 = v61;
            __chkstk_darwin(v75);
            v267 = &v287;
            v13 = v281;
            v173 = v282;
            v174 = sub_1000785D4(sub_100119F78, v266, v281);
            v282 = v173;
            if ((v174 & 1) == 0)
            {
              v175 = 0xD000000000000015;
              v176 = (v272 | 0x8000000000000000);
              goto LABEL_76;
            }

            goto LABEL_98;
          }

          if (v53 != 8)
          {
            goto LABEL_85;
          }

          v314 = 6;
          v315 = 0u;
          v316 = 0u;
          v317 = 0;
          v318 = 2;
LABEL_84:
          sub_100088E48(0, 0);
          goto LABEL_29;
        }
      }

      v40 = swift_allocObject();
      *(v40 + 16) = v274;
      *(v40 + 56) = sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
      *(v40 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0, OS_os_log_ptr, &protocol conformance descriptor for NSObject);
      *(v40 + 32) = v54;
      v41 = v54;
      v42 = static OS_os_log.default.getter();
      v43 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Unimplemented Error Code cases", 30, 2, &_mh_execute_header, v42, v43, v40);
      v40, v44, v45, v46, v47, v48, v49, v50;

LABEL_29:
      v13 = v281;
LABEL_30:
      v16 = v280;
      v39 = v76 + 1;
      if (v279 == v39)
      {
        goto LABEL_119;
      }
    }

    if (v53 > 3)
    {
      v76 = v285;
      if (v53 == 4)
      {
        v287 = v61;
        __chkstk_darwin(v75);
        v267 = &v287;
        v13 = v281;
        v177 = v282;
        v178 = sub_1000785D4(sub_100119F78, v266, v281);
        v282 = v177;
        if ((v178 & 1) == 0)
        {
          v175 = 0x5F4E574F4E4B4E55;
          v176 = 0xED0000524F525245;
LABEL_76:
          v179 = v276;
          sub_1001172F8(v175, v176);
LABEL_113:
          if (!*(v179 + v275))
          {
            goto LABEL_116;
          }

          goto LABEL_114;
        }

        goto LABEL_98;
      }

      if (v53 != 5)
      {
        v122 = [v284 attributes];
        sub_10003C49C(&unk_1001FD010, &unk_10017EED0);
        v123 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (!*(v123 + 16))
        {
          v125, v125, v126, v127, v128, v129, v130, v131;
LABEL_103:
          v123, v142, v143, v144, v145, v146, v147, v148;
LABEL_104:
          v13 = v281;
LABEL_105:
          v299 = 3;
          v300 = 0u;
          v301 = 0u;
          v302 = 0;
          v303 = 2;
LABEL_106:
          sub_100088E48(0, 0);

          goto LABEL_30;
        }

        v132 = v125;
        v133 = sub_100064AFC(v124, v125);
        v135 = v134;
        v132, v134, v136, v137, v138, v139, v140, v141;
        if ((v135 & 1) == 0)
        {
          goto LABEL_103;
        }

        v149 = *(*(v123 + 56) + 8 * v133);
        swift_unknownObjectRetain();
        v123, v150, v151, v152, v153, v154, v155, v156;
        v289[0] = v149;
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_104;
        }

        v113 = v288;
        v13 = v281;
        if (v287 != 0x646F50656D6F48 || v288 != 0xE700000000000000)
        {
          v157 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v113, v158, v159, v160, v161, v162, v163, v164;
          if (v157)
          {
            goto LABEL_116;
          }

          goto LABEL_105;
        }

LABEL_82:

        v113, v215, v216, v217, v218, v219, v220, v221;
        goto LABEL_30;
      }

      v309 = 5;
      v310 = 0u;
      v311 = 0u;
      v312 = 0;
      v313 = 2;
    }

    else
    {
      v76 = v285;
      if (v53 >= 2)
      {
        if (v53 == 2)
        {
          v287 = v61;
          __chkstk_darwin(v75);
          v267 = &v287;
          v13 = v281;
          v170 = v282;
          v171 = sub_1000785D4(sub_100119F78, v266, v281);
          v282 = v170;
          if ((v171 & 1) == 0)
          {
            v231 = [v284 suiteName];
            if (v231)
            {
              v232 = v231;
              v233 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v235 = v234;
            }

            else
            {
              v233 = 0;
              v235 = 0xE000000000000000;
            }

            v241 = v233;
            v179 = v276;
            sub_100117F54(v241, v235);
            v249 = v235;
LABEL_112:
            v249, v242, v243, v244, v245, v246, v247, v248;
            goto LABEL_113;
          }

          v172 = v276;
          sub_100118EC0();
          if (!*(v172 + v275))
          {
            goto LABEL_116;
          }

          goto LABEL_99;
        }

        if (v53 == 3)
        {
          v77 = [v284 attributes];
          sub_10003C49C(&unk_1001FD010, &unk_10017EED0);
          v78 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!*(v78 + 16))
          {
            v80, v80, v81, v82, v83, v84, v85, v86;
LABEL_93:
            v78, v97, v98, v99, v100, v101, v102, v103;
LABEL_94:
            v13 = v281;
LABEL_95:
            v287 = v61;
            __chkstk_darwin(v112);
            v267 = &v287;
            v236 = v282;
            v237 = sub_1000785D4(sub_100119F78, v266, v13);
            v282 = v236;
            if ((v237 & 1) == 0)
            {
              v294 = 1;
              v295 = 0u;
              v296 = 0u;
              v297 = 0;
              v298 = 2;
              sub_100088E48(0, 0);
              if (!*(v276 + v275))
              {
                goto LABEL_116;
              }

LABEL_114:
              swift_beginAccess();
              v250 = v61;

              sub_100108684(v289, v250);
              swift_endAccess();

              goto LABEL_30;
            }

            if (qword_10020A3C0)
            {
              v238 = qword_10020A3C0;
              sub_100125854(1, 0, 1, 0, 0);
              v239 = qword_10020A3C0;
              qword_10020A3C0 = 0;
            }

LABEL_98:
            if (!*(v276 + v275))
            {
              goto LABEL_116;
            }

LABEL_99:
            swift_beginAccess();

            v240 = sub_100127BBC(v61);
            swift_endAccess();

            goto LABEL_30;
          }

          v87 = v80;
          v88 = sub_100064AFC(v79, v80);
          v90 = v89;
          v87, v89, v91, v92, v93, v94, v95, v96;
          if ((v90 & 1) == 0)
          {
            goto LABEL_93;
          }

          v104 = *(*(v78 + 56) + 8 * v88);
          swift_unknownObjectRetain();
          v78, v105, v106, v107, v108, v109, v110, v111;
          v289[0] = v104;
          v112 = swift_dynamicCast();
          if ((v112 & 1) == 0)
          {
            goto LABEL_94;
          }

          v113 = v288;
          v13 = v281;
          if (v287 != 0x646F50656D6F48 || v288 != 0xE700000000000000)
          {
            v114 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v113, v115, v116, v117, v118, v119, v120, v121;
            if (v114)
            {
              goto LABEL_116;
            }

            goto LABEL_95;
          }

          goto LABEL_82;
        }

LABEL_85:
        v222 = static os_log_type_t.fault.getter();
        v223 = swift_allocObject();
        *(v223 + 16) = v274;
        *(v223 + 56) = &type metadata for Int;
        *(v223 + 64) = &protocol witness table for Int;
        *(v223 + 32) = v53;
        os_log(_:dso:log:_:_:)(v222, &_mh_execute_header, v67, "Unknown DeviceStateErrorCode: %d", v268);
        v223, v224, v225, v226, v227, v228, v229, v230;
        goto LABEL_29;
      }

      v289[10] = 2;
      v290 = 0u;
      v291 = 0u;
      v292 = 0;
      v293 = 2;
    }

    goto LABEL_84;
  }

  __break(1u);
}