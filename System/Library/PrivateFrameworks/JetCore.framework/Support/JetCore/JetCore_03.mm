uint64_t sub_100056720()
{
  v0[22] = v0[7];
  v1 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_1000567E4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1000567E4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1000570E8;
  }

  else
  {
    v2 = sub_1000568F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000568F8()
{
  JetPackAssetStandardCachePolicy.init()();
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_100056994;

  return JetPackAssetDiskCache._allCachedAssets.getter();
}

uint64_t sub_100056994(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_10005717C;
  }

  else
  {
    *(v4 + 216) = a1;
    v5 = sub_100056ABC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100056ABC()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[19];
  v4 = v0[9];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = sub_10004304C(sub_10005BE0C, v5, v1, &type metadata accessor for JetPackAsset, sub_10003DCA4);

  v7 = v6[2];
  v61 = v0;
  if (v7)
  {
    v8 = v0[15];
    sub_10003DBFC(0, v7, 0);
    v9 = *(v8 + 16);
    v8 += 16;
    v10 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v57 = *(v8 + 56);
    v59 = v9;
    v11 = (v8 - 8);
    do
    {
      v12 = v61[16];
      v13 = v61[14];
      v59(v12, v10, v13);
      v14 = JetPackAsset.cacheKey.getter();
      v16 = v15;
      (*v11)(v12, v13);
      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_10003DBFC((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
      v10 += v57;
      --v7;
    }

    while (v7);
  }

  v20 = sub_10006B8B8(_swiftEmptyArrayStorage);

  v21 = v61;
  sub_100001CC0(v61 + 2, v61[5]);
  result = dispatch thunk of AssetPushSubscriptionStore.findAll()();
  if (v2)
  {
    v24 = v61[18];
    v23 = v61[19];
    v25 = v61[17];

    (*(v24 + 8))(v23, v25);
    sub_100001D4C(v61 + 2);

    v26 = v61[1];

    return v26();
  }

  v60 = *(result + 16);
  if (v60)
  {
    v27 = 0;
    v28 = v61[11];
    v29 = v20 + 56;
    v55 = (v28 + 32);
    v56 = _swiftEmptyArrayStorage;
    v58 = result;
    while (1)
    {
      if (v27 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v31 = *(v28 + 72);
      (*(v28 + 16))(v21[13], result + v30 + v31 * v27, v21[10]);
      v32 = AssetPushSubscriptionRecord.assetURLString.getter();
      if (v33)
      {
        v34 = v33;
        if (*(v20 + 16))
        {
          v35 = v32;
          Hasher.init(_seed:)();
          String.hash(into:)();
          v36 = Hasher._finalize()();
          v37 = -1 << *(v20 + 32);
          v38 = v36 & ~v37;
          if ((*(v29 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
          {
            v39 = ~v37;
            while (1)
            {
              v40 = (*(v20 + 48) + 16 * v38);
              v41 = *v40 == v35 && v34 == v40[1];
              if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v38 = (v38 + 1) & v39;
              if (((*(v29 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
              {
                goto LABEL_12;
              }
            }

            v42 = v61[12];
            v54 = v61[13];
            v43 = v61[10];

            v44 = *v55;
            (*v55)(v42, v54, v43);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10003DC60(0, v56[2] + 1, 1);
            }

            v45 = v56;
            v47 = v56[2];
            v46 = v56[3];
            if (v47 >= v46 >> 1)
            {
              sub_10003DC60((v46 > 1), v47 + 1, 1);
              v45 = v56;
            }

            v48 = v61[12];
            v49 = v61[10];
            v45[2] = v47 + 1;
            v56 = v45;
            v44(v45 + v30 + v47 * v31, v48, v49);
            v21 = v61;
            goto LABEL_14;
          }
        }

LABEL_12:

        v21 = v61;
      }

      (*(v28 + 8))(v21[13], v21[10]);
LABEL_14:
      ++v27;
      result = v58;
      if (v27 == v60)
      {
        goto LABEL_33;
      }
    }
  }

  v56 = _swiftEmptyArrayStorage;
LABEL_33:
  v51 = v21[18];
  v50 = v21[19];
  v52 = v21[17];

  (*(v51 + 8))(v50, v52);
  sub_100001D4C(v21 + 2);

  v53 = v21[1];

  return v53(v56);
}

uint64_t sub_10005705C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000570E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005717C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);
  sub_100001D4C(v0 + 2);

  v4 = v0[1];

  return v4();
}

BOOL sub_100057238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for JetPackAssetCacheStatus();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v14 - v10;
  JetPackAssetStandardCachePolicy.status(for:dateProvider:)();
  (*(v4 + 32))(v8, v11, v3);
  v12 = (*(v4 + 88))(v8, v3) == enum case for JetPackAssetCacheStatus.valid(_:);
  (*(v4 + 8))(v8, v3);
  return v12;
}

uint64_t sub_10005739C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000573BC, 0, 0);
}

uint64_t sub_1000573BC()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *(v1 + 16) = *(v0 + 1);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100057490;
  v3 = v0[2];

  return sub_100049B14(v3, "APSConnectedRefreshTaskHandler.handleTask", 41, 2, &unk_100085E08, v1);
}

uint64_t sub_100057490()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100027E80, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000575D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a3;
  v4[51] = a4;
  v4[49] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v4[52] = swift_task_alloc();
  v5 = type metadata accessor for AssetPushSubscriptionRecord();
  v4[53] = v5;
  v4[54] = *(v5 - 8);
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_1000576E0, 0, 0);
}

uint64_t sub_1000576E0()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  *(v0 + 464) = qword_1000A63A8;
  TaskLocal.get()();
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 472) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v1 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 480) = *(v1 + 72);
  *(v0 + 544) = *(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  v2 = type metadata accessor for JetPackAssetDiskCache();
  v3 = swift_task_alloc();
  *(v0 + 488) = v3;
  *v3 = v0;
  v3[1] = sub_1000578D8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 368, v2, v2);
}

uint64_t sub_1000578D8()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_1000584FC;
  }

  else
  {
    v2 = sub_1000579EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000579EC()
{
  v1 = *(v0 + 400);
  *(v0 + 504) = *(v0 + 368);
  JetPackAssetDiskCache._evict(cacheKey:)(v1);
  if (v2)
  {
    TaskLocal.get()();
    sub_100001CC0((v0 + 56), *(v0 + 80));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v3._object = 0x8000000100089CA0;
    v3._countAndFlagsBits = 0xD00000000000002ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    swift_getErrorValue();
    v4 = *(v0 + 320);
    v5 = *(v0 + 328);
    *(v0 + 280) = v5;
    v6 = sub_1000061A4((v0 + 256));
    (*(*(v5 - 8) + 16))(v6, v4, v5);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 256, &qword_1000A5630, &unk_100083BF0);
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 56));
  }

  v8 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v9 = swift_task_alloc();
  *(v0 + 512) = v9;
  *v9 = v0;
  v9[1] = sub_100057C20;

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v8, v8);
}

uint64_t sub_100057C20()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_100058588;
  }

  else
  {
    v2 = sub_100057D34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100057D34()
{
  v1 = v0[65];
  sub_100001CC0(v0 + 12, v0[15]);
  v2 = dispatch thunk of AssetPushSubscriptionStore.findAll()();
  if (v1)
  {
    TaskLocal.get()();
    sub_100001CC0(v0 + 17, v0[20]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v5._object = 0x8000000100089CD0;
    v5._countAndFlagsBits = 0xD000000000000031;
    LogMessage.StringInterpolation.appendLiteral(_:)(v5);
    swift_getErrorValue();
    v6 = v0[43];
    v7 = v0[44];
    v0[39] = v7;
    v8 = sub_1000061A4(v0 + 36);
    (*(*(v7 - 8) + 16))(v8, v6, v7);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v0 + 36), &qword_1000A5630, &unk_100083BF0);
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C(v0 + 17);
    goto LABEL_28;
  }

  v10 = v2;
  v11 = *(v2 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v0[54];
    v37 = v0[51];
    v38 = (v13 + 32);
    v35 = *(v2 + 16);
    v36 = v2;
    do
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v15 = *(v13 + 72);
      (*(v13 + 16))(v0[57], v10 + v14 + v15 * v12, v0[53]);
      v16 = AssetPushSubscriptionRecord.assetURLString.getter();
      if (v17)
      {
        if (v16 == v0[50] && v17 == v37)
        {

LABEL_16:
          v20 = *v38;
          (*v38)(v0[55], v0[57], v0[53]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10003DC60(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v22 = _swiftEmptyArrayStorage[2];
          v21 = _swiftEmptyArrayStorage[3];
          if (v22 >= v21 >> 1)
          {
            sub_10003DC60((v21 > 1), v22 + 1, 1);
          }

          v23 = v0[55];
          v24 = v0[53];
          _swiftEmptyArrayStorage[2] = v22 + 1;
          v2 = v20(_swiftEmptyArrayStorage + v14 + v22 * v15, v23, v24);
          v11 = v35;
          v10 = v36;
          goto LABEL_6;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_16;
        }
      }

      v2 = (*(v13 + 8))(v0[57], v0[53]);
LABEL_6:
      ++v12;
    }

    while (v11 != v12);
  }

  v25 = _swiftEmptyArrayStorage[2];
  if (!v25)
  {
LABEL_27:

LABEL_28:
    v32 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v33 = swift_task_alloc();
    v0[66] = v33;
    *v33 = v0;
    v33[1] = sub_10005822C;
    v2 = (v0 + 22);
    v3 = v32;
    v4 = v32;

    return BaseObjectGraph.inject<A>(_:)(v2, v3, v4);
  }

  v26 = 0;
  v27 = v0[54];
  v28 = _swiftEmptyArrayStorage + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  while (v26 < _swiftEmptyArrayStorage[2])
  {
    v29 = v0[56];
    v30 = v0[53];
    (*(v27 + 16))(v29, &v28[*(v27 + 72) * v26], v30);
    v31 = AssetPushSubscriptionRecord.id.getter();
    v2 = (*(v27 + 8))(v29, v30);
    if ((v31 & 0x100000000) == 0)
    {
      sub_100001CC0(v0 + 12, v0[15]);
      v2 = dispatch thunk of AssetPushSubscriptionStore.delete(id:)();
    }

    if (v25 == ++v26)
    {
      goto LABEL_27;
    }
  }

LABEL_32:
  __break(1u);
  return BaseObjectGraph.inject<A>(_:)(v2, v3, v4);
}

uint64_t sub_10005822C()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_10005861C;
  }

  else
  {
    v2 = sub_100058340;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100058340()
{
  sub_100001CC0(v0 + 22, v0[25]);
  v1 = type metadata accessor for PushManager(0);
  sub_100038280(0xD000000000000018, 0x8000000100089D10, v1, &off_10009F238);
  TaskLocal.get()();
  sub_100001CC0(v0 + 27, v0[30]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 27);
  sub_100001D4C(v0 + 22);
  sub_100001D4C(v0 + 12);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000584FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100058588()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005861C()
{

  sub_100001D4C((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000586B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100040348;

  return sub_10005CDC0(a1);
}

uint64_t sub_100058760(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100040348;

  return sub_1000551DC(a1);
}

uint64_t sub_100058814(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for OSSignposter();
  sub_100018750(v3, a2);
  v4 = sub_100018718(v3, a2);
  if (qword_1000A4D98 != -1)
  {
    swift_once();
  }

  v5 = sub_100018718(v3, qword_1000A6420);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_1000588D8(uint64_t a1)
{
  v1[8] = a1;
  v2 = type metadata accessor for OSSignpostID();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000589A4, 0, 0);
}

uint64_t sub_1000589A4()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 2);
  if (qword_1000A4DB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  sub_100018718(v1, qword_1000A5908);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "MaintenanceCleanupTaskHandler.handleTask", "", v4, 2u);
  }

  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[13] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v7, v8);
  v10 = type metadata accessor for AssetSQLiteDatabase();
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_100058CC8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v10, v10);
}

uint64_t sub_100058CC8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100059070;
  }

  else
  {
    v2 = sub_100058DDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100058DDC()
{
  v0[16] = v0[7];
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_100058E98;
  v2 = v0[8];

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v1, &unk_100085E70, v2, &type metadata for () + 8);
}

uint64_t sub_100058E98()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10005912C;
  }

  else
  {
    v2 = sub_100058FAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100058FAC()
{
  v1 = *(v0 + 104);

  sub_1000591F0("MaintenanceCleanupTaskHandler.handleTask", 40, 2, v1, &qword_1000A4DB8, qword_1000A5908, sub_100058808);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100059070()
{
  sub_1000591F0("MaintenanceCleanupTaskHandler.handleTask", 40, 2, *(v0 + 104), &qword_1000A4DB8, qword_1000A5908, sub_100058808);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005912C()
{

  sub_1000591F0("MaintenanceCleanupTaskHandler.handleTask", 40, 2, *(v0 + 104), &qword_1000A4DB8, qword_1000A5908, sub_100058808);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000591F0(const char *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v27 = a3;
  v28 = a1;
  v9 = type metadata accessor for OSSignpostError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for OSSignpostID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a5 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for OSSignposter();
  sub_100018718(v19, a6);
  v20 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v21 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v27 & 1) == 0)
  {
    if (v28)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v10 + 88))(v13, v9) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v23 = "[Error] Interval already ended";
      }

      else
      {
        (*(v10 + 8))(v13, v9);
        v23 = "";
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v21, v25, v28, v23, v24, 2u);

LABEL_15:

      return (*(v15 + 8))(v18, v14);
    }

    __break(1u);
  }

  if (v28 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    if (v28 >> 16 <= 0x10)
    {
      v28 = &v29;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000594C8(uint64_t a1, uint64_t a2)
{
  v2[54] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v2[55] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[56] = v4;
  *v4 = v2;
  v4[1] = sub_10005958C;

  return sub_10005DE38(a2);
}

uint64_t sub_10005958C()
{
  v2 = *v1;
  v2[57] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000596FC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[58] = v3;
    *v3 = v2;
    v3[1] = sub_100059980;
    v4 = v2[54];

    return sub_10005E9CC(v4);
  }
}

uint64_t sub_1000596FC()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100089890;
  v1._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[38];
  v3 = v0[39];
  v0[25] = v3;
  v4 = sub_1000061A4(v0 + 22);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 22), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 2);
  v6 = swift_task_alloc();
  v0[58] = v6;
  *v6 = v0;
  v6[1] = sub_100059980;
  v7 = v0[54];

  return sub_10005E9CC(v7);
}

uint64_t sub_100059980()
{
  v2 = *v1;
  v2[59] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100059AF0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[60] = v3;
    *v3 = v2;
    v3[1] = sub_100059D74;
    v4 = v2[54];

    return sub_10005F9D8(v4);
  }
}

uint64_t sub_100059AF0()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x80000001000898C0;
  v1._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[41];
  v3 = v0[42];
  v0[29] = v3;
  v4 = sub_1000061A4(v0 + 26);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 26), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  v6 = swift_task_alloc();
  v0[60] = v6;
  *v6 = v0;
  v6[1] = sub_100059D74;
  v7 = v0[54];

  return sub_10005F9D8(v7);
}

uint64_t sub_100059D74()
{
  v2 = *v1;
  v2[61] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100059EE4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[62] = v3;
    *v3 = v2;
    v3[1] = sub_10005A168;
    v4 = v2[54];

    return sub_100060180(v4);
  }
}

uint64_t sub_100059EE4()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 12, v0[15]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x80000001000898F0;
  v1._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[44];
  v3 = v0[45];
  v0[33] = v3;
  v4 = sub_1000061A4(v0 + 30);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 30), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 12);
  v6 = swift_task_alloc();
  v0[62] = v6;
  *v6 = v0;
  v6[1] = sub_10005A168;
  v7 = v0[54];

  return sub_100060180(v7);
}

uint64_t sub_10005A168()
{
  v2 = *v1;
  *(v2 + 504) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005A2A4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10005A2A4()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 17, v0[20]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100089920;
  v1._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[47];
  v3 = v0[48];
  v0[37] = v3;
  v4 = sub_1000061A4(v0 + 34);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 34), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 17);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10005A4F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100040348;

  return sub_1000588D8(a1);
}

uint64_t sub_10005A58C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DAF8;

  return sub_10005BE2C(a1);
}

uint64_t sub_10005A654()
{
  sub_100001CC0(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10005A6F0;

  return sub_1000473EC();
}

uint64_t sub_10005A6F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10005A7E4(uint64_t a1, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    sub_10005A7E4(a1, a2, a3);
  }
}

uint64_t sub_10005A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8, v8);
  v14[3] = &type metadata for DefaultRefreshAssetsTaskHandler;
  v14[4] = &off_10009FAE0;
  v14[0] = swift_allocObject();
  sub_10005B7F4(a3, v14[0] + 16);
  SendableWrapper.withValue<A>(_:)();
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v13, v13[3]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x80000001000893B0;
  v9._countAndFlagsBits = 0xD00000000000002FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v12[3] = &type metadata for String;
  v12[0] = a1;
  v12[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v12, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v13);
  return sub_100001D4C(v14);
}

uint64_t sub_10005AB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8, v8);
  v14[3] = &type metadata for MaintenanceRefreshAssetsTaskHandler;
  v14[4] = &off_10009FB10;
  v14[0] = swift_allocObject();
  sub_10005B7BC(a3, v14[0] + 16);
  SendableWrapper.withValue<A>(_:)();
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v13, v13[3]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x80000001000893B0;
  v9._countAndFlagsBits = 0xD00000000000002FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v12[3] = &type metadata for String;
  v12[0] = a1;
  v12[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v12, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v13);
  return sub_100001D4C(v14);
}

uint64_t sub_10005ADC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v11 - 8, v12);
  v18[3] = a5;
  v18[4] = a6;
  SendableWrapper.withValue<A>(_:)();
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v17, v17[3]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001000893B0;
  v13._countAndFlagsBits = 0xD00000000000002FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  v16[3] = &type metadata for String;
  v16[0] = a1;
  v16[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v16, &qword_1000A5630, &unk_100083BF0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v17);
  return sub_100001D4C(v18);
}

uint64_t sub_10005B020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8, v8);
  v14[3] = &type metadata for APSConnectedRefreshTaskHandler;
  v14[4] = &off_10009FB58;
  v14[0] = swift_allocObject();
  sub_10005B554(a3, v14[0] + 16);
  SendableWrapper.withValue<A>(_:)();
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v13, v13[3]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x80000001000893B0;
  v9._countAndFlagsBits = 0xD00000000000002FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v12[3] = &type metadata for String;
  v12[0] = a1;
  v12[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v12, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v13);
  return sub_100001D4C(v14);
}

uint64_t sub_10005B2BC(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return 3;
    }

    if (a1 != 5)
    {
      if (a1 == 99)
      {
        return 5;
      }

      return 6;
    }

    return 4;
  }

  else
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 2;
      }

      return 6;
    }

    return 1;
  }
}

unint64_t sub_10005B32C()
{
  result = qword_1000A5938;
  if (!qword_1000A5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5938);
  }

  return result;
}

unint64_t sub_10005B39C()
{
  result = qword_1000A5940;
  if (!qword_1000A5940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5940);
  }

  return result;
}

uint64_t sub_10005B408(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  sub_100001CC0(a1, v3);
  return (*(v4 + 32))(v2, v3, v4);
}

uint64_t sub_10005B46C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005B514()
{
  sub_100001D4C((v0 + 16));
  sub_100001D4C((v0 + 64));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10005B5AC()
{
  sub_100001D4C((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005B5F8()
{
  swift_unknownObjectRelease();
  sub_100001D4C((v0 + 32));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10005B648(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DAF8;

  return sub_100043FB4(a1, v4, v5, (v1 + 4), v6, v7);
}

unint64_t sub_10005B730()
{
  result = qword_1000A5950;
  if (!qword_1000A5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5950);
  }

  return result;
}

uint64_t sub_10005B784()
{
  sub_100001D4C((v0 + 16));

  return _swift_deallocObject(v0, 57, 7);
}

__n128 sub_10005B82C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_10005B868(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005B8B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005B968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005B9B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScheduleTime(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ScheduleTime(uint64_t result, int a2, int a3)
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

unint64_t sub_10005BAA8()
{
  result = qword_1000A5958;
  if (!qword_1000A5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5958);
  }

  return result;
}

uint64_t sub_10005BAFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10005BB94;

  return sub_100056438(v2, v3);
}

uint64_t sub_10005BB94(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10005BC90(uint64_t a1)
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
  v10[1] = sub_100040348;

  return sub_10004AB90(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_10005BD64()
{
  result = qword_1000A5960;
  if (!qword_1000A5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5960);
  }

  return result;
}

uint64_t sub_10005BE4C()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 2);
  v1 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_10005C03C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v1, v1);
}

uint64_t sub_10005C03C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10005C790;
  }

  else
  {
    v2 = sub_10005C150;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005C150()
{
  sub_100001CC0(v0 + 7, v0[10]);
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_10005C1EC;

  return sub_10001760C();
}

uint64_t sub_10005C1EC()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005C4A4, 0, 0);
  }

  else
  {
    v3 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v4 = swift_task_alloc();
    *(v2 + 176) = v4;
    *v4 = v2;
    v4[1] = sub_10005C390;

    return BaseObjectGraph.inject<A>(_:)(v2 + 96, v3, v3);
  }
}

uint64_t sub_10005C390()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10005C7A8;
  }

  else
  {
    v2 = sub_10005C508;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005C4A4()
{
  sub_100001D4C((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C508()
{
  sub_100001CC0(v0 + 12, v0[15]);
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_10005C5A4;

  return sub_100027EE4();
}

uint64_t sub_10005C5A4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_10005C724;
  }

  else
  {
    v2 = sub_10005C6B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005C6B8()
{
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 7);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10005C724()
{
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 7);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10005C7A8()
{
  sub_100001D4C((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C80C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100040348;

  return sub_1000594C8(a1, v1);
}

uint64_t sub_10005C8C8()
{
  if (jet_debug_tooling_os_variant_has_internal_content()())
  {
    v1 = type metadata accessor for AssetSQLiteDatabase();
    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    v2[1] = sub_10005C9B4;

    return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_10005C9B4()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_10005CD3C;
  }

  else
  {
    v2 = sub_10005CAC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005CAC8()
{
  v1 = v0[3];
  v0[6] = v0[2];
  v2 = swift_task_alloc();
  v0[7] = v2;
  v2[2] = v1;
  v2[3] = 0xD000000000000057;
  v2[4] = 0x8000000100089C00;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10005CBBC;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v3, &unk_100085EE0, v2, &type metadata for () + 8);
}

uint64_t sub_10005CBBC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10005CD54;
  }

  else
  {

    v2 = sub_10005CCD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005CCD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005CD54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005CDC0(uint64_t a1)
{
  v1[17] = a1;
  v2 = type metadata accessor for OSSignpostID();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10005CE8C, 0, 0);
}

uint64_t sub_10005CE8C()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 2);
  if (qword_1000A4DB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  sub_100018718(v1, qword_1000A58F0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "PostInstallScheduledTaskHandler.handleTask", "", v4, 2u);
  }

  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[18];
  v9 = v0[19];

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[22] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v7, v8);
  v10 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_10005D1BC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v10, v10);
}

uint64_t sub_10005D1BC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10005DC6C;
  }

  else
  {
    v2 = sub_10005D2D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005D2D0()
{
  sub_100001CC0(v0 + 7, v0[10]);
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_10005D36C;

  return sub_10001760C();
}

uint64_t sub_10005D36C()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005D624, 0, 0);
  }

  else
  {
    v3 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v4 = swift_task_alloc();
    *(v2 + 216) = v4;
    *v4 = v2;
    v4[1] = sub_10005D510;

    return BaseObjectGraph.inject<A>(_:)(v2 + 96, v3, v3);
  }
}

uint64_t sub_10005D510()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_10005DD28;
  }

  else
  {
    v2 = sub_10005D6E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005D624()
{
  sub_100001D4C(v0 + 7);
  sub_1000591F0("PostInstallScheduledTaskHandler.handleTask", 42, 2, v0[22], &qword_1000A4DB0, qword_1000A58F0, sub_1000575CC);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10005D6E8()
{
  sub_100001CC0(v0 + 12, v0[15]);
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_10005D784;

  return sub_100027EE4();
}

uint64_t sub_10005D784()
{
  v2 = *v1;
  v2[30] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005DBA0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[31] = v3;
    *v3 = v2;
    v3[1] = sub_10005D8F4;
    v4 = v2[17];

    return sub_10005C8A8(v4);
  }
}

uint64_t sub_10005D8F4()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_10005DAD4;
  }

  else
  {
    v2 = sub_10005DA08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005DA08()
{
  v1 = v0[22];
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 7);
  sub_1000591F0("PostInstallScheduledTaskHandler.handleTask", 42, 2, v1, &qword_1000A4DB0, qword_1000A58F0, sub_1000575CC);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10005DAD4()
{
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 7);
  sub_1000591F0("PostInstallScheduledTaskHandler.handleTask", 42, 2, v0[22], &qword_1000A4DB0, qword_1000A58F0, sub_1000575CC);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10005DBA0()
{
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 7);
  sub_1000591F0("PostInstallScheduledTaskHandler.handleTask", 42, 2, v0[22], &qword_1000A4DB0, qword_1000A58F0, sub_1000575CC);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10005DC6C()
{
  sub_1000591F0("PostInstallScheduledTaskHandler.handleTask", 42, 2, *(v0 + 176), &qword_1000A4DB0, qword_1000A58F0, sub_1000575CC);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005DD28()
{
  sub_100001D4C(v0 + 7);
  sub_1000591F0("PostInstallScheduledTaskHandler.handleTask", 42, 2, v0[22], &qword_1000A4DB0, qword_1000A58F0, sub_1000575CC);

  v1 = v0[1];

  return v1();
}

unint64_t sub_10005DDEC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10009E308, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005DE38(uint64_t a1)
{
  v1[35] = a1;
  type metadata accessor for LogMessage.StringInterpolation();
  v1[36] = swift_task_alloc();
  v2 = type metadata accessor for AssetPushSubscriptionRecord();
  v1[37] = v2;
  v1[38] = *(v2 - 8);
  v1[39] = swift_task_alloc();

  return _swift_task_switch(sub_10005DF24, 0, 0);
}

uint64_t sub_10005DF24()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  *(v0 + 320) = qword_1000A63A8;
  TaskLocal.get()();
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 328) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v1 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 336) = *(v1 + 72);
  *(v0 + 376) = *(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  v2 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  *v3 = v0;
  v3[1] = sub_10005E128;

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v2, v2);
}

uint64_t sub_10005E128()
{
  v2 = *v1;
  *(v2 + 352) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005E8E4, 0, 0);
  }

  else
  {
    v3 = sub_100001D04(&qword_1000A4E90, &unk_100085E40);
    v4 = swift_task_alloc();
    *(v2 + 360) = v4;
    *v4 = v2;
    v4[1] = sub_10005E2CC;

    return BaseObjectGraph.inject<A>(_:)(v2 + 96, v3, v3);
  }
}

uint64_t sub_10005E2CC()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_10005E954;
  }

  else
  {
    v2 = sub_10005E3E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005E3E0()
{
  v1 = v0[46];
  sub_100001CC0(v0 + 7, v0[10]);
  result = dispatch thunk of AssetPushSubscriptionStore.findAll()();
  if (v1)
  {
    sub_100001D4C(v0 + 12);
    sub_100001D4C(v0 + 7);

    v3 = v0[1];
LABEL_17:

    return v3();
  }

  v4 = result;
  v5 = *(result + 16);
  v6 = 0;
  if (!v5)
  {
LABEL_16:

    TaskLocal.get()();
    sub_100001CC0(v0 + 17, v0[20]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._countAndFlagsBits = 0xD000000000000028;
    v18._object = 0x8000000100089AE0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    v0[30] = &type metadata for Int;
    v0[27] = v6;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v0 + 27), &qword_1000A5630, &unk_100083BF0);
    v19._object = 0x8000000100089B10;
    v19._countAndFlagsBits = 0xD00000000000001DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 17);
    sub_100001D4C(v0 + 12);
    sub_100001D4C(v0 + 7);

    v3 = v0[1];
    goto LABEL_17;
  }

  v7 = 0;
  v8 = v0[38];
  v25 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v24 = (v8 + 8);
  v22 = *(result + 16);
  v23 = result;
  while (v7 < *(v4 + 16))
  {
    (*(v8 + 16))(v0[39], v25 + *(v8 + 72) * v7, v0[37]);
    v9 = AssetPushSubscriptionRecord.bundleID.getter();
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      if ((AssetPushSubscriptionRecord.id.getter() & 0x100000000) != 0)
      {
        (*v24)(v0[39], v0[37]);
      }

      else
      {
        v13 = v0[15];
        v14 = v0[16];
        sub_100001CC0(v0 + 12, v13);
        if ((*(v14 + 8))(v11, v12, v13, v14))
        {
          (*v24)(v0[39], v0[37]);
        }

        else
        {
          sub_100001CC0(v0 + 7, v0[10]);
          result = dispatch thunk of AssetPushSubscriptionStore.delete(id:)();
          if (__OFADD__(v6++, 1))
          {
            goto LABEL_21;
          }

          v21 = v0[39];
          v20 = v0[37];
          TaskLocal.get()();
          sub_100001CC0(v0 + 22, v0[25]);
          *(swift_allocObject() + 16) = xmmword_1000839C0;
          LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v16._countAndFlagsBits = 0xD000000000000036;
          v16._object = 0x8000000100089B30;
          LogMessage.StringInterpolation.appendLiteral(_:)(v16);
          v0[34] = &type metadata for String;
          v0[31] = v11;
          v0[32] = v12;
          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_10000DCA0((v0 + 31), &qword_1000A5630, &unk_100083BF0);
          v17._countAndFlagsBits = 0;
          v17._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v17);
          LogMessage.init(stringInterpolation:)();
          Logger.info(_:)();

          (*v24)(v21, v20);
          result = sub_100001D4C(v0 + 22);
        }

        v5 = v22;
        v4 = v23;
      }
    }

    else
    {
      result = (*v24)(v0[39], v0[37]);
    }

    if (v5 == ++v7)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10005E8E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005E954()
{
  sub_100001D4C((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005E9CC(uint64_t a1)
{
  v1[26] = a1;
  type metadata accessor for LogMessage.StringInterpolation();
  v1[27] = swift_task_alloc();
  v2 = type metadata accessor for AssetPushSubscriptionRecord();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_10005EAB8, 0, 0);
}

uint64_t sub_10005EAB8()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  *(v0 + 248) = qword_1000A63A8;
  TaskLocal.get()();
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 256) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v1 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 264) = *(v1 + 72);
  *(v0 + 360) = *(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  v2 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
  v3 = swift_task_alloc();
  *(v0 + 272) = v3;
  *v3 = v0;
  v3[1] = sub_10005ECBC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v2, v2);
}

uint64_t sub_10005ECBC()
{
  v2 = *v1;
  *(v2 + 280) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005F870, 0, 0);
  }

  else
  {
    v3 = sub_100001D04(&unk_1000A5730, &unk_100084200);
    v4 = swift_task_alloc();
    *(v2 + 288) = v4;
    *v4 = v2;
    v4[1] = sub_10005EE60;

    return BaseObjectGraph.inject<A>(_:)(v2 + 96, v3, v3);
  }
}

uint64_t sub_10005EE60()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_10005F8E0;
  }

  else
  {
    v2 = sub_10005EF74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005EF74()
{
  sub_100001CC0(v0 + 7, v0[10]);
  v1 = type metadata accessor for PushManager(0);
  v0[38] = v1;
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_10005F0B8;

  return (sub_1000382F4)(v1, &off_10009F238);
}

uint64_t sub_10005F0B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v4 = sub_10005F958;
  }

  else
  {
    v4 = sub_10005F1CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10005F1CC()
{
  sub_100001CC0(v0 + 7, v0[10]);
  v1 = swift_task_alloc();
  v0[42] = v1;
  *v1 = v0;
  v1[1] = sub_10005F268;

  return sub_100023658();
}

uint64_t sub_10005F268(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = a2;

  return _swift_task_switch(sub_10005F368, 0, 0);
}

uint64_t sub_10005F368()
{
  v1 = v0[41];
  sub_100001CC0(v0 + 12, v0[15]);
  v2 = dispatch thunk of AssetPushSubscriptionStore.findAll()();
  if (v1)
  {

    sub_100001D4C(v0 + 12);
    sub_100001D4C(v0 + 7);

    v3 = v0[1];
LABEL_36:

    return v3();
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v0[29];
    v6 = v2;
    sub_10003DCE8(0, v4, 0);
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = v6 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v41 = *(v5 + 56);
    v43 = v7;
    v9 = (v5 - 8);
    do
    {
      v10 = v0[30];
      v11 = v0[28];
      v43(v10, v8, v11);
      v12 = AssetPushSubscriptionRecord.channelID.getter();
      v14 = v13;
      (*v9)(v10, v11);
      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_10003DCE8((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v8 += v41;
      --v4;
    }

    while (v4);
  }

  v18 = v0[40];
  v19 = sub_10006BA2C(_swiftEmptyArrayStorage);

  v20 = *(v18 + 16);
  result = v0[40];
  if (!v20)
  {

    v38 = 0;
LABEL_35:

    TaskLocal.get()();
    sub_100001CC0(v0 + 17, v0[20]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v39._object = 0x8000000100089A60;
    v39._countAndFlagsBits = 0xD00000000000003ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    v0[25] = &type metadata for Int;
    v0[22] = v38;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v0 + 22), &qword_1000A5630, &unk_100083BF0);
    v40._countAndFlagsBits = 0x6C656E6E61686320;
    v40._object = 0xE900000000000073;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 17);
    sub_100001D4C(v0 + 12);
    sub_100001D4C(v0 + 7);

    v3 = v0[1];
    goto LABEL_36;
  }

  v44 = v19;
  v45 = 0;
  v22 = 0;
  v23 = result + 32;
  v24 = v19 + 56;
  v42 = v18;
  while (v22 < *(v18 + 16))
  {
    v25 = (v23 + 16 * v22);
    v27 = *v25;
    v26 = v25[1];
    if (*v25 == v0[43] && v26 == v0[44])
    {
      goto LABEL_12;
    }

    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (result)
    {
      goto LABEL_12;
    }

    if (!*(v19 + 16))
    {

LABEL_31:
      v37 = v0[38];
      sub_100001CC0(v0 + 7, v0[10]);
      sub_100038280(v27, v26, v37, &off_10009F238);

      if (__OFADD__(v45, 1))
      {
        goto LABEL_40;
      }

      ++v45;
      goto LABEL_11;
    }

    Hasher.init(_seed:)();
    Hasher._combine(_:)(1u);

    String.hash(into:)();
    v29 = Hasher._finalize()();
    v30 = -1 << *(v19 + 32);
    v31 = v29 & ~v30;
    if (((*(v24 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
      goto LABEL_31;
    }

    v32 = ~v30;
    v33 = *(v44 + 48);
    while (1)
    {
      v34 = (v33 + 16 * v31);
      v35 = v34[1];
      if (v35)
      {
        v36 = *v34 == v27 && v35 == v26;
        if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v31 = (v31 + 1) & v32;
      if (((*(v24 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_11:
    v18 = v42;
    v19 = v44;
LABEL_12:
    if (++v22 == v20)
    {

      v38 = v45;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10005F870()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005F8E0()
{
  sub_100001D4C((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005F958()
{
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10005F9D8(uint64_t a1)
{
  *(v1 + 104) = a1;
  type metadata accessor for JetPackAssetSession.Configuration();
  *(v1 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_10005FA68, 0, 0);
}

uint64_t sub_10005FA68()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  *(v0 + 120) = qword_1000A63A8;
  TaskLocal.get()();
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 128) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v1 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 136) = *(v1 + 72);
  *(v0 + 200) = *(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  v2 = type metadata accessor for JetPackAssetDiskCache();
  *(v0 + 144) = v2;
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_10005FC64;

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v2, v2);
}

uint64_t sub_10005FC64()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1000600A8;
  }

  else
  {
    v2 = sub_10005FD78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005FD78()
{
  v0[21] = v0[12];

  JetPackAssetSession.Configuration.init(cache:)();
  type metadata accessor for JetPackAssetSession();
  swift_allocObject();
  v0[22] = JetPackAssetSession.init(configuration:)();
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_10005FE64;

  return JetPackAssetSession.performMaintenance()();
}

uint64_t sub_10005FE64()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10006010C;
  }

  else
  {
    v2 = sub_10005FF78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005FF78()
{
  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000600A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006010C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000601A0()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  *(v0 + 144) = qword_1000A63A8;
  TaskLocal.get()();
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 152) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v1 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 160) = *(v1 + 72);
  *(v0 + 200) = *(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  v2 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_1000603A4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v2, v2);
}

uint64_t sub_1000603A4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1000607DC;
  }

  else
  {
    v2 = sub_1000604B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000604B8()
{
  sub_100001CC0(v0 + 7, v0[10]);
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_100060554;

  return sub_100027EE4();
}

uint64_t sub_100060554()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100060668;
  }

  else
  {
    v2 = sub_1000606CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100060668()
{
  sub_100001D4C((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000606CC()
{
  TaskLocal.get()();
  sub_100001CC0(v0 + 12, v0[15]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 7);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000607F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100060C48;

  return sub_10005589C(v0);
}

uint64_t sub_100060884(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100040348;

  return sub_10005A634(a1, v4);
}

uint64_t sub_100060924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100040348;

  return sub_1000575D8(a1, v4, v5, v6);
}

uint64_t sub_1000609D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000DAF8;

  return sub_10005A634(a1, v4);
}

uint64_t sub_100060A78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100060C48;

  return sub_100054714();
}

uint64_t sub_100060B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100060B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100060BC0()
{
  result = qword_1000A5968;
  if (!qword_1000A5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5968);
  }

  return result;
}

uint64_t sub_100060C94()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0, v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8, v3);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014998();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_10006112C(&qword_1000A5700, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001D04(&qword_1000A5708, &unk_100085510);
  sub_100061174();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000A6448 = result;
  return result;
}

uint64_t sub_100060EC8()
{
  v0 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v0 - 8, v1);
  type metadata accessor for DaemonActor();
  v2 = swift_allocObject();
  type metadata accessor for _DispatchQueueExecutor();
  if (qword_1000A4DC0 != -1)
  {
    swift_once();
  }

  v3 = qword_1000A6448;
  default argument 1 of _DispatchQueueExecutor.init(label:qos:target:)();
  result = _DispatchQueueExecutor.__allocating_init(label:qos:target:)();
  *(v2 + 16) = result;
  qword_1000A6450 = v2;
  return result;
}

uint64_t sub_100060FD0()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100061098()
{
  if (qword_1000A4DC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000610F4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DaemonActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_10006112C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100061174()
{
  result = qword_1000A5710;
  if (!qword_1000A5710)
  {
    sub_100018FD0(&qword_1000A5708, &unk_100085510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5710);
  }

  return result;
}

unint64_t sub_1000611EC()
{
  result = qword_1000A5A18;
  if (!qword_1000A5A18)
  {
    type metadata accessor for DaemonPostInstallRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5A18);
  }

  return result;
}

uint64_t sub_100061244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a1;
  v3[24] = a3;
  type metadata accessor for LogMessage.StringInterpolation();
  v3[25] = swift_task_alloc();
  sub_100001D04(&qword_1000A5A40, &qword_1000860F8);
  v3[26] = swift_task_alloc();
  v4 = type metadata accessor for SandboxExtensionToken();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v5 = type metadata accessor for URL.DirectoryHint();
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[34] = v6;
  v3[35] = *(v6 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v7 = type metadata accessor for ContainerLocation();
  v8 = swift_task_alloc();
  v3[38] = v8;
  *v8 = v3;
  v8[1] = sub_100061488;

  return BaseObjectGraph.inject<A>(_:)(v3 + 21, v7, v7);
}

uint64_t sub_100061488()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_100061A40;
  }

  else
  {
    v2 = sub_10006159C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006159C()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);
  v17 = *(v0 + 224);
  v18 = *(v0 + 216);
  v15 = *(v0 + 272);
  v16 = *(v0 + 208);
  ContainerLocation.cacheDirectoryUrl.getter();
  strcpy((v0 + 152), "testAsset.txt");
  *(v0 + 166) = -4864;
  (*(v4 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  sub_100006518();
  URL.appending<A>(component:directoryHint:)();
  (*(v4 + 8))(v5, v6);
  v7 = *(v3 + 8);
  v7(v2, v15);
  URL.path(percentEncoded:)(0);
  v7(v1, v15);
  static SandboxExtensionToken.issue(writable:path:auditToken:)();

  if ((*(v17 + 48))(v16, 1, v18) == 1)
  {
    v8 = (v0 + 56);
    sub_10000DCA0(*(v0 + 208), &qword_1000A5A40, &qword_1000860F8);
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v8, *(v0 + 80));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C(v8);
    type metadata accessor for DaemonReadTestAssetResponse();
    sub_100061DA8(&qword_1000A5A48, &type metadata accessor for DaemonReadTestAssetResponse, &protocol conformance descriptor for DaemonReadTestAssetResponse);
    sub_100061DA8(&qword_1000A5A50, &type metadata accessor for DaemonReadTestAssetResponse, &protocol conformance descriptor for DaemonReadTestAssetResponse);
    DaemonResponse.init(reason:)();
  }

  else
  {
    v9 = *(v0 + 232);
    v10 = *(v0 + 240);
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);
    (*(v12 + 32))(v10, *(v0 + 208), v11);
    (*(v12 + 16))(v9, v10, v11);
    DaemonReadTestAssetResponse.init(token:)();

    (*(v12 + 8))(v10, v11);
    sub_100001D04(&qword_1000A5A58, &unk_100086100);
    swift_storeEnumTagMultiPayload();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100061A40()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100089E00;
  v1._countAndFlagsBits = 0xD00000000000002DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[16];
  v3 = v0[17];
  v0[15] = v3;
  v4 = sub_1000061A4(v0 + 12);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
  sub_10000DCA0((v0 + 12), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 2);
  type metadata accessor for DaemonReadTestAssetResponse();
  sub_100061DA8(&qword_1000A5A48, &type metadata accessor for DaemonReadTestAssetResponse, &protocol conformance descriptor for DaemonReadTestAssetResponse);
  sub_100061DA8(&qword_1000A5A50, &type metadata accessor for DaemonReadTestAssetResponse, &protocol conformance descriptor for DaemonReadTestAssetResponse);
  DaemonResponse.init(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100061DA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100061E00()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100018750(v0, qword_1000A5A88);
  v1 = sub_100018718(v0, qword_1000A5A88);
  if (qword_1000A4D88 != -1)
  {
    swift_once();
  }

  v2 = sub_100018718(v0, qword_1000A63F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100061EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[146] = a4;
  v4[145] = a3;
  v4[144] = a2;
  v4[143] = a1;
  sub_100001D04(&qword_1000A5AA0, &qword_100086188);
  v4[147] = swift_task_alloc();
  v5 = type metadata accessor for JetPackAssetDiskCacheError();
  v4[148] = v5;
  v4[149] = *(v5 - 8);
  v4[150] = swift_task_alloc();
  v4[151] = swift_task_alloc();
  sub_100001D04(&qword_1000A5AA8, &qword_100086190);
  v4[152] = swift_task_alloc();
  v6 = type metadata accessor for ContainerLocation.ContainerError();
  v4[153] = v6;
  v4[154] = *(v6 - 8);
  v4[155] = swift_task_alloc();
  sub_100001D04(&qword_1000A5AB0, &qword_100086198);
  v4[156] = swift_task_alloc();
  v7 = type metadata accessor for SQLiteError();
  v4[157] = v7;
  v4[158] = *(v7 - 8);
  v4[159] = swift_task_alloc();
  v8 = type metadata accessor for _ErrorPredicate();
  v4[160] = v8;
  v4[161] = *(v8 - 8);
  v4[162] = swift_task_alloc();
  v9 = sub_100001D04(&qword_1000A5AB8, &unk_1000861A0);
  v4[163] = v9;
  v4[164] = *(v9 - 8);
  v4[165] = swift_task_alloc();
  v10 = type metadata accessor for XPCJetAsset();
  v4[166] = v10;
  v4[167] = *(v10 - 8);
  v4[168] = swift_task_alloc();
  v4[169] = swift_task_alloc();
  sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  v4[170] = swift_task_alloc();
  v11 = type metadata accessor for JetPackAsset.Metadata();
  v4[171] = v11;
  v4[172] = *(v11 - 8);
  v4[173] = swift_task_alloc();
  v12 = type metadata accessor for JetPackAsset();
  v4[174] = v12;
  v4[175] = *(v12 - 8);
  v4[176] = swift_task_alloc();
  v4[177] = swift_task_alloc();
  v13 = type metadata accessor for OSSignpostID();
  v4[178] = v13;
  v4[179] = *(v13 - 8);
  v4[180] = swift_task_alloc();
  v4[181] = swift_task_alloc();
  sub_100001D04(&qword_1000A5AC0, &qword_1000861B0);
  v4[182] = swift_task_alloc();
  v14 = sub_100001D04(&qword_1000A5AC8, &unk_1000861B8);
  v4[183] = v14;
  v4[184] = *(v14 - 8);
  v4[185] = swift_task_alloc();
  v15 = type metadata accessor for ContinuousClock();
  v4[186] = v15;
  v4[187] = *(v15 - 8);
  v4[188] = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  v4[189] = swift_task_alloc();
  v16 = type metadata accessor for URL();
  v4[190] = v16;
  v4[191] = *(v16 - 8);
  v4[192] = swift_task_alloc();
  v17 = type metadata accessor for URLJetPackAssetRequest();
  v4[193] = v17;
  v4[194] = *(v17 - 8);
  v4[195] = swift_task_alloc();
  v4[196] = swift_task_alloc();

  return _swift_task_switch(sub_10006257C, 0, 0);
}

uint64_t sub_10006257C()
{
  if (!jet_debug_tooling_os_variant_has_internal_content()())
  {
    goto LABEL_12;
  }

  v1 = *(v0 + 1568);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1544);
  v4 = *(v0 + 1536);
  v5 = *(v0 + 1528);
  v6 = *(v0 + 1520);
  DaemonGetAssetRequest.urlAssetRequest.getter();
  URLJetPackAssetRequest.url.getter();
  v7 = *(v2 + 8);
  v7(v1, v3);
  URL.absoluteString.getter();
  v8 = *(v5 + 8);
  v8(v4, v6);
  v9._countAndFlagsBits = 0xD000000000000018;
  v9._object = 0x800000010008A0A0;
  v10 = String.hasSuffix(_:)(v9);

  if (v10)
  {
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0((v0 + 304), *(v0 + 328));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 304));
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v12 = *(v0 + 1568);
  v13 = *(v0 + 1544);
  v14 = *(v0 + 1536);
  v15 = *(v0 + 1520);
  DaemonGetAssetRequest.urlAssetRequest.getter();
  URLJetPackAssetRequest.url.getter();
  v7(v12, v13);
  URL.absoluteString.getter();
  v8(v14, v15);
  v16._object = 0x800000010008A0C0;
  v16._countAndFlagsBits = 0xD000000000000014;
  v17 = String.hasSuffix(_:)(v16);

  if (v17)
  {
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    *(v0 + 1576) = qword_1000A6398;
    TaskLocal.get()();
    sub_100001CC0((v0 + 424), *(v0 + 448));
    *(v0 + 1584) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v18 = *(type metadata accessor for LogMessage() - 8);
    *(v0 + 1592) = *(v18 + 72);
    *(v0 + 252) = *(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v19._countAndFlagsBits = 0xD00000000000004CLL;
    v19._object = 0x800000010008A0E0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v0 + 1000) = &type metadata for Double;
    *(v0 + 976) = 0x404E000000000000;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 976, &qword_1000A5630, &unk_100083BF0);
    v20._countAndFlagsBits = 0x73646E6F63657320;
    v20._object = 0xE90000000000002ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();

    sub_100001D4C((v0 + 424));
    v21 = static Duration.seconds(_:)();
    v23 = v22;
    static Clock<>.continuous.getter();
    v24 = swift_task_alloc();
    *(v0 + 1600) = v24;
    *v24 = v0;
    v24[1] = sub_100062FF4;

    return sub_100068E74(v21, v23, 0, 0, 1);
  }

  else
  {
LABEL_12:
    v25 = *(v0 + 1472);
    v26 = *(v0 + 1464);
    v27 = *(v0 + 1456);
    sub_10006795C(v27);
    if ((*(v25 + 48))(v27, 1, v26) == 1)
    {
      sub_10000DCA0(*(v0 + 1456), &qword_1000A5AC0, &qword_1000861B0);
      if (qword_1000A4DD0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for OSSignposter();
      sub_100018718(v28, qword_1000A5A88);
      OSSignposter.logHandle.getter();
      OSSignpostID.init(log:)();
      v29 = OSSignposter.logHandle.getter();
      v30 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v30, v32, "GetAssetRequestHandler.handleRequest", "", v31, 2u);
      }

      v33 = *(v0 + 1448);
      v34 = *(v0 + 1440);
      v35 = *(v0 + 1432);
      v36 = *(v0 + 1424);

      (*(v35 + 16))(v34, v33, v36);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      *(v0 + 1608) = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v35 + 8))(v33, v36);
      v37 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
      v38 = swift_task_alloc();
      *(v0 + 1616) = v38;
      *v38 = v0;
      v38[1] = sub_100063760;

      return BaseObjectGraph.inject<A>(_:)(v0 + 504, v37, v37);
    }

    else
    {
      sub_100068E04(*(v0 + 1456), *(v0 + 1480));
      if (qword_1000A4D40 != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 1480);
      v40 = *(v0 + 1144);
      TaskLocal.get()();
      sub_100001CC0((v0 + 464), *(v0 + 488));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      sub_100001D4C((v0 + 464));
      sub_100068E04(v39, v40);

      v41 = *(v0 + 8);

      return v41();
    }
  }
}

uint64_t sub_100062FF4()
{
  v2 = *v1;

  v3 = v2[188];
  v4 = v2[187];
  v5 = v2[186];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1000693D0;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10006318C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10006318C()
{
  TaskLocal.get()();
  sub_100001CC0(v0 + 48, v0[51]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 48);
  v1 = v0[184];
  v2 = v0[183];
  v3 = v0[182];
  sub_10006795C(v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10000DCA0(v0[182], &qword_1000A5AC0, &qword_1000861B0);
    if (qword_1000A4DD0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for OSSignposter();
    sub_100018718(v4, qword_1000A5A88);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v5 = OSSignposter.logHandle.getter();
    v6 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "GetAssetRequestHandler.handleRequest", "", v7, 2u);
    }

    v9 = v0[181];
    v10 = v0[180];
    v11 = v0[179];
    v12 = v0[178];

    (*(v11 + 16))(v10, v9, v12);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v0[201] = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v11 + 8))(v9, v12);
    v13 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v14 = swift_task_alloc();
    v0[202] = v14;
    *v14 = v0;
    v14[1] = sub_100063760;

    return BaseObjectGraph.inject<A>(_:)(v0 + 63, v13, v13);
  }

  else
  {
    sub_100068E04(v0[182], v0[185]);
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v15 = v0[185];
    v16 = v0[143];
    TaskLocal.get()();
    sub_100001CC0(v0 + 58, v0[61]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    sub_100001D4C(v0 + 58);
    sub_100068E04(v15, v16);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100063760()
{

  if (v0)
  {

    v1 = sub_1000656E4;
  }

  else
  {
    v1 = sub_100063878;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100063878()
{
  sub_10000626C((v0 + 504), v0 + 704);
  sub_100001CC0((v0 + 704), *(v0 + 728));
  type metadata accessor for PushManager(0);
  sub_100038628();
  sub_100001D4C((v0 + 704));
  v1 = *(v0 + 1568);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1544);
  v4 = *(v0 + 1536);
  v5 = *(v0 + 1528);
  v6 = *(v0 + 1520);
  v7 = *(v0 + 1160);
  DaemonGetAssetRequest.urlAssetRequest.getter();
  URLJetPackAssetRequest.url.getter();
  v8 = *(v2 + 8);
  *(v0 + 1624) = v8;
  *(v0 + 1632) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  *(v0 + 1640) = URL.absoluteString.getter();
  *(v0 + 1648) = v9;
  (*(v5 + 8))(v4, v6);
  DaemonGetAssetRequest.urlAssetRequest.getter();
  *(v0 + 1656) = URLJetPackAssetRequest.usageIDOrDefault.getter();
  *(v0 + 1664) = v10;
  v8(v1, v3);
  *(v0 + 1672) = *v7;
  *(v0 + 1680) = v7[1];
  type metadata accessor for LocalPreferences();
  sub_100068984(v7, v0 + 112);
  sub_100068984(v7, v0 + 160);
  *(v0 + 1688) = static LocalPreferences.currentApplication.getter();
  DaemonGetAssetRequest.urlAssetRequest.getter();
  static OSLogger.jetPackAssets.getter();
  sub_100001CC0((v0 + 544), *(v0 + 568));
  *(v0 + 1696) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v11 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 1704) = *(v11 + 72);
  *(v0 + 300) = *(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x80000001000896C0;
  v12._countAndFlagsBits = 0xD000000000000017;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v0 + 968) = v6;
  sub_1000061A4((v0 + 944));
  URLJetPackAssetRequest.url.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 944, &qword_1000A5630, &unk_100083BF0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 544));
  v14 = type metadata accessor for AssetSQLiteDatabase();
  v15 = swift_task_alloc();
  *(v0 + 1712) = v15;
  *v15 = v0;
  v15[1] = sub_100063C18;

  return BaseObjectGraph.inject<A>(_:)(v0 + 1120, v14, v14);
}

uint64_t sub_100063C18()
{
  *(*v1 + 1720) = v0;

  if (v0)
  {
    v2 = sub_100063F50;
  }

  else
  {
    v2 = sub_100063D2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100063D2C()
{
  v1 = v0[211];
  v2 = v0[210];
  v3 = v0[209];
  v4 = v0[195];
  v5 = v0[146];
  v0[216] = v0[140];
  v6 = swift_task_alloc();
  v0[217] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = 0;
  *(v6 + 56) = v1;
  v7 = swift_task_alloc();
  v0[218] = v7;
  *v7 = v0;
  v7[1] = sub_100063E34;
  v8 = v0[177];
  v9 = v0[174];

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v8, &unk_1000861F0, v6, v9);
}

uint64_t sub_100063E34()
{
  *(*v1 + 1752) = v0;

  if (v0)
  {
    v2 = sub_100065094;
  }

  else
  {

    v2 = sub_10006458C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100063F50()
{
  v1 = *(v0 + 1720);
  (*(v0 + 1624))(*(v0 + 1560), *(v0 + 1544));
  *(v0 + 1760) = v1;

  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 1672);
  v31 = *(v0 + 1656);
  v32 = *(v0 + 1648);
  v30 = *(v0 + 1640);
  v27 = *(v0 + 1360);
  v34 = *(v0 + 1320);
  v35 = *(v0 + 1296);
  v36 = *(v0 + 1304);
  v37 = *(v0 + 1288);
  v38 = *(v0 + 1280);
  v39 = *(v0 + 1312);
  v28 = *(v0 + 1168);
  v29 = *(v0 + 1160);
  *(v0 + 1768) = qword_1000A6398;
  TaskLocal.get()();
  sub_100001CC0((v0 + 904), *(v0 + 928));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x8000000100089ED0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1048);
  *(v0 + 1032) = v4;
  v5 = sub_1000061A4((v0 + 1008));
  (*(*(v4 - 8) + 16))(v5, v3, v4);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1008, &qword_1000A5630, &unk_100083BF0);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 904));
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v27, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v28;
  *(v8 + 40) = v33;
  *(v8 + 56) = v31;
  *(v8 + 72) = v30;
  *(v8 + 80) = v32;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0;
  sub_100068984(v29, v0 + 16);

  sub_100023290(0, 0, v27, &unk_1000861D8, v8);

  *(v0 + 1112) = v1;
  swift_errorRetain();
  *(v0 + 1776) = sub_100001D04(&qword_1000A5AD8, &unk_1000861E0);
  _ErrorTraverser.init(startingWith:)();
  static _ErrorPredicate.noConnection.getter();
  v9 = _ErrorTraverser.first(_:)();
  *(v0 + 1784) = v9;
  (*(v37 + 8))(v35, v38);
  (*(v39 + 8))(v34, v36);
  sub_100068B00(*(v0 + 1160));
  if (v9)
  {
    TaskLocal.get()();
    sub_100001CC0((v0 + 344), *(v0 + 368));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 344));
    v10 = _convertErrorToNSError(_:)();
    v11 = [v10 domain];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    *(v0 + 1064) = v12;
    *(v0 + 1072) = v13;

    *(v0 + 1792) = v14;
    v15 = _convertErrorToNSError(_:)();
    *(v0 + 1800) = [v15 code];

    v16 = sub_100001D04(&unk_1000A5740, &unk_100085540);
    v17 = swift_task_alloc();
    *(v0 + 1808) = v17;
    *v17 = v0;
    v17[1] = sub_100065A5C;
    v18 = v0 + 744;
  }

  else
  {
    v19 = _convertErrorToNSError(_:)();
    v20 = [v19 domain];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    *(v0 + 1080) = v21;
    *(v0 + 1088) = v22;

    *(v0 + 1832) = v23;
    v24 = _convertErrorToNSError(_:)();
    *(v0 + 1840) = [v24 code];

    v16 = sub_100001D04(&unk_1000A5740, &unk_100085540);
    v25 = swift_task_alloc();
    *(v0 + 1848) = v25;
    *v25 = v0;
    v25[1] = sub_1000661B8;
    v18 = v0 + 584;
  }

  return BaseObjectGraph.inject<A>(_:)(v18, v16, v16);
}

uint64_t sub_10006458C()
{
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1560);
  v3 = *(v0 + 1544);

  v1(v2, v3);
  if (JetPackAsset.wasReadFromCache.getter())
  {
    if (JetPackAsset.wasRevalidated.getter())
    {
      v63 = 0xD000000000000010;
      v65 = 0x800000010008A020;
    }

    else
    {
      v4 = JetPackAsset.willBeRevalidated.getter();
      v5 = 0x800000010008A000;
      if (v4)
      {
        v6 = 0xD000000000000013;
      }

      else
      {
        v6 = 0x6568636163;
      }

      if ((v4 & 1) == 0)
      {
        v5 = 0xE500000000000000;
      }

      v63 = v6;
      v65 = v5;
    }
  }

  else
  {
    v63 = 0x6B726F7774656ELL;
    v65 = 0xE700000000000000;
  }

  v76 = *(v0 + 1752);
  v57 = *(v0 + 1672);
  v59 = *(v0 + 1664);
  v61 = *(v0 + 1648);
  v53 = *(v0 + 1640);
  v55 = *(v0 + 1656);
  v67 = *(v0 + 1416);
  v69 = *(v0 + 1408);
  v7 = *(v0 + 1400);
  v72 = *(v0 + 1392);
  v8 = *(v0 + 1384);
  v9 = *(v0 + 1376);
  v10 = *(v0 + 1368);
  v11 = *(v0 + 1360);
  v12 = *(v0 + 1168);
  v13 = *(v0 + 1160);
  JetPackAsset.metadata.getter();
  v14 = JetPackAsset.Metadata.assetVersion.getter();
  v16 = v15;
  (*(v9 + 8))(v8, v10);
  v17 = type metadata accessor for TaskPriority();
  v51 = *(*(v17 - 8) + 56);
  v51(v11, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v12;
  *(v18 + 40) = v57;
  *(v18 + 56) = v55;
  *(v18 + 64) = v59;
  *(v18 + 72) = v53;
  *(v18 + 80) = v61;
  *(v18 + 88) = v14;
  *(v18 + 96) = v16;
  *(v18 + 104) = v63;
  *(v18 + 112) = v65;
  *(v18 + 120) = 1;
  sub_100068984(v13, v0 + 64);

  sub_100023290(0, 0, v11, &unk_1000861F8, v18);

  (*(v7 + 16))(v69, v67, v72);
  XPCJetAsset.init(_:auditToken:)();
  if (v76)
  {
    (*(*(v0 + 1400) + 8))(*(v0 + 1416), *(v0 + 1392));
    *(v0 + 1760) = v76;

    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v62 = *(v0 + 1672);
    v58 = *(v0 + 1656);
    v60 = *(v0 + 1648);
    v56 = *(v0 + 1640);
    v50 = *(v0 + 1360);
    v64 = *(v0 + 1320);
    v75 = *(v0 + 1312);
    v68 = *(v0 + 1304);
    v66 = *(v0 + 1296);
    v70 = *(v0 + 1288);
    v73 = *(v0 + 1280);
    v52 = *(v0 + 1168);
    v54 = *(v0 + 1160);
    *(v0 + 1768) = qword_1000A6398;
    TaskLocal.get()();
    sub_100001CC0((v0 + 904), *(v0 + 928));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v19._countAndFlagsBits = 0xD000000000000021;
    v19._object = 0x8000000100089ED0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    swift_getErrorValue();
    v20 = *(v0 + 1040);
    v21 = *(v0 + 1048);
    *(v0 + 1032) = v21;
    v22 = sub_1000061A4((v0 + 1008));
    (*(*(v21 - 8) + 16))(v22, v20, v21);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 1008, &qword_1000A5630, &unk_100083BF0);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 904));
    v51(v50, 1, 1, v17);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = v52;
    *(v24 + 40) = v62;
    *(v24 + 56) = v58;
    *(v24 + 72) = v56;
    *(v24 + 80) = v60;
    *(v24 + 88) = 0u;
    *(v24 + 104) = 0u;
    *(v24 + 120) = 0;
    sub_100068984(v54, v0 + 16);

    sub_100023290(0, 0, v50, &unk_1000861D8, v24);

    *(v0 + 1112) = v76;
    swift_errorRetain();
    *(v0 + 1776) = sub_100001D04(&qword_1000A5AD8, &unk_1000861E0);
    _ErrorTraverser.init(startingWith:)();
    static _ErrorPredicate.noConnection.getter();
    v25 = _ErrorTraverser.first(_:)();
    *(v0 + 1784) = v25;
    (*(v70 + 8))(v66, v73);
    (*(v75 + 8))(v64, v68);
    sub_100068B00(*(v0 + 1160));
    if (v25)
    {
      TaskLocal.get()();
      sub_100001CC0((v0 + 344), *(v0 + 368));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      sub_100001D4C((v0 + 344));
      v26 = _convertErrorToNSError(_:)();
      v27 = [v26 domain];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
      *(v0 + 1064) = v28;
      *(v0 + 1072) = v29;

      *(v0 + 1792) = v30;
      v31 = _convertErrorToNSError(_:)();
      *(v0 + 1800) = [v31 code];

      v32 = sub_100001D04(&unk_1000A5740, &unk_100085540);
      v33 = swift_task_alloc();
      *(v0 + 1808) = v33;
      *v33 = v0;
      v33[1] = sub_100065A5C;
      v34 = v0 + 744;
    }

    else
    {
      v43 = _convertErrorToNSError(_:)();
      v44 = [v43 domain];

      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;
      *(v0 + 1080) = v45;
      *(v0 + 1088) = v46;

      *(v0 + 1832) = v47;
      v48 = _convertErrorToNSError(_:)();
      *(v0 + 1840) = [v48 code];

      v32 = sub_100001D04(&unk_1000A5740, &unk_100085540);
      v49 = swift_task_alloc();
      *(v0 + 1848) = v49;
      *v49 = v0;
      v49[1] = sub_1000661B8;
      v34 = v0 + 584;
    }

    return BaseObjectGraph.inject<A>(_:)(v34, v32, v32);
  }

  else
  {
    v77 = *(v0 + 1608);
    v74 = *(v0 + 1416);
    v35 = *(v0 + 1400);
    v71 = *(v0 + 1392);
    v36 = *(v0 + 1352);
    v37 = *(v0 + 1344);
    v38 = *(v0 + 1336);
    v39 = *(v0 + 1328);
    v40 = *(v0 + 1160);
    sub_100068B00(v40);
    sub_100068B00(v40);

    (*(v38 + 16))(v37, v36, v39);
    DaemonGetAssetResponse.init(asset:)();

    (*(v38 + 8))(v36, v39);
    (*(v35 + 8))(v74, v71);
    swift_storeEnumTagMultiPayload();
    sub_100067C3C("GetAssetRequestHandler.handleRequest", 36, 2, v77);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_100065094()
{

  v1 = *(v0 + 1752);
  (*(v0 + 1624))(*(v0 + 1560), *(v0 + 1544));
  *(v0 + 1760) = v1;

  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 1672);
  v31 = *(v0 + 1656);
  v32 = *(v0 + 1648);
  v30 = *(v0 + 1640);
  v27 = *(v0 + 1360);
  v34 = *(v0 + 1320);
  v35 = *(v0 + 1296);
  v36 = *(v0 + 1304);
  v37 = *(v0 + 1288);
  v38 = *(v0 + 1280);
  v39 = *(v0 + 1312);
  v28 = *(v0 + 1168);
  v29 = *(v0 + 1160);
  *(v0 + 1768) = qword_1000A6398;
  TaskLocal.get()();
  sub_100001CC0((v0 + 904), *(v0 + 928));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x8000000100089ED0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1048);
  *(v0 + 1032) = v4;
  v5 = sub_1000061A4((v0 + 1008));
  (*(*(v4 - 8) + 16))(v5, v3, v4);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1008, &qword_1000A5630, &unk_100083BF0);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 904));
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v27, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v28;
  *(v8 + 40) = v33;
  *(v8 + 56) = v31;
  *(v8 + 72) = v30;
  *(v8 + 80) = v32;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0;
  sub_100068984(v29, v0 + 16);

  sub_100023290(0, 0, v27, &unk_1000861D8, v8);

  *(v0 + 1112) = v1;
  swift_errorRetain();
  *(v0 + 1776) = sub_100001D04(&qword_1000A5AD8, &unk_1000861E0);
  _ErrorTraverser.init(startingWith:)();
  static _ErrorPredicate.noConnection.getter();
  v9 = _ErrorTraverser.first(_:)();
  *(v0 + 1784) = v9;
  (*(v37 + 8))(v35, v38);
  (*(v39 + 8))(v34, v36);
  sub_100068B00(*(v0 + 1160));
  if (v9)
  {
    TaskLocal.get()();
    sub_100001CC0((v0 + 344), *(v0 + 368));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 344));
    v10 = _convertErrorToNSError(_:)();
    v11 = [v10 domain];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    *(v0 + 1064) = v12;
    *(v0 + 1072) = v13;

    *(v0 + 1792) = v14;
    v15 = _convertErrorToNSError(_:)();
    *(v0 + 1800) = [v15 code];

    v16 = sub_100001D04(&unk_1000A5740, &unk_100085540);
    v17 = swift_task_alloc();
    *(v0 + 1808) = v17;
    *v17 = v0;
    v17[1] = sub_100065A5C;
    v18 = v0 + 744;
  }

  else
  {
    v19 = _convertErrorToNSError(_:)();
    v20 = [v19 domain];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    *(v0 + 1080) = v21;
    *(v0 + 1088) = v22;

    *(v0 + 1832) = v23;
    v24 = _convertErrorToNSError(_:)();
    *(v0 + 1840) = [v24 code];

    v16 = sub_100001D04(&unk_1000A5740, &unk_100085540);
    v25 = swift_task_alloc();
    *(v0 + 1848) = v25;
    *v25 = v0;
    v25[1] = sub_1000661B8;
    v18 = v0 + 584;
  }

  return BaseObjectGraph.inject<A>(_:)(v18, v16, v16);
}

uint64_t sub_1000656E4()
{
  *(v0 + 536) = 0;
  *(v0 + 504) = 0u;
  *(v0 + 520) = 0u;
  sub_10000DCA0(v0 + 504, &qword_1000A5AD0, &qword_1000861C8);
  v1 = *(v0 + 1568);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1544);
  v4 = *(v0 + 1536);
  v5 = *(v0 + 1528);
  v6 = *(v0 + 1520);
  v7 = *(v0 + 1160);
  DaemonGetAssetRequest.urlAssetRequest.getter();
  URLJetPackAssetRequest.url.getter();
  v8 = *(v2 + 8);
  *(v0 + 1624) = v8;
  *(v0 + 1632) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  *(v0 + 1640) = URL.absoluteString.getter();
  *(v0 + 1648) = v9;
  (*(v5 + 8))(v4, v6);
  DaemonGetAssetRequest.urlAssetRequest.getter();
  *(v0 + 1656) = URLJetPackAssetRequest.usageIDOrDefault.getter();
  *(v0 + 1664) = v10;
  v8(v1, v3);
  *(v0 + 1672) = *v7;
  *(v0 + 1680) = v7[1];
  type metadata accessor for LocalPreferences();
  sub_100068984(v7, v0 + 112);
  sub_100068984(v7, v0 + 160);
  *(v0 + 1688) = static LocalPreferences.currentApplication.getter();
  DaemonGetAssetRequest.urlAssetRequest.getter();
  static OSLogger.jetPackAssets.getter();
  sub_100001CC0((v0 + 544), *(v0 + 568));
  *(v0 + 1696) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v11 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 1704) = *(v11 + 72);
  *(v0 + 300) = *(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x80000001000896C0;
  v12._countAndFlagsBits = 0xD000000000000017;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v0 + 968) = v6;
  sub_1000061A4((v0 + 944));
  URLJetPackAssetRequest.url.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 944, &qword_1000A5630, &unk_100083BF0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 544));
  v14 = type metadata accessor for AssetSQLiteDatabase();
  v15 = swift_task_alloc();
  *(v0 + 1712) = v15;
  *v15 = v0;
  v15[1] = sub_100063C18;

  return BaseObjectGraph.inject<A>(_:)(v0 + 1120, v14, v14);
}

uint64_t sub_100065A5C()
{
  v2 = *v1;
  *(*v1 + 1816) = v0;

  if (v0)
  {
    v3 = v2[145];

    sub_100068B00(v3);
    v4 = sub_100065E90;
  }

  else
  {
    v2[228] = v2[133];
    v4 = sub_100065B8C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100065B8C()
{
  v1 = *(v0 + 1824);
  v2 = *(v0 + 1800);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1672);
  v9 = *(v0 + 1160);
  sub_100001CC0((v0 + 744), *(v0 + 768));
  *(v0 + 208) = v1;
  *(v0 + 216) = v3;
  *(v0 + 224) = v2;
  *(v0 + 232) = v5;
  *(v0 + 240) = v4;
  *(v0 + 248) = 1;
  sub_100068B54();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_100068B00(v9);
  sub_100001D4C((v0 + 744));
  v6 = *(v0 + 1608);
  _convertErrorToNSError(_:)();
  type metadata accessor for DaemonGetAssetResponse();
  sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
  sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
  DaemonResponse.init(nsError:)();

  sub_100067C3C("GetAssetRequestHandler.handleRequest", 36, 2, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100065E90()
{
  TaskLocal.get()();
  sub_100001CC0(v0 + 83, v0[86]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 83);
  v1 = v0[201];
  _convertErrorToNSError(_:)();
  type metadata accessor for DaemonGetAssetResponse();
  sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
  sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
  DaemonResponse.init(nsError:)();

  sub_100067C3C("GetAssetRequestHandler.handleRequest", 36, 2, v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000661B8()
{
  v2 = *v1;
  *(*v1 + 1856) = v0;

  if (v0)
  {
    v3 = v2[145];

    sub_100068B00(v3);
    v4 = sub_100066E04;
  }

  else
  {
    v2[233] = v2[135];
    v4 = sub_1000662E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000662E8()
{
  v1 = *(v0 + 1864);
  v2 = *(v0 + 1840);
  v3 = *(v0 + 1832);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1672);
  v6 = *(v0 + 1160);
  sub_100001CC0((v0 + 584), *(v0 + 608));
  *(v0 + 256) = v1;
  *(v0 + 264) = v3;
  *(v0 + 272) = v2;
  *(v0 + 280) = v5;
  *(v0 + 288) = v4;
  *(v0 + 296) = 0;
  sub_100068B54();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_100068B00(v6);
  sub_100001D4C((v0 + 584));
  v7 = *(v0 + 1264);
  *(v0 + 1104) = *(v0 + 1760);
  swift_errorRetain();
  v8 = swift_dynamicCast();
  v9 = *(v7 + 56);
  if (v8)
  {
    v10 = *(v0 + 1608);
    v11 = *(v0 + 1272);
    v12 = *(v0 + 1264);
    v13 = *(v0 + 1256);
    v14 = *(v0 + 1248);
    v9(v14, 0, 1, v13);
    (*(v12 + 32))(v11, v14, v13);
    TaskLocal.get()();
    sub_100001CC0((v0 + 864), *(v0 + 888));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 864));
    sub_100069384(&qword_1000A5B00, &type metadata accessor for SQLiteError, &protocol conformance descriptor for SQLiteError);
    swift_allocError();
    v15 = v11;
    (*(v12 + 16))(v16, v11, v13);
    _convertErrorToNSError(_:)();
    type metadata accessor for DaemonGetAssetResponse();
    sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
    sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
LABEL_5:
    DaemonResponse.init(nsError:)();

    (*(v12 + 8))(v15, v13);
LABEL_6:

    goto LABEL_7;
  }

  v17 = *(v0 + 1760);
  v18 = *(v0 + 1248);
  v19 = *(v0 + 1232);
  v9(v18, 1, 1, *(v0 + 1256));
  sub_10000DCA0(v18, &qword_1000A5AB0, &qword_100086198);
  *(v0 + 1136) = v17;
  swift_errorRetain();
  v20 = swift_dynamicCast();
  v21 = *(v19 + 56);
  if (v20)
  {
    v10 = *(v0 + 1608);
    v22 = *(v0 + 1240);
    v12 = *(v0 + 1232);
    v13 = *(v0 + 1224);
    v23 = *(v0 + 1216);
    v21(v23, 0, 1, v13);
    (*(v12 + 32))(v22, v23, v13);
    TaskLocal.get()();
    sub_100001CC0((v0 + 824), *(v0 + 848));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 824));
    sub_100069384(&qword_1000A5AF8, &type metadata accessor for ContainerLocation.ContainerError, &protocol conformance descriptor for ContainerLocation.ContainerError);
    swift_allocError();
    v15 = v22;
    (*(v12 + 16))(v24, v22, v13);
    _convertErrorToNSError(_:)();
    type metadata accessor for DaemonGetAssetResponse();
    sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
    sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
    goto LABEL_5;
  }

  v27 = *(v0 + 1760);
  v28 = *(v0 + 1216);
  v29 = *(v0 + 1192);
  v21(v28, 1, 1, *(v0 + 1224));
  sub_10000DCA0(v28, &qword_1000A5AA8, &qword_100086190);
  *(v0 + 1096) = v27;
  swift_errorRetain();
  v30 = swift_dynamicCast();
  v31 = *(v29 + 56);
  if (v30)
  {
    v32 = *(v0 + 1208);
    v33 = *(v0 + 1200);
    v34 = *(v0 + 1192);
    v35 = *(v0 + 1184);
    v36 = *(v0 + 1176);
    v31(v36, 0, 1, v35);
    (*(v34 + 32))(v32, v36, v35);
    (*(v34 + 104))(v33, enum case for JetPackAssetDiskCacheError.prepareDefaultLocation(_:), v35);
    LOBYTE(v32) = static JetPackAssetDiskCacheError.== infix(_:_:)();
    v37 = *(v34 + 8);
    v37(v33, v35);
    if (v32)
    {
      v43 = *(v0 + 1608);
      v38 = *(v0 + 1192);
      v41 = *(v0 + 1184);
      v42 = *(v0 + 1208);
      TaskLocal.get()();
      sub_100001CC0((v0 + 784), *(v0 + 808));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      sub_100001D4C((v0 + 784));
      sub_100069384(&qword_1000A5AF0, &type metadata accessor for JetPackAssetDiskCacheError, &protocol conformance descriptor for JetPackAssetDiskCacheError);
      swift_allocError();
      (*(v38 + 16))(v39, v42, v41);
      _convertErrorToNSError(_:)();
      type metadata accessor for DaemonGetAssetResponse();
      sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
      sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
      DaemonResponse.init(nsError:)();

      v37(v42, v41);
      v10 = v43;
      goto LABEL_6;
    }

    v37(*(v0 + 1208), *(v0 + 1184));
  }

  else
  {
    v40 = *(v0 + 1176);
    v31(v40, 1, 1, *(v0 + 1184));
    sub_10000DCA0(v40, &qword_1000A5AA0, &qword_100086188);
  }

  v10 = *(v0 + 1608);
  type metadata accessor for DaemonGetAssetResponse();
  sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
  sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
  DaemonResponse.init(_:)();
LABEL_7:
  sub_100067C3C("GetAssetRequestHandler.handleRequest", 36, 2, v10);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100066E04()
{
  TaskLocal.get()();
  sub_100001CC0(v0 + 78, v0[81]);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 78);
  v1 = v0[158];
  v0[138] = v0[220];
  swift_errorRetain();
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = v0[201];
    v5 = v0[159];
    v6 = v0[158];
    v7 = v0[157];
    v8 = v0[156];
    v3(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
    TaskLocal.get()();
    sub_100001CC0(v0 + 108, v0[111]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C(v0 + 108);
    sub_100069384(&qword_1000A5B00, &type metadata accessor for SQLiteError, &protocol conformance descriptor for SQLiteError);
    swift_allocError();
    (*(v6 + 16))(v9, v5, v7);
    _convertErrorToNSError(_:)();
    type metadata accessor for DaemonGetAssetResponse();
    sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
    sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
    DaemonResponse.init(nsError:)();

    (*(v6 + 8))(v5, v7);
LABEL_6:

    goto LABEL_7;
  }

  v10 = v0[220];
  v11 = v0[156];
  v12 = v0[154];
  v3(v11, 1, 1, v0[157]);
  sub_10000DCA0(v11, &qword_1000A5AB0, &qword_100086198);
  v0[142] = v10;
  swift_errorRetain();
  v13 = swift_dynamicCast();
  v14 = *(v12 + 56);
  v15 = v0[220];
  if (v13)
  {
    v38 = v0[201];
    v16 = v0[155];
    v17 = v0[154];
    v18 = v0[153];
    v19 = v0[152];
    v14(v19, 0, 1, v18);
    (*(v17 + 32))(v16, v19, v18);
    TaskLocal.get()();
    sub_100001CC0(v0 + 103, v0[106]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C(v0 + 103);
    sub_100069384(&qword_1000A5AF8, &type metadata accessor for ContainerLocation.ContainerError, &protocol conformance descriptor for ContainerLocation.ContainerError);
    swift_allocError();
    (*(v17 + 16))(v20, v16, v18);
    _convertErrorToNSError(_:)();
    type metadata accessor for DaemonGetAssetResponse();
    sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
    sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
    DaemonResponse.init(nsError:)();

    (*(v17 + 8))(v16, v18);
LABEL_5:
    v4 = v38;
    goto LABEL_6;
  }

  v23 = v0[152];
  v24 = v0[149];
  v14(v23, 1, 1, v0[153]);
  sub_10000DCA0(v23, &qword_1000A5AA8, &qword_100086190);
  v0[137] = v15;
  swift_errorRetain();
  v25 = swift_dynamicCast();
  v26 = *(v24 + 56);
  if (v25)
  {
    v27 = v0[151];
    v28 = v0[150];
    v29 = v0[149];
    v30 = v0[148];
    v31 = v0[147];
    v26(v31, 0, 1, v30);
    (*(v29 + 32))(v27, v31, v30);
    (*(v29 + 104))(v28, enum case for JetPackAssetDiskCacheError.prepareDefaultLocation(_:), v30);
    LOBYTE(v27) = static JetPackAssetDiskCacheError.== infix(_:_:)();
    v32 = *(v29 + 8);
    v32(v28, v30);
    if (v27)
    {
      v38 = v0[201];
      v33 = v0[149];
      v36 = v0[148];
      v37 = v0[151];
      TaskLocal.get()();
      sub_100001CC0(v0 + 98, v0[101]);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      sub_100001D4C(v0 + 98);
      sub_100069384(&qword_1000A5AF0, &type metadata accessor for JetPackAssetDiskCacheError, &protocol conformance descriptor for JetPackAssetDiskCacheError);
      swift_allocError();
      (*(v33 + 16))(v34, v37, v36);
      _convertErrorToNSError(_:)();
      type metadata accessor for DaemonGetAssetResponse();
      sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
      sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
      DaemonResponse.init(nsError:)();

      v32(v37, v36);
      goto LABEL_5;
    }

    v32(v0[151], v0[148]);
  }

  else
  {
    v35 = v0[147];
    v26(v35, 1, 1, v0[148]);
    sub_10000DCA0(v35, &qword_1000A5AA0, &qword_100086188);
  }

  v4 = v0[201];
  type metadata accessor for DaemonGetAssetResponse();
  sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
  sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
  DaemonResponse.init(_:)();
LABEL_7:
  sub_100067C3C("GetAssetRequestHandler.handleRequest", 36, 2, v4);

  v21 = v0[1];

  return v21();
}

uint64_t sub_10006795C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for JetPackError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001D04(&unk_1000A5750, &unk_100085550);
  BaseObjectGraph.inject<A>(_:)();
  type metadata accessor for KillSwitchManager(0);
  if (sub_10006C540())
  {
    (*(v3 + 104))(v6, enum case for JetPackError.daemonKillSwitch(_:), v2);
    sub_100069384(&qword_1000A4F00, &type metadata accessor for JetPackError, &protocol conformance descriptor for JetPackError);
    swift_allocError();
    (*(v3 + 32))(v7, v6, v2);
    _convertErrorToNSError(_:)();
    type metadata accessor for DaemonGetAssetResponse();
    sub_100069384(&qword_1000A5AE0, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
    sub_100069384(&qword_1000A5AE8, &type metadata accessor for DaemonGetAssetResponse, &protocol conformance descriptor for DaemonGetAssetResponse);
    DaemonResponse.init(nsError:)();
    swift_unknownObjectRelease();

    v8 = sub_100001D04(&qword_1000A5AC8, &unk_1000861B8);
    return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }

  else
  {
    v10 = sub_100001D04(&qword_1000A5AC8, &unk_1000861B8);
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100067C3C(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v22 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A4DD0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for OSSignposter();
  sub_100018718(v15, qword_1000A5A88);
  v16 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v21 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v22 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v9, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v21, v20, a1, v18, v19, 2u);

LABEL_15:

      return (*(v11 + 8))(v14, v10);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100067F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 296) = v17;
  *(v8 + 224) = v15;
  *(v8 + 232) = v16;
  *(v8 + 192) = v13;
  *(v8 + 208) = v14;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  type metadata accessor for LogMessage.StringInterpolation();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = type metadata accessor for AssetRequestMetricsEvent(0);
  *(v8 + 256) = swift_task_alloc();
  v9 = sub_100001D04(&qword_1000A5760, &qword_100085560);
  v10 = swift_task_alloc();
  *(v8 + 264) = v10;
  *v10 = v8;
  v10[1] = sub_100068054;

  return BaseObjectGraph.inject<A>(_:)(v8 + 16, v9, v9);
}

uint64_t sub_100068054()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_100068728;
  }

  else
  {
    v2 = sub_100068168;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100068168()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v19 = *(v0 + 296);
  v17 = *(v0 + 224);
  v18 = *(v0 + 232);
  v15 = *(v0 + 208);
  v16 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v9 = *(v2 + 48);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *v1 = v7;
  *(v1 + 8) = v8;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v15;
  *(v1 + 56) = v16;
  *(v1 + 64) = v17;
  *(v1 + 72) = v18;
  *(v1 + 80) = 0x74736575716572;
  *(v1 + 88) = 0xE700000000000000;
  *(v1 + 96) = v19;
  *(v1 + 104) = 0;
  v11 = v1 + *(v2 + 52);
  *v11 = 0;
  *(v11 + 8) = 1;
  sub_100001CC0((v0 + 16), *(v0 + 40));

  v12 = swift_task_alloc();
  *(v0 + 280) = v12;
  *v12 = v0;
  v12[1] = sub_10006832C;
  v13 = *(v0 + 256);

  return sub_100038808(v13);
}

uint64_t sub_10006832C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1000684BC;
  }

  else
  {
    v2 = sub_100068440;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100068440()
{
  sub_10000DBEC(v0[32]);
  sub_100001D4C(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000684BC()
{
  sub_10000DBEC(v0[32]);
  sub_100001D4C(v0 + 2);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100086D40;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[16];
  v3 = v0[17];
  v0[15] = v3;
  v4 = sub_1000061A4(v0 + 12);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 12), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100068728()
{
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._object = 0x8000000100086D40;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v1);
  swift_getErrorValue();
  v2 = v0[16];
  v3 = v0[17];
  v0[15] = v3;
  v4 = sub_1000061A4(v0 + 12);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 12), &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000689E4(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100040348;

  return sub_100067F18(a1, v13, v11, v4, v5, v6, v7, v8);
}

unint64_t sub_100068B54()
{
  result = qword_1000A5B08;
  if (!qword_1000A5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5B08);
  }

  return result;
}

uint64_t sub_100068BA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000DAF8;

  return sub_1000086E8(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100068C80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_100068CE8(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000DAF8;

  return sub_100067F18(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_100068E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A5AC8, &unk_1000861B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100068F74, 0, 0);
}

uint64_t sub_100068F74()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100069384(&qword_1000A5B10, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100069384(&qword_1000A5B18, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100069104;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100069104()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000692C0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000692C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100069384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000693D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v52 = a2;
  v53 = a4;
  v48 = a3;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8, v7);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001D04(&qword_1000A5BE8, &qword_100086278);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = &_swiftEmptyDictionarySingleton;
  v41 = v4;
  *(v4 + 16) = v9;
  v10 = sub_10006B8B8(a1);

  v11 = 0;
  v43 = 0;
  v12 = *(v10 + 56);
  v51 = v10;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v45 = &v59;
  v42 = "ations for ";
  v40 = "ibe to notifications for ";
  v44 = xmmword_1000839C0;
  v46 = v16;
  while (v15)
  {
    v23 = v11;
LABEL_11:
    v24 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v25 = (*(v51 + 48) + ((v23 << 10) | (16 * v24)));
    v27 = *v25;
    v26 = v25[1];
    out_token = -1;
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v26;
    v29 = v53;
    v28[4] = v48;
    v28[5] = v29;
    v61 = sub_10006B990;
    v62 = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v59 = sub_100069C80;
    v60 = &unk_10009FDD8;
    v30 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();
    v31 = v52;

    v32 = String.utf8CString.getter();
    v33 = notify_register_dispatch((v32 + 32), &out_token, v31, v30);

    _Block_release(v30);

    if (v33)
    {
      static OSLogger.daemon.getter();
      v50 = v61;
      v49 = sub_100001CC0(aBlock, v60);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = v44;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v36._object = (v42 | 0x8000000000000000);
      v36._countAndFlagsBits = 0xD000000000000029;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      v57 = &type metadata for String;
      v55 = v27;
      v56 = v26;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_100013EFC(&v55);
      v37._countAndFlagsBits = 0x6C75736552202D20;
      v37._object = 0xEB00000000203A74;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      v57 = &type metadata for UInt32;
      LODWORD(v55) = v33;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_100013EFC(&v55);
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v38);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();
    }

    else
    {
      v17 = out_token;
      v18 = *(v41 + 16);
      __chkstk_darwin(v34, v35);
      *(&v40 - 4) = v27;
      *(&v40 - 3) = v26;
      *(&v40 - 4) = v17;

      os_unfair_lock_lock((v18 + 24));
      v19 = v43;
      sub_10006B9B4((v18 + 16));
      v43 = v19;
      os_unfair_lock_unlock((v18 + 24));

      static OSLogger.daemon.getter();
      v50 = v61;
      v49 = sub_100001CC0(aBlock, v60);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = v44;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v20._countAndFlagsBits = 0xD00000000000002DLL;
      v20._object = (v40 | 0x8000000000000000);
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v57 = &type metadata for String;
      v55 = v27;
      v56 = v26;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_100013EFC(&v55);
      v21._countAndFlagsBits = 0x206E656B6F745B20;
      v21._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      v57 = &type metadata for Int32;
      LODWORD(v55) = v17;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_100013EFC(&v55);
      v22._countAndFlagsBits = 93;
      v22._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      LogMessage.init(stringInterpolation:)();
      Logger.debug(_:)();
    }

    sub_100001D4C(aBlock);
    v11 = v23;
    v16 = v46;
  }

  while (1)
  {
    v23 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    if (v23 >= v16)
    {
      break;
    }

    v15 = *(v10 + 56 + 8 * v23);
    ++v11;
    if (v15)
    {
      goto LABEL_11;
    }
  }

  return v41;
}

uint64_t sub_100069A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v7 - 8, v8);
  static OSLogger.daemon.getter();
  sub_100001CC0(v16, v16[3]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x800000010008A300;
  v9._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v15 = &type metadata for String;
  v14[0] = a2;
  v14[1] = a3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v14);
  v10._countAndFlagsBits = 0x206E656B6F745B20;
  v10._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v15 = &type metadata for Int32;
  LODWORD(v14[0]) = a1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v14);
  v11._countAndFlagsBits = 93;
  v11._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C(v16);
  return a4(a2, a3, a1);
}

uint64_t sub_100069C80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100069CD4(void *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v1 + 56) + 4 * v11);

    sub_100069DD4(v13, v14, v15);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100069DD4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8, v7);
  if (notify_cancel(a3))
  {
    static OSLogger.daemon.getter();
    sub_100001CC0(v18, v19);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8._countAndFlagsBits = 0xD000000000000023;
    v8._object = 0x800000010008A240;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v17 = &type metadata for String;
    v15 = a1;
    v16 = a2;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC(&v15);
    v9._countAndFlagsBits = 0x3A6E656B6F745B20;
    v9._object = 0xE900000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v17 = &type metadata for Int32;
    LODWORD(v15) = a3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC(&v15);
    v10._countAndFlagsBits = 93;
    v10._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();
  }

  else
  {
    static OSLogger.daemon.getter();
    sub_100001CC0(v18, v19);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._object = 0x800000010008A270;
    v11._countAndFlagsBits = 0xD00000000000001BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    v17 = &type metadata for String;
    v15 = a1;
    v16 = a2;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC(&v15);
    v12._countAndFlagsBits = 0x3A6E656B6F745B20;
    v12._object = 0xE900000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    v17 = &type metadata for Int32;
    LODWORD(v15) = a3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC(&v15);
    v13._countAndFlagsBits = 93;
    v13._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();
  }

  return sub_100001D4C(v18);
}

uint64_t sub_10006A14C()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_100069CD4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  return _swift_deallocClassInstance(v0, 24, 7);
}

_OWORD *sub_10006A1F0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100001D98(a2, a3);
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
      sub_10000F41C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000EAD4(v16, a4 & 1);
    v11 = sub_100001D98(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100001D4C(v22);

    return sub_100002698(a1, v22);
  }

  else
  {
    sub_10006A61C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_10006A340(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100001D98(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000ED8C(v16, a4 & 1);
      v11 = sub_100001D98(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10000F5C0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
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
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_10006A4B8(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100001D98(a2, a3);
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
      sub_10000F030(v16, a4 & 1);
      result = sub_100001D98(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10000F72C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 4 * result) = a1;
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

_OWORD *sub_10006A61C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100002698(a4, (a5[7] + 32 * a1));
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

uint64_t sub_10006A688(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_10006AE3C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10006A7D8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10006AFBC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

Swift::Int sub_10006A960(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001D04(&qword_1000A5BF0, &unk_100086280);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_10006ABC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001D04(&qword_1000A5C00, &unk_100086290);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v20 = *v18;
      v19 = v18[1];
      Hasher.init(_seed:)();
      if (v19)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

Swift::Int sub_10006AE3C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10006A960(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10006B178();
      goto LABEL_16;
    }

    sub_10006B42C(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10006AFBC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    sub_10006ABC0(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_10006B2D4();
      goto LABEL_23;
    }

    sub_10006B664(v9 + 1);
  }

  v11 = *v4;
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v12 = v11 + 56;
  v13 = -1 << *(v11 + 32);
  a3 = result & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    v15 = *(v11 + 48);
    do
    {
      v16 = (v15 + 16 * a3);
      v17 = v16[1];
      if (v17)
      {
        if (a2)
        {
          v18 = *v16 == v8 && v17 == a2;
          if (v18 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
LABEL_22:
            sub_100001D04(&qword_1000A5798, &qword_1000855C8);
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *sub_10006B178()
{
  v1 = v0;
  sub_100001D04(&qword_1000A5BF0, &unk_100086280);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

  return result;
}

void *sub_10006B2D4()
{
  v1 = v0;
  sub_100001D04(&qword_1000A5C00, &unk_100086290);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

Swift::Int sub_10006B42C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001D04(&qword_1000A5BF0, &unk_100086280);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_10006B664(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001D04(&qword_1000A5C00, &unk_100086290);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v19 = *v17;
      v18 = v17[1];
      Hasher.init(_seed:)();
      if (v18)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
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

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_10006B8B8(uint64_t a1)
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

      sub_10006A688(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10006B950()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006B99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10006B9B4(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = sub_10006A4B8(v5, v3, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
  return result;
}

uint64_t sub_10006BA2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100001D04(&qword_1000A5798, &qword_1000855C8);
  sub_10006BAD8();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10006A7D8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10006BAD8()
{
  result = qword_1000A5BF8;
  if (!qword_1000A5BF8)
  {
    sub_100018FD0(&qword_1000A5798, &qword_1000855C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BF8);
  }

  return result;
}

uint64_t sub_10006BB64(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 112;
    }

    else
    {
      v2 = 99;
    }

    v3 = 0xE100000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xE100000000000000;
    v2 = 101;
  }

  else
  {
    if (a1 == 3)
    {
      v2 = 30821;
    }

    else
    {
      v2 = 24929;
    }

    v3 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = 112;
    }

    else
    {
      v5 = 99;
    }

    v4 = 0xE100000000000000;
    if (v2 != v5)
    {
      goto LABEL_27;
    }
  }

  else if (a2 == 2)
  {
    v4 = 0xE100000000000000;
    if (v2 != 101)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v4 = 0xE200000000000000;
    if (a2 == 3)
    {
      if (v2 != 30821)
      {
        goto LABEL_27;
      }
    }

    else if (v2 != 24929)
    {
LABEL_27:
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_28;
    }
  }

  if (v3 != v4)
  {
    goto LABEL_27;
  }

  v6 = 1;
LABEL_28:

  return v6 & 1;
}

uint64_t sub_10006BC94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEB00000000726567;
  v5 = 0x656C756465686373;
  v6 = 0xE900000000000072;
  if (a1 != 4)
  {
    v5 = 6581861;
    v6 = 0xE300000000000000;
  }

  if (a1 == 3)
  {
    v5 = 0x616E614D68737570;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0xD000000000000011;
  v8 = 0x8000000100086B60;
  if (a1 != 1)
  {
    v7 = 0x6573616261746164;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x6E69676562;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEB00000000726567;
      if (v9 != 0x616E614D68737570)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE900000000000072;
      if (v9 != 0x656C756465686373)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE300000000000000;
      if (v9 != 6581861)
      {
LABEL_35:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0x8000000100086B60;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x6573616261746164)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x6E69676562)
    {
      goto LABEL_35;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_35;
  }

  v12 = 1;
LABEL_36:

  return v12 & 1;
}

Swift::Int sub_10006BE7C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10006BF88(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10006C0A4(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10006C1A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006C2EC(*a1);
  *a2 = result;
  return result;
}

void sub_10006C1D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6E69676562;
  v5 = 0xEB00000000726567;
  v6 = 0x616E614D68737570;
  v7 = 0xE900000000000072;
  v8 = 0x656C756465686373;
  if (v2 != 4)
  {
    v8 = 6581861;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x8000000100086B60;
  v10 = 0xD000000000000011;
  if (v2 != 1)
  {
    v10 = 0x6573616261746164;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_10006C298()
{
  result = qword_1000A5C08;
  if (!qword_1000A5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5C08);
  }

  return result;
}

unint64_t sub_10006C2EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10009E370, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10006C348()
{
  v1 = OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey;
  v2 = sub_100001D04(&qword_1000A5680, &qword_100084000);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for KillSwitchManager(uint64_t a1)
{
  result = qword_1000A5C48;
  if (!qword_1000A5C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C454(uint64_t a1)
{
  sub_10006C4F0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10006C4F0()
{
  if (!qword_1000A5038)
  {
    v0 = type metadata accessor for PreferenceKey();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5038);
    }
  }
}

uint64_t sub_10006C540()
{
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  return v1 & 1;
}

double sub_10006C5C4(uint64_t a1)
{
  v2 = sub_100001D04(&qword_1000A4F38, &unk_100086430);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v21 - v5;
  v7 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for Bag();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (jet_debug_tooling_os_variant_has_internal_content()())
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.001;
  }

  sub_100002758(a1, v10, &unk_1000A56A0, &unk_100083E10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000DCA0(v10, &unk_1000A56A0, &unk_100083E10);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    __chkstk_darwin(v18, v19);
    *&v21[-2] = v16;
    Bag.Value.current(or:)();
    (*(v3 + 8))(v6, v2);
    (*(v12 + 8))(v15, v11);
    return *&v21[1];
  }

  return v16;
}

double sub_10006C8A8@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double sub_10006C8B4(uint64_t a1)
{
  v2 = sub_100001D04(&qword_1000A4F38, &unk_100086430);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v21 - v5;
  v7 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for Bag();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (jet_debug_tooling_os_variant_has_internal_content()())
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.001;
  }

  sub_100002758(a1, v10, &unk_1000A56A0, &unk_100083E10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000DCA0(v10, &unk_1000A56A0, &unk_100083E10);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    __chkstk_darwin(v18, v19);
    *&v21[-2] = v16;
    Bag.Value.current(or:)();
    (*(v3 + 8))(v6, v2);
    (*(v12 + 8))(v15, v11);
    return *&v21[1];
  }

  return v16;
}

uint64_t sub_10006CB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a1;
  v36 = a2;
  v4 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v33 - v6;
  v34 = type metadata accessor for Date();
  v8 = *(v34 - 8);
  __chkstk_darwin(v34, v9);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001D04(&qword_1000A4FA8, &unk_100083FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100086420;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  strcpy((inited + 48), "assetRequest");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "eventVersion");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = 1;
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0x4449656C646E7562;
  *(inited + 136) = 0xE800000000000000;
  v12 = v2[1];
  *(inited + 144) = *v2;
  *(inited + 152) = v12;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x44496567617375;
  *(inited + 184) = 0xE700000000000000;
  v13 = v2[3];
  *(inited + 192) = v3[2];
  *(inited + 200) = v13;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x4C52557465737361;
  *(inited + 232) = 0xE800000000000000;
  v14 = v3[5];
  *(inited + 240) = v3[4];
  *(inited + 248) = v14;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 0x6165526863746566;
  *(inited + 280) = 0xEB000000006E6F73;
  v15 = v3[11];
  *(inited + 288) = v3[10];
  *(inited + 296) = v15;
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0x7365636375537369;
  *(inited + 328) = 0xE900000000000073;
  *(inited + 336) = *(v3 + 96);
  *(inited + 360) = &type metadata for Bool;
  *(inited + 368) = 0x74706D65747461;
  *(inited + 376) = 0xE700000000000000;
  v16 = v3[13];
  *(inited + 408) = &type metadata for Int;
  *(inited + 384) = v16;

  v17 = sub_100002248(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A4E48, &unk_100086440);
  swift_arrayDestroy();
  v18 = v3[7];
  if (v18)
  {
    v19 = v3[6];
    v40 = &type metadata for String;
    *&v39 = v19;
    *(&v39 + 1) = v18;
    sub_100002698(&v39, v38);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v17;
    sub_10006A1F0(v38, 0x7265567465737361, 0xEC0000006E6F6973, isUniquelyReferenced_nonNull_native);
    v17 = v37;
  }

  v21 = v3[9];
  if (v21)
  {
    v22 = v3[8];
    v40 = &type metadata for String;
    *&v39 = v22;
    *(&v39 + 1) = v21;
    sub_100002698(&v39, v38);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v17;
    sub_10006A1F0(v38, 0x756F537465737361, 0xEB00000000656372, v23);
    v17 = v37;
  }

  v24 = type metadata accessor for AssetRequestMetricsEvent(0);
  sub_100002758(v3 + *(v24 + 48), v7, &qword_1000A56E0, &unk_100083BE0);
  v25 = v34;
  if ((*(v8 + 48))(v7, 1, v34) == 1)
  {
    sub_10000DCA0(v7, &qword_1000A56E0, &unk_100083BE0);
  }

  else
  {
    v26 = v33;
    (*(v8 + 32))(v33, v7, v25);
    v27 = static TimeConversion.amsServerTime(from:)();
    v40 = sub_10006D4B8();
    *&v39 = v27;
    sub_100002698(&v39, v38);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v17;
    sub_10006A1F0(v38, 0x73616364616F7262, 0xED0000656D695474, v28);
    (*(v8 + 8))(v26, v25);
    v17 = v37;
  }

  v29 = v3 + *(v24 + 52);
  if ((v29[8] & 1) == 0)
  {
    v30 = *v29;
    v40 = &type metadata for Int;
    *&v39 = v30;
    sub_100002698(&v39, v38);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v17;
    sub_10006A1F0(v38, 0x797469726F697270, 0xE800000000000000, v31);
  }

  sub_10006FB60(v35);
  return MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)();
}

void sub_10006D0F8(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v14 - v9;
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 56))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 72))
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
    if (*(v1 + 72))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 96));
  Hasher._combine(_:)(*(v1 + 104));
  v11 = type metadata accessor for AssetRequestMetricsEvent(0);
  sub_100002758(v1 + *(v11 + 48), v10, &qword_1000A56E0, &unk_100083BE0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    sub_10006DD14(&qword_1000A5DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  v12 = v1 + *(v11 + 52);
  if (*(v12 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v13 = *v12;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v13);
  }
}

Swift::Int sub_10006D3E8()
{
  Hasher.init(_seed:)();
  sub_10006D0F8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10006D42C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10006D0F8(v2);
  return Hasher._finalize()();
}

uint64_t type metadata accessor for AssetRequestMetricsEvent(uint64_t a1)
{
  result = qword_1000A5D38;
  if (!qword_1000A5D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10006D4B8()
{
  result = qword_1000A5CD8;
  if (!qword_1000A5CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A5CD8);
  }

  return result;
}

uint64_t sub_10006D518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006D5E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10006D698(uint64_t a1)
{
  sub_10006D784(319, &unk_1000A52B8, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_10001CB4C(319);
    if (v2 <= 0x3F)
    {
      sub_10006D784(319, &unk_1000A5D48, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006D784(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10006D818(uint64_t a1)
{
  result = sub_10006DD14(&qword_1000A5DA0, type metadata accessor for AssetRequestMetricsEvent, &unk_100086494);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_10006D870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v32 - v11;
  v13 = sub_100001D04(&qword_1000A5DB0, &unk_1000864F0);
  __chkstk_darwin(v13, v14);
  v16 = &v32 - v15;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 56);
  v18 = *(a2 + 56);
  if (v17)
  {
    if (!v18 || (*(a1 + 48) != *(a2 + 48) || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a1 + 72);
  v20 = *(a2 + 72);
  if (v19)
  {
    if (!v20 || (*(a1 + 64) != *(a2 + 64) || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if ((*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  v33 = type metadata accessor for AssetRequestMetricsEvent(0);
  v21 = *(v33 + 48);
  v22 = *(v13 + 48);
  sub_100002758(a1 + v21, v16, &qword_1000A56E0, &unk_100083BE0);
  sub_100002758(a2 + v21, &v16[v22], &qword_1000A56E0, &unk_100083BE0);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_10000DCA0(v16, &qword_1000A56E0, &unk_100083BE0);
      goto LABEL_36;
    }

LABEL_33:
    sub_10000DCA0(v16, &qword_1000A5DB0, &unk_1000864F0);
    return 0;
  }

  sub_100002758(v16, v12, &qword_1000A56E0, &unk_100083BE0);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_33;
  }

  (*(v5 + 32))(v8, &v16[v22], v4);
  sub_10006DD14(&qword_1000A5DB8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  sub_10000DCA0(v16, &qword_1000A56E0, &unk_100083BE0);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v27 = *(v33 + 52);
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 8);
  if ((v29 & 1) == 0)
  {
    if (*v28 != *v30)
    {
      v31 = 1;
    }

    return (v31 & 1) == 0;
  }

  return (v31 & 1) != 0;
}

uint64_t sub_10006DD14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006DD60(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *sub_10006DE58()
{
  if (qword_1000A4D60 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

int *sub_10006DEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v6 = type metadata accessor for Bag.Profile();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Bag();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 16);
  v27 = a1;
  v16(v15, a1, v11);
  v16(a4, v15, v11);
  Bag.profile.getter();
  Bag.Profile.name.getter();
  (*(v7 + 8))(v10, v6);
  v17 = Bag.amsBag.getter();
  v18 = objc_allocWithZone(AMSMetrics);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v18 initWithContainerID:v19 bag:v17];

  swift_unknownObjectRelease();
  if (v20)
  {
    sub_100001D04(&qword_1000A5DE8, &unk_100086510);
    v30 = v20;
    v21 = SendableWrapper.__allocating_init(_:)();
    v22 = *(v12 + 8);
    v22(v27, v11);
    v22(v15, v11);
  }

  else
  {
    v23 = *(v12 + 8);
    v23(v27, v11);
    v23(v15, v11);
    v21 = 0;
  }

  result = type metadata accessor for DaemonMetricsEventRecorder(0);
  *&a4[result[5]] = v21;
  v25 = &a4[result[6]];
  v26 = v29;
  *v25 = v28;
  v25[1] = v26;
  *&a4[result[7]] = &_swiftEmptySetSingleton;
  return result;
}

uint64_t type metadata accessor for DaemonMetricsEventRecorder(uint64_t a1)
{
  result = qword_1000A5E48;
  if (!qword_1000A5E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006E1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10006E2B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Bag();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10006E374(uint64_t a1)
{
  type metadata accessor for Bag();
  if (v1 <= 0x3F)
  {
    sub_10006E418(319);
    if (v2 <= 0x3F)
    {
      sub_10006E47C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006E418(uint64_t a1)
{
  if (!qword_1000A5E58)
  {
    sub_100018FD0(&qword_1000A5DE8, &unk_100086510);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A5E58);
    }
  }
}

void sub_10006E47C()
{
  if (!qword_1000A5E60)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5E60);
    }
  }
}

void sub_10006E4D4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  if ((LintedMetricsEvent.isEmpty.getter() & 1) == 0)
  {
    if (!a5)
    {
      type metadata accessor for DaemonMetricsEventRecorder(0);
    }

    v8 = objc_allocWithZone(AMSMetricsEvent);

    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 initWithTopic:v9];

    v11 = *(a2 + *(type metadata accessor for DaemonMetricsEventRecorder(0) + 28));
    v12 = [v10 topic];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    LOBYTE(v11) = sub_10006DD60(v13, v15, v11);

    if (v11)
    {
      [v10 setAnonymous:1];
    }

    LintedMetricsEvent.fields.getter();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v10 addPropertiesWithDictionary:isa];

    [v7 enqueueEvent:v10];
  }
}

id sub_10006E674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (LintedMetricsEvent.isEmpty.getter())
  {
    return 0;
  }

  if (!a3)
  {
    type metadata accessor for DaemonMetricsEventRecorder(0);
  }

  v6 = objc_allocWithZone(AMSMetricsEvent);

  v7 = String._bridgeToObjectiveC()();

  v5 = [v6 initWithTopic:v7];

  v8 = *(v3 + *(type metadata accessor for DaemonMetricsEventRecorder(0) + 28));
  v9 = [v5 topic];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  LOBYTE(v8) = sub_10006DD60(v10, v12, v8);

  if (v8)
  {
    [v5 setAnonymous:1];
  }

  LintedMetricsEvent.fields.getter();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 addPropertiesWithDictionary:isa];

  return v5;
}

void sub_10006E7F4(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = sub_10006E674(a2, a3, a4);
  if (v7)
  {
    v8 = v7;
    sub_100001D04(&qword_1000A5EA0, &qword_100086580);
    v9 = Promise.__allocating_init()();
    sub_100001D04(&qword_1000A5EA8, &qword_100086588);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100086500;
    *(v10 + 32) = v8;
    sub_100040154(0, &qword_1000A5EB0, AMSMetricsEvent_ptr);
    v11 = v8;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13 = [v6 promiseForEnqueueingEvents:isa];

    v20 = sub_10006F6D8;
    v21 = v9;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_100081260;
    v19 = &unk_10009FF80;
    v14 = _Block_copy(&v16);

    [v13 addSuccessBlock:v14];
    _Block_release(v14);
    v20 = sub_10006F6E0;
    v21 = v9;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_10006EDD8;
    v19 = &unk_10009FFA8;
    v15 = _Block_copy(&v16);

    [v13 addErrorBlock:v15];

    _Block_release(v15);
  }

  else
  {
    sub_100001D04(&qword_1000A5EA0, &qword_100086580);
    v9 = Promise.__allocating_init(value:)();
  }

  *a5 = v9;
}

uint64_t sub_10006EA60()
{
  if (qword_1000A4DD8 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A5DC0, qword_1000A5DD8);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  return Promise.resolve(_:)();
}

uint64_t sub_10006EBA8(uint64_t a1)
{
  v1 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v1 - 8, v2);
  if (qword_1000A4DD8 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A5DC0, qword_1000A5DD8);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x800000010008A450;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v8[3] = v7;
  v4 = sub_1000061A4(v8);
  (*(*(v7 - 8) + 16))(v4);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v8);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  return Promise.reject(_:)();
}

void sub_10006EDE0(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_100001D04(&qword_1000A5E98, &qword_100086578);
  v4 = Promise.__allocating_init()();
  v5 = [v3 flush];
  v12 = sub_10006F690;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10006F1B8;
  v11 = &unk_10009FF30;
  v6 = _Block_copy(&v8);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v12 = sub_10006F6B0;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10006EDD8;
  v11 = &unk_10009FF58;
  v7 = _Block_copy(&v8);

  [v5 addErrorBlock:v7];

  _Block_release(v7);
  *a2 = v4;
}

uint64_t sub_10006EF90(void *a1)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v2 - 8, v3);
  if (qword_1000A4DD8 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A5DC0, qword_1000A5DD8);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0x2064656873756C46;
  v4._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v8[3] = sub_100040154(0, &qword_1000A5CD8, NSNumber_ptr);
  v8[0] = a1;
  v5 = a1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v8);
  v6._countAndFlagsBits = 0x7363697274656D20;
  v6._object = 0xEF73746E65766520;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  v8[0] = [v5 integerValue];
  return Promise.resolve(_:)();
}

void sub_10006F1C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10006F22C(uint64_t a1)
{
  v1 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v1 - 8, v2);
  if (qword_1000A4DD8 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A5DC0, qword_1000A5DD8);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x800000010008A420;
  v3._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  swift_getErrorValue();
  v8[3] = v7;
  v4 = sub_1000061A4(v8);
  (*(*(v7 - 8) + 16))(v4);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v8);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  return Promise.reject(_:)();
}

uint64_t sub_10006F45C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *(a4 + 20)))
  {
    __chkstk_darwin(result, a2);

    SendableWrapper.withValue<A>(_:)();
  }

  return result;
}

uint64_t sub_10006F504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *(a4 + 20)))
  {
    __chkstk_darwin(a1, a2);

    sub_100001D04(&qword_1000A5EA0, &qword_100086580);
    SendableWrapper.withValue<A>(_:)();

    return v6;
  }

  else
  {
    sub_100001D04(&qword_1000A5EA0, &qword_100086580);
    return Promise.__allocating_init(value:)();
  }
}

uint64_t sub_10006F5E0(uint64_t a1)
{
  if (*(v1 + *(a1 + 20)))
  {

    sub_100001D04(&qword_1000A5E98, &qword_100086578);
    SendableWrapper.withValue<A>(_:)();

    return v3;
  }

  else
  {
    sub_100001D04(&qword_1000A5E98, &qword_100086578);
    return Promise.__allocating_init(value:)();
  }
}

uint64_t sub_10006F698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006F720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006F768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006F7C0(uint64_t a1)
{

  MKBDeviceUnlockedSinceBoot();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10006A340(isa, 7693922, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  return a1;
}

uint64_t sub_10006F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000DAF8;

  return MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(a1, a2, a3, a4);
}

uint64_t sub_10006F91C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MetricsFieldsProviderCategory.timeSensitive(_:);
  v3 = type metadata accessor for MetricsFieldsProviderCategory();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10006F9A8(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = v15 - v9;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  Date.init(timeIntervalSince1970:)();
  v11 = static TimeConversion.amsServerTime(from:)();
  v15[3] = sub_10006D4B8();
  v15[0] = v11;
  sub_100006154(a1, *(a1 + 24));
  v12 = v11;
  dispatch thunk of MetricsFieldsBuilder.addValue(_:forField:)();

  v13 = *(v3 + 8);
  v13(v7, v2);
  v13(v10, v2);
  return sub_100001D4C(v15);
}

unint64_t sub_10006FB60(uint64_t a1)
{
  v2 = 0xD00000000000001ELL;
  v3 = sub_100001D04(&unk_1000A56F0, &qword_1000854F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v21 - v6;
  v8 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for Bag();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000124C8(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100012538(v11);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v17 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    __chkstk_darwin(v18, v19);
    *(&v21 - 2) = 0xD00000000000001ELL;
    *(&v21 - 1) = 0x800000010008A4A0;
    Bag.Value.current(or:)();
    (*(v4 + 8))(v7, v3);
    (*(v13 + 8))(v16, v12);
    return v21;
  }

  return v2;
}

uint64_t sub_10006FE1C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_10006FE34(uint64_t a1, uint64_t a2)
{
  v3[66] = v2;
  v3[65] = a2;
  v3[64] = a1;
  v4 = type metadata accessor for Bag();
  v3[67] = v4;
  v3[68] = *(v4 - 8);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v5 = type metadata accessor for MetricsPipeline.Configuration();
  v3[71] = v5;
  v3[72] = *(v5 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v6 = type metadata accessor for MetricsFieldExclusionRequest();
  v3[75] = v6;
  v3[76] = *(v6 - 8);
  v3[77] = swift_task_alloc();
  v7 = type metadata accessor for MetricsFieldsAggregator();
  v3[78] = v7;
  v3[79] = *(v7 - 8);
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v8 = type metadata accessor for JSONObject();
  v3[89] = v8;
  v3[90] = *(v8 - 8);
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v9 = sub_100001D04(&qword_1000A4F28, &qword_100083DF8);
  v3[93] = v9;
  v3[94] = *(v9 - 8);
  v3[95] = swift_task_alloc();
  sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v3[96] = swift_task_alloc();
  sub_100001D04(&qword_1000A5FC8, &qword_100086728);
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();

  return _swift_task_switch(sub_1000701D4, v2, 0);
}

uint64_t sub_1000701D4()
{
  v1 = v0[98];
  v2 = v0[66];
  v3 = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_cachedPipeline;
  v0[99] = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_cachedPipeline;
  swift_beginAccess();
  sub_100071308(v2 + v3, v1);
  v4 = type metadata accessor for MetricsPipeline();
  v0[100] = v4;
  v5 = *(v4 - 8);
  v0[101] = v5;
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_10000DCA0(v0[98], &qword_1000A5FC8, &qword_100086728);
    if (qword_1000A4D60 != -1)
    {
      swift_once();
    }

    v6 = v0[96];
    v7 = v0[68];
    v8 = v0[67];
    v9 = v0[65];
    TaskLocal.get()();
    sub_100001CC0(v0 + 2, v0[5]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 2);
    v10 = *(v7 + 16);
    v0[102] = v10;
    v0[103] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v6, v9, v8);
    (*(v7 + 56))(v6, 0, 1, v8);
    v0[104] = sub_10006FB60(v6);
    v0[105] = v11;
    sub_10000DCA0(v6, &unk_1000A56A0, &unk_100083E10);
    v12 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v13 = swift_task_alloc();
    v0[106] = v13;
    *v13 = v0;
    v13[1] = sub_1000706A0;
    v14 = v0[93];

    return Bag.Value.current(or:)(v0 + 63, sub_100071108, 0, v14);
  }

  else
  {
    (*(v5 + 32))(v0[64], v0[98], v4);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1000706A0()
{
  v1 = *(*v0 + 760);
  v2 = *(*v0 + 752);
  v3 = *(*v0 + 744);
  v4 = *(*v0 + 528);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10007080C, v4, 0);
}

uint64_t sub_10007080C()
{
  v39 = v0[105];
  v19 = v0[104];
  v25 = v0[102];
  v34 = v0[100];
  v35 = v0[99];
  v32 = v0[101];
  v33 = v0[97];
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v21 = v0[88];
  v18 = v0[87];
  v16 = v0[85];
  v17 = v0[86];
  v14 = v0[83];
  v15 = v0[84];
  v38 = v0[82];
  v13 = v0[81];
  v5 = v0[80];
  v6 = v0[77];
  v40 = v0[76];
  v41 = v0[79];
  v36 = v0[75];
  v37 = v0[78];
  v27 = v0[73];
  v28 = v0[72];
  v30 = v0[71];
  v23 = v0[70];
  v24 = v0[69];
  v22 = v0[67];
  v31 = v0[66];
  v20 = v0[65];
  v29 = v0[64];
  sub_100001D04(&qword_1000A4F40, &unk_100083E20);
  v26 = v1;
  JSONObject.init(wrapping:)();
  sub_100001D04(&qword_1000A5FD0, &unk_100086730);
  (*(v3 + 16))(v2, v1, v4);
  v0[10] = type metadata accessor for MetricsEventLinterBagConfiguration();
  v0[11] = &protocol witness table for MetricsEventLinterBagConfiguration;
  sub_1000061A4(v0 + 7);

  MetricsEventLinterBagConfiguration.init(_:)();
  LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:configuration:rules:)();
  MetricsFieldsAggregator.init()();
  v0[15] = type metadata accessor for BaseVersionFieldProvider();
  v0[16] = &protocol witness table for BaseVersionFieldProvider;
  sub_1000061A4(v0 + 12);
  BaseVersionFieldProvider.init(supportedEventTypes:)();
  static MetricsFieldExclusionRequest.baseVersion.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v7 = *(v40 + 8);
  v7(v6, v36);
  v8 = *(v41 + 8);
  v8(v5, v37);
  sub_100001D4C(v0 + 12);
  v0[20] = &type metadata for EventTimeMetricsFieldProvider;
  v0[21] = sub_100071378();
  static MetricsFieldExclusionRequest.eventTime.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v7(v6, v36);
  v8(v13, v37);
  sub_100001D4C(v0 + 17);
  v9 = [objc_opt_self() mainBundle];
  v0[25] = type metadata accessor for AppMetricsFieldProvider();
  v0[26] = &protocol witness table for AppMetricsFieldProvider;
  sub_1000061A4(v0 + 22);
  AppMetricsFieldProvider.init(bundle:)();
  static MetricsFieldExclusionRequest.app.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v7(v6, v36);
  v8(v38, v37);
  sub_100001D4C(v0 + 22);
  default argument 0 of AppVersionFieldProvider.init(bundle:)();
  v0[30] = type metadata accessor for AppVersionFieldProvider();
  v0[31] = &protocol witness table for AppVersionFieldProvider;
  sub_1000061A4(v0 + 27);
  AppVersionFieldProvider.init(bundle:)();
  static MetricsFieldExclusionRequest.appVersion.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v7(v6, v36);
  v8(v14, v37);
  sub_100001D4C(v0 + 27);
  v0[35] = type metadata accessor for SystemInfoMetricsFieldsProvider();
  v0[36] = &protocol witness table for SystemInfoMetricsFieldsProvider;
  sub_1000061A4(v0 + 32);
  SystemInfoMetricsFieldsProvider.init()();
  static MetricsFieldExclusionRequest.systemInfo.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v7(v6, v36);
  v8(v15, v37);
  sub_100001D4C(v0 + 32);
  v0[40] = type metadata accessor for ClientBuildTypeFieldProvider();
  v0[41] = &protocol witness table for ClientBuildTypeFieldProvider;
  sub_1000061A4(v0 + 37);
  ClientBuildTypeFieldProvider.init(supportedEventTypes:)();
  static MetricsFieldExclusionRequest.clientBuildType.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v7(v6, v36);
  v8(v16, v37);
  sub_100001D4C(v0 + 37);
  v0[45] = type metadata accessor for UserAgentFieldProvider();
  v0[46] = &protocol witness table for UserAgentFieldProvider;
  sub_1000061A4(v0 + 42);
  UserAgentFieldProvider.init(supportedEventTypes:)();
  static MetricsFieldExclusionRequest.userAgent.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v7(v6, v36);
  v8(v17, v37);
  sub_100001D4C(v0 + 42);
  v0[50] = type metadata accessor for XPSamplingFieldsProvider();
  v0[51] = &protocol witness table for XPSamplingFieldsProvider;
  sub_1000061A4(v0 + 47);
  XPSamplingFieldsProvider.init(supportedEventTypes:)();
  static MetricsFieldExclusionRequest.sampling.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v7(v6, v36);
  v8(v18, v37);
  sub_100001D4C(v0 + 47);
  v25(v23, v20, v22);
  sub_1000713CC();
  v25(v24, v20, v22);
  v0[55] = type metadata accessor for DaemonMetricsEventRecorder(0);
  v0[56] = sub_100071430();
  v10 = sub_1000061A4(v0 + 52);

  sub_10006DEB8(v24, v19, v39, v10);
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:recorder:)();
  MetricsPipeline.Configuration.withAggregator(_:)();
  (*(v28 + 8))(v27, v30);
  MetricsPipeline.init(from:)();

  v8(v21, v37);
  (*(v3 + 8))(v26, v4);
  (*(v32 + 16))(v33, v29, v34);
  (*(v32 + 56))(v33, 0, 1, v34);
  swift_beginAccess();
  sub_100071488(v33, v31 + v35);
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

unint64_t sub_100071108@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000255C(_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

uint64_t sub_100071138()
{
  sub_10000DCA0(v0 + OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_cachedPipeline, &qword_1000A5FC8, &qword_100086728);
  sub_100001D4C((v0 + OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_bagManager));
  sub_100001D4C((v0 + OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_restrictions));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for MetricsPipelineManager(uint64_t a1)
{
  result = qword_1000A5EF8;
  if (!qword_1000A5EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000711FC(uint64_t a1)
{
  sub_1000712A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000712A4(uint64_t a1)
{
  if (!qword_1000A5F08)
  {
    type metadata accessor for MetricsPipeline();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000A5F08);
    }
  }
}

uint64_t sub_100071308(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A5FC8, &qword_100086728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100071378()
{
  result = qword_1000A5FD8;
  if (!qword_1000A5FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5FD8);
  }

  return result;
}

unint64_t sub_1000713CC()
{
  result = qword_1000A5FE0;
  if (!qword_1000A5FE0)
  {
    sub_100018FD0(&qword_1000A5FD0, &unk_100086730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5FE0);
  }

  return result;
}

unint64_t sub_100071430()
{
  result = qword_1000A5FE8;
  if (!qword_1000A5FE8)
  {
    type metadata accessor for DaemonMetricsEventRecorder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5FE8);
  }

  return result;
}

uint64_t sub_100071488(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A5FC8, &qword_100086728);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007150C()
{
  result = qword_1000A5FF0;
  if (!qword_1000A5FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5FF0);
  }

  return result;
}

double sub_100071560(uint64_t a1)
{
  v2 = sub_100001D04(&qword_1000A4F38, &unk_100086430);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v21 - v5;
  v7 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for Bag();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (jet_debug_tooling_os_variant_has_internal_content()())
  {
    v16 = 0.1;
  }

  else
  {
    v16 = 0.00001;
  }

  sub_1000124C8(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100012538(v10);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    __chkstk_darwin(v18, v19);
    *&v21[-2] = v16;
    Bag.Value.current(or:)();
    (*(v3 + 8))(v6, v2);
    (*(v12 + 8))(v15, v11);
    return *&v21[1];
  }

  return v16;
}

uint64_t sub_100071820(uint64_t a1)
{
  sub_100001D04(&qword_1000A4FA8, &unk_100083FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100086820;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  strcpy((inited + 48), "pushReceived");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "eventVersion");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = 1;
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0x496C656E6E616863;
  *(inited + 136) = 0xE900000000000044;
  v4 = v1[1];
  *(inited + 144) = *v1;
  *(inited + 152) = v4;
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 176), "broadcastTime");
  *(inited + 190) = -4864;
  v5 = type metadata accessor for PushReceivedMetricsEvent(0);

  v6 = static TimeConversion.amsServerTime(from:)();
  v7 = sub_10006D4B8();
  *(inited + 192) = v6;
  *(inited + 216) = v7;
  *(inited + 224) = 0x797469726F697270;
  *(inited + 232) = 0xE800000000000000;
  v8 = *(v1 + *(v5 + 24));
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v8;
  sub_100002248(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A4E48, &unk_100086440);
  swift_arrayDestroy();
  sub_10006FB60(a1);
  return MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)();
}

uint64_t type metadata accessor for PushReceivedMetricsEvent(uint64_t a1)
{
  result = qword_1000A6050;
  if (!qword_1000A6050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100071A68(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_100071FA4(&qword_1000A5DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

void sub_100071B24(uint64_t a1, uint64_t a2)
{
  String.hash(into:)();
  type metadata accessor for Date();
  sub_100071FA4(&qword_1000A5DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
}

Swift::Int sub_100071BCC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_100071FA4(&qword_1000A5DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

uint64_t sub_100071D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100071DDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100071E80(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100071F4C(uint64_t a1)
{
  result = sub_100071FA4(&qword_1000A6098, type metadata accessor for PushReceivedMetricsEvent, &unk_100086874);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100071FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100072000()
{
  result = qword_1000A60A0;
  if (!qword_1000A60A0)
  {
    type metadata accessor for DaemonScheduleTaskRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60A0);
  }

  return result;
}

uint64_t sub_100072058()
{
  v1 = *v0;
  v72[0] = type metadata accessor for OSSignpostError();
  v2 = *(v72[0] - 8);
  __chkstk_darwin(v72[0], v3);
  v94 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  __chkstk_darwin(v5 - 8, v6);
  v96 = v72 - v7;
  v82 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82, v8);
  v79 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90, v10);
  v12 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v84 = *(v87 - 8);
  __chkstk_darwin(v87, v13);
  v83 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v15 - 8, v16);
  v97 = type metadata accessor for OSSignpostID();
  v17 = *(v97 - 8);
  v19 = __chkstk_darwin(v97, v18);
  v91 = v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v21);
  v24 = v72 - v23;
  __chkstk_darwin(v22, v25);
  v27 = v72 - v26;
  if (qword_1000A4DE8 != -1)
  {
    swift_once();
  }

  v98 = v1;
  v95 = v2;
  v28 = type metadata accessor for OSSignposter();
  v29 = sub_100018718(v28, qword_1000A60F0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v86 = v29;
  v30 = OSSignposter.logHandle.getter();
  v31 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v31, v33, "Daemon.run", "", v32, 2u);
  }

  v34 = v97;
  (*(v17 + 16))(v24, v27, v97);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v89 = OSSignpostIntervalState.init(id:isOpen:)();
  v35 = *(v17 + 8);
  v92 = v17 + 8;
  v85 = v35;
  v35(v27, v34);
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  v36 = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v37 = *(type metadata accessor for LogMessage() - 8);
  v38 = *(v37 + 80);
  v39 = (v38 + 32) & ~v38;
  v77 = *(v37 + 72);
  v76 = v38;
  v80 = v36;
  v40 = swift_allocObject();
  v75 = xmmword_1000839C0;
  *(v40 + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v41._countAndFlagsBits = 0x676E697472617453;
  v41._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v41);
  v101 = &type metadata for String;
  strcpy(&aBlock, "jetpackassetd");
  HIWORD(aBlock) = -4864;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(&aBlock, &qword_1000A5630, &unk_100083BF0);
  v42._object = 0x800000010008A610;
  v42._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v42);
  v78 = v39;
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v72[1] = sub_100040154(0, &qword_1000A61F0, OS_dispatch_source_ptr);
  sub_100040154(0, &qword_1000A4F80, OS_dispatch_queue_ptr);
  v43 = static OS_dispatch_queue.main.getter();
  v44 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v102 = sub_1000801C4;
  v103 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v74 = &v100;
  v100 = sub_100081260;
  v101 = &unk_1000A0158;
  v45 = _Block_copy(&aBlock);
  v46 = v83;
  static DispatchQoS.unspecified.getter();
  sub_100073900();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v45);
  v73 = *(v88 + 8);
  v47 = v90;
  v73(v12, v90);
  v84 = *(v84 + 8);
  v48 = v87;
  (v84)(v46, v87);

  v88 = v44;
  OS_dispatch_source.resume()();
  v49 = v79;
  static OS_dispatch_source.MemoryPressureEvent.warning.getter();
  static OS_dispatch_source.makeMemoryPressureSource(eventMask:queue:)();
  (*(v81 + 8))(v49, v82);
  swift_getObjectType();
  v50 = swift_allocObject();
  *(v50 + 16) = v98;
  v102 = sub_1000803D8;
  v103 = v50;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v100 = sub_100081260;
  v101 = &unk_1000A01A8;
  v51 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  sub_100073900();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v51);
  v73(v12, v47);
  (v84)(v46, v48);

  OS_dispatch_source.resume()();
  v52 = type metadata accessor for TaskPriority();
  (*(*(v52 - 8) + 56))(v96, 1, 1, v52);
  v53 = qword_1000A4DC8;
  v54 = v93;

  if (v53 != -1)
  {
    swift_once();
  }

  v55 = qword_1000A6450;
  v56 = sub_1000811A0(&qword_1000A5660, type metadata accessor for DaemonActor, &unk_100086084);
  v57 = swift_allocObject();
  v57[2] = v55;
  v57[3] = v56;
  v58 = v98;
  v57[4] = v54;
  v57[5] = v58;

  sub_100037B80(0, 0, v96, &unk_100086930, v57);

  v59 = OSSignposter.logHandle.getter();
  v60 = v91;
  OSSignpostIntervalState.signpostID.getter();
  v61 = static os_signpost_type_t.end.getter();
  v62 = OS_os_log.signpostsEnabled.getter();
  v64 = v94;
  v63 = v95;
  if (v62)
  {

    checkForErrorAndConsumeState(state:)();

    v65 = v72[0];
    if ((*(v63 + 88))(v64, v72[0]) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v66 = "[Error] Interval already ended";
    }

    else
    {
      (*(v63 + 8))(v64, v65);
      v66 = "";
    }

    v67 = swift_slowAlloc();
    *v67 = 0;
    v68 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, v61, v68, "Daemon.run", v66, v67, 2u);
  }

  v85(v60, v97);
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  *(swift_allocObject() + 16) = v75;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  _CFRunLoopSetPerCalloutAutoreleasepoolEnabled();
  do
  {
    v69 = objc_autoreleasePoolPush();
    v70 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 15.0, 1u);
    objc_autoreleasePoolPop(v69);
  }

  while ((v70 - 1) > 1);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_100072D88()
{
  type metadata accessor for Daemon();
  swift_allocObject();
  result = sub_100072EA4();
  qword_1000A6458 = result;
  return result;
}

NSString sub_100072E6C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000A6460 = result;
  return result;
}

uint64_t sub_100072EA4()
{
  v2 = *v0;
  v36 = v1;
  v37 = v2;
  v3 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v3 - 8, v4);
  v35[1] = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8, v7);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = v35 - v15;
  if (qword_1000A4DE8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for OSSignposter();
  sub_100018718(v17, qword_1000A60F0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v18 = OSSignposter.logHandle.getter();
  v19 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v21, "Daemon.init", "", v20, 2u);
  }

  (*(v9 + 16))(v13, v16, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v22 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v16, v8);
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x696C616974696E49;
  v23._object = 0xED000020676E697ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  v39 = &type metadata for String;
  strcpy(v38, "jetpackassetd");
  v38[7] = -4864;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v38, &qword_1000A5630, &unk_100083BF0);
  v24._countAndFlagsBits = 0x6E6F6D65616420;
  v24._object = 0xE700000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  type metadata accessor for BaseObjectGraph();
  sub_100005834();
  v25 = BaseObjectGraph.__allocating_init(_:)();
  v26 = v40;
  *(v40 + 24) = v25;
  if (qword_1000A4DA0 != -1)
  {
    swift_once();
  }

  v27 = qword_1000A4DC0;

  v28 = v37;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = qword_1000A6448;
  static XPCListener.InitializationOptions.inactive.getter();
  v30 = *(v26 + 24);
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v28;
  type metadata accessor for XPCListener();
  swift_allocObject();

  v32 = v36;
  v33 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  if (v32)
  {
    sub_100080644("Daemon.init", 11, 2, v22, &qword_1000A4DE8, qword_1000A60F0, sub_100072D5C);

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v26 + 16) = v33;
    sub_100080644("Daemon.init", 11, 2, v22, &qword_1000A4DE8, qword_1000A60F0, sub_100072D5C);
  }

  return v26;
}

uint64_t sub_1000734D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v24 = a1;
  v25 = a3;
  v3 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v3 - 8, v4);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001D04(&qword_1000A6230, &qword_100086970);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v20 - v9;
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  v11 = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  v21 = v11;
  v12 = swift_allocObject();
  v20 = xmmword_1000839C0;
  *(v12 + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v13 = v24;
  v27 = v24;
  type metadata accessor for XPCListener.IncomingSessionRequest();

  ClientEntitlementChecker.init(_:)();
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  v14._object = 0x800000010008A860;
  v15 = ClientEntitlementChecker.hasEntitlement(_:)(v14);
  (*(v7 + 8))(v10, v6);
  if (v15)
  {
    sub_100080B28();
    return dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
  }

  else
  {
    sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
    *(swift_allocObject() + 16) = v20;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._countAndFlagsBits = 0xD00000000000001ELL;
    v17._object = 0x800000010008A880;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    v29 = &type metadata for String;
    v27 = 0xD00000000000001FLL;
    v28 = 0x800000010008A860;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v27, &qword_1000A5630, &unk_100083BF0);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v19._countAndFlagsBits = 0xD00000000000003BLL;
    v19._object = 0x800000010008A8A0;
    String.append(_:)(v19);
    v26 = v13;
    _print_unlocked<A, B>(_:_:)();
    dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  }
}

uint64_t sub_100073900()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000811A0(&qword_1000A6218, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001D04(&qword_1000A6220, &qword_100086968);
  sub_100040238(&qword_1000A6228, &qword_1000A6220, &qword_100086968, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000739EC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v0 - 8);
  v22 = v0;
  __chkstk_darwin(v0, v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v19 = *(v4 - 8);
  v20 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.warning(_:)();

  static os_signpost_type_t.event.getter();
  sub_100040154(0, &qword_1000A6210, OS_os_log_ptr);
  v13 = static OS_os_log.default.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v9 + 8))(v12, v8);
  sub_100040154(0, &qword_1000A4F80, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100080534;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100081260;
  aBlock[3] = &unk_1000A01F8;
  v15 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000811A0(&qword_1000A6218, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001D04(&qword_1000A6220, &qword_100086968);
  sub_100040238(&qword_1000A6228, &qword_1000A6220, &qword_100086968, &protocol conformance descriptor for [A]);
  v16 = v22;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v3, v16);
  (*(v19 + 8))(v7, v20);
}

uint64_t sub_100073EB8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100073EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[43] = a4;
  type metadata accessor for LogMessage.StringInterpolation();
  v4[44] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v4[45] = v5;
  v4[46] = *(v5 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  if (qword_1000A4DC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_1000811A0(&qword_1000A5660, type metadata accessor for DaemonActor, &unk_100086084);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[49] = v7;
  v4[50] = v6;

  return _swift_task_switch(sub_100074080, v7, v6);
}

uint64_t sub_100074080()
{
  if (qword_1000A4DE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  sub_100018718(v1, qword_1000A60F0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "Daemon.run.task", "", v4, 2u);
  }

  v6 = *(v0 + 376);
  v7 = *(v0 + 384);
  v8 = *(v0 + 360);
  v9 = *(v0 + 368);
  v10 = *(v0 + 344);

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 408) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v7, v8);
  *(v0 + 300) = 0;
  *(v0 + 296) = 0;
  os_unfair_lock_lock((v0 + 300));
  *(v0 + 296) = 1;
  os_unfair_lock_unlock((v0 + 300));
  *(v0 + 416) = *(v10 + 24);
  v11 = sub_100001D04(&qword_1000A4E78, &qword_100083AC8);
  v12 = swift_task_alloc();
  *(v0 + 424) = v12;
  *v12 = v0;
  v12[1] = sub_1000742B4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v11, v11);
}

uint64_t sub_1000742B4()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = v2[49];
    v4 = v2[50];
    v5 = sub_100075660;
  }

  else
  {
    sub_100001D4C(v2 + 2);
    v3 = v2[49];
    v4 = v2[50];
    v5 = sub_1000743D0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000743D0()
{
  os_unfair_lock_lock((v0 + 300));
  *(v0 + 296) = 4;
  os_unfair_lock_unlock((v0 + 300));
  v1 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v2 = swift_task_alloc();
  *(v0 + 440) = v2;
  *v2 = v0;
  v2[1] = sub_1000744A4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 136, v1, v1);
}