void *sub_10002E0EC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v39 = 0;
  v12 = [v10 volumeMountPointForFile:v11 error:&v39];

  v13 = v39;
  if (!v12)
  {
    v27 = v39;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return a2;
  }

  a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = v13;

  v17 = [a1 volumeMountPoint];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (a2 == v18 && v15 == v20)
  {

    v23 = 0;
    if (a5)
    {
LABEL_7:

      sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
      swift_allocBox();

      FilePath.init(_:)();
      v24 = objc_allocWithZone(type metadata accessor for MBRestoreDepot());

      v26 = sub_100028F00(v25, v23 & 1, 0);
      if (v5)
      {
      }

      else
      {
        a2 = v26;
        v39 = 0;
        v40 = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        v39 = 0xD000000000000016;
        v40 = 0x80000001002BC5F0;
        v31 = [a2 description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35._countAndFlagsBits = v32;
        v35._object = v34;
        String.append(_:)(v35);

        v36._object = 0x80000001002BC610;
        v36._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v36);
        v37._countAndFlagsBits = a4;
        v37._object = a5;
        String.append(_:)(v37);
        sub_10003F2C0(v39, v40, 0x203D746F7065643DLL, 0xE800000000000000);
      }

      return a2;
    }
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = v22 ^ 1;
    if (a5)
    {
      goto LABEL_7;
    }
  }

  if (qword_10041DEE8 != -1)
  {
    swift_once();
  }

  v28 = off_10041EE20;
  v29 = *(off_10041EE20 + 2);
  os_unfair_lock_lock(*(v29 + 16));
  swift_beginAccess();
  sub_10002918C(v28 + 3, a2, v15, v23 & 1, &v38);
  swift_endAccess();
  if (!v5)
  {
    a2 = v38;
  }

  os_unfair_lock_unlock(*(v29 + 16));

  return a2;
}

id sub_10002E494(unint64_t a1)
{
  result = sub_100005778(a1);
  if (v1)
  {
    _StringGuts.grow(_:)(32);

    v4._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v4);

    sub_10003F2D8(v1, a1, 0xD00000000000001ELL, 0x80000001002BC5D0, 0x203D746F7065643DLL, 0xE800000000000000);

    swift_willThrow();
  }

  return result;
}

unint64_t sub_10002E56C()
{
  result = qword_10041EE88;
  if (!qword_10041EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EE88);
  }

  return result;
}

unint64_t sub_10002E5C0()
{
  result = qword_10041EE90;
  if (!qword_10041EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EE90);
  }

  return result;
}

uint64_t sub_10002E614(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10002E668(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter(a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = String.index(_:offsetBy:limitedBy:)();
  if (a2)
  {
    a1 = 15;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_10002E724(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = String.index(_:offsetBy:limitedBy:)();
    if (v7)
    {
      a2 = 15;
    }

    else
    {
      a2 = v6;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

unint64_t sub_10002E7C0()
{
  result = qword_10041EE98;
  if (!qword_10041EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EE98);
  }

  return result;
}

id sub_10002E980(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MBTapToRadarCore();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10002E9D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v82 = a6;
  v83 = a8;
  v79 = a7;
  v80._countAndFlagsBits = a1;
  v76 = a3;
  v77 = a5;
  v80._object = a2;
  v81 = a4;
  v8 = sub_1000042B4(&qword_10041E480, &qword_1002B8FA8);
  __chkstk_darwin(v8 - 8);
  v85 = v68 - v9;
  v10 = type metadata accessor for URL();
  v84 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v74 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v68 - v13;
  v86 = type metadata accessor for URLQueryItem();
  v15 = *(v86 - 8);
  v16 = __chkstk_darwin(v86);
  v78 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = v68 - v19;
  __chkstk_darwin(v18);
  v75 = v68 - v21;
  v22 = sub_1000042B4(&qword_10041EEE8, &qword_1002B9920);
  __chkstk_darwin(v22 - 8);
  v24 = v68 - v23;
  v25 = type metadata accessor for URLComponents();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(string:)();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_10001A7A0(v24, &qword_10041EEE8, &qword_1002B9920);
    sub_10003F97C(1, 0xD000000000000018, 0x80000001002BCAA0, 0x203D7274743DLL, 0xE600000000000000);
    return swift_willThrow();
  }

  else
  {
    v30 = *(v26 + 32);
    v73 = v28;
    v30(v28, v24, v25);
    v31 = MBBuildVersion();
    v71 = v14;
    v72 = v10;
    v69 = v25;
    v70 = v26;
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 4144959;
    }

    v36 = v20;
    sub_1000042B4(&qword_10041E828, qword_1002B9360);
    v37 = v15;
    v38 = *(v15 + 72);
    v39 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1002B98F0;
    v87 = v33;
    v88 = v35;
    v68[1] = v35;

    v41._countAndFlagsBits = 8250;
    v41._object = 0xE200000000000000;
    String.append(_:)(v41);
    String.append(_:)(v80);
    URLQueryItem.init(name:value:)();

    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    if (v81)
    {
      v42 = v75;
      URLQueryItem.init(name:value:)();
      v44 = *(v40 + 16);
      v43 = *(v40 + 24);
      if (v44 >= v43 >> 1)
      {
        v40 = sub_10000F4C8((v43 > 1), v44 + 1, 1, v40);
      }

      v45 = v70;
      *(v40 + 16) = v44 + 1;
      (*(v37 + 32))(v40 + v39 + v44 * v38, v42, v86);
    }

    else
    {
      v45 = v70;
    }

    v46 = v84;
    if (v82)
    {
      URLQueryItem.init(name:value:)();
      v48 = *(v40 + 16);
      v47 = *(v40 + 24);
      if (v48 >= v47 >> 1)
      {
        v40 = sub_10000F4C8((v47 > 1), v48 + 1, 1, v40);
      }

      *(v40 + 16) = v48 + 1;
      (*(v37 + 32))(v40 + v39 + v48 * v38, v36, v86);
    }

    if (v83)
    {
      v49 = v78;
      URLQueryItem.init(name:value:)();
      v51 = *(v40 + 16);
      v50 = *(v40 + 24);
      if (v51 >= v50 >> 1)
      {
        v40 = sub_10000F4C8((v50 > 1), v51 + 1, 1, v40);
      }

      *(v40 + 16) = v51 + 1;
      (*(v37 + 32))(v40 + v39 + v51 * v38, v49, v86);
    }

    v52 = v73;
    URLComponents.queryItems.setter();
    v53 = v85;
    URLComponents.url.getter();
    v54 = v72;
    v55 = (*(v46 + 48))(v53, 1, v72);
    v56 = v71;
    if (v55 == 1)
    {

      sub_10001A7A0(v53, &qword_10041E480, &qword_1002B8FA8);

      sub_10003F97C(1, 0xD00000000000001CLL, 0x80000001002BCAE0, 0x203D7274743DLL, 0xE600000000000000);
      swift_willThrow();
      return (*(v45 + 8))(v52, v69);
    }

    else
    {
      v57 = v74;
      URL.absoluteURL.getter();
      v58 = v46;
      v59 = *(v46 + 8);
      v59(v53, v54);
      (*(v58 + 32))(v56, v57, v54);
      v87 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v87 = 0xD000000000000010;
      v88 = 0x80000001002BCB00;
      sub_10002F40C();
      v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v60);

      sub_10003F2C0(v87, v88, 0x203D7274743DLL, 0xE600000000000000);

      result = [objc_opt_self() defaultWorkspace];
      if (result)
      {
        v61 = result;

        URL._bridgeToObjectiveC()(v62);
        v64 = v63;
        v87 = 0;
        v65 = [v61 openURL:v63 configuration:0 error:&v87];

        if (v65)
        {
          v66 = v87;
        }

        else
        {
          v67 = v87;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        v59(v56, v54);
        return (*(v45 + 8))(v73, v69);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t sub_10002F40C()
{
  result = qword_10041EEF0;
  if (!qword_10041EEF0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EEF0);
  }

  return result;
}

uint64_t sub_10002F464()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10002F4CC(uint64_t a1)
{
  result = swift_checkMetadataState();
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

char *sub_10002F570()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t sub_10002F5F0()
{
  sub_10002F570();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10002F88C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_10002F9B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  if (*v4)
  {
    v5 = v4[1];
    v8[4] = *v4;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10002F88C;
    v8[3] = a4;
    v6 = _Block_copy(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10002FC14()
{
  v1 = OBJC_IVAR____TtC7backupd14MBPersonaState____lazy_storage___encryptionManager;
  v2 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState____lazy_storage___encryptionManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState____lazy_storage___encryptionManager);
  }

  else
  {
    v4 = [objc_allocWithZone(MBCKEncryptionManager) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_100030234(char *result, uint64_t a2, void *a3)
{
  v3 = &result[*a3];
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    v6 = result;
    v4(0);

    return sub_10003238C(v4, v5);
  }

  return result;
}

void sub_1000302B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreLogger);
  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreLogger) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_backgroundRestoreProgressMonitor);
  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_backgroundRestoreProgressMonitor) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreSession);
  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreSession) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_deviceForRestore);
  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_deviceForRestore) = 0;

  v5 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_lockManager);
  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_lockManager) = 0;

  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreKeyBagsByID) = sub_10003E7CC(&_swiftEmptyArrayStorage);

  *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTransaction) = 0;
  swift_unknownObjectRelease();
  v6 = (v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_unboostBackgroundRestoreHandler);
  v7 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_unboostBackgroundRestoreHandler);
  if (v7)
  {
    v8 = v6[1];
    *v6 = 0;
    v6[1] = 0;
    v7(0);
    sub_10003238C(v7, v8);
  }

  sub_1000303EC();
}

void sub_1000303EC()
{
  v1 = OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan;
  v2 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan);
  if (v2)
  {
    v3 = v0;
    v4 = v2;
    _StringGuts.grow(_:)(34);

    v5 = [v4 description];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    sub_10003F2C0(0xD000000000000020, 0x80000001002BD4B0, 0xD000000000000010, 0x80000001002BD3B0);

    v10 = *(v3 + v1);
    *(v3 + v1) = 0;

    sub_1000320FC();
  }

  else
  {
    sub_10003F2C0(0xD000000000000019, 0x80000001002BD490, 0xD000000000000010, 0x80000001002BD3B0);
  }
}

uint64_t sub_1000305C8()
{
  if (*(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_serviceState) == 3)
  {
    v1 = *(v0 + OBJC_IVAR____TtC7backupd14MBPersonaState_engines);
    if (v1 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {

      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          [v7 backupReason];
          IsManual = MBBackupReasonIsManual();

          if (IsManual)
          {
            v9 = 1;
LABEL_16:

            return v9;
          }
        }

        else
        {
        }

        ++v3;
        if (v6 == i)
        {
          v9 = 0;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }
  }

  return 0;
}

id sub_100030710()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_backup] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_initialMegaBackup] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_nextBackupSize] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_restore] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_restoreSession] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan] = 0;
  v0[OBJC_IVAR____TtC7backupd14MBPersonaState_isHoldingWorkAssertionForBackgroundRestore] = 0;
  v2 = &v0[OBJC_IVAR____TtC7backupd14MBPersonaState_unboostBackgroundRestoreHandler];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC7backupd14MBPersonaState_unboostManualBackupHandler];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_deviceForRestore] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_lockManager] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState____lazy_storage___encryptionManager] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_backgroundRestoreProgressMonitor] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_restoreLogger] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTransaction] = 0;
  v4 = OBJC_IVAR____TtC7backupd14MBPersonaState_restoreQosByContext;
  *&v0[v4] = [objc_opt_self() weakToStrongObjectsMapTable];
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_restoreKeyBagsByID] = &_swiftEmptyDictionarySingleton;
  v0[OBJC_IVAR____TtC7backupd14MBPersonaState_finishedAppRestores] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_serviceState] = 0;
  v5 = OBJC_IVAR____TtC7backupd14MBPersonaState_serviceGroup;
  *&v0[v5] = dispatch_group_create();
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_engines] = &_swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC7backupd14MBPersonaState_enginesByContext;
  *&v0[v6] = [objc_allocWithZone(NSMapTable) init];
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_delayedRestoreTimer] = 0;
  *&v0[OBJC_IVAR____TtC7backupd14MBPersonaState_restoreTTRTimer] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

void *sub_100030A98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7backupd21MBPersonaStateManager_lock);
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  v8 = OBJC_IVAR____TtC7backupd21MBPersonaStateManager_personaIDStateMap;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_10002C438(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    v13 = v12;
  }

  else
  {
    swift_endAccess();
    v14 = [objc_allocWithZone(type metadata accessor for MBPersonaState()) init];
    swift_beginAccess();

    v13 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v3 + v8);
    *(v3 + v8) = 0x8000000000000000;
    sub_10002D70C(v13, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v8) = v19;
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v6 + 16));

  v16 = *&v13[OBJC_IVAR____TtC7backupd14MBPersonaState_restoreSession];
  v17 = v16;

  return v16;
}

id sub_100030CDC(void *a1)
{
  v2 = v1;
  v3 = [a1 persona];
  v4 = [v3 personaIdentifier];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v2 + OBJC_IVAR____TtC7backupd21MBPersonaStateManager_lock);
  v9 = *(v8 + 16);

  os_unfair_lock_lock(v9);
  v10 = OBJC_IVAR____TtC7backupd21MBPersonaStateManager_personaIDStateMap;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (*(v11 + 16) && (v12 = sub_10002C438(v5, v7), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = v14;
  }

  else
  {
    swift_endAccess();
    v16 = [objc_allocWithZone(type metadata accessor for MBPersonaState()) init];
    swift_beginAccess();
    v15 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v2 + v10);
    *(v2 + v10) = 0x8000000000000000;
    sub_10002D70C(v15, v5, v7, isUniquelyReferenced_nonNull_native);

    *(v2 + v10) = v19;
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v8 + 16));

  return v15;
}

void *sub_100030ED8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7backupd21MBPersonaStateManager_lock);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = OBJC_IVAR____TtC7backupd21MBPersonaStateManager_personaIDStateMap;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_10000F724(*(v4 + 16), 0);
  v7 = sub_10000FE28(&v10, v6 + 4, v5, v4);
  v8 = v10;

  sub_1000113FC(v8);
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:
    v6 = &_swiftEmptyArrayStorage;
  }

  os_unfair_lock_unlock(*(v1 + 16));

  return v6;
}

id sub_100030FE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7backupd21MBPersonaStateManager_lock);
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  v8 = OBJC_IVAR____TtC7backupd21MBPersonaStateManager_personaIDStateMap;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_10002C438(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    v13 = v12;
  }

  else
  {
    swift_endAccess();
    v14 = [objc_allocWithZone(type metadata accessor for MBPersonaState()) init];
    swift_beginAccess();

    v13 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v3 + v8);
    *(v3 + v8) = 0x8000000000000000;
    sub_10002D70C(v13, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v8) = v17;
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v6 + 16));

  return v13;
}

void sub_1000312B8(void *a1)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = v27 - v7;
  sub_1000303EC();
  if (!v2)
  {
    v27[0] = v1;
    v27[1] = 0;
    v9 = [a1 restoreSnapshotsDatabaseDirectory];
    v28 = v9;
    v29 = v9;
    v10 = v9;
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = String._bridgeToObjectiveC()();
    }

    v11 = v9;
    v12 = String._bridgeToObjectiveC()();
    v13 = MBSnapshotDirectoryPath(v10, v12);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    FilePath.init(_:)();
    FilePath.appending(_:)();
    FilePath.string.getter();
    (*(v5 + 8))(v8, v4);
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();

    v16 = String._bridgeToObjectiveC()();
    v30 = 0;
    v17 = v28;
    v18 = [v14 createDatabaseAt:v15 restoreSnapshotsDir:v28 snapshotUUID:v16 error:&v30];

    v19 = v30;
    if (v18)
    {
      v20 = *(v27[0] + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan);
      *(v27[0] + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan) = v18;
      v21 = v19;

      v22 = String._bridgeToObjectiveC()();
      v30 = 0;
      v23 = v29;
      v24 = MBCreateSymlinksForPendingAndLatestSnapshots(v29, 0, v22, &v30);

      v25 = v30;
      if (v30)
      {
        if ((v24 & 1) == 0)
        {
          swift_willThrow();
          v25;
        }
      }
    }

    else
    {
      v26 = v30;

      _convertNSErrorToError(_:)();
      swift_willThrow();
    }
  }
}

void *sub_100031654(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan);
  if (v11)
  {
    if (a3)
    {
      v31 = v11;
      v12 = [a1 restoreSnapshotsDatabaseDirectory];
      if (!v12)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = String._bridgeToObjectiveC()();
      }

      v13 = String._bridgeToObjectiveC()();
      v14 = MBSnapshotDirectoryPath(v12, v13);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      FilePath.init(_:)();
      FilePath.appending(_:)();
      v15 = FilePath.string.getter();
      v17 = v16;
      (*(v7 + 8))(v10, v6);
      v18 = v31;
      v19 = [v31 path];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = v20 == v15 && v22 == v17;
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        v26._countAndFlagsBits = 0xD000000000000011;
        v26._object = 0x80000001002BD410;
        String.append(_:)(v26);
        v27._countAndFlagsBits = v15;
        v27._object = v17;
        String.append(_:)(v27);

        v28._countAndFlagsBits = 0xD000000000000022;
        v28._object = 0x80000001002BD430;
        String.append(_:)(v28);
        v29._countAndFlagsBits = v20;
        v29._object = v22;
        String.append(_:)(v29);

        sub_10003F97C(1, v32, v33, 0xD000000000000010, 0x80000001002BD3B0);

        swift_willThrow();
      }
    }

    else
    {
      v24 = v11;
    }
  }

  return v11;
}

void sub_100031978(void *a1)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  sub_1000303EC();
  if (!v2)
  {
    v24 = v1;
    v25 = 0;
    v9 = [a1 restoreSnapshotsDatabaseDirectory];
    v10 = v9;
    v26 = v9;
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
    }

    v11 = v9;
    v12 = String._bridgeToObjectiveC()();
    v13 = MBSnapshotDirectoryPath(v10, v12);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    FilePath.init(_:)();
    FilePath.appending(_:)();
    FilePath.string.getter();
    (*(v5 + 8))(v8, v4);
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();

    v16 = String._bridgeToObjectiveC()();
    v27 = 0;
    v17 = v26;
    v18 = [v14 openDatabaseAt:v15 restoreSnapshotsDir:v26 snapshotUUID:v16 error:&v27];

    v19 = v27;
    if (v18)
    {
      v20 = *(v24 + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan);
      *(v24 + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan) = v18;
      v21 = v19;
      v18;
    }

    else
    {
      v22 = v27;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_100031E34(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = sub_100031654(a1, a2, a3);
  if (!v4)
  {
    v7 = v6;
    if (v6)
    {
      _StringGuts.grow(_:)(24);

      v16[0] = 0xD000000000000016;
      v16[1] = 0x80000001002BD3F0;
      v8 = [v7 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12._countAndFlagsBits = v9;
      v12._object = v11;
      String.append(_:)(v12);

      sub_10003F2C0(0xD000000000000016, 0x80000001002BD3F0, 0xD000000000000010, 0x80000001002BD3B0);

      v13 = *(v5 + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan);
      *(v5 + OBJC_IVAR____TtC7backupd14MBPersonaState__restorePlan) = 0;

      v16[0] = 0;
      if ([v7 close:v16])
      {
        v14 = v16[0];
      }

      else
      {
        v15 = v16[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      sub_10003F97C(1, 0xD00000000000001ELL, 0x80000001002BD3D0, 0xD000000000000010, 0x80000001002BD3B0);
      swift_willThrow();
    }
  }
}

uint64_t sub_100032030(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t, uint64_t))
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = a1;
  a6(v12, v9, v11);

  return 1;
}

void sub_1000320FC()
{
  v17 = 0;
  if ([v0 close:&v17])
  {
    v1 = v17;
  }

  else
  {
    v2 = v17;
    v3 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10003F5B0(v3, 0xD00000000000001CLL, 0x80000001002BD4E0, 0xD000000000000010, 0x80000001002BD3B0);
  }

  v4 = [objc_opt_self() defaultManager];
  v5 = [v0 restoreSnapshotsDirectoryRoot];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v17 = 0;
  v9 = [v4 mb_moveAsideItemAtPath:v5 error:&v17];

  v10 = v17;
  if (v9 && (v17 = 0, v11 = v10, v12 = [v4 mb_markAsPurgeableItemAtPath:v9 error:&v17], v9, v10 = v17, (v12 & 1) != 0))
  {
    v13 = v17;
  }

  else
  {
    v14 = v10;
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v17 = 0xD00000000000002BLL;
    v18 = 0x80000001002BD500;
    v16._countAndFlagsBits = v6;
    v16._object = v8;
    String.append(_:)(v16);

    sub_10003F5B0(v15, v17, v18, 0xD000000000000010, 0x80000001002BD3B0);

    swift_willThrow();
  }
}

uint64_t sub_10003238C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10003239C()
{
  result = qword_10041F158;
  if (!qword_10041F158)
  {
    sub_100011314(255, &qword_10041EEA8, NSString_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041F158);
  }

  return result;
}

uint64_t sub_100032404()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032450(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10003247C()
{
  if (*(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__disposed) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v2 = *(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
    _StringGuts.grow(_:)(23);
    _print_unlocked<A, B>(_:_:)();
    v3._object = 0x80000001002BB3C0;
    v3._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v3);
    sub_10003F7B8(0, 0xE000000000000000, v1, v2);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__disposed) = 1;
    v4 = *(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__stage);
    v10 = 0;
    v5 = [v4 disposeWithError:&v10];
    v6 = v10;
    if (v5)
    {
      v7 = *(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath);
      *(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath) = 0xF000000000000007;
      v8 = v6;
      sub_1000112FC(v7);
    }

    else
    {
      v9 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1000325F8(void *a1)
{
  result = sub_100033F34(a1);
  if (!v2)
  {
    v5 = result;
    v6 = objc_opt_self();
    sub_100027C28(v5);
    v7 = String._bridgeToObjectiveC()();

    v8 = [v6 restore:a1 directoryAtPath:v7 settingDataProtection:0 settingOwnershipAndFlags:0];

    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
      v10 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
      _StringGuts.grow(_:)(33);
      v11._countAndFlagsBits = 0x702064656C696146;
      v11._object = 0xEF20676E6963616CLL;
      String.append(_:)(v11);
      sub_1000042B4(&qword_10041F280, &qword_1002B9A00);
      _print_unlocked<A, B>(_:_:)();
      v12._countAndFlagsBits = 0x6F74636572696420;
      v12._object = 0xEE00207461207972;
      String.append(_:)(v12);
      v13._countAndFlagsBits = sub_1000285C4(v5);
      String.append(_:)(v13);

      sub_10003F5B0(v8, 0, 0xE000000000000000, v9, v10);

      swift_willThrow();
    }

    else
    {

      v14 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
      v15 = *(v14 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_directories);
      v16 = __CFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        __break(1u);
      }

      else
      {
        *(v14 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_directories) = v17;
      }
    }
  }

  return result;
}

uint64_t sub_1000327E4(void *a1, char a2)
{
  result = sub_100033F34(a1);
  if (!v3)
  {
    v7 = result;
    swift_unknownObjectRetain();
    v8 = v2;
    sub_100036E00(a1, a2 & 1, v8, a1, v8);
    swift_unknownObjectRelease();

    v9 = *&v8[OBJC_IVAR____TtC7backupd18MBRestorePerformer__log];
    v10 = *&v8[OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8];
    _StringGuts.grow(_:)(27);

    v11._countAndFlagsBits = sub_1000285C4(v7);
    String.append(_:)(v11);

    sub_10003F2C0(0xD000000000000019, 0x80000001002BDB60, v9, v10);

    v12 = *&v8[OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary];
    v13 = *(v12 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_zeroByteFiles);
    v14 = __CFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      *(v12 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_zeroByteFiles) = v15;
    }
  }

  return result;
}

uint64_t sub_100032A38(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_100033F34(a1);
  if (!v5)
  {
    v11 = result;
    swift_unknownObjectRetain();

    sub_10003866C(a1, a4 & 1, v4, a1, a2, a3);
    swift_unknownObjectRelease();

    v12 = *(v4 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v13 = *(v4 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
    _StringGuts.grow(_:)(20);

    v14._countAndFlagsBits = sub_1000285C4(v11);
    String.append(_:)(v14);

    sub_10003F2C0(0xD000000000000012, 0x80000001002BDBA0, v12, v13);

    v15 = *(v4 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
    v16 = *(v15 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_symlinks);
    v17 = __CFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      *(v15 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_symlinks) = v18;
    }
  }

  return result;
}

uint64_t sub_100032C9C(void *a1, char a2, void *a3)
{
  result = sub_100033F34(a1);
  if (!v4)
  {
    v9 = v3;
    v10 = a3;
    v11 = swift_unknownObjectRetain();
    sub_100039F18(v11, a2 & 1, v9, v9, v10, a1);

    swift_unknownObjectRelease();

    v12 = *&v9[OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary];
    v13 = *(v12 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_assetFiles);
    v14 = __CFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      *(v12 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_assetFiles) = v15;
    }
  }

  return result;
}

unint64_t sub_100032E80(void *a1)
{
  result = sub_100033F34(a1);
  if (!v2)
  {
    v5 = result;
    sub_100027C28(result);
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    v8 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
    v21 = 0;
    v9 = [v6 restore:a1 protectionClassToDestination:v7 unspecifiedDirectoryProtectionClass:4 logger:v8 error:&v21];

    v10 = v21;
    if (v9)
    {
      v11 = String._bridgeToObjectiveC()();

      v21 = 0;
      v12 = [v6 restore:a1 attributesToDestination:v11 error:&v21];

      if (v12)
      {
        v13 = v21;
      }

      v14 = v21;
    }

    else
    {
      v14 = v10;
    }

    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v17 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v18._object = 0x80000001002BDBC0;
    v18._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v18);
    sub_1000042B4(&qword_10041F280, &qword_1002B9A00);
    _print_unlocked<A, B>(_:_:)();
    v19._countAndFlagsBits = 0xD000000000000019;
    v19._object = 0x80000001002BDBE0;
    String.append(_:)(v19);
    v20._countAndFlagsBits = sub_1000285C4(v5);
    String.append(_:)(v20);

    sub_10003F5B0(v15, v21, v22, v16, v17);

    swift_willThrow();
  }

  return result;
}

void sub_1000330F8()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedOptions];
  v2 = [v1 restorePathsToFailPlacingRegex];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v0 sharedOptions];
  v6 = [v5 maxRestorePathsToFailPlacing];

  if (v4)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_self() errorInjectorForRegex:v7 maxFailureCount:v6];

  qword_10041F160 = v8;
}

char *sub_100033230(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, char *a6, uint64_t a7, void *a8, void *a9)
{
  v11 = v9;
  ObjectType = swift_getObjectType();
  v14 = OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath;
  *&v9[OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath] = 0xF000000000000007;
  v9[OBJC_IVAR____TtC7backupd18MBRestorePerformer__disposed] = 0;
  v34 = OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary;
  *&v9[v34] = [objc_allocWithZone(type metadata accessor for MBRestorablePlacementSummary()) init];

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = a1;
  strcpy(v42, "=performer= ");
  BYTE5(v42[1]) = 0;
  HIWORD(v42[1]) = -5120;
  v16._object = a2;
  String.append(_:)(v16);

  v17 = v42[1];
  v18 = &v9[OBJC_IVAR____TtC7backupd18MBRestorePerformer__log];
  *v18 = v42[0];
  *(v18 + 1) = v17;
  v19 = &v9[OBJC_IVAR____TtC7backupd18MBRestorePerformer__identifier];
  *v19 = a1;
  *(v19 + 1) = a2;
  sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
  v20 = swift_allocBox();

  FilePath.init(_:)();
  v21 = sub_100006180(v20);
  if (v10)
  {

    swift_unknownObjectRelease();
    v22 = a9;
    v23 = a8;
  }

  else
  {
    v24 = v21;

    v25 = *&v11[v14];
    *&v11[v14] = v24;
    sub_1000112FC(v25);
    *&v11[OBJC_IVAR____TtC7backupd18MBRestorePerformer__policy] = a5;
    *&v11[OBJC_IVAR____TtC7backupd18MBRestorePerformer__depot] = a6;
    *&v11[OBJC_IVAR____TtC7backupd18MBRestorePerformer__decrypter] = a7;
    v26 = *&a6[OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath];
    if ((~v26 & 0xF000000000000007) != 0)
    {
      sub_100009B38();
      v36 = a5;
      v38 = a6;
      swift_unknownObjectRetain();
      sub_10001135C(v26);
      v29 = sub_100027C28(v26);
      v31 = v30;
      sub_1000112FC(v26);
      _StringGuts.grow(_:)(18);

      v42[0] = 0xD000000000000010;
      v42[1] = 0x80000001002BAE10;
      v32._countAndFlagsBits = a1;
      v32._object = a2;
      String.append(_:)(v32);

      *&v11[OBJC_IVAR____TtC7backupd18MBRestorePerformer__stage] = sub_10000A778(v29, v31, 0xD000000000000010, 0x80000001002BAE10);
      *&v11[OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger] = a9;
      v41.receiver = v11;
      v41.super_class = ObjectType;
      v11 = objc_msgSendSuper2(&v41, "init");

      swift_unknownObjectRelease();
      return v11;
    }

    v27 = a5;
    v28 = a6;
    swift_unknownObjectRetain();

    sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
    swift_willThrow();

    swift_unknownObjectRelease();
    v23 = a9;
    v22 = a8;
  }

  sub_1000112FC(*&v11[v14]);
  if (!v10)
  {

    swift_unknownObjectRelease();
  }

  swift_deallocPartialClassInstance();
  return v11;
}

id sub_100033780()
{
  ObjectType = swift_getObjectType();
  if ((v0[OBJC_IVAR____TtC7backupd18MBRestorePerformer__disposed] & 1) == 0)
  {
    v3 = *&v0[OBJC_IVAR____TtC7backupd18MBRestorePerformer__log];
    v2 = *&v0[OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8];
    v10 = 0;
    v11 = 0xE000000000000000;

    v4 = v0;
    _StringGuts.grow(_:)(35);
    v8 = v3;
    v9 = v2;
    _print_unlocked<A, B>(_:_:)();
    v5._object = 0x80000001002BB5E0;
    v5._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v5);
    sub_10003F7B8(0, 0xE000000000000000, v3, v2);
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100033A64()
{
  v1 = v0;
  _StringGuts.grow(_:)(42);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  swift_getObjectType();
  v3._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 7876640;
  v4._object = 0xE300000000000000;
  String.append(_:)(v4);
  _print_unlocked<A, B>(_:_:)();
  v5._countAndFlagsBits = 0x3A6469203ALL;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__identifier));
  v6._countAndFlagsBits = 0x3A6874617020;
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);
  sub_10001135C(*(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath));
  sub_1000042B4(&qword_10041EEB0, &qword_1002B98D8);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x3A746F70656420;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9 = [*(v0 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__depot) description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x3A656761747320;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15 = [*(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__stage) description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 62;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  return 0;
}

unint64_t sub_100033F34(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath);
  if ((~v3 & 0xF000000000000007) != 0)
  {

    v5 = [a1 relativePath];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v2 = sub_100027EFC(v6, v8, v3);

    sub_1000112FC(v3);
    v9 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
    if (v9)
    {
      v10 = swift_allocObject();
      *(v10 + 40) = &type metadata for MBRestorableOperationLogger;
      *(v10 + 48) = &off_1003BB060;
      *(v10 + 16) = v9;
      *(v10 + 24) = a1;
      *(v10 + 56) = v2;
      v2 = v10 | 0x8000000000000000;
      swift_unknownObjectRetain();
    }

    v11 = v9;
  }

  else
  {
    sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log), *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8));
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1000340A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_unknownObjectRetain();
  v8 = a1;
  a5(a3);

  swift_unknownObjectRelease();
  return 1;
}

id sub_100034150(unint64_t a1, uint64_t a2)
{
  sub_100027C28(a1);
  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 restore:a2 symbolicLinkAtPath:v4 withTarget:v5 settingOwnershipAndFlags:0];

  if (v6)
  {
  }

  else
  {
    v7 = String._bridgeToObjectiveC()();

    v11 = 0;
    v8 = [v3 restore:a2 attributesToDestination:v7 error:&v11];

    if (v8)
    {
      return v11;
    }

    v10 = v11;
    _convertNSErrorToError(_:)();
  }

  return swift_willThrow();
}

void sub_1000343AC(unint64_t a1, uint64_t a2)
{
  v5 = sub_100027C28(a1);
  v7 = v6;
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 restore:a2 emptyRegularFileAtPath:v9 settingAttributes:0];

  if (v10)
  {
    sub_100034534(v10, a2, v5, v7, a1);
    if (v2)
    {

      return;
    }
  }

  v11 = String._bridgeToObjectiveC()();

  v15 = 0;
  v12 = [v8 restore:a2 attributesToDestination:v11 error:&v15];

  if (v12)
  {
    v13 = v15;
  }

  else
  {
    v14 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100034534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = v5;
  swift_getObjectType();
  sub_100012584(v39);
  if (v40 - 1 >= 2)
  {
    if (v40 == 7)
    {
      v24 = objc_opt_self();
      v25 = _convertErrorToNSError(_:)();
      LOBYTE(v24) = [v24 isError:v25 withCode:240];

      if (v24)
      {
        v26 = objc_opt_self();
        v27 = String._bridgeToObjectiveC()();
        v37 = 0;
        v28 = [v26 setWithPath:v27 value:3 error:&v37];

        v14 = v37;
        if (v28)
        {

          v29 = v14;
          sub_1000120FC(a5, v42);
          if (!v6)
          {
            if (v42[70] == 3)
            {
              v31 = v7 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log;
              v17 = *(v7 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
              v18 = *(v31 + 8);
              v37 = 0;
              v38 = 0xE000000000000000;
              _StringGuts.grow(_:)(77);
              v32._object = 0x80000001002BDB80;
              v32._countAndFlagsBits = 0xD000000000000013;
              String.append(_:)(v32);
              sub_1000042B4(&qword_10041F280, &qword_1002B9A00);
              _print_unlocked<A, B>(_:_:)();
              v33._countAndFlagsBits = 544497952;
              v33._object = 0xE400000000000000;
              String.append(_:)(v33);
              v34._countAndFlagsBits = sub_1000285C4(a5);
              String.append(_:)(v34);

              v22 = "Restored regular ";
              v23 = 0xD00000000000002FLL;
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          return;
        }

LABEL_12:
        v30 = v14;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return;
      }
    }

LABEL_16:
    swift_willThrow();
    swift_errorRetain();
    return;
  }

  v9 = objc_opt_self();
  v10 = _convertErrorToNSError(_:)();
  LOBYTE(v9) = [v9 isError:v10 withCode:208];

  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();
  v37 = 0;
  v13 = [v11 setWithPath:v12 value:2 error:&v37];

  v14 = v37;
  if (!v13)
  {
    goto LABEL_12;
  }

  v15 = v14;
  sub_1000120FC(a5, v41);
  if (!v6)
  {
    if (v41[70] == 2)
    {
      v16 = v7 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log;
      v17 = *(v7 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
      v18 = *(v16 + 8);
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(75);
      v19._object = 0x80000001002BDB80;
      v19._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v19);
      sub_1000042B4(&qword_10041F280, &qword_1002B9A00);
      _print_unlocked<A, B>(_:_:)();
      v20._countAndFlagsBits = 544497952;
      v20._object = 0xE400000000000000;
      String.append(_:)(v20);
      v21._countAndFlagsBits = sub_1000285C4(a5);
      String.append(_:)(v21);

      v22 = "ce Cx is unavailable (ignoring ";
      v23 = 0xD00000000000002DLL;
LABEL_15:
      v35 = v22 | 0x8000000000000000;
      String.append(_:)(*&v23);
      sub_1000042B4(&qword_10041E800, &qword_1002B96F0);
      _print_unlocked<A, B>(_:_:)();
      v36._countAndFlagsBits = 41;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      sub_10003F2C0(v37, v38, v17, v18);

      return;
    }

    goto LABEL_16;
  }
}

void sub_100034A74(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__depot);
  v10 = sub_10002A444();
  if (!v4)
  {
    v12 = v11;
    v13 = v10;

    v14 = *(v9 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
    if ((~v14 & 0xF000000000000007) == 0)
    {

      sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
      swift_willThrow();
      return;
    }

    v15 = sub_100027EFC(v13, v12, v14);
    sub_1000112FC(v14);

    v16 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
    v17 = v15;
    if (v16)
    {
      v18 = swift_allocObject();
      *(v18 + 40) = &type metadata for MBRestorableOperationLogger;
      *(v18 + 48) = &off_1003BB060;
      *(v18 + 16) = v16;
      *(v18 + 24) = a4;
      *(v18 + 56) = v15;
      v17 = v18 | 0x8000000000000000;
      swift_unknownObjectRetain();
    }

    v19 = v16;
    sub_100004FD4(a1, v17);
    v20 = sub_100027C28(a1);
    __chkstk_darwin(v20);
    String.withPlatformString<A>(_:)();

    v27 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
    v52 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);
    v28._object = 0x80000001002BDAA0;
    v28._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v28);
    v29._countAndFlagsBits = sub_1000285C4(v17);
    String.append(_:)(v29);

    v30._countAndFlagsBits = 544175136;
    v30._object = 0xE400000000000000;
    String.append(_:)(v30);
    v31._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0x20726F6620;
    v32._object = 0xE500000000000000;
    String.append(_:)(v32);
    sub_1000042B4(&qword_10041F280, &qword_1002B9A00);
    _print_unlocked<A, B>(_:_:)();
    v51 = v27;
    sub_10003F2C0(0, 0xE000000000000000, v52, v27);

    if ([a3 assetType] == 2)
    {
      v33 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__decrypter);
      sub_100027C28(a1);
      v34 = String._bridgeToObjectiveC()();

      v53 = 0;
      v35 = [v33 decrypt:v34 restorable:a4 metadata:a3 error:&v53];

      v36 = v53;
      if (!v35)
      {
        v38 = v53;
        v39 = _convertNSErrorToError(_:)();

        swift_willThrow();

        v21 = a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log;
        v22 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
        v23 = *(v21 + 8);
        v53 = 0;
        v54 = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        v53 = 0xD000000000000014;
        v54 = 0x80000001002BDA60;
        v24._countAndFlagsBits = sub_1000285C4(v15);
        String.append(_:)(v24);

        v25._countAndFlagsBits = 0xD000000000000017;
        v25._object = 0x80000001002BDA80;
        String.append(_:)(v25);
        v26._countAndFlagsBits = sub_1000285C4(a1);
        String.append(_:)(v26);

        sub_10003F2D8(v39, a1, v53, v54, v22, v23);

        swift_willThrow();

        return;
      }

      v37 = v36;
      sub_1000120FC(a1, v55);
      v53 = 0;
      v54 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);
      v40._countAndFlagsBits = 0x6574707972636544;
      v40._object = 0xEA00000000002064;
      String.append(_:)(v40);
      v41._countAndFlagsBits = sub_1000285C4(a1);
      String.append(_:)(v41);

      v42._countAndFlagsBits = 0x3A637020736120;
      v42._object = 0xE700000000000000;
      String.append(_:)(v42);
      type metadata accessor for MBProtectionClass(0);
      _print_unlocked<A, B>(_:_:)();
      v43._countAndFlagsBits = 0x20726F6620;
      v43._object = 0xE500000000000000;
      String.append(_:)(v43);
      _print_unlocked<A, B>(_:_:)();
      sub_10003F2C0(v53, v54, v52, v51);
    }

    sub_100027C28(a1);
    v44 = objc_opt_self();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 restore:a4 regularFileAtPath:v45 settingAttributes:0];

    if (v46)
    {
      sub_100035198(v46, a4, a1);
    }

    v47 = String._bridgeToObjectiveC()();

    v53 = 0;
    v48 = [v44 restore:a4 attributesToDestination:v47 error:&v53];

    if (v48)
    {
      v49 = v53;
    }

    else
    {
      v50 = v53;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_100035198(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = objc_opt_self();
  v7 = _convertErrorToNSError(_:)();
  v8 = [v6 isExpectedSetProtectionClassError:v7];

  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = v3;
  swift_getObjectType();
  sub_100012584(v29);
  if (v30 - 1 < 2)
  {

    sub_1000120FC(a3, v31);
    if (v4)
    {
      return;
    }

    if (v31[70] == 2)
    {
      v14 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
      v15 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v21._object = 0x80000001002BDAC0;
      v21._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v21);
      sub_1000042B4(&qword_10041F280, &qword_1002B9A00);
      _print_unlocked<A, B>(_:_:)();
      v22._countAndFlagsBits = 544497952;
      v22._object = 0xE400000000000000;
      String.append(_:)(v22);
      v23._countAndFlagsBits = sub_1000285C4(a3);
      String.append(_:)(v23);

      v19 = "ce Cx is unavailable (ignoring ";
      v20 = 0xD00000000000002DLL;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (v30 != 7)
  {
    goto LABEL_13;
  }

  sub_100027C28(a3);
  v10 = String._bridgeToObjectiveC()();

  v27 = 0;
  v11 = [v6 setWithPath:v10 value:3 error:&v27];

  v12 = v27;
  if (!v11)
  {
    v26 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v13 = v12;
  sub_1000120FC(a3, v32);
  if (!v4)
  {
    if (v32[70] == 3)
    {
      v14 = *(v9 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
      v15 = *(v9 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(75);
      v16._object = 0x80000001002BDAC0;
      v16._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v16);
      sub_1000042B4(&qword_10041F280, &qword_1002B9A00);
      _print_unlocked<A, B>(_:_:)();
      v17._countAndFlagsBits = 544497952;
      v17._object = 0xE400000000000000;
      String.append(_:)(v17);
      v18._countAndFlagsBits = sub_1000285C4(a3);
      String.append(_:)(v18);

      v19 = "Restored regular ";
      v20 = 0xD00000000000002FLL;
LABEL_12:
      v24 = v19 | 0x8000000000000000;
      String.append(_:)(*&v20);
      sub_1000042B4(&qword_10041E800, &qword_1002B96F0);
      _print_unlocked<A, B>(_:_:)();
      v25._countAndFlagsBits = 41;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      sub_10003F2C0(v27, v28, v14, v15);

      return;
    }

LABEL_13:
    swift_willThrow();
    swift_errorRetain();
  }
}

unint64_t sub_100035644(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__stage) makeTemporaryFilePath];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
  v4 = swift_allocBox();
  FilePath.init(_:)();
  v5 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 40) = &type metadata for MBRestorableOperationLogger;
    *(v6 + 48) = &off_1003BB060;
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    *(v6 + 56) = v4;
    v4 = v6 | 0x8000000000000000;
    swift_unknownObjectRetain();
  }

  v7 = v5;
  return v4;
}

void sub_100035728(unint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_100004CD8(a2, a1);
  if (!v3)
  {
    v7 = a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log;
    v8 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v9 = *(v7 + 8);
    _StringGuts.grow(_:)(31);

    v10._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v10);

    v11._countAndFlagsBits = 544175136;
    v11._object = 0xE400000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = sub_1000285C4(a2);
    String.append(_:)(v12);

    sub_10003F2C0(0xD000000000000017, 0x80000001002BDA40, v8, v9);
  }
}

void sub_100035830(unint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_100005044(a2, a1);
  if (!v3)
  {
    v7 = a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log;
    v8 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v9 = *(v7 + 8);
    _StringGuts.grow(_:)(31);

    v10._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v10);

    v11._countAndFlagsBits = 544175136;
    v11._object = 0xE400000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = sub_1000285C4(a2);
    String.append(_:)(v12);

    sub_10003F2C0(0xD000000000000017, 0x80000001002BD990, v8, v9);
  }
}

BOOL sub_100035938(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_100012584(v16);
  IsDataless = MBNodeIsDataless(v16);
  result = MBNodeIsReg(v16);
  if (!result)
  {
LABEL_12:
    result = MBNodeIsDir(v16);
    if (!(result & IsDataless))
    {
      return result;
    }

    v8 = (v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessDirectories);
    v11 = *(v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessDirectories);
    v6 = __CFADD__(v11, 1);
    v10 = v11 + 1;
    if (!v6)
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (IsDataless)
  {
    v5 = *(v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessFiles);
    v6 = __CFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
      goto LABEL_31;
    }

    *(v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessFiles) = v7;
  }

  LODWORD(v8) = v17;
  if (v17 > 2u)
  {
    if (v17 == 3)
    {
LABEL_21:
      v8 = (v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCFiles);
      v13 = *(v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCFiles);
      v6 = __CFADD__(v13, 1);
      v10 = v13 + 1;
      if (!v6)
      {
        goto LABEL_28;
      }

      __break(1u);
      goto LABEL_24;
    }

    if (v17 == 4)
    {
LABEL_24:
      v8 = (v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classDFiles);
      v14 = *(v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classDFiles);
      v6 = __CFADD__(v14, 1);
      v10 = v14 + 1;
      if (!v6)
      {
        goto LABEL_28;
      }

      __break(1u);
LABEL_27:
      v8 = (v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classAFiles);
      v15 = *(v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classAFiles);
      v6 = __CFADD__(v15, 1);
      v10 = v15 + 1;
      if (!v6)
      {
        goto LABEL_28;
      }

LABEL_31:
      __break(1u);
    }

    if (v17 != 7)
    {
      return result;
    }

    v8 = (v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCxFiles);
    v9 = *(v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCxFiles);
    v6 = __CFADD__(v9, 1);
    v10 = v9 + 1;
    if (!v6)
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_16:
  if (v8 == 1)
  {
    goto LABEL_27;
  }

  if (v8 != 2)
  {
    return result;
  }

  v8 = (v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classBFiles);
  v12 = *(v2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classBFiles);
  v6 = __CFADD__(v12, 1);
  v10 = v12 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *v8 = v10;
  return result;
}

id sub_100035AC8(unint64_t a1)
{

  sub_1000120FC(a1, v17);
  v4 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
  v5 = *(v1 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
  if (v2)
  {
    _StringGuts.grow(_:)(48);

    v6._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v6);

    sub_10003F2D8(v2, a1, 0xD00000000000002ELL, 0x80000001002BD9B0, v4, v5);

    swift_willThrow();
  }

  else
  {
    _StringGuts.grow(_:)(44);

    v15[2] = v17[2];
    v15[3] = v17[3];
    v16 = v18;
    v15[0] = v17[0];
    v15[1] = v17[1];
    v8 = MBNodeAsString(v15);
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    v13._object = 0x80000001002BDA00;
    v13._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v13);
    v14._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v14);

    sub_10003F2C0(0xD000000000000016, 0x80000001002BD9E0, v4, v5);

    return sub_100005564(a1);
  }
}

id sub_100035E3C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_zeroByteFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_assetFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_directories] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_symlinks] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classAFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classBFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classDFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCxFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessFiles] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessDirectories] = 0;
  *&v0[OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations] = &_swiftEmptyArrayStorage;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_100035F70(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10002A660(a1);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  v9 = v7;
  v10 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 40) = &type metadata for MBRestorableOperationLogger;
    *(v11 + 48) = &off_1003BB060;
    *(v11 + 16) = v10;
    *(v11 + 24) = a1;
    *(v11 + 56) = v9;
    v9 = v11 | 0x8000000000000000;
    swift_unknownObjectRetain();
  }

  v12 = v10;
  v20 = sub_100033F34(a1);
  if (sub_100005D30(v9))
  {
    sub_100005044(v20, v9);
    sub_100035938(a1);
    v14 = a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log;
    v15 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v16 = *(v14 + 8);
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v21 = 0xD00000000000001ALL;
    v22 = 0x80000001002BD970;
    v17._countAndFlagsBits = sub_1000285C4(v9);
    String.append(_:)(v17);

    v18._countAndFlagsBits = 544175136;
    v18._object = 0xE400000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = sub_1000285C4(v20);
    String.append(_:)(v19);

    sub_10003F2C0(v21, v22, v15, v16);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = sub_100035644(a1);
    sub_1000343AC(v13, a3);
    sub_100004CD8(v9, v13);
    sub_100035830(v9, v20, a2);
    sub_100035938(a1);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100036E00(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = sub_100033F34(a1);
  if (v6)
  {

    return swift_unknownObjectRelease();
  }

  v15 = v13;
  if (qword_10041DEF0 != -1)
  {
    swift_once();
  }

  v16 = qword_10041F160;
  if (qword_10041F160 && (sub_100027C28(v15), v29 = a1, v17 = a3, v18 = a4, v19 = v12, v20 = v15, v21 = String._bridgeToObjectiveC()(), , v22 = [v16 errorIfMatches:v21], v21, v15 = v20, v12 = v19, a4 = v18, a3 = v17, a1 = v29, v22))
  {
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  else
  {
    if (a2)
    {
      swift_unknownObjectRetain();
      v23 = v12;
      sub_100035F70(a1, a3, a4);

      v25 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
      v26 = *(v25 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks);
      v27 = __CFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        __break(1u);
      }

      *(v25 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks) = v28;

      return swift_unknownObjectRelease();
    }

    v24 = sub_100035644(a1);
    sub_1000343AC(v24, a4);
    sub_100035728(v24, v15, a3);
    sub_100035938(a1);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000377CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10002A660(a1);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  v9 = v7;
  v10 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 40) = &type metadata for MBRestorableOperationLogger;
    *(v11 + 48) = &off_1003BB060;
    *(v11 + 16) = v10;
    *(v11 + 24) = a1;
    *(v11 + 56) = v9;
    v9 = v11 | 0x8000000000000000;
    swift_unknownObjectRetain();
  }

  v12 = v10;
  v20 = sub_100033F34(a1);
  v19 = v9;
  if (sub_100005D30(v9))
  {
    sub_100005044(v20, v9);
    sub_100035938(a1);
    v14 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
    v15 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v21 = 0xD00000000000001ALL;
    v22 = 0x80000001002BD970;
    v16._countAndFlagsBits = sub_1000285C4(v9);
    String.append(_:)(v16);

    v17._countAndFlagsBits = 544175136;
    v17._object = 0xE400000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = sub_1000285C4(v20);
    String.append(_:)(v18);

    sub_10003F2C0(v21, v22, v14, v15);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = sub_100035644(a1);
    sub_100034150(v13, a3);
    sub_100004CD8(v19, v13);
    sub_100035830(v19, v20, a2);
    sub_100035938(a1);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10003866C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectRetain();

  v11 = sub_100033F34(a1);
  if (v6)
  {
    goto LABEL_2;
  }

  v13 = v11;
  if (qword_10041DEF0 != -1)
  {
    swift_once();
  }

  v14 = qword_10041F160;
  if (qword_10041F160 && (sub_100027C28(v13), v23 = a1, v15 = a3, v16 = String._bridgeToObjectiveC()(), , v17 = [v14 errorIfMatches:v16], v16, a3 = v15, a1 = v23, v17))
  {
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  else
  {
    if (a2)
    {
      swift_unknownObjectRetain();

      sub_1000377CC(a1, a3, a4);

      v19 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
      v20 = *(v19 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks);
      v21 = __CFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        __break(1u);
      }

      *(v19 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks) = v22;
LABEL_2:

      return swift_unknownObjectRelease();
    }

    v18 = sub_100035644(a1);
    sub_100034150(v18, a4);
    sub_100035728(v18, v13, a3);
    sub_100035938(a1);

    swift_unknownObjectRelease();
  }
}

void sub_100039090(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v11 = sub_10002A660(a1);
  if (v5)
  {
  }

  else
  {
    v12 = v11;
    v13 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger);
    if (v13)
    {
      v14 = swift_allocObject();
      *(v14 + 40) = &type metadata for MBRestorableOperationLogger;
      *(v14 + 48) = &off_1003BB060;
      *(v14 + 16) = v13;
      *(v14 + 24) = a1;
      *(v14 + 56) = v12;
      v12 = v14 | 0x8000000000000000;
      swift_unknownObjectRetain();
    }

    v15 = v13;
    v23 = sub_100033F34(a1);
    v22 = v12;
    if (sub_100005D30(v12))
    {
      sub_100005044(v23, v12);
      sub_100035938(a1);
      v17 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log);
      v18 = *(a2 + OBJC_IVAR____TtC7backupd18MBRestorePerformer__log + 8);
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v24 = 0xD00000000000001ALL;
      v25 = 0x80000001002BD970;
      v19._countAndFlagsBits = sub_1000285C4(v12);
      String.append(_:)(v19);

      v20._countAndFlagsBits = 544175136;
      v20._object = 0xE400000000000000;
      String.append(_:)(v20);
      v21._countAndFlagsBits = sub_1000285C4(v23);
      String.append(_:)(v21);

      sub_10003F2C0(v24, v25, v17, v18);
    }

    else
    {
      v16 = sub_100035644(a1);
      sub_100034A74(v16, a3, a4, a5);
      sub_100004CD8(v22, v16);
      sub_100035830(v22, v23, a2);
      sub_100035938(a1);
    }
  }
}

uint64_t sub_100039F18(void *a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v12 = a4;
  v13 = a5;
  swift_unknownObjectRetain();
  v14 = sub_100033F34(a1);
  if (v6)
  {
  }

  else
  {
    v16 = v14;
    v26 = a2;
    v27 = a1;
    if (qword_10041DEF0 != -1)
    {
      swift_once();
    }

    v17 = qword_10041F160;
    if (qword_10041F160)
    {
      sub_100027C28(v16);
      v18 = String._bridgeToObjectiveC()();

      v19 = [v17 errorIfMatches:v18];

      if (v19)
      {
        swift_willThrow();

        return swift_unknownObjectRelease();
      }
    }

    if ((v26 & 1) == 0)
    {
      v21 = sub_100035644(v27);
      sub_100034A74(v21, v12, v13, a6);
      sub_100035728(v21, v16, a3);
      sub_100035938(v27);

      return swift_unknownObjectRelease();
    }

    v12 = v12;
    v20 = v13;
    swift_unknownObjectRetain();
    sub_100039090(v27, a3, v12, v20, a6);

    swift_unknownObjectRelease();

    v22 = *(a3 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
    v23 = *(v22 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks);
    v24 = __CFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      __break(1u);
    }

    *(v22 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks) = v25;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10003A92C()
{
  sub_100004394((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10003A98C(void *a1, void *a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(43);

    v14 = 0xD000000000000028;
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    String.append(_:)(v11);
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(50);

    v14 = 0xD00000000000002FLL;
    v4 = [a1 persona];
    v5 = [v4 personaIdentifier];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

LABEL_5:
    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    return v14;
  }

  return 0xD000000000000019;
}

uint64_t sub_10003AAFC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v4 == 1)
      {
        sub_10003B4F4();
        return static NSObject.== infix(_:_:)() & 1;
      }

      return 0;
    }

    return v4 == 2 && (v2 | v3) == 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  if (*a1 == v3 && a1[1] == v2)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id sub_10003B0D8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for POSIXError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    v15 = 22;
LABEL_6:
    v21 = v15;
    sub_10003B540(&_swiftEmptyArrayStorage);
    sub_10003B650();
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v11 + 8))(v13, v10);
    swift_willThrow();
    return swift_deallocPartialClassInstance();
  }

  if ((a4 & 1) == 0)
  {

    a1 = 0;
    a2 = 0;
    v14 = 2;
    goto LABEL_8;
  }

  if (!a2)
  {
    v15 = 2;
    goto LABEL_6;
  }

  v14 = 0;
LABEL_8:
  v17 = &v5[OBJC_IVAR____TtC7backupd14MigratorConfig_state];
  *v17 = a1;
  *(v17 + 1) = a2;
  v17[16] = v14;
  v20.receiver = v5;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, "init");
}

uint64_t sub_10003B410(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10003B42C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003B440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003B488(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10003B4CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10003B4F4()
{
  result = qword_10041F2B8;
  if (!qword_10041F2B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10041F2B8);
  }

  return result;
}

unint64_t sub_10003B540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000042B4(&unk_10041F3C0, &unk_1002B9B50);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003B6A8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10002C438(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001DCF4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003B650()
{
  result = qword_10041F2C0;
  if (!qword_10041F2C0)
  {
    type metadata accessor for POSIXError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041F2C0);
  }

  return result;
}

uint64_t sub_10003B6A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000042B4(&qword_10041EBB8, &qword_1002B96C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10003B718(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

id sub_10003B740()
{
  v1 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher____lazy_storage___observer;
  v2 = *(v0 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher____lazy_storage___observer);
  v3 = v2;
  if (v2 == 1)
  {
    sub_1000042B4(&qword_10041E7F0, &qword_1002B9328);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002B9260;
    *(inited + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:2];
    sub_10003E9C8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v5 = objc_allocWithZone(IXAppInstallObserver);
    v6 = String._bridgeToObjectiveC()();
    sub_100011314(0, &unk_10041F3A0, NSNumber_ptr);
    sub_100023254();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v3 = [v5 initWithMachServiceName:v6 forClients:isa delegate:v0];

    v8 = *(v0 + v1);
    *(v0 + v1) = v3;
    v9 = v3;
    sub_10003F140(v8);
  }

  sub_10003F150(v2);
  return v3;
}

id sub_10003B8C4()
{
  result = [objc_allocWithZone(type metadata accessor for AppRestoreDispatcher()) init];
  qword_100421CB8 = result;
  return result;
}

id sub_10003B950()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7backupd20AppRestoreDispatcher____lazy_storage___observer] = 1;
  v2 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock;
  type metadata accessor for MBUnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *(v3 + 16) = v4;
  *v4 = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_restorers] = &_swiftEmptyDictionarySingleton;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v22, "init");
  v6 = sub_10003B740();
  if (v6)
  {
    v7 = v6;
    if (qword_10041DF00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000685C(v8, qword_100421CD0);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v7;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "Created IXAppInstallObserver instance: %@", v12, 0xCu);
      sub_10003F0D8(v13);

      v9 = v10;
      v10 = v14;
    }

    return v5;
  }

  else
  {
    if (qword_10041DF00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000685C(v16, qword_100421CD0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10003FE34(0xD000000000000025, 0x80000001002BE040, &v21);
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to initialize observer for %s", v19, 0xCu);
      sub_100004394(v20);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10003BCB4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = *(v3 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  sub_10003BD68(a1, v3, a2, a3, &v11);
  if (v5)
  {

    os_unfair_lock_unlock(*(v9 + 16));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(*(v9 + 16));
  }
}

id sub_10003BD68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = [a1 persona];
  v10 = [v9 personaIdentifier];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_restorers;
  swift_beginAccess();
  v15 = *(a2 + v14);
  if (*(v15 + 16) && (v16 = sub_10002C438(v11, v13), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();
    v19 = v18;

    result = [v19 setDelegate:a4];
  }

  else
  {
    v33 = v11;
    swift_endAccess();
    v21 = [objc_allocWithZone(MBAppRestoreManager) initWithStateQueue:a3 account:a1];
    if (qword_10041DF00 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000685C(v22, qword_100421CD0);

    v23 = v21;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = a5;
      v28 = swift_slowAlloc();
      v35[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = sub_10003FE34(v33, v13, v35);
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v27 = v23;
      v29 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Created MBAppRestoreManager instance for %s: %@", v26, 0x16u);
      sub_10003F0D8(v27);

      sub_100004394(v28);
      a5 = v32;

      v30 = v33;
    }

    else
    {

      v30 = v33;
    }

    [v23 setDelegate:a4];
    swift_beginAccess();
    v19 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(a2 + v14);
    *(a2 + v14) = 0x8000000000000000;
    sub_10002D8BC(v19, v30, v13, isUniquelyReferenced_nonNull_native);

    *(a2 + v14) = v36;
    result = swift_endAccess();
  }

  *a5 = v19;
  return result;
}

void sub_10003C210(void *a1)
{
  v3 = [a1 identity];
  v48[3] = &OBJC_PROTOCOL____TtP7backupd18RestoreCoordinator_;
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (!v4)
  {
    if (qword_10041DF00 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  v45 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v6 = *(v5 + 16);
  v46 = a1;

  os_unfair_lock_lock(v6);
  v7 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_restorers;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = *(v5 + 16);

  os_unfair_lock_unlock(v9);

  v10 = 0;
  v47 = &_swiftEmptyArrayStorage;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;
  if (v13)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_27:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_28;
      }

LABEL_17:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_20;
      }

      if (*(v8 + 16))
      {
        v18 = *(v8 + 32);
LABEL_20:
        v19 = v18;

        [v19 restoreCoordinatorShouldBeginRestoringUserData:v45];

        goto LABEL_25;
      }

      __break(1u);
LABEL_35:
      swift_once();
LABEL_22:
      v20 = type metadata accessor for Logger();
      sub_10000685C(v20, qword_100421CD0);
      v21 = v3;
      v19 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v48[0] = v24;
        *v23 = 136315138;
        v25 = [v21 bundleID];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = sub_10003FE34(v26, v28, v48);

        *(v23 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v19, v22, "Not a RestoreCoordinator instance for %s", v23, 0xCu);
        sub_100004394(v24);
      }

      else
      {

LABEL_25:
      }

      return;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v8 + 64 + 8 * v15);
    ++v10;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v17 = *(*(v8 + 56) + ((v15 << 9) | (8 * v16)));
        if ([v17 shouldObserveCoordinatorWithIdentity:v3])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v10 = v15;
          if (!v13)
          {
            goto LABEL_8;
          }
        }

        else
        {

          v10 = v15;
          if (!v13)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v15 = v10;
      }
    }
  }

  v8 = v47;
  if (v47 < 0 || (v47 & 0x4000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (*(v47 + 16))
  {
    goto LABEL_17;
  }

LABEL_28:

  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000685C(v30, qword_100421CD0);
  v31 = v3;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = [v31 bundleID];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_10003FE34(v36, v38, &v47);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    v40 = [v31 personaUniqueString];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_10003FE34(v41, v43, &v47);

    *(v34 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v32, v33, "Failed to find a restorer for %s %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10003C7FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 identity];
  v53[3] = &OBJC_PROTOCOL____TtP7backupd18RestoreCoordinator_;
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (!v7)
  {
    if (qword_10041DF00 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  v50 = v7;
  v8 = *(v3 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v9 = *(v8 + 16);
  v51 = a1;

  os_unfair_lock_lock(v9);
  v10 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_restorers;
  swift_beginAccess();
  v11 = *(v3 + v10);
  v12 = *(v8 + 16);

  os_unfair_lock_unlock(v12);

  v13 = 0;
  v52 = &_swiftEmptyArrayStorage;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 64);
  v17 = (v14 + 63) >> 6;
  if (v16)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_26:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_27;
      }

LABEL_17:
      if ((v11 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_20;
      }

      if (*(v11 + 16))
      {
        v21 = *(v11 + 32);
LABEL_20:
        v22 = v21;

        v23 = _convertErrorToNSError(_:)();
        [v22 restoreCoordinator:v50 canceledWithReason:v23 client:a3];

        return;
      }

      __break(1u);
LABEL_34:
      swift_once();
LABEL_22:
      v24 = type metadata accessor for Logger();
      sub_10000685C(v24, qword_100421CD0);
      v25 = v6;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v53[0] = v29;
        *v28 = 136315138;
        v30 = [v25 bundleID];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = sub_10003FE34(v31, v33, v53);

        *(v28 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v26, v27, "Not a RestoreCoordinator instance for %s", v28, 0xCu);
        sub_100004394(v29);
      }

      else
      {
      }

      return;
    }

    if (v18 >= v17)
    {
      break;
    }

    v16 = *(v11 + 64 + 8 * v18);
    ++v13;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v20 = *(*(v11 + 56) + ((v18 << 9) | (8 * v19)));
        if ([v20 shouldObserveCoordinatorWithIdentity:v6])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v13 = v18;
          if (!v16)
          {
            goto LABEL_8;
          }
        }

        else
        {

          v13 = v18;
          if (!v16)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v18 = v13;
      }
    }
  }

  v11 = v52;
  if (v52 < 0 || (v52 & 0x4000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (*(v52 + 16))
  {
    goto LABEL_17;
  }

LABEL_27:

  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000685C(v35, qword_100421CD0);
  v36 = v6;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v39 = 136315394;
    v40 = [v36 bundleID];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_10003FE34(v41, v43, &v52);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2080;
    v45 = [v36 personaUniqueString];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = sub_10003FE34(v46, v48, &v52);

    *(v39 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v37, v38, "Failed to find a restorer for %s %s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10003CE24(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = [a1 persona];
  v6 = [v5 personaIdentifier];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_restorers;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {
    v12 = sub_10002C438(v7, v9);
    v14 = v13;

    if (v14)
    {
      v15 = *(*(v11 + 56) + 8 * v12);
      v16 = v15;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = 0;
LABEL_6:
  swift_endAccess();
  os_unfair_lock_unlock(*(v3 + 16));

  if (v15)
  {
    if (qword_10041DF00 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000685C(v17, qword_100421CD0);
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40[0] = v22;
      *v21 = 136315138;
      v23 = [v18 persona];
      v24 = [v23 personaIdentifier];

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = sub_10003FE34(v25, v27, v40);

      *(v21 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "IX: Retrying app data downloads for %s", v21, 0xCu);
      sub_100004394(v22);
    }

    [v15 retryAppDataDownloads];
  }

  else
  {
    if (qword_10041DF00 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000685C(v29, qword_100421CD0);
    v30 = a1;
    v15 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v32 = 136315138;
      v34 = [v30 persona];
      v35 = [v34 personaIdentifier];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = sub_10003FE34(v36, v38, v40);

      *(v32 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v15, v31, "IX: No app restorer found for persona %s", v32, 0xCu);
      sub_100004394(v33);
    }
  }
}

id sub_10003D278()
{
  v1 = *(v0 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_restorers;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v7; result = [*(*(v4 + 56) + ((v11 << 9) | (8 * v12))) cancelAndUninstallAllCoordinators])
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      *(v0 + v3) = sub_10003E8C4(&_swiftEmptyArrayStorage);

      os_unfair_lock_unlock(*(v1 + 16));
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003D424(void *a1)
{
  v2 = [a1 persona];
  v3 = [v2 personaIdentifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = *(v1 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v8 = *(v7 + 16);

  os_unfair_lock_lock(v8);
  sub_10003D61C(v1, v4, v6);

  os_unfair_lock_unlock(*(v7 + 16));
}

uint64_t sub_10003D510(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7backupd20AppRestoreDispatcher_lock);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_10003D61C(v2, a1, a2);
  os_unfair_lock_unlock(*(v5 + 16));
}

void sub_10003D61C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v5 = sub_10003DBF8(a2, a3);
  swift_endAccess();
  if (v5)
  {
    [v5 cancelAndUninstallAllCoordinators];
  }

  else
  {
    if (qword_10041DF00 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000685C(v6, qword_100421CD0);

    v5 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_10003FE34(a2, a3, v10);
      _os_log_impl(&_mh_execute_header, v5, v7, "Failed find and cancel the restorer for %s", v8, 0xCu);
      sub_100004394(v9);
    }
  }
}

Class sub_10003D854(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {

    sub_1000042B4(&qword_10041F370, &unk_1002B9B20);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

double sub_10003D8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    sub_1000042B4(&qword_10041F370, &unk_1002B9B20);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a4 = v5;

  return result;
}

uint64_t sub_10003D940(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_10003D9B0(void *a1, uint64_t a2)
{
  if (swift_dynamicCastObjCProtocolConditional())
  {
    swift_beginAccess();
    v4 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  return 1;
}

Class sub_10003DA90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a1, a2);
  sub_1000042B4(&qword_10041F370, &unk_1002B9B20);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

double sub_10003DB54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10002C438(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10002DDD8();
      v10 = v12;
    }

    sub_10001DCF4((*(v10 + 56) + 32 * v8), a3);
    sub_10003DF48(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10003DBF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10002C438(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10002DF7C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_10003E0FC(v6, v8);
  *v3 = v8;
  return v9;
}

unint64_t sub_10003DC90(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_10003F1C8();
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10003DF48(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_10003E0FC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

unint64_t sub_10003E2AC(uint64_t a1)
{
  v2 = sub_1000042B4(&unk_10041F3E0, &qword_1002B9B70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000042B4(&qword_10041EEB8, &unk_1002B98E0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10003F160(v9, v5, &unk_10041F3E0, &qword_1002B9B70);
      result = sub_10002C3B4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003E494(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000042B4(&qword_10041F3D0, &qword_1002B9B60);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10002C438(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003E598(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000042B4(&qword_10041F3D8, &qword_1002B9B68);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10002C438(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003E69C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000042B4(&unk_10041F3C0, &unk_1002B9B50);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003F160(v4, &v13, &qword_10041EBB8, &qword_1002B96C8);
      v5 = v13;
      v6 = v14;
      result = sub_10002C438(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001DCF4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003E7CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000042B4(&qword_10041F3B8, &qword_1002B9B48);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_10002C4B0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003E8C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000042B4(&qword_10041EE80, &qword_1002B98C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10002C438(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10003E9C8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000042B4(&qword_10041F3B0, &qword_1002B9B40);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100011314(0, &unk_10041F3A0, NSNumber_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100011314(0, &unk_10041F3A0, NSNumber_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

id sub_10003ECB8()
{
  if (qword_100421CC0)
  {
    v0 = qword_100421CC0;
  }

  else
  {
    v1 = swift_allocObject();
    v1[2] = &_swiftEmptyArrayStorage;
    sub_100011314(0, &unk_10041F380, IXRestoringAppInstallCoordinator_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    aBlock[4] = sub_10003F228;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003D940;
    aBlock[3] = &unk_1003BBDC0;
    v3 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v4 = [ObjCClassFromMetadata enumerateCoordinatorsWithError:aBlock usingBlock:v3];
    _Block_release(v3);
    v5 = aBlock[0];
    if (v4)
    {
      swift_beginAccess();
      v0 = v1[2];
      v6 = v5;
    }

    else
    {
      v0 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v0;
}

id sub_10003EE90()
{
  if (qword_100421CC8)
  {
    v0 = qword_100421CC8;
  }

  else
  {
    v1 = swift_allocObject();
    v1[2] = &_swiftEmptyArrayStorage;
    sub_100011314(0, &qword_10041F378, IXRestoringDemotedAppInstallCoordinator_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    aBlock[4] = sub_10003F0A0;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003D940;
    aBlock[3] = &unk_1003BBD98;
    v3 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v4 = [ObjCClassFromMetadata enumerateCoordinatorsWithError:aBlock usingBlock:v3];
    _Block_release(v3);
    v5 = aBlock[0];
    if (v4)
    {
      swift_beginAccess();
      v0 = v1[2];
      v6 = v5;
    }

    else
    {
      v0 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v0;
}

uint64_t sub_10003F068()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003F0C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003F0D8(uint64_t a1)
{
  v2 = sub_1000042B4(&unk_10041F390, &unk_1002B9B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10003F140(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_10003F150(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10003F160(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000042B4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10003F1C8()
{
  result = qword_10041F3F0;
  if (!qword_10041F3F0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041F3F0);
  }

  return result;
}

uint64_t sub_10003F22C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003F274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10003F2D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000685C(v11, qword_100421CD0);

  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a2;
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_10003FE34(a5, a6, &v24);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_10003FE34(a3, a4, &v24);
    *(v14 + 22) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s%s: %@", v14, 0x20u);
    sub_10003F0D8(v15);
    a2 = v23;

    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = _convertErrorToNSError(_:)();
  if ((~a2 & 0xF000000000000007) != 0)
  {
    sub_100027C28(a2);
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_opt_self();
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 errorForNSError:v17 path:v18 description:v20];

  return v21;
}

void sub_10003F5B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000685C(v9, qword_100421CD0);

  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_10003FE34(a4, a5, &v15);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10003FE34(a2, a3, &v15);
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, oslog, v10, "%s%s: %@", v11, 0x20u);
    sub_10003F0D8(v12);

    swift_arrayDestroy();
  }
}

void sub_10003F7D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000685C(v10, qword_100421CD0);

  oslog = Logger.logObject.getter();
  v11 = a5();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10003FE34(a3, a4, &v14);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10003FE34(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, oslog, v11, "%s%s", v12, 0x16u);
    swift_arrayDestroy();
  }
}

id sub_10003F97C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000685C(v10, qword_100421CD0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_10003FE34(a4, a5, &v18);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10003FE34(a2, a3, &v18);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v14 = objc_opt_self();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 errorWithCode:a1 description:v15];

  return v16;
}

id sub_10003FB68(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_10041DF00 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000685C(v12, qword_100421CD0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_10003FE34(a5, a6, &v21);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_10003FE34(a3, a4, &v21);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v16 = objc_opt_self();
  if ((~a2 & 0xF000000000000007) != 0)
  {

    sub_100027C28(a2);
    v19 = String._bridgeToObjectiveC()();

    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 errorWithCode:a1 path:v19 description:v17];
    sub_1000112FC(a2);
  }

  else
  {
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 errorWithCode:a1 description:v17];
  }

  return v18;
}

id sub_10003FDD0()
{
  v0 = type metadata accessor for Logger();
  sub_1000403DC(v0, qword_100421CD0);
  sub_10000685C(v0, qword_100421CD0);
  result = MBGetMBSwiftLog();
  if (result)
  {
    return Logger.init(_:)();
  }

  __break(1u);
  return result;
}

unint64_t sub_10003FE34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003FF00(v11, 0, 0, 1, a1, a2);
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
    sub_10001DD04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004394(v11);
  return v7;
}

unint64_t sub_10003FF00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10004000C(a5, a6);
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

char *sub_10004000C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100040058(a1, a2);
  sub_100040188(&off_1003BAAD0);
  return v3;
}

char *sub_100040058(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100040274(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100040274(v10, 0);
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

void sub_100040188(uint64_t a1)
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

  v3 = sub_1000402E8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

void *sub_100040274(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000042B4(&qword_10041F400, &unk_1002B9BB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000402E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000042B4(&qword_10041F400, &unk_1002B9BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t *sub_1000403DC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100040440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t *sub_100040538(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_10000F7AC(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      swift_errorRetain();
      sub_1000042B4(&qword_10041E800, &qword_1002B96F0);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000F7AC((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10001DCF4(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_10004064C()
{
  sub_10001378C();
  if (!v1)
  {
    sub_100013938();
    v2 = *(v0 + OBJC_IVAR____TtC7backupd19MBDryRestoreSession_planDB);
    v3 = *(v0 + OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context);
    v4 = *(v3 + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_progress);
    v10 = *(v3 + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_foregroundDomainNames);
    v5 = v4;

    sub_10000DFD4(v6);
    sub_100016D5C(v10);

    isa = Set._bridgeToObjectiveC()().super.isa;

    v10 = 0;
    LODWORD(v2) = [v2 addRemainingProgress:v5 forDomainNames:isa error:&v10];

    if (v2)
    {
      v8 = v10;
      sub_10001409C();
    }

    else
    {
      v9 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

double sub_1000407E4()
{
  v1 = v0;
  v35 = *&v0[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context];
  v36 = *&v35[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_foregroundDomainNames];

  sub_10000DFD4(v2);
  v3 = v36;
  v4 = *(v36 + 2);
  v5 = OBJC_IVAR____TtC7backupd19MBDryRestoreSession_planDB;
  if (v4)
  {
    v6 = 0;
    v7 = v36 + 40;
    do
    {
      if (v6 >= *(v3 + 2))
      {
        __break(1u);
      }

      v8 = v3;
      v9 = v1;
      v10 = *&v1[v5];

      v11 = String._bridgeToObjectiveC()();

      v36 = 0;
      LODWORD(v10) = [v10 ingestFileListForDomainNamed:v11 error:&v36];

      if (!v10)
      {
        goto LABEL_11;
      }

      ++v6;
      v12 = v36;
      v7 += 16;
      v1 = v9;
      v3 = v8;
    }

    while (v4 != v6);
  }

  v13 = v1;
  v14 = *&v1[v5];
  v15 = *&v35[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_progress];

  sub_100016D5C(v16);

  isa = Set._bridgeToObjectiveC()().super.isa;

  v36 = 0;
  v18 = [v14 addRemainingProgress:v15 forDomainNames:isa error:&v36];

  if (!v18)
  {
LABEL_11:
    v33 = v36;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    return result;
  }

  v19 = *&v35[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_persona];
  v20 = v36;
  v21 = [v19 isDataSeparatedPersona];
  v22 = objc_opt_self();
  v23 = &selRef_foregroundDataSeparatedRestoreMode;
  if (!v21)
  {
    v23 = &selRef_foregroundRestoreMode;
  }

  v24 = [v22 *v23];
  v25 = sub_10000B070(v24);

  sub_100016D5C(v26);

  v27 = Set._bridgeToObjectiveC()().super.isa;

  [v25 setDomainNamesToForegroundRestore:v27];

  v28 = v13;
  v29 = sub_1000105A4(v14, v25, 0, v3, v35, v28);
  v31 = v30;

  if (v34)
  {
  }

  else
  {

    sub_1000135C4(v29, v31);
  }

  return result;
}

void sub_100040B5C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  LODWORD(v63) = a3;
  v8 = *&v3[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context];
  v9 = *&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_backgroundDomainNames];

  v10 = sub_100040440(a1, a2, v9);

  sub_1000042B4(&qword_10041E7E8, &qword_1002B9320);
  inited = swift_initStackObject();
  v62 = xmmword_1002B9270;
  *(inited + 16) = xmmword_1002B9270;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v64 = sub_100016D5C(inited);
  swift_setDeallocating();
  sub_100012024(inited + 32);
  if (v10)
  {
    v12 = *&v5[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_planDB];
    v13 = String._bridgeToObjectiveC()();
    v65[0] = 0;
    v14 = [v12 ingestFileListForDomainNamed:v13 error:v65];

    if (v14 && (v15 = *&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_progress], v16 = v65[0], v17 = v15, v18 = v64, isa = Set._bridgeToObjectiveC()().super.isa, v65[0] = 0, v20 = [v12 addRemainingProgress:v17 forDomainNames:isa error:v65], v17, isa, v22 = v65[0], v20))
    {
      *&v62 = &v58;
      __chkstk_darwin(v21);
      v23 = v8;
      v24 = v12;
      v25 = v22;
      sub_100016798(v18, v23, v24, v63 & 1, sub_100041E24);

      if (!v4)
      {
        sub_1000135C4(0xD00000000000001CLL, 0x80000001002BB200);
      }
    }

    else
    {
      v36 = v65[0];

      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v26 = [*&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_persona] isDataSeparatedPersona];
    v27 = objc_opt_self();
    v28 = &selRef_foregroundDataSeparatedRestoreMode;
    if (!v26)
    {
      v28 = &selRef_foregroundRestoreMode;
    }

    v29 = [v27 *v28];
    v30 = sub_10000B070(v29);

    v31 = *&v5[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_planDB];
    sub_10000B1E0(v31, v30);
    if (v4)
    {
    }

    else
    {
      v59 = v5;
      v61 = v31;
      v60 = v30;
      if (v63)
      {
        sub_100027C28(*&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext__restoreSnapshotsDir]);
        v32 = v30;
        v58 = *&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_snapshotUUID + 8];
        v33 = objc_allocWithZone(MBRestoreSnapshotIntegrityVerifier);
        v34 = String._bridgeToObjectiveC()();

        v35 = String._bridgeToObjectiveC()();
        v63 = [v33 initWithPolicy:v32 snapshotFormat:2 snapshotDir:v34 snapshotUUID:v35 delegate:v8, v58, v59];
      }

      else
      {
        v63 = 0;
      }

      v37 = *&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext_progress];
      v38 = Set._bridgeToObjectiveC()().super.isa;

      v65[0] = 0;
      v39 = v61;
      v40 = [v61 addRemainingProgress:v37 forDomainNames:v38 error:v65];

      v41 = v65[0];
      if (v40)
      {
        v42 = swift_initStackObject();
        *(v42 + 16) = v62;
        *(v42 + 32) = a1;
        *(v42 + 40) = a2;

        v43 = v59;
        v44 = v41;
        v64 = 0;
        v45 = sub_10001060C(v39, v60, v63, v42, v8, v43);
        v48 = v47;
        v49 = v45;

        swift_setDeallocating();
        sub_100012024(v42 + 32);
        sub_1000135C4(v49, v48);

        v50 = *&v8[OBJC_IVAR____TtC7backupd19MBDryRestoreContext__failures];
        v51 = *(v50 + 16);
        os_unfair_lock_lock(*(v51 + 16));
        swift_beginAccess();
        v52 = *(v50 + 24);
        if (*(v52 + 16))
        {
          v53 = objc_opt_self();
          sub_100040538(v52);
          v54 = Array._bridgeToObjectiveC()().super.isa;

          v55 = [v53 errorWithErrors:v54];
        }

        else
        {
          v55 = 0;
        }

        swift_endAccess();
        os_unfair_lock_unlock(*(v51 + 16));
        if (v55)
        {
        }

        else
        {
          sub_10000C8B0(v61, v8, v43);
          sub_1000135C4(v56, v57);
        }
      }

      else
      {
        v46 = v65[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

unint64_t sub_100041440(void *a1, uint64_t a2)
{
  v3 = *(*(a2 + OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context) + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_contentPath);

  v4 = [a1 name];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = sub_100027EFC(v5, v7, v3);

  return v8;
}

void sub_1000414E4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, char a9, void *a10, void *a11)
{
  _StringGuts.grow(_:)(25);

  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 544497952;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = a3;
  v19._object = a4;
  String.append(_:)(v19);
  sub_10003F2C0(0xD000000000000011, 0x80000001002BE130, 0xD000000000000011, 0x80000001002BE110);

  sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
  v20 = swift_allocBox();

  FilePath.init(_:)();
  sub_100005348(511, v20);
  if (v11)
  {

    return;
  }

  v21 = a1 == 0x4742747365676E49 && a2 == 0xE800000000000000;
  v22 = v21;
  v46 = v22;
  if (v21)
  {
    v23 = 0;
    v24 = a8;
    v25 = a7;
    v26 = a6;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v24 = a8;
    v25 = a7;
    if (v27)
    {
      v23 = 0;
      v26 = a6;
    }

    else if (a1 == 0x756F726765726F46 && a2 == 0xEA0000000000646ELL)
    {
      v26 = a6;
      v23 = 0;
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v23 = 0;
      v30 = a1 == 0x756F72676B636142 && a2 == 0xEA0000000000646ELL;
      if (v28)
      {
        v24 = a8;
        v25 = a7;
        v26 = a6;
      }

      else
      {
        v24 = a8;
        v25 = a7;
        v26 = a6;
        v31 = a5;
        if (v30)
        {
          goto LABEL_33;
        }

        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 4412481 && a2 == 0xE300000000000000)
        {
          v23 = 0;
        }

        else
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
        }

        v24 = a8;
        v25 = a7;
        v26 = a6;
      }
    }
  }

  v31 = a5;
LABEL_33:
  v32 = sub_100016E9C(v20, v20, 0x6669636570736E55, 0xEB00000000646569, v31, v26, v25, v24, v23 & 1, a10, a11);
  if (a1 == 0x4746747365676E49 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_10001378C();
  }

  else if (v46 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    sub_100013938();
  }

  else if (a1 == 0x756F726765726F46 && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100013B38(a9 & 1);
  }

  else if (a1 == 0x756F72676B636142 && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100013E6C(a9 & 1);
  }

  else if (a1 == 4412481 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_10003F2C0(0xD000000000000014, 0x80000001002BADD0, 0xD000000000000016, 0x80000001002BB180);
    sub_10000D3B4(*&v32[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_planDB], *&v32[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context], v32);
    sub_1000135C4(v44, v45);
  }

  else
  {
    if (a1 == 0xD000000000000012 && 0x80000001002BE150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_71;
    }

    if (a1 == 0x6968747972657645 && a2 == 0xEE0074736146676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_65;
    }

    if ((a1 != 0x6968747972657645 || a2 != 0xEA0000000000676ELL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_100040B5C(a1, a2, a9 & 1);
      goto LABEL_40;
    }

    if (a9)
    {
LABEL_71:
      sub_10004064C();
    }

    else
    {
LABEL_65:
      sub_1000407E4();
    }
  }

LABEL_40:
  v33 = OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context;
  v34 = *(*(*&v32[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context] + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__summary) + 16);
  os_unfair_lock_lock(*(v34 + 16));
  swift_beginAccess();
  swift_beginAccess();
  sub_1000192FC();
  swift_endAccess();
  swift_beginAccess();
  sub_1000192FC();
  swift_endAccess();
  swift_endAccess();
  os_unfair_lock_unlock(*(v34 + 16));
  v35._countAndFlagsBits = 0x3A7972616D6D7553;
  v35._object = 0xE900000000000020;
  String.append(_:)(v35);
  v36._countAndFlagsBits = sub_100019C08();
  String.append(_:)(v36);

  v37._countAndFlagsBits = 10;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  _print_unlocked<A, B>(_:_:)();
  sub_10003F2C0(0, 0xE000000000000000, 0xD000000000000011, 0x80000001002BE110);

  v38 = *(*&v32[v33] + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__failures);
  v39 = *(v38 + 16);
  os_unfair_lock_lock(*(v39 + 16));
  swift_beginAccess();
  v40 = *(v38 + 24);
  if (*(v40 + 16))
  {
    v41 = objc_opt_self();
    sub_100040538(v40);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v43 = [v41 errorWithErrors:isa];
  }

  else
  {
    v43 = 0;
  }

  swift_endAccess();
  os_unfair_lock_unlock(*(v39 + 16));
  if (v43)
  {
    swift_willThrow();
  }

  sub_100013048(0);
}

id sub_100041E2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  v8 = objc_opt_self();
  v9 = _convertErrorToNSError(_:)();

  v10 = [v8 errnoForError:v9];

  return v10;
}

char *sub_100041FA0(char *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5[0] = result;
    v5[1] = 0;
    result = fts_open(v5, 84, 0);
    if (result)
    {
      return sub_100274C60(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_100042020(const char *a1, int a2, int a3, char a4)
{
  v16 = 0;
  v15 = xmmword_1002B9BE0;
  v14 = 0;
  if (getattrlist(a1, &v15, &v14, 8uLL, 0))
  {
    return *__error();
  }

  if (HIDWORD(v14) == a3 || a2 != -1 && HIDWORD(v14) != a2)
  {
    return 0;
  }

  if (a2 == -1)
  {
    if (a4)
    {
      fprintf(__stdoutp, "%s set %i\n");
    }
  }

  else if (a4)
  {
    fprintf(__stdoutp, "%s update %i -> %i\n");
  }

  v13 = a3;
  if (!setattrlist(a1, &v15, &v13, 4uLL, 0))
  {
    return 0;
  }

  v8 = __error();
  v9 = *v8;
  v10 = __stderrp;
  v11 = strerror(*v8);
  fprintf(v10, "failed (%s) to update class for %s\n", v11, a1);
  return v9;
}

uint64_t sub_100042160(_DWORD *a1, uint64_t a2)
{
  v2 = a1[8];
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 48);
    v4 = a1[9];
    v5 = a1[10];
    v3 = v6;
    goto LABEL_5;
  }

  if ((v2 & 8) != 0)
  {
    v3 = *(a2 + 48);
    v4 = -1;
    v5 = 0;
LABEL_5:
    sub_100042020(v3, v4, v5, v2);
  }

  return 1;
}

_DWORD *sub_1000421A4(_DWORD *result, uint64_t a2)
{
  v3 = result[8];
  if (v3)
  {
    v4 = result[9];
    if ((v4 & 0x10) != 0)
    {
      if (result[10])
      {
        v5 = result[10];
      }

      else
      {
        v5 = 3;
      }

      return sub_100042020(*(a2 + 48), v3, v5, v4);
    }
  }

  return result;
}

uint64_t MBSynchronizeFileListsWithSnapshotDirectory(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  if ([MBFileOperation createDirectories:4294967294 destinationBasePath:@"/" destinationRpath:v15 permissions:493 error:a7])
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10004239C;
    v24[3] = &unk_1003BBEB0;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v22 = MBAcquireSnapshotDirectoryLock(v25, a7, v24);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t sub_10004239C(uint64_t a1, double *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v51 = *(a1 + 32);
  v52 = *(a1 + 72);
  v6 = v51;
  v7 = *(&v51 + 1);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v50 = v52;
  v47 = *(&v52 + 1);
  v49 = v6;
  if (!v6)
  {
    __assert_rtn("_synchronizeFileListsWithSnapshotDirectory", "MBSynchronizeFileLists.m", 58, "snapshotDirectory");
  }

  if (!v7)
  {
    __assert_rtn("_synchronizeFileListsWithSnapshotDirectory", "MBSynchronizeFileLists.m", 59, "commitID");
  }

  if (!v8)
  {
    __assert_rtn("_synchronizeFileListsWithSnapshotDirectory", "MBSynchronizeFileLists.m", 60, "hmacKey");
  }

  if (!v9)
  {
    __assert_rtn("_synchronizeFileListsWithSnapshotDirectory", "MBSynchronizeFileLists.m", 61, "references");
  }

  if (!v10)
  {
    __assert_rtn("_synchronizeFileListsWithSnapshotDirectory", "MBSynchronizeFileLists.m", 62, "tracker");
  }

  v46 = v10;
  v48 = v7;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v12 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v75 objects:v99 count:16];
  if (v14)
  {
    v15 = *v76;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v76 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if (([v12 addDomainReference:*(*(&v75 + 1) + 8 * i) error:a2] & 1) == 0)
        {
          v34 = 0;
          v35 = v13;
          goto LABEL_32;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v75 objects:v99 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_100043718;
  v69[3] = &unk_1003BBF00;
  v17 = v12;
  v70 = v17;
  v71 = v8;
  v18 = v50;
  v72 = v18;
  v19 = v6;
  v20 = v48;
  v73 = v51;
  v74 = &v79;
  v21 = MBEnumerateDomainNamesForSnapshot(v19, v20, a2, v69);

  if (!v21)
  {
    v34 = 0;
    goto LABEL_33;
  }

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1000438BC;
  v66[3] = &unk_1003BBF28;
  v22 = v18;
  v23 = v47;
  v67 = v52;
  v68 = &v87;
  [v17 enumerateConsolidatedDomainNamesAndReference:v66];
  v45 = v22;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_100043534;
  v64 = sub_100043544;
  v24 = v23;
  v65 = objc_opt_new();
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100043A18;
  v54[3] = &unk_1003BBF78;
  v25 = [[MBCKBatchFetch alloc] initWithOperationTracker:v46];
  v55 = v25;
  v26 = v19;
  v27 = v20;
  v58 = &v60;
  v28 = v45;
  v29 = v24;
  v57 = v52;
  v56 = v51;
  v59 = &v83;
  [v17 enumerateReferencesWithUnknownDomainName:v54];
  v53 = 0;
  LOBYTE(v24) = [(MBCKBatchFetch *)v25 finishWithError:&v53];
  v30 = v25;
  v31 = COERCE_DOUBLE(v53);
  if ((v24 & 1) == 0)
  {
    v36 = MBGetDefaultLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v92 = v31;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "=sync= Failed to finish batch fetch of domain records: %@", buf, 0xCu);
      _MBLog(@"E ", "=sync= Failed to finish batch fetch of domain records: %@", *&v31);
    }

    if (a2)
    {
      v37 = *&v31;
      v34 = 0;
      *a2 = v31;
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  if ([*(v61 + 5) count])
  {
    v32 = MBGetDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = v61[5];
      *buf = 138412290;
      v92 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "=sync= Encountered fetch errors during file list synchronization: %@", buf, 0xCu);
      _MBLog(@"E ", "=sync= Encountered fetch errors during file list synchronization: %@", *(v61 + 5));
    }

    if (a2)
    {
      [MBError errorWithErrors:*(v61 + 5)];
      *a2 = v34 = 0;
      goto LABEL_31;
    }

LABEL_27:
    v34 = 0;
    goto LABEL_31;
  }

  v38 = CFAbsoluteTimeGetCurrent();
  v39 = MBGetDefaultLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v38 - Current;
    v41 = v88[3];
    v42 = v84[3];
    v43 = v80[3];
    *buf = 134218752;
    v92 = v40;
    v93 = 2048;
    v94 = v41;
    v95 = 2048;
    v96 = v42;
    v97 = 2048;
    v98 = v43;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "=sync= Finished file list synchronization in %.2fs - consolidated:%llu fetched:%llu deleted:%llu", buf, 0x2Au);
    _MBLog(@"Df", "=sync= Finished file list synchronization in %.2fs - consolidated:%llu fetched:%llu deleted:%llu", v40, v88[3], v84[3], v80[3]);
  }

  v34 = 1;
LABEL_31:

  _Block_object_dispose(&v60, 8);
  v35 = v67;
LABEL_32:

LABEL_33:
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);

  return v34;
}

void sub_100042B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

id MBSynchronizeSnapshotDirectoryForBackup(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v52 = a4;
  v15 = a5;
  v49 = a6;
  v56 = v12;
  if (!v12)
  {
    __assert_rtn("MBSynchronizeSnapshotDirectoryForBackup", "MBSynchronizeFileLists.m", 166, "snapshotDirectory");
  }

  if (!v14)
  {
    __assert_rtn("MBSynchronizeSnapshotDirectoryForBackup", "MBSynchronizeFileLists.m", 167, "currentSnapshot");
  }

  if (!v52)
  {
    __assert_rtn("MBSynchronizeSnapshotDirectoryForBackup", "MBSynchronizeFileLists.m", 168, "device");
  }

  if (!v15)
  {
    __assert_rtn("MBSynchronizeSnapshotDirectoryForBackup", "MBSynchronizeFileLists.m", 169, "tracker");
  }

  v48 = v15;
  v51 = v14;
  [v14 snapshotFormat];
  v16 = MBSnapshotFormatContainsFileLists();
  v17 = v13;
  [v13 snapshotFormat];
  if (MBSnapshotFormatContainsFileLists())
  {
    v18 = [v13 commitID];
    if (!v18)
    {
      __assert_rtn("MBSynchronizeSnapshotDirectoryForBackup", "MBSynchronizeFileLists.m", 175, "previousSnapshotCommitID");
    }
  }

  else
  {
    v18 = 0;
  }

  v53 = v18;
  v55 = [v14 commitID];
  v65 = 0;
  v54 = [MBPendingSnapshotDB openOrCreateDatabaseIn:v56 commitID:v55 readonly:0 error:&v65];
  v19 = v65;
  v20 = v19;
  if (v54)
  {
    v21 = v16 ^ 1;
    if (!v53)
    {
      v21 = 1;
    }

    if (v21)
    {
      v47 = [NSSet setWithObject:v55];
    }

    else
    {
      v74[0] = v55;
      v74[1] = v53;
      v22 = [NSArray arrayWithObjects:v74 count:2];
      v47 = [NSSet setWithArray:v22];
    }

    MBDeleteSnapshotDirectoriesNotBelongingToSnapshots(v56, v47);
    if (MBCreateSymlinksForPendingAndLatestSnapshots(v56, v55, v53, a7))
    {
      if (((v53 != 0) & v16) == 0)
      {
        v26 = v54;
        goto LABEL_55;
      }

      if ([v54 clearDomainsFromPreviousSnapshot:a7])
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v70 = 0x3032000000;
        v71 = sub_100043534;
        v72 = sub_100043544;
        v73 = 0;
        v27 = [v52 snapshots];
        v46 = MBGetLatestDomainRecordReferencesFromSnapshots(v27);

        v28 = [v52 hmacKey];
        v64 = v20;
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_10004354C;
        v61[3] = &unk_1003BBED8;
        v44 = v54;
        v62 = v44;
        p_buf = &buf;
        v29 = MBSynchronizeFileListsWithSnapshotDirectory(v56, v53, v28, v46, v48, v49, &v64, v61);
        v45 = v64;

        if (v29)
        {

          if (*(*(&buf + 1) + 40))
          {
            v30 = MBGetDefaultLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = *(*(&buf + 1) + 40);
              *v67 = 138412290;
              v68 = v31;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=sync= Failed to add domains into pending snapshot database: %@", v67, 0xCu);
              _MBLog(@"E ", "=sync= Failed to add domains into pending snapshot database: %@", *(*(&buf + 1) + 40));
            }

            if (a7)
            {
              *a7 = *(*(&buf + 1) + 40);
            }

            sub_100043458(v44);
            v26 = 0;
            goto LABEL_54;
          }

          v43 = [v52 domainHMACsToRepair];
          if (![v43 count])
          {
            goto LABEL_49;
          }

          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v34 = v43;
          v35 = [v34 countByEnumeratingWithState:&v57 objects:v66 count:16];
          if (v35)
          {
            v36 = *v58;
            do
            {
              for (i = 0; i != v35; i = i + 1)
              {
                if (*v58 != v36)
                {
                  objc_enumerationMutation(v34);
                }

                v38 = *(*(&v57 + 1) + 8 * i);
                v39 = MBGetDefaultLog();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  *v67 = 138412290;
                  v68 = v38;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "=sync= =domain repair= Found domain HMAC to repair %@", v67, 0xCu);
                  _MBLog(@"I ", "=sync= =domain repair= Found domain HMAC to repair %@", v38);
                }
              }

              v17 = v13;
              v35 = [v34 countByEnumeratingWithState:&v57 objects:v66 count:16];
            }

            while (v35);
          }

          if (([v44 addDomainHMACsToRepair:v34 error:a7] & 1) == 0)
          {
            v40 = MBGetDefaultLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = *a7;
              *v67 = 138412290;
              v68 = v41;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "=sync= =domain repair= Failed to add repair domains to pending snapshot database: %@", v67, 0xCu);
              _MBLog(@"E ", "=sync= =domain repair= Failed to add repair domains to pending snapshot database: %@", *a7);
            }

            sub_100043458(v44);
            v26 = 0;
          }

          else
          {
LABEL_49:
            v26 = v44;
            v34 = v43;
          }
        }

        else
        {
          if (a7)
          {
            v32 = v45;
            *a7 = v45;
          }

          v33 = MBGetDefaultLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *v67 = 138412290;
            v68 = v45;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=sync= Failed to synchronize file lists: %@", v67, 0xCu);
            _MBLog(@"E ", "=sync= Failed to synchronize file lists: %@", v45);
          }

          sub_100043458(v44);
          v26 = 0;
          v34 = v62;
        }

LABEL_54:
        _Block_object_dispose(&buf, 8);

        v20 = v45;
        goto LABEL_55;
      }
    }

    sub_100043458(v54);
    v26 = 0;
LABEL_55:
    v25 = v47;
    goto LABEL_56;
  }

  if (a7)
  {
    v23 = v19;
    *a7 = v20;
  }

  v24 = MBGetDefaultLog();
  v25 = v24;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v20;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=sync= Failed to create pending snapshot database: %@", &buf, 0xCu);
    _MBLog(@"E ", "=sync= Failed to create pending snapshot database: %@", v20);
    v26 = 0;
    v25 = v24;
  }

  else
  {
    v26 = 0;
  }

LABEL_56:

  return v26;
}

void sub_100043458(void *a1)
{
  v4 = 0;
  v1 = [a1 close:&v4];
  v2 = v4;
  if ((v1 & 1) == 0)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "=sync= Failed to close pending snapshot DB: %@", buf, 0xCu);
      _MBLog(@"F ", "=sync= Failed to close pending snapshot DB: %@", v2);
    }
  }
}

uint64_t sub_100043534(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004354C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = [v8 baseRecordID];
  v17 = 0;
  v11 = [v9 addDomainFromPreviousSnapshotsWithName:v7 recordID:v10 pageCount:objc_msgSend(v8 error:{"pageCount"), &v17}];
  v12 = v17;

  v13 = MBGetDefaultLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v14)
    {
      *buf = 138412802;
      v19 = v7;
      v20 = 1024;
      v21 = a4;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=sync= Added domain %@(%d) with reference %@ into pending snapshot database", buf, 0x1Cu);
      _MBLog(@"Df", "=sync= Added domain %@(%d) with reference %@ into pending snapshot database", v7, a4, v8);
    }
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=sync= Failed to insert domain name into pending snapshot DB: %@", buf, 0xCu);
      _MBLog(@"Df", "=sync= Failed to insert domain name into pending snapshot DB: %@", v12);
    }

    v15 = *(*(a1 + 40) + 8);
    v16 = v12;
    v13 = *(v15 + 40);
    *(v15 + 40) = v16;
  }
}

uint64_t sub_100043718(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) consolidateDomainName:v3 hmacKey:*(a1 + 40)] & 1) == 0)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=sync= Deleting file list for %@ that isn't present in snapshot", buf, 0xCu);
      _MBLog(@"Df", "=sync= Deleting file list for %@ that isn't present in snapshot", v3);
    }

    [*(a1 + 48) trackDeletedDomainDuringFileListSynchronization:v3];
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v11 = 0;
    v7 = MBDeleteFileListDB(v5, v6, v3, &v11);
    v8 = v11;
    if ((v7 & 1) == 0)
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v3;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=sync= Failed to delete file list database for domain %@: %@", buf, 0x16u);
        _MBLog(@"E ", "=sync= Failed to delete file list database for domain %@: %@", v3, v8);
      }
    }

    ++*(*(*(a1 + 72) + 8) + 24);
  }

  return 1;
}

uint64_t sub_1000438BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 baseRecordID];
    *buf = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=sync= Consolidated baseRecordID %@ with domain on disk %@", buf, 0x16u);

    v9 = [v6 baseRecordID];
    _MBLog(@"I ", "=sync= Consolidated baseRecordID %@ with domain on disk %@", v9, v5);
  }

  [*(a1 + 32) trackConsolidatedDomainDuringFileListSynchronization:v5];
  (*(*(a1 + 40) + 16))();
  ++*(*(*(a1 + 48) + 8) + 24);

  return 1;
}

uint64_t sub_100043A18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(*(a1 + 72) + 8) + 40);
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100043CC4;
  v25 = &unk_1003BBF50;
  v7 = *(a1 + 48);
  v26 = *(a1 + 56);
  v27 = *(a1 + 64);
  v8 = v3;
  v9 = v5;
  v10 = v7;
  v11 = v6;
  v12 = &v22;
  v13 = v4;
  v14 = [v8 baseRecordID];
  v15 = [MBDomainRecord recordIDFromBaseRecordID:v14 pageIndex:0];

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=sync= Fetching domain record ID %@ from reference %@", buf, 0x16u);
    _MBLog(@"I ", "=sync= Fetching domain record ID %@ from reference %@", v15, v8, v22, v23, v24, v25, v26, v27);
  }

  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100043D58;
  v29 = &unk_1003BBFA0;
  v30 = v9;
  v31 = v10;
  v33 = v8;
  v34 = v12;
  v32 = v11;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v8;
  [v13 fetchRecordWithID:v15 completion:buf];

  ++*(*(*(a1 + 80) + 8) + 24);
  return 1;
}

void sub_100043CC4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 trackDownloadedDomainDuringFileListSynchronization:v7];
  (*(*(a1 + 40) + 16))();
}

void sub_100043D58(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=sync= Failed to fetch recordID %@: %@", buf, 0x16u);
      _MBLog(@"E ", "=sync= Failed to fetch recordID %@: %@", v7, v8);
    }
  }

  else
  {
    v10 = [MBDomainRecord domainRecordFromCKRecord:a3];
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 domainName];
      *buf = 138412546;
      v22 = v7;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=sync= Fetched domain record %@ for domain %@", buf, 0x16u);

      v13 = [v10 domainName];
      _MBLog(@"Df", "=sync= Fetched domain record %@ for domain %@", v7, v13);
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v20 = 0;
    v16 = [v10 decompressAssetIntoSnapshotDirectoryRoot:v14 commitID:v15 error:&v20];
    v9 = v20;
    if (v16)
    {
      v17 = *(a1 + 64);
      v18 = [v10 domainName];
      (*(v17 + 16))(v17, v18, *(a1 + 56), 1);
    }

    else
    {
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v7;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=sync= Failed to decompress domain record %@: %@", buf, 0x16u);
        _MBLog(@"E ", "=sync= Failed to decompress domain record %@: %@", v7, v9);
      }

      [*(a1 + 48) addObject:v9];
    }
  }
}

void sub_100044CA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    v6 = [v5 applicationType];
    v7 = [v6 isEqualToString:LSSystemApplicationType];

    if (v7)
    {
      goto LABEL_29;
    }

    v8 = [v5 installType];
    if ((v8 - 7) > 1)
    {
      goto LABEL_29;
    }

    v9 = v8;
    v10 = [v5 bundleIdentifier];
    v11 = [v5 managedPersonas];
    if ([v11 count])
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = v10;
        v21 = 2114;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found app %@ with managed personae: %{public}@", buf, 0x16u);
        _MBLog(@"Df", "Found app %@ with managed personae: %{public}@", v10, v11);
      }
    }

    if (*(a1 + 64) == 1)
    {
      v13 = [v5 purchaserDSID];
      if (![v11 count] || *(a1 + 32) && (objc_msgSend(v11, "containsObject:") & 1) != 0)
      {
        if ([v11 count] || (objc_msgSend(*(a1 + 40), "addAccountWithDSID:", v13) & 1) != 0)
        {

LABEL_16:
          v14 = MBGetDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v20 = v10;
            v21 = 2048;
            v22 = v9;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found demoted bundle: %@/%lu", buf, 0x16u);
            _MBLog(@"Df", "Found demoted bundle: %@/%lu", v10, v9);
          }

          if (v9 == 7)
          {
            v15 = *(a1 + 48);
          }

          else
          {
            v15 = *(a1 + 56);
          }

          [v15 addObject:v10];
          goto LABEL_28;
        }

        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v20 = v10;
          v21 = 2048;
          v22 = v9;
          v23 = 2112;
          v24 = v13;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping demoted bundle:%@/%lu for DSID %@", buf, 0x20u);
          _MBLog(@"Df", "Skipping demoted bundle:%@/%lu for DSID %@", v10, v9, v13);
        }
      }

      else
      {
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 32);
          *buf = 138412802;
          v20 = v10;
          v21 = 2048;
          v22 = v9;
          v23 = 2114;
          v24 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping demoted bundle:%@/%lu for personal persona %{public}@", buf, 0x20u);
          _MBLog(@"Df", "Skipping demoted bundle:%@/%lu for personal persona %{public}@", v10, v9, *(a1 + 32));
        }
      }
    }

    else
    {
      if ([v11 containsObject:*(a1 + 32)])
      {
        goto LABEL_16;
      }

      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        *buf = 138412802;
        v20 = v10;
        v21 = 2048;
        v22 = v9;
        v23 = 2114;
        v24 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping demoted bundle: %@/%lu for managed persona %{public}@", buf, 0x20u);
        _MBLog(@"Df", "Skipping demoted bundle: %@/%lu for managed persona %{public}@", v10, v9, *(a1 + 32));
      }
    }

LABEL_28:
LABEL_29:
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100045580(uint64_t a1)
{
  objc_opt_class();
  qword_1004215C8 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100047CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100047CDC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  v6 = [v3 accountIdentifier];
  v7 = [v4 stringByAppendingFormat:@".%@", v6];
  [v5 setUniqueIdentifier:v7];

  [v5 setTypeIdentifier:v4];
  if ([v3 isPrimaryAccount])
  {
    v8 = [v3 accountIdentifier];
  }

  else
  {
    v9 = +[ACAccountStore defaultStore];
    v10 = [v3 accountIdentifier];
    v11 = [v9 accountWithIdentifier:v10];
    v8 = [v11 objectForKeyedSubscript:ACAccountPropertyRemoteManagingAccountIdentifier];
  }

  [v5 setAccountIdentifier:v8];
  [v5 setExtensionIdentifier:@"com.apple.MobileBackup.framework.FollowUpUIExtension"];

  return v5;
}

uint64_t sub_100047E3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100047E54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (v6)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get localized string from byte count: %{public}@", buf, 0xCu);
      _MBLog(@"E ", "Failed to get localized string from byte count: %{public}@", v6);
    }
  }
}

id sub_100047F48(uint64_t a1)
{
  [*(a1 + 32) _postFollowUpItem:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _refreshBackgroundRestoreFollowUps];
}

void sub_100048164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10004817C(uint64_t a1)
{
  [*(a1 + 32) _postFollowUpItem:*(*(*(a1 + 40) + 8) + 40)];
  v2 = *(a1 + 32);

  return [v2 _refreshBackgroundRestoreFollowUps];
}

void sub_1000495CC(id a1)
{
  qword_1004215D8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MBHelperServiceProtocol];

  _objc_release_x1();
}

void sub_100049614(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v1 = qword_1004215D0;
  qword_1004215D0 = 0;

  objc_sync_exit(obj);
}

int main(int argc, const char **argv, const char **envp)
{
  MBSetIsRunningInDaemon();
  MBLogEnableFileLogging();
  v3 = os_transaction_create();
  atexit_b(&stru_1003BC110);
  v4 = objc_autoreleasePoolPush();
  v5 = +[MBXPCServer sharedInstance];
  v6 = +[MBDaemon sharedDaemon];
  [v6 setupSignalHandlers];
  v7 = +[MBCKManager sharedInstance];
  [v7 setUpXPCEventHandler];
  v8 = +[MBBackupScheduler sharedInstance];
  v9 = +[_TtC7backupd19MBActivityScheduler sharedInstance];
  objc_autoreleasePoolPop(v4);
  v10 = objc_opt_self();

  if (!v6)
  {
    __assert_rtn("main", "backupd_main.m", 47, "daemon");
  }

  [v6 run];

  return 0;
}

void sub_10004A2B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2112;
        *&buf[14] = v9;
        v11 = *&buf[4];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ record: %@", buf, 0x16u);

        v12 = objc_opt_class();
        _MBLog(@"E ", "Failed to fetch %{public}@ record: %@", v12, v9, *buf, *&buf[8]);
      }
    }
  }

  else
  {
    [*(a1 + 32) refreshWithRecord:v8];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10004A54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004A564(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004A57C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10004AAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004AAE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    if ([MBError isCKNotFoundError:v8])
    {
      if (!v12)
      {
        __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]_block_invoke", "MBCKModel.m", 140, "recordID");
      }

      [*(a1 + 32) addObject:?];
    }

    else
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
    }

    objc_sync_exit(v9);
  }

  else
  {
    if (!v7)
    {
      __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]_block_invoke", "MBCKModel.m", 148, "record");
    }

    v10 = [objc_alloc(*(a1 + 64)) initWithRecord:v7 cache:*(a1 + 40)];
    v11 = *(a1 + 48);
    objc_sync_enter(v11);
    [*(a1 + 48) addObject:v10];
    objc_sync_exit(v11);

    v9 = v10;
  }
}

void sub_10004AC60(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = *(*(*(a1 + 64) + 8) + 40);
  }

  v6 = v3;
  v4 = [*(a1 + 32) count];
  v5 = &v4[[*(a1 + 40) count]];
  if (v5 > [*(a1 + 48) count])
  {
    __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]_block_invoke_2", "MBCKModel.m", 157, "children.count + missing.count <= refs.count");
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10004B154(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error preparing record %@ for save to server: %@", buf, 0x16u);
      _MBLog(@"E ", "Error preparing record %@ for save to server: %@", *(a1 + 32), v3);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) addSavesWithOperationTracker:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void sub_10004B394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004B3AC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10004B760(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error preparing record %@ for save to server: %@", buf, 0x16u);
      _MBLog(@"E ", "Error preparing record %@ for save to server: %@", *(a1 + 32), v3);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) addSavesWithBatchSave:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void sub_10004C184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C19C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10004CB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004CB24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004CB3C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10004CDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004CDE0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleAssetFetchResponseFor:*(a1 + 32) record:v9 withFetchError:v6];
  }
}

int64_t sub_10004D714(id a1, MBCKSnapshot *a2, MBCKSnapshot *a3)
{
  v4 = a3;
  v5 = [(MBCKSnapshot *)a2 created];
  v6 = [(MBCKSnapshot *)v4 created];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10004EC44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v21 = v5;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error fetching manifest records from server for domain %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Error fetching manifest records from server for domain %@: %@", *(a1 + 32), v3);
    }

    v6 = *(a1 + 40);
    objc_sync_enter(v6);
    [*(a1 + 40) addObject:v3];
    objc_sync_exit(v6);
  }

  else
  {
    v7 = [*(a1 + 48) domainName];

    if (v7)
    {
      v8 = *(*(a1 + 56) + 72);
      objc_sync_enter(v8);
      v9 = *(a1 + 48);
      v10 = *(*(a1 + 56) + 72);
      v11 = [v9 domainName];
      [v10 setObject:v9 forKeyedSubscript:v11];

      objc_sync_exit(v8);
      v12 = *(a1 + 64);
      if (v12)
      {
        (*(v12 + 16))(v12, *(a1 + 48));
      }
    }

    else
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 48) recordID];
        *buf = 138543362;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Manifest %{public}@ had no domain name", buf, 0xCu);

        v15 = [*(a1 + 48) recordID];
        _MBLog(@"E ", "Manifest %{public}@ had no domain name", v15);
      }

      v16 = *(a1 + 40);
      objc_sync_enter(v16);
      v17 = *(a1 + 40);
      v18 = [*(a1 + 48) recordID];
      v19 = [MBError errorWithCode:4 format:@"Manifest %@ had no domain name", v18];
      [v17 addObject:v19];

      objc_sync_exit(v16);
    }
  }
}

void sub_10004EF08(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = [MBError errorWithErrors:*(a1 + 32)];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!v3)
    {
LABEL_9:
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 40) snapshotID];
        *buf = 138412290;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Done fetching all manifests from the server for snapshot %@", buf, 0xCu);

        v10 = [*(a1 + 40) snapshotID];
        _MBLog(@"I ", "Done fetching all manifests from the server for snapshot %@", v10);
      }

      v4 = 0;
      *(*(a1 + 40) + 106) = 1;
      goto LABEL_12;
    }

    v4 = v3;
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 40) snapshotID];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to fetch the manifest records from the server for snapshot %@: %@", buf, 0x16u);

    v7 = [*(a1 + 40) snapshotID];
    _MBLog(@"E ", "Failed to fetch the manifest records from the server for snapshot %@: %@", v7, v4);
  }

LABEL_12:
  (*(*(a1 + 48) + 16))();
}

void sub_10004F250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004F268(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004F280(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100050118(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to delete old manifests: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to delete old manifests: %@", v3);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000501F4(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  v3 = [v2 deleteCloudFilesPendingDeleteForManifestID:*(a1 + 40)];

  v4 = *(a1 + 48);

  dispatch_group_leave(v4);
}

void sub_10005024C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to reclaim quota for replaced files: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to reclaim quota for replaced files: %@", v3);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100050328(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    [*(a1 + 32) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000503B4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100050414(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) count])
  {
    v3 = [MBError errorWithErrors:*(a1 + 32)];
    if (!v3)
    {
      goto LABEL_9;
    }

LABEL_6:
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      *buf = 138543618;
      v32 = v6;
      v33 = 2112;
      v34 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to prepare the manifests for snapshot %{public}@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to prepare the manifests for snapshot %{public}@: %@", *(a1 + 40), v3);
    }

    (*(*(a1 + 56) + 16))();
    goto LABEL_30;
  }

  v4 = *(*(*(a1 + 64) + 8) + 40);
  if (v4)
  {
    v3 = v4;
    goto LABEL_6;
  }

LABEL_9:
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    *buf = 138543362;
    v32 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully prepared all manifests for snapshot %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Successfully prepared all manifests for snapshot %{public}@", *(a1 + 40));
  }

  v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 48) + 72), "count")}];
  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 48) + 72), "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [*(*(a1 + 48) + 72) allValues];
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v12)
  {
    v3 = 0;
    goto LABEL_29;
  }

  v13 = v12;
  v14 = *v27;
  while (2)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v27 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v26 + 1) + 8 * i);
      if (([v16 isPersistedToServer] & 1) == 0)
      {
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = v16;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Attempted to commit a snapshot with unsaved manifest: %@", buf, 0xCu);
          _MBLog(@"E ", "Attempted to commit a snapshot with unsaved manifest: %@", v16);
        }

        v20 = @"Attempted to commit a snapshot with unsaved manifest";
        goto LABEL_28;
      }

      v17 = [v16 domainName];

      if (!v17)
      {
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v21 = [v16 recordRepresentation];
          *buf = 138412546;
          v32 = v16;
          v33 = 2112;
          v34 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Manifest has no domain name: %@, %@", buf, 0x16u);

          v22 = [v16 recordRepresentation];
          _MBLog(@"E ", "Manifest has no domain name: %@, %@", v16, v22);
        }

        v20 = @"Attempted to add a manifest without a domain name to a snapshot";
LABEL_28:

        v3 = [MBError errorWithCode:306 format:v20];
        goto LABEL_29;
      }

      [v9 addObject:v16];
      v18 = [v16 baseRecordIDString];
      [v10 addObject:v18];
    }

    v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    v3 = 0;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v23 = *(a1 + 48);
  v24 = *(v23 + 136);
  *(v23 + 136) = v10;
  v25 = v10;

  (*(*(a1 + 56) + 16))();
LABEL_30:

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100052B6C(id *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138544130;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2048;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=commit= Marking domain %{public}@ (baseRecordID:%@ pageCount:%llu) checksum [0x%llx] as modified", buf, 0x2Au);
    _MBLog(@"I ", "=commit= Marking domain %{public}@ (baseRecordID:%@ pageCount:%llu) checksum [0x%llx] as modified", v9, v10, a4, a5);
  }

  v12 = [[MBCKSnapshotToDomainRecordReference alloc] initWithBaseRecordID:v10 pageCount:a4 checksum:a5];
  [a1[4] addObject:v12];
  [a1[5] trackModifiedDomainInCommit:v9];
  if ([a1[6] count])
  {
    v13 = [MBDomainRecord domainHmacFromBaseRecordID:v10];
    if ([a1[6] containsObject:v13])
    {
      [a1[5] trackRepairedDomain:v9];
      [a1[5] trackDeletedDomainInCommit:v9];
      [a1[7] removeObject:v13];
    }
  }

  return 1;
}

uint64_t sub_100052D1C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MBDomainRecord domainHmacFromBaseRecordID:v6];
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "=commit= Marking domain %{public}@ with hmac %@ and baseRecordID %@ to be removed", buf, 0x20u);
    _MBLog(@"I ", "=commit= Marking domain %{public}@ with hmac %@ and baseRecordID %@ to be removed", v5, v7, v6);
  }

  [a1[4] addObject:v7];
  [a1[5] trackDeletedDomainInCommit:v5];
  if ([a1[6] count])
  {
    v9 = [MBDomainRecord domainHmacFromBaseRecordID:v6];
    if ([a1[6] containsObject:v9])
    {
      [a1[5] trackRepairedDomain:v5];
      [a1[7] removeObject:v9];
    }
  }

  return 1;
}

id MBGetLatestDomainRecordReferencesFromSnapshots(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v1;
  v36 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v36)
  {
    v35 = *v47;
    do
    {
      v3 = 0;
      do
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v46 + 1) + 8 * v3);
        v5 = MBGetDefaultLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [v4 snapshotID];
          *buf = 138412290;
          v52 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=replay= Starting to replay snapshot: %@", buf, 0xCu);

          v7 = [v4 snapshotID];
          _MBLog(@"Df", "=replay= Starting to replay snapshot: %@", v7);
        }

        [v4 type];
        v37 = v3;
        if (MBSnapshotTypeIsFull())
        {
          v8 = MBGetDefaultLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = [v4 snapshotID];
            *buf = 138412290;
            v52 = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=replay= Detected full backup for %@, invalidating latest refs", buf, 0xCu);

            v10 = [v4 snapshotID];
            _MBLog(@"Df", "=replay= Detected full backup for %@, invalidating latest refs", v10);
          }

          v11 = objc_opt_new();
          v2 = v11;
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v12 = [v4 domainHmacsToRemove];
        v13 = [v12 countByEnumeratingWithState:&v42 objects:v55 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v43;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v43 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v42 + 1) + 8 * i);
              v18 = MBGetDefaultLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v19 = [v4 snapshotID];
                *buf = 138412546;
                v52 = v19;
                v53 = 2112;
                v54 = v17;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=replay= Snapshot %@ contains reference to deleted domain hmac %@", buf, 0x16u);

                v20 = [v4 snapshotID];
                _MBLog(@"I ", "=replay= Snapshot %@ contains reference to deleted domain hmac %@", v20, v17);
              }

              [v2 setObject:0 forKeyedSubscript:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v42 objects:v55 count:16];
          }

          while (v14);
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v21 = [v4 modifiedDomainRecordReferences];
        v22 = [v21 countByEnumeratingWithState:&v38 objects:v50 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v39;
          do
          {
            for (j = 0; j != v23; j = j + 1)
            {
              if (*v39 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v38 + 1) + 8 * j);
              v27 = [v26 baseRecordID];
              v28 = [MBDomainRecord domainHmacFromBaseRecordID:v27];
              [v2 setObject:v26 forKeyedSubscript:v28];
              v29 = MBGetDefaultLog();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = [v4 snapshotID];
                *buf = 138412546;
                v52 = v30;
                v53 = 2112;
                v54 = v27;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "=replay= Snapshot %@ contains reference to modified domain baseRecordID: %@", buf, 0x16u);

                v31 = [v4 snapshotID];
                _MBLog(@"I ", "=replay= Snapshot %@ contains reference to modified domain baseRecordID: %@", v31, v27);
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v38 objects:v50 count:16];
          }

          while (v23);
        }

        v3 = v37 + 1;
      }

      while ((v37 + 1) != v36);
      v36 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v36);
  }

  v32 = [v2 allValues];

  return v32;
}

NSMutableSet *MBGetAllDomainHMACsInSnapshots(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v17 = *v23;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        [v6 type];
        if (MBSnapshotTypeIsFull())
        {
          v7 = objc_opt_new();

          v2 = v7;
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = [v6 modifiedDomainRecordReferences];
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v18 + 1) + 8 * j) baseRecordID];
              v14 = [MBDomainRecord domainHmacFromBaseRecordID:v13];
              [v2 addObject:v14];
            }

            v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v10);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  return v2;
}

NSMutableDictionary *MBGetAllDomainQuotasByDomainHMAC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 indexOfObjectPassingTest:&stru_1003BC3C0];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a2)
    {
      [MBError errorWithCode:204 format:@"No domains assets snapshot found"];
      *a2 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v30 = v3;
    v6 = [v3 subarrayWithRange:{v4, objc_msgSend(v3, "count") - v4}];
    v7 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v29 = a2;
      v32 = *v38;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          [v11 type];
          if (MBSnapshotTypeIsFull())
          {
            v12 = objc_opt_new();

            v7 = v12;
          }

          v13 = [v11 domainRecordQuotas];
          if (!v13)
          {
            v24 = MBGetDefaultLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = [v11 recordID];
              *buf = 138412290;
              v43 = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Domain quotas missing from snapshot record %@", buf, 0xCu);

              v26 = [v11 recordID];
              _MBLog(@"E ", "Domain quotas missing from snapshot record %@", v26);
            }

            v3 = v30;
            if (v29)
            {
              v27 = [v11 recordID];
              *v29 = [MBError errorWithCode:4 format:@"Domain quotas missing from snapshot record %@", v27];
            }

            v23 = obj;

            v5 = 0;
            goto LABEL_30;
          }

          v14 = v13;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v15 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v34;
            do
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v34 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v33 + 1) + 8 * j);
                v20 = [v19 domainHmac];
                v21 = [v7 objectForKeyedSubscript:v20];

                if (v21)
                {
                  v22 = [v7 objectForKeyedSubscript:v20];
                  [v22 addQuota:{objc_msgSend(v19, "quota")}];
                }

                else
                {
                  [v7 setObject:v19 forKeyedSubscript:v20];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v16);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v23 = obj;

    v7 = v7;
    v5 = v7;
    v3 = v30;
LABEL_30:
  }

  return v5;
}

uint64_t MBSnapshotTypeForFormatTransition(id a1, id a2, void *a3)
{
  if (a1 == -1)
  {
    __assert_rtn("MBSnapshotTypeForFormatTransition", "MBCKSnapshot.m", 1035, "previousFormat != MBSnapshotFormatUnspecified");
  }

  if (a2 == -1)
  {
    __assert_rtn("MBSnapshotTypeForFormatTransition", "MBCKSnapshot.m", 1036, "nextFormat != MBSnapshotFormatUnspecified");
  }

  if (a1 == a2)
  {
    goto LABEL_4;
  }

  v3 = a2;
  if (a2 != 3)
  {
    if (a2)
    {
      if (a1 <= a2)
      {
LABEL_4:
        v3 = 1;
        goto LABEL_12;
      }

      if (a3)
      {
        *a3 = [MBError errorWithCode:205 format:@"Invalid format transition %llu -> %llu", a1, a2];
      }

      v3 = -1;
    }

    else
    {
      v3 = 2;
    }
  }

LABEL_12:
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MBStringForSnapshotType();
    v7 = MBStringForSnapshotFormat();
    v8 = MBStringForSnapshotFormat();
    *buf = 138412802;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Determined snapshot type:%@ for format transition %@ -> %@", buf, 0x20u);

    v9 = MBStringForSnapshotType();
    v10 = MBStringForSnapshotFormat();
    v11 = MBStringForSnapshotFormat();
    _MBLog(@"Df", "Determined snapshot type:%@ for format transition %@ -> %@", v9, v10, v11);
  }

  return v3;
}

NSMutableString *MBOperationGroupNamePrefixForBackup(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = objc_opt_new();
  v6 = MBStringForSnapshotFormat();
  [v5 appendFormat:@"%@|", v6];

  if (v4 && [v4 snapshotFormat] < a2)
  {
    [v5 appendFormat:@"transition|"];
  }

  else
  {
    v7 = MBStringForSnapshotType();
    [v5 appendFormat:@"%@|", v7];
  }

  v8 = +[MBBehaviorOptions sharedOptions];
  [v5 appendFormat:@"%d|", objc_msgSend(v8, "isAutomation")];

  return v5;
}

BOOL MBSnapshotsAreTransitioningFormats(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    __assert_rtn("MBSnapshotsAreTransitioningFormats", "MBCKSnapshot.m", 1075, "currentSnapshot");
  }

  v5 = v4;
  if (v3)
  {
    v6 = [v3 snapshotFormat];
    v7 = v6 != [v5 snapshotFormat];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

const __CFString *MBStringForCameraRollState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unspecified";
  }

  else
  {
    return off_1003BC3E0[a1 - 1];
  }
}

id sub_100056288(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.01 maxProgress:0.05];

  v5 = *(a1 + 32);

  return [v5 refreshCacheWithError:a2];
}

id sub_1000562F4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.05 maxProgress:0.1];

  v5 = *(a1 + 32);

  return [v5 synchronizeFileListsWithError:a2];
}

id sub_10005636C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) progressModel];
  [v4 beginStageWithMinProgress:0.1 maxProgress:0.95];

  v5 = *(a1 + 32);

  return [v5 downloadRestorablesWithError:a2];
}

void sub_100058D94(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v11 = v7;
    v12 = 1024;
    v13 = a4;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= =sync= Fetched %@ (downloaded: %d) with reference %@", buf, 0x1Cu);
    _MBLog(@"Df", "=ckrestore-engine= =sync= Fetched %@ (downloaded: %d) with reference %@", v7, a4, v8);
  }

  [*(a1 + 32) addObject:v7];
}

void sub_1000591A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_1000591E0(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBCKRestoreEngine _markForegroundRestorablesForBackgroundRestoreInPlan:domainName:error:]_block_invoke", "MBCKRestoreEngine.m", 871, "restorable");
  }

  if (!a3)
  {
    __assert_rtn("[MBCKRestoreEngine _markForegroundRestorablesForBackgroundRestoreInPlan:domainName:error:]_block_invoke", "MBCKRestoreEngine.m", 872, "enumeratorError");
  }

  v6 = v5;
  ++*(*(a1[5] + 8) + 24);
  v7 = [*(a1[4] + 280) foregroundStateForRestorable:v5];
  if (v7 == 3)
  {
    ++*(*(a1[6] + 8) + 24);
  }

  return v7;
}

uint64_t sub_100059C00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100059C18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 relativePath];

  if (!v4)
  {
    v7 = MBGetDefaultLog();
    v16 = 1;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v17 = [v3 fileID];
    *buf = 138412546;
    v30 = v17;
    v31 = 1024;
    LODWORD(v32) = [v3 deleted];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=ckrestore-engine= Ignoring fileID: %@ with NULL relativePath (deleted: %d)", buf, 0x12u);

    v18 = [v3 fileID];
    _MBLog(@"I ", "=ckrestore-engine= Ignoring fileID: %@ with NULL relativePath (deleted: %d)", v18, [v3 deleted]);
    goto LABEL_24;
  }

  v5 = *(a1 + 32);
  v6 = [v3 domainName];
  v7 = [v5 domainForName:v6];

  if (!v7)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Unable to get domain for file: %@", buf, 0xCu);
      _MBLog(@"E ", "=ckrestore-engine= Unable to get domain for file: %@", v3);
    }

    v7 = 0;
    goto LABEL_24;
  }

  [v3 setupWithDomain:v7];
  v8 = [v3 relativePath];
  if (v8)
  {
    v9 = v8;
    v10 = [*(a1 + 40) restorePolicy];
    v11 = [v10 shouldRestoreSystemFile:v3];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  if ([v3 size])
  {
    v12 = [v3 signature];
    if (!v12)
    {
      __assert_rtn("[MBCKRestoreEngine findRestorablesWithError:]_block_invoke", "MBCKRestoreEngine.m", 949, "file.size == 0 || file.signature");
    }
  }

  if (![v3 volumeType])
  {
    __assert_rtn("[MBCKRestoreEngine findRestorablesWithError:]_block_invoke", "MBCKRestoreEngine.m", 950, "file.volumeType != MBVolumeTypeUnspecified");
  }

  v13 = [*(a1 + 48) addFileToRestoreFiles:v3];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v18 = [v7 name];
    v19 = *(*(a1 + 64) + 8);
    v22 = *(v19 + 40);
    v20 = (v19 + 40);
    v21 = v22;
    if (v22)
    {
      if ([v21 isEqualToString:v18])
      {
        v23 = *(*(a1 + 72) + 8);
        v24 = *(v23 + 24) + 1;
LABEL_23:
        *(v23 + 24) = v24;
        ++*(*(*(a1 + 80) + 8) + 24);
LABEL_24:

LABEL_25:
        v16 = 1;
        goto LABEL_26;
      }

      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(*(*(a1 + 72) + 8) + 24);
        v27 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 134218242;
        v30 = v26;
        v31 = 2114;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Found %llu restorables for %{public}@", buf, 0x16u);
        _MBLog(@"Df", "=ckrestore-engine= Found %llu restorables for %{public}@", *(*(*(a1 + 72) + 8) + 24), *(*(*(a1 + 64) + 8) + 40));
      }

      v20 = (*(*(a1 + 64) + 8) + 40);
    }

    objc_storeStrong(v20, v18);
    v23 = *(*(a1 + 72) + 8);
    v24 = 1;
    goto LABEL_23;
  }

  v16 = 0;
LABEL_26:

  return v16;
}

uint64_t sub_10005B144(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] useFileLists])
  {
    [a1[5] addObject:v3];
  }

  if (([a1[6] isSystemDomainName:v3] & 1) != 0 || (+[MBDomain isSystemContainerName:](MBDomain, "isSystemContainerName:", v3) & 1) != 0 || (+[MBDomain isSystemSharedContainerName:](MBDomain, "isSystemSharedContainerName:", v3) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"SkippedFilesDomain"))
  {
    [a1[7] addObject:v3];
  }

  else if (([a1[4] useFileLists] & 1) == 0 && +[MBDomain isLegacyPerAppPlaceholderName:](MBDomain, "isLegacyPerAppPlaceholderName:", v3))
  {
    v5 = [MBDomain containerIDWithName:v3];
    v6 = [a1[4] excludedAppBundleIDs];
    v7 = [v6 containsObject:v5];

    if (v7)
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Excluding legacy app placeholder for %{public}@", buf, 0xCu);
        _MBLog(@"Df", "=ckrestore-engine= Excluding legacy app placeholder for %{public}@", v5);
      }
    }

    else
    {
      [a1[4] _uninstallExistingAppWithBundleID:v5];
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= App wasn't already installed %@. Adding it to domainNamesToRestore", buf, 0xCu);
        _MBLog(@"Df", "=ckrestore-engine= App wasn't already installed %@. Adding it to domainNamesToRestore", v5);
      }

      [a1[7] addObject:v3];
    }
  }

  return 1;
}

uint64_t sub_10005B36C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) excludedAppBundleIDs];
  v5 = [v4 containsObject:v3];

  v6 = MBGetDefaultLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Excluding app placeholder for %{public}@", buf, 0xCu);
      _MBLog(@"Df", "=ckrestore-engine= Excluding app placeholder for %{public}@", v3);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=ckrestore-engine= Found placeholder ipa corresponding to bundleID %@", buf, 0xCu);
      _MBLog(@"I ", "=ckrestore-engine= Found placeholder ipa corresponding to bundleID %@", v3);
    }

    [*(a1 + 32) _uninstallExistingAppWithBundleID:v3];
  }

  return 1;
}

id sub_10005B4E4(id result, uint64_t a2, uint64_t a3)
{
  if (!(a3 | a2))
  {
    v3 = result;
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 4);
      *buf = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Removing from foreground restore: %@ (not present in backup)", buf, 0xCu);
      _MBLog(@"Df", "=ckrestore-engine= Removing from foreground restore: %@ (not present in backup)", *(v3 + 4));
    }

    return [*(v3 + 5) addObject:*(v3 + 4)];
  }

  return result;
}

void sub_10005BF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005BF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ([*(a1 + 32) containsObject:a2])
  {
    *(*(*(a1 + 40) + 8) + 24) += a4 - a6;
    *(*(*(a1 + 48) + 8) + 24) += a5 - a7;
  }

  else
  {
    a6 = a4;
    a7 = a5;
  }

  *(*(*(a1 + 56) + 8) + 24) += a6;
  *(*(*(a1 + 64) + 8) + 24) += a7;
  return 1;
}

void sub_10005C56C(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) restoreRootPath];
    *buf = 138543618;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Starting domain restore for %{public}@ at path %@", buf, 0x16u);

    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) restoreRootPath];
    _MBLog(@"Df", "=ckrestore-engine= Starting domain restore for %{public}@ at path %@", v5, v6);
  }

  v7 = *(a1 + 40);
  v14 = 0;
  v8 = [v7 runWithError:&v14];
  v9 = v14;
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=ckrestore-engine= Finished domain restore for %{public}@", buf, 0xCu);
      _MBLog(@"I ", "=ckrestore-engine= Finished domain restore for %{public}@", *(a1 + 32));
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to restore using plan for domain %{public}@: %@", buf, 0x16u);
      _MBLog(@"E ", "=ckrestore-engine= Failed to restore using plan for domain %{public}@: %@", *(a1 + 32), v9);
    }

    v11 = *(a1 + 48);
    objc_sync_enter(v11);
    [*(a1 + 48) addObject:v9];
    objc_sync_exit(v11);
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_10005D4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose(&STACK[0x278], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005D5BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 size];
  *(*(*(a1 + 48) + 8) + 24) += &v4[[v3 resourcesSize]];
  v5 = [*(a1 + 32) domainManager];
  v6 = [v3 domainName];
  v7 = [v5 domainForName:v6];

  v8 = *(a1 + 40);
  v9 = [v7 name];
  LODWORD(v8) = [v8 containsObject:v9];

  if (v8)
  {
    v10 = [v3 size];
    *(*(*(a1 + 56) + 8) + 24) += &v10[[v3 resourcesSize]];
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  return 1;
}

uint64_t sub_10005D6D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isRegularFile] && (objc_msgSend(v3, "deleted") & 1) == 0)
  {
    v5 = [v3 size];
    v6 = &v5[[v3 resourcesSize]];
    v7 = [*(a1 + 32) domainManager];
    v8 = [v3 domainName];
    v9 = [v7 domainForName:v8];

    v10 = *(a1 + 40);
    v11 = [v9 name];
    LOBYTE(v10) = [v10 containsObject:v11];

    if ((v10 & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) += v6;
      ++*(*(*(a1 + 64) + 8) + 24);
      v4 = 1;
LABEL_20:

      goto LABEL_21;
    }

    [v3 setupWithDomain:v9];
    v24 = 0;
    v12 = *(*(a1 + 32) + 280);
    v23 = 0;
    v13 = [v12 shouldRestoreFile:v3 markFileAsSkipped:&v24 error:&v23];
    v14 = v23;
    if (v13)
    {
      if (([v3 downloaded] & 1) == 0)
      {
        ++*(*(*(a1 + 72) + 8) + 24);
        *(*(*(a1 + 80) + 8) + 24) += v6;
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v26 = v3;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=ckrestore-engine= Adding file to download batch: %@", buf, 0xCu);
          _MBLog(@"I ", "=ckrestore-engine= Adding file to download batch: %@", v3);
        }

        [*(a1 + 48) prefetchRecord:v3];
      }

      ++*(*(*(a1 + 88) + 8) + 24);
      v16 = *(*(a1 + 96) + 8);
      v17 = &v6[*(v16 + 24)];
    }

    else
    {
      v18 = [*(a1 + 32) progressModel];
      [v18 finishedItem:v3 size:v6];

      if (v24 == 1)
      {
        v19 = [*(a1 + 32) cache];
        v20 = [v19 setRestoreState:13 forFile:v3];

LABEL_18:
        v4 = 1;
LABEL_19:

        goto LABEL_20;
      }

      if (v14 && ([MBError isError:v14 withCode:213]& 1) == 0)
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v26 = v3;
          v27 = 2112;
          v28 = v14;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Failed to determine if file %@ should be restored: %@", buf, 0x16u);
          _MBLog(@"E ", "=ckrestore-engine= Failed to determine if file %@ should be restored: %@", v3, v14);
        }

        v4 = 0;
        goto LABEL_19;
      }

      *(*(*(a1 + 56) + 8) + 24) += v6;
      v16 = *(*(a1 + 64) + 8);
      v17 = *(v16 + 24) + 1;
    }

    *(v16 + 24) = v17;
    goto LABEL_18;
  }

  v4 = 1;
LABEL_21:

  return v4;
}

void sub_10005E884(id a1)
{
  qword_1004215E8 = objc_opt_new();

  _objc_release_x1();
}

void sub_10005F6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id obj, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&a41, 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_10005F748(id a1)
{
  qword_1004215F8 = objc_opt_new();

  _objc_release_x1();
}

int64_t sub_10005F7A4(id a1, id a2, id a3)
{
  if ([a2 containerType] == 1)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_10006171C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domainName];
  v5 = [v3 entitlements];
  v6 = v5;
  if (v5)
  {
    if (![v5 count])
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= No entitlements for domain %@", buf, 0xCu);
        _MBLog(@"Df", "=ckrestore-engine= No entitlements for domain %@", v4);
      }
    }

    v8 = [v3 entitlementsPath];
    v9 = [v3 owningBundleID];
    if (!v9)
    {
      v9 = [MBDomain containerIDWithName:v4];
    }

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=ckrestore-engine= Setting entitlements for %@ (%@): %@", buf, 0x20u);
      _MBLog(@"Df", "=ckrestore-engine= Setting entitlements for %@ (%@): %@", v9, v8, v6);
    }

    v11 = [[MBPlaceholderEntitlements alloc] initWithBundleID:v9 relativePath:v8 entitlements:v6];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v4];
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=ckrestore-engine= Found nil entitlements dictionary for domain %@", buf, 0xCu);
      _MBLog(@"E ", "=ckrestore-engine= Found nil entitlements dictionary for domain %@", v4);
    }
  }

  return 1;
}

void sub_100063EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100063EFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100063F14(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 encryptionKey];
  v7 = a1[9];
  v8 = [*(a1[6] + 16) hardwareModel];
  v9 = *(a1[8] + 8);
  obj = *(v9 + 40);
  LOBYTE(v3) = [v5 decryptFileWithPath:v3 encryptionKey:v6 size:v7 hardwareModel:v8 error:&obj];

  objc_storeStrong((v9 + 40), obj);
  *(*(a1[7] + 8) + 24) = v3;
}

void sub_100064E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100064E78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_6:
    dispatch_group_leave(*(a1 + 32));
    goto LABEL_10;
  }

  v4 = atomic_load(WeakRetained + 8);
  v5 = MBGetDefaultLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=cache-delete= Request already cancelled", buf, 2u);
      _MBLog(@"Df", "=cache-delete= Request already cancelled");
    }

    goto LABEL_6;
  }

  if (v6)
  {
    v7 = *(a1 + 40);
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=cache-delete= Requesting purge: %@", buf, 0xCu);
    _MBLog(@"Df", "=cache-delete= Requesting purge: %@", *(a1 + 40));
  }

  v8 = *(a1 + 32);
  v3[2] = CacheDeletePurgeSpaceWithInfo();

LABEL_10:
}