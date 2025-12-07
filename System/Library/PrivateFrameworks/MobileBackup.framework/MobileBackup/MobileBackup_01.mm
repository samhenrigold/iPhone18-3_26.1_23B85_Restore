uint64_t sub_1000164BC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000166E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100016770(v3);
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

void *sub_100016798(uint64_t a1, char *a2, void *a3, char a4, uint64_t (*a5)(void *))
{
  v5 = a1;
  v6 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v75 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = a2;
    v10 = v5 + 56;
    v11 = _HashTable.startBucket.getter();
    v12 = 0;
    v58 = v5;
    v59 = *&a2[OBJC_IVAR____TtC7backupd19MBDryRestoreContext__domainManager];
    v52 = v5 + 64;
    v13 = *(v5 + 36);
    v53 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext__restoreSnapshotsDir;
    v54 = v6;
    v55 = a2;
    v56 = v13;
    v57 = v5 + 56;
    do
    {
      if ((v11 & 0x8000000000000000) != 0 || v11 >= 1 << *(v5 + 32))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }

      v16 = 1 << v11;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_28;
      }

      if (v13 != *(v5 + 36))
      {
        goto LABEL_29;
      }

      v69 = v11 >> 6;
      v70 = v11;

      v17 = String._bridgeToObjectiveC()();
      v18 = [v59 domainForName:v17];

      if (!v18)
      {
        goto LABEL_33;
      }

      v71 = sub_10000BAF8(v18);
      v19 = v9;
      v20 = sub_10000B070(v71);
      v21 = v18;
      v22 = v20;
      v74 = 0;
      v72 = v21;
      v23 = [a3 planForDomain:? restoreType:? error:?];
      if (!v23)
      {
        v51 = v74;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v24 = v23;
      v63 = v12;
      v64 = v16;
      if (a4)
      {
        v25 = *&v9[v53];
        v26 = v74;
        sub_100027C28(v25);
        v27 = objc_allocWithZone(MBRestoreSnapshotIntegrityVerifier);
        v28 = String._bridgeToObjectiveC()();

        v29 = String._bridgeToObjectiveC()();
        v30 = [v27 initWithPolicy:v22 snapshotFormat:2 snapshotDir:v28 snapshotUUID:v29 delegate:v19];
      }

      else
      {
        v31 = v74;
        v30 = 0;
      }

      v32 = a5(v72);
      v33 = swift_allocObject();
      *(v33 + 2) = v19;
      *(v33 + 3) = v32;
      *(v33 + 4) = v22;
      *(v33 + 5) = v24;
      *(v33 + 6) = v30;
      v67 = type metadata accessor for _DryRestoreDomainOperation();
      v34 = objc_allocWithZone(v67);
      v65 = OBJC_IVAR____TtC7backupdP33_A98A1189104A0FB44C8DB626A50FE70726_DryRestoreDomainOperation__engine;
      sub_1000042B4(&qword_10041E7C0, &unk_1002B9300);
      v35 = v22;
      v36 = v30;
      v37 = swift_allocObject();
      type metadata accessor for MBUnfairLock();
      v38 = swift_allocObject();
      v68 = v36;
      v39 = v19;

      v66 = v35;
      swift_unknownObjectRetain();
      v40 = swift_slowAlloc();
      *(v38 + 16) = v40;
      *v40 = 0;
      *(v37 + 16) = v38;
      *(v37 + 24) = 0;
      *&v34[v65] = v37;
      *&v34[OBJC_IVAR____TtC7backupdP33_A98A1189104A0FB44C8DB626A50FE70726_DryRestoreDomainOperation__context] = v39;
      *&v34[OBJC_IVAR____TtC7backupdP33_A98A1189104A0FB44C8DB626A50FE70726_DryRestoreDomainOperation__restorePath] = v32;
      *&v34[OBJC_IVAR____TtC7backupdP33_A98A1189104A0FB44C8DB626A50FE70726_DryRestoreDomainOperation__domain] = v72;
      v41 = &v34[OBJC_IVAR____TtC7backupdP33_A98A1189104A0FB44C8DB626A50FE70726_DryRestoreDomainOperation__engineCreationBlock];
      *v41 = sub_100016E6C;
      v41[1] = v33;
      v73.receiver = v34;
      v73.super_class = v67;
      v42 = v39;

      v43 = v72;

      objc_msgSendSuper2(&v73, "init");

      swift_unknownObjectRelease();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 = v58;
      v14 = 1 << *(v58 + 32);
      if (v70 >= v14)
      {
        goto LABEL_30;
      }

      v10 = v57;
      v44 = *(v57 + 8 * v69);
      if ((v44 & v64) == 0)
      {
        goto LABEL_31;
      }

      v13 = v56;
      if (v56 != *(v58 + 36))
      {
        goto LABEL_32;
      }

      v45 = v44 & (-2 << (v70 & 0x3F));
      if (v45)
      {
        v14 = __clz(__rbit64(v45)) | v70 & 0x7FFFFFFFFFFFFFC0;
        v9 = v55;
        v15 = v63;
      }

      else
      {
        v46 = v69 << 6;
        v47 = v69 + 1;
        v48 = (v52 + 8 * v69);
        v15 = v63;
        while (v47 < (v14 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            sub_100016E90(v70, v56, 0);
            v14 = __clz(__rbit64(v49)) + v46;
            goto LABEL_23;
          }
        }

        sub_100016E90(v70, v56, 0);
LABEL_23:
        v9 = v55;
      }

      v12 = v15 + 1;
      v11 = v14;
    }

    while (v12 != v54);
    return v75;
  }

  return result;
}

uint64_t sub_100016D5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000148E4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100016E10()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100016E90(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

NSString sub_100016E9C(id a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, char a9, void *a10, void *a11)
{
  v189._countAndFlagsBits = a5;
  v189._object = a6;
  v11 = [objc_opt_self() sharedInstance];
  if (!v11)
  {
    __break(1u);
    goto LABEL_82;
  }

  v12 = v11;
  v13 = [a10 persona];
  v14 = [objc_allocWithZone(MBProgressModel) init];
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = a11;
  v216 = sub_100018A30;
  v217 = v15;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v214 = sub_1000127D0;
  v215 = &unk_1003BB430;
  v16 = _Block_copy(&aBlock);
  v17 = a11;
  v18 = v12;

  v205 = v14;
  [v14 setBlock:v16];
  _Block_release(v16);
  v19 = [v18 serviceDelegate];
  if (v19)
  {
    v20 = v19;
    v21 = v18;
    [v20 manager:v21 didUpdateProgress:-1 estimatedTimeRemaining:v17 context:0.0];

    swift_unknownObjectRelease();
  }

  v22 = [objc_opt_self() expensiveCellularPolicy];
  [v22 setQualityOfService:25];
  v23 = String._bridgeToObjectiveC()();
  if (!a11 || (v24 = [v17 processName]) == 0)
  {
    v24 = 0;
  }

  v25 = [v22 operationGroupWithName:v23 processName:v24];

  v26 = [v18 databaseManager];
  if (!v26)
  {
LABEL_82:
    __break(1u);
  }

  v27 = v26;
  *&aBlock = 0;
  object = [objc_opt_self() operationTrackerWithAccount:a10 databaseManager:v26 policy:v22 group:v25 error:&aBlock];

  v29 = aBlock;
  if (aBlock)
  {
    swift_willThrow();
    v29;

LABEL_10:
    return object;
  }

  if (!object)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v182 = v25;
  v184 = v22;
  sub_10003F2C0(0xD000000000000016, 0x80000001002BB400, 0xD000000000000016, 0x80000001002BB180);
  v30 = MBDeviceUUID();
  v183 = v13;
  if (v30)
  {
    v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v198 = v31;
  }

  else
  {
    v180 = 0;
    v198 = 0;
  }

  v32 = String._bridgeToObjectiveC()();
  *&aBlock = 0;
  v33 = [v18 acquireLockWithBackupUDID:v32 account:a10 owner:v30 timeout:v17 connection:&aBlock error:7200.0];

  v34 = aBlock;
  if (!v33)
  {
    v70 = aBlock;

    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_46:

    return object;
  }

  v35 = swift_allocObject();
  *(v35 + 2) = v18;
  *(v35 + 3) = a7;
  v36 = a7;
  *(v35 + 4) = a8;
  *(v35 + 5) = a10;
  *(v35 + 6) = v180;
  *(v35 + 7) = v198;
  v201 = v35;
  *(v35 + 8) = a11;
  v37 = objc_opt_self();

  v38 = v18;
  v39 = v17;

  v40 = a10;
  v41 = v34;
  v42 = String._bridgeToObjectiveC()();
  *&aBlock = 0;
  v43 = object;
  object = [v37 fetchDeviceRecordSnapshotsAndKeybags:v42 account:v40 manager:v38 tracker:v43 error:&aBlock];

  if (!object)
  {
    v71 = aBlock;

    _convertNSErrorToError(_:)();
    swift_willThrow();

    goto LABEL_46;
  }

  v181 = v38;
  v44 = aBlock;
  v45 = [object assetIDPrefix];
  if (!v45)
  {

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v72._countAndFlagsBits = 0xD00000000000001BLL;
    v72._object = 0x80000001002BB420;
    String.append(_:)(v72);
    v73._countAndFlagsBits = v36;
    v73._object = a8;
    String.append(_:)(v73);
    v74._countAndFlagsBits = 0xD000000000000020;
    v74._object = 0x80000001002BB440;
    String.append(_:)(v74);
    v75 = v43;
    v76 = objc_opt_self();
    v77 = String._bridgeToObjectiveC()();

    [v76 errorWithCode:1 description:v77];

    swift_willThrow();

    goto LABEL_10;
  }

  v46 = object;
  v178 = v43;

  sub_10003F2C0(0xD000000000000018, 0x80000001002BB470, 0xD000000000000016, 0x80000001002BB180);
  v47 = [objc_allocWithZone(MBSettingsContext) init];
  v48 = [objc_opt_self() appManagerWithSettingsContext:v47];
  if (!v48)
  {
    goto LABEL_85;
  }

  *&aBlock = 0;
  v49 = v48;
  object = v183;
  if (![v48 loadAppsWithPersona:v183 safeHarbors:0 error:&aBlock])
  {
    v78 = aBlock;

    _convertNSErrorToError(_:)();
    swift_willThrow();

    goto LABEL_46;
  }

  v172 = v40;
  v212 = &_swiftEmptyArrayStorage;
  v211 = &_swiftEmptySetSingleton;
  v50 = aBlock;
  sub_10003F2C0(0xD00000000000001BLL, 0x80000001002BB490, 0xD000000000000016, 0x80000001002BB180);
  v174 = v49;
  v51 = [v49 allContainers];
  if (v51)
  {
    v52 = v51;
    v173 = v47;

    sub_100011314(0, &qword_10041E970, off_1003B99F0);
    v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = v183;
    if (v53 >> 62)
    {
      v55 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v176 = v46;
    if (v55)
    {
      v56 = 0;
      v57 = v53 & 0xC000000000000001;
      v203 = &_swiftEmptyArrayStorage;
      v58 = &selRef_initWithCacheDirectory_;
      do
      {
        v59 = v56;
        while (1)
        {
          if (v57)
          {
            v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v59 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_70;
            }

            v60 = *(v53 + 8 * v59 + 32);
          }

          v61 = v60;
          v56 = (&v59->isa + 1);
          if (__OFADD__(v59, 1))
          {
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          if (([v60 isSystemContainer] & 1) != 0 || objc_msgSend(v61, "isSystemSharedContainer"))
          {
            break;
          }

          v59 = (v59 + 1);
          if (v56 == v55)
          {
            goto LABEL_49;
          }
        }

        v62 = [v61 domain];
        if (!v62)
        {
          goto LABEL_86;
        }

        v63 = v62;
        v64 = [v62 name];

        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v199 = v66;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v203 = sub_10000F0C8(0, *(v203 + 2) + 1, 1, v203);
        }

        v68 = *(v203 + 2);
        v67 = *(v203 + 3);
        if (v68 >= v67 >> 1)
        {
          v203 = sub_10000F0C8((v67 > 1), v68 + 1, 1, v203);
        }

        *(v203 + 2) = v68 + 1;
        v69 = &v203[16 * v68];
        *(v69 + 4) = v65;
        *(v69 + 5) = v199;
        v54 = v183;
      }

      while (v56 != v55);
    }

    else
    {
      v203 = &_swiftEmptyArrayStorage;
    }

LABEL_49:
    object = 0xE900000000000020;

    v80 = sub_100016D5C(v203);

    *&aBlock = 0x676E697461657243;
    *(&aBlock + 1) = 0xE900000000000020;
    v81._countAndFlagsBits = sub_1000285C4(a1);
    String.append(_:)(v81);

    sub_10003F2C0(aBlock, *(&aBlock + 1), 0xD000000000000016, 0x80000001002BB180);

    sub_100005348(448, a1);
    if (v194)
    {

      return object;
    }

    *&aBlock = 0x676E697461657243;
    *(&aBlock + 1) = 0xE900000000000020;
    v82._countAndFlagsBits = sub_1000285C4(a2);
    String.append(_:)(v82);

    sub_10003F2C0(aBlock, *(&aBlock + 1), 0xD000000000000016, 0x80000001002BB180);

    sub_100005348(493, a2);
    v83 = sub_100027EFC(0x746F687370616E73, 0xE900000000000073, a2);
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    *&aBlock = 0xD00000000000001DLL;
    *(&aBlock + 1) = 0x80000001002BB4B0;
    String.append(_:)(v189);
    v84._countAndFlagsBits = 544497952;
    v84._object = 0xE400000000000000;
    String.append(_:)(v84);
    v85._countAndFlagsBits = sub_1000285C4(v83);
    String.append(_:)(v85);

    sub_10003F2C0(aBlock, *(&aBlock + 1), 0xD000000000000016, 0x80000001002BB180);

    v210 = 0;
    v204 = v83;
    v86 = sub_100027C28(v83);
    v88 = v87;
    v89 = String._bridgeToObjectiveC()();
    object = String._bridgeToObjectiveC()();
    v90 = swift_allocObject();
    *(v90 + 16) = v86;
    *(v90 + 24) = v88;
    v91 = v90;
    *(v90 + 32) = v189;
    *(v90 + 48) = &v210;
    *(v90 + 56) = &v212;
    *(v90 + 64) = v80;
    *(v90 + 72) = &v211;
    v92 = swift_allocObject();
    *(v92 + 16) = sub_100018B18;
    *(v92 + 24) = v91;
    v216 = sub_100018B60;
    v217 = v92;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v214 = sub_100012C6C;
    v215 = &unk_1003BB4D0;
    v93 = _Block_copy(&aBlock);

    *&aBlock = 0;
    v94 = [v176 synchronizeFileListsWithOperationTracker:v178 snapshotDirectory:v89 snapshotUUID:object error:&aBlock fetchedFileListBlock:v93];
    _Block_release(v93);

    if (!v94)
    {
      v108 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();

LABEL_61:

      return object;
    }

    v95 = v212;
    v96 = aBlock;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_10000FB64(v95);
    }

    v97 = *(v95 + 2);
    *&aBlock = v95 + 32;
    *(&aBlock + 1) = v97;
    sub_100015D18(&aBlock);
    v212 = v95;
    strcpy(&aBlock, "FG domains: ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;

    sub_1000042B4(&qword_10041E978, &qword_1002B93F8);
    sub_100018B88();
    v98 = BidirectionalCollection<>.joined(separator:)();
    v100 = v99;

    v101._countAndFlagsBits = v98;
    v101._object = v100;
    String.append(_:)(v101);

    sub_10003F2C0(aBlock, *(&aBlock + 1), 0xD000000000000016, 0x80000001002BB180);

    strcpy(v209, "BG domains: ");
    BYTE5(v209[1]) = 0;
    HIWORD(v209[1]) = -5120;
    v102 = v211;
    v103 = v211[2];
    if (!v103)
    {

      v104 = &_swiftEmptyArrayStorage;
      v107 = v183;
LABEL_59:
      *&aBlock = v104;
      sub_100015CAC(&aBlock);

      v109 = BidirectionalCollection<>.joined(separator:)();
      v111 = v110;

      v112._countAndFlagsBits = v109;
      v112._object = v111;
      String.append(_:)(v112);

      sub_10003F2C0(v209[0], v209[1], 0xD000000000000016, 0x80000001002BB180);

      v113 = sub_100027EFC(0x5F65726F74736572, 0xED0000746F706564, a1);
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      *&aBlock = 0xD00000000000002ALL;
      *(&aBlock + 1) = 0x80000001002BB510;
      v114._countAndFlagsBits = sub_1000285C4(v113);
      String.append(_:)(v114);

      sub_10003F2C0(aBlock, *(&aBlock + 1), 0xD000000000000016, 0x80000001002BB180);

      v115 = sub_100027C28(a1);
      v117 = v116;
      v57 = 0;
      v118 = sub_100027C28(v113);
      v120 = sub_10002E0EC(v107, v115, v117, v118, v119);

      v121 = v211;
      v170 = v212;
      v171 = type metadata accessor for MBDryRestoreContext();
      v122 = objc_allocWithZone(v171);
      v195 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext__failures;
      sub_1000042B4(&qword_10041E988, &qword_1002B9400);
      v123 = swift_allocObject();
      type metadata accessor for MBUnfairLock();
      v124 = swift_allocObject();

      v169 = v174;
      v177 = v176;
      v179 = v178;

      v175 = v120;
      v206 = v205;
      v125 = swift_slowAlloc();
      *(v124 + 16) = v125;
      *v125 = 0;
      *(v123 + 16) = v124;
      *(v123 + 24) = &_swiftEmptyArrayStorage;
      *(&v122->isa + v195) = v123;
      v126 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext__summary;
      type metadata accessor for MBRestoreSummarizer(0);
      v127 = swift_allocObject();
      v128 = sub_100019A98(v127);
      sub_1000042B4(&qword_10041E990, &qword_1002B9408);
      v129 = swift_allocObject();
      v130 = swift_allocObject();
      v131 = swift_slowAlloc();
      *(v130 + 16) = v131;
      *v131 = 0;
      *(v129 + 16) = v130;
      *(v129 + 24) = v128;
      *(&v122->isa + v126) = v129;
      *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_contentPath) = a1;
      *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_metadataPath) = a2;
      *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_foregroundDomainNames) = v170;
      *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_backgroundDomainNames) = v121;
      v132 = (&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_originalDeviceName);
      *v132 = a3;
      v132[1] = a4;
      *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_snapshotUUID) = v189;
      v190 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext_account;
      *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_account) = v172;

      v133 = v172;

      v134 = [v133 persona];
      v192 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext_persona;
      *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_persona) = v134;
      v187 = OBJC_IVAR____TtC7backupd19MBDryRestoreContext_progress;
      *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext_progress) = v206;
      *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__restoreSnapshotsDir) = v204;
      v135 = objc_opt_self();
      v205 = v206;

      sub_100027C28(a1);
      v136 = String._bridgeToObjectiveC()();

      *&aBlock = 0;
      v137 = [v135 volumeMountPointForFile:v136 error:&aBlock];

      v138 = aBlock;
      if (v137)
      {
        LOBYTE(v189._countAndFlagsBits) = a9;
        v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v141 = v140;
        v142 = v138;

        v143 = (v122 + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__volumeMountPoint);
        *v143 = v139;
        v143[1] = v141;
        v144 = [v133 isPrimaryAccount];
        *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__isRestoringPrimaryAccount) = v144;
        *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__appManager) = v169;
        v145 = *(&v122->isa + v192);
        v146 = objc_allocWithZone(MBDomainManager);
        v194 = v169;
        v147 = [v146 initWithPersona:v145];
        v55 = &OBJC_PROTOCOL___MBAssetFetcher;
        *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__domainManager) = v147;
        *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__tracker) = v179;
        *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__device) = v177;
        v56 = v122;
        *(&v122->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__depot) = v175;
        v189._object = v179;
        v58 = v175;
        a1 = v177;
        v54 = v205;
        if (MBIsInternalInstall())
        {
          v148 = [objc_opt_self() sharedOptions];
          v149 = [v148 useRestoreOperationLog];

          if (v149)
          {
            v150 = [*(&v122->isa + v192) restoreOperationLogPath];
            if (!v150)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v150 = String._bridgeToObjectiveC()();
            }

            v151 = [objc_allocWithZone(MBRestoreOperationLogger) initWithPath:v150];
          }

          else
          {
            v151 = 0;
          }

          v152 = v183;
          v153 = v181;
          v55 = &OBJC_PROTOCOL___MBAssetFetcher;
        }

        else
        {
LABEL_71:
          v151 = 0;
          v152 = v183;
          v153 = v181;
        }

        *(&v56->isa + OBJC_IVAR____TtC7backupd19MBDryRestoreContext__logger) = v151;
        v208.receiver = v56;
        v208.super_class = v171;
        v154 = objc_msgSendSuper2(&v208, "init");
        v155 = *&v154[v55[19].opt_class_meths];
        v156 = v154;
        [v155 setDelegate:v156];

        object = v189._object;

        if (v189._countAndFlagsBits)
        {
          v157 = sub_10000AB90();
        }

        else
        {
          v157 = sub_10000AE00();
        }

        if (!v57)
        {
          v158 = v157;
          v159 = type metadata accessor for MBDryRestoreSession();
          v160 = objc_allocWithZone(v159);
          v160[OBJC_IVAR____TtC7backupd19MBDryRestoreSession__disposed] = 0;
          *&v160[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_context] = v156;
          *&v160[OBJC_IVAR____TtC7backupd19MBDryRestoreSession_planDB] = v158;
          *&v160[OBJC_IVAR____TtC7backupd19MBDryRestoreSession__depot] = v58;
          v161 = &v160[OBJC_IVAR____TtC7backupd19MBDryRestoreSession__releaseRestoreLock];
          *v161 = sub_100018AA8;
          v161[1] = v201;
          v162 = objc_allocWithZone(NSOperationQueue);
          v193 = v58;
          v189._countAndFlagsBits = v156;
          v188 = v158;

          v163 = [v162 init];
          v164 = [objc_opt_self() sharedOptions];
          LODWORD(v158) = [v164 maxConcurrentRestoreDomainOperations];

          [v163 setMaxConcurrentOperationCount:v158];
          sub_1000042B4(&qword_10041E998, &unk_1002B9410);
          v165 = swift_allocObject();
          v166 = swift_allocObject();
          v167 = v163;
          v168 = swift_slowAlloc();
          *(v166 + 16) = v168;
          *v168 = 0;

          *(v165 + 16) = v166;
          *(v165 + 24) = v163;
          *&v160[OBJC_IVAR____TtC7backupd19MBDryRestoreSession__operationQueue] = v165;
          v207.receiver = v160;
          v207.super_class = v159;
          object = objc_msgSendSuper2(&v207, "init");

          return object;
        }
      }

      else
      {
        v197 = aBlock;
        object = v205;

        _convertNSErrorToError(_:)();

        swift_willThrow();

        swift_deallocPartialClassInstance();
      }

      goto LABEL_61;
    }

    v104 = sub_10000F6A0(v103, 0);
    v105 = sub_10000FB78(&aBlock, v104 + 4, v103, v102);
    v106 = aBlock;
    swift_bridgeObjectRetain_n();
    sub_1000113FC(v106);
    if (v105 == v103)
    {
      v107 = v183;
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_84;
  }

LABEL_87:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000189F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018A50()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100018AD0()
{

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_100018B88()
{
  result = qword_10041E980;
  if (!qword_10041E980)
  {
    sub_100009078(&qword_10041E978, &qword_1002B93F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041E980);
  }

  return result;
}

uint64_t sub_100018BEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100018C3C(void *a1, uint64_t a2)
{
  v3 = v2;
  v95 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v6 = *(v95 - 8);
  v7 = __chkstk_darwin(v95);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v90 - v10;
  v96 = type metadata accessor for Date();
  v12 = *(v96 - 8);
  v13 = __chkstk_darwin(v96);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v90 - v16;
  v18 = [a1 start];
  if (v18)
  {
    v19 = v18;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = [a1 end];
    if (v20)
    {
      v21 = v20;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = v3 + OBJC_IVAR____TtC7backupd19MBRestoreSummarizer__assetFetchDuration;
      swift_beginAccess();
      v23 = type metadata accessor for _MillisecondSegmentedDuration(0);
      v94 = v6;
      v24 = &v22[*(v23 + 24)];
      *v24 = 0;
      v24[8] = 1;
      sub_10001A628();
      IndexSet.insert(integersIn:)();
      swift_endAccess();
      v93 = a1;
      v25 = *(v12 + 8);
      v26 = v96;
      v25(v15, v96);
      v27 = v26;
      v6 = v94;
      v25(v17, v27);
      a1 = v93;
    }

    else
    {
      (*(v12 + 8))(v17, v96);
    }
  }

  v28 = [a1 fetchedAssetBytes];
  v29 = v3[3];
  v30 = __CFADD__(v29, v28);
  v31 = &v28[v29];
  if (v30)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v3[3] = v31;
  v32 = [a1 fetchedAssetCount];
  v33 = v3[4];
  v30 = __CFADD__(v33, v32);
  v34 = &v32[v33];
  if (v30)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v3[4] = v34;
  v35 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  v36 = *(v35 + 16);
  if (v36)
  {
    v91 = a2;
    v92 = v3;
    v37 = *(v95 + 48);
    v38 = v3 + OBJC_IVAR____TtC7backupd19MBRestoreSummarizer__restorablePlacementDuration;
    v39 = v35 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v93 = *(v6 + 72);
    v94 = v37;
    v40 = (v12 + 32);
    v90 = v35;

    while (1)
    {
      sub_10001A730(v39, v11);
      v41 = v96;
      v42 = *(v95 + 48);
      v43 = *v40;
      (*v40)(v9, v11, v96);
      v43(&v9[v42], &v11[v94], v41);
      swift_beginAccess();
      v44 = &v38[*(type metadata accessor for _MillisecondSegmentedDuration(0) + 24)];
      *v44 = 0;
      v44[8] = 1;
      Date.timeIntervalSince(_:)();
      v46 = v45 * 1000.0;
      if (COERCE__INT64(fabs(v45 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v46 <= -9.22337204e18)
      {
        goto LABEL_36;
      }

      if (v46 >= 9.22337204e18)
      {
        goto LABEL_37;
      }

      Date.timeIntervalSince(_:)();
      v48 = v47 * 1000.0;
      if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_38;
      }

      if (v48 <= -9.22337204e18)
      {
        goto LABEL_39;
      }

      if (v48 >= 9.22337204e18)
      {
        goto LABEL_40;
      }

      if (v48 < v46)
      {
        goto LABEL_41;
      }

      IndexSet.insert(integersIn:)();
      swift_endAccess();
      sub_10001A7A0(v9, &qword_10041E820, &unk_1002B9740);
      v39 += v93;
      if (!--v36)
      {

        a2 = v91;
        v3 = v92;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_18:
  v49 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_zeroByteFiles);
  v50 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_assetFiles);
  v51 = v49 + v50;
  if (__CFADD__(v49, v50))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v52 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_directories);
  v53 = v51 + v52;
  if (__CFADD__(v51, v52))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v54 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_symlinks);
  v30 = __CFADD__(v53, v54);
  v55 = v53 + v54;
  if (v30)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v56 = v3[6];
  v30 = __CFADD__(v56, v55);
  v57 = v56 + v55;
  if (v30)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v3[6] = v57;
  v58 = v3[7];
  v30 = __CFADD__(v58, v52);
  v59 = v58 + v52;
  if (v30)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v3[7] = v59;
  v60 = v3[8];
  v30 = __CFADD__(v60, v54);
  v61 = v60 + v54;
  if (v30)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v3[8] = v61;
  v62 = v3[9];
  v30 = __CFADD__(v62, v49);
  v63 = v62 + v49;
  if (v30)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v3[9] = v63;
  v64 = v3[10];
  v30 = __CFADD__(v64, v50);
  v65 = v64 + v50;
  if (v30)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v3[10] = v65;
  v66 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_hardlinks);
  v67 = v3[11];
  v30 = __CFADD__(v67, v66);
  v68 = v67 + v66;
  if (v30)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v3[11] = v68;
  v69 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classAFiles);
  v70 = v3[12];
  v30 = __CFADD__(v70, v69);
  v71 = v70 + v69;
  if (v30)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v3[12] = v71;
  v72 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classBFiles);
  v73 = v3[13];
  v30 = __CFADD__(v73, v72);
  v74 = v73 + v72;
  if (v30)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v3[13] = v74;
  v75 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCFiles);
  v76 = v3[14];
  v30 = __CFADD__(v76, v75);
  v77 = v76 + v75;
  if (v30)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v3[14] = v77;
  v78 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classDFiles);
  v79 = v3[15];
  v30 = __CFADD__(v79, v78);
  v80 = v79 + v78;
  if (v30)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v3[15] = v80;
  v81 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_classCxFiles);
  v82 = v3[16];
  v30 = __CFADD__(v82, v81);
  v83 = v82 + v81;
  if (v30)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v3[16] = v83;
  v84 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessFiles);
  v85 = v3[17];
  v30 = __CFADD__(v85, v84);
  v86 = v85 + v84;
  if (v30)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v3[17] = v86;
  v87 = *(a2 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_datalessDirectories);
  v88 = v3[18];
  v30 = __CFADD__(v88, v87);
  v89 = v88 + v87;
  if (!v30)
  {
    v3[18] = v89;
    return;
  }

LABEL_59:
  __break(1u);
}

uint64_t sub_1000192FC()
{
  v1 = type metadata accessor for IndexSet.RangeView();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000042B4(&qword_10041EB30, &qword_1002B9508);
  __chkstk_darwin(v5);
  v7 = v18 - v6;
  result = type metadata accessor for _MillisecondSegmentedDuration(0);
  v9 = v0 + *(result + 24);
  if (*(v9 + 8))
  {
    IndexSet.rangeView.getter();
    IndexSet.RangeView.makeIterator()();
    (*(v2 + 8))(v4, v1);
    v10 = *(v5 + 36);
    sub_10001A520(&qword_10041EB38, &type metadata accessor for IndexSet.RangeView, &protocol conformance descriptor for IndexSet.RangeView);
    v11 = 0;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      if (*&v7[v10] == v18[0])
      {
        result = sub_10001A7A0(v7, &qword_10041EB30, &qword_1002B9508);
        *v9 = v11 / 1000.0;
        *(v9 + 8) = 0;
        return result;
      }

      v12 = dispatch thunk of Collection.subscript.read();
      v14 = *v13;
      v15 = v13[1];
      v12(v18, 0);
      result = dispatch thunk of Collection.formIndex(after:)();
      v16 = v15 - v14;
      if (__OFSUB__(v15, v14))
      {
        break;
      }

      v17 = __OFADD__(v11, v16);
      v11 += v16;
      if (v17)
      {
        __break(1u);
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100019558()
{
  sub_10001A5CC(v0 + OBJC_IVAR____TtC7backupd19MBRestoreSummarizer__assetFetchDuration);
  sub_10001A5CC(v0 + OBJC_IVAR____TtC7backupd19MBRestoreSummarizer__restorablePlacementDuration);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000195F4(uint64_t a1)
{
  result = type metadata accessor for _MillisecondSegmentedDuration(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000196B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1000196E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10001971C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001973C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 136) = v3;
  return result;
}

uint64_t sub_1000197AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for IndexSet();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000198B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for IndexSet();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000199AC(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for IndexSet();
    if (v2 <= 0x3F)
    {
      sub_100019A48();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100019A48()
{
  if (!qword_10041EAE8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10041EAE8);
    }
  }
}

uint64_t sub_100019A98(uint64_t a1)
{
  *(v1 + 144) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v2 = v1 + OBJC_IVAR____TtC7backupd19MBRestoreSummarizer__assetFetchDuration;
  static Date.now.getter();
  v3 = type metadata accessor for _MillisecondSegmentedDuration(0);
  type metadata accessor for IndexSet();
  sub_10001A520(&qword_10041EB40, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  sub_1000042B4(&qword_10041EB48, &unk_1002B9510);
  sub_10001A568();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4 = v2 + *(v3 + 24);
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v1 + OBJC_IVAR____TtC7backupd19MBRestoreSummarizer__restorablePlacementDuration;
  static Date.now.getter();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v6 = v5 + *(v3 + 24);
  *v6 = 0;
  *(v6 + 8) = 1;
  return v1;
}

uint64_t sub_100019C08()
{
  v1 = v0;
  _StringGuts.grow(_:)(44);
  sub_1000042B4(&unk_10041E830, &qword_1002B9500);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002B9270;
  v3 = *v0;
  v4 = *(v1 + 8) / *v1 * 0.000000953674316;
  *(v2 + 56) = &type metadata for Double;
  *(v2 + 64) = &protocol witness table for Double;
  *(v2 + 32) = v4;
  v5 = String.init(format:_:)();

  v6._countAndFlagsBits = 0x2C6365732F424D20;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002B9270;
  v8 = *(v0 + 16) / v3;
  *(v7 + 56) = &type metadata for Double;
  *(v7 + 64) = &protocol witness table for Double;
  *(v7 + 32) = v8;
  v9._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x2F73746573736120;
  v10._object = 0xED0000202C636573;
  String.append(_:)(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002B9270;
  v12 = *(v1 + 32) / *(v1 + 24);
  *(v11 + 56) = &type metadata for Double;
  *(v11 + 64) = &protocol witness table for Double;
  *(v11 + 32) = v12;
  v13._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v13);

  v14._object = 0x80000001002BB680;
  v14._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v14);
  return v5;
}

unint64_t sub_100019E08(char a1)
{
  result = 0xD000000000000017;
  switch(a1)
  {
    case 1:
    case 8:
    case 14:
      result = 0xD000000000000011;
      break;
    case 2:
    case 15:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
    case 16:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
    case 11:
    case 12:
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100019FB0(void *a1)
{
  v3 = sub_1000042B4(&qword_10041EB20, &qword_1002B94F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_1000042FC(a1, a1[3]);
  sub_10001A4CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_10001A348()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001A3BC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10001A408@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001AA58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001A43C(uint64_t a1)
{
  v2 = sub_10001A4CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001A478(uint64_t a1)
{
  v2 = sub_10001A4CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10001A4CC()
{
  result = qword_10041EB28;
  if (!qword_10041EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EB28);
  }

  return result;
}

uint64_t sub_10001A520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001A568()
{
  result = qword_10041EB50;
  if (!qword_10041EB50)
  {
    sub_100009078(&qword_10041EB48, &unk_1002B9510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EB50);
  }

  return result;
}

uint64_t sub_10001A5CC(uint64_t a1)
{
  v2 = type metadata accessor for _MillisecondSegmentedDuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001A628()
{
  Date.timeIntervalSince(_:)();
  v1 = v0 * 1000.0;
  if (COERCE__INT64(fabs(v0 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  Date.timeIntervalSince(_:)();
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 < v1)
  {
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_10001A730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001A7A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000042B4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for MBRestoreSummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MBRestoreSummary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001A954()
{
  result = qword_10041EB58;
  if (!qword_10041EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EB58);
  }

  return result;
}

unint64_t sub_10001A9AC()
{
  result = qword_10041EB60;
  if (!qword_10041EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EB60);
  }

  return result;
}

unint64_t sub_10001AA04()
{
  result = qword_10041EB68;
  if (!qword_10041EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EB68);
  }

  return result;
}

uint64_t sub_10001AA58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001002BB6A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002BB6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001002BB6E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001002BB700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001002BB730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001002BB750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001002BB770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001002BB790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002BB7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001002BB7D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002BB7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002BB810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002BB830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002BB850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002BB870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001002BB890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001002BB8B0 == a2)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

id sub_10001AF90()
{
  result = [objc_allocWithZone(type metadata accessor for MBActivityScheduler()) init];
  qword_10041EB70 = result;
  return result;
}

id sub_10001B01C()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7backupd19MBActivityScheduler__activitiesByIdentifier;
  *&v0[v7] = sub_10003E598(&_swiftEmptyArrayStorage);
  v18 = OBJC_IVAR____TtC7backupd19MBActivityScheduler__workQueue;
  v16 = sub_10001DEEC();
  v8 = [swift_getObjCClassFromMetadata() description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_10001DF38();
  sub_1000042B4(&qword_10041EBF0, &qword_1002B96F8);
  sub_10001DF90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = ObjectType;
  *&v0[v18] = v9;
  v19.receiver = v0;
  v19.super_class = v10;
  v11 = objc_msgSendSuper2(&v19, "init");
  sub_10001BBBC();
  sub_1000042B4(&qword_10041EBC8, &qword_1002B96D8);
  v12 = Dictionary.description.getter();
  v14 = v13;

  sub_10003F2C0(v12, v14, 0xD000000000000011, 0x80000001002BB9C0);

  return v11;
}

void sub_10001B314(void *a1)
{
  v1 = [a1 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = v1;
  v7 = [v5 sharedScheduler];
  strcpy(v54, "Rescheduling ");
  HIWORD(v54[1]) = -4864;
  v8._countAndFlagsBits = v2;
  v8._object = v4;
  String.append(_:)(v8);
  sub_10003F2C0(v54[0], v54[1], 0xD000000000000011, 0x80000001002BB9C0);

  v53 = v7;
  v9 = [v7 taskRequestForIdentifier:v6];
  v52 = v6;

  if (v9)
  {
    v10 = v9;
    _StringGuts.grow(_:)(34);

    v54[0] = 0x786520646E756F46;
    v11._countAndFlagsBits = v2;
    v11._object = v4;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0x6572206B73617420;
    v12._object = 0xEF203A7473657571;
    String.append(_:)(v12);
    v13 = [v10 propertyListRepresentation];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = Dictionary.description.getter();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    sub_10003F2C0(0x786520646E756F46, 0xEF20676E69747369, 0xD000000000000011, 0x80000001002BB9C0);
  }

  v18 = [a1 workQueue];
  __chkstk_darwin(v18);
  sub_1000042B4(&qword_10041EBD0, &qword_1002B96E0);
  OS_dispatch_queue.sync<A>(execute:)();

  v19 = v54[0];
  if (v54[0])
  {
    v20 = v2;
    if (v9 != v54[0])
    {
      if (!v9)
      {

        v21 = v53;
        goto LABEL_11;
      }

LABEL_8:
      v22 = v9;
      _StringGuts.grow(_:)(39);

      v54[1] = 0x80000001002BBAA0;
      v23._countAndFlagsBits = v20;
      v23._object = v4;
      String.append(_:)(v23);
      v24._countAndFlagsBits = 0x6572206B73617420;
      v24._object = 0xEF203A7473657571;
      String.append(_:)(v24);
      v25 = [v22 propertyListRepresentation];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = Dictionary.description.getter();
      v28 = v27;

      v29._countAndFlagsBits = v26;
      v29._object = v28;
      String.append(_:)(v29);

      sub_10003F2C0(0xD000000000000014, 0x80000001002BBAA0, 0xD000000000000011, 0x80000001002BB9C0);

      v54[0] = 0;
      LOBYTE(v26) = [v53 cancelTaskRequestWithIdentifier:v52 error:v54];

      v30 = v54[0];
      if ((v26 & 1) == 0)
      {
        v21 = v53;
LABEL_16:
        v44 = v30;
        v45 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v54[0] = 0;
        v54[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(35);

        v54[0] = 0xD000000000000011;
        v54[1] = 0x80000001002BBA80;
        v46._countAndFlagsBits = v2;
        v46._object = v4;
        String.append(_:)(v46);

        v47._object = 0xEE00207473657571;
        v47._countAndFlagsBits = 0x6572206B73617420;
        String.append(_:)(v47);
        if (v19)
        {
          v48 = [v19 propertyListRepresentation];
          static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_1000042B4(&qword_10041EBD8, &qword_1002B96E8);
        v49._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v49);

        sub_10003F5B0(v45, v54[0], v54[1], 0xD000000000000011, 0x80000001002BB9C0);

        return;
      }

      v31 = v54[0];

      if (!v19)
      {

        goto LABEL_21;
      }

      v21 = v53;
      v20 = v2;
LABEL_11:
      v54[0] = 0;
      v54[1] = 0xE000000000000000;
      v22 = v19;
      _StringGuts.grow(_:)(34);

      v54[0] = 0x697474696D627553;
      v54[1] = 0xEF2077656E20676ELL;
      v32._countAndFlagsBits = v20;
      v32._object = v4;
      String.append(_:)(v32);
      v33._countAndFlagsBits = 0x6572206B73617420;
      v33._object = 0xEF203A7473657571;
      String.append(_:)(v33);
      v34 = [v22 propertyListRepresentation];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = Dictionary.description.getter();
      v37 = v36;

      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      sub_10003F2C0(v54[0], v54[1], 0xD000000000000011, 0x80000001002BB9C0);

      v54[0] = 0;
      v39 = [v21 submitTaskRequest:v22 error:v54];
      v30 = v54[0];
      if (v39)
      {
        v40 = v54[0];

LABEL_21:
        return;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v20 = v2;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  _StringGuts.grow(_:)(36);

  v54[0] = 0xD000000000000011;
  v54[1] = 0x80000001002BBAC0;
  v41._countAndFlagsBits = v20;
  v41._object = v4;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x6572206B73617420;
  v42._object = 0xEF203A7473657571;
  String.append(_:)(v42);
  if (v19)
  {
    v43 = [v19 propertyListRepresentation];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000042B4(&qword_10041EBD8, &qword_1002B96E8);
  v50._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v50);

  sub_10003F2C0(v54[0], v54[1], 0xD000000000000011, 0x80000001002BB9C0);
}

unint64_t sub_10001BBBC()
{
  v1 = [objc_opt_self() sharedScheduler];
  v33 = sub_10003E494(&_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC7backupd19MBActivityScheduler__activitiesByIdentifier;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = (*(v3 + 48) + ((v8 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    v14 = String._bridgeToObjectiveC()();
    v15 = [v1 taskRequestForIdentifier:v14];

    if (v15)
    {
      v16 = [v15 propertyListRepresentation];
      v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v33;
      v17 = sub_10002C438(v13, v12);
      v19 = *(v33 + 16);
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_22;
      }

      if (*(v33 + 24) >= v22)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_15;
        }

        v31 = v17;
        v35 = v18;
        sub_10002DC68();
        v17 = v31;
        if ((v35 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_16:
        v25 = v17;

        v33 = v36;
        *(v36[7] + 8 * v25) = v32;
      }

      else
      {
        v34 = v18;
        sub_10002CBF4(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_10002C438(v13, v12);
        v24 = v23 & 1;
        v18 = v34;
        if ((v34 & 1) != v24)
        {
          goto LABEL_24;
        }

LABEL_15:
        if (v18)
        {
          goto LABEL_16;
        }

LABEL_18:
        v36[(v17 >> 6) + 8] |= 1 << v17;
        v26 = (v36[6] + 16 * v17);
        *v26 = v13;
        v26[1] = v12;
        *(v36[7] + 8 * v17) = v32;

        v27 = v36[2];
        v21 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v21)
        {
          goto LABEL_23;
        }

        v33 = v36;
        v36[2] = v28;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v33;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10001BEEC(void *a1)
{
  v2 = a1;
  v3 = a1[2];
  if (v3 != 1)
  {
    if (!v3)
    {
      return sub_10001BBBC();
    }

    v6 = a1[6];
    v5 = a1[7];
    swift_bridgeObjectRetain_n();
    goto LABEL_11;
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = OBJC_IVAR____TtC7backupd19MBActivityScheduler__activitiesByIdentifier;
  swift_beginAccess();
  v8 = *(v79 + v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_10000F6A0(v9, 0);
    v73 = sub_10000FCD0(&aBlock, v10 + 4, v9, v8);
    v11 = aBlock;
    swift_bridgeObjectRetain_n();

    sub_1000113FC(v11);
    if (v73 != v9)
    {
      goto LABEL_86;
    }
  }

  else
  {

    v10 = &_swiftEmptyArrayStorage;
  }

  aBlock = v10;
  sub_100015CAC(&aBlock);
  if (!v1)
  {

    v2 = aBlock;
LABEL_11:

    v12 = v6 == 0x7075727265746E69 && v5 == 0xE900000000000074;
    v13 = v12;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0x656B6F766E69 && v5 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0x7564656863736572 && v5 == 0xEA0000000000656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v6 == 0x7564656863736E75 && v5 == 0xEA0000000000656CLL)
    {
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v62 & 1) == 0)
      {

        aBlock = 0;
        v81 = 0xE000000000000000;
        _StringGuts.grow(_:)(101);
        v63._countAndFlagsBits = 0xD00000000000001FLL;
        v63._object = 0x80000001002BB9E0;
        String.append(_:)(v63);
        v64._countAndFlagsBits = v6;
        v64._object = v5;
        String.append(_:)(v64);

        v65._countAndFlagsBits = 0xD000000000000044;
        v65._object = 0x80000001002BBA00;
        String.append(_:)(v65);
LABEL_82:
        sub_10003F97C(1, aBlock, v81, 0xD000000000000011, 0x80000001002BB9C0);

        return swift_willThrow();
      }
    }

    v14 = v2[2];
    if (v14)
    {
      v74 = v13;
      v75 = v6;
      v77 = v5;
      v86 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v6 = 0;
      v15 = OBJC_IVAR____TtC7backupd19MBActivityScheduler__activitiesByIdentifier;
      v16 = (v2 + 5);
      while (v6 < v2[2])
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        swift_beginAccess();
        v19 = *(v79 + v15);
        v20 = *(v19 + 16);

        if (!v20 || (v21 = sub_10002C438(v18, v17), (v22 & 1) == 0))
        {
          swift_endAccess();

          aBlock = 0;
          v81 = 0xE000000000000000;
          _StringGuts.grow(_:)(37);

          aBlock = 0xD000000000000023;
          v81 = 0x80000001002BBA50;
          v24._countAndFlagsBits = v18;
          v24._object = v17;
          String.append(_:)(v24);
          sub_10003F97C(1, aBlock, v81, 0xD000000000000011, 0x80000001002BB9C0);

          swift_willThrow();
        }

        ++v6;
        v5 = *(*(v19 + 56) + 8 * v21);
        swift_endAccess();
        swift_unknownObjectRetain();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v16 += 2;
        if (v14 == v6)
        {

          v23 = v86;
          v6 = v75;
          v5 = v77;
          v78 = v86;
          if (!v74)
          {
            goto LABEL_38;
          }

          goto LABEL_39;
        }
      }

      goto LABEL_80;
    }

    v23 = &_swiftEmptyArrayStorage;
    v78 = &_swiftEmptyArrayStorage;
    if (v13)
    {
      goto LABEL_39;
    }

LABEL_38:
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
LABEL_39:

      v25 = v23[2];
      if (v25)
      {
        v5 = 0;
        v26 = (v23 + 4);
        v71 = v23[2];
        while (v5 < v23[2])
        {
          v6 = *&v26[8 * v5];
          aBlock = 0;
          v81 = 0xE000000000000000;
          swift_unknownObjectRetain();
          _StringGuts.grow(_:)(31);
          v27._countAndFlagsBits = 0x7075727265746E49;
          v27._object = 0xED000020676E6974;
          String.append(_:)(v27);
          v28 = [v6 identifier];
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          v32._countAndFlagsBits = v29;
          v32._object = v31;
          String.append(_:)(v32);

          v33._countAndFlagsBits = 0x6572206874697720;
          v33._object = 0xEE00203A6E6F7361;
          String.append(_:)(v33);
          v86 = 0;
          type metadata accessor for BGSystemTaskExpirationReason(0);
          _print_unlocked<A, B>(_:_:)();
          v35 = aBlock;
          v34 = v81;
          if (qword_10041DF00 != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          sub_10000685C(v36, qword_100421CD0);

          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v39 = 136315394;
            *(v39 + 4) = sub_10003FE34(0xD000000000000011, 0x80000001002BB9C0, &aBlock);
            *(v39 + 12) = 2080;
            *(v39 + 14) = sub_10003FE34(v35, v34, &aBlock);
            _os_log_impl(&_mh_execute_header, v37, v38, "%s%s", v39, 0x16u);
            swift_arrayDestroy();
            v25 = v71;

            v23 = v78;
          }

          ++v5;
          [v6 interruptWithReason:0];
          swift_unknownObjectRelease();
          if (v25 == v5)
          {
            goto LABEL_58;
          }
        }

        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

LABEL_58:

      return sub_10001BBBC();
    }

    if (v6 == 0x656B6F766E69 && v5 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v40 = 0;
      v41 = (v23 + 4);
      v76 = v23[2];
      v72 = (v23 + 4);
      while (v76 != v40)
      {
        if (v40 >= v78[2])
        {
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v47 = *&v41[8 * v40];
        v48 = [swift_unknownObjectRetain() identifier];
        v49._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        aBlock = 0x676E696B6F766E49;
        v81 = 0xE900000000000020;
        String.append(_:)(v49);

        v51 = aBlock;
        v50 = v81;
        if (qword_10041DF00 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_10000685C(v52, qword_100421CD0);

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v55 = 136315394;
          *(v55 + 4) = sub_10003FE34(0xD000000000000011, 0x80000001002BB9C0, &aBlock);
          *(v55 + 12) = 2080;
          *(v55 + 14) = sub_10003FE34(v51, v50, &aBlock);
          _os_log_impl(&_mh_execute_header, v53, v54, "%s%s", v55, 0x16u);
          swift_arrayDestroy();

          v41 = v72;
        }

        v42 = [objc_opt_self() sharedDaemon];
        v43 = swift_allocObject();
        *(v43 + 16) = v47;
        *(v43 + 24) = 0;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_10001DE08;
        *(v44 + 24) = v43;
        v84 = sub_10001DE10;
        v85 = v44;
        aBlock = _NSConcreteStackBlock;
        v81 = 1107296256;
        v82 = sub_10001D278;
        v83 = &unk_1003BB6C0;
        v45 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        [v42 holdingWorkAssertionWithDescription:v48 forScope:v45];

        _Block_release(v45);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
        swift_unknownObjectRelease();

        ++v40;
        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_84;
        }
      }

      goto LABEL_58;
    }

    if ((v6 != 0x7564656863736572 || v5 != 0xEA0000000000656CLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v6 == 0x7564656863736E75 && v5 == 0xEA0000000000656CLL)
      {

        v61 = v78;
      }

      else
      {
        v61 = v78;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_81:

          aBlock = 0;
          v81 = 0xE000000000000000;
          _StringGuts.grow(_:)(33);

          aBlock = 0xD00000000000001FLL;
          v81 = 0x80000001002BB9E0;
          v70._countAndFlagsBits = v6;
          v70._object = v5;
          String.append(_:)(v70);

          goto LABEL_82;
        }
      }

      v66 = v61[2];
      if (!v66)
      {
        goto LABEL_58;
      }

      v67 = 0;
      while (v67 < v61[2])
      {
        v68 = v67 + 1;
        v69 = swift_unknownObjectRetain();
        sub_10001CC78(v69);
        swift_unknownObjectRelease();
        v67 = v68;
        v61 = v78;
        if (v66 == v68)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_87;
    }

    v56 = v78;
    v57 = v78[2];
    if (!v57)
    {
      goto LABEL_58;
    }

    v58 = 0;
    while (v58 < v56[2])
    {
      v59 = v58 + 1;
      v60 = swift_unknownObjectRetain();
      sub_10001B314(v60);
      v56 = v78;
      swift_unknownObjectRelease();
      v58 = v59;
      if (v57 == v59)
      {
        goto LABEL_58;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10001CC78(void *a1)
{
  v1 = [a1 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  strcpy(v14, "Unscheduling ");
  HIWORD(v14[1]) = -4864;
  v5 = v1;
  v6._countAndFlagsBits = v2;
  v6._object = v4;
  String.append(_:)(v6);
  sub_10003F2C0(v14[0], v14[1], 0xD000000000000011, 0x80000001002BB9C0);

  v7 = [objc_opt_self() sharedScheduler];
  v8 = [v7 taskRequestForIdentifier:v5];

  if (v8)
  {

    v14[0] = 0;
    v9 = [v7 cancelTaskRequestWithIdentifier:v5 error:v14];

    if (v9)
    {
      v10 = v14[0];
    }

    else
    {
      v12 = v14[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v14[0] = 0;
      v14[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(35);
      v13._countAndFlagsBits = 0xD000000000000021;
      v13._object = 0x80000001002BBB00;
      String.append(_:)(v13);
      sub_1000042B4(&qword_10041E800, &qword_1002B96F0);
      _print_unlocked<A, B>(_:_:)();
      sub_10003F7B8(v14[0], v14[1], 0xD000000000000011, 0x80000001002BB9C0);
    }
  }

  else
  {

    _StringGuts.grow(_:)(32);

    v11._countAndFlagsBits = v2;
    v11._object = v4;
    String.append(_:)(v11);

    sub_10003F2C0(0xD00000000000001ELL, 0x80000001002BBAE0, 0xD000000000000011, 0x80000001002BB9C0);
  }
}

uint64_t sub_10001D0E8(void *a1, void *a2)
{
  v4 = [a1 workQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10001DE88;
  *(v6 + 24) = v5;
  v9[4] = sub_10001DFFC;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10001D278;
  v9[3] = &unk_1003BB738;
  v7 = _Block_copy(v9);
  swift_unknownObjectRetain();

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    [a2 setTaskCompleted];
    sub_10001B314(a1);
  }

  return result;
}

uint64_t sub_10001D324()
{
  v22.super_class = BGNonRepeatingSystemTaskRequest;
  v1 = objc_msgSendSuper2(&v22, "propertyListRepresentation");
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000042B4(&qword_10041EBB0, &qword_1002B96C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002B9640;
  strcpy((inited + 32), "scheduleAfter");
  *(inited + 46) = -4864;
  [v0 scheduleAfter];
  v4 = v3;
  v5 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  [v5 setUnitsStyle:0];
  v6 = [v5 localizedStringFromTimeInterval:v4];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001002BB9A0;
  [v0 trySchedulingBefore];
  v11 = v10;
  v12 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  [v12 setUnitsStyle:0];
  v13 = [v12 localizedStringFromTimeInterval:v11];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v14;
  *(inited + 104) = v16;
  v17 = sub_10003E69C(inited);
  swift_setDeallocating();
  sub_1000042B4(&qword_10041EBB8, &qword_1002B96C8);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v20;
  sub_10001D9E4(v17, sub_10001D848, 0, isUniquelyReferenced_nonNull_native, &v21);

  return v21;
}

Class sub_10001D5D0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

unint64_t sub_10001D65C()
{
  v1 = v0;
  sub_1000042B4(&qword_10041EBB0, &qword_1002B96C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002B9640;
  *(inited + 32) = 0x6C61767265746E69;
  *(inited + 40) = 0xE800000000000000;
  [v1 interval];
  v4 = v3;
  v5 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  [v5 setUnitsStyle:0];
  v6 = [v5 localizedStringFromTimeInterval:v4];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x80000001002BB980;
  [v1 minDurationBetweenInstances];
  v11 = v10;
  v12 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  [v12 setUnitsStyle:0];
  v13 = [v12 localizedStringFromTimeInterval:v11];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v14;
  *(inited + 104) = v16;
  v17 = sub_10003E69C(inited);
  swift_setDeallocating();
  sub_1000042B4(&qword_10041EBB8, &qword_1002B96C8);
  swift_arrayDestroy();
  return v17;
}

double sub_10001D848@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_10001DD04((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_10001D894(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10001DD04(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_10001DCF4(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_10001DD60(v20);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

unint64_t sub_10001D9E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_10001D894(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_10001DCF4(v44, v42);
  v14 = *a5;
  result = sub_10002C438(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_10002CE9C(v20, a4 & 1);
    result = sub_10002C438(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_10002DDD8();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    sub_100004394(v25);
    sub_10001DCF4(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_10001DCF4(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_10001D894(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_10001DCF4(v44, v42);
        v32 = *a5;
        result = sub_10002C438(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_10002CE9C(v36, 1);
          result = sub_10002C438(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          sub_100004394(v31);
          sub_10001DCF4(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_10001DCF4(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_10001D894(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1000113FC(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

_OWORD *sub_10001DCF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001DD04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001DD60(uint64_t a1)
{
  v2 = sub_1000042B4(&qword_10041EBC0, &qword_1002B96D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001DDC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DE38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001DE50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10001DEA8@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) nextTaskRequestWithCurrentTaskRequest:*(v1 + 24)];
  *a1 = result;
  return result;
}

unint64_t sub_10001DEEC()
{
  result = qword_10041EBE0;
  if (!qword_10041EBE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10041EBE0);
  }

  return result;
}

unint64_t sub_10001DF38()
{
  result = qword_10041EBE8;
  if (!qword_10041EBE8)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EBE8);
  }

  return result;
}

unint64_t sub_10001DF90()
{
  result = qword_10041EBF8;
  if (!qword_10041EBF8)
  {
    sub_100009078(&qword_10041EBF0, &qword_1002B96F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EBF8);
  }

  return result;
}

char *sub_10001E004(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10)
{
  v81 = a6;
  ObjectType = swift_getObjectType();
  v15 = [a7 domain];
  v16 = [v15 name];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = &v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__restoreRootPath];
  *v20 = a1;
  *(v20 + 1) = a2;
  v54 = OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__policy;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__policy] = a3;
  v55 = OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__depot;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__depot] = a4;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher] = a5;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan] = a7;
  v56 = OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress] = a8;
  v57 = OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__verifier;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__verifier] = a9;
  v58 = OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__logger;
  *&v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__logger] = a10;
  v59 = a10;

  v73 = a3;
  v62 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = a8;
  v67 = a9;
  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = v17;
  strcpy(v80, "=atc-engine= ");
  HIWORD(v80[1]) = -4864;
  v23._object = v19;
  String.append(_:)(v23);

  v24 = v80[1];
  v25 = v10;
  v26 = &v10[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
  *v26 = v80[0];
  *(v26 + 1) = v24;

  v27._countAndFlagsBits = 1129595181;
  v27._object = 0xE400000000000000;
  String.append(_:)(v27);
  v28 = v19;
  v66 = type metadata accessor for MBRestorePerformer();
  v29 = objc_allocWithZone(v66);
  v71 = OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath;
  *&v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer___destinationRootPath] = 0xF000000000000007;
  v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__disposed] = 0;
  v30 = OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary;
  v31 = objc_allocWithZone(type metadata accessor for MBRestorablePlacementSummary());
  v74 = v73;
  v63 = v62;
  v61 = v21;
  v60 = v59;
  swift_unknownObjectRetain();
  v53 = v30;
  *&v29[v30] = [v31 init];

  v32._countAndFlagsBits = 32;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v17;
  strcpy(v80, "=performer= ");
  BYTE5(v80[1]) = 0;
  HIWORD(v80[1]) = -5120;
  v33._object = v28;
  String.append(_:)(v33);

  v34 = v80[1];
  v35 = &v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__log];
  *v35 = v80[0];
  v35[1] = v34;
  v36 = &v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__identifier];
  *v36 = v17;
  v36[1] = v28;
  sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
  v37 = swift_allocBox();

  FilePath.init(_:)();
  v38 = sub_100006180(v37);
  if (v65)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();

    v39 = v60;
    v40 = v71;
LABEL_6:

    sub_1000112FC(*&v29[v40]);
    if (!v65)
    {

      swift_unknownObjectRelease();
    }

    swift_deallocPartialClassInstance();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
    return v25;
  }

  v41 = v38;
  v64 = v17;

  v40 = v71;
  v42 = *&v29[v71];
  *&v29[v71] = v41;
  sub_1000112FC(v42);
  *&v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__policy] = v74;
  *&v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__depot] = v63;
  *&v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__decrypter] = v81;
  v43 = *&v63[OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath];
  if ((~v43 & 0xF000000000000007) == 0)
  {

    sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v39 = v67;
    goto LABEL_6;
  }

  sub_100011314(0, &qword_10041E7E0, &off_1003B9A08);
  v52 = v74;
  v75 = v63;
  swift_unknownObjectRetain();
  sub_10001135C(v43);
  v44 = sub_100027C28(v43);
  v46 = v45;
  sub_1000112FC(v43);
  _StringGuts.grow(_:)(18);

  v80[0] = 0xD000000000000010;
  v80[1] = 0x80000001002BAE10;
  v47._countAndFlagsBits = v64;
  v47._object = v28;
  String.append(_:)(v47);

  *&v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__stage] = sub_10000A778(v44, v46, 0xD000000000000010, 0x80000001002BAE10);
  *&v29[OBJC_IVAR____TtC7backupd18MBRestorePerformer__logger] = a10;
  v79.receiver = v29;
  v79.super_class = v66;
  v49 = objc_msgSendSuper2(&v79, "init");

  swift_unknownObjectRelease();
  *&v25[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer] = v49;
  v78.receiver = v25;
  v78.super_class = ObjectType;
  v50 = objc_msgSendSuper2(&v78, "initWithSettingsContext:debugContext:domainManager:", 0, 0, 0);
  result = a2;
  if (v50)
  {

    v51 = *&v50[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher];
    v25 = v50;
    [v51 setDelegate:v25];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v25;
  }

  __break(1u);
  return result;
}

void sub_10001EA50()
{
  Current = CFAbsoluteTimeGetCurrent();
  v34 = v0;
  v3 = sub_10001F310(0x7075746553, 0xE500000000000000, sub_100023158, v33);
  if (!v1)
  {
    __chkstk_darwin(v3);
    v31 = v0;
    v4 = sub_10001F310(0x64616F6C6E776F44, 0xE800000000000000, sub_10002317C, v30);
    __chkstk_darwin(v4);
    v31 = v0;
    v6 = sub_10001F310(0xD000000000000011, (v5 | 0x8000000000000000), sub_1000231A0, v30);
    __chkstk_darwin(v6);
    v31 = v0;
    v8 = sub_10001F310(0xD000000000000015, (v7 | 0x8000000000000000), sub_1000231C4, v30);
    __chkstk_darwin(v8);
    v31 = v0;
    v9 = sub_10001F310(0x7953206563616C50, 0xEE00736B6E696C6DLL, sub_1000231E8, v30);
    __chkstk_darwin(v9);
    v31 = v0;
    v10 = sub_10001F310(0x7341206563616C50, 0xEC00000073746573, sub_10002320C, v30);
    __chkstk_darwin(v10);
    v31 = v0;
    v12 = sub_10001F310(0xD00000000000001BLL, (v11 | 0x8000000000000000), sub_100023230, v30);
    __chkstk_darwin(v12);
    v31 = v0;
    sub_10001F310(0x796669726556, 0xE600000000000000, nullsub_7, v30);
    [v0 cleanUpAfterError:0];
    [*&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__logger] flush];
    swift_getObjectType();
    v13 = sub_100021170();
    v32 = v14;
    v15 = CFAbsoluteTimeGetCurrent() - Current;
    v16 = [v0 engineError];
    v17 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
    v18 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8];
    if (v16)
    {
      v19 = v16;
      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v36 = 0xD000000000000014;
      v37 = 0x80000001002BBEC0;
      sub_1000042B4(&unk_10041E830, &qword_1002B9500);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1002B9270;
      *(v20 + 56) = &type metadata for Double;
      *(v20 + 64) = &protocol witness table for Double;
      *(v20 + 32) = v15;
      v35._countAndFlagsBits = String.init(format:_:)();
      v35._object = v21;

      v22._countAndFlagsBits = 115;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);

      String.append(_:)(v35);

      v23._countAndFlagsBits = 8250;
      v23._object = 0xE200000000000000;
      String.append(_:)(v23);
      v24._countAndFlagsBits = v13;
      v24._object = v32;
      String.append(_:)(v24);

      sub_10003F5B0(v19, v36, v37, v17, v18);

      swift_willThrow();
    }

    else
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v36 = 0xD000000000000019;
      v37 = 0x80000001002BBEA0;
      sub_1000042B4(&unk_10041E830, &qword_1002B9500);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1002B9270;
      *(v25 + 56) = &type metadata for Double;
      *(v25 + 64) = &protocol witness table for Double;
      *(v25 + 32) = v15;
      v35._countAndFlagsBits = String.init(format:_:)();
      v35._object = v26;

      v27._countAndFlagsBits = 115;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);

      String.append(_:)(v35);

      v28._countAndFlagsBits = 8250;
      v28._object = 0xE200000000000000;
      String.append(_:)(v28);
      v29._countAndFlagsBits = v13;
      v29._object = v32;
      String.append(_:)(v29);

      sub_10003F2C0(v36, v37, v17, v18);
    }
  }
}

void sub_10001F05C()
{
  v2 = v0;
  v24 = 0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v26, "setUpWithError:", &v24);
  v4 = v24;
  if (!v3)
  {
    v10 = v24;
    _convertNSErrorToError(_:)();

LABEL_5:
    swift_willThrow();
    return;
  }

  v5 = *&v2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__restoreRootPath];
  v6 = *&v2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__restoreRootPath + 8];
  sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
  v7 = swift_allocBox();
  v8 = v4;

  FilePath.init(_:)();
  v9 = sub_100005D30(v7);
  if (v1)
  {

    return;
  }

  v11 = v9;

  if ((v11 & 1) == 0)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v24 = 0xD000000000000011;
    v25 = 0x80000001002BC080;
    v20._countAndFlagsBits = v5;
    v20._object = v6;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0x6F6E2073656F6420;
    v21._object = 0xEF74736978652074;
    String.append(_:)(v21);
    v22 = objc_opt_self();
    v23 = String._bridgeToObjectiveC()();

    [v22 errorWithCode:1 description:v23];

    goto LABEL_5;
  }

  swift_getObjectType();
  v12 = sub_100021170();
  v14 = v13;
  v15 = &v2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
  v16 = *&v2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
  v17 = *(v15 + 1);
  v24 = 0;
  v25 = 0xE000000000000000;
  v18 = v12;
  _StringGuts.grow(_:)(24);

  v24 = 0xD000000000000016;
  v25 = 0x80000001002BC0A0;
  v19._countAndFlagsBits = v18;
  v19._object = v14;
  String.append(_:)(v19);

  sub_10003F2C0(v24, v25, v16, v17);
}

id sub_10001F310(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  Current = CFAbsoluteTimeGetCurrent();
  v11 = objc_autoreleasePoolPush();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000234B8;
  *(v13 + 24) = v12;
  v36 = sub_1000234C0;
  v37 = v13;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100022268;
  v35 = &unk_1003BBA80;
  v14 = _Block_copy(&aBlock);

  [v5 performRetryablePhase:v14];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v11);
    v16 = CFAbsoluteTimeGetCurrent() - Current;
    v17 = *&v5[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
    v18 = *&v5[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8];
    aBlock = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    aBlock = 541283393;
    v33 = 0xE400000000000000;
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x74656C706D6F6320;
    v20._object = 0xEE00206E69206465;
    String.append(_:)(v20);
    sub_1000042B4(&unk_10041E830, &qword_1002B9500);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1002B9270;
    *(v21 + 56) = &type metadata for Double;
    *(v21 + 64) = &protocol witness table for Double;
    *(v21 + 32) = v16;
    v30._countAndFlagsBits = String.init(format:_:)();
    v30._object = v22;

    v23._countAndFlagsBits = 115;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);

    String.append(_:)(v30);

    sub_10003F2C0(aBlock, v33, v17, v18);

    result = [v5 engineError];
    if (result)
    {
      v24 = result;
      aBlock = 0;
      v33 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      aBlock = 0x412064656C696146;
      v33 = 0xEB00000000204354;
      v25._countAndFlagsBits = a1;
      v25._object = a2;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 544106784;
      v26._object = 0xE400000000000000;
      String.append(_:)(v26);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1002B9270;
      *(v27 + 56) = &type metadata for Double;
      *(v27 + 64) = &protocol witness table for Double;
      *(v27 + 32) = v16;
      v31._countAndFlagsBits = String.init(format:_:)();
      v31._object = v28;

      v29._countAndFlagsBits = 115;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);

      String.append(_:)(v31);

      sub_10003F5B0(v24, aBlock, v33, v17, v18);

      return swift_willThrow();
    }
  }

  return result;
}

void sub_10001F720()
{
  v1 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher];
  aBlock = 0;
  v2 = [v1 begin:&aBlock];
  v3 = aBlock;
  if (v2)
  {
    v4 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_100023484;
    *(v6 + 24) = v5;
    v36 = sub_10002348C;
    v37 = v6;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_100021E48;
    v35 = &unk_1003BBA08;
    v7 = _Block_copy(&aBlock);
    v8 = v3;
    v9 = v0;

    aBlock = 0;
    v10 = [v4 enumerateAssetsToDownload:&aBlock enumerator:v7];
    _Block_release(v7);
    v11 = aBlock;
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10003F5B0(v12, 0xD00000000000001CLL, 0x80000001002BBFD0, *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log], *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8]);
    }

    aBlock = 0;
    v14 = [v1 finishWithError:&aBlock];
    v15 = aBlock;
    if (v14)
    {
      if (v12)
      {
        swift_willThrow();
        v16 = v15;
      }

      else
      {
        v22 = aBlock;
        v23 = [v1 fetchSummary];
        v24 = *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
        v25 = *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8];
        aBlock = 0;
        v33 = 0xE000000000000000;
        _StringGuts.grow(_:)(42);

        aBlock = 0xD000000000000021;
        v33 = 0x80000001002BC020;
        v26 = [v23 description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30._countAndFlagsBits = v27;
        v30._object = v29;
        String.append(_:)(v30);

        v31._countAndFlagsBits = 0x73746573736120;
        v31._object = 0xE700000000000000;
        String.append(_:)(v31);
        sub_10003F2C0(aBlock, v33, v24, v25);
      }
    }

    else
    {
      v17 = aBlock;
      v18 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v19 = *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
      v20 = *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8];
      aBlock = 0;
      v33 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);
      v21._countAndFlagsBits = 0xD000000000000026;
      v21._object = 0x80000001002BBFF0;
      String.append(_:)(v21);
      sub_1000042B4(&qword_10041ECD8, &unk_1002B9730);
      _print_unlocked<A, B>(_:_:)();
      sub_10003F5B0(v18, aBlock, v33, v19, v20);

      swift_willThrow();
    }
  }

  else
  {
    v13 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_10001FB90()
{
  v1 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  __chkstk_darwin(v1);
  v33 = &v29 - v3;
  v34 = type metadata accessor for Date();
  v4 = *(v34 - 8);
  v5 = __chkstk_darwin(v34);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  static Date.now.getter();
  v9 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100023454;
  *(v11 + 24) = v10;
  aBlock[4] = sub_100023504;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B4F4;
  aBlock[3] = &unk_1003BB990;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  aBlock[0] = 0;
  v14 = [v9 enumerateAndMarkNotStartedDirectoriesTopDown:aBlock enumerator:v12];
  _Block_release(v12);
  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v15 = sub_10000F2D8(0, v15[2] + 1, 1, v15);
    *&v14[v11] = v15;
    goto LABEL_4;
  }

  if (!v14)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v4 + 8))(v8, v34);
  }

  v29 = v10;
  v17 = *&v13[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer];
  v18 = v32;
  static Date.now.getter();
  v11 = *(v17 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
  v19 = *(v30 + 48);
  v20 = *(v4 + 16);
  v22 = v33;
  v21 = v34;
  v20(v33, v8, v34);
  v20(v22 + v19, v18, v21);
  v14 = OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations;
  v15 = *(v11 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v14[v11] = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v25 = v15[2];
  v24 = v15[3];
  if (v25 >= v24 >> 1)
  {
    v15 = sub_10000F2D8((v24 > 1), v25 + 1, 1, v15);
  }

  v15[2] = v25 + 1;
  sub_100023344(v33, v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25);
  *&v14[v11] = v15;
  v26 = *(v4 + 8);
  v27 = v34;
  v26(v32, v34);
  v26(v8, v27);
}

uint64_t sub_10001FFF0()
{
  v1 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  __chkstk_darwin(v1);
  v33 = &v29 - v3;
  v34 = type metadata accessor for Date();
  v4 = *(v34 - 8);
  v5 = __chkstk_darwin(v34);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  static Date.now.getter();
  v9 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100023424;
  *(v11 + 24) = v10;
  aBlock[4] = sub_10002342C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100021688;
  aBlock[3] = &unk_1003BB918;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  aBlock[0] = 0;
  v14 = [v9 enumerateAndMarkUnfinishedZeroByteFiles:aBlock enumerator:v12];
  _Block_release(v12);
  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v15 = sub_10000F2D8(0, v15[2] + 1, 1, v15);
    *&v14[v11] = v15;
    goto LABEL_4;
  }

  if (!v14)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v4 + 8))(v8, v34);
  }

  v29 = v10;
  v17 = *&v13[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer];
  v18 = v32;
  static Date.now.getter();
  v11 = *(v17 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
  v19 = *(v30 + 48);
  v20 = *(v4 + 16);
  v22 = v33;
  v21 = v34;
  v20(v33, v8, v34);
  v20(v22 + v19, v18, v21);
  v14 = OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations;
  v15 = *(v11 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v14[v11] = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v25 = v15[2];
  v24 = v15[3];
  if (v25 >= v24 >> 1)
  {
    v15 = sub_10000F2D8((v24 > 1), v25 + 1, 1, v15);
  }

  v15[2] = v25 + 1;
  sub_100023344(v33, v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25);
  *&v14[v11] = v15;
  v26 = *(v4 + 8);
  v27 = v34;
  v26(v32, v34);
  v26(v8, v27);
}

uint64_t sub_100020450()
{
  v1 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  __chkstk_darwin(v1);
  v33 = &v29 - v3;
  v34 = type metadata accessor for Date();
  v4 = *(v34 - 8);
  v5 = __chkstk_darwin(v34);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  static Date.now.getter();
  v9 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000233E4;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000233FC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002198C;
  aBlock[3] = &unk_1003BB8A0;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  aBlock[0] = 0;
  v14 = [v9 enumerateAndMarkUnfinishedSymlinks:aBlock enumerator:v12];
  _Block_release(v12);
  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v15 = sub_10000F2D8(0, v15[2] + 1, 1, v15);
    *&v14[v11] = v15;
    goto LABEL_4;
  }

  if (!v14)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v4 + 8))(v8, v34);
  }

  v29 = v10;
  v17 = *&v13[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer];
  v18 = v32;
  static Date.now.getter();
  v11 = *(v17 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
  v19 = *(v30 + 48);
  v20 = *(v4 + 16);
  v22 = v33;
  v21 = v34;
  v20(v33, v8, v34);
  v20(v22 + v19, v18, v21);
  v14 = OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations;
  v15 = *(v11 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v14[v11] = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v25 = v15[2];
  v24 = v15[3];
  if (v25 >= v24 >> 1)
  {
    v15 = sub_10000F2D8((v24 > 1), v25 + 1, 1, v15);
  }

  v15[2] = v25 + 1;
  sub_100023344(v33, v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25);
  *&v14[v11] = v15;
  v26 = *(v4 + 8);
  v27 = v34;
  v26(v32, v34);
  v26(v8, v27);
}

uint64_t sub_1000208B0()
{
  v1 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  __chkstk_darwin(v1);
  v33 = &v29 - v3;
  v34 = type metadata accessor for Date();
  v4 = *(v34 - 8);
  v5 = __chkstk_darwin(v34);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  static Date.now.getter();
  v9 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000233B4;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000233BC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100022118;
  aBlock[3] = &unk_1003BB828;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  aBlock[0] = 0;
  v14 = [v9 enumerateAndMarkUnfinishedAssets:aBlock enumerator:v12];
  _Block_release(v12);
  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v15 = sub_10000F2D8(0, v15[2] + 1, 1, v15);
    *&v14[v11] = v15;
    goto LABEL_4;
  }

  if (!v14)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v4 + 8))(v8, v34);
  }

  v29 = v10;
  v17 = *&v13[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer];
  v18 = v32;
  static Date.now.getter();
  v11 = *(v17 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
  v19 = *(v30 + 48);
  v20 = *(v4 + 16);
  v22 = v33;
  v21 = v34;
  v20(v33, v8, v34);
  v20(v22 + v19, v18, v21);
  v14 = OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations;
  v15 = *(v11 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v14[v11] = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v25 = v15[2];
  v24 = v15[3];
  if (v25 >= v24 >> 1)
  {
    v15 = sub_10000F2D8((v24 > 1), v25 + 1, 1, v15);
  }

  v15[2] = v25 + 1;
  sub_100023344(v33, v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25);
  *&v14[v11] = v15;
  v26 = *(v4 + 8);
  v27 = v34;
  v26(v32, v34);
  v26(v8, v27);
}

uint64_t sub_100020D10()
{
  v1 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  __chkstk_darwin(v1);
  v33 = &v29 - v3;
  v34 = type metadata accessor for Date();
  v4 = *(v34 - 8);
  v5 = __chkstk_darwin(v34);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  static Date.now.getter();
  v9 = *&v0[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000232F4;
  *(v11 + 24) = v10;
  aBlock[4] = sub_100023324;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B4F4;
  aBlock[3] = &unk_1003BB7B0;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  aBlock[0] = 0;
  v14 = [v9 enumerateAndMarkPlacedDirectoriesBottomUp:aBlock enumerator:v12];
  _Block_release(v12);
  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v15 = sub_10000F2D8(0, v15[2] + 1, 1, v15);
    *&v14[v11] = v15;
    goto LABEL_4;
  }

  if (!v14)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v4 + 8))(v8, v34);
  }

  v29 = v10;
  v17 = *&v13[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__performer];
  v18 = v32;
  static Date.now.getter();
  v11 = *(v17 + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
  v19 = *(v30 + 48);
  v20 = *(v4 + 16);
  v22 = v33;
  v21 = v34;
  v20(v33, v8, v34);
  v20(v22 + v19, v18, v21);
  v14 = OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations;
  v15 = *(v11 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v14[v11] = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v25 = v15[2];
  v24 = v15[3];
  if (v25 >= v24 >> 1)
  {
    v15 = sub_10000F2D8((v24 > 1), v25 + 1, 1, v15);
  }

  v15[2] = v25 + 1;
  sub_100023344(v33, v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25);
  *&v14[v11] = v15;
  v26 = *(v4 + 8);
  v27 = v34;
  v26(v32, v34);
  v26(v8, v27);
}

id sub_100021170()
{
  v9 = 0;
  v1 = [v0 countsOfRestorablesByState:&v9];
  v2 = v9;
  if (v1)
  {
    v3 = v1;
    sub_100011314(0, &unk_10041F3A0, NSNumber_ptr);
    sub_100023254();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v2;

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = MBDescriptionForStateSummaryDictionary(isa);

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

void sub_10002133C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *&v1[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher];
  v15 = 0;
  if ([v5 disposeWithError:&v15])
  {
    v6 = v15;
  }

  else
  {
    v7 = v15;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v9 = *&v1[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
    v10 = *&v1[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8];
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v11._object = 0x80000001002BBE00;
    v11._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v11);
    v14 = v5;
    sub_1000042B4(&qword_10041ECD8, &unk_1002B9730);
    _print_unlocked<A, B>(_:_:)();
    sub_10003F5B0(v8, v15, v16, v9, v10);
  }

  sub_10003247C();
  if (a1)
  {
    v12 = _convertErrorToNSError(_:)();
  }

  else
  {
    v12 = 0;
  }

  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "cleanUpOnceAfterError:", v12);
}

uint64_t sub_10002161C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a2;
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = sub_100022538(a3, v7, v7, a1, v5);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_100021688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  swift_unknownObjectRetain();
  v8 = v7(a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1000216F0(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a6;
  swift_unknownObjectRetain();

  if ([v11 isCanceled])
  {
    v12 = [v11 cancelError];
    if (v12)
    {
      v13 = v12;
      if (a5)
      {
        *a5 = _convertErrorToNSError(_:)();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v14 = 1;
  }

  else
  {
    sub_100032A38(a1, a3, a4, a2 & 1);
    v15 = *&v11[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress];
    if (v15)
    {
      [v15 updatingProgress:1 previousProgress:1.0 size:0.0];
    }

    swift_unknownObjectRelease();

    v14 = 5;
  }

  return v14;
}

uint64_t sub_10002198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 32);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_unknownObjectRetain();
  v12 = v7(v11, a3, v8, v10, a5);
  swift_unknownObjectRelease();

  return v12;
}

void sub_100021A7C(char *a1)
{
  v3 = v1;
  if ([v1 isCanceled] && objc_msgSend(v1, "cancelError"))
  {
    goto LABEL_3;
  }

  v5 = *&v1[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__depot];
  v6 = *&a1[OBJC_IVAR____TtC7backupd14MBFetchedAsset_metadata];
  v7 = sub_10002A444();
  if (!v2)
  {
    v9 = v8;
    v10 = v7;

    v11 = *&v5[OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath];
    if ((~v11 & 0xF000000000000007) != 0)
    {

      v12 = sub_100027EFC(v10, v9, v11);

      sub_1000112FC(v11);
      v13 = sub_100005D30(v12);

      v14 = *&v3[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log];
      v15 = *&v3[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8];
      if (v13)
      {
        _StringGuts.grow(_:)(40);

        v36 = 0x207465737341;
        v37 = 0xE600000000000000;
        v16 = [a1 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20._countAndFlagsBits = v17;
        v20._object = v19;
        String.append(_:)(v20);

        v21._countAndFlagsBits = 0xD00000000000001ELL;
        v21._object = 0x80000001002BC050;
        String.append(_:)(v21);
        v22 = [v5 description];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26._countAndFlagsBits = v23;
        v26._object = v25;
        String.append(_:)(v26);

        sub_10003F2C0(0x207465737341, 0xE600000000000000, v14, v15);

        v27 = *&v3[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress];
        if (v27)
        {
          [v27 updatingProgress:objc_msgSend(v6 previousProgress:"assetSize") size:{1.0, 0.0}];
        }
      }

      else
      {
        v36 = 0x6974736575716552;
        v37 = 0xEB0000000020676ELL;
        v28 = [a1 description];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32._countAndFlagsBits = v29;
        v32._object = v31;
        String.append(_:)(v32);

        sub_10003F2C0(0x6974736575716552, 0xEB0000000020676ELL, v14, v15);

        v33 = *&v3[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__fetcher];
        v36 = 0;
        if (![v33 requestAsset:a1 error:&v36])
        {
          v35 = v36;
          _convertNSErrorToError(_:)();

LABEL_3:
          swift_willThrow();
          return;
        }

        v34 = v36;
      }
    }

    else
    {

      sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
      swift_willThrow();
    }
  }
}

uint64_t sub_100021E48(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_100021E94(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  swift_unknownObjectRetain();
  v10 = a3;
  if ([v9 isCanceled])
  {
    v11 = [v9 cancelError];
    if (v11)
    {
      v12 = v11;
      if (a4)
      {
        *a4 = _convertErrorToNSError(_:)();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v13 = 1;
  }

  else
  {
    sub_100032C9C(a1, a2 & 1, v10);
    v14 = *&v9[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress];
    if (v14)
    {
      [v14 updatingProgress:1 previousProgress:1.0 size:0.0];
    }

    swift_unknownObjectRelease();

    v13 = 5;
  }

  return v13;
}

uint64_t sub_100022118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = v9(a2, a3, v10, a5);
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_100022194(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t))
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = sub_100022768(a2, v7, v7, a1, a4);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_100022538(void *a1, char *a2, uint64_t a3, void *a4, char a5)
{
  if ([a2 isCanceled])
  {
    v9 = [a2 cancelError];
    if (v9)
    {
      if (a1)
      {
        v10 = v9;
        *a1 = _convertErrorToNSError(_:)();
      }

      else
      {
      }
    }

    return 1;
  }

  else
  {
    sub_1000327E4(a4, a5 & 1);
    v11 = *&a2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress];
    if (v11)
    {
      [v11 updatingProgress:1 previousProgress:1.0 size:0.0];
    }

    return 5;
  }
}

uint64_t sub_100022768(void *a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if ([a2 isCanceled])
  {
    v9 = [a2 cancelError];
    if (v9)
    {
      if (a1)
      {
        v10 = v9;
        *a1 = _convertErrorToNSError(_:)();
      }

      else
      {
      }
    }

    return 1;
  }

  else
  {
    a5(a4);
    v11 = *&a2[OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress];
    if (v11)
    {
      [v11 updatingProgress:1 previousProgress:1.0 size:0.0];
    }

    return 5;
  }
}

id sub_100022998(char *a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v9 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__depot);
  sub_100028BE4(a1, a2, a3);
  if (v4)
  {
    v51 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log);
    v50 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8);
    _StringGuts.grow(_:)(50);

    v52 = 0xD00000000000001CLL;
    v53 = 0x80000001002BBDB0;
    v10 = [a1 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 544497952;
    v15._object = 0xE400000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a2;
    v16._object = a3;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0x6564206F746E6920;
    v17._object = 0xEC00000020746F70;
    String.append(_:)(v17);
    v18 = [v9 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    sub_10003F5B0(v4, 0xD00000000000001CLL, 0x80000001002BBDB0, v51, v50);

    v23 = *(v5 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan);
    v24 = _convertErrorToNSError(_:)();
    v52 = 0;
    LODWORD(v21) = [v23 setAssetState:3 asset:a1 withFailure:v24 error:&v52];

    if (v21)
    {
      v25 = v52;
    }

    else
    {
      v31 = v52;
      v32 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v52 = 0;
      v53 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v33._object = 0x80000001002BBD90;
      v33._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v33);
      v34 = [a1 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      v39._countAndFlagsBits = 0xD000000000000021;
      v39._object = 0x80000001002BBDD0;
      String.append(_:)(v39);
      sub_10003F5B0(v32, v52, v53, v51, v50);
    }

    return swift_willThrow();
  }

  v26 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan);
  v52 = 0;
  if (![v26 setAssetState:2 asset:a1 withFailure:0 error:&v52])
  {
    v40 = v52;
    v41 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v42 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log);
    v43 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8);
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v52 = 0xD000000000000015;
    v53 = 0x80000001002BBD90;
    v44 = [a1 description];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48._countAndFlagsBits = v45;
    v48._object = v47;
    String.append(_:)(v48);

    v49._countAndFlagsBits = 0x6E776F6420736120;
    v49._object = 0xEE00646564616F6CLL;
    String.append(_:)(v49);
    sub_10003F5B0(v41, v52, v53, v42, v43);

    return swift_willThrow();
  }

  v27 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__progress);
  if (!v27)
  {
    return v52;
  }

  v28 = *&a1[OBJC_IVAR____TtC7backupd14MBFetchedAsset_metadata];
  v29 = v52;
  return [v27 updatingProgress:objc_msgSend(v28 previousProgress:"assetSize") size:{1.0, 0.0}];
}

id sub_100022E54(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log);
  v7 = *(v2 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__log + 8);
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v8._countAndFlagsBits = 0x2072656863746546;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  sub_1000042B4(&qword_10041ECD8, &unk_1002B9730);
  _print_unlocked<A, B>(_:_:)();
  v9._object = 0x80000001002BBD70;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  v10 = [a1 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  sub_10003F5B0(a2, 0, 0xE000000000000000, v6, v7);

  v15 = *(v3 + OBJC_IVAR____TtC7backupd18MBRestoreATCEngine__plan);
  v16 = _convertErrorToNSError(_:)();
  v27 = 0;
  LODWORD(v15) = [v15 setAssetState:3 asset:a1 withFailure:v16 error:&v27];

  v17 = v27;
  if (v15)
  {

    return v17;
  }

  else
  {
    v19 = v27;
    v20 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v27 = 0xD000000000000015;
    v28 = 0x80000001002BBD90;
    v21 = [a1 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = 0x6C69616620736120;
    v26._object = 0xEA00000000006465;
    String.append(_:)(v26);
    sub_10003F5B0(v20, v27, v28, v6, v7);
  }
}

unint64_t sub_100023254()
{
  result = qword_10041ECE0;
  if (!qword_10041ECE0)
  {
    sub_100011314(255, &unk_10041F3A0, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041ECE0);
  }

  return result;
}

uint64_t sub_1000232BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002332C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100023344(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100023550()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineStart;
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 56);
  v4(&v0[v2], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineError] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initMessageStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initMessageEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initAttemptCount] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferAttemptCount] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreAttemptCount] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightAttemptCount] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferAttemptCount] = 0;
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__totalFileCount] = 0;
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__filesTransferred] = 0;
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__totalByteCount] = 0;
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__bytesTransferred] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreAttemptCount] = 0;
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneStart], 1, 1, v3);
  v4(&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneEnd], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneAttemptCount] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100023A50(void *a1, uint64_t *a2)
{
  v5 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v6);
  v11 = &v19[-v10];
  v12 = *(v2 + *a1);
  v13 = __CFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v2 + *a1) = v14;
    v15 = *a2;
    swift_beginAccess();
    sub_100027A50(v2 + v15, v11);
    v16 = type metadata accessor for Date();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v11, 1, v16);
    result = sub_10001A7A0(v11, &qword_10041EE08, &qword_1002B9788);
    if (v18 == 1)
    {
      Date.init()();
      (*(v17 + 56))(v8, 0, 1, v16);
      swift_beginAccess();
      sub_100027AC0(v8, v2 + v15);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100023D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  Date.init()();
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferEnd;
  swift_beginAccess();
  sub_100027AC0(v11, v4 + v13);
  result = swift_endAccess();
  *(v4 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__totalFileCount) = a2;
  *(v4 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__totalByteCount) = a1;
  *(v4 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__bytesTransferred) = a3;
  *(v4 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__filesTransferred) = a4;
  return result;
}

void sub_100024020(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = a1;
  Date.init()();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = *a3;
  swift_beginAccess();
  sub_100027AC0(v7, v8 + v10);
  swift_endAccess();
}

void sub_100024120()
{
  v1 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  v2 = __chkstk_darwin(v1 - 8);
  v362 = &v360 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v381 = &v360 - v5;
  v6 = __chkstk_darwin(v4);
  v383 = &v360 - v7;
  v8 = __chkstk_darwin(v6);
  v410 = &v360 - v9;
  v10 = __chkstk_darwin(v8);
  v405 = &v360 - v11;
  v12 = __chkstk_darwin(v10);
  v364 = &v360 - v13;
  v14 = __chkstk_darwin(v12);
  v384 = &v360 - v15;
  v16 = __chkstk_darwin(v14);
  v387 = &v360 - v17;
  v18 = __chkstk_darwin(v16);
  v411 = &v360 - v19;
  v20 = __chkstk_darwin(v18);
  v407 = &v360 - v21;
  v22 = __chkstk_darwin(v20);
  v386 = &v360 - v23;
  v24 = __chkstk_darwin(v22);
  v366 = &v360 - v25;
  v26 = __chkstk_darwin(v24);
  v388 = &v360 - v27;
  v28 = __chkstk_darwin(v26);
  v389 = &v360 - v29;
  v30 = __chkstk_darwin(v28);
  v412 = &v360 - v31;
  v32 = __chkstk_darwin(v30);
  v413 = &v360 - v33;
  v34 = __chkstk_darwin(v32);
  v368 = &v360 - v35;
  v36 = __chkstk_darwin(v34);
  v390 = &v360 - v37;
  v38 = __chkstk_darwin(v36);
  v392 = &v360 - v39;
  v40 = __chkstk_darwin(v38);
  v414 = &v360 - v41;
  v42 = __chkstk_darwin(v40);
  v418 = &v360 - v43;
  v44 = __chkstk_darwin(v42);
  v371 = &v360 - v45;
  v46 = __chkstk_darwin(v44);
  v393 = &v360 - v47;
  v48 = __chkstk_darwin(v46);
  v395 = &v360 - v49;
  v50 = __chkstk_darwin(v48);
  v415 = &v360 - v51;
  v52 = __chkstk_darwin(v50);
  v408 = &v360 - v53;
  v54 = __chkstk_darwin(v52);
  v374 = &v360 - v55;
  v56 = __chkstk_darwin(v54);
  v396 = &v360 - v57;
  v58 = __chkstk_darwin(v56);
  v397 = &v360 - v59;
  v60 = __chkstk_darwin(v58);
  v416 = &v360 - v61;
  v62 = __chkstk_darwin(v60);
  v409 = &v360 - v63;
  v64 = __chkstk_darwin(v62);
  v377 = &v360 - v65;
  v66 = __chkstk_darwin(v64);
  v398 = &v360 - v67;
  v68 = __chkstk_darwin(v66);
  v400 = &v360 - v69;
  v70 = __chkstk_darwin(v68);
  v417 = &v360 - v71;
  v72 = __chkstk_darwin(v70);
  v420 = (&v360 - v73);
  v74 = __chkstk_darwin(v72);
  v425 = (&v360 - v75);
  __chkstk_darwin(v74);
  v77 = &v360 - v76;
  v78 = type metadata accessor for Date();
  v79 = *(v78 - 8);
  v80 = __chkstk_darwin(v78);
  v361 = &v360 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __chkstk_darwin(v80);
  v401 = &v360 - v83;
  v84 = __chkstk_darwin(v82);
  v382 = &v360 - v85;
  v86 = __chkstk_darwin(v84);
  v363 = &v360 - v87;
  v88 = __chkstk_darwin(v86);
  v402 = &v360 - v89;
  v90 = __chkstk_darwin(v88);
  v385 = &v360 - v91;
  v92 = __chkstk_darwin(v90);
  v365 = &v360 - v93;
  v94 = __chkstk_darwin(v92);
  v369 = &v360 - v95;
  v96 = __chkstk_darwin(v94);
  v403 = &v360 - v97;
  v98 = __chkstk_darwin(v96);
  v367 = &v360 - v99;
  v100 = __chkstk_darwin(v98);
  v372 = &v360 - v101;
  v102 = __chkstk_darwin(v100);
  v391 = &v360 - v103;
  v104 = __chkstk_darwin(v102);
  v370 = &v360 - v105;
  v106 = __chkstk_darwin(v104);
  v375 = &v360 - v107;
  v108 = __chkstk_darwin(v106);
  v394 = &v360 - v109;
  v110 = __chkstk_darwin(v108);
  v373 = &v360 - v111;
  v112 = __chkstk_darwin(v110);
  v378 = &v360 - v113;
  v114 = __chkstk_darwin(v112);
  v406 = &v360 - v115;
  v116 = __chkstk_darwin(v114);
  v376 = &v360 - v117;
  v118 = __chkstk_darwin(v116);
  v379 = &v360 - v119;
  v120 = __chkstk_darwin(v118);
  v399 = &v360 - v121;
  v122 = __chkstk_darwin(v120);
  v380 = &v360 - v123;
  __chkstk_darwin(v122);
  v125 = &v360 - v124;
  v439 = sub_10003E69C(&_swiftEmptyArrayStorage);
  v126 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineStart;
  swift_beginAccess();
  v421 = v126;
  v127 = v0;
  sub_100027A50(v0 + v126, v77);
  v129 = v79 + 48;
  v128 = *(v79 + 48);
  if ((v128)(v77, 1, v78) == 1)
  {

    sub_10001A7A0(v77, &qword_10041EE08, &qword_1002B9788);
    sub_10003F7B8(0xD00000000000002CLL, 0x80000001002BC3D0, 0xD000000000000011, 0x80000001002BC3B0);
    return;
  }

  v422 = v79;
  v132 = *(v79 + 32);
  v131 = v79 + 32;
  v130 = v132;
  v132(v125, v77, v78);
  v133 = arc4random_uniform(0xFFFFFFFF);
  v438 = &type metadata for UInt32;
  LODWORD(v437) = v133;
  sub_10001DCF4(&v437, v436);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v435[0] = v439;
  sub_10002D5BC(v436, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  v439 = v435[0];
  v135 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineEnd;
  swift_beginAccess();
  v136 = v127 + v135;
  v137 = v425;
  sub_100027A50(v136, v425);
  v426 = v129;
  v138 = (v128)(v137, 1, v78);
  v419 = v127;
  v404 = v78;
  v360 = v125;
  v423 = v132;
  if (v138 == 1)
  {
    sub_10001A7A0(v137, &qword_10041EE08, &qword_1002B9788);
    v139 = v131;
LABEL_7:
    v142 = v419;
    v143 = v417;
    goto LABEL_12;
  }

  v140 = v380;
  v139 = v131;
  v130(v380, v137, v78);
  Date.timeIntervalSince(_:)();
  if (v141 < 0.0)
  {
    sub_10003DB54(0x7275446C61746F74, 0xED00006E6F697461, &v437);
    sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
    (*(v422 + 8))(v140, v78);
    goto LABEL_7;
  }

  v144 = v422;
  if ((*&v141 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v142 = v419;
  if (v141 <= -9.22337204e18)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v143 = v417;
  if (v141 >= 9.22337204e18)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v438 = &type metadata for Int64;
  *&v437 = v141;
  sub_10001DCF4(&v437, v436);
  v145 = swift_isUniquelyReferenced_nonNull_native();
  v434[0] = v439;
  sub_10002D5BC(v436, 0x7275446C61746F74, 0xED00006E6F697461, v145);
  (*(v144 + 8))(v140, v404);
  v439 = v434[0];
LABEL_12:
  v146 = *(v142 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__engineError);
  v424 = v139;
  if (v146)
  {
    v147 = objc_opt_self();
    v148 = v146;
    v149 = _convertErrorToNSError(_:)();
    v150 = [v147 signatureForError:v149];

    v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v153 = v152;

    v438 = &type metadata for String;
    *&v437 = v151;
    *(&v437 + 1) = v153;
    sub_10001DCF4(&v437, v436);
    v154 = swift_isUniquelyReferenced_nonNull_native();
    v434[0] = v439;
    sub_10002D5BC(v436, 0x676953726F727265, 0xEE0065727574616ELL, v154);

    v439 = v434[0];
  }

  v155 = [objc_allocWithZone(CWFInterface) init];
  [v155 activate];
  v156 = [v155 networkName];
  if (v156)
  {
    v157 = v156;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v158._countAndFlagsBits = 0x5320656C707041;
    v158._object = 0xE700000000000000;
    v159 = String.hasPrefix(_:)(v158);
  }

  else
  {
    v159 = 0;
  }

  [v155 invalidate];

  v438 = &type metadata for Bool;
  LOBYTE(v437) = v159;
  sub_10001DCF4(&v437, v436);
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v434[0] = v439;
  sub_10002D5BC(v436, 0x53656C7070416E69, 0xEC00000065726F74, v160);
  v439 = v434[0];
  v161 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initMessageStart;
  swift_beginAccess();
  v162 = v420;
  sub_100027A50(v142 + v161, v420);
  v163 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initMessageEnd;
  swift_beginAccess();
  sub_100027A50(v142 + v163, v143);
  v380 = *(v142 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__initAttemptCount);
  v164 = v400;
  sub_100027A50(v142 + v421, v400);
  v165 = v404;
  if ((v128)(v164, 1, v404) == 1)
  {
    goto LABEL_212;
  }

  v166 = v399;
  v167 = v423;
  v423(v399, v164, v165);
  v168 = v398;
  sub_100027A50(v162, v398);
  v425 = v128;
  if ((v128)(v168, 1, v165) == 1)
  {
    v169 = *(v422 + 8);
    (v169)(v166, v165);
    sub_10001A7A0(v168, &qword_10041EE08, &qword_1002B9788);
    goto LABEL_30;
  }

  v170 = v379;
  v167(v379, v168, v165);
  *&v437 = 1953066601;
  *(&v437 + 1) = 0xE400000000000000;
  v171._countAndFlagsBits = 0x7472617453;
  v171._object = 0xE500000000000000;
  String.append(_:)(v171);
  v172 = v437;
  Date.timeIntervalSince(_:)();
  if (v173 < 0.0)
  {
    sub_10003DB54(v172, *(&v172 + 1), &v437);

    sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
    v174 = v380;
    goto LABEL_26;
  }

  v174 = v380;
  if ((*&v173 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_168;
  }

  if (v173 <= -9.22337204e18)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  if (v173 >= 9.22337204e18)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v438 = &type metadata for Int64;
  *&v437 = v173;
  sub_10001DCF4(&v437, v436);
  v175 = swift_isUniquelyReferenced_nonNull_native();
  v433[0] = v439;
  sub_10002D5BC(v436, v172, *(&v172 + 1), v175);

  v439 = v433[0];
LABEL_26:
  v176 = v377;
  sub_100027A50(v417, v377);
  if ((v425)(v176, 1, v165) != 1)
  {
    v423(v376, v176, v165);
    *&v437 = 1953066601;
    *(&v437 + 1) = 0xE400000000000000;
    v225._countAndFlagsBits = 0x6E6F697461727544;
    v225._object = 0xE800000000000000;
    String.append(_:)(v225);
    v226 = v437;
    Date.timeIntervalSince(_:)();
    if (v227 >= 0.0)
    {
      if ((*&v227 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_191:
        __break(1u);
        goto LABEL_192;
      }

      if (v227 <= -9.22337204e18)
      {
LABEL_192:
        __break(1u);
        goto LABEL_193;
      }

      if (v227 >= 9.22337204e18)
      {
LABEL_194:
        __break(1u);
        goto LABEL_195;
      }

      v438 = &type metadata for Int64;
      *&v437 = v227;
      sub_10001DCF4(&v437, v436);
      v353 = swift_isUniquelyReferenced_nonNull_native();
      v433[0] = v439;
      sub_10002D5BC(v436, v226, *(&v226 + 1), v353);

      v439 = v433[0];
    }

    else
    {
      sub_10003DB54(v226, *(&v226 + 1), &v437);

      sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
    }

    (*(v422 + 8))(v376, v165);
    if (!v174)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  sub_10001A7A0(v176, &qword_10041EE08, &qword_1002B9788);
  if (v174)
  {
LABEL_28:
    *&v437 = 1953066601;
    *(&v437 + 1) = 0xE400000000000000;
    v177._countAndFlagsBits = 0x4374706D65747441;
    v177._object = 0xEC000000746E756FLL;
    String.append(_:)(v177);
    v178 = v437;
    v438 = &type metadata for UInt64;
    *&v437 = v174;
    sub_10001DCF4(&v437, v436);
    v179 = swift_isUniquelyReferenced_nonNull_native();
    v433[0] = v439;
    sub_10002D5BC(v436, v178, *(&v178 + 1), v179);

    v439 = v433[0];
  }

LABEL_29:
  v169 = *(v422 + 8);
  (v169)(v170, v165);
  (v169)(v166, v165);
  v162 = v420;
LABEL_30:
  v420 = v169;
  sub_10001A7A0(v417, &qword_10041EE08, &qword_1002B9788);
  sub_10001A7A0(v162, &qword_10041EE08, &qword_1002B9788);
  v180 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferStart;
  v181 = v419;
  swift_beginAccess();
  v182 = v409;
  sub_100027A50(v181 + v180, v409);
  v183 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferEnd;
  swift_beginAccess();
  sub_100027A50(v181 + v183, v416);
  v417 = *(v181 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainTransferAttemptCount);
  v184 = v397;
  sub_100027A50(v181 + v421, v397);
  v185 = v425;
  v186 = (v425)(v184, 1, v165);
  v187 = v418;
  v188 = v406;
  if (v186 == 1)
  {
LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

  v189 = v423;
  (v423)(v406, v184);
  v190 = v182;
  v191 = v396;
  sub_100027A50(v190, v396);
  if (v185(v191, 1, v165) == 1)
  {
    (v420)(v188, v165);
    sub_10001A7A0(v191, &qword_10041EE08, &qword_1002B9788);
    v192 = v165;
    v193 = v419;
    v194 = v415;
    v195 = v409;
    goto LABEL_43;
  }

  v196 = v191;
  v197 = v378;
  v189(v378, v196, v165);
  *&v437 = 0xD000000000000010;
  *(&v437 + 1) = 0x80000001002BC400;
  v400 = 0x80000001002BC400;
  v198._countAndFlagsBits = 0x7472617453;
  v198._object = 0xE500000000000000;
  String.append(_:)(v198);
  v199 = v437;
  Date.timeIntervalSince(_:)();
  if (v200 < 0.0)
  {
    sub_10003DB54(v199, *(&v199 + 1), &v437);

    sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
    v193 = v419;
    v201 = v420;
    v192 = v404;
    v195 = v409;
    v202 = v417;
    goto LABEL_39;
  }

  v193 = v419;
  v195 = v409;
  v202 = v417;
  if ((*&v200 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_171;
  }

  v201 = v420;
  v192 = v404;
  if (v200 <= -9.22337204e18)
  {
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (v200 >= 9.22337204e18)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v438 = &type metadata for Int64;
  *&v437 = v200;
  sub_10001DCF4(&v437, v436);
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v432[0] = v439;
  sub_10002D5BC(v436, v199, *(&v199 + 1), v203);

  v439 = v432[0];
LABEL_39:
  v204 = v374;
  sub_100027A50(v416, v374);
  if ((v425)(v204, 1, v192) != 1)
  {
    v423(v373, v204, v192);
    *&v437 = 0xD000000000000010;
    *(&v437 + 1) = v400;
    v251._countAndFlagsBits = 0x6E6F697461727544;
    v251._object = 0xE800000000000000;
    String.append(_:)(v251);
    v252 = v437;
    Date.timeIntervalSince(_:)();
    if (v253 >= 0.0)
    {
      if ((*&v253 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_193:
        __break(1u);
        goto LABEL_194;
      }

      v202 = v417;
      if (v253 <= -9.22337204e18)
      {
LABEL_195:
        __break(1u);
        goto LABEL_196;
      }

      if (v253 >= 9.22337204e18)
      {
LABEL_197:
        __break(1u);
        goto LABEL_198;
      }

      v438 = &type metadata for Int64;
      *&v437 = v253;
      sub_10001DCF4(&v437, v436);
      v354 = swift_isUniquelyReferenced_nonNull_native();
      v432[0] = v439;
      sub_10002D5BC(v436, v252, *(&v252 + 1), v354);

      v439 = v432[0];
    }

    else
    {
      sub_10003DB54(v252, *(&v252 + 1), &v437);

      sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
      v202 = v417;
    }

    v201(v373, v192);
    if (!v202)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  sub_10001A7A0(v204, &qword_10041EE08, &qword_1002B9788);
  if (v202)
  {
LABEL_41:
    *&v437 = 0xD000000000000010;
    *(&v437 + 1) = v400;
    v205._countAndFlagsBits = 0x4374706D65747441;
    v205._object = 0xEC000000746E756FLL;
    String.append(_:)(v205);
    v206 = v437;
    v438 = &type metadata for UInt64;
    *&v437 = v202;
    sub_10001DCF4(&v437, v436);
    v207 = swift_isUniquelyReferenced_nonNull_native();
    v432[0] = v439;
    sub_10002D5BC(v436, v206, *(&v206 + 1), v207);

    v439 = v432[0];
  }

LABEL_42:
  v201(v197, v192);
  v201(v406, v192);
  v187 = v418;
  v194 = v415;
LABEL_43:
  sub_10001A7A0(v416, &qword_10041EE08, &qword_1002B9788);
  sub_10001A7A0(v195, &qword_10041EE08, &qword_1002B9788);
  v208 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreStart;
  swift_beginAccess();
  v209 = v408;
  sub_100027A50(v193 + v208, v408);
  v210 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreEnd;
  swift_beginAccess();
  sub_100027A50(v193 + v210, v194);
  v417 = *(v193 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__keychainRestoreAttemptCount);
  v211 = v395;
  sub_100027A50(v193 + v421, v395);
  v212 = v425;
  if ((v425)(v211, 1, v192) == 1)
  {
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  v213 = v394;
  v214 = v211;
  v215 = v423;
  v423(v394, v214, v192);
  v216 = v209;
  v217 = v393;
  sub_100027A50(v216, v393);
  if (v212(v217, 1, v192) == 1)
  {
    (v420)(v213, v192);
    sub_10001A7A0(v217, &qword_10041EE08, &qword_1002B9788);
    v218 = v408;
    goto LABEL_58;
  }

  v219 = v217;
  v220 = v375;
  v215(v375, v219, v192);
  *&v437 = 0x6E6961686379656BLL;
  *(&v437 + 1) = 0xEF65726F74736552;
  v221._countAndFlagsBits = 0x7472617453;
  v221._object = 0xE500000000000000;
  String.append(_:)(v221);
  v222 = v437;
  Date.timeIntervalSince(_:)();
  if (v223 < 0.0)
  {
    sub_10003DB54(v222, *(&v222 + 1), &v437);

    sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
    v218 = v408;
    v224 = v417;
    goto LABEL_54;
  }

  v218 = v408;
  if ((*&v223 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_175;
  }

  if (v223 <= -9.22337204e18)
  {
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v224 = v417;
  if (v223 >= 9.22337204e18)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v438 = &type metadata for Int64;
  *&v437 = v223;
  sub_10001DCF4(&v437, v436);
  v228 = swift_isUniquelyReferenced_nonNull_native();
  v431[0] = v439;
  sub_10002D5BC(v436, v222, *(&v222 + 1), v228);

  v439 = v431[0];
LABEL_54:
  v229 = v371;
  sub_100027A50(v415, v371);
  if ((v425)(v229, 1, v192) != 1)
  {
    v423(v370, v229, v192);
    *&v437 = 0x6E6961686379656BLL;
    *(&v437 + 1) = 0xEF65726F74736552;
    v276._countAndFlagsBits = 0x6E6F697461727544;
    v276._object = 0xE800000000000000;
    String.append(_:)(v276);
    v277 = v437;
    Date.timeIntervalSince(_:)();
    if (v278 >= 0.0)
    {
      if ((*&v278 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_196:
        __break(1u);
        goto LABEL_197;
      }

      v224 = v417;
      if (v278 <= -9.22337204e18)
      {
LABEL_198:
        __break(1u);
        goto LABEL_199;
      }

      if (v278 >= 9.22337204e18)
      {
LABEL_200:
        __break(1u);
        goto LABEL_201;
      }

      v438 = &type metadata for Int64;
      *&v437 = v278;
      sub_10001DCF4(&v437, v436);
      v355 = swift_isUniquelyReferenced_nonNull_native();
      v431[0] = v439;
      sub_10002D5BC(v436, v277, *(&v277 + 1), v355);

      v439 = v431[0];
    }

    else
    {
      sub_10003DB54(v277, *(&v277 + 1), &v437);

      sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
      v224 = v417;
    }

    (v420)(v370, v192);
    if (!v224)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  sub_10001A7A0(v229, &qword_10041EE08, &qword_1002B9788);
  if (v224)
  {
LABEL_56:
    *&v437 = 0x6E6961686379656BLL;
    *(&v437 + 1) = 0xEF65726F74736552;
    v230._countAndFlagsBits = 0x4374706D65747441;
    v230._object = 0xEC000000746E756FLL;
    String.append(_:)(v230);
    v231 = v437;
    v438 = &type metadata for UInt64;
    *&v437 = v224;
    sub_10001DCF4(&v437, v436);
    v232 = swift_isUniquelyReferenced_nonNull_native();
    v431[0] = v439;
    sub_10002D5BC(v436, v231, *(&v231 + 1), v232);

    v439 = v431[0];
  }

LABEL_57:
  v233 = v420;
  (v420)(v220, v192);
  v233(v213, v192);
  v187 = v418;
LABEL_58:
  sub_10001A7A0(v415, &qword_10041EE08, &qword_1002B9788);
  sub_10001A7A0(v218, &qword_10041EE08, &qword_1002B9788);
  v234 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightStart;
  swift_beginAccess();
  sub_100027A50(v193 + v234, v187);
  v235 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightEnd;
  swift_beginAccess();
  sub_100027A50(v193 + v235, v414);
  v236 = v187;
  v417 = *(v193 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__preflightAttemptCount);
  v237 = v392;
  sub_100027A50(v193 + v421, v392);
  v238 = v425;
  v239 = (v425)(v237, 1, v192);
  v240 = v423;
  v241 = v413;
  if (v239 == 1)
  {
LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

  v242 = v391;
  v423(v391, v237, v192);
  v243 = v236;
  v244 = v390;
  sub_100027A50(v243, v390);
  if (v238(v244, 1, v192) == 1)
  {
    (v420)(v242, v192);
    sub_10001A7A0(v244, &qword_10041EE08, &qword_1002B9788);
    goto LABEL_73;
  }

  v245 = v244;
  v246 = v372;
  v240(v372, v245, v192);
  strcpy(&v437, "preflight");
  WORD5(v437) = 0;
  HIDWORD(v437) = -385875968;
  v247._countAndFlagsBits = 0x7472617453;
  v247._object = 0xE500000000000000;
  String.append(_:)(v247);
  v248 = v437;
  Date.timeIntervalSince(_:)();
  if (v249 < 0.0)
  {
    sub_10003DB54(v248, *(&v248 + 1), &v437);

    sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
    v250 = v417;
    goto LABEL_69;
  }

  v250 = v417;
  if ((*&v249 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_178;
  }

  if (v249 <= -9.22337204e18)
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  if (v249 >= 9.22337204e18)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v438 = &type metadata for Int64;
  *&v437 = v249;
  sub_10001DCF4(&v437, v436);
  v254 = swift_isUniquelyReferenced_nonNull_native();
  v430[0] = v439;
  sub_10002D5BC(v436, v248, *(&v248 + 1), v254);

  v439 = v430[0];
LABEL_69:
  v255 = v368;
  sub_100027A50(v414, v368);
  if ((v425)(v255, 1, v192) != 1)
  {
    v423(v367, v255, v192);
    strcpy(&v437, "preflight");
    WORD5(v437) = 0;
    HIDWORD(v437) = -385875968;
    v312._countAndFlagsBits = 0x6E6F697461727544;
    v312._object = 0xE800000000000000;
    String.append(_:)(v312);
    v313 = v437;
    Date.timeIntervalSince(_:)();
    if (v314 >= 0.0)
    {
      if ((*&v314 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

      v250 = v417;
      if (v314 <= -9.22337204e18)
      {
LABEL_201:
        __break(1u);
        goto LABEL_202;
      }

      if (v314 >= 9.22337204e18)
      {
LABEL_203:
        __break(1u);
        goto LABEL_204;
      }

      v438 = &type metadata for Int64;
      *&v437 = v314;
      sub_10001DCF4(&v437, v436);
      v356 = swift_isUniquelyReferenced_nonNull_native();
      v430[0] = v439;
      sub_10002D5BC(v436, v313, *(&v313 + 1), v356);

      v439 = v430[0];
    }

    else
    {
      sub_10003DB54(v313, *(&v313 + 1), &v437);

      sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
      v250 = v417;
    }

    (v420)(v367, v192);
    if (!v250)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  sub_10001A7A0(v255, &qword_10041EE08, &qword_1002B9788);
  if (v250)
  {
LABEL_71:
    strcpy(&v437, "preflight");
    WORD5(v437) = 0;
    HIDWORD(v437) = -385875968;
    v256._countAndFlagsBits = 0x4374706D65747441;
    v256._object = 0xEC000000746E756FLL;
    String.append(_:)(v256);
    v257 = v437;
    v438 = &type metadata for UInt64;
    *&v437 = v250;
    sub_10001DCF4(&v437, v436);
    v258 = swift_isUniquelyReferenced_nonNull_native();
    v430[0] = v439;
    sub_10002D5BC(v436, v257, *(&v257 + 1), v258);

    v439 = v430[0];
  }

LABEL_72:
  v259 = v420;
  (v420)(v246, v192);
  v259(v242, v192);
  v241 = v413;
LABEL_73:
  sub_10001A7A0(v414, &qword_10041EE08, &qword_1002B9788);
  sub_10001A7A0(v418, &qword_10041EE08, &qword_1002B9788);
  v260 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferStart;
  swift_beginAccess();
  sub_100027A50(v193 + v260, v241);
  v261 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferEnd;
  swift_beginAccess();
  sub_100027A50(v193 + v261, v412);
  v417 = *(v193 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__dataTransferAttemptCount);
  v262 = v389;
  sub_100027A50(v193 + v421, v389);
  v263 = v425;
  v264 = (v425)(v262, 1, v192);
  v265 = v403;
  if (v264 == 1)
  {
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  v418 = v261;
  v266 = v262;
  v267 = v423;
  v423(v403, v266, v192);
  v268 = v241;
  v269 = v388;
  sub_100027A50(v268, v388);
  if (v263(v269, 1, v192) == 1)
  {
    (v420)(v265, v192);
    sub_10001A7A0(v269, &qword_10041EE08, &qword_1002B9788);
    goto LABEL_88;
  }

  v270 = v269;
  v271 = v369;
  v267(v369, v270, v192);
  strcpy(&v437, "dataTransfer");
  BYTE13(v437) = 0;
  HIWORD(v437) = -5120;
  v272._countAndFlagsBits = 0x7472617453;
  v272._object = 0xE500000000000000;
  String.append(_:)(v272);
  v273 = v437;
  Date.timeIntervalSince(_:)();
  if (v274 < 0.0)
  {
    sub_10003DB54(v273, *(&v273 + 1), &v437);

    sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
    v275 = v417;
    goto LABEL_84;
  }

  if ((*&v274 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_181;
  }

  if (v274 <= -9.22337204e18)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v275 = v417;
  if (v274 >= 9.22337204e18)
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  v438 = &type metadata for Int64;
  *&v437 = v274;
  sub_10001DCF4(&v437, v436);
  v279 = swift_isUniquelyReferenced_nonNull_native();
  v429[0] = v439;
  sub_10002D5BC(v436, v273, *(&v273 + 1), v279);

  v439 = v429[0];
LABEL_84:
  v280 = v366;
  sub_100027A50(v412, v366);
  if ((v425)(v280, 1, v192) != 1)
  {
    v423(v365, v280, v192);
    strcpy(&v437, "dataTransfer");
    BYTE13(v437) = 0;
    HIWORD(v437) = -5120;
    v335._countAndFlagsBits = 0x6E6F697461727544;
    v335._object = 0xE800000000000000;
    String.append(_:)(v335);
    v336 = v437;
    Date.timeIntervalSince(_:)();
    if (v337 >= 0.0)
    {
      if ((*&v337 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_202:
        __break(1u);
        goto LABEL_203;
      }

      v265 = v403;
      if (v337 <= -9.22337204e18)
      {
LABEL_204:
        __break(1u);
        goto LABEL_205;
      }

      if (v337 >= 9.22337204e18)
      {
LABEL_206:
        __break(1u);
        goto LABEL_207;
      }

      v438 = &type metadata for Int64;
      *&v437 = v337;
      sub_10001DCF4(&v437, v436);
      v357 = swift_isUniquelyReferenced_nonNull_native();
      v429[0] = v439;
      sub_10002D5BC(v436, v336, *(&v336 + 1), v357);

      v439 = v429[0];
    }

    else
    {
      sub_10003DB54(v336, *(&v336 + 1), &v437);

      sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
      v265 = v403;
    }

    (v420)(v365, v192);
    if (!v275)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  sub_10001A7A0(v280, &qword_10041EE08, &qword_1002B9788);
  if (v275)
  {
LABEL_86:
    strcpy(&v437, "dataTransfer");
    BYTE13(v437) = 0;
    HIWORD(v437) = -5120;
    v281._countAndFlagsBits = 0x4374706D65747441;
    v281._object = 0xEC000000746E756FLL;
    String.append(_:)(v281);
    v282 = v437;
    v438 = &type metadata for UInt64;
    *&v437 = v275;
    sub_10001DCF4(&v437, v436);
    v283 = swift_isUniquelyReferenced_nonNull_native();
    v429[0] = v439;
    sub_10002D5BC(v436, v282, *(&v282 + 1), v283);

    v439 = v429[0];
  }

LABEL_87:
  v284 = v420;
  (v420)(v271, v192);
  v284(v265, v192);
LABEL_88:
  sub_10001A7A0(v412, &qword_10041EE08, &qword_1002B9788);
  sub_10001A7A0(v413, &qword_10041EE08, &qword_1002B9788);
  v285 = v386;
  sub_100027A50(v193 + v418, v386);
  v286 = (v425)(v285, 1, v192);
  sub_10001A7A0(v285, &qword_10041EE08, &qword_1002B9788);
  if (v286 != 1)
  {
    v287 = *(v193 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__totalFileCount);
    v438 = &type metadata for UInt64;
    *&v437 = v287;
    sub_10001DCF4(&v437, v436);
    v288 = swift_isUniquelyReferenced_nonNull_native();
    v429[0] = v439;
    sub_10002D5BC(v436, 0x6C69466C61746F74, 0xEE00746E756F4365, v288);
    v439 = v429[0];
    v289 = *(v193 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__totalByteCount);
    v438 = &type metadata for UInt64;
    *&v437 = v289;
    sub_10001DCF4(&v437, v436);
    v290 = swift_isUniquelyReferenced_nonNull_native();
    v429[0] = v439;
    sub_10002D5BC(v436, 0x7479426C61746F74, 0xEE00746E756F4365, v290);
    v439 = v429[0];
    v291 = *(v193 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__filesTransferred);
    v438 = &type metadata for UInt64;
    *&v437 = v291;
    sub_10001DCF4(&v437, v436);
    v292 = swift_isUniquelyReferenced_nonNull_native();
    v429[0] = v439;
    sub_10002D5BC(v436, 0xD000000000000010, 0x80000001002BC470, v292);
    v439 = v429[0];
    v293 = *(v193 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__bytesTransferred);
    v438 = &type metadata for UInt64;
    *&v437 = v293;
    sub_10001DCF4(&v437, v436);
    v294 = swift_isUniquelyReferenced_nonNull_native();
    v429[0] = v439;
    sub_10002D5BC(v436, 0xD000000000000010, 0x80000001002BC490, v294);
    v439 = v429[0];
  }

  v295 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreStart;
  swift_beginAccess();
  v296 = v407;
  sub_100027A50(v193 + v295, v407);
  v297 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreEnd;
  swift_beginAccess();
  sub_100027A50(v193 + v297, v411);
  v298 = *(v193 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__restoreAttemptCount);
  v299 = v387;
  sub_100027A50(v193 + v421, v387);
  v300 = v425;
  if ((v425)(v299, 1, v192) == 1)
  {
    goto LABEL_217;
  }

  v301 = v385;
  v302 = v423;
  (v423)();
  v303 = v296;
  v304 = v384;
  sub_100027A50(v303, v384);
  if (v300(v304, 1, v192) == 1)
  {
    (v420)(v301, v192);
    sub_10001A7A0(v304, &qword_10041EE08, &qword_1002B9788);
    v305 = v405;
    v306 = v421;
    v307 = v419;
    goto LABEL_105;
  }

  v302(v402, v304, v192);
  strcpy(&v437, "restore");
  *(&v437 + 1) = 0xE700000000000000;
  v308._countAndFlagsBits = 0x7472617453;
  v308._object = 0xE500000000000000;
  String.append(_:)(v308);
  v309 = v437;
  Date.timeIntervalSince(_:)();
  v311 = v301;
  if (v310 < 0.0)
  {
    sub_10003DB54(v309, *(&v309 + 1), &v437);

    sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
    v306 = v421;
    v192 = v404;
    v307 = v419;
    goto LABEL_101;
  }

  v306 = v421;
  v307 = v419;
  if ((*&v310 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_184;
  }

  v192 = v404;
  if (v310 <= -9.22337204e18)
  {
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  if (v310 >= 9.22337204e18)
  {
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v438 = &type metadata for Int64;
  *&v437 = v310;
  sub_10001DCF4(&v437, v436);
  v315 = swift_isUniquelyReferenced_nonNull_native();
  v428[0] = v439;
  sub_10002D5BC(v436, v309, *(&v309 + 1), v315);

  v439 = v428[0];
LABEL_101:
  v316 = v364;
  sub_100027A50(v411, v364);
  if ((v425)(v316, 1, v192) != 1)
  {
    v423(v363, v316, v192);
    strcpy(&v437, "restore");
    *(&v437 + 1) = 0xE700000000000000;
    v347._countAndFlagsBits = 0x6E6F697461727544;
    v347._object = 0xE800000000000000;
    String.append(_:)(v347);
    v348 = v437;
    Date.timeIntervalSince(_:)();
    if (v349 >= 0.0)
    {
      if ((*&v349 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_205:
        __break(1u);
        goto LABEL_206;
      }

      if (v349 <= -9.22337204e18)
      {
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
        goto LABEL_209;
      }

      if (v349 >= 9.22337204e18)
      {
LABEL_209:
        __break(1u);
        goto LABEL_210;
      }

      v438 = &type metadata for Int64;
      *&v437 = v349;
      sub_10001DCF4(&v437, v436);
      v358 = swift_isUniquelyReferenced_nonNull_native();
      v428[0] = v439;
      sub_10002D5BC(v436, v348, *(&v348 + 1), v358);

      v439 = v428[0];
    }

    else
    {
      sub_10003DB54(v348, *(&v348 + 1), &v437);

      sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
    }

    (v420)(v363, v192);
    if (!v298)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  sub_10001A7A0(v316, &qword_10041EE08, &qword_1002B9788);
  if (v298)
  {
LABEL_103:
    strcpy(&v437, "restore");
    *(&v437 + 1) = 0xE700000000000000;
    v317._countAndFlagsBits = 0x4374706D65747441;
    v317._object = 0xEC000000746E756FLL;
    String.append(_:)(v317);
    v318 = v437;
    v438 = &type metadata for UInt64;
    *&v437 = v298;
    sub_10001DCF4(&v437, v436);
    v319 = swift_isUniquelyReferenced_nonNull_native();
    v428[0] = v439;
    sub_10002D5BC(v436, v318, *(&v318 + 1), v319);

    v439 = v428[0];
  }

LABEL_104:
  v320 = v420;
  (v420)(v402, v192);
  v320(v311, v192);
  v305 = v405;
LABEL_105:
  sub_10001A7A0(v411, &qword_10041EE08, &qword_1002B9788);
  sub_10001A7A0(v407, &qword_10041EE08, &qword_1002B9788);
  v321 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneStart;
  swift_beginAccess();
  sub_100027A50(v307 + v321, v305);
  v322 = OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneEnd;
  swift_beginAccess();
  sub_100027A50(v307 + v322, v410);
  v421 = *(v307 + OBJC_IVAR____TtC7backupd29MBTargetDeviceTransferSummary__doneAttemptCount);
  v323 = v383;
  sub_100027A50(v307 + v306, v383);
  v324 = v192;
  v325 = v425;
  if ((v425)(v323, 1, v192) != 1)
  {
    v326 = v382;
    v327 = v423;
    v423(v382, v323, v324);
    v328 = v381;
    sub_100027A50(v305, v381);
    if (v325(v328, 1, v324) == 1)
    {
      v329 = v420;
      (v420)(v326, v324);
      sub_10001A7A0(v328, &qword_10041EE08, &qword_1002B9788);
      v330 = v324;
      v331 = v329;
LABEL_120:
      sub_10001A7A0(v410, &qword_10041EE08, &qword_1002B9788);
      sub_10001A7A0(v305, &qword_10041EE08, &qword_1002B9788);
      v344 = objc_opt_self();
      v345 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v344 submitEventName:v345 event:isa];

      v331(v360, v330);
      return;
    }

    v327(v401, v328, v324);
    *&v437 = 1701736292;
    *(&v437 + 1) = 0xE400000000000000;
    v332._countAndFlagsBits = 0x7472617453;
    v332._object = 0xE500000000000000;
    String.append(_:)(v332);
    v333 = v437;
    Date.timeIntervalSince(_:)();
    v330 = v324;
    if (v334 < 0.0)
    {
      sub_10003DB54(v333, *(&v333 + 1), &v437);

      sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
      goto LABEL_116;
    }

    if ((*&v334 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v334 > -9.22337204e18)
      {
        if (v334 < 9.22337204e18)
        {
          v438 = &type metadata for Int64;
          *&v437 = v334;
          sub_10001DCF4(&v437, v436);
          v338 = swift_isUniquelyReferenced_nonNull_native();
          v427 = v439;
          sub_10002D5BC(v436, v333, *(&v333 + 1), v338);

          v439 = v427;
LABEL_116:
          v339 = v362;
          sub_100027A50(v410, v362);
          if ((v425)(v339, 1, v324) == 1)
          {
            sub_10001A7A0(v339, &qword_10041EE08, &qword_1002B9788);
            v331 = v420;
            v340 = v421;
            if (!v421)
            {
LABEL_119:
              v331(v401, v330);
              v331(v326, v330);
              v305 = v405;
              goto LABEL_120;
            }

LABEL_118:
            *&v437 = 1701736292;
            *(&v437 + 1) = 0xE400000000000000;
            v341._countAndFlagsBits = 0x4374706D65747441;
            v341._object = 0xEC000000746E756FLL;
            String.append(_:)(v341);
            v342 = v437;
            v438 = &type metadata for UInt64;
            *&v437 = v340;
            sub_10001DCF4(&v437, v436);
            v343 = swift_isUniquelyReferenced_nonNull_native();
            v427 = v439;
            sub_10002D5BC(v436, v342, *(&v342 + 1), v343);

            v439 = v427;
            goto LABEL_119;
          }

          v327(v361, v339, v324);
          *&v437 = 1701736292;
          *(&v437 + 1) = 0xE400000000000000;
          v350._countAndFlagsBits = 0x6E6F697461727544;
          v350._object = 0xE800000000000000;
          String.append(_:)(v350);
          v351 = v437;
          Date.timeIntervalSince(_:)();
          if (v352 < 0.0)
          {
            sub_10003DB54(v351, *(&v351 + 1), &v437);

            sub_10001A7A0(&v437, &qword_10041EE10, &unk_1002B9790);
            v331 = v420;
            v340 = v421;
            (v420)(v361, v330);
            goto LABEL_165;
          }

          v331 = v420;
          if ((*&v352 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v340 = v421;
            if (v352 > -9.22337204e18)
            {
              if (v352 < 9.22337204e18)
              {
                v438 = &type metadata for Int64;
                *&v437 = v352;
                sub_10001DCF4(&v437, v436);
                v359 = swift_isUniquelyReferenced_nonNull_native();
                v427 = v439;
                sub_10002D5BC(v436, v351, *(&v351 + 1), v359);

                v439 = v427;
                v331(v361, v330);
LABEL_165:
                if (!v340)
                {
                  goto LABEL_119;
                }

                goto LABEL_118;
              }

              goto LABEL_211;
            }

LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
            goto LABEL_213;
          }

          goto LABEL_208;
        }

        goto LABEL_190;
      }

LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
      goto LABEL_191;
    }

    goto LABEL_187;
  }

LABEL_218:
  __break(1u);
}

uint64_t type metadata accessor for MBTargetDeviceTransferSummary(uint64_t a1)
{
  result = qword_10041EDF0;
  if (!qword_10041EDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100027924(uint64_t a1)
{
  sub_1000279F8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000279F8(uint64_t a1)
{
  if (!qword_10041EE00)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10041EE00);
    }
  }
}

uint64_t sub_100027A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000042B4(&qword_10041EE08, &qword_1002B9788);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027B48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100027BA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_100027C28(unint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v8 = __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - v12;
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  if (!(a1 >> 62))
  {
    v22 = swift_projectBox();
    (*(v3 + 16))(v15, v22, v2);
    v20 = FilePath.string.getter();
    (*(v3 + 8))(v15, v2);
    return v20;
  }

  if (a1 >> 62 == 1)
  {
    v16 = sub_1000042B4(&qword_10041E400, &qword_1002B9870);
    v17 = swift_projectBox();
    v18 = *(v16 + 48);
    v27 = *(v16 + 64);
    v19 = *(v3 + 16);
    v19(v15, v17 + v18, v2);
    v19(v13, v17 + v27, v2);
    v19(v6, v15, v2);
    FilePath.string.getter();
    FilePath.appending(_:)();
    FilePath.lexicallyNormalized()();
    v20 = FilePath.string.getter();
    v21 = *(v3 + 8);
    v21(v10, v2);
    v21(v13, v2);
    v21(v15, v2);
    return v20;
  }

  v24 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);

  v25 = sub_100027C28(v24);

  return v25;
}

unint64_t sub_100027EFC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v33 - v12;
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  if (a3 >> 62)
  {
    if (a3 >> 62 == 1)
    {
      v16 = sub_1000042B4(&qword_10041E400, &qword_1002B9870);
      v17 = swift_projectBox();
      v34 = *v17;
      v35 = a2;
      v18 = *(v16 + 48);
      v19 = *(v16 + 64);
      v37 = a1;
      v20 = *(v7 + 16);
      v20(v15, v17 + v18, v6);
      v20(v13, v17 + v19, v6);
      v36 = swift_allocBox();
      v21 = *(v16 + 48);
      v22 = v34;
      *v23 = v34;
      v20(&v23[v21], v15, v6);
      v20(v10, v13, v6);

      v24 = v22;
      FilePath.appending(_:)();
      v25 = *(v7 + 8);
      v25(v13, v6);
      v25(v15, v6);
      return v36 | 0x4000000000000000;
    }

    else
    {
      v30 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      sub_10000672C((a3 & 0x3FFFFFFFFFFFFFFFLL) + 16, v38);
      v31 = swift_allocObject();
      sub_10000672C(v38, v31 + 16);

      v32 = sub_100027EFC(a1, a2, v30);

      sub_100004394(v38);
      *(v31 + 56) = v32;
      return v31 | 0x8000000000000000;
    }
  }

  else
  {
    sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
    v27 = swift_projectBox();
    v28 = *(v7 + 16);
    v28(v15, v27, v6);
    v29 = swift_allocBox();
    v28(v13, v15, v6);

    FilePath.appending(_:)();
    (*(v7 + 8))(v15, v6);
    return v29;
  }
}

uint64_t sub_100028240(unint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v30 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v30 - v11;
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v15 = sub_1000042B4(&qword_10041E400, &qword_1002B9870);
      v16 = swift_projectBox();
      v30 = *v16;
      v17 = *(v15 + 64);
      v18 = *(v3 + 16);
      v18(v9, v16 + *(v15 + 48), v2);
      v18(v6, v16 + v17, v2);
      v19 = v30;
      if (FilePath.length.getter())
      {
        v30 = swift_allocBox();
        v20 = *(v15 + 48);
        *v21 = v19;
        v18(&v21[v20], v9, v2);
        v18(v14, v6, v2);
        FilePath.removingLastComponent()();
        v22 = *(v3 + 8);
        v22(v6, v2);
        v22(v9, v2);
        return v30 | 0x4000000000000000;
      }

      else
      {

        v28 = *(v3 + 8);
        v28(v6, v2);
        v28(v9, v2);
        return 0xF000000000000007;
      }
    }

    else
    {
      v26 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      sub_10000672C((a1 & 0x3FFFFFFFFFFFFFFFLL) + 16, v31);

      v23 = sub_100028240(v26);

      if ((~v23 & 0xF000000000000007) != 0)
      {
        v27 = swift_allocObject();
        sub_100006844(v31, v27 + 16);
        *(v27 + 56) = v23;
        return v27 | 0x8000000000000000;
      }

      else
      {
        sub_100004394(v31);
      }
    }
  }

  else
  {
    sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
    v24 = swift_projectBox();
    v25 = *(v3 + 16);
    v25(v14, v24, v2);
    v23 = swift_allocBox();
    v25(v12, v14, v2);
    FilePath.removingLastComponent()();
    (*(v3 + 8))(v14, v2);
  }

  return v23;
}

uint64_t sub_1000285C4(unint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v29 - v7;
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v9 = sub_1000042B4(&qword_10041E400, &qword_1002B9870);
      v10 = swift_projectBox();
      v11 = *v10;
      v12 = *(v9 + 48);
      v13 = *(v9 + 64);
      v14 = *(v3 + 16);
      v14(v8, v10 + v12, v2);
      v14(v6, v10 + v13, v2);
      v30 = 0;
      v31 = 0xE000000000000000;
      v15 = v11;
      _StringGuts.grow(_:)(20);

      v30 = 0x2068746150424D3CLL;
      v31 = 0xEB000000003A6466;
      v29[3] = [v15 fileDescriptor];
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v17._countAndFlagsBits = 32;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      sub_10002890C();
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 47;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      v21._countAndFlagsBits = 62;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);

      v22 = v30;
      v23 = *(v3 + 8);
      v23(v6, v2);
      v23(v8, v2);
    }

    else
    {
      v27 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);

      v22 = sub_1000285C4(v27);
    }
  }

  else
  {
    v24 = swift_projectBox();
    (*(v3 + 16))(v8, v24, v2);
    v30 = 0x3A68746150424D3CLL;
    v31 = 0xE800000000000000;
    v25._countAndFlagsBits = FilePath.string.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 62;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v22 = v30;
    (*(v3 + 8))(v8, v2);
  }

  return v22;
}

unint64_t sub_10002890C()
{
  result = qword_10041EE18;
  if (!qword_10041EE18)
  {
    type metadata accessor for FilePath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10041EE18);
  }

  return result;
}

uint64_t sub_100028964()
{
  sub_100004394((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

void sub_1000289A8(char a1)
{
  v4 = OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath;
  v5 = *(v1 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
  if ((~v5 & 0xF000000000000007) == 0)
  {
    _StringGuts.grow(_:)(23);
    _print_unlocked<A, B>(_:_:)();
    v6._object = 0x80000001002BB3C0;
    v6._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v6);
    sub_10003F7B8(0, 0xE000000000000000, 0x203D746F7065643DLL, 0xE800000000000000);

    return;
  }

  if (a1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
    sub_10001135C(v5);
    sub_10002E494(v7);
    sub_1000112FC(v7);
    if (v2)
    {
      return;
    }

    v5 = *(v1 + v4);
  }

  *(v1 + v4) = 0xF000000000000007;
  sub_1000112FC(v5);
}

void *sub_100028AC8(uint64_t a1, _BYTE *a2)
{
  v4 = v2;
  result = sub_10002A444();
  if (!v3)
  {
    v8 = v7;
    v9 = result;

    v10 = *(v4 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
    if ((~v10 & 0xF000000000000007) != 0)
    {

      v11 = sub_100027EFC(v9, v8, v10);

      sub_1000112FC(v10);
      *a2 = sub_100005D30(v11) & 1;
    }

    else
    {

      sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100028BE4(char *a1, uint64_t a2, uint64_t a3)
{
  sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
  v6 = swift_allocBox();

  FilePath.init(_:)();
  v7 = *(v3 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
  if ((~v7 & 0xF000000000000007) != 0)
  {
    v8 = *&a1[OBJC_IVAR____TtC7backupd14MBFetchedAsset_metadata];

    v9 = sub_10002A444();
    if (!v4)
    {
      v13 = v11;
      v14 = v12;
      v17 = sub_100027EFC(v9, v10, v7);

      v15 = sub_100027EFC(v13, v14, v7);

      sub_100005348(448, v15);
      if ([v8 compressionMethod])
      {
        sub_10002B0E0(a1, v6, v17);
      }

      else
      {
        sub_10002AB1C(a1, v6, v17);
      }
    }

    sub_1000112FC(v7);
  }

  else
  {
    sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
    swift_willThrow();
  }
}

_DWORD *sub_100028E80()
{
  sub_1000042B4(&qword_10041EE78, &qword_1002B98C0);
  v0 = swift_allocObject();
  type metadata accessor for MBUnfairLock();
  v1 = swift_allocObject();
  result = swift_slowAlloc();
  *(v1 + 16) = result;
  *result = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = &_swiftEmptyDictionarySingleton;
  off_10041EE20 = v0;
  return result;
}

_BYTE *sub_100028F00(unint64_t a1, char a2, char a3)
{
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath;
  *&v3[OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath] = 0xF000000000000007;
  v3[OBJC_IVAR____TtC7backupd14MBRestoreDepot__requiresCrossVolumeCopy] = a2;
  v3[OBJC_IVAR____TtC7backupd14MBRestoreDepot__checkFileSizesForCASMatch] = a3;
  sub_100005348(448, a1);
  if (v4)
  {

    sub_1000112FC(*&v3[v9]);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = sub_100006180(a1);
    v12 = *&v3[v9];
    *&v3[v9] = v10;
    sub_1000112FC(v12);
    v13 = sub_100027EFC(0xD000000000000010, 0x80000001002BC630, a1);
    *&v3[OBJC_IVAR____TtC7backupd14MBRestoreDepot__assetProcessingRoot] = v13;

    sub_100005348(448, v13);

    v14 = sub_100027EFC(0xD000000000000015, 0x80000001002BC650, a1);
    sub_100005348(448, v14);
    v15 = sub_100027EFC(0xD00000000000001ELL, 0x80000001002BC670, a1);
    sub_100005348(448, v15);
    v16 = sub_100027EFC(0xD000000000000021, 0x80000001002BC690, a1);
    sub_100005348(448, v16);
    v17.receiver = v3;
    v17.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v17, "init");
  }

  return v3;
}

void sub_10002918C(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W4>, void *a5@<X8>)
{
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_10002C438(a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    *a5 = v14;
    v15 = v14;
  }

  else
  {
    v16 = sub_100029460(a2, a3);
    if (!v5)
    {
      v17 = v16;
      v18 = objc_allocWithZone(type metadata accessor for MBRestoreDepot());

      v19 = sub_100028F00(v17, a4 & 1, 0);
      _StringGuts.grow(_:)(38);

      v20 = [v19 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24._countAndFlagsBits = v21;
      v24._object = v23;
      String.append(_:)(v24);

      v25._countAndFlagsBits = 0x6C6F7620726F6620;
      v25._object = 0xEC00000020656D75;
      String.append(_:)(v25);
      v26._countAndFlagsBits = a2;
      v26._object = a3;
      String.append(_:)(v26);
      sub_10003F2C0(0xD000000000000016, 0x80000001002BC5F0, 0x203D746F7065643DLL, 0xE800000000000000);

      v27 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *a1;
      sub_10002D720(v27, a2, a3, isUniquelyReferenced_nonNull_native, &qword_10041EE70, &qword_1002B98B8);

      *a1 = v29;
      *a5 = v27;
    }
  }
}

uint64_t sub_100029460(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = [v2 restoreDepotRootsByVolume];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v7 + 16) && (sub_10002C438(a1, a2), (v8 & 1) != 0))
  {

    sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
    v9 = swift_allocBox();
    FilePath.init(_:)();
  }

  else
  {

    _StringGuts.grow(_:)(78);
    v10._countAndFlagsBits = 0xD000000000000036;
    v10._object = 0x80000001002BC6F0;
    String.append(_:)(v10);
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    String.append(_:)(v11);
    v12._object = 0x80000001002BC730;
    v12._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v12);
    v13 = [v3 restoreDepotRootsByVolume];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = Dictionary.description.getter();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v9 = 0xE000000000000000;
    sub_10003F97C(4, 0, 0xE000000000000000, 0x203D746F7065643DLL, 0xE800000000000000);

    swift_willThrow();
  }

  return v9;
}

id sub_100029784()
{
  ObjectType = swift_getObjectType();
  if ((~*&v0[OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath] & 0xF000000000000007) != 0)
  {
    v2 = v0;
    _StringGuts.grow(_:)(35);
    v5 = 0x203D746F7065643DLL;
    v6 = 0xE800000000000000;
    _print_unlocked<A, B>(_:_:)();
    v3._object = 0x80000001002BB5E0;
    v3._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v3);
    sub_10003F7B8(0, 0xE000000000000000, 0x203D746F7065643DLL, 0xE800000000000000);
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc", v5, v6);
}

double sub_1000299B0(void *a1)
{
  v1 = [a1 restoreDepotRootsByVolume];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_10041DEE8 != -1)
  {
    swift_once();
  }

  v3 = off_10041EE20;
  v4 = *(off_10041EE20 + 2);
  os_unfair_lock_lock(*(v4 + 16));
  swift_beginAccess();
  sub_100029AA4(v3 + 3, v2);
  swift_endAccess();
  os_unfair_lock_unlock(*(v4 + 16));

  return result;
}

uint64_t sub_100029AA4(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v55 = v8;
  v56 = v4;
  v57 = a1;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (v10 << 10) | (16 * v11);
      v13 = *a1;
      if (!*(*a1 + 16))
      {
        break;
      }

      v14 = (*(v2 + 48) + v12);
      v15 = *v14;
      v16 = v14[1];

      v17 = sub_10002C438(v15, v16);
      if ((v18 & 1) == 0)
      {

        goto LABEL_22;
      }

      v19 = v17;

      v20 = *(*(v13 + 56) + 8 * v19);
      v21 = sub_10002C438(v15, v16);
      v23 = v22;

      if (v23)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *v57;
        v58 = *v57;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10002DF90(&qword_10041EE70, &qword_1002B98B8);
          v25 = v58;
        }

        sub_10003E0F8(v21, v25, v26);
        *v57 = v25;
      }

      v27 = OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath;
      v28 = *&v20[OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath];
      if ((~v28 & 0xF000000000000007) == 0)
      {
        v58 = 0;
        v59 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);
        _print_unlocked<A, B>(_:_:)();
        v29._countAndFlagsBits = 0xD000000000000015;
        v29._object = 0x80000001002BB3C0;
        String.append(_:)(v29);
        v30 = v58;
        v31 = v59;
        if (qword_10041DF00 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_10000685C(v32, qword_100421CD0);

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v35 = 136315394;
          *(v35 + 4) = sub_10003FE34(0x203D746F7065643DLL, 0xE800000000000000, &v58);
          *(v35 + 12) = 2080;
          *(v35 + 14) = sub_10003FE34(v30, v31, &v58);
          _os_log_impl(&_mh_execute_header, v33, v34, "%s%s", v35, 0x16u);
          swift_arrayDestroy();
        }

LABEL_24:
        v9 = v10;
        goto LABEL_25;
      }

      v41 = v2;
      v42 = objc_allocWithZone(NSFileManager);

      v43 = [v42 init];
      sub_100027C28(v28);
      v44 = String._bridgeToObjectiveC()();

      v58 = 0;
      v45 = [v43 mb_moveToTmpDirThenRemoveItemAtPath:v44 error:&v58];

      if (!v45)
      {
        v52 = v58;
        v53 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v58 = 0;
        v59 = 0xE000000000000000;
        _StringGuts.grow(_:)(32);

        v58 = 0xD00000000000001ELL;
        v59 = 0x80000001002BC5D0;
        v54._countAndFlagsBits = sub_1000285C4(v28);
        String.append(_:)(v54);

        sub_10003F2D8(v53, v28, v58, v59, 0x203D746F7065643DLL, 0xE800000000000000);

        swift_willThrow();

        return sub_1000112FC(v28);
      }

      v46 = v58;
      sub_1000112FC(v28);
      v47 = *&v20[v27];
      *&v20[v27] = 0xF000000000000007;
      sub_1000112FC(v47);

      v9 = v10;
      v2 = v41;
LABEL_25:
      v4 = v56;
      a1 = v57;
      v8 = v55;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_22:
    sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
    v36 = swift_allocBox();
    FilePath.init(_:)();
    v37 = [objc_allocWithZone(NSFileManager) init];
    sub_100027C28(v36);
    v38 = String._bridgeToObjectiveC()();

    v58 = 0;
    v39 = [v37 mb_moveToTmpDirThenRemoveItemAtPath:v38 error:&v58];

    if (!v39)
    {
      v49 = v58;
      v50 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v58 = 0;
      v59 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      v58 = 0xD00000000000001ELL;
      v59 = 0x80000001002BC5D0;
      v51._countAndFlagsBits = sub_1000285C4(v36);
      String.append(_:)(v51);

      sub_10003F2D8(v50, v36, v58, v59, 0x203D746F7065643DLL, 0xE800000000000000);

      swift_willThrow();
    }

    v40 = v58;

    goto LABEL_24;
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10002A2B0()
{
  _StringGuts.grow(_:)(26);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  swift_getObjectType();
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 7876640;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 0x3A79706F63203ALL;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  if (*(v0 + OBJC_IVAR____TtC7backupd14MBRestoreDepot__requiresCrossVolumeCopy))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC7backupd14MBRestoreDepot__requiresCrossVolumeCopy))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._countAndFlagsBits = 0x3A746F6F7220;
  v8._object = 0xE600000000000000;
  String.append(_:)(v8);
  sub_10001135C(*(v0 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath));
  sub_1000042B4(&qword_10041EEB0, &qword_1002B98D8);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0;
}

void *sub_10002A444()
{
  v1 = [v0 assetSignature];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = objc_allocWithZone(NSData);
    sub_10002E614(v3, v5);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = [v6 initWithData:isa];

    sub_100009B84(v3, v5);
    v9 = sub_10002C008(v8);

    sub_100009B84(v3, v5);
  }

  else
  {
    _StringGuts.grow(_:)(34);

    v10 = [v0 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._object = 0x80000001002BC750;
    v15._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v15);
    v9 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();

    [v9 errorWithCode:1 description:v16];

    swift_willThrow();
  }

  return v9;
}

uint64_t sub_10002A660(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 domain];
  v5 = [v4 name];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_1000042B4(&unk_10041E830, &qword_1002B9500);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1002B9640;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_10002E56C();
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  v11 = v18;
  *(v9 + 96) = &type metadata for UInt64;
  *(v9 + 104) = &protocol witness table for UInt64;
  *(v9 + 64) = v10;
  *(v9 + 72) = v11;
  sub_10002E5C0();
  v12 = StringProtocol.appendingFormat<A>(_:_:)();
  v14 = v13;

  v15 = *(v2 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
  if ((~v15 & 0xF000000000000007) != 0)
  {

    v12 = sub_100027EFC(v12, v14, v15);
    sub_1000112FC(v15);
  }

  else
  {

    sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
    swift_willThrow();
  }

  return v12;
}

id sub_10002A85C(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7backupd14MBRestoreDepot___depotRootPath);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    sub_100011314(0, &qword_10041E7E0, &off_1003B9A08);

    v7 = sub_100027C28(v3);
    v9 = v8;
    sub_1000112FC(v3);
    _StringGuts.grow(_:)(18);

    v10._countAndFlagsBits = a1;
    v10._object = a2;
    String.append(_:)(v10);
    return sub_10000A778(v7, v9, 0xD000000000000010, 0x80000001002BAE10);
  }

  else
  {
    sub_10003F97C(4, 0xD000000000000013, 0x80000001002BADF0, 0x203D746F7065643DLL, 0xE800000000000000);
    return swift_willThrow();
  }
}

uint64_t sub_10002AB1C(char *a1, unint64_t a2, unint64_t a3)
{
  if ((*(v3 + OBJC_IVAR____TtC7backupd14MBRestoreDepot__requiresCrossVolumeCopy) & 1) == 0)
  {
    return sub_10002B814(a1, a2, a3);
  }

  result = sub_10002BD4C(a1, a3, a2);
  if (!v4)
  {
    if (result)
    {
      return sub_100005564(a2);
    }

    else
    {
      sub_100027C28(*(v3 + OBJC_IVAR____TtC7backupd14MBRestoreDepot__assetProcessingRoot));
      v9 = String._bridgeToObjectiveC()();

      v10 = MBCreateTemporaryFilePathIn(v9);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
      v11 = swift_allocBox();
      FilePath.init(_:)();
      v12 = objc_opt_self();
      sub_100027C28(a2);
      v13 = String._bridgeToObjectiveC()();

      sub_100027C28(v11);
      v14 = String._bridgeToObjectiveC()();

      v29 = 0;
      v15 = [v12 crossVolumeCopyFromSource:v13 toDestination:v14 shouldDeleteSource:0 error:&v29];

      if (v15)
      {
        v16 = v29;
        sub_10002B814(a1, v11, a3);
        sub_100005564(a2);
      }

      else
      {
        v17 = v29;
        v18 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v29 = 0;
        v30 = 0xE000000000000000;
        _StringGuts.grow(_:)(58);
        v19._countAndFlagsBits = 0xD000000000000015;
        v19._object = 0x80000001002BC7F0;
        String.append(_:)(v19);
        v20 = [a1 description];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24._countAndFlagsBits = v21;
        v24._object = v23;
        String.append(_:)(v24);

        v25._countAndFlagsBits = 0x206D6F726620;
        v25._object = 0xE600000000000000;
        String.append(_:)(v25);
        v26._countAndFlagsBits = sub_1000285C4(a2);
        String.append(_:)(v26);

        v27._countAndFlagsBits = 0xD000000000000019;
        v27._object = 0x80000001002BC810;
        String.append(_:)(v27);
        v28._countAndFlagsBits = sub_1000285C4(v11);
        String.append(_:)(v28);

        sub_10003F2D8(v18, a2, v29, v30, 0x203D746F7065643DLL, 0xE800000000000000);

        swift_willThrow();
      }
    }
  }

  return result;
}

void sub_10002B0E0(char *a1, unint64_t a2, unint64_t a3)
{
  v8 = sub_10002BD4C(a1, a3, a2);
  if (!v4)
  {
    if (v8)
    {
      sub_100005564(a2);
    }

    else
    {
      sub_100027C28(*(v3 + OBJC_IVAR____TtC7backupd14MBRestoreDepot__assetProcessingRoot));
      v9 = String._bridgeToObjectiveC()();

      v10 = MBCreateTemporaryFilePathIn(v9);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000042B4(&unk_10041F270, &qword_1002B8FB0);
      v11 = swift_allocBox();
      FilePath.init(_:)();
      v12 = dispatch_group_create();
      v13 = [objc_opt_self() decodingTaskWithEncodingMethod:1];
      if (v13)
      {
        v14 = v13;
        sub_100027C28(a2);
        v15 = String._bridgeToObjectiveC()();

        [v14 setSourcePath:v15];

        sub_100027C28(v11);
        v16 = String._bridgeToObjectiveC()();

        [v14 setDestinationPath:v16];

        [v14 setCompressionMethod:{objc_msgSend(*&a1[OBJC_IVAR____TtC7backupd14MBFetchedAsset_metadata], "compressionMethod")}];
        [v14 setProtectionClass:a1[OBJC_IVAR____TtC7backupd14MBFetchedAsset_protectionClass]];
        [v14 setGroup:v12];
        [v14 start];
        OS_dispatch_group.wait()();
        v17 = [v14 error];
        if (v17)
        {
          v18 = v17;
          v19 = objc_opt_self();
          v20 = _convertErrorToNSError(_:)();
          v21 = [v19 isError:v20 withCode:4];

          if (v21 && (v22 = sub_100005D30(a2), (v22 & 1) == 0))
          {
            sub_100027C28(a2);
            v26 = String._bridgeToObjectiveC()();

            v27 = String._bridgeToObjectiveC()();
            [v19 errorWithCode:302 path:v26 description:v27];
          }

          else
          {
            _StringGuts.grow(_:)(29);

            v23._countAndFlagsBits = sub_1000285C4(a2);
            String.append(_:)(v23);

            v24._countAndFlagsBits = 544175136;
            v24._object = 0xE400000000000000;
            String.append(_:)(v24);
            v25._countAndFlagsBits = sub_1000285C4(v11);
            String.append(_:)(v25);

            sub_10003F2D8(v18, a2, 0xD000000000000015, 0x80000001002BC9D0, 0x203D746F7065643DLL, 0xE800000000000000);
          }

          swift_willThrow();
        }

        else
        {
          sub_10002B814(a1, v11, a3);
          sub_100005564(a2);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_10002B814(char *a1, unint64_t a2, unint64_t a3)
{
  _StringGuts.grow(_:)(51);
  v7._countAndFlagsBits = 0xD000000000000017;
  v7._object = 0x80000001002BC900;
  String.append(_:)(v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x206D6F72662029;
  v9._object = 0xE700000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = sub_1000285C4(a2);
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x6564206F746E6920;
  v11._object = 0xEF20746120746F70;
  String.append(_:)(v11);
  v12._countAndFlagsBits = sub_1000285C4(a3);
  String.append(_:)(v12);

  sub_10003F2C0(0, 0xE000000000000000, 0x203D746F7065643DLL, 0xE800000000000000);

  result = sub_100004CD8(a3, a2);
  if (v3)
  {
    swift_getErrorValue();
    v14 = sub_100041E2C(v29, v30);
    v15 = v14;
    if (v14 != 17 && v14 != 2)
    {
      goto LABEL_9;
    }

    if (sub_10002BD4C(a1, a3, a2))
    {
      _StringGuts.grow(_:)(31);

      v16 = [a1 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20._countAndFlagsBits = v17;
      v20._object = v19;
      String.append(_:)(v20);

      v21._countAndFlagsBits = 0xD000000000000015;
      v21._object = 0x80000001002BC970;
      String.append(_:)(v21);
      v22._countAndFlagsBits = sub_1000285C4(a3);
      String.append(_:)(v22);

      sub_10003F2C0(0x207465737341, 0xE600000000000000, 0x203D746F7065643DLL, 0xE800000000000000);

      sub_100005564(a2);
    }

    if (v15 == 2 && (sub_100005D30(a2) & 1) == 0)
    {
      v26 = objc_opt_self();
      sub_100027C28(a2);
      v27 = String._bridgeToObjectiveC()();

      v28 = String._bridgeToObjectiveC()();
      [v26 errorWithCode:302 path:v27 description:v28];
    }

    else
    {
LABEL_9:
      _StringGuts.grow(_:)(38);

      v23._countAndFlagsBits = sub_1000285C4(a2);
      String.append(_:)(v23);

      v24._object = 0x80000001002BC920;
      v24._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v24);
      v25._countAndFlagsBits = sub_1000285C4(a3);
      String.append(_:)(v25);

      sub_10003F2D8(v3, a2, 0x742064656C696146, 0xEF2065766F6D206FLL, 0x203D746F7065643DLL, 0xE800000000000000);
    }

    swift_willThrow();
  }

  return result;
}

uint64_t sub_10002BD4C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v8 = sub_100005D30(a2);
  if (!v4 && (v8 & 1) != 0 && *(v3 + OBJC_IVAR____TtC7backupd14MBRestoreDepot__checkFileSizesForCASMatch) == 1)
  {
    v9 = v8;

    sub_1000120FC(a2, v15);

    sub_1000120FC(a3, v17);
    if ([*(a1 + OBJC_IVAR____TtC7backupd14MBFetchedAsset_metadata) assetType] == 1)
    {
      v8 = v9;
      if (v16 != v18)
      {
        _StringGuts.grow(_:)(69);
        v11._countAndFlagsBits = 0x676E696D6F636E49;
        v11._object = 0xEF20746573736120;
        String.append(_:)(v11);
        v12._countAndFlagsBits = sub_1000285C4(a3);
        String.append(_:)(v12);

        v13._object = 0x80000001002BC8C0;
        v13._countAndFlagsBits = 0xD000000000000032;
        String.append(_:)(v13);
        v14._countAndFlagsBits = sub_1000285C4(a2);
        String.append(_:)(v14);

        sub_10003FB68(1, a3, 0, 0xE000000000000000, 0x203D746F7065643DLL, 0xE800000000000000);

        swift_willThrow();
        v8 = v9;
      }
    }

    else
    {
      v8 = v9;
    }
  }

  return v8 & 1;
}

uint64_t MBAssetType.description.getter(uint64_t a1)
{
  v1 = MBStringForAssetType(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10002BF94()
{
  v1 = MBStringForAssetType(*v0);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10002C008(void *a1)
{
  v2 = [a1 mb_base64EncodedFileSystemPathString];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (String.count.getter() <= 2)
  {
    _StringGuts.grow(_:)(60);
    v9._countAndFlagsBits = 0xD00000000000001ALL;
    v9._object = 0x80000001002BC770;
    String.append(_:)(v9);
    v10._countAndFlagsBits = v3;
    v10._object = v5;
    String.append(_:)(v10);

    v11._object = 0x80000001002BC790;
    v11._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v11);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x7463617261686320;
    v13._object = 0xEC00000029737265;
    String.append(_:)(v13);
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();

    [v14 errorWithCode:1 description:v15];

    return swift_willThrow();
  }

  else
  {

    sub_10002E668(2uLL, v3, v5, v6);

    static String._fromSubstring(_:)();

    sub_10002E724(2, v3, v5, v7);

    [v1 compressionMethod];
    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    String.init<A>(_:)();
    String.append<A>(contentsOf:)();

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    v16 = String.init<A>(_:)();
    sub_10002E7C0();
    String.append<A>(contentsOf:)();

    return v16;
  }
}

unint64_t sub_10002C3B4(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100018BEC(&qword_10041F3F0, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10002C4F4(a1, v2);
}

unint64_t sub_10002C438(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10002C6A0(a1, a2, v4);
}

unint64_t sub_10002C4B0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10002C758(a1, v4);
}

unint64_t sub_10002C4F4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100018BEC(&qword_10041E9A0, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10002C6A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10002C758(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100011314(0, &qword_10041EEA8, NSString_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10002C82C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000042B4(&qword_10041EEB8, &unk_1002B98E0);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100018BEC(&qword_10041F3F0, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_10002CBF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000042B4(&qword_10041F3D0, &qword_1002B9B60);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
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
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10002CE9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000042B4(&unk_10041F3C0, &unk_1002B9B50);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10001DCF4(v24, v34);
      }

      else
      {
        sub_10001DD04(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10001DCF4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10002D154(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1000042B4(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
    v16 = result + 64;
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
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
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

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void sub_10002D3F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10002C3B4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10002D9F4();
      goto LABEL_7;
    }

    sub_10002C82C(v17, a3 & 1);
    v23 = sub_10002C3B4(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_10002D8D0(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

void sub_10002D5BC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10002C438(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10002DDD8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10002CE9C(v16, a4 & 1);
    v11 = sub_10002C438(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100004394(v22);

    sub_10001DCF4(a1, v22);
  }

  else
  {
    sub_10002D988(v11, a2, a3, a1, v21);
  }
}

void sub_10002D720(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10002C438(a2, a3);
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
      sub_10002D154(v20, a4 & 1, a5, a6);
      v15 = sub_10002C438(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_10002DF90(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    goto _objc_release_x1;
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

uint64_t sub_10002D8D0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_10002D988(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10001DCF4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

char *sub_10002D9F4()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000042B4(&qword_10041EEB8, &unk_1002B98E0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_10002DC68()
{
  v1 = v0;
  sub_1000042B4(&qword_10041F3D0, &qword_1002B9B60);
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

void sub_10002DDD8()
{
  v1 = v0;
  sub_1000042B4(&unk_10041F3C0, &unk_1002B9B50);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10001DD04(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10001DCF4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

id sub_10002DF90(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000042B4(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
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

        result = v22;
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

  return result;
}