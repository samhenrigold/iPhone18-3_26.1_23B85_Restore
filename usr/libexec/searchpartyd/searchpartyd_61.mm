void *sub_1006C1A0C(void *a1, int a2)
{
  v60 = a2;
  v61 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v61);
  v62 = &v59[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for UUID();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v7 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v59[-v9];
  v11 = type metadata accessor for BeaconProductInfoRecord(0);
  v64 = *(v11 - 8);
  __chkstk_darwin(v11);
  v63 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for LocalFindableAccessoryRecord(0);
  __chkstk_darwin(v13);
  v15 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v16);
  v18 = &v59[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001F280(a1, &v68);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    v19 = type metadata accessor for SharedBeaconRecord;
    v20 = v18;
LABEL_5:
    sub_100721D04(v20, v19);
    v21 = *(v2 + 280);
    goto LABEL_6;
  }

  sub_10001F280(a1, &v68);
  if (swift_dynamicCast())
  {
    v19 = type metadata accessor for LocalFindableAccessoryRecord;
    v20 = v15;
    goto LABEL_5;
  }

  v21 = *(v2 + 280);
  v29 = a1[3];
  v28 = a1[4];
  sub_1000035D0(a1, v29);
  (*(*(*(v28 + 8) + 8) + 32))(v29);
  sub_100AC1584(v7, v10);
  (*(v65 + 8))(v7, v66);
  if ((*(v64 + 48))(v10, 1, v11) != 1)
  {
    v32 = v10;
    v33 = v63;
    sub_10002AB74(v32, v63, type metadata accessor for BeaconProductInfoRecord);
    v34 = sub_1010D7CD4(*&v33[*(v11 + 80)]);
    v35 = sub_10112AFA0(v34);

    sub_1000BC4D4(&qword_10169EFF0, &qword_10139FDA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    v37 = SPBeaconTaskNameLocating;
    *(inited + 32) = SPBeaconTaskNameLocating;
    v38 = v37;
    v39 = sub_10112AFA0(inited);
    swift_setDeallocating();
    sub_100721D04(inited + 32, type metadata accessor for SPBeaconTaskName);
    sub_10039DDA0(v39, v35);
    v67 = v40;
    sub_10001F280(a1, &v68);
    v41 = v62;
    if (swift_dynamicCast())
    {
      sub_100721D04(v41, type metadata accessor for OwnedBeaconRecord);
      v42 = SPBeaconTaskNameBeginLeashing;
      if ((sub_10112C0E4() & 1) == 0)
      {
        sub_100DEF808(&v68, v42);
      }

      v43 = SPBeaconTaskNameEndLeashing;
      if ((sub_10112C0E4() & 1) == 0)
      {
        sub_100DEF808(&v68, v43);
      }

      v44 = SPBeaconTaskNameUnpair;
      if ((sub_10112C0E4() & 1) == 0)
      {
        sub_100DEF808(&v68, v44);
      }

      My = type metadata accessor for Feature.FindMy();
      v69 = My;
      v46 = sub_100003E8C(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
      v70 = v46;
      v47 = sub_1000280DC(&v68);
      v48 = *(*(My - 8) + 104);
      v48(v47, enum case for Feature.FindMy.itemSharing(_:), My);
      v49 = isFeatureEnabled(_:)();
      sub_100007BAC(&v68);
      v50 = SPBeaconTaskNameStartSharing;
      v51 = sub_10112C0E4();
      if (v49)
      {
        if ((v51 & 1) == 0)
        {
          sub_100DEF808(&v68, v50);
        }

        if (v60)
        {
          sub_100DEF808(&v68, SPBeaconTaskNameStopSharing);
        }

        else
        {
        }

        if (qword_101694940 != -1)
        {
          swift_once();
        }

        OS_dispatch_queue.sync<A>(execute:)();
        v53 = v68;
        v69 = My;
        v70 = v46;
        v54 = sub_1000280DC(&v68);
        v48(v54, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
        v55 = isFeatureEnabled(_:)();
        sub_100007BAC(&v68);
        if (v55)
        {
          v56 = sub_101073410(v53);

          if ((v56 & 1) == 0)
          {
            sub_100DEF808(&v68, SPBeaconTaskNameEnableDelegatedShares);
          }
        }

        else
        {
        }
      }

      else
      {
        if (v51)
        {
        }

        v52 = SPBeaconTaskNameStopSharing;
        if (sub_10112C0E4())
        {
        }
      }
    }

    v57 = *(v67 + 16);
    if (v57)
    {
      v26 = sub_1003A8830(*(v67 + 16), 0);
      v58 = sub_1003CC2D0();
      sub_1000128F8(v68);
      if (v58 == v57)
      {
LABEL_38:
        sub_100721D04(v33, type metadata accessor for BeaconProductInfoRecord);
        return v26;
      }

      __break(1u);
    }

    v26 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  sub_10000B3A8(v10, &unk_1016AF8C0, &unk_1013A07A0);
  v30 = a1[3];
  v31 = a1[4];
  sub_1000035D0(a1, v30);
  if ((*(v31 + 104))(v30, v31))
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_6:
  v22 = a1[3];
  v23 = a1[4];
  v24 = sub_1000035D0(a1, v22);
  v25 = sub_1009C5A54(v24, v21, v22, v23);
  v26 = sub_100069D10(v25);

  return v26;
}

uint64_t sub_1006C22E8(void *a1)
{
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2);
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  if (((*(v4 + 144))(v3, v4) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v5 = v9;
  sub_10001F280(a1, &v9);
  v6 = swift_allocObject();
  sub_10000A748(&v9, v6 + 16);
  *(v6 + 56) = v5;

  unsafeFromAsyncTask<A>(_:)();

  return v8;
}

uint64_t sub_1006C2718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for SharedBeaconRecord(0);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_1006C2824, 0, 0);
}

uint64_t sub_1006C2824()
{
  sub_10001F280(v0[8], (v0 + 2));
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    v1 = v0[15];
    v2 = v0[14];
    v3 = v0[8];
    sub_10002AB74(v0[16], v1, type metadata accessor for SharedBeaconRecord);
    v4 = *(v2 + 24);
    v5 = v3[3];
    v6 = v3[4];
    sub_1000035D0(v3, v5);
    (*(*(*(v6 + 8) + 8) + 32))(v5);
    v7 = getuid();
    sub_1000294F0(v7);
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_1006C2AD0;
    v10 = v0[12];
    v9 = v0[13];

    return sub_10068CDC8(v1 + v4, v9, 1, v10);
  }

  else
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177AE40);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "cannot check keys for imported beacon", v15, 2u);
    }

    v16 = v0[7];

    sub_100007BAC(v0 + 2);
    *v16 = 1;

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1006C2AD0(uint64_t a1)
{
  v4 = *v2;
  v4[18] = v1;

  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[11];
  v8 = v4[10];
  if (v1)
  {
    v9 = *(v7 + 8);
    v9(v6, v4[10]);
    v9(v5, v8);
    v10 = sub_1006C2D70;
  }

  else
  {
    v4[19] = a1;
    v11 = *(v7 + 8);
    v11(v6, v8);
    v11(v5, v8);
    v10 = sub_1006C2CA4;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1006C2CA4()
{
  v1 = v0[19];
  v2 = v0[7];
  sub_100721D04(v0[15], type metadata accessor for SharedBeaconRecord);
  v3 = *(v1 + 16);

  *v2 = v3 == 0;
  sub_100007BAC(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1006C2D70()
{
  sub_100721D04(v0[15], type metadata accessor for SharedBeaconRecord);
  sub_100007BAC(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1006C2E60()
{
  v1 = *(v0 + 16);
  v2 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1006C2F08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  v11 = a2[4];
  sub_1000035D0(a2, v10);
  (*(*(*(v11 + 8) + 8) + 32))(v10);
  v12 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier;
  swift_beginAccess();
  v13 = *(a1 + v12);
  if (!*(v13 + 16))
  {
    goto LABEL_5;
  }

  v14 = sub_1000210EC(v9);
  if ((v15 & 1) == 0)
  {

LABEL_5:
    result = (*(v7 + 8))(v9, v6);
    v17 = 0;
    v18 = 0;
    v19 = -1;
    goto LABEL_6;
  }

  v16 = *(v13 + 56) + 24 * v14;
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  sub_1004E39C8(*v16, v18, v19);
  (*(v7 + 8))(v9, v6);

LABEL_6:
  *a3 = v17;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19;
  return result;
}

uint64_t sub_1006C30D0(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v41 = a3;
  v42 = a5;
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v9 - 8);
  v40 = &v38 - v10;
  v11 = type metadata accessor for Date();
  v38 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[3];
  v19 = a2[4];
  sub_1000035D0(a2, v18);
  (*(*(*(v19 + 8) + 8) + 32))(v18);
  v20 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier;
  swift_beginAccess();
  v21 = *(a1 + v20);
  if (!*(v21 + 16))
  {
    goto LABEL_7;
  }

  v22 = sub_1000210EC(v17);
  if ((v23 & 1) == 0)
  {

LABEL_7:
    (*(v15 + 8))(v17, v14);
    goto LABEL_8;
  }

  v24 = *(v21 + 56) + 24 * v22;
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  sub_1004E39C8(*v24, v26, v27);
  (*(v15 + 8))(v17, v14);

  if (v27)
  {

    if (v26)
    {
      *v41 = 3;
      *a4 = v26;
LABEL_9:

      v28 = v42;
      sub_10000B3A8(v42, &qword_1016980D0, &unk_10138F3B0);
      return (*(v15 + 56))(v28, 1, 1, v14);
    }

LABEL_8:
    *v41 = 2;
    *a4 = 0;
    goto LABEL_9;
  }

  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  v30 = v25;
  OS_dispatch_queue.sync<A>(execute:)();
  v31 = v43;
  v32 = [v43 state];
  *v41 = v32;
  v33 = [v31 lastUpdated];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v38 + 40))(v39, v13, v11);
  *a4 = [v31 error];

  v34 = [v31 commandIdentifier];
  if (v34)
  {
    v35 = v40;
    v36 = v34;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = 0;
    v31 = v36;
  }

  else
  {
    v37 = 1;
    v35 = v40;
  }

  sub_1001E61D8(v30, v26, 0);
  (*(v15 + 56))(v35, v37, 1, v14);
  return sub_10002311C(v35, v42, &qword_1016980D0, &unk_10138F3B0);
}

uint64_t sub_1006C3530(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = a1;
  v5 = a3[3];
  v4 = a3[4];
  v6 = sub_1000035D0(a3, v5);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1006C35FC;

  return sub_100A13778(v6, v5, v4);
}

uint64_t sub_1006C35FC(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1006C36FC, 0, 0);
}

uint64_t sub_1006C371C(uint64_t a1, uint64_t a2)
{
  v4 = static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C370;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD000000000000017;
  *(v6 + 80) = 0x800000010135CA10;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "%@: %@", 6, 2, v6);

  sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v12 = SPBeaconTypeDurian;
  *(inited + 32) = SPBeaconTypeDurian;
  v13 = v12;
  v14 = sub_100B11268(inited);
  swift_setDeallocating();
  sub_100721D04(inited + 32, type metadata accessor for SPBeaconType);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  sub_10000AC0C(v14, 0, 0, sub_10071E9CC, v15);
}

uint64_t sub_1006C3960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v42 = a3;
  v43 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v9 = a2;
    v23 = *(a1 + 32);
    v24 = v23 & 0x3F;
    v4 = ((1 << v23) + 63) >> 6;
    v7 = 8 * v4;

    if (v24 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  v4 = &_swiftEmptySetSingleton;
  v46 = &_swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v5 = __CocoaSet.Iterator.next()();
  if (!v5)
  {
LABEL_20:

LABEL_37:
    v9 = v43;
    goto LABEL_38;
  }

  v6 = v5;
  v7 = sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  v8 = v6;
  v9 = 1;
  while (1)
  {
    v44 = v8;
    swift_dynamicCast();
    v10 = [v45 role];
    if (v10)
    {
      break;
    }

LABEL_5:
    v8 = __CocoaSet.Iterator.next()();
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  v11 = v45;
  v12 = *(v4 + 16);
  if (*(v4 + 24) <= v12)
  {
    sub_100DF76BC(v12 + 1);
  }

  v4 = v46;
  v3 = v45;
  v13 = NSObject._rawHashValue(seed:)(v46[5]);
  v14 = (v46 + 7);
  v15 = -1 << *(v46 + 32);
  v16 = v13 & ~v15;
  v17 = v16 >> 6;
  if (((-1 << v16) & ~v46[(v16 >> 6) + 7]) != 0)
  {
    v18 = __clz(__rbit64((-1 << v16) & ~v46[(v16 >> 6) + 7])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *&v14[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    *(*(v4 + 48) + 8 * v18) = v11;
    ++*(v4 + 16);
    goto LABEL_5;
  }

  v19 = 0;
  v20 = (63 - v15) >> 6;
  while (++v17 != v20 || (v19 & 1) == 0)
  {
    v21 = v17 == v20;
    if (v17 == v20)
    {
      v17 = 0;
    }

    v19 |= v21;
    v22 = *&v14[8 * v17];
    if (v22 != -1)
    {
      v18 = __clz(__rbit64(~v22)) + (v17 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_40:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

LABEL_22:
    v39 = &v39;
    v40 = v4;
    __chkstk_darwin(isStackAllocationSafe);
    v26 = &v39 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v7);
    v41 = 0;
    v27 = 0;
    v9 = (v3 + 56);
    v28 = 1 << v3[32];
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v4 = v29 & *(v3 + 7);
    v30 = (v28 + 63) >> 6;
    while (v4)
    {
      v31 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_32:
      v7 = v31 | (v27 << 6);
      v34 = *(*(v3 + 6) + 8 * v7);
      v35 = [v34 role];

      if (v35)
      {

        *&v26[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_36:
          v4 = sub_10060D044(v26, v40, v41, v3);
          goto LABEL_37;
        }
      }
    }

    v32 = v27;
    while (1)
    {
      v27 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v27 >= v30)
      {
        goto LABEL_36;
      }

      v33 = *(v9 + 8 * v27);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v4 = (v33 - 1) & v33;
        goto LABEL_32;
      }
    }
  }

  v38 = swift_slowAlloc();
  v4 = sub_1006EACD0(v38, v4, v3, sub_1006C3D8C);

LABEL_38:
  (v9)(v4);
}

BOOL sub_1006C3D8C(id *a1)
{
  v1 = [*a1 role];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_1006C3DDC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  __chkstk_darwin(v9);
  v11 = (v23 - v10);
  sub_1000D2A70(a1, v23 - v10, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    v23[1] = v12;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v18 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v18, "Could not set role on the beacon. Error - %@", 44, 2, v14);

    (a2)(0);
  }

  else
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Successfully updated beacon with role.", 38, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);

    v22 = sub_10003EB74(a5, *(a4 + 280));
    a2();

    return sub_10000B3A8(v11, &qword_1016A7808, &qword_1013D6750);
  }
}

id sub_1006C4044(uint64_t a1, id a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [a2 name];
  if (v10)
  {

    v11 = (a1 + *(type metadata accessor for BeaconNamingRecord(0) + 32));

    *v11 = a3;
    v11[1] = a4;
  }

  v12 = a5[3];
  v13 = a5[4];
  sub_1000035D0(a5, v12);
  v14 = (*(v13 + 208))([a2 roleId], v12, v13);
  if (v14)
  {
    v15 = v14;
    v16 = [v14 roleId];

    *(a1 + *(type metadata accessor for BeaconNamingRecord(0) + 28)) = v16;
  }

  result = [a2 emoji];
  if (result)
  {
    v18 = result;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = (a1 + *(type metadata accessor for BeaconNamingRecord(0) + 36));

    *v22 = v19;
    v22[1] = v21;
  }

  return result;
}

uint64_t sub_1006C4188(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v96 = a4;
  v97 = a5;
  v95 = a2;
  v7 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v7 - 8);
  v90 = &v76 - v8;
  v93 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v89 = &v76 - v9;
  v83 = type metadata accessor for URL();
  v86 = *(v83 - 8);
  v10 = __chkstk_darwin(v83);
  v85 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v84 = &v76 - v13;
  __chkstk_darwin(v12);
  v15 = &v76 - v14;
  v16 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v16 - 8);
  v88 = &v76 - v17;
  v18 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v18 - 8);
  v20 = &v76 - v19;
  v21 = type metadata accessor for OwnedBeaconRecord(0);
  v94 = *(v21 - 8);
  v22 = *(v94 + 64);
  v23 = __chkstk_darwin(v21);
  v87 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v92 = &v76 - v24;
  v25 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  __chkstk_darwin(v25);
  v27 = (&v76 - v26);
  sub_1000D2A70(a1, &v76 - v26, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    v29 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    v100[0] = v28;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = sub_100008C00();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v34 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v34, "Could not update beacon name. Error - %@", 40, 2, v30);

    v96(0);
  }

  else
  {
    v36 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v75 = v36;
      swift_once();
      v36 = v75;
    }

    os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, qword_10177C380, "Successfully updated beacon name record", 39, 2, _swiftEmptyArrayStorage);
    v37 = *(v95 + 280);
    sub_100A8306C(0xDu);
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();

    PassthroughSubject.send(_:)();

    sub_100025020(a3, &v98);
    if (v99)
    {
      sub_10000A748(&v98, v100);
      sub_10001F280(v100, &v98);
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v38 = swift_dynamicCast();
      v39 = *(v94 + 56);
      if (v38)
      {
        v78 = v22;
        v81 = v27;
        v82 = 0;
        v39(v20, 0, 1, v21);
        v40 = v92;
        sub_10002AB74(v20, v92, type metadata accessor for OwnedBeaconRecord);
        sub_100A3AD6C(v40);
        v95 = v40 + *(v21 + 20);
        v41 = *(v37 + 168);
        if (qword_101694EB8 != -1)
        {
          swift_once();
        }

        v42 = v83;
        v43 = sub_1000076D4(v83, qword_10177C0D8);
        v44 = v86;
        v45 = *(v86 + 16);
        v46 = v15;
        v80 = v15;
        v45(v15, v43, v42);
        v47 = v84;
        v45(v84, v46, v42);
        v48 = *(v93 + 40);
        v79 = v48;
        v49 = v93;
        v77 = type metadata accessor for DirectorySequence();
        v50 = *(*(v77 - 8) + 56);
        v51 = &v89[v48];
        v52 = v89;
        v50(v51, 1, 1, v77);
        v45(v52, v47, v42);
        *(v52 + *(v49 + 36)) = v41;
        v45(v85, v47, v42);

        v53 = v90;
        DirectorySequence.init(at:includingPropertiesForKeys:options:)();
        v54 = *(v44 + 8);
        v54(v47, v42);
        v54(v80, v42);
        v50(v53, 0, 1, v77);
        sub_10002311C(v53, v52 + v79, &qword_1016A5970, &unk_1013B3470);
        v55 = *(v91 + 56);
        v56 = v88;
        v57 = v93;
        v55(v88, 1, 1, v93);
        sub_10000B3A8(v56, &qword_1016A7838, &unk_1013EB250);
        sub_1000D2AD8(v52, v56, &qword_1016A7828, &unk_1013D7340);
        v58 = (v55)(v56, 0, 1, v57);
        __chkstk_darwin(v58);
        v59 = v95;
        *(&v76 - 2) = 0;
        *(&v76 - 1) = v59;
        sub_100E6B40C(sub_10071F7A0, (&v76 - 4));
        v61 = v60;
        type metadata accessor for Transaction();
        v62 = v92;
        v63 = v87;
        sub_100721C9C(v92, v87, type metadata accessor for OwnedBeaconRecord);
        v64 = (*(v94 + 80) + 24) & ~*(v94 + 80);
        v65 = (v78 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
        v66 = swift_allocObject();
        *(v66 + 16) = v61;
        sub_10002AB74(v63, v66 + v64, type metadata accessor for OwnedBeaconRecord);
        v67 = (v66 + v65);
        v68 = v97;
        *v67 = v96;
        v67[1] = v68;

        static Transaction.asyncTask(name:block:)();

        sub_100007BAC(v100);
        sub_100721D04(v62, type metadata accessor for OwnedBeaconRecord);
        v27 = v81;
      }

      else
      {
        v39(v20, 1, 1, v21);
        sub_10000B3A8(v20, &unk_1016A9A20, &qword_10138B280);
        v96(1);
        sub_100007BAC(v100);
      }
    }

    else
    {
      sub_10000B3A8(&v98, &qword_101696920, &unk_10138B200);
      v69 = static os_log_type_t.error.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_101385D80;
      v71 = UUID.uuidString.getter();
      v73 = v72;
      *(v70 + 56) = &type metadata for String;
      *(v70 + 64) = sub_100008C00();
      *(v70 + 32) = v71;
      *(v70 + 40) = v73;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v74 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v74, "Could not find just updated record: %@", 38, 2, v70);

      v96(0);
    }

    return sub_10000B3A8(v27, &qword_1016A7808, &qword_1013D6750);
  }
}

uint64_t sub_1006C4D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for OwnedBeaconRecord(0);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[14] = v6;
  *v6 = v4;
  v6[1] = sub_1006C4E58;

  return daemon.getter();
}

uint64_t sub_1006C4E58(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[15] = a1;

  v3 = swift_task_alloc();
  v2[16] = v3;
  v4 = type metadata accessor for Daemon();
  v2[17] = v4;
  v5 = type metadata accessor for BeaconSharingService(0);
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[18] = v6;
  v7 = sub_100003E8C(&unk_101696950, type metadata accessor for BeaconSharingService, &unk_101390650);
  *v3 = v9;
  v3[1] = sub_1006C5038;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1006C5038(uint64_t a1)
{
  *(*v2 + 152) = a1;

  if (v1)
  {

    v3 = sub_1006C5188;
  }

  else
  {

    v3 = sub_1006C52CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006C5188()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconSharingService!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1006C52CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 160) = v2;
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = *(v3 + 80);
    *(v0 + 248) = v4;
    *(v0 + 168) = *(v3 + 72);
    *(v0 + 176) = 0;
    sub_100721C9C(v1 + ((v4 + 32) & ~v4), *(v0 + 104), type metadata accessor for OwnerSharingCircle);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_1006C5420;
    v6 = *(v0 + 104);

    return sub_1001942F0(v6, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    v8[1] = sub_1006C5534;

    return daemon.getter();
  }
}

uint64_t sub_1006C5420()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1006C5DC0;
  }

  else
  {
    v2 = sub_1006C588C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006C5534(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 208) = a1;

  v5 = swift_task_alloc();
  *(v3 + 216) = v5;
  v6 = type metadata accessor for CircleTrustService();
  v7 = sub_100003E8C(&unk_101698CE0, type metadata accessor for CircleTrustService, &unk_1013E49D8);
  *v5 = v4;
  v5[1] = sub_1006C56E8;
  v8 = *(v2 + 144);
  v9 = *(v2 + 136);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1006C56E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 224) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1006C6248, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 232) = v5;
    *v5 = v4;
    v5[1] = sub_1006C59FC;
    v6 = *(v3 + 16);

    return sub_100D276D8(v6);
  }
}

uint64_t sub_1006C588C()
{
  sub_100721D04(*(v0 + 104), type metadata accessor for OwnerSharingCircle);
  v1 = *(v0 + 176) + 1;
  if (v1 == *(v0 + 160))
  {
    v2 = swift_task_alloc();
    *(v0 + 200) = v2;
    *v2 = v0;
    v2[1] = sub_1006C5534;

    return daemon.getter();
  }

  else
  {
    *(v0 + 176) = v1;
    sub_100721C9C(*(v0 + 16) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 168) * v1, *(v0 + 104), type metadata accessor for OwnerSharingCircle);
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = sub_1006C5420;
    v4 = *(v0 + 104);

    return sub_1001942F0(v4, 0);
  }
}

uint64_t sub_1006C59FC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1006C64F0;
  }

  else
  {
    v2 = sub_1006C5B10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006C5B10()
{
  v17 = v0;

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7F8);
  sub_100721C9C(v2, v1, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100721D04(v7, type metadata accessor for OwnedBeaconRecord);
    v13 = sub_1000136BC(v10, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully pushed record update to owner circle shares: %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100721D04(v7, type metadata accessor for OwnedBeaconRecord);
  }

  (*(v0 + 32))(1);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1006C5DC0()
{
  v30 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  sub_100721C9C(v4, v3, type metadata accessor for OwnedBeaconRecord);
  sub_100721C9C(v2, v1, type metadata accessor for OwnerSharingCircle);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  if (v8)
  {
    v11 = *(v0 + 64);
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v12 = 141558787;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = v9;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100721D04(v11, type metadata accessor for OwnedBeaconRecord);
    v16 = sub_1000136BC(v13, v15, &v29);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100721D04(v10, type metadata accessor for OwnerSharingCircle);
    v20 = sub_1000136BC(v17, v19, &v29);

    *(v12 + 34) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to update name record in keydrop: %{private,mask.hash}s, shareId: %{private,mask.hash}s.", v12, 0x2Au);
    swift_arrayDestroy();

    v21 = v28;
  }

  else
  {
    v22 = *(v0 + 64);

    sub_100721D04(v10, type metadata accessor for OwnerSharingCircle);
    sub_100721D04(v22, type metadata accessor for OwnedBeaconRecord);
    v21 = v9;
  }

  sub_100721D04(v21, type metadata accessor for OwnerSharingCircle);
  v23 = *(v0 + 176) + 1;
  if (v23 == *(v0 + 160))
  {
    v24 = swift_task_alloc();
    *(v0 + 200) = v24;
    *v24 = v0;
    v24[1] = sub_1006C5534;

    return daemon.getter();
  }

  else
  {
    *(v0 + 176) = v23;
    sub_100721C9C(*(v0 + 16) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 168) * v23, *(v0 + 104), type metadata accessor for OwnerSharingCircle);
    v25 = swift_task_alloc();
    *(v0 + 184) = v25;
    *v25 = v0;
    v25[1] = sub_1006C5420;
    v26 = *(v0 + 104);

    return sub_1001942F0(v26, 0);
  }
}

uint64_t sub_1006C6248()
{
  v17 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7F8);
  sub_100721C9C(v2, v1, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100721D04(v7, type metadata accessor for OwnedBeaconRecord);
    v13 = sub_1000136BC(v10, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully pushed record update to owner circle shares: %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100721D04(v7, type metadata accessor for OwnedBeaconRecord);
  }

  (*(v0 + 32))(1);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1006C64F0()
{
  v31 = v0;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v29 = type metadata accessor for Logger();
  sub_1000076D4(v29, qword_10177B7F8);
  sub_100721C9C(v3, v2, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = &unk_10138A000;
  v8 = *(v0 + 56);
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100721D04(v8, type metadata accessor for OwnedBeaconRecord);
    v14 = sub_1000136BC(v11, v13, &v30);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to send name record updates to members: %{private,mask.hash}s.", v9, 0x16u);
    sub_100007BAC(v10);
    p_weak_ivar_lyt = (&BeaconKeyManager + 56);

    v7 = &unk_10138A000;
  }

  else
  {

    sub_100721D04(v8, type metadata accessor for OwnedBeaconRecord);
  }

  if (p_weak_ivar_lyt[368] != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 72);
  v16 = *(v0 + 24);
  sub_1000076D4(v29, qword_10177B7F8);
  sub_100721C9C(v16, v15, type metadata accessor for OwnedBeaconRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 72);
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = v7[485];
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_100721D04(v20, type metadata accessor for OwnedBeaconRecord);
    v26 = sub_1000136BC(v23, v25, &v30);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "Successfully pushed record update to owner circle shares: %{private,mask.hash}s.", v21, 0x16u);
    sub_100007BAC(v22);
  }

  else
  {

    sub_100721D04(v20, type metadata accessor for OwnedBeaconRecord);
  }

  (*(v0 + 32))(1);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1006C69B8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  __chkstk_darwin(v6);
  v8 = (v19 - v7);
  sub_1000D2A70(a1, v19 - v7, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    v10 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v11 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    v19[1] = v9;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100008C00();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "create BeaconNameRecord failed %@.", 34, 2, v12);

    a2(0);
  }

  else
  {
    v17 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v18 = v17;
      swift_once();
      v17 = v18;
    }

    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, qword_10177C380, "create BeaconNameRecord success.", 32, 2, _swiftEmptyArrayStorage);
    a2(1);
    sub_100A8306C(0xDu);
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();

    PassthroughSubject.send(_:)();

    return sub_10000B3A8(v8, &qword_1016A7808, &qword_1013D6750);
  }
}

uint64_t sub_1006C6C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v18;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v9 = type metadata accessor for Date();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v8[11] = *(v10 + 64);
  v8[12] = swift_task_alloc();
  v8[13] = type metadata accessor for KeySyncMetadata(0);
  v8[14] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v8[15] = v11;
  v12 = *(v11 - 8);
  v8[16] = v12;
  v8[17] = *(v12 + 64);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v8[22] = swift_task_alloc();
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  v8[23] = v13;
  v14 = *(v13 - 8);
  v8[24] = v14;
  v8[25] = *(v14 + 64);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[28] = v15;
  *v15 = v8;
  v15[1] = sub_1006C6EF4;

  return daemon.getter();
}

uint64_t sub_1006C6EF4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[29] = a1;

  v3 = swift_task_alloc();
  v2[30] = v3;
  v4 = type metadata accessor for Daemon();
  v2[31] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[32] = v6;
  v7 = sub_100003E8C(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1006C70D4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1006C70D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 264) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1006C7280, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 272) = v5;
    *v5 = v4;
    v5[1] = sub_1006C7408;

    return daemon.getter();
  }
}

uint64_t sub_1006C7280()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ObservationStoreService.", v4, 2u);
  }

  v5 = *(v0 + 24);

  v5(0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1006C7408(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 280) = a1;

  v5 = swift_task_alloc();
  *(v3 + 288) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_100003E8C(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_1006C75BC;
  v8 = *(v2 + 256);
  v9 = *(v2 + 248);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1006C75BC(uint64_t a1)
{
  *(*v2 + 296) = a1;

  if (v1)
  {

    v4 = sub_1006C7714;
    v5 = 0;
  }

  else
  {

    v4 = sub_1006C78A8;
    v5 = a1;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1006C7714()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No beaconStoreActor.", v4, 2u);
  }

  v5 = *(v0 + 24);

  v5(0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1006C78A8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 120);
  v5 = *(v0 + 40);
  v6 = *(v3 + 16);
  *(v0 + 304) = v6;
  *(v0 + 312) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 400) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 320) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 328) = v10;
  *(v0 + 336) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);

  v11 = swift_task_alloc();
  *(v0 + 344) = v11;
  *v11 = v0;
  v11[1] = sub_1006C7A2C;
  v13 = *(v0 + 168);
  v12 = *(v0 + 176);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100721F04, v9, v13);
}

uint64_t sub_1006C7A2C()
{

  return _swift_task_switch(sub_1006C7B44, 0, 0);
}

uint64_t sub_1006C7B44()
{
  v36 = v0;
  v1 = *(v0 + 176);
  if ((*(*(v0 + 192) + 48))(v1, 1, *(v0 + 184)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 304);
    v3 = *(v0 + 144);
    v4 = *(v0 + 120);
    v5 = *(v0 + 40);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B7F8);
    v2(v3, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v10, v11);
      v18 = sub_1000136BC(v15, v17, &v35);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "                    OwnedBeaconRecord with identifier not found - %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {

      (*(v12 + 8))(v10, v11);
    }

    (*(v0 + 24))(0);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v19 = *(v0 + 304);
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);
    v22 = *(v0 + 104);
    v23 = *(v0 + 80);
    v24 = *(v0 + 48);
    v33 = *(v0 + 56);
    v34 = *(v0 + 72);
    v25 = *(v0 + 40);
    sub_10002AB74(v1, *(v0 + 216), type metadata accessor for OwnedBeaconRecord);
    v19(v21, v25, v20);
    v26 = (v21 + v22[6]);
    v26[3] = &type metadata for PrimaryIndex;
    v26[4] = sub_10002A2B8();
    *v26 = v24;
    v27 = v22[7];
    v28 = *(v23 + 16);
    *(v0 + 352) = v28;
    *(v0 + 360) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v28(v21 + v27, v33, v34);
    *(v21 + v22[5]) = 2;
    v29 = swift_task_alloc();
    *(v0 + 368) = v29;
    *v29 = v0;
    v29[1] = sub_1006C7F60;
    v30 = *(v0 + 112);

    return sub_1010CDAC4(v30);
  }
}

uint64_t sub_1006C7F60()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1006C883C;
  }

  else
  {
    v2 = sub_1006C8074;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006C8074()
{
  v21 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  v1(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v10 = v0[15];
  v11 = v0[16];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully updated alignment uncertainty for beacon %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v18 = v0[37];

  return _swift_task_switch(sub_1006C82BC, v18, 0);
}

uint64_t sub_1006C82BC()
{

  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1006C839C;
  v3 = *(v0 + 296);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_1006C839C()
{
  v1 = *(*v0 + 296);

  return _swift_task_switch(sub_1006C84B4, v1, 0);
}

uint64_t sub_1006C84D8()
{
  v33 = *(v0 + 392);
  v22 = *(v0 + 352);
  v32 = *(v0 + 328);
  v1 = *(v0 + 400);
  v2 = *(v0 + 304);
  v31 = *(v0 + 216);
  v19 = *(v0 + 192);
  v20 = *(v0 + 200);
  v3 = *(v0 + 160);
  v26 = v3;
  v21 = *(v0 + 136);
  v4 = *(v0 + 120);
  v24 = *(v0 + 208);
  v25 = v4;
  v34 = *(v0 + 112);
  v5 = *(v0 + 96);
  v23 = *(v0 + 88);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 56);
  v27 = *(v0 + 64);
  v9 = *(v0 + 40);
  v30 = *(v0 + 32);
  v28 = *(v0 + 48);
  v29 = *(v0 + 24);
  sub_100721C9C(v31, v24, type metadata accessor for OwnedBeaconRecord);
  v2(v3, v9, v4);
  v22(v5, v8, v7);
  v10 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v11 = (v20 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v1 + v11 + 8) & ~v1;
  v13 = (v21 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v27;
  sub_10002AB74(v24, v14 + v10, type metadata accessor for OwnedBeaconRecord);
  *(v14 + v11) = v28;
  v32(v14 + v12, v26, v25);
  (*(v6 + 32))(v14 + v13, v5, v7);
  v15 = (v14 + ((v23 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v29;
  v15[1] = v30;
  type metadata accessor for Transaction();
  v16 = swift_task_alloc();
  *(v16 + 16) = v33;
  *(v16 + 24) = v31;
  *(v16 + 32) = 2;
  *(v16 + 40) = sub_10071E4C8;
  *(v16 + 48) = v14;

  static Transaction.named<A>(_:with:)();

  sub_100721D04(v34, type metadata accessor for KeySyncMetadata);
  sub_100721D04(v31, type metadata accessor for OwnedBeaconRecord);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1006C883C()
{
  v1 = v0[27];
  v2 = v0[14];

  sub_100721D04(v2, type metadata accessor for KeySyncMetadata);
  sub_100721D04(v1, type metadata accessor for OwnedBeaconRecord);
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7F8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update key sync %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[3];

  v9(0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006C8A94(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a6;
  v43 = a7;
  v40 = a4;
  v41 = a5;
  v34 = a1;
  v35 = a3;
  v9 = type metadata accessor for Date();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  __chkstk_darwin(v9);
  v44 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v36);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  v33 = *(v13 - 8);
  v14 = *(v33 + 64);
  __chkstk_darwin(v13 - 8);
  v31 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - v16;
  v37 = &v31 - v16;
  sub_1006C8E64(a2, a3);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_100721C9C(a2, &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v19 = v36;
  (*(v11 + 16))(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v36);
  v20 = v38;
  v21 = v39;
  (*(v38 + 16))(v44, v41, v39);
  v22 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v23 = (v14 + *(v11 + 80) + v22) & ~*(v11 + 80);
  v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v20 + 80) + v24 + 8) & ~*(v20 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_10002AB74(v31, v27 + v22, type metadata accessor for OwnedBeaconRecord);
  (*(v11 + 32))(v27 + v23, v32, v19);
  *(v27 + v24) = v35;
  (*(v20 + 32))(v27 + v25, v44, v21);
  v28 = (v27 + v26);
  v29 = v43;
  *v28 = v42;
  v28[1] = v29;

  sub_10025EDD4(0, 0, v37, &unk_1013B66F0, v27);
}

uint64_t sub_1006C8E64(uint64_t a1, unint64_t a2)
{
  v94 = a2;
  v84 = a1;
  v3 = type metadata accessor for OwnedBeaconRecord(0);
  v81 = *(v3 - 8);
  __chkstk_darwin(v3);
  v74 = v4;
  v80 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ShareRecord(0);
  v90 = *(v83 - 8);
  v5 = __chkstk_darwin(v83);
  v79 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v6;
  __chkstk_darwin(v5);
  v8 = (&v67 - v7);
  v9 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v9 - 8);
  v11 = &v67 - v10;
  v88 = type metadata accessor for DirectorySequence();
  v85 = *(v88 - 8);
  __chkstk_darwin(v88);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v67 - v19;
  v82 = v2;
  v89 = *(v2 + 280);
  v77 = *(v89 + 168);
  v21 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v92 = v8;
    sub_1000076D4(v14, qword_10177A518);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:isDirectory:)();

    objc_autoreleasePoolPop(v21);
    v96 = _swiftEmptyArrayStorage;
    v97 = _swiftEmptyArrayStorage;
    v22 = [objc_opt_self() defaultManager];
    v86 = v20;
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v78 = v13;
    DirectorySequence.next()();
    v23 = v15[6];
    v24 = v23(v11, 1, v14);
    v87 = v15;
    v8 = 0;
    if (v24 == 1)
    {
      v25 = v78;
    }

    else
    {
      v93 = v15[4];
      v95 = v15 + 4;
      v26 = (v15 + 1);
      v25 = v78;
      v27 = v77;
      do
      {
        v93(v18, v11, v14);
        v28 = objc_autoreleasePoolPush();
        sub_1005FF9CC(v18, v27, &v97, &v96);
        objc_autoreleasePoolPop(v28);
        (*v26)(v18, v14);
        DirectorySequence.next()();
      }

      while (v23(v11, 1, v14) != 1);
    }

    (*(v85 + 1))(v25, v88);
    LODWORD(v95) = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v93 = static OS_os_log.default.getter();
    v11 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10138BBE0;
    v30 = v97;
    v31 = *(v97 + 2);
    *(v29 + 56) = &type metadata for Int;
    *(v29 + 64) = &protocol witness table for Int;
    *(v29 + 32) = v31;
    sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v32 = v86;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v20 = &type metadata for String;
    *(v29 + 96) = &type metadata for String;
    v13 = sub_100008C00();
    *(v29 + 104) = v13;
    *(v29 + 72) = v33;
    *(v29 + 80) = v35;
    v36 = v93;
    os_log(_:dso:log:_:_:)(v95, &_mh_execute_header, v93, "Found %i records at %@", 22, 2, v29);

    (v87[1])(v32, v14);
    v37 = v30;

    v21 = *(v30 + 2);
    v38 = v83;
    v15 = v92;
    if (!v21)
    {
      break;
    }

    v14 = 0;
    v18 = *(v90 + 80);
    v76 = ~v18;
    v75 = (v18 + 32) & ~v18;
    v87 = &v37[v75];
    v74 += v18;
    v73 = (v18 + 16) & ~v18;
    v72 = (v91 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
    v70 = xmmword_10138B360;
    v69 = xmmword_101385D80;
    v78 = v37;
    v88 = v13;
    v77 = v21;
    v93 = v18;
    v68 = v11;
    while (v14 < *(v37 + 2))
    {
      v13 = v20;
      sub_100721C9C(v87 + *(v90 + 72) * v14, v15, type metadata accessor for ShareRecord);
      v39 = *(v15 + *(v38 + 44));
      if (v39 <= v94)
      {
        v20 = v13;
      }

      else
      {
        v95 = v8;
        v40 = static os_log_type_t.default.getter();
        if (qword_101695028 != -1)
        {
          swift_once();
        }

        v41 = qword_10177C370;
        v42 = swift_allocObject();
        *(v42 + 16) = v70;
        v43 = UUID.uuidString.getter();
        v44 = v88;
        *(v42 + 56) = v13;
        *(v42 + 64) = v44;
        *(v42 + 32) = v43;
        *(v42 + 40) = v45;
        *(v42 + 96) = &type metadata for UInt64;
        *(v42 + 104) = &protocol witness table for UInt64;
        *(v42 + 112) = v39;
        v46 = v94;
        *(v42 + 72) = v94;
        *(v42 + 136) = &type metadata for UInt64;
        *(v42 + 144) = &protocol witness table for UInt64;
        os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v41, "Redistributing keys for share %@: newPrimaryIndex: %lu, share, sharePrimaryIndex: %lu", 85, 2, v42);

        v92 = swift_allocObject();
        *(v92 + 16) = v46;
        v47 = v80;
        sub_100721C9C(v84, v80, type metadata accessor for OwnedBeaconRecord);
        v13 = v79;
        sub_100721C9C(v15, v79, type metadata accessor for ShareRecord);
        v48 = (*(v81 + 80) + 24) & ~*(v81 + 80);
        v49 = (v74 + v48) & v76;
        v50 = swift_allocObject();
        *(v50 + 16) = v82;
        sub_10002AB74(v47, v50 + v48, type metadata accessor for OwnedBeaconRecord);
        sub_10002AB74(v13, v50 + v49, type metadata accessor for ShareRecord);

        v51 = static os_log_type_t.default.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v52 = qword_10177C380;
        v53 = swift_allocObject();
        *(v53 + 16) = v69;
        v54 = v88;
        *(v53 + 56) = &type metadata for String;
        *(v53 + 64) = v54;
        *(v53 + 32) = 0x65736C6166;
        *(v53 + 40) = 0xE500000000000000;
        os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v52, "Modify record. Disk First? (%@)", 31, 2, v53);

        v55 = objc_autoreleasePoolPush();
        v56 = v95;
        sub_101121490(v15);
        v58 = v57;
        v86 = v57;
        objc_autoreleasePoolPop(v55);
        sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
        type metadata accessor for CloudKitCoordinator();
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v95 = v56;
        v85 = type metadata accessor for ShareRecord;
        sub_100721C9C(v15, v13, type metadata accessor for ShareRecord);
        v59 = v75;
        v60 = swift_allocObject();
        v61 = v92;
        *(v60 + 16) = sub_10071E860;
        *(v60 + 24) = v61;
        sub_10002AB74(v13, v60 + v59, type metadata accessor for ShareRecord);

        sub_100FDCA40(v58, sub_10071E96C, v60);

        v62 = swift_allocObject();
        *(v62 + 16) = sub_10071E894;
        *(v62 + 24) = v50;

        Future.addFailure(block:)();

        sub_100721C9C(v15, v13, v85);
        v63 = v71;
        v64 = swift_allocObject();
        sub_10002AB74(v13, v64 + v73, type metadata accessor for ShareRecord);
        v18 = v89;
        *(v64 + v72) = v89;
        v65 = (v64 + v63);
        *v65 = sub_10071E894;
        v65[1] = v50;

        Future.addSuccess(block:)();

        v38 = v83;
        v11 = v68;
        v37 = v78;
        v20 = &type metadata for String;
        v21 = v77;
        v8 = v95;
      }

      ++v14;
      sub_100721D04(v15, type metadata accessor for ShareRecord);
      if (v21 == v14)
      {
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }
}

uint64_t sub_1006C9B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v14;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a5;
  v9 = type metadata accessor for Date();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[13] = v11;
  *v11 = v8;
  v11[1] = sub_1006C9C74;

  return sub_100D5F8B4();
}

uint64_t sub_1006C9C74(char a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1006C9D74, 0, 0);
}

uint64_t sub_1006C9D74()
{
  v34 = v0;
  if (*(v0 + 112) == 1)
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B810);
    (*(v2 + 16))(v1, v8, v3);
    (*(v6 + 16))(v4, v7, v5);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    if (v12)
    {
      v30 = *(v0 + 24);
      log = v10;
      v19 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v19 = 141558787;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v11;
      v22 = v21;
      (*(v13 + 8))(v14, v16);
      v23 = sub_1000136BC(v20, v22, &v33);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2048;
      *(v19 + 24) = v30;
      *(v19 + 32) = 2080;
      sub_100003E8C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v17 + 8))(v15, v18);
      v27 = sub_1000136BC(v24, v26, &v33);

      *(v19 + 34) = v27;
      _os_log_impl(&_mh_execute_header, log, v31, "Posting SPManagedCBPeripheralChanged on keySyncRecord update from CL for %{private,mask.hash}s index %llu date %s.", v19, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v17 + 8))(v15, v18);
      (*(v13 + 8))(v14, v16);
    }

    static DarwinNotification.post(name:)();
  }

  (*(v0 + 40))(1);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1006CA104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[0] = a4;
  v7 = type metadata accessor for ShareRecord(0);
  v8 = __chkstk_darwin(v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v30 - v11;
  v13 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  __chkstk_darwin(v13);
  v15 = (v30 - v14);
  sub_1000D2A70(a1, v30 - v14, &unk_1016B1650, &unk_1013B1110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    v17 = static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    v18 = qword_10177C370;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    v30[1] = v16;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Could not update ShareRecord. Error - %@", 40, 2, v19, v30[0]);
  }

  else
  {
    sub_10002AB74(v15, v12, type metadata accessor for ShareRecord);
    v24 = static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    v25 = qword_10177C370;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_101385D80;
    sub_100721C9C(v12, v10, type metadata accessor for ShareRecord);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100008C00();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v25, "Successfully updated sharePrimaryIndex of %@", 44, 2, v26, v30[0]);

    result = sub_100721D04(v12, type metadata accessor for ShareRecord);
  }

  if (*(a2 + 40))
  {

    sub_100565AE4(a3, v30[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006CA498(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = type metadata accessor for KeyAlignmentRecord(0);
  v32 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v35 = v10;
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 280);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v34 = a1;

  v14 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = 0x65736C6166;
  *(v16 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Modify record. Disk First? (%@)", 31, 2, v16);

  v17 = objc_autoreleasePoolPush();
  sub_10112202C(a3);
  v36 = v18;
  objc_autoreleasePoolPop(v17);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v33 = 0;
    sub_100721C9C(a3, v11, type metadata accessor for KeyAlignmentRecord);
    v19 = *(v32 + 80);
    v29 = a3;
    v20 = v35;
    v21 = swift_allocObject();
    v32 = v12;
    v22 = v21;
    *(v21 + 16) = sub_10071F480;
    *(v21 + 24) = v13;
    v30 = type metadata accessor for KeyAlignmentRecord;
    sub_10002AB74(v11, v21 + ((v19 + 32) & ~v19), type metadata accessor for KeyAlignmentRecord);

    sub_100FDCA40(v36, sub_10071F490, v22);
    v31 = v13;

    v23 = swift_allocObject();
    v24 = v34;
    *(v23 + 16) = sub_10071F488;
    *(v23 + 24) = v24;

    Future.addFailure(block:)();

    sub_100721C9C(v29, v11, type metadata accessor for KeyAlignmentRecord);
    v25 = (v19 + 16) & ~v19;
    v26 = (v20 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    sub_10002AB74(v11, v27 + v25, v30);
    *(v27 + v26) = v32;
    v28 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v28 = sub_10071F488;
    v28[1] = v24;

    Future.addSuccess(block:)();
  }
}

uint64_t sub_1006CA8F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for KeyAlignmentRecord(0);
  *(a1 + *(v8 + 28)) = a2;
  static Date.trustedNow.getter(v7);
  return (*(v5 + 40))(a1 + *(v8 + 32), v7, v4);
}

uint64_t sub_1006CA9DC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  __chkstk_darwin(v2);
  v4 = (v15 - v3);
  Transaction.capture()();
  sub_1000D2A70(a1, v4, &unk_1016B1690, &qword_1013D6800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    v6 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    v15[1] = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100008C00();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v11 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v11, "Could not update last seen key indexto alignment record. Error - %@", 67, 2, v7);
  }

  else
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    v14 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Successfully update last seen key index to alignment record.", 60, 2, &_mh_execute_header, v13, v14, _swiftEmptyArrayStorage);

    return sub_10000B3A8(v4, &unk_1016B1690, &qword_1013D6800);
  }
}

uint64_t sub_1006CABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for UUID();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v8[11] = type metadata accessor for KeySyncMetadata(0);
  v8[12] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[13] = v10;
  *v10 = v8;
  v10[1] = sub_1006CAD30;

  return daemon.getter();
}

uint64_t sub_1006CAD30(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1006CAF0C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1006CAF0C(uint64_t a1)
{
  *(*v2 + 128) = a1;

  if (v1)
  {

    v3 = sub_1006CB05C;
  }

  else
  {

    v3 = sub_1006CB19C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006CB05C()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing ObservationStoreService.", v4, 2u);
  }

  v5 = *(v0 + 16);

  v5(0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1006CB19C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = *(v4 + 16);
  v0[17] = v8;
  v0[18] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v3);
  v9 = (v1 + v2[6]);
  v9[3] = &type metadata for PrimaryIndex;
  v9[4] = sub_10002A2B8();
  *v9 = v6;
  v10 = v2[7];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 16))(v1 + v10, v5, v11);
  *(v1 + v2[5]) = 4;
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_1006CB2E0;
  v13 = v0[12];

  return sub_1010CDAC4(v13);
}

uint64_t sub_1006CB2E0()
{
  v2 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  sub_100721D04(v2, type metadata accessor for KeySyncMetadata);
  if (v0)
  {
    v3 = sub_1006CB6AC;
  }

  else
  {
    v3 = sub_1006CB424;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006CB424()
{
  v22 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  v1(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 80);
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  if (v8)
  {
    v12 = *(v0 + 40);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 134218499;
    *(v13 + 4) = v12;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v9, v10);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "            Successfully updated last seen key index %lu for %{private,mask.hash}s.", v13, 0x20u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  (*(v0 + 16))(1);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1006CB6AC()
{
  v26 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  v1(v2, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v10 = *(v0 + 56);
    v11 = *(v0 + 40);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v12 = 134218755;
    *(v12 + 4) = v11;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v12 + 24) = v17;
    *(v12 + 32) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 34) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "            Failed to updated last seen key index %lu for %{private,mask.hash}s, error: %{public}@.", v12, 0x2Au);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v24);
  }

  else
  {
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    v21 = *(v0 + 56);

    (*(v20 + 8))(v19, v21);
  }

  (*(v0 + 16))(0);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1006CB9C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1006CB9E0, 0, 0);
}

uint64_t sub_1006CB9E0()
{
  v1 = *(v0 + 24);
  type metadata accessor for AnalyticsEvent(0);
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  swift_defaultActor_initialize();
  *(v2 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v3 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(*(v4 - 8) + 56);
  v5(&v2[v3], 1, 1, v4);
  v5(&v2[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v4);
  *(v2 + 15) = 0xD000000000000031;
  *(v2 + 16) = 0x800000010135CED0;
  v6 = v1;

  return _swift_task_switch(sub_1006CBB3C, v2, 0);
}

uint64_t sub_1006CBB3C()
{
  sub_101175FFC(*(v0 + 32), *(v0 + 16), *(v0 + 24));

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 40) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1006CBC1C;
  v2 = *(v0 + 32);

  return sub_101163F78(v2);
}

uint64_t sub_1006CBC1C()
{

  return _swift_task_switch(sub_100721F44, 0, 0);
}

id sub_1006CBD34(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0x6E4979654B77656ELL;
  *(inited + 40) = 0xEB00000000786564;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a1];
  *(inited + 56) = 0;
  v9 = sub_100908768(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
  result = [a2 systemVersion];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v9;
  sub_100FFC418(v11, 0, 0xD000000000000013, 0x8000000101356E70, isUniquelyReferenced_nonNull_native);
  v13 = v26;
  result = [a2 systemVersion];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v26 = v13;
  sub_100FFC418(v14, 0, 0xD00000000000001BLL, 0x8000000101356E90, v15);
  v16 = v26;
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 isInternalBuild];

  if (v18)
  {
    v19 = [a2 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    (*(v5 + 8))(v7, v4);
    v20 = String._bridgeToObjectiveC()();

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v16;
    sub_100FFC418(v20, 0, 0x6544646572696170, 0xEE00444965636976, v21);
    v16 = v26;
    v22 = [a2 serialNumber];
    if (v22)
    {
      v23 = v22;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v26 = v16;
      sub_100FFC418(v23, 0, 0xD000000000000018, 0x8000000101350650, v24);
      return v26;
    }
  }

  return v16;
}

uint64_t sub_1006CC0A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 136);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_10071E424;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162E090;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_1006CC384(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v75 = a3;
  v76 = a2;
  v4 = type metadata accessor for Date();
  __chkstk_darwin(v4 - 8);
  v87 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateInterval();
  v72 = *(v6 - 8);
  __chkstk_darwin(v6);
  v80 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for UUID();
  v8 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v86);
  v11 = &v70 - v10;
  v85 = type metadata accessor for BeaconNamingRecord(0);
  v12 = *(v85 - 1);
  __chkstk_darwin(v85);
  v78 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = objc_autoreleasePoolPush();
  v74 = a1;
  v90 = *(a1 + 280);
  v14 = sub_100007F54();
  v15 = v14;
  v16 = v14[2];
  v79 = v6;
  *&v84 = v16;
  v71 = v8;
  if (v16)
  {
    v17 = 0;
    v83 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer;
    v18 = (v14 + 4);
    v82 = (v8 + 8);
    v81 = (v12 + 48);
    v77 = SPBeaconRoleIdUndefined;
    v19 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v17 >= v15[2])
      {
        __break(1u);

        __break(1u);
        return result;
      }

      sub_10001F280(v18, &v94);
      v21 = v95;
      v20 = v96;
      sub_1000035D0(&v94, v95);
      v22 = v88;
      v23 = (*(*(*(v20 + 8) + 8) + 32))(v21);
      __chkstk_darwin(v23);
      *(&v70 - 2) = v24;
      *(&v70 - 1) = v22;
      QueueSynchronizer.conditionalSync<A>(_:)();
      (*v82)(v22, v89);
      v25 = v85;
      if ((*v81)(v11, 1, v85) == 1)
      {
        sub_10000B3A8(v11, &unk_1016B29E0, &unk_1013B70E0);
      }

      else
      {
        v26 = v78;
        sub_10002AB74(v11, v78, type metadata accessor for BeaconNamingRecord);
        v27 = *(v26 + v25[7]);
        sub_100721D04(v26, type metadata accessor for BeaconNamingRecord);
        if (v77 < v27)
        {
          sub_10000A748(&v94, v91);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v97 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100025B1C(0, v19[2] + 1, 1);
            v19 = v97;
          }

          v30 = v19[2];
          v29 = v19[3];
          if (v30 >= v29 >> 1)
          {
            sub_100025B1C((v29 > 1), v30 + 1, 1);
          }

          v31 = v92;
          v32 = v93;
          v33 = sub_10015049C(v91, v92);
          __chkstk_darwin(v33);
          v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v36 + 16))(v35);
          sub_1006252D4(v30, v35, &v97, v31, v32);
          sub_100007BAC(v91);
          v19 = v97;
          v6 = v79;
          goto LABEL_5;
        }
      }

      sub_100007BAC(&v94);
LABEL_5:
      ++v17;
      v18 += 40;
      if (v84 == v17)
      {
        goto LABEL_15;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_15:

  *&v94 = v19;
  v37 = v74;

  sub_100713BB4(&v94, v37);

  v38 = v94;
  objc_autoreleasePoolPop(v73);
  v91[0] = _swiftEmptyArrayStorage;
  v39 = *(v38 + 16);
  if (v39)
  {
    v82 = v38;
    v40 = v38 + 32;
    v85 = (v71 + 8);
    v86 = (v72 + 8);
    v84 = xmmword_101385D80;
    v41 = v80;
    while (1)
    {
      sub_10001F280(v40, &v94);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      sub_101073BF4(v97);

      static Date.trustedNow.getter(v87);
      DateInterval.init(start:duration:)();
      v54 = v95;
      v55 = v96;
      v56 = sub_1000035D0(&v94, v95);
      v51 = sub_100B03A58(v56, v41, 0, 0, 0, v90, v54, v55);
      v52 = v51;
      if (v58 > 1u)
      {
        if (v58 == 2)
        {
          sub_100359088(v51, v57, 2u);
        }

        v42 = static os_log_type_t.default.getter();
        if (qword_101695028 != -1)
        {
          swift_once();
        }

        v43 = qword_10177C370;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v44 = swift_allocObject();
        *(v44 + 16) = v84;
        v46 = v95;
        v45 = v96;
        sub_1000035D0(&v94, v95);
        v47 = v88;
        (*(*(*(v45 + 8) + 8) + 32))(v46);
        v48 = UUID.uuidString.getter();
        v50 = v49;
        (*v85)(v47, v89);
        *(v44 + 56) = &type metadata for String;
        *(v44 + 64) = sub_100008C00();
        *(v44 + 32) = v48;
        *(v44 + 40) = v50;

        v52 = _swiftEmptyArrayStorage;
      }

      else
      {
        if (v58)
        {
          goto LABEL_21;
        }

        v83 = v57;

        v59 = static os_log_type_t.default.getter();
        if (qword_101695028 != -1)
        {
          swift_once();
        }

        v60 = qword_10177C370;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v61 = swift_allocObject();
        *(v61 + 16) = v84;
        v62 = v95;
        v63 = v96;
        sub_1000035D0(&v94, v95);
        v64 = v88;
        (*(*(*(v63 + 8) + 8) + 32))(v62);
        v65 = UUID.uuidString.getter();
        v67 = v66;
        (*v85)(v64, v89);
        *(v61 + 56) = &type metadata for String;
        *(v61 + 64) = sub_100008C00();
        *(v61 + 32) = v65;
        *(v61 + 40) = v67;
        sub_100359088(v52, v83, 0);

        v6 = v79;
      }

      v41 = v80;
LABEL_21:
      __chkstk_darwin(v51);
      *(&v70 - 2) = &v94;
      v53 = sub_10062CF40(sub_10071E430, (&v70 - 4), v52);

      sub_10039A0FC(v53);
      (*v86)(v41, v6);
      sub_100007BAC(&v94);
      v40 += 40;
      if (!--v39)
      {

        v68 = v91[0];
        goto LABEL_33;
      }
    }
  }

  v68 = _swiftEmptyArrayStorage;
LABEL_33:
  v76(v68);
}

uint64_t sub_1006CCE9C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v56 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for TimeBasedKey(0) + 24));
  v10 = v9[1];
  if (v10 >> 60 == 15)
  {
    LODWORD(v55) = static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    v11 = qword_10177C370;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10138BBE0;
    v13 = a2[3];
    v14 = a2[4];
    sub_1000035D0(a2, v13);
    (*(*(*(v14 + 8) + 8) + 32))(v13);
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *(v12 + 56) = &type metadata for String;
    v18 = sub_100008C00();
    *(v12 + 32) = v15;
    *(v12 + 40) = v17;
    v19 = *a1;
    *(v12 + 96) = &type metadata for UInt64;
    *(v12 + 104) = &protocol witness table for UInt64;
    *(v12 + 64) = v18;
    *(v12 + 72) = v19;

    v21 = 0;
  }

  else
  {
    v55 = *v9;
    v22 = v9[2];
    v23 = v9[3];
    sub_100017D5C(v55, v10);
    v24 = PublicKey.advertisement.getter(v22, v23);
    v26 = v25;
    v27 = objc_allocWithZone(SPBeaconingKey);
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v29 = Data._bridgeToObjectiveC()().super.isa;
    v53 = [v27 initWithDateInterval:isa key:v29];

    sub_100016590(v24, v26);
    v30 = v55;
    v52 = sub_100499CE0(v55, v10);
    v54 = v31;
    v32 = sub_100497AF4(v30, v10);
    v34 = v33;
    v35 = PublicKey.advertisement.getter(v9[2], v9[3]);
    v37 = v36;
    v38 = sub_100499CE0(v30, v10);
    v40 = v39;
    v41 = sub_100499208(v38, v39, v35, v37);
    v51 = v42;
    sub_100016590(v38, v40);
    sub_100016590(v35, v37);
    v49 = objc_allocWithZone(SPCommandKeys);
    v43 = Data._bridgeToObjectiveC()().super.isa;
    v50 = v43;
    v44 = Data._bridgeToObjectiveC()().super.isa;
    v45 = v41;
    v46 = v51;
    v47 = Data._bridgeToObjectiveC()().super.isa;
    v48 = v53;
    v21 = [v49 initWithBeaconingKey:v53 commandKey:v43 connectionToken:v44 nearbyToken:v47];

    sub_100016590(v45, v46);
    sub_100016590(v32, v34);

    sub_100016590(v52, v54);
    result = sub_100006654(v55, v10);
  }

  *v56 = v21;
  return result;
}

uint64_t sub_1006CD290(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v4 = static os_log_type_t.error.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  *&v11[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100008C00();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v9 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v9, "Failed to fetch user stats. Error - %@", 38, 2, v5, *&v11[0]);

  v11[0] = xmmword_1013B6600;
  memset(&v11[1], 0, 48);
  v12 = 0;
  return a2(v11);
}

uint64_t sub_1006CD3D4(void *a1, void *a2, uint64_t a3)
{
  v74 = a2;
  v5 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  v6 = __chkstk_darwin(v5 - 8);
  v75 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v60 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v71 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v60 - v14;
  v16 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v17 = __chkstk_darwin(v16 - 8);
  v76 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v60 - v19;
  v21 = type metadata accessor for Date();
  v78 = *(v21 - 8);
  v79 = v21;
  v22 = __chkstk_darwin(v21);
  v65 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v66 = &v60 - v25;
  v26 = __chkstk_darwin(v24);
  v69 = &v60 - v27;
  __chkstk_darwin(v26);
  v77 = &v60 - v28;
  v29 = *(a3 + 280);
  v31 = a1[3];
  v30 = a1[4];
  sub_1000035D0(a1, v31);
  (*(*(*(v30 + 8) + 8) + 32))(v31);
  v70 = v29;
  sub_100AC6DA0(v15, v9);
  v32 = *(v11 + 8);
  v72 = v11 + 8;
  v73 = v10;
  v32(v15, v10);
  v33 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v34 + 48;
  if (v35(v9, 1, v33) == 1)
  {
    sub_10000B3A8(v9, &qword_10169DBD0, &unk_1013D6790);
    v37 = 1;
  }

  else
  {
    sub_10002AB74(v9, v20, type metadata accessor for BeaconStatus);
    v37 = 0;
  }

  v38 = type metadata accessor for BeaconStatus(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v67 = v39 + 56;
  v68 = v40;
  v40(v20, v37, 1, v38);
  v41 = *(v39 + 48);
  if (v41(v20, 1, v38) == 1)
  {
    v42 = v20;
  }

  else
  {
    v43 = *(v38 + 24);
    v62 = v32;
    v63 = v36;
    v45 = v78;
    v44 = v79;
    v64 = v35;
    v46 = v69;
    v61 = *(v78 + 16);
    v61(v69, &v20[v43], v79);
    sub_100721D04(v20, type metadata accessor for BeaconStatus);
    v69 = *(v45 + 32);
    (v69)(v77, v46, v44);
    v48 = v74[3];
    v47 = v74[4];
    sub_1000035D0(v74, v48);
    v49 = v71;
    (*(*(*(v47 + 8) + 8) + 32))(v48);
    v50 = v75;
    sub_100AC6DA0(v49, v75);
    v62(v49, v73);
    if (v64(v50, 1, v33) == 1)
    {
      sub_10000B3A8(v50, &qword_10169DBD0, &unk_1013D6790);
      v51 = 1;
      v52 = v76;
    }

    else
    {
      v52 = v76;
      sub_10002AB74(v50, v76, type metadata accessor for BeaconStatus);
      v51 = 0;
    }

    v68(v52, v51, 1, v38);
    if (v41(v52, 1, v38) != 1)
    {
      v54 = v65;
      v55 = v79;
      v61(v65, (v52 + *(v38 + 24)), v79);
      sub_100721D04(v52, type metadata accessor for BeaconStatus);
      v56 = v66;
      (v69)(v66, v54, v55);
      v57 = v77;
      v53 = static Date.> infix(_:_:)();
      v58 = *(v78 + 8);
      v58(v56, v55);
      v58(v57, v55);
      return v53 & 1;
    }

    (*(v78 + 8))(v77, v79);
    v42 = v52;
  }

  sub_10000B3A8(v42, &qword_10169DBD8, &qword_1013BF910);
  v53 = 0;
  return v53 & 1;
}

void *sub_1006CDAB8(unint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for TimeBasedKey(0);
  v9 = *(v8 - 8);
  v98 = v8;
  v99 = v9;
  __chkstk_darwin(v8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimeBasedKeysCriteria(0);
  __chkstk_darwin(v12);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    v15 = v103;
    if (a2 == 2)
    {
      v21 = v4;
      v22 = sub_101074938(v103);
      v23 = sub_101074954(v15);
    }

    else
    {
      if (a2 != 1)
      {
        v100 = v4;

        if (qword_101694840 == -1)
        {
LABEL_5:
          v16 = type metadata accessor for Logger();
          sub_1000076D4(v16, qword_10177B060);
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v17, v18, "_offlineAdvertisingKeys called for .invalid reason!", v19, 2u);
          }

          return _swiftEmptyArrayStorage;
        }

LABEL_68:
        swift_once();
        goto LABEL_5;
      }

      v21 = v4;
      v22 = sub_101074900(v103);
      v23 = sub_10107491C(v15);
    }

    v24 = v23;

    v25 = *(v5 + 280);
    type metadata accessor for BeaconKeyManager(0);
    v100 = v25;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v5 = v103;
    v26 = sub_10130980C(a1, v103);

    v27 = v26 + v22;
    if (__CFADD__(v26, v22))
    {
      __break(1u);
      goto LABEL_68;
    }

    v28 = __CFADD__(v27, v24);
    v29 = &v27[v24];
    if (v28)
    {
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v5 = (v29 - 1);
    if (!v29)
    {
      goto LABEL_70;
    }

    if (v5 >= v26)
    {
      v96 = v22;
      v97 = v21;
      v95 = v24;
      if (qword_101694840 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_72;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
LABEL_15:
    v30 = type metadata accessor for Logger();
    v94 = sub_1000076D4(v30, qword_10177B060);
    v31 = v94;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v92 = v12;
      v93 = a1;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v105 = v35;
      *v34 = 134218242;
      if (__CFADD__(v96, v95))
      {
        __break(1u);
        goto LABEL_74;
      }

      *(v34 + 4) = v96 + v95;
      *(v34 + 12) = 2080;
      v101 = v5;
      v102 = v26;
      v103 = 0;
      v104 = 0xE000000000000000;
      v91 = v35;
      _print_unlocked<A, B>(_:_:)();
      v36._countAndFlagsBits = 3026478;
      v36._object = 0xE300000000000000;
      String.append(_:)(v36);
      _print_unlocked<A, B>(_:_:)();
      v37 = v5;
      v38 = sub_1000136BC(v103, v104, &v105);

      *(v34 + 14) = v38;
      v5 = v37;
      _os_log_impl(&_mh_execute_header, v32, v33, "Getting %llu keys in range: %s", v34, 0x16u);
      sub_100007BAC(v91);

      v12 = v92;
      a1 = v93;
    }

    else
    {
    }

    *v14 = sub_1003A8CF8(v26, v5);
    swift_storeEnumTagMultiPayload();
    v39 = v97;
    v40 = sub_100A8A624(a1, v14);
    v100 = v39;
    if (v39)
    {
      return sub_100721D04(v14, type metadata accessor for TimeBasedKeysCriteria);
    }

    a2 = v40;
    v4 = v40[2];
    v93 = v14;
    if (!v4)
    {
      break;
    }

    v105 = _swiftEmptyArrayStorage;
    sub_1011244D8(0, v4, 0);
    v14 = 0;
    v31 = v105;
    v97 = a2 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    do
    {
      if (v14 >= a2[2])
      {
        goto LABEL_63;
      }

      sub_100721C9C(&v97[*(v99 + 72) * v14], v11, type metadata accessor for TimeBasedKey);
      v41 = v100;
      v42 = sub_100A7A194(*&v11[*(v98 + 24) + 16], *&v11[*(v98 + 24) + 24], 0, 0);
      if (v41)
      {
        goto LABEL_87;
      }

      v12 = v42;
      v43 = sub_100A7829C(v42, 0, 2);
      v100 = 0;
      a1 = v43;
      v45 = v44;
      CCECCryptorRelease();
      v46 = v45 >> 62;
      if ((v45 >> 62) > 1)
      {
        if (v46 != 2)
        {
          goto LABEL_91;
        }

        v49 = *(a1 + 16);
        v48 = *(a1 + 24);
        v50 = __OFSUB__(v48, v49);
        v47 = v48 - v49;
        if (v50)
        {
          goto LABEL_64;
        }
      }

      else if (v46)
      {
        LODWORD(v47) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_65;
        }

        v47 = v47;
      }

      else
      {
        v47 = BYTE6(v45);
      }

      if (v47 != 28)
      {
        if (v46 == 1)
        {
          LODWORD(v46) = HIDWORD(a1) - a1;
          if (!__OFSUB__(HIDWORD(a1), a1))
          {
            v90 = v46;
            goto LABEL_92;
          }

          __break(1u);
        }

        if (v46 == 2)
        {
          v81 = *(a1 + 16);
          v80 = *(a1 + 24);
          v90 = v80 - v81;
          if (__OFSUB__(v80, v81))
          {
            __break(1u);
LABEL_87:
            v100 = v41;
            v82 = static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v83 = qword_10177BA00;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v84 = swift_allocObject();
            *(v84 + 16) = xmmword_101385D80;
            v103 = v100;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v45 = String.init<A>(describing:)();
            a1 = v85;
            *(v84 + 56) = &type metadata for String;
            *(v84 + 64) = sub_100008C00();
            *(v84 + 32) = v45;
            *(v84 + 40) = a1;
            os_log(_:dso:log:_:_:)(v82, &_mh_execute_header, v83, "Error deriving advertisementKey: %@", 35, 2, v84);

            sub_1001BAF88();
            v86 = swift_allocError();
            *v87 = 0;
            swift_willThrow();

            goto LABEL_90;
          }
        }

        else
        {
          v90 = BYTE6(v45);
        }

        while (1)
        {
LABEL_92:
          sub_100018350();
          v86 = swift_allocError();
          *v89 = 28;
          *(v89 + 8) = v90;
          *(v89 + 16) = 0;
          swift_willThrow();
          sub_100016590(a1, v45);
LABEL_90:
          v103 = 0;
          v104 = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v88._object = 0x800000010134CB30;
          v88._countAndFlagsBits = 0xD000000000000021;
          String.append(_:)(v88);
          v102 = v86;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_91:
          v90 = 0;
        }
      }

      sub_100721D04(v11, type metadata accessor for TimeBasedKey);
      v105 = v31;
      v5 = v31[2];
      v51 = v31[3];
      v12 = v5 + 1;
      if (v5 >= v51 >> 1)
      {
        sub_1011244D8((v51 > 1), v5 + 1, 1);
        v31 = v105;
      }

      ++v14;
      v31[2] = v12;
      v52 = &v31[2 * v5];
      v52[4] = a1;
      v52[5] = v45;
    }

    while (v4 != v14);

    v53 = v96;
    if ((v96 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

  v31 = _swiftEmptyArrayStorage;
  v53 = v96;
  if (v96 < 0)
  {
    goto LABEL_62;
  }

LABEL_39:
  v5 = sub_100496910(v53, v31);
  v33 = v54;
  v26 = v55;
  v34 = v56;
  if (v56)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();

    v58 = swift_dynamicCastClass();
    if (!v58)
    {
      swift_unknownObjectRelease();
      v58 = _swiftEmptyArrayStorage;
    }

    v59 = v58[2];

    if (__OFSUB__(v34 >> 1, v26))
    {
      goto LABEL_75;
    }

    if (v59 != (v34 >> 1) - v26)
    {
      goto LABEL_76;
    }

    v33 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v33)
    {
      goto LABEL_49;
    }

    v33 = _swiftEmptyArrayStorage;
    goto LABEL_48;
  }

  while (1)
  {
    sub_1003A8C20(v5, v33, v26, v34);
    v33 = v57;
LABEL_48:
    swift_unknownObjectRelease();
LABEL_49:
    if ((v95 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_unknownObjectRelease();
  }

  v63 = sub_1004991C0(v95, v31);
  if ((v62 & 1) == 0)
  {
LABEL_51:
    sub_1003A8C20(v63, v60, v61, v62);
    goto LABEL_57;
  }

  v64 = v62;
  v65 = v61;
  v66 = v60;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v67 = swift_dynamicCastClass();
  if (!v67)
  {
    swift_unknownObjectRelease();
    v67 = _swiftEmptyArrayStorage;
  }

  v68 = v67[2];

  if (__OFSUB__(v64 >> 1, v65))
  {
    __break(1u);
    goto LABEL_78;
  }

  if (v68 != (v64 >> 1) - v65)
  {
LABEL_78:
    swift_unknownObjectRelease();
    v62 = v64;
    v61 = v65;
    v60 = v66;
    goto LABEL_51;
  }

  v69 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v69)
  {
LABEL_57:
    swift_unknownObjectRelease();
  }

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 134218240;
    *(v72 + 4) = v96;
    *(v72 + 12) = 2048;
    *(v72 + 14) = v95;
    _os_log_impl(&_mh_execute_header, v70, v71, "Returning %llu shortInterval keys and %llu longInterval keys", v72, 0x16u);
  }

  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1013953A0;
  v74 = objc_allocWithZone(SPOfflineAdvertisingKeys);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v76 = [v74 initWithInterval:15 keys:isa];

  *(v73 + 32) = v76;
  v77 = objc_allocWithZone(SPOfflineAdvertisingKeys);
  v78 = Array._bridgeToObjectiveC()().super.isa;

  v79 = [v77 initWithInterval:1440 keys:v78];

  *(v73 + 40) = v79;
  sub_100721D04(v93, type metadata accessor for TimeBasedKeysCriteria);
  return v73;
}

uint64_t sub_1006CE73C(uint64_t a1, void (*a2)(void), uint64_t a3, unint64_t a4, void *a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1006CDAB8(a4, a5);
    a2();
  }

  return result;
}

uint64_t sub_1006CE948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for BeaconEstimatedLocation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100721C9C(a3, v12, type metadata accessor for BeaconEstimatedLocation);
  sub_10001F280(a4, v18);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  sub_10002AB74(v12, v15 + v13, type metadata accessor for BeaconEstimatedLocation);
  sub_10000A748(v18, v15 + v14);
  *(v15 + v14 + 40) = a5;

  sub_100A9DA2C(a3, sub_10071F1A4, v15);
}

void sub_1006CEAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v126 = a5;
  v133 = a3;
  v134 = a4;
  v6 = type metadata accessor for UUID();
  v129 = *(v6 - 8);
  v130 = v6;
  __chkstk_darwin(v6);
  v128 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for BeaconEstimatedLocation(0);
  v8 = __chkstk_darwin(v127);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v125 = (&v123 - v12);
  v13 = __chkstk_darwin(v11);
  v124 = &v123 - v14;
  v15 = __chkstk_darwin(v13);
  v132 = &v123 - v16;
  v17 = __chkstk_darwin(v15);
  v131 = &v123 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v123 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v123 - v23;
  __chkstk_darwin(v22);
  v26 = &v123 - v25;
  v27 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  __chkstk_darwin(v27);
  v29 = (&v123 - v28);
  Transaction.capture()();
  sub_1000D2A70(a1, v29, &qword_10169F438, &unk_1013B3300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v29;
    v137[0] = v30;
    swift_errorRetain();
    v31 = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast())
    {
      if (v136 == 8)
      {
        if (qword_101694B80 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_1000076D4(v32, qword_10177B7F8);
        v33 = v124;
        sub_100721C9C(v133, v124, type metadata accessor for BeaconEstimatedLocation);
        sub_10001F280(v134, v137);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          *v36 = 141558787;
          *(v36 + 4) = 1752392040;
          *(v36 + 12) = 2081;
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v37 = v130;
          v38 = dispatch thunk of CustomStringConvertible.description.getter();
          v39 = v33;
          v41 = v40;
          sub_100721D04(v39, type metadata accessor for BeaconEstimatedLocation);
          v42 = sub_1000136BC(v38, v41, &v136);

          *(v36 + 14) = v42;
          *(v36 + 22) = 2160;
          *(v36 + 24) = 1752392040;
          *(v36 + 32) = 2081;
          v44 = v138;
          v43 = v139;
          sub_1000035D0(v137, v138);
          v45 = v128;
          (*(*(*(v43 + 8) + 8) + 32))(v44);
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v48 = v47;
          (*(v129 + 8))(v45, v37);
          sub_100007BAC(v137);
          v49 = sub_1000136BC(v46, v48, &v136);

          *(v36 + 34) = v49;
          _os_log_impl(&_mh_execute_header, v34, v35, "Skipped saving outdated LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s.", v36, 0x2Au);
          swift_arrayDestroy();
LABEL_22:

          goto LABEL_23;
        }

        v122 = v33;
      }

      else
      {
        if (qword_101694B80 != -1)
        {
          swift_once();
        }

        v103 = type metadata accessor for Logger();
        sub_1000076D4(v103, qword_10177B7F8);
        v104 = v125;
        sub_100721C9C(v133, v125, type metadata accessor for BeaconEstimatedLocation);
        sub_10001F280(v134, v137);
        swift_errorRetain();
        v34 = Logger.logObject.getter();
        v105 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v34, v105))
        {
          v106 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v136 = v133;
          *v106 = 141559043;
          *(v106 + 4) = 1752392040;
          *(v106 + 12) = 2081;
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v107 = v130;
          v108 = dispatch thunk of CustomStringConvertible.description.getter();
          v134 = v31;
          v110 = v109;
          sub_100721D04(v104, type metadata accessor for BeaconEstimatedLocation);
          v111 = sub_1000136BC(v108, v110, &v136);

          *(v106 + 14) = v111;
          *(v106 + 22) = 2160;
          *(v106 + 24) = 1752392040;
          *(v106 + 32) = 2081;
          v113 = v138;
          v112 = v139;
          sub_1000035D0(v137, v138);
          v114 = v128;
          (*(*(*(v112 + 8) + 8) + 32))(v113);
          v115 = dispatch thunk of CustomStringConvertible.description.getter();
          v117 = v116;
          (*(v129 + 8))(v114, v107);
          sub_100007BAC(v137);
          v118 = sub_1000136BC(v115, v117, &v136);

          *(v106 + 34) = v118;
          *(v106 + 42) = 2082;
          v135 = v30;
          swift_errorRetain();
          v119 = String.init<A>(describing:)();
          v121 = sub_1000136BC(v119, v120, &v136);

          *(v106 + 44) = v121;
          _os_log_impl(&_mh_execute_header, v34, v105, "Failed to save LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s: %{public}s.", v106, 0x34u);
          swift_arrayDestroy();
          goto LABEL_22;
        }

        v122 = v104;
      }
    }

    else
    {
      if (qword_101694B80 != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      sub_1000076D4(v84, qword_10177B7F8);
      sub_100721C9C(v133, v10, type metadata accessor for BeaconEstimatedLocation);
      sub_10001F280(v134, v137);
      swift_errorRetain();
      v34 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v85))
      {
        v86 = swift_slowAlloc();
        v134 = v31;
        v87 = v86;
        v136 = swift_slowAlloc();
        *v87 = 141559043;
        *(v87 + 4) = 1752392040;
        *(v87 + 12) = 2081;
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v88 = v130;
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        sub_100721D04(v10, type metadata accessor for BeaconEstimatedLocation);
        v92 = sub_1000136BC(v89, v91, &v136);

        *(v87 + 14) = v92;
        *(v87 + 22) = 2160;
        *(v87 + 24) = 1752392040;
        *(v87 + 32) = 2081;
        v94 = v138;
        v93 = v139;
        sub_1000035D0(v137, v138);
        v95 = v128;
        (*(*(*(v93 + 8) + 8) + 32))(v94);
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v97;
        (*(v129 + 8))(v95, v88);
        sub_100007BAC(v137);
        v99 = sub_1000136BC(v96, v98, &v136);

        *(v87 + 34) = v99;
        *(v87 + 42) = 2082;
        v135 = v30;
        swift_errorRetain();
        v100 = String.init<A>(describing:)();
        v102 = sub_1000136BC(v100, v101, &v136);

        *(v87 + 44) = v102;
        _os_log_impl(&_mh_execute_header, v34, v85, "Failed to save LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s: %{public}s.", v87, 0x34u);
        swift_arrayDestroy();

LABEL_23:

        return;
      }

      v122 = v10;
    }

    sub_100721D04(v122, type metadata accessor for BeaconEstimatedLocation);
    sub_100007BAC(v137);
  }

  else
  {
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1000076D4(v50, qword_10177B7F8);
    v51 = v133;
    sub_100721C9C(v133, v26, type metadata accessor for BeaconEstimatedLocation);
    sub_10001F280(v134, v137);
    v52 = v24;
    sub_100721C9C(v51, v24, type metadata accessor for BeaconEstimatedLocation);
    v53 = v21;
    sub_100721C9C(v51, v21, type metadata accessor for BeaconEstimatedLocation);
    v54 = v131;
    sub_100721C9C(v51, v131, type metadata accessor for BeaconEstimatedLocation);
    v55 = v51;
    v56 = v132;
    sub_100721C9C(v55, v132, type metadata accessor for BeaconEstimatedLocation);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v136 = v134;
      *v59 = 141560067;
      *(v59 + 4) = 1752392040;
      *(v59 + 12) = 2081;
      v60 = v127;
      LODWORD(v133) = v58;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v61 = v130;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v124 = v53;
      v125 = v57;
      v64 = v63;
      sub_100721D04(v26, type metadata accessor for BeaconEstimatedLocation);
      v65 = sub_1000136BC(v62, v64, &v136);

      *(v59 + 14) = v65;
      *(v59 + 22) = 2160;
      *(v59 + 24) = 1752392040;
      *(v59 + 32) = 2081;
      v67 = v138;
      v66 = v139;
      sub_1000035D0(v137, v138);
      v68 = v128;
      (*(*(*(v66 + 8) + 8) + 32))(v67);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      (*(v129 + 8))(v68, v61);
      sub_100007BAC(v137);
      v72 = sub_1000136BC(v69, v71, &v136);

      *(v59 + 34) = v72;
      *(v59 + 42) = 2082;
      v73 = sub_100013454(v126);
      v75 = sub_1000136BC(v73, v74, &v136);

      *(v59 + 44) = v75;
      *(v59 + 52) = 2082;
      type metadata accessor for Date();
      sub_100003E8C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      sub_100721D04(v52, type metadata accessor for BeaconEstimatedLocation);
      v79 = sub_1000136BC(v76, v78, &v136);

      *(v59 + 54) = v79;
      *(v59 + 62) = 2049;
      v80 = *(v124 + v60[7]);
      sub_100721D04(v124, type metadata accessor for BeaconEstimatedLocation);
      *(v59 + 64) = v80;
      *(v59 + 72) = 2049;
      v81 = *(v131 + v60[8]);
      sub_100721D04(v131, type metadata accessor for BeaconEstimatedLocation);
      *(v59 + 74) = v81;
      *(v59 + 82) = 2050;
      v82 = *(v132 + v60[9]);
      sub_100721D04(v132, type metadata accessor for BeaconEstimatedLocation);
      *(v59 + 84) = v82;
      v83 = v125;
      _os_log_impl(&_mh_execute_header, v125, v133, "Saved LKL LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s, source: %{public}s, timestamp: %{public}s, lat: %{private}f, lon: %{private}f, acc: %{public}f.", v59, 0x5Cu);
      swift_arrayDestroy();
    }

    else
    {

      sub_100721D04(v56, type metadata accessor for BeaconEstimatedLocation);
      sub_100721D04(v54, type metadata accessor for BeaconEstimatedLocation);
      sub_100721D04(v53, type metadata accessor for BeaconEstimatedLocation);
      sub_100721D04(v24, type metadata accessor for BeaconEstimatedLocation);
      sub_100721D04(v26, type metadata accessor for BeaconEstimatedLocation);
      sub_100007BAC(v137);
    }

    sub_10000B3A8(v29, &qword_10169F438, &unk_1013B3300);
  }
}

uint64_t sub_1006CFAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v35 = a7;
  v33 = a5;
  v34 = a6;
  v31 = a1;
  v32 = a4;
  v29 = a2;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a2 + 48);
  (*(v12 + 16))(v14, a3, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v15, v14, v11);
  v20 = v31;
  *(v19 + v16) = v32;
  *(v19 + v17) = v29;
  *(v19 + v18) = v20;
  v21 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = v34;
  *v21 = v33;
  *(v21 + 8) = v22;
  *(v21 + 16) = v35;
  aBlock[4] = sub_1006E9DB0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162DA00;
  v23 = _Block_copy(aBlock);

  v24 = v30;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v25 = v37;
  v26 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v41 + 8))(v25, v26);
  (*(v38 + 8))(v24, v40);
}

void sub_1006CFF0C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, int a7)
{
  v102 = a7;
  v117 = a3;
  v118 = a5;
  v112 = a4;
  v95 = type metadata accessor for DispatchWorkItemFlags();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DispatchQoS();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DispatchPredicate();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = (&v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v101);
  v107 = &v86 - v13;
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v14 - 8);
  v111 = &v86 - v15;
  v16 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v16 - 8);
  v116 = &v86 - v17;
  v18 = type metadata accessor for OwnedBeaconRecord(0);
  v109 = *(v18 - 8);
  v110 = v18;
  __chkstk_darwin(v18);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v21 - 8);
  v115 = (&v86 - v22);
  v23 = type metadata accessor for OwnedBeaconGroup(0);
  v113 = *(v23 - 8);
  v114 = v23;
  __chkstk_darwin(v23);
  v108 = (&v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v100 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v86 - v29;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_1000076D4(v31, qword_10177B7F8);
  v33 = *(v26 + 16);
  v97 = v26 + 16;
  v96 = v33;
  v33(v30, a1, v25);
  v99 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v106 = v26;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v89 = a6;
    v38 = v37;
    v87 = swift_slowAlloc();
    aBlock[0] = v87;
    *v38 = 141558531;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v88 = a1;
    v40 = v20;
    v42 = v41;
    v98 = *(v26 + 8);
    v98(v30, v25);
    v43 = sub_1000136BC(v39, v42, aBlock);
    v20 = v40;
    a1 = v88;

    *(v38 + 14) = v43;
    *(v38 + 22) = 2048;
    *(v38 + 24) = a2;
    _os_log_impl(&_mh_execute_header, v34, v35, "createDuplicateBeacons uuid: %{private,mask.hash}s count:%ld", v38, 0x20u);
    sub_100007BAC(v87);

    a6 = v89;
  }

  else
  {

    v98 = *(v26 + 8);
    v98(v30, v25);
  }

  v44 = v117;
  v45 = *(v117 + 280);
  v46 = v115;
  sub_100AC53EC(a1, v115);
  v47 = (*(v113 + 48))(v46, 1, v114);
  v48 = v116;
  if (v47 != 1)
  {
    v61 = v108;
    sub_10002AB74(v46, v108, type metadata accessor for OwnedBeaconGroup);
    v62 = swift_allocObject();
    v63 = v118;
    v62[2] = v112;
    v62[3] = v63;
    v62[4] = a6;

    sub_1006D0E24(v61, a2, sub_100721F2C, v62);

    sub_100721D04(v61, type metadata accessor for OwnedBeaconGroup);
    return;
  }

  sub_10000B3A8(v46, &unk_1016AF8B0, &unk_1013A0700);
  sub_100AA33AC(a1, v48);
  if ((*(v109 + 48))(v48, 1, v110) == 1)
  {
    v49 = v118;
    sub_10000B3A8(v48, &unk_1016A9A20, &qword_10138B280);
    v50 = v100;
    v96(v100, a1, v25);
    v51 = v25;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v50;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock[0] = v56;
      *v55 = 141558275;
      *(v55 + 4) = 1752392040;
      *(v55 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v98(v54, v51);
      v60 = sub_1000136BC(v57, v59, aBlock);

      *(v55 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v52, v53, "No beaconGroup or beacon found for %{private,mask.hash}s", v55, 0x16u);
      sub_100007BAC(v56);
    }

    else
    {

      v98(v50, v51);
    }

    type metadata accessor for SPOwnerSessionError(0);
    v120 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v65 = aBlock[0];
    v49(aBlock[0]);

    return;
  }

  sub_10002AB74(v48, v20, type metadata accessor for OwnedBeaconRecord);
  v86 = v20;
  if (v102)
  {
    v64 = (*(v106 + 56))(v111, 1, 1, v25);
  }

  else
  {
    v64 = sub_1000D2A70(&v20[*(v110 + 28)], v111, &qword_1016980D0, &unk_10138F3B0);
  }

  v66 = v107;
  __chkstk_darwin(v64);
  *(&v86 - 2) = v45;
  *(&v86 - 1) = a1;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v67 = swift_allocObject();
  v68 = v118;
  *(v67 + 2) = v112;
  *(v67 + 3) = v68;
  *(v67 + 4) = a6;
  v69 = *(v44 + 48);
  v70 = v103;
  *v103 = v69;
  v71 = v104;
  v72 = v105;
  (*(v104 + 104))(v70, enum case for DispatchPredicate.onQueue(_:), v105);

  v73 = v69;
  LOBYTE(v69) = _dispatchPreconditionTest(_:)();
  (*(v71 + 8))(v70, v72);
  if ((v69 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v116 = v67;
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  v75 = dispatch_group_create();
  if (a2 < 0)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v76 = v75;
  v118 = v73;
  v77 = v111;
  for (i = v86; a2; --a2)
  {
    dispatch_group_enter(v76);
    v79 = swift_allocObject();
    *(v79 + 16) = v76;
    *(v79 + 24) = v74;

    v80 = v76;
    sub_1006D4004(i, v66, v77, sub_1006FE234, v79);
  }

  v81 = swift_allocObject();
  v81[2] = v74;
  v81[3] = sub_1006FE20C;
  v81[4] = v116;
  v81[5] = v44;
  aBlock[4] = sub_1006FE23C;
  aBlock[5] = v81;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162DAC8;
  v82 = _Block_copy(aBlock);

  v83 = v90;
  static DispatchQoS.unspecified.getter();
  v120 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v84 = v92;
  v85 = v95;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v82);

  (*(v94 + 8))(v84, v85);
  (*(v91 + 8))(v83, v93);
  sub_10000B3A8(v107, &unk_1016B29E0, &unk_1013B70E0);
  sub_10000B3A8(v111, &qword_1016980D0, &unk_10138F3B0);
  sub_100721D04(i, type metadata accessor for OwnedBeaconRecord);
}

void sub_1006D0E24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a4;
  v72 = a3;
  v88 = a1;
  v71 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v93 = *(v83 - 8);
  __chkstk_darwin(v83);
  v69 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  v68 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v67 = v9;
  v82 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v10 - 8);
  v96 = &v59 - v11;
  v12 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v59 - v13;
  v61 = sub_1000BC4D4(&qword_1016A7800, &qword_1013B66B0);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v16 = &v59 - v15;
  isa = type metadata accessor for UUID();
  v84 = *(isa - 1);
  v17 = *(v84 + 64);
  v18 = __chkstk_darwin(isa);
  v81 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v94 = &v59 - v19;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v4 + 48);
  *v23 = v24;
  (*(v21 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v20);
  v80 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v85 = dispatch_group_create();
  if (a2 < 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  if (a2)
  {
    v92 = v25;
    v26 = 0;
    v27 = 0;
    v87 = (v84 + 8);
    v65 = (v84 + 16);
    v91 = (v84 + 56);
    v64 = v17 + 7;
    v63 = v84 + 32;
    v79 = &v101;
    v78 = v97 + 1;
    v77 = v93 + 1;
    v29 = v94;
    v28 = isa;
    v66 = a2;
    v62 = v16;
    do
    {
      UUID.init()();
      v94 = swift_allocObject();
      *(v94 + 2) = _swiftEmptyDictionarySingleton;
      v30 = dispatch_group_create();
      sub_1006D2E40(v88);
      if (v27)
      {
        (*v87)(v29, v28);

        v27 = 0;
      }

      else
      {
        v75 = 0;
        v76 = v26;
        v32 = v28;
        v93 = v30;
        v33 = v29;
        v86 = v31;
        v34 = *(v31 + 16);
        v35 = v96;
        v36 = v16;
        v37 = v4;
        v38 = v65;
        v39 = v91;
        if (v34)
        {
          v90 = *(v61 + 48);
          v40 = v86 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
          v89 = *(v60 + 72);
          do
          {
            v97 = v40;
            isa = v34;
            sub_1000D2A70(v40, v36, &qword_1016A7800, &qword_1013B66B0);
            v41 = v93;
            dispatch_group_enter(v93);
            sub_10002AB74(v90 + v36, v14, type metadata accessor for BeaconNamingRecord);
            v42 = type metadata accessor for BeaconNamingRecord(0);
            (*(*(v42 - 8) + 56))(v14, 0, 1, v42);
            (*v38)(v35, v33, v32);
            (*v39)(v35, 0, 1, v32);
            v43 = swift_allocObject();
            v43[2] = v41;
            v43[3] = v37;
            v44 = v92;
            v43[4] = v94;
            v43[5] = v44;
            v45 = v41;

            sub_1006D4004(v36, v14, v96, sub_1006FE270, v43);
            v39 = v91;
            v35 = v96;

            sub_100721D04(v36, type metadata accessor for OwnedBeaconRecord);
            sub_10000B3A8(v35, &qword_1016980D0, &unk_10138F3B0);
            sub_10000B3A8(v14, &unk_1016B29E0, &unk_1013B70E0);
            v40 = v97 + v89;
            v34 = isa - 1;
          }

          while (isa != 1);
        }

        sub_100721C9C(v88, v82, type metadata accessor for OwnedBeaconGroup);
        v46 = v84;
        (*(v84 + 16))(v81, v33, v32);
        v47 = (*(v68 + 80) + 40) & ~*(v68 + 80);
        v48 = (v67 + *(v46 + 80) + v47) & ~*(v46 + 80);
        v49 = (v64 + v48) & 0xFFFFFFFFFFFFFFF8;
        v50 = swift_allocObject();
        v51 = v86;
        *(v50 + 2) = v94;
        *(v50 + 3) = v51;
        *(v50 + 4) = v85;
        sub_10002AB74(v82, &v50[v47], type metadata accessor for OwnedBeaconGroup);
        (*(v46 + 32))(&v50[v48], v81, v32);
        *&v50[v49] = v37;
        *&v50[(v49 + 15) & 0xFFFFFFFFFFFFFFF8] = v92;
        v103 = sub_1006FE27C;
        v104 = v50;
        aBlock = _NSConcreteStackBlock;
        v100 = 1107296256;
        v101 = sub_100006684;
        v102 = &unk_10162DB90;
        v52 = _Block_copy(&aBlock);

        v97 = v85;
        v53 = v69;
        static DispatchQoS.unspecified.getter();
        v98 = _swiftEmptyArrayStorage;
        v86 = sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v74 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v89 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v54 = v70;
        v55 = v71;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_group.notify(qos:flags:queue:execute:)();
        _Block_release(v52);
        isa = v78->isa;
        (isa)(v54, v55);
        v90 = v77->isa;
        (v90)(v53, v83);

        v56 = swift_allocObject();
        v57 = v72;
        *(v56 + 2) = v92;
        *(v56 + 3) = v57;
        *(v56 + 4) = v73;
        *(v56 + 5) = v37;
        v103 = sub_1006FE388;
        v104 = v56;
        aBlock = _NSConcreteStackBlock;
        v100 = 1107296256;
        v101 = sub_100006684;
        v102 = &unk_10162DBE0;
        v58 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v98 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_group.notify(qos:flags:queue:execute:)();
        _Block_release(v58);

        (isa)(v54, v55);
        (v90)(v53, v83);
        (*(v84 + 8))(v33, v32);

        v4 = v37;
        a2 = v66;
        v28 = v32;
        v29 = v33;
        v16 = v62;
        v26 = v76;
        v27 = v75;
      }

      ++v26;
    }

    while (v26 != a2);
  }
}

uint64_t sub_1006D1B60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 184) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 48) = v9;
  *(v8 + 56) = *(v9 - 8);
  *(v8 + 64) = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v8 + 96) = v11;
  *v11 = v8;
  v11[1] = sub_1006D1CC0;

  return daemon.getter();
}

uint64_t sub_1006D1CC0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for PencilPairingService(0);
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&qword_10169A090, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v3 = v9;
  v3[1] = sub_1006D1E9C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1006D1E9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_1006D2D98;
  }

  else
  {

    v4 = sub_1006D1FB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006D1FB8()
{
  v1 = *(v0 + 184);
  if (v1 > 3)
  {
    if (*(v0 + 184) > 5u)
    {
      if (v1 != 6)
      {
LABEL_20:
        sub_1003FD838();
        v15 = swift_allocError();
        *v16 = 1;
        swift_willThrow();

        v17 = *(v0 + 32);
        swift_errorRetain();
        v17(v15);

        v18 = *(v0 + 8);

        return v18();
      }

      (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v12 = swift_task_alloc();
      *(v0 + 176) = v12;
      *v12 = v0;
      v12[1] = sub_1006D2C40;
      v13 = *(v0 + 88);
      v14 = *(v0 + 24);

      return sub_100D739FC(v13, v14);
    }

    else if (v1 == 4)
    {
      (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v6 = swift_task_alloc();
      *(v0 + 160) = v6;
      *v6 = v0;
      v6[1] = sub_1006D2908;
      v7 = *(v0 + 88);
      v8 = *(v0 + 24);

      return sub_100D71C7C(v7, v8);
    }

    else
    {
      (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v19 = swift_task_alloc();
      *(v0 + 168) = v19;
      *v19 = v0;
      v19[1] = sub_1006D2AE8;
      v20 = *(v0 + 88);
      v21 = *(v0 + 24);

      return sub_100D7219C(v20, v21);
    }
  }

  else
  {
    if (*(v0 + 184) <= 1u)
    {
      if (*(v0 + 184))
      {
        (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
        type metadata accessor for Peripheral();
        Identifier.init(_:)();
        v2 = swift_task_alloc();
        *(v0 + 136) = v2;
        *v2 = v0;
        v2[1] = sub_1006D2500;
        v3 = *(v0 + 88);
        v4 = *(v0 + 24);

        return sub_100D70938(v3, v4);
      }

      goto LABEL_20;
    }

    if (v1 == 2)
    {
      (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v9 = swift_task_alloc();
      *(v0 + 144) = v9;
      *v9 = v0;
      v9[1] = sub_1006D2658;
      v10 = *(v0 + 88);
      v11 = *(v0 + 24);

      return sub_100D70FF8(v10, v11);
    }

    else
    {
      (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v22 = swift_task_alloc();
      *(v0 + 152) = v22;
      *v22 = v0;
      v22[1] = sub_1006D27B0;
      v23 = *(v0 + 88);
      v24 = *(v0 + 24);

      return sub_100D71518(v23, v24);
    }
  }
}

uint64_t sub_1006D2500()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100721E60, 0, 0);
}

uint64_t sub_1006D2658()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100721E60, 0, 0);
}

uint64_t sub_1006D27B0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100721E60, 0, 0);
}

uint64_t sub_1006D2908()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1006D2A60, 0, 0);
}

uint64_t sub_1006D2A60()
{
  (*(v0 + 32))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006D2AE8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100721E60, 0, 0);
}

uint64_t sub_1006D2C40()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100721E60, 0, 0);
}

uint64_t sub_1006D2D98()
{

  v1 = v0[16];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

void sub_1006D2E40(void *a1)
{
  v108 = a1;
  v102 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v102);
  v101 = &v75 - v2;
  v100 = type metadata accessor for BeaconNamingRecord(0);
  v77 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016A7800, &qword_1013B66B0);
  v96 = *(v4 - 8);
  v97 = v4;
  __chkstk_darwin(v4);
  v6 = &v75 - v5;
  v92 = type metadata accessor for SystemInfo.DeviceLockState();
  v106 = *(v92 - 8);
  v7 = __chkstk_darwin(v92);
  v91 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v90 = &v75 - v9;
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v10 - 8);
  v89 = &v75 - v11;
  v110 = type metadata accessor for OwnedBeaconRecord(0);
  v12 = *(v110 - 8);
  v13 = __chkstk_darwin(v110);
  v99 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v75 - v15;
  v109 = type metadata accessor for UUID();
  v16 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = v1;
  v22 = *(v1 + 48);
  *v21 = v22;
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v21, v18);
  if (v24)
  {
    v95 = v6;
    sub_100519FB0();
    v26 = v25 + 56;
    v27 = 1 << *(v25 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v25 + 56);
    v30 = (v27 + 63) >> 6;
    v85 = v16 + 16;
    v84 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v83 = (v106 + 104);
    v82 = (v106 + 8);
    v78 = (v12 + 56);
    v81 = (v16 + 8);
    v104 = v12;
    v80 = (v12 + 48);
    v103 = v25;

    v31 = 0;
    v79 = xmmword_101385D80;
    v108 = _swiftEmptyArrayStorage;
    v87 = v26;
    v86 = v30;
    v88 = v16;
LABEL_5:
    v32 = v31;
    v33 = v107;
    if (!v29)
    {
      goto LABEL_7;
    }

    do
    {
      v31 = v32;
LABEL_10:
      (*(v16 + 16))(v33, *(v103 + 48) + *(v16 + 72) * (__clz(__rbit64(v29)) | (v31 << 6)), v109);
      v106 = *(v93 + 280);
      v34 = static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v35 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v36 = swift_allocObject();
      *(v36 + 16) = v79;
      v37 = UUID.uuidString.getter();
      v39 = v38;
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = sub_100008C00();
      *(v36 + 32) = v37;
      *(v36 + 40) = v39;
      v105 = v35;
      os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "ownedBeaconRecord(for uuid: %@)", 31, 2, v36);

      v40 = v90;
      static SystemInfo.lockState.getter();
      v41 = v91;
      v42 = v92;
      (*v83)(v91, v84, v92);
      sub_100003E8C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      LOBYTE(v37) = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *v82;
      (*v82)(v41, v42);
      v43(v40, v42);
      if (v37)
      {
        v44 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v105, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
        v45 = v89;
        v46 = v110;
        (*v78)(v89, 1, 1, v110);
        v33 = v107;
      }

      else
      {
        v47 = sub_100025044();
        __chkstk_darwin(v47);
        v48 = v107;
        *(&v75 - 2) = v107;
        v45 = v89;
        v49 = v94;
        sub_1012BBBD0(sub_100406F84, v47, v89);
        v94 = v49;

        v46 = v110;
        v33 = v48;
      }

      v29 &= v29 - 1;
      (*v81)(v33, v109);
      if ((*v80)(v45, 1, v46) != 1)
      {
        sub_10002AB74(v45, v76, type metadata accessor for OwnedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_100A5C050(0, v108[2] + 1, 1, v108);
        }

        v30 = v86;
        v51 = v108[2];
        v50 = v108[3];
        if (v51 >= v50 >> 1)
        {
          v108 = sub_100A5C050((v50 > 1), v51 + 1, 1, v108);
        }

        v52 = v108;
        v108[2] = v51 + 1;
        sub_10002AB74(v76, v52 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v51, type metadata accessor for OwnedBeaconRecord);
        v16 = v88;
        v26 = v87;
        goto LABEL_5;
      }

      sub_10000B3A8(v45, &unk_1016A9A20, &qword_10138B280);
      v32 = v31;
      v16 = v88;
      v26 = v87;
      v30 = v86;
    }

    while (v29);
    while (1)
    {
LABEL_7:
      v31 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v31 >= v30)
      {
        break;
      }

      v29 = *(v26 + 8 * v31);
      ++v32;
      if (v29)
      {
        goto LABEL_10;
      }
    }

    v53 = v103;

    v54 = v108;
    v55 = v108[2];
    v56 = *(v53 + 16);

    if (v55 != v56)
    {

      type metadata accessor for SPOwnerSessionError(0);
      v112 = 2;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      return;
    }

    if (!v55)
    {
LABEL_31:

      return;
    }

    v113 = _swiftEmptyArrayStorage;
    sub_101124FB4(0, v55, 0);
    v57 = 0;
    v58 = v113;
    v59 = v94;
    v109 = *(v93 + 280);
    v60 = v104;
    v106 = v54 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v107 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer;
    v61 = (v77 + 48);
    while (v57 < v54[2])
    {
      v62 = v99;
      v63 = sub_100721C9C(&v106[*(v60 + 72) * v57], v99, type metadata accessor for OwnedBeaconRecord);
      __chkstk_darwin(v63);
      *(&v75 - 2) = v65;
      *(&v75 - 1) = v64;
      v66 = v59;
      v67 = v101;
      QueueSynchronizer.conditionalSync<A>(_:)();
      if ((*v61)(v67, 1, v100) == 1)
      {

        sub_10000B3A8(v67, &unk_1016B29E0, &unk_1013B70E0);
        type metadata accessor for SPOwnerSessionError(0);
        v111 = 2;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
        sub_100721D04(v62, type metadata accessor for OwnedBeaconRecord);

        return;
      }

      v68 = v67;
      v69 = v98;
      sub_10002AB74(v68, v98, type metadata accessor for BeaconNamingRecord);
      v70 = *(v97 + 48);
      v71 = v62;
      v72 = v95;
      sub_10002AB74(v71, v95, type metadata accessor for OwnedBeaconRecord);
      sub_10002AB74(v69, v72 + v70, type metadata accessor for BeaconNamingRecord);
      v113 = v58;
      v74 = v58[2];
      v73 = v58[3];
      if (v74 >= v73 >> 1)
      {
        sub_101124FB4((v73 > 1), v74 + 1, 1);
        v58 = v113;
      }

      ++v57;
      v58[2] = v74 + 1;
      sub_1000D2AD8(v72, v58 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v74, &qword_1016A7800, &qword_1013B66B0);
      v59 = v66;
      v60 = v104;
      v54 = v108;
      if (v55 == v57)
      {
        goto LABEL_31;
      }
    }

LABEL_36:
    __break(1u);
  }

  __break(1u);
}

void sub_1006D3BEC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30[0] = a2;
  v7 = sub_1000BC4D4(&qword_101699858, &qword_101391FF0);
  __chkstk_darwin(v7 - 8);
  v9 = v30 - v8;
  v10 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v10);
  v12 = (v30 - v11);
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v13);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, v12, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v12;
    v31 = *v12;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_10002AB74(v12, v15, type metadata accessor for OwnedBeaconRecord);
    v17 = sub_100717160(v15);
    if (v18 >> 60 != 15)
    {
      v19 = v17;
      v20 = v18;
      v21 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v22 = v21[12];
      v23 = v21[16];
      v24 = &v9[v21[20]];
      v25 = &v9[v21[24]];
      v26 = *(v13 + 20);
      v27 = type metadata accessor for UUID();
      (*(*(v27 - 8) + 16))(v9, &v15[v26], v27);
      v28 = type metadata accessor for MACAddress();
      (*(*(v28 - 8) + 56))(&v9[v22], 1, 1, v28);
      *&v9[v23] = xmmword_10138BBF0;
      *v24 = 0;
      v24[8] = 1;
      *v25 = 256;
      v25[2] = 3;
      v29 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
      swift_beginAccess();
      sub_1001DD6C0(v9, v19, v20);
      swift_endAccess();
      sub_100721D04(v15, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_7;
    }

    type metadata accessor for SPOwnerSessionError(0);
    v30[2] = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = v31;
    swift_willThrow();
    sub_100721D04(v15, type metadata accessor for OwnedBeaconRecord);
  }

  swift_beginAccess();
  *(a5 + 16) = v16;

LABEL_7:
  dispatch_group_leave(v30[0]);
}

uint64_t sub_1006D4004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v129 = a4;
  v130 = a5;
  v120 = a3;
  v127 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v134 = *(v7 - 8);
  v135 = v7;
  __chkstk_darwin(v7);
  v133 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v132 = *(v9 - 8);
  __chkstk_darwin(v9);
  v131 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v11 - 8);
  v125 = &v106 - v12;
  v126 = type metadata accessor for BeaconNamingRecord(0);
  v124 = *(v126 - 8);
  v13 = __chkstk_darwin(v126);
  v110 = (&v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v109 = &v106 - v15;
  v139 = type metadata accessor for UUID();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OwnedBeaconRecord(0);
  v18 = *(v17 - 1);
  v19 = __chkstk_darwin(v17);
  v122 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v20;
  __chkstk_darwin(v19);
  v22 = (&v106 - v21);
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = (&v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = v5;
  v27 = v5[6];
  *v26 = v27;
  (*(v24 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v23);
  v128 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  result = (*(v24 + 8))(v26, v23);
  if (v27)
  {
    v119 = v9;
    v117 = dispatch_group_create();
    sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
    v118 = swift_allocBox();
    v29 = *(v18 + 56);
    v116 = v18 + 56;
    v29(v30, 1, 1, v17);
    v136 = swift_allocObject();
    *(v136 + 16) = 0;
    v115 = v17[5];
    UUID.init()();
    sub_100721C9C(a1 + v17[6], v22 + v17[6], type metadata accessor for StableIdentifier);
    sub_1000D2A70(v120, v22 + v17[7], &qword_1016980D0, &unk_10138F3B0);
    v31 = v17[8];
    v32 = type metadata accessor for Date();
    (*(*(v32 - 8) + 16))(v22 + v31, a1 + v31, v32);
    v33 = v17[9];
    v34 = *(a1 + v33);
    v35 = *(a1 + v33 + 8);
    v36 = (a1 + v17[10]);
    v38 = *v36;
    v37 = v36[1];
    v39 = v17[12];
    v40 = (a1 + v17[11]);
    v42 = *v40;
    v111 = v40[1];
    v41 = v111;
    v43 = *(a1 + v39);
    v44 = *(a1 + v39 + 8);
    v45 = v17[14];
    v46 = (a1 + v17[13]);
    v48 = v46[1];
    v114 = *v46;
    v47 = v114;
    v113 = v48;
    v49 = a1 + v45;
    v51 = *(a1 + v45);
    v120 = *(v49 + 8);
    v50 = v120;
    v52 = v17[16];
    v53 = (a1 + v17[15]);
    v55 = *v53;
    v112 = v53[1];
    v54 = v112;
    v56 = *(a1 + v52);
    v57 = *(a1 + v17[17]);
    v58 = *(a1 + v17[18]);
    v59 = *(a1 + v17[19]);
    v60 = *(a1 + v17[20]);
    v108 = xmmword_10138C660;
    *v22 = xmmword_10138C660;
    v61 = (v22 + v33);
    *v61 = v34;
    v61[1] = v35;
    v62 = (v22 + v17[10]);
    *v62 = v38;
    v62[1] = v37;
    v63 = (v22 + v17[11]);
    *v63 = v42;
    v63[1] = v41;
    v64 = (v22 + v17[12]);
    *v64 = v43;
    v64[1] = v44;
    v65 = (v22 + v17[13]);
    *v65 = v47;
    v65[1] = v48;
    v66 = (v22 + v17[14]);
    *v66 = v51;
    v66[1] = v50;
    v67 = (v22 + v17[15]);
    *v67 = v55;
    v67[1] = v54;
    *(v22 + v17[16]) = v56;
    *(v22 + v17[17]) = v57;
    *(v22 + v17[18]) = v58;
    *(v22 + v17[19]) = v59;
    *(v22 + v17[20]) = v60;
    v68 = *(v137 + 16);
    v69 = v22 + v115;
    v115 = v137 + 16;
    v107 = v68;
    v68(v138, v69, v139);
    sub_100017D5C(v34, v35);
    sub_10002E98C(v38, v37);
    sub_10002E98C(v42, v111);
    sub_100017D5C(v43, v44);
    sub_100017D5C(v114, v113);

    v70 = v117;
    dispatch_group_enter(v117);
    v71 = v123[35];
    v72 = v122;
    sub_100721C9C(a1, v122, type metadata accessor for OwnedBeaconRecord);
    v73 = (*(v116 + 24) + 24) & ~*(v116 + 24);
    v74 = (v121 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    *(v75 + 16) = v70;
    v76 = v75 + v73;
    v77 = v136;
    sub_10002AB74(v72, v76, type metadata accessor for OwnedBeaconRecord);
    v78 = v118;
    *(v75 + v74) = v118;
    *(v75 + ((v74 + 15) & 0xFFFFFFFFFFFFFFF8)) = v77;
    v79 = v70;
    v80 = v78;

    sub_1006DDE30(v22, 0, sub_100717498, v75);

    v81 = v125;
    sub_1000D2A70(v127, v125, &unk_1016B29E0, &unk_1013B70E0);
    v82 = v126;
    v83 = (*(v124 + 48))(v81, 1, v126);
    v123 = v79;
    if (v83 == 1)
    {
      sub_10000B3A8(v81, &unk_1016B29E0, &unk_1013B70E0);
    }

    else
    {
      v84 = v109;
      sub_10002AB74(v81, v109, type metadata accessor for BeaconNamingRecord);
      v85 = v110;
      UUID.init()();
      v107(v85 + v82[6], v138, v139);
      v86 = v82[7];
      v87 = *(v84 + v86);
      v88 = (v84 + v82[8]);
      v89 = *v88;
      v90 = v88[1];
      v91 = (v84 + v82[9]);
      v93 = *v91;
      v92 = v91[1];
      *v85 = v108;
      *(v85 + v86) = v87;
      v94 = (v85 + v82[8]);
      *v94 = v89;
      v94[1] = v90;
      v95 = (v85 + v82[9]);
      *v95 = v93;
      v95[1] = v92;

      dispatch_group_enter(v79);
      v96 = v79;

      sub_100B12C8C(v85, 0, v71, v96, v77);

      sub_100721D04(v85, type metadata accessor for BeaconNamingRecord);
      sub_100721D04(v84, type metadata accessor for BeaconNamingRecord);
    }

    v97 = v134;
    v98 = swift_allocObject();
    v99 = v129;
    v100 = v130;
    v98[2] = v80;
    v98[3] = v99;
    v98[4] = v100;
    v98[5] = v77;
    aBlock[4] = sub_10071758C;
    aBlock[5] = v98;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10162DCF8;
    v101 = _Block_copy(aBlock);

    v102 = v131;
    static DispatchQoS.unspecified.getter();
    v140 = _swiftEmptyArrayStorage;
    sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v103 = v133;
    v104 = v135;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v105 = v123;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v101);

    (*(v97 + 8))(v103, v104);
    (*(v132 + 8))(v102, v119);
    (*(v137 + 8))(v138, v139);
    sub_100721D04(v22, type metadata accessor for OwnedBeaconRecord);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006D4BC8(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v13 = type metadata accessor for OwnedBeaconGroup(0);
  v37 = *(v13 - 1);
  v14 = *(v37 + 64);
  v15 = __chkstk_darwin(v13);
  v16 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v34[-v17];
  swift_beginAccess();
  if (*(*(a1 + 16) + 16) == *(a2 + 16))
  {
    dispatch_group_enter(a3);
    v36 = *(a4 + 16);
    v35 = *(a4 + 24);
    v19 = v13[6];
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 16))(&v18[v19], a5, v20);
    v21 = v13[7];
    v22 = type metadata accessor for MACAddress();
    (*(*(v22 - 8) + 16))(&v18[v21], a4 + v21, v22);
    LOBYTE(v21) = *(a4 + v13[8]);
    v23 = (a4 + v13[9]);
    v25 = *v23;
    v24 = v23[1];
    swift_beginAccess();
    v26 = *(a1 + 16);
    *v18 = xmmword_10138C660;
    *(v18 + 2) = v36;
    v18[24] = v35;
    v18[v13[8]] = v21;
    v27 = &v18[v13[9]];
    *v27 = v25;
    v27[1] = v24;
    *&v18[v13[10]] = v26;
    sub_100721C9C(v18, v16, type metadata accessor for OwnedBeaconGroup);
    v28 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = a3;
    sub_10002AB74(v16, v30 + v28, type metadata accessor for OwnedBeaconGroup);
    *(v30 + v29) = a7;

    v31 = a3;

    sub_1006DD0B4(v18, 0, sub_1006FE3BC, v30);

    return sub_100721D04(v18, type metadata accessor for OwnedBeaconGroup);
  }

  else
  {
    type metadata accessor for SPOwnerSessionError(0);
    v40 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v33 = v39;
    swift_willThrow();
    swift_beginAccess();
    *(a7 + 16) = v33;
  }
}

void sub_1006D4F68(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v41 = a2;
  v6 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  __chkstk_darwin(v6);
  v8 = &v38[-v7];
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v15 = &v38[-v14];
  __chkstk_darwin(v13);
  v17 = &v38[-v16];
  sub_1000D2A70(a1, v8, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v8;
    v42[0] = *v8;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177B7F8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      v24 = _convertErrorToNSError(_:)();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error creating duplicate OwnerBeaconGroup:%{public}@", v22, 0xCu);
      sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);
    }

    v25 = v40;
    swift_beginAccess();
    *(v25 + 16) = v18;
  }

  else
  {
    sub_10002AB74(v8, v17, type metadata accessor for OwnedBeaconGroup);
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177B7F8);
    sub_100721C9C(a3, v15, type metadata accessor for OwnedBeaconGroup);
    sub_100721C9C(v17, v12, type metadata accessor for OwnedBeaconGroup);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42[0] = v40;
      *v29 = 136446466;
      type metadata accessor for UUID();
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v39 = v28;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_100721D04(v15, type metadata accessor for OwnedBeaconGroup);
      v33 = sub_1000136BC(v30, v32, v42);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_100721D04(v12, type metadata accessor for OwnedBeaconGroup);
      v37 = sub_1000136BC(v34, v36, v42);

      *(v29 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v27, v39, "Duplicated group %{public}s -> %{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100721D04(v12, type metadata accessor for OwnedBeaconGroup);
      sub_100721D04(v15, type metadata accessor for OwnedBeaconGroup);
    }

    sub_100721D04(v17, type metadata accessor for OwnedBeaconGroup);
  }

  dispatch_group_leave(v41);
}

void sub_1006D54D0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v50 = a3;
  v51 = a5;
  v7 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v7 - 8);
  v54 = &v46[-v8];
  v9 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v9);
  v11 = &v46[-v10];
  v12 = type metadata accessor for OwnedBeaconRecord(0);
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v18 = &v46[-v17];
  __chkstk_darwin(v16);
  v20 = &v46[-v19];
  v21 = swift_projectBox();
  sub_1000D2A70(a1, v11, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = a2;
    v23 = *v11;
    v55[0] = *v11;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177B7F8);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = _convertErrorToNSError(_:)();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error creating duplicate OwnedBeaconRecord:%{public}@", v27, 0xCu);
      sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);
    }

    v30 = v51;
    swift_beginAccess();
    v30[2].isa = v23;

    a2 = v22;
  }

  else
  {
    sub_10002AB74(v11, v20, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177B7F8);
    sub_100721C9C(v50, v18, type metadata accessor for OwnedBeaconRecord);
    sub_100721C9C(v20, v15, type metadata accessor for OwnedBeaconRecord);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55[0] = v49;
      *v34 = 136446466;
      v35 = v53;
      v48 = v32;
      type metadata accessor for UUID();
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v50 = v21;
      v47 = v33;
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v51 = a2;
      sub_100721D04(v18, type metadata accessor for OwnedBeaconRecord);
      v39 = sub_1000136BC(v36, v38, v55);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2082;
      v21 = v50;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      a2 = v51;
      sub_100721D04(v15, type metadata accessor for OwnedBeaconRecord);
      v43 = sub_1000136BC(v40, v42, v55);

      *(v34 + 14) = v43;
      v44 = v48;
      _os_log_impl(&_mh_execute_header, v48, v47, "Duplicated %{public}s -> %{public}s", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100721D04(v15, type metadata accessor for OwnedBeaconRecord);
      sub_100721D04(v18, type metadata accessor for OwnedBeaconRecord);
      v35 = v53;
    }

    v45 = v54;
    sub_10002AB74(v20, v54, type metadata accessor for OwnedBeaconRecord);
    (*(v52 + 56))(v45, 0, 1, v35);
    swift_beginAccess();
    sub_10002311C(v45, v21, &unk_1016A9A20, &qword_10138B280);
  }

  dispatch_group_leave(a2);
}

void sub_1006D5B48(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  __chkstk_darwin(v6);
  v8 = (v16 - v7);
  sub_1000D2A70(a1, v16 - v7, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    v16[1] = *v8;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177B7F8);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = _convertErrorToNSError(_:)();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error creating duplicate BeaconNamingRecord:%{public}@", v13, 0xCu);
      sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);
    }

    swift_beginAccess();
    *(a3 + 16) = v9;
  }

  else
  {
    sub_10000B3A8(v8, &qword_1016A7808, &qword_1013D6750);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1006D5D9C(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v21 = a2;
  v4 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v4);
  v6 = (&v19 - v5);
  v7 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for OwnedBeaconRecord(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  swift_beginAccess();
  sub_1000D2A70(v14, v9, &unk_1016A9A20, &qword_10138B280);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000B3A8(v9, &unk_1016A9A20, &qword_10138B280);
    type metadata accessor for SPOwnerSessionError(0);
    v22[3] = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v6 = v22[0];
    swift_storeEnumTagMultiPayload();
    v21(v6);
    return sub_10000B3A8(v6, &unk_1016B15A0, &qword_1013A0900);
  }

  else
  {
    v16 = v21;
    sub_10002AB74(v9, v13, type metadata accessor for OwnedBeaconRecord);
    v17 = v20;
    swift_beginAccess();
    v18 = *(v17 + 16);
    if (v18)
    {
      *v6 = v18;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      swift_errorRetain();
      v16(v6);
    }

    else
    {
      sub_100721C9C(v13, v6, type metadata accessor for OwnedBeaconRecord);
      swift_storeEnumTagMultiPayload();
      v16(v6);
    }

    sub_10000B3A8(v6, &unk_1016B15A0, &qword_1013A0900);
    return sub_100721D04(v13, type metadata accessor for OwnedBeaconRecord);
  }
}

void sub_1006D6124(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v6);
  v8 = (v10 - v7);
  sub_1000D2A70(a1, v10 - v7, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    v10[1] = v9;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_beginAccess();
    *(a3 + 16) = v9;
  }

  else
  {
    sub_10000B3A8(v8, &unk_1016B15A0, &qword_1013A0900);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1006D6264(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v7 = *(a1 + 16);
  if (v7)
  {
    swift_errorRetain();
    a2(v7);
  }

  else
  {
    QueueSynchronizer.conditionalSync<A>(_:)();
    return (a2)(0);
  }
}

uint64_t sub_1006D6324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v6[7] = swift_task_alloc();
  v7 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[11] = v8;
  *v8 = v6;
  v8[1] = sub_1006D6450;

  return daemon.getter();
}

uint64_t sub_1006D6450(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_1006D662C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1006D662C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  if (v1)
  {
    v5 = sub_1006D6C68;
    v6 = 0;
  }

  else
  {

    v5 = sub_1006D6764;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1006D6764()
{
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1006D6804;
  v2 = v0[7];
  v3 = v0[4];

  return sub_100C57B00(v2, v3);
}

uint64_t sub_1006D6804()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1006D6BBC;
  }

  else
  {
    v2 = sub_1006D6918;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006D6918()
{
  v1 = v0[7];
  v2 = (*(v0[9] + 48))(v1, 1, v0[8]);
  v3 = v0[5];
  if (v2 == 1)
  {
    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    type metadata accessor for SPOwnerSessionError(0);
    v0[3] = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v4 = v0[2];
    v3(v4, 1);
  }

  else
  {
    v5 = v0[10];
    sub_10002AB74(v1, v5, type metadata accessor for LocalFindableAccessoryRecord);
    v6 = [objc_allocWithZone(SPPeripheralConnectionMaterial) init];
    type metadata accessor for PeripheralConnectionMaterial(0);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v6 setIrkData:isa];

    v8 = MACAddress.data.getter();
    v10 = v9;
    v11 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v8, v10);
    [v6 setBtAddressData:v11];

    v12 = MACAddress.bluetoothAddressWithType.getter();
    v14 = v13;
    v15 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v12, v14);
    [v6 setBtAddressWithTypeData:v15];

    v3(v6, 0);

    sub_100721D04(v5, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1006D6BBC()
{

  v1 = v0[17];
  v2 = v0[5];
  swift_errorRetain();
  v2(v1, 1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006D6C68()
{

  v1 = v0[15];
  v2 = v0[5];
  swift_errorRetain();
  v2(v1, 1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006D6D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = type metadata accessor for UUID();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v6[13] = swift_task_alloc();
  v9 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[17] = v10;
  *v10 = v6;
  v10[1] = sub_1006D6F04;

  return daemon.getter();
}

uint64_t sub_1006D6F04(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[18] = a1;

  v3 = swift_task_alloc();
  v2[19] = v3;
  v4 = type metadata accessor for Daemon();
  v2[20] = v4;
  v5 = type metadata accessor for CloudStorageService();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[21] = v6;
  v7 = sub_100003E8C(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v3 = v9;
  v3[1] = sub_1006D70E4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1006D70E4(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  if (v1)
  {
    v5 = sub_1006D7C64;
    v6 = 0;
  }

  else
  {

    v5 = sub_1006D721C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1006D721C()
{
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1006D72BC;
  v2 = v0[13];
  v3 = v0[4];

  return sub_100C57B00(v2, v3);
}

uint64_t sub_1006D72BC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1006D75CC;
  }

  else
  {
    v2 = sub_1006D73D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006D73D0()
{
  v1 = v0[13];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    v2 = v0[5];
    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    type metadata accessor for SPOwnerSessionError(0);
    v0[3] = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    v3 = v0[2];
    v2(v3);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_10002AB74(v1, v0[16], type metadata accessor for LocalFindableAccessoryRecord);
    v6 = swift_task_alloc();
    v0[26] = v6;
    *v6 = v0;
    v6[1] = sub_1006D7678;

    return daemon.getter();
  }
}

uint64_t sub_1006D75CC()
{

  (*(v0 + 40))(*(v0 + 200));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006D7678(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 216) = a1;

  v5 = swift_task_alloc();
  *(v3 + 224) = v5;
  v6 = type metadata accessor for PencilPairingService(0);
  v7 = sub_100003E8C(&qword_10169A090, type metadata accessor for PencilPairingService, &unk_1013E8708);
  *v5 = v4;
  v5[1] = sub_1006D782C;
  v8 = *(v2 + 168);
  v9 = *(v2 + 160);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1006D782C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_1006D7D10;
  }

  else
  {
    v4 = sub_1006D7960;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006D7960()
{
  (*(v0[8] + 16))(v0[9], v0[16], v0[7]);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_1006D7A38;
  v2 = v0[12];

  return sub_100D75188(v2, 1);
}

uint64_t sub_1006D7A38()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 256) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1006D7DDC;
  }

  else
  {
    v5 = sub_1006D7BA8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006D7BA8()
{
  v1 = *(v0 + 128);

  sub_100721D04(v1, type metadata accessor for LocalFindableAccessoryRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006D7C64()
{

  (*(v0 + 40))(*(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006D7D10()
{
  v1 = *(v0 + 128);

  sub_100721D04(v1, type metadata accessor for LocalFindableAccessoryRecord);
  (*(v0 + 40))(*(v0 + 240));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006D7DDC()
{
  v1 = *(v0 + 128);

  sub_100721D04(v1, type metadata accessor for LocalFindableAccessoryRecord);
  (*(v0 + 40))(*(v0 + 256));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006D7EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v7[4] = sub_1000BC4D4(&unk_1016A99D0, &unk_1013BB9A0);
  v7[5] = swift_task_alloc();
  type metadata accessor for RawAccessoryMetadata(0);
  v10 = swift_task_alloc();
  v7[6] = v10;
  type metadata accessor for AccessoryMetadataManager();
  v11 = swift_task_alloc();
  v7[7] = v11;
  *v11 = v7;
  v11[1] = sub_1006D7FE8;
  if (a4)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  return sub_100368844(v10, a5, v12);
}

uint64_t sub_1006D7FE8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100721E64;
  }

  else
  {
    v2 = sub_100721DC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006D80FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 240) = a4;
  *(v7 + 40) = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  *(v7 + 48) = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  *(v7 + 56) = swift_task_alloc();
  type metadata accessor for RawAccessoryMetadata(0);
  *(v7 + 64) = swift_task_alloc();
  v8 = type metadata accessor for CentralManager.State();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  *(v7 + 96) = swift_task_alloc();
  type metadata accessor for AccessoryMetadata(0);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_1006D82D4, 0, 0);
}

uint64_t sub_1006D82D4()
{
  v1 = v0[12];
  v0[15] = type metadata accessor for CentralManager();
  v2 = type metadata accessor for CentralManager.Options();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1006D83C4;
  v4 = v0[12];

  return CentralManager.__allocating_init(options:)(v4);
}

uint64_t sub_1006D83C4(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1006D84C4, 0, 0);
}

uint64_t sub_1006D84C4()
{
  (*(v0[10] + 104))(v0[11], enum case for CentralManager.State.poweredOn(_:), v0[9]);
  v1 = swift_task_alloc();
  v0[18] = v1;
  v2 = sub_100003E8C(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_1006D85C0;
  v3 = v0[15];
  v4 = v0[11];

  return CentralManagerProtocol.await(state:)(v4, v3, v2);
}

uint64_t sub_1006D85C0()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    return _swift_task_switch(sub_100721F38, 0, 0);
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v6 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
    v3 = swift_task_alloc();
    v2[20] = v3;
    *v3 = v2;
    v3[1] = sub_1006D8780;
    v4 = v2[2];

    return v6(v4);
  }
}

uint64_t sub_1006D8780(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_100721F3C;
  }

  else
  {
    v4 = sub_1006D8894;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006D8894()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 240);
    v4 = type metadata accessor for ConnectUseCase();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_1006D8B40;
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    if (v3)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    return sub_1011FC38C(v6, v1, v8, v7);
  }

  else
  {
    v10 = *(v0 + 16);
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_100003E8C(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v11 = swift_allocError();
    v13 = v12;
    v14 = type metadata accessor for MACAddress();
    (*(*(v14 - 8) + 16))(v13, v10, v14);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = *(v0 + 48);
    v16 = *(v0 + 24);
    *v15 = v11;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v16(v15);

    sub_10000B3A8(v15, &unk_1016A99C0, &unk_1013BB530);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1006D8B40()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  sub_10000B3A8(*(v2 + 56), &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v3 = sub_1006D8D9C;
  }

  else
  {
    v3 = sub_1006D8C84;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006D8C84()
{
  v1 = v0[24];
  sub_100232154(v0[8], v0[13]);
  if (v1)
  {
    v0[27] = v1;
    v5 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v3 = sub_1006D9024;
  }

  else
  {
    v5 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v3 = sub_1006D8E48;
  }

  v2[1] = v3;

  return v5();
}

uint64_t sub_1006D8D9C()
{
  v0[27] = v0[24];
  v3 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_1006D9024;

  return v3();
}

uint64_t sub_1006D8E48()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1006D8F5C;
  }

  else
  {
    v2 = sub_100721E90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006D8F5C()
{
  sub_100721D04(v0[13], type metadata accessor for AccessoryMetadata);
  v0[27] = v0[26];
  v3 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_1006D9024;

  return v3();
}

uint64_t sub_1006D9024()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100721E8C;
  }

  else
  {
    v2 = sub_100721EFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006D9138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v7[4] = sub_1000BC4D4(&unk_1016A99D0, &unk_1013BB9A0);
  v7[5] = swift_task_alloc();
  type metadata accessor for RawAccessoryMetadata(0);
  v10 = swift_task_alloc();
  v7[6] = v10;
  type metadata accessor for AccessoryMetadataManager();
  v11 = swift_task_alloc();
  v7[7] = v11;
  *v11 = v7;
  v11[1] = sub_1006D9264;

  return sub_100368844(v10, a4, a5);
}

uint64_t sub_1006D9264()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1006D946C;
  }

  else
  {
    v2 = sub_1006D9378;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006D9378()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  sub_100721C9C(v1, v2, type metadata accessor for RawAccessoryMetadata);
  swift_storeEnumTagMultiPayload();
  v3(v2);
  sub_10000B3A8(v2, &unk_1016A99D0, &unk_1013BB9A0);
  sub_100721D04(v1, type metadata accessor for RawAccessoryMetadata);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1006D946C()
{
  v1 = v0[5];
  v2 = v0[2];
  *v1 = v0[8];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v2(v1);

  sub_10000B3A8(v1, &unk_1016A99D0, &unk_1013BB9A0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006D952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 240) = a5;
  *(v7 + 16) = a4;
  *(v7 + 40) = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  *(v7 + 48) = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  *(v7 + 56) = swift_task_alloc();
  type metadata accessor for RawAccessoryMetadata(0);
  *(v7 + 64) = swift_task_alloc();
  v8 = type metadata accessor for CentralManager.State();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  *(v7 + 96) = swift_task_alloc();
  type metadata accessor for AccessoryMetadata(0);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_1006D9704, 0, 0);
}

uint64_t sub_1006D9704()
{
  v1 = v0[12];
  v0[15] = type metadata accessor for CentralManager();
  v2 = type metadata accessor for CentralManager.Options();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1006D97F4;
  v4 = v0[12];

  return CentralManager.__allocating_init(options:)(v4);
}

uint64_t sub_1006D97F4(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1006D98F4, 0, 0);
}

uint64_t sub_1006D98F4()
{
  (*(v0[10] + 104))(v0[11], enum case for CentralManager.State.poweredOn(_:), v0[9]);
  v1 = swift_task_alloc();
  v0[18] = v1;
  v2 = sub_100003E8C(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_1006D99F0;
  v3 = v0[15];
  v4 = v0[11];

  return CentralManagerProtocol.await(state:)(v4, v3, v2);
}

uint64_t sub_1006D99F0()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    return _swift_task_switch(sub_1006D9CC4, 0, 0);
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v6 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
    v3 = swift_task_alloc();
    v2[20] = v3;
    *v3 = v2;
    v3[1] = sub_1006D9BB0;
    v4 = v2[2];

    return v6(v4);
  }
}

uint64_t sub_1006D9BB0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_1006DA1AC;
  }

  else
  {
    v4 = sub_1006D9DC8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006D9CC4()
{

  v1 = v0[6];
  v2 = v0[3];
  *v1 = v0[19];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v2(v1);

  sub_10000B3A8(v1, &unk_1016A99C0, &unk_1013BB530);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006D9DC8()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = type metadata accessor for ConnectUseCase();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_task_alloc();
    *(v0 + 184) = v4;
    *v4 = v0;
    v4[1] = sub_1006DA068;
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 240);

    return sub_1011FC38C(v5, v1, v7, v6);
  }

  else
  {
    v9 = *(v0 + 16);
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_100003E8C(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error, &unk_10139DCD8);
    v10 = swift_allocError();
    v12 = v11;
    v13 = type metadata accessor for MACAddress();
    (*(*(v13 - 8) + 16))(v12, v9, v13);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v14 = *(v0 + 48);
    v15 = *(v0 + 24);
    *v14 = v10;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v15(v14);

    sub_10000B3A8(v14, &unk_1016A99C0, &unk_1013BB530);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1006DA068()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  sub_10000B3A8(*(v2 + 56), &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v3 = sub_1006DA3C8;
  }

  else
  {
    v3 = sub_1006DA2B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006DA1AC()
{

  v1 = v0[6];
  v2 = v0[3];
  *v1 = v0[22];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v2(v1);

  sub_10000B3A8(v1, &unk_1016A99C0, &unk_1013BB530);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006DA2B0()
{
  v1 = v0[24];
  sub_100232154(v0[8], v0[13]);
  if (v1)
  {
    v0[27] = v1;
    v5 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v3 = sub_1006DA7B4;
  }

  else
  {
    v5 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v3 = sub_1006DA474;
  }

  v2[1] = v3;

  return v5();
}

uint64_t sub_1006DA3C8()
{
  v0[27] = v0[24];
  v3 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_1006DA7B4;

  return v3();
}

uint64_t sub_1006DA474()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1006DA6EC;
  }

  else
  {
    v2 = sub_1006DA588;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006DA588()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[6];
  v4 = v0[3];

  sub_10002AB74(v2, v1, type metadata accessor for AccessoryMetadata);
  sub_100721C9C(v1, v3, type metadata accessor for AccessoryMetadata);
  swift_storeEnumTagMultiPayload();
  v4(v3);
  sub_10000B3A8(v3, &unk_1016A99C0, &unk_1013BB530);
  sub_100721D04(v1, type metadata accessor for AccessoryMetadata);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1006DA6EC()
{
  sub_100721D04(v0[13], type metadata accessor for AccessoryMetadata);
  v0[27] = v0[26];
  v3 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_1006DA7B4;

  return v3();
}

uint64_t sub_1006DA7B4()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1006DA9EC;
  }

  else
  {
    v2 = sub_1006DA8C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006DA8C8(uint64_t a1)
{
  swift_willThrow();

  v2 = v1[6];
  v3 = v1[3];
  *v2 = v1[27];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v3(v2);

  sub_10000B3A8(v2, &unk_1016A99C0, &unk_1013BB530);

  v4 = v1[1];

  return v4();
}

uint64_t sub_1006DA9EC()
{

  v1 = v0[6];
  v2 = v0[3];
  *v1 = v0[29];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v2(v1);

  sub_10000B3A8(v1, &unk_1016A99C0, &unk_1013BB530);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006DAB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  v7[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[11] = v9;
  *v9 = v7;
  v9[1] = sub_1006DAC40;

  return daemon.getter();
}

uint64_t sub_1006DAC40(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for OwnerCommandService(0);
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&unk_1016B10E0, type metadata accessor for OwnerCommandService, &unk_10140DB10);
  *v3 = v9;
  v3[1] = sub_1006DAE1C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1006DAE1C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_1006DB67C;
  }

  else
  {

    v4 = sub_1006DAF38;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006DAF38()
{
  v1 = v0[10];
  v2 = enum case for ConnectUseCase.findMyActionTransient(_:);
  v3 = type metadata accessor for ConnectUseCase();
  v4 = *(v3 - 8);
  (*(v4 + 104))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1006DB078;
  v6 = v0[10];
  v7 = v0[2];

  return sub_101217DF4(v7, v6);
}

uint64_t sub_1006DB078(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  sub_10000B3A8(v5, &qword_101697270, &qword_10138BDD0);
  if (v2)
  {
    v6 = sub_1006DB9A4;
  }

  else
  {
    v6 = sub_1006DB1C0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1006DB1C0()
{
  v25 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  (*(v3 + 16))(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_1000136BC(v14, v16, &v24);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching metadata for beaconId: %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  ObjectType = swift_getObjectType();
  type metadata accessor for AccessoryMetadataManager();
  v19 = swift_task_alloc();
  v0[20] = v19;
  *v19 = v0;
  v19[1] = sub_1006DB46C;
  v21 = v0[17];
  v20 = v0[18];
  v22 = v0[3];

  return sub_1003699D4(v21, 2, v22, ObjectType, v20);
}

uint64_t sub_1006DB46C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v7 = sub_1006DBCCC;
  }

  else
  {
    *(v6 + 176) = a2;
    *(v6 + 184) = a1;
    v7 = sub_1006DB5A0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1006DB5A0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[4];
  sub_100017D5C(v1, v2);
  v3(v1, v2, 0);
  sub_100016590(v1, v2);
  sub_100016590(v1, v2);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1006DB67C()
{
  v25 = v0;

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v24);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v22 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error fetching metadata for beaconId: %{private,mask.hash}s error: %{public}@", v12, 0x20u);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v23);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[4];
  sub_1003FD838();
  swift_allocError();
  *v19 = 4;
  v18();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1006DB9A4()
{
  v25 = v0;

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v24);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v22 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error fetching metadata for beaconId: %{private,mask.hash}s error: %{public}@", v12, 0x20u);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v23);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[4];
  sub_1003FD838();
  swift_allocError();
  *v19 = 4;
  v18();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1006DBCCC()
{
  v25 = v0;
  swift_unknownObjectRelease();

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v24);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v22 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error fetching metadata for beaconId: %{private,mask.hash}s error: %{public}@", v12, 0x20u);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v23);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[4];
  sub_1003FD838();
  swift_allocError();
  *v19 = 4;
  v18();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1006DC000(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1006DC094;

  return daemon.getter();
}

uint64_t sub_1006DC094(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for WildModeAssociationRecordsPublisher();
  v6 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100003E8C(&unk_1016B10D0, type metadata accessor for WildModeAssociationRecordsPublisher, &unk_1013DBE00);
  *v3 = v9;
  v3[1] = sub_1006DC270;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1006DC270(uint64_t a1)
{
  *(*v2 + 56) = a1;

  if (v1)
  {

    v4 = sub_1006DC3C8;
    v5 = 0;
  }

  else
  {

    v4 = sub_1006DC5A8;
    v5 = a1;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1006DC3C8()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error on publishWildModeRecords, no WildModeAssociationRecordsPublisher object!", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = type metadata accessor for Daemon.Error();
  sub_100003E8C(&qword_101697368, &type metadata accessor for Daemon.Error, &protocol conformance descriptor for Daemon.Error);
  v7 = swift_allocError();
  *v8 = 0xD000000000000023;
  v8[1] = 0x800000010135D7E0;
  (*(*(v6 - 8) + 104))(v8, enum case for Daemon.Error.missingService(_:), v6);
  v5(v7, 1);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1006DC5A8()
{
  v4 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1006DC674;
  v2 = *(v0 + 56);

  return v4(&unk_1013DBEB0, v2);
}

uint64_t sub_1006DC674()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1006DC82C;
  }

  else
  {

    v4 = sub_1006DC7B4;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1006DC7B4()
{
  (*(v0 + 16))(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006DC82C()
{

  return _swift_task_switch(sub_1006DC894, 0, 0);
}

uint64_t sub_1006DC894()
{
  v1 = v0[9];
  v2 = v0[2];
  swift_errorRetain();
  v2(v1, 1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006DC930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100892134(a1);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  Future.addSuccess(block:)();

  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  Future.addFailure(block:)();
}

uint64_t sub_1006DCA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 isInternalBuild];

  if (!v6)
  {
    return a4(0);
  }

  v7 = type metadata accessor for Transaction();
  __chkstk_darwin(v7);
  return static Transaction.named<A>(_:with:)();
}

uint64_t SPBeaconObservationType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6E6E6F637369642ELL;
      }

      goto LABEL_8;
    }

    return 0xD000000000000016;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x7463656E6E6F632ELL;
      }

LABEL_8:
      _StringGuts.grow(_:)(47);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0xD00000000000002DLL;
    }

    return 0x6E776F6E6B6E752ELL;
  }
}

Swift::Int sub_1006DCE24(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B321B0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1006EA1E4(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1006DCF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    do
    {
      v9 = String.Iterator.next()();
      if (!v9.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v9.value._countAndFlagsBits && object == v9.value._object)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
  }

  v10 = String.Iterator.next()().value._object;

  if (!v10)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

id sub_1006DD0B4(uint64_t *a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v36 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  __chkstk_darwin(v36);
  v10 = &v33 - v9;
  v11 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v37 = v4;
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BA08);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Saving record. Disk First? %{BOOL}d", v17, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C218;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 BOOLForKey:v21];
  }

  else
  {
    v22 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v24 = result;
    v25 = [result aa_primaryAppleAccount];

    if (v25 && (v25, ((a2 | v22) & 1) == 0))
    {

      return sub_1006E4FAC(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v13, type metadata accessor for OwnedBeaconGroup);
      sub_1009F10FC(v13);
      v34 = a3;
      v35 = a4;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Saved LocalStorageBacked record. Calling completion.", v28, 2u);
      }

      sub_100721C9C(a1, v10, type metadata accessor for OwnedBeaconGroup);
      swift_storeEnumTagMultiPayload();
      v34(v10);
      sub_10000B3A8(v10, &qword_101699398, &qword_101391900);
      if (((v25 != 0) & ~v22) != 0)
      {
        v32 = type metadata accessor for Transaction();
        __chkstk_darwin(v32);
        *(&v33 - 4) = v37;
        *(&v33 - 3) = a1;
        *(&v33 - 2) = v13;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 67109376;
          *(v31 + 4) = v22;
          *(v31 + 8) = 1024;
          *(v31 + 10) = v25 != 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v31, 0xEu);
        }
      }

      return sub_100721D04(v13, type metadata accessor for OwnedBeaconGroup);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DD754(uint64_t *a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v38 = a3;
  v37 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  __chkstk_darwin(v37);
  v10 = v36 - v9;
  v11 = type metadata accessor for BeaconNamingRecord(0);
  __chkstk_darwin(v11 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v39 = a1;
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BA08);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Saving record. Disk First? %{BOOL}d", v17, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C218;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 BOOLForKey:v21];
  }

  else
  {
    v22 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v24 = result;
    v25 = [result aa_primaryAppleAccount];

    if (v25 && (v25, ((a2 | v22) & 1) == 0))
    {
      v27 = v38;
      v26 = v39;

      return sub_1006E547C(v26, v27, a4);
    }

    else
    {
      sub_100721C9C(v39, v13, type metadata accessor for BeaconNamingRecord);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_1009F0C24(v13);
      v36[1] = a4;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Saved LocalStorageBacked record. Calling completion.", v30, 2u);
      }

      v31 = v39;
      sub_100721C9C(v39, v10, type metadata accessor for BeaconNamingRecord);
      swift_storeEnumTagMultiPayload();
      v38(v10);
      sub_10000B3A8(v10, &qword_1016A7808, &qword_1013D6750);
      if (((v25 != 0) & ~v22) != 0)
      {
        v35 = type metadata accessor for Transaction();
        __chkstk_darwin(v35);
        v36[-4] = v5;
        v36[-3] = v31;
        v36[-2] = v13;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109376;
          *(v34 + 4) = v22;
          *(v34 + 8) = 1024;
          *(v34 + 10) = v25 != 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v34, 0xEu);
        }
      }

      return sub_100721D04(v13, type metadata accessor for BeaconNamingRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DDE30(uint64_t *a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v38 = a3;
  v37 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v37);
  v10 = v36 - v9;
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  __chkstk_darwin(v11 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v39 = a1;
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BA08);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Saving record. Disk First? %{BOOL}d", v17, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C218;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 BOOLForKey:v21];
  }

  else
  {
    v22 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v24 = result;
    v25 = [result aa_primaryAppleAccount];

    if (v25 && (v25, ((a2 | v22) & 1) == 0))
    {
      v27 = v38;
      v26 = v39;

      return sub_1006E5214(v26, v27, a4);
    }

    else
    {
      sub_100721C9C(v39, v13, type metadata accessor for OwnedBeaconRecord);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_1009F15D4(v13);
      v36[1] = a4;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Saved LocalStorageBacked record. Calling completion.", v30, 2u);
      }

      v31 = v39;
      sub_100721C9C(v39, v10, type metadata accessor for OwnedBeaconRecord);
      swift_storeEnumTagMultiPayload();
      v38(v10);
      sub_10000B3A8(v10, &unk_1016B15A0, &qword_1013A0900);
      if (((v25 != 0) & ~v22) != 0)
      {
        v35 = type metadata accessor for Transaction();
        __chkstk_darwin(v35);
        v36[-4] = v5;
        v36[-3] = v31;
        v36[-2] = v13;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109376;
          *(v34 + 4) = v22;
          *(v34 + 8) = 1024;
          *(v34 + 10) = v25 != 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v34, 0xEu);
        }
      }

      return sub_100721D04(v13, type metadata accessor for OwnedBeaconRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DE50C(uint64_t *a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v36 = sub_1000BC4D4(&qword_1016A7810, &qword_1013B66C0);
  __chkstk_darwin(v36);
  v10 = &v33 - v9;
  v11 = type metadata accessor for OwnedDeviceKeyRecord(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v37 = v4;
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BA08);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Saving record. Disk First? %{BOOL}d", v17, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C218;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 BOOLForKey:v21];
  }

  else
  {
    v22 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v24 = result;
    v25 = [result aa_primaryAppleAccount];

    if (v25 && (v25, ((a2 | v22) & 1) == 0))
    {

      return sub_1006E56E4(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v13, type metadata accessor for OwnedDeviceKeyRecord);
      sub_1009EFD9C(v13);
      v34 = a3;
      v35 = a4;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Saved LocalStorageBacked record. Calling completion.", v28, 2u);
      }

      sub_100721C9C(a1, v10, type metadata accessor for OwnedDeviceKeyRecord);
      swift_storeEnumTagMultiPayload();
      v34(v10);
      sub_10000B3A8(v10, &qword_1016A7810, &qword_1013B66C0);
      if (((v25 != 0) & ~v22) != 0)
      {
        v32 = type metadata accessor for Transaction();
        __chkstk_darwin(v32);
        *(&v33 - 4) = v37;
        *(&v33 - 3) = a1;
        *(&v33 - 2) = v13;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 67109376;
          *(v31 + 4) = v22;
          *(v31 + 8) = 1024;
          *(v31 + 10) = v25 != 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v31, 0xEu);
        }
      }

      return sub_100721D04(v13, type metadata accessor for OwnedDeviceKeyRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DEBAC(uint64_t *a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v36 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  __chkstk_darwin(v36);
  v10 = &v33 - v9;
  v11 = type metadata accessor for LostModeRecord(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v37 = v4;
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BA08);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Saving record. Disk First? %{BOOL}d", v17, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C218;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 BOOLForKey:v21];
  }

  else
  {
    v22 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v24 = result;
    v25 = [result aa_primaryAppleAccount];

    if (v25 && (v25, ((a2 | v22) & 1) == 0))
    {

      return sub_1006E594C(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v13, type metadata accessor for LostModeRecord);
      sub_1009F0274(v13);
      v34 = a3;
      v35 = a4;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Saved LocalStorageBacked record. Calling completion.", v28, 2u);
      }

      sub_100721C9C(a1, v10, type metadata accessor for LostModeRecord);
      swift_storeEnumTagMultiPayload();
      v34(v10);
      sub_10000B3A8(v10, &qword_1016B1840, &qword_1013B68F0);
      if (((v25 != 0) & ~v22) != 0)
      {
        v32 = type metadata accessor for Transaction();
        __chkstk_darwin(v32);
        *(&v33 - 4) = v37;
        *(&v33 - 3) = a1;
        *(&v33 - 2) = v13;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 67109376;
          *(v31 + 4) = v22;
          *(v31 + 8) = 1024;
          *(v31 + 10) = v25 != 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v31, 0xEu);
        }
      }

      return sub_100721D04(v13, type metadata accessor for LostModeRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DF24C(uint64_t *a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v36 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  __chkstk_darwin(v36);
  v10 = &v33 - v9;
  v11 = type metadata accessor for ShareRecord(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v37 = v4;
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BA08);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Saving record. Disk First? %{BOOL}d", v17, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C218;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 BOOLForKey:v21];
  }

  else
  {
    v22 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v24 = result;
    v25 = [result aa_primaryAppleAccount];

    if (v25 && (v25, ((a2 | v22) & 1) == 0))
    {

      return sub_1006E5BB4(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v13, type metadata accessor for ShareRecord);
      sub_1009F0E90(v13);
      v34 = a3;
      v35 = a4;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Saved LocalStorageBacked record. Calling completion.", v28, 2u);
      }

      sub_100721C9C(a1, v10, type metadata accessor for ShareRecord);
      swift_storeEnumTagMultiPayload();
      v34(v10);
      sub_10000B3A8(v10, &unk_1016B1650, &unk_1013B1110);
      if (((v25 != 0) & ~v22) != 0)
      {
        v32 = type metadata accessor for Transaction();
        __chkstk_darwin(v32);
        *(&v33 - 4) = v37;
        *(&v33 - 3) = a1;
        *(&v33 - 2) = v13;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 67109376;
          *(v31 + 4) = v22;
          *(v31 + 8) = 1024;
          *(v31 + 10) = v25 != 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v31, 0xEu);
        }
      }

      return sub_100721D04(v13, type metadata accessor for ShareRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DF8EC(uint64_t *a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v38 = a3;
  v37 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v37);
  v10 = v36 - v9;
  v11 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v11 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v39 = a1;
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BA08);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Saving record. Disk First? %{BOOL}d", v17, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C218;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 BOOLForKey:v21];
  }

  else
  {
    v22 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v24 = result;
    v25 = [result aa_primaryAppleAccount];

    if (v25 && (v25, ((a2 | v22) & 1) == 0))
    {
      v27 = v38;
      v26 = v39;

      return sub_1006E5E1C(v26, v27, a4);
    }

    else
    {
      sub_100721C9C(v39, v13, type metadata accessor for SharedBeaconRecord);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_1009F1368(v13);
      v36[1] = a4;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Saved LocalStorageBacked record. Calling completion.", v30, 2u);
      }

      v31 = v39;
      sub_100721C9C(v39, v10, type metadata accessor for SharedBeaconRecord);
      swift_storeEnumTagMultiPayload();
      v38(v10);
      sub_10000B3A8(v10, &qword_101699BC8, &qword_1013926D8);
      if (((v25 != 0) & ~v22) != 0)
      {
        v35 = type metadata accessor for Transaction();
        __chkstk_darwin(v35);
        v36[-4] = v5;
        v36[-3] = v31;
        v36[-2] = v13;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109376;
          *(v34 + 4) = v22;
          *(v34 + 8) = 1024;
          *(v34 + 10) = v25 != 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v34, 0xEu);
        }
      }

      return sub_100721D04(v13, type metadata accessor for SharedBeaconRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DFFC8(uint64_t *a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v36 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  __chkstk_darwin(v36);
  v10 = &v33 - v9;
  v11 = type metadata accessor for SafeLocation(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v37 = v4;
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BA08);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Saving record. Disk First? %{BOOL}d", v17, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C218;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 BOOLForKey:v21];
  }

  else
  {
    v22 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v24 = result;
    v25 = [result aa_primaryAppleAccount];

    if (v25 && (v25, ((a2 | v22) & 1) == 0))
    {

      return sub_1006E6084(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v13, type metadata accessor for SafeLocation);
      sub_1009F04E0(v13);
      v34 = a3;
      v35 = a4;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Saved LocalStorageBacked record. Calling completion.", v28, 2u);
      }

      sub_100721C9C(a1, v10, type metadata accessor for SafeLocation);
      swift_storeEnumTagMultiPayload();
      v34(v10);
      sub_10000B3A8(v10, &unk_1016B1480, &qword_1013B6890);
      if (((v25 != 0) & ~v22) != 0)
      {
        v32 = type metadata accessor for Transaction();
        __chkstk_darwin(v32);
        *(&v33 - 4) = v37;
        *(&v33 - 3) = a1;
        *(&v33 - 2) = v13;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 67109376;
          *(v31 + 4) = v22;
          *(v31 + 8) = 1024;
          *(v31 + 10) = v25 != 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v31, 0xEu);
        }
      }

      return sub_100721D04(v13, type metadata accessor for SafeLocation);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006E0668(uint64_t *a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v36 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  __chkstk_darwin(v36);
  v10 = &v33 - v9;
  v11 = type metadata accessor for LeashRecord(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v37 = v4;
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BA08);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Saving record. Disk First? %{BOOL}d", v17, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C218;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 BOOLForKey:v21];
  }

  else
  {
    v22 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v24 = result;
    v25 = [result aa_primaryAppleAccount];

    if (v25 && (v25, ((a2 | v22) & 1) == 0))
    {

      return sub_1006E62EC(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v13, type metadata accessor for LeashRecord);
      sub_1009F074C(v13);
      v34 = a3;
      v35 = a4;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Saved LocalStorageBacked record. Calling completion.", v28, 2u);
      }

      sub_100721C9C(a1, v10, type metadata accessor for LeashRecord);
      swift_storeEnumTagMultiPayload();
      v34(v10);
      sub_10000B3A8(v10, &qword_1016A78E0, &qword_1013B6888);
      if (((v25 != 0) & ~v22) != 0)
      {
        v32 = type metadata accessor for Transaction();
        __chkstk_darwin(v32);
        *(&v33 - 4) = v37;
        *(&v33 - 3) = a1;
        *(&v33 - 2) = v13;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 67109376;
          *(v31 + 4) = v22;
          *(v31 + 8) = 1024;
          *(v31 + 10) = v25 != 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v31, 0xEu);
        }
      }

      return sub_100721D04(v13, type metadata accessor for LeashRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006E0D08(uint64_t *a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v36 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  __chkstk_darwin(v36);
  v10 = &v33 - v9;
  v11 = type metadata accessor for KeyAlignmentRecord(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v37 = v4;
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BA08);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Saving record. Disk First? %{BOOL}d", v17, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C218;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 isInternalBuild];

  if (v20)
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 BOOLForKey:v21];
  }

  else
  {
    v22 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v24 = result;
    v25 = [result aa_primaryAppleAccount];

    if (v25 && (v25, ((a2 | v22) & 1) == 0))
    {

      return sub_1006E6554(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v13, type metadata accessor for KeyAlignmentRecord);
      sub_1009F0008(v13);
      v34 = a3;
      v35 = a4;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Saved LocalStorageBacked record. Calling completion.", v28, 2u);
      }

      sub_100721C9C(a1, v10, type metadata accessor for KeyAlignmentRecord);
      swift_storeEnumTagMultiPayload();
      v34(v10);
      sub_10000B3A8(v10, &unk_1016B1690, &qword_1013D6800);
      if (((v25 != 0) & ~v22) != 0)
      {
        v32 = type metadata accessor for Transaction();
        __chkstk_darwin(v32);
        *(&v33 - 4) = v37;
        *(&v33 - 3) = a1;
        *(&v33 - 2) = v13;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 67109376;
          *(v31 + 4) = v22;
          *(v31 + 8) = 1024;
          *(v31 + 10) = v25 != 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v31, 0xEu);
        }
      }

      return sub_100721D04(v13, type metadata accessor for KeyAlignmentRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006E13A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for OwnedBeaconGroup);
  sub_100721C9C(a4, v10, type metadata accessor for OwnedBeaconGroup);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for OwnedBeaconGroup);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for OwnedBeaconGroup);

  sub_1006DD0B4(v19, 0, sub_1006FE4FC, v22);
}

uint64_t sub_1006E163C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for OwnedBeaconRecord);
  sub_100721C9C(a4, v10, type metadata accessor for OwnedBeaconRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for OwnedBeaconRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for OwnedBeaconRecord);

  sub_1006DDE30(v19, 0, sub_100717734, v22);
}

uint64_t sub_1006E18D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for BeaconNamingRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for BeaconNamingRecord);
  sub_100721C9C(a4, v10, type metadata accessor for BeaconNamingRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for BeaconNamingRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for BeaconNamingRecord);

  sub_1006DD754(v19, 0, sub_100717630, v22);
}

uint64_t sub_1006E1B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for OwnedDeviceKeyRecord);
  sub_100721C9C(a4, v10, type metadata accessor for OwnedDeviceKeyRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for OwnedDeviceKeyRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for OwnedDeviceKeyRecord);

  sub_1006DE50C(v19, 0, sub_100717854, v22);
}

uint64_t sub_1006E1DF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for LostModeRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for LostModeRecord);
  sub_100721C9C(a4, v10, type metadata accessor for LostModeRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for LostModeRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for LostModeRecord);

  sub_1006DEBAC(v19, 0, sub_100721300, v22);
}

uint64_t sub_1006E208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for ShareRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for ShareRecord);
  sub_100721C9C(a4, v10, type metadata accessor for ShareRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for ShareRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for ShareRecord);

  sub_1006DF24C(v19, 0, sub_10071E318, v22);
}

uint64_t sub_1006E2320(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for SharedBeaconRecord);
  sub_100721C9C(a4, v10, type metadata accessor for SharedBeaconRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for SharedBeaconRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for SharedBeaconRecord);

  sub_1006DF8EC(v19, 0, sub_100720D6C, v22);
}

uint64_t sub_1006E25B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for SafeLocation(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for SafeLocation);
  sub_100721C9C(a4, v10, type metadata accessor for SafeLocation);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for SafeLocation);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for SafeLocation);

  sub_1006DFFC8(v19, 0, sub_100720B2C, v22);
}

uint64_t sub_1006E2848(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for LeashRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for LeashRecord);
  sub_100721C9C(a4, v10, type metadata accessor for LeashRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for LeashRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for LeashRecord);

  sub_1006E0668(v19, 0, sub_100720980, v22);
}