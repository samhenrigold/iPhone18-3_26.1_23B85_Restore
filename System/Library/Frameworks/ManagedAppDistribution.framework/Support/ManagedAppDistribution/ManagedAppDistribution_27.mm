uint64_t sub_1003CDB68()
{
  sub_10000710C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003CDBFC()
{
  v1 = *(v0 + 248);

  sub_1003D470C(v1, type metadata accessor for DDMDeclaration);
  sub_10000710C((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003CDCC0()
{
  sub_10000710C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003CDD5C()
{
  sub_10000710C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003CDDF8(void **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v19 = *a1;
    type metadata accessor for MarketplaceUpdateEntity.Entity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = sub_100213FA0(&qword_10077F9E8, &qword_10077F9E0, &unk_1006A0B60, byte_1006B7490);
    v4 = (a2 + 40);
    while (1)
    {
      v20 = v4;
      v21 = v2;
      v6 = *(v4 - 1);
      v5 = *v4;
      v24 = sub_1001F0C48(&qword_10077F9E0, &unk_1006A0B60);
      v25 = v17;
      LOWORD(aBlock) = 2;
      *(&aBlock + 1) = v6;
      v23 = v5;
      sub_1001F0C48(&qword_10077F9F0, &qword_1006A3E60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10069E680;
      sub_1001DFDBC(&aBlock, inited + 32);
      sub_1001F0C48(&qword_10077F9F8, &unk_1006A0B70);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_10069E680;
      *(v8 + 32) = inited;
      swift_bridgeObjectRetain_n();
      sub_1005AEA0C(v8);
      swift_setDeallocating();
      sub_1000032A8(v8 + 32, &qword_10077FA00, &qword_1006A20C0);
      v27 = 0;
      v9 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:ObjCClassFromMetadata memoryEntityClass:0];
      v10 = sub_10047EDB4();
      [v9 setPredicate:v10];

      v11 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:v19 descriptor:v9];
      v12 = swift_allocObject();
      v12[2] = &v27;
      v12[3] = sub_1003D3B74;
      v12[4] = 0;
      v12[5] = v19;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1002398F8;
      *(v13 + 24) = v12;
      v25 = sub_100302FA4;
      v26 = v13;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v23 = sub_10047E468;
      v24 = &unk_100763920;
      v14 = _Block_copy(&aBlock);
      v15 = v19;

      [v11 enumeratePersistentIDsUsingBlock:v14];

      _Block_release(v14);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        break;
      }

      v16 = v27;

      if (v16)
      {
        [v16 deleteFromDatabase];
      }

      v4 = v20 + 2;
      v2 = v21 - 1;
      if (v21 == 1)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1003CE180(void **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v20 = *a1;
    type metadata accessor for LicenseStorageEntity.Entity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = sub_100213FA0(&qword_1007813C8, &qword_1007813C0, &unk_1006A9110, byte_1006B7490);
    for (i = (a2 + 40); ; i += 2)
    {
      v21 = v2;
      v5 = *(i - 1);
      v6 = *i;
      v24 = sub_1001F0C48(&qword_1007813C0, &unk_1006A9110);
      v25 = v18;
      LOWORD(aBlock) = 1;
      *(&aBlock + 1) = v5;
      v23 = v6;
      sub_1001F0C48(&qword_1007813D0, &unk_1006A3C60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10069E680;
      sub_1001DFDBC(&aBlock, inited + 32);
      sub_1001F0C48(&qword_1007813D8, &unk_1006A9120);
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_10069E680;
      *(v8 + 32) = inited;
      swift_bridgeObjectRetain_n();
      sub_1005AEA84(v8);
      swift_setDeallocating();
      sub_1000032A8(v8 + 32, &qword_10077FA00, &qword_1006A20C0);
      v27 = 0;
      v9 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:ObjCClassFromMetadata memoryEntityClass:0];
      v10 = sub_10047EDB4();
      [v9 setPredicate:v10];

      v11 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:v20 descriptor:v9];
      v12 = swift_allocObject();
      v12[2] = &v27;
      v12[3] = sub_1005138AC;
      v12[4] = 0;
      v12[5] = v20;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1002398F8;
      *(v13 + 24) = v12;
      v25 = sub_100239904;
      v26 = v13;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v23 = sub_10047E468;
      v24 = &unk_1007638A8;
      v14 = _Block_copy(&aBlock);
      v15 = v20;

      [v11 enumeratePersistentIDsUsingBlock:v14];

      _Block_release(v14);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v17 = v27;

      if (v17)
      {
        sub_100512350(v17);
      }

      v2 = v21 - 1;
      if (v21 == 1)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1003CE524(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003CE61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 104) = a4;
  *(v6 + 112) = a6;
  *(v6 + 232) = a5;
  *(v6 + 96) = a1;
  v7 = type metadata accessor for Logger();
  *(v6 + 120) = v7;
  *(v6 + 128) = *(v7 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0, &qword_10069F380);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_1003CE76C, 0, 0);
}

uint64_t sub_1003CE76C()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  (*(*(v0 + 128) + 56))(*(v0 + 168), 1, 1, *(v0 + 120));
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;

  return _swift_task_switch(sub_1003CE840, 0, 0);
}

uint64_t sub_1003CE840()
{
  sub_100005934(v0[10].opaque[1], v0[10].opaque[0], &unk_10077F8E0, &qword_10069F380);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  v0[11].opaque[1] = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "LaunchServicesObserver.postStateChangesIfNeeded", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  v0[5].opaque[0] = 0;
  v0[5].opaque[1] = 0;
  os_activity_scope_enter(v2, v0 + 5);
  swift_unknownObjectRelease();
  *(v1 + 16) = v0[5];
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = v0[1].opaque[1];
  if (v3)
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310, &unk_10069FA00);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = 0;
  }

  v0[12].opaque[0] = v3;
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  v0[12].opaque[1] = v4;

  *(v4 + 16) = StaticString.description.getter();
  *(v4 + 24) = v5;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v4);
  os_unfair_lock_unlock(&dword_100788650);
  v6 = v0[9].opaque[1];
  v8 = v0[7].opaque[1];
  v7 = v0[8].opaque[0];
  sub_100005934(v0[10].opaque[0], v6, &unk_10077F8E0, &qword_10069F380);
  v9 = (*(v7 + 48))(v6, 1, v8);
  v10 = v0[10].opaque[0];
  if (v9 == 1)
  {
    sub_1000032A8(v0[10].opaque[0], &unk_10077F8E0, &qword_10069F380);

    v11 = 0;
  }

  else
  {
    v12 = v0[9].opaque[0];
    v13 = v0[8].opaque[0];
    v14 = v0[8].opaque[1];
    v15 = v0[7].opaque[1];
    (*(v13 + 32))(v12, v0[9].opaque[1], v15);
    (*(v13 + 16))(v14, v12, v15);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v11 = sub_1005AD4D8("LaunchServicesObserver.postStateChangesIfNeeded", 47, 2, v14);

    (*(v13 + 8))(v12, v15);
    sub_1000032A8(v10, &unk_10077F8E0, &qword_10069F380);
  }

  v0[13].opaque[0] = v11;
  v16 = v0[11].opaque[0];
  v0[3].opaque[0] = v1;
  v0[3].opaque[1] = v3;
  v0[4].opaque[0] = v4;
  v0[4].opaque[1] = v11;
  v17 = swift_task_alloc();
  v0[13].opaque[1] = v17;
  v17[2] = 0;
  v17[3] = v1;
  v17[4] = v3;
  v17[5] = v4;
  v17[6] = v11;
  v17[7] = &unk_1006A9138;
  v17[8] = v16;

  v18 = swift_task_alloc();
  v0[14].opaque[0] = v18;
  *v18 = v0;
  v18[1] = sub_1003CED20;
  v19 = v0[6].opaque[0];

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v19, &v0[3], &unk_10069F3A0, v17, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_1003CED20()
{

  if (v0)
  {

    v1 = sub_10023B26C;
  }

  else
  {

    v1 = sub_1003CEEE0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1003CEEE0()
{
  v1 = *(v0 + 168);

  sub_1000032A8(v1, &unk_10077F8E0, &qword_10069F380);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003CEFFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 716) = a3;
  *(v4 + 328) = a2;
  *(v4 + 336) = a4;
  v5 = type metadata accessor for RegisteredXPCClient(0);
  *(v4 + 344) = v5;
  *(v4 + 352) = *(v5 - 8);
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_10077F378, &qword_1006A9140);
  *(v4 + 384) = v6;
  *(v4 + 392) = *(v6 - 8);
  *(v4 + 400) = swift_task_alloc();
  v7 = type metadata accessor for AppState();
  *(v4 + 408) = v7;
  *(v4 + 416) = *(v7 - 8);
  *(v4 + 424) = swift_task_alloc();
  updated = type metadata accessor for AppStateUpdateIdentifier();
  *(v4 + 432) = updated;
  *(v4 + 440) = *(updated - 8);
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v4 + 464) = v9;
  *(v4 + 472) = *(v9 - 8);
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();

  return _swift_task_switch(sub_1003CF298, 0, 0);
}

uint64_t sub_1003CF298()
{
  v119 = v0;
  v1 = *(*(v0 + 328) + 16);
  os_unfair_lock_lock(v1 + 22);
  sub_100005934(&v1[4], v0 + 88, &qword_1007833F8, &qword_1006A90F8);
  if (!*(v0 + 112))
  {
LABEL_112:
    __break(1u);
  }

  sub_10026FEE4(v0 + 88, v0 + 16);
  os_unfair_lock_unlock(v1 + 22);
  static Logger.library.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 488);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  if (v4)
  {
    v8 = *(v0 + 716);
    v115 = *(v0 + 488);
    v9 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v9 = 136315394;
    if (v8)
    {
      v10 = 0x6465646461;
    }

    else
    {
      v10 = 0x6465766F6D6572;
    }

    if (v8)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = sub_1002346CC(v10, v11, &v118);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = Set.description.getter();
    v15 = sub_1002346CC(v13, v14, &v118);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "Posting state changes for %s apps: %s", v9, 0x16u);
    swift_arrayDestroy();

    v18 = *(v6 + 8);
    v16 = v6 + 8;
    v17 = v18;
    v18(v115, v7);
  }

  else
  {

    v19 = *(v6 + 8);
    v16 = v6 + 8;
    v17 = v19;
    v19(v5, v7);
  }

  *(v0 + 496) = v16;
  *(v0 + 504) = v17;
  v20 = *(v0 + 336);
  v21 = *(v20 + 32);
  *(v0 + 717) = v21;
  v22 = -1;
  v23 = -1 << v21;
  if (-(-1 << v21) < 64)
  {
    v22 = ~(-1 << -(-1 << v21));
  }

  v24 = v22 & *(v20 + 56);
  *(v0 + 712) = enum case for AppStateUpdateIdentifier.managedAppDistribution(_:);
  *(v0 + 512) = _swiftEmptyArrayStorage;

  if (v24)
  {
    v26 = 0;
LABEL_18:
    *(v0 + 528) = v26;
    *(v0 + 520) = v24;
    v28 = (*(v25 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v24)))));
    *(v0 + 536) = *v28;
    *(v0 + 544) = v28[1];
    v29 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    *(v0 + 552) = v29;

    return _swift_task_switch(sub_1003D00DC, v29, 0);
  }

  v27 = 0;
  while (((63 - v23) >> 6) - 1 != v27)
  {
    v26 = v27 + 1;
    v24 = *(v25 + 8 * v27++ + 64);
    if (v24)
    {
      goto LABEL_18;
    }
  }

  v30 = *(v0 + 716);

  sub_100006D8C((v0 + 16), *(v0 + 40));

  sub_10066969C(_swiftEmptyArrayStorage);

  if ((v30 & 1) == 0)
  {
    *(v0 + 688) = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
    v71 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    *(v0 + 696) = v71;

    v72 = swift_task_alloc();
    *(v0 + 704) = v72;
    *v72 = v0;
    v72[1] = sub_1003D38A0;

    return sub_10066B8F0(v71);
  }

  v31 = *(v0 + 336);
  v32 = -1;
  v33 = -1 << *(v31 + 32);
  if (-v33 < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v31 + 56);
  v35 = (63 - v33) >> 6;

  v36 = 0;
  v37 = _swiftEmptyArrayStorage;
  v38 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
  p_name = &stru_100779FF8.name;
LABEL_25:
  v113 = v37;
  *(v0 + 616) = v37;
LABEL_27:
  if (v34)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v41 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    if (v41 >= v35)
    {
      break;
    }

    v34 = *(*(v0 + 336) + 8 * v41 + 56);
    ++v36;
    if (v34)
    {
      v36 = v41;
LABEL_32:
      v34 &= v34 - 1;
      v42 = objc_allocWithZone(v38[437]);

      v43 = String._bridgeToObjectiveC()();

      *(v0 + 312) = 0;
      v44 = [v42 p_name[301]];

      v45 = *(v0 + 312);
      if (v44)
      {
        v46 = v45;
        v47 = [v44 iTunesMetadata];
        v48 = [v47 distributorInfo];

        v49 = [v48 distributorID];
        if (!v49)
        {
          goto LABEL_52;
        }

        v50 = v49;
        v51 = v44;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v116 = v51;
        v55 = [v51 bundleIdentifier];
        if (!v55)
        {
          goto LABEL_40;
        }

        v56 = v55;
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        if (v52 == v57 && v54 == v59)
        {
        }

        else
        {
          v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v38 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
          if ((v61 & 1) == 0)
          {
LABEL_40:
            *(v0 + 240) = &type metadata for NativeDistributor;
            v62 = sub_1003000A4();
            goto LABEL_44;
          }
        }

        v63 = [v48 domain];
        v38 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
        p_name = (&stru_100779FF8 + 8);
        v44 = v116;
        if (!v63)
        {
LABEL_52:

          *(v0 + 248) = 0;
          *(v0 + 232) = 0u;
          *(v0 + 216) = 0u;

          sub_1000032A8(v0 + 216, &unk_10077FA50, &unk_1006A0BD0);
          goto LABEL_27;
        }

        v64 = v63;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v65;

        *(v0 + 240) = &type metadata for WebDistributor;
        v62 = sub_100231E84();
LABEL_44:
        *(v0 + 248) = v62;

        *(v0 + 216) = v52;
        *(v0 + 224) = v54;
        sub_1001F0C48(&qword_10077E970, &qword_10069E920);
        if ((swift_dynamicCast() & 1) == 0)
        {

          p_name = (&stru_100779FF8 + 8);
          goto LABEL_27;
        }

        v67 = *(v0 + 296);
        v66 = *(v0 + 304);
        p_name = (&stru_100779FF8 + 8);
        if (v67 == 0xD000000000000012 && 0x80000001006C2DF0 == v66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v67 == 0xD000000000000014 && 0x80000001006C47D0 == v66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v38 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
          goto LABEL_27;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_100363B64(0, *(v113 + 2) + 1, 1, v113);
        }

        v69 = *(v113 + 2);
        v68 = *(v113 + 3);
        if (v69 >= v68 >> 1)
        {
          v113 = sub_100363B64((v68 > 1), v69 + 1, 1, v113);
        }

        *(v113 + 2) = v69 + 1;
        v70 = &v113[16 * v69];
        *(v70 + 4) = v67;
        *(v70 + 5) = v66;
        v37 = v113;
        v38 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
        goto LABEL_25;
      }

      v40 = v45;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      goto LABEL_27;
    }
  }

  v73 = *(v113 + 2);
  *(v0 + 624) = v73;
  if (!v73)
  {

    sub_10000710C((v0 + 16));

    v108 = *(v0 + 8);

    return v108();
  }

  *(v0 + 632) = 0;
  v74 = *(v0 + 616);
  if (!v74[2])
  {
    goto LABEL_111;
  }

  v75 = v74[5];
  v112 = v74[4];
  *(v0 + 640) = v75;
  v76 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  *(v0 + 648) = v76;
  v77 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
  *(v0 + 656) = v77;
  v117 = v75;

  v111 = v77;

  os_unfair_lock_lock((v76 + 16));
  v110 = v76;
  v78 = *(v76 + 24);
  v79 = v78 + 64;
  v80 = -1;
  v81 = -1 << *(v78 + 32);
  if (-v81 < 64)
  {
    v80 = ~(-1 << -v81);
  }

  v82 = v80 & *(v78 + 64);
  v83 = (63 - v81) >> 6;
  v114 = v78;

  v84 = 0;
  v85 = _swiftEmptyArrayStorage;
  *(v0 + 664) = _swiftEmptyArrayStorage;
  if (v82)
  {
    while (1)
    {
      while (1)
      {
LABEL_74:
        v88 = *(v0 + 368);
        v87 = *(v0 + 376);
        v89 = *(v0 + 344);
        v90 = __clz(__rbit64(v82));
        v82 &= v82 - 1;
        v91 = *(*(v0 + 352) + 72);
        sub_1003D4640(*(v114 + 56) + v91 * (v90 | (v84 << 6)), v88);
        sub_1003D46A4(v88, v87, type metadata accessor for RegisteredXPCClient);
        v92 = (v87 + *(v89 + 24));
        v93 = v92[1];
        if (v93 <= 2)
        {
          if (!v93)
          {
            goto LABEL_69;
          }

          if ((v93 - 1) < 2)
          {
            goto LABEL_97;
          }

LABEL_90:
          v100 = v112 == *v92 && v93 == v117;
          if (v100 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_97;
          }

          goto LABEL_69;
        }

        if (v93 == 3)
        {
          break;
        }

        if (v93 != 4)
        {
          goto LABEL_90;
        }

LABEL_97:
        sub_1003D46A4(*(v0 + 376), *(v0 + 360), type metadata accessor for RegisteredXPCClient);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 320) = v85;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10052642C(0, v85[2] + 1, 1);
          v85 = *(v0 + 320);
        }

        v103 = v85[2];
        v102 = v85[3];
        if (v103 >= v102 >> 1)
        {
          sub_10052642C((v102 > 1), v103 + 1, 1);
          v85 = *(v0 + 320);
        }

        v105 = *(v0 + 352);
        v104 = *(v0 + 360);
        v85[2] = v103 + 1;
        sub_1003D46A4(v104, v85 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + v103 * v91, type metadata accessor for RegisteredXPCClient);
        *(v0 + 664) = v85;
        if (!v82)
        {
          goto LABEL_70;
        }
      }

      *(v0 + 280) = &type metadata for NativeDistributor;
      *(v0 + 288) = sub_1003000A4();
      *(v0 + 256) = v112;
      *(v0 + 264) = v117;
      v94 = sub_100006D8C((v0 + 256), &type metadata for NativeDistributor);
      v96 = *v94;
      v95 = v94[1];
      v97 = *v94 == 0xD000000000000012 && 0x80000001006C2DF0 == v95;
      if (v97 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v96 == 0xD000000000000014 ? (v98 = 0x80000001006C47D0 == v95) : (v98 = 0), v98))
      {

        sub_10000710C((v0 + 256));
        goto LABEL_97;
      }

      v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000710C((v0 + 256));
      if (v99)
      {
        goto LABEL_97;
      }

LABEL_69:
      sub_1003D470C(*(v0 + 376), type metadata accessor for RegisteredXPCClient);
      *(v0 + 664) = v85;
      if (!v82)
      {
        goto LABEL_70;
      }
    }
  }

  while (1)
  {
LABEL_70:
    v86 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_110;
    }

    if (v86 >= v83)
    {
      break;
    }

    v82 = *(v79 + 8 * v86);
    ++v84;
    if (v82)
    {
      v84 = v86;
      goto LABEL_74;
    }
  }

  os_unfair_lock_unlock(v110 + 4);
  v106 = swift_task_alloc();
  *(v0 + 672) = v106;
  v106[2] = v85;
  v106[3] = v111;
  v106[4] = 0;
  v106[5] = 0;
  v107 = swift_task_alloc();
  *(v0 + 680) = v107;
  *v107 = v0;
  v107[1] = sub_1003D315C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1003D00DC()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = *(v0[69] + 112);
  v4 = swift_task_alloc();
  v0[70] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[71] = v5;
  *v5 = v0;
  v5[1] = sub_1003D01F0;

  return sub_1003AE648(sub_1002716D8, v4, v3);
}

uint64_t sub_1003D01F0(char a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 552);
  if (v1)
  {

    v7 = sub_1003D1490;
  }

  else
  {
    *(v5 + 718) = a1 & 1;

    v7 = sub_1003D0390;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1003D0390()
{

  return _swift_task_switch(sub_1003D0424, 0, 0);
}

uint64_t sub_1003D0424(uint64_t a1)
{
  v145 = v1;
  v2 = *(v1 + 544);
  if ((*(v1 + 718) & 1) == 0)
  {
    v13 = *(v1 + 536);
    v14 = *(v1 + 40);
    v15 = *(v1 + 56);
    v141 = *(v1 + 72);
    v16 = sub_100006D8C((v1 + 16), v14);
    *(v1 + 184) = v14;
    *(v1 + 192) = v15;
    *(v1 + 200) = v141;
    v17 = sub_10020A748((v1 + 160));
    (*(*(v14 - 8) + 16))(v17, v16, v14);
    sub_100235E64();
    v18 = sub_10060BC54(v13, v2, 0, 0, 2);
    if (v18)
    {
      v19 = v18;
      v20 = [v19 iTunesMetadata];
      v21 = [v20 storeItemIdentifier];

      if (v21)
      {
        v22 = [v19 iTunesMetadata];
        v23 = [v22 storeItemIdentifier];
      }

      else
      {
        v23 = 0;
      }

      v40 = v21 == 0;

      v41 = *(v1 + 544);
      v43 = *(v1 + 440);
      v42 = *(v1 + 448);
      *v42 = *(v1 + 536);
      *(v42 + 8) = v41;
      *(v42 + 16) = v23;
      *(v42 + 24) = v40;
      (*(v43 + 104))();

      v44 = [v19 iTunesMetadata];
      v45 = [v44 distributorInfo];

      v46 = [v45 distributorID];
      if (!v46)
      {
        v33 = 0;
        v34 = 0;
        v35 = -1;
        v36 = 3;
        goto LABEL_23;
      }

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49 = v48;
      v35 = 0;
      v36 = v49;
      v34 = v49;
    }

    else
    {
      v30 = *(v1 + 544);
      v32 = *(v1 + 440);
      v31 = *(v1 + 448);
      *v31 = *(v1 + 536);
      *(v31 + 8) = v30;
      *(v31 + 16) = 0;
      *(v31 + 24) = 1;
      (*(v32 + 104))();
      v19 = 0;
      v33 = 0;
      v34 = 0;
      v35 = -1;
      v36 = 3;
    }

LABEL_23:
    *(v1 + 719) = v35;
    *(v1 + 600) = v34;
    *(v1 + 592) = v36;
    *(v1 + 584) = v33;
    *(v1 + 576) = v19;
    v50 = *(v1 + 544);
    v51 = swift_task_alloc();
    *(v1 + 608) = v51;
    *v51 = v1;
    v51[1] = sub_1003D2294;
    v52 = *(v1 + 536);
    v53 = *(v1 + 424);
    v147 = v36;

    return sub_10060FC18(v53, v52, v50, 1, 0, 0, v1 + 160, v33);
  }

  static Logger.library.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 544);
  if (v5)
  {
    v7 = *(v1 + 536);
    v140 = *(v1 + 504);
    v8 = *(v1 + 480);
    v9 = *(v1 + 464);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v144 = v11;
    *v10 = 136315138;
    v12 = sub_1002346CC(v7, v6, &v144);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Ignoring state change for active install of %s", v10, 0xCu);
    sub_10000710C(v11);

    v140(v8, v9);
  }

  else
  {
    v24 = *(v1 + 504);
    v25 = *(v1 + 480);
    v26 = *(v1 + 464);

    v24(v25, v26);
  }

  v27 = *(v1 + 528);
  v28 = (*(v1 + 520) - 1) & *(v1 + 520);
  if (v28)
  {
    v29 = *(v1 + 336);
LABEL_15:
    *(v1 + 528) = v27;
    *(v1 + 520) = v28;
    v38 = (*(v29 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v28)))));
    *(v1 + 536) = *v38;
    *(v1 + 544) = v38[1];
    v39 = *(*sub_100006D8C((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    *(v1 + 552) = v39;

    return _swift_task_switch(sub_1003D00DC, v39, 0);
  }

  while (1)
  {
    v37 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    if (v37 >= (((1 << *(v1 + 717)) + 63) >> 6))
    {
      break;
    }

    v29 = *(v1 + 336);
    v28 = *(v29 + 8 * v37 + 56);
    ++v27;
    if (v28)
    {
      v27 = v37;
      goto LABEL_15;
    }
  }

  v54 = *(v1 + 512);
  v55 = *(v1 + 716);

  sub_100006D8C((v1 + 16), *(v1 + 40));

  sub_10066969C(v54);

  if ((v55 & 1) == 0)
  {
    *(v1 + 688) = *(*sub_100006D8C((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
    v96 = *(*sub_100006D8C((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    *(v1 + 696) = v96;

    v97 = swift_task_alloc();
    *(v1 + 704) = v97;
    *v97 = v1;
    v97[1] = sub_1003D38A0;

    return sub_10066B8F0(v96);
  }

  v56 = *(v1 + 336);
  v57 = -1;
  v58 = -1 << *(v56 + 32);
  if (-v58 < 64)
  {
    v57 = ~(-1 << -v58);
  }

  v59 = v57 & *(v56 + 56);
  v60 = (63 - v58) >> 6;

  v61 = 0;
  v62 = _swiftEmptyArrayStorage;
  v63 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
  p_name = &stru_100779FF8.name;
LABEL_30:
  v138 = v62;
  *(v1 + 616) = v62;
  while (2)
  {
    if (v59)
    {
LABEL_37:
      v59 &= v59 - 1;
      v67 = objc_allocWithZone(v63[437]);

      v68 = String._bridgeToObjectiveC()();

      *(v1 + 312) = 0;
      v69 = [v67 p_name[301]];

      v70 = *(v1 + 312);
      if (!v69)
      {
        v65 = v70;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        continue;
      }

      v71 = v70;
      v72 = [v69 iTunesMetadata];
      v73 = [v72 distributorInfo];

      v74 = [v73 distributorID];
      if (!v74)
      {
LABEL_57:

        *(v1 + 248) = 0;
        *(v1 + 232) = 0u;
        *(v1 + 216) = 0u;

        sub_1000032A8(v1 + 216, &unk_10077FA50, &unk_1006A0BD0);
        continue;
      }

      v75 = v74;
      v76 = v69;
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      v142 = v76;
      v80 = [v76 bundleIdentifier];
      if (!v80)
      {
        goto LABEL_45;
      }

      v81 = v80;
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      if (v77 == v82 && v79 == v84)
      {
      }

      else
      {
        v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v63 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
        if ((v86 & 1) == 0)
        {
LABEL_45:
          *(v1 + 240) = &type metadata for NativeDistributor;
          v87 = sub_1003000A4();
LABEL_49:
          *(v1 + 248) = v87;

          *(v1 + 216) = v77;
          *(v1 + 224) = v79;
          sub_1001F0C48(&qword_10077E970, &qword_10069E920);
          if (swift_dynamicCast())
          {
            v92 = *(v1 + 296);
            v91 = *(v1 + 304);
            p_name = (&stru_100779FF8 + 8);
            if ((v92 != 0xD000000000000012 || 0x80000001006C2DF0 != v91) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v92 != 0xD000000000000014 || 0x80000001006C47D0 != v91) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v138 = sub_100363B64(0, *(v138 + 2) + 1, 1, v138);
              }

              v94 = *(v138 + 2);
              v93 = *(v138 + 3);
              if (v94 >= v93 >> 1)
              {
                v138 = sub_100363B64((v93 > 1), v94 + 1, 1, v138);
              }

              *(v138 + 2) = v94 + 1;
              v95 = &v138[16 * v94];
              *(v95 + 4) = v92;
              *(v95 + 5) = v91;
              v62 = v138;
              v63 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
              goto LABEL_30;
            }

            v63 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
          }

          else
          {

            p_name = (&stru_100779FF8 + 8);
          }

          continue;
        }
      }

      v88 = [v73 domain];
      v63 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
      p_name = (&stru_100779FF8 + 8);
      v69 = v142;
      if (!v88)
      {
        goto LABEL_57;
      }

      v89 = v88;
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v90;

      *(v1 + 240) = &type metadata for WebDistributor;
      v87 = sub_100231E84();
      goto LABEL_49;
    }

    break;
  }

  while (1)
  {
    v66 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_115;
    }

    if (v66 >= v60)
    {
      break;
    }

    v59 = *(*(v1 + 336) + 8 * v66 + 56);
    ++v61;
    if (v59)
    {
      v61 = v66;
      goto LABEL_37;
    }
  }

  v98 = *(v138 + 2);
  *(v1 + 624) = v98;
  if (!v98)
  {

    sub_10000710C((v1 + 16));

    v133 = *(v1 + 8);

    return v133();
  }

  *(v1 + 632) = 0;
  v99 = *(v1 + 616);
  if (!v99[2])
  {
LABEL_117:
    __break(1u);
  }

  v100 = v99[5];
  v137 = v99[4];
  *(v1 + 640) = v100;
  v101 = *(*sub_100006D8C((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  *(v1 + 648) = v101;
  v102 = *(*sub_100006D8C((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
  *(v1 + 656) = v102;
  v143 = v100;

  v136 = v102;

  os_unfair_lock_lock((v101 + 16));
  v135 = v101;
  v103 = *(v101 + 24);
  v104 = v103 + 64;
  v105 = -1;
  v106 = -1 << *(v103 + 32);
  if (-v106 < 64)
  {
    v105 = ~(-1 << -v106);
  }

  v107 = v105 & *(v103 + 64);
  v108 = (63 - v106) >> 6;
  v139 = v103;

  v109 = 0;
  v110 = _swiftEmptyArrayStorage;
  *(v1 + 664) = _swiftEmptyArrayStorage;
  if (v107)
  {
    while (1)
    {
      while (1)
      {
LABEL_79:
        v113 = *(v1 + 368);
        v112 = *(v1 + 376);
        v114 = *(v1 + 344);
        v115 = __clz(__rbit64(v107));
        v107 &= v107 - 1;
        v116 = *(*(v1 + 352) + 72);
        sub_1003D4640(*(v139 + 56) + v116 * (v115 | (v109 << 6)), v113);
        sub_1003D46A4(v113, v112, type metadata accessor for RegisteredXPCClient);
        v117 = (v112 + *(v114 + 24));
        v118 = v117[1];
        if (v118 <= 2)
        {
          if (!v118)
          {
            goto LABEL_74;
          }

          if ((v118 - 1) < 2)
          {
            goto LABEL_102;
          }

LABEL_95:
          v125 = v137 == *v117 && v118 == v143;
          if (v125 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_102;
          }

          goto LABEL_74;
        }

        if (v118 == 3)
        {
          break;
        }

        if (v118 != 4)
        {
          goto LABEL_95;
        }

LABEL_102:
        sub_1003D46A4(*(v1 + 376), *(v1 + 360), type metadata accessor for RegisteredXPCClient);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 320) = v110;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10052642C(0, v110[2] + 1, 1);
          v110 = *(v1 + 320);
        }

        v128 = v110[2];
        v127 = v110[3];
        if (v128 >= v127 >> 1)
        {
          sub_10052642C((v127 > 1), v128 + 1, 1);
          v110 = *(v1 + 320);
        }

        v130 = *(v1 + 352);
        v129 = *(v1 + 360);
        v110[2] = v128 + 1;
        sub_1003D46A4(v129, v110 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + v128 * v116, type metadata accessor for RegisteredXPCClient);
        *(v1 + 664) = v110;
        if (!v107)
        {
          goto LABEL_75;
        }
      }

      *(v1 + 280) = &type metadata for NativeDistributor;
      *(v1 + 288) = sub_1003000A4();
      *(v1 + 256) = v137;
      *(v1 + 264) = v143;
      v119 = sub_100006D8C((v1 + 256), &type metadata for NativeDistributor);
      v121 = *v119;
      v120 = v119[1];
      v122 = *v119 == 0xD000000000000012 && 0x80000001006C2DF0 == v120;
      if (v122 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v121 == 0xD000000000000014 ? (v123 = 0x80000001006C47D0 == v120) : (v123 = 0), v123))
      {

        sub_10000710C((v1 + 256));
        goto LABEL_102;
      }

      v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000710C((v1 + 256));
      if (v124)
      {
        goto LABEL_102;
      }

LABEL_74:
      sub_1003D470C(*(v1 + 376), type metadata accessor for RegisteredXPCClient);
      *(v1 + 664) = v110;
      if (!v107)
      {
        goto LABEL_75;
      }
    }
  }

  while (1)
  {
LABEL_75:
    v111 = v109 + 1;
    if (__OFADD__(v109, 1))
    {
      goto LABEL_116;
    }

    if (v111 >= v108)
    {
      break;
    }

    v107 = *(v104 + 8 * v111);
    ++v109;
    if (v107)
    {
      v109 = v111;
      goto LABEL_79;
    }
  }

  os_unfair_lock_unlock(v135 + 4);
  v131 = swift_task_alloc();
  *(v1 + 672) = v131;
  v131[2] = v110;
  v131[3] = v136;
  v131[4] = 0;
  v131[5] = 0;
  v132 = swift_task_alloc();
  *(v1 + 680) = v132;
  *v132 = v1;
  v132[1] = sub_1003D315C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1003D1490()
{

  return _swift_task_switch(sub_1003D1524, 0, 0);
}

uint64_t sub_1003D1524(uint64_t a1)
{
  v111 = v1;
  static Logger.library.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 544);
  if (v4)
  {
    v6 = *(v1 + 536);
    v107 = *(v1 + 504);
    v7 = *(v1 + 480);
    v8 = *(v1 + 464);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v110 = v10;
    *v9 = 136315138;
    v11 = sub_1002346CC(v6, v5, &v110);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ignoring state change for active install of %s", v9, 0xCu);
    sub_10000710C(v10);

    v107(v7, v8);
  }

  else
  {
    v12 = *(v1 + 504);
    v13 = *(v1 + 480);
    v14 = *(v1 + 464);

    v12(v13, v14);
  }

  v15 = *(v1 + 528);
  v16 = (*(v1 + 520) - 1) & *(v1 + 520);
  if (v16)
  {
    v17 = *(v1 + 336);
LABEL_10:
    *(v1 + 528) = v15;
    *(v1 + 520) = v16;
    v19 = (*(v17 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v16)))));
    *(v1 + 536) = *v19;
    *(v1 + 544) = v19[1];
    v20 = *(*sub_100006D8C((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    *(v1 + 552) = v20;

    return _swift_task_switch(sub_1003D00DC, v20, 0);
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v18 >= (((1 << *(v1 + 717)) + 63) >> 6))
    {
      break;
    }

    v17 = *(v1 + 336);
    v16 = *(v17 + 8 * v18 + 56);
    ++v15;
    if (v16)
    {
      v15 = v18;
      goto LABEL_10;
    }
  }

  v21 = *(v1 + 512);
  v22 = *(v1 + 716);

  sub_100006D8C((v1 + 16), *(v1 + 40));

  sub_10066969C(v21);

  if ((v22 & 1) == 0)
  {
    *(v1 + 688) = *(*sub_100006D8C((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
    v63 = *(*sub_100006D8C((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    *(v1 + 696) = v63;

    v64 = swift_task_alloc();
    *(v1 + 704) = v64;
    *v64 = v1;
    v64[1] = sub_1003D38A0;

    return sub_10066B8F0(v63);
  }

  v23 = *(v1 + 336);
  v24 = -1;
  v25 = -1 << *(v23 + 32);
  if (-v25 < 64)
  {
    v24 = ~(-1 << -v25);
  }

  v26 = v24 & *(v23 + 56);
  v27 = (63 - v25) >> 6;

  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  v30 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
  p_name = &stru_100779FF8.name;
LABEL_17:
  v105 = v29;
  *(v1 + 616) = v29;
  while (2)
  {
    if (v26)
    {
LABEL_24:
      v26 &= v26 - 1;
      v34 = objc_allocWithZone(v30[437]);

      v35 = String._bridgeToObjectiveC()();

      *(v1 + 312) = 0;
      v36 = [v34 p_name[301]];

      v37 = *(v1 + 312);
      if (!v36)
      {
        v32 = v37;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        continue;
      }

      v38 = v37;
      v39 = [v36 iTunesMetadata];
      v40 = [v39 distributorInfo];

      v41 = [v40 distributorID];
      if (!v41)
      {
LABEL_44:

        *(v1 + 248) = 0;
        *(v1 + 232) = 0u;
        *(v1 + 216) = 0u;

        sub_1000032A8(v1 + 216, &unk_10077FA50, &unk_1006A0BD0);
        continue;
      }

      v42 = v41;
      v43 = v36;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v108 = v43;
      v47 = [v43 bundleIdentifier];
      if (!v47)
      {
        goto LABEL_32;
      }

      v48 = v47;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      if (v44 == v49 && v46 == v51)
      {
      }

      else
      {
        v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v30 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
        if ((v53 & 1) == 0)
        {
LABEL_32:
          *(v1 + 240) = &type metadata for NativeDistributor;
          v54 = sub_1003000A4();
LABEL_36:
          *(v1 + 248) = v54;

          *(v1 + 216) = v44;
          *(v1 + 224) = v46;
          sub_1001F0C48(&qword_10077E970, &qword_10069E920);
          if (swift_dynamicCast())
          {
            v59 = *(v1 + 296);
            v58 = *(v1 + 304);
            p_name = (&stru_100779FF8 + 8);
            if ((v59 != 0xD000000000000012 || 0x80000001006C2DF0 != v58) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v59 != 0xD000000000000014 || 0x80000001006C47D0 != v58) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v105 = sub_100363B64(0, *(v105 + 2) + 1, 1, v105);
              }

              v61 = *(v105 + 2);
              v60 = *(v105 + 3);
              if (v61 >= v60 >> 1)
              {
                v105 = sub_100363B64((v60 > 1), v61 + 1, 1, v105);
              }

              *(v105 + 2) = v61 + 1;
              v62 = &v105[16 * v61];
              *(v62 + 4) = v59;
              *(v62 + 5) = v58;
              v29 = v105;
              v30 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
              goto LABEL_17;
            }

            v30 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
          }

          else
          {

            p_name = (&stru_100779FF8 + 8);
          }

          continue;
        }
      }

      v55 = [v40 domain];
      v30 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
      p_name = (&stru_100779FF8 + 8);
      v36 = v108;
      if (!v55)
      {
        goto LABEL_44;
      }

      v56 = v55;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v57;

      *(v1 + 240) = &type metadata for WebDistributor;
      v54 = sub_100231E84();
      goto LABEL_36;
    }

    break;
  }

  while (1)
  {
    v33 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_102;
    }

    if (v33 >= v27)
    {
      break;
    }

    v26 = *(*(v1 + 336) + 8 * v33 + 56);
    ++v28;
    if (v26)
    {
      v28 = v33;
      goto LABEL_24;
    }
  }

  v65 = *(v105 + 2);
  *(v1 + 624) = v65;
  if (!v65)
  {

    sub_10000710C((v1 + 16));

    v100 = *(v1 + 8);

    return v100();
  }

  *(v1 + 632) = 0;
  v66 = *(v1 + 616);
  if (!v66[2])
  {
LABEL_104:
    __break(1u);
  }

  v67 = v66[5];
  v104 = v66[4];
  *(v1 + 640) = v67;
  v68 = *(*sub_100006D8C((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  *(v1 + 648) = v68;
  v69 = *(*sub_100006D8C((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
  *(v1 + 656) = v69;
  v109 = v67;

  v103 = v69;

  os_unfair_lock_lock((v68 + 16));
  v102 = v68;
  v70 = *(v68 + 24);
  v71 = v70 + 64;
  v72 = -1;
  v73 = -1 << *(v70 + 32);
  if (-v73 < 64)
  {
    v72 = ~(-1 << -v73);
  }

  v74 = v72 & *(v70 + 64);
  v75 = (63 - v73) >> 6;
  v106 = v70;

  v76 = 0;
  v77 = _swiftEmptyArrayStorage;
  *(v1 + 664) = _swiftEmptyArrayStorage;
  if (v74)
  {
    while (1)
    {
      while (1)
      {
LABEL_66:
        v80 = *(v1 + 368);
        v79 = *(v1 + 376);
        v81 = *(v1 + 344);
        v82 = __clz(__rbit64(v74));
        v74 &= v74 - 1;
        v83 = *(*(v1 + 352) + 72);
        sub_1003D4640(*(v106 + 56) + v83 * (v82 | (v76 << 6)), v80);
        sub_1003D46A4(v80, v79, type metadata accessor for RegisteredXPCClient);
        v84 = (v79 + *(v81 + 24));
        v85 = v84[1];
        if (v85 <= 2)
        {
          if (!v85)
          {
            goto LABEL_61;
          }

          if ((v85 - 1) < 2)
          {
            goto LABEL_89;
          }

LABEL_82:
          v92 = v104 == *v84 && v85 == v109;
          if (v92 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_89;
          }

          goto LABEL_61;
        }

        if (v85 == 3)
        {
          break;
        }

        if (v85 != 4)
        {
          goto LABEL_82;
        }

LABEL_89:
        sub_1003D46A4(*(v1 + 376), *(v1 + 360), type metadata accessor for RegisteredXPCClient);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 320) = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10052642C(0, v77[2] + 1, 1);
          v77 = *(v1 + 320);
        }

        v95 = v77[2];
        v94 = v77[3];
        if (v95 >= v94 >> 1)
        {
          sub_10052642C((v94 > 1), v95 + 1, 1);
          v77 = *(v1 + 320);
        }

        v97 = *(v1 + 352);
        v96 = *(v1 + 360);
        v77[2] = v95 + 1;
        sub_1003D46A4(v96, v77 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + v95 * v83, type metadata accessor for RegisteredXPCClient);
        *(v1 + 664) = v77;
        if (!v74)
        {
          goto LABEL_62;
        }
      }

      *(v1 + 280) = &type metadata for NativeDistributor;
      *(v1 + 288) = sub_1003000A4();
      *(v1 + 256) = v104;
      *(v1 + 264) = v109;
      v86 = sub_100006D8C((v1 + 256), &type metadata for NativeDistributor);
      v88 = *v86;
      v87 = v86[1];
      v89 = *v86 == 0xD000000000000012 && 0x80000001006C2DF0 == v87;
      if (v89 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v88 == 0xD000000000000014 ? (v90 = 0x80000001006C47D0 == v87) : (v90 = 0), v90))
      {

        sub_10000710C((v1 + 256));
        goto LABEL_89;
      }

      v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000710C((v1 + 256));
      if (v91)
      {
        goto LABEL_89;
      }

LABEL_61:
      sub_1003D470C(*(v1 + 376), type metadata accessor for RegisteredXPCClient);
      *(v1 + 664) = v77;
      if (!v74)
      {
        goto LABEL_62;
      }
    }
  }

  while (1)
  {
LABEL_62:
    v78 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      goto LABEL_103;
    }

    if (v78 >= v75)
    {
      break;
    }

    v74 = *(v71 + 8 * v78);
    ++v76;
    if (v74)
    {
      v76 = v78;
      goto LABEL_66;
    }
  }

  os_unfair_lock_unlock(v102 + 4);
  v98 = swift_task_alloc();
  *(v1 + 672) = v98;
  v98[2] = v77;
  v98[3] = v103;
  v98[4] = 0;
  v98[5] = 0;
  v99 = swift_task_alloc();
  *(v1 + 680) = v99;
  *v99 = v1;
  v99[1] = sub_1003D315C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1003D2294()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 584);

  sub_1002706F8(v2, v1);

  return _swift_task_switch(sub_1003D23F8, 0, 0);
}

uint64_t sub_1003D23F8()
{
  v106 = *(v0 + 719);
  v1 = *(v0 + 576);
  v103 = *(v0 + 600);
  v3 = *(v0 + 448);
  v2 = *(v0 + 456);
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v0 + 416);
  v100 = *(v0 + 424);
  v101 = *(v0 + 584);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  v9 = *(v0 + 384);

  v10 = *(v4 + 32);
  v10(v2, v3, v5);
  sub_10000710C((v0 + 160));
  v11 = *(v9 + 48);
  v12 = v8 + *(v9 + 64);
  v10(v8, v2, v5);
  (*(v6 + 32))(v8 + v11, v100, v7);
  *v12 = v101;
  *(v12 + 8) = v103;
  *(v12 + 16) = v106;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_104:
    v14 = sub_10036313C(0, *(v14 + 16) + 1, 1, v14);
  }

  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_10036313C((v15 > 1), v16 + 1, 1, v14);
  }

  v18 = *(v0 + 392);
  v17 = *(v0 + 400);
  *(v14 + 16) = v16 + 1;
  sub_1003D45D0(v17, v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16);
  v19 = *(v0 + 528);
  v20 = *(v0 + 520);
  *(v0 + 512) = v14;
  v21 = (v20 - 1) & v20;
  if (v21)
  {
    v22 = *(v0 + 336);
LABEL_10:
    *(v0 + 528) = v19;
    *(v0 + 520) = v21;
    v24 = (*(v22 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v21)))));
    *(v0 + 536) = *v24;
    *(v0 + 544) = v24[1];
    v25 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
    *(v0 + 552) = v25;

    return _swift_task_switch(sub_1003D00DC, v25, 0);
  }

  while (1)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v22 = *(v0 + 336);
    if (v23 >= (((1 << *(v0 + 717)) + 63) >> 6))
    {
      break;
    }

    v21 = *(v22 + 8 * v23 + 56);
    ++v19;
    if (v21)
    {
      v19 = v23;
      goto LABEL_10;
    }
  }

  v26 = *(v0 + 716);

  sub_100006D8C((v0 + 16), *(v0 + 40));

  sub_10066969C(v14);

  if ((v26 & 1) == 0)
  {
    *(v0 + 688) = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
    v62 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    *(v0 + 696) = v62;

    v63 = swift_task_alloc();
    *(v0 + 704) = v63;
    *v63 = v0;
    v63[1] = sub_1003D38A0;

    return sub_10066B8F0(v62);
  }

  v27 = *(v0 + 336);
  v28 = -1;
  v29 = -1 << *(v27 + 32);
  if (-v29 < 64)
  {
    v28 = ~(-1 << -v29);
  }

  v30 = v28 & *(v27 + 56);
  v31 = (63 - v29) >> 6;

  v32 = 0;
  v33 = _swiftEmptyArrayStorage;
  v34 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
  p_name = &stru_100779FF8.name;
LABEL_17:
  v104 = v33;
  *(v0 + 616) = v33;
  while (v30)
  {
LABEL_24:
    v30 &= v30 - 1;
    v38 = objc_allocWithZone(v34[437]);

    v39 = String._bridgeToObjectiveC()();

    *(v0 + 312) = 0;
    v40 = [v38 p_name[301]];

    v41 = *(v0 + 312);
    if (v40)
    {
      v42 = v41;
      v14 = [v40 iTunesMetadata];
      v43 = [v14 distributorInfo];

      v44 = [v43 distributorID];
      if (!v44)
      {
        goto LABEL_44;
      }

      v14 = v44;
      v45 = v40;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v107 = v45;
      v49 = [v45 bundleIdentifier];
      if (v49)
      {
        v50 = v49;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        if (v46 == v14 && v48 == v52)
        {
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v34 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
          if ((v14 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v55 = [v43 domain];
        v34 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
        p_name = (&stru_100779FF8 + 8);
        v40 = v107;
        if (v55)
        {
          v14 = v55;
          v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v48 = v56;

          *(v0 + 240) = &type metadata for WebDistributor;
          v54 = sub_100231E84();
          goto LABEL_36;
        }

LABEL_44:

        *(v0 + 248) = 0;
        *(v0 + 232) = 0u;
        *(v0 + 216) = 0u;

        sub_1000032A8(v0 + 216, &unk_10077FA50, &unk_1006A0BD0);
      }

      else
      {
LABEL_32:
        *(v0 + 240) = &type metadata for NativeDistributor;
        v54 = sub_1003000A4();
LABEL_36:
        *(v0 + 248) = v54;

        *(v0 + 216) = v46;
        *(v0 + 224) = v48;
        sub_1001F0C48(&qword_10077E970, &qword_10069E920);
        if (swift_dynamicCast())
        {
          v58 = *(v0 + 296);
          v57 = *(v0 + 304);
          p_name = (&stru_100779FF8 + 8);
          v14 = v107;
          if ((v58 != 0xD000000000000012 || 0x80000001006C2DF0 != v57) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v58 != 0xD000000000000014 || 0x80000001006C47D0 != v57) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v104 = sub_100363B64(0, *(v104 + 2) + 1, 1, v104);
            }

            v60 = *(v104 + 2);
            v59 = *(v104 + 3);
            v14 = v60 + 1;
            if (v60 >= v59 >> 1)
            {
              v104 = sub_100363B64((v59 > 1), v60 + 1, 1, v104);
            }

            *(v104 + 2) = v14;
            v61 = &v104[16 * v60];
            *(v61 + 4) = v58;
            *(v61 + 5) = v57;
            v33 = v104;
            v34 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
            goto LABEL_17;
          }

          v34 = &_s3XPC0A16_TYPE_DICTIONARYs13OpaquePointerVvg_ptr;
        }

        else
        {

          p_name = (&stru_100779FF8 + 8);
        }
      }
    }

    else
    {
      v36 = v41;
      v14 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  while (1)
  {
    v37 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_102;
    }

    if (v37 >= v31)
    {
      break;
    }

    v30 = *(*(v0 + 336) + 8 * v37 + 56);
    ++v32;
    if (v30)
    {
      v32 = v37;
      goto LABEL_24;
    }
  }

  v64 = *(v104 + 2);
  *(v0 + 624) = v64;
  if (!v64)
  {

    sub_10000710C((v0 + 16));

    v96 = *(v0 + 8);

    return v96();
  }

  *(v0 + 632) = 0;
  v65 = *(v0 + 616);
  if (!v65[2])
  {
    __break(1u);
  }

  v66 = v65[5];
  v102 = v65[4];
  *(v0 + 640) = v66;
  v67 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  *(v0 + 648) = v67;
  v14 = *(*sub_100006D8C((v0 + 16), *(v0 + 40)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
  *(v0 + 656) = v14;
  v108 = v66;

  v99 = v14;

  os_unfair_lock_lock((v67 + 16));
  v98 = v67;
  v68 = *(v67 + 24);
  v69 = v68 + 64;
  v70 = -1;
  v71 = -1 << *(v68 + 32);
  if (-v71 < 64)
  {
    v70 = ~(-1 << -v71);
  }

  v72 = v70 & *(v68 + 64);
  v73 = (63 - v71) >> 6;
  v105 = v68;

  v74 = 0;
  v75 = _swiftEmptyArrayStorage;
  *(v0 + 664) = _swiftEmptyArrayStorage;
  if (v72)
  {
    while (1)
    {
      while (1)
      {
LABEL_66:
        v77 = *(v0 + 368);
        v14 = *(v0 + 376);
        v78 = *(v0 + 344);
        v79 = __clz(__rbit64(v72));
        v72 &= v72 - 1;
        v80 = *(*(v0 + 352) + 72);
        sub_1003D4640(*(v105 + 56) + v80 * (v79 | (v74 << 6)), v77);
        sub_1003D46A4(v77, v14, type metadata accessor for RegisteredXPCClient);
        v81 = (v14 + *(v78 + 24));
        v82 = v81[1];
        if (v82 <= 2)
        {
          if (!v82)
          {
            goto LABEL_61;
          }

          if ((v82 - 1) < 2)
          {
            goto LABEL_89;
          }

LABEL_82:
          v88 = v102 == *v81 && v82 == v108;
          if (v88 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_89;
          }

          goto LABEL_61;
        }

        if (v82 == 3)
        {
          break;
        }

        if (v82 != 4)
        {
          goto LABEL_82;
        }

LABEL_89:
        sub_1003D46A4(*(v0 + 376), *(v0 + 360), type metadata accessor for RegisteredXPCClient);
        v89 = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 320) = v75;
        if ((v89 & 1) == 0)
        {
          sub_10052642C(0, v75[2] + 1, 1);
          v75 = *(v0 + 320);
        }

        v91 = v75[2];
        v90 = v75[3];
        v14 = v91 + 1;
        if (v91 >= v90 >> 1)
        {
          sub_10052642C((v90 > 1), v91 + 1, 1);
          v75 = *(v0 + 320);
        }

        v93 = *(v0 + 352);
        v92 = *(v0 + 360);
        v75[2] = v14;
        sub_1003D46A4(v92, v75 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + v91 * v80, type metadata accessor for RegisteredXPCClient);
        *(v0 + 664) = v75;
        if (!v72)
        {
          goto LABEL_62;
        }
      }

      *(v0 + 280) = &type metadata for NativeDistributor;
      *(v0 + 288) = sub_1003000A4();
      *(v0 + 256) = v102;
      *(v0 + 264) = v108;
      v83 = sub_100006D8C((v0 + 256), &type metadata for NativeDistributor);
      v85 = *v83;
      v84 = v83[1];
      v86 = *v83 == 0xD000000000000012 && 0x80000001006C2DF0 == v84;
      if (v86 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v85 == 0xD000000000000014 ? (v87 = 0x80000001006C47D0 == v84) : (v87 = 0), v87))
      {

        sub_10000710C((v0 + 256));
        goto LABEL_89;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000710C((v0 + 256));
      if (v14)
      {
        goto LABEL_89;
      }

LABEL_61:
      sub_1003D470C(*(v0 + 376), type metadata accessor for RegisteredXPCClient);
      *(v0 + 664) = v75;
      if (!v72)
      {
        goto LABEL_62;
      }
    }
  }

  while (1)
  {
LABEL_62:
    v76 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_103;
    }

    if (v76 >= v73)
    {
      break;
    }

    v72 = *(v69 + 8 * v76);
    ++v74;
    if (v72)
    {
      v74 = v76;
      goto LABEL_66;
    }
  }

  os_unfair_lock_unlock(v98 + 4);
  v94 = swift_task_alloc();
  *(v0 + 672) = v94;
  v94[2] = v75;
  v94[3] = v99;
  v94[4] = 0;
  v94[5] = 0;
  v95 = swift_task_alloc();
  *(v0 + 680) = v95;
  *v95 = v0;
  v95[1] = sub_1003D315C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1003D315C()
{

  return _swift_task_switch(sub_1003D32C4, 0, 0);
}

uint64_t sub_1003D32C4()
{
  v1 = v0[79];
  v2 = v0[78];

  if (v1 + 1 == v2)
  {

    sub_10000710C(v0 + 2);

    v3 = v0[1];

    return v3();
  }

  v5 = v0[79] + 1;
  v0[79] = v5;
  v6 = v0[77];
  if (v5 >= *(v6 + 16))
  {
LABEL_49:
    __break(1u);
  }

  v7 = v6 + 16 * v5;
  v8 = *(v7 + 40);
  v45 = *(v7 + 32);
  v0[80] = v8;
  v9 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  v0[81] = v9;
  v10 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
  v0[82] = v10;
  v47 = v8;

  v44 = v10;

  os_unfair_lock_lock((v9 + 16));
  v43 = v9;
  v11 = *(v9 + 24);
  v14 = *(v11 + 64);
  v13 = v11 + 64;
  v12 = v14;
  v15 = -1;
  v16 = -1 << *(*(v9 + 24) + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & v12;
  v18 = (63 - v16) >> 6;
  v46 = *(v9 + 24);

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v0[83] = _swiftEmptyArrayStorage;
  if (v17)
  {
    while (1)
    {
      while (1)
      {
LABEL_16:
        v23 = v0[46];
        v22 = v0[47];
        v24 = v0[43];
        v25 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v26 = *(v0[44] + 72);
        sub_1003D4640(*(v46 + 56) + v26 * (v25 | (v19 << 6)), v23);
        sub_1003D46A4(v23, v22, type metadata accessor for RegisteredXPCClient);
        v27 = (v22 + *(v24 + 24));
        v28 = v27[1];
        if (v28 <= 2)
        {
          if (!v28)
          {
            goto LABEL_11;
          }

          if ((v28 - 1) < 2)
          {
            goto LABEL_39;
          }

LABEL_32:
          v35 = v45 == *v27 && v28 == v47;
          if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_39;
          }

          goto LABEL_11;
        }

        if (v28 == 3)
        {
          break;
        }

        if (v28 != 4)
        {
          goto LABEL_32;
        }

LABEL_39:
        sub_1003D46A4(v0[47], v0[45], type metadata accessor for RegisteredXPCClient);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v0[40] = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10052642C(0, v20[2] + 1, 1);
          v20 = v0[40];
        }

        v38 = v20[2];
        v37 = v20[3];
        if (v38 >= v37 >> 1)
        {
          sub_10052642C((v37 > 1), v38 + 1, 1);
          v20 = v0[40];
        }

        v40 = v0[44];
        v39 = v0[45];
        v20[2] = v38 + 1;
        sub_1003D46A4(v39, v20 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + v38 * v26, type metadata accessor for RegisteredXPCClient);
        v0[83] = v20;
        if (!v17)
        {
          goto LABEL_12;
        }
      }

      v0[35] = &type metadata for NativeDistributor;
      v0[36] = sub_1003000A4();
      v0[32] = v45;
      v0[33] = v47;
      v29 = sub_100006D8C(v0 + 32, &type metadata for NativeDistributor);
      v31 = *v29;
      v30 = v29[1];
      v32 = *v29 == 0xD000000000000012 && 0x80000001006C2DF0 == v30;
      if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v31 == 0xD000000000000014 ? (v33 = 0x80000001006C47D0 == v30) : (v33 = 0), v33))
      {

        sub_10000710C(v0 + 32);
        goto LABEL_39;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000710C(v0 + 32);
      if (v34)
      {
        goto LABEL_39;
      }

LABEL_11:
      sub_1003D470C(v0[47], type metadata accessor for RegisteredXPCClient);
      v0[83] = v20;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
LABEL_12:
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v13 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_16;
    }
  }

  os_unfair_lock_unlock(v43 + 4);
  v41 = swift_task_alloc();
  v0[84] = v41;
  v41[2] = v20;
  v41[3] = v44;
  v41[4] = 0;
  v41[5] = 0;
  v42 = swift_task_alloc();
  v0[85] = v42;
  *v42 = v0;
  v42[1] = sub_1003D315C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1003D38A0()
{

  return _swift_task_switch(sub_1003D3A08, 0, 0);
}

uint64_t sub_1003D3A08()
{
  sub_10000710C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D3B18()
{

  return swift_deallocClassInstance();
}

void sub_1003D3B74(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for MarketplaceUpdateEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a1 onConnection:a2];
  if (![v6 existsInDatabase])
  {

    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_1003D3BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v48 = 0;
  type metadata accessor for MarketplaceUpdateEntity.Entity();
  v10 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  v11 = sub_10047EDB4();
  [v10 setPredicate:v11];

  if (a1)
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      v44 = a4;
      v45 = a5;
      v46 = v10;

      v13 = (a1 + 33);
      v14 = _swiftEmptyArrayStorage;
      v15 = _swiftEmptyArrayStorage;
      while (1)
      {
        v16 = *(v13 - 1);
        if (*v13)
        {
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_100009530(0, *(v14 + 2) + 1, 1, v14);
          }

          v21 = *(v14 + 2);
          v20 = *(v14 + 3);
          if (v21 >= v20 >> 1)
          {
            v14 = sub_100009530((v20 > 1), v21 + 1, 1, v14);
          }

          *(v14 + 2) = v21 + 1;
          v22 = &v14[16 * v21];
          *(v22 + 4) = v17;
          *(v22 + 5) = v19;
          if (v16 <= 3)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_100009530(0, *(v14 + 2) + 1, 1, v14);
          }

          v29 = *(v14 + 2);
          v28 = *(v14 + 3);
          if (v29 >= v28 >> 1)
          {
            v14 = sub_100009530((v28 > 1), v29 + 1, 1, v14);
          }

          *(v14 + 2) = v29 + 1;
          v30 = &v14[16 * v29];
          *(v30 + 4) = v25;
          *(v30 + 5) = v27;
          if (v16 <= 3)
          {
LABEL_19:
            if (v16 > 1)
            {
              if (v16 == 2)
              {
                v24 = 0x695F656C646E7562;
                v23 = 0xE900000000000064;
              }

              else
              {
                v24 = 0x765F656C646E7562;
                v23 = 0xEE006E6F69737265;
              }
            }

            else
            {
              v24 = 0x5F746E756F636361;
              v23 = 0xEA00000000006469;
              if (v16)
              {
                v24 = 0x726168735F707061;
                v23 = 0xED00006C72755F65;
              }
            }

            goto LABEL_30;
          }
        }

        if (v16 <= 5)
        {
          if (v16 == 4)
          {
            v23 = 0xE700000000000000;
            v24 = 0x6C72755F706461;
          }

          else
          {
            v24 = 0xD00000000000001ALL;
            v23 = 0x80000001006C2BB0;
          }
        }

        else if (v16 == 6)
        {
          v24 = 0xD000000000000014;
          v23 = 0x80000001006C3EA0;
        }

        else if (v16 == 7)
        {
          v23 = 0xE700000000000000;
          v24 = 0x64695F6D657469;
        }

        else
        {
          v24 = 0x5F6E6F6973726576;
          v23 = 0xEA00000000006469;
        }

LABEL_30:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100009530(0, *(v15 + 2) + 1, 1, v15);
        }

        v32 = *(v15 + 2);
        v31 = *(v15 + 3);
        if (v32 >= v31 >> 1)
        {
          v15 = sub_100009530((v31 > 1), v32 + 1, 1, v15);
        }

        *(v15 + 2) = v32 + 1;
        v33 = &v15[16 * v32];
        *(v33 + 4) = v24;
        *(v33 + 5) = v23;
        v13 += 2;
        if (!--v12)
        {

          v10 = v46;
          a4 = v44;
          a5 = v45;
          goto LABEL_37;
        }
      }
    }

    v14 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage;
LABEL_37:
    sub_100235974(v14);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setOrderingDirections:isa];

    sub_100235974(v15);

    v35 = Array._bridgeToObjectiveC()().super.isa;

    [v10 setOrderingProperties:v35];
  }

  v36 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:a6 descriptor:v10];
  v37 = swift_allocObject();
  v37[2] = &v48;
  v37[3] = a4;
  v37[4] = a5;
  v37[5] = a6;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1003D47BC;
  *(v38 + 24) = v37;
  aBlock[4] = sub_100302FA4;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10047E468;
  aBlock[3] = &unk_100763998;
  v39 = _Block_copy(aBlock);
  v40 = a6;

  [v36 enumeratePersistentIDsUsingBlock:v39];

  _Block_release(v39);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v43 = v48;

    return v43;
  }

  return result;
}

uint64_t sub_1003D41C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1003D4268(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_1003CE61C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003D4334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1003CB8E4(a1, v4, v5, v7, v6);
}

uint64_t sub_1003D43F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001F0E54;

  return sub_1004606B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003D4518(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_1003CEFFC(a1, v4, v5, v6);
}

uint64_t sub_1003D45D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077F378, &qword_1006A9140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D4640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisteredXPCClient(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D46A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003D470C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003D476C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

id sub_1003D47C8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_lockedCachedValues];
  v5 = sub_1003D53C0();
  *v4 = 0;
  *(v4 + 1) = v5;
  v6 = &v1[OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_debounceTask];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v1[OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_clientRegistry] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v12, "init");
  v8 = objc_opt_self();
  v9 = v7;
  result = [v8 sharedConnection];
  if (result)
  {
    v11 = result;
    [result registerObserver:v9];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003D48C0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_debounceTask];
  os_unfair_lock_lock(&v0[OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_debounceTask]);
  if (*(v2 + 1))
  {
    Task.cancel()();
  }

  *(v2 + 1) = 0;

  os_unfair_lock_unlock(v2);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v4 = result;
    [result unregisterObserver:v0];

    v5.receiver = v0;
    v5.super_class = ObjectType;
    return objc_msgSendSuper2(&v5, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003D4A14(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_debounceTask;
  os_unfair_lock_lock(v8);
  if (*(v8 + 8))
  {
    Task.cancel()();
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;

  *(v8 + 8) = sub_1004A673C(0, 0, v7, &unk_1006A91A0, v10);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_1003D4B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003D4C3C, 0, 0);
}

uint64_t sub_1003D4C3C()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1003D4D08;

  return sub_10049E724(1500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1003D4D08()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1003D4FEC;
  }

  else
  {
    v5 = sub_1003D4E78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003D4E78()
{
  *(v0 + 72) = type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003D4F10, v2, v1);
}

uint64_t sub_1003D4F10()
{

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    (*(v0 + 16))();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D4FEC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003D5054()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1003D53C0();
  v7 = v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_lockedCachedValues;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon27DeviceConfigurationObserver_lockedCachedValues));
  if (*(v7 + 8) != v6)
  {
    static Logger.library.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v8, v9, "[DeviceConfigurationObserver] Notifying clients about age rating change: %ld", v10, 0xCu);
    }

    (*(v3 + 8))(v5, v2);
    sub_10066C170(v6);
  }

  *(v7 + 8) = v6;
  os_unfair_lock_unlock(v7);
}

uint64_t sub_1003D5300(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F0E54;

  return sub_1003D4B7C(a1, v4, v5, v7, v6);
}

id sub_1003D53C0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005F5804();
  static Logger.library.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "[DeviceConfigurationObserver] Received age rating: %ld", v7, 0xCu);
  }

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1003D5514(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_1007834A8, &unk_1006A91A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id *sub_1003D557C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = v5;
  v7 = v4;
  v96 = *v4;
  v91 = type metadata accessor for Logger();
  v90 = *(v91 - 8);
  v12 = __chkstk_darwin(v91);
  v89 = &v74[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v77 = &v74[-v14];
  v15 = sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  __chkstk_darwin(v15 - 8);
  v86 = &v74[-v16];
  v85 = sub_1001F0C48(&qword_1007835A0, &qword_1006A9218);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v74[-v17];
  v83 = sub_1001F0C48(&qword_1007835A8, &qword_1006A9220);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v88 = &v74[-v18];
  v80 = sub_1001F0C48(&qword_1007835B0, &qword_1006A9228);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v74[-v19];
  v20 = type metadata accessor for UUID();
  v93 = *(v20 - 8);
  v94 = v20;
  __chkstk_darwin(v20);
  v22 = &v74[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001F0C48(&qword_1007835B8, &unk_1006A9230);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10069E990;
  *(v23 + 32) = 0;
  *(v23 + 40) = type metadata accessor for IPA_PreambleTask(0);
  *(v23 + 48) = &off_10075FAA8;
  *(v23 + 56) = 1;
  *(v23 + 64) = type metadata accessor for IPA_DownloadTask(0);
  *(v23 + 72) = &off_10076F370;
  *(v23 + 80) = 2;
  *(v23 + 88) = type metadata accessor for IPA_InstallTask(0);
  *(v23 + 96) = &off_1007609E0;
  *(v23 + 104) = 3;
  *(v23 + 112) = type metadata accessor for IPA_PostambleTask(0);
  *(v23 + 120) = &off_100770100;
  *(v23 + 128) = 7;
  v24 = type metadata accessor for IPA_FailTask(0);
  *(v23 + 136) = v24;
  *(v23 + 144) = &off_10076D518;
  *(v23 + 152) = 4;
  *(v23 + 160) = v24;
  *(v23 + 168) = &off_10076D518;
  v25 = a3[3];
  v100 = a3;
  v26 = *(*sub_100006D8C(a3, v25) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_progressCache);
  v95 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_progressCache;
  *(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_progressCache) = v26;
  type metadata accessor for AppInstallEntity.Entity();
  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v92 = a1;
  v28 = [v27 initWithPersistentID:a1 onConnection:a2];
  if (([v28 existsInDatabase] & 1) == 0)
  {

    type metadata accessor for InternalError(0);
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v31 = a4;
    goto LABEL_5;
  }

  v87 = a4;
  v29 = sub_100533460(5, v28);
  if (!v6)
  {
    v33 = (v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_bundleID);
    *v33 = v29;
    v33[1] = v30;
    sub_1005335D8(14, v28, v22);
    v34 = a2;
    v35 = *(v93 + 32);
    v76 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_installID;
    v35(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_installID, v22, v94);
    *(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_priority) = sub_100533870(31, v28);
    v36 = sub_100533A20(22, v28);
    v37 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_logKey;
    *(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_logKey) = v36;
    v38 = sub_1005AFEA0(a2, v92);
    if (v38)
    {
      v39 = v38;
      v40 = sub_100533B84(7, v38);
      v89 = v39;
      if (v40)
      {
        v75 = v40;
        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v51 & 1) == 0)
        {
          v92 = v37;

          v52 = v77;
          static Logger.install.getter();

          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v86 = v56;
            v88 = swift_slowAlloc();
            v98[0] = v88;
            *v55 = 138412546;
            v57 = *(v7 + v92);
            *(v55 + 4) = v57;
            *v56 = v57;
            *(v55 + 12) = 2082;
            LOBYTE(v97[0]) = v75 & 1;
            v58 = v57;
            v59 = String.init<A>(describing:)();
            v61 = sub_1002346CC(v59, v60, v98);

            *(v55 + 14) = v61;
            _os_log_impl(&_mh_execute_header, v53, v54, "[%@] Expected package format 'ipa' but found '%{public}s'", v55, 0x16u);
            sub_1000032A8(v86, &qword_10077F920, &qword_10069E6A0);
            v34 = a2;

            sub_10000710C(v88);

            (*(v90 + 8))(v77, v91);
          }

          else
          {

            (*(v90 + 8))(v52, v91);
          }

          v73 = v87;
          type metadata accessor for InternalError(0);
          sub_100274098();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v50 = v73;
LABEL_13:
          sub_10000710C(v50);
          (*(v93 + 8))(v7 + v76, v94);

          goto LABEL_6;
        }
      }

      else
      {
      }

      sub_100231CE8(v100, v98);
      v62 = *(v7 + v37);
      v96 = a2;
      sub_10020A980(v87, v97);
      type metadata accessor for AppInstallEngine(0);
      v63 = swift_allocObject();
      v64 = v62;
      v95 = v64;
      swift_defaultActor_initialize();
      (*(v93 + 56))(v63 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_coordinatorID, 1, 1, v94);
      *(v63 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentDownload) = 0;
      *(v63 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_currentTask) = 0;
      v63[34] = v23;
      v63[14] = v92;
      v63[15] = v64;
      sub_10020A980(v97, (v63 + 16));
      sub_100231CE8(v98, (v63 + 22));
      v94 = *(*sub_100006D8C(v98, v99) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
      v63[21] = v94;
      v65 = *(*sub_100006D8C(v98, v99) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
      v63[38] = type metadata accessor for AppInstallScheduler(0);
      v63[39] = &off_1007697A8;
      v63[35] = v65;
      type metadata accessor for AppInstallEngine.Event(0);
      v66 = v84;
      v67 = v81;
      v68 = v85;
      (*(v84 + 104))(v81, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v85);
      v95 = v95;

      v69 = v78;
      static AsyncStream.makeStream(of:bufferingPolicy:)();
      (*(v66 + 8))(v67, v68);
      (*(v79 + 32))(v63 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_eventStream, v69, v80);
      (*(v82 + 32))(v63 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon16AppInstallEngine_eventContinuation, v88, v83);
      v70 = type metadata accessor for TaskPriority();
      v71 = v86;
      (*(*(v70 - 8) + 56))(v86, 1, 1, v70);
      v72 = swift_allocObject();
      v72[2] = 0;
      v72[3] = 0;
      v72[4] = v63;

      sub_1004F8754(0xD00000000000001BLL, 0x80000001006CAD40, v71, &unk_1006A9240, v72);

      sub_10000710C(v87);
      sub_1000032A8(v71, &unk_100780380, &qword_10069E9E0);
      sub_10000710C(v97);
      sub_10000710C(v98);
      *(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_engine) = v63;
      goto LABEL_7;
    }

    v41 = v89;
    static Logger.install.getter();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = v37;
      v47 = v45;
      *v44 = 138412290;
      v48 = *(v7 + v46);
      *(v44 + 4) = v48;
      *v45 = v48;
      v49 = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "[%@] Attempted to start installation with no packages", v44, 0xCu);
      sub_1000032A8(v47, &qword_10077F920, &qword_10069E6A0);
    }

    (*(v90 + 8))(v41, v91);
    type metadata accessor for InternalError(0);
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v50 = v87;
    goto LABEL_13;
  }

  v31 = v87;
LABEL_5:
  sub_10000710C(v31);
LABEL_6:

  swift_deallocPartialClassInstance();
LABEL_7:
  sub_10000710C(v100);
  return v7;
}

uint64_t sub_1003D63F8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  type metadata accessor for URL();
  v2[6] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958, &qword_10069FC00);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003D6528, 0, 0);
}

uint64_t sub_1003D6528(uint64_t a1)
{
  v60 = v1;
  v2 = v1[4];
  static Logger.install.getter();
  v1[2] = *v2;
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v1[12] = v4;
  v5 = *(v2 + 24);
  v1[13] = v5;
  v6 = *(v2 + 32);
  v1[14] = v6;
  v7 = *(v2 + 40);

  sub_1003D7F98((v1 + 2), (v1 + 3));
  v8 = v3;
  sub_1003D8008(v4, v5, v6, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  sub_1000032A8((v1 + 2), &qword_1007835C0, &qword_1006A9258);

  v58 = v5;
  v11 = v5;
  v12 = v6;
  sub_1003D802C(v4, v11, v6, v7);
  if (os_log_type_enabled(v9, v10))
  {
    v13 = v1[5];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v59 = v16;
    *v14 = 138412546;
    v17 = *(*(v13 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_engine) + 120);
    *(v14 + 4) = v17;
    *v15 = v17;
    *(v14 + 12) = 2080;
    v56 = v16;
    v57 = v4;
    if (v7 <= 1)
    {
      if (v7)
      {
        v19 = 0x64656C696166;
      }

      else
      {
        v19 = 0x6574656C706D6F63;
      }

      if (v7)
      {
        v18 = 0xE600000000000000;
      }

      else
      {
        v18 = 0xE900000000000064;
      }
    }

    else if (v7 == 2)
    {
      v18 = 0xE800000000000000;
      v19 = 0x73736572676F7270;
    }

    else if (v7 == 3)
    {
      v18 = 0xEB00000000726564;
      v19 = 0x6C6F686563616C70;
    }

    else
    {
      v33 = v12 | v58;
      if (v12 | v58 | v4)
      {
        if (v4 != 1 || v33)
        {
          v37 = v33 == 0;
          v38 = v4 == 2;
          if (v38 && v37)
          {
            v19 = 0x64656D75736572;
          }

          else
          {
            v19 = 0x697469726F697270;
          }

          if (v38 && v37)
          {
            v18 = 0xE700000000000000;
          }

          else
          {
            v18 = 0xEB0000000064657ALL;
          }
        }

        else
        {
          v18 = 0xE600000000000000;
          v19 = 0x646573756170;
        }
      }

      else
      {
        v18 = 0xE800000000000000;
        v19 = 0x64656C65636E6163;
      }
    }

    v39 = v1[10];
    v54 = v1[9];
    v55 = v1[11];
    v40 = v17;
    v41 = sub_1002346CC(v19, v18, &v59);

    *(v14 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Handling coordinator event '%s'", v14, 0x16u);
    sub_1000032A8(v15, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v56);

    (*(v39 + 8))(v55, v54);
    v4 = v57;
    if (v7 <= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v20 = v1[10];
    v21 = v1[11];
    v22 = v1[9];

    (*(v20 + 8))(v21, v22);
    if (v7 <= 1)
    {
LABEL_49:
      if (!v7)
      {
        if (!v4)
        {
          v50 = v1[8];
          v51 = type metadata accessor for FilePath();
          (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
          goto LABEL_58;
        }

        v42 = v1[7];
        sub_1003D8008(v4, v58, v12, 0);
        v43 = [v4 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        FilePath.init(_:)();
        v44 = type metadata accessor for FilePath();
        v45 = *(v44 - 8);
        v30 = (*(v45 + 48))(v42, 1, v44);
        if (v30 != 1)
        {
          v48 = v1[7];
          v47 = v1[8];
          sub_1003D802C(v4, v58, v12, 0);
          (*(v45 + 32))(v47, v48, v44);
          (*(v45 + 56))(v47, 0, 1, v44);
LABEL_58:
          v52 = swift_task_alloc();
          v1[21] = v52;
          *v52 = v1;
          v52[1] = sub_1003D72A0;
          v53 = v1[8];

          return sub_100636928(v53);
        }

        __break(1u);
        return _swift_task_switch(v30, v28, v46);
      }

      v49 = *(v1[5] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_engine);
      v1[16] = v49;
      swift_errorRetain();
      v30 = sub_1003D6FB4;
      v28 = v49;
LABEL_54:
      v46 = 0;

      return _swift_task_switch(v30, v28, v46);
    }
  }

  if (v7 == 2)
  {
    v28 = *(v1[5] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_progressCache);
    v29 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_installID;
    v1[19] = v28;
    v1[20] = v29;
    v30 = sub_1003D71F8;
    goto LABEL_54;
  }

  if (v7 == 3)
  {
    v23 = v1[5];
    v24 = *(v23 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_logKey);
    v25 = *(v23 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_priority);
    sub_1003D8008(v4, v58, v12, 3);
    sub_100625400(v4, v25, v24);
    sub_1003D802C(v4, v58, v12, 3);

    v26 = v1[1];

    return v26();
  }

  else
  {
    v31 = v12 | v58;
    if (v12 | v58 | v4)
    {
      if (v4 != 1 || v31)
      {
        if (v4 != 2 || v31)
        {
          v36 = swift_task_alloc();
          v1[15] = v36;
          *v36 = v1;
          v36[1] = sub_1003D6E48;

          return sub_10063AE3C();
        }

        else
        {
          v35 = swift_task_alloc();
          v1[26] = v35;
          *v35 = v1;
          v35[1] = sub_1003D7B2C;

          return sub_10063877C();
        }
      }

      else
      {
        sub_100624AC0(*(v1[5] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_bundleID), *(v1[5] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_bundleID + 8), *(v1[5] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_priority), *(v1[5] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_logKey));
        v32 = swift_task_alloc();
        v1[24] = v32;
        *v32 = v1;
        v32[1] = sub_1003D7810;

        return sub_1006378C4();
      }
    }

    else
    {
      v34 = swift_task_alloc();
      v1[22] = v34;
      *v34 = v1;
      v34[1] = sub_1003D7460;

      return sub_1006371A4();
    }
  }
}

uint64_t sub_1003D6E48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003D6FB4()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = swift_task_alloc();
  v0[17] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1003D709C;

  return (sub_10052F328)();
}

uint64_t sub_1003D709C()
{
  v2 = *v1;

  v3 = *(v2 + 128);
  if (v0)
  {

    v4 = sub_1003D77F4;
  }

  else
  {

    v4 = sub_1003D75CC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003D71F8()
{
  sub_100384BD0((*(v0 + 40) + *(v0 + 160)), *(v0 + 112) / 100.0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D72A0()
{
  v1 = *(*v0 + 64);

  sub_1000032A8(v1, &qword_10077E958, &qword_10069FC00);

  return _swift_task_switch(sub_1003D73C8, 0, 0);
}

uint64_t sub_1003D73C8()
{
  sub_1003D802C(*(v0 + 96), *(v0 + 104), *(v0 + 112), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D7460()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003D75CC()
{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1003D7660;

  return sub_10063C2D0(7);
}

uint64_t sub_1003D7660()
{

  return _swift_task_switch(sub_1003D775C, 0, 0);
}

uint64_t sub_1003D775C()
{
  sub_1003D802C(*(v0 + 96), *(v0 + 104), *(v0 + 112), 1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D7810()
{

  return _swift_task_switch(sub_1003D790C, 0, 0);
}

uint64_t sub_1003D790C()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_installID;
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_1003D79C0;

  return sub_10038505C(v1 + v2);
}

uint64_t sub_1003D79C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003D7B2C(char a1)
{
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_1003D7C2C, 0, 0);
}

uint64_t sub_1003D7C2C()
{
  if (*(v0 + 216) == 1)
  {
    sub_100624F60(*(*(v0 + 40) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_bundleID), *(*(v0 + 40) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_bundleID + 8), *(*(v0 + 40) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_priority), *(*(v0 + 40) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_logKey));
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D7CF0()
{
  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon14IPA_AppInstall_installID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IPA_AppInstall(uint64_t a1)
{
  result = qword_1007834F0;
  if (!qword_1007834F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D7E24(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1003D7EE4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1001F0E54;

  return sub_10063E48C();
}

uint64_t sub_1003D7F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_1007835C0, &qword_1006A9258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1003D8008(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
    return result;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }

    return result;
  }

  return swift_errorRetain();
}

void sub_1003D802C(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
LABEL_4:

    return;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t sub_1003D8070(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 909455955;
  }

  else
  {
    v3 = 0x6E69616C70;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 909455955;
  }

  else
  {
    v5 = 0x6E69616C70;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1003D810C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003D8184(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1003D81E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003D825C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100759FA0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1003D82BC(uint64_t *a1@<X8>)
{
  v2 = 909455955;
  if (!*v1)
  {
    v2 = 0x6E69616C70;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1003D82FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003D83D8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1003D84A0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003D8578@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003DB30C(*a1);
  *a2 = result;
  return result;
}

void sub_1003D85A8(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x746963696C706D69;
  v4 = 0xED00006E656B6F74;
  v5 = 0x5F68736572666572;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000002FLL;
    v4 = 0x80000001006C3700;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001006C36D0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

Swift::Int sub_1003D8640()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1003D869C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003D86E4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A120, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1003D8760(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1003D8874@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003DB470(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1003D88A4@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00746E696F7064;
  v4 = 0x6E655F6E656B6F74;
  v5 = 0x80000001006C3780;
  v6 = 0xD000000000000015;
  v7 = 0x80000001006C37A0;
  v8 = 0xD000000000000020;
  result = 0xD000000000000018;
  if (v2 != 4)
  {
    v8 = 0xD000000000000018;
    v7 = 0x80000001006C37D0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001006C3760;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000001006C3730;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
  return result;
}

unint64_t sub_1003D8980()
{
  v1 = *v0;
  v2 = 0x6E655F6E656B6F74;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000020;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1003D8A58@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003DB470(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003D8A80(uint64_t a1)
{
  v2 = sub_1003DB150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003D8ABC(uint64_t a1)
{
  v2 = sub_1003DB150();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003D8AF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  v4 = __chkstk_darwin(v3 - 8);
  v111 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v113 = &v100 - v6;
  v115 = type metadata accessor for URL();
  v112 = *(v115 - 8);
  v7 = __chkstk_darwin(v115);
  v110 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v100 - v9;
  v11 = sub_1001F0C48(&qword_1007836A8, &qword_1006A9518);
  v114 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v100 - v12;
  v14 = type metadata accessor for OAuthServerMetadata(0);
  __chkstk_darwin(v14);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006D8C(a1, a1[3]);
  sub_1003DB150();
  v17 = v116;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_10000710C(a1);
  }

  v19 = v115;
  v20 = v113;
  v116 = v10;
  v107 = v16;
  v108 = a1;
  v106 = v14;
  LOBYTE(v118) = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v105 = 0;
  URL.init(string:)();

  v21 = v112;
  v22 = v19;
  v23 = v112[6];
  v24 = v23(v20, 1, v22);
  a1 = v108;
  v25 = v114;
  if (v24 == 1)
  {
    sub_10038B5B4(v20);
    type metadata accessor for InternalError(0);
    sub_1003DAE40(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v25 + 8))(v13, v11);
    return sub_10000710C(a1);
  }

  v26 = v116;
  v113 = v21[4];
  (v113)(v116, v20, v22);
  v104 = v21[2];
  v104(v107, v26, v22);
  LOBYTE(v118) = 1;
  v27 = v11;
  v28 = v105;
  KeyedDecodingContainer.decode(_:forKey:)();
  v105 = v28;
  if (v28)
  {
    v29 = v21[1];
    v29(v26, v115);
    (*(v114 + 8))(v13, v11);
LABEL_9:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    goto LABEL_10;
  }

  v30 = v113;
  v102 = v13;
  v103 = v27;
  v31 = v111;
  URL.init(string:)();

  v32 = v23(v31, 1, v115);
  v33 = v114;
  if (v32 == 1)
  {
    sub_10038B5B4(v31);
    type metadata accessor for InternalError(0);
    sub_1003DAE40(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    v34 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v105 = v34;
    swift_willThrow();
    v29 = v112[1];
    v29(v116, v115);
    (*(v33 + 8))(v102, v103);
    goto LABEL_9;
  }

  v40 = v110;
  v41 = v115;
  (v30)(v110, v31, v115);
  v42 = v106;
  v104(&v107[v106[5]], v40, v41);
  v43 = sub_1001F0C48(&unk_10077FB40, &qword_10069E770);
  v117 = 2;
  v44 = sub_100006DD0(&qword_100780CA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v45 = v102;
  v46 = v103;
  v47 = v105;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v48 = v41;
  v49 = v116;
  if (v47)
  {
    v105 = v47;
    v29 = v112[1];
    v29(v40, v48);
    v29(v49, v48);
    (*(v114 + 8))(v45, v46);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v35 = 1;
    goto LABEL_10;
  }

  *&v107[v42[6]] = v118;
  v117 = 3;
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v105 = 0;
  v50 = v118;
  if (!v118)
  {
    v64 = &off_10075A1D8;
    v63 = v107;
LABEL_35:
    v65 = v105;
    *&v63[v106[7]] = v64;
    v117 = 4;
    v66 = v103;
    result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v67 = v114;
    v68 = v116;
    v105 = v65;
    if (v65)
    {
      v29 = v112[1];
      v29(v40, v48);
      v29(v68, v48);
      (*(v67 + 8))(v45, v66);
      v38 = 0;
      v35 = 1;
      v36 = 1;
      v37 = 1;
    }

    else
    {
      v69 = v118;
      if (v118)
      {
        v104 = v44;
        v111 = v43;
        v70 = 0;
        v71 = *(v118 + 16);
        v101 = v118 + 40;
        v113 = _swiftEmptyArrayStorage;
LABEL_39:
        v72 = (v101 + 16 * v70);
        while (v71 != v70)
        {
          if (v70 >= *(v69 + 16))
          {
            goto LABEL_65;
          }

          ++v70;
          v73 = *(v72 - 1);
          v74 = *v72;

          v75._countAndFlagsBits = v73;
          v75._object = v74;
          v76 = _findStringSwitchCase(cases:string:)(&off_10075A200, v75);

          if (v76)
          {
            v72 += 2;
            if (v76 != 1)
            {
              continue;
            }
          }

          v77 = v113;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1003637F0(0, *(v77 + 2) + 1, 1, v77);
            v77 = result;
          }

          v79 = *(v77 + 2);
          v78 = *(v77 + 3);
          if (v79 >= v78 >> 1)
          {
            result = sub_1003637F0((v78 > 1), v79 + 1, 1, v77);
            v77 = result;
          }

          *(v77 + 2) = v79 + 1;
          v113 = v77;
          v77[v79 + 32] = v76;
          goto LABEL_39;
        }

        v67 = v114;
        v48 = v115;
        v80 = v107;
      }

      else
      {
        v113 = 0;
        v80 = v107;
      }

      v81 = v105;
      *&v80[v106[8]] = v113;
      v117 = 5;
      v82 = v103;
      result = KeyedDecodingContainer.decode<A>(_:forKey:)();
      v83 = v116;
      v105 = v81;
      if (!v81)
      {
        v84 = 0;
        v85 = v118;
        v86 = *(v118 + 16);
        v87 = (v118 + 40);
        v113 = _swiftEmptyArrayStorage;
        v111 = (v118 + 40);
LABEL_54:
        v88 = &v87[16 * v84];
        while (v86 != v84)
        {
          if (v84 >= *(v85 + 16))
          {
            goto LABEL_66;
          }

          ++v84;
          v89 = v88 + 2;
          v90 = *(v88 - 1);
          v91 = *v88;

          v92._countAndFlagsBits = v90;
          v92._object = v91;
          v93 = _findStringSwitchCase(cases:string:)(&off_10075A250, v92);

          v88 = v89;
          v48 = v115;
          v83 = v116;
          if (!v93)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1003636FC(0, *(v113 + 2) + 1, 1, v113);
              v113 = result;
            }

            v95 = *(v113 + 2);
            v94 = *(v113 + 3);
            v96 = v95 + 1;
            if (v95 >= v94 >> 1)
            {
              result = sub_1003636FC((v94 > 1), v95 + 1, 1, v113);
              v113 = result;
            }

            *(v113 + 2) = v96;
            v87 = v111;
            goto LABEL_54;
          }
        }

        v97 = v40;
        v98 = v112[1];
        v98(v97, v48);
        v98(v83, v48);
        (*(v114 + 8))(v45, v103);
        v99 = v107;
        *&v107[v106[9]] = v113;
        sub_1003DB1A4(v99, v109);
        sub_10000710C(v108);
        return sub_1003DB208(v99);
      }

      v29 = v112[1];
      v29(v40, v48);
      v29(v83, v48);
      (*(v67 + 8))(v45, v82);
      v35 = 1;
      v36 = 1;
      v37 = 1;
      v38 = 1;
    }

LABEL_10:
    v39 = v107;
    sub_10000710C(v108);
    result = (v29)(v39, v115);
    if (v35)
    {
      result = (v29)(&v39[v106[5]], v115);
      if (!v36)
      {
LABEL_12:
        if (!v37)
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

    else if (!v36)
    {
      goto LABEL_12;
    }

    if (!v37)
    {
LABEL_13:
      if (!v38)
      {
        return result;
      }
    }

LABEL_17:

    if (!v38)
    {
      return result;
    }
  }

  v104 = v44;
  v111 = v43;
  v51 = 0;
  v52 = *(v118 + 16);
  v53 = v118 + 40;
  v113 = _swiftEmptyArrayStorage;
  v101 = v118 + 40;
LABEL_24:
  v54 = (v53 + 16 * v51);
  while (1)
  {
    if (v52 == v51)
    {

      v63 = v107;
      v43 = v111;
      v44 = v104;
      v64 = v113;
      goto LABEL_35;
    }

    if (v51 >= *(v50 + 16))
    {
      break;
    }

    ++v51;
    v55 = v54 + 2;
    v56 = *(v54 - 1);
    v57 = *v54;

    v58._countAndFlagsBits = v56;
    v58._object = v57;
    v59 = _findStringSwitchCase(cases:string:)(&off_10075A158, v58);

    v54 = v55;
    v48 = v115;
    if (v59 < 4)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1003638E4(0, *(v113 + 2) + 1, 1, v113);
        v113 = result;
      }

      v60 = v113;
      v62 = *(v113 + 2);
      v61 = *(v113 + 3);
      if (v62 >= v61 >> 1)
      {
        result = sub_1003638E4((v61 > 1), v62 + 1, 1, v113);
        v60 = result;
      }

      *(v60 + 2) = v62 + 1;
      v113 = v60;
      v60[v62 + 32] = v59;
      v53 = v101;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1003D97CC(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1001F0C48(&qword_1007836B8, &unk_1006A9520);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - v8;
  sub_100006D8C(a1, a1[3]);
  sub_1003DB150();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  URL.absoluteString.getter();
  LOBYTE(v54) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v7 + 8))(v9, v6);
  }

  v11 = type metadata accessor for OAuthServerMetadata(0);
  URL.absoluteString.getter();
  LOBYTE(v54) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();

  v54 = *(v4 + v11[6]);
  v53 = 2;
  sub_1001F0C48(&qword_100784430, &qword_1006A2630);
  sub_1003DB264();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v12 = v11[7];
  v49 = v4;
  v13 = *(v4 + v12);
  v14 = *(v13 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v47 = v11;
    v48 = v6;
    v50 = 0;
    v51 = v7;
    v52 = v9;
    v54 = _swiftEmptyArrayStorage;
    sub_100526304(0, v14, 0);
    v15 = v54;
    v16 = (v13 + 32);
    v17 = 0x80000001006C3700;
    do
    {
      v19 = *v16++;
      v18 = v19;
      v20 = 0xD00000000000002FLL;
      if (v19 == 2)
      {
        v20 = 0x5F68736572666572;
        v21 = 0xED00006E656B6F74;
      }

      else
      {
        v21 = v17;
      }

      if (v18)
      {
        v22 = 0x746963696C706D69;
      }

      else
      {
        v22 = 0xD000000000000012;
      }

      if (v18)
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v23 = 0x80000001006C36D0;
      }

      if (v18 <= 1)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      if (v18 <= 1)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21;
      }

      v54 = v15;
      v27 = v15[2];
      v26 = v15[3];
      if (v27 >= v26 >> 1)
      {
        v29 = v17;
        sub_100526304((v26 > 1), v27 + 1, 1);
        v17 = v29;
        v15 = v54;
      }

      v15[2] = v27 + 1;
      v28 = &v15[2 * v27];
      v28[4] = v24;
      v28[5] = v25;
      --v14;
    }

    while (v14);
    v11 = v47;
    v6 = v48;
    v7 = v51;
    v9 = v52;
    v3 = v50;
  }

  v54 = v15;
  v53 = 3;
  v30 = sub_1001F0C48(&unk_10077FB40, &qword_10069E770);
  v31 = sub_100006DD0(&qword_100780CC0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v3)
  {

    return (*(v7 + 8))(v9, v6);
  }

  v48 = v31;

  v32 = *(v49 + v11[8]);
  if (!v32)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v52 = v9;
  v33 = *(v32 + 16);
  v34 = _swiftEmptyArrayStorage;
  if (v33)
  {
    v49 = v30;
    v50 = 0;
    v51 = v7;
    v54 = _swiftEmptyArrayStorage;
    sub_100526304(0, v33, 0);
    v34 = v54;
    v35 = (v32 + 32);
    v36 = v54[2];
    v37 = 2 * v36;
    v38 = 0x6E69616C70;
    do
    {
      if (*v35)
      {
        v39 = 909455955;
      }

      else
      {
        v39 = v38;
      }

      if (*v35)
      {
        v40 = 0xE400000000000000;
      }

      else
      {
        v40 = 0xE500000000000000;
      }

      v54 = v34;
      v41 = v34[3];
      v42 = v36 + 1;
      if (v36 >= v41 >> 1)
      {
        v44 = v38;
        sub_100526304((v41 > 1), v36 + 1, 1);
        v38 = v44;
        v34 = v54;
      }

      v34[2] = v42;
      v43 = &v34[v37];
      v43[4] = v39;
      v43[5] = v40;
      v37 += 2;
      ++v35;
      v36 = v42;
      --v33;
    }

    while (v33);
    v7 = v51;
  }

  v54 = v34;
  v53 = 4;
  v45 = v52;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v7 + 8))(v45, v6);
}

uint64_t sub_1003D9D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_1003D9F54, 0, 0);
}

uint64_t sub_1003D9F54()
{
  if (os_variant_has_internal_content())
  {
    *(v0 + 240) = 0;
    v1 = String._bridgeToObjectiveC()();
    v2 = String._bridgeToObjectiveC()();
    CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 240));
  }

  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);

  sub_1005D6FB4(v7, v6, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_10038B5B4(*(v0 + 112));
    type metadata accessor for InternalError(0);
    sub_1003DAE40(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v0 + 144);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v15 = *(v0 + 104);
    v16 = *(v0 + 96);
    v24 = *(v0 + 88);
    v25 = *(v0 + 80);
    v26 = *(v0 + 40);
    (*(v13 + 32))(v11, *(v0 + 112), v14);
    v17 = *(v13 + 16);
    *(v0 + 168) = v17;
    *(v0 + 176) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v10, v11, v14);
    v17(v12, v10, v14);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    URLRequest.httpBody.setter();
    v18 = *(v13 + 8);
    *(v0 + 184) = v18;
    *(v0 + 192) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v10, v14);
    (*(v24 + 16))(v16, v15, v25);
    v19.value._countAndFlagsBits = sub_10051E4A4(*(v26 + 24));
    v20._countAndFlagsBits = 0x6567412D72657355;
    v20._object = 0xEA0000000000746ELL;
    URLRequest.setValue(_:forHTTPHeaderField:)(v19, v20);

    URLRequest.timeoutInterval.setter();
    URLRequest.cachePolicy.setter();
    URLRequest.httpShouldHandleCookies.setter();
    v21 = swift_task_alloc();
    *(v0 + 200) = v21;
    *v21 = v0;
    v21[1] = sub_1003DA3BC;
    v22 = *(v0 + 96);
    v23 = *(v0 + 48);

    return sub_10051E728(v22, v23);
  }
}

uint64_t sub_1003DA3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[26] = a1;
  v5[27] = a2;
  v5[28] = a3;
  v5[29] = v3;

  if (v3)
  {
    v6 = sub_1003DAA68;
  }

  else
  {
    v6 = sub_1003DA500;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003DA500()
{
  v53 = v0;
  v1 = v0[28];
  v2 = v0[13];
  v3 = v0[10];
  v4 = *(v0[11] + 8);
  v4(v0[12], v3);
  v4(v2, v3);
  if ([v1 statusCode] != 200)
  {
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[26];
    v15 = [v12 statusCode];
    sub_10039403C();
    swift_allocError();
    *v16 = v15;
    *(v16 + 8) = 0;
    swift_willThrow();

    v10 = v14;
    v11 = v13;
    goto LABEL_5;
  }

  v5 = v0[29];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v6 = type metadata accessor for OAuthServerMetadata(0);
  sub_1003DAE40(&qword_100782870, type metadata accessor for OAuthServerMetadata, byte_1006A94F0);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[26];
  if (v5)
  {

    v10 = v9;
    v11 = v7;
LABEL_5:
    sub_100007158(v10, v11);
    v17 = v0[21];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[15];
    v21 = v0[6];
    static Logger.general.getter();
    v17(v19, v18, v20);
    v22 = v21;
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[23];
    v27 = v0[17];
    v28 = v0[15];
    v29 = v0[8];
    v30 = v0[9];
    v31 = v0[7];
    if (v25)
    {
      log = v23;
      v32 = v0[6];
      v51 = v0[9];
      v33 = swift_slowAlloc();
      v47 = v24;
      v34 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52 = v49;
      *v33 = 138412802;
      *(v33 + 4) = v32;
      *v34 = v32;
      *(v33 + 12) = 2082;
      v35 = v32;
      v36 = URL.absoluteString.getter();
      v50 = v31;
      v38 = v37;
      v26(v27, v28);
      v39 = sub_1002346CC(v36, v38, &v52);

      *(v33 + 14) = v39;
      *(v33 + 22) = 2114;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 24) = v40;
      v34[1] = v40;
      _os_log_impl(&_mh_execute_header, log, v47, "[%@] Error trying to load OAuth endpoints from: %{public}s: %{public}@", v33, 0x20u);
      sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
      swift_arrayDestroy();

      sub_10000710C(v49);

      (*(v29 + 8))(v51, v50);
    }

    else
    {

      v26(v27, v28);
      (*(v29 + 8))(v30, v31);
    }

    v41 = v0[23];
    v42 = v0[20];
    v43 = v0[15];
    swift_willThrow();
    v41(v42, v43);

    v44 = v0[1];
    goto LABEL_9;
  }

  v46 = v0[2];
  (v0[23])(v0[20], v0[15]);

  sub_100007158(v9, v7);
  (*(*(v6 - 8) + 56))(v46, 0, 1, v6);

  v44 = v0[1];
LABEL_9:

  return v44();
}

uint64_t sub_1003DAA68()
{
  v38 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = *(v0[11] + 8);
  v3(v0[12], v2);
  v3(v1, v2);
  v4 = v0[21];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[15];
  v8 = v0[6];
  static Logger.general.getter();
  v4(v6, v5, v7);
  v9 = v8;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  LOBYTE(v5) = static os_log_type_t.error.getter();

  v36 = v5;
  v11 = os_log_type_enabled(v10, v5);
  v12 = v0[23];
  v13 = v0[17];
  v14 = v0[15];
  v15 = v0[8];
  v16 = v0[9];
  v17 = v0[7];
  if (v11)
  {
    log = v10;
    v18 = v0[6];
    v35 = v0[9];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v19 = 138412802;
    *(v19 + 4) = v18;
    *v20 = v18;
    *(v19 + 12) = 2082;
    v21 = v18;
    v22 = URL.absoluteString.getter();
    v34 = v17;
    v24 = v23;
    v12(v13, v14);
    v25 = sub_1002346CC(v22, v24, &v37);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v26;
    v20[1] = v26;
    _os_log_impl(&_mh_execute_header, log, v36, "[%@] Error trying to load OAuth endpoints from: %{public}s: %{public}@", v19, 0x20u);
    sub_1001F0C48(&qword_10077F920, &qword_10069E6A0);
    swift_arrayDestroy();

    sub_10000710C(v33);

    (*(v15 + 8))(v35, v34);
  }

  else
  {

    v12(v13, v14);
    (*(v15 + 8))(v16, v17);
  }

  v27 = v0[23];
  v28 = v0[20];
  v29 = v0[15];
  swift_willThrow();
  v27(v28, v29);

  v30 = v0[1];

  return v30();
}

uint64_t type metadata accessor for OAuthServerMetadata(uint64_t a1)
{
  result = qword_100783620;
  if (!qword_100783620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003DAE40(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1003DAEB0(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10037F848(319, &qword_100783630, &unk_10077FB40, &qword_10069E770);
    if (v2 <= 0x3F)
    {
      sub_1003DAFCC(319, &qword_100783638, &type metadata for OAuthGrantType);
      if (v3 <= 0x3F)
      {
        sub_10037F848(319, &qword_100783640, &qword_100783648, &unk_1006A9290);
        if (v4 <= 0x3F)
        {
          sub_1003DAFCC(319, &unk_100783650, &type metadata for OAuthResponseType);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1003DAFCC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1003DB04C()
{
  result = qword_100783690;
  if (!qword_100783690)
  {
    result = swift_getWitnessTable("\t}\t", &type metadata for OAuthGrantType, v0, v1);
    atomic_store(result, &qword_100783690);
  }

  return result;
}

unint64_t sub_1003DB0A4()
{
  result = qword_100783698;
  if (!qword_100783698)
  {
    result = swift_getWitnessTable("i|\t", &type metadata for OAuthCodeChallengeMethod, v0, v1);
    atomic_store(result, &qword_100783698);
  }

  return result;
}

unint64_t sub_1003DB0FC()
{
  result = qword_1007836A0;
  if (!qword_1007836A0)
  {
    result = swift_getWitnessTable(byte_1006A94A0, &type metadata for OAuthResponseType, v0, v1);
    atomic_store(result, &qword_1007836A0);
  }

  return result;
}

unint64_t sub_1003DB150()
{
  result = qword_1007836B0;
  if (!qword_1007836B0)
  {
    result = swift_getWitnessTable(byte_1006A962C, &type metadata for OAuthServerMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1007836B0);
  }

  return result;
}

uint64_t sub_1003DB1A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthServerMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DB208(uint64_t a1)
{
  v2 = type metadata accessor for OAuthServerMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003DB264()
{
  result = qword_1007836C0;
  if (!qword_1007836C0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1001F76D0(&qword_100784430, &qword_1006A2630);
    v4[0] = sub_100006DD0(&qword_100780CC0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_1007836C0);
  }

  return result;
}

unint64_t sub_1003DB30C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100759FF0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1003DB36C()
{
  result = qword_1007836C8;
  if (!qword_1007836C8)
  {
    result = swift_getWitnessTable("ez\t", &type metadata for OAuthServerMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1007836C8);
  }

  return result;
}

unint64_t sub_1003DB3C4()
{
  result = qword_1007836D0;
  if (!qword_1007836D0)
  {
    result = swift_getWitnessTable(byte_1006A953C, &type metadata for OAuthServerMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1007836D0);
  }

  return result;
}

unint64_t sub_1003DB41C()
{
  result = qword_1007836D8;
  if (!qword_1007836D8)
  {
    result = swift_getWitnessTable("m{\t", &type metadata for OAuthServerMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1007836D8);
  }

  return result;
}

unint64_t sub_1003DB470(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A070, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003DB4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[45] = a3;
  v4[46] = a4;
  v4[43] = a1;
  v4[44] = a2;
  sub_1001F0C48(&qword_10077F380, &qword_1006A96D0);
  v4[47] = swift_task_alloc();
  v5 = type metadata accessor for ManagedAppStatus.Reason();
  v4[48] = v5;
  v4[49] = *(v5 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v6 = type metadata accessor for DMCAppsInstallStateResult();
  v4[52] = v6;
  v4[53] = *(v6 - 8);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v7 = sub_1001F0C48(&qword_10077F388, &qword_10069FBD0);
  v4[58] = v7;
  v4[59] = *(v7 - 8);
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v8 = type metadata accessor for DMCAppsScope();
  v4[62] = v8;
  v4[63] = *(v8 - 8);
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v9 = type metadata accessor for DMCAppsClient();
  v4[70] = v9;
  v4[71] = *(v9 - 8);
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v4[75] = v10;
  v4[76] = *(v10 - 8);
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();

  return _swift_task_switch(sub_1003DB874, 0, 0);
}

uint64_t sub_1003DB874(uint64_t a1)
{
  v51 = v1;
  v2 = *(v1 + 368);
  v3 = *(v1 + 352);
  static Logger.ddm.getter();
  v4 = v3;
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 672);
  v10 = *(v1 + 608);
  v11 = *(v1 + 600);
  if (v8)
  {
    v48 = *(v1 + 672);
    v12 = *(v1 + 368);
    v13 = *(v1 + 352);
    v47 = *(v1 + 600);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v50 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v12;
    *v15 = v12;
    *(v14 + 12) = 2082;
    v17 = v13 == 0;
    if (v13)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v17)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    v20 = v12;
    v21 = sub_1002346CC(v18, v19, &v50);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] DMC: configurationApplied, appAlreadyPresent = %{public}s", v14, 0x16u);
    sub_1000032A8(v15, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v16);

    v22 = *(v10 + 8);
    v22(v48, v47);
  }

  else
  {

    v22 = *(v10 + 8);
    v22(v9, v11);
  }

  *(v1 + 680) = v22;
  v23 = *(v1 + 552);
  v24 = *(v1 + 544);
  v26 = *(v1 + 496);
  v25 = *(v1 + 504);
  v27 = *(v1 + 488);
  v28 = *(v1 + 472);
  v49 = *(v1 + 464);
  v30 = *(v1 + 344);
  v29 = *(v1 + 352);
  v31 = *(v30 + *(type metadata accessor for DDMDeclaration(0) + 76));
  *(v1 + 872) = v31;
  v32 = *(v25 + 104);
  *(v1 + 688) = v32;
  if (v31)
  {
    v33 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v33 = &enum case for DMCAppsScope.system(_:);
  }

  v32(v24, *v33, v26);
  v34 = *(v25 + 32);
  *(v1 + 696) = v34;
  *(v1 + 704) = (v25 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v34(v23, v24, v26);
  DMCAppsClient.init(scope:)();
  v35 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v30, v35, v36, v29, v27);

  *(v1 + 40) = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *(v1 + 712) = OpaqueTypeConformance2;
  *(v1 + 48) = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  *(v1 + 720) = v38;
  *(v1 + 56) = v38;
  v39 = swift_getOpaqueTypeConformance2();
  *(v1 + 728) = v39;
  *(v1 + 64) = v39;
  v40 = swift_getOpaqueTypeConformance2();
  *(v1 + 736) = v40;
  *(v1 + 72) = v40;
  v41 = swift_getOpaqueTypeConformance2();
  *(v1 + 744) = v41;
  *(v1 + 80) = v41;
  v42 = sub_10020A748((v1 + 16));
  v43 = *(v28 + 16);
  *(v1 + 752) = v43;
  *(v1 + 760) = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v42, v27, v49);
  v44 = swift_task_alloc();
  *(v1 + 768) = v44;
  *v44 = v1;
  v44[1] = sub_1003DBC70;
  v45 = *(v1 + 456);

  return DMCAppsClient.configurationApplied(_:appAlreadyPresent:)(v45, v1 + 16, v29 != 0);
}

uint64_t sub_1003DBC70()
{
  v1 = *v0;

  sub_10000710C((v1 + 16));

  return _swift_task_switch(sub_1003DBD74, 0, 0);
}

uint64_t sub_1003DBD74(uint64_t a1)
{
  v199 = v1;
  v3 = *(v1 + 448);
  v2 = *(v1 + 456);
  v4 = *(v1 + 416);
  v5 = *(v1 + 424);
  v6 = *(v1 + 368);
  static Logger.ddm.getter();
  v7 = *(v5 + 16);
  v7(v3, v2, v4);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v1 + 680);
  v13 = *(v1 + 664);
  v190 = v7;
  v14 = *(v1 + 600);
  v15 = *(v1 + 448);
  if (v11)
  {
    v182 = *(v1 + 600);
    v185 = *(v1 + 680);
    v16 = *(v1 + 440);
    v17 = *(v1 + 416);
    v18 = *(v1 + 424);
    v176 = v10;
    v19 = *(v1 + 368);
    v179 = *(v1 + 664);
    v20 = swift_slowAlloc();
    logb = v9;
    v21 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v198[0] = v173;
    *v20 = 138412546;
    *(v20 + 4) = v19;
    *v21 = v19;
    *(v20 + 12) = 2082;
    v7(v16, v15, v17);
    v22 = v19;
    v23 = String.init<A>(describing:)();
    v25 = v24;
    v26 = *(v18 + 8);
    v26(v15, v17);
    v27 = sub_1002346CC(v23, v25, v198);

    *(v20 + 14) = v27;
    _os_log_impl(&_mh_execute_header, logb, v176, "[%@] DMC: configurationApplied -> %{public}s", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v173);

    v185(v179, v182);
  }

  else
  {
    v28 = *(v1 + 416);
    v29 = *(v1 + 424);

    v26 = *(v29 + 8);
    v26(v15, v28);
    v12(v13, v14);
  }

  *(v1 + 776) = v26;
  v31 = *(v1 + 424);
  v30 = *(v1 + 432);
  v32 = *(v1 + 416);
  v190(v30, *(v1 + 456), v32);
  v33 = (*(v31 + 88))(v30, v32);
  if (v33 == enum case for DMCAppsInstallStateResult.failInternalError(_:))
  {
    v34 = *(v1 + 432);
    v35 = *(v1 + 368);
    (*(*(v1 + 424) + 96))(v34, *(v1 + 416));
    v36 = *v34;
    *(v1 + 848) = *v34;
    v37 = v34[1];
    *(v1 + 856) = v37;
    static Logger.ddm.getter();
    v38 = v35;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v1 + 680);
    v43 = *(v1 + 616);
    v44 = *(v1 + 600);
    if (v41)
    {
      v195 = *(v1 + 680);
      v45 = *(v1 + 368);
      v191 = *(v1 + 616);
      v46 = swift_slowAlloc();
      v186 = v44;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v198[0] = v48;
      *v46 = 138412546;
      *(v46 + 4) = v45;
      *v47 = v45;
      *(v46 + 12) = 2082;
      v49 = v45;
      *(v46 + 14) = sub_1002346CC(v36, v37, v198);
      _os_log_impl(&_mh_execute_header, v39, v40, "[%@] An internal error ocurred: %{public}s", v46, 0x16u);
      sub_1000032A8(v47, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v48);

      v195(v191, v186);
    }

    else
    {

      v42(v43, v44);
    }

    (*(*(v1 + 392) + 56))(*(v1 + 376), 1, 1, *(v1 + 384));
    v65 = swift_task_alloc();
    *(v1 + 864) = v65;
    *v65 = v1;
    v66 = sub_1003DEC34;
LABEL_15:
    v65[1] = v66;
    v68 = *(v1 + 368);
    v67 = *(v1 + 376);
    v69 = *(v1 + 344);

    return sub_10030B39C(v69, v67, 1, v68);
  }

  if (v33 == enum case for DMCAppsInstallStateResult.optional(_:))
  {
    v50 = *(v1 + 368);
    static Logger.ddm.getter();
    v51 = v50;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = *(v1 + 368);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      *(v55 + 4) = v54;
      *v56 = v54;
      v57 = v54;
      _os_log_impl(&_mh_execute_header, v52, v53, "[%@] Optional", v55, 0xCu);
      sub_1000032A8(v56, &qword_10077F920, &qword_10069E6A0);
    }

    v58 = *(v1 + 680);
    v59 = *(v1 + 656);
    v60 = *(v1 + 600);

    v58(v59, v60);
    v61 = swift_task_alloc();
    *(v1 + 784) = v61;
    *v61 = v1;
    v61[1] = sub_1003DD33C;
    v62 = *(v1 + 368);
    v63 = *(v1 + 344);

    return sub_100305BE8(v63, 1, v62);
  }

  if (v33 == enum case for DMCAppsInstallStateResult.notPresent(_:))
  {
    v70 = *(v1 + 592);
    v71 = v26;
    v72 = *(v1 + 568);
    v73 = *(v1 + 560);
    v74 = *(v1 + 488);
    v75 = *(v1 + 464);
    v76 = *(v1 + 472);
    v77 = *(v1 + 456);
    v78 = *(v1 + 416);
    v196 = 0xD000000000000030;
    *(v1 + 328) = 0xD000000000000030;
    *(v1 + 336) = 0x80000001006CAE00;
    v187 = v70;
    v192 = 0x80000001006CAE00;
    sub_100270870();
LABEL_20:
    swift_willThrowTypedImpl();
    v71(v77, v78);
    (*(v76 + 8))(v74, v75);
    (*(v72 + 8))(v187, v73);

    v79 = *(v1 + 8);

    return v79(v196, v192);
  }

  if (v33 == enum case for DMCAppsInstallStateResult.install(_:))
  {
    v80 = *(v1 + 352);
    if (v80)
    {
      if (sub_1003EC948(v80, *(v1 + 368)))
      {
        v81 = (v1 + 352);
        v82 = 2;
LABEL_27:
        v197 = v82;

LABEL_36:
        v85 = *(v1 + 592);
        v86 = *(v1 + 568);
        v87 = *(v1 + 560);
        v88 = *(v1 + 488);
        v89 = *(v1 + 464);
        v90 = *(v1 + 472);
        (*(v1 + 776))();
        (*(v90 + 8))(v88, v89);
        (*(v86 + 8))(v85, v87);

        v91 = *(v1 + 8);

        return v91(v197);
      }

      v92 = *(v1 + 368);
      (*(*(v1 + 392) + 104))(*(v1 + 408), enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:), *(v1 + 384));
      static Logger.ddm.getter();
      v93 = v92;
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = *(v1 + 368);
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v97 = 138412290;
        *(v97 + 4) = v96;
        *v98 = v96;
        v99 = v96;
        _os_log_impl(&_mh_execute_header, v94, v95, "[%@] DMC: installFailed", v97, 0xCu);
        sub_1000032A8(v98, &qword_10077F920, &qword_10069E6A0);
      }

      v193 = *(v1 + 752);
      v188 = *(v1 + 744);
      v168 = *(v1 + 696);
      v166 = *(v1 + 688);
      v164 = *(v1 + 872);
      v100 = *(v1 + 680);
      v101 = *(v1 + 648);
      v102 = *(v1 + 600);
      v103 = *(v1 + 536);
      v104 = *(v1 + 528);
      v105 = *(v1 + 496);
      v174 = *(v1 + 480);
      v183 = *(v1 + 464);
      log = *(v1 + 344);
      v180 = *(v1 + 712);
      v177 = *(v1 + 728);

      v100(v101, v102);
      v106 = &enum case for DMCAppsScope.user(_:);
      if (!v164)
      {
        v106 = &enum case for DMCAppsScope.system(_:);
      }

      v166(v104, *v106, v105);
      v168(v103, v104, v105);
      DMCAppsClient.init(scope:)();
      v107 = DMCAppsClient.organizationName.getter();
      sub_1003E92D4(log, v107, v108, 0, v174);

      *(v1 + 184) = v183;
      *(v1 + 192) = v180;
      *(v1 + 208) = v177;
      *(v1 + 224) = v188;
      v109 = sub_10020A748((v1 + 160));
      v193(v109, v174, v183);
      v110 = swift_task_alloc();
      *(v1 + 792) = v110;
      *v110 = v1;
      v110[1] = sub_1003DD66C;
      v111 = v1 + 160;
LABEL_44:

      return DMCAppsClient.installFailed(_:)(v111);
    }

    v83 = 2;
    goto LABEL_35;
  }

  if (v33 == enum case for DMCAppsInstallStateResult.installPromptConsent(_:))
  {
    v83 = 3;
    goto LABEL_35;
  }

  if (v33 == enum case for DMCAppsInstallStateResult.installPromptTakeOver(_:))
  {
    v84 = *(v1 + 352);
    if (v84)
    {
      if (sub_1003EC948(v84, *(v1 + 368)))
      {
        v81 = (v1 + 352);
        v82 = 4;
        goto LABEL_27;
      }

      v130 = *(v1 + 368);
      (*(*(v1 + 392) + 104))(*(v1 + 400), enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:), *(v1 + 384));
      static Logger.ddm.getter();
      v131 = v130;
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = *(v1 + 368);
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        *v135 = 138412290;
        *(v135 + 4) = v134;
        *v136 = v134;
        v137 = v134;
        _os_log_impl(&_mh_execute_header, v132, v133, "[%@] DMC: installFailed", v135, 0xCu);
        sub_1000032A8(v136, &qword_10077F920, &qword_10069E6A0);
      }

      v194 = *(v1 + 752);
      v189 = *(v1 + 744);
      v169 = *(v1 + 696);
      v167 = *(v1 + 688);
      v165 = *(v1 + 872);
      v138 = *(v1 + 680);
      v139 = *(v1 + 640);
      v140 = *(v1 + 600);
      v141 = *(v1 + 520);
      v142 = *(v1 + 512);
      v143 = *(v1 + 496);
      v175 = *(v1 + 480);
      v184 = *(v1 + 464);
      loga = *(v1 + 344);
      v181 = *(v1 + 712);
      v178 = *(v1 + 728);

      v138(v139, v140);
      v144 = &enum case for DMCAppsScope.user(_:);
      if (!v165)
      {
        v144 = &enum case for DMCAppsScope.system(_:);
      }

      v167(v142, *v144, v143);
      v169(v141, v142, v143);
      DMCAppsClient.init(scope:)();
      v145 = DMCAppsClient.organizationName.getter();
      sub_1003E92D4(loga, v145, v146, 0, v175);

      *(v1 + 112) = v184;
      *(v1 + 120) = v181;
      *(v1 + 136) = v178;
      *(v1 + 152) = v189;
      v147 = sub_10020A748((v1 + 88));
      v194(v147, v175, v184);
      v148 = swift_task_alloc();
      *(v1 + 808) = v148;
      *v148 = v1;
      v148[1] = sub_1003DDC3C;
      v111 = v1 + 88;
      goto LABEL_44;
    }

    v83 = 4;
LABEL_35:
    v197 = v83;
    goto LABEL_36;
  }

  if (v33 != enum case for DMCAppsInstallStateResult.updated(_:))
  {
    if (v33 == enum case for DMCAppsInstallStateResult.failCannotTakeOverManagement(_:))
    {
      v116 = *(v1 + 368);
      static Logger.ddm.getter();
      v117 = v116;
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = *(v1 + 368);
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *v121 = 138412290;
        *(v121 + 4) = v120;
        *v122 = v120;
        v123 = v120;
        _os_log_impl(&_mh_execute_header, v118, v119, "[%@] Cannot take over management", v121, 0xCu);
        sub_1000032A8(v122, &qword_10077F920, &qword_10069E6A0);
      }

      v124 = *(v1 + 680);
      v125 = *(v1 + 632);
      v126 = *(v1 + 600);
      v127 = *(v1 + 384);
      v128 = *(v1 + 392);
      v129 = *(v1 + 376);

      v124(v125, v126);
      (*(v128 + 104))(v129, enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:), v127);
      (*(v128 + 56))(v129, 0, 1, v127);
      v65 = swift_task_alloc();
      *(v1 + 832) = v65;
      *v65 = v1;
      v66 = sub_1003DE538;
      goto LABEL_15;
    }

    if (v33 == enum case for DMCAppsInstallStateResult.failSystemApp(_:))
    {
      v149 = *(v1 + 368);
      static Logger.ddm.getter();
      v150 = v149;
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v151, v152))
      {
        v153 = *(v1 + 368);
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *v154 = 138412290;
        *(v154 + 4) = v153;
        *v155 = v153;
        v156 = v153;
        _os_log_impl(&_mh_execute_header, v151, v152, "[%@] Cannot manage system app", v154, 0xCu);
        sub_1000032A8(v155, &qword_10077F920, &qword_10069E6A0);
      }

      v157 = *(v1 + 680);
      v158 = *(v1 + 624);
      v159 = *(v1 + 600);
      v160 = *(v1 + 384);
      v161 = *(v1 + 392);
      v162 = *(v1 + 376);

      v157(v158, v159);
      (*(v161 + 104))(v162, enum case for ManagedAppStatus.Reason.isSystemApp(_:), v160);
      (*(v161 + 56))(v162, 0, 1, v160);
      v65 = swift_task_alloc();
      *(v1 + 840) = v65;
      *v65 = v1;
      v66 = sub_1003DE8B8;
      goto LABEL_15;
    }

    if (v33 != enum case for DMCAppsInstallStateResult.failInvalidCodeSignature(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v163 = *(v1 + 592);
    v71 = v26;
    v72 = *(v1 + 568);
    v73 = *(v1 + 560);
    v74 = *(v1 + 488);
    v75 = *(v1 + 464);
    v76 = *(v1 + 472);
    v77 = *(v1 + 456);
    v78 = *(v1 + 416);
    v196 = 0xD00000000000003ELL;
    *(v1 + 248) = 0xD00000000000003ELL;
    *(v1 + 256) = 0x80000001006CADC0;
    v187 = v163;
    v192 = 0x80000001006CADC0;
    sub_100270870();
    goto LABEL_20;
  }

  v112 = swift_task_alloc();
  *(v1 + 824) = v112;
  *v112 = v1;
  v112[1] = sub_1003DE208;
  v113 = *(v1 + 368);
  v115 = *(v1 + 344);
  v114 = *(v1 + 352);

  return sub_1003088B8(v115, v114, 1, v113);
}

uint64_t sub_1003DD33C()
{

  return _swift_task_switch(sub_1003DD438, 0, 0);
}

uint64_t sub_1003DD438()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 488);
  v5 = *(v0 + 464);
  v6 = *(v0 + 472);
  (*(v0 + 776))();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1003DD66C()
{
  v1 = *v0;

  sub_10000710C((v1 + 160));

  return _swift_task_switch(sub_1003DD770, 0, 0);
}

uint64_t sub_1003DD770()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  (*(v2 + 16))(v3, v0[51], v1);
  (*(v2 + 56))(v3, 0, 1, v1);
  v4 = swift_task_alloc();
  v0[100] = v4;
  *v4 = v0;
  v4[1] = sub_1003DD860;
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[43];

  return sub_10030B39C(v7, v5, 1, v6);
}

uint64_t sub_1003DD860()
{
  v1 = *(*v0 + 376);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003DD988, 0, 0);
}

uint64_t sub_1003DD988()
{
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[70];
  v16 = v0[61];
  v17 = v0[74];
  v13 = v0[58];
  v15 = v0[57];
  v4 = v0[53];
  v14 = v0[52];
  v5 = v0[51];
  v7 = v0[48];
  v6 = v0[49];
  v11 = v0[44];
  v12 = *(v0[59] + 8);
  (v12)(v0[60]);
  v8 = *(v2 + 8);
  v8(v1, v3);
  (*(v6 + 8))(v5, v7);
  v0[39] = 0;
  v0[40] = 1;
  sub_100270870();
  swift_willThrowTypedImpl();

  (*(v4 + 8))(v15, v14);
  v12(v16, v13);
  v8(v17, v3);

  v9 = v0[1];

  return v9(0, 1);
}

uint64_t sub_1003DDC3C()
{
  v1 = *v0;

  sub_10000710C((v1 + 88));

  return _swift_task_switch(sub_1003DDD40, 0, 0);
}

uint64_t sub_1003DDD40()
{
  v1 = v0[49];
  v2 = v0[47];
  v3 = v0[48];
  (*(v1 + 16))(v2, v0[50], v3);
  (*(v1 + 56))(v2, 0, 1, v3);
  v4 = swift_task_alloc();
  v0[102] = v4;
  *v4 = v0;
  v4[1] = sub_1003DDE2C;
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[43];

  return sub_10030B39C(v7, v5, 1, v6);
}

uint64_t sub_1003DDE2C()
{
  v1 = *(*v0 + 376);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003DDF54, 0, 0);
}

uint64_t sub_1003DDF54()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v16 = v0[61];
  v17 = v0[74];
  v13 = v0[58];
  v15 = v0[57];
  v4 = v0[53];
  v14 = v0[52];
  v5 = v0[49];
  v6 = v0[50];
  v7 = v0[48];
  v11 = v0[44];
  v12 = *(v0[59] + 8);
  (v12)(v0[60]);
  v8 = *(v2 + 8);
  v8(v1, v3);
  (*(v5 + 8))(v6, v7);
  v0[37] = 0;
  v0[38] = 1;
  sub_100270870();
  swift_willThrowTypedImpl();

  (*(v4 + 8))(v15, v14);
  v12(v16, v13);
  v8(v17, v3);

  v9 = v0[1];

  return v9(0, 1);
}

uint64_t sub_1003DE208()
{

  return _swift_task_switch(sub_1003DE304, 0, 0);
}

uint64_t sub_1003DE304()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 488);
  v5 = *(v0 + 464);
  v6 = *(v0 + 472);
  (*(v0 + 776))();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7(5);
}

uint64_t sub_1003DE538()
{
  v1 = *(*v0 + 376);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003DE660, 0, 0);
}

uint64_t sub_1003DE660()
{
  v1 = v0[97];
  v11 = v0[74];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[61];
  v5 = v0[58];
  v6 = v0[59];
  v7 = v0[57];
  v8 = v0[52];
  v0[35] = 0;
  v0[36] = 1;
  sub_100270870();
  swift_willThrowTypedImpl();
  v1(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v11, v3);

  v9 = v0[1];

  return v9(0, 1);
}

uint64_t sub_1003DE8B8()
{
  v1 = *(*v0 + 376);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003DE9E0, 0, 0);
}

uint64_t sub_1003DE9E0()
{
  v1 = v0[97];
  v11 = v0[74];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[61];
  v5 = v0[58];
  v6 = v0[59];
  v7 = v0[57];
  v8 = v0[52];
  sub_100270870();
  v0[33] = 0;
  v0[34] = 0;
  swift_willThrowTypedImpl();
  v1(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v11, v3);

  v9 = v0[1];

  return v9(0, 0);
}

uint64_t sub_1003DEC34()
{
  v1 = *(*v0 + 376);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003DED5C, 0, 0);
}

uint64_t sub_1003DED5C()
{
  v1 = v0[97];
  v11 = v0[74];
  v13 = v0[107];
  v2 = v0[71];
  v10 = v0[70];
  v3 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v6 = v0[57];
  v7 = v0[52];
  v0[29] = v0[106];
  v0[30] = v13;
  sub_100270870();
  swift_willThrowTypedImpl();
  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v11, v10);
  v12 = v0[106];

  v8 = v0[1];

  return v8(v12, v13);
}

uint64_t sub_1003DEFC0(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = type metadata accessor for DMCAppsRemoveStateResult();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = sub_1001F0C48(&qword_10077F388, &qword_10069FBD0);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for DMCAppsScope();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = type metadata accessor for DMCAppsClient();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_1003DF244, 0, 0);
}

uint64_t sub_1003DF244(uint64_t a1)
{
  v2 = v1[12];
  static Logger.ddm.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] DMC: configurationRemoved", v7, 0xCu);
    sub_1000032A8(v8, &qword_10077F920, &qword_10069E6A0);
  }

  v10 = v1[33];
  v12 = v1[29];
  v11 = v1[30];
  v14 = v1[24];
  v13 = v1[25];
  v15 = v4;
  v16 = v1[22];
  v17 = v1[23];
  v29 = v1[20];
  v27 = v1[21];
  v28 = v1[19];
  v18 = v1[11];

  v19 = *(v11 + 8);
  v1[34] = v19;
  v1[35] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v10, v12);
  if (*(v18 + *(type metadata accessor for DDMDeclaration(0) + 76)))
  {
    v20 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v20 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v17 + 104))(v14, *v20, v16);
  (*(v17 + 32))(v13, v14, v16);
  DMCAppsClient.init(scope:)();
  v21 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v18, v21, v22, 0, v27);

  v1[5] = v28;
  v1[6] = swift_getOpaqueTypeConformance2();
  v1[7] = swift_getOpaqueTypeConformance2();
  v1[8] = swift_getOpaqueTypeConformance2();
  v1[9] = swift_getOpaqueTypeConformance2();
  v1[10] = swift_getOpaqueTypeConformance2();
  v23 = sub_10020A748(v1 + 2);
  (*(v29 + 16))(v23, v27, v28);
  v24 = swift_task_alloc();
  v1[36] = v24;
  *v24 = v1;
  v24[1] = sub_1003DF560;
  v25 = v1[18];

  return DMCAppsClient.configurationRemoved(_:)(v25, v1 + 2);
}

uint64_t sub_1003DF560()
{
  v1 = *v0;

  sub_10000710C((v1 + 16));

  return _swift_task_switch(sub_1003DF664, 0, 0);
}

uint64_t sub_1003DF664(uint64_t a1)
{
  v86 = v1;
  v3 = v1[17];
  v2 = v1[18];
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[12];
  static Logger.ddm.getter();
  v7 = *(v5 + 16);
  v7(v3, v2, v4);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[34];
  v13 = v1[32];
  v81 = v7;
  v82 = v1[29];
  v14 = v1[17];
  if (v11)
  {
    v78 = v1[32];
    v15 = v1[16];
    v16 = v1[13];
    v17 = v1[14];
    v74 = v10;
    v18 = v1[12];
    v76 = v1[34];
    v19 = swift_slowAlloc();
    log = v9;
    v20 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v85 = v72;
    *v19 = 138412546;
    *(v19 + 4) = v18;
    *v20 = v18;
    *(v19 + 12) = 2082;
    v7(v15, v14, v16);
    v21 = v18;
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v25 = *(v17 + 8);
    v25(v14, v16);
    v26 = sub_1002346CC(v22, v24, &v85);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, log, v74, "[%@] DMC: configurationRemoved -> %{public}s", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v72);

    v76(v78, v82);
  }

  else
  {
    v27 = v1[13];
    v28 = v1[14];

    v25 = *(v28 + 8);
    v25(v14, v27);
    v12(v13, v82);
  }

  v30 = v1[14];
  v29 = v1[15];
  v31 = v1[13];
  v81(v29, v1[18], v31);
  v32 = (*(v30 + 88))(v29, v31);
  if (v32 == enum case for DMCAppsRemoveStateResult.failInternalError(_:))
  {
    v33 = v1[15];
    v34 = v1[12];
    (*(v1[14] + 96))(v33, v1[13]);
    v35 = *v33;
    v36 = v33[1];
    v70 = v35;
    static Logger.ddm.getter();
    v37 = v34;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    v40 = os_log_type_enabled(v38, v39);
    v79 = v1[31];
    v80 = v1[34];
    v41 = v1[28];
    v77 = v1[29];
    v42 = v1[26];
    v43 = v1[27];
    v45 = v1[20];
    v44 = v1[21];
    v83 = v1[19];
    v73 = v1[13];
    v75 = v1[18];
    if (v40)
    {
      v68 = v25;
      v46 = v1[12];
      v69 = v1[28];
      v47 = swift_slowAlloc();
      v66 = v44;
      v48 = swift_slowAlloc();
      v67 = v42;
      v49 = swift_slowAlloc();
      v85 = v49;
      *v47 = 138412546;
      *(v47 + 4) = v46;
      *v48 = v46;
      *(v47 + 12) = 2082;
      v50 = v46;
      v51 = sub_1002346CC(v70, v36, &v85);

      *(v47 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v38, v39, "[%@] An internal error ocurred: %{public}s", v47, 0x16u);
      sub_1000032A8(v48, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v49);

      v80(v79, v77);
      v68(v75, v73);
      (*(v45 + 8))(v66, v83);
      (*(v43 + 8))(v69, v67);
    }

    else
    {

      v80(v79, v77);
      v25(v75, v73);
      (*(v45 + 8))(v44, v83);
      (*(v43 + 8))(v41, v42);
    }

    goto LABEL_10;
  }

  if (v32 == enum case for DMCAppsRemoveStateResult.uninstall(_:))
  {
    v53 = v1[27];
    v52 = v1[28];
    v54 = v1[26];
    v56 = v1[20];
    v55 = v1[21];
    v57 = v1[19];
    v25(v1[18], v1[13]);
    (*(v56 + 8))(v55, v57);
    (*(v53 + 8))(v52, v54);
LABEL_10:
    v84 = 1;
    goto LABEL_11;
  }

  if (v32 != enum case for DMCAppsRemoveStateResult.leave(_:))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v61 = v1[27];
  v60 = v1[28];
  v62 = v1[26];
  v64 = v1[20];
  v63 = v1[21];
  v65 = v1[19];
  v25(v1[18], v1[13]);
  (*(v64 + 8))(v63, v65);
  (*(v61 + 8))(v60, v62);
  v84 = 0;
LABEL_11:

  v58 = v1[1];

  return v58(v84);
}

uint64_t sub_1003DFD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = type metadata accessor for DDMDeclaration(0);
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v3[16] = *(v5 + 64);
  v3[17] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380, &qword_10069E9E0);
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for DMCAppsDidRemoveConfigurationStateResult();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = sub_1001F0C48(&qword_10077F388, &qword_10069FBD0);
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  v8 = type metadata accessor for DMCAppsScope();
  v3[28] = v8;
  v3[29] = *(v8 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v9 = type metadata accessor for DMCAppsClient();
  v3[32] = v9;
  v3[33] = *(v9 - 8);
  v3[34] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[35] = v10;
  v3[36] = *(v10 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1003E0068, 0, 0);
}

uint64_t sub_1003E0068(uint64_t a1)
{
  v2 = v1[13];
  static Logger.ddm.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] DMC: didRemoveConfiguration", v7, 0xCu);
    sub_1000032A8(v8, &qword_10077F920, &qword_10069E6A0);
  }

  v10 = v1[39];
  v12 = v1[35];
  v11 = v1[36];
  v14 = v1[30];
  v13 = v1[31];
  v15 = v4;
  v17 = v1[28];
  v16 = v1[29];
  v28 = v1[27];
  v30 = v1[26];
  v29 = v1[25];
  v18 = v1[14];
  v19 = v1[11];

  v20 = *(v11 + 8);
  v1[40] = v20;
  v1[41] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v10, v12);
  if (*(v19 + *(v18 + 76)))
  {
    v21 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v21 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v16 + 104))(v14, *v21, v17);
  (*(v16 + 32))(v13, v14, v17);
  DMCAppsClient.init(scope:)();
  v22 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v19, v22, v23, 0, v28);

  v1[5] = v29;
  v1[6] = swift_getOpaqueTypeConformance2();
  v1[7] = swift_getOpaqueTypeConformance2();
  v1[8] = swift_getOpaqueTypeConformance2();
  v1[9] = swift_getOpaqueTypeConformance2();
  v1[10] = swift_getOpaqueTypeConformance2();
  v24 = sub_10020A748(v1 + 2);
  (*(v30 + 16))(v24, v28, v29);
  v25 = swift_task_alloc();
  v1[42] = v25;
  *v25 = v1;
  v25[1] = sub_1003E0384;
  v26 = v1[24];

  return DMCAppsClient.didRemoveConfiguration(_:)(v26, v1 + 2);
}

uint64_t sub_1003E0384()
{
  v1 = *v0;

  sub_10000710C((v1 + 16));

  return _swift_task_switch(sub_1003E0488, 0, 0);
}

uint64_t sub_1003E0488(uint64_t a1)
{
  v91 = v1;
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[19];
  v5 = v1[20];
  v6 = v1[13];
  static Logger.ddm.getter();
  v7 = *(v5 + 16);
  v7(v3, v2, v4);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[40];
  v13 = v1[38];
  v88 = v1[35];
  v14 = v1[23];
  if (v11)
  {
    v79 = v1[38];
    v15 = v1[22];
    v16 = v1[19];
    v17 = v1[20];
    v73 = v10;
    v18 = v1[13];
    v76 = v1[40];
    v19 = swift_slowAlloc();
    v84 = v7;
    v20 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v90 = v72;
    *v19 = 138412546;
    *(v19 + 4) = v18;
    *v20 = v18;
    *(v19 + 12) = 2082;
    v84(v15, v14, v16);
    v21 = v18;
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v87 = *(v17 + 8);
    v87(v14, v16);
    v25 = sub_1002346CC(v22, v24, &v90);

    *(v19 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v9, v73, "[%@] DMC: didRemoveConfiguration -> %{public}s", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920, &qword_10069E6A0);
    v7 = v84;

    sub_10000710C(v72);

    v76(v79, v88);
  }

  else
  {
    v26 = v1[19];
    v27 = v1[20];

    v87 = *(v27 + 8);
    v87(v14, v26);
    v12(v13, v88);
  }

  v29 = v1[20];
  v28 = v1[21];
  v30 = v1[19];
  v7(v28, v1[24], v30);
  v31 = (*(v29 + 88))(v28, v30);
  if (v31 == enum case for DMCAppsDidRemoveConfigurationStateResult.failInternalError(_:))
  {
    v32 = v1[21];
    v33 = v1[13];
    (*(v1[20] + 96))(v32, v1[19]);
    v34 = *v32;
    v35 = v32[1];
    v71 = v34;
    static Logger.ddm.getter();
    v36 = v33;

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = os_log_type_enabled(v37, v38);
    v82 = v1[37];
    v85 = v1[40];
    v40 = v1[34];
    v41 = v1[32];
    v42 = v1[33];
    v44 = v1[26];
    v43 = v1[27];
    v45 = v1[25];
    v77 = v1[24];
    v80 = v1[35];
    v74 = v1[19];
    if (v39)
    {
      v70 = v1[25];
      v46 = v1[13];
      v69 = v1[34];
      v47 = swift_slowAlloc();
      v67 = v43;
      v48 = swift_slowAlloc();
      v68 = v41;
      v49 = swift_slowAlloc();
      v90 = v49;
      *v47 = 138412546;
      *(v47 + 4) = v46;
      *v48 = v46;
      *(v47 + 12) = 2082;
      v50 = v46;
      v51 = sub_1002346CC(v71, v35, &v90);

      *(v47 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%@] An internal error ocurred: %{public}s", v47, 0x16u);
      sub_1000032A8(v48, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v49);

      v85(v82, v80);
      v87(v77, v74);
      (*(v44 + 8))(v67, v70);
      (*(v42 + 8))(v69, v68);
    }

    else
    {

      v85(v82, v80);
      v87(v77, v74);
      (*(v44 + 8))(v43, v45);
      (*(v42 + 8))(v40, v41);
    }
  }

  else
  {
    if (v31 != enum case for DMCAppsDidRemoveConfigurationStateResult.ok(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v52 = v1[33];
    v89 = v1[34];
    v53 = v1[26];
    v83 = v1[27];
    v86 = v1[32];
    v78 = v1[24];
    v81 = v1[25];
    v75 = v1[19];
    v55 = v1[17];
    v54 = v1[18];
    v56 = v1[15];
    v57 = v1[16];
    v59 = v1[12];
    v58 = v1[13];
    v60 = v1[11];
    v61 = type metadata accessor for TaskPriority();
    (*(*(v61 - 8) + 56))(v54, 1, 1, v61);
    sub_1003ED34C(v60, v55);
    v62 = (*(v56 + 80) + 40) & ~*(v56 + 80);
    v63 = swift_allocObject();
    v63[2] = 0;
    v63[3] = 0;
    v63[4] = v59;
    sub_1003ED3B0(v55, v63 + v62);
    *(v63 + ((v57 + v62 + 7) & 0xFFFFFFFFFFFFFFF8)) = v58;
    v64 = v58;

    sub_1004A673C(0, 0, v54, &unk_10069FC70, v63);

    v87(v78, v75);
    (*(v53 + 8))(v83, v81);
    (*(v52 + 8))(v89, v86);
  }

  v65 = v1[1];

  return v65();
}

uint64_t sub_1003E0BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  sub_1001F0C48(&qword_10077F3A0, &qword_1006A1550);
  v4[17] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380, &qword_1006A96D0);
  v4[18] = swift_task_alloc();
  updated = type metadata accessor for DMCAppsWillUpdateStateResult();
  v4[19] = updated;
  v4[20] = *(updated - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_10077F388, &qword_10069FBD0);
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v7 = type metadata accessor for DMCAppsScope();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v8 = type metadata accessor for DMCAppsClient();
  v4[32] = v8;
  v4[33] = *(v8 - 8);
  v4[34] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v4[35] = v9;
  v4[36] = *(v9 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_1003E0EF4, 0, 0);
}

uint64_t sub_1003E0EF4(uint64_t a1)
{
  v2 = v1[16];
  static Logger.ddm.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] DMC: willUpdate", v7, 0xCu);
    sub_1000032A8(v8, &qword_10077F920, &qword_10069E6A0);
  }

  v10 = v1[39];
  v12 = v1[35];
  v11 = v1[36];
  v13 = v1[30];
  v14 = v1[31];
  v15 = v4;
  v17 = v1[28];
  v16 = v1[29];
  v29 = v1[25];
  v30 = v1[26];
  v18 = v1[13];
  v27 = v1[27];
  v28 = v1[14];

  v19 = *(v11 + 8);
  v1[40] = v19;
  v1[41] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v10, v12);
  if (*(v18 + *(type metadata accessor for DDMDeclaration(0) + 76)))
  {
    v20 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v20 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v16 + 104))(v13, *v20, v17);
  (*(v16 + 32))(v14, v13, v17);
  DMCAppsClient.init(scope:)();
  v21 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v18, v21, v22, v28, v27);

  v1[5] = v29;
  v1[6] = swift_getOpaqueTypeConformance2();
  v1[7] = swift_getOpaqueTypeConformance2();
  v1[8] = swift_getOpaqueTypeConformance2();
  v1[9] = swift_getOpaqueTypeConformance2();
  v1[10] = swift_getOpaqueTypeConformance2();
  v23 = sub_10020A748(v1 + 2);
  (*(v30 + 16))(v23, v27, v29);
  v24 = swift_task_alloc();
  v1[42] = v24;
  *v24 = v1;
  v24[1] = sub_1003E120C;
  v25 = v1[24];

  return DMCAppsClient.willUpdate(_:)(v25, v1 + 2);
}

uint64_t sub_1003E120C()
{
  v1 = *v0;

  sub_10000710C((v1 + 16));

  return _swift_task_switch(sub_1003E1310, 0, 0);
}

uint64_t sub_1003E1310(uint64_t a1)
{
  v69 = v1;
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[19];
  v5 = v1[20];
  v6 = v1[16];
  static Logger.ddm.getter();
  v7 = *(v5 + 16);
  v7(v3, v2, v4);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[40];
  v65 = v1[35];
  v67 = v1[38];
  v13 = v1[23];
  if (v11)
  {
    v62 = v1[40];
    v63 = v7;
    v14 = v1[22];
    v15 = v1[19];
    v16 = v1[20];
    v61 = v10;
    v17 = v1[16];
    v18 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v68 = v60;
    *v18 = 138412546;
    *(v18 + 4) = v17;
    *v59 = v17;
    *(v18 + 12) = 2082;
    v63(v14, v13, v15);
    v19 = v17;
    v20 = String.init<A>(describing:)();
    v22 = v21;
    v23 = *(v16 + 8);
    v23(v13, v15);
    v7 = v63;
    v24 = sub_1002346CC(v20, v22, &v68);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v61, "[%@] DMC: willUpdate -> %{public}s", v18, 0x16u);
    sub_1000032A8(v59, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v60);

    v62(v67, v65);
  }

  else
  {
    v25 = v1[19];
    v26 = v1[20];

    v23 = *(v26 + 8);
    v23(v13, v25);
    v12(v67, v65);
  }

  v1[43] = v23;
  v28 = v1[20];
  v27 = v1[21];
  v29 = v1[19];
  v7(v27, v1[24], v29);
  v30 = (*(v28 + 88))(v27, v29);
  if (v30 == enum case for DMCAppsWillUpdateStateResult.failInternalError(_:))
  {
    v31 = v1[21];
    v32 = v1[16];
    (*(v1[20] + 96))(v31, v1[19]);
    v33 = *v31;
    v1[45] = *v31;
    v34 = v31[1];
    v1[46] = v34;
    static Logger.ddm.getter();
    v35 = v32;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v1[40];
    v40 = v1[37];
    v41 = v1[35];
    if (v38)
    {
      v42 = v1[16];
      v66 = v1[40];
      v43 = swift_slowAlloc();
      v64 = v40;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v68 = v45;
      *v43 = 138412546;
      *(v43 + 4) = v42;
      *v44 = v42;
      *(v43 + 12) = 2082;
      v46 = v42;
      *(v43 + 14) = sub_1002346CC(v33, v34, &v68);
      _os_log_impl(&_mh_execute_header, v36, v37, "[%@] An internal error ocurred: %{public}s", v43, 0x16u);
      sub_1000032A8(v44, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v45);

      v66(v64, v41);
    }

    else
    {

      v39(v40, v41);
    }

    v51 = v1[18];
    v52 = enum case for ManagedAppStatus.Reason.updateFailed(_:);
    v53 = type metadata accessor for ManagedAppStatus.Reason();
    v54 = *(v53 - 8);
    (*(v54 + 104))(v51, v52, v53);
    (*(v54 + 56))(v51, 0, 1, v53);
    v55 = swift_task_alloc();
    v1[47] = v55;
    *v55 = v1;
    v55[1] = sub_1003E1BBC;
    v56 = v1[18];
    v57 = v1[16];
    v58 = v1[13];

    return sub_10030B39C(v58, v56, 0, v57);
  }

  else if (v30 == enum case for DMCAppsWillUpdateStateResult.proceed(_:))
  {
    v47 = swift_task_alloc();
    v1[44] = v47;
    *v47 = v1;
    v47[1] = sub_1003E1950;
    v48 = v1[16];
    v49 = v1[13];

    return sub_100307250(v49, 0, v48);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1003E1950()
{

  return _swift_task_switch(sub_1003E1A4C, 0, 0);
}

uint64_t sub_1003E1A4C()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);
  (*(v0 + 344))(*(v0 + 192), *(v0 + 152));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003E1BBC()
{
  v1 = *(*v0 + 144);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);
  type metadata accessor for ManagedAppDeclarationStatusStore(0);
  sub_1003ED304(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore, aI_1);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003E1D4C, v3, v2);
}

uint64_t sub_1003E1D4C()
{
  v1 = v0[17];
  v2 = enum case for ManagedAppStatus.UpdateState.failed(_:);
  updated = type metadata accessor for ManagedAppStatus.UpdateState();
  v4 = *(updated - 8);
  (*(v4 + 104))(v1, v2, updated);
  (*(v4 + 56))(v1, 0, 1, updated);
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_1003E1E90;
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[13];

  return sub_10030E4E0(v7, v8, 1, v6);
}

uint64_t sub_1003E1E90()
{
  v1 = *(*v0 + 136);

  sub_1000032A8(v1, &qword_10077F3A0, &qword_1006A1550);

  return _swift_task_switch(sub_1003E1FB8, 0, 0);
}

uint64_t sub_1003E1FB8()
{
  v13 = v0[46];
  v2 = v0[33];
  v1 = v0[34];
  v12 = v0[32];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[19];
  v8 = v0[20];
  v0[11] = v0[45];
  v0[12] = v13;
  sub_100270870();
  swift_willThrowTypedImpl();
  (*(v8 + 8))(v5, v7);
  (*(v3 + 8))(v4, v6);
  (*(v2 + 8))(v1, v12);

  v9 = v0[1];
  v10 = v0[45];

  return v9(v10, v13);
}

uint64_t sub_1003E2160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  sub_1001F0C48(&qword_10077F380, &qword_1006A96D0);
  v3[31] = swift_task_alloc();
  v4 = type metadata accessor for ManagedAppStatus.Reason();
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();
  v5 = type metadata accessor for DMCAppsOptionalInstallStateResult();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_10077F388, &qword_10069FBD0);
  v3[41] = v6;
  v3[42] = *(v6 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v7 = type metadata accessor for DMCAppsScope();
  v3[45] = v7;
  v3[46] = *(v7 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v8 = type metadata accessor for DMCAppsClient();
  v3[51] = v8;
  v3[52] = *(v8 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[55] = v9;
  v3[56] = *(v9 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_1003E24D0, 0, 0);
}

uint64_t sub_1003E24D0(uint64_t a1)
{
  v46 = v1;
  v2 = *(v1 + 232);
  static Logger.ddm.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 496);
  v9 = *(v1 + 440);
  v8 = *(v1 + 448);
  if (v6)
  {
    v10 = *(v1 + 232);
    v43 = *(v1 + 496);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v45 = v13;
    *v11 = 138412546;
    v14 = sub_100625FA0();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2082;
    if (v10)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (v10)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v17 = sub_1002346CC(v15, v16, &v45);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] DMC: optionalAppRequested, appAlreadyPresent = %{public}s", v11, 0x16u);
    sub_1000032A8(v12, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v13);

    v18 = *(v8 + 8);
    v18(v43, v9);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  *(v1 + 504) = v18;
  v20 = *(v1 + 392);
  v19 = *(v1 + 400);
  v22 = *(v1 + 360);
  v21 = *(v1 + 368);
  v23 = *(v1 + 352);
  v24 = *(v1 + 336);
  v44 = *(v1 + 328);
  v26 = *(v1 + 224);
  v25 = *(v1 + 232);
  v27 = *(v26 + *(type metadata accessor for DDMDeclaration(0) + 76));
  *(v1 + 712) = v27;
  v28 = *(v21 + 104);
  *(v1 + 512) = v28;
  if (v27)
  {
    v29 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v29 = &enum case for DMCAppsScope.system(_:);
  }

  v28(v20, *v29, v22);
  v30 = *(v21 + 32);
  *(v1 + 520) = v30;
  *(v1 + 528) = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v30(v19, v20, v22);
  DMCAppsClient.init(scope:)();
  v31 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v26, v31, v32, v25, v23);

  *(v1 + 40) = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *(v1 + 536) = OpaqueTypeConformance2;
  *(v1 + 48) = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeConformance2();
  *(v1 + 544) = v34;
  *(v1 + 56) = v34;
  v35 = swift_getOpaqueTypeConformance2();
  *(v1 + 552) = v35;
  *(v1 + 64) = v35;
  v36 = swift_getOpaqueTypeConformance2();
  *(v1 + 560) = v36;
  *(v1 + 72) = v36;
  v37 = swift_getOpaqueTypeConformance2();
  *(v1 + 568) = v37;
  *(v1 + 80) = v37;
  v38 = sub_10020A748((v1 + 16));
  v39 = *(v24 + 16);
  *(v1 + 576) = v39;
  *(v1 + 584) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v39(v38, v23, v44);
  v40 = swift_task_alloc();
  *(v1 + 592) = v40;
  *v40 = v1;
  v40[1] = sub_1003E28A8;
  v41 = *(v1 + 320);

  return DMCAppsClient.optionalAppRequested(_:appAlreadyPresent:)(v41, v1 + 16, v25 != 0);
}

uint64_t sub_1003E28A8()
{
  v1 = *v0;

  sub_10000710C((v1 + 16));

  return _swift_task_switch(sub_1003E29AC, 0, 0);
}

uint64_t sub_1003E29AC(uint64_t a1)
{
  v114 = v1;
  v3 = *(v1 + 312);
  v2 = *(v1 + 320);
  v4 = *(v1 + 280);
  v5 = *(v1 + 288);
  static Logger.ddm.getter();
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 504);
  v11 = *(v1 + 488);
  v111 = *(v1 + 440);
  v12 = *(v1 + 312);
  if (v9)
  {
    v105 = *(v1 + 488);
    v107 = v6;
    v13 = *(v1 + 304);
    v101 = v8;
    v14 = *(v1 + 280);
    v15 = *(v1 + 288);
    v103 = *(v1 + 504);
    v16 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v113 = v99;
    *v16 = 138412546;
    v17 = sub_100625FA0();
    *(v16 + 4) = v17;
    *v98 = v17;
    *(v16 + 12) = 2082;
    v107(v13, v12, v14);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v12, v14);
    v6 = v107;
    v22 = sub_1002346CC(v18, v20, &v113);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v7, v101, "[%@] DMC: optionalAppRequested -> %{public}s", v16, 0x16u);
    sub_1000032A8(v98, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v99);

    v103(v105, v111);
  }

  else
  {
    v23 = *(v1 + 280);
    v24 = *(v1 + 288);

    v21 = *(v24 + 8);
    v21(v12, v23);
    v10(v11, v111);
  }

  *(v1 + 600) = v21;
  v26 = *(v1 + 288);
  v25 = *(v1 + 296);
  v27 = *(v1 + 280);
  v6(v25, *(v1 + 320), v27);
  v28 = (*(v26 + 88))(v25, v27);
  if (v28 == enum case for DMCAppsOptionalInstallStateResult.failInternalError(_:))
  {
    v29 = *(v1 + 296);
    (*(*(v1 + 288) + 96))(v29, *(v1 + 280));
    v30 = *v29;
    *(v1 + 680) = *v29;
    v31 = v29[1];
    *(v1 + 688) = v31;
    static Logger.ddm.getter();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v1 + 504);
    v36 = *(v1 + 456);
    v37 = *(v1 + 440);
    if (v34)
    {
      v112 = *(v1 + 504);
      v38 = swift_slowAlloc();
      v109 = v36;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v113 = v40;
      *v38 = 138412546;
      v41 = sub_100625FA0();
      *(v38 + 4) = v41;
      *v39 = v41;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_1002346CC(v30, v31, &v113);
      _os_log_impl(&_mh_execute_header, v32, v33, "[%@] An internal error ocurred: %{public}s", v38, 0x16u);
      sub_1000032A8(v39, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v40);

      v112(v109, v37);
    }

    else
    {

      v35(v36, v37);
    }

    (*(*(v1 + 264) + 56))(*(v1 + 248), 1, 1, *(v1 + 256));
    v49 = sub_100625FA0();
    *(v1 + 696) = v49;
    v50 = swift_task_alloc();
    *(v1 + 704) = v50;
    *v50 = v1;
    v51 = sub_1003E4458;
LABEL_16:
    v50[1] = v51;
    v52 = *(v1 + 248);
    v53 = *(v1 + 224);

    return sub_10030B39C(v53, v52, 1, v49);
  }

  if (v28 != enum case for DMCAppsOptionalInstallStateResult.install(_:))
  {
    if (v28 == enum case for DMCAppsOptionalInstallStateResult.failCannotTakeOverManagement(_:))
    {
      static Logger.ddm.getter();
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        v58 = sub_100625FA0();
        *(v56 + 4) = v58;
        *v57 = v58;
        _os_log_impl(&_mh_execute_header, v54, v55, "[%@] Cannot take over management", v56, 0xCu);
        sub_1000032A8(v57, &qword_10077F920, &qword_10069E6A0);
      }

      v59 = *(v1 + 504);
      v60 = *(v1 + 472);
      v61 = *(v1 + 440);
      v62 = *(v1 + 256);
      v63 = *(v1 + 264);
      v64 = *(v1 + 248);

      v59(v60, v61);
      (*(v63 + 104))(v64, enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:), v62);
      (*(v63 + 56))(v64, 0, 1, v62);
      v49 = sub_100625FA0();
      *(v1 + 648) = v49;
      v50 = swift_task_alloc();
      *(v1 + 656) = v50;
      *v50 = v1;
      v51 = sub_1003E3E04;
    }

    else
    {
      if (v28 != enum case for DMCAppsOptionalInstallStateResult.failSystemApp(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      static Logger.ddm.getter();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        v69 = sub_100625FA0();
        *(v67 + 4) = v69;
        *v68 = v69;
        _os_log_impl(&_mh_execute_header, v65, v66, "[%@] Cannot manage system app", v67, 0xCu);
        sub_1000032A8(v68, &qword_10077F920, &qword_10069E6A0);
      }

      v70 = *(v1 + 504);
      v71 = *(v1 + 464);
      v72 = *(v1 + 440);
      v73 = *(v1 + 256);
      v74 = *(v1 + 264);
      v75 = *(v1 + 248);

      v70(v71, v72);
      (*(v74 + 104))(v75, enum case for ManagedAppStatus.Reason.isSystemApp(_:), v73);
      (*(v74 + 56))(v75, 0, 1, v73);
      v49 = sub_100625FA0();
      *(v1 + 664) = v49;
      v50 = swift_task_alloc();
      *(v1 + 672) = v50;
      *v50 = v1;
      v51 = sub_1003E4130;
    }

    goto LABEL_16;
  }

  v42 = *(v1 + 232);
  if (!v42)
  {
    goto LABEL_11;
  }

  v43 = v42;
  v44 = sub_100625FA0();
  LOBYTE(v43) = sub_1003EC948(v43, v44);

  if (v43)
  {

LABEL_11:
    v45 = sub_100625FA0();
    *(v1 + 632) = v45;
    v46 = swift_task_alloc();
    *(v1 + 640) = v46;
    *v46 = v1;
    v46[1] = sub_1003E3B34;
    v47 = *(v1 + 224);

    return sub_100307250(v47, 1, v45);
  }

  (*(*(v1 + 264) + 104))(*(v1 + 272), enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:), *(v1 + 256));
  v76 = sub_100625FA0();
  *(v1 + 608) = v76;
  static Logger.ddm.getter();
  v77 = v76;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 138412290;
    *(v80 + 4) = v77;
    *v81 = v77;
    v82 = v77;
    _os_log_impl(&_mh_execute_header, v78, v79, "[%@] DMC: installFailed", v80, 0xCu);
    sub_1000032A8(v81, &qword_10077F920, &qword_10069E6A0);
  }

  v110 = *(v1 + 576);
  v108 = *(v1 + 568);
  v94 = *(v1 + 712);
  v83 = *(v1 + 504);
  v95 = *(v1 + 512);
  v96 = *(v1 + 520);
  v84 = *(v1 + 480);
  v85 = *(v1 + 440);
  v87 = *(v1 + 376);
  v86 = *(v1 + 384);
  v88 = *(v1 + 360);
  v100 = *(v1 + 344);
  v106 = *(v1 + 328);
  v97 = *(v1 + 224);
  v102 = *(v1 + 552);
  v104 = *(v1 + 536);

  v83(v84, v85);
  v89 = &enum case for DMCAppsScope.user(_:);
  if (!v94)
  {
    v89 = &enum case for DMCAppsScope.system(_:);
  }

  v95(v87, *v89, v88);
  v96(v86, v87, v88);
  DMCAppsClient.init(scope:)();
  v90 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v97, v90, v91, 0, v100);

  *(v1 + 112) = v106;
  *(v1 + 120) = v104;
  *(v1 + 136) = v102;
  *(v1 + 152) = v108;
  v92 = sub_10020A748((v1 + 88));
  v110(v92, v100, v106);
  v93 = swift_task_alloc();
  *(v1 + 616) = v93;
  *v93 = v1;
  v93[1] = sub_1003E35CC;

  return DMCAppsClient.installFailed(_:)(v1 + 88);
}

uint64_t sub_1003E35CC()
{
  v1 = *v0;

  sub_10000710C((v1 + 88));

  return _swift_task_switch(sub_1003E36D0, 0, 0);
}

uint64_t sub_1003E36D0()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[32];
  (*(v1 + 16))(v2, v0[34], v3);
  (*(v1 + 56))(v2, 0, 1, v3);
  v4 = swift_task_alloc();
  v0[78] = v4;
  *v4 = v0;
  v4[1] = sub_1003E37BC;
  v5 = v0[76];
  v6 = v0[31];
  v7 = v0[28];

  return sub_10030B39C(v7, v6, 1, v5);
}

uint64_t sub_1003E37BC()
{
  v1 = *(*v0 + 248);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003E38E4, 0, 0);
}

uint64_t sub_1003E38E4()
{
  v11 = *(v0 + 608);
  v1 = *(v0 + 424);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v17 = *(v0 + 352);
  v18 = *(v0 + 432);
  v16 = *(v0 + 320);
  v4 = *(v0 + 288);
  v14 = *(v0 + 328);
  v15 = *(v0 + 280);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);
  v12 = *(v0 + 232);
  v13 = *(*(v0 + 336) + 8);
  (v13)(*(v0 + 344));
  v8 = *(v2 + 8);
  v8(v1, v3);

  (*(v5 + 8))(v6, v7);
  *(v0 + 208) = xmmword_10069E880;
  sub_100270870();
  swift_willThrowTypedImpl();

  (*(v4 + 8))(v16, v15);
  v13(v17, v14);
  v8(v18, v3);

  v9 = *(v0 + 8);

  return v9(0, 1);
}

uint64_t sub_1003E3B34()
{
  v1 = *(*v0 + 632);

  return _swift_task_switch(sub_1003E3C48, 0, 0);
}

uint64_t sub_1003E3C48()
{
  v1 = *(v0 + 432);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  (*(v0 + 600))(*(v0 + 320), *(v0 + 280));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003E3E04()
{
  v1 = *(*v0 + 648);
  v2 = *(*v0 + 248);

  sub_1000032A8(v2, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003E3F44, 0, 0);
}

uint64_t sub_1003E3F44()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 416);
  v10 = *(v0 + 408);
  v11 = *(v0 + 432);
  v3 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 320);
  v7 = *(v0 + 280);
  *(v0 + 192) = xmmword_10069E880;
  sub_100270870();
  swift_willThrowTypedImpl();
  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v11, v10);

  v8 = *(v0 + 8);

  return v8(0, 1);
}

uint64_t sub_1003E4130()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 248);

  sub_1000032A8(v2, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003E4270, 0, 0);
}

uint64_t sub_1003E4270()
{
  v1 = v0[75];
  v11 = v0[54];
  v2 = v0[51];
  v3 = v0[52];
  v4 = v0[44];
  v5 = v0[41];
  v6 = v0[42];
  v7 = v0[40];
  v8 = v0[35];
  sub_100270870();
  v0[23] = 0;
  v0[22] = 0;
  swift_willThrowTypedImpl();
  v1(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v11, v2);

  v9 = v0[1];

  return v9(0, 0);
}

uint64_t sub_1003E4458()
{
  v1 = *(*v0 + 696);
  v2 = *(*v0 + 248);

  sub_1000032A8(v2, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003E4598, 0, 0);
}

uint64_t sub_1003E4598()
{
  v13 = v0[86];
  v1 = v0[75];
  v2 = v0[52];
  v10 = v0[51];
  v11 = v0[54];
  v3 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[40];
  v7 = v0[35];
  v0[20] = v0[85];
  v0[21] = v13;
  sub_100270870();
  swift_willThrowTypedImpl();
  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v11, v10);
  v12 = v0[85];

  v8 = v0[1];

  return v8(v12, v13);
}

uint64_t sub_1003E4794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  sub_1001F0C48(&qword_10077F380, &qword_1006A96D0);
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for DMCAppsWillInstallStateResult();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v5 = sub_1001F0C48(&qword_10077F388, &qword_10069FBD0);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for DMCAppsScope();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for DMCAppsClient();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_1003E4A54, 0, 0);
}

uint64_t sub_1003E4A54(uint64_t a1)
{
  v2 = v1[15];
  static Logger.ddm.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] DMC: willInstall", v7, 0xCu);
    sub_1000032A8(v8, &qword_10077F920, &qword_10069E6A0);
  }

  v10 = v1[37];
  v12 = v1[33];
  v11 = v1[34];
  v14 = v1[28];
  v13 = v1[29];
  v15 = v4;
  v16 = v1[26];
  v17 = v1[27];
  v29 = v1[24];
  v27 = v1[25];
  v28 = v1[23];
  v18 = v1[13];

  v19 = *(v11 + 8);
  v1[38] = v19;
  v1[39] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v10, v12);
  if (*(v18 + *(type metadata accessor for DDMDeclaration(0) + 76)))
  {
    v20 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v20 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v17 + 104))(v14, *v20, v16);
  (*(v17 + 32))(v13, v14, v16);
  DMCAppsClient.init(scope:)();
  v21 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v18, v21, v22, 0, v27);

  v1[5] = v28;
  v1[6] = swift_getOpaqueTypeConformance2();
  v1[7] = swift_getOpaqueTypeConformance2();
  v1[8] = swift_getOpaqueTypeConformance2();
  v1[9] = swift_getOpaqueTypeConformance2();
  v1[10] = swift_getOpaqueTypeConformance2();
  v23 = sub_10020A748(v1 + 2);
  (*(v29 + 16))(v23, v27, v28);
  v24 = swift_task_alloc();
  v1[40] = v24;
  *v24 = v1;
  v24[1] = sub_1003E4D70;
  v25 = v1[22];

  return DMCAppsClient.willInstall(_:)(v25, v1 + 2);
}

uint64_t sub_1003E4D70()
{
  v1 = *v0;

  sub_10000710C((v1 + 16));

  return _swift_task_switch(sub_1003E4E74, 0, 0);
}

uint64_t sub_1003E4E74(uint64_t a1)
{
  v67 = v1;
  v3 = v1[21];
  v2 = v1[22];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[15];
  static Logger.ddm.getter();
  v7 = *(v5 + 16);
  v7(v3, v2, v4);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[38];
  v63 = v1[33];
  v65 = v1[36];
  v13 = v1[21];
  if (v11)
  {
    v60 = v1[38];
    v61 = v7;
    v14 = v1[20];
    v15 = v1[17];
    v16 = v1[18];
    v59 = v10;
    v17 = v1[15];
    v18 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v66 = v58;
    *v18 = 138412546;
    *(v18 + 4) = v17;
    *v57 = v17;
    *(v18 + 12) = 2082;
    v61(v14, v13, v15);
    v19 = v17;
    v20 = String.init<A>(describing:)();
    v22 = v21;
    v23 = *(v16 + 8);
    v23(v13, v15);
    v7 = v61;
    v24 = sub_1002346CC(v20, v22, &v66);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v59, "[%@] DMC: willInstall -> %{public}s", v18, 0x16u);
    sub_1000032A8(v57, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v58);

    v60(v65, v63);
  }

  else
  {
    v25 = v1[17];
    v26 = v1[18];

    v23 = *(v26 + 8);
    v23(v13, v25);
    v12(v65, v63);
  }

  v1[41] = v23;
  v28 = v1[18];
  v27 = v1[19];
  v29 = v1[17];
  v7(v27, v1[22], v29);
  v30 = (*(v28 + 88))(v27, v29);
  if (v30 == enum case for DMCAppsWillInstallStateResult.failInternalError(_:))
  {
    v31 = v1[19];
    v32 = v1[15];
    (*(v1[18] + 96))(v31, v1[17]);
    v33 = *v31;
    v1[43] = *v31;
    v34 = v31[1];
    v1[44] = v34;
    static Logger.ddm.getter();
    v35 = v32;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v1[38];
    v40 = v1[35];
    v41 = v1[33];
    if (v38)
    {
      v42 = v1[15];
      v64 = v1[38];
      v43 = swift_slowAlloc();
      v62 = v40;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v66 = v45;
      *v43 = 138412546;
      *(v43 + 4) = v42;
      *v44 = v42;
      *(v43 + 12) = 2082;
      v46 = v42;
      *(v43 + 14) = sub_1002346CC(v33, v34, &v66);
      _os_log_impl(&_mh_execute_header, v36, v37, "[%@] An internal error ocurred: %{public}s", v43, 0x16u);
      sub_1000032A8(v44, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v45);

      v64(v62, v41);
    }

    else
    {

      v39(v40, v41);
    }

    v51 = v1[16];
    v52 = type metadata accessor for ManagedAppStatus.Reason();
    (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
    v53 = swift_task_alloc();
    v1[45] = v53;
    *v53 = v1;
    v53[1] = sub_1003E56B4;
    v55 = v1[15];
    v54 = v1[16];
    v56 = v1[13];

    return sub_10030B39C(v56, v54, 1, v55);
  }

  else if (v30 == enum case for DMCAppsWillInstallStateResult.proceed(_:))
  {
    v47 = swift_task_alloc();
    v1[42] = v47;
    *v47 = v1;
    v47[1] = sub_1003E5458;
    v48 = v1[15];
    v49 = v1[13];

    return sub_100308140(v49, 1, v48);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1003E5458()
{

  return _swift_task_switch(sub_1003E5554, 0, 0);
}

uint64_t sub_1003E5554()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  (*(v0 + 328))(*(v0 + 176), *(v0 + 136));
  (*(v5 + 8))(v4, v6);
  (*(v1 + 8))(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003E56B4()
{
  v1 = *(*v0 + 128);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003E57DC, 0, 0);
}

uint64_t sub_1003E57DC()
{
  v13 = v0[44];
  v2 = v0[31];
  v1 = v0[32];
  v11 = v0[41];
  v12 = v0[30];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[17];
  v0[11] = v0[43];
  v0[12] = v13;
  sub_100270870();
  swift_willThrowTypedImpl();
  v11(v6, v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v12);

  v8 = v0[1];
  v9 = v0[43];

  return v8(v9, v13);
}

uint64_t sub_1003E5984(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  *(v5 + 568) = a3;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  v6 = type metadata accessor for DMCAppsDidInstallStateResult();
  *(v5 + 192) = v6;
  *(v5 + 200) = *(v6 - 8);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380, &qword_1006A96D0);
  *(v5 + 240) = swift_task_alloc();
  updated = type metadata accessor for DMCAppsDidUpdateStateResult();
  *(v5 + 248) = updated;
  *(v5 + 256) = *(updated - 8);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v5 + 296) = v8;
  *(v5 + 304) = *(v8 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  v9 = sub_1001F0C48(&qword_10077F388, &qword_10069FBD0);
  *(v5 + 360) = v9;
  *(v5 + 368) = *(v9 - 8);
  *(v5 + 376) = swift_task_alloc();
  v10 = type metadata accessor for DMCAppsScope();
  *(v5 + 384) = v10;
  *(v5 + 392) = *(v10 - 8);
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  v11 = type metadata accessor for DMCAppsClient();
  *(v5 + 416) = v11;
  *(v5 + 424) = *(v11 - 8);
  *(v5 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_1003E5CEC, 0, 0);
}

uint64_t sub_1003E5CEC()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 376);
  v6 = *(v0 + 568);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  if (*(v8 + *(type metadata accessor for DDMDeclaration(0) + 76)))
  {
    v9 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v9 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v4 + 104))(v2, *v9, v3);
  (*(v4 + 32))(v1, v2, v3);
  DMCAppsClient.init(scope:)();
  v10 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v8, v10, v11, v7, v5);

  v12 = *(v0 + 184);
  if (v6)
  {
    static Logger.ddm.getter();
    v13 = v12;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v16;
      *v18 = v16;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%@] DMC: didUpdate", v17, 0xCu);
      sub_1000032A8(v18, &qword_10077F920, &qword_10069E6A0);
    }

    v21 = *(v0 + 368);
    v20 = *(v0 + 376);
    v23 = *(v0 + 352);
    v22 = *(v0 + 360);
    v24 = *(v0 + 296);
    v25 = *(v0 + 304);

    v26 = *(v25 + 8);
    *(v0 + 440) = v26;
    *(v0 + 448) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v23, v24);
    *(v0 + 112) = v22;
    *(v0 + 120) = swift_getOpaqueTypeConformance2();
    *(v0 + 128) = swift_getOpaqueTypeConformance2();
    *(v0 + 136) = swift_getOpaqueTypeConformance2();
    *(v0 + 144) = swift_getOpaqueTypeConformance2();
    *(v0 + 152) = swift_getOpaqueTypeConformance2();
    v27 = sub_10020A748((v0 + 88));
    (*(v21 + 16))(v27, v20, v22);
    v28 = swift_task_alloc();
    *(v0 + 456) = v28;
    *v28 = v0;
    v28[1] = sub_1003E620C;
    v29 = *(v0 + 288);

    return DMCAppsClient.didUpdate(_:)(v29, v0 + 88);
  }

  else
  {
    static Logger.ddm.getter();
    v30 = v12;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 184);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v33;
      *v35 = v33;
      v36 = v33;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%@] DMC: didInstall", v34, 0xCu);
      sub_1000032A8(v35, &qword_10077F920, &qword_10069E6A0);
    }

    v38 = *(v0 + 368);
    v37 = *(v0 + 376);
    v39 = *(v0 + 360);
    v40 = *(v0 + 328);
    v41 = *(v0 + 296);
    v42 = *(v0 + 304);

    v43 = *(v42 + 8);
    *(v0 + 504) = v43;
    *(v0 + 512) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43(v40, v41);
    *(v0 + 40) = v39;
    *(v0 + 48) = swift_getOpaqueTypeConformance2();
    *(v0 + 56) = swift_getOpaqueTypeConformance2();
    *(v0 + 64) = swift_getOpaqueTypeConformance2();
    *(v0 + 72) = swift_getOpaqueTypeConformance2();
    *(v0 + 80) = swift_getOpaqueTypeConformance2();
    v44 = sub_10020A748((v0 + 16));
    (*(v38 + 16))(v44, v37, v39);
    v45 = swift_task_alloc();
    *(v0 + 520) = v45;
    *v45 = v0;
    v45[1] = sub_1003E6F70;
    v46 = *(v0 + 232);

    return DMCAppsClient.didInstall(_:)(v46, v0 + 16);
  }
}

uint64_t sub_1003E620C()
{
  v1 = *v0;

  sub_10000710C((v1 + 88));

  return _swift_task_switch(sub_1003E6310, 0, 0);
}

uint64_t sub_1003E6310(uint64_t a1)
{
  v53 = v1;
  v3 = v1[35];
  v2 = v1[36];
  v4 = v1[31];
  v5 = v1[32];
  v6 = v1[23];
  static Logger.ddm.getter();
  v7 = *(v5 + 16);
  v7(v3, v2, v4);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[55];
  v50 = v1[37];
  v51 = v1[43];
  v13 = v1[35];
  if (v11)
  {
    v48 = v1[55];
    v49 = v7;
    v14 = v1[34];
    v15 = v1[31];
    v16 = v1[32];
    v47 = v10;
    v17 = v1[23];
    v18 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52 = v46;
    *v18 = 138412546;
    *(v18 + 4) = v17;
    *v45 = v17;
    *(v18 + 12) = 2082;
    v49(v14, v13, v15);
    v19 = v17;
    v20 = String.init<A>(describing:)();
    v22 = v21;
    v23 = *(v16 + 8);
    v23(v13, v15);
    v7 = v49;
    v24 = sub_1002346CC(v20, v22, &v52);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v47, "[%@] DMC: didUpdate -> %{public}s", v18, 0x16u);
    sub_1000032A8(v45, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v46);

    v48(v51, v50);
  }

  else
  {
    v25 = v1[31];
    v26 = v1[32];

    v23 = *(v26 + 8);
    v23(v13, v25);
    v12(v51, v50);
  }

  v1[58] = v23;
  v28 = v1[32];
  v27 = v1[33];
  v29 = v1[31];
  v7(v27, v1[36], v29);
  v30 = (*(v28 + 88))(v27, v29);
  if (v30 == enum case for DMCAppsDidUpdateStateResult.failInternalError(_:))
  {
    v31 = v1[33];
    v32 = v1[30];
    (*(v1[32] + 96))(v31, v1[31]);
    v1[60] = *v31;
    v1[61] = v31[1];
    v33 = enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:);
    v34 = type metadata accessor for ManagedAppStatus.Reason();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v32, v33, v34);
    (*(v35 + 56))(v32, 0, 1, v34);
    v36 = swift_task_alloc();
    v1[62] = v36;
    *v36 = v1;
    v36[1] = sub_1003E6A74;
    v37 = v1[30];
    v38 = v1[23];
    v39 = v1[20];

    return sub_10030B39C(v39, v37, 1, v38);
  }

  else if (v30 == enum case for DMCAppsDidUpdateStateResult.ok(_:))
  {
    v41 = v1[21];
    v42 = swift_task_alloc();
    v1[59] = v42;
    *v42 = v1;
    v42[1] = sub_1003E67D0;
    v43 = v1[23];
    v44 = v1[20];

    return sub_1003088B8(v44, v41, 1, v43);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1003E67D0()
{

  return _swift_task_switch(sub_1003E68CC, 0, 0);
}

uint64_t sub_1003E68CC()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v6 = *(v0 + 360);
  (*(v0 + 464))(*(v0 + 288), *(v0 + 248));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003E6A74()
{
  v1 = *(*v0 + 240);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003E6B9C, 0, 0);
}

uint64_t sub_1003E6B9C(uint64_t a1)
{
  v43 = v1;
  v2 = v1[23];
  static Logger.ddm.getter();
  v3 = v2;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[61];
  if (v6)
  {
    v26 = v1[60];
    v36 = v1[58];
    v31 = v1[55];
    v8 = v1[53];
    v40 = v1[54];
    v38 = v1[52];
    v9 = v1[46];
    v32 = v1[45];
    v34 = v1[47];
    v27 = v1[37];
    v28 = v1[42];
    v29 = v1[31];
    v30 = v1[36];
    v10 = v1[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2082;
    v14 = v10;
    v15 = sub_1002346CC(v26, v7, &v42);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] An internal error ocurred: %{public}s", v11, 0x16u);
    sub_1000032A8(v12, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v13);

    v31(v28, v27);
    v36(v30, v29);
    (*(v9 + 8))(v34, v32);
    (*(v8 + 8))(v40, v38);
  }

  else
  {
    v37 = v1[58];
    v16 = v1[55];
    v17 = v1[53];
    v41 = v1[54];
    v39 = v1[52];
    v18 = v4;
    v19 = v1[46];
    v33 = v1[45];
    v35 = v1[47];
    v20 = v1[42];
    v22 = v1[36];
    v21 = v1[37];
    v23 = v1[31];

    v16(v20, v21);
    v37(v22, v23);
    (*(v19 + 8))(v35, v33);
    (*(v17 + 8))(v41, v39);
  }

  v24 = v1[1];

  return v24();
}

uint64_t sub_1003E6F70()
{
  v1 = *v0;

  sub_10000710C((v1 + 16));

  return _swift_task_switch(sub_1003E7074, 0, 0);
}

uint64_t sub_1003E7074(uint64_t a1)
{
  v53 = v1;
  v3 = v1[28];
  v2 = v1[29];
  v4 = v1[24];
  v5 = v1[25];
  v6 = v1[23];
  static Logger.ddm.getter();
  v7 = *(v5 + 16);
  v7(v3, v2, v4);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[63];
  v50 = v1[37];
  v51 = v1[40];
  v13 = v1[28];
  if (v11)
  {
    v48 = v1[63];
    v49 = v7;
    v14 = v1[27];
    v15 = v1[24];
    v16 = v1[25];
    v47 = v10;
    v17 = v1[23];
    v18 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52 = v46;
    *v18 = 138412546;
    *(v18 + 4) = v17;
    *v45 = v17;
    *(v18 + 12) = 2082;
    v49(v14, v13, v15);
    v19 = v17;
    v20 = String.init<A>(describing:)();
    v22 = v21;
    v23 = *(v16 + 8);
    v23(v13, v15);
    v7 = v49;
    v24 = sub_1002346CC(v20, v22, &v52);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v47, "[%@] DMC: didInstall -> %{public}s", v18, 0x16u);
    sub_1000032A8(v45, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v46);

    v48(v51, v50);
  }

  else
  {
    v25 = v1[24];
    v26 = v1[25];

    v23 = *(v26 + 8);
    v23(v13, v25);
    v12(v51, v50);
  }

  v1[66] = v23;
  v28 = v1[25];
  v27 = v1[26];
  v29 = v1[24];
  v7(v27, v1[29], v29);
  v30 = (*(v28 + 88))(v27, v29);
  if (v30 == enum case for DMCAppsDidInstallStateResult.failInternalError(_:))
  {
    v31 = v1[30];
    v32 = v1[26];
    (*(v1[25] + 96))(v32, v1[24]);
    v1[68] = *v32;
    v1[69] = v32[1];
    v33 = enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:);
    v34 = type metadata accessor for ManagedAppStatus.Reason();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v31, v33, v34);
    (*(v35 + 56))(v31, 0, 1, v34);
    v36 = swift_task_alloc();
    v1[70] = v36;
    *v36 = v1;
    v36[1] = sub_1003E77DC;
    v37 = v1[30];
    v38 = v1[23];
    v39 = v1[20];

    return sub_10030B39C(v39, v37, 1, v38);
  }

  else if (v30 == enum case for DMCAppsDidInstallStateResult.ok(_:))
  {
    v41 = v1[21];
    v42 = swift_task_alloc();
    v1[67] = v42;
    *v42 = v1;
    v42[1] = sub_1003E7538;
    v43 = v1[23];
    v44 = v1[20];

    return sub_1003088B8(v44, v41, 1, v43);
  }

  else
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_1003E7538()
{

  return _swift_task_switch(sub_1003E7634, 0, 0);
}

uint64_t sub_1003E7634()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v6 = *(v0 + 360);
  (*(v0 + 528))(*(v0 + 232), *(v0 + 192));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003E77DC()
{
  v1 = *(*v0 + 240);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003E7904, 0, 0);
}

uint64_t sub_1003E7904(uint64_t a1)
{
  v37 = v1;
  static Logger.ddm.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[69];
  if (v4)
  {
    v6 = v1[68];
    v24 = v1[63];
    v7 = v1[53];
    v34 = v1[54];
    v30 = v1[66];
    v32 = v1[52];
    v8 = v1[46];
    v26 = v1[45];
    v28 = v1[47];
    v9 = v1[37];
    v21 = v1[39];
    v22 = v1[24];
    v23 = v1[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136446210;
    v12 = sub_1002346CC(v6, v5, &v36);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Handled management error: %{public}s", v10, 0xCu);
    sub_10000710C(v11);

    v24(v21, v9);
    v30(v23, v22);
    (*(v8 + 8))(v28, v26);
    (*(v7 + 8))(v34, v32);
  }

  else
  {
    v25 = v1[63];
    v13 = v1[53];
    v35 = v1[54];
    v31 = v1[66];
    v33 = v1[52];
    v14 = v1[46];
    v27 = v1[45];
    v29 = v1[47];
    v15 = v1[39];
    v16 = v1[37];
    v17 = v1[29];
    v18 = v1[24];

    v25(v15, v16);
    v31(v17, v18);
    (*(v14 + 8))(v29, v27);
    (*(v13 + 8))(v35, v33);
  }

  v19 = v1[1];

  return v19();
}

uint64_t sub_1003E7C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  sub_1001F0C48(&qword_10077F380, &qword_1006A96D0);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for DDMPurchaseMethod();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for DMCAppsDidUninstallStateResult();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_10077F388, &qword_10069FBD0);
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v7 = type metadata accessor for DMCAppsScope();
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = type metadata accessor for DMCAppsClient();
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[34] = v9;
  v3[35] = *(v9 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_1003E7F84, 0, 0);
}

uint64_t sub_1003E7F84(uint64_t a1)
{
  v2 = v1[13];
  static Logger.ddm.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] DMC: didUninstall", v7, 0xCu);
    sub_1000032A8(v8, &qword_10077F920, &qword_10069E6A0);
  }

  v10 = v1[38];
  v12 = v1[34];
  v11 = v1[35];
  v14 = v1[29];
  v13 = v1[30];
  v15 = v4;
  v16 = v1[27];
  v17 = v1[28];
  v30 = v1[25];
  v28 = v1[26];
  v29 = v1[24];
  v18 = v1[11];

  v19 = *(v11 + 8);
  v1[39] = v19;
  v1[40] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v10, v12);
  v20 = type metadata accessor for DDMDeclaration(0);
  v1[41] = v20;
  if (*(v18 + *(v20 + 76)))
  {
    v21 = &enum case for DMCAppsScope.user(_:);
  }

  else
  {
    v21 = &enum case for DMCAppsScope.system(_:);
  }

  (*(v17 + 104))(v14, *v21, v16);
  (*(v17 + 32))(v13, v14, v16);
  DMCAppsClient.init(scope:)();
  v22 = DMCAppsClient.organizationName.getter();
  sub_1003E92D4(v18, v22, v23, 0, v28);

  v1[5] = v29;
  v1[6] = swift_getOpaqueTypeConformance2();
  v1[7] = swift_getOpaqueTypeConformance2();
  v1[8] = swift_getOpaqueTypeConformance2();
  v1[9] = swift_getOpaqueTypeConformance2();
  v1[10] = swift_getOpaqueTypeConformance2();
  v24 = sub_10020A748(v1 + 2);
  (*(v30 + 16))(v24, v28, v29);
  v25 = swift_task_alloc();
  v1[42] = v25;
  *v25 = v1;
  v25[1] = sub_1003E82A4;
  v26 = v1[23];

  return DMCAppsClient.didUninstall(_:)(v26, v1 + 2);
}

uint64_t sub_1003E82A4()
{
  v1 = *v0;

  sub_10000710C((v1 + 16));

  return _swift_task_switch(sub_1003E83A8, 0, 0);
}

uint64_t sub_1003E83A8(uint64_t a1)
{
  v77 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[18];
  v5 = v1[19];
  v6 = v1[13];
  static Logger.ddm.getter();
  v7 = *(v5 + 16);
  v7(v3, v2, v4);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[39];
  v73 = v1[34];
  v75 = v1[37];
  v13 = v1[22];
  if (v11)
  {
    v70 = v1[39];
    v71 = v7;
    v14 = v1[21];
    v15 = v1[18];
    v16 = v1[19];
    v69 = v10;
    v17 = v1[13];
    v18 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v76 = v68;
    *v18 = 138412546;
    *(v18 + 4) = v17;
    *v67 = v17;
    *(v18 + 12) = 2082;
    v71(v14, v13, v15);
    v19 = v17;
    v20 = String.init<A>(describing:)();
    v22 = v21;
    v23 = *(v16 + 8);
    v23(v13, v15);
    v7 = v71;
    v24 = sub_1002346CC(v20, v22, &v76);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v69, "[%@] DMC: didUninstall -> %{public}s", v18, 0x16u);
    sub_1000032A8(v67, &qword_10077F920, &qword_10069E6A0);

    sub_10000710C(v68);

    v70(v75, v73);
  }

  else
  {
    v25 = v1[18];
    v26 = v1[19];

    v23 = *(v26 + 8);
    v23(v13, v25);
    v12(v75, v73);
  }

  v1[43] = v23;
  v28 = v1[19];
  v27 = v1[20];
  v29 = v1[18];
  v7(v27, v1[23], v29);
  v30 = (*(v28 + 88))(v27, v29);
  if (v30 == enum case for DMCAppsDidUninstallStateResult.failInternalError(_:))
  {
    v31 = v1[20];
    v32 = v1[13];
    (*(v1[19] + 96))(v31, v1[18]);
    v33 = *v31;
    v1[47] = *v31;
    v34 = v31[1];
    v1[48] = v34;
    static Logger.ddm.getter();
    v35 = v32;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v1[39];
    v40 = v1[36];
    v41 = v1[34];
    if (v38)
    {
      v42 = v1[13];
      v74 = v1[39];
      v43 = swift_slowAlloc();
      v72 = v40;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v76 = v45;
      *v43 = 138412546;
      *(v43 + 4) = v42;
      *v44 = v42;
      *(v43 + 12) = 2082;
      v46 = v42;
      *(v43 + 14) = sub_1002346CC(v33, v34, &v76);
      _os_log_impl(&_mh_execute_header, v36, v37, "[%@] An internal error ocurred: %{public}s", v43, 0x16u);
      sub_1000032A8(v44, &qword_10077F920, &qword_10069E6A0);

      sub_10000710C(v45);

      v74(v72, v41);
    }

    else
    {

      v39(v40, v41);
    }

    v55 = v1[14];
    v56 = type metadata accessor for ManagedAppStatus.Reason();
    (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
    v57 = swift_task_alloc();
    v1[49] = v57;
    *v57 = v1;
    v57[1] = sub_1003E8FB0;
    v59 = v1[13];
    v58 = v1[14];
    v60 = v1[11];

    return sub_10030B39C(v60, v58, 1, v59);
  }

  if (v30 != enum case for DMCAppsDidUninstallStateResult.ok(_:))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v48 = v1[16];
  v47 = v1[17];
  v49 = v1[15];
  (*(v48 + 16))(v47, v1[11] + *(v1[41] + 100), v49);
  v50 = (*(v48 + 88))(v47, v49);
  if (v50 != enum case for DDMPurchaseMethod.volumePurchaseProgram(_:) && v50 != enum case for DDMPurchaseMethod.manifest(_:) && v50 != enum case for DDMPurchaseMethod.preInstalled(_:))
  {
    if (v50 == enum case for DDMPurchaseMethod.other(_:))
    {
      v51 = swift_task_alloc();
      v1[46] = v51;
      *v51 = v1;
      v51[1] = sub_1003E8EB4;
      v52 = v1[13];
      v53 = v1[11];

      return sub_10030AC24(v53, 1, v52);
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (*(v1[11] + *(v1[41] + 60)) == 1)
  {
    v61 = swift_task_alloc();
    v1[44] = v61;
    *v61 = v1;
    v61[1] = sub_1003E8B50;
    v62 = v1[13];
    v63 = v1[11];

    return sub_100305BE8(v63, 1, v62);
  }

  else
  {
    v64 = swift_task_alloc();
    v1[45] = v64;
    *v64 = v1;
    v64[1] = sub_1003E8DB8;
    v65 = v1[13];
    v66 = v1[11];

    return sub_100309BD4(v66, 1, v65);
  }
}

uint64_t sub_1003E8B50()
{

  return _swift_task_switch(sub_1003E8C4C, 0, 0);
}

uint64_t sub_1003E8C4C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);
  (*(v0 + 344))(*(v0 + 184), *(v0 + 144));
  (*(v5 + 8))(v4, v6);
  (*(v1 + 8))(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003E8DB8()
{

  return _swift_task_switch(sub_1003ED630, 0, 0);
}

uint64_t sub_1003E8EB4()
{

  return _swift_task_switch(sub_1003ED630, 0, 0);
}

uint64_t sub_1003E8FB0()
{
  v1 = *(*v0 + 112);

  sub_1000032A8(v1, &qword_10077F380, &qword_1006A96D0);

  return _swift_task_switch(sub_1003E90D8, 0, 0);
}

uint64_t sub_1003E90D8()
{
  v1 = v0[47];
  v10 = v0[48];
  v3 = v0[32];
  v2 = v0[33];
  v13 = v0[43];
  v14 = v0[31];
  v4 = v0[25];
  v5 = v0[23];
  v11 = v0[24];
  v12 = v0[26];
  v6 = v0[18];
  type metadata accessor for InternalError(0);
  sub_1003ED304(&qword_10077F900, type metadata accessor for InternalError, byte_1006B8E64);
  swift_allocError();
  *v7 = v1;
  v7[1] = v10;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v13(v5, v6);
  (*(v4 + 8))(v12, v11);
  (*(v3 + 8))(v2, v14);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003E92D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v154 = a4;
  v162 = a3;
  v161 = a2;
  v159 = a5;
  v6 = sub_1001F0C48(&qword_1007836E0, &qword_1006A9688);
  __chkstk_darwin(v6 - 8);
  v160 = &v133 - v7;
  v8 = sub_1001F0C48(&qword_1007836E8, &qword_1006A9690);
  __chkstk_darwin(v8 - 8);
  v158 = &v133 - v9;
  v10 = sub_1001F0C48(&qword_1007836F0, &qword_1006A9698);
  __chkstk_darwin(v10 - 8);
  v157 = &v133 - v11;
  v12 = sub_1001F0C48(&qword_1007836F8, &qword_1006A96A0);
  __chkstk_darwin(v12 - 8);
  v156 = &v133 - v13;
  v14 = sub_1001F0C48(&qword_100783700, &qword_1006A96A8);
  __chkstk_darwin(v14 - 8);
  v155 = &v133 - v15;
  v16 = sub_1001F0C48(&qword_100783708, &qword_1006A96B0);
  __chkstk_darwin(v16 - 8);
  v172 = &v133 - v17;
  v18 = type metadata accessor for URL();
  v163 = *(v18 - 8);
  v164 = v18;
  __chkstk_darwin(v18);
  v147 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for VPPLicenseType();
  countAndFlagsBits = *(v20 - 8);
  v168 = v20;
  __chkstk_darwin(v20);
  v139 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v145 = *(v146 - 8);
  v22 = __chkstk_darwin(v146);
  v137 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v138 = &v133 - v25;
  __chkstk_darwin(v24);
  v144 = &v133 - v26;
  v150 = type metadata accessor for StoreSource();
  v152 = *(v150 - 8);
  v27 = __chkstk_darwin(v150);
  v136 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v140 = (&v133 - v30);
  __chkstk_darwin(v29);
  v134 = &v133 - v31;
  v32 = sub_1001F0C48(&qword_100783710, &qword_1006A96B8);
  v33 = __chkstk_darwin(v32 - 8);
  v151 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v148 = &v133 - v35;
  v36 = sub_1001F0C48(&unk_1007809F0, &unk_10069E8F0);
  v37 = __chkstk_darwin(v36 - 8);
  v135 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v177 = &v133 - v39;
  v40 = sub_1001F0C48(&qword_10077F340, &unk_10069FA60);
  v41 = __chkstk_darwin(v40 - 8);
  v143 = &v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v133 - v43;
  v45 = type metadata accessor for DDMPurchaseMethod();
  object = *(v45 - 8);
  v175 = v45;
  v46 = __chkstk_darwin(v45);
  v166 = &v133 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v173 = &v133 - v48;
  v179 = type metadata accessor for InstallSource();
  v171 = *(v179 - 8);
  v49 = __chkstk_darwin(v179);
  v165 = &v133 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v178 = &v133 - v51;
  v52 = type metadata accessor for InstallWhen();
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v55 = &v133 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for InstallBehavior();
  v176 = *(v182 - 8);
  v56 = __chkstk_darwin(v182);
  v58 = &v133 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v181 = &v133 - v59;
  v170 = type metadata accessor for RemoveBehavior();
  v153 = *(v170 - 8);
  __chkstk_darwin(v170);
  v180 = &v133 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1001F0C48(&qword_10077F358, &qword_1006A96C0);
  v62 = __chkstk_darwin(v61 - 8);
  v149 = &v133 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v65 = &v133 - v64;
  v66 = *(a1 + 32);
  v169 = &v133 - v64;
  if (v66 >> 60 == 15)
  {
    v67 = type metadata accessor for ManagedAppDeclaration.Attributes();
    (*(*(v67 - 8) + 56))(v65, 1, 1, v67);
  }

  else
  {
    sub_10020ABFC(*(a1 + 24), v66);
    ManagedAppDeclaration.Attributes.init(rawValue:)();
    v68 = type metadata accessor for ManagedAppDeclaration.Attributes();
    (*(*(v68 - 8) + 56))(v65, 0, 1, v68);
  }

  v69 = type metadata accessor for DDMDeclaration(0);
  v70 = *(a1 + v69[15]);
  RemoveBehavior.init(removable:removeKeychainGroupWhenUninstall:)();
  v71 = &enum case for InstallWhen.onDemand(_:);
  if (!v70)
  {
    v71 = &enum case for InstallWhen.immediately(_:);
  }

  (*(v53 + 104))(v55, *v71, v52);
  InstallBehavior.init(installWhen:)();
  (*(v176 + 32))(v181, v58, v182);
  v73 = v173;
  v72 = object;
  v74 = object[2];
  v75 = v175;
  v74(v173, a1 + v69[25], v175);
  v76 = v44;
  sub_100005934(a1 + v69[18], v44, &qword_10077F340, &unk_10069FA60);
  v141 = *(a1 + 8);
  v142 = *(a1 + 16);
  sub_100005934(a1 + v69[20], v177, &unk_1007809F0, &unk_10069E8F0);
  v77 = v166;
  v74(v166, v73, v75);
  v78 = (v72[11])(v77, v75);
  if (v78 == enum case for DDMPurchaseMethod.volumePurchaseProgram(_:))
  {
    v79 = v143;
    sub_100005934(v44, v143, &qword_10077F340, &unk_10069FA60);
    v80 = v145;
    v81 = 1;
    v82 = v146;
    v83 = v76;
    if ((*(v145 + 48))(v79, 1, v146) != 1)
    {
      v84 = v144;
      (*(v80 + 32))(v144, v79, v82);
      v85 = *(v80 + 16);
      v86 = v138;
      v85(v138, v84, v82);
      v87 = v137;
      v85(v137, v86, v82);
      v88 = (*(v80 + 88))(v87, v82);
      if (v88 == enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.user(_:))
      {
        v89 = &enum case for VPPLicenseType.user(_:);
      }

      else
      {
        if (v88 != enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.device(_:))
        {
LABEL_33:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v89 = &enum case for VPPLicenseType.device(_:);
      }

      v97 = *(v80 + 8);
      v97(v86, v82);
      v98 = *v89;
      v100 = countAndFlagsBits;
      v99 = v168;
      v101 = v139;
      (*(countAndFlagsBits + 104))(v139, v98, v168);
      (*(v100 + 32))(v148, v101, v99);
      v97(v144, v82);
      v81 = 0;
    }

    v102 = v148;
    (*(countAndFlagsBits + 56))(v148, v81, 1, v168);
    if ((v142 & 1) == 0)
    {
      v96 = v165;
      if ((v141 & 0x8000000000000000) == 0)
      {
        v103 = v140;
        *v140 = v141;
        (*(v152 + 104))(v103, enum case for StoreSource.volumePurchaseProgram(_:), v150);
        sub_100005934(v102, v151, &qword_100783710, &qword_1006A96B8);
        InstallSource.init(storeSource:vppType:)();
        sub_1000032A8(v102, &qword_100783710, &qword_1006A96B8);
        v93 = v163;
        v92 = v164;
        v90 = v177;
        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v78 == enum case for DDMPurchaseMethod.manifest(_:))
  {
    v90 = v177;
    v91 = v135;
    sub_100005934(v177, v135, &unk_1007809F0, &unk_10069E8F0);
    v93 = v163;
    v92 = v164;
    if ((*(v163 + 48))(v91, 1, v164) == 1)
    {
      goto LABEL_32;
    }

    v83 = v44;
    v94 = v134;
    (*(v93 + 32))(v134, v91, v92);
    v95 = &enum case for StoreSource.manifest(_:);
  }

  else
  {
    v93 = v163;
    v92 = v164;
    v83 = v44;
    v90 = v177;
    if (v78 != enum case for DDMPurchaseMethod.preInstalled(_:) && v78 != enum case for DDMPurchaseMethod.other(_:))
    {
      goto LABEL_33;
    }

    v94 = v136;
    *v136 = 0;
    v95 = &enum case for StoreSource.freeOrRedemptionCode(_:);
  }

  (*(v152 + 104))(v94, *v95, v150);
  (*(countAndFlagsBits + 56))(v151, 1, 1, v168);
  v96 = v165;
  InstallSource.init(storeSource:vppType:)();
LABEL_23:
  sub_1000032A8(v90, &unk_1007809F0, &unk_10069E8F0);
  sub_1000032A8(v83, &qword_10077F340, &unk_10069FA60);
  (object[1])(v173, v175);
  (*(v171 + 32))(v178, v96, v179);
  v104 = *(a1 + 56);
  v177 = *(a1 + 48);
  v175 = v104;
  if (v154)
  {
    v105 = [v154 URL];
    v106 = v147;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v107 = URL.path(percentEncoded:)(0);
    countAndFlagsBits = v107._countAndFlagsBits;
    object = v107._object;
    (*(v93 + 8))(v106, v92);
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v108 = v149;
  v109 = (a1 + v69[14]);
  v110 = *v109;
  v111 = v109[1];
  sub_100005934(v169, v149, &qword_10077F358, &qword_1006A96C0);
  v112 = type metadata accessor for ManagedAppDeclaration.Attributes();
  v113 = *(v112 - 8);
  v114 = (*(v113 + 48))(v108, 1, v112);
  v173 = v110;
  v168 = v111;
  if (v114 == 1)
  {
    sub_1000032A8(v108, &qword_10077F358, &qword_1006A96C0);
    v166 = 0;
  }

  else
  {
    v115 = ManagedAppDeclaration.Attributes.dictionaryRepresentation()();
    v132 = *(v113 + 8);
    v166 = v115;
    v132(v108, v112);
  }

  v117 = v171;
  v116 = v172;
  v118 = v179;
  (*(v171 + 16))(v172, v178, v179);
  (*(v117 + 56))(v116, 0, 1, v118);
  v119 = v176;
  v120 = v155;
  v121 = v182;
  (*(v176 + 16))(v155, v181, v182);
  (*(v119 + 56))(v120, 0, 1, v121);
  updated = type metadata accessor for UpdateBehavior();
  v123 = v156;
  (*(*(updated - 8) + 56))(v156, 1, 1, updated);
  v124 = v157;
  BackupBehavior.init(backupAppData:)();
  v125 = type metadata accessor for BackupBehavior();
  (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
  v126 = v153;
  v127 = v158;
  v128 = v170;
  (*(v153 + 16))(v158, v180, v170);
  (*(v126 + 56))(v127, 0, 1, v128);
  v129 = type metadata accessor for DocumentSyncBehavior();
  v130 = v160;
  (*(*(v129 - 8) + 56))(v160, 1, 1, v129);
  static DMCAppsClient.makeAppInfo2(bundleID:path:originator:sourceID:attributes:installSource:installBehavior:updateBehavior:backupBehavior:removeBehavior:documentSyncBehavior:)();

  sub_1000032A8(v130, &qword_1007836E0, &qword_1006A9688);
  sub_1000032A8(v127, &qword_1007836E8, &qword_1006A9690);
  sub_1000032A8(v124, &qword_1007836F0, &qword_1006A9698);
  sub_1000032A8(v123, &qword_1007836F8, &qword_1006A96A0);
  sub_1000032A8(v120, &qword_100783700, &qword_1006A96A8);
  sub_1000032A8(v172, &qword_100783708, &qword_1006A96B0);
  (*(v117 + 8))(v178, v179);
  (*(v119 + 8))(v181, v182);
  (*(v126 + 8))(v180, v170);
  return sub_1000032A8(v169, &qword_10077F358, &qword_1006A96C0);
}