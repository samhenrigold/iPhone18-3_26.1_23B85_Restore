void sub_100016CC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeMigrationItem);
  if (v1)
  {
    v2 = v0;
    v3 = v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID;
    v4 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8);
    if (v4)
    {
      v5 = v1;

      v6 = sub_100017090();
      v4, v7, v8, v9, v10, v11, v12, v13;
      if (qword_10007EBF8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000032F0(v14, qword_10007F150);
      v15 = v5;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = v1;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "configureUpgrade: %@", v18, 0xCu);
        sub_1000227E8(v19, &qword_10007F278, &unk_10005CD60);
      }

      v21 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery;
      v22 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery);
      if (!v22)
      {
        sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_10005C520;
        *(v23 + 32) = v6;
        objc_allocWithZone(DADiscovery);
        v24 = v6;
        v25 = sub_10001F2BC(v23);
        v26 = *(v2 + v21);
        *(v2 + v21) = v25;

        v22 = *(v2 + v21);
        if (!v22)
        {
          goto LABEL_21;
        }
      }

      v27 = *(v3 + 8);
      v28 = v22;
      if (v27)
      {

        v29 = String._bridgeToObjectiveC()();
        v27, v30, v31, v32, v33, v34, v35, v36;
      }

      else
      {
        v29 = 0;
      }

      [v22 setBundleID:v29];

      v37 = *(v2 + v21);
      if (v37)
      {
        v38 = v37;
        [v38 setFlags:{objc_msgSend(v38, "flags") | 4}];

        v39 = *(v2 + v21);
        if (v39)
        {
          v40 = v39;
          [v40 setFlags:{objc_msgSend(v40, "flags") | 0x10}];

          v41 = *(v2 + v21);
          if (v41)
          {
            v42 = swift_allocObject();
            swift_unknownObjectWeakInit();
            aBlock[4] = sub_100022264;
            aBlock[5] = v42;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100022FBC;
            aBlock[3] = &unk_100071B38;
            v43 = _Block_copy(aBlock);
            v44 = v41;

            [v44 setEventHandler:v43];
            _Block_release(v43);

            return;
          }

          goto LABEL_20;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }
}

id sub_100017090()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(DADiscoveryConfiguration) init];
  v7 = String._bridgeToObjectiveC()();
  [v6 setBundleID:v7];

  v8 = [v1 identifier];
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    v8 = String._bridgeToObjectiveC()();
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  [v6 setAssociationIdentifier:v8];

  v18 = [v1 name];
  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    v18 = String._bridgeToObjectiveC()();
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  [v6 setDisplayName:v18];

  [v6 setAllowsRename:{objc_msgSend(v1, "setupOptions") & 1}];
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = v28;
    v30 = v1;
    v31 = [v29 peripheralIdentifier];
    if (v31)
    {
      v32 = v31;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v33.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v33.super.isa = 0;
    }

    [v6 setBluetoothIdentifier:v33.super.isa];

    v34 = [v29 hotspotSSID];
    [v6 setNetworkHotspotSSID:v34];

    [v6 setWifiAwarePairingID:{objc_msgSend(v29, "wifiAwarePairedDeviceID")}];
    v35 = [v29 accessoryIdentifier];
    if (!v35)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
      v35 = String._bridgeToObjectiveC()();
      v37, v38, v39, v40, v41, v42, v43, v44;
    }

    [v6 setExistingDeviceIdentifier:v35];
  }

  v45 = [v1 descriptor];
  v46 = [v45 SSID];

  if (v46)
  {
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    sub_100009894(&qword_10007F2A8, &qword_10005D050);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10005C440;
    *(v50 + 32) = v47;
    *(v50 + 40) = v49;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v50, v52, v53, v54, v55, v56, v57, v58;
    [v6 setHotspotSSIDs:isa];
  }

  v59 = [v1 descriptor];
  v60 = [v59 SSIDPrefix];

  if (v60)
  {
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    sub_100009894(&qword_10007F2A8, &qword_10005D050);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_10005C440;
    *(v64 + 32) = v61;
    *(v64 + 40) = v63;
    v65 = Array._bridgeToObjectiveC()().super.isa;
    v64, v66, v67, v68, v69, v70, v71, v72;
    [v6 setHotspotSSIDPrefixes:v65];
  }

  v73 = [v1 descriptor];
  v74 = [v73 wifiAwareServiceName];

  if (v74)
  {
    [v6 setWifiAwareServiceName:v74];

    v75 = [v1 descriptor];
    v76 = [v75 wifiAwareModelNameMatch];

    if (v76)
    {
      v77 = [v76 string];
      if (!v77)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v78;
        v77 = String._bridgeToObjectiveC()();
        v79, v80, v81, v82, v83, v84, v85, v86;
      }

      v87 = [objc_allocWithZone(DAPropertyCompareString) initWithString:v77 compareOptions:{objc_msgSend(v76, "compareOptions")}];

      [v6 setWifiAwareModelNameMatch:v87];
    }

    v88 = [v1 descriptor];
    v89 = [v88 wifiAwareVendorNameMatch];

    if (v89)
    {
      v90 = [v89 string];
      if (!v90)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;
        v90 = String._bridgeToObjectiveC()();
        v92, v93, v94, v95, v96, v97, v98, v99;
      }

      v100 = [objc_allocWithZone(DAPropertyCompareString) initWithString:v90 compareOptions:{objc_msgSend(v89, "compareOptions")}];

      [v6 setWifiAwareVendorNameMatch:v100];
    }

    v101 = [v1 descriptor];
    v102 = [v101 wifiAwareServiceRole];

    if (v102 == 20)
    {
      v103 = 20;
    }

    else
    {
      v103 = 10;
    }

    [v6 setWifiAwareServiceType:v103];
  }

  if (([v1 setupOptions] & 2) != 0)
  {
    [v6 setFlags:{objc_msgSend(v6, "flags") | 0x10}];
  }

  v104 = [v1 descriptor];
  v105 = [v104 bluetoothCompanyIdentifier];

  if (v105)
  {
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_10005C520;
    v107 = [v1 descriptor];
    v108 = [v107 bluetoothCompanyIdentifier];

    *(v106 + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedShort:v108];
    sub_100009B48(0, &qword_10007F2A0, NSNumber_ptr);
    v109 = Array._bridgeToObjectiveC()().super.isa;
    v106, v110, v111, v112, v113, v114, v115, v116;
    [v6 setBluetoothCompanyIdentifiers:v109];
  }

  v117 = [v1 descriptor];
  v118 = [v117 bluetoothServiceUUID];

  if (v118)
  {
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_10005C520;
    *(v119 + 32) = v118;
    sub_100009B48(0, &qword_10007F298, CBUUID_ptr);
    v120 = v118;
    v121 = Array._bridgeToObjectiveC()().super.isa;
    v119, v122, v123, v124, v125, v126, v127, v128;
    [v6 setBluetoothServices:v121];
  }

  v129 = [v1 descriptor];
  v130 = [v129 supportedOptions];

  if ((v130 & 2) != 0)
  {
    [v6 setFlags:{objc_msgSend(v6, "flags") | 2}];
  }

  v131 = [v1 descriptor];
  v132 = [v131 supportedOptions];

  if ((v132 & 4) != 0)
  {
    [v6 setFlags:{objc_msgSend(v6, "flags") | 4}];
  }

  v133 = [v1 descriptor];
  v134 = [v133 supportedOptions];

  if ((v134 & 8) != 0)
  {
    [v6 setFlags:{objc_msgSend(v6, "flags") | 0x20}];
  }

  if ([v1 renameOptions])
  {
    [v6 setFlags:{objc_msgSend(v6, "flags") | 8}];
  }

  v135 = [v1 descriptor];
  v136 = [v135 bluetoothRange];

  [v6 setBluetoothRange:v136];
  v137 = [v1 descriptor];
  v138 = [v137 bluetoothNameSubstring];

  [v6 setBluetoothNameSubstring:v138];
  v139 = [v1 descriptor];
  v140 = [v139 bluetoothServiceDataBlob];

  if (v140)
  {
    v142 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v144 = v143;

    v140 = Data._bridgeToObjectiveC()().super.isa;
    v141 = sub_10002215C(v142, v144);
  }

  [v6 setBluetoothServicePayload:{v140, v141}];

  v145 = [v1 descriptor];
  v146 = [v145 bluetoothServiceDataMask];

  if (v146)
  {
    v148 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v150 = v149;

    v146 = Data._bridgeToObjectiveC()().super.isa;
    v147 = sub_10002215C(v148, v150);
  }

  [v6 setBluetoothServicePayloadMask:{v146, v147}];

  v151 = [v1 descriptor];
  v152 = [v151 bluetoothManufacturerDataBlob];

  if (v152)
  {
    v154 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v156 = v155;

    v152 = Data._bridgeToObjectiveC()().super.isa;
    v153 = sub_10002215C(v154, v156);
  }

  [v6 setBluetoothCompanyPayload:{v152, v153}];

  v157 = [v1 descriptor];
  v158 = [v157 bluetoothManufacturerDataMask];

  if (v158)
  {
    v160 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v162 = v161;

    v158 = Data._bridgeToObjectiveC()().super.isa;
    v159 = sub_10002215C(v160, v162);
  }

  [v6 setBluetoothCompanyPayloadMask:{v158, v159}];

  v163 = [v1 descriptor];
  v164 = [v163 bluetoothNameSubstringCompareOptions];

  [v6 setBluetoothNameSubstringCompareOptions:v164];
  return v6;
}

void sub_100017CD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

void sub_100017D48(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v102 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v101 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000032F0(v10, qword_10007F150);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v100 = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v11;
    *v16 = v11;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Upgrade discovery event: %@", v15, 0xCu);
    sub_1000227E8(v16, &qword_10007F278, &unk_10005CD60);

    v2 = v1;
    v8 = v100;
  }

  v18 = [v11 eventType];
  if (v18 > 39)
  {
    if (v18 > 55)
    {
      if (v18 != 56)
      {
        if (v18 != 60)
        {
          return;
        }

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Upgrade discovery: XPC connection to dataaccessd interrupted, clearing devices", v31, 2u);
        }

        v32 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
        if (!v32)
        {
          return;
        }

        goto LABEL_58;
      }

      objc_opt_self();
      v54 = swift_dynamicCastObjCClass();
      if (v54)
      {
        v55 = v54;
        v102 = v11;
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "Calling handleWiFiAwarePairingRequest", v58, 2u);
        }

        sub_10001C66C(v55);
        goto LABEL_46;
      }

      aBlock = 0;
      v105 = 0xE000000000000000;
      _StringGuts.grow(_:)(95);
      v86._countAndFlagsBits = 0xD00000000000005DLL;
      v86._object = 0x800000010005E040;
      String.append(_:)(v86);
      v87 = [v11 description];
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;

      v91._countAndFlagsBits = v88;
      v91._object = v90;
      String.append(_:)(v91);
      v90, v92, v93, v94, v95, v96, v97, v98;
    }

    else
    {
      if (v18 == 40)
      {
        sub_10001BE7C();
        if (v35)
        {
          v37 = v35;
          v38 = v36;
          v39 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
          if (v39)
          {
            [v39 invalidate];
          }

          v40 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
          if (v40)
          {
            v41 = v40;
            [v41 invalidate];
          }

          v37, v42, v43, v44, v45, v46, v47, v48;
        }

        return;
      }

      if (v18 != 55)
      {
        return;
      }

      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = v21;
        v102 = v11;
        sub_10001C234(v22);
LABEL_46:
        v59 = v102;

        return;
      }

      aBlock = 0;
      v105 = 0xE000000000000000;
      _StringGuts.grow(_:)(83);
      v73._object = 0x800000010005E0A0;
      v73._countAndFlagsBits = 0xD000000000000051;
      String.append(_:)(v73);
      v74 = [v11 description];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78._countAndFlagsBits = v75;
      v78._object = v77;
      String.append(_:)(v78);
      v77, v79, v80, v81, v82, v83, v84, v85;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v18 <= 16)
  {
    if (v18 != 10)
    {
      if (v18 != 16)
      {
        return;
      }

      sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
      v100 = static OS_dispatch_queue.main.getter();
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v108 = sub_100022294;
      v109 = v19;
      aBlock = _NSConcreteStackBlock;
      v105 = 1107296256;
      v20 = &unk_100071B88;
      goto LABEL_40;
    }

    if (qword_10007EC50 != -1)
    {
      swift_once();
    }

    v33 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (v33)
    {
      v34 = *(v33 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveryTimeout);
    }

    else
    {
      v34 = 30.0;
    }

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      *(v62 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v60, v61, "Discovery timeout of %f seconds", v62, 0xCu);
    }

    v63 = objc_opt_self();
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v108 = sub_10002229C;
    v109 = v64;
    aBlock = _NSConcreteStackBlock;
    v105 = 1107296256;
    v106 = sub_100022FBC;
    v107 = &unk_100071BB0;
    v65 = _Block_copy(&aBlock);

    v66 = [v63 scheduledTimerWithTimeInterval:0 repeats:v65 block:v34];
    _Block_release(v65);
    v67 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
    *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer) = v66;

    if (v34 > 60.0)
    {
      v68 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v108 = sub_1000222D4;
      v109 = v68;
      aBlock = _NSConcreteStackBlock;
      v105 = 1107296256;
      v106 = sub_100022FBC;
      v107 = &unk_100071BD8;
      v69 = _Block_copy(&aBlock);

      v70 = [v63 scheduledTimerWithTimeInterval:0 repeats:v69 block:30.0];
      _Block_release(v69);
      v71 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
      *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer) = v70;
    }

    return;
  }

  if (v18 == 17)
  {
    sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
    v100 = static OS_dispatch_queue.main.getter();
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v108 = sub_100022EF8;
    v109 = v49;
    aBlock = _NSConcreteStackBlock;
    v105 = 1107296256;
    v20 = &unk_100071B60;
LABEL_40:
    v106 = sub_1000102BC;
    v107 = v20;
    v50 = _Block_copy(&aBlock);

    v51 = v101;
    static DispatchQoS.unspecified.getter();
    v103 = _swiftEmptyArrayStorage;
    v99[1] = sub_10001F8CC();
    sub_100009894(&unk_10007F560, &qword_10005C590);
    sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
    v52 = v102;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v53 = v100;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v50);

    (*(v5 + 8))(v52, v4);
    (*(v8 + 8))(v51, v7);

    return;
  }

  if (v18 == 20)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Upgrade discovery XPC connection to dataaccessd invalidated", v25, 2u);
    }

    v26 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery;
    v27 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery);
    if (v27)
    {
      [v27 invalidateWithReason:0];
      v28 = *(v2 + v26);
    }

    else
    {
      v28 = 0;
    }

    *(v2 + v26) = 0;

    v72 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
    if (v72)
    {
      [v72 invalidate];
    }

    v32 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
    if (v32)
    {
LABEL_58:

      [v32 invalidate];
    }
  }
}

void sub_100018980(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
  if (v4)
  {
    [v4 invalidateWithReason:a1];
    v4 = *(v1 + v3);
  }

  *(v1 + v3) = 0;
}

void sub_1000189D4(uint64_t a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery);
  if (a2)
  {
    if (v4)
    {
      [v4 invalidate];
    }
  }

  else if (v4)
  {
    [v4 invalidateWithReason:a1];
  }

  v5 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  swift_beginAccess();
  v13 = *(v2 + v5);
  if (v13)
  {
    *(v2 + v5) = &_swiftEmptyDictionarySingleton;
    v13, v6, v7, v8, v9, v10, v11, v12;
    v14 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems;
    swift_beginAccess();
    v22 = *(v2 + v14);
    if (v22)
    {
      *(v2 + v14) = _swiftEmptyArrayStorage;
      v22, v15, v16, v17, v18, v19, v20, v21;
    }

    swift_endAccess();
    v23 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery);
    *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_100018ABC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100018B28(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v321 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v330 = *(v9 - 8);
  __chkstk_darwin(v9);
  v325 = &v321 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  swift_beginAccess();
  v337 = v2;
  v12 = *&v2[v11];
  if (!v12)
  {
    __break(1u);
    goto LABEL_118;
  }

  v321 = v8;
  if (!*(v12 + 16))
  {
    goto LABEL_133;
  }

  v13 = sub_10001F768(a1, a2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_133;
  }

  v322 = v9;
  v323 = v6;
  v15 = *(*(v12 + 56) + 8 * v13);
  swift_endAccess();
  v16 = *&v337[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8];
  if (!v16)
  {
    goto LABEL_139;
  }

  v332 = &v337[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  v17 = *&v337[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  v18 = qword_10007EC50;
  v19 = v15;

  if (v18 != -1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    v333 = qword_1000814E8;
    v328 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
    v20 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (!v20)
    {
      goto LABEL_139;
    }

    v21 = v20[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp];
    v334 = v19;
    v329 = v16;
    v326 = v17;
    v327 = v20;
    v324 = v5;
    if ((v21 & 1) == 0)
    {
      v38 = v19;
      v37 = v20;
      goto LABEL_15;
    }

    v22 = *(v19 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
    if (!v22)
    {
      goto LABEL_126;
    }

    v5 = v19;
    v23 = v20;
    v24 = v22;
    v25 = [v24 bluetoothAdvertisementData];
    if (!v25)
    {

      goto LABEL_15;
    }

    v26 = [v24 appAccessInfoMap];
    if (!v26)
    {

LABEL_40:
      if (qword_10007EBF8 != -1)
      {
        swift_once();
      }

      v112 = type metadata accessor for Logger();
      sub_1000032F0(v112, qword_10007F150);
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        a2 = swift_slowAlloc();
        *v115 = 138412290;
        *(v115 + 4) = v5;
        *a2 = v5;
        v116 = v5;
        _os_log_impl(&_mh_execute_header, v113, v114, "Pick device: %@", v115, 0xCu);
        sub_1000227E8(a2, &qword_10007F278, &unk_10005CD60);
      }

      v117 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
      v118 = *(v5 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
      if (v118)
      {
        v119 = [v118 appAccessInfoMap];
        if (v119)
        {
          v120 = v119;
          sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
          v121 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v129 = v332[1];
          if (!v129)
          {
            goto LABEL_125;
          }

          if (*(v121 + 16))
          {
            v130 = *v332;

            v131 = sub_10001F768(v130, v129);
            a2 = v132;
            v129, v132, v133, v134, v135, v136, v137, v138;
            if (a2)
            {
              v139 = *(*(v121 + 56) + 8 * v131);
              v121, v140, v141, v142, v143, v144, v145, v146;
LABEL_52:
              v147 = v5;
              sub_1000356E8();
              v149 = v148;

              if (v149 && !v139)
              {
                aBlock = 0;
                v340 = 0xE000000000000000;
                _StringGuts.grow(_:)(67);
                v307._countAndFlagsBits = 0xD000000000000041;
                v307._object = 0x800000010005DEB0;
                String.append(_:)(v307);
                v308 = v147;
                v309 = [v308 description];
                v310 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v312 = v311;

                v313._countAndFlagsBits = v310;
                v313._object = v312;
                String.append(_:)(v313);
                v312, v314, v315, v316, v317, v318, v319, v320;

                goto LABEL_139;
              }

              v150 = *(&v117->super.isa + v5);
              if (!v150)
              {
                goto LABEL_119;
              }

              v331 = v117;
              a2 = v147;
              v151 = [v150 identifier];
              if (v151)
              {
                v152 = v151;
                v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v155 = v154;

                v156 = &v337[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID];
                v157 = *&v337[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID + 8];
                *v156 = v153;
                v156[1] = v155;
                v157, v158, v159, v160, v161, v162, v163, v164;
                v165 = *(v333 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
                if (v165)
                {
                  [v165 pickerDidSelectAccessory];
                }

                v166 = v332[1];
                if (v166)
                {
                  v330 = a2;
                  v167 = v156[1];
                  if (!v167)
                  {
                    goto LABEL_122;
                  }

                  a2 = *v156;
                  a1 = objc_allocWithZone(DADeviceAppAccessInfo);

                  v168 = String._bridgeToObjectiveC()();
                  v166, v169, v170, v171, v172, v173, v174, v175;
                  v176 = String._bridgeToObjectiveC()();
                  v167, v177, v178, v179, v180, v181, v182, v183;
                  v184 = [a1 initWithBundleIdentifier:v168 deviceIdentifier:v176 state:10];

                  v19 = v331;
                  v185 = *(v5 + v331);
                  if (v185)
                  {
                    v186 = [v185 discoveryConfiguration];
                    a1 = v330;
                    if (v186)
                    {
                      v187 = v186;
                      v188 = [v186 associationIdentifier];

                      if (v188)
                      {
                        v325 = v139;
                        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v190 = v189;

                        v336 = *&v337[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems];
                        if (!v336)
                        {
                          goto LABEL_128;
                        }

                        *&v335 = v190;
                        v191 = v336 & 0xFFFFFFFFFFFFFF8;
                        v324 = v184;
                        if (v336 >> 62)
                        {
                          v192 = _CocoaArrayWrapper.endIndex.getter();
                        }

                        else
                        {
                          v192 = *((v336 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        }

                        if (v192)
                        {
                          a1 = 0;
                          v332 = (v336 & 0xC000000000000001);
                          while (1)
                          {
                            if (v332)
                            {
                              v200 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                            }

                            else
                            {
                              if (a1 >= *(v191 + 16))
                              {
                                goto LABEL_109;
                              }

                              v200 = *(v336 + 8 * a1 + 32);
                            }

                            a2 = v200;
                            v201 = a1 + 1;
                            if (__OFADD__(a1, 1))
                            {
                              goto LABEL_108;
                            }

                            v202 = [v200 identifier];
                            v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v204 = v203;

                            if (v16 == v17 && v204 == v335)
                            {
                              break;
                            }

                            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
                            v204, v212, v213, v214, v215, v216, v217, v218;
                            if (v19)
                            {
                              v336, v219, v220, v221, v222, v223, v224, v225;
                              v204 = v335;
LABEL_84:
                              v204, v241, v242, v243, v244, v245, v246, v247;
                              v16 = v329;
                              v248 = sub_100017090();
                              v184 = v324;
                              [v324 setAppDiscoveryConfiguration:v248];

                              v249 = *(v333 + v328);
                              v139 = v325;
                              a1 = v330;
                              v19 = v331;
                              if (v249)
                              {
                                v250 = v249;
                                v251 = [a2 renameOptions];

                                v250[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_accessoryRenamingSSID] = v251 & 1;
                              }

                              else
                              {
                              }

                              goto LABEL_87;
                            }

                            ++a1;
                            if (v201 == v192)
                            {
                              goto LABEL_80;
                            }
                          }

                          v233 = v335;
                          v336, v205, v206, v335, v207, v208, v209, v210;
                          v233, v234, v235, v236, v237, v238, v239, v240;
                          goto LABEL_84;
                        }

LABEL_80:
                        v335, v193, v194, v195, v196, v197, v198, v199;
                        v336, v226, v227, v228, v229, v230, v231, v232;
                        v16 = v329;
                        a1 = v330;
                        v139 = v325;
                        v19 = v331;
                        v184 = v324;
                      }
                    }

LABEL_87:
                    a2 = v327;
                    if (*(a1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_needsBluetoothSetup) == 1)
                    {
                      v252 = *(v5 + v19);
                      if (!v252)
                      {
                        goto LABEL_127;
                      }

                      v253 = v252;
                      [v253 setFlags:{objc_msgSend(v253, "flags") | 0x10}];
                    }

                    v254 = *(v333 + v328);
                    if (!v254)
                    {
                      goto LABEL_96;
                    }

                    v255 = *(v254 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType);
                    if (v255 != 1)
                    {
                      if (!v255)
                      {
                        v256 = *&v337[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
                        if (!v256)
                        {
                          goto LABEL_129;
                        }

                        v257 = *(v5 + v19);
                        if (v257)
                        {
                          v258 = v256;
                          v259 = v257;
                          v16, v260, v261, v262, v263, v264, v265, v266;
                          v267 = swift_allocObject();
                          v268 = v337;
                          *(v267 + 16) = v337;
                          v343 = sub_10001F830;
                          v344 = v267;
                          aBlock = _NSConcreteStackBlock;
                          v340 = 1107296256;
                          v269 = &unk_1000717C8;
LABEL_100:
                          v341 = sub_100018ABC;
                          v342 = v269;
                          v287 = _Block_copy(&aBlock);
                          v288 = v268;

                          [v258 setDeviceAppAccessInfo:v184 device:v259 completionHandler:v287];

                          _Block_release(v287);
                          return;
                        }

                        goto LABEL_131;
                      }

LABEL_96:

                      v16, v270, v271, v272, v273, v274, v275, v276;
                      return;
                    }

                    v277 = *&v337[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery];
                    if (v277)
                    {
                      v278 = *(v5 + v19);
                      if (v278)
                      {
                        v258 = v277;
                        v259 = v278;
                        v16, v279, v280, v281, v282, v283, v284, v285;
                        v286 = swift_allocObject();
                        v268 = v337;
                        *(v286 + 16) = v337;
                        v343 = sub_100022FCC;
                        v344 = v286;
                        aBlock = _NSConcreteStackBlock;
                        v340 = 1107296256;
                        v269 = &unk_100071778;
                        goto LABEL_100;
                      }

                      goto LABEL_132;
                    }

LABEL_130:
                    __break(1u);
LABEL_131:
                    __break(1u);
LABEL_132:
                    __break(1u);
LABEL_133:
                    swift_endAccess();
                    aBlock = 0;
                    v340 = 0xE000000000000000;
                    _StringGuts.grow(_:)(63);
                    v303._countAndFlagsBits = 0xD00000000000003DLL;
                    v303._object = 0x800000010005DDF0;
                    String.append(_:)(v303);
                    v304._countAndFlagsBits = a1;
                    v304._object = a2;
                    String.append(_:)(v304);
LABEL_139:
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                    return;
                  }

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
LABEL_128:
                  __break(1u);
LABEL_129:
                  __break(1u);
                  goto LABEL_130;
                }

LABEL_121:
                __break(1u);
LABEL_122:
                __break(1u);
                goto LABEL_123;
              }

LABEL_120:
              __break(1u);
              goto LABEL_121;
            }
          }

          v121, v122, v123, v124, v125, v126, v127, v128;
        }

        v139 = 0;
        goto LABEL_52;
      }

LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v27 = v26;
    sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
    v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v28 + 16);
    v28, v30, v31, v32, v33, v34, v35, v36;
    if (!v29)
    {
      goto LABEL_40;
    }

LABEL_15:
    sub_100035410(v37);
    v40 = v39;
    v42 = v41;
    v43 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
    v44 = v337;
    swift_beginAccess();
    v52 = *&v44[v43];
    if (!v52)
    {
      goto LABEL_124;
    }

    if (!*(v52 + 16))
    {
      v42, v45, v46, v47, v48, v49, v50, v51;
LABEL_137:
      swift_endAccess();
      aBlock = 0;
      v340 = 0xE000000000000000;
      _StringGuts.grow(_:)(65);
      v305._countAndFlagsBits = 0xD00000000000003FLL;
      v305._object = 0x800000010005DE70;
      String.append(_:)(v305);
      v306._countAndFlagsBits = a1;
      v306._object = a2;
      String.append(_:)(v306);
      goto LABEL_139;
    }

    v53 = sub_10001F768(v40, v42);
    v5 = v54;
    v42, v54, v55, v56, v57, v58, v59, v60;
    if ((v5 & 1) == 0)
    {
      goto LABEL_137;
    }

    v61 = *(*(v52 + 56) + 8 * v53);
    swift_endAccess();
    a1 = v61 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = &OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
    v19 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
    v331 = v61;

    if (!a1)
    {
      break;
    }

    v336 = v331 & 0xC000000000000001;
    v16 = (v331 & 0xFFFFFFFFFFFFFF8);
    a2 = v331 + 32;
    *&v69 = 138412290;
    v335 = v69;
    while (!__OFSUB__(a1--, 1))
    {
      if (v336)
      {
        v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_106;
        }

        if (a1 >= *&v16->router[8])
        {
          goto LABEL_107;
        }

        v71 = *(a2 + 8 * a1);
      }

      v5 = v71;
      v72 = *&v71[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
      if (!v72)
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v73 = [v72 identifier];
      if (!v73)
      {
        goto LABEL_114;
      }

      v74 = v73;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78 = v337;
      swift_beginAccess();
      v86 = *&v78[v19];
      if (!v86)
      {
        goto LABEL_115;
      }

      if (!*(v86 + 16))
      {
        v77, v79, v80, v81, v82, v83, v84, v85;
LABEL_39:
        swift_endAccess();

        v331, v105, v106, v107, v108, v109, v110, v111;
        v16 = v329;
        goto LABEL_40;
      }

      v87 = sub_10001F768(v75, v77);
      v89 = v88;
      v77, v88, v90, v91, v92, v93, v94, v95;
      if ((v89 & 1) == 0)
      {
        goto LABEL_39;
      }

      v96 = *(*(v86 + 56) + 8 * v87);
      swift_endAccess();
      v97 = qword_10007EBF8;
      v98 = v96;
      if (v97 != -1)
      {
        swift_once();
      }

      v99 = type metadata accessor for Logger();
      sub_1000032F0(v99, qword_10007F150);
      v5 = v5;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *v102 = v335;
        *(v102 + 4) = v5;
        *v103 = v5;
        v104 = v5;
        _os_log_impl(&_mh_execute_header, v100, v101, "current backing device was lost, check if we have older ones that are available %@", v102, 0xCu);
        sub_1000227E8(v103, &qword_10007F278, &unk_10005CD60);
        v17 = &OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
      }

      if (!a1)
      {
        goto LABEL_101;
      }
    }

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
    swift_once();
  }

LABEL_101:
  v329, v62, v63, v64, v65, v66, v67, v68;
  if (qword_10007EBF8 != -1)
  {
LABEL_116:
    swift_once();
  }

  v289 = type metadata accessor for Logger();
  sub_1000032F0(v289, qword_10007F150);
  v290 = Logger.logObject.getter();
  v291 = static os_log_type_t.error.getter();
  v292 = os_log_type_enabled(v290, v291);
  v293 = v321;
  v294 = v331;
  if (v292)
  {
    v295 = swift_slowAlloc();
    *v295 = 0;
    _os_log_impl(&_mh_execute_header, v290, v291, "no available backing device, showing connection error directly", v295, 2u);
  }

  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v296 = static OS_dispatch_queue.main.getter();
  v297 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v298 = swift_allocObject();
  *(v298 + 16) = v297;
  *(v298 + 24) = v294;
  v343 = sub_10001F8C4;
  v344 = v298;
  aBlock = _NSConcreteStackBlock;
  v340 = 1107296256;
  v341 = sub_1000102BC;
  v342 = &unk_100071840;
  v299 = _Block_copy(&aBlock);

  v300 = v325;
  static DispatchQoS.unspecified.getter();
  v338 = _swiftEmptyArrayStorage;
  sub_10001F8CC();
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
  v301 = v324;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v299);
  v302 = v334;

  (*(v323 + 8))(v293, v301);
  (*(v330 + 8))(v300, v322);
}

uint64_t sub_100019E4C()
{
  result = [v0 bluetoothAdvertisementData];
  if (result)
  {

    v2 = [v0 appAccessInfoMap];
    if (v2)
    {
      v3 = v2;
      sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
      v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = *(v4 + 16);
      v4, v6, v7, v8, v9, v10, v11, v12;
      return v5 == 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_100019F00(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  if (!swift_unknownObjectWeakLoadStrong())
  {

    return;
  }

  if (!(a2 >> 62))
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_5:
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(a2 + 8 * v7 + 32);
LABEL_10:
    v9 = v8;
    sub_100029AB0(v8);

    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

void sub_10001A004(uint64_t result, uint64_t a2)
{
  if (result)
  {
    swift_errorRetain();
    if (qword_10007EBF8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000032F0(v3, qword_10007F150);
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
      _os_log_impl(&_mh_execute_header, v4, v5, "error when picking a device: %@", v6, 0xCu);
      sub_1000227E8(v7, &qword_10007F278, &unk_10005CD60);
    }

    else
    {
    }

    v16 = (a2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID);
    v17 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID + 8);
    *v16 = 0;
    v16[1] = 0;

    v17, v9, v10, v11, v12, v13, v14, v15;
  }
}

void sub_10001A19C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
    goto LABEL_22;
  }

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= 1)
    {
      goto LABEL_4;
    }

LABEL_22:
    v40 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
    if (v40)
    {
      [v40 invalidate];
    }

    v41 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
    v42 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
    if (v42)
    {
      [v42 invalidateWithReason:0];
      v43 = *(v1 + v41);
    }

    else
    {
      v43 = 0;
    }

    *(v1 + v41) = 0;

    sub_1000189D4(0, 1);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100028DAC();
      swift_unknownObjectRelease();
    }

    return;
  }

LABEL_21:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (v4 < 1)
  {
    goto LABEL_22;
  }

LABEL_4:

  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = 0;
  v6 = v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_21;
      }

      v7 = *&v3->systemMonitor[8 * v5];
    }

    v8 = v7;
    v9 = *(v6 + 8);
    if (!v9)
    {
      __break(1u);
      goto LABEL_31;
    }

    ++v5;

    sub_100017090();

    v9, v10, v11, v12, v13, v14, v15, v16;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v4 != v5);
  v17 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
  v18 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
  if (v18)
  {
    [v18 invalidateWithReason:0];
    v19 = *(v1 + v17);
  }

  else
  {
    v19 = 0;
  }

  *(v1 + v17) = 0;

  sub_10001428C(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration) = 0;
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000032F0(v20, qword_10007F150);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Migration displayItems after setup so dismiss after migration complete", v23, 2u);
  }

  v24 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery);
  if (v24)
  {
    v25 = v24;
    _swiftEmptyArrayStorage, v26, v27, v28, v29, v30, v31, v32;
    v3, v33, v34, v35, v36, v37, v38, v39;
    [v25 migrateDevices];

    return;
  }

LABEL_31:
  __break(1u);
}

void sub_10001A4E0(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2, uint64_t a3, _TtC16AccessorySetupUI17ASUIServerManager *a4)
{
  v5 = v4;
  if (qword_10007EC50 != -1)
  {
    v82 = a1;
    swift_once();
    a1 = v82;
  }

  v9 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v9)
  {
    goto LABEL_28;
  }

  v89 = a1;
  v10 = qword_10007EBF8;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000032F0(v12, qword_10007F150);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  a2, v15, v16, v17, v18, v19, v20, v21;
  a4, v22, v23, v24, v25, v26, v27, v28;
  if (os_log_type_enabled(v13, v14))
  {
    v29 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v29 = 136315394;
    *(v29 + 4) = sub_10003FFF4(a3, a4, &aBlock);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_10003FFF4(v89, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "New Name: %s, for ID: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  v30 = [objc_allocWithZone(DADeviceSettings) init];
  [v30 setUserInitiated:1];
  v31 = String._bridgeToObjectiveC()();
  [v30 setDisplayName:v31];

  if (v11[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_accessoryRenamingSSID] == 1)
  {
    v32 = String._bridgeToObjectiveC()();
    [v30 setSSID:v32];
  }

  v33 = *(v5 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_session);
  if (v33)
  {
    v34 = v33;
    v35 = String._bridgeToObjectiveC()();
    v95 = sub_100022EE4;
    v96 = 0;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_100018ABC;
    v94 = &unk_1000718E0;
    v36 = _Block_copy(&aBlock);
    [v34 modifyDeviceWithIdentifier:v35 settings:v30 completionHandler:v36];
    _Block_release(v36);

    v37 = *&v11[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory];
    if (v37)
    {
      v38 = v37;
      v39 = String._bridgeToObjectiveC()();
      [v38 setDisplayName:v39];
    }

    v40 = v30;
    goto LABEL_22;
  }

  v88 = a3;
  v41 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  swift_beginAccess();
  v42 = *(v5 + v41);
  if (!v42)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (*(v42 + 16))
  {
    v43 = sub_10001F768(v89, a2);
    if (v44)
    {
      v45 = *(*(v42 + 56) + 8 * v43);
      swift_endAccess();
      v46 = v45;

      v47 = v46;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      a4, v50, v51, v52, v53, v54, v55, v56;
      v87 = v47;
      if (os_log_type_enabled(v48, v49))
      {
        v57 = swift_slowAlloc();
        v85 = v5;
        v58 = swift_slowAlloc();
        v86 = v11;
        v59 = swift_slowAlloc();
        aBlock = v59;
        *v57 = 136315394;
        *(v57 + 4) = sub_10003FFF4(v88, a4, &aBlock);
        *(v57 + 12) = 2112;
        *(v57 + 14) = v47;
        *v58 = v47;
        v60 = v47;
        _os_log_impl(&_mh_execute_header, v48, v49, "New Name: %s, for device: %@", v57, 0x16u);
        sub_1000227E8(v58, &qword_10007F278, &unk_10005CD60);
        v5 = v85;

        sub_100009AB0(v59);
        v11 = v86;
      }

      v61 = *(v5 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
      if (v61)
      {
        v62 = v61;
        v63 = String._bridgeToObjectiveC()();
        v95 = sub_100022EE4;
        v96 = 0;
        aBlock = _NSConcreteStackBlock;
        v92 = 1107296256;
        v93 = sub_100018ABC;
        v94 = &unk_1000718B8;
        v64 = _Block_copy(&aBlock);
        [v62 modifyDeviceWithIdentifier:v63 settings:v30 completionHandler:v64];
        _Block_release(v64);

        v65 = &v87[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
        v66 = *&v87[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
        *v65 = v88;
        v65[1] = a4;
        v66, v67, v68, v69, v70, v71, v72, v73;
        swift_beginAccess();
        if (*(v5 + v41))
        {

          v40 = v87;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = *(v5 + v41);
          *(v5 + v41) = 0x8000000000000000;
          sub_100020294(v40, v89, a2, isUniquelyReferenced_nonNull_native, &qword_10007F2B0, &unk_10005C5B0);
          a2, v75, v76, v77, v78, v79, v80, v81;
          *(v5 + v41) = v90;
          swift_endAccess();
          v34 = v30;
LABEL_22:

          return;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_28;
    }
  }

  swift_endAccess();
  aBlock = 0;
  v92 = 0xE000000000000000;
  _StringGuts.grow(_:)(85);
  v83._countAndFlagsBits = 0xD000000000000053;
  v83._object = 0x800000010005DF40;
  String.append(_:)(v83);
  v84._countAndFlagsBits = v89;
  v84._object = a2;
  String.append(_:)(v84);
LABEL_28:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10001AC60(uint64_t a1)
{
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_10007F150);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

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
    _os_log_impl(&_mh_execute_header, oslog, v3, "error when renaming a device: %@", v4, 0xCu);
    sub_1000227E8(v5, &qword_10007F278, &unk_10005CD60);
  }
}

void sub_10001ADD0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EC50 != -1)
  {
    goto LABEL_40;
  }

LABEL_2:
  v7 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v7)
  {
    goto LABEL_43;
  }

  v8 = *&v7[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_upgradeAccessoryIdentifier + 8];
  if (!v8)
  {
    goto LABEL_43;
  }

  v109 = v3;
  v110 = v4;
  v115 = *&v7[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_upgradeAccessoryIdentifier];
  v9 = qword_10007EBF8;
  v113 = v7;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000032F0(v10, qword_10007F150);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v8, v13, v14, v15, v16, v17, v18, v19;
  v20 = os_log_type_enabled(v11, v12);
  v116 = v8;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v117[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10003FFF4(v115, v8, v117);
    _os_log_impl(&_mh_execute_header, v11, v12, "Synchronously fetch device for upgrade: deviceID: %s", v21, 0xCu);
    sub_100009AB0(v22);
  }

  v23 = [objc_allocWithZone(DASession) init];
  v24 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8];
  v114 = &v1[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  if (v24)
  {

    v25 = String._bridgeToObjectiveC()();
    v24, v26, v27, v28, v29, v30, v31, v32;
  }

  else
  {
    v25 = 0;
  }

  v112 = v1;
  v108 = v6;
  [v23 setBundleID:v25];

  v33 = [objc_opt_self() getDevicesWithFlags:8 session:v23 error:0];
  sub_100009B48(0, &qword_100080420, DADevice_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v111 = v23;
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    v41 = v4;
    if (!v4)
    {
LABEL_42:
      v3, v34, v35, v36, v37, v38, v39, v40;
      goto LABEL_43;
    }
  }

  else
  {
    v41 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v41)
    {
      goto LABEL_42;
    }
  }

  v42 = 0;
  v6 = (v3 & 0xC000000000000001);
  while (1)
  {
    if (v6)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v42 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v4 = *(v3 + 8 * v42 + 32);
    }

    v43 = v4;
    v44 = (v42 + 1);
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v106 = v4;
      swift_once();
      v4 = v106;
      goto LABEL_2;
    }

    v45 = [v4 identifier];
    if (v45)
    {
      break;
    }

LABEL_14:

    ++v42;
    if (v44 == v41)
    {
      goto LABEL_42;
    }
  }

  v1 = v45;
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (v46 != v115 || v116 != v48)
  {
    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v48, v56, v57, v58, v59, v60, v61, v62;
    if (v55)
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  v48, v49, v115, v116, v50, v51, v52, v53;
LABEL_28:
  v63 = [v43 name];
  if (v63)
  {
    v64 = v63;
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  v68 = v114[1];
  if (!v68)
  {
    while (1)
    {
      __break(1u);
LABEL_43:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v69 = *v114;

  v116, v70, v71, v72, v73, v74, v75, v76;
  v3, v77, v78, v79, v80, v81, v82, v83;
  v84 = objc_allocWithZone(type metadata accessor for ASUIDevice());
  v85 = v43;
  v86 = sub_100036A64(v65, v67, v85, v69, v68);

  v87 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
  v88 = v112;
  swift_beginAccess();
  v89 = *&v88[v87];
  *&v88[v87] = v86;

  v90 = [v85 displayImageFileURL];
  if (!v90)
  {
LABEL_36:

    goto LABEL_37;
  }

  v91 = v108;
  v92 = v90;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v93 = *&v88[v87];
  if (!v93)
  {
    (*(v109 + 8))(v91, v110);
    swift_endAccess();
    goto LABEL_36;
  }

  swift_endAccess();
  v94 = v93;
  object = URL.path(percentEncoded:)(1)._object;
  v96 = objc_allocWithZone(UIImage);
  v97 = String._bridgeToObjectiveC()();
  object, v98, v99, v100, v101, v102, v103, v104;
  v105 = [v96 initWithContentsOfFile:v97];

  (*(v109 + 8))(v91, v110);
  v85 = *&v94[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image];
  *&v94[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image] = v105;

LABEL_37:
}

void sub_10001B4D4(char a1, uint64_t a2, unint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest))
  {
    v4 = a1 & 1;

    sub_10001B624(v4, a2, a3);
  }

  else if (*(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest))
  {
    v5 = a1 & 1;

    sub_10001BB3C(v5, a2, a3);
  }

  else
  {
    if (qword_10007EBF8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000032F0(v6, qword_10007F150);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "No current pairing request to respond to", v8, 2u);
    }
  }
}

void sub_10001B624(char a1, uint64_t a2, unint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest);
  if (v4)
  {
    v8 = v4;
    v9 = [v8 pairingInfo];
    [v9 setAccept:a1 & 1];
    if (!a3)
    {
      goto LABEL_73;
    }

    v10 = HIBYTE(a3) & 0xF;
    v11 = a2 & 0xFFFFFFFFFFFFLL;
    if (!((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : a2 & 0xFFFFFFFFFFFFLL))
    {
      goto LABEL_73;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {

      sub_100020B7C(a2, a3, 10);
      v40 = a3;
      v15 = v41;
      v43 = v42;
      v40, v42, v44, v45, v46, v47, v48, v49;
      if (v43)
      {
LABEL_73:
        v37 = sub_10000A7FC();
        if (v37)
        {
          v38 = v37;
          v55 = nullsub_1;
          v56 = 0;
          aBlock = _NSConcreteStackBlock;
          v52 = 1107296256;
          v53 = sub_100018ABC;
          v54 = &unk_100071868;
          v39 = _Block_copy(&aBlock);
          [v38 respondToBluetoothPairingRequest:v9 completionHandler:v39];

          _Block_release(v39);
        }

        else
        {
        }

        return;
      }

LABEL_72:
      sub_100009B48(0, &qword_10007F2A0, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(v15).super.super.isa;
      [v9 setPasskey:isa];

      goto LABEL_73;
    }

    if ((a3 & 0x2000000000000000) != 0)
    {
      aBlock = a2;
      v52 = a3 & 0xFFFFFFFFFFFFFFLL;
      if (a2 == 43)
      {
        if (v10)
        {
          if (--v10)
          {
            v15 = 0;
            v28 = &aBlock + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v10)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_82:
        __break(1u);
        return;
      }

      if (a2 != 45)
      {
        if (v10)
        {
          v15 = 0;
          p_aBlock = &aBlock;
          while (1)
          {
            v34 = *p_aBlock - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            p_aBlock = (p_aBlock + 1);
            if (!--v10)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v10)
      {
        if (--v10)
        {
          v15 = 0;
          v22 = &aBlock + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v10)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v13 = _StringObject.sharedUTF8.getter();
      }

      v14 = *v13;
      if (v14 == 43)
      {
        if (v11 >= 1)
        {
          v10 = v11 - 1;
          if (v11 != 1)
          {
            v15 = 0;
            if (v13)
            {
              v25 = v13 + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  goto LABEL_70;
                }

                v27 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  goto LABEL_70;
                }

                v15 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  goto LABEL_70;
                }

                ++v25;
                if (!--v10)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_70;
        }

        goto LABEL_81;
      }

      if (v14 != 45)
      {
        if (v11)
        {
          v15 = 0;
          if (v13)
          {
            while (1)
            {
              v31 = *v13 - 48;
              if (v31 > 9)
              {
                goto LABEL_70;
              }

              v32 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_70;
              }

              v15 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                goto LABEL_70;
              }

              ++v13;
              if (!--v11)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_70:
        v15 = 0;
        LOBYTE(v10) = 1;
LABEL_71:
        if (v10)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      if (v11 >= 1)
      {
        v10 = v11 - 1;
        if (v11 != 1)
        {
          v15 = 0;
          if (v13)
          {
            v16 = v13 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_70;
              }

              v18 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_70;
              }

              v15 = v18 - v17;
              if (__OFSUB__(v18, v17))
              {
                goto LABEL_70;
              }

              ++v16;
              if (!--v10)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_62:
          LOBYTE(v10) = 0;
          goto LABEL_71;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000032F0(v19, qword_10007F150);
  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v20, "No current pairing request to respond to", v21, 2u);
  }
}

void sub_10001BB3C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest);
  if (v4)
  {
    v7 = v4;
    v15 = [v7 pairingInfo];
    [v15 setAccept:a1 & 1];
    if (a3)
    {
      v8 = String._bridgeToObjectiveC()();
      [v15 setPasskey:v8];
    }

    v9 = sub_10000A7FC();
    if (v9)
    {
      v10 = v9;
      aBlock[4] = nullsub_1;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100018ABC;
      aBlock[3] = &unk_100071890;
      v11 = _Block_copy(aBlock);
      [v10 respondToWiFiAwarePairingRequest:v15 completionHandler:v11];

      _Block_release(v11);
      return;
    }
  }

  else
  {
    if (qword_10007EBF8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000032F0(v12, qword_10007F150);
    v15 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v15, v13, "No current wi-fi aware pairing request to respond to", v14, 2u);
    }
  }
}

uint64_t sub_10001BD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10001BD8C, 0, 0);
}

uint64_t sub_10001BD8C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_aliasScanningCoordinator);
  *(v3 + 32) = v4;
  if (v4)
  {

    a1 = sub_100022FC0;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

void sub_10001BE14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_10001BE7C()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v2 = result;
  if (result)
  {
    v3 = v0;
    v4 = [v2 device];
    v5 = [v4 identifier];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      [v2 device];
      return v6;
    }

    else
    {
      if (qword_10007EBF8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000032F0(v7, qword_10007F150);
      v8 = v3;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        v13 = [v2 device];
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "DADevice does not have an identifier, ignoring. %@", v11, 0xCu);
        sub_1000227E8(v12, &qword_10007F278, &unk_10005CD60);
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10001C098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a4;
  *(v7 + 24) = a7;
  return _swift_task_switch(sub_10001C0B8, 0, 0);
}

uint64_t sub_10001C0B8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_aliasScanningCoordinator);
  *(v3 + 32) = v4;
  if (v4)
  {

    a1 = sub_10001C140;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10001C140()
{
  sub_1000389DC(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

void sub_10001C1A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100029AB0(a2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

double sub_10001C234(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000032F0(v10, qword_10007F150);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "handleBluetoothPairingRequest: %@", v14, 0xCu);
    sub_1000227E8(v15, &qword_10007F278, &unk_10005CD60);
  }

  v17 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest);
  *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest) = v11;

  v18 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest);
  *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest) = 0;
  v19 = v11;

  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v19;
  aBlock[4] = sub_100022348;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = &unk_100071C78;
  v23 = _Block_copy(aBlock);
  v24 = v19;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10001F8CC();
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v28 + 8))(v6, v4);
  (*(v26 + 8))(v9, v27);

  return result;
}

double sub_10001C66C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000032F0(v10, qword_10007F150);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "handleWiFiAwarePairingRequest: %@", v14, 0xCu);
    sub_1000227E8(v15, &qword_10007F278, &unk_10005CD60);
  }

  v17 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest);
  *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest) = v11;

  v18 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest);
  *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest) = 0;
  v19 = v11;

  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v19;
  aBlock[4] = sub_100022354;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = &unk_100071CC8;
  v23 = _Block_copy(aBlock);
  v24 = v19;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10001F8CC();
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v28 + 8))(v6, v4);
  (*(v26 + 8))(v9, v27);

  return result;
}

void sub_10001CAA4(id *a1, char *a2, void *a3)
{
  v5 = v3;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v118 = v9;
  v119 = v10;
  v11 = __chkstk_darwin(v9);
  v117 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v120 = &v117 - v13;
  v14 = *a1;
  v15 = [*a1 appAccessInfoMap];
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = v15;
  sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = &a2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  v26 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8];
  if (!v26)
  {
    __break(1u);
LABEL_34:
    swift_once();
LABEL_18:
    v110 = type metadata accessor for Logger();
    sub_1000032F0(v110, qword_10007F150);
    swift_errorRetain();
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *v113 = 138412290;
      swift_errorRetain();
      v115 = _swift_stdlib_bridgeErrorToNSError();
      *(v113 + 4) = v115;
      *v114 = v115;
      _os_log_impl(&_mh_execute_header, v111, v112, "Migration discovery: Error writing image to file for migration: %@", v113, 0xCu);
      sub_1000227E8(v114, &qword_10007F278, &unk_10005CD60);

      sub_10002215C(a3, v25);

      (*(v119 + 8))(v120, v14);
    }

    else
    {

      sub_10002215C(a3, v25);

      (*(v4 + 8))(v120, v14);
    }

    return;
  }

  if (!*(v17 + 16))
  {
    v17, v18, v19, v20, v21, v22, v23, v24;
    goto LABEL_21;
  }

  v27 = *v25;

  sub_10001F768(v27, v26);
  v29 = v28;
  v26, v28, v30, v31, v32, v33, v34, v35;
  v17, v36, v37, v38, v39, v40, v41, v42;
  if ((v29 & 1) == 0)
  {
LABEL_21:
    v116 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return;
  }

  v43 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migratedDevices;
  swift_beginAccess();
  v44 = v14;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&a2[v43] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a2[v43] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v45 = *(v25 + 1);
  if (v45)
  {
    v46 = *v25;

    v47 = [v44 appAccessInfoMap];
    if (!v47)
    {
      v45, v48, v49, v50, v51, v52, v53, v54;
      return;
    }

    v55 = v47;
    v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v56 + 16))
    {
      v64 = sub_10001F768(v46, v45);
      v66 = v65;
      v45, v65, v67, v68, v69, v70, v71, v72;
      if (v66)
      {
        v80 = *(*(v56 + 56) + 8 * v64);
        v56, v81, v82, v83, v84, v85, v86, v87;
        v88 = [v80 associationIdentifier];

        if (!v88)
        {
          return;
        }

        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v90;

        v91 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
        swift_beginAccess();
        v92 = *&a2[v91];
        if (*(v92 + 16))
        {
          v93 = sub_10001F768(v89, v56);
          if (v94)
          {
            v95 = *(*(v92 + 56) + 8 * v93);
            swift_endAccess();
            a2 = v95;
            v56, v96, v97, v98, v99, v100, v101, v102;
            v103 = [v44 displayImageFileURL];
            if (!v103)
            {

              return;
            }

            v104 = v117;
            v105 = v103;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v14 = v118;
            v4 = v119;
            v106 = v120;
            (*(v119 + 32))(v120, v104, v118);
            v107 = [a2 productImage];
            v108 = UIImagePNGRepresentation(v107);

            if (!v108)
            {
              (*(v4 + 8))(v106, v14);

              return;
            }

            a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = v109;

            Data.write(to:options:)();
            if (!v5)
            {
              (*(v4 + 8))(v106, v14);

              sub_10002215C(a3, v25);
              return;
            }

            if (qword_10007EBF8 == -1)
            {
              goto LABEL_18;
            }

            goto LABEL_34;
          }
        }

        swift_endAccess();
      }
    }

    else
    {
      v45, v57, v58, v59, v60, v61, v62, v63;
    }

    v56, v73, v74, v75, v76, v77, v78, v79;
  }
}

void sub_10001D128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
    swift_beginAccess();
    v8 = *&v6[v7];
    if (v8)
    {
      if (*(v8 + 16) && (v9 = sub_10001F768(a2, a3), (v10 & 1) != 0))
      {
        v11 = *(*(v8 + 56) + 8 * v9);
        swift_endAccess();
        v12 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologiesPendingSetup;
        swift_beginAccess();
        v13 = *&v11[v12];
        *&v11[v12] = _swiftEmptyArrayStorage;
        v14 = v11;
        v13, v15, v16, v17, v18, v19, v20, v21;
        v22 = swift_unknownObjectWeakLoadStrong();
        if (v22)
        {
          if (*(v22 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_didEnterPostPairingFlow) != 1)
          {
            sub_1000284F4();
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10001D274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
    swift_beginAccess();
    v8 = *&v6[v7];
    if (v8)
    {
      if (*(v8 + 16) && (v9 = sub_10001F768(a2, a3), (v10 & 1) != 0))
      {
        v11 = *(*(v8 + 56) + 8 * v9);
        swift_endAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = v11;
          sub_10002A0E8();

          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10001D364(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController);
      if (v4)
      {
        v5 = v4;
        [v5 dismissViewControllerAnimated:1 completion:0];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10001D418(void **a1, uint64_t a2, const char *a3, ...)
{
  v91 = a3;
  v6 = type metadata accessor for URL();
  v92 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v89 - v10;
  v12 = *a1;

  v13 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8);
  if (!v13)
  {
    return;
  }

  v90 = v6;
  v14 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID);

  v15 = [v12 appAccessInfoMap];
  if (!v15)
  {
    v81 = v13;
LABEL_18:
    v81, v16, v17, v18, v19, v20, v21, v22;
    return;
  }

  v23 = v15;
  sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v24 + 16))
  {
    v13, v25, v26, v27, v28, v29, v30, v31;
    goto LABEL_17;
  }

  v32 = sub_10001F768(v14, v13);
  v34 = v33;
  v13, v33, v35, v36, v37, v38, v39, v40;
  if ((v34 & 1) == 0)
  {
LABEL_17:
    v81 = v24;
    goto LABEL_18;
  }

  v41 = *(*(v24 + 56) + 8 * v32);
  v24, v42, v43, v44, v45, v46, v47, v48;
  v49 = [v41 associationIdentifier];

  if (v49)
  {
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
    swift_beginAccess();
    v54 = *(a2 + v53);
    if (*(v54 + 16) && (v55 = sub_10001F768(v50, v52), (v56 & 1) != 0))
    {
      v57 = *(*(v54 + 56) + 8 * v55);
      swift_endAccess();
      v58 = v57;
      v52, v59, v60, v61, v62, v63, v64, v65;
      v66 = [v12 displayImageFileURL];
      if (v66)
      {
        v67 = v66;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v68 = v92;
        v69 = v90;
        (*(v92 + 32))(v11, v9, v90);
        v70 = [v58 productImage];
        v71 = UIImagePNGRepresentation(v70);

        if (v71)
        {
          v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v73;

          Data.write(to:options:)();
          if (v3)
          {
            if (qword_10007EBF8 != -1)
            {
              swift_once();
            }

            v75 = type metadata accessor for Logger();
            sub_1000032F0(v75, qword_10007F150);
            swift_errorRetain();
            v76 = Logger.logObject.getter();
            v77 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              *v78 = 138412290;
              swift_errorRetain();
              v80 = _swift_stdlib_bridgeErrorToNSError();
              *(v78 + 4) = v80;
              *v79 = v80;
              _os_log_impl(&_mh_execute_header, v76, v77, v91, v78, 0xCu);
              sub_1000227E8(v79, &qword_10007F278, &unk_10005CD60);

              sub_10002215C(v72, v74);

              (*(v92 + 8))(v11, v90);
            }

            else
            {

              sub_10002215C(v72, v74);

              (*(v92 + 8))(v11, v69);
            }
          }

          else
          {
            (*(v68 + 8))(v11, v69);

            sub_10002215C(v72, v74);
          }
        }

        else
        {
          (*(v68 + 8))(v11, v69);
        }
      }

      else
      {
      }
    }

    else
    {
      swift_endAccess();
      v52, v82, v83, v84, v85, v86, v87, v88;
    }
  }
}

double sub_10001D94C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
    if (v16)
    {
      v17 = v16;

      [v17 invalidate];
      v15 = v17;
    }
  }

  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  aBlock[4] = a3;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = a4;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10001F8CC();
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v22 + 8))(v10, v8);
  (*(v11 + 8))(v13, v21);

  return result;
}

double sub_10001DC50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 invalidate];
  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  aBlock[4] = a3;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = a4;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10001F8CC();
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v10, v8);
  (*(v11 + 8))(v13, v18);

  return result;
}

void sub_10001DF00(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTookTooLong) = 1;
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_10001DF80(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4 && (v5 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      if (*(v5 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_didEnterPostPairingFlow) == 1)
      {

        swift_unknownObjectRelease();
      }

      else
      {
        v6 = v4;
        sub_1000284F4();

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_10001E05C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *a2;
    v6 = *(Strong + v5);
    if (v6)
    {
      [v6 invalidateWithReason:5];
      v7 = *&v4[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v4[v5] = 0;

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (qword_10007EC50 != -1)
      {
        swift_once();
      }

      v8 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
      if (v8)
      {
        if (*(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp) == 1)
        {
          sub_100028FFC();
        }

        else
        {
          sub_100028FDC();
        }

        swift_unknownObjectRelease();
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

void sub_10001E17C(unint64_t a1, unint64_t a2)
{
  if (qword_10007EC50 != -1)
  {
    goto LABEL_89;
  }

LABEL_2:
  v3 = qword_1000814E8;
  v4 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *(v4 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType);
  if (v5 == 3)
  {
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v7 = Strong;
  v8 = sub_10000A8A0();
  if (v8)
  {

    v9 = sub_10000A8A0();
    if (!v9)
    {
      __break(1u);
LABEL_9:
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v7 = v10;
        v11 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
        swift_beginAccess();
        v9 = *&v7[v11];
        if (v9)
        {
          v12 = v9;
        }

        goto LABEL_14;
      }

LABEL_12:
      v9 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

LABEL_15:
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_81;
  }

  v21 = v13;
  if (!v9)
  {
    goto LABEL_86;
  }

  v22 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (v22)
  {
    [v22 pickerStartedPairing];
  }

  v23 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup;
  if (v9[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] <= 1u)
  {
    if (v9[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup])
    {
      v24 = 0xE900000000000068;
    }

    else
    {
      v24 = 0xE400000000000000;
    }

LABEL_25:
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v24, v26, v27, v28, v29, v30, v31, v32;
    if ((v25 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_28;
  }

  if (v9[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] == 2)
  {
    v24 = 0xEA00000000005041;
    goto LABEL_25;
  }

  0xE900000000000065, v14, v15, v16, v17, v18, v19, v20;
LABEL_28:
  v33 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologiesPendingSetup;
  swift_beginAccess();
  v41 = *&v9[v33];
  v42 = *&v41->router[8];
  if (!v42)
  {
    v43 = 0;
    v53 = 0;
    goto LABEL_69;
  }

  v120 = v23;
  v121 = v21;
  v122 = a2;
  v43 = 0;
  systemMonitor = v41->systemMonitor;
  while (1)
  {
    if (v43 >= *&v41->router[8])
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      swift_once();
      goto LABEL_2;
    }

    if (v43[systemMonitor] <= 1u)
    {
      if (v43[systemMonitor])
      {
        a2 = 0xE900000000000068;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_37;
    }

    if (v43[systemMonitor] != 2)
    {
      break;
    }

    a2 = 0xEA00000000005041;
LABEL_37:
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v46, v47, v48, v49, v50, v51, v52;
    if (v45)
    {
      goto LABEL_42;
    }

    if (v42 == ++v43)
    {
      v43 = *&v41->router[8];
      v53 = v43;
      goto LABEL_45;
    }
  }

  0xE900000000000065, v34, v35, v36, v37, v38, v39, v40;
LABEL_42:
  v54 = v43 + 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v9[v33] = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_96:
    v41 = sub_100021604(v41, v53, v56, v57, v58, v59, v60, v61);
  }

  *&v9[v33] = v41;
  v62 = *&v41->router[8];
  if ((v62 - 1) != v43)
  {
    v63 = v43 + 33;
    while (1)
    {
      v54 = v63 - 32;
      if ((v63 - 32) >= v62)
      {
        goto LABEL_88;
      }

      if (v63[v41] > 1u)
      {
        if (v63[v41] != 2)
        {
          0xE900000000000065, v53, v56, v57, v58, v59, v60, v61;
          goto LABEL_49;
        }

        a2 = 0xEA00000000005041;
      }

      else if (v63[v41])
      {
        a2 = 0xE900000000000068;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2, v67, v68, v69, v70, v71, v72, v73;
      if ((v66 & 1) == 0)
      {
        if (v54 != v43)
        {
          if ((v43 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

          v74 = *&v41->router[8];
          if (v43 >= v74)
          {
            goto LABEL_91;
          }

          if (v54 >= v74)
          {
            goto LABEL_92;
          }

          v75 = v41->systemMonitor[v43];
          a2 = v63[v41];
          v76 = swift_isUniquelyReferenced_nonNull_native();
          *&v9[v33] = v41;
          if ((v76 & 1) == 0)
          {
            v41 = sub_100021604(v41, v53, v56, v57, v58, v59, v60, v61);
          }

          v77 = *&v41->router[8];
          if (v43 >= v77)
          {
            goto LABEL_93;
          }

          v43[v41 + 32] = a2;
          if (v54 >= v77)
          {
            goto LABEL_94;
          }

          v63[v41] = v75;
          *&v9[v33] = v41;
        }

        ++v43;
      }

LABEL_49:
      v62 = *&v41->router[8];
      v64 = v63 + 1;
      v65 = v63 - 31;
      ++v63;
      if (v65 == v62)
      {
        v53 = v64 - 32;
        v21 = v121;
        a2 = v122;
        v23 = v120;
        if ((v64 - 32) >= v43)
        {
          goto LABEL_69;
        }

        goto LABEL_95;
      }
    }
  }

  v53 = v54;
LABEL_45:
  v21 = v121;
  a2 = v122;
  v23 = v120;
LABEL_69:
  sub_100021928(v43, v53);
  swift_endAccess();
LABEL_70:
  v9[v23] = 1;
  v78 = [a2 pairingInfo];
  v79 = [v78 pairingType];

  if (v79 > 29)
  {
    if (v79 == 30)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_85;
      }

      sub_100028E0C();
    }

    else
    {
      if (v79 != 40)
      {
        goto LABEL_80;
      }

      sub_10000ACB0();
      if (!v87)
      {
        _StringGuts.grow(_:)(58);
        v107._countAndFlagsBits = 0xD000000000000038;
        v107._object = 0x800000010005E160;
        String.append(_:)(v107);
        v108 = [a2 description];
        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v111 = v110;

        v112._countAndFlagsBits = v109;
        v112._object = v111;
        String.append(_:)(v112);
        v111, v113, v114, v115, v116, v117, v118, v119;
        goto LABEL_99;
      }

      v87, v87, v88, v89, v90, v91, v92, v93;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_85;
      }

      sub_100028E2C();
    }

LABEL_84:

    swift_unknownObjectRelease();
    return;
  }

  if (v79 != 20)
  {
LABEL_80:

LABEL_81:
    return;
  }

  sub_10000ACB0();
  if (!v80)
  {
    _StringGuts.grow(_:)(55);
    v94._object = 0x800000010005E120;
    v94._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v94);
    v95 = [a2 description];
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    v99._countAndFlagsBits = v96;
    v99._object = v98;
    String.append(_:)(v99);
    v98, v100, v101, v102, v103, v104, v105, v106;
LABEL_99:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v80, v80, v81, v82, v83, v84, v85, v86;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100028DEC();
    goto LABEL_84;
  }

LABEL_85:

LABEL_86:
}

void sub_10001E8F8(unint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2)
{
  if (qword_10007EC50 != -1)
  {
    goto LABEL_88;
  }

LABEL_2:
  v3 = qword_1000814E8;
  v4 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *(v4 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType);
  if (v5 == 3)
  {
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v7 = Strong;
  v8 = sub_10000A8A0();
  if (v8)
  {

    v9 = sub_10000A8A0();
    if (!v9)
    {
      __break(1u);
LABEL_9:
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v7 = v10;
        v11 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
        swift_beginAccess();
        v9 = *&v7[v11];
        if (v9)
        {
          v12 = v9;
        }

        goto LABEL_14;
      }

LABEL_12:
      v9 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

LABEL_15:
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_81;
  }

  v21 = v13;
  if (!v9)
  {

    return;
  }

  v22 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (v22)
  {
    [v22 pickerStartedPairing];
  }

  v23 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup;
  if (v9[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] > 1u)
  {
    if (v9[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] == 2)
    {
      v24 = 0xEA00000000005041;
    }

    else
    {
      v24 = 0xE900000000000065;
    }

LABEL_27:
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v24, v26, v27, v28, v29, v30, v31, v32;
    if ((v25 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_28;
  }

  if (!v9[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup])
  {
    v24 = 0xE400000000000000;
    goto LABEL_27;
  }

  0xE900000000000068, v14, v15, v16, v17, v18, v19, v20;
LABEL_28:
  v33 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologiesPendingSetup;
  swift_beginAccess();
  v41 = *&v9[v33];
  v42 = *&v41->router[8];
  if (!v42)
  {
    v43 = 0;
    v54 = 0;
    goto LABEL_69;
  }

  v87 = v23;
  v88 = a2;
  v89 = v21;
  v43 = 0;
  systemMonitor = v41->systemMonitor;
  a2 = 0xE900000000000065;
  while (1)
  {
    if (v43 >= *&v41->router[8])
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      swift_once();
      goto LABEL_2;
    }

    if (v43[systemMonitor] > 1u)
    {
      if (v43[systemMonitor] == 2)
      {
        v45 = 0xEA00000000005041;
      }

      else
      {
        v45 = 0xE900000000000065;
      }

      goto LABEL_37;
    }

    if (v43[systemMonitor])
    {
      break;
    }

    v45 = 0xE400000000000000;
LABEL_37:
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v45, v47, v48, v49, v50, v51, v52, v53;
    if (v46)
    {
      goto LABEL_42;
    }

    if (v42 == ++v43)
    {
      v43 = *&v41->router[8];
      v54 = v43;
      goto LABEL_45;
    }
  }

  0xE900000000000068, v34, v35, v36, v37, v38, v39, v40;
LABEL_42:
  v55 = v43 + 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v9[v33] = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_95:
    v41 = sub_100021604(v41, v54, v57, v58, v59, v60, v61, v62);
  }

  *&v9[v33] = v41;
  v63 = *&v41->router[8];
  if ((v63 - 1) != v43)
  {
    v64 = v43 + 33;
    while (1)
    {
      v55 = v64 - 32;
      if ((v64 - 32) >= v63)
      {
        goto LABEL_87;
      }

      if (v64[v41] > 1u)
      {
        if (v64[v41] == 2)
        {
          v67 = 0xEA00000000005041;
        }

        else
        {
          v67 = a2;
        }
      }

      else
      {
        if (v64[v41])
        {
          0xE900000000000068, v54, v57, v58, v59, v60, v61, v62;
          goto LABEL_49;
        }

        v67 = 0xE400000000000000;
      }

      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v67, v69, v70, v71, v72, v73, v74, v75;
      if ((v68 & 1) == 0)
      {
        if (v55 != v43)
        {
          if ((v43 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          v76 = *&v41->router[8];
          if (v43 >= v76)
          {
            goto LABEL_90;
          }

          if (v55 >= v76)
          {
            goto LABEL_91;
          }

          v77 = v41->systemMonitor[v43];
          v78 = v64[v41];
          v79 = swift_isUniquelyReferenced_nonNull_native();
          *&v9[v33] = v41;
          if ((v79 & 1) == 0)
          {
            v41 = sub_100021604(v41, v54, v57, v58, v59, v60, v61, v62);
          }

          v80 = *&v41->router[8];
          if (v43 >= v80)
          {
            goto LABEL_92;
          }

          v43[v41 + 32] = v78;
          if (v55 >= v80)
          {
            goto LABEL_93;
          }

          v64[v41] = v77;
          *&v9[v33] = v41;
        }

        ++v43;
      }

LABEL_49:
      v63 = *&v41->router[8];
      v65 = v64 + 1;
      v66 = v64 - 31;
      ++v64;
      if (v66 == v63)
      {
        v54 = v65 - 32;
        a2 = v88;
        v21 = v89;
        v23 = v87;
        if ((v65 - 32) >= v43)
        {
          goto LABEL_69;
        }

        goto LABEL_94;
      }
    }
  }

  v54 = v55;
LABEL_45:
  a2 = v88;
  v21 = v89;
  v23 = v87;
LABEL_69:
  sub_100021928(v43, v54);
  swift_endAccess();
LABEL_70:
  v9[v23] = 3;
  v81 = [(ASUIServerManager *)a2 pairingInfo];
  v82 = [v81 pairingType];

  if (v82 > 29)
  {
    if (v82 == 30)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_85;
      }

      sub_100028E0C();
    }

    else
    {
      if (v82 != 40)
      {
        goto LABEL_80;
      }

      v85 = [(ASUIServerManager *)a2 pairingInfo];
      v86 = [v85 passkey];

      if (!v86)
      {
        goto LABEL_85;
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_85;
      }

      sub_100028E2C();
    }

LABEL_84:

    swift_unknownObjectRelease();
    return;
  }

  if (v82 != 20)
  {
LABEL_80:

LABEL_81:
    return;
  }

  v83 = [(ASUIServerManager *)a2 pairingInfo];
  v84 = [v83 passkey];

  if (v84)
  {

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100028DEC();
      goto LABEL_84;
    }
  }

LABEL_85:
}

void sub_10001EF60(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      a2();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t (*sub_10001EFEC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1000206FC(v6, a2, a3);
  return sub_10001F074;
}

void sub_10001F074(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

char *sub_10001F0C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_100039830(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100009B48(0, &qword_10007F308, DAEvent_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100039830((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100022E1C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100009B48(0, &qword_10007F308, DAEvent_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100039830((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100022E1C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_10001F2BC(_TtC16AccessorySetupUI17ASUIServerManager *a1)
{
  sub_100009B48(0, &qword_10007F2B8, DADiscoveryConfiguration_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  a1, v4, v5, v6, v7, v8, v9, v10;
  v15 = 0;
  v11 = [v1 initWithConfigurations:isa error:&v15];

  if (v11)
  {
    v12 = v15;
  }

  else
  {
    v13 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v11;
}

id sub_10001F3A8(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2, char a3)
{
  v6 = String._bridgeToObjectiveC()();
  a2, v7, v8, v9, v10, v11, v12, v13;
  v18 = 0;
  v14 = [v3 initWithBundleIdentifier:v6 allowPlaceholder:a3 & 1 error:&v18];

  if (v14)
  {
    v15 = v18;
  }

  else
  {
    v16 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v14;
}

uint64_t sub_10001F484(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001F57C;

  return v6(a1);
}

uint64_t sub_10001F57C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

_TtC16AccessorySetupUI17ASUIServerManager *sub_10001F674(_TtC16AccessorySetupUI17ASUIServerManager *result, int64_t a2, void *a3, _TtC16AccessorySetupUI17ASUIServerManager *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *&a4->router[16];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *&a4->router[8];
  if (v11 <= v12)
  {
    v13 = *&a4->router[8];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100009894(&qword_10007F2C8, &qword_10005C5C8);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *&v14->router[8] = v12;
    *&v14->router[16] = 2 * v15 - 64;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  systemMonitor = v14->systemMonitor;
  v17 = a4->systemMonitor;
  if (v9)
  {
    if (v14 != a4 || systemMonitor >= &v17[v12])
    {
      memmove(systemMonitor, v17, v12);
    }

    *&a4->router[8] = 0;
  }

  else
  {
    memcpy(systemMonitor, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

unint64_t sub_10001F768(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10001F96C(a1, a2, v4);
}

uint64_t sub_10001F7E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F84C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10001F884()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10001F8CC()
{
  result = qword_10007F280;
  if (!qword_10007F280)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F280);
  }

  return result;
}

uint64_t sub_10001F924(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10001F96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_10001FA24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009894(&unk_100080230, &qword_10005D120);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10001FCCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100009894(a3, a4);
  v38 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_10001FF68(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_100020118(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001F768(a2, a3);
  v19 = *(v10 + 16);
  v20 = (v12 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v12;
  v24 = *(v10 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_10001FA24(v22, a4 & 1);
      v11 = sub_10001F768(a2, a3);
      if ((v23 & 1) != (v12 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v11;
      sub_100020430();
      v11 = v25;
    }
  }

  v26 = *v5;
  if (v23)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v11);
    *(v27 + 8 * v11) = a1;

    v28, v12, v13, v14, v15, v16, v17, v18;
    return;
  }

  v26[(v11 >> 6) + 8] |= 1 << v11;
  v29 = (v26[6] + 16 * v11);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v11) = a1;
  v30 = v26[2];
  v21 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

void sub_100020294(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10001F768(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_10001FCCC(v20, a4 & 1, a5, a6);
      v15 = sub_10001F768(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1000205A0(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a2;
  v28[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

void sub_100020430()
{
  v1 = v0;
  sub_100009894(&unk_100080230, &qword_10005D120);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1000205A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100009894(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        v24 = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void (*sub_1000206FC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100020AA4(v7);
  v7[9] = sub_100020808(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1000207A8;
}

void sub_1000207A8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_100020808(void *a1, uint64_t a2, uint64_t a3, char a4))(_TtC16AccessorySetupUI17ASUIServerManager ***a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_10001F768(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100020430();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10001FA24(v18, a4 & 1);
    v13 = sub_10001F768(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100020960;
}

void sub_100020960(_TtC16AccessorySetupUI17ASUIServerManager ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    isa = v2[3]->super.isa;
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    isa[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (isa[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(isa[7] + 8 * v5) = v3;
    v10 = isa[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      isa[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = v2[3]->super.isa;
      sub_100022210(*(v13 + 48) + 16 * v12);
      sub_10001FF68(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  isa = v2[3]->super.isa;
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    isa[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (isa[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(isa[7] + 8 * v5) = v3;
    v17 = isa[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(isa[7] + 8 * v5) = v3;
LABEL_14:
  v18 = *v2;

  v18, v19, v20, v21, v22, v23, v24, v25;

  free(v2);
}

uint64_t (*sub_100020AA4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100020ACC;
}

uint64_t sub_100020ADC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

void sub_100020B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v80 = a2;

  v4 = String.init<A>(_:)();
  v12 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v41 = v5;
    v12 = sub_100021108(v4, v5);
    v43 = v42;
    v41, v42, v44, v45, v46, v47, v48, v49;
    v5 = v43;
    if ((v43 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v12 & 0x1000000000000000) != 0)
    {
      v13 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v77 = v5;
      v13 = _StringObject.sharedUTF8.getter();
      v14 = v78;
      v5 = v77;
    }

    v15 = *v13;
    if (v15 == 43)
    {
      if (v14 >= 1)
      {
        v25 = v14 - 1;
        if (v25)
        {
          v26 = a3 + 48;
          v27 = a3 + 55;
          v28 = a3 + 87;
          if (a3 > 10)
          {
            v26 = 58;
          }

          else
          {
            v28 = 97;
            v27 = 65;
          }

          if (v13)
          {
            v29 = 0;
            v30 = v13 + 1;
            while (1)
            {
              v31 = *v30;
              if (v31 < 0x30 || v31 >= v26)
              {
                if (v31 < 0x41 || v31 >= v27)
                {
                  if (v31 < 0x61 || v31 >= v28)
                  {
                    goto LABEL_125;
                  }

                  v32 = -87;
                }

                else
                {
                  v32 = -55;
                }
              }

              else
              {
                v32 = -48;
              }

              v33 = v29 * a3;
              if ((v29 * a3) >> 64 == (v29 * a3) >> 63)
              {
                v29 = v33 + (v31 + v32);
                if (!__OFADD__(v33, (v31 + v32)))
                {
                  ++v30;
                  if (--v25)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v15 != 45)
    {
      if (v14)
      {
        v34 = a3 + 48;
        v35 = a3 + 55;
        v36 = a3 + 87;
        if (a3 > 10)
        {
          v34 = 58;
        }

        else
        {
          v36 = 97;
          v35 = 65;
        }

        if (v13)
        {
          v37 = 0;
          while (1)
          {
            v38 = *v13;
            if (v38 < 0x30 || v38 >= v34)
            {
              if (v38 < 0x41 || v38 >= v35)
              {
                if (v38 < 0x61 || v38 >= v36)
                {
                  goto LABEL_125;
                }

                v39 = -87;
              }

              else
              {
                v39 = -55;
              }
            }

            else
            {
              v39 = -48;
            }

            v40 = v37 * a3;
            if ((v37 * a3) >> 64 == (v37 * a3) >> 63)
            {
              v37 = v40 + (v38 + v39);
              if (!__OFADD__(v40, (v38 + v39)))
              {
                ++v13;
                if (--v14)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v14 >= 1)
    {
      v16 = v14 - 1;
      if (v16)
      {
        v17 = a3 + 48;
        v18 = a3 + 55;
        v19 = a3 + 87;
        if (a3 > 10)
        {
          v17 = 58;
        }

        else
        {
          v19 = 97;
          v18 = 65;
        }

        if (v13)
        {
          v20 = 0;
          v21 = v13 + 1;
          while (1)
          {
            v22 = *v21;
            if (v22 < 0x30 || v22 >= v17)
            {
              if (v22 < 0x41 || v22 >= v18)
              {
                if (v22 < 0x61 || v22 >= v19)
                {
                  break;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }
            }

            else
            {
              v23 = -48;
            }

            v24 = v20 * a3;
            if ((v20 * a3) >> 64 == (v20 * a3) >> 63)
            {
              v20 = v24 - (v22 + v23);
              if (!__OFSUB__(v24, (v22 + v23)))
              {
                ++v21;
                if (--v16)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:
      v5, v5, v6, v7, v8, v9, v10, v11;
      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v50 = HIBYTE(v5) & 0xF;
  v79 = v12;
  v80 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v12 != 43)
  {
    if (v12 != 45)
    {
      if (v50)
      {
        v69 = 0;
        v70 = a3 + 48;
        v71 = a3 + 55;
        v72 = a3 + 87;
        if (a3 > 10)
        {
          v70 = 58;
        }

        else
        {
          v72 = 97;
          v71 = 65;
        }

        v73 = &v79;
        while (1)
        {
          v74 = *v73;
          if (v74 < 0x30 || v74 >= v70)
          {
            if (v74 < 0x41 || v74 >= v71)
            {
              if (v74 < 0x61 || v74 >= v72)
              {
                goto LABEL_125;
              }

              v75 = -87;
            }

            else
            {
              v75 = -55;
            }
          }

          else
          {
            v75 = -48;
          }

          v76 = v69 * a3;
          if ((v69 * a3) >> 64 == (v69 * a3) >> 63)
          {
            v69 = v76 + (v74 + v75);
            if (!__OFADD__(v76, (v74 + v75)))
            {
              v73 = (v73 + 1);
              if (--v50)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v50)
    {
      v51 = v50 - 1;
      if (v51)
      {
        v52 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v79 + 1;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v52 * a3;
          if ((v52 * a3) >> 64 == (v52 * a3) >> 63)
          {
            v52 = v59 - (v57 + v58);
            if (!__OFSUB__(v59, (v57 + v58)))
            {
              ++v56;
              if (--v51)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v50)
  {
    v60 = v50 - 1;
    if (v60)
    {
      v61 = 0;
      v62 = a3 + 48;
      v63 = a3 + 55;
      v64 = a3 + 87;
      if (a3 > 10)
      {
        v62 = 58;
      }

      else
      {
        v64 = 97;
        v63 = 65;
      }

      v65 = &v79 + 1;
      while (1)
      {
        v66 = *v65;
        if (v66 < 0x30 || v66 >= v62)
        {
          if (v66 < 0x41 || v66 >= v63)
          {
            if (v66 < 0x61 || v66 >= v64)
            {
              goto LABEL_125;
            }

            v67 = -87;
          }

          else
          {
            v67 = -55;
          }
        }

        else
        {
          v67 = -48;
        }

        v68 = v61 * a3;
        if ((v61 * a3) >> 64 == (v61 * a3) >> 63)
        {
          v61 = v68 + (v66 + v67);
          if (!__OFADD__(v68, (v66 + v67)))
          {
            ++v65;
            if (--v60)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_100021108(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v4 = v3;
  v7 = sub_100021188(v2, v5, v6, v3);
  v4, v8, v9, v10, v11, v12, v13, v14;
  return v7;
}

uint64_t sub_100021188(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100040434(v9, 0), v12 = sub_1000212E0(v22, (v11 + 4), v10, a1, a2, a3, a4), v13 = v22[3], , v13, v14, v15, v16, v17, v18, v19, v20, v12 == v10))
    {
      v21 = static String._uncheckedFromUTF8(_:)();

      return v21;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22[0] = a3;
      v22[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000212E0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100021500(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100021500(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_100021500(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void (*sub_10002157C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000215FC;
  }

  __break(1u);
  return result;
}

uint64_t sub_100021618(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10002167C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100021770;

  return v5(v2 + 32);
}

uint64_t sub_100021770()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

char *sub_100021884(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_100021928(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *&(*v2)->router[8];
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *&v4->router[16] >> 1)
  {
    if (v5 <= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v5;
    }

    v4 = sub_10001F674(isUniquelyReferenced_nonNull_native, v14, 1, v4, v10, v11, v12, v13);
    *v2 = v4;
  }

  result = sub_100021884(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1000219E8(unint64_t a1, char *a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_10001CAA4(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100021AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ASUIDevice();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100021BE8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100020ADC(result, 1);

  return sub_100021AE8(v5, v3, 0);
}

void sub_100021CC0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v118 = *a1 >> 62;
  if (v118)
  {
    goto LABEL_80;
  }

  v120 = v2 & 0xFFFFFFFFFFFFFF8;
  v121 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = 0;
  v4 = v2 & 0xC000000000000001;
  p_ivars = &ASUIPresenter.ivars;
  while (1)
  {
    if (v121 == v3)
    {
      if (v118)
      {
LABEL_69:
        _CocoaArrayWrapper.endIndex.getter();
      }

      return;
    }

    if (v4)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v120 + 16))
      {
        goto LABEL_73;
      }

      v14 = *(v2 + 8 * v3 + 32);
    }

    v15 = v14;
    v16 = *&v14[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
    if (!v16)
    {
      goto LABEL_84;
    }

    v17 = v2;
    v18 = [v16 p_ivars[202]];
    if (!v18)
    {
      goto LABEL_85;
    }

    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = [a2 p_ivars[202]];
    if (!v23)
    {

      v22, v6, v7, v8, v9, v10, v11, v12;
      goto LABEL_5;
    }

    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v26;

    if (v20 == v25 && v22 == v2)
    {
      break;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v22, v29, v30, v31, v32, v33, v34, v35;
    v2, v36, v37, v38, v39, v40, v41, v42;
    p_ivars = (&ASUIPresenter + 48);
    if (v28)
    {
      goto LABEL_23;
    }

LABEL_5:
    v13 = __OFADD__(v3++, 1);
    v2 = v17;
    if (v13)
    {
      goto LABEL_74;
    }
  }

  v22, v43, v44, v45, v46, v47, v48, v49;
  v2, v50, v51, v52, v53, v54, v55, v56;
  p_ivars = &ASUIPresenter.ivars;
LABEL_23:
  v57 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    v58 = v17;
    while (1)
    {
      if (v58 >> 62)
      {
        if (v57 == _CocoaArrayWrapper.endIndex.getter())
        {
          return;
        }
      }

      else if (v57 == *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((v58 & 0xC000000000000001) != 0)
      {
        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v57 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          v120 = v2 & 0xFFFFFFFFFFFFFF8;
          v121 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        if (v57 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v59 = *(v58 + 8 * v57 + 32);
      }

      v60 = v59;
      v61 = *&v59[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
      if (!v61)
      {
        goto LABEL_82;
      }

      v62 = v3;
      v63 = [v61 p_ivars[202]];
      if (!v63)
      {
        goto LABEL_83;
      }

      v2 = v63;
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67 = [a2 p_ivars[202]];
      if (!v67)
      {
        break;
      }

      v122 = v60;
      v68 = v67;
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v70;

      if (v64 == v69 && v66 == v2)
      {

        v66, v97, v98, v99, v100, v101, v102, v103;
        v2, v104, v105, v106, v107, v108, v109, v110;
        p_ivars = (&ASUIPresenter + 48);
LABEL_47:
        v3 = v62;
        v13 = __OFADD__(v57++, 1);
        if (v13)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v66, v73, v74, v75, v76, v77, v78, v79;
        v2, v80, v81, v82, v83, v84, v85, v86;
        p_ivars = (&ASUIPresenter + 48);
        if (v72)
        {
          goto LABEL_47;
        }

LABEL_43:
        v94 = v62;
        if (v62 != v57)
        {
          if ((v58 & 0xC000000000000001) != 0)
          {
            v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v62 & 0x8000000000000000) != 0)
            {
              goto LABEL_77;
            }

            v111 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v62 >= v111)
            {
              goto LABEL_78;
            }

            if (v57 >= v111)
            {
              goto LABEL_79;
            }

            v112 = *(v58 + 32 + 8 * v57);
            v95 = *(v58 + 32 + 8 * v62);
            v96 = v112;
          }

          v113 = v96;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v58 & 0x8000000000000000) != 0 || (v58 & 0x4000000000000000) != 0)
          {
            v58 = sub_100021618(v58);
            v114 = (v58 >> 62) & 1;
          }

          else
          {
            LODWORD(v114) = 0;
          }

          v2 = v58 & 0xFFFFFFFFFFFFFF8;
          v115 = *((v58 & 0xFFFFFFFFFFFFFF8) + 8 * v94 + 0x20);
          *((v58 & 0xFFFFFFFFFFFFFF8) + 8 * v94 + 0x20) = v113;

          if ((v58 & 0x8000000000000000) != 0 || v114)
          {
            v58 = sub_100021618(v58);
            v2 = v58 & 0xFFFFFFFFFFFFFF8;
            if ((v57 & 0x8000000000000000) != 0)
            {
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }
          }

          else if ((v57 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          if (v57 >= *(v2 + 16))
          {
            goto LABEL_76;
          }

          v116 = v2 + 8 * v57;
          v117 = *(v116 + 32);
          *(v116 + 32) = v95;

          *a1 = v58;
        }

        v13 = __OFADD__(v94, 1);
        v3 = v94 + 1;
        if (v13)
        {
          goto LABEL_75;
        }

        v13 = __OFADD__(v57++, 1);
        if (v13)
        {
          goto LABEL_72;
        }
      }
    }

    v66, v87, v88, v89, v90, v91, v92, v93;
    goto LABEL_43;
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

double sub_10002215C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10002242C()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002249C()
{
  swift_unknownObjectRelease();

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000224EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000225C0;

  return sub_10001C098(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000225C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000226B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100022F14;

  return sub_10001BD6C(a1, v4, v5, v7, v6);
}

uint64_t sub_100022778(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009894(&qword_10007F2D0, &qword_10005C5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000227E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009894(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100022848()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022880(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100022F14;

  return sub_10001F484(a1, v4);
}

uint64_t sub_1000229F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022A30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100022F14;

  return sub_10000C3C8(a1, v4, v5, v6);
}

uint64_t sub_100022AF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10001F924(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022B54(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_100022BA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100022BEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100022F14;

  return sub_10000DA2C(a1, v4, v5, v7, v6);
}

uint64_t sub_100022CAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100022F14;

  return sub_10002167C(a1, v4);
}

uint64_t sub_100022D64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000225C0;

  return sub_10002167C(a1, v4);
}

_OWORD *sub_100022E1C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_100022FD0()
{
  result = PRXMainContentMargin;
  qword_1000814C0 = PRXMainContentMargin;
  return result;
}

double sub_100022FE8()
{
  result = PRXTitleToSubtitleMargin;
  qword_1000814C8 = PRXTitleToSubtitleMargin;
  return result;
}

double sub_100023000()
{
  result = PRXMainContentMargin + 14.0;
  *&qword_1000814D0 = PRXMainContentMargin + 14.0;
  return result;
}

double sub_100023020()
{
  result = PRXMainContentMargin + 14.0;
  *&qword_1000814D8 = PRXMainContentMargin + 14.0;
  return result;
}

void sub_100023040(uint64_t a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  [v2 setTitle:v4];

  v5 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v5];

  v6 = OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_capabilities;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_capabilities] = *(a1 + 192);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = String._bridgeToObjectiveC()();
  v61 = sub_100023B30;
  v62 = v7;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_10001BE14;
  v60 = &unk_1000721D8;
  v9 = _Block_copy(&aBlock);
  v10 = objc_opt_self();
  v56 = [v10 actionWithTitle:v8 style:0 handler:v9];

  _Block_release(v9);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v61 = sub_100023B78;
  v62 = v11;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_10001BE14;
  v60 = &unk_100072200;
  v13 = _Block_copy(&aBlock);
  v14 = [v10 actionWithTitle:v12 style:1 handler:v13];

  _Block_release(v13);

  v15 = *&v2[v6];
  v16 = 0xEF6873616C732E68;
  if ((v15 & 1) == 0)
  {
    v16 = 0xEA00000000006873;
  }

  if (v15 == 3)
  {
    v17 = 0xE600000000000000;
  }

  else
  {
    v17 = v16;
  }

  v18 = String._bridgeToObjectiveC()();
  v17, v19, v20, v21, v22, v23, v24, v25;
  v26 = [objc_opt_self() _systemImageNamed:v18];

  v27 = [objc_allocWithZone(UIImageView) initWithImage:v26];
  v28 = [objc_opt_self() systemBlueColor];
  [v27 setTintColor:v28];

  v29 = v27;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [objc_opt_self() configurationWithPointSize:72.0];
  [v29 setPreferredSymbolConfiguration:v30];

  v31 = [v2 contentView];
  [v31 addSubview:v29];

  v32 = [v2 contentView];
  v33 = [v32 mainContentGuide];

  v34 = objc_opt_self();
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10005C4D0;
  v36 = [v29 topAnchor];
  v37 = [v33 topAnchor];
  v38 = [v36 constraintGreaterThanOrEqualToAnchor:v37];

  *(v35 + 32) = v38;
  v39 = [v29 bottomAnchor];
  v40 = [v33 bottomAnchor];
  v41 = [v39 constraintLessThanOrEqualToAnchor:v40];

  *(v35 + 40) = v41;
  v42 = [v29 centerXAnchor];
  v43 = [v33 centerXAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v35 + 48) = v44;
  v45 = [v29 centerYAnchor];

  v46 = [v33 centerYAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v35 + 56) = v47;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v35, v49, v50, v51, v52, v53, v54, v55;
  [v34 activateConstraints:isa];
}

char *sub_1000236D4()
{
  sub_10003B898();
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *(v1 + 64) = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_capabilities);
    *v1 = 1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000415EC(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000237B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

char *sub_10002380C()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 0;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000415EC(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_100023A74@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100023AF8(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100023B60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100023BB0()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v0 setTitle:v2];

  v3 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v3];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();
  v47 = sub_1000245AC;
  v48 = v4;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10001BE14;
  v46 = &unk_1000722B8;
  v6 = _Block_copy(&aBlock);
  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v42 = v8;

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v10 = String._bridgeToObjectiveC()();
  v47 = sub_1000245F4;
  v48 = v9;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_10001BE14;
  v46 = &unk_1000722E0;
  v11 = _Block_copy(&aBlock);
  v12 = [v7 actionWithTitle:v10 style:1 handler:v11];

  _Block_release(v11);

  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() imageNamed:v13];

  if (v14)
  {
    v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];

    v16 = v15;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v1 contentView];
    [v17 addSubview:v16];

    v18 = [v1 contentView];
    v19 = [v18 mainContentGuide];

    v20 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10005C4D0;
    v22 = [v16 topAnchor];
    v23 = [v19 topAnchor];
    v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23];

    *(v21 + 32) = v24;
    v25 = [v16 bottomAnchor];
    v26 = [v19 bottomAnchor];
    v27 = [v25 constraintLessThanOrEqualToAnchor:v26];

    *(v21 + 40) = v27;
    v28 = [v16 centerXAnchor];
    v29 = [v19 centerXAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];

    *(v21 + 48) = v30;
    v31 = [v16 centerYAnchor];

    v32 = [v19 centerYAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v21 + 56) = v33;
    sub_10000A5E8();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v21, v35, v36, v37, v38, v39, v40, v41;
    [v20 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

char *sub_100024168()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI27ASUIMigrationViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042634(v0, result);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100024234(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

char *sub_100024290()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI27ASUIMigrationViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 0;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042634(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_1000244F0@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI27ASUIMigrationViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100024574(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_1000245DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10002462C(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  [v2 setTitle:v4];

  v5 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v5];

  if (*(a1 + 4) != __PAIR128__(0xE000000000000000, 0) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v7 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_1000253A8;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001BE14;
    aBlock[3] = &unk_100072398;
    v8 = _Block_copy(aBlock);
    v9 = [objc_opt_self() actionWithTitle:v7 style:1 handler:v8];

    _Block_release(v8);

    v10 = [v2 addAction:v9];
  }

  v11 = [v2 contentView];
  v12 = [v11 mainContentGuide];

  v13 = a1[19];
  if (v13)
  {
    v14 = objc_allocWithZone(UIImageView);
    isa = v13;
    v16 = [v14 initWithImage:isa];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v2 contentView];
    [v17 addSubview:v16];

    v18 = [v16 widthAnchor];
    v19 = [v18 constraintEqualToConstant:70.0];

    [v19 setActive:1];
    v20 = [v16 heightAnchor];
    v21 = [v20 constraintEqualToConstant:70.0];

    [v21 setActive:1];
    v22 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10005C4D0;
    v24 = [v16 topAnchor];
    v25 = [v12 topAnchor];
    v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25];

    *(v23 + 32) = v26;
    v27 = [v16 bottomAnchor];
    v28 = [v12 bottomAnchor];
    v29 = [v27 constraintLessThanOrEqualToAnchor:v28];

    *(v23 + 40) = v29;
    v30 = [v16 centerXAnchor];
    v31 = [v12 centerXAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v23 + 48) = v32;
    v33 = [v16 centerYAnchor];

    v34 = [v12 centerYAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v23 + 56) = v35;
    sub_10000A5E8();
    v36.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v23, v37, v38, v39, v40, v41, v42, v43;
    [v22 activateConstraints:v36.super.isa];
    v44 = v12;
    v12 = v16;
LABEL_12:

    return;
  }

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_10005C520;
  v46 = a1[15];
  aBlock[0] = v46;
  if (v46)
  {
    v47 = v45;
    *(v45 + 32) = v46;
    sub_1000253C8(aBlock, &v115, &qword_10007F3D8, &qword_10005C9D0);
    if (qword_10007EBF0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000032F0(v48, qword_10007EF70);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    v47, v51, v52, v53, v54, v55, v56, v57;
    if (os_log_type_enabled(v49, v50))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v115 = v59;
      *v58 = 136315138;
      type metadata accessor for ASUIDevice();
      v60 = Array.description.getter();
      v62 = v61;
      v63 = sub_10003FFF4(v60, v61, &v115);
      v62, v64, v65, v66, v67, v68, v69, v70;
      *(v58 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v49, v50, "init ASUIProductCarouselView with devices %s", v58, 0xCu);
      sub_100009AB0(v59);
    }

    v71 = [objc_allocWithZone(type metadata accessor for ASUIProductCarouselView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v72 = *&v71[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
    *&v71[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices] = v47;
    v73 = v71;
    v72, v74, v75, v76, v77, v78, v79, v80;
    v81 = &v73[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName];
    v82 = *&v73[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName + 8];
    *v81 = 0;
    *(v81 + 1) = 0xE000000000000000;
    v82, v83, v84, v85, v86, v87, v88, v89;
    v73[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle] = 0;
    v73[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName] = 1;
    sub_100005CD4();

    v44 = v73;
    [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    v90 = [v2 contentView];
    [v90 addSubview:v44];

    v91 = [v2 contentView];
    v36.super.isa = [v91 mainContentGuide];

    v114 = objc_opt_self();
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_10005C4D0;
    v93 = [v44 topAnchor];
    v94 = [(objc_class *)v36.super.isa topAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];

    *(v92 + 32) = v95;
    v96 = [v44 bottomAnchor];
    v97 = [(objc_class *)v36.super.isa bottomAnchor];
    v98 = [v96 constraintEqualToAnchor:v97];

    *(v92 + 40) = v98;
    v99 = [v44 leadingAnchor];
    v100 = [v2 contentView];
    v101 = [v100 leadingAnchor];

    v102 = [v99 constraintEqualToAnchor:v101];
    *(v92 + 48) = v102;
    v103 = [v44 trailingAnchor];

    v104 = [v2 contentView];
    v105 = [v104 trailingAnchor];

    v106 = [v103 constraintEqualToAnchor:v105];
    *(v92 + 56) = v106;
    sub_10000A5E8();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v92, v107, v108, v109, v110, v111, v112, v113;
    [v114 activateConstraints:isa];
    goto LABEL_12;
  }

  __break(1u);
}

void sub_100025024(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100025078();
  }
}

char *sub_100025078()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIDoneViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 0;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042664(v0, result);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1000252DC@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIDoneViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_1000253C8(&v9, &v8, &unk_10007F570, &unk_10005C510);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100025370(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_1000253B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000253C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009894(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *sub_100025430(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appIcon] = 0;
  v11 = &v5[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appName];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v5[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsage];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_iconView] = 0;
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_nameLabel] = 0;
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsageLabel] = 0;
  v36.receiver = v5;
  v36.super_class = type metadata accessor for ASUIAppHeaderView();
  v13 = objc_msgSendSuper2(&v36, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appIcon];
  *&v13[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appIcon] = a1;
  v15 = v13;
  v16 = a1;

  v17 = &v15[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appName];
  v18 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appName + 8];
  *v17 = a2;
  *(v17 + 1) = a3;
  v18, v19, v20, v21, v22, v23, v24, v25;
  v26 = &v15[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsage];
  v27 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsage + 8];
  *v26 = a4;
  *(v26 + 1) = a5;
  v27, v28, v29, v30, v31, v32, v33, v34;
  sub_10002558C();

  return v15;
}

void sub_10002558C()
{
  v1 = [objc_allocWithZone(UIImageView) initWithImage:*&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appIcon]];
  v2 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_iconView;
  v3 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_iconView];
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_iconView] = v1;

  v4 = [objc_allocWithZone(PRXLabel) initWithStyle:0];
  v5 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_nameLabel;
  v6 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_nameLabel];
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_nameLabel] = v4;
  v7 = v4;

  v8 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appName + 8];
  if (v8)
  {

    v9 = String._bridgeToObjectiveC()();
    v8, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v17 = *&v0[v5];
  if (!v17)
  {
    __break(1u);
    goto LABEL_42;
  }

  [v17 setTextAlignment:1];
  v18 = *&v0[v5];
  if (!v18)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v18 setNumberOfLines:0];
  v19 = [objc_allocWithZone(PRXLabel) initWithStyle:2];
  v20 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsageLabel;
  v21 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsageLabel];
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsageLabel] = v19;
  v22 = v19;

  v23 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsage + 8];
  if (v23)
  {

    v24 = String._bridgeToObjectiveC()();
    v23, v25, v26, v27, v28, v29, v30, v31;
  }

  else
  {
    v24 = 0;
  }

  [v22 setText:v24];

  v32 = *&v0[v20];
  if (!v32)
  {
    goto LABEL_43;
  }

  [v32 setNumberOfLines:0];
  v33 = *&v0[v20];
  if (!v33)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v103 = v20;
  [v33 setTextAlignment:1];
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10005C430;
  v35 = *&v0[v2];
  if (!v35)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v36 = inited;
  *(inited + 32) = v35;
  v37 = *&v0[v5];
  if (!v37)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(inited + 40) = v37;
  v38 = *&v0[v103];
  if (!v38)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(inited + 48) = v38;
  v39 = inited & 0xC000000000000001;
  v40 = v35;
  v41 = v37;
  v42 = v38;
  if (v39)
  {
    goto LABEL_38;
  }

  if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  for (i = v40; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v44 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addSubview:v44];

    if (v39)
    {
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_37;
      }

      v45 = *(v36 + 40);
    }

    v46 = v45;
    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addSubview:v46];

    if (v39)
    {
      break;
    }

    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v47 = *(v36 + 48);
      goto LABEL_23;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:
  v48 = v47;
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v48];

  swift_setDeallocating();
  swift_arrayDestroy();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_10005C720;
  v50 = *&v0[v2];
  if (!v50)
  {
    goto LABEL_48;
  }

  v51 = [v50 widthAnchor];
  v52 = [v51 constraintEqualToConstant:70.0];

  *(v49 + 32) = v52;
  v53 = *&v0[v2];
  if (!v53)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v54 = [v53 heightAnchor];
  v55 = [v54 constraintEqualToConstant:70.0];

  *(v49 + 40) = v55;
  v56 = *&v0[v2];
  if (!v56)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v57 = [v56 centerXAnchor];
  v58 = [v0 centerXAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v49 + 48) = v59;
  v60 = *&v0[v2];
  if (!v60)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v61 = [v60 topAnchor];
  v62 = [v0 topAnchor];
  [v0 layoutMargins];
  v63 = [v61 constraintEqualToAnchor:v62 constant:?];

  *(v49 + 56) = v63;
  v64 = *&v0[v5];
  if (!v64)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v65 = [v64 topAnchor];
  v66 = *&v0[v2];
  if (!v66)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v67 = [v66 bottomAnchor];
  v68 = [v65 constraintEqualToAnchor:v67 constant:10.0];

  *(v49 + 64) = v68;
  v69 = *&v0[v5];
  if (!v69)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v70 = [v69 centerXAnchor];
  v71 = [v0 centerXAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v49 + 72) = v72;
  v73 = *&v0[v5];
  if (!v73)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v74 = [v73 widthAnchor];
  v75 = [v0 widthAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v49 + 80) = v76;
  v77 = *&v0[v103];
  if (!v77)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v78 = [v77 topAnchor];
  v79 = *&v0[v5];
  if (!v79)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v80 = [v79 bottomAnchor];
  v81 = [v78 constraintEqualToAnchor:v80 constant:18.0];

  *(v49 + 88) = v81;
  v82 = *&v0[v103];
  if (!v82)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v83 = [v82 centerXAnchor];
  v84 = [v0 centerXAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];

  *(v49 + 96) = v85;
  v86 = *&v0[v103];
  if (!v86)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v87 = [v86 widthAnchor];
  v88 = [v0 widthAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v49 + 104) = v89;
  v90 = *&v0[v103];
  if (v90)
  {
    v91 = objc_opt_self();
    v92 = [v90 bottomAnchor];
    v93 = [v0 bottomAnchor];
    v94 = [v92 constraintEqualToAnchor:v93];

    *(v49 + 112) = v94;
    sub_10000A5E8();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v49, v96, v97, v98, v99, v100, v101, v102;
    [v91 activateConstraints:isa];

    return;
  }

LABEL_60:
  __break(1u);
}

id sub_100025E10(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ASUIAppHeaderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100025EFC()
{
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appIcon) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appName);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsage);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_iconView) = 0;
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_nameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsageLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100025FA8()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_10007F440);
  v1 = sub_1000032F0(v0, qword_10007F440);
  if (qword_10007EBD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_100081460);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_100026084()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000260F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_10002613C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v5._object = 0x800000010005E4B0;
  v5._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v5);
  v6 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  v8 = sub_10000A8A0();

  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = *&v8[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  v10 = v9;

  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = [v10 bluetoothIdentifier];

  if (v11)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = UUID.uuidString.getter();
    v14 = v13;
    (*(v2 + 8))(v4, v1);
    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);
    v14, v16, v17, v18, v19, v20, v21, v22;
    v23 = v32;
    URL.init(string:)();
    v23, v24, v25, v26, v27, v28, v29, v30;
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100026314(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v12 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
  if (v12)
  {
    v13 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (v13)
    {
      if (*(v13 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth) == 1)
      {
        v14 = ~*(v12 + 84) & 1;
      }

      else
      {
        v14 = 0;
      }

      if (*(v13 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) == 1 && !*(v12 + 86))
      {
        v14 |= 2uLL;
      }
    }

    else
    {
      v14 = 0;
    }

    sub_10002A43C();
    v15 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = a3;
    aBlock[4] = sub_10002A4C0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000102BC;
    aBlock[3] = &unk_1000726A8;
    v17 = _Block_copy(aBlock);
    v18 = a3;
    static DispatchQoS.unspecified.getter();
    v19[1] = _swiftEmptyArrayStorage;
    sub_10002A4E0(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100009894(&unk_10007F560, &qword_10005C590);
    sub_10002A528();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_100026684(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (qword_10007EC50 != -1)
    {
      swift_once();
    }

    v7 = qword_1000814E8;
    v8 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (v8)
    {
      if (*(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast) == 1)
      {
        sub_1000268F0("Showing Personal Identifier Choice View", sub_100026FC4);
      }

      else
      {
        sub_1000268F0("Showing Connect View", sub_1000270E0);
        v12 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
        if (!v12)
        {
LABEL_24:
          __break(1u);
          return;
        }

        v13 = v12;
        sub_10000B8EC();
      }

      v14 = *(v7 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
      if (v14)
      {
        v15 = *(v14 + 40);
        v16 = *(v14 + 48);
        *(v14 + 40) = 0;
        *(v14 + 48) = 0;

        sub_100002E6C(v15, v16);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v4 = a2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_14:
    sub_1000268F0("Showing Turn On Transports View", sub_100027318);
    return;
  }

  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(v17, ObjectType, v5);
  if (v17[2] == 1)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v9 = v17[8];
  v10 = (*(v5 + 8))(ObjectType, v5);
  swift_unknownObjectRelease();
  sub_1000227E8(v17, &unk_10007F570, &unk_10005C510);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = (v9 & a1) == a1;
  }

  if (!v11)
  {
    goto LABEL_14;
  }
}

void sub_1000268F0(const char *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  if (qword_10007EC20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000032F0(v6, qword_10007F440);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v10 = *(v5 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController);
  if (v10)
  {
    v11 = v10;
    v12 = a2();
    [v11 pushViewController:v12 animated:1];
  }
}

void sub_100026A70(void *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType] = 0;
  type metadata accessor for ASUIPresenter();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter];
  *v5 = v4;
  v5[1] = &off_100073D68;

  swift_unknownObjectRelease();
  *(v4 + 24) = &off_100072558;
  swift_unknownObjectWeakAssign();

  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v6 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
  if (!v6)
  {
    __break(1u);
    goto LABEL_31;
  }

  v7 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v7)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*(v7 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth) == 1)
  {
    if (*(v7 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi))
    {
      if ((*(v6 + 86) & *(v6 + 84) & 1) == 0)
      {
        if ((*(v6 + 84) & 1) == 0)
        {
          v8 = *(v6 + 85);
          if (*(v6 + 86))
          {
LABEL_15:
            if (v8)
            {
LABEL_16:
              v9 = swift_allocObject();
              *(v9 + 16) = v2;
              v10 = *(v6 + 40);
              v11 = *(v6 + 48);
              *(v6 + 40) = sub_10002A5C4;
              *(v6 + 48) = v9;
              swift_retain_n();
              v2;
              sub_100002E6C(v10, v11);

              v12 = sub_100027318();
LABEL_26:
              v16 = v12;
              goto LABEL_27;
            }

LABEL_25:

            v12 = sub_1000271FC();
            goto LABEL_26;
          }

LABEL_14:
          v8 &= *(v6 + 87);
          goto LABEL_15;
        }

LABEL_13:
        v8 = 1;
        if (*(v6 + 86))
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if (!*(v6 + 84))
    {
      if (*(v6 + 85))
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

  else if ((*(v7 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) & 1) != 0 && (*(v6 + 86) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (*(v7 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp) == 1)
  {

    v12 = sub_100026EA8();
    goto LABEL_26;
  }

  v13 = *(v7 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast);

  if (v13 == 1)
  {
    v12 = sub_100026FC4();
    goto LABEL_26;
  }

  v14 = sub_1000270E0();
  v15 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
  if (!v15)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v16 = v14;
  v17 = v15;
  sub_10000B8EC();

LABEL_27:
  v18 = [a1 presentProxCardFlowWithDelegate:v2 initialViewController:v16];

  v19 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController] = v18;
}

unsigned __int8 *sub_100026D8C()
{
  v1 = v0;
  type metadata accessor for ASUINamingViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10002AA58(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_1000727B0;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_100026EA8()
{
  v1 = v0;
  type metadata accessor for ASUIAppScanConsentViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI32ASUIAppScanConsentViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI32ASUIAppScanConsentViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100032460();
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072DF8;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_100026FC4()
{
  v1 = v0;
  type metadata accessor for ASUIDeviceOTANameChoiceViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_1000531F4();
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100073E78;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_1000270E0()
{
  v1 = v0;
  type metadata accessor for ASUIConnectViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10003C20C();
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_1000731D0;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_1000271FC()
{
  v1 = v0;
  type metadata accessor for ASUITransportsRestrictedViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10003479C(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072F40;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_100027318()
{
  v1 = v0;
  type metadata accessor for ASUITurnOnTransportsViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100023040(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072148;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_100027434()
{
  v1 = v0;
  type metadata accessor for ASUIUpgradeViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI25ASUIUpgradeViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI25ASUIUpgradeViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10002BB1C(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_1000728F8;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_100027550()
{
  v1 = v0;
  type metadata accessor for ASUILearnMoreViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI27ASUILearnMoreViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI27ASUILearnMoreViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100009C0C(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100071670;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_10002766C()
{
  v1 = v0;
  type metadata accessor for ASUIDoneViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI22ASUIDoneViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI22ASUIDoneViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10002462C(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072308;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_100027788()
{
  v1 = v0;
  type metadata accessor for ASUIBluetoothSetupViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI32ASUIBluetoothSetupViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI32ASUIBluetoothSetupViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100053AD4();
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100073F30;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_1000278A4()
{
  v1 = v0;
  type metadata accessor for ASUIConnectionErrorViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10002A5CC();
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_1000726F8;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_1000279C0()
{
  v1 = v0;
  type metadata accessor for ASUIUpgradeErrorViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100049094();
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100073B98;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_100027ADC()
{
  v1 = v0;
  type metadata accessor for ASUIAppScanErrorViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI30ASUIAppScanErrorViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI30ASUIAppScanErrorViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100036C40();
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_1000730B0;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_100027BF8()
{
  v1 = v0;
  type metadata accessor for ASUIDiscoveryErrorViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI32ASUIDiscoveryErrorViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI32ASUIDiscoveryErrorViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100052B58();
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100073D98;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_100027D14()
{
  v1 = v0;
  type metadata accessor for ASUIMigrationViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI27ASUIMigrationViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI27ASUIMigrationViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100023BB0();
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072228;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_100027E30()
{
  v1 = v0;
  type metadata accessor for ASUINumericComparisonViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI35ASUINumericComparisonViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI35ASUINumericComparisonViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_1000311D4(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072D18;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_100027F4C()
{
  v1 = v0;
  type metadata accessor for ASUIPasskeyDisplayViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100037174(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100073168;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_100028068()
{
  v1 = v0;
  type metadata accessor for ASUIPasskeyEntryViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10002FEA4(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072C38;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100028184(void *a1)
{
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType) = 1;
  type metadata accessor for ASUIPresenter();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v4 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  *v4 = v3;
  v4[1] = &off_100073D68;

  swift_unknownObjectRelease();
  *(v3 + 24) = &off_100072558;
  swift_unknownObjectWeakAssign();

  v5 = sub_1000270E0();
  v6 = [a1 presentProxCardFlowWithDelegate:v1 initialViewController:v5];
  v7 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController) = v6;

  v8 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  if (v8)
  {
    v9 = v8;
    sub_10000B8EC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000282B0(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType) = 3;
  type metadata accessor for ASUIPresenter();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v5 = (v2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  *v5 = v4;
  v5[1] = &off_100073D68;

  swift_unknownObjectRelease();
  *(v4 + 24) = &off_100072558;
  swift_unknownObjectWeakAssign();

  v6 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  if (v6)
  {
    v7 = v6;
    sub_10001ADD0();

    v8 = sub_100027434();
    v9 = [a1 presentProxCardFlowWithDelegate:v2 initialViewController:v8];

    v10 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController);
    *(v2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController) = v9;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000283D8(void *a1)
{
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType) = 2;
  type metadata accessor for ASUIPresenter();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v4 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  *v4 = v3;
  v4[1] = &off_100073D68;

  swift_unknownObjectRelease();
  *(v3 + 24) = &off_100072558;
  swift_unknownObjectWeakAssign();

  v5 = sub_100026D8C();
  v6 = [a1 presentProxCardFlowWithDelegate:v1 initialViewController:v5];

  v7 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController) = v6;
}

void sub_1000284F4()
{
  v1 = v0;
  v2 = sub_100009894(&qword_10007F2C0, &qword_10005C5C0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v68 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v68 - v10;
  __chkstk_darwin(v9);
  v13 = &v68 - v12;
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_didEnterPostPairingFlow) = 1;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v14 = qword_1000814E8;
  v15 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
  v16 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v16)
  {
    if (qword_10007EC20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000032F0(v18, qword_10007F440);
    v72 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v72, v19, "No client model found", v20, 2u);
    }

    v21 = v72;

    return;
  }

  if (*(v16 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType))
  {
    v17 = v16;
    goto LABEL_38;
  }

  v71 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType;
  v72 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
  v22 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  if (!v22)
  {
    __break(1u);
    goto LABEL_64;
  }

  v70 = v16;
  v23 = v22;
  v24 = sub_10000A8A0();

  if (!v24)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v25 = v24[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_allowsRename];

  if (v25 != 1)
  {
LABEL_37:
    if (!*(v16 + v71))
    {
      v62 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
      v63 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
      if (!v63)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v64 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems;
      swift_beginAccess();
      v65 = *(v63 + v64);
      if (v65)
      {
        if (v65 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() < 1)
          {
            goto LABEL_38;
          }
        }

        else if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
        {
          goto LABEL_38;
        }

        v66 = *(v1 + v62);
        if (v66)
        {
          v67 = v66;
          sub_10001A19C();

          return;
        }

        goto LABEL_75;
      }
    }

LABEL_38:
    v47 = *(v14 + v15);
    if (!v47 || *(v47 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType))
    {
      goto LABEL_49;
    }

    v48 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
    v49 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    if (v49)
    {
      v50 = v49;
      v51 = sub_10000A8A0();

      if (v51)
      {
        v52 = v51[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_needsBluetoothSetup];

        if (v52 != 1)
        {
          goto LABEL_49;
        }

        v53 = *(v1 + v48);
        if (v53)
        {
          v54 = v53;
          v55 = sub_10000A8A0();

          if (v55)
          {
            v56 = *&v55[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
            v57 = v56;

            if (v56)
            {
              v58 = [v57 flags];

              if ((v58 & 0x20) == 0)
              {
                v59 = v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
                if (!swift_unknownObjectWeakLoadStrong() || (v60 = *(v59 + 8), ObjectType = swift_getObjectType(), LODWORD(v60) = (*(v60 + 8))(ObjectType, v60), swift_unknownObjectRelease(), v60 != 10))
                {
                  sub_100028E4C();
                  goto LABEL_50;
                }
              }

LABEL_49:
              sub_1000268F0("Showing Done View", sub_10002766C);
LABEL_50:

              return;
            }

            goto LABEL_73;
          }

LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      goto LABEL_66;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v26 = *(&v72->isa + v1);
  if (!v26)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v27 = v26;
  v28 = sub_10000A8A0();

  if (!v28)
  {
    v33 = type metadata accessor for UUID();
    (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
LABEL_24:
    sub_1000227E8(v13, &qword_10007F2C0, &qword_10005C5C0);
    v34 = *(&v72->isa + v1);
    if (!v34)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v35 = v34;
    v36 = sub_10000A8A0();

    if (!v36)
    {
      v41 = type metadata accessor for UUID();
      (*(*(v41 - 8) + 56))(v8, 1, 1, v41);
LABEL_33:
      sub_1000227E8(v8, &qword_10007F2C0, &qword_10005C5C0);
      goto LABEL_37;
    }

    v37 = *&v36[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
    v38 = v37;

    if (!v37)
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      return;
    }

    v39 = [v38 wifiAwareDevicePairingID];

    if (v39)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v42 = type metadata accessor for UUID();
    v43 = *(v42 - 8);
    (*(v43 + 56))(v5, v40, 1, v42);
    sub_10002A3CC(v5, v8);
    if ((*(v43 + 48))(v8, 1, v42) == 1)
    {
      goto LABEL_33;
    }

    v13 = v8;
    goto LABEL_35;
  }

  v29 = *&v28[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  v69 = v29;

  if (!v29)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v30 = v69;
  v31 = [v69 bluetoothIdentifier];

  if (v31)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = type metadata accessor for UUID();
    (*(*(v32 - 8) + 56))(v11, 0, 1, v32);
  }

  else
  {
    v32 = type metadata accessor for UUID();
    (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
  }

  sub_10002A3CC(v11, v13);
  type metadata accessor for UUID();
  if ((*(*(v32 - 8) + 48))(v13, 1, v32) == 1)
  {
    goto LABEL_24;
  }

LABEL_35:
  sub_1000227E8(v13, &qword_10007F2C0, &qword_10005C5C0);
  v44 = v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *(v44 + 8);
    v46 = swift_getObjectType();
    LODWORD(v45) = (*(v45 + 8))(v46, v45);
    swift_unknownObjectRelease();
    if (v45 == 9)
    {
      goto LABEL_37;
    }
  }

  sub_1000268F0("Showing Naming View", sub_100026D8C);
  if (*(v14 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient))
  {
    [swift_unknownObjectRetain() pickerStartedRename];
    swift_unknownObjectRelease();
  }
}