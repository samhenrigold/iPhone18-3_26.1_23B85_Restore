void sub_10016FB58()
{
  if (*(v0 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine))
  {

    v1 = sub_1001C5128();
    v2 = sub_1001C65B8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "BDSSyncEngine - setting hasPendingUntrackedChanges=false", v3, 2u);
    }

    sub_1001C55E8();
    sub_1001C55C8();
  }

  else
  {
    oslog = sub_1001C5128();
    v4 = sub_1001C6598();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1001874E8(0xD00000000000001FLL, 0x8000000100204090, &v8);
      _os_log_impl(&_mh_execute_header, oslog, v4, "BDSSyncEngine - %s: syncEngine not initialized", v5, 0xCu);
      sub_10008E7BC(v6);
    }
  }
}

void sub_10016FD38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10016FE1C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltObservers) addObject:a2];
    v5 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
    swift_beginAccess();
    v6 = *&v4[v5];
    if (v6 && [v6 establishedSalt] && (v7 = *&v4[v5]) != 0 && (v8 = objc_msgSend(v7, "establishedSaltVersionIdentifier")) != 0)
    {
      v9 = v8;
      v10 = sub_1001C5128();
      v11 = sub_1001C65B8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "BDSSyncEngine: Added salt change observer with a valid salt. Calling -saltUpdated with current salt", v12, 2u);
      }

      [a2 saltUpdatedWithSaltVersionIdentifier:v9];
    }

    else
    {
      v13 = sub_1001C5128();
      v14 = sub_1001C65B8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "BDSSyncEngine: Added salt change observer but no valid salt yet", v15, 2u);
      }

      v9 = v4;
      v4 = v13;
    }
  }
}

Swift::Bool __swiftcall BDSSyncEngine.establishedSalt()()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    LOBYTE(v2) = [v2 establishedSalt];
  }

  return v2;
}

Swift::Void __swiftcall BDSSyncEngine.reestablishSalt()()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    aBlock[4] = sub_1001838DC;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10016FD38;
    aBlock[3] = &unk_10024B428;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v0;

    [v5 refreshSalt:v4];
    _Block_release(v4);
  }

  else
  {
    v5 = sub_1001C5128();
    v7 = sub_1001C6598();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, v7, "BDSSyncEngine - reestablishSalt: saltManager not initialized", v8, 2u);
    }
  }
}

void sub_100170250(uint64_t a1)
{
  swift_errorRetain();
  oslog = sub_1001C5128();
  v1 = sub_1001C6598();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138543362;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "BDSSyncEngine: Error encountered while trying to refresh salt: %{public}@", v2, 0xCu);
    sub_10008875C(v3, &unk_1002718E0, &qword_1001F31F0);
  }
}

Swift::Void __swiftcall BDSSyncEngine.reestablishSaltIfNeeded()()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    aBlock[4] = sub_1001838DC;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10016FD38;
    aBlock[3] = &unk_10024B478;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v0;

    [v5 refreshSaltIfNeeded:v4];
    _Block_release(v4);
  }

  else
  {
    v5 = sub_1001C5128();
    v7 = sub_1001C6598();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, v7, "BDSSyncEngine - reestablishSaltIfNeeded: saltManager not initialized", v8, 2u);
    }
  }
}

void sub_10017057C()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 invalidateSalt];
  }

  else
  {
    v3 = sub_1001C5128();
    v4 = sub_1001C6598();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "BDSSyncEngine - invalidateSalt: saltManager not initialized", v5, 2u);
    }
  }
}

uint64_t sub_100170654(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000B3A90(a3, v5);
  swift_beginAccess();
  sub_10019A09C(v5, a2);
  return swift_endAccess();
}

uint64_t sub_1001706CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_registeredDataSourceByRecordType;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16) && (v8 = sub_100187D7C(a2), (v9 & 1) != 0))
  {
    sub_1000B3A90(*(v7 + 56) + 40 * v8, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return swift_endAccess();
}

Swift::Void __swiftcall BDSSyncEngine.add(recordZonesToSave:)(Swift::OpaquePointer recordZonesToSave)
{
  v2 = v1;
  v4 = sub_1001C5328();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (v28 - v9);
  v11 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  if (v11)
  {

    rawValue = recordZonesToSave._rawValue;
    v12 = sub_1001C55E8();
    if (rawValue >> 62)
    {
      v13 = sub_1001C6B38();
    }

    else
    {
      v13 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = _swiftEmptyArrayStorage;
    if (!v13)
    {
LABEL_21:
      v27._rawValue = v14;
      sub_1001C55D8(v27);

      sub_100170BC8();

      return;
    }

    v32 = _swiftEmptyArrayStorage;
    sub_1000D38D8(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v28[0] = v12;
      v28[1] = v11;
      v28[2] = v2;
      v14 = v32;
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v15 = 0;
        LODWORD(v31) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
        v30 = v5 + 32;
        do
        {
          *v10 = sub_1001C69F8();
          (*(v5 + 104))(v10, v31, v4);
          v32 = v14;
          v17 = v14[2];
          v16 = v14[3];
          if (v17 >= v16 >> 1)
          {
            sub_1000D38D8((v16 > 1), v17 + 1, 1);
            v14 = v32;
          }

          ++v15;
          v14[2] = v17 + 1;
          (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v10, v4);
        }

        while (v13 != v15);
      }

      else
      {
        v22 = (rawValue + 32);
        LODWORD(v31) = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
        rawValue = *(v5 + 104);
        v30 = v5 + 104;
        v28[3] = v5 + 32;
        do
        {
          v23 = *v22;
          *v8 = *v22;
          (rawValue)(v8, v31, v4);
          v32 = v14;
          v25 = v14[2];
          v24 = v14[3];
          v26 = v23;
          if (v25 >= v24 >> 1)
          {
            sub_1000D38D8((v24 > 1), v25 + 1, 1);
            v14 = v32;
          }

          v14[2] = v25 + 1;
          (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, v8, v4);
          ++v22;
          --v13;
        }

        while (v13);
      }

      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
    v31 = sub_1001C5128();
    v18 = sub_1001C65A8();
    if (os_log_type_enabled(v31, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1001874E8(0xD000000000000017, 0x8000000100203AD0, &v32);
      _os_log_impl(&_mh_execute_header, v31, v18, "BDSSyncEngine - %s: syncEngine not initialized", v19, 0xCu);
      sub_10008E7BC(v20);
    }

    else
    {
      v21 = v31;
    }
  }
}

void sub_100170BC8()
{
  if (*(v0 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine))
  {

    v1 = sub_1001C5128();
    v2 = sub_1001C65B8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "BDSSyncEngine - setting hasPendingUntrackedChanges=true", v3, 2u);
    }

    sub_1001C55E8();
    sub_1001C55C8();
  }

  else
  {
    oslog = sub_1001C5128();
    v4 = sub_1001C6598();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1001874E8(0x6C7564656863735FLL, 0xEF2928636E795365, &v8);
      _os_log_impl(&_mh_execute_header, oslog, v4, "BDSSyncEngine - %s: syncEngine not initialized", v5, 0xCu);
      sub_10008E7BC(v6);
    }
  }
}

Swift::Void __swiftcall BDSSyncEngine.add(recordZoneIDsToDelete:)(Swift::OpaquePointer recordZoneIDsToDelete)
{
  v2 = v1;
  v4 = sub_1001C5328();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = (v28 - v9);
  v11 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  if (v11)
  {

    rawValue = recordZoneIDsToDelete._rawValue;
    v12 = sub_1001C55E8();
    if (rawValue >> 62)
    {
      v13 = sub_1001C6B38();
    }

    else
    {
      v13 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = _swiftEmptyArrayStorage;
    if (!v13)
    {
LABEL_21:
      v27._rawValue = v14;
      sub_1001C55D8(v27);

      sub_100170BC8();

      return;
    }

    v32 = _swiftEmptyArrayStorage;
    sub_1000D38D8(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v28[0] = v12;
      v28[1] = v11;
      v28[2] = v2;
      v14 = v32;
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v15 = 0;
        LODWORD(v31) = enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:);
        v30 = v5 + 32;
        do
        {
          *v10 = sub_1001C69F8();
          (*(v5 + 104))(v10, v31, v4);
          v32 = v14;
          v17 = v14[2];
          v16 = v14[3];
          if (v17 >= v16 >> 1)
          {
            sub_1000D38D8((v16 > 1), v17 + 1, 1);
            v14 = v32;
          }

          ++v15;
          v14[2] = v17 + 1;
          (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v10, v4);
        }

        while (v13 != v15);
      }

      else
      {
        v22 = (rawValue + 32);
        LODWORD(v31) = enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:);
        rawValue = *(v5 + 104);
        v30 = v5 + 104;
        v28[3] = v5 + 32;
        do
        {
          v23 = *v22;
          *v8 = *v22;
          (rawValue)(v8, v31, v4);
          v32 = v14;
          v25 = v14[2];
          v24 = v14[3];
          v26 = v23;
          if (v25 >= v24 >> 1)
          {
            sub_1000D38D8((v24 > 1), v25 + 1, 1);
            v14 = v32;
          }

          v14[2] = v25 + 1;
          (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, v8, v4);
          ++v22;
          --v13;
        }

        while (v13);
      }

      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
    v31 = sub_1001C5128();
    v18 = sub_1001C65A8();
    if (os_log_type_enabled(v31, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1001874E8(0xD00000000000001BLL, 0x8000000100203AF0, &v32);
      _os_log_impl(&_mh_execute_header, v31, v18, "BDSSyncEngine - %s: syncEngine not initialized", v19, 0xCu);
      sub_10008E7BC(v20);
    }

    else
    {
      v21 = v31;
    }
  }
}

void sub_100171204(void *a1)
{
  v2 = v1;
  v4 = [a1 zoneID];
  v5 = [v4 zoneName];

  v6 = sub_1001C6018();
  v8 = v7;

  v9 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneResetsInProgress;
  swift_beginAccess();
  v10 = *(v2 + v9);

  v11 = sub_1000F54C8(v6, v8, v10);

  if (v11)
  {
    v12 = a1;
    v13 = sub_1001C5128();
    v14 = sub_1001C65B8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19[0] = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_1001874E8(0xD000000000000017, 0x8000000100203F30, v19);
      *(v15 + 12) = 2114;
      *(v15 + 14) = v12;
      *v16 = v12;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "BDSSyncEngine - %s. Zone reset in progress while a new zone was added - %{public}@. Re-establishing salt", v15, 0x16u);
      sub_10008875C(v16, &unk_1002718E0, &qword_1001F31F0);

      sub_10008E7BC(v17);
    }

    swift_beginAccess();
    sub_10017B998(v6, v8);
    swift_endAccess();

    BDSSyncEngine.reestablishSalt()();
  }

  else
  {
  }
}

uint64_t sub_10017145C(char a1)
{
  v2 = v1;
  v4 = sub_1001C5648();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001C5688();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1001836C4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024B7C0;
  v12 = _Block_copy(aBlock);

  sub_1001C5668();
  v17 = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

id sub_100171770()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    result = [result establishedSalt];
    if (result)
    {
      v3 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
      [*(v0 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock) lock];
      v4 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
      swift_beginAccess();
      v5 = *(v0 + v4);
      v6 = *(v0 + v3);

      [v6 unlock];
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = sub_1001C6908();
      }

      else
      {
        v7 = *(v5 + 16);
      }

      return (v7 != 0);
    }
  }

  return result;
}

Swift::Void __swiftcall BDSSyncEngine.setCloudKitZone(_:enabled:)(CKRecordZoneID _, Swift::Bool enabled)
{
  v3 = v2;
  v6 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v6 - 8);
  v8 = &v28[-1] - v7;
  v9 = _.super.isa;
  v10 = sub_1001C5128();
  v11 = sub_1001C65B8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28[0] = v14;
    *v12 = 136315650;
    *(v12 + 4) = sub_1001874E8(0xD00000000000001BLL, 0x8000000100203B10, v28);
    *(v12 + 12) = 2114;
    *(v12 + 14) = v9;
    *v13 = v9;
    *(v12 + 22) = 1024;
    *(v12 + 24) = enabled;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "BDSSyncEngine - %s. Zone: %{public}@. Enabled: %{BOOL}d", v12, 0x1Cu);
    sub_10008875C(v13, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v14);
  }

  v16 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
  [*&v3[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock] lock];
  swift_beginAccess();
  if (enabled)
  {
    sub_100178D0C(&v27, v9);
    swift_endAccess();
  }

  else
  {
    v17 = sub_10017BAD4(v9);
    swift_endAccess();
  }

  v18 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
  swift_beginAccess();
  v19 = *&v3[v18];
  if ((v19 & 0xC000000000000001) != 0)
  {

    v20 = sub_1001C6908();
  }

  else
  {
    v20 = *(v19 + 16);
  }

  [*&v3[v16] unlock];
  if (v20)
  {
    v21 = sub_1001C5128();
    v22 = sub_1001C65B8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "BDSSyncEngine - Valid zones found", v23, 2u);
    }

    v24 = sub_1001C6348();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v3;
    v26 = v3;
    sub_10016CE38(0, 0, v8, &unk_1001F7CD0, v25);
  }
}

Swift::Void __swiftcall BDSSyncEngine.fetchRemoteChanges()()
{
  v1 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1001C6348();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_10016CE38(0, 0, v3, &unk_1001F7CD8, v5);
}

uint64_t BDSSyncEngine.enabledCloudKitZones()()
{
  v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
  [*(v0 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock) lock];
  v2 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v0 + v1);

  [v4 unlock];
  return v3;
}

uint64_t sub_100171F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = sub_1001C5648();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v8 = sub_1001C5688();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v9 = sub_1001C5268();
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  v10 = sub_1001C5298();
  v6[24] = v10;
  v6[25] = *(v10 - 8);
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001720DC, 0, 0);
}

uint64_t sub_1001720DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  v2 = v0[23];
  if (Strong)
  {
    v3 = v0[21];
    v4 = v0[22];
    v5 = v0[14];
    sub_100084528(&qword_100270AB0, &qword_1001F52C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1001F31C0;
    *(v6 + 32) = [v5 zoneID];
    *v2 = v6;
    (*(v4 + 104))(v2, enum case for CKSyncEngine.SendChangesOptions.Scope.zoneIDs(_:), v3);
    sub_1001C5278();
    v7 = swift_task_alloc();
    v0[28] = v7;
    *v7 = v0;
    v7[1] = sub_1001722A4;
    v8 = v0[26];

    return CKSyncEngine.sendChanges(_:)(v8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1001722A4()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  *(*v1 + 232) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100172688;
  }

  else
  {
    v5 = sub_100172414;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100172414()
{
  v1 = v0[27];
  v11 = v0[20];
  v2 = v0[17];
  v13 = v0[19];
  v14 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  v0[6] = sub_1001835FC;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000DD4AC;
  v0[5] = &unk_10024B6F8;
  v7 = _Block_copy(v0 + 2);
  v12 = v1;
  v8 = v5;
  sub_1001C5668();
  v0[11] = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v7);
  (*(v3 + 8))(v2, v4);
  (*(v13 + 8))(v11, v14);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100172688()
{
  v14 = v0;
  v1 = *(v0 + 112);
  v2 = sub_1001C5128();
  v3 = sub_1001C6598();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 216);
  if (v4)
  {
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, &v13);
    *(v7 + 12) = 2114;
    *(v7 + 14) = v6;
    *v8 = v6;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEngine - %s: Could not delete %{public}@", v7, 0x16u);
    sub_10008875C(v8, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v9);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100172874(char *a1, void *a2)
{
  v4 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v4 - 8);
  v6 = &v28[-1] - v5;
  v7 = sub_1001C5128();
  v8 = sub_1001C65B8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, v28);
    _os_log_impl(&_mh_execute_header, v7, v8, "BDSSyncEngine - %s. Zone removed. Saving it again...", v9, 0xCu);
    sub_10008E7BC(v10);
  }

  v11 = [a2 zoneID];
  v12 = [v11 zoneName];

  v13 = sub_1001C6018();
  v15 = v14;

  swift_beginAccess();
  sub_100178A6C(v29, v13, v15);
  swift_endAccess();

  if (*&a1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine])
  {

    sub_1001C55E8();

    sub_100084528(&qword_100270570, &unk_1001F2BA0);
    v16 = sub_1001C5328();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 1) = xmmword_1001F0670;
    *&v19[v18] = a2;
    (*(v17 + 104))(&v19[v18], enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v16);
    v20 = a2;
    v21._rawValue = v19;
    sub_1001C55D8(v21);
  }

  v22 = sub_1001C6348();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a1;
  v23[5] = a2;
  v24 = a2;
  v25 = a1;
  sub_10016CE38(0, 0, v6, &unk_1001F7E20, v23);
}

uint64_t sub_100172BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1001C5268();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_1001C5298();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100172D14, 0, 0);
}

uint64_t sub_100172D14()
{
  v16 = v0;
  v1 = *(v0[2] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  v0[10] = v1;
  if (v1)
  {
    v3 = v0[5];
    v2 = v0[6];
    v5 = v0[3];
    v4 = v0[4];
    sub_100084528(&qword_100270AB0, &qword_1001F52C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1001F31C0;

    *(v6 + 32) = [v5 zoneID];
    *v2 = v6;
    (*(v3 + 104))(v2, enum case for CKSyncEngine.SendChangesOptions.Scope.zoneIDs(_:), v4);
    sub_1001C5278();
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_100172F94;
    v8 = v0[9];

    return CKSyncEngine.sendChanges(_:)(v8);
  }

  else
  {
    v9 = sub_1001C5128();
    v10 = sub_1001C65B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, &v15);
      _os_log_impl(&_mh_execute_header, v9, v10, "BDSSyncEngine - %s  Zone should have been created again!", v11, 0xCu);
      sub_10008E7BC(v12);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100172F94()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_100173278;
  }

  else
  {
    v5 = sub_100173128;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100173128()
{
  v8 = v0;
  v1 = sub_1001C5128();
  v2 = sub_1001C65B8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "BDSSyncEngine - %s  Zone should have been created again!", v3, 0xCu);
    sub_10008E7BC(v4);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100173278()
{
  v12 = v0;
  v1 = *(v0 + 24);
  v2 = sub_1001C5128();
  v3 = sub_1001C6598();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_1001874E8(0xD000000000000015, 0x8000000100203AB0, &v11);
    *(v5 + 12) = 2114;
    *(v5 + 14) = v4;
    *v6 = v4;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEngine - %s: Could not add %{public}@", v5, 0x16u);
    sub_10008875C(v6, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v7);
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_1001734A0(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine))
  {

    v3 = a1;
    v4 = sub_1001C5128();
    v5 = sub_1001C65B8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136446210;
      v8 = [v3 zoneName];
      v9 = sub_1001C6018();
      v11 = v10;

      v12 = sub_1001874E8(v9, v11, &v16);

      *(v6 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "BDSSyncEngine - resetChangeToken: resetting change token for %{public}s", v6, 0xCu);
      sub_10008E7BC(v7);
    }

    sub_1001C55E8();
    v19.value.super.isa = 0;
    v19.is_nil = v3;
    sub_1001C55B8(v19, v18);
  }

  else
  {
    oslog = sub_1001C5128();
    v13 = sub_1001C65A8();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "BDSSyncEngine - resetChangeToken: syncEngine not initialized", v14, 2u);
    }
  }
}

uint64_t BDSSyncEngine.handleEvent(_:syncEngine:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10009AAEC;

  return sub_10017FC08(a1);
}

uint64_t BDSSyncEngine.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1001C5388();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  sub_100084528(&qword_100270B80, &unk_1001F3528);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v5 = sub_1001C5378();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v6 = sub_1001C5298();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v7 = sub_1001C5268();
  v3[34] = v7;
  v3[35] = *(v7 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_100173A54, 0, 0);
}

uint64_t sub_100173A54()
{
  v78 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 248);
  sub_1001C5258();
  sub_1001C5288();
  (*(v6 + 8))(v5, v7);
  v8 = *(v4 + 16);
  v8(v2, v1, v3);
  v9 = (*(v4 + 88))(v2, v3);
  if (v9 == enum case for CKSyncEngine.SendChangesOptions.Scope.zoneIDs(_:))
  {
    v10 = *(v0 + 296);
    v11 = *(v0 + 160);
    (*(*(v0 + 280) + 96))(v10, *(v0 + 272));
    v12 = *v10;
    v13 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
    [*(v11 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock) lock];
    swift_beginAccess();

    v15 = sub_100182B60(v14, v12);

    [*(v11 + v13) unlock];
  }

  else if (v9 == enum case for CKSyncEngine.SendChangesOptions.Scope.all(_:))
  {
    v16 = *(v0 + 160);
    v17 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
    [*(v16 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock) lock];
    v18 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
    swift_beginAccess();
    v15 = *(v16 + v18);
    v19 = *(v16 + v17);

    [v19 unlock];
  }

  else
  {
    v8(*(v0 + 288), *(v0 + 304), *(v0 + 272));
    v20 = sub_1001C5128();
    v21 = sub_1001C65A8();
    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 280);
    v23 = *(v0 + 288);
    v25 = *(v0 + 272);
    if (v22)
    {
      v26 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77[0] = v76;
      *v26 = 136315138;
      sub_1001826B0(&qword_100273B18, &type metadata accessor for CKSyncEngine.SendChangesOptions.Scope, &protocol conformance descriptor for CKSyncEngine.SendChangesOptions.Scope);
      v27 = sub_1001C6CC8();
      v29 = v28;
      v30 = *(v24 + 8);
      v30(v23, v25);
      v31 = sub_1001874E8(v27, v29, v77);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "BDSSyncEngine - Ignoring scope %s. This is unexpected", v26, 0xCu);
      sub_10008E7BC(v76);
    }

    else
    {

      v30 = *(v24 + 8);
      v30(v23, v25);
    }

    v30(*(v0 + 296), *(v0 + 272));
    v15 = &_swiftEmptySetSingleton;
  }

  *(v0 + 312) = v15;
  v32 = sub_1001C5128();
  v33 = sub_1001C65B8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v77[0] = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = sub_1001874E8(0xD000000000000028, 0x8000000100203B30, v77);
    *(v34 + 12) = 2082;
    sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
    sub_10012D0A0();

    v35 = sub_1001C63F8();
    v37 = v36;

    v38 = sub_1001874E8(v35, v37, v77);

    *(v34 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "BDSSyncEngine - %s, enabledZoneIDs: %{public}s", v34, 0x16u);
    swift_arrayDestroy();
  }

  v39 = *(v0 + 160);
  *(swift_task_alloc() + 16) = v39;
  sub_100084528(&qword_100273AF8, &qword_1001F7CF8);
  sub_1001C6688();

  v40 = *(v0 + 128);
  *(v0 + 320) = v40;
  if (!*(v40 + 16))
  {
    v52 = sub_1001C5128();
    v53 = sub_1001C65B8();
    v61 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 304);
    v56 = *(v0 + 272);
    v57 = *(v0 + 280);
    if (!v61)
    {
      goto LABEL_28;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v77[0] = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_1001874E8(0xD000000000000028, 0x8000000100203B30, v77);
    v60 = "BDSSyncEngine - %s, record sources not found";
    goto LABEL_24;
  }

  v41 = *(v0 + 160);
  v42 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v43 = *(v41 + v42);
  if (!v43 || ![v43 establishedSalt])
  {
    v52 = sub_1001C5128();
    v53 = sub_1001C65B8();
    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 304);
    v56 = *(v0 + 272);
    v57 = *(v0 + 280);
    if (!v54)
    {
      goto LABEL_28;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v77[0] = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_1001874E8(0xD000000000000028, 0x8000000100203B30, v77);
    v60 = "BDSSyncEngine - %s, salt not ready";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v52, v53, v60, v58, 0xCu);
    sub_10008E7BC(v59);

LABEL_29:
    (*(v57 + 8))(v55, v56);
    (*(*(v0 + 232) + 56))(*(v0 + 144), 1, 1, *(v0 + 224));
LABEL_30:

    v63 = *(v0 + 8);

    return v63();
  }

  if ((v15 & 0xC000000000000001) != 0)
  {

    v44 = sub_1001C6908();

    if (v44)
    {
      goto LABEL_16;
    }

LABEL_26:
    v52 = sub_1001C5128();
    v53 = sub_1001C65B8();
    v62 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 304);
    v56 = *(v0 + 272);
    v57 = *(v0 + 280);
    if (v62)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v77[0] = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_1001874E8(0xD000000000000028, 0x8000000100203B30, v77);
      v60 = "BDSSyncEngine - %s, enabledZoneIDs is empty";
      goto LABEL_24;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (!*(v15 + 16))
  {
    goto LABEL_26;
  }

LABEL_16:
  v45 = *(v0 + 232);
  v46 = *(v40 + 32);
  *(v0 + 392) = v46;
  v47 = -1;
  v48 = -1 << v46;
  if (-(-1 << v46) < 64)
  {
    v47 = ~(-1 << -(-1 << v46));
  }

  v49 = v47 & *(v40 + 64);
  *(v0 + 384) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  *(v0 + 388) = enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:);
  *(v0 + 344) = _swiftEmptyArrayStorage;
  *(v0 + 352) = &_swiftEmptyDictionarySingleton;
  *(v0 + 328) = &_swiftEmptyDictionarySingleton;
  *(v0 + 336) = 250;

  if (!v49)
  {
    v65 = 0;
    v51 = *(v0 + 320);
    while (((63 - v48) >> 6) - 1 != v65)
    {
      v50 = v65 + 1;
      v49 = *(v51 + 8 * v65++ + 72);
      if (v49)
      {
        goto LABEL_36;
      }
    }

    v69 = *(v0 + 224);
    v70 = *(v0 + 208);

    (*(v45 + 56))(v70, 1, 1, v69);
    v71 = *(v0 + 304);
    v72 = *(v0 + 272);
    v73 = *(v0 + 280);
    if (_swiftEmptyArrayStorage[2])
    {
      v75 = *(v0 + 200);
      v74 = *(v0 + 208);
      *(swift_task_alloc() + 16) = &_swiftEmptyDictionarySingleton;
      sub_1001C5358();

      sub_10008875C(v74, &qword_100270B80, &unk_1001F3528);
      (*(v73 + 8))(v71, v72);
      sub_100182640(v75, v74);
    }

    else
    {

      sub_10016FB58();

      (*(v73 + 8))(v71, v72);
    }

    sub_100182640(*(v0 + 208), *(v0 + 144));
    goto LABEL_30;
  }

  v50 = 0;
  v51 = *(v0 + 320);
LABEL_36:
  *(v0 + 360) = v49;
  *(v0 + 368) = v50;
  sub_1000B3A90(*(v51 + 56) + 40 * (__clz(__rbit64(v49)) | (v50 << 6)), v0 + 16);
  sub_10009BB74((v0 + 16), *(v0 + 40));

  v66 = swift_task_alloc();
  *(v0 + 376) = v66;
  *v66 = v0;
  v66[1] = sub_1001745A4;
  v67 = *(v0 + 312);
  v68 = *(v0 + 216);

  return BDSSyncEnginePipeline.nextRecordZoneChangeBatch(zoneIDs:fetchLimit:)(v68, v67, 250);
}

uint64_t sub_1001745A4()
{
  v1 = *v0;

  sub_10008E7BC((v1 + 16));

  return _swift_task_switch(sub_1001746C4, 0, 0);
}

uint64_t sub_1001746C4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(*(v0 + 240), v3, v1);
    v8 = sub_1001C5348();
    isUniquelyReferenced_nonNull_native = v8;
    if (v8 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1001C6B38())
    {
      v11 = 0;
      v86 = isUniquelyReferenced_nonNull_native;
      v87 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v83 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v85 = i;
      v5 = *(v0 + 344);
      v12 = *(v0 + 352);
      v6 = *(v0 + 328);
      while (1)
      {
        if (v87)
        {
          v16 = sub_1001C69F8();
        }

        else
        {
          if (v11 >= *(v83 + 16))
          {
            goto LABEL_42;
          }

          v16 = *(isUniquelyReferenced_nonNull_native + 8 * v11 + 32);
        }

        v17 = v16;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v90 = v11 + 1;
        v18 = *(v0 + 384);
        v19 = *(v0 + 192);
        v20 = *(v0 + 168);
        v21 = *(v0 + 176);
        *v19 = [v16 recordID];
        (*(v21 + 104))(v19, v18, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1000AE430(0, v5[2] + 1, 1, v5);
        }

        isUniquelyReferenced_nonNull_native = v5[2];
        v22 = v5[3];
        if (isUniquelyReferenced_nonNull_native >= v22 >> 1)
        {
          v5 = sub_1000AE430((v22 > 1), isUniquelyReferenced_nonNull_native + 1, 1, v5);
        }

        v23 = *(v0 + 192);
        v24 = *(v0 + 168);
        v25 = *(v0 + 176);
        v5[2] = isUniquelyReferenced_nonNull_native + 1;
        (*(v25 + 32))(v5 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * isUniquelyReferenced_nonNull_native, v23, v24);
        v26 = [v17 recordID];
        if ((v12 & 0xC000000000000001) != 0)
        {
          if (v12 < 0)
          {
            v27 = v12;
          }

          else
          {
            v27 = v12 & 0xFFFFFFFFFFFFFF8;
          }

          v28 = v17;
          v29 = sub_1001C6AF8();
          if (__OFADD__(v29, 1))
          {
            goto LABEL_40;
          }

          v6 = sub_10017ACE4(v27, v29 + 1);
        }

        else
        {
          v30 = v17;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 136) = v6;
        v32 = sub_100187BB4(v26);
        v33 = v6[2];
        v34 = (v31 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_39;
        }

        v36 = v31;
        if (v6[3] >= v35)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v6 = *(v0 + 136);
            if (v31)
            {
              goto LABEL_6;
            }
          }

          else
          {
            sub_10018B17C();
            v6 = *(v0 + 136);
            if (v36)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          sub_100189238(v35, isUniquelyReferenced_nonNull_native);
          v37 = sub_100187BB4(v26);
          if ((v36 & 1) != (v38 & 1))
          {
            sub_100088714(0, &unk_100273B00, CKRecordID_ptr);

            return sub_1001C6D68();
          }

          v32 = v37;
          v6 = *(v0 + 136);
          if (v36)
          {
LABEL_6:
            v13 = v6[7];
            v14 = *(v13 + 8 * v32);
            *(v13 + 8 * v32) = v17;

            goto LABEL_7;
          }
        }

        v6[(v32 >> 6) + 8] |= 1 << v32;
        *(v6[6] + 8 * v32) = v26;
        *(v6[7] + 8 * v32) = v17;

        v39 = v6[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_41;
        }

        v6[2] = v41;
LABEL_7:
        ++v11;
        v12 = v6;
        v15 = v6;
        isUniquelyReferenced_nonNull_native = v86;
        if (v90 == v85)
        {
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

    v5 = *(v0 + 344);
    v15 = *(v0 + 352);
    v6 = *(v0 + 328);
LABEL_45:
    v84 = v15;

    v43 = sub_1001C5368();
    v44 = v43;
    if (v43 >> 62)
    {
      v56 = v43;
      result = sub_1001C6B38();
      v44 = v56;
      if (!result)
      {
        goto LABEL_59;
      }
    }

    else
    {
      result = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_59;
      }
    }

    if (result < 1)
    {
LABEL_88:
      __break(1u);
      return result;
    }

    v45 = 0;
    v88 = v44 & 0xC000000000000001;
    v89 = result;
    v91 = v44;
    do
    {
      if (v88)
      {
        v46 = sub_1001C69F8();
      }

      else
      {
        v46 = *(v44 + 8 * v45 + 32);
      }

      v47 = v46;
      v48 = *(v0 + 176);
      **(v0 + 184) = v46;
      (*(v48 + 104))();
      v49 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000AE430(0, v5[2] + 1, 1, v5);
      }

      v51 = v5[2];
      v50 = v5[3];
      v52 = v5;
      if (v51 >= v50 >> 1)
      {
        v52 = sub_1000AE430((v50 > 1), v51 + 1, 1, v5);
      }

      ++v45;
      v53 = *(v0 + 176);
      v54 = *(v0 + 184);
      v55 = *(v0 + 168);

      v52[2] = v51 + 1;
      v5 = v52;
      (*(v53 + 32))(v52 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v51, v54, v55);
      v44 = v91;
    }

    while (v89 != v45);
LABEL_59:

    v57 = sub_1001C5348();
    if (v57 >> 62)
    {
      goto LABEL_84;
    }

    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_61;
  }

  sub_10008875C(v3, &qword_100270B80, &unk_1001F3528);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  while (1)
  {
    v67 = *(v0 + 360);
    v66 = *(v0 + 368);
    *(v0 + 344) = v5;
    *(v0 + 352) = v4;
    *(v0 + 328) = v6;
    *(v0 + 336) = v7;
    v68 = (v67 - 1) & v67;
    if (v68)
    {
      break;
    }

    while (1)
    {
      v70 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v70 >= (((1 << *(v0 + 392)) + 63) >> 6))
      {
        v84 = v4;
        goto LABEL_77;
      }

      v69 = *(v0 + 320);
      v68 = *(v69 + 8 * v70 + 64);
      ++v66;
      if (v68)
      {
        v66 = v70;
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_84:
    v58 = sub_1001C6B38();
LABEL_61:
    v59 = *(v0 + 336);

    v60 = v59 - v58;
    if (__OFSUB__(v59, v58))
    {
      __break(1u);
    }

    else
    {
      v61 = sub_1001C5368();
      if (!(v61 >> 62))
      {
        v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_64;
      }
    }

    v62 = sub_1001C6B38();
LABEL_64:
    v64 = *(v0 + 232);
    v63 = *(v0 + 240);
    v65 = *(v0 + 224);

    result = (*(v64 + 8))(v63, v65);
    v7 = v60 - v62;
    if (__OFSUB__(v60, v62))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v7 < 1)
    {
LABEL_77:
      v74 = *(v0 + 224);
      v75 = *(v0 + 232);
      v76 = *(v0 + 208);

      (*(v75 + 56))(v76, 1, 1, v74);
      v77 = *(v0 + 304);
      v78 = *(v0 + 272);
      v79 = *(v0 + 280);
      if (v5[2])
      {
        v81 = *(v0 + 200);
        v80 = *(v0 + 208);
        *(swift_task_alloc() + 16) = v84;
        sub_1001C5358();

        sub_10008875C(v80, &qword_100270B80, &unk_1001F3528);
        (*(v79 + 8))(v77, v78);
        sub_100182640(v81, v80);
      }

      else
      {

        sub_10016FB58();

        (*(v79 + 8))(v77, v78);
      }

      sub_100182640(*(v0 + 208), *(v0 + 144));

      v82 = *(v0 + 8);

      return v82();
    }

    v4 = v84;
  }

  v69 = *(v0 + 320);
LABEL_73:
  *(v0 + 360) = v68;
  *(v0 + 368) = v66;
  sub_1000B3A90(*(v69 + 56) + 40 * (__clz(__rbit64(v68)) | (v66 << 6)), v0 + 16);
  sub_10009BB74((v0 + 16), *(v0 + 40));

  v71 = swift_task_alloc();
  *(v0 + 376) = v71;
  *v71 = v0;
  v71[1] = sub_1001745A4;
  v72 = *(v0 + 312);
  v73 = *(v0 + 216);

  return BDSSyncEnginePipeline.nextRecordZoneChangeBatch(zoneIDs:fetchLimit:)(v73, v72, v7);
}

void sub_100174FE8(unint64_t a1, char a2)
{
  sub_10017057C();
  BDSSyncEngine.reestablishSalt()();
  if ((a2 & 1) == 0)
  {
    return;
  }

  if (a1 >> 62)
  {
    if (!sub_1001C6B38())
    {
      return;
    }

    v8 = sub_1001C6B38();
    if (!v8)
    {
      goto LABEL_10;
    }

    v4 = v8;
    sub_1001C6A78();
    if (v4 < 0)
    {
      __break(1u);
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

    sub_1001C6A78();
  }

  v5 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_1001C69F8();
    }

    else
    {
      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    [objc_allocWithZone(CKRecordZone) initWithZoneID:v6];

    sub_1001C6A48();
    sub_1001C6A88();
    sub_1001C6A98();
    sub_1001C6A58();
  }

  while (v4 != v5);
LABEL_10:
  BDSSyncEngine.add(recordZonesToSave:)(_swiftEmptyArrayStorage);
}

void sub_10017518C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100171204(a2);
  }
}

void sub_1001751E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100175244(a2);
  }
}

uint64_t sub_100175244(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001C5648();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C5688();
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin(v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C55A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_persistFetchCoordinatorGroup);
  v19[0] = *(v2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  v19[1] = v13;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v11 + 32))(v16 + v15, v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_100183548;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024B608;
  v17 = _Block_copy(aBlock);

  sub_1001C5668();
  v23 = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6618();
  _Block_release(v17);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

uint64_t sub_10017561C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BDSSyncEngineStateMetadata(0);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C5148();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (*(v7 + 16))(v9, Strong + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger, v6);

    v12 = sub_1001C5128();
    v13 = sub_1001C6588();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "BDSSyncEngine - q_saveMetadataState: About to save state metadata", v14, 2u);
    }

    (*(v7 + 8))(v9, v6);
  }

  v15 = *(v3 + 20);
  v16 = sub_1001C55A8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v5[v15], a2, v16);
  (*(v17 + 56))(&v5[v15], 0, 1, v16);
  *v5 = 0x69676E45636E7953;
  *(v5 + 1) = 0xEF6574617453656ELL;
  sub_10016DD30(v5, 0x69676E45636E7953, 0xEF6574617453656ELL);
  return sub_1001024FC(v5);
}

uint64_t BDSSyncEngine.nextFetchChangesOptions(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_1001C51E8();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_1001C52C8();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = sub_1001C52E8();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v7 = sub_1001C5318();
  v3[29] = v7;
  v3[30] = *(v7 - 8);
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_100175A9C, 0, 0);
}

uint64_t sub_100175A9C()
{
  v51 = v0;
  v1 = v0[19];
  sub_1001C52B8();
  v2 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = [v3 establishedSalt];
    v5 = swift_allocObject();
    if (v4)
    {
      v6 = v0[19];
      v7 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
      [*(v6 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock) lock];
      v8 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
      swift_beginAccess();
      v9 = *(v6 + v8);
      v10 = *(v6 + v7);

      [v10 unlock];
      v11 = sub_100177A10(v9);

      *(v5 + 16) = v11;

      v49 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = swift_allocObject();
  }

  v49 = 0;
  v11 = _swiftEmptyArrayStorage;
  *(v5 + 16) = _swiftEmptyArrayStorage;
LABEL_6:
  v12 = v0[27];
  v13 = v0[28];
  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[23];
  v17 = v0[24];
  v18 = v0[18];
  *v13 = v11;
  (*(v12 + 104))(v13, enum case for CKSyncEngine.FetchChangesOptions.Scope.zoneIDs(_:), v14);
  sub_1001C5308();
  (*(v17 + 16))(v15, v18, v16);
  v19 = sub_1001C5128();
  v20 = sub_1001C65B8();
  if (os_log_type_enabled(v19, v20))
  {
    v48 = v20;
    v21 = v0[24];
    v22 = v0[25];
    v23 = v0[22];
    v24 = v0[21];
    v46 = v0[20];
    v47 = v0[23];
    v25 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v25 = 136446978;
    swift_beginAccess();
    v26 = sub_1001C52D8();
    v28 = sub_1001874E8(v26, v27, &v50);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    sub_1001C52A8();
    v29 = sub_1001C51D8();
    v31 = v30;
    (*(v24 + 8))(v23, v46);
    (*(v21 + 8))(v22, v47);
    v32 = sub_1001874E8(v29, v31, &v50);

    *(v25 + 14) = v32;
    *(v25 + 22) = 1024;
    *(v25 + 24) = v49;
    *(v25 + 28) = 2082;
    swift_beginAccess();

    sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
    v33 = sub_1001C62A8();
    v35 = v34;

    v36 = sub_1001874E8(v33, v35, &v50);

    *(v25 + 30) = v36;
    _os_log_impl(&_mh_execute_header, v19, v48, "BDSSyncEngine: Returning %{public}s for nextFetchChangesOptions:syncEngine:%{public}s.\nValid salt: %{BOOL}d. Allowed zones: %{public}s", v25, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
    v38 = v0[24];
    v37 = v0[25];
    v39 = v0[23];

    (*(v38 + 8))(v37, v39);
  }

  v41 = v0[30];
  v40 = v0[31];
  v42 = v0[29];
  v43 = v0[17];
  swift_beginAccess();
  (*(v41 + 16))(v43, v40, v42);
  (*(v41 + 8))(v40, v42);

  v44 = v0[1];

  return v44();
}

void sub_100175F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v3 - 8);
  v5 = &v21[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
    swift_beginAccess();
    v9 = *&v7[v8];
    if (v9 && [v9 establishedSalt])
    {
      v10 = sub_1001C5128();
      v11 = sub_1001C65B8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "BDSSyncEngine - salt established. Fetching remote changes and updating pending modifications", v12, 2u);
      }

      v13 = sub_1001C6348();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v7;
      v7;
      sub_10016CE38(0, 0, v5, &unk_1001F7E00, v14);

      sub_10017145C(0);
    }

    v15 = [*&v7[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltObservers] allObjects];
    sub_100084528(&unk_100273D20, &qword_1001F7DF8);
    v16 = sub_1001C6298();

    if (v16 >> 62)
    {
      v17 = sub_1001C6B38();
      if (v17)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_9:
        if (v17 < 1)
        {
          __break(1u);
          return;
        }

        v18 = 0;
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = sub_1001C69F8();
          }

          else
          {
            v19 = *(v16 + 8 * v18 + 32);
            swift_unknownObjectRetain();
          }

          ++v18;
          v20 = sub_1001C5FE8();
          [v19 saltUpdatedWithSaltVersionIdentifier:v20];
          swift_unknownObjectRelease();
        }

        while (v17 != v18);
      }
    }
  }
}

uint64_t sub_1001762CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BDSSyncEngineMetadataStore();
  result = sub_100101C94(0x69676E45636E7953, 0xEF6574617453656ELL);
  *a1 = result;
  return result;
}

uint64_t sub_100176330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1001C52E8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1001C5318();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10017644C, 0, 0);
}

uint64_t sub_10017644C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  v0[9] = v1;
  if (v1)
  {
    (*(v0[4] + 104))(v0[5], enum case for CKSyncEngine.FetchChangesOptions.Scope.all(_:), v0[3]);

    sub_1001C52F8();
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_10017658C;
    v3 = v0[8];

    return CKSyncEngine.fetchChanges(_:)(v3);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10017658C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_100176770, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100176770()
{
  swift_errorRetain();
  v1 = sub_1001C5128();
  v2 = sub_1001C6598();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "BDSSyncEngine - Error fetching remote changes - %@", v3, 0xCu);
    sub_10008875C(v4, &unk_1002718E0, &qword_1001F31F0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

Swift::String_optional __swiftcall BDSSyncEngine.recordName(fromRecordType:identifier:)(Swift::String fromRecordType, Swift::String identifier)
{
  v3 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 && (v5 = v4, v6 = sub_1001C5FE8(), v7 = sub_1001C5FE8(), v8 = [v5 recordNameFromRecordType:v6 identifier:v7], v5, v6, v7, v8))
  {
    v9 = sub_1001C6018();
    v11 = v10;

    v12 = v11;
    v13 = v9;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  result.value._object = v12;
  result.value._countAndFlagsBits = v13;
  return result;
}

id BDSSyncEngine.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1001C6668();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v17 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001C6638();
  __chkstk_darwin(v16);
  v4 = sub_1001C5688();
  __chkstk_darwin(v4 - 8);
  *&v0[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_registeredDataSourceByRecordType] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_maxRecordCountPerBatch] = 250;
  v5 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_recordChangePublisher;
  sub_100084528(&qword_10026ECF0, &unk_1001F3690);
  swift_allocObject();
  *&v0[v5] = sub_1001C5188();
  v6 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_recordDeletionPublisher;
  sub_100084528(&qword_10026ECF8, &unk_1001F06C0);
  swift_allocObject();
  *&v0[v6] = sub_1001C5188();
  v7 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_accountChangedPublisher;
  sub_100084528(&qword_10026ED00, qword_1001F36A0);
  swift_allocObject();
  *&v0[v7] = sub_1001C5188();
  v8 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_endFetchingChangesPublisher;
  sub_100084528(&qword_10026ED08, &qword_1001F06D0);
  swift_allocObject();
  *&v0[v8] = sub_1001C5188();
  v9 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_updateMetadataPublisher;
  sub_100084528(&qword_10026ED10, &qword_1001F06D8);
  swift_allocObject();
  *&v0[v9] = sub_1001C5188();
  v10 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue;
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5668();
  v22 = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  (*(v18 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  *&v0[v10] = sub_1001C66A8();
  v11 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_persistFetchCoordinatorGroup;
  *&v1[v11] = dispatch_group_create();
  v12 = &v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_BDSAPSDelegatePort];
  *v12 = 0xD00000000000001CLL;
  v12[1] = 0x80000001001FE120;
  *&v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine] = 0;
  sub_1001C5138();
  *&v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager] = 0;
  v13 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltObservers;
  *&v1[v13] = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones] = &_swiftEmptySetSingleton;
  v14 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
  *&v1[v14] = [objc_allocWithZone(NSLock) init];
  v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_waitingPendingModifications] = 0;
  *&v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneResetsInProgress] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_invalidTokenZoneIDs] = _swiftEmptyArrayStorage;
  v21.receiver = v1;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_100177178(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10009B25C;

  return sub_10017FC08(a1);
}

uint64_t sub_100177224(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10009B25C;

  return BDSSyncEngine.nextRecordZoneChangeBatch(_:syncEngine:)(a1, a2);
}

uint64_t sub_1001772CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10009B25C;

  return BDSSyncEngine.nextFetchChangesOptions(_:syncEngine:)(a1, a2);
}

uint64_t sub_100177374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000F9958;

  return CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)(a1, a2, ObjectType, a4);
}

uint64_t sub_10017743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000F9958;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2, a3, ObjectType, a5);
}

void sub_1001775B0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((sub_100171770() & 1) == 0)
    {
      if (a2)
      {
        v10 = sub_1001C5128();
        v11 = sub_1001C65B8();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "BDSSyncEngine - setting waitingPendingModifications=true since there are pending modifications", v12, 2u);
        }

        v4[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_waitingPendingModifications] = 1;
      }

      goto LABEL_13;
    }

    v5 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_waitingPendingModifications;
    if ((v4[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_waitingPendingModifications] & 1) == 0 && (a2 & 1) == 0)
    {
LABEL_13:

      return;
    }

    v6 = *&v4[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine];
    v7 = sub_1001C5128();
    if (v6)
    {
      v8 = sub_1001C65B8();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "BDSSyncEngine - CKSyncEngine.setHasPendingModifications called since there were pending modifications", v9, 2u);
      }

      sub_100170BC8();
      v4[v5] = 0;
      goto LABEL_13;
    }

    v13 = sub_1001C6598();
    if (os_log_type_enabled(v7, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1001874E8(0xD00000000000002DLL, 0x80000001002040B0, &v16);
      _os_log_impl(&_mh_execute_header, v7, v13, "BDSSyncEngine - %s: syncEngine not initialized", v14, 0xCu);
      sub_10008E7BC(v15);
    }
  }
}

void sub_10017786C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100084528(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void *sub_100177A10(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1001C6908();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_10012B674(v2, 0);

    v1 = sub_10012CB98(&v5, v3 + 4, v2, v1);
    sub_100005064(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_100177AC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100084528(&qword_100273268, &unk_1001F6BF8);
  result = sub_1001C6988();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1001C6DF8();
      sub_1001C6E08(v19);
      sub_1001C6E08(v20);
      result = sub_1001C6E28();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100177D28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100084528(&qword_100273240, qword_1001F6BC8);
  result = sub_1001C6988();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1001C6DF8();
      sub_1001C60E8();
      sub_1001C6E18(v21);
      result = sub_1001C6E28();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
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
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
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
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100177FA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100084528(&unk_100273230, &qword_1001F6BC0);
  result = sub_1001C6988();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100178208(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100084528(&qword_100273D08, &qword_1001F7DE8);
  result = sub_1001C6988();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1001C6DF8();
      sub_1001C60E8();
      result = sub_1001C6E28();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100178468(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100084528(&qword_100273258, &unk_1001F6BE8);
  result = sub_1001C6988();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1001C6798(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_100178690(uint64_t a1, void *a2)
{
  sub_1001C6798(a2[5]);
  result = sub_1001C68E8();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t *sub_100178714(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1001826F8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1001787B0(Swift::UInt *a1, Swift::UInt a2, Swift::UInt a3)
{
  v7 = *v3;
  sub_1001C6DF8();
  sub_1001C6E08(a2);
  sub_1001C6E08(a3);
  v8 = sub_1001C6E28();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a2 && v13 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100179134(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_1001788CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *v4;
  sub_1001C6DF8();
  sub_1001C60E8();
  v22 = a4 & 1;
  sub_1001C6E18(a4 & 1);
  v9 = sub_1001C6E28();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    while (1)
    {
      v14 = v13 + 24 * v11;
      v15 = *(v14 + 16);
      v16 = *v14 == a2 && *(v14 + 8) == a3;
      if (v16 || (sub_1001C6D08()) && ((v15 ^ a4) & 1) == 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v19 = *(v8 + 48) + 24 * v11;
    v21 = *v19;
    v20 = *(v19 + 8);
    LOBYTE(v19) = *(v19 + 16);
    *a1 = v21;
    *(a1 + 8) = v20;
    *(a1 + 16) = v19;

    return 0;
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v23;

    sub_1001792A4(a2, a3, v22, v11, isUniquelyReferenced_nonNull_native);
    *v23 = v25;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v22;
    return 1;
  }
}

uint64_t sub_100178A6C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1001C6DF8();
  sub_1001C60E8();
  v8 = sub_1001C6E28();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1001C6D08() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100179460(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100178BBC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1001C6DF8();
  sub_1001C60E8();
  v8 = sub_1001C6E28();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1001C6D08() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1001795E0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100178D0C(uint64_t *a1, void *a2)
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

    v9 = sub_1001C6918();

    if (v9)
    {

      sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1001C6908();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100178F44(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100178468(v20 + 1);
    }

    v18 = v8;
    sub_100178690(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
  v11 = sub_1001C6798(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100179760(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1001C67A8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_100178F44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100084528(&qword_100273258, &unk_1001F6BE8);
    v2 = sub_1001C6998();
    v15 = v2;
    sub_1001C68F8();
    if (sub_1001C6928())
    {
      sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100178468(v9 + 1);
        }

        v2 = v15;
        result = sub_1001C6798(*(v15 + 40));
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

      while (sub_1001C6928());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::UInt sub_100179134(Swift::UInt result, Swift::UInt a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_100177AC0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1001798D0();
      a3 = v9;
      goto LABEL_15;
    }

    sub_100179F84(v7 + 1);
  }

  v10 = *v4;
  sub_1001C6DF8();
  sub_1001C6E08(v6);
  sub_1001C6E08(a2);
  result = sub_1001C6E28();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v6 && v14 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v6;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_1001C6D58();
  __break(1u);
  return result;
}

void sub_1001792A4(uint64_t result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v6 = v5;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_100177D28(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100179A14();
      goto LABEL_18;
    }

    sub_10017A1BC(v11 + 1);
  }

  v13 = *v5;
  sub_1001C6DF8();
  sub_1001C60E8();
  sub_1001C6E18(a3 & 1);
  v14 = sub_1001C6E28();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = v14 & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 24 * a4;
      v20 = *(v19 + 16);
      v21 = *v19 == result && *(v19 + 8) == a2;
      if (v21 || (sub_1001C6D08()) && ((v20 ^ a3) & 1) == 0)
      {
        goto LABEL_21;
      }

      a4 = (a4 + 1) & v17;
    }

    while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = result;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3 & 1;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return;
  }

  __break(1u);
LABEL_21:
  sub_1001C6D58();
  __break(1u);
}

void sub_100179460(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100177FA8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100179B7C();
      goto LABEL_16;
    }

    sub_10017A414(v8 + 1);
  }

  v10 = *v4;
  sub_1001C6DF8();
  sub_1001C60E8();
  v11 = sub_1001C6E28();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1001C6D08() & 1) != 0)
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
  sub_1001C6D58();
  __break(1u);
}

void sub_1001795E0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100178208(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100179CD8();
      goto LABEL_16;
    }

    sub_10017A64C(v8 + 1);
  }

  v10 = *v4;
  sub_1001C6DF8();
  sub_1001C60E8();
  v11 = sub_1001C6E28();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1001C6D08() & 1) != 0)
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
  sub_1001C6D58();
  __break(1u);
}

void sub_100179760(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100178468(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100179E34();
      goto LABEL_12;
    }

    sub_10017A884(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1001C6798(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1001C67A8();

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
  sub_1001C6D58();
  __break(1u);
}

void *sub_1001798D0()
{
  v1 = v0;
  sub_100084528(&qword_100273268, &unk_1001F6BF8);
  v2 = *v0;
  v3 = sub_1001C6978();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

void sub_100179A14()
{
  v1 = v0;
  sub_100084528(&qword_100273240, qword_1001F6BC8);
  v2 = *v0;
  v3 = sub_1001C6978();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        *(v21 + 16) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_100179B7C()
{
  v1 = v0;
  sub_100084528(&unk_100273230, &qword_1001F6BC0);
  v2 = *v0;
  v3 = sub_1001C6978();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_100179CD8()
{
  v1 = v0;
  sub_100084528(&qword_100273D08, &qword_1001F7DE8);
  v2 = *v0;
  v3 = sub_1001C6978();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_100179E34()
{
  v1 = v0;
  sub_100084528(&qword_100273258, &unk_1001F6BE8);
  v2 = *v0;
  v3 = sub_1001C6978();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

uint64_t sub_100179F84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100084528(&qword_100273268, &unk_1001F6BF8);
  result = sub_1001C6988();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1001C6DF8();
      sub_1001C6E08(v18);
      sub_1001C6E08(v19);
      result = sub_1001C6E28();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
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

  return result;
}

uint64_t sub_10017A1BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100084528(&qword_100273240, qword_1001F6BC8);
  result = sub_1001C6988();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1001C6DF8();

      sub_1001C60E8();
      sub_1001C6E18(v21);
      result = sub_1001C6E28();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

  return result;
}

uint64_t sub_10017A414(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100084528(&unk_100273230, &qword_1001F6BC0);
  result = sub_1001C6988();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1001C6DF8();

      sub_1001C60E8();
      result = sub_1001C6E28();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
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

  return result;
}

uint64_t sub_10017A64C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100084528(&qword_100273D08, &qword_1001F7DE8);
  result = sub_1001C6988();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1001C6DF8();

      sub_1001C60E8();
      result = sub_1001C6E28();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
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

  return result;
}

uint64_t sub_10017A884(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100084528(&qword_100273258, &unk_1001F6BE8);
  result = sub_1001C6988();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1001C6798(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
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

        v2 = v25;
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

  return result;
}

Swift::Int sub_10017AA98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100084528(&qword_100273D18, &qword_1001F7DF0);
    v2 = sub_1001C6B68();
    v19 = v2;
    sub_1001C6AE8();
    v3 = sub_1001C6B18();
    if (v3)
    {
      v4 = v3;
      sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100088714(0, &qword_100270F00, off_10023DD10);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100189224(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1001C6798(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1001C6B18();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10017ACE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100084528(&qword_100273D30, &qword_1001F7E08);
    v2 = sub_1001C6B68();
    v19 = v2;
    sub_1001C6AE8();
    v3 = sub_1001C6B18();
    if (v3)
    {
      v4 = v3;
      sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100189238(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1001C6798(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1001C6B18();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_10017AFB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  result = sub_100187A60(a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      result = sub_100187A60(a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_1001C6D68();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a5();
      result = v23;
    }
  }

  v25 = *v9;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 8 * result) = a3;
    v27 = (v25[7] + 16 * result);
    *v27 = a1;
    v27[1] = a2;
    v28 = v25[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      v25[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v26 = (v25[7] + 16 * result);
  *v26 = a1;
  v26[1] = a2;
}

id sub_10017B130(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100187BB4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100189238(v13, a3 & 1);
      v8 = sub_100187BB4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
        sub_1001C6D68();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10018B17C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

void sub_10017B300(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100187B3C(a2, a3);
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
      a6(v20, a4 & 1);
      v15 = sub_100187B3C(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1001C6D68();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_10017B498(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100187B3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100189AA0(v16, a4 & 1);
      v11 = sub_100187B3C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1001C6D68();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10018B630();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_10017B5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = a4;
  v12 = *v5;
  v14 = sub_100187C98(a2, a3, a4);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 >= v17 && (a5 & 1) == 0)
    {
      sub_10018BA94();
      goto LABEL_7;
    }

    sub_10018A280(v17, a5 & 1);
    v23 = sub_100187C98(a2, a3, v8 & 1);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v6;
      if (v18)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1001C6D68();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v6;
  if (v18)
  {
LABEL_8:
    v21 = v20[7];
    v22 = v21 + *(*(_s14PricingServiceV12FetchedPriceVMa(0) - 8) + 72) * v14;

    sub_1001832B4(a1, v22);
    return;
  }

LABEL_13:
  sub_10017B77C(v14, a2, a3, v8 & 1, a1, v20);
}

uint64_t sub_10017B77C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a6[6] + 24 * a1;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = a4;
  v10 = a6[7];
  v11 = _s14PricingServiceV12FetchedPriceVMa(0);
  result = sub_100183318(a5, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

uint64_t sub_10017B81C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *v3;
  sub_1001C6DF8();
  sub_1001C60E8();
  sub_1001C6E18(a3 & 1);
  v8 = sub_1001C6E28();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = v12 + 24 * v10;
    v14 = *(v13 + 16);
    v15 = *v13 == a1 && *(v13 + 8) == a2;
    if (v15 || (sub_1001C6D08()) && ((v14 ^ a3) & 1) == 0)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  v20 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100179A14();
    v18 = v20;
  }

  v19 = *(*(v18 + 48) + 24 * v10);
  sub_10017BDD4(v10);
  result = v19;
  *v3 = v20;
  return result;
}

uint64_t sub_10017B998(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1001C6DF8();
  sub_1001C60E8();
  v6 = sub_1001C6E28();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1001C6D08() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100179B7C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10017BFD0(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_10017BAD4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1001C6938();

    if (v6)
    {
      v7 = sub_10017BC6C(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
  v10 = sub_1001C6798(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1001C67A8();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100179E34();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_10017C194(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_10017BC6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1001C6908();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100178F44(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = sub_1001C6798(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1001C67A8();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_10017C194(v10);
  result = sub_1001C67A8();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10017BDD4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1001C68D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = 24 * v6;
        v12 = *(*(v3 + 48) + 24 * v6 + 16);
        sub_1001C6DF8();

        sub_1001C60E8();
        sub_1001C6E18(v12);
        v13 = sub_1001C6E28();

        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = v15 + 24 * v2;
          v17 = (v15 + v11);
          if (24 * v2 < v11 || v16 >= v17 + 24 || v2 != v6)
          {
            v10 = *v17;
            *(v16 + 16) = *(v17 + 2);
            *v16 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10017BFD0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1001C68D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1001C6DF8();

        sub_1001C60E8();
        v10 = sub_1001C6E28();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10017C194(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1001C68D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_1001C6798(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void (*sub_10017C334(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1001C69F8();
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
    return sub_10017C3B4;
  }

  __break(1u);
  return result;
}

void (*sub_10017C3BC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1001C69F8();
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
    return sub_100183898;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017C43C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10017C530;

  return v5(v2 + 32);
}

uint64_t sub_10017C530()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10017C644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C5648();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001C5688();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_100100DE8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024B770;
  v12 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1001C5668();
  v17 = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_10017C95C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10009AAEC;

  return sub_100171F04(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for BDSSyncEngine(uint64_t a1)
{
  result = qword_100273C90;
  if (!qword_100273C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017CA8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10017CAA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009B25C;

  return sub_100176330(a1, v4, v5, v6);
}

void sub_10017CB58(void *a1)
{
  v2 = a1;
  v3 = sub_1001C5128();
  v4 = sub_1001C65B8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_1001874E8(0xD00000000000003CLL, 0x8000000100203DF0, &v12);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = a1;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "BDSSyncEngine - %s. newUserRecordID - %@", v5, 0x16u);
    sub_10008875C(v6, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v7);
  }

  v12 = a1;
  sub_1001C5178();
  if (a1)
  {
    BDSSyncEngine.reestablishSalt()();
  }

  else
  {
    v9 = sub_1001C5128();
    v10 = sub_1001C65B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "BDSSyncEngine - Skipping salt establishment since no valid account found", v11, 2u);
    }
  }
}

uint64_t sub_10017CD64(uint64_t a1)
{
  v21 = a1;
  v1 = sub_1001C5648();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001C5688();
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C55A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_1001C5128();
  v10 = sub_1001C65B8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1001874E8(0xD00000000000001DLL, 0x8000000100203EC0, aBlock);
    _os_log_impl(&_mh_execute_header, v9, v10, "BDSSyncEngine - %s", v11, 0xCu);
    sub_10008E7BC(v12);
  }

  sub_100084528(&qword_10026ED10, &qword_1001F06D8);
  sub_1000885F4(&unk_100273D50, &qword_10026ED10, &qword_1001F06D8, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_1001C5198();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v7 + 32))(v15 + v14, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  aBlock[4] = sub_10018346C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024B5B8;
  v16 = _Block_copy(aBlock);

  sub_1001C5668();
  v27 = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  v17 = v24;
  v18 = v26;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v16);
  (*(v25 + 8))(v17, v18);
  (*(v22 + 8))(v5, v23);
}

void sub_10017D268(void *a1, uint64_t a2)
{
  v4 = sub_1001C64D8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.deleted(_:))
  {
    v9 = 0xE700000000000000;
    v10 = 0x646574656C6564;
  }

  else if (v8 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.purged(_:))
  {
    v9 = 0xE600000000000000;
    v10 = 0x646567727570;
  }

  else if (v8 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.encryptedDataReset(_:))
  {
    v10 = 0xD000000000000012;
    v9 = 0x8000000100203F10;
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v9 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  v11 = a1;

  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_1001874E8(0xD00000000000002ALL, 0x8000000100203EE0, &v19);
    *(v14 + 12) = 2114;
    *(v14 + 14) = v11;
    *v15 = v11;
    *(v14 + 22) = 2082;
    v16 = v11;
    v17 = sub_1001874E8(v10, v9, &v19);

    *(v14 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "BDSSyncEngine - %s: %{public}@, reason=%{public}s", v14, 0x20u);
    sub_10008875C(v15, &unk_1002718E0, &qword_1001F31F0);

    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10017D590(uint64_t a1)
{
  v3 = sub_1001C64D8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C6508();
  v8 = __chkstk_darwin(v7);
  result = __chkstk_darwin(v8);
  v13 = &v55 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v16 = *(v10 + 16);
    v15 = v10 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v63 = *(v15 + 56);
    v64 = v16;
    v58 = v3;
    v59 = result;
    v56 = v11;
    v57 = (v4 + 8);
    v61 = v15;
    v62 = (v15 - 8);
    v18 = v17;
    v60 = v1;
    v19 = v14;
    v20 = v6;
    v21 = result;
    do
    {
      v64(v13, v18, v21);
      v22 = sub_1001C64F8();
      sub_1001C64E8();
      sub_10017D268(v22, v20);

      (*v57)(v20, v58);
      v23 = *v62;
      (*v62)(v13, v21);
      v18 += v63;
      --v19;
    }

    while (v19);
    v24 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock;
    v25 = v60;
    [*(v60 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_zoneLock) lock];
    v26 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_validCKZones;
    swift_beginAccess();
    v27 = *(v25 + v26);
    v28 = *(v25 + v24);

    [v28 unlock];
    v65 = _swiftEmptyArrayStorage;
    sub_1001C6A78();
    v29 = v59;
    v30 = v56;
    do
    {
      v64(v30, v17, v29);
      sub_1001C64F8();
      v23(v30, v29);
      sub_1001C6A48();
      sub_1001C6A88();
      sub_1001C6A98();
      sub_1001C6A58();
      v17 += v63;
      --v14;
    }

    while (v14);
    v31 = v65;
    v65 = _swiftEmptyArrayStorage;
    if ((v31 & 0x8000000000000000) != 0 || (v31 & 0x4000000000000000) != 0)
    {
      goto LABEL_33;
    }

    for (i = *(v31 + 16); i; i = sub_1001C6B38())
    {
      v33 = 0;
      v61 = i;
      v62 = (v31 + 32);
      v63 = v27 & 0xC000000000000001;
      v64 = (v31 & 0xC000000000000001);
      v34 = v27 & 0xFFFFFFFFFFFFFF8;
      if (v27 < 0)
      {
        v34 = v27;
      }

      v59 = v34;
      v35 = v27 + 56;
      while (1)
      {
        if (v64)
        {
          v36 = sub_1001C69F8();
        }

        else
        {
          if (v33 >= *(v31 + 16))
          {
            goto LABEL_32;
          }

          v36 = v62[v33];
        }

        v37 = v36;
        if (__OFADD__(v33++, 1))
        {
          break;
        }

        if (v63)
        {
          v39 = v36;
          v40 = sub_1001C6938();

          if ((v40 & 1) == 0)
          {

            goto LABEL_13;
          }

LABEL_12:
          sub_1001C6A48();
          sub_1001C6A88();
          sub_1001C6A98();
          sub_1001C6A58();
LABEL_13:
          i = v61;
          if (v33 == v61)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (*(v27 + 16))
          {
            sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
            v41 = sub_1001C6798(*(v27 + 40));
            v42 = -1 << *(v27 + 32);
            v43 = v41 & ~v42;
            if (((*(v35 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
            {
LABEL_26:

              goto LABEL_13;
            }

            v44 = ~v42;
            while (1)
            {
              v45 = *(*(v27 + 48) + 8 * v43);
              v46 = sub_1001C67A8();

              if (v46)
              {
                goto LABEL_12;
              }

              v43 = (v43 + 1) & v44;
              if (((*(v35 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          if (v33 == i)
          {
LABEL_30:
            v47 = v65;
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

    v47 = _swiftEmptyArrayStorage;
LABEL_35:

    v48 = sub_1001C5128();
    v49 = sub_1001C65B8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v65 = v51;
      *v50 = 136446210;
      sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
      v52 = sub_1001C62A8();
      v54 = sub_1001874E8(v52, v53, &v65);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "BDSSyncEngine - handleZoneMissingOrDeleted: %{public}s", v50, 0xCu);
      sub_10008E7BC(v51);
    }

    sub_100174FE8(v47, 1);
  }

  return result;
}

uint64_t sub_10017DBA8(void *a1)
{
  v2 = sub_1001C5648();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C5688();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  v9 = sub_1001C5128();
  v10 = sub_1001C65B8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "BDSSyncEngine - didSave recordZone: %{public}@", v11, 0xCu);
    sub_10008875C(v12, &unk_1002718E0, &qword_1001F31F0);
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v8;
  aBlock[4] = sub_1001835D8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024B658;
  v16 = _Block_copy(aBlock);
  v17 = v8;

  sub_1001C5668();
  v22 = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v16);
  (*(v21 + 8))(v4, v2);
  (*(v19 + 8))(v7, v20);
}

void sub_10017DF84(void *a1)
{
  v1 = a1;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = [v1 recordID];
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEngine - didSave recordID: %@", v4, 0xCu);
    sub_10008875C(v5, &unk_1002718E0, &qword_1001F31F0);
  }

  v7 = sub_1001C6758();
  v9 = v8;
  v10 = sub_1001C5FE8();
  __chkstk_darwin(v10);
  sub_100084528(&qword_100273D70, &unk_1001F8750);
  sub_1001C6688();

  if (v16)
  {

    sub_100100DF0(&v15, v17);
    sub_10009BB74(v17, v17[3]);
    BDSSyncEnginePipeline.didSave(record:)(v1);
    sub_10008E7BC(v17);
  }

  else
  {
    sub_10008875C(&v15, &qword_100273D70, &unk_1001F8750);

    v11 = sub_1001C5128();
    v12 = sub_1001C6598();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v17[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_1001874E8(0xD000000000000016, 0x8000000100204010, v17);
      *(v13 + 12) = 2082;
      v14 = sub_1001874E8(v7, v9, v17);

      *(v13 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "BDSSyncEngine - %s: missing pipeline for %{public}s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10017E2B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;
  v6 = a1;
  swift_errorRetain();
  v7 = sub_1001C5128();
  v8 = sub_1001C65B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2112;
    v11 = v6;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "BDSSyncEngine - failedToSaveRecordWith recordID: %@, error: %@", v9, 0x16u);
    sub_100084528(&unk_1002718E0, &qword_1001F31F0);
    swift_arrayDestroy();
  }

  v13 = [v6 recordName];
  v14 = sub_1001C6018();
  v16 = v15;

  v33[0] = 46;
  v33[1] = 0xE100000000000000;
  __chkstk_darwin(v17);
  v28 = v33;
  if (sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018387C, &v27, v14, v16, &v30)[2])
  {
    v30 = v5;

    v18 = sub_1001C60B8();
    v20 = v19;

    v21 = sub_1001C5FE8();
    v22 = __chkstk_darwin(v21);
    v28 = v3;
    v29 = v22;
    sub_100084528(&qword_100273D70, &unk_1001F8750);
    sub_1001C6688();

    if (v32)
    {

      sub_100100DF0(&v31, v33);
      sub_10009BB74(v33, v33[3]);
      BDSSyncEnginePipeline.failedToSaveRecordWith(recordID:error:)(v6, a2);
      sub_10008E7BC(v33);
    }

    else
    {
      sub_10008875C(&v31, &qword_100273D70, &unk_1001F8750);

      v23 = sub_1001C5128();
      v24 = sub_1001C6598();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v33[0] = swift_slowAlloc();
        *v25 = 136315394;
        *(v25 + 4) = sub_1001874E8(0xD00000000000002BLL, 0x8000000100203FE0, v33);
        *(v25 + 12) = 2082;
        v26 = sub_1001874E8(v18, v20, v33);

        *(v25 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v23, v24, "BDSSyncEngine - %s: missing pipeline for %{public}s", v25, 0x16u);
        swift_arrayDestroy();
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

void sub_10017E6F0(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1001C5128();
  v5 = sub_1001C65B8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "BDSSyncEngine - didDeleteRecordWith recordID: %@", v6, 0xCu);
    sub_10008875C(v7, &unk_1002718E0, &qword_1001F31F0);
  }

  v9 = [v3 recordName];
  v10 = sub_1001C6018();
  v12 = v11;

  v29[0] = 46;
  v29[1] = 0xE100000000000000;
  __chkstk_darwin(v13);
  v24 = v29;
  if (sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018387C, &v23, v10, v12, &v26)[2])
  {

    v14 = sub_1001C60B8();
    v16 = v15;

    v17 = sub_1001C5FE8();
    v18 = __chkstk_darwin(v17);
    v24 = v2;
    v25 = v18;
    sub_100084528(&qword_100273D70, &unk_1001F8750);
    sub_1001C6688();

    if (v28)
    {

      sub_100100DF0(&v27, v29);
      sub_10009BB74(v29, v29[3]);
      BDSSyncEnginePipeline.didDeleteRecordWith(recordID:)(v3);
      sub_10008E7BC(v29);
    }

    else
    {
      sub_10008875C(&v27, &qword_100273D70, &unk_1001F8750);

      v19 = sub_1001C5128();
      v20 = sub_1001C6598();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v29[0] = swift_slowAlloc();
        *v21 = 136315394;
        *(v21 + 4) = sub_1001874E8(0xD000000000000022, 0x8000000100203FB0, v29);
        *(v21 + 12) = 2082;
        v22 = sub_1001874E8(v14, v16, v29);

        *(v21 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v19, v20, "BDSSyncEngine - %s: missing pipeline for %{public}s", v21, 0x16u);
        swift_arrayDestroy();
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

void sub_10017EAE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;

  v28 = v1;
  v4 = sub_1001C5128();
  v5 = sub_1001C65B8();

  v26[0] = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32[0] = v7;
    *v6 = 136446210;
    v8 = sub_1001C63F8();
    v10 = sub_1001874E8(v8, v9, v32);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "BDSSyncEngine - didCompleteModifyRecordsBatch recordTypes: %{public}s", v6, 0xCu);
    sub_10008E7BC(v7);
  }

  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v26[1] = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue;
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v27 = a1;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_10:
      v18 = (*(a1 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v14)))));
      v19 = *v18;
      v20 = v18[1];

      v21 = sub_1001C5FE8();
      v29 = v26;
      __chkstk_darwin(v21);
      sub_100084528(&qword_100273D70, &unk_1001F8750);
      sub_1001C6688();

      if (!v31)
      {
        break;
      }

      v14 &= v14 - 1;

      sub_100100DF0(&v30, v32);
      sub_10009BB74(v32, v32[3]);
      BDSSyncEnginePipeline.didCompleteModifyRecordsBatch()();
      sub_10008E7BC(v32);
      v16 = v17;
      a1 = v27;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

    sub_10008875C(&v30, &qword_100273D70, &unk_1001F8750);

    v22 = sub_1001C5128();
    v23 = sub_1001C6598();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100203F50, v32);
      *(v24 + 12) = 2082;
      v25 = sub_1001874E8(v19, v20, v32);

      *(v24 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v22, v23, "BDSSyncEngine - %s: missing pipeline for %{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

LABEL_13:
  }

  else
  {
LABEL_7:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        goto LABEL_13;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_10017EEE8(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;
  v6 = a1;
  swift_errorRetain();
  v7 = sub_1001C5128();
  v8 = sub_1001C65B8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2112;
    v11 = v6;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "BDSSyncEngine - failedToDeleteRecordWith recordID: %@, error: %@", v9, 0x16u);
    sub_100084528(&unk_1002718E0, &qword_1001F31F0);
    swift_arrayDestroy();
  }

  v13 = [v6 recordName];
  v14 = sub_1001C6018();
  v16 = v15;

  v33[0] = 46;
  v33[1] = 0xE100000000000000;
  __chkstk_darwin(v17);
  v28 = v33;
  if (sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018387C, &v27, v14, v16, &v30)[2])
  {
    v30 = v5;

    v18 = sub_1001C60B8();
    v20 = v19;

    v21 = sub_1001C5FE8();
    v22 = __chkstk_darwin(v21);
    v28 = v3;
    v29 = v22;
    sub_100084528(&qword_100273D70, &unk_1001F8750);
    sub_1001C6688();

    if (v32)
    {

      sub_100100DF0(&v31, v33);
      sub_10009BB74(v33, v33[3]);
      BDSSyncEnginePipeline.failedToDeleteRecordWith(recordID:error:)(v6, a2);
      sub_10008E7BC(v33);
    }

    else
    {
      sub_10008875C(&v31, &qword_100273D70, &unk_1001F8750);

      v23 = sub_1001C5128();
      v24 = sub_1001C6598();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v33[0] = swift_slowAlloc();
        *v25 = 136315394;
        *(v25 + 4) = sub_1001874E8(0xD00000000000002DLL, 0x8000000100203F80, v33);
        *(v25 + 12) = 2082;
        v26 = sub_1001874E8(v18, v20, v33);

        *(v25 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v23, v24, "BDSSyncEngine - %s: missing pipeline for %{public}s", v25, 0x16u);
        swift_arrayDestroy();
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

uint64_t sub_10017F324(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_errorRetain();
  v5 = sub_1001C5128();
  v6 = sub_1001C6598();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100203DC0, v27);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "BDSSyncEngine - %s. Error - %@", v7, 0x16u);
    sub_10008875C(v8, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v9);
  }

  v11 = sub_1001C4A18();
  v12 = [v11 domain];

  v13 = sub_1001C6018();
  v15 = v14;

  if (v13 == sub_1001C6018() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_1001C6D08();

    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  swift_errorRetain();
  v19 = sub_1001C5128();
  v20 = sub_1001C65A8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v23;
    *v22 = v23;
    _os_log_impl(&_mh_execute_header, v19, v20, "BDSSyncEngineDataSource. Receieved error with NSCocoaErrorDomain - %@", v21, 0xCu);
    sub_10008875C(v22, &unk_1002718E0, &qword_1001F31F0);
  }

LABEL_13:
  type metadata accessor for Code(0);
  v27[0] = 21;
  sub_1001826B0(&qword_10026F000, type metadata accessor for Code, &unk_1001F0B50);
  if (sub_1001C4998() & 1) != 0 || (v27[0] = 26, (sub_1001C4998()) || (v27[0] = 28, result = sub_1001C4998(), (result))
  {
    v25 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_invalidTokenZoneIDs;
    swift_beginAccess();
    v26 = a1;
    sub_1001C6278();
    if (*((*(v3 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v25) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1001C62B8();
    }

    sub_1001C62E8();
    return swift_endAccess();
  }

  return result;
}

void sub_10017F744(void *a1)
{
  v1 = a1;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1001874E8(0xD000000000000027, 0x8000000100204030, &v9);
    *(v4 + 12) = 2114;
    *(v4 + 14) = v1;
    *v5 = v1;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEngine - %s: zoneID: %{public}@", v4, 0x16u);
    sub_10008875C(v5, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v6);
  }

  v9 = v1;
  v8 = v1;
  sub_1001C5178();
}

uint64_t sub_10017F8D0()
{
  v1 = v0;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();

  v4 = &dword_100273000;
  if (os_log_type_enabled(v2, v3))
  {
    v5 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1001874E8(0xD000000000000023, 0x8000000100204060, v21);
    *(v5 + 12) = 2082;
    swift_beginAccess();
    sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);

    v6 = sub_1001C62A8();
    v8 = v7;

    v9 = sub_1001874E8(v6, v8, v21);

    *(v5 + 14) = v9;
    v4 = &dword_100273000;
    _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEngine - %s: invalidTokenZoneIDs: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v4 + 372);
  swift_beginAccess();
  v11 = *&v1[v10];
  if (v11 >> 62)
  {
    if (!sub_1001C6B38())
    {
      goto LABEL_8;
    }
  }

  else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
    v16 = sub_1001C62A8();
    v18 = sub_1001874E8(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "BDSSyncEngine - handleZoneDidReset: %{public}s", v14, 0xCu);
    sub_10008E7BC(v15);
  }

  sub_10017057C();
  BDSSyncEngine.reestablishSalt()();

  *&v1[v10] = _swiftEmptyArrayStorage;

LABEL_8:
  v20 = 0;
  return sub_1001C5178();
}

uint64_t sub_10017FC08(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_1001C53E8();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_1001C53F8();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = sub_1001C5568();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v6 = sub_1001C5588();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v7 = sub_1001C5488();
  v2[27] = v7;
  v2[28] = *(v7 - 8);
  v2[29] = swift_task_alloc();
  v8 = sub_1001C54D8();
  v2[30] = v8;
  v2[31] = *(v8 - 8);
  v2[32] = swift_task_alloc();
  v9 = sub_1001C5458();
  v2[33] = v9;
  v2[34] = *(v9 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v10 = sub_1001C6558();
  v2[37] = v10;
  v2[38] = *(v10 - 8);
  v2[39] = swift_task_alloc();
  v11 = sub_1001C6528();
  v2[40] = v11;
  v2[41] = *(v11 - 8);
  v2[42] = swift_task_alloc();
  v12 = sub_1001C5538();
  v2[43] = v12;
  v2[44] = *(v12 - 8);
  v2[45] = swift_task_alloc();
  v13 = sub_1001C64C8();
  v2[46] = v13;
  v2[47] = *(v13 - 8);
  v2[48] = swift_task_alloc();
  v14 = sub_1001C5508();
  v2[49] = v14;
  v2[50] = *(v14 - 8);
  v2[51] = swift_task_alloc();
  v15 = sub_1001C55A8();
  v2[52] = v15;
  v2[53] = *(v15 - 8);
  v2[54] = swift_task_alloc();
  v16 = sub_1001C53A8();
  v2[55] = v16;
  v2[56] = *(v16 - 8);
  v2[57] = swift_task_alloc();
  v17 = sub_1001C53B8();
  v2[58] = v17;
  v2[59] = *(v17 - 8);
  v2[60] = swift_task_alloc();
  v18 = sub_1001C53D8();
  v2[61] = v18;
  v2[62] = *(v18 - 8);
  v2[63] = swift_task_alloc();
  v19 = sub_1001C5598();
  v2[64] = v19;
  v2[65] = *(v19 - 8);
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();

  return _swift_task_switch(sub_1001802C4, 0, 0);
}

unint64_t sub_1001802C4()
{
  v356 = v0;
  v2 = v0;
  v3 = v0[67];
  v4 = v0[65];
  v5 = v0[64];
  v6 = *(v4 + 16);
  v6(v3, v2[10], v5);
  v7 = (*(v4 + 88))(v3, v5);
  v353 = v2;
  if (v7 == enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v8 = v2[67];
    v9 = v2[65];
    v10 = v2[64];
    v11 = v2[57];
    v12 = v2[56];
    v13 = v353[55];
    v14 = v353[54];
    v15 = v353[53];
    v16 = v353[52];
    (*(v9 + 96))(v8, v10);
    (*(v12 + 32))(v11, v8, v13);
    sub_1001C5398();
    sub_10017CD64(v14);
    (*(v15 + 8))(v14, v16);
    goto LABEL_3;
  }

  if (v7 == enum case for CKSyncEngine.Event.accountChange(_:))
  {
    v19 = v2[67];
    v20 = v2[65];
    v22 = v2[63];
    v21 = v2[64];
    v23 = v2[61];
    v24 = v2[62];
    v25 = v2;
    v28 = v2 + 59;
    v27 = v2[59];
    v26 = v28[1];
    v29 = v25[58];
    (*(v20 + 96))(v19, v21);
    (*(v24 + 32))(v22, v19, v23);
    sub_1001C53C8();
    v30 = (*(v27 + 88))(v26, v29);
    if (v30 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signIn(_:))
    {
      v32 = v25[62];
      v31 = v25[63];
      v34 = v25[60];
      v33 = v25[61];
      (*(v25[59] + 96))(v34, v25[58]);
      v35 = *v34;
      v36 = v35;
      sub_10017CB58(v35);

      (*(v32 + 8))(v31, v33);
      v2 = v25;
      goto LABEL_5;
    }

    if (v30 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signOut(_:))
    {
      v2 = v353;
      v61 = v353[62];
      v60 = v353[63];
      v63 = v353[60];
      v62 = v353[61];
      (*(v353[59] + 96))(v63, v353[58]);
      v64 = *v63;
      sub_10017CB58(0);

      (*(v61 + 8))(v60, v62);
      goto LABEL_5;
    }

    if (v30 != enum case for CKSyncEngine.Event.AccountChange.ChangeType.switchAccounts(_:))
    {
      v106 = sub_1001C5128();
      v107 = sub_1001C6598();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&_mh_execute_header, v106, v107, "BDSSyncEngine - handleEvent(.accountChange): unknown changeType", v108, 2u);
      }

      v110 = v353[62];
      v109 = v353[63];
      v112 = v353[60];
      v111 = v353[61];
      v113 = v353[59];
      v114 = v353[58];

      (*(v110 + 8))(v109, v111);
      (*(v113 + 8))(v112, v114);
      goto LABEL_4;
    }

    v11 = v353[63];
    v12 = v353[62];
    v13 = v353[61];
    v86 = v353[60];
    (*(v353[59] + 96))(v86, v353[58]);
    v87 = *v86;
    v88 = *(v86 + 8);
    v89 = v87;
    v90 = v88;
    sub_10017CB58(v88);

LABEL_3:
    (*(v12 + 8))(v11, v13);
LABEL_4:
    v2 = v353;
    goto LABEL_5;
  }

  if (v7 == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    v37 = v2[67];
    v38 = v2[50];
    v39 = v2[51];
    v40 = v2[49];
    (*(v2[65] + 96))(v37, v2[64]);
    (*(v38 + 32))(v39, v37, v40);
    v41 = sub_1001C54E8();
    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = v2[47];
      v44 = v2[11];
      v46 = *(v43 + 16);
      v43 += 16;
      v45 = v46;
      v47 = v41 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
      v48 = *(v43 + 56);
      v347 = (v43 - 8);
      v336 = v48;
      do
      {
        v49 = v353[48];
        v50 = v353[46];
        v45(v49, v47, v50);
        v51 = sub_1001C64B8();
        (*v347)(v49, v50);
        v52 = v51;
        v53 = sub_1001C5128();
        v54 = sub_1001C65B8();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = v45;
          v57 = v44;
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v355 = v59;
          *v55 = 136315394;
          *(v55 + 4) = sub_1001874E8(0xD000000000000020, 0x8000000100203E90, &v355);
          *(v55 + 12) = 2114;
          *(v55 + 14) = v52;
          *v58 = v52;
          v52 = v52;
          _os_log_impl(&_mh_execute_header, v53, v54, "BDSSyncEngine - %s: %{public}@", v55, 0x16u);
          sub_10008875C(v58, &unk_1002718E0, &qword_1001F31F0);
          v44 = v57;
          v45 = v56;

          sub_10008E7BC(v59);

          v48 = v336;
        }

        v47 += v48;
        --v42;
      }

      while (v42);

      v2 = v353;
    }

    else
    {
    }

    v103 = v2[50];
    v102 = v2[51];
    v104 = v2[49];
    v105 = sub_1001C54F8();
    sub_10017D590(v105);

LABEL_41:
    (*(v103 + 8))(v102, v104);
    goto LABEL_5;
  }

  if (v7 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
  {
    v65 = v2[67];
    v66 = v2[44];
    v67 = v2[45];
    v68 = v2[43];
    (*(v2[65] + 96))(v65, v2[64]);
    (*(v66 + 32))(v67, v65, v68);
    v69 = sub_1001C5518();
    v70 = *(v69 + 16);
    v71 = "' is now being tracked";
    if (v70)
    {
      v72 = v2[41];
      v74 = *(v72 + 16);
      v73 = v72 + 16;
      v75 = v69 + ((*(v73 + 64) + 32) & ~*(v73 + 64));
      v344 = v74;
      v334 = *(v73 + 56);
      do
      {
        v76 = v2[42];
        v77 = v2[40];
        v344(v76, v75, v77);
        v78 = sub_1001C6518();
        (*(v73 - 8))(v76, v77);
        v79 = v78;
        v80 = sub_1001C5128();
        v81 = sub_1001C65B8();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v355 = v84;
          *v82 = 136315394;
          *(v82 + 4) = sub_1001874E8(0xD000000000000017, 0x8000000100203E70, &v355);
          *(v82 + 12) = 2112;
          v85 = [v79 recordID];
          *(v82 + 14) = v85;
          *v83 = v85;
          _os_log_impl(&_mh_execute_header, v80, v81, "BDSSyncEngine - %s: %@", v82, 0x16u);
          sub_10008875C(v83, &unk_1002718E0, &qword_1001F31F0);

          sub_10008E7BC(v84);
          v2 = v353;
        }

        v2[8] = v79;
        sub_1001C5178();

        v75 += v334;
        --v70;
      }

      while (v70);

      v71 = "[State] Item '%s' is now being tracked" + 16;
    }

    else
    {
    }

    v126 = sub_1001C5528();
    v127 = *(v126 + 16);
    if (v127)
    {
      v128 = v2[38];
      v130 = *(v128 + 16);
      v128 += 16;
      v129 = v130;
      v131 = v126 + ((*(v128 + 64) + 32) & ~*(v128 + 64));
      v340 = *(v128 + 56);
      v337 = (v128 - 8);
      v330 = *(v71 + 411);
      do
      {
        v132 = v2[39];
        v133 = v2[37];
        v129(v132, v131, v133);
        v134 = sub_1001C6548();
        sub_1001C6538();
        (*v337)(v132, v133);
        v135 = v134;
        v136 = sub_1001C5128();
        v137 = sub_1001C65B8();

        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v140 = v129;
          v141 = swift_slowAlloc();
          v355 = v141;
          *v138 = v330;
          *(v138 + 4) = sub_1001874E8(0xD000000000000030, 0x8000000100203E30, &v355);
          *(v138 + 12) = 2112;
          *(v138 + 14) = v135;
          *v139 = v135;
          v142 = v135;
          _os_log_impl(&_mh_execute_header, v136, v137, "BDSSyncEngine - %s: %@", v138, 0x16u);
          sub_10008875C(v139, &unk_1002718E0, &qword_1001F31F0);
          v2 = v353;

          sub_10008E7BC(v141);
          v129 = v140;
        }

        v2[9] = v135;
        sub_1001C5178();

        v131 += v340;
        --v127;
      }

      while (v127);
    }

    (*(v2[44] + 8))(v2[45], v2[43]);
    goto LABEL_5;
  }

  if (v7 == enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
  {
    v91 = v2[67];
    v92 = v2[36];
    v93 = v2[33];
    v94 = v2[34];
    (*(v2[65] + 96))(v91, v2[64]);
    (*(v94 + 32))(v92, v91, v93);
    v95 = sub_1001C5408();
    if (v95 >> 62)
    {
      v219 = sub_1001C6B38();

      if (!v219)
      {
LABEL_93:
        v220 = *(sub_1001C5438() + 16);

        if (v220)
        {
          (*(v2[34] + 16))(v2[35], v2[36], v2[33]);
          v221 = sub_1001C5128();
          v222 = sub_1001C6598();
          v223 = os_log_type_enabled(v221, v222);
          v225 = v2[34];
          v224 = v2[35];
          v226 = v2[33];
          if (v223)
          {
            v227 = swift_slowAlloc();
            v228 = swift_slowAlloc();
            v355 = v228;
            *v227 = 136446210;
            sub_1001C5438();
            sub_1001C5418();
            v229 = sub_1001C62A8();
            v231 = v230;

            (*(v225 + 8))(v224, v226);
            v232 = sub_1001874E8(v229, v231, &v355);

            *(v227 + 4) = v232;
            _os_log_impl(&_mh_execute_header, v221, v222, "BDSSyncEngine - failedZoneSaves: %{public}s", v227, 0xCu);
            sub_10008E7BC(v228);
          }

          else
          {

            (*(v225 + 8))(v224, v226);
          }

          v2 = v353;
        }

        v233 = sub_1001C5428();
        if (v233 >> 62)
        {
          v251 = sub_1001C6B38();

          if (!v251)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v234 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v234)
          {
LABEL_114:
            v252 = *(sub_1001C5448() + 16);

            if (v252)
            {
              v253 = sub_1001C5448();
              v254 = 0;
              v255 = v253 + 64;
              v350 = v253;
              v256 = -1;
              v257 = -1 << *(v253 + 32);
              if (-v257 < 64)
              {
                v256 = ~(-1 << -v257);
              }

              v119 = v256 & *(v253 + 64);
              v1 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;
              v258 = (63 - v257) >> 6;
              v341 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_logger;
LABEL_119:
              if (v119)
              {
                goto LABEL_124;
              }

              while (1)
              {
                v259 = v254 + 1;
                if (__OFADD__(v254, 1))
                {
                  break;
                }

                if (v259 >= v258)
                {
                  v2 = v353;
                  (*(v353[34] + 8))(v353[36], v353[33]);

                  goto LABEL_5;
                }

                v119 = *(v255 + 8 * v259);
                ++v254;
                if (v119)
                {
                  v254 = v259;
LABEL_124:
                  v260 = (v254 << 9) | (8 * __clz(__rbit64(v119)));
                  v261 = *(*(v350 + 56) + v260);
                  v262 = *(*(v350 + 48) + v260);
                  v263 = v261;
                  v264 = v262;
                  v265 = v263;
                  v266 = sub_1001C5128();
                  v267 = sub_1001C65B8();

                  if (os_log_type_enabled(v266, v267))
                  {
                    v268 = swift_slowAlloc();
                    v269 = swift_slowAlloc();
                    *v268 = 138543618;
                    *(v268 + 4) = v264;
                    *v269 = v264;
                    *(v268 + 12) = 2114;
                    v270 = v264;
                    v271 = v265;
                    v272 = _swift_stdlib_bridgeErrorToNSError();
                    *(v268 + 14) = v272;
                    v269[1] = v272;
                    _os_log_impl(&_mh_execute_header, v266, v267, "BDSSyncEngine - failedToDeleteRecordZoneWith recordZoneID: %{public}@, error: %{public}@", v268, 0x16u);
                    sub_100084528(&unk_1002718E0, &qword_1001F31F0);
                    swift_arrayDestroy();

                    v1 = v341;
                  }

                  v119 &= v119 - 1;

                  goto LABEL_119;
                }
              }

              __break(1u);
              goto LABEL_129;
            }

            (*(v2[34] + 8))(v2[36], v2[33]);
LABEL_5:

            v17 = v2[1];

            return v17();
          }
        }

        result = sub_1001C5428();
        v235 = result;
        if (result >> 62)
        {
          result = sub_1001C6B38();
          v236 = result;
          if (result)
          {
LABEL_102:
            if (v236 >= 1)
            {
              v237 = 0;
              v238 = v2[11];
              v239 = v235 & 0xC000000000000001;
              do
              {
                if (v239)
                {
                  v240 = sub_1001C69F8();
                }

                else
                {
                  v240 = *(v235 + 8 * v237 + 32);
                }

                v241 = v240;
                v242 = sub_1001C5128();
                v243 = sub_1001C65B8();

                if (os_log_type_enabled(v242, v243))
                {
                  v244 = v239;
                  v245 = v238;
                  v246 = v236;
                  v247 = v235;
                  v248 = swift_slowAlloc();
                  v249 = swift_slowAlloc();
                  *v248 = 138543362;
                  *(v248 + 4) = v241;
                  *v249 = v241;
                  v250 = v241;
                  _os_log_impl(&_mh_execute_header, v242, v243, "BDSSyncEngine - didDeleteRecordZoneWith recordZoneID: %{public}@", v248, 0xCu);
                  sub_10008875C(v249, &unk_1002718E0, &qword_1001F31F0);
                  v2 = v353;

                  v235 = v247;
                  v236 = v246;
                  v238 = v245;
                  v239 = v244;
                }

                ++v237;
              }

              while (v236 != v237);
              goto LABEL_113;
            }

LABEL_165:
            __break(1u);
            goto LABEL_166;
          }
        }

        else
        {
          v236 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v236)
          {
            goto LABEL_102;
          }
        }

LABEL_113:

        goto LABEL_114;
      }
    }

    else
    {
      v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v96)
      {
        goto LABEL_93;
      }
    }

    result = sub_1001C5408();
    v97 = result;
    if (result >> 62)
    {
      result = sub_1001C6B38();
      v98 = result;
      if (result)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v98 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v98)
      {
LABEL_33:
        if (v98 < 1)
        {
          __break(1u);
          goto LABEL_165;
        }

        for (i = 0; i != v98; ++i)
        {
          if ((v97 & 0xC000000000000001) != 0)
          {
            v100 = sub_1001C69F8();
          }

          else
          {
            v100 = *(v97 + 8 * i + 32);
          }

          v101 = v100;
          sub_10017DBA8(v100);
        }
      }
    }

    goto LABEL_93;
  }

  if (v7 != enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
  {
    if (v7 == enum case for CKSyncEngine.Event.willFetchChanges(_:))
    {
      v143 = sub_1001C5128();
      v144 = sub_1001C65B8();
      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        *v145 = 0;
        _os_log_impl(&_mh_execute_header, v143, v144, "BDSSyncEngine - willFetchChanges", v145, 2u);
      }

      v146 = v2[67];
      v147 = v2[65];
      v148 = v2[64];

      goto LABEL_66;
    }

    v149 = v2[64];
    if (v7 == enum case for CKSyncEngine.Event.willFetchRecordZoneChanges(_:))
    {
      v150 = v2[67];
      v151 = v2[25];
      v152 = v2[26];
      v153 = v2[23];
      v154 = v2[24];
      (*(v2[65] + 96))(v150, v149);
      (*(v154 + 32))(v152, v150, v153);
      (*(v154 + 16))(v151, v152, v153);
      v155 = sub_1001C5128();
      v156 = sub_1001C65B8();
      v157 = os_log_type_enabled(v155, v156);
      v158 = v2[25];
      v159 = v2[26];
      v160 = v2[23];
      v161 = v2[24];
      if (v157)
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        *v162 = 138543362;
        v164 = sub_1001C5578();
        v165 = *(v161 + 8);
        v165(v158, v160);
        *(v162 + 4) = v164;
        *v163 = v164;
        _os_log_impl(&_mh_execute_header, v155, v156, "BDSSyncEngine - willFetchRecordZoneChanges: %{public}@", v162, 0xCu);
        sub_10008875C(v163, &unk_1002718E0, &qword_1001F31F0);
        v2 = v353;

        v165(v159, v160);
      }

      else
      {

        v175 = *(v161 + 8);
        v175(v158, v160);
        v175(v159, v160);
      }

      goto LABEL_5;
    }

    if (v7 == enum case for CKSyncEngine.Event.didFetchRecordZoneChanges(_:))
    {
      v166 = v2[67];
      v167 = v2[21];
      v168 = v2[22];
      v169 = v2[20];
      (*(v2[65] + 96))(v166, v149);
      (*(v167 + 32))(v168, v166, v169);
      v170 = sub_1001C5548();
      if (v170)
      {
        v171 = v170;
        v172 = sub_1001C5558();
        v173 = v171;
        sub_10017F324(v172, v173);
      }

      v103 = v2[21];
      v102 = v2[22];
      v104 = v2[20];
      v174 = sub_1001C5558();
      sub_10017F744(v174);

      goto LABEL_41;
    }

    if (v7 == enum case for CKSyncEngine.Event.didFetchChanges(_:))
    {
      v146 = v2[67];
      v147 = v2[65];
      v148 = v2[64];
      sub_10017F8D0();
LABEL_66:
      (*(v147 + 8))(v146, v148);
      goto LABEL_5;
    }

    if (v7 == enum case for CKSyncEngine.Event.willSendChanges(_:))
    {
      v176 = v2[67];
      v177 = v2[18];
      v178 = v2[19];
      v179 = v2[16];
      v180 = v2[17];
      (*(v2[65] + 96))(v176, v149);
      (*(v180 + 32))(v178, v176, v179);
      (*(v180 + 16))(v177, v178, v179);
      v181 = sub_1001C5128();
      v182 = sub_1001C65B8();
      v183 = os_log_type_enabled(v181, v182);
      v184 = v2[18];
      v185 = v2[19];
      v186 = v2[16];
      v187 = v2[17];
      if (v183)
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v355 = v189;
        *v188 = 136446210;
        sub_1001826B0(&qword_100273D48, &type metadata accessor for CKSyncEngine.Event.WillSendChanges, &protocol conformance descriptor for CKSyncEngine.Event.WillSendChanges);
        v190 = sub_1001C6CC8();
        v192 = v191;
        v348 = v185;
        v193 = *(v187 + 8);
        v193(v184, v186);
        v194 = sub_1001874E8(v190, v192, &v355);

        *(v188 + 4) = v194;
        v195 = "BDSSyncEngine - willSendChanges: %{public}s";
LABEL_83:
        _os_log_impl(&_mh_execute_header, v181, v182, v195, v188, 0xCu);
        sub_10008E7BC(v189);

        v2 = v353;

        v193(v348, v186);
        goto LABEL_5;
      }
    }

    else
    {
      if (v7 != enum case for CKSyncEngine.Event.didSendChanges(_:))
      {
        v6(v2[66], v2[10], v2[64]);
        v207 = sub_1001C5128();
        v208 = sub_1001C6598();
        v209 = os_log_type_enabled(v207, v208);
        v210 = v2[66];
        v211 = v2[65];
        v212 = v2[64];
        if (v209)
        {
          v213 = swift_slowAlloc();
          v349 = swift_slowAlloc();
          v355 = v349;
          *v213 = 136315138;
          sub_1001826B0(&qword_100273D38, &type metadata accessor for CKSyncEngine.Event, &protocol conformance descriptor for CKSyncEngine.Event);
          v214 = sub_1001C6CC8();
          v216 = v215;
          v217 = *(v211 + 8);
          v217(v210, v212);
          v218 = sub_1001874E8(v214, v216, &v355);

          *(v213 + 4) = v218;
          _os_log_impl(&_mh_execute_header, v207, v208, "BDSSyncEngine - handleEvent - unhandled event: %s", v213, 0xCu);
          sub_10008E7BC(v349);
        }

        else
        {

          v217 = *(v211 + 8);
          v217(v210, v212);
        }

        v2 = v353;
        v217(v353[67], v353[64]);
        goto LABEL_5;
      }

      v196 = v2[67];
      v197 = v2[14];
      v198 = v2[15];
      v199 = v2[12];
      v200 = v2[13];
      (*(v2[65] + 96))(v196, v149);
      (*(v200 + 32))(v198, v196, v199);
      (*(v200 + 16))(v197, v198, v199);
      v181 = sub_1001C5128();
      v182 = sub_1001C65B8();
      v201 = os_log_type_enabled(v181, v182);
      v184 = v2[14];
      v185 = v2[15];
      v186 = v2[12];
      v187 = v2[13];
      if (v201)
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v355 = v189;
        *v188 = 136446210;
        sub_1001826B0(&qword_100273D40, &type metadata accessor for CKSyncEngine.Event.DidSendChanges, &protocol conformance descriptor for CKSyncEngine.Event.DidSendChanges);
        v202 = sub_1001C6CC8();
        v204 = v203;
        v348 = v185;
        v193 = *(v187 + 8);
        v193(v184, v186);
        v205 = sub_1001874E8(v202, v204, &v355);

        *(v188 + 4) = v205;
        v195 = "BDSSyncEngine - didSendChanges: %{public}s";
        goto LABEL_83;
      }
    }

    v206 = *(v187 + 8);
    v206(v184, v186);
    v206(v185, v186);
    goto LABEL_5;
  }

  v115 = v2[67];
  v116 = v2[31];
  v117 = v2[32];
  v118 = v2[30];
  (*(v2[65] + 96))(v115, v2[64]);
  (*(v116 + 32))(v117, v115, v118);
  v354 = &_swiftEmptySetSingleton;
  result = sub_1001C54C8();
  v119 = result;
  if (!(result >> 62))
  {
    v120 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v120)
    {
      goto LABEL_130;
    }

    goto LABEL_49;
  }

LABEL_129:
  result = sub_1001C6B38();
  v120 = result;
  if (!result)
  {
    goto LABEL_130;
  }

LABEL_49:
  if (v120 >= 1)
  {
    v121 = 0;
    do
    {
      if ((v119 & 0xC000000000000001) != 0)
      {
        v122 = sub_1001C69F8();
      }

      else
      {
        v122 = *(v119 + 8 * v121 + 32);
      }

      v123 = v122;
      ++v121;
      v124 = sub_1001C6758();
      sub_100178A6C(&v355, v124, v125);

      sub_10017DF84(v123);
    }

    while (v120 != v121);
LABEL_130:
    v273 = v353;

    v274 = sub_1001C5498();
    v275 = *(v274 + 16);
    if (v275)
    {
      v276 = 0;
      v277 = v353[28];
      v278 = *(v277 + 16);
      v277 += 16;
      v333 = v278;
      v279 = v274 + ((*(v277 + 64) + 32) & ~*(v277 + 64));
      v332 = *(v277 + 56);
      v338 = (v353 + 2);
      v331 = (v277 - 8);
      do
      {
        v333(v353[29], v279, v353[27]);
        v280 = sub_1001C5478();
        v281 = [v280 recordID];

        v282 = [v281 recordName];
        v283 = sub_1001C6018();
        v285 = v284;

        v353[2] = 46;
        v353[3] = 0xE100000000000000;
        v286 = swift_task_alloc();
        *(v286 + 16) = v338;
        v287 = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018344C, v286, v283, v285, v338);

        if (!v287[2])
        {
          goto LABEL_159;
        }

        v288 = v353[29];
        v342 = v353[27];
        v289 = v279;
        v1 = v287[5];
        v351 = v275;

        v290 = sub_1001C60B8();
        v292 = v291;

        sub_100178A6C(&v355, v290, v292);

        v293 = sub_1001C5468();
        (*v331)(v288, v342);
        sub_10017E2B4(v281, v293);

        v279 = v289 + v332;
        v275 = v351 - 1;
      }

      while (v351 != 1);
    }

    else
    {

      v276 = 0;
    }

    result = sub_1001C54B8();
    v1 = result;
    if (result >> 62)
    {
      goto LABEL_162;
    }

    v294 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v352 = 0;
    if (v294)
    {
      goto LABEL_138;
    }

    while (1)
    {
LABEL_146:
      v343 = v273 + 48;

      v307 = sub_1001C54A8();
      v308 = 0;
      v309 = v307 + 64;
      v346 = v307;
      v310 = -1;
      v311 = -1 << *(v307 + 32);
      if (-v311 < 64)
      {
        v310 = ~(-1 << -v311);
      }

      v312 = v310 & *(v307 + 64);
      v313 = (63 - v311) >> 6;
      v335 = v313;
      for (j = v307 + 64; v312; v309 = j)
      {
        v314 = v308;
        v2 = v353;
LABEL_154:
        v315 = (v314 << 9) | (8 * __clz(__rbit64(v312)));
        v316 = *(*(v346 + 56) + v315);
        v1 = *(*(v346 + 48) + v315);
        v273 = v316;
        v317 = [v1 recordName];
        v318 = sub_1001C6018();
        v320 = v319;

        v2[6] = 46;
        v2[7] = 0xE100000000000000;
        v321 = swift_task_alloc();
        *(v321 + 16) = v343;
        v322 = v320;
        v276 = v352;
        v323 = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018387C, v321, v318, v322, v343);

        if (!v323[2])
        {
          goto LABEL_161;
        }

        v312 &= v312 - 1;

        v324 = sub_1001C60B8();
        v326 = v325;

        sub_100178A6C(&v355, v324, v326);

        v276 = v273;
        sub_10017EEE8(v1, v276);

        v308 = v314;
        v313 = v335;
      }

      v2 = v353;
      while (1)
      {
        v314 = v308 + 1;
        if (__OFADD__(v308, 1))
        {
          break;
        }

        if (v314 >= v313)
        {
          v328 = v353[31];
          v327 = v353[32];
          v329 = v353[30];

          sub_10017EAE0(v354);

          (*(v328 + 8))(v327, v329);
          goto LABEL_5;
        }

        v312 = *(v309 + 8 * v314);
        ++v308;
        if (v312)
        {
          goto LABEL_154;
        }
      }

      __break(1u);
LABEL_159:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        result = sub_1001C6B38();
        v294 = result;
        v352 = v276;
        if (!result)
        {
          break;
        }

LABEL_138:
        if (v294 < 1)
        {
          goto LABEL_167;
        }

        v295 = 0;
        v345 = v273 + 32;
        while (1)
        {
          v296 = (v1 & 0xC000000000000001) != 0 ? sub_1001C69F8() : *(v1 + 8 * v295 + 32);
          v297 = v296;
          v273 = v352;
          v298 = [v296 recordName];
          v299 = sub_1001C6018();
          v301 = v300;

          v353[4] = 46;
          v353[5] = 0xE100000000000000;
          v302 = swift_task_alloc();
          *(v302 + 16) = v345;
          v303 = v301;
          v276 = v352;
          v304 = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10018387C, v302, v299, v303, v345);

          if (!v304[2])
          {
            break;
          }

          ++v295;

          v276 = sub_1001C60B8();
          v306 = v305;

          sub_100178A6C(&v355, v276, v306);

          sub_10017E6F0(v297);

          if (v294 == v295)
          {
            v273 = v353;
            goto LABEL_146;
          }
        }
      }
    }
  }

LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
  return result;
}

double sub_1001825D4@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_registeredDataSourceByRecordType;
  swift_beginAccess();
  *a1 = *(v3 + v4);

  return result;
}

uint64_t sub_100182640(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_100270B80, &unk_1001F3528);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001826B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001826F8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v25 = *(*(v24 + 48) + 8 * v13);
    __chkstk_darwin(a1);
    v19[2] = &v25;
    v15 = v14;
    v16 = sub_1001A9AD0(sub_1001838C0, v19, v23);

    if (v16)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        sub_100156C94(v21, v20, v22, v18);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1001828A0(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v31 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = &v26;
    v27 = v5;
    __chkstk_darwin(v7);
    v28 = &v26 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v6);
    v29 = 0;
    v30 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v32 = *(*(v30 + 48) + 8 * v17);
      __chkstk_darwin(v8);
      *(&v26 - 2) = &v32;
      v19 = v18;
      v20 = sub_1001A9AD0(sub_1001838C0, (&v26 - 4), v31);

      if (v20)
      {
        *&v28[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_100156C94(v28, v27, v29, v30);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v31;

  v22 = sub_100178714(v24, v5, v2, v25);

LABEL_17:

  return v22;
}

Swift::Int sub_100182B60(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1001828A0(a1, a2);
  }

  v3 = &_swiftEmptySetSingleton;
  v24 = &_swiftEmptySetSingleton;

  sub_1001C68F8();
  v4 = sub_1001C6928();
  if (v4)
  {
    v5 = v4;
    sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
    v6 = v5;
    do
    {
      v22 = v6;
      v7 = swift_dynamicCast();
      v22 = v23;
      __chkstk_darwin(v7);
      v21[2] = &v22;
      v8 = sub_1001A9AD0(sub_1001833C8, v21, a2);
      v9 = v23;
      if (v8)
      {
        v10 = v3[2];
        if (v3[3] <= v10)
        {
          sub_100178468(v10 + 1);
        }

        v3 = v24;
        result = sub_1001C6798(v24[5]);
        v12 = (v3 + 7);
        v13 = -1 << *(v3 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~v3[(v14 >> 6) + 7]) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~v3[(v14 >> 6) + 7])) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v15 == v18;
            if (v15 == v18)
            {
              v15 = 0;
            }

            v17 |= v19;
            v20 = *&v12[8 * v15];
          }

          while (v20 == -1);
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
        }

        *&v12[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        *(v3[6] + 8 * v16) = v9;
        ++v3[2];
      }

      else
      {
      }

      v6 = sub_1001C6928();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_100182DC4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001C5648();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C5688();
  v18 = *(v7 - 8);
  v19 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_1001C5128();
  v11 = sub_1001C65B8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_1001874E8(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v10, v11, "BDSSyncEngine - updatedSaltWithVersion %{public}s", v12, 0xCu);
    sub_10008E7BC(v13);
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_10018337C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_10024B540;
  v16 = _Block_copy(aBlock);

  sub_1001C5668();
  v21 = _swiftEmptyArrayStorage;
  sub_1001826B0(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v16);
  (*(v20 + 8))(v6, v4);
  (*(v18 + 8))(v9, v19);
}

uint64_t sub_1001831B4(uint64_t a1)
{
  result = sub_1001C5148();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1001832B4(uint64_t a1, uint64_t a2)
{
  v4 = _s14PricingServiceV12FetchedPriceVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100183318(uint64_t a1, uint64_t a2)
{
  v4 = _s14PricingServiceV12FetchedPriceVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100183388()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100183484()
{
  v1 = sub_1001C55A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100183560(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1001C55A8() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100183604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009B25C;

  return sub_100172BF8(a1, v4, v5, v7, v6);
}

uint64_t sub_1001836D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10009B25C;

  return sub_10017C43C(a1, v4);
}

uint64_t sub_100183788(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10009AAEC;

  return sub_10017C43C(a1, v4);
}

uint64_t ReadingHistoryUpdate.days.getter()
{
  v1 = OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days;
  if (*(v0 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days))
  {
    v2 = *(v0 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days);
  }

  else
  {
    v2 = sub_100185F78(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

id ReadingHistoryUpdate.coalesce(newerUpdate:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v87 = sub_1001C4CA8();
  v3 = *(v87 - 8);
  v4 = __chkstk_darwin(v87);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v79 = &v70 - v7;
  v8 = sub_100084528(&qword_100273D90, &qword_1001F7E40);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v70 - v12;
  v71 = v1;
  v72 = a1;
  v13 = &v1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v14 = *&v1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v73 = &a1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v74 = v13;
  v15 = *&a1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v16 = *(v15 + 64);
  v77 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v76 = (v17 + 63) >> 6;
  v83 = v3 + 16;
  v84 = v3;
  v85 = (v3 + 32);
  v81 = (v3 + 8);

  v80 = v15;

  v20 = 0;
  v21 = &qword_100273D98;
  v86 = v6;
  v78 = v11;
  while (1)
  {
    if (!v19)
    {
      if (v76 <= v20 + 1)
      {
        v26 = v20 + 1;
      }

      else
      {
        v26 = v76;
      }

      v27 = v26 - 1;
      v28 = v82;
      while (1)
      {
        v25 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v25 >= v76)
        {
          v61 = sub_100084528(&qword_100273D98, &qword_1001F7E48);
          (*(*(v61 - 8) + 56))(v11, 1, 1, v61);
          v19 = 0;
          goto LABEL_16;
        }

        v19 = *(v77 + 8 * v25);
        ++v20;
        if (v19)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v25 = v20;
LABEL_15:
    v29 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v30 = v29 | (v25 << 6);
    v31 = v80;
    v32 = v84;
    (*(v84 + 16))(v79, *(v80 + 48) + *(v84 + 72) * v30, v87);
    v33 = (*(v31 + 56) + 16 * v30);
    v34 = *v33;
    v35 = v33[1];
    v36 = sub_100084528(&qword_100273D98, &qword_1001F7E48);
    v37 = &v78[*(v36 + 48)];
    v38 = *(v32 + 32);
    v39 = v78;
    v38();
    *v37 = v34;
    v37[1] = v35;
    (*(*(v36 - 8) + 56))(v39, 0, 1, v36);
    v40 = v35;
    v11 = v39;
    sub_10009AD9C(v34, v40);
    v27 = v25;
    v28 = v82;
LABEL_16:
    sub_10009AE58(v11, v28, &qword_100273D90, &qword_1001F7E40);
    v41 = sub_100084528(&qword_100273D98, &qword_1001F7E48);
    if ((*(*(v41 - 8) + 48))(v28, 1, v41) == 1)
    {

      v21 = *(v74 + 1);
      v27 = *(v73 + 1);
      if (v27 >= v21)
      {
LABEL_31:
        v66 = ObjectType;
        v67 = objc_allocWithZone(ObjectType);
        *&v67[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
        v68 = &v67[OBJC_IVAR___BDSReadingHistoryUpdate_value];
        *v68 = v14;
        *(v68 + 1) = v27;
        v89.receiver = v67;
        v89.super_class = v66;
        return objc_msgSendSuper2(&v89, "init");
      }

      LOBYTE(v28) = sub_1001C6598();
      if (qword_10026EBE8 == -1)
      {
LABEL_29:
        v62 = qword_1002711E8;
        if (os_log_type_enabled(qword_1002711E8, v28))
        {
          v63 = v71;
          v64 = v72;
          v65 = swift_slowAlloc();
          *v65 = 134218240;
          *(v65 + 4) = v21;

          *(v65 + 12) = 2048;
          *(v65 + 14) = v27;

          _os_log_impl(&_mh_execute_header, v62, v28, "ReadingHistoryUpdate: coalesce - unexpected editGeneration=%ld, newerUpdate.editGeneration=%ld", v65, 0x16u);
        }

        goto LABEL_31;
      }

LABEL_35:
      swift_once();
      goto LABEL_29;
    }

    v42 = v11;
    v43 = (v28 + *(v41 + 48));
    v45 = *v43;
    v44 = v43[1];
    v46 = v86;
    (*v85)(v86, v28, v87);
    sub_10009AD9C(v45, v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v14;
    v21 = sub_100187AA4(v46);
    v49 = v14[2];
    v50 = (v48 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_33;
    }

    v52 = v48;
    if (v14[3] < v51)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10018AC44();
    }

LABEL_23:
    v11 = v42;
    v14 = v88;
    if (v52)
    {
      v22 = (v88[7] + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      *v22 = v45;
      v22[1] = v44;
      sub_1000887D0(v23, v24);
      sub_1000887D0(v45, v44);
      (*v81)(v86, v87);
    }

    else
    {
      v88[(v21 >> 6) + 8] |= 1 << v21;
      v55 = v84;
      v56 = v86;
      v28 = v87;
      (*(v84 + 16))(v14[6] + *(v84 + 72) * v21, v86, v87);
      v57 = (v14[7] + 16 * v21);
      *v57 = v45;
      v57[1] = v44;
      sub_1000887D0(v45, v44);
      (*(v55 + 8))(v56, v28);
      v58 = v14[2];
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_34;
      }

      v14[2] = v60;
    }

    v20 = v27;
    v21 = &qword_100273D98;
  }

  sub_100188E3C(v51, isUniquelyReferenced_nonNull_native);
  v53 = sub_100187AA4(v86);
  if ((v52 & 1) == (v54 & 1))
  {
    v21 = v53;
    goto LABEL_23;
  }

  result = sub_1001C6D68();
  __break(1u);
  return result;
}

BOOL ReadingHistoryUpdate.hasDelta(from:)(uint64_t a1)
{
  v129 = a1;
  v2 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v3 = __chkstk_darwin(v2 - 8);
  v128 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v134 = &v109 - v5;
  v127 = type metadata accessor for ReadingHistoryDay(0);
  v6 = *(v127 - 8);
  v7 = __chkstk_darwin(v127);
  v112 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v113 = &v109 - v10;
  v11 = __chkstk_darwin(v9);
  v110 = &v109 - v12;
  v13 = __chkstk_darwin(v11);
  v125 = &v109 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v109 - v16;
  __chkstk_darwin(v15);
  v119 = &v109 - v18;
  v19 = sub_1001C4CA8();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v111 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v109 = &v109 - v24;
  v25 = __chkstk_darwin(v23);
  v131 = &v109 - v26;
  __chkstk_darwin(v25);
  v117 = &v109 - v27;
  v28 = sub_100084528(&qword_100273DA8, &qword_1001F7E58);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v109 - v32;
  v34 = ReadingHistoryUpdate.days.getter();
  v35 = 0;
  v36 = *(v34 + 64);
  v114 = v34 + 64;
  v37 = 1 << *(v34 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v40 = (v37 + 63) >> 6;
  v122 = (v20 + 16);
  v123 = v34;
  v132 = (v20 + 32);
  v133 = v19;
  v120 = v6;
  v121 = v17;
  v126 = (v6 + 48);
  v118 = v20;
  v41 = (v20 + 8);
  v42 = v33;
  v130 = v41;
  v115 = v33;
  v116 = v31;
  if (v39)
  {
    while (1)
    {
      v43 = v35;
LABEL_12:
      v46 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v47 = v46 | (v43 << 6);
      v48 = v123;
      v49 = v118;
      (*(v118 + 16))(v117, *(v123 + 48) + *(v118 + 72) * v47, v133);
      v50 = v119;
      sub_10018C0E8(*(v48 + 56) + *(v120 + 72) * v47, v119, type metadata accessor for ReadingHistoryDay);
      v51 = sub_100084528(&unk_100273DB0, &qword_1001F7E60);
      v52 = *(v51 + 48);
      v31 = v116;
      (*(v49 + 32))();
      sub_10018C150(v50, &v31[v52], type metadata accessor for ReadingHistoryDay);
      (*(*(v51 - 8) + 56))(v31, 0, 1, v51);
      v45 = v43;
      v17 = v121;
      v42 = v115;
LABEL_13:
      sub_10009AE58(v31, v42, &qword_100273DA8, &qword_1001F7E58);
      v53 = sub_100084528(&unk_100273DB0, &qword_1001F7E60);
      v54 = (*(*(v53 - 8) + 48))(v42, 1, v53);
      if (v54 == 1)
      {
        break;
      }

      v124 = v54;
      v55 = *(v53 + 48);
      v56 = v131;
      v57 = v133;
      (*v132)(v131, v42, v133);
      sub_10018C150(v42 + v55, v17, type metadata accessor for ReadingHistoryDay);
      v58 = v134;
      ReadingHistoryModel.readingHistoryDay(for:)(v134);
      v59 = v58;
      v60 = v128;
      sub_10018AED0(v59, v128);
      if ((*v126)(v60, 1, v127) == 1)
      {
        sub_10018AF40(v60);
        v64 = sub_1001C65B8();
        if (qword_10026EBE8 != -1)
        {
          swift_once();
        }

        v65 = qword_1002711E8;
        v66 = v111;
        (*v122)(v111, v56, v57);
        v67 = v112;
        sub_10018C0E8(v17, v112, type metadata accessor for ReadingHistoryDay);
        if (os_log_type_enabled(v65, v64))
        {
          v68 = swift_slowAlloc();
          v135[0] = swift_slowAlloc();
          *v68 = 136315394;
          sub_10018C2C8(&qword_100270A80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v69 = sub_1001C6CC8();
          v70 = v66;
          v72 = v71;
          v73 = *v130;
          (*v130)(v70, v57);
          v74 = sub_1001874E8(v69, v72, v135);

          *(v68 + 4) = v74;
          *(v68 + 12) = 2080;
          v76 = ReadingHistoryDay.description.getter(v75);
          v78 = v77;
          sub_10018AFA8(v67);
          v79 = sub_1001874E8(v76, v78, v135);

          *(v68 + 14) = v79;
          _os_log_impl(&_mh_execute_header, v65, v64, "ReadingHistoryUpdate: has forward delta for %s - day=%s modelDay=nil", v68, 0x16u);
          swift_arrayDestroy();

          sub_10018AF40(v134);
          sub_10018AFA8(v121);
          v80 = v131;
          v81 = v57;
          goto LABEL_29;
        }

        sub_10018AFA8(v67);
        v106 = *v130;
        (*v130)(v66, v57);
        goto LABEL_32;
      }

      v61 = v60;
      v62 = v125;
      sub_10018C150(v61, v125, type metadata accessor for ReadingHistoryDay);
      sub_10018C2C8(&qword_100273DC0, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
      v1 = v17;
      if (sub_1001C5948())
      {
        v82 = sub_1001C65B8();
        if (qword_10026EBE8 != -1)
        {
          swift_once();
        }

        v83 = qword_1002711E8;
        v84 = v109;
        (*v122)(v109, v56, v57);
        v85 = v110;
        sub_10018C0E8(v17, v110, type metadata accessor for ReadingHistoryDay);
        v86 = v125;
        v87 = v113;
        sub_10018C0E8(v125, v113, type metadata accessor for ReadingHistoryDay);
        if (os_log_type_enabled(v83, v82))
        {
          v88 = v85;
          v89 = swift_slowAlloc();
          v135[0] = swift_slowAlloc();
          *v89 = 136315650;
          sub_10018C2C8(&qword_100270A80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v90 = sub_1001C6CC8();
          v91 = v84;
          v93 = v92;
          LODWORD(v132) = v82;
          v73 = *v130;
          (*v130)(v91, v57);
          v94 = sub_1001874E8(v90, v93, v135);

          *(v89 + 4) = v94;
          *(v89 + 12) = 2080;
          v96 = ReadingHistoryDay.description.getter(v95);
          v98 = v97;
          sub_10018AFA8(v88);
          v99 = sub_1001874E8(v96, v98, v135);

          *(v89 + 14) = v99;
          *(v89 + 22) = 2080;
          v101 = v113;
          v102 = ReadingHistoryDay.description.getter(v100);
          v104 = v103;
          sub_10018AFA8(v101);
          v105 = sub_1001874E8(v102, v104, v135);

          *(v89 + 24) = v105;
          _os_log_impl(&_mh_execute_header, v83, v132, "ReadingHistoryUpdate: has forward delta for %s - day=%s modelDay=%s", v89, 0x20u);
          swift_arrayDestroy();

          sub_10018AFA8(v86);
          sub_10018AF40(v134);
          sub_10018AFA8(v121);
          v80 = v131;
          v81 = v133;
LABEL_29:
          v73(v80, v81);
LABEL_33:
          v1 = v124;
          return v1 != 1;
        }

        sub_10018AFA8(v87);
        sub_10018AFA8(v85);
        v106 = *v130;
        (*v130)(v84, v57);
        sub_10018AFA8(v86);
LABEL_32:
        sub_10018AF40(v134);
        sub_10018AFA8(v17);
        v106(v56, v57);
        goto LABEL_33;
      }

      sub_10018AFA8(v62);
      sub_10018AF40(v134);
      sub_10018AFA8(v17);
      v34 = (*v130)(v56, v57);
      v35 = v45;
      if (!v39)
      {
        goto LABEL_5;
      }
    }

    v1 = 1;

    v34 = sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_5:
    if (v40 <= v35 + 1)
    {
      v44 = v35 + 1;
    }

    else
    {
      v44 = v40;
    }

    v45 = v44 - 1;
    while (1)
    {
      v43 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v43 >= v40)
      {
        v63 = sub_100084528(&unk_100273DB0, &qword_1001F7E60);
        (*(*(v63 - 8) + 56))(v31, 1, 1, v63);
        v39 = 0;
        goto LABEL_13;
      }

      v39 = *(v114 + 8 * v43);
      ++v35;
      if (v39)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_36:
    v108 = v34;
    swift_once();
    v34 = v108;
  }

  sub_1001C5118(v34, &_mh_execute_header, qword_1002711E8, "ReadingHistoryUpdate: no forward delta", 38, 2, _swiftEmptyArrayStorage);
  return v1 != 1;
}

uint64_t sub_100184D44()
{
  if (*v0)
  {
    return 0x656E654774696465;
  }

  else
  {
    return 0x6174614473796164;
  }
}

uint64_t sub_100184D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6174614473796164 && a2 == 0xE800000000000000;
  if (v6 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E654774696465 && a2 == 0xEE006E6F69746172)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100184E70(uint64_t a1)
{
  v2 = sub_10018B004();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100184EAC(uint64_t a1)
{
  v2 = sub_10018B004();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _ReadingHistoryUpdateProperties.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100084528(&qword_100273DC8, &qword_1001F7E68);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_10009BB74(a1, a1[3]);
  sub_10018B004();
  sub_1001C6E78();
  v12 = a2;
  v11[15] = 0;
  sub_100084528(&qword_100273DD8, &unk_1001F7E70);
  sub_10018B058();
  sub_1001C6CA8();
  if (!v3)
  {
    v11[14] = 1;
    sub_1001C6C98();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001850B4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10018BD2C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

id ReadingHistoryUpdate.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
  v6 = &v5[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

id ReadingHistoryUpdate.init(value:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
  v6 = &v2[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

id ReadingHistoryUpdate.__allocating_init(days:crdtContext:editGeneration:)(uint64_t a1, void *a2, uint64_t a3)
{
  v112 = a3;
  v134 = a2;
  v4 = sub_1001C5BD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v132 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for ReadingHistoryDay(0);
  v120 = *(v137 - 8);
  v7 = __chkstk_darwin(v137);
  v126 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v142 = &v111 - v10;
  __chkstk_darwin(v9);
  v119 = &v111 - v11;
  v12 = sub_1001C4CA8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v125 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v114 = &v111 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v111 - v19;
  __chkstk_darwin(v18);
  v118 = &v111 - v21;
  v22 = sub_100084528(&qword_100273DA8, &qword_1001F7E58);
  v23 = __chkstk_darwin(v22 - 8);
  v133 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v136 = &v111 - v25;
  sub_10018C2C8(&qword_100273170, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v115 = sub_1001C5F38();
  v27 = 0;
  v28 = 0;
  v122 = a1;
  v29 = *(a1 + 64);
  v116 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v139 = (v13 + 32);
  v140 = (v13 + 16);
  v131 = enum case for CRCodableVersion.version3(_:);
  v130 = (v5 + 104);
  v129 = (v5 + 8);
  v121 = v13;
  v128 = (v13 + 8);
  *&v26 = 136315394;
  v117 = v26;
  v138 = v4;
  v143 = v12;
  v135 = v20;
  v127 = v33;
  while (2)
  {
    while (2)
    {
      v34 = v27;
      v35 = v136;
      while (1)
      {
        if (!v32)
        {
          if (v33 <= v34 + 1)
          {
            v38 = v34 + 1;
          }

          else
          {
            v38 = v33;
          }

          v39 = v38 - 1;
          while (1)
          {
            v37 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              break;
            }

            if (v37 >= v33)
            {
              v73 = sub_100084528(&unk_100273DB0, &qword_1001F7E60);
              v52 = v133;
              (*(*(v73 - 8) + 56))(v133, 1, 1, v73);
              v32 = 0;
              goto LABEL_18;
            }

            v32 = *(v116 + 8 * v37);
            ++v34;
            if (v32)
            {
              v141 = v28;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_37;
        }

        v141 = v28;
        v37 = v34;
LABEL_17:
        v40 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v41 = v40 | (v37 << 6);
        v42 = v122;
        v43 = v121;
        v44 = v118;
        (*(v121 + 16))(v118, *(v122 + 48) + *(v121 + 72) * v41, v12);
        v45 = v119;
        sub_10018C0E8(*(v42 + 56) + *(v120 + 72) * v41, v119, type metadata accessor for ReadingHistoryDay);
        v46 = sub_100084528(&unk_100273DB0, &qword_1001F7E60);
        v47 = v12;
        v48 = *(v46 + 48);
        v49 = *(v43 + 32);
        v50 = v133;
        v49(v133, v44, v47);
        v51 = &v50[v48];
        v52 = v50;
        sub_10018C150(v45, v51, type metadata accessor for ReadingHistoryDay);
        (*(*(v46 - 8) + 56))(v50, 0, 1, v46);
        v39 = v37;
        v20 = v135;
        v35 = v136;
        v28 = v141;
        v4 = v138;
LABEL_18:
        sub_10009AE58(v52, v35, &qword_100273DA8, &qword_1001F7E58);
        v53 = sub_100084528(&unk_100273DB0, &qword_1001F7E60);
        if ((*(*(v53 - 8) + 48))(v35, 1, v53) == 1)
        {

          v105 = v113;
          v106 = objc_allocWithZone(v113);
          *&v106[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
          v107 = &v106[OBJC_IVAR___BDSReadingHistoryUpdate_value];
          v108 = v112;
          *v107 = v115;
          v107[1] = v108;
          v149.receiver = v106;
          v149.super_class = v105;
          v109 = objc_msgSendSuper2(&v149, "init");

          return v109;
        }

        v54 = *(v53 + 48);
        v12 = v143;
        (*v139)(v20, v35, v143);
        sub_10018C150(v35 + v54, v142, type metadata accessor for ReadingHistoryDay);
        v55 = v132;
        (*v130)(v132, v131, v4);
        sub_10018C2C8(&unk_100273E00, type metadata accessor for ReadingHistoryDay, &protocol conformance descriptor for ReadingHistoryDay);
        v56 = sub_1001C5C48();
        v141 = v39;
        if (!v28)
        {
          break;
        }

        (*v129)(v55, v4);
        v58 = sub_1001C6598();
        if (qword_10026EBE8 != -1)
        {
          swift_once();
        }

        v59 = qword_1002711E8;
        v60 = v125;
        (*v140)(v125, v20, v12);
        v61 = v142;
        v62 = v126;
        sub_10018C0E8(v142, v126, type metadata accessor for ReadingHistoryDay);
        if (os_log_type_enabled(v59, v58))
        {
          v63 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v148[0] = v124;
          *v63 = v117;
          sub_10018C2C8(&qword_100270A80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v64 = v58;
          v65 = sub_1001C6CC8();
          v67 = v66;
          v123 = *v128;
          v123(v60, v143);
          v68 = sub_1001874E8(v65, v67, v148);

          *(v63 + 4) = v68;
          *(v63 + 12) = 2080;
          v145 = sub_1001C5E48();
          v146 = sub_1001C6CC8();
          v147 = v69;
          v150._countAndFlagsBits = 47;
          v150._object = 0xE100000000000000;
          sub_1001C6138(v150);
          sub_100084528(&qword_10026F4E0, &unk_1001F1140);
          sub_1001C56C8();
          v144 = v145;
          v151._countAndFlagsBits = sub_1001C6CC8();
          sub_1001C6138(v151);

          v70 = v146;
          v71 = v147;
          sub_10018AFA8(v62);
          v72 = sub_1001874E8(v70, v71, v148);
          v20 = v135;

          *(v63 + 14) = v72;
          _os_log_impl(&_mh_execute_header, v59, v64, "ReadingHistoryUpdate: Failed to serialize entry for %s: %s", v63, 0x16u);
          swift_arrayDestroy();
          v12 = v143;

          v35 = v136;

          sub_10018AFA8(v61);
          v123(v20, v12);
        }

        else
        {
          sub_10018AFA8(v62);
          v36 = *v128;
          (*v128)(v60, v12);
          sub_10018AFA8(v61);
          v36(v20, v12);
        }

        v28 = 0;
        v34 = v141;
        v4 = v138;
        v33 = v127;
      }

      v74 = v56;
      v75 = v57;
      (*v129)(v55, v4);
      v76 = v20;
      v77 = *v140;
      v78 = v114;
      (*v140)(v114, v76, v12);
      v79 = v74;
      v80 = v75;
      sub_10009AD9C(v74, v75);
      v81 = v115;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v146 = v81;
      v83 = sub_100187AA4(v78);
      v85 = *(v81 + 16);
      v86 = (v84 & 1) == 0;
      v87 = __OFADD__(v85, v86);
      v88 = v85 + v86;
      if (v87)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v89 = v84;
      if (*(v81 + 24) >= v88)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v104 = v83;
          sub_10018AC44();
          v83 = v104;
        }
      }

      else
      {
        sub_100188E3C(v88, isUniquelyReferenced_nonNull_native);
        v83 = sub_100187AA4(v114);
        if ((v89 & 1) != (v90 & 1))
        {
          goto LABEL_39;
        }
      }

      v12 = v143;
      v91 = v146;
      v115 = v146;
      if (v89)
      {
        v92 = (*(v146 + 56) + 16 * v83);
        v93 = *v92;
        v94 = v92[1];
        *v92 = v79;
        v92[1] = v80;
        sub_1000887D0(v93, v94);
        sub_1000887D0(v79, v80);
        v95 = *v128;
        (*v128)(v114, v12);
        sub_10018AFA8(v142);
        v20 = v135;
        v95(v135, v12);
        v4 = v138;
        v33 = v127;
        v27 = v141;
        continue;
      }

      break;
    }

    *(v146 + 8 * (v83 >> 6) + 64) |= 1 << v83;
    v96 = v121;
    v97 = v83;
    v98 = v114;
    v77((*(v91 + 48) + *(v121 + 72) * v83), v114, v12);
    v99 = (*(v115 + 56) + 16 * v97);
    v100 = v115;
    *v99 = v79;
    v99[1] = v80;
    sub_1000887D0(v79, v80);
    v101 = *(v96 + 8);
    v101(v98, v12);
    sub_10018AFA8(v142);
    v20 = v135;
    v101(v135, v12);
    v102 = *(v100 + 16);
    v87 = __OFADD__(v102, 1);
    v103 = v102 + 1;
    if (!v87)
    {
      *(v100 + 16) = v103;
      v4 = v138;
      v33 = v127;
      v27 = v141;
      v28 = 0;
      continue;
    }

    break;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_1001C6D68();
  __break(1u);
  return result;
}