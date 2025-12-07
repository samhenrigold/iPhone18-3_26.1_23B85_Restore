uint64_t sub_10001AB30()
{
  sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
  sub_100010D80();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10001ABBC(void *a1, uint64_t a2, _BYTE *a3)
{
  sub_10000E634(&qword_10002CCD0, &qword_1000208C0);

  return sub_100019774(a1, a2, a3);
}

uint64_t sub_10001AC68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001AC80()
{
  result = qword_10002CCF0;
  if (!qword_10002CCF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002CCF0);
  }

  return result;
}

__n128 _s23LibraryMappingOperationV14_DatabaseTrackVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001ACD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001AD18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 _s19FavoritingOperationV14_DatabaseTrackVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s19FavoritingOperationV14_DatabaseTrackVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s19FavoritingOperationV14_DatabaseTrackVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_10001ADE0()
{
  result = qword_10002CD00;
  if (!qword_10002CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD00);
  }

  return result;
}

uint64_t sub_10001AE90()
{
}

uint64_t sub_10001AF38()
{
}

uint64_t sub_10001AF88()
{

  return swift_slowAlloc();
}

uint64_t sub_10001AFA4()
{
}

BOOL sub_10001B014(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10001B030(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = *(v3 + 16);
  v2[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

unint64_t sub_10001B0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_100013F98(v4, v5, va);
}

uint64_t sub_10001B12C()
{
}

uint64_t sub_10001B150()
{
}

uint64_t sub_10001B174()
{
}

void sub_10001B1F4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_10001B214()
{

  return type metadata accessor for Logger();
}

uint64_t sub_10001B234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;

  return type metadata accessor for MusicDaemon.Error();
}

uint64_t sub_10001B254()
{

  return swift_slowAlloc();
}

uint64_t sub_10001B26C(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10001B284()
{
  type metadata accessor for DaemonActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_10002CEA8 = v0;
  return result;
}

uint64_t sub_10001B2C0()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10001B318()
{
  result = qword_10002C9D8;
  if (!qword_10002C9D8)
  {
    type metadata accessor for DaemonActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9D8);
  }

  return result;
}

uint64_t sub_10001B394()
{
  if (qword_10002C630 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10001B3F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DaemonActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

id sub_10001B428(uint64_t a1, uint64_t a2)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [v2 longLongValue];

  v4 = [objc_allocWithZone(NSNumber) initWithLongLong:v3];
  v5 = [objc_opt_self() specificAccountWithDSID:v4];
  result = [objc_opt_self() musicLibraryForUserAccount:v5];
  if (result)
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001B4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_10000E634(&qword_10002CA68, &qword_100020650);
  sub_100010FE8(v4);
  v3[10] = sub_1000115D4();
  v5 = sub_10000E634(&qword_10002CCA0, &qword_100020880);
  sub_100010FE8(v5);
  v3[11] = sub_1000115D4();
  v6 = type metadata accessor for ContentRating();
  sub_100010FE8(v6);
  v3[12] = sub_1000115D4();
  v7 = type metadata accessor for MusicDeviceLocalID();
  v3[13] = v7;
  sub_100010D70(v7);
  v3[14] = v8;
  v3[15] = sub_1000115D4();
  v9 = sub_10000E634(&qword_10002CCE8, &qword_1000208D8);
  sub_100010FE8(v9);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v10 = type metadata accessor for MusicIdentifierSet();
  v3[18] = v10;
  sub_100010D70(v10);
  v3[19] = v11;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v12 = type metadata accessor for MusicFavoriteStatus();
  v3[23] = v12;
  sub_100010D70(v12);
  v3[24] = v13;
  v3[25] = sub_1000115D4();
  v14 = sub_10000E634(&qword_10002CDA8, &qword_100020A90);
  v3[26] = v14;
  sub_100010D70(v14);
  v3[27] = v15;
  v3[28] = sub_1000115D4();
  v16 = sub_10000E634(&qword_10002CDB0, &qword_100020A98);
  v3[29] = v16;
  sub_100010D70(v16);
  v3[30] = v17;
  v3[31] = sub_1000115D4();
  v18 = sub_10000E634(&qword_10002CDB8, &qword_100020AA0);
  v3[32] = v18;
  sub_100010D70(v18);
  v3[33] = v19;
  v3[34] = sub_1000115D4();
  v20 = type metadata accessor for MusicDaemon.Item();
  v3[35] = v20;
  sub_100010D70(v20);
  v3[36] = v21;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v22 = qword_10002CEA8;
  v3[44] = qword_10002CEA8;

  return _swift_task_switch(sub_10001B908, v22, 0);
}

uint64_t sub_10001B908()
{
  v67 = v0;
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 64);
  v5 = type metadata accessor for Logger();
  *(v0 + 360) = sub_10000F74C(v5, qword_10002CEB0);
  v6 = *(v3 + 16);
  *(v0 + 368) = v6;
  *(v0 + 376) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 280);
  if (v9)
  {
    v11 = sub_1000118AC();
    v63 = swift_slowAlloc();
    v66 = v63;
    *v11 = 136446210;
    sub_10001E94C();
    sub_10001E600(v12, v13, &protocol conformance descriptor for MusicDaemon.Item);
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = sub_10001EA0C();
    v19(v18);
    v20 = v15;
    v6 = v14;
    v21 = sub_100013F98(v20, v17, &v66);

    *(v11 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "╭ beginning library mapping operation with item: %{public}s.", v11, 0xCu);
    sub_10000F7CC(v63);
    sub_100014CDC(v63);
    sub_100014CDC(v11);
  }

  else
  {

    v22 = sub_10001EA0C();
    v23(v22);
  }

  *(v0 + 384) = v10;
  v24 = sub_10001CBE0();
  *(v0 + 392) = v25;
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = sub_1000118AC();
      v31 = swift_slowAlloc();
      v66 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_100013F98(v26, v27, &v66);
      _os_log_impl(&_mh_execute_header, v28, v29, "| fetching database track with query: %{public}s.", v30, 0xCu);
      sub_10000F7CC(v31);
      sub_100014CDC(v31);
      sub_100014CDC(v30);
    }

    v32 = v26;
    v34 = *(v0 + 240);
    v33 = *(v0 + 248);
    v35 = *(v0 + 224);
    v64 = *(v0 + 232);
    v37 = *(v0 + 208);
    v36 = *(v0 + 216);
    v38 = *(v0 + 72);
    v39 = swift_task_alloc();
    v39[2] = v38;
    v39[3] = v32;
    v39[4] = v27;
    (*(v36 + 104))(v35, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v37);
    AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

    AsyncThrowingStream.makeAsyncIterator()();
    (*(v34 + 8))(v33, v64);
    *(v0 + 424) = enum case for MusicFavoriteStatus.neutral(_:);
    *(v0 + 428) = enum case for MusicFavoriteStatus.disliked(_:);
    *(v0 + 432) = enum case for MusicFavoriteStatus.favorited(_:);
    v40 = qword_10002CEA8;
    *(v0 + 400) = &_swiftEmptyArrayStorage;
    *(v0 + 408) = v40;
    sub_10001E98C();
    sub_10001E600(v41, v42, &unk_100020A50);

    v43 = swift_task_alloc();
    *(v0 + 416) = v43;
    *v43 = v0;
    sub_10001E964(v43);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16);
  }

  else
  {
    v44 = *(v0 + 296);
    v45 = *(v0 + 280);
    v46 = *(v0 + 64);

    v6(v44, v46, v45);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (sub_10001B014(v48))
    {
      sub_1000118AC();
      v65 = sub_10001AF88();
      v66 = v65;
      *v46 = 136446210;
      sub_10001E94C();
      sub_10001E600(v49, v50, &protocol conformance descriptor for MusicDaemon.Item);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v6;
      v54 = v53;
      v55 = sub_10001EA00();
      v56(v55);
      v57 = sub_100013F98(v51, v54, &v66);
      v6 = v52;

      *(v46 + 4) = v57;
      sub_10001E9E0(&_mh_execute_header, v58, v59, "╰ returning unmapped item without database query: %{public}s.");
      sub_10000F7CC(v65);
      sub_100014CDC(v65);
      sub_100014CDC(v46);
    }

    else
    {

      v60 = sub_10001EA00();
      v10(v60);
    }

    v6(*(v0 + 56), *(v0 + 64), *(v0 + 280));
    sub_10001E9A4();

    v61 = *(v0 + 8);

    return v61();
  }
}

uint64_t sub_10001BFA8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 352);

    v4 = sub_10001C948;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 352);

    v4 = sub_10001C0F4;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10001C0F4()
{
  v92 = v0;
  if (*(v0 + 24) == 2)
  {
    v1 = *(v0 + 400);
    v2 = *(v0 + 280);
    v3 = *(v0 + 80);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

    sub_10001D0C8(v1, v3);

    v4 = sub_10000ED7C(v3, 1, v2);
    v5 = *(v0 + 368);
    if (v4 == 1)
    {
      v6 = *(v0 + 304);
      v7 = *(v0 + 280);
      v8 = *(v0 + 64);
      sub_10001E7E8(*(v0 + 80), &qword_10002CA68, &qword_100020650);
      v5(v6, v8, v7);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = sub_10001B014(v10);
      v12 = *(v0 + 384);
      v13 = *(v0 + 288);
      if (v11)
      {
        sub_1000118AC();
        v14 = sub_10001AF88();
        v91 = v14;
        *v13 = 136446210;
        sub_10001E94C();
        sub_10001E600(v15, v16, &protocol conformance descriptor for MusicDaemon.Item);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        v20 = sub_10001EA00();
        v12(v20);
        v21 = sub_100013F98(v17, v19, &v91);

        *(v13 + 4) = v21;
        sub_10001E9E0(&_mh_execute_header, v22, v23, "╰ returning unmapped item: %{public}s.");
        sub_10000F7CC(v14);
        sub_100014CDC(v14);
        sub_100014CDC(v13);
      }

      else
      {

        v78 = sub_10001EA00();
        v12(v78);
      }

      (*(v0 + 368))(*(v0 + 56), *(v0 + 64), *(v0 + 280));
    }

    else
    {
      v27 = *(v0 + 312);
      v26 = *(v0 + 320);
      v28 = *(v0 + 280);
      v29 = *(*(v0 + 288) + 32);
      v29(v26, *(v0 + 80), v28);
      v5(v27, v26, v28);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      v32 = sub_10001B014(v31);
      v33 = *(v0 + 384);
      v34 = *(v0 + 288);
      if (v32)
      {
        sub_1000118AC();
        v90 = sub_10001AF88();
        v91 = v90;
        *v34 = 136446210;
        sub_10001E94C();
        sub_10001E600(v35, v36, &protocol conformance descriptor for MusicDaemon.Item);
        v37 = v29;
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        v41 = sub_10001EA00();
        v42(v41);
        v43 = sub_100013F98(v38, v40, &v91);

        *(v34 + 4) = v43;
        sub_10001E9E0(&_mh_execute_header, v44, v45, "╰ returning mapped item from database: %{public}s.");
        sub_10000F7CC(v90);
        sub_100014CDC(v90);
        sub_100014CDC(v34);

        v37(*(v0 + 56), *(v0 + 320), *(v0 + 280));
      }

      else
      {

        v79 = sub_10001EA00();
        v33(v79);
        v29(*(v0 + 56), *(v0 + 320), *(v0 + 280));
      }
    }

    sub_10001E9A4();

    sub_1000114A8();

    __asm { BRAA            X1, X16 }
  }

  v24 = *(v0 + 32);
  v87 = *(v0 + 16);
  if (v24 > 3)
  {
    v25 = 424;
  }

  else
  {
    v25 = qword_100020BC8[v24];
  }

  v46 = *(v0 + 168);
  v48 = *(v0 + 144);
  v47 = *(v0 + 152);
  v49 = *(v0 + 136);
  v50 = *(v0 + 104);
  (*(*(v0 + 192) + 104))(*(v0 + 200), *(v0 + v25), *(v0 + 184));
  MusicDaemon.Item.isLibraryAddEligible.getter();
  MusicDaemon.Item.identifierSet.getter();
  MusicDaemon.Item.identifierSet.getter();
  MusicIdentifierSet.deviceLocalID.getter();
  v89 = *(v47 + 8);
  v89(v46, v48);
  v51 = sub_10000ED7C(v49, 1, v50);
  sub_10001E7E8(v49, &qword_10002CCE8, &qword_1000208D8);
  if (v51 == 1)
  {
    v52 = sub_10001E440(*(v0 + 72));
    if (!v53)
    {
      __break(1u);
      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v52);
    }

    v54 = *(v0 + 120);
    v55 = *(v0 + 128);
    v56 = *(v0 + 104);
    v57 = *(v0 + 112);
    MusicItemID.init(_:)();
    *(v0 + 48) = v87;
    dispatch thunk of CustomStringConvertible.description.getter();
    MusicItemID.init(rawValue:)();
    MusicDeviceLocalID.init(value:databaseID:)();
    (*(v57 + 16))(v55, v54, v56);
    sub_10000ED54(v55, 0, 1, v56);
    MusicIdentifierSet.deviceLocalID.setter();
    (*(v57 + 8))(v54, v56);
  }

  v83 = *(v0 + 336);
  v84 = *(v0 + 328);
  v85 = *(v0 + 280);
  v86 = *(v0 + 368);
  v58 = *(v0 + 192);
  v59 = *(v0 + 200);
  v60 = *(v0 + 184);
  v61 = *(v0 + 88);
  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 176), *(v0 + 144));
  MusicDaemon.Item.title.getter();
  MusicDaemon.Item.contentRating.getter();
  (*(v58 + 16))(v61, v59, v60);
  sub_10000ED54(v61, 0, 1, v60);
  MusicDaemon.Item.init(identifierSet:title:contentRating:favoriteStatus:isLibraryAdded:isLibraryAddEligible:)();
  v86(v84, v83, v85);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(v0 + 400);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v63 = sub_10001E178(0, *(v63 + 2) + 1, 1, *(v0 + 400));
  }

  v65 = *(v63 + 2);
  v64 = *(v63 + 3);
  if (v65 >= v64 >> 1)
  {
    v63 = sub_10001E178((v64 > 1), v65 + 1, 1, v63);
  }

  v88 = *(v0 + 328);
  v67 = *(v0 + 280);
  v66 = *(v0 + 288);
  v68 = *(v0 + 192);
  v69 = *(v0 + 200);
  v71 = *(v0 + 176);
  v70 = *(v0 + 184);
  v72 = *(v0 + 144);
  (*(v0 + 384))(*(v0 + 336), v67);
  v89(v71, v72);
  (*(v68 + 8))(v69, v70);
  *(v63 + 2) = v65 + 1;
  (*(v66 + 32))(&v63[((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v65], v88, v67);
  v73 = qword_10002CEA8;
  *(v0 + 400) = v63;
  *(v0 + 408) = v73;
  sub_10001E98C();
  sub_10001E600(v74, v75, &unk_100020A50);

  v76 = swift_task_alloc();
  *(v0 + 416) = v76;
  *v76 = v0;
  sub_10001E964(v76);
  sub_1000114A8();

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v52);
}

void sub_10001C948()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);

  sub_1000114A8();

  __asm { BRAA            X1, X16 }
}

void sub_10001CAF4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v9 = a2;
  v8 = a3;
  v7(a2, a3, a4);
}

void sub_10001CB74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

unint64_t sub_10001CBE0()
{
  v0 = sub_10000E634(&qword_10002CCE0, &qword_1000208D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = type metadata accessor for MusicIdentifierSet();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - v11;
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = sub_10000E634(&qword_10002CCE8, &qword_1000208D8);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v40 = 0xD0000000000000A4;
  v41 = 0x8000000100021030;
  MusicDaemon.Item.identifierSet.getter();
  MusicIdentifierSet.deviceLocalID.getter();
  v18 = *(v4 + 8);
  v18(v14, v3);
  v19 = type metadata accessor for MusicDeviceLocalID();
  if (sub_10000ED7C(v17, 1, v19) != 1)
  {
    v26 = MusicDeviceLocalID.value.getter();
    v28 = v27;
    (*(*(v19 - 8) + 8))(v17, v19);
    strcpy(&v39, "item_pid=");
    WORD1(v39._object) = 0;
    HIDWORD(v39._object) = -385875968;
LABEL_7:
    v30._countAndFlagsBits = v26;
    v30._object = v28;
    String.append(_:)(v30);
LABEL_8:

    goto LABEL_9;
  }

  sub_10001E7E8(v17, &qword_10002CCE8, &qword_1000208D8);
  MusicDaemon.Item.identifierSet.getter();
  MusicIdentifierSet.catalogID.getter();
  v18(v12, v3);
  v20 = type metadata accessor for MusicCatalogID();
  if (sub_10000ED7C(v2, 1, v20) != 1)
  {
    v26 = MusicCatalogID.value.getter();
    v28 = v29;
    (*(*(v20 - 8) + 8))(v2, v20);
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v39._countAndFlagsBits = 0xD00000000000001BLL;
    v39._object = 0x8000000100020FE0;
    goto LABEL_7;
  }

  sub_10001E7E8(v2, &qword_10002CCE0, &qword_1000208D0);
  MusicDaemon.Item.identifierSet.getter();
  v21 = MusicIdentifierSet.libraryID.getter();
  v23 = v22;
  v18(v9, v3);
  if (!v23)
  {
    v32 = v38;
    MusicDaemon.Item.identifierSet.getter();
    v33 = MusicIdentifierSet.purchasedAdamID.getter();
    v35 = v34;
    v18(v32, v3);
    if (!v35)
    {
      return 0;
    }

    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(&v39, "store_item_id=");
    HIBYTE(v39._object) = -18;
    v36._countAndFlagsBits = v33;
    v36._object = v35;
    String.append(_:)(v36);
    goto LABEL_8;
  }

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v39._countAndFlagsBits = 0xD00000000000001CLL;
  v39._object = 0x8000000100020FC0;
  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 34;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
LABEL_9:
  String.append(_:)(v39);

  return v40;
}

uint64_t sub_10001D0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for MusicDaemon.Item();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for MusicDaemon.Item();
    v7 = a2;
    v8 = 1;
  }

  return sub_10000ED54(v7, v8, 1, v9);
}

void sub_10001D190(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v12, v8);
  v16 = (v15 + v14);
  *v16 = a3;
  v16[1] = a4;
  aBlock[4] = sub_10001E544;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001CB74;
  aBlock[3] = &unk_1000292D8;
  v17 = _Block_copy(aBlock);

  [a2 databaseConnectionAllowingWrites:0 withBlock:v17];
  _Block_release(v17);
  aBlock[0] = 0;
  AsyncThrowingStream.Continuation.finish(throwing:)();
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000F74C(v18, qword_10002CEB0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "| database operation finished.", v21, 2u);
  }
}

void sub_10001D438(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  if (a1)
  {
    v31 = a1;
    v12 = sub_10001E648(a3, a4, v31);
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000F74C(v13, qword_10002CEB0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "| database connection established.", v16, 2u);
    }

    if (v12)
    {
      (*(v9 + 16))(v11, a2, v8);
      v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v18 = swift_allocObject();
      (*(v9 + 32))(v18 + v17, v11, v8);
      v19 = swift_allocObject();
      *(v19 + 16) = sub_10001E720;
      *(v19 + 24) = v18;
      aBlock[4] = sub_10001E7C0;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001CAF4;
      aBlock[3] = &unk_100029350;
      v20 = _Block_copy(aBlock);
      v21 = v12;

      [v21 enumerateRowsWithBlock:v20];

      _Block_release(v20);
    }

    else
    {
      v29 = v31;
    }
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000F74C(v22, qword_10002CEB0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "| database connection failed.", v25, 2u);
    }

    v26 = type metadata accessor for MusicDaemon.Error();
    sub_10001E600(&qword_10002CA88, &type metadata accessor for MusicDaemon.Error, &protocol conformance descriptor for MusicDaemon.Error);
    v27 = swift_allocError();
    (*(*(v26 - 8) + 104))(v28, enum case for MusicDaemon.Error.databaseConnectionFailed(_:), v26);
    aBlock[0] = v27;
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }
}

uint64_t sub_10001D8B0(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v8 = sub_10000E634(&qword_10002CDD0, &qword_100020AB8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v43 - v10;
  if (a2)
  {
    swift_errorRetain();
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000F74C(v12, qword_10002CEB0);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v47 = v16;
      *v15 = 136315138;
      v46 = a2;
      swift_errorRetain();
      sub_10000E634(&qword_10002CA30, &qword_100020610);
      v17 = String.init<A>(describing:)();
      v19 = sub_100013F98(v17, v18, &v47);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "| database error: %s", v15, 0xCu);
      sub_10000F7CC(v16);
    }

    v20 = type metadata accessor for MusicDaemon.Error();
    sub_10001E600(&qword_10002CA88, &type metadata accessor for MusicDaemon.Error, &protocol conformance descriptor for MusicDaemon.Error);
    v21 = swift_allocError();
    v23 = v22;
    swift_getErrorValue();
    *v23 = Error.localizedDescription.getter();
    v23[1] = v24;
    (*(*(v20 - 8) + 104))(v23, enum case for MusicDaemon.Error.other(_:), v20);
    v47 = v21;
    sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    if (a3)
    {
      *a3 = 1;
    }
  }

  if (a1)
  {
    v43[1] = a4;
    v26 = a1;
    v27 = [v26 int64ForColumnIndex:0];
    v44 = [v26 intForColumnIndex:1];
    v45 = [v26 int64ForColumnIndex:2];
    v28 = [v26 int64ForColumnIndex:3];
    v29 = [v26 intForColumnIndex:4];
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000F74C(v30, qword_10002CEB0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v43[0] = v29;
      v33 = v44 == 1;
      v34 = swift_slowAlloc();
      *v34 = 134350080;
      *(v34 + 4) = v27;
      *(v34 + 12) = 1026;
      *(v34 + 14) = v33;
      LODWORD(v29) = v43[0];
      *(v34 + 18) = 2050;
      *(v34 + 20) = v45;
      *(v34 + 28) = 2050;
      *(v34 + 30) = v28;
      *(v34 + 38) = 1026;
      *(v34 + 40) = v29;
      _os_log_impl(&_mh_execute_header, v31, v32, "| database row fetched with itemPersistentID: %{public}lld, isLibraryAdded: %{BOOL,public}d, baseLocationID: %{public}lld, remoteLocationID: %{public}lld, likedStateValue: %{public}d.", v34, 0x2Cu);
    }

    if (v28 >= 50)
    {
      v35 = v28 < 0x12C;
      if (v45 < 250)
      {
        goto LABEL_25;
      }
    }

    else if (v45 < 250)
    {
      v35 = 0;
LABEL_25:
      v47 = v27;
      v48 = v44 == 1;
      v49 = v35;
      v50 = v29;
      sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
      AsyncThrowingStream.Continuation.yield(_:)();

      return (*(v9 + 8))(v11, v8);
    }

    v35 = 1;
    goto LABEL_25;
  }

  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000F74C(v36, qword_10002CEB0);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "| database row missing.", v39, 2u);
  }

  v40 = type metadata accessor for MusicDaemon.Error();
  sub_10001E600(&qword_10002CA88, &type metadata accessor for MusicDaemon.Error, &protocol conformance descriptor for MusicDaemon.Error);
  v41 = swift_allocError();
  *v42 = 0xD000000000000014;
  v42[1] = 0x8000000100020F30;
  (*(*(v40 - 8) + 104))(v42, enum case for MusicDaemon.Error.other(_:), v40);
  v47 = v41;
  sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  result = AsyncThrowingStream.Continuation.finish(throwing:)();
  if (a3)
  {
    *a3 = 1;
  }

  return result;
}

void sub_10001DF9C(int a1, Swift::UInt64 a2, __int16 a3, Swift::UInt a4)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3 & 1);
  Hasher._combine(_:)(HIBYTE(a3) & 1);
  Hasher._combine(_:)(a4);
}

Swift::Int sub_10001DFEC(Swift::UInt64 a1, __int16 a2, Swift::UInt a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2 & 1);
  Hasher._combine(_:)(HIBYTE(a2) & 1);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

uint64_t sub_10001E068(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10001DF78(*a1, v2 | *(a1 + 8), *(a1 + 16), *a2, v3 | *(a2 + 8), *(a2 + 16));
}

Swift::Int sub_10001E0AC()
{
  if (*(v0 + 9))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_10001DFEC(*v0, v1 | *(v0 + 8), *(v0 + 16));
}

void sub_10001E0D0(int a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_10001DF9C(a1, *v1, v2 | *(v1 + 8), *(v1 + 16));
}

Swift::Int sub_10001E0F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = *(v1 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

char *sub_10001E178(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_10001E264(v8, v7);
  v10 = *(type metadata accessor for MusicDaemon.Item() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_10001E360(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_10001E264(uint64_t a1, uint64_t a2)
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

  sub_10000E634(&qword_10002CDC0, &qword_100020AA8);
  v4 = *(type metadata accessor for MusicDaemon.Item() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E360(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for MusicDaemon.Item(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for MusicDaemon.Item();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_10001E440(void *a1)
{
  v1 = [a1 libraryUID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10001E4A4()
{
  sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  sub_10001E9CC();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

void sub_10001E544(void *a1)
{
  v3 = sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  sub_100010D70(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_10001D438(a1, v1 + v8, v10, v11);
}

uint64_t sub_10001E5E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001E600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10001E648(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 executeQuery:v4];

  return v5;
}

uint64_t sub_10001E698()
{
  sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  sub_10001E9CC();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10001E720(void *a1, uint64_t a2, _BYTE *a3)
{
  v7 = sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  sub_100010FE8(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_10001D8B0(a1, a2, a3, v9);
}

uint64_t sub_10001E7E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000E634(a2, a3);
  sub_10001E9CC();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s23LibraryMappingOperationV14_DatabaseTrackVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 24))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s23LibraryMappingOperationV14_DatabaseTrackVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10001E8F0()
{
  result = qword_10002CDD8;
  if (!qword_10002CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDD8);
  }

  return result;
}

void sub_10001E9E0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_10001EA20()
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    if (qword_10002C638 != -1)
    {
      sub_100014C08(&qword_10002C638);
    }

    v0 = type metadata accessor for Logger();
    sub_10000F74C(v0, qword_10002CEB0);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "failed to initialize temporary directory.", v3, 2u);
      sub_100014CDC(v3);
    }
  }

  if (qword_10002C638 != -1)
  {
    sub_100014C08(&qword_10002C638);
  }

  v4 = type metadata accessor for Logger();
  sub_10000F74C(v4, qword_10002CEB0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "launching daemon.", v7, 2u);
    sub_100014CDC(v7);
  }

  v8 = objc_autoreleasePoolPush();
  if (qword_10002C5F0 != -1)
  {
    swift_once();
  }

  objc_autoreleasePoolPop(v8);
  sub_100002A20();

  v9 = [objc_opt_self() mainRunLoop];
  [v9 run];
}

uint64_t sub_10001ED64()
{
  _MusicKit_SharedTypeErasedCloudServiceStatusMonitor()();
  sub_10001AC80();
  if (swift_dynamicCast())
  {
    return v1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10001EE04()
{
  v0 = type metadata accessor for Logger();
  sub_100010B0C(v0, qword_10002CEB0);
  sub_10000F74C(v0, qword_10002CEB0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001EE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for MusicDaemon.Request.Context();
    v8 = a1 + *(a3 + 20);
  }

  return sub_10000ED7C(v8, a2, v7);
}

uint64_t sub_10001EF3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for MusicDaemon.Request.Context();
    v10 = a1 + *(a4 + 20);
  }

  return sub_10000ED54(v10, a2, a2, v9);
}

uint64_t _s14descr100028B61V18ObservationContextVMa(uint64_t a1)
{
  result = qword_10002CE38;
  if (!qword_10002CE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F02C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MusicDaemon.Request.Context();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001F0F8(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(_s14descr100028B61V18ObservationContextVMa(0) + 20);

  return static MusicDaemon.Request.Context.== infix(_:_:)(a1 + v4, a2 + v4);
}

uint64_t sub_10001F158(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10001F41C();
  sub_10001F3D4(v1, v2, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  _s14descr100028B61V18ObservationContextVMa(0);
  type metadata accessor for MusicDaemon.Request.Context();
  sub_10001F434();
  sub_10001F3D4(v3, v4, &protocol conformance descriptor for MusicDaemon.Request.Context);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10001F210()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001F41C();
  sub_10001F3D4(v0, v1, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  _s14descr100028B61V18ObservationContextVMa(0);
  type metadata accessor for MusicDaemon.Request.Context();
  sub_10001F434();
  sub_10001F3D4(v2, v3, &protocol conformance descriptor for MusicDaemon.Request.Context);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10001F2EC(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001F3D4(&qword_10002C978, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for MusicDaemon.Request.Context();
  sub_10001F3D4(&qword_10002CE78, &type metadata accessor for MusicDaemon.Request.Context, &protocol conformance descriptor for MusicDaemon.Request.Context);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001F3D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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