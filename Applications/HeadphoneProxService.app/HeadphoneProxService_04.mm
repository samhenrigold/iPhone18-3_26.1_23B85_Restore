double sub_1000685C4(void *a1, uint64_t a2)
{
  v2 = [a1 bluetoothAddress];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = String.lowercased()();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    return result;
  }

  v5 = Strong + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if (!*(v5 + 152))
  {

LABEL_14:

    return result;
  }

  v6 = String.lowercased()();

  if (v3._countAndFlagsBits == v6._countAndFlagsBits && v3._object == v6._object)
  {

    goto LABEL_12;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_12:
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    dispatch thunk of AADBatteryInfoVM.updateBatteryInfo(_:)();
    goto LABEL_14;
  }

  return result;
}

double sub_1000687B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10006886C(v3);
  }

  return result;
}

void sub_10006886C(uint64_t a1)
{
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = __chkstk_darwin(v1 - 8);
  v59 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v58 = v57 - v4;
  v5 = type metadata accessor for HeadphoneBatteryInfo(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011C6C0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_10000A570(v9, qword_10011E7A0);

  v61 = v10;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v66[0] = v14;
    *v13 = 136315138;
    v15 = dispatch thunk of AADBatteryInfoVM.debugDescription.getter();
    v17 = sub_100078978(v15, v16, v66);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Battery: [INCOMING VM] handleBatteryUpdate: batteryInfo %s", v13, 0xCu);
    sub_10000EA94(v14);
  }

  v18 = v62 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  countAndFlagsBits = *(v18 + 144);
  v19 = *(v18 + 152);
  v60 = v18;
  if (v19)
  {
    v21 = String.lowercased()();
    countAndFlagsBits = v21._countAndFlagsBits;
    object = v21._object;
  }

  else
  {
    object = 0;
  }

  dispatch thunk of AADBatteryInfoVM.bluetoothAddress.getter();
  v23 = String.lowercased()();

  if (!object)
  {

    goto LABEL_23;
  }

  if (countAndFlagsBits == v23._countAndFlagsBits && object == v23._object)
  {

    goto LABEL_13;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v24 & 1) == 0)
  {
LABEL_23:

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v65 = v40;
      *v39 = 136315138;
      v41 = *(v60 + 152);
      v64[0] = *(v60 + 144);
      v64[1] = v41;

      sub_100008438(&qword_10011E010, &unk_1000D8870);
      v42 = String.init<A>(reflecting:)();
      v44 = sub_100078978(v42, v43, &v65);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "handleBatteryUpdate: btAddress don't match %s or no underlying device", v39, 0xCu);
      sub_10000EA94(v40);
    }

    return;
  }

LABEL_13:
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5240;
  *(inited + 32) = dispatch thunk of AADBatteryInfoVM.batteryLeft.getter();
  v57[1] = inited + 32;
  *(inited + 40) = dispatch thunk of AADBatteryInfoVM.batteryRight.getter();
  *(inited + 48) = dispatch thunk of AADBatteryInfoVM.batteryCase.getter();
  *(inited + 56) = dispatch thunk of AADBatteryInfoVM.batteryMain.getter();
  *(inited + 64) = dispatch thunk of AADBatteryInfoVM.batteryCombinedLeftRight.getter();
  v64[0] = _swiftEmptyArrayStorage;
  sub_1000CD644(0, 5, 0);
  v26 = 0;
  v27 = v64[0];
  v63 = inited & 0xFFFFFFFFFFFFFF8;
  do
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v26 >= *(v63 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v28 = *(inited + 8 * v26 + 32);
    }

    v29 = v28;
    v30 = [v28 type];
    if (v30 >= 6)
    {
      v56 = v30;
      type metadata accessor for AABatteryType(0);
      v65 = v56;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    v31 = 0x40201000203uLL >> (8 * v30);
    [v29 level];
    v33 = v32;
    v34 = [v29 state] == 2;
    AABattery.batteryIconStyle.getter();
    *v8 = v33;
    v8[8] = v34;
    v8[9] = v31;
    *&v8[*(v5 + 32)] = v29;
    v64[0] = v27;
    v36 = *(v27 + 16);
    v35 = *(v27 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1000CD644((v35 > 1), v36 + 1, 1);
      v27 = v64[0];
    }

    ++v26;
    *(v27 + 16) = v36 + 1;
    sub_10000A4B8(v8, v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v36);
  }

  while (v26 != 5);
  swift_setDeallocating();
  swift_arrayDestroy();
  v45 = v58;
  sub_10007C964(v60, v58, type metadata accessor for HeadphoneModel);

  *(v45 + 128) = v27;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v64[0] = v50;
    *v49 = 136315138;
    v51 = Array.description.getter();
    v53 = v52;

    v54 = sub_100078978(v51, v53, v64);

    *(v49 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v46, v47, "handleBatteryUpdate: batteries added %s", v49, 0xCu);
    sub_10000EA94(v50);
  }

  else
  {
  }

  v55 = v59;
  sub_10007C964(v45, v59, type metadata accessor for HeadphoneModel);
  sub_100065EF8(v55);
  sub_10007C9CC(v45, type metadata accessor for HeadphoneModel);
}

id sub_10006901C()
{
  v1 = v0;
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E7A0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Live Translation: fetchTranslationAssets", v5, 2u);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    v10 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v11 = *(v10 + 120);
    aBlock = *(v10 + 112);
    v29 = v11;
    sub_10007C0D4(aBlock, v11);
    sub_100008438(&qword_10011EAB8, &unk_1000D88D0);
    v12 = String.init<A>(reflecting:)();
    v14 = sub_100078978(v12, v13, &v27);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Live Translation: fetchTranslationAssets Current: %s", v8, 0xCu);
    sub_10000EA94(v9);
  }

  v15 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_translationAssetGetter;
  v16 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_translationAssetGetter);
  v32 = sub_10007C0CC;
  v33 = v1;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_10007729C;
  v31 = &unk_100106888;
  v17 = _Block_copy(&aBlock);

  v18 = v16;

  [v18 setTranslationAssetsInfoHandler:v17];
  _Block_release(v17);

  v19 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetManagementClient;
  v20 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetManagementClient);
  v32 = sub_100077340;
  v33 = 0;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100019340;
  v31 = &unk_1001068B0;
  v21 = _Block_copy(&aBlock);
  v22 = v20;
  [v22 setInterruptionHandler:v21];
  _Block_release(v21);

  v23 = *(v1 + v19);
  v32 = sub_10007734C;
  v33 = 0;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100019340;
  v31 = &unk_1001068D8;
  v24 = _Block_copy(&aBlock);
  v25 = v23;
  [v25 setInvalidationHandler:v24];
  _Block_release(v24);

  return [*(v1 + v15) getTranslationAssets];
}

uint64_t sub_1000693EC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v5);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler);
  v9 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler);
  v10 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler + 8);
  *v8 = a1;
  v8[1] = a2;
  sub_1000622D4(v9, v10);

  sub_1000696C0();
  sub_1000699B0();
  sub_10006A740();
  if (*(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isActiveScanRequired) == 1)
  {
    v11 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery);
    v25 = sub_10006AF0C;
    v26 = 0;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10006AF20;
    v24 = &unk_1001069A0;
    v12 = _Block_copy(&aBlock);
    [v11 activateWithCompletion:v12];
    _Block_release(v12);
  }

  v13 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceDiscovery);
  v25 = sub_10006AF8C;
  v26 = 0;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_10006AF20;
  v24 = &unk_100106978;
  v14 = _Block_copy(&aBlock);
  [v13 activateWithCompletion:v14];
  _Block_release(v14);
  if (qword_10011C750 != -1)
  {
    swift_once();
  }

  v15 = qword_1001231E0;
  v16 = v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  *(v16 + *(v5 + 172)) = sub_1000A566C(*(v16 + *(v5 + 136)), v15) & 1;
  v17 = v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    sub_10007C964(v16, v7, type metadata accessor for HeadphoneModel);
    (*(v19 + 24))(v7, ObjectType, v19);
    swift_unknownObjectRelease();
    return sub_10007C9CC(v7, type metadata accessor for HeadphoneModel);
  }

  return result;
}

double sub_1000696C0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_workingQueue);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10007CF9C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_100106AB8;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);

  return result;
}

void sub_1000699B0()
{
  v1 = v0;
  v2 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v90 - v3;
  v5 = sub_100008438(&qword_10011EA88, &qword_1000D8880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v9 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v90 - v10;
  v12 = type metadata accessor for Date();
  v102 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v16 = type metadata accessor for HeadphoneModel(0);
  if (*(v15 + *(v16 + 84)) == 1)
  {
    v17 = v16;
    v100 = v12;
    v96 = *(v15 + 160);
    v97 = v6;
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v98 = v7;
    v18 = type metadata accessor for Logger();
    v101 = sub_10000A570(v18, qword_10011E7A0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Fetching assets", v21, 2u);
    }

    v99 = v14;
    Date.init()();
    v22 = *(v15 + *(v17 + 136));
    v94 = *(v15 + 162);
    v95 = v22;
    v23 = (v15 + *(v17 + 64));
    v25 = *v23;
    v24 = v23[1];
    if (v24 >> 60 == 15)
    {
      goto LABEL_7;
    }

    v35 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v35 != 2)
      {
        goto LABEL_43;
      }

      v37 = *(v25 + 16);
      v36 = *(v25 + 24);
      v38 = v36 - v37;
      if (!__OFSUB__(v36, v37))
      {
LABEL_28:
        sub_10007CE0C(v25, v24);
        sub_10007B8A8(v25, v24);
        if (v38 != 17)
        {
LABEL_17:
          if (v35 == 2)
          {
            v54 = *(v25 + 16);
            v53 = *(v25 + 24);
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            if (v55)
            {
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            if (v56 != 18)
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (v35 == 1)
            {
              if (!__OFSUB__(HIDWORD(v25), v25))
              {
                if (HIDWORD(v25) - v25 != 18)
                {
                  goto LABEL_43;
                }

                goto LABEL_34;
              }

              goto LABEL_57;
            }

            if (BYTE6(v24) != 18)
            {
LABEL_43:
              sub_10007CE0C(v25, v24);
              sub_10007B8A8(v25, v24);
              v78 = Logger.logObject.getter();
              v79 = static os_log_type_t.error.getter();
              if (!os_log_type_enabled(v78, v79))
              {
                sub_100047878(v25, v24);
                sub_100047878(v25, v24);

                sub_100047878(v25, v24);
LABEL_7:
                v26 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
                (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
LABEL_38:
                v66 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_prePairingAssetInfo;
                swift_beginAccess();
                sub_10007CAA0(v11, v1 + v66, &qword_10011EA88, &qword_1000D8880);
                swift_endAccess();
                v67 = type metadata accessor for TaskPriority();
                (*(*(v67 - 8) + 56))(v4, 1, 1, v67);
                v68 = swift_allocObject();
                swift_weakInit();
                sub_10000E88C(v11, v9, &qword_10011EA88, &qword_1000D8880);
                v69 = (*(v97 + 80) + 72) & ~*(v97 + 80);
                v70 = swift_allocObject();
                *(v70 + 16) = 0;
                *(v70 + 24) = 0;
                *(v70 + 32) = v68;
                v71 = v94;
                *(v70 + 40) = v95;
                *(v70 + 44) = v71;
                *(v70 + 48) = v96;
                *(v70 + 56) = v25;
                *(v70 + 64) = v24;
                sub_10007CC60(v9, v70 + v69);
                sub_10007CE0C(v25, v24);
                sub_100065B00(0, 0, v4, &unk_1000D8918, v70);

                sub_10000E950(v4, &qword_10011CAA8, &unk_1000D85A0);
                v72 = Logger.logObject.getter();
                v73 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v72, v73))
                {
                  v74 = swift_slowAlloc();
                  *v74 = 0;
                  _os_log_impl(&_mh_execute_header, v72, v73, "Fetching assets finished", v74, 2u);
                }

                v75 = v99;
                Date.timeIntervalSinceNow.getter();
                v77 = v76;
                sub_100047878(v25, v24);
                sub_10000E950(v11, &qword_10011EA88, &qword_1000D8880);
                (*(v102 + 8))(v75, v100);
                *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetFetchDuration) = -v77;
                return;
              }

              v91 = v79;
              v92 = v78;
              v80 = swift_slowAlloc();
              v93 = v80;
              v90 = swift_slowAlloc();
              v105 = v90;
              *v80 = 136315394;
              v104[0] = sub_100065790(v25, v24);
              sub_100008438(&qword_10011EA70, &unk_1000D8810);
              sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810, &protocol conformance descriptor for [A]);
              v81 = BidirectionalCollection<>.joined(separator:)();
              v83 = v82;

              v84 = sub_100078978(v81, v83, &v105);
              v85 = v93;

              *(v85 + 4) = v84;
              *(v85 + 6) = 2048;
              if (v35 > 1)
              {
                if (v35 != 2)
                {
                  sub_100047878(v25, v24);
                  v86 = 0;
                  goto LABEL_55;
                }

                v88 = *(v25 + 16);
                v87 = *(v25 + 24);
                sub_100047878(v25, v24);
                v86 = v87 - v88;
                if (!__OFSUB__(v87, v88))
                {
                  goto LABEL_55;
                }

                __break(1u);
              }

              else if (!v35)
              {
                sub_100047878(v25, v24);
                v86 = BYTE6(v24);
LABEL_55:
                v89 = v92;
                *(v85 + 14) = v86;
                sub_100047878(v25, v24);
                _os_log_impl(&_mh_execute_header, v89, v91, "#Expected 18 bytes for pairingEngravingData: %s, but %ld bytes received.", v85, 0x16u);
                sub_10000EA94(v90);

                sub_100047878(v25, v24);

                goto LABEL_7;
              }

              sub_100047878(v25, v24);
              LODWORD(v86) = HIDWORD(v25) - v25;
              if (!__OFSUB__(HIDWORD(v25), v25))
              {
                v86 = v86;
                goto LABEL_55;
              }

LABEL_59:
              __break(1u);
              return;
            }
          }

LABEL_34:
          sub_10007B8A8(v25, v24);
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.default.getter();
          sub_100047878(v25, v24);
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v92 = v59;
            v93 = swift_slowAlloc();
            v105 = v93;
            LODWORD(v59->isa) = 136315138;
            v104[0] = sub_100065790(v25, v24);
            v91 = v58;
            sub_100008438(&qword_10011EA70, &unk_1000D8810);
            sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810, &protocol conformance descriptor for [A]);
            v60 = BidirectionalCollection<>.joined(separator:)();
            v62 = v61;

            v63 = sub_100078978(v60, v62, &v105);

            v64 = v92;
            *(&v92->isa + 4) = v63;
            _os_log_impl(&_mh_execute_header, v57, v91, "pairingEngravingData with 18 bytes for asset request: %s.", v64, 0xCu);
            sub_10000EA94(v93);
          }

          PersonalizationAssetManager.PrePairingAssetInfo.init(scannedBluetoothData:)();
LABEL_37:
          v65 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
          (*(*(v65 - 8) + 56))(v11, 0, 1, v65);
          goto LABEL_38;
        }

LABEL_29:
        v105 = v25;
        v106 = v24;
        sub_10007CE0C(v25, v24);
        v39 = sub_10007C488(&off_100102BB8);
        v41 = v40;
        Data.append(_:)();
        sub_100022640(v39, v41);
        v42 = v105;
        v43 = v106;
        sub_10007B8A8(v105, v106);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.default.getter();
        sub_100022640(v42, v43);
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v92 = v44;
          v47 = v46;
          v90 = v46;
          v93 = swift_slowAlloc();
          v104[0] = v93;
          *v47 = 136315138;
          v103 = sub_100065790(v42, v43);
          v91 = v45;
          sub_100008438(&qword_10011EA70, &unk_1000D8810);
          sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810, &protocol conformance descriptor for [A]);
          v48 = BidirectionalCollection<>.joined(separator:)();
          v50 = v49;

          v51 = sub_100078978(v48, v50, v104);

          v52 = v90;
          *(v90 + 4) = v51;
          v44 = v92;
          _os_log_impl(&_mh_execute_header, v92, v91, "pairingEngravingData with 18 bytes for asset request: %s.", v52, 0xCu);
          sub_10000EA94(v93);
        }

        swift_beginAccess();
        sub_10007B8A8(v105, v106);
        PersonalizationAssetManager.PrePairingAssetInfo.init(scannedBluetoothData:)();
        sub_100047878(v25, v24);
        sub_100022640(v105, v106);
        goto LABEL_37;
      }

      __break(1u);
    }

    else if (!v35)
    {
      if (BYTE6(v24) != 17)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }

    if (__OFSUB__(HIDWORD(v25), v25))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v38 = HIDWORD(v25) - v25;
    goto LABEL_28;
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000A570(v27, qword_10011E7A0);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Device is unsupported, not looking up assets", v30, 2u);
  }

  v31 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler;
  v32 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler);
  if (v32)
  {
    v33 = *(v31 + 8);

    v32(v34);
    sub_1000622D4(v32, v33);
  }
}

void sub_10006A740()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v2);
  v4 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
  __chkstk_darwin(v5 - 8);
  v7 = v58 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_smartChargeClient);
  if (v8)
  {
    v9 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model);
    swift_beginAccess();
    if (v9[19].isa)
    {
      v59 = v7;
      v60 = v2;
      v10 = qword_10011C6C0;
      v11 = v8;

      if (v10 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      v13 = sub_10000A570(v12, qword_10011E7A0);

      v58[1] = v13;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      v16 = os_log_type_enabled(v14, v15);
      v61 = v9;
      if (v16)
      {
        v17 = swift_slowAlloc();
        v58[0] = v4;
        v18 = v17;
        v19 = swift_slowAlloc();
        v63 = v19;
        *v18 = 136315138;
        isa = v9[19].isa;
        v62[0] = v9[18].isa;
        v62[1] = isa;

        sub_100008438(&qword_10011E010, &unk_1000D8870);
        v21 = String.init<A>(reflecting:)();
        v23 = sub_100078978(v21, v22, &v63);

        *(v18 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v14, v15, "Fetching full charge deadline for %s", v18, 0xCu);
        sub_10000EA94(v19);

        v4 = v58[0];
      }

      v24 = String._bridgeToObjectiveC()();

      v62[0] = 0;
      v25 = [v11 fullChargeDeadlineForDevice:v24 withError:v62];

      v26 = v62[0];
      if (v25)
      {
        v27 = v59;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v26;

        v29 = type metadata accessor for Date();
        (*(*(v29 - 8) + 56))(v27, 0, 1, v29);
        v30 = v61;
        swift_beginAccess();
        sub_10007B9B8(v27, v30 + *(v60 + 152));
        swift_endAccess();
        v31 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v32 = *(v31 + 8);
          ObjectType = swift_getObjectType();
          sub_10007C964(v30, v4, type metadata accessor for HeadphoneModel);
          (*(v32 + 24))(v4, ObjectType, v32);
          swift_unknownObjectRelease();

          sub_10007C9CC(v4, type metadata accessor for HeadphoneModel);
        }

        else
        {
        }
      }

      else
      {
        v49 = v62[0];
        v50 = _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v62[0] = v54;
          *v53 = 136315138;
          v63 = v50;
          swift_errorRetain();
          sub_100008438(&unk_10011D970, &unk_1000D6500);
          v55 = String.init<A>(describing:)();
          v57 = sub_100078978(v55, v56, v62);

          *(v53 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v51, v52, "Failed to fetch full charge deadline: %s", v53, 0xCu);
          sub_10000EA94(v54);
        }

        else
        {
        }
      }
    }

    else
    {
      v38 = qword_10011C6C0;
      v39 = v8;
      if (v38 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10000A570(v40, qword_10011E7A0);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v62[0] = v44;
        *v43 = 136315138;
        sub_10007C964(v9, v4, type metadata accessor for HeadphoneModel);
        v45 = sub_100042610();
        v47 = v46;
        sub_10007C9CC(v4, type metadata accessor for HeadphoneModel);
        v48 = sub_100078978(v45, v47, v62);

        *(v43 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v41, v42, "No bluetooth address: %s", v43, 0xCu);
        sub_10000EA94(v44);
      }
    }
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000A570(v34, qword_10011E7A0);
    v61 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v61, v35, "Optimized battery charging is not enabled", v36, 2u);
    }

    v37 = v61;
  }
}

void sub_10006AF20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10006AFA0(uint64_t a1, const char *a2, const char *a3, ...)
{
  if (a1)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_10011E7A0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      swift_errorRetain();
      sub_100008438(&qword_10011D950, &unk_1000D88C0);
      v8 = String.init<A>(reflecting:)();
      v10 = sub_100078978(v8, v9, &v16);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v5, a3, v6, 0xCu);
      sub_10000EA94(v7);

      return;
    }
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A570(v12, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, a2, v14, 2u);
    }
  }
}

void sub_10006B1F0(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_didSubmitMetrics;
  if ((*(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_didSubmitMetrics) & 1) == 0)
  {
    v15 = v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v16 = type metadata accessor for HeadphoneModel(0);
    if (!*(v15 + *(v16 + 132)) && ((1 << *(v15 + 136)) & 0xD9FF) == 0)
    {
      v41 = v16;
      v40 = [objc_allocWithZone(SFHeadphoneProxPairingEvent) init];
      v17 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingStartDate;
      swift_beginAccess();
      v39 = v17;
      sub_10000E88C(v2 + v17, v13, &qword_10011DE30, &qword_1000D79F0);
      v38 = *(v5 + 48);
      LODWORD(v37) = v38(v13, 1, v4) != 1;
      sub_10000E950(v13, &qword_10011DE30, &qword_1000D79F0);
      v18 = v40;
      [v40 setAttemptedPairing:v37];
      [v18 setColor:*(v15 + 160)];
      [v18 setAssetFetchDuration:*(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetFetchDuration)];
      if (a1)
      {
        swift_errorRetain();
        v19 = _convertErrorToNSError(_:)();
        v37 = v5 + 48;
        v20 = v19;
        v21 = [v19 code];
      }

      else
      {
        v21 = 0;
      }

      v22 = v40;
      [v40 setErrorCode:v21];
      sub_10000E88C(v2 + v39, v11, &qword_10011DE30, &qword_1000D79F0);
      if (v38(v11, 1, v4) == 1)
      {
        sub_10000E950(v11, &qword_10011DE30, &qword_1000D79F0);
        v23 = -1.0;
      }

      else
      {
        (*(v5 + 32))(v7, v11, v4);
        Date.timeIntervalSinceNow.getter();
        v25 = v24;
        (*(v5 + 8))(v7, v4);
        v23 = -v25;
      }

      [v22 setPairingDuration:v23];
      v26 = *(v15 + 136);
      if (v26 == 13)
      {
        v27 = 2;
      }

      else
      {
        v27 = v26 == 10;
      }

      [v22 setPairingType:v27];
      [v22 setProductID:*(v15 + v41[34])];
      Strong = swift_unknownObjectWeakLoadStrong();
      v29 = -1.0;
      v30 = -1.0;
      if (Strong)
      {
        v31 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_initialCardDisplayUpTicks);
        swift_unknownObjectRelease();
        v32 = *(v15 + v41[17]);
        v30 = -1.0;
        if (v32)
        {
          if (v31 < v32)
          {
            __break(1u);
            goto LABEL_24;
          }

          v30 = UpTicksToMilliseconds();
        }
      }

      [v22 setFoundToFirstCardDuration:v30];
      v33 = swift_unknownObjectWeakLoadStrong();
      if (!v33)
      {
        goto LABEL_22;
      }

      v34 = *(v33 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_initialCardDisplayUpTicks);
      swift_unknownObjectRelease();
      v35 = *(v15 + v41[46]);
      if (!v35)
      {
        goto LABEL_22;
      }

      if (v34 >= v35)
      {
        v29 = UpTicksToMilliseconds();
LABEL_22:
        [v22 setTriggerToFirstCardDuration:v29];
        [v22 submitEvent];

        *(v2 + v14) = 1;
        return;
      }

LABEL_24:
      __break(1u);
    }
  }
}

uint64_t sub_10006B6A4()
{
  v1 = v0;
  v2 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v42[-1] - v3;
  v5 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if (*(v5 + 136) == 14)
  {
    v6 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_wantsTemporaryPairing);
  }

  else
  {
    v6 = 0;
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_10000A570(v7, qword_10011E7A0);

  v41 = v8;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v42[0] = v12;
    *v11 = 136315394;
    v13 = *(v5 + 152);
    v42[1] = *(v5 + 144);
    v42[2] = v13;

    sub_100008438(&qword_10011E010, &unk_1000D8870);
    v14 = String.init<A>(reflecting:)();
    v16 = sub_100078978(v14, v15, v42);

    *(v11 + 4) = v16;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v9, v10, "Connecting device bluetoothAddress = %s guestMode = %{BOOL}d", v11, 0x12u);
    sub_10000EA94(v12);
  }

  Date.init()();
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
  v18 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingStartDate;
  swift_beginAccess();
  sub_10007B9B8(v4, v1 + v18);
  swift_endAccess();
  v19 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession;
  v20 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession + 8);
  ObjectType = swift_getObjectType();
  v23 = *(v5 + 144);
  v22 = *(v5 + 152);
  v24 = *(v20 + 16);

  swift_unknownObjectRetain();
  v24(v23, v22, ObjectType, v20);
  swift_unknownObjectRelease();
  v25 = *(v19 + 8);
  v26 = swift_getObjectType();
  v27 = *(v25 + 136);

  swift_unknownObjectRetain();
  v27(sub_10007BA28, v1, v26, v25);
  swift_unknownObjectRelease();
  v28 = *(v19 + 8);
  v29 = swift_getObjectType();
  v30 = *(v28 + 40);
  swift_unknownObjectRetain();
  v30(v6, v29, v28);
  swift_unknownObjectRelease();
  if ([*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceManager) isTemporaryPairingConnectionAllowed])
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Temporary Managed Pairing: Temp Pairing Mode is Enabled", v33, 2u);
    }

    v34 = *(v19 + 8);
    v35 = swift_getObjectType();
    v36 = *(v34 + 64);
    swift_unknownObjectRetain();
    v36(1, v35, v34);
    swift_unknownObjectRelease();
  }

  if (*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isActiveScanRequired) == 1)
  {
    [*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery) setDiscoveryFlags:0];
  }

  sub_1000993EC();

  v37 = *(v19 + 8);
  v38 = swift_getObjectType();
  v39 = *(v37 + 184);
  swift_unknownObjectRetain();
  v39(v38, v37);
  return swift_unknownObjectRelease();
}

uint64_t sub_10006BB90(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B8A8(a1, a2);
  Data.Iterator.init(_:at:)();
  sub_10007CA2C(&qword_10011EA68, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v23)
  {
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
    v20 = xmmword_1000D5250;
    do
    {
      v10 = v22;
      sub_100008438(&qword_10011EA80, &unk_1000DA490);
      v11 = swift_allocObject();
      *(v11 + 16) = v20;
      *(v11 + 56) = &type metadata for UInt8;
      *(v11 + 64) = &protocol witness table for UInt8;
      *(v11 + 32) = v10;
      v12 = String.init(format:_:)();
      v14 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1000CC104(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = sub_1000CC104((v15 > 1), v16 + 1, 1, v7);
      }

      *(v7 + 2) = v16 + 1;
      v17 = &v7[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v23 != 1);
  }

  (*(v19 + 8))(v6, v4);
  v21 = v7;
  sub_100008438(&qword_10011EA70, &unk_1000D8810);
  sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810, &protocol conformance descriptor for [A]);
  v8 = BidirectionalCollection<>.joined(separator:)();

  return v8;
}

uint64_t sub_10006BE8C()
{
  v1 = v0;
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E7A0);
  swift_retain_n();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33[0] = v6;
    *v5 = 136315394;
    v7 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v8 = *(v7 + 152);
    v33[1] = *(v7 + 144);
    v33[2] = v8;

    sub_100008438(&qword_10011E010, &unk_1000D8870);
    v9 = String.init<A>(reflecting:)();
    v11 = sub_100078978(v9, v10, v33);

    *(v5 + 4) = v11;
    *(v5 + 12) = 1024;
    LODWORD(v7) = *(v7 + 136);

    *(v5 + 14) = v7 == 14;

    _os_log_impl(&_mh_execute_header, v3, v4, "Disconnecting device bluetoothAddress = %s guestMode = %{BOOL}d", v5, 0x12u);
    sub_10000EA94(v6);
  }

  else
  {
  }

  v12 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession;
  v13 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession + 8);
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 88);
  swift_unknownObjectRetain();
  v15(1, ObjectType, v13);
  swift_unknownObjectRelease();
  v16 = *(v12 + 8);
  v17 = swift_getObjectType();
  v18 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v19 = *(v18 + 144);
  v20 = *(v18 + 152);
  v21 = *(v16 + 16);

  swift_unknownObjectRetain();
  v21(v19, v20, v17, v16);
  swift_unknownObjectRelease();
  v22 = *(v12 + 8);
  v23 = swift_getObjectType();
  v24 = *(v22 + 136);

  swift_unknownObjectRetain();
  v24(sub_10007C058, v1, v23, v22);
  swift_unknownObjectRelease();
  v25 = *(v12 + 8);
  v26 = swift_getObjectType();
  v27 = *(v18 + 136) == 14;
  v28 = *(v25 + 40);
  swift_unknownObjectRetain();
  v28(v27, v26, v25);
  swift_unknownObjectRelease();
  v29 = *(v12 + 8);
  v30 = swift_getObjectType();
  v31 = *(v29 + 184);
  swift_unknownObjectRetain();
  v31(v30, v29);
  return swift_unknownObjectRelease();
}

uint64_t sub_10006C208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = v18;
  v15 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_10006C500()
{
  v1 = v0;
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E7A0);
  swift_retain_n();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28[0] = v6;
    *v5 = 136315394;
    v7 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v8 = *(v7 + 152);
    v28[1] = *(v7 + 144);
    v28[2] = v8;

    sub_100008438(&qword_10011E010, &unk_1000D8870);
    v9 = String.init<A>(reflecting:)();
    v11 = sub_100078978(v9, v10, v28);

    *(v5 + 4) = v11;
    *(v5 + 12) = 1024;
    LODWORD(v7) = *(v7 + 136);

    *(v5 + 14) = v7 == 14;

    _os_log_impl(&_mh_execute_header, v3, v4, "Unpairing device bluetoothAddress = %s guestMode = %{BOOL}d", v5, 0x12u);
    sub_10000EA94(v6);
  }

  else
  {
  }

  v12 = [objc_allocWithZone(SFBluetoothPairingSession) init];
  v13 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
  *v13 = v12;
  v13[1] = &off_100106DD0;
  v14 = v12;
  swift_unknownObjectRelease();
  [v14 setUnpairOnly:1];

  v15 = v13[1];
  ObjectType = swift_getObjectType();
  v17 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v19 = *(v17 + 144);
  v18 = *(v17 + 152);
  v20 = *(v15 + 16);

  swift_unknownObjectRetain();
  v20(v19, v18, ObjectType, v15);
  swift_unknownObjectRelease();
  v21 = v13[1];
  v22 = swift_getObjectType();
  v23 = *(v21 + 136);

  swift_unknownObjectRetain();
  v23(sub_10007BFFC, v1, v22, v21);
  swift_unknownObjectRelease();
  v24 = v13[1];
  v25 = swift_getObjectType();
  v26 = *(v24 + 184);
  swift_unknownObjectRetain();
  v26(v25, v24);
  return swift_unknownObjectRelease();
}

uint64_t sub_10006C840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_10006278C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_100106518;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

id sub_10006CB3C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0xD000000000000015 && 0x80000001000E0A10 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (a1)
    {
      v7 = v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v8 = type metadata accessor for HeadphoneModel(0);
      if (*(v7 + *(v8 + 164)))
      {
        v9 = *(v7 + *(v8 + 164));
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
      v9 = 0;
    }

    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A570(v10, qword_10011E7A0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136315138;
      v15 = sub_10007B94C(v9);
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_100078978(v16, v18, &v27);

      *(v13 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "Setting Announce Calls to %s", v13, 0xCu);
      sub_10000EA94(v14);
    }

    return [objc_opt_self() setAnnounceCallsState:v9];
  }

  else if (a2 == 0x6C61626F6C67 && a3 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v21 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter + 24);
    v22 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter + 32);
    sub_10000E7E4((v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter), v21);
    return (*(v22 + 8))(a1 & 1, v21, v22);
  }

  else
  {
    v23 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter + 24);
    v24 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter + 32);
    sub_10000E7E4((v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter), v23);
    (*(v24 + 16))(v28, a2, a3, v23, v24);
    v25 = v29;
    v26 = v30;
    sub_10000E7E4(v28, v29);
    (*(v26 + 56))(a1 & 1, v25, v26);
    return sub_10000EA94(v28);
  }
}

id sub_10006CE54()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if (*(v1 + 152))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(HPHeadphoneEndCallManager) initWithBluetoothAddress:v2];

  v4 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_endCallManager);
  *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_endCallManager) = v3;
  v5 = v3;

  if (v5)
  {
    v6 = [v5 isStatusUnknown];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A570(v7, qword_10011E7A0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100078978(0xD00000000000001CLL, 0x80000001000E0AD0, &v13);
      _os_log_impl(&_mh_execute_header, v8, v9, "endCallManager is nil in %s", v10, 0xCu);
      sub_10000EA94(v11);
    }

    return 0;
  }

  return v6;
}

void sub_10006D048()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_endCallManager);
  if (v1)
  {

    [v1 setConfigForSingleTap];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100078978(0xD00000000000001DLL, 0x80000001000E09D0, &v7);
      _os_log_impl(&_mh_execute_header, oslog, v3, "endCallManager is nil in %s", v4, 0xCu);
      sub_10000EA94(v5);
    }
  }
}

void sub_10006D1CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_endCallManager);
  if (v1)
  {

    [v1 setConfigForDoubleTap];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100078978(0xD00000000000001DLL, 0x80000001000E09F0, &v7);
      _os_log_impl(&_mh_execute_header, oslog, v3, "endCallManager is nil in %s", v4, 0xCu);
      sub_10000EA94(v5);
    }
  }
}

void sub_10006D350()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_endCallManager);
  if (v1)
  {

    [v1 setStatusToDone];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100078978(0xD000000000000016, 0x80000001000E0B60, &v7);
      _os_log_impl(&_mh_execute_header, oslog, v3, "endCallManager is nil in %s", v4, 0xCu);
      sub_10000EA94(v5);
    }
  }
}

void sub_10006D4D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  if (v1)
  {

    [v1 setMuteCallConfig];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100078978(0xD00000000000001ALL, 0x80000001000E0B80, &v7);
      _os_log_impl(&_mh_execute_header, oslog, v3, "headphoneFeatureManager is nil in %s", v4, 0xCu);
      sub_10000EA94(v5);
    }
  }
}

id sub_10006D658()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  if (v2)
  {
    return [v2 getColorCode];
  }

  v3 = v0;
  v4 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v5 = *(v4 + 152);
  v6 = *(v4 + *(type metadata accessor for HeadphoneModel(0) + 136));
  if (v5)
  {

    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(HPHeadphoneFeatureManager) initWithBluetoothAddress:v7 productID:v6];

  v9 = *(v3 + v1);
  *(v3 + v1) = v8;

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A570(v10, qword_10011E7A0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Mute Call: Get Color Code, init Headphone Feature Manager", v13, 2u);
  }

  v2 = *(v3 + v1);
  if (v2)
  {
    return [v2 getColorCode];
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  sub_10000A570(v10, qword_10011E7A0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100078978(0x726F6C6F43746567, 0xEE00292865646F43, v20);
    _os_log_impl(&_mh_execute_header, v15, v16, "Mute Call: headphoneFeatureManager is nil in %s", v17, 0xCu);
    sub_10000EA94(v18);
  }

  v19 = v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  return (*(v19 + 160) & 0xF);
}

id sub_10006D940()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  if (v2)
  {
    return [v2 shouldShowAdaptiveControlsProxCard];
  }

  v3 = v0;
  v4 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v5 = *(v4 + 152);
  v6 = *(v4 + *(type metadata accessor for HeadphoneModel(0) + 136));
  if (v5)
  {

    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(HPHeadphoneFeatureManager) initWithBluetoothAddress:v7 productID:v6];

  v9 = *(v3 + v1);
  *(v3 + v1) = v8;

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A570(v10, qword_10011E7A0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100078978(0xD000000000000025, 0x80000001000E0AF0, &v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "Headphone Feature Manager Initialized in %s", v13, 0xCu);
    sub_10000EA94(v14);
  }

  v2 = *(v3 + v1);
  if (v2)
  {
    return [v2 shouldShowAdaptiveControlsProxCard];
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  sub_10000A570(v10, qword_10011E7A0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100078978(0xD000000000000025, 0x80000001000E0AF0, &v20);
    _os_log_impl(&_mh_execute_header, v16, v17, "headphoneFeatureManager is nil in %s", v18, 0xCu);
    sub_10000EA94(v19);
  }

  return 0;
}

void sub_10006DC58()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  if (v1)
  {

    [v1 setAdaptiveControlsStatus];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100078978(0xD00000000000001FLL, 0x80000001000E0BA0, &v7);
      _os_log_impl(&_mh_execute_header, oslog, v3, "headphoneFeatureManager is nil in %s", v4, 0xCu);
      sub_10000EA94(v5);
    }
  }
}

void sub_10006DDDC(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager))
  {
    v2 = a1 & 1;
    v3 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);

    [v3 setAdaptiveControlsAdaptiveMode:v2];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100078978(0xD000000000000029, 0x80000001000E0BC0, &v9);
      _os_log_impl(&_mh_execute_header, oslog, v5, "headphoneFeatureManager is nil in %s", v6, 0xCu);
      sub_10000EA94(v7);
    }
  }
}

void sub_10006DF68(char a1)
{
  v3 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager;
  v4 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  if (v4)
  {
    goto LABEL_10;
  }

  v5 = v1;
  v6 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v7 = *(v6 + 152);
  v8 = *(v6 + *(type metadata accessor for HeadphoneModel(0) + 136));
  if (v7)
  {

    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(HPHeadphoneFeatureManager) initWithBluetoothAddress:v9 productID:v8];

  v11 = *(v5 + v3);
  *(v5 + v3) = v10;

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A570(v12, qword_10011E7A0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100078978(0xD00000000000002FLL, 0x80000001000E0A30, &v21);
    _os_log_impl(&_mh_execute_header, v13, v14, "Headphone Feature Manager Initialized in %s.", v15, 0xCu);
    sub_10000EA94(v16);
  }

  v4 = *(v5 + v3);
  if (v4)
  {
LABEL_10:
    [v4 setAdaptiveControlsPersonalizedVolume:a1 & 1];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    sub_10000A570(v12, qword_10011E7A0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100078978(0xD00000000000002FLL, 0x80000001000E0A30, &v21);
      _os_log_impl(&_mh_execute_header, v17, v18, "headphoneFeatureManager is nil in %s", v19, 0xCu);
      sub_10000EA94(v20);
    }
  }
}

void sub_10006E28C(char a1)
{
  v3 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager;
  v4 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  if (v4)
  {
    goto LABEL_10;
  }

  v5 = v1;
  v6 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v7 = *(v6 + 152);
  v8 = *(v6 + *(type metadata accessor for HeadphoneModel(0) + 136));
  if (v7)
  {

    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(HPHeadphoneFeatureManager) initWithBluetoothAddress:v9 productID:v8];

  v11 = *(v5 + v3);
  *(v5 + v3) = v10;

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A570(v12, qword_10011E7A0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100078978(0xD000000000000032, 0x80000001000E0A60, &v21);
    _os_log_impl(&_mh_execute_header, v13, v14, "Headphone Feature Manager Initialized in %s.", v15, 0xCu);
    sub_10000EA94(v16);
  }

  v4 = *(v5 + v3);
  if (v4)
  {
LABEL_10:
    [v4 setAdaptiveControlsConversationAwareness:a1 & 1];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    sub_10000A570(v12, qword_10011E7A0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100078978(0xD000000000000032, 0x80000001000E0A60, &v21);
      _os_log_impl(&_mh_execute_header, v17, v18, "headphoneFeatureManager is nil in %s", v19, 0xCu);
      sub_10000EA94(v20);
    }
  }
}

double sub_10006E5B0()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if (*(v5 + 152))
  {
    v6 = String.uppercased()();
    type metadata accessor for HeadphoneProxFeatureManager();
    static HeadphoneProxFeatureManager.shared.getter();
    v7 = dispatch thunk of HeadphoneProxFeatureManager.connectedDevices.getter();

    if (*(v7 + 16))
    {
      v8 = sub_1000CD118(v6._countAndFlagsBits, v6._object);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        v11 = static HeadphoneProxFeatureManager.shared.getter();
        v12 = [v10 dynamicEndOfChargeCapability] == 2;
        swift_weakInit();
        swift_weakDestroy();
        sub_10006E924(v12, v11, v6._countAndFlagsBits, v6._object);

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_100047C68();
          swift_unknownObjectRelease();
        }

        *(v5 + *(v2 + 88)) = 0;
        v13 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = *(v13 + 8);
          ObjectType = swift_getObjectType();
          sub_10007C964(v5, v4, type metadata accessor for HeadphoneModel);
          (*(v14 + 24))(v4, ObjectType, v14);
          swift_unknownObjectRelease();

          sub_10007C9CC(v4, type metadata accessor for HeadphoneModel);
        }

        else
        {
        }

        return result;
      }
    }
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000A570(v17, qword_10011E7A0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100078978(0xD000000000000021, 0x80000001000E0AA0, &v22);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s dependencies not met no device and or btAddress!", v20, 0xCu);
    sub_10000EA94(v21);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100047C68();
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_10006E924(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = [objc_allocWithZone(AADeviceConfig) init];
  if (a1)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A570(v5, qword_10011E7A0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "BatteryCharingFeature: dynamicEndOfChargeState setting temp disabled", v8, 2u);
      v9 = &selRef_setChangeDynamicEndOfChargeState_;
LABEL_10:

      goto LABEL_13;
    }

    v9 = &selRef_setChangeDynamicEndOfChargeState_;
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A570(v10, qword_10011E7A0);
    v6 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v11, "BatteryCharingFeature: optimizedBatteryChargingState setting temp disabled", v12, 2u);
      v9 = &selRef_setChangeOptimizedBatteryChargingState_;
      goto LABEL_10;
    }

    v9 = &selRef_setChangeOptimizedBatteryChargingState_;
  }

LABEL_13:

  [v13 *v9];
  HeadphoneProxFeatureManager.updateDevice(for:deviceAddress:usecase:completion:)();
}

void sub_10006EB48(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A570(v7, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "### Restoring FindMy Install started", v9, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E7A0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "### Restoring FindMy app failed: %@\n", v4, 0xCu);
    sub_10000E950(v5, &unk_10011D820, &qword_1000D7280);

LABEL_10:

    return;
  }
}

uint64_t sub_10006ED9C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_10000E950(v8, &qword_10011DE28, &unk_1000D98B0);
}

uint64_t sub_10006EEF0(uint64_t a1, uint64_t a2)
{
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011E7A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Pairing did complete", v7, 2u);
  }

  if (a1)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v12 = String.init<A>(describing:)();
      v14 = sub_100078978(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to pair device: %s", v10, 0xCu);
      sub_10000EA94(v11);
    }

    v15 = a2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 8))(0, ObjectType, v16);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_10006F154();
  }

  sub_10006B1F0(a1, v18);
  return sub_10006F864();
}

uint64_t sub_10006F154()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v1 - 8);
  v55 = v1;
  __chkstk_darwin(v1);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v53 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v52 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v56 = v0;
  v17 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if (*(v17 + *(type metadata accessor for HeadphoneModel(0) + 132)))
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A570(v18, qword_10011E7A0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Skipping device authenticity check - test mode detected", v21, 2u);
    }

    return sub_10006FC54();
  }

  else
  {
    v44 = v14;
    v46 = v9;
    v48 = v16;
    v49 = v11;
    v50 = v10;
    v51 = v4;
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A570(v23, qword_10011E7A0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v45 = v3;
    v47 = v6;
    v28 = v48;
    v27 = v49;
    v29 = v7;
    v30 = v46;
    v31 = v44;
    if (v26)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Beginning device authenticity check", v32, 2u);
    }

    v33 = v56;
    v34 = *(v56 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbDeviceDiscovery);
    v61 = sub_1000709D0;
    v62 = 0;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_10006AF20;
    v60 = &unk_100106630;
    v35 = _Block_copy(&aBlock);
    [v34 activateWithCompletion:v35];
    _Block_release(v35);
    sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
    v43 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v30 = 5;
    v36 = v52;
    (*(v52 + 104))(v30, enum case for DispatchTimeInterval.seconds(_:), v29);
    + infix(_:_:)();
    (*(v36 + 8))(v30, v29);
    v52 = *(v27 + 8);
    v37 = v50;
    (v52)(v31, v50);
    v61 = sub_10007BE24;
    v62 = v33;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_100019340;
    v60 = &unk_100106658;
    v38 = _Block_copy(&aBlock);

    v39 = v47;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0, &protocol conformance descriptor for [A]);
    v40 = v45;
    v41 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v42 = v43;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v38);

    (*(v54 + 8))(v40, v41);
    (*(v53 + 8))(v39, v51);
    return (v52)(v28, v37);
  }
}

uint64_t sub_10006F864()
{
  v1 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  __chkstk_darwin(v1 - 8);
  v31 = &v25 - v2;
  v3 = sub_100008438(&qword_10011EA88, &qword_1000D8880);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_prePairingAssetInfo;
  swift_beginAccess();
  sub_10000E88C(v0 + v13, v5, &qword_10011EA88, &qword_1000D8880);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000E950(v5, &qword_10011EA88, &qword_1000D8880);
  }

  v15 = *(v7 + 32);
  v15(v12, v5, v6);
  v16 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v17 = *(v16 + 152);
  if (v17)
  {
    v30 = *(v16 + 144);
    v36 = String.lowercased()();
    v34 = 58;
    v35 = 0xE100000000000000;
    v32 = 45;
    v33 = 0xE100000000000000;
    v27 = sub_10007BA6C();
    sub_10007BAC0();
    v29 = v15;

    v28 = v0;
    RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

    v26 = v38;
    v27 = v37;
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v31, 1, 1, v18);
    (*(v7 + 16))(v10, v12, v6);
    v19 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    v22 = v29;
    *(v21 + 4) = v30;
    *(v21 + 5) = v17;
    v22(&v21[v19], v10, v6);
    v23 = &v21[v20];
    v24 = v26;
    *v23 = v27;
    v23[1] = v24;
    *&v21[(v20 + 23) & 0xFFFFFFFFFFFFFFF8] = v28;

    sub_100064FAC(0, 0, v31, &unk_1000D8890, v21);
  }

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_10006FC54()
{
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = __chkstk_darwin(v1);
  v64 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v60 - v4;
  v6 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  v61 = v0;
  swift_beginAccess();
  v63 = type metadata accessor for HeadphoneModel;
  v7 = v6;
  sub_10007C964(v6, v5, type metadata accessor for HeadphoneModel);
  v8 = v1[12];
  sub_10000E950(&v5[v8], &qword_10011DE28, &unk_1000D98B0);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(&v5[v8], 1, 1, v9);
  v10 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession;
  v11 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession + 8);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 152);
  swift_unknownObjectRetain();
  v14 = v13(ObjectType, v11);
  v16 = v15;
  swift_unknownObjectRelease();
  if (v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v19 = &v5[v1[14]];

  *v19 = v17;
  *(v19 + 1) = v18;
  v20 = *(v10 + 8);
  v21 = swift_getObjectType();
  v22 = *(v20 + 168);
  swift_unknownObjectRetain();
  LODWORD(v20) = v22(v21, v20);
  swift_unknownObjectRelease();
  *&v5[v1[13]] = v20;
  v23 = *(v10 + 8);
  v24 = swift_getObjectType();
  v25 = *(v23 + 160);
  swift_unknownObjectRetain();
  LOBYTE(v23) = v25(v24, v23);
  swift_unknownObjectRelease();
  v26 = v1;
  v5[v1[35]] = v23 & 1;
  v27 = objc_opt_self();
  v28 = v1[34];
  v29 = v7;
  v30 = *(v7 + v28);
  v62 = v10;
  v31 = *(v10 + 8);
  v32 = swift_getObjectType();
  v33 = *(v31 + 176);
  swift_unknownObjectRetain();
  LOBYTE(v32) = v33(v32, v31);
  swift_unknownObjectRelease();
  v34 = v30;
  v35 = v5;
  v36 = v61;
  v37 = [v27 shouldPromptForAnnounceCallsForProductID:v34 supportsInEarDetection:v32 & 1 isUpsellFlow:0];
  *(v35 + v26[40]) = (v37 | [v27 shouldPromptForAnnounceNotificationsForProductID:*(v29 + v26[34]) isUpsellFlow:0]) & 1;
  v38 = v64;
  sub_10007C964(v35, v64, v63);
  sub_100065EF8(v38);
  v39 = *(v29 + v26[34]);
  if (*(v29 + 152))
  {

    v40 = String._bridgeToObjectiveC()();
  }

  else
  {
    v40 = 0;
  }

  v41 = [objc_allocWithZone(HPHeadphoneFeatureManager) initWithBluetoothAddress:v40 productID:v39];

  v42 = *(v36 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  *(v36 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager) = v41;

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_10000A570(v43, qword_10011E7A0);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Updated Headphone Feature Manager", v46, 2u);
  }

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 67109120;
    *(v49 + 4) = *(v29 + v26[34]);

    _os_log_impl(&_mh_execute_header, v47, v48, "will attempt to fetch MI with model named %u", v49, 8u);
  }

  else
  {
  }

  sub_10000E9C8(v36 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_offersClient, v66);
  sub_10000E7E4(v66, v66[3]);
  v50 = *(v29 + v26[34]);
  v51 = sub_1000B43E8(v50);
  v52 = swift_allocObject();
  swift_weakInit();

  v65 = 0;
  sub_1000655C0(v50, (v51 & 1) == 0, sub_10007BE64, v52);

  sub_10000EA94(v66);
  v53 = v36 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v54 = *(v53 + 8);
    v55 = swift_getObjectType();
    (*(v54 + 8))(1, v55, v54);
    swift_unknownObjectRelease();
  }

  v56 = *(v62 + 8);
  v57 = swift_getObjectType();
  v58 = *(v56 + 192);
  swift_unknownObjectRetain();
  v58(v57, v56);
  swift_unknownObjectRelease();
  return sub_10007C9CC(v35, type metadata accessor for HeadphoneModel);
}

uint64_t sub_1000702AC(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = a2 & 1;
  *(v13 + 24) = a2 & 1;
  *(v13 + 32) = a3;
  aBlock[4] = sub_10007BF70;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_100106748;
  v15 = _Block_copy(aBlock);
  sub_10001C2A0(a1, v14);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

double sub_1000705C4(void *a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  if (a2)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A570(v8, qword_10011E7A0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    sub_10001C2AC(a1, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33[0] = v12;
      *v11 = 136315138;
      v32 = a1;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v13 = String.init<A>(describing:)();
      v15 = sub_100078978(v13, v14, v33);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "HeadphoneInteractor: Failed to fetch marketing item: %s", v11, 0xCu);
      sub_10000EA94(v12);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = Strong + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v20 = v19 + *(v5 + 180);
      v21 = *v20;
      *v20 = a1;
      v22 = *(v20 + 8);
      *(v20 + 8) = 1;
      swift_errorRetain();
      goto LABEL_14;
    }
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A570(v23, qword_10011E7A0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "HeadphoneInteractor: Successfully retrieved MI", v26, 2u);
    }

    swift_beginAccess();
    v27 = swift_weakLoadStrong();
    if (v27)
    {
      v18 = v27;
      v19 = v27 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v28 = v19 + *(v5 + 180);
      v21 = *v28;
      *v28 = a1;
      v22 = *(v28 + 8);
      *(v28 + 8) = 0;
      sub_10001C2A0(a1, 0);
LABEL_14:
      sub_10007BF80(v21, v22);
      v29 = v18 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v29 + 8);
        ObjectType = swift_getObjectType();
        sub_10007C964(v19, v7, type metadata accessor for HeadphoneModel);
        (*(v30 + 24))(v7, ObjectType, v30);

        swift_unknownObjectRelease();
        sub_10007C9CC(v7, type metadata accessor for HeadphoneModel);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1000709E4(uint64_t a1)
{
  v2 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  result = swift_beginAccess();
  if ((*(v5 + *(v2 + 176)) & 1) == 0)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A570(v7, qword_10011E7A0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "CB Device genuine check timed out after 5 seconds", v10, 2u);
    }

    if (*(v5 + 152))
    {
      String.uppercased()();
      v11 = objc_allocWithZone(NSUserDefaults);
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 initWithSuiteName:v12];

      if (v13)
      {
        v14 = String._bridgeToObjectiveC()();
        v15 = [v13 dictionaryForKey:v14];

        if (v15)
        {
        }

        else
        {
          sub_1000A3538(&off_100102BE0);
          sub_100008438(&unk_1001200A0, &unk_1000DA540);
          swift_arrayDestroy();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v20 = String._bridgeToObjectiveC()();

          [v13 setObject:isa forKey:v20];
        }
      }

      else
      {
      }
    }

    else
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "No bluetooth address found", v18, 2u);
      }
    }

    *(v5 + *(v2 + 176)) = 1;
    v21 = a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v21 + 8);
      ObjectType = swift_getObjectType();
      sub_10007C964(v5, v4, type metadata accessor for HeadphoneModel);
      (*(v22 + 24))(v4, ObjectType, v22);
      swift_unknownObjectRelease();
      sub_10007C9CC(v4, type metadata accessor for HeadphoneModel);
    }

    return sub_10006FC54();
  }

  return result;
}

uint64_t sub_100070DBC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A570(v3, qword_10011E7A0);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v8 = String.init<A>(describing:)();
      v10 = sub_100078978(v8, v9, &v19);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to disconnect device: %s", v6, 0xCu);
      sub_10000EA94(v7);
    }

    else
    {
    }
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A570(v11, qword_10011E7A0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Dismissing after disconnect", v14, 2u);
  }

  v15 = *(a2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession + 8);
  ObjectType = swift_getObjectType();
  v17 = *(v15 + 192);
  swift_unknownObjectRetain();
  v17(ObjectType, v15);
  swift_unknownObjectRelease();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100047C68();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100071078(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E7A0);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v7 = String.init<A>(reflecting:)();
      v9 = sub_100078978(v7, v8, &v18);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to unpair device: %s)", v5, 0xCu);
      sub_10000EA94(v6);
    }

    else
    {
    }
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A570(v11, qword_10011E7A0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Successfully unpaired device. Cleaning up pairing session", v14, 2u);
    }

    v15 = *(a2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession + 8);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 192);
    swift_unknownObjectRetain();
    v17(ObjectType, v15);

    swift_unknownObjectRelease();
  }
}

void sub_100071360(void *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v3);
  v5 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 bleDevice];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 advertisementFields];

  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v81 = 25452;
  *(&v81 + 1) = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16) || (v10 = sub_1000CD1FC(v79), (v11 & 1) == 0))
  {

    sub_100047824(v79);
LABEL_9:
    v81 = 0u;
    v82 = 0u;
    goto LABEL_10;
  }

  sub_10003CE5C(*(v9 + 56) + 32 * v10, &v81);
  sub_100047824(v79);

  if (!*(&v82 + 1))
  {
LABEL_10:
    sub_10000E950(&v81, &qword_10011DC40, &qword_1000D7C40);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v12 = v79[0];
    goto LABEL_12;
  }

LABEL_11:
  v12 = 0;
LABEL_12:
  if (*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_allowRepairAutoConnect) != 1)
  {
    return;
  }

  if (v12 & 1 | (([a1 needsSetup] & 1) == 0))
  {
    return;
  }

  v13 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if ((*(v13 + *(v3 + 156)) & 0x8000000000000000) == 0)
  {
    return;
  }

  v14 = [a1 bleDevice];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 rssiFloor];
  }

  else
  {
    v16 = 0;
  }

  if ((sub_10007CA74(v16, *(v13 + *(v3 + 156))) & 0x80000000) != 0)
  {
    return;
  }

  v17 = [a1 bleDevice];
  if (!v17)
  {
    goto LABEL_36;
  }

  v18 = v17;
  v19 = [v17 bluetoothAddress];

  if (!v19)
  {
    goto LABEL_36;
  }

  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = v22;
  v24 = v22 >> 62;
  if ((v22 >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = sub_100022640(v20, v22);
      v26 = BYTE6(v22);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v24 != 2)
  {
    sub_100022640(v20, v22);
    goto LABEL_36;
  }

  v28 = *(v20 + 16);
  v27 = *(v20 + 24);
  v25 = sub_100022640(v20, v23);
  v26 = v27 - v28;
  if (__OFSUB__(v27, v28))
  {
    __break(1u);
LABEL_28:
    v25 = sub_100022640(v20, v23);
    LODWORD(v26) = HIDWORD(v20) - v20;
    if (__OFSUB__(HIDWORD(v20), v20))
    {
      __break(1u);
      goto LABEL_63;
    }

    v26 = v26;
  }

LABEL_30:
  if (v26 != 6)
  {
LABEL_36:
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000A570(v38, qword_10011E7A0);
    v39 = a1;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_45;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v80 = v43;
    *v42 = 136315138;
    v44 = [v39 bleDevice];
    if (v44 && (v45 = v44, v46 = [v44 bluetoothAddress], v45, v46))
    {
      v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0xF000000000000000;
    }

    *&v81 = v47;
    *(&v81 + 1) = v49;
    sub_100008438(&qword_10011EAF0, &qword_1000D8908);
    v50 = String.init<A>(reflecting:)();
    v52 = sub_100078978(v50, v51, &v80);

    *(v42 + 4) = v52;
    v53 = "Invalid bluetooth address length: %s";
    goto LABEL_44;
  }

  v29 = [a1 bleDevice];
  if (!v29 || (v30 = v29, v31 = [v29 bluetoothAddress], v30, !v31))
  {
    if (qword_10011C6C0 == -1)
    {
LABEL_48:
      v54 = type metadata accessor for Logger();
      sub_10000A570(v54, qword_10011E7A0);
      v55 = a1;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_45;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v80 = v43;
      *v42 = 136315138;
      v56 = [v55 bleDevice];
      if (v56 && (v57 = v56, v58 = [v56 bluetoothAddress], v57, v58))
      {
        v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;
      }

      else
      {
        v59 = 0;
        v61 = 0xF000000000000000;
      }

      *&v81 = v59;
      *(&v81 + 1) = v61;
      sub_100008438(&qword_10011EAF0, &qword_1000D8908);
      v76 = String.init<A>(reflecting:)();
      v78 = sub_100078978(v76, v77, &v80);

      *(v42 + 4) = v78;
      v53 = "Could not convert device address to string: %s";
LABEL_44:
      _os_log_impl(&_mh_execute_header, v40, v41, v53, v42, 0xCu);
      sub_10000EA94(v43);

LABEL_45:

      return;
    }

LABEL_63:
    swift_once();
    goto LABEL_48;
  }

  v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = sub_10006BB90(v32, v34);
  v37 = v36;
  sub_100022640(v32, v34);
  sub_10007C964(v13, v5, type metadata accessor for HeadphoneModel);
  LOBYTE(v34) = sub_100042020(v35, v37, v5);
  sub_10007C9CC(v5, type metadata accessor for HeadphoneModel);
  if (v34)
  {
  }

  else
  {
    v62 = v1;
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000A570(v63, qword_10011E7A0);
    v64 = a1;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      *(v67 + 4) = v64;
      *v68 = v64;
      v69 = v64;
      _os_log_impl(&_mh_execute_header, v65, v66, "Triggering auto-pair for repair: %@", v67, 0xCu);
      sub_10000E950(v68, &unk_10011D820, &qword_1000D7280);
    }

    *(v13 + 144) = v35;
    *(v13 + 152) = v37;

    v70 = v62;
    v71 = v62 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v72 = *(v71 + 8);
      ObjectType = swift_getObjectType();
      sub_10007C964(v13, v5, type metadata accessor for HeadphoneModel);
      (*(v72 + 24))(v5, ObjectType, v72);
      v70 = v62;
      swift_unknownObjectRelease();
      sub_10007C9CC(v5, type metadata accessor for HeadphoneModel);
    }

    *(v70 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_hasAutoConnected) = 1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v74 = *(v71 + 8);
      v75 = swift_getObjectType();
      (*(v74 + 16))(v75, v74);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100071C24()
{
  v1 = LXCreateWordModerationLexicon();
  if (v1)
  {
    v2 = v1;
    if ([*(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceManager) isTemporaryPairingConnectionAllowed])
    {

      v3 = 1;
    }

    else
    {
      v8 = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
      v9 = String._bridgeToObjectiveC()();
      [v8 setString:v9];

      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = (v10 + 16);
      __chkstk_darwin(v10);
      NLTokenizer.enumerateTokens(in:using:)();

      swift_beginAccess();
      v12 = *v11;

      v3 = v12 ^ 1;
    }
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_10011E7A0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Friendly Name: Word Moderation Lexicon failed", v7, 2u);
    }

    v3 = 0;
  }

  return v3 & 1;
}

BOOL sub_100071EB8(_BOOL8 result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a2 >> 14 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v15[12] = v8;
    v15[13] = v9;
    String.subscript.getter();
    static String._fromSubstring(_:)();

    v12 = String._bridgeToObjectiveC()();

    v13 = swift_allocObject();
    *(v13 + 16) = a7;
    *(v13 + 24) = a8;
    v15[4] = sub_10007C0C0;
    v15[5] = v13;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100072178;
    v15[3] = &unk_100106860;
    v14 = _Block_copy(v15);

    LXLexiconEnumerateEntriesForString();
    _Block_release(v14);

    swift_beginAccess();
    return (*(a8 + 16) & 1) == 0;
  }

  return result;
}

void sub_100072014(void *a1, _BYTE *a2, int a3, uint64_t a4)
{
  if (a1)
  {
    v11 = a1;
    if ((LXEntryGetMetaFlags() & a3) != 0)
    {
      if (qword_10011C6C0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000A570(v7, qword_10011E7A0);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Friendly Name: Undisplayable name. Skipping", v10, 2u);
      }

      swift_beginAccess();
      *(a4 + 16) = 1;
      if (a2)
      {
        *a2 = 1;
      }
    }

    else
    {
    }
  }
}

void sub_100072178(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t sub_1000721F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v15;
  *(v8 + 168) = v16;
  *(v8 + 144) = a7;
  *(v8 + 152) = a8;
  *(v8 + 364) = a6;
  *(v8 + 360) = a5;
  *(v8 + 136) = a4;
  v9 = type metadata accessor for HeadphonePairing2.AssetRequest();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  sub_100008438(&qword_10011EB08, &qword_1000D8938);
  *(v8 + 200) = swift_task_alloc();
  sub_100008438(&qword_10011EA88, &qword_1000D8880);
  *(v8 + 208) = swift_task_alloc();
  v10 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
  *(v8 + 216) = v10;
  *(v8 + 224) = *(v10 - 8);
  *(v8 + 232) = swift_task_alloc();
  v11 = type metadata accessor for HeadphonePairing2.Configuration();
  *(v8 + 240) = v11;
  *(v8 + 248) = *(v11 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  v12 = type metadata accessor for HeadphoneHardwareModel();
  *(v8 + 272) = v12;
  *(v8 + 280) = *(v12 - 8);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_100072470, 0, 0);
}

uint64_t sub_100072470()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 312) = Strong;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    *(v0 + 320) = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    v3 = Strong + v2;
    swift_beginAccess();
    v4 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:*(v3 + *(type metadata accessor for HeadphoneModel(0) + 136))];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 supportsDigitalEngraving];

      if (v6)
      {
        v7 = swift_task_alloc();
        *(v0 + 328) = v7;
        *v7 = v0;
        v7[1] = sub_100072A28;

        return sub_100073A60();
      }
    }

    v9 = *(v0 + 360);
    v10 = objc_opt_self();
    v11 = [v10 airPods];
    v12 = [v11 productID];

    v13 = *(v0 + 364);
    if ((v12 == v9 || (v14 = *(v0 + 360), v15 = [v10 airPodsSecondGeneration], v16 = objc_msgSend(v15, "productID"), v15, v16 == v14)) && v13 == 1)
    {
      v17 = *(v0 + 304);
      v18 = *(v0 + 272);
      v19 = *(v0 + 280);
      v20 = &enum case for HeadphoneHardwareModel.airPodsSecondGeneration(_:);
    }

    else
    {
      v21 = *(v0 + 360);
      v22 = [v10 b698];
      v23 = [v22 productID];

      if (v23 != v21)
      {
        v24 = *(v0 + 360);
        v25 = [v10 b698];
        v26 = [v25 altProductID];

        if (v26 != v24)
        {
          HeadphoneHardwareModel.init(productID:)();
          (*(*(v0 + 280) + 32))(*(v0 + 304), *(v0 + 296), *(v0 + 272));
          goto LABEL_15;
        }
      }

      v17 = *(v0 + 304);
      v18 = *(v0 + 272);
      v19 = *(v0 + 280);
      v20 = &enum case for HeadphoneHardwareModel.b698(_:);
    }

    (*(v19 + 104))(v17, *v20, v18);
LABEL_15:
    (*(*(v0 + 280) + 16))(*(v0 + 288), *(v0 + 304), *(v0 + 272));
    DefaultAssetRequestTimeout.getter();
    HeadphonePairing2.Configuration.init(hardwareModel:color:timeout:)();
    (*(*(v0 + 248) + 16))(*(v0 + 256), *(v0 + 264), *(v0 + 240));
    HeadphonePairing2.AssetRequest.init(configuration:)();
    v27 = swift_task_alloc();
    *(v0 + 336) = v27;
    *v27 = v0;
    v27[1] = sub_100073524;

    return HeadphonePairing2.AssetRequest.assets()();
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100072A28()
{

  return _swift_task_switch(sub_100072B24, 0, 0);
}

uint64_t sub_100072B24()
{
  v1 = *(v0 + 360);
  v2 = objc_opt_self();
  v3 = [v2 airPods];
  v4 = [v3 productID];

  v5 = *(v0 + 364);
  if (v4 == v1)
  {
    if (v5 == 1)
    {
LABEL_3:
      v6 = *(v0 + 304);
      v7 = *(v0 + 272);
      v8 = *(v0 + 280);
      v9 = &enum case for HeadphoneHardwareModel.airPodsSecondGeneration(_:);
LABEL_11:
      (*(v8 + 104))(v6, *v9, v7);
      goto LABEL_12;
    }
  }

  else
  {
    v10 = *(v0 + 360);
    v11 = [v2 airPodsSecondGeneration];
    v12 = [v11 productID];

    if (v12 == v10 && v5 == 1)
    {
      goto LABEL_3;
    }
  }

  v14 = *(v0 + 360);
  v15 = [v2 b698];
  v16 = [v15 productID];

  if (v16 == v14 || (v17 = *(v0 + 360), v18 = [v2 b698], v19 = objc_msgSend(v18, "altProductID"), v18, v19 == v17))
  {
    v6 = *(v0 + 304);
    v7 = *(v0 + 272);
    v8 = *(v0 + 280);
    v9 = &enum case for HeadphoneHardwareModel.b698(_:);
    goto LABEL_11;
  }

  HeadphoneHardwareModel.init(productID:)();
  (*(*(v0 + 280) + 32))(*(v0 + 304), *(v0 + 296), *(v0 + 272));
LABEL_12:
  (*(*(v0 + 280) + 16))(*(v0 + 288), *(v0 + 304), *(v0 + 272));
  DefaultAssetRequestTimeout.getter();
  HeadphonePairing2.Configuration.init(hardwareModel:color:timeout:)();
  if (qword_10011C6C8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 160);
  v22 = qword_10011E7B8;
  v21 = qword_10011E7C0;
  v23 = v20 >> 60;
  if (v20 >> 60 != 15)
  {
    if (qword_10011E7C0 >> 60 != 15)
    {
      v26 = *(v0 + 152);
      sub_10007B8A8(qword_10011E7B8, qword_10011E7C0);
      sub_10007B8A8(v22, v21);
      sub_10007CE0C(v26, v20);
      v27 = sub_10007B040(v26, v20, v22, v21);
      sub_100047878(v22, v21);
      sub_100022640(v22, v21);
      sub_100047878(v26, v20);
      if (!v27)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

LABEL_18:
    v25 = *(v0 + 152);
    sub_10007B8A8(qword_10011E7B8, qword_10011E7C0);
    sub_10007CE0C(v25, v20);
    sub_100047878(v25, v20);
    sub_100047878(v22, v21);
    goto LABEL_28;
  }

  if (qword_10011E7C0 >> 60 != 15)
  {
    goto LABEL_18;
  }

  v24 = *(v0 + 152);
  sub_10007B8A8(qword_10011E7B8, qword_10011E7C0);
  sub_10007CE0C(v24, v20);
  sub_100047878(v24, v20);
LABEL_20:
  if (IsAppleInternalBuild())
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000A570(v28, qword_10011E7A0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Found LiveOn engraving data, switching to sandbox environment", v31, 2u);
    }

    v32 = objc_allocWithZone(NSUserDefaults);
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 initWithSuiteName:v33];

    if (!v34)
    {
      v34 = [objc_opt_self() standardUserDefaults];
    }

    v35 = String._bridgeToObjectiveC()();
    v36 = String._bridgeToObjectiveC()();
    [v34 setValue:v35 forKey:v36];
  }

LABEL_28:
  v37 = *(v0 + 216);
  v38 = *(v0 + 224);
  v39 = *(v0 + 208);
  sub_10000E88C(*(v0 + 168), v39, &qword_10011EA88, &qword_1000D8880);
  if ((*(v38 + 48))(v39, 1, v37) == 1)
  {
    sub_10000E950(*(v0 + 208), &qword_10011EA88, &qword_1000D8880);
    if (v23 > 0xE && *(*(v0 + 312) + *(v0 + 320) + 152))
    {
      v40 = *(v0 + 200);
      *(v0 + 80) = String.lowercased()();
      *(v0 + 96) = 58;
      *(v0 + 104) = 0xE100000000000000;
      *(v0 + 112) = 45;
      *(v0 + 120) = 0xE100000000000000;
      sub_10007BA6C();
      sub_10007BAC0();

      RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

      PersonalizationAssetManager.PostPairingAssetInfo.init(stableBluetoothIdentifier:)();
      v41 = enum case for PersonalizationAssetManager.AssetInfo.postPairing(_:);
      v42 = type metadata accessor for PersonalizationAssetManager.AssetInfo();
      v43 = *(v42 - 8);
      (*(v43 + 104))(v40, v41, v42);
      (*(v43 + 56))(v40, 0, 1, v42);
      HeadphonePairing2.Configuration.personalizationAssetInfo.setter();
    }
  }

  else
  {
    v45 = *(v0 + 224);
    v44 = *(v0 + 232);
    v46 = *(v0 + 216);
    v47 = *(v0 + 200);
    (*(v45 + 32))(v44, *(v0 + 208), v46);
    (*(v45 + 16))(v47, v44, v46);
    v48 = enum case for PersonalizationAssetManager.AssetInfo.prePairing(_:);
    v49 = type metadata accessor for PersonalizationAssetManager.AssetInfo();
    v50 = *(v49 - 8);
    (*(v50 + 104))(v47, v48, v49);
    (*(v50 + 56))(v47, 0, 1, v49);
    HeadphonePairing2.Configuration.personalizationAssetInfo.setter();
    (*(v45 + 8))(v44, v46);
  }

  (*(*(v0 + 248) + 16))(*(v0 + 256), *(v0 + 264), *(v0 + 240));
  HeadphonePairing2.AssetRequest.init(configuration:)();
  v51 = swift_task_alloc();
  *(v0 + 336) = v51;
  *v51 = v0;
  v51[1] = sub_100073524;

  return HeadphonePairing2.AssetRequest.assets()();
}

uint64_t sub_100073524(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v5 = sub_10007379C;
  }

  else
  {
    *(v4 + 352) = a1;
    v5 = sub_10007364C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10007364C()
{
  v1 = v0[35];
  v10 = v0[34];
  v11 = v0[38];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  sub_100074730(v0[44]);

  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v11, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10007379C()
{
  v23 = v0;
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v7 = v0[43];
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A570(v8, qword_10011E7A0);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v0[16] = v7;
    swift_errorRetain();
    sub_100008438(&unk_10011D970, &unk_1000D6500);
    v13 = String.init<A>(reflecting:)();
    v15 = sub_100078978(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Could not fetch assets: %s", v11, 0xCu);
    sub_10000EA94(v12);
  }

  v16 = v0[39] + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler;
  v17 = *v16;
  if (*v16)
  {
    v18 = *(v16 + 8);

    v17(v19);

    sub_1000622D4(v17, v18);
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100073A60()
{
  v1[39] = v0;
  sub_100008438(&qword_10011EAA0, &unk_1000D88B0);
  v1[40] = swift_task_alloc();
  v2 = type metadata accessor for ProductError();
  v1[41] = v2;
  v1[42] = *(v2 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v3 = type metadata accessor for PersonalizationAssetManager.PostPairingAssetInfo();
  v1[45] = v3;
  v1[46] = *(v3 - 8);
  v1[47] = swift_task_alloc();
  v4 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
  v1[48] = v4;
  v1[49] = *(v4 - 8);
  v1[50] = swift_task_alloc();

  return _swift_task_switch(sub_100073C1C, 0, 0);
}

uint64_t sub_100073C1C()
{
  v1 = *(v0 + 312);
  v2 = [objc_allocWithZone(type metadata accessor for HeadphoneDigitalEngravingManager()) init];
  *(v0 + 408) = v2;
  v3 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v4 = *(v3 + 152);
  if (!v4)
  {

LABEL_10:

    v9 = *(v0 + 8);

    return v9();
  }

  v5 = *(v3 + 144);

  sub_100095FB0(v5, v4, v0 + 64);
  v6 = *(v0 + 64);
  v7 = *(v0 + 88);
  *(v0 + 416) = v6;
  *(v0 + 432) = v7;
  v8 = *(v0 + 104);
  *(v0 + 448) = v8;
  if (!*(&v6 + 1))
  {

    goto LABEL_9;
  }

  if (*(v0 + 80) != 1 || v8 > 2 || (*(v0 + 184) = v7, *(&v7 + 1) >> 60 == 15))
  {

    sub_10000E950(v0 + 64, &qword_10011EB10, &qword_1000D91E0);
LABEL_9:

    goto LABEL_10;
  }

  *(v0 + 488) = *(v0 + 81);
  *(v0 + 491) = *(v0 + 84);
  sub_10000E88C(v0 + 184, v0 + 200, &qword_10011EAF0, &qword_1000D8908);
  sub_10000E88C(v0 + 64, v0 + 112, &qword_10011EB10, &qword_1000D91E0);
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  *(v0 + 456) = sub_10000A570(v11, qword_10011E7A0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Fetching pending engraved asset", v14, 2u);
  }

  sub_10000E88C(v0 + 184, v0 + 216, &qword_10011EAF0, &qword_1000D8908);
  PersonalizationAssetManager.PrePairingAssetInfo.init(scannedBluetoothData:)();
  *(v0 + 248) = String.lowercased()();
  *(v0 + 264) = 58;
  *(v0 + 272) = 0xE100000000000000;
  *(v0 + 280) = 45;
  *(v0 + 288) = 0xE100000000000000;
  sub_10007BA6C();
  sub_10007BAC0();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  PersonalizationAssetManager.PostPairingAssetInfo.init(stableBluetoothIdentifier:)();
  *(v0 + 464) = sub_100066050();
  v15 = swift_task_alloc();
  *(v0 + 472) = v15;
  *v15 = v0;
  v15[1] = sub_100074014;
  v16 = *(v0 + 400);
  v17 = *(v0 + 376);

  return PersonalizationAssetManager.storeAsset(from:to:)(v16, v17);
}

uint64_t sub_100074014()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_100074330;
  }

  else
  {
    v2 = sub_100074144;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100074144(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v1 + 392);
  v5 = *(v1 + 400);
  v8 = *(v1 + 376);
  v7 = *(v1 + 384);
  v9 = *(v1 + 360);
  v10 = *(v1 + 368);
  if (v4)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetched pending engraved asset", v11, 2u);
  }

  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  v13 = *(v1 + 424);
  v12 = *(v1 + 432);
  v14 = *(v1 + 408);
  *(v1 + 16) = *(v1 + 416);
  *(v1 + 24) = v13;
  *(v1 + 32) = 2;
  *(v1 + 33) = *(v1 + 488);
  *(v1 + 36) = *(v1 + 491);
  *(v1 + 40) = v12;
  v17 = *(v1 + 440);
  *(v1 + 48) = v17;
  sub_1000959FC((v1 + 16));
  sub_10000E950(v1 + 184, &qword_10011EAF0, &qword_1000D8908);

  sub_10000E950(v1 + 64, &qword_10011EB10, &qword_1000D91E0);

  sub_100047878(v12, v17);

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_100074330()
{
  v30 = v0;
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 384);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 480);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    *(v0 + 304) = v6;
    swift_errorRetain();
    sub_100008438(&unk_10011D970, &unk_1000D6500);
    v9 = String.init<A>(reflecting:)();
    v11 = sub_100078978(v9, v10, &v29);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch pending engraving: %s", v7, 0xCu);
    sub_10000EA94(v8);
  }

  *(v0 + 296) = *(v0 + 480);
  swift_errorRetain();
  sub_100008438(&unk_10011D970, &unk_1000D6500);
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 344);
    v12 = *(v0 + 352);
    v14 = *(v0 + 328);
    v15 = *(v0 + 336);
    v16 = *(v0 + 320);
    (*(v15 + 56))(v16, 0, 1, v14);
    (*(v15 + 32))(v12, v16, v14);
    (*(v15 + 104))(v13, enum case for ProductError.assetNotFound(_:), v14);
    sub_10007CA2C(&qword_10011EAA8, &type metadata accessor for ProductError, &protocol conformance descriptor for ProductError);
    LOBYTE(v16) = dispatch thunk of static Equatable.== infix(_:_:)();

    v17 = *(v15 + 8);
    v17(v13, v14);
    v17(v12, v14);
    if (v16)
    {
      v18 = *(v0 + 448);
      v19 = 2;
      goto LABEL_8;
    }
  }

  else
  {
    v20 = *(v0 + 328);
    v21 = *(v0 + 336);
    v22 = *(v0 + 320);

    (*(v21 + 56))(v22, 1, 1, v20);
    sub_10000E950(v22, &qword_10011EAA0, &unk_1000D88B0);
  }

  v18 = *(v0 + 448) + 1;
  v19 = 1;
LABEL_8:
  v24 = *(v0 + 432);
  v23 = *(v0 + 440);
  v25 = *(v0 + 424);
  v26 = *(v0 + 408);
  *(v0 + 16) = *(v0 + 416);
  *(v0 + 24) = v25;
  *(v0 + 32) = v19;
  *(v0 + 33) = *(v0 + 488);
  *(v0 + 36) = *(v0 + 491);
  *(v0 + 40) = v24;
  *(v0 + 48) = v23;
  *(v0 + 56) = v18;
  sub_1000959FC((v0 + 16));
  sub_10000E950(v0 + 184, &qword_10011EAF0, &qword_1000D8908);

  sub_10000E950(v0 + 64, &qword_10011EB10, &qword_1000D91E0);

  sub_100047878(v24, v23);

  v27 = *(v0 + 8);

  return v27();
}

double sub_100074730(uint64_t a1)
{
  v3 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  __chkstk_darwin(v3 - 8);
  v31 = &v31 - v4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v8 = *(v33 - 8);
  __chkstk_darwin(v33);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10007CE80;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_100106A68;
  v13 = _Block_copy(aBlock);
  v32 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v34 + 8))(v7, v5);
  (*(v8 + 8))(v10, v33);
  v14 = objc_allocWithZone(NSUserDefaults);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithSuiteName:v15];

  if (!v16)
  {
    v16 = [objc_opt_self() standardUserDefaults];
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 BOOLForKey:v17];

  if (v18)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A570(v19, qword_10011E7A0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Manatee CloudKit migration SKIPPED, migration already ran", v22, 2u);
    }
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000A570(v24, qword_10011E7A0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Manatee CloudKit migration START", v27, 2u);
    }

    v28 = type metadata accessor for TaskPriority();
    v29 = v31;
    (*(*(v28 - 8) + 56))(v31, 1, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v32;

    sub_100064FAC(0, 0, v29, &unk_1000D8958, v30);
  }

  return result;
}

double sub_100074D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneModel(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  *(v8 + *(v5 + 156)) = a2;

  v9 = a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    sub_10007C964(v8, v7, type metadata accessor for HeadphoneModel);
    (*(v11 + 24))(v7, ObjectType, v11);
    swift_unknownObjectRelease();
    sub_10007C9CC(v7, type metadata accessor for HeadphoneModel);
  }

  v13 = a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler;
  v14 = *(a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler);
  if (v14)
  {
    v15 = *(v13 + 8);

    v14(v16);
    return sub_1000622D4(v14, v15);
  }

  return result;
}

uint64_t sub_100074ED8()
{
  *(v0 + 32) = sub_100066050();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100074F78;

  return PersonalizationAssetManager.migrateToManateeContainer()();
}

uint64_t sub_100074F78()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10007526C;
  }

  else
  {

    v2 = sub_100075094;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100075094()
{
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A570(v1, qword_10011E7A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Manatee CloudKit migration END", v4, 2u);
  }

  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  if (!v7)
  {
    v7 = [objc_opt_self() standardUserDefaults];
  }

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v7 setValue:isa forKey:v9];

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10007526C()
{
  v14 = v0;

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A570(v1, qword_10011E7A0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_100008438(&unk_10011D970, &unk_1000D6500);
    v8 = String.init<A>(reflecting:)();
    v10 = sub_100078978(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Manatee CloudKit migration FAILED {error: %s}", v6, 0xCu);
    sub_10000EA94(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100075444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v13;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  sub_100008438(&qword_10011EAA0, &unk_1000D88B0);
  v8[22] = swift_task_alloc();
  v9 = type metadata accessor for ProductError();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v10 = type metadata accessor for PersonalizationAssetManager.PostPairingAssetInfo();
  v8[27] = v10;
  v8[28] = *(v10 - 8);
  v8[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000755B4, 0, 0);
}

uint64_t sub_1000755B4()
{
  v0[30] = [objc_allocWithZone(type metadata accessor for HeadphoneDigitalEngravingManager()) init];

  v0[31] = PersonalizationAssetManager.PrePairingAssetInfo.scannedBluetoothData.getter();
  v0[32] = v1;
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[33] = sub_10000A570(v2, qword_10011E7A0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Moving engraved asset", v5, 2u);
  }

  PersonalizationAssetManager.PostPairingAssetInfo.init(stableBluetoothIdentifier:)();
  v0[34] = sub_100066050();
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_100075778;
  v7 = v0[29];
  v8 = v0[18];

  return PersonalizationAssetManager.storeAsset(from:to:)(v8, v7);
}

uint64_t sub_100075778()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_100075A64;
  }

  else
  {
    v2 = sub_1000758A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000758A8()
{
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 24) = *(v0 + 136);
  *(v0 + 32) = 2;
  *(v0 + 40) = *(v0 + 248);
  *(v0 + 56) = 0;
  sub_1000959FC((v0 + 16));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 216);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Moved engraved asset", v7, 2u);
  }

  (*(v5 + 8))(v4, v6);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 240);
  v11 = *(v0 + 136);
  *(v0 + 64) = *(v0 + 128);
  *(v0 + 72) = v11;
  *(v0 + 80) = 2;
  *(v0 + 81) = *(v0 + 296);
  *(v0 + 84) = *(v0 + 299);
  *(v0 + 88) = v9;
  *(v0 + 96) = v8;
  *(v0 + 104) = 0;
  sub_1000959FC((v0 + 64));

  sub_100047878(v9, v8);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100075A64()
{
  v27 = v0;
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 288);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    *(v0 + 120) = v3;
    swift_errorRetain();
    sub_100008438(&unk_10011D970, &unk_1000D6500);
    v6 = String.init<A>(reflecting:)();
    v8 = sub_100078978(v6, v7, &v26);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to store engraved asset: %s", v4, 0xCu);
    sub_10000EA94(v5);
  }

  *(v0 + 112) = *(v0 + 288);
  swift_errorRetain();
  sub_100008438(&unk_10011D970, &unk_1000D6500);
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = *(v0 + 176);
    (*(v12 + 56))(v13, 0, 1, v11);
    (*(v12 + 32))(v9, v13, v11);
    (*(v12 + 104))(v10, enum case for ProductError.assetNotFound(_:), v11);
    sub_10007CA2C(&qword_10011EAA8, &type metadata accessor for ProductError, &protocol conformance descriptor for ProductError);
    LOBYTE(v13) = dispatch thunk of static Equatable.== infix(_:_:)();

    v14 = *(v12 + 8);
    v14(v10, v11);
    v14(v9, v11);
    if (v13)
    {
      v15 = 0;
      v16 = 2;
      goto LABEL_8;
    }
  }

  else
  {
    v17 = *(v0 + 184);
    v18 = *(v0 + 192);
    v19 = *(v0 + 176);

    (*(v18 + 56))(v19, 1, 1, v17);
    sub_10000E950(v19, &qword_10011EAA0, &unk_1000D88B0);
  }

  v16 = 1;
  v15 = 1;
LABEL_8:
  v21 = *(v0 + 248);
  v20 = *(v0 + 256);
  v22 = *(v0 + 240);
  v23 = *(v0 + 136);
  *(v0 + 64) = *(v0 + 128);
  *(v0 + 72) = v23;
  *(v0 + 80) = v16;
  *(v0 + 81) = *(v0 + 296);
  *(v0 + 84) = *(v0 + 299);
  *(v0 + 88) = v21;
  *(v0 + 96) = v20;
  *(v0 + 104) = v15;
  sub_1000959FC((v0 + 64));

  sub_100047878(v21, v20);

  v24 = *(v0 + 8);

  return v24();
}

double sub_100075E14(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v78 = v4;
    v79 = v5;
    v80 = v2;
    v12 = swift_allocObject();
    v74 = v12;
    *(v12 + 16) = _swiftEmptyArrayStorage;
    v13 = (v12 + 16);
    v14 = swift_allocObject();
    v75 = v14;
    *(v14 + 16) = _swiftEmptyArrayStorage;
    v15 = (v14 + 16);
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v76 = v8;
    v77 = v6;
    v16 = type metadata accessor for Logger();
    v17 = sub_10000A570(v16, qword_10011E7A0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Fetching notification sources", v20, 2u);
    }

    v21 = *(v11 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter + 24);
    v22 = *(v11 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter + 32);
    sub_10000E7E4((v11 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter), v21);
    v23 = (*(v22 + 24))(v21, v22);
    v24 = *(v23 + 16);
    v81 = v1;
    if (v24)
    {
      v72[1] = v17;
      v73 = v11;
      v25 = 0;
      v72[0] = v23;
      v26 = v23 + 32;
      v82 = 0x80000001000E0CC0;
      while (1)
      {
        sub_10000E9C8(v26, aBlock);
        v27 = v84;
        v28 = v85;
        sub_10000E7E4(aBlock, v84);
        if ((*(v28 + 1))(v27, v28))
        {
          goto LABEL_9;
        }

        v29 = v84;
        v30 = v85;
        sub_10000E7E4(aBlock, v84);
        v31 = (*(v30 + 2))(v29, v30);
        v33 = v32;

        v34 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v34 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (!v34)
        {
          goto LABEL_9;
        }

        v35 = v84;
        v36 = v85;
        sub_10000E7E4(aBlock, v84);
        if ((*(v36 + 3))(v35, v36) == 0xD000000000000015 && 0x80000001000E0A10 == v37)
        {
        }

        else
        {
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v39 & 1) == 0)
          {
            v40 = v84;
            v41 = v85;
            sub_10000E7E4(aBlock, v84);
            if ((*(v41 + 3))(v40, v41) == 0xD000000000000013 && v82 == v42)
            {

              goto LABEL_23;
            }

            v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v43)
            {
LABEL_23:
              v44 = v84;
              v45 = v85;
              sub_10000E7E4(aBlock, v84);
              v25 = (*(v45 + 6))(v44, v45);
            }

            v46 = v84;
            v47 = v85;
            sub_10000E7E4(aBlock, v84);
            if ((*(v47 + 4))(v46, v47))
            {
              sub_10000E9C8(aBlock, v87);
              sub_100046E78(v87, v88);
              v48 = *v13;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v13 = v48;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v48 = sub_1000CCF50(0, *(v48 + 2) + 1, 1, v48);
                *v13 = v48;
              }

              v51 = *(v48 + 2);
              v50 = *(v48 + 3);
              if (v51 >= v50 >> 1)
              {
                v48 = sub_1000CCF50((v50 > 1), v51 + 1, 1, v48);
              }

              *(v48 + 2) = v51 + 1;
              v52 = &v48[48 * v51];
              v53 = v88[0];
              v54 = v88[2];
              *(v52 + 3) = v88[1];
              *(v52 + 4) = v54;
              *(v52 + 2) = v53;
              *v13 = v48;
            }

            else
            {
              sub_10000E9C8(aBlock, v87);
              sub_100046E78(v87, v89);
              v55 = *v15;
              v56 = swift_isUniquelyReferenced_nonNull_native();
              *v15 = v55;
              if ((v56 & 1) == 0)
              {
                v55 = sub_1000CCF50(0, *(v55 + 2) + 1, 1, v55);
                *v15 = v55;
              }

              v58 = *(v55 + 2);
              v57 = *(v55 + 3);
              if (v58 >= v57 >> 1)
              {
                v55 = sub_1000CCF50((v57 > 1), v58 + 1, 1, v55);
              }

              *(v55 + 2) = v58 + 1;
              v59 = &v55[48 * v58];
              v60 = v89[0];
              v61 = v89[2];
              *(v59 + 3) = v89[1];
              *(v59 + 4) = v61;
              *(v59 + 2) = v60;
              *v15 = v55;
            }
          }
        }

LABEL_9:
        sub_10000EA94(aBlock);
        v26 += 40;
        if (!--v24)
        {

          v11 = v73;
          goto LABEL_37;
        }
      }
    }

    v25 = 0;
LABEL_37:
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Fetching notification sources finished", v64, 2u);
    }

    sub_1000767D0(v13);
    sub_1000767D0(v15);
    sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
    v65 = static OS_dispatch_queue.main.getter();
    v66 = swift_allocObject();
    *(v66 + 16) = v11;
    *(v66 + 24) = v25 & 1;
    v67 = v75;
    *(v66 + 32) = v74;
    *(v66 + 40) = v67;
    v85 = sub_10007CFEC;
    v86 = v66;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    v84 = &unk_100106B30;
    v68 = _Block_copy(aBlock);

    v69 = v76;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0, &protocol conformance descriptor for [A]);
    v70 = v78;
    v71 = v81;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v68);

    (*(v80 + 8))(v70, v71);
    (*(v77 + 8))(v69, v79);
  }

  return result;
}

void sub_1000767D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10007ACF4(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_10007906C(v4);
  *a1 = v2;
}

void sub_100076840(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_10007AD08(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_100079164(v4);
  *a1 = v2;
}

uint64_t sub_1000768B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for HeadphoneModel(0);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  __chkstk_darwin(v10);
  v14 = v29 - v13 + 64;
  v15 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  sub_10007C964(a1 + v15, v14, type metadata accessor for HeadphoneModel);
  v14[*(v9 + 176)] = a2;
  v28 = 0x80000001000E0A10;
  v16 = sub_100033A5C(21);
  v18 = v17;
  v19 = sub_100033A5C(22);
  v21 = v20;
  swift_beginAccess();
  v22 = *(a3 + 16);
  swift_beginAccess();
  v23 = *(a4 + 16);
  v24 = *(v14 + 5);
  v29[4] = *(v14 + 4);
  v29[5] = v24;
  v29[6] = *(v14 + 6);
  v25 = *(v14 + 1);
  v29[0] = *v14;
  v29[1] = v25;
  v26 = *(v14 + 3);
  v29[2] = *(v14 + 2);
  v29[3] = v26;

  sub_10000E950(v29, &qword_10011EB18, &qword_1000D8960);
  *v14 = 0xD000000000000015;
  *(v14 + 1) = v28;
  *(v14 + 2) = v16;
  *(v14 + 3) = v18;
  v14[32] = 1;
  *(v14 + 40) = xmmword_1000D8670;
  *(v14 + 7) = 0xE600000000000000;
  *(v14 + 8) = v19;
  *(v14 + 9) = v21;
  v14[80] = 1;
  *(v14 + 11) = 0;
  *(v14 + 12) = v22;
  *(v14 + 13) = v23;
  sub_10007C964(v14, v12, type metadata accessor for HeadphoneModel);
  sub_100065EF8(v12);
  return sub_10007C9CC(v14, type metadata accessor for HeadphoneModel);
}

double sub_100076ADC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = __chkstk_darwin(v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v33 = a3;
    v36 = v12;
    v37 = v9;
    v38 = v7;
    v39 = v6;
    v40 = v11;
    v16 = swift_allocObject();
    v35 = v16;
    *(v16 + 16) = _swiftEmptyArrayStorage;
    v17 = (v16 + 16);
    v18 = swift_allocObject();
    v34 = v18;
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v19 = (v18 + 16);
    if (a1)
    {
      if (a1 >> 62)
      {
        goto LABEL_15;
      }

      for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v21 = 0;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_14;
            }

            v22 = *(a1 + 8 * v21 + 32);
          }

          v23 = v22;
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          sub_10007C564(v22, v17, v19);

          ++v21;
          if (v24 == i)
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
    }

LABEL_16:
    sub_100076840(v17);
    sub_100076840(v19);
    sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
    v32 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    v26 = v34;
    v27 = v35;
    v25[2] = v33;
    v25[3] = v27;
    v25[4] = v26;
    aBlock[4] = sub_10007C194;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100106950;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0, &protocol conformance descriptor for [A]);
    v29 = v37;
    v30 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v31 = v32;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    (*(v38 + 8))(v29, v30);
    (*(v36 + 8))(v15, v40);
  }

  return result;
}

uint64_t sub_100076F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeadphoneModel(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  sub_10007C964(v12, v11, type metadata accessor for HeadphoneModel);
  swift_beginAccess();
  v13 = *(a2 + 16);
  swift_beginAccess();
  v14 = *(a3 + 16);
  v15 = *(v11 + 14);
  v16 = *(v11 + 15);

  sub_10007C8C0(v15, v16);
  *(v11 + 14) = v13;
  *(v11 + 15) = v14;
  sub_10007C964(v11, v9, type metadata accessor for HeadphoneModel);
  sub_100065EF8(v9);
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000A570(v17, qword_10011E7A0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v20 = 136315394;
    v21 = *(v12 + 112);
    if (v21)
    {
      if (v21 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v22 = 0;
    }

    v33 = v22;
    v34 = v21 == 0;
    sub_100008438(&unk_10011EBC0, &qword_1000D8B20);
    v23 = String.init<A>(reflecting:)();
    v25 = sub_100078978(v23, v24, &v35);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = *(v12 + 112);
    if (v26)
    {
      v27 = *(v12 + 120);
      if (v27 >> 62)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v28 = 0;
    }

    v33 = v28;
    v34 = v26 == 0;
    v29 = String.init<A>(reflecting:)();
    v31 = sub_100078978(v29, v30, &v35);

    *(v20 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v18, v19, "Live Translation: Update: suggestedLanguages: %s, moreLanguages: %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  return sub_10007C9CC(v11, type metadata accessor for HeadphoneModel);
}

double sub_10007729C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000084D4(0, &qword_10011CA90, &off_100101348);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

void sub_100077358(const char *a1)
{
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E7A0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

void sub_100077448(uint64_t a1, char a2)
{
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A570(v5, qword_10011E7A0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315394;
    v10 = Array.description.getter();
    v12 = sub_100078978(v10, v11, aBlock);

    *(v8 + 4) = v12;
    *(v8 + 12) = 1024;
    *(v8 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "Live Translation: downloadTranslationAssets: locales: %s, useCellular: %{BOOL}d", v8, 0x12u);
    sub_10000EA94(v9);
  }

  if (*(a1 + 16))
  {
    v13 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetManagementClient);
    isa = Array._bridgeToObjectiveC()().super.isa;
    aBlock[4] = sub_100077728;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10006AF20;
    aBlock[3] = &unk_100106540;
    v15 = _Block_copy(aBlock);
    [v13 downloadTranslationAssets:isa useCellular:a2 & 1 completion:v15];
    _Block_release(v15);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Live Translation: downloadTranslationAssets: Empty Locales, Skip", v17, 2u);
    }
  }
}

void sub_100077728(uint64_t a1)
{
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E7A0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      v7 = v6;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *(v4 + 4) = v6;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Live Translation: downloadTranslationAssets: Complete: %@", v4, 0xCu);
    sub_10000E950(v5, &unk_10011D820, &qword_1000D7280);
  }
}

void sub_100077898(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NWInterface.InterfaceType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for NWInterface.InterfaceType.cellular(_:), v3);
  v7 = NWPath.usesInterfaceType(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A570(v8, qword_10011E7A0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      v12 = 1;
      goto LABEL_13;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Live Translation: Cellular network is used", v11, 2u);
    v12 = 1;
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A570(v13, qword_10011E7A0);
    v9 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v9, v14))
    {
      v12 = 0;
      goto LABEL_13;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v9, v14, "Live Translation: Wi-Fi network is used", v15, 2u);
    v12 = 0;
  }

LABEL_13:

  *(a2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isUsingCellular) = v12;
}

uint64_t sub_100077B08()
{
  sub_100008598(v0 + 16);
  sub_10007C9CC(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model, type metadata accessor for HeadphoneModel);
  sub_100008598(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate);

  sub_1000622D4(*(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler), *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler + 8));
  swift_unknownObjectRelease();
  sub_10000EA94((v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter));

  sub_10000EA94((v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_offersClient));

  sub_10000E950(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingStartDate, &qword_10011DE30, &qword_1000D79F0);

  v1 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor__batteryInfo;
  v2 = sub_100008438(&qword_10011F9A0, &qword_1000D8968);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000E950(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_prePairingAssetInfo, &qword_10011EA88, &qword_1000D8880);
  return v0;
}

uint64_t sub_100077D34()
{
  sub_100077B08();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeadphoneInteractor(uint64_t a1)
{
  result = qword_10011E8C0;
  if (!qword_10011E8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100077DE0(uint64_t a1)
{
  type metadata accessor for HeadphoneModel(319);
  if (v1 <= 0x3F)
  {
    sub_100078050(319, &qword_10011DEE0, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100078050(319, &qword_10011E8D0, &type metadata accessor for AADBatteryInfoVM, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_100078050(319, &unk_10011E8D8, &type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100078050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000780C0(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100078110(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100078158()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000781F8@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_100078248(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1000782C8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100078344@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100078574(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10007AF88(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100022640(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100078344(v13, a3, a4, &v12);
  v10 = v4;
  sub_100022640(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100078704(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000787FC;

  return v6(a1);
}

uint64_t sub_1000787FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10007891C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100078978(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t sub_100078978(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100078A44(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10003CE5C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000EA94(v11);
  return v7;
}

unint64_t sub_100078A44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100078B50(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100078B50(uint64_t a1, unint64_t a2)
{
  v3 = sub_100078B9C(a1, a2);
  sub_100078CCC(&off_1001029D8);
  return v3;
}

void *sub_100078B9C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100078DB8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100078DB8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_100078CCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100078E2C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100078DB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100008438(&qword_10011EA58, &unk_1000D8800);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100078E2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&qword_10011EA58, &unk_1000D8800);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100078F20(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100078F34(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100078FA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

_BYTE *sub_100078FD8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10007C2D0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10007C388(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10007C404(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void sub_10007906C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100079534(v7, v8, a1, v4);
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
    sub_100079278(0, v2, 1, a1);
  }
}

void sub_100079164(unint64_t *a1)
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
        sub_1000084D4(0, &qword_10011CA90, &off_100101348);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100079C00(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1000793A0(0, v2, 1, a1);
  }
}

uint64_t sub_100079278(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_100008480();
    v7 = v6 + 48 * v4 - 48;
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = StringProtocol.localizedCompare<A>(_:)();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v10 + 48);
      v12 = *(v10 + 56);
      v13 = *(v10 + 64);
      v14 = *(v10 + 72);
      v15 = *(v10 + 80);
      v16 = *(v10 + 88);
      v17 = *(v10 + 16);
      *(v10 + 48) = *v10;
      *(v10 + 64) = v17;
      *(v10 + 80) = *(v10 + 32);
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 24) = v14;
      *(v10 + 32) = v15;
      *(v10 + 40) = v16;
      v10 -= 48;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000793A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v29 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &selRef_setTableHeaderView_;
LABEL_6:
    v27 = v4;
    v28 = a3;
    v7 = *(v29 + 8 * a3);
    v26 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      v11 = [v9 v6[133]];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = [v10 v6[133]];
      if (!v16)
      {
        __break(1u);
        break;
      }

      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (v13 == v18 && v15 == v20)
      {

        v6 = &selRef_setTableHeaderView_;
LABEL_5:
        a3 = v28 + 1;
        v4 = v27 + 8;
        v5 = v26 - 1;
        if (v28 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v6 = &selRef_setTableHeaderView_;
      if (v22)
      {
        if (!v29)
        {
          goto LABEL_20;
        }

        v23 = *v4;
        v7 = *(v4 + 8);
        *v4 = v7;
        *(v4 + 8) = v23;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_100079534(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      if (v7 + 1 >= v6)
      {
        v6 = v7 + 1;
      }

      else
      {
        v96 = v5;
        v10 = *a3 + 48 * v7;
        sub_100008480();
        v11 = StringProtocol.localizedCompare<A>(_:)();
        v12 = v7 + 2;
        v13 = v10 + 120;
        while (v6 != v12)
        {
          ++v12;
          v13 += 48;
          if ((v11 == -1) == (StringProtocol.localizedCompare<A>(_:)() != -1))
          {
            v6 = v12 - 1;
            break;
          }
        }

        v5 = v96;
        if (v11 == -1)
        {
          if (v6 < v7)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            return;
          }

          if (v7 < v6)
          {
            v14 = 48 * v6 - 24;
            v15 = 48 * v7 + 40;
            v16 = v6;
            v17 = v7;
            do
            {
              if (v17 != --v16)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v18 = (v27 + v15);
                v19 = *(v27 + v15 - 40);
                v20 = v27 + v14;
                v21 = *(v18 - 3);
                v22 = *(v18 - 2);
                v23 = *(v18 - 8);
                v24 = *v18;
                v25 = *(v20 + 8);
                v26 = *(v20 - 8);
                *(v18 - 5) = *(v20 - 24);
                *(v18 - 3) = v26;
                *(v18 - 1) = v25;
                *(v20 - 24) = v19;
                *(v20 - 8) = v21;
                *v20 = v22;
                *(v20 + 8) = v23;
                *(v20 + 16) = v24;
              }

              ++v17;
              v14 -= 48;
              v15 += 48;
            }

            while (v17 < v16);
          }
        }
      }

      v28 = a3[1];
      if (v6 >= v28)
      {
        goto LABEL_27;
      }

      if (__OFSUB__(v6, v7))
      {
        goto LABEL_117;
      }

      if (v6 - v7 >= a4)
      {
        goto LABEL_27;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_118;
      }

      if (v7 + a4 < v28)
      {
        v28 = v7 + a4;
      }

      if (v28 < v7)
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      if (v6 == v28)
      {
LABEL_27:
        v7 = v6;
      }

      else
      {
        v99 = v28;
        v97 = v5;
        v76 = *a3;
        sub_100008480();
        v77 = v76 + 48 * v6 - 48;
        v94 = v9;
        v78 = v9 - v6;
        do
        {
          v79 = v78;
          v80 = v77;
          do
          {
            if (StringProtocol.localizedCompare<A>(_:)() != -1)
            {
              break;
            }

            if (!v76)
            {
              goto LABEL_122;
            }

            v81 = *(v80 + 48);
            v82 = *(v80 + 56);
            v83 = *(v80 + 64);
            v84 = *(v80 + 72);
            v85 = *(v80 + 80);
            v86 = *(v80 + 88);
            v87 = *(v80 + 16);
            *(v80 + 48) = *v80;
            *(v80 + 64) = v87;
            *(v80 + 80) = *(v80 + 32);
            *v80 = v81;
            *(v80 + 8) = v82;
            *(v80 + 16) = v83;
            *(v80 + 24) = v84;
            *(v80 + 32) = v85;
            *(v80 + 40) = v86;
            v80 -= 48;
          }

          while (!__CFADD__(v79++, 1));
          ++v6;
          v77 += 48;
          --v78;
        }

        while (v6 != v99);
        v5 = v97;
        v7 = v99;
        v9 = v94;
      }

      v6 = a3;
      if (v7 < v9)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10007ABF0(0, *(v8 + 2) + 1, 1, v8);
      }

      v30 = *(v8 + 2);
      v29 = *(v8 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v8 = sub_10007ABF0((v29 > 1), v30 + 1, 1, v8);
      }

      *(v8 + 2) = v31;
      v32 = &v8[16 * v30];
      *(v32 + 4) = v9;
      *(v32 + 5) = v7;
      v33 = *a1;
      if (!*a1)
      {
        goto LABEL_126;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v35 = *(v8 + 4);
            v36 = *(v8 + 5);
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_48:
            if (v38)
            {
              goto LABEL_105;
            }

            v51 = &v8[16 * v31];
            v53 = *v51;
            v52 = *(v51 + 1);
            v54 = __OFSUB__(v52, v53);
            v55 = v52 - v53;
            v56 = v54;
            if (v54)
            {
              goto LABEL_108;
            }

            v57 = &v8[16 * v34 + 32];
            v59 = *v57;
            v58 = *(v57 + 1);
            v45 = __OFSUB__(v58, v59);
            v60 = v58 - v59;
            if (v45)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v55, v60))
            {
              goto LABEL_112;
            }

            if (v55 + v60 >= v37)
            {
              if (v37 < v60)
              {
                v34 = v31 - 2;
              }

              goto LABEL_69;
            }

            goto LABEL_62;
          }

          v61 = &v8[16 * v31];
          v63 = *v61;
          v62 = *(v61 + 1);
          v45 = __OFSUB__(v62, v63);
          v55 = v62 - v63;
          v56 = v45;
LABEL_62:
          if (v56)
          {
            goto LABEL_107;
          }

          v64 = &v8[16 * v34];
          v66 = *(v64 + 4);
          v65 = *(v64 + 5);
          v45 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v45)
          {
            goto LABEL_110;
          }

          if (v67 < v55)
          {
            goto LABEL_3;
          }

LABEL_69:
          v72 = v34 - 1;
          if (v34 - 1 >= v31)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_123;
          }

          v73 = *&v8[16 * v72 + 32];
          v74 = *&v8[16 * v34 + 40];
          sub_10007A470((*a3 + 48 * v73), (*a3 + 48 * *&v8[16 * v34 + 32]), (*a3 + 48 * v74), v33);
          if (v5)
          {
            goto LABEL_98;
          }

          if (v74 < v73)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_10007ABDC(v8);
          }

          if (v72 >= *(v8 + 2))
          {
            goto LABEL_102;
          }

          v75 = &v8[16 * v72];
          *(v75 + 4) = v73;
          *(v75 + 5) = v74;
          sub_10007AB50(v34);
          v31 = *(v8 + 2);
          if (v31 <= 1)
          {
            goto LABEL_3;
          }
        }

        v39 = &v8[16 * v31 + 32];
        v40 = *(v39 - 64);
        v41 = *(v39 - 56);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_103;
        }

        v44 = *(v39 - 48);
        v43 = *(v39 - 40);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_104;
        }

        v46 = &v8[16 * v31];
        v48 = *v46;
        v47 = *(v46 + 1);
        v45 = __OFSUB__(v47, v48);
        v49 = v47 - v48;
        if (v45)
        {
          goto LABEL_106;
        }

        v45 = __OFADD__(v37, v49);
        v50 = v37 + v49;
        if (v45)
        {
          goto LABEL_109;
        }

        if (v50 >= v42)
        {
          v68 = &v8[16 * v34 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v45 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v45)
          {
            goto LABEL_113;
          }

          if (v37 < v71)
          {
            v34 = v31 - 2;
          }

          goto LABEL_69;
        }

        goto LABEL_48;
      }

LABEL_3:
      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_88;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_88:
  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_127;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_120:
    v8 = sub_10007ABDC(v8);
  }

  v89 = v5;
  v90 = *(v8 + 2);
  if (v90 >= 2)
  {
    while (*a3)
    {
      v5 = v90 - 1;
      v91 = *&v8[16 * v90];
      v92 = *&v8[16 * v90 + 24];
      sub_10007A470((*a3 + 48 * v91), (*a3 + 48 * *&v8[16 * v90 + 16]), (*a3 + 48 * v92), v6);
      if (v89)
      {
        goto LABEL_98;
      }

      if (v92 < v91)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10007ABDC(v8);
      }

      if (v90 - 2 >= *(v8 + 2))
      {
        goto LABEL_115;
      }

      v93 = &v8[16 * v90];
      *v93 = v91;
      *(v93 + 1) = v92;
      sub_10007AB50(v5);
      v90 = *(v8 + 2);
      if (v90 <= 1)
      {
        goto LABEL_98;
      }
    }

    goto LABEL_124;
  }

LABEL_98:
}

void sub_100079C00(void ***a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v8 = &selRef_setTableHeaderView_;
    while (1)
    {
      v9 = v6;
      v10 = v6 + 1;
      if (v6 + 1 >= v5)
      {
        goto LABEL_38;
      }

      v126 = v5;
      v119 = v7;
      v121 = v6;
      v4 = *a3;
      v11 = *(*a3 + 8 * v6);
      v12 = *(*a3 + 8 * v10);
      v13 = v11;
      v14 = [v12 v8[133]];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = [v13 v8[133]];
      if (!v18)
      {
        goto LABEL_161;
      }

      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v6 == v20 && v17 == v22)
      {
        v132 = 0;
      }

      else
      {
        v132 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v9 = v121;
      v10 = v121 + 2;
      if (v121 + 2 >= v126)
      {
        v8 = &selRef_setTableHeaderView_;
        goto LABEL_29;
      }

      v129 = v121 + 2;
      v4 += 8 * v121 + 16;
      v8 = &selRef_setTableHeaderView_;
      while (1)
      {
        v25 = *(v4 - 8);
        v26 = *v4;
        v27 = v25;
        v28 = [v26 v8[133]];
        if (!v28)
        {
          goto LABEL_155;
        }

        v29 = v28;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = [v27 v8[133]];
        if (!v32)
        {
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        if (v6 == v34 && v31 == v36)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v132 ^ v24))
        {
          v8 = &selRef_setTableHeaderView_;
          v10 = v129;
LABEL_28:
          v9 = v121;
LABEL_29:
          v7 = v119;
          if (v132)
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_16:
        v4 += 8;
        ++v129;
        v10 = v126;
        v8 = &selRef_setTableHeaderView_;
        if (v126 == v129)
        {
          goto LABEL_28;
        }
      }

      if ((v132 & 1) == 0)
      {
        goto LABEL_16;
      }

      v7 = v119;
      v9 = v121;
      v8 = &selRef_setTableHeaderView_;
      v10 = v129;
LABEL_30:
      if (v10 < v9)
      {
        goto LABEL_147;
      }

      if (v9 < v10)
      {
        v38 = 8 * v10 - 8;
        v39 = 8 * v9;
        v40 = v10;
        v41 = v9;
        do
        {
          if (v41 != --v10)
          {
            v42 = *a3;
            if (!*a3)
            {
              goto LABEL_157;
            }

            v43 = *(v42 + v39);
            *(v42 + v39) = *(v42 + v38);
            *(v42 + v38) = v43;
          }

          ++v41;
          v38 -= 8;
          v39 += 8;
        }

        while (v41 < v10);
        v10 = v40;
      }

LABEL_38:
      v44 = a3[1];
      if (v10 >= v44)
      {
        v6 = v10;
        if (v10 < v9)
        {
          goto LABEL_145;
        }

        goto LABEL_49;
      }

      if (__OFSUB__(v10, v9))
      {
        goto LABEL_146;
      }

      v45 = v10;
      if (v10 - v9 >= a4)
      {
LABEL_46:
        v6 = v10;
        if (v10 < v9)
        {
          goto LABEL_145;
        }

        goto LABEL_49;
      }

      v46 = v9 + a4;
      if (__OFADD__(v9, a4))
      {
        goto LABEL_148;
      }

      if (v46 >= v44)
      {
        v46 = a3[1];
      }

      if (v46 < v9)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v10 == v46)
      {
        goto LABEL_46;
      }

      v120 = v7;
      v122 = v9;
      v133 = *a3;
      v4 = *a3 + 8 * v10 - 8;
      v94 = v9 - v10;
      v124 = v46;
      do
      {
        v130 = v45;
        v95 = *(v133 + 8 * v45);
        v125 = v94;
        v127 = v4;
        while (1)
        {
          v96 = *v4;
          v97 = v95;
          v98 = v96;
          v99 = [v97 v8[133]];
          if (!v99)
          {
            goto LABEL_152;
          }

          v100 = v99;
          v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v103 = v102;

          v104 = [v98 v8[133]];
          if (!v104)
          {
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          v105 = v104;
          v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v108 = v107;

          if (v101 == v106 && v103 == v108)
          {
            break;
          }

          v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v8 = &selRef_setTableHeaderView_;
          if ((v110 & 1) == 0)
          {
            goto LABEL_100;
          }

          if (!v133)
          {
            goto LABEL_153;
          }

          v111 = *v4;
          v95 = *(v4 + 8);
          *v4 = v95;
          *(v4 + 8) = v111;
          v4 -= 8;
          if (__CFADD__(v94++, 1))
          {
            goto LABEL_100;
          }
        }

        v8 = &selRef_setTableHeaderView_;
LABEL_100:
        v45 = v130 + 1;
        v4 = v127 + 8;
        v94 = v125 - 1;
      }

      while (v130 + 1 != v124);
      v6 = v124;
      v7 = v120;
      v9 = v122;
      if (v124 < v122)
      {
        goto LABEL_145;
      }

LABEL_49:
      v47 = v7;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = v47;
      }

      else
      {
        v7 = sub_10007ABF0(0, *(v47 + 2) + 1, 1, v47);
      }

      v4 = *(v7 + 2);
      v48 = *(v7 + 3);
      v49 = v4 + 1;
      if (v4 >= v48 >> 1)
      {
        v7 = sub_10007ABF0((v48 > 1), v4 + 1, 1, v7);
      }

      *(v7 + 2) = v49;
      v50 = &v7[16 * v4];
      *(v50 + 4) = v9;
      *(v50 + 5) = v6;
      v51 = *a1;
      if (!*a1)
      {
        goto LABEL_159;
      }

      if (v4)
      {
        while (1)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v53 = *(v7 + 4);
            v54 = *(v7 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_68:
            if (v56)
            {
              goto LABEL_134;
            }

            v69 = &v7[16 * v49];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_137;
            }

            v75 = &v7[16 * v52 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_141;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v49 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          v79 = &v7[16 * v49];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_82:
          if (v74)
          {
            goto LABEL_136;
          }

          v82 = &v7[16 * v52];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_139;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_89:
          v4 = v52 - 1;
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
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
            goto LABEL_149;
          }

          if (!*a3)
          {
            goto LABEL_154;
          }

          v90 = v7;
          v91 = *&v7[16 * v4 + 32];
          v92 = *&v7[16 * v52 + 40];
          sub_10007A724((*a3 + 8 * v91), (*a3 + 8 * *&v7[16 * v52 + 32]), (*a3 + 8 * v92), v51);
          if (v131)
          {
            goto LABEL_128;
          }

          if (v92 < v91)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_10007ABDC(v90);
          }

          if (v4 >= *(v90 + 2))
          {
            goto LABEL_131;
          }

          v93 = &v90[16 * v4];
          *(v93 + 4) = v91;
          *(v93 + 5) = v92;
          sub_10007AB50(v52);
          v7 = v90;
          v49 = *(v90 + 2);
          if (v49 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = &v7[16 * v49 + 32];
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_132;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_133;
        }

        v64 = &v7[16 * v49];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_135;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_138;
        }

        if (v68 >= v60)
        {
          v86 = &v7[16 * v52 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_142;
          }

          if (v55 < v89)
          {
            v52 = v49 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_68;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_117;
      }
    }

LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_117:
  v6 = *a1;
  if (*a1)
  {
    v4 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = v4;
    }

    else
    {
LABEL_150:
      v113 = sub_10007ABDC(v4);
    }

    v4 = *(v113 + 2);
    if (v4 < 2)
    {
LABEL_128:

      return;
    }

    while (*a3)
    {
      v114 = *&v113[16 * v4];
      v115 = v113;
      v116 = *&v113[16 * v4 + 24];
      sub_10007A724((*a3 + 8 * v114), (*a3 + 8 * *&v113[16 * v4 + 16]), (*a3 + 8 * v116), v6);
      if (v131)
      {
        goto LABEL_128;
      }

      if (v116 < v114)
      {
        goto LABEL_143;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_10007ABDC(v115);
      }

      if (v4 - 2 >= *(v115 + 2))
      {
        goto LABEL_144;
      }

      v117 = &v115[16 * v4];
      *v117 = v114;
      *(v117 + 1) = v116;
      sub_10007AB50(v4 - 1);
      v113 = v115;
      v4 = *(v115 + 2);
      if (v4 <= 1)
      {
        goto LABEL_128;
      }
    }

LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

LABEL_162:
  __break(1u);
}

uint64_t sub_10007A470(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 48;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 48;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[48 * v11] <= a4)
    {
      memmove(a4, __dst, 48 * v11);
    }

    v12 = &v4[48 * v11];
    if (v10 >= 48 && v6 > v7)
    {
      sub_100008480();
LABEL_23:
      v5 -= 48;
      do
      {
        v17 = v5 + 48;
        if (StringProtocol.localizedCompare<A>(_:)() == -1)
        {
          v21 = v6 - 48;
          if (v17 != v6)
          {
            v22 = *v21;
            v23 = *(v6 - 1);
            *(v5 + 1) = *(v6 - 2);
            *(v5 + 2) = v23;
            *v5 = v22;
          }

          if (v12 <= v4 || (v6 -= 48, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        v18 = v12 - 48;
        if (v17 != v12)
        {
          v19 = *v18;
          v20 = *(v12 - 1);
          *(v5 + 1) = *(v12 - 2);
          *(v5 + 2) = v20;
          *v5 = v19;
        }

        v5 -= 48;
        v12 -= 48;
      }

      while (v18 > v4);
      v12 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[48 * v9] <= a4)
    {
      memmove(a4, __src, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      sub_100008480();
      while (StringProtocol.localizedCompare<A>(_:)() == -1)
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 48;
        if (!v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 48;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_33;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_10:
      v15 = *v13;
      v16 = *(v13 + 2);
      *(v7 + 1) = *(v13 + 1);
      *(v7 + 2) = v16;
      *v7 = v15;
      goto LABEL_11;
    }

LABEL_33:
    v6 = v7;
  }

LABEL_35:
  v24 = (v12 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v24])
  {
    memmove(v6, v4, 48 * v24);
  }

  return 1;
}

uint64_t sub_10007A724(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    v13 = __dst;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v61 = &v4[v8];
    if (v6 >= 8 && v12 < v5)
    {
      v14 = v12;
      v15 = &selRef_setTableHeaderView_;
      v55 = v5;
      while (1)
      {
        v57 = v14;
        v16 = *v4;
        v17 = *v14;
        v18 = v16;
        result = [v17 v15[133]];
        if (!result)
        {
          goto LABEL_58;
        }

        v20 = result;
        v59 = v4;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = v15;
        result = [v18 v15[133]];
        if (!result)
        {
          goto LABEL_59;
        }

        v25 = result;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if (v21 == v26 && v23 == v28)
        {
          break;
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          goto LABEL_22;
        }

        v31 = v55;
        v32 = v57;
        v14 = v57 + 1;
        v4 = v59;
        v15 = v24;
        if (v13 != v57)
        {
          goto LABEL_23;
        }

LABEL_24:
        ++v13;
        if (v4 >= v61 || v14 >= v31)
        {
          goto LABEL_26;
        }
      }

LABEL_22:
      v14 = v57;
      v32 = v59;
      v4 = v59 + 1;
      v31 = v55;
      v15 = v24;
      if (v13 == v59)
      {
        goto LABEL_24;
      }

LABEL_23:
      *v13 = *v32;
      goto LABEL_24;
    }

LABEL_26:
    a2 = v13;
    goto LABEL_52;
  }

  if (__src != a2 || &a2[v11] <= __src)
  {
    v33 = a2;
    memmove(__src, a2, 8 * v11);
    a2 = v33;
  }

  v61 = &v4[v11];
  if (v9 < 8 || a2 <= __dst)
  {
LABEL_52:
    if (a2 != v4 || a2 >= (v4 + ((v61 - v4 + (v61 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, v4, 8 * (v61 - v4));
    }

    return 1;
  }

  v34 = &selRef_setTableHeaderView_;
  v60 = v4;
LABEL_33:
  v58 = a2;
  v35 = a2 - 1;
  v36 = v61;
  v54 = a2 - 1;
  while (1)
  {
    v56 = v5;
    v37 = *--v36;
    v38 = *v35;
    v39 = v37;
    v40 = v38;
    result = [v39 v34[133]];
    if (!result)
    {
      break;
    }

    v41 = result;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = v34;
    result = [v40 v34[133]];
    if (!result)
    {
      goto LABEL_57;
    }

    v46 = result;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (v42 == v47 && v44 == v49)
    {

      v52 = v56;
      v5 = v56 - 1;
      v34 = v45;
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v52 = v56;
      v5 = v56 - 1;
      v34 = v45;
      if (v51)
      {
        if (v56 != v58)
        {
          *v5 = *v54;
        }

        v4 = v60;
        if (v61 <= v60 || (a2 = v54, v54 <= __dst))
        {
          a2 = v54;
          goto LABEL_52;
        }

        goto LABEL_33;
      }
    }

    v35 = v54;
    if (v61 != v52)
    {
      *v5 = *v36;
    }

    v61 = v36;
    if (v36 <= v60)
    {
      v61 = v36;
      a2 = v58;
      v4 = v60;
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_10007AB50(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10007ABDC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_10007ABF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&qword_10011EAC0, &unk_1000D88E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10007AD08(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10007AD80(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10007AE74;

  return v5(v2 + 32);
}

uint64_t sub_10007AE74()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10007AF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100078344(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_10007B040(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10007B8A8(a3, a4);
          return sub_100078574(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10007B1A8(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v2 = type metadata accessor for Data.Iterator();
  object = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v59 = 0;
  v7 = [v6 devicesWithDiscoveryFlags:0x800000 error:&v59];
  v8 = v59;
  if (!v7)
  {
    v34 = v59;
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000A570(v36, qword_10011E7A0);
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v59 = v40;
      *v39 = 136315138;
      v58 = v35;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v41 = String.init<A>(reflecting:)();
      v43 = sub_100078978(v41, v42, &v59);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to get paired devices: %s", v39, 0xCu);
      sub_10000EA94(v40);
    }

    else
    {
    }

    return 0;
  }

  v9 = v7;
  sub_1000084D4(0, &qword_10011EA60, CBDevice_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v8;

  v47 = v10;
  if (v10 >> 62)
  {
LABEL_37:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_38;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_38:

    return 0;
  }

LABEL_4:
  v13 = 0;
  v51 = v47 & 0xFFFFFFFFFFFFFF8;
  v52 = v47 & 0xC000000000000001;
  v49 = (object + 8);
  v50 = v47 + 32;
  v57 = xmmword_1000D5250;
  v48 = v12;
  while (1)
  {
    if (v52)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v51 + 16))
      {
        goto LABEL_36;
      }

      v14 = *(v50 + 8 * v13);
    }

    v15 = v14;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v17 = [v14 btAddressData];
    if (!v17)
    {
      object = String.lowercased()()._object;
LABEL_6:

      goto LABEL_7;
    }

    v18 = v17;
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v56 = v15;
    sub_10007B8A8(v19, v21);
    v55 = v19;
    Data.Iterator.init(_:at:)();
    sub_10007CA2C(&qword_10011EA68, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
    dispatch thunk of IteratorProtocol.next()();
    v22 = _swiftEmptyArrayStorage;
    if ((BYTE1(v59) & 1) == 0)
    {
      do
      {
        v26 = v59;
        sub_100008438(&qword_10011EA80, &unk_1000DA490);
        v27 = swift_allocObject();
        *(v27 + 16) = v57;
        *(v27 + 56) = &type metadata for UInt8;
        *(v27 + 64) = &protocol witness table for UInt8;
        *(v27 + 32) = v26;
        v28 = String.init(format:_:)();
        v30 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1000CC104(0, *(v22 + 2) + 1, 1, v22);
        }

        v32 = *(v22 + 2);
        v31 = *(v22 + 3);
        if (v32 >= v31 >> 1)
        {
          v22 = sub_1000CC104((v31 > 1), v32 + 1, 1, v22);
        }

        *(v22 + 2) = v32 + 1;
        v33 = &v22[16 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v30;
        dispatch thunk of IteratorProtocol.next()();
      }

      while (BYTE1(v59) != 1);
    }

    (*v49)(v5, v2);
    v59 = v22;
    sub_100008438(&qword_10011EA70, &unk_1000D8810);
    sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810, &protocol conformance descriptor for [A]);
    BidirectionalCollection<>.joined(separator:)();
    sub_100022640(v55, v21);

    v23 = String.lowercased()();

    v24 = String.lowercased()();
    object = v24._object;
    if (!v23._object)
    {
      v12 = v48;
      v15 = v56;
      goto LABEL_6;
    }

    v15 = v56;
    if (v23._countAndFlagsBits == v24._countAndFlagsBits && v23._object == v24._object)
    {
      break;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v12 = v48;
    if (v25)
    {
      goto LABEL_33;
    }

LABEL_7:

    if (v13 == v12)
    {
      goto LABEL_38;
    }
  }

LABEL_33:

  v44 = [v15 name];

  if (!v44)
  {
    return 0;
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v45;
}

uint64_t sub_10007B8A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10007B8FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007B934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__CFString *sub_10007B94C(unint64_t a1)
{
  if (a1 > 3)
  {
    v1 = @"?";
    v2 = @"?";
  }

  else
  {
    v1 = off_100106C60[a1];
    v2 = off_100106C80[a1];
  }

  v3 = v1;

  return v2;
}

uint64_t sub_10007B9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007BA6C()
{
  result = qword_10011EA90;
  if (!qword_10011EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EA90);
  }

  return result;
}

unint64_t sub_10007BAC0()
{
  result = qword_10011EA98;
  if (!qword_10011EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EA98);
  }

  return result;
}

uint64_t sub_10007BB14(__n128 a1)
{
  v2 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_10007BC10(uint64_t a1, __n128 a2)
{
  v4 = *(type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100064F50;

  return sub_100075444(a1, v6, v7, v8, v9, v2 + v5, v11, v12);
}

uint64_t sub_10007BD6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100064F50;

  return sub_100078704(a1, v4);
}

uint64_t sub_10007BE2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007BE70()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10007BF2C()
{
  sub_10001C2AC(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10007BF80(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_10001C2AC(a1, a2 & 1);
  }
}

uint64_t sub_10007BF98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_10007C0D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10007C114()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007C14C()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10007C1A0()
{
  v0 = objc_allocWithZone(ASDSystemAppMetadata);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBundleID:v1];

  [v2 setUserInitiated:1];
  v3 = objc_opt_self();
  v6[4] = sub_10006EB48;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10006ED9C;
  v6[3] = &unk_100106BA8;
  v4 = _Block_copy(v6);
  v5 = v2;
  [v3 installApp:v5 withCompletionHandler:v4];
  _Block_release(v4);
}

uint64_t sub_10007C2D0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10007C388(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10007C404(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10007C488(uint64_t a1)
{
  v9 = sub_100008438(&qword_10011EAF8, &qword_1000D8920);
  v10 = sub_10001C3D8(&qword_10011EB00, &qword_10011EAF8, &qword_1000D8920, &protocol conformance descriptor for <A> [A]);
  v8[0] = a1;
  v2 = sub_10000E7E4(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100078FD8(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000EA94(v8);
  return v5;
}

void sub_10007C564(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A570(v10, qword_10011E7A0);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v24 = v6;
    v25 = a2;
    v26 = a3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v17 = v11;
    v18 = [v17 locale];

    if (!v18)
    {
      __break(1u);
      return;
    }

    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = Locale.identifier.getter();
    v21 = v20;
    (*(v7 + 8))(v9, v24);
    v22 = sub_100078978(v19, v21, &v27);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Live Translation: Asset: %@, Locale: %s", v14, 0x16u);
    sub_10000E950(v15, &unk_10011D820, &qword_1000D7280);

    sub_10000EA94(v16);

    a2 = v25;
    a3 = v26;
  }

  else
  {
  }

  v23 = [v11 isSuggested];
  v11;
  if (v23)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  else
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

double sub_10007C8C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t *sub_10007C900(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10007C964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007C9CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007CA2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007CA74(unint64_t a1, unint64_t a2)
{
  v2 = 0x8000000000000000;
  if (a1 <= 0x8000000000000000)
  {
    v3 = 0x8000000000000000;
  }

  else
  {
    v3 = a1;
  }

  if (a2 > 0x8000000000000000)
  {
    v2 = a2;
  }

  return (v2 < a1) - (v3 < a2);
}

uint64_t sub_10007CAA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008438(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_10007CB08()
{
  v1 = *(sub_100008438(&qword_10011EA88, &qword_1000D8880) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = *(v0 + 64);
  if (v5 >> 60 != 15)
  {
    sub_100022640(*(v0 + 56), v5);
  }

  v6 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007CC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011EA88, &qword_1000D8880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007CCD0(uint64_t a1)
{
  sub_100008438(&qword_10011EA88, &qword_1000D8880);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 44);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000BD1C;

  return sub_1000721F0(a1, v3, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_10007CE0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10007B8A8(result, a2);
  }

  return result;
}

uint64_t sub_10007CE38(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10007CEA0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10007CEE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100064F50;

  return sub_100074EB8(a1, v4, v5, v6);
}

uint64_t sub_10007CFA4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007CFFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100064F50;

  return sub_10007AD80(a1, v4);
}

uint64_t sub_10007D0B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD1C;

  return sub_10007AD80(a1, v4);
}

unint64_t sub_10007D180()
{
  result = qword_10011EB28;
  if (!qword_10011EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EB28);
  }

  return result;
}

uint64_t sub_10007D290()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011EB30);
  v1 = sub_10000A570(v0, qword_10011EB30);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10007D358(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v1[v5] = static HeadphoneProxFeatureManager.shared.getter();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_viewModel;
  v7 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales] = _swiftEmptyArrayStorage;
  v8 = &v2[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_tableIdentifier];
  *v8 = 0xD000000000000021;
  v8[1] = 0x80000001000E0E60;
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_type] = 15;
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_flowController] = 0;
  v9 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_headphoneModel;
  v10 = type metadata accessor for HeadphoneModel(0);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_tableView] = v11;
  v12 = [objc_allocWithZone(PRXScrollableContentView) initWithCardStyle:0 scrollView:v11];
  v34.receiver = v2;
  v34.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v34, "initWithContentView:", v12);
  v14 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_tableView;
  v15 = *&v13[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_tableView];
  v16 = objc_opt_self();
  v17 = v13;
  v18 = v15;
  v19 = [v16 clearColor];
  [v18 setBackgroundColor:v19];

  [*&v13[v14] setDataSource:v17];
  v20 = *&v13[v14];
  [v20 setDelegate:v17];

  v21 = *&v13[v14];
  sub_100080ED8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = v21;

  v24 = String._bridgeToObjectiveC()();

  [v23 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v24];

  v25 = *&v13[v14];
  v26 = objc_allocWithZone(UIView);
  v27 = v25;
  v28 = [v26 initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [v27 setTableHeaderView:v28];

  v29 = *&v13[v14];
  v30 = objc_allocWithZone(UIView);
  v31 = v29;
  v32 = [v30 initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [v31 setTableFooterView:v32];

  return v17;
}

void sub_10007D848(uint64_t a1)
{
  v3 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - v4;
  sub_100080B48(a1, &v43 - v4, type metadata accessor for HeadphoneViewModel);
  v6 = type metadata accessor for HeadphoneViewModel(0);
  v46 = *(v6 - 8);
  v7 = *(v46 + 56);
  v49 = v6;
  v7(v5, 0, 1);
  v8 = v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_viewModel;
  swift_beginAccess();
  v48 = v8;
  sub_10000EA2C(v5, v8, &qword_10011F2E0, &unk_1000D8580);
  swift_endAccess();
  v9 = String._bridgeToObjectiveC()();
  [v1 setTitle:v9];

  v10 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v10];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v55 = sub_100080B18;
  v56 = v11;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_10000C034;
  v54 = &unk_100106D58;
  v13 = _Block_copy(&aBlock);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v47 = v15;

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = String._bridgeToObjectiveC()();
  v55 = sub_100080B38;
  v56 = v16;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_10000C034;
  v54 = &unk_100106D80;
  v18 = _Block_copy(&aBlock);
  v19 = [v14 actionWithTitle:v17 style:1 handler:v18];

  _Block_release(v18);

  if (qword_10011C5C0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000A570(v20, qword_100122FA0);
  v21 = v1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v45 = v19;
    v24 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v24 = 136315394;
    v25 = *(v46 + 48);
    v26 = 1;
    v28 = v48;
    v27 = v49;
    if (v25(v48, 1, v49) || (v30 = *(v28 + *(v27 + 80))) == 0)
    {
      v29 = 0;
    }

    else if (v30 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
      v26 = 0;
    }

    else
    {
      v26 = 0;
      v29 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    aBlock = v29;
    LOBYTE(v52) = v26;
    sub_100008438(&unk_10011EBC0, &qword_1000D8B20);
    v31 = String.init<A>(reflecting:)();
    v33 = sub_100078978(v31, v32, &v50);

    *(v24 + 4) = v33;
    *(v24 + 12) = 2080;
    v34 = 1;
    v36 = v48;
    v35 = v49;
    if (v25(v48, 1, v49) || (v38 = (v36 + *(v35 + 80)), !*v38))
    {
      v37 = 0;
    }

    else
    {
      v39 = v38[1];
      if (v39 >> 62)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
        v34 = 0;
      }

      else
      {
        v34 = 0;
        v37 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    aBlock = v37;
    LOBYTE(v52) = v34;
    v40 = String.init<A>(reflecting:)();
    v42 = sub_100078978(v40, v41, &v50);

    *(v24 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v22, v23, "Live Translation: ViewModel: suggestedLanguages: %s, moreLanguages: %s", v24, 0x16u);
    swift_arrayDestroy();

    v19 = v45;
  }

  else
  {
  }

  sub_10007E91C();
}

void sub_10007DE88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      swift_beginAccess();
      sub_1000145EC(v5 + 16, aBlock);
      swift_unknownObjectRelease();
      v6 = v42;
      if (v42)
      {
        v7 = sub_10000E7E4(aBlock, v42);
        v8 = *(v6 - 1);
        __chkstk_darwin(v7);
        v10 = (aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v8 + 16))(v10);
        sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
        v11 = *(*v10 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isUsingCellular);
        (*(v8 + 8))(v10, v6);
        if (v11 == 1)
        {
          swift_beginAccess();
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales;
            v14 = v12;
            swift_beginAccess();
            v15 = *&v14[v13];

            v16 = *(v15 + 16);

            if (v16)
            {
              if (qword_10011C5C0 != -1)
              {
                swift_once();
              }

              v17 = type metadata accessor for Logger();
              sub_10000A570(v17, qword_100122FA0);
              v18 = Logger.logObject.getter();
              v19 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v18, v19))
              {
                v20 = swift_slowAlloc();
                *v20 = 0;
                _os_log_impl(&_mh_execute_header, v18, v19, "Live Translation: Using Cellular, show alert", v20, 2u);
              }

              sub_100033A5C(102);
              sub_100033A5C(103);
              v21 = String._bridgeToObjectiveC()();

              v22 = String._bridgeToObjectiveC()();

              v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];

              sub_100033A5C(104);

              v24 = String._bridgeToObjectiveC()();

              v43 = sub_100080B40;
              v44 = a2;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_10000C034;
              v42 = &unk_100106DA8;
              v25 = _Block_copy(aBlock);

              v26 = objc_opt_self();
              v27 = [v26 actionWithTitle:v24 style:1 handler:v25];
              _Block_release(v25);

              [v23 addAction:v27];
              sub_100033A5C(105);
              v28 = String._bridgeToObjectiveC()();

              v29 = [v26 actionWithTitle:v28 style:0 handler:0];

              [v23 addAction:v29];
              swift_beginAccess();
              v30 = swift_unknownObjectWeakLoadStrong();
              if (v30)
              {
                v31 = v30;
                [v30 presentViewController:v23 animated:1 completion:0];
              }

              goto LABEL_23;
            }
          }
        }
      }

      else
      {
        sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
      }
    }
  }

  if (qword_10011C5C0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000A570(v32, qword_100122FA0);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Live Translation: NOT Using Cellular, start trigger", v35, 2u);
  }

  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v23 = v36;
    swift_beginAccess();
    v37 = swift_unknownObjectWeakLoadStrong();
    if (v37)
    {
      v38 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales;
      v39 = v37;
      swift_beginAccess();
      v40 = *&v39[v38];
    }

    else
    {
      v40 = _swiftEmptyArrayStorage;
    }

    sub_10007E58C(v40, 0);

LABEL_23:
  }
}

void sub_10007E4C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales;
      v6 = v4;
      swift_beginAccess();
      v7 = *&v6[v5];
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    sub_10007E58C(v7, 1);
  }
}

void sub_10007E58C(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_flowController);
  if (v5)
  {
    v6 = qword_10011C6D0;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A570(v8, qword_10011EB30);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Requested Not Now for Live Translation", v11, 2u);
    }

    sub_1000145EC(v7 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_interActor, v12);
    if (v13)
    {
      sub_10000E7E4(v12, v13);
      sub_100077448(a1, a2 & 1);
      sub_10000EA94(v12);
    }

    else
    {
      sub_10000E950(v12, &qword_10011FBC0, &unk_1000D5EF0);
    }

    sub_1000AA094(0, 0);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000B8BBC(a1, a2 & 1);

    swift_unknownObjectRelease();
  }
}