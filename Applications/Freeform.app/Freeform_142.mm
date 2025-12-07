uint64_t sub_1010F2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v6[17] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[20] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010F2B24, v8, v7);
}

void sub_1010F2B24()
{
  v1 = v0[14];
  v37 = v0[15];
  v38 = v0[17];

  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v35 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  v36 = v1;
  v6 = (63 - v4) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_11:
    v10 = v0[18];
    v9 = v0[19];
    sub_10005006C(*(v36 + 48) + *(v38 + 72) * (__clz(__rbit64(v5)) | (v7 << 6)), v9, type metadata accessor for CRLBoardIdentifier);
    sub_100025738(v9, v10, type metadata accessor for CRLBoardIdentifier);
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v13;
    *(inited + 40) = v15;
    v16 = static os_log_type_t.default.getter();
    v34 = v11;
    sub_100005404(v11, &_mh_execute_header, v16, "Did sync a CKShare change for board identifier: %@", 50, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    swift_beginAccess();
    v17 = *(v37 + v35);
    if (!*(v17 + 16) || (v18 = sub_1000486F0(v0[18]), (v19 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_5;
    }

    v20 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();

    v21 = Notification.name.getter();
    if (qword_1019F2548 != -1)
    {
      swift_once();
    }

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
    if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
    {

LABEL_21:
      v27 = static os_log_type_t.default.getter();
      sub_100005404(v34, &_mh_execute_header, v27, "Received a CRLBoardDataStoreDidSyncCKShareDeletion notification.", 64, 2, _swiftEmptyArrayStorage);
      v28 = *(*(v20 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
      if (*(*&v28[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] + 16))
      {
        v29 = v28;

        sub_10123C0AC(0);
      }

      goto LABEL_23;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_21;
    }

LABEL_23:
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v30 = v0[18];
    v31 = static OS_os_log.realTimeSync;
    v32 = static os_log_type_t.default.getter();
    sub_100005404(v31, &_mh_execute_header, v32, "Ensure that we are in an activity, and switch between Me-to-Me and CKShare if necessary.", 88, 2, _swiftEmptyArrayStorage);
    sub_1010BBCA0(v30);

LABEL_5:
    v5 &= v5 - 1;
    sub_10003D87C(v0[18], type metadata accessor for CRLBoardIdentifier);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }

  v33 = v0[1];

  v33();
}

void sub_1010F2FC4(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if ([v7 BOOLForKey:@"CRLSyncDataWasRemovedUserDefault"])
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v10 = static OS_os_log.boardStore;
      v11 = static os_log_type_t.default.getter();
      sub_100005404(v10, &_mh_execute_header, v11, "Observed that sync data was removed. Cleaning up in memory state.", 65, 2, _swiftEmptyArrayStorage);
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v9;
      v14 = v9;
      sub_10064191C(0, 0, v6, &unk_1014C61C0, v13);

      [v7 removeObjectForKey:@"CRLSyncDataWasRemovedUserDefault"];
    }

    else
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v15 = static OS_os_log.boardStore;
      v16 = static os_log_type_t.default.getter();
      sub_100005404(v15, &_mh_execute_header, v16, "Observed change to dataclass. But no need to ensure ownership of data.", 70, 2, _swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_1010F3210()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D3D4;

  return sub_1010F32A0();
}

uint64_t sub_1010F32A0()
{
  v1[7] = v0;
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return _swift_task_switch(sub_1010F3370, v3, v2);
}

uint64_t sub_1010F3370()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1010BCDE4();
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
  v4 = sub_100DCB394();
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v32 = v5;
  v6(v2, 1, 1);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  sub_10064191C(0, 0, v2, &unk_1014B6A40, v7);

  v8 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v8 + 16));
  v9 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v10 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v10)
  {
    v11 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v30 = type metadata accessor for CRLAssetManager();
    v12 = objc_allocWithZone(v30);
    swift_unknownObjectWeakInit();
    v13 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v14 = swift_allocObject();
    v31 = v6;
    v15 = v3;
    v16 = swift_slowAlloc();
    *v16 = 0;
    *(v14 + 16) = v16;
    atomic_thread_fence(memory_order_acq_rel);
    *&v12[v13] = v14;
    *&v12[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v17 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v12[v17] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v12[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    swift_unknownObjectWeakAssign();
    *(v0 + 40) = v12;
    *(v0 + 48) = v30;
    v18 = objc_msgSendSuper2((v0 + 40), "init");

    v6 = v31;
    v19 = *&v3[v9];
    *&v3[v9] = v18;
    v11 = v18;

    v10 = 0;
  }

  v20 = *(v8 + 16);
  v21 = v10;
  os_unfair_lock_unlock(v20);
  if (qword_1019F22C0 != -1)
  {
    swift_once();
  }

  v22 = static OS_os_log.assetManagement;
  v23 = static os_log_type_t.default.getter();
  sub_100005404(v22, &_mh_execute_header, v23, "reset() asset cache", 19, 2, _swiftEmptyArrayStorage);
  v24 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets;
  swift_beginAccess();
  *&v11[v24] = _swiftEmptyDictionarySingleton;

  if (*&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper])
  {
    v25 = *(v0 + 64);
    (v6)(v25, 1, 1, v32);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v26;

    sub_100CA64C8(0, 0, v25, &unk_1014B6A48, v27);

    sub_10000CAAC(v25, &qword_1019FB750, &qword_10146F1B0);
  }

  v28 = swift_task_alloc();
  *(v0 + 96) = v28;
  *v28 = v0;
  v28[1] = sub_1010F37A0;

  return sub_10007CEB8(_swiftEmptySetSingleton);
}

uint64_t sub_1010F37A0()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1010F38C0, v3, v2);
}

uint64_t sub_1010F38C0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1010F3A38()
{
  result = qword_101A2ACB8;
  if (!qword_101A2ACB8)
  {
    result = swift_getWitnessTable(byte_1014C5AE0, &type metadata for CRLBoardLibrary.UpdateOptions, v0, v1);
    atomic_store(result, &qword_101A2ACB8);
  }

  return result;
}

unint64_t sub_1010F3A90()
{
  result = qword_101A2ACC0;
  if (!qword_101A2ACC0)
  {
    result = swift_getWitnessTable(aQ_21, &type metadata for CRLBoardLibrary.UpdateOptions, v0, v1);
    atomic_store(result, &qword_101A2ACC0);
  }

  return result;
}

unint64_t sub_1010F3AE8()
{
  result = qword_101A2ACC8;
  if (!qword_101A2ACC8)
  {
    result = swift_getWitnessTable(byte_1014C5B08, &type metadata for CRLBoardLibrary.UpdateOptions, v0, v1);
    atomic_store(result, &qword_101A2ACC8);
  }

  return result;
}

unint64_t sub_1010F3B40()
{
  result = qword_101A2ACD0;
  if (!qword_101A2ACD0)
  {
    result = swift_getWitnessTable(byte_1014C5B40, &type metadata for CRLBoardLibrary.UpdateOptions, v0, v1);
    atomic_store(result, &qword_101A2ACD0);
  }

  return result;
}

unint64_t *sub_1010F3BDC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5;
    sub_1010FEBBC(v9, a2, a3, a4, v10);
    v12 = v11;

    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

void sub_1010F3C90(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v29 = a4;
  v30 = a3;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 < 0)
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v26 = a1;
    v25 = a2;
    v9 = v30 + 56;
    v10 = 1 << *(v30 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v30 + 56);
    v13 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
    v24 = v29;
    swift_beginAccess();
    v14 = 0;
    v15 = 0;
    v16 = (v10 + 63) >> 6;
    while (2)
    {
      v27 = v14;
      while (1)
      {
        if (!v12)
        {
          v18 = v15;
          while (1)
          {
            v15 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v15 >= v16)
            {
              goto LABEL_22;
            }

            v19 = *(v9 + 8 * v15);
            ++v18;
            if (v19)
            {
              v17 = __clz(__rbit64(v19));
              v12 = (v19 - 1) & v19;
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_24;
        }

        v17 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_15:
        v20 = v17 | (v15 << 6);
        sub_10005006C(*(v30 + 48) + *(v28 + 72) * v20, v8, type metadata accessor for CRLBoardIdentifier);
        if (!*(*&v29[v13] + 16))
        {
          break;
        }

        sub_1000486F0(v8);
        v22 = v21;

        sub_10003D87C(v8, type metadata accessor for CRLBoardIdentifier);
        if ((v22 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      sub_10003D87C(v8, type metadata accessor for CRLBoardIdentifier);
LABEL_19:
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v14 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
LABEL_22:
    sub_1010F47E8(v26, v25, v27, v30);
    v23 = v24;
  }
}

Swift::Int sub_1010F3F24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v8 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&qword_101A21D90, &qword_1014B6700);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v36 = a4;
  v37 = (v8 + 8);
  v14 = result + 56;
  v34 = a2;
  v35 = a1;
  v38 = result;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v41 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(*(a4 + 48) + 8 * (v15 | (v13 << 6)));
    Hasher.init(_seed:)();
    v19 = *(v18 + 24);
    ObjectType = swift_getObjectType();
    v21 = *(v19 + 32);

    v22 = v39;
    v21(ObjectType, v19);
    sub_101104B20(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = v40;
    dispatch thunk of Hashable.hash(into:)();
    (*v37)(v22, v23);
    result = Hasher._finalize()();
    v10 = v38;
    v24 = -1 << *(v38 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v14 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v10 + 48) + 8 * v27) = v18;
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a1 = v35;
    a4 = v36;
    a2 = v34;
    v12 = v41;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v41 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1010F4288(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for UUID();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&qword_1019F37B8, &unk_101468B20);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_101104B20(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1010F45B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1005B981C(&qword_1019F3488, &unk_101468AC0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (v9[6] + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1010F47E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v30 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&unk_1019F3350, &qword_1014C5DC0);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v29 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v31 = *(v30 + 72);
    sub_10005006C(v19 + v31 * (v16 | (v14 << 6)), v10, type metadata accessor for CRLBoardIdentifier);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_101104B20(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for CRLBoardIdentifierStorage(0);
    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a4 = v29;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a4 = v29;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_100025738(v10, *(v11 + 48) + v23 * v31, type metadata accessor for CRLBoardIdentifier);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1010F4B24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1005B981C(&qword_1019F37C8, &qword_1014C6260);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v16);
    result = Hasher._finalize()();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(v9[6] + 8 * v20) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1010F4D2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&qword_101A21E68, &unk_1014B6828);
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_10063FD8C(*(a4 + 48) + 48 * (v13 | (v11 << 6)), v28);
    Hasher.init(_seed:)();
    AnyHashable.hash(into:)();
    Hasher._combine(_:)(*(&v29 + 1));
    result = Hasher._finalize()();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = (*(v6 + 48) + 48 * v19);
    v25 = v28[0];
    v26 = v29;
    v24[1] = v28[1];
    v24[2] = v26;
    *v24 = v25;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1010F4F80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v41 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&qword_101A21FD0, &unk_1014B6AC0);
  result = static _SetStorage.allocate(capacity:)();
  v15 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v19 = result + 56;
  v38 = v14;
  v39 = a4;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_16:
    v23 = *(a4 + 48);
    v44 = *(v42 + 72);
    sub_10005006C(v23 + v44 * (v20 | (v18 << 6)), v14, type metadata accessor for CRLSpotlightManager.ChangeType);
    Hasher.init(_seed:)();
    v24 = v14;
    v25 = v41;
    sub_10005006C(v24, v41, type metadata accessor for CRLSpotlightManager.ChangeType);
    v26 = swift_getEnumCaseMultiPayload() == 1;
    v27 = v25;
    v28 = v40;
    sub_100025738(v27, v40, type metadata accessor for CRLBoardIdentifier);
    Hasher._combine(_:)(v26);
    type metadata accessor for UUID();
    sub_101104B20(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for CRLBoardIdentifierStorage(0);
    String.hash(into:)();
    sub_10003D87C(v28, type metadata accessor for CRLBoardIdentifier);
    result = Hasher._finalize()();
    v29 = -1 << *(v15 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v14 = v38;
      a4 = v39;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v19 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v14 = v38;
    a4 = v39;
LABEL_26:
    *(v19 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = sub_100025738(v14, *(v15 + 48) + v32 * v44, type metadata accessor for CRLSpotlightManager.ChangeType);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v15;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      goto LABEL_28;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v17 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1010F53A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for IndexPath();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&qword_101A21E98, &qword_1014B6870);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_101104B20(&unk_101A23C60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1010F56E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1005B981C(&qword_1019F3610, &qword_101468AD0);
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_100064110(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v28);
    result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 40 * v19;
    v25 = v28[0];
    v26 = v28[1];
    *(v24 + 32) = v29;
    *v24 = v25;
    *(v24 + 16) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1010F5918(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1007C7FB8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100AA3A24();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 16 * v5);
  sub_100BCCC28(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1010F59C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10003E994(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA4CB8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_100BCD86C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = type metadata accessor for UUID();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1010F5BAC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1007C8150(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100AA53BC();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_100BDBBA8();
  *v2 = v7;
  return v8;
}

double sub_1010F5C40@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1007C8514(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA5694();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CodingUserInfoKey();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_10000BF3C((*(v9 + 56) + 32 * v7), a2);
    sub_100BCE08C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1010F5DC4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_1000486F0(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for CRLBoardIdentifier(0);
    v20 = v15;
    sub_10003D87C(v18 + *(*(v19 - 8) + 72) * v15, type metadata accessor for CRLBoardIdentifier);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    sub_100025738(v21 + *(v29 + 72) * v20, a6, a3);
    a4(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_1010F5FD4(Swift::UInt *a1)
{
  v2 = v1;
  v3 = sub_1007C89DC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100AA7184();
    v7 = v11;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_100BCE388(v5, v7, v9);
  *v2 = v7;
  return v8;
}

uint64_t sub_1010F6070(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000BE7C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100AA88EC();
    v8 = v12;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_100BCF924(v6, v8, v10);
  *v3 = v8;
  return v9;
}

uint64_t sub_1010F6108(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v14 = sub_1007C8EE4(a1);
    if (v15)
    {
      v3 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v19 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100BCFF74(v3, v8, v17);
        goto LABEL_11;
      }

LABEL_15:
      sub_100AA94AC();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_100E8D950(v4, v7);

  v9 = sub_1007C8EE4(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100BCFF74(v9, v8, v13);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1010F6254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1007C8A78(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AA9EFC(v9);
      v10 = v21;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for CRLZoneSyncResultScenarios(0);
    v20 = *(v12 - 8);
    sub_100025738(v11 + *(v20 + 72) * v7, a2, type metadata accessor for CRLZoneSyncResultScenarios);
    sub_100BD0748(v7, v10, v13);
    *v3 = v10;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = type metadata accessor for CRLZoneSyncResultScenarios(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1010F63BC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1007C8A78(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100AAA138();
    v7 = v11;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_100BCFF74(v5, v7, v9);
  *v2 = v7;
  return v8;
}

uint64_t sub_1010F64A4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_10003E994(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for UUID();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    sub_100025738(v21 + *(v29 + 72) * v20, a6, a3);
    a4(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_1010F6664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000486F0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AAB390();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CRLBoardIdentifier(0);
    sub_10003D87C(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for CRLBoardIdentifier);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Date();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_100BD0928(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Date();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1010F6800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1007C9460(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AAC1D8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CRLAssetReferrerIdentifier(0);
    sub_10003D87C(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for CRLAssetReferrerIdentifier);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for CRLBoardIdentifier(0);
    v20 = *(v13 - 8);
    sub_100025738(v12 + *(v20 + 72) * v7, a2, type metadata accessor for CRLBoardIdentifier);
    sub_100BD14F4(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for CRLBoardIdentifier(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1010F6998@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_10006E4C8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100AACC34();
      v9 = v12;
    }

    sub_10000BF3C((*(v9 + 56) + 32 * v7), a2);
    sub_100BD1DC0(v7, v9, v10);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1010F6A38(uint64_t *a1)
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
        _s5BoardVMa(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(_s5BoardVMa(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1010F6DF4(v8, v9, a1, v4);
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
    sub_1010F6B64(0, v2, 1, a1);
  }
}

void sub_1010F6B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = _s5BoardVMa(0);
  __chkstk_darwin(v42);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v37 = *a4;
    v31 = v17;
    v21 = v37 + v17 * a3;
LABEL_5:
    v35 = v18;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    v22 = v42;
    while (1)
    {
      sub_10005006C(v21, v16, _s5BoardVMa);
      sub_10005006C(v18, v12, _s5BoardVMa);
      v23 = *(v22 + 24);
      v24 = *&v16[v23 + 8];
      v40 = *&v16[v23];
      v41 = v24;
      v25 = &v12[v23];
      v27 = *v25;
      v26 = *(v25 + 1);
      v38 = v27;
      v39 = v26;
      sub_100017CD8();
      v28 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
      sub_10003D87C(v12, _s5BoardVMa);
      v22 = v42;
      sub_10003D87C(v16, _s5BoardVMa);
      if (v28 != -1)
      {
LABEL_4:
        a3 = v36 + 1;
        v18 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      sub_100025738(v21, v9, _s5BoardVMa);
      swift_arrayInitWithTakeFrontToBack();
      sub_100025738(v9, v18, _s5BoardVMa);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1010F6DF4(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v117 = a1;
  v8 = _s5BoardVMa(0);
  v123 = *(v8 - 8);
  __chkstk_darwin(v8);
  v118 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v128 = &v114 - v11;
  __chkstk_darwin(v12);
  v129 = &v114 - v13;
  __chkstk_darwin(v14);
  v16 = &v114 - v15;
  v126 = a3;
  v17 = *(a3 + 8);
  if (v17 >= 1)
  {
    v114 = a4;
    v18 = 0;
    v19 = _swiftEmptyArrayStorage;
    v130 = v8;
    while (1)
    {
      v20 = v18;
      v21 = v18 + 1;
      v124 = v19;
      if (v18 + 1 >= v17)
      {
        ++v18;
      }

      else
      {
        v127 = v17;
        v116 = v5;
        v22 = v8;
        v23 = *(v123 + 72);
        a3 = *v126 + v23 * v21;
        v121 = *v126;
        v24 = v121;
        sub_10005006C(v121 + v23 * v21, v16, _s5BoardVMa);
        v25 = v24 + v23 * v18;
        v26 = v129;
        sub_10005006C(v25, v129, _s5BoardVMa);
        v27 = *(v22 + 24);
        v28 = *&v16[v27 + 8];
        v133 = *&v16[v27];
        v134 = v28;
        v29 = (v26 + v27);
        v31 = *v29;
        v30 = v29[1];
        v131 = v31;
        v132 = v30;
        sub_100017CD8();
        v122 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
        sub_10003D87C(v26, _s5BoardVMa);
        sub_10003D87C(v16, _s5BoardVMa);
        v115 = v18;
        v32 = v18 + 2;
        v125 = v23;
        v33 = v121 + v23 * (v18 + 2);
        while (1)
        {
          v18 = v127;
          if (v127 == v32)
          {
            break;
          }

          v34 = v122 == -1;
          sub_10005006C(v33, v16, _s5BoardVMa);
          v35 = v129;
          sub_10005006C(a3, v129, _s5BoardVMa);
          v36 = *(v130 + 24);
          v37 = *&v16[v36 + 8];
          v133 = *&v16[v36];
          v134 = v37;
          v38 = (v35 + v36);
          v40 = *v38;
          v39 = v38[1];
          v131 = v40;
          v132 = v39;
          v41 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
          sub_10003D87C(v35, _s5BoardVMa);
          sub_10003D87C(v16, _s5BoardVMa);
          v42 = v34 ^ (v41 != -1);
          v19 = v124;
          ++v32;
          v33 += v125;
          a3 += v125;
          if ((v42 & 1) == 0)
          {
            v18 = v32 - 1;
            break;
          }
        }

        v20 = v115;
        v5 = v116;
        v8 = v130;
        if (v122 == -1)
        {
          if (v18 < v115)
          {
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            return;
          }

          if (v115 < v18)
          {
            v43 = v125 * (v18 - 1);
            v44 = v18 * v125;
            v45 = v18;
            v46 = v115;
            v47 = v115 * v125;
            do
            {
              if (v46 != --v45)
              {
                v48 = *v126;
                if (!*v126)
                {
                  goto LABEL_129;
                }

                a3 = v48 + v47;
                sub_100025738(v48 + v47, v118, _s5BoardVMa);
                if (v47 < v43 || a3 >= v48 + v44)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v47 != v43)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_100025738(v118, v48 + v43, _s5BoardVMa);
                v19 = v124;
              }

              ++v46;
              v43 -= v125;
              v44 -= v125;
              v47 += v125;
            }

            while (v46 < v45);
            v20 = v115;
            v5 = v116;
            v8 = v130;
          }
        }
      }

      v49 = v126[1];
      if (v18 < v49)
      {
        if (__OFSUB__(v18, v20))
        {
          goto LABEL_121;
        }

        if (v18 - v20 < v114)
        {
          if (__OFADD__(v20, v114))
          {
            goto LABEL_122;
          }

          if (v20 + v114 < v49)
          {
            v49 = v20 + v114;
          }

          if (v49 < v20)
          {
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          v120 = v49;
          if (v18 != v49)
          {
            v115 = v20;
            v116 = v5;
            v50 = *v126;
            v51 = *(v123 + 72);
            v52 = *v126 + v51 * (v18 - 1);
            v53 = -v51;
            v54 = v20 - v18;
            v119 = v51;
            a3 = v50 + v18 * v51;
            do
            {
              v127 = v18;
              v121 = a3;
              v122 = v54;
              v125 = v52;
              v55 = v52;
              while (1)
              {
                sub_10005006C(a3, v16, _s5BoardVMa);
                v56 = v129;
                sub_10005006C(v55, v129, _s5BoardVMa);
                v57 = *(v8 + 24);
                v58 = *&v16[v57 + 8];
                v133 = *&v16[v57];
                v134 = v58;
                v59 = (v56 + v57);
                v61 = *v59;
                v60 = v59[1];
                v131 = v61;
                v132 = v60;
                sub_100017CD8();
                v62 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
                sub_10003D87C(v56, _s5BoardVMa);
                sub_10003D87C(v16, _s5BoardVMa);
                if (v62 != -1)
                {
                  break;
                }

                if (!v50)
                {
                  goto LABEL_126;
                }

                v63 = v128;
                sub_100025738(a3, v128, _s5BoardVMa);
                v8 = v130;
                swift_arrayInitWithTakeFrontToBack();
                sub_100025738(v63, v55, _s5BoardVMa);
                v55 += v53;
                a3 += v53;
                if (__CFADD__(v54++, 1))
                {
                  goto LABEL_33;
                }
              }

              v8 = v130;
LABEL_33:
              v18 = v127 + 1;
              v52 = v125 + v119;
              v54 = v122 - 1;
              a3 = v121 + v119;
            }

            while (v127 + 1 != v120);
            v20 = v115;
            v5 = v116;
            v19 = v124;
            v18 = v120;
          }
        }
      }

      if (v18 < v20)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100B355CC(0, *(v19 + 2) + 1, 1, v19);
      }

      a3 = *(v19 + 2);
      v65 = *(v19 + 3);
      v66 = a3 + 1;
      if (a3 >= v65 >> 1)
      {
        v19 = sub_100B355CC((v65 > 1), a3 + 1, 1, v19);
      }

      *(v19 + 2) = v66;
      v67 = &v19[16 * a3];
      *(v67 + 4) = v20;
      *(v67 + 5) = v18;
      v68 = *v117;
      if (!*v117)
      {
        goto LABEL_130;
      }

      if (a3)
      {
        while (1)
        {
          a3 = v66 - 1;
          if (v66 >= 4)
          {
            break;
          }

          if (v66 == 3)
          {
            v69 = *(v19 + 4);
            v70 = *(v19 + 5);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
LABEL_61:
            if (v72)
            {
              goto LABEL_109;
            }

            v85 = &v19[16 * v66];
            v87 = *v85;
            v86 = *(v85 + 1);
            v88 = __OFSUB__(v86, v87);
            v89 = v86 - v87;
            v90 = v88;
            if (v88)
            {
              goto LABEL_112;
            }

            v91 = &v19[16 * a3 + 32];
            v93 = *v91;
            v92 = *(v91 + 1);
            v79 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v79)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v89, v94))
            {
              goto LABEL_116;
            }

            if (v89 + v94 >= v71)
            {
              if (v71 < v94)
              {
                a3 = v66 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v95 = &v19[16 * v66];
          v97 = *v95;
          v96 = *(v95 + 1);
          v79 = __OFSUB__(v96, v97);
          v89 = v96 - v97;
          v90 = v79;
LABEL_75:
          if (v90)
          {
            goto LABEL_111;
          }

          v98 = &v19[16 * a3];
          v100 = *(v98 + 4);
          v99 = *(v98 + 5);
          v79 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v79)
          {
            goto LABEL_114;
          }

          if (v101 < v89)
          {
            goto LABEL_3;
          }

LABEL_82:
          v106 = a3 - 1;
          if (a3 - 1 >= v66)
          {
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
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*v126)
          {
            goto LABEL_127;
          }

          v107 = *&v19[16 * v106 + 32];
          v108 = *&v19[16 * a3 + 40];
          sub_1010F7E14(*v126 + *(v123 + 72) * v107, *v126 + *(v123 + 72) * *&v19[16 * a3 + 32], *v126 + *(v123 + 72) * v108, v68);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v108 < v107)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_10113DE48(v19);
          }

          if (v106 >= *(v19 + 2))
          {
            goto LABEL_106;
          }

          v109 = &v19[16 * v106];
          *(v109 + 4) = v107;
          *(v109 + 5) = v108;
          v135 = v19;
          sub_10113DDBC(a3);
          v19 = v135;
          v66 = *(v135 + 2);
          v8 = v130;
          if (v66 <= 1)
          {
            goto LABEL_3;
          }
        }

        v73 = &v19[16 * v66 + 32];
        v74 = *(v73 - 64);
        v75 = *(v73 - 56);
        v79 = __OFSUB__(v75, v74);
        v76 = v75 - v74;
        if (v79)
        {
          goto LABEL_107;
        }

        v78 = *(v73 - 48);
        v77 = *(v73 - 40);
        v79 = __OFSUB__(v77, v78);
        v71 = v77 - v78;
        v72 = v79;
        if (v79)
        {
          goto LABEL_108;
        }

        v80 = &v19[16 * v66];
        v82 = *v80;
        v81 = *(v80 + 1);
        v79 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v79)
        {
          goto LABEL_110;
        }

        v79 = __OFADD__(v71, v83);
        v84 = v71 + v83;
        if (v79)
        {
          goto LABEL_113;
        }

        if (v84 >= v76)
        {
          v102 = &v19[16 * a3 + 32];
          v104 = *v102;
          v103 = *(v102 + 1);
          v79 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v79)
          {
            goto LABEL_117;
          }

          if (v71 < v105)
          {
            a3 = v66 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_3:
      v17 = v126[1];
      if (v18 >= v17)
      {
        goto LABEL_93;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_93:
  a3 = *v117;
  if (!*v117)
  {
    goto LABEL_131;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_124:
    v19 = sub_10113DE48(v19);
  }

  v135 = v19;
  v110 = *(v19 + 2);
  if (v110 >= 2)
  {
    while (*v126)
    {
      v111 = *&v19[16 * v110];
      v112 = *&v19[16 * v110 + 24];
      sub_1010F7E14(*v126 + *(v123 + 72) * v111, *v126 + *(v123 + 72) * *&v19[16 * v110 + 16], *v126 + *(v123 + 72) * v112, a3);
      if (v5)
      {
        goto LABEL_103;
      }

      if (v112 < v111)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10113DE48(v19);
      }

      if (v110 - 2 >= *(v19 + 2))
      {
        goto LABEL_119;
      }

      v113 = &v19[16 * v110];
      *v113 = v111;
      *(v113 + 1) = v112;
      v135 = v19;
      sub_10113DDBC(v110 - 1);
      v19 = v135;
      v110 = *(v135 + 2);
      if (v110 <= 1)
      {
        goto LABEL_103;
      }
    }

    goto LABEL_128;
  }

LABEL_103:
}

void sub_1010F77D0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v61 = a5;
  v60 = _s4NodeVMa(0);
  __chkstk_darwin(v60);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  __chkstk_darwin(v17);
  v20 = &v51 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_64;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_65;
  }

  v24 = (a2 - a1) / v22;
  v65 = a1;
  v64 = a4;
  v59 = v22;
  if (v24 >= v23 / v22)
  {
    v26 = v23 / v22 * v22;
    v58 = v18;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v26;
    if (v26 >= 1)
    {
      v37 = -v59;
      v38 = a4 + v26;
      v39 = v13;
      v55 = a4;
      v56 = a1;
      v54 = -v59;
      do
      {
        v40 = a1;
        v52 = v36;
        v41 = a2 + v37;
        v57 = a2;
        while (1)
        {
          if (a2 <= v40)
          {
            v65 = a2;
            v63 = v52;
            goto LABEL_62;
          }

          v43 = a3;
          v53 = v36;
          v59 = v38;
          v44 = v38 + v37;
          sub_10005006C(v38 + v37, v39, _s4NodeVMa);
          v45 = v6;
          v46 = v39;
          v47 = v58;
          sub_10005006C(v41, v58, _s4NodeVMa);
          v48 = sub_1010EE72C(v46, v47, v61);
          if (v45)
          {
            sub_10003D87C(v47, _s4NodeVMa);
            sub_10003D87C(v46, _s4NodeVMa);
            v65 = v57;
            v63 = v53;
            goto LABEL_62;
          }

          v49 = v48;
          v62 = 0;
          v50 = v43 + v37;
          sub_10003D87C(v47, _s4NodeVMa);
          sub_10003D87C(v46, _s4NodeVMa);
          v39 = v46;
          if (v49)
          {
            break;
          }

          v36 = v44;
          a3 = v43 + v37;
          if (v43 < v59 || v50 >= v59)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v44;
            v6 = v62;
          }

          else
          {
            v6 = v62;
            if (v43 != v59)
            {
              swift_arrayInitWithTakeBackToFront();
              v36 = v44;
            }
          }

          v38 = v36;
          v40 = v56;
          v42 = v44 > v55;
          v37 = v54;
          a2 = v57;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v43 + v37;
        if (v43 < v57 || v50 >= v57)
        {
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v62;
          v37 = v54;
        }

        else
        {
          a2 = v41;
          v6 = v62;
          v37 = v54;
          if (v43 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v56;
        v38 = v59;
        v36 = v53;
      }

      while (v59 > v55);
    }

LABEL_58:
    v65 = a2;
    v63 = v36;
  }

  else
  {
    v25 = v24 * v22;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = a4 + v25;
    v63 = a4 + v25;
    if (v25 >= 1 && a2 < a3)
    {
      v28 = v59;
      v57 = v20;
      while (1)
      {
        v29 = a3;
        sub_10005006C(a2, v20, _s4NodeVMa);
        sub_10005006C(a4, v16, _s4NodeVMa);
        v30 = sub_1010EE72C(v20, v16, v61);
        if (v6)
        {
          break;
        }

        v31 = v30;
        v62 = 0;
        v32 = v16;
        v33 = a4;
        v34 = v32;
        sub_10003D87C(v32, _s4NodeVMa);
        sub_10003D87C(v20, _s4NodeVMa);
        if (v31)
        {
          v35 = a2 + v28;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v28;
          if (a1 < v33 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = v33 + v28;
        }

        v16 = v34;
        v28 = v59;
        a1 += v59;
        v65 = a1;
        v20 = v57;
        v6 = v62;
        if (a4 >= v58 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_10003D87C(v16, _s4NodeVMa);
      sub_10003D87C(v20, _s4NodeVMa);
    }
  }

LABEL_62:
  sub_10063F7AC(&v65, &v64, &v63);
}

void sub_1010F7E14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = _s5BoardVMa(0);
  __chkstk_darwin(v51);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v43 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v14 = (a2 - a1) / v12;
  v58 = a1;
  v57 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a2;
    v26 = a4 + v16;
    if (v16 >= 1)
    {
      v27 = -v12;
      v28 = a4 + v16;
      v45 = -v12;
      v46 = a1;
      while (2)
      {
        while (1)
        {
          v43 = v26;
          v29 = v48;
          v47 = v48;
          v48 += v27;
          while (1)
          {
            if (v29 <= a1)
            {
              v58 = v29;
              v56 = v43;
              goto LABEL_60;
            }

            v31 = a3;
            v44 = v26;
            v32 = a4;
            v33 = a3 + v27;
            v34 = v28 + v27;
            v35 = v49;
            sub_10005006C(v34, v49, _s5BoardVMa);
            v36 = v50;
            sub_10005006C(v48, v50, _s5BoardVMa);
            v37 = *(v51 + 24);
            v38 = *(v35 + v37 + 8);
            v54 = *(v35 + v37);
            v55 = v38;
            v39 = (v36 + v37);
            v41 = *v39;
            v40 = v39[1];
            v52 = v41;
            v53 = v40;
            sub_100017CD8();
            v42 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
            sub_10003D87C(v36, _s5BoardVMa);
            sub_10003D87C(v35, _s5BoardVMa);
            if (v42 == -1)
            {
              break;
            }

            v26 = v34;
            a3 = v33;
            a4 = v32;
            if (v31 < v28 || v33 >= v28)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v46;
            }

            else
            {
              a1 = v46;
              if (v31 != v28)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v28 = v34;
            v30 = v34 > a4;
            v27 = v45;
            v29 = v47;
            if (!v30)
            {
              v48 = v47;
              goto LABEL_59;
            }
          }

          a3 = v33;
          a4 = v32;
          if (v31 < v47 || v33 >= v47)
          {
            break;
          }

          v27 = v45;
          a1 = v46;
          v26 = v44;
          if (v31 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v28 <= a4)
          {
            goto LABEL_59;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v27 = v45;
        a1 = v46;
        v26 = v44;
        if (v28 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v58 = v48;
    v56 = v26;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v15;
    v56 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v18 = v50;
      do
      {
        v19 = v49;
        sub_10005006C(a2, v49, _s5BoardVMa);
        sub_10005006C(a4, v18, _s5BoardVMa);
        v20 = *(v51 + 24);
        v21 = *(v19 + v20 + 8);
        v54 = *(v19 + v20);
        v55 = v21;
        v22 = (v18 + v20);
        v24 = *v22;
        v23 = v22[1];
        v52 = v24;
        v53 = v23;
        sub_100017CD8();
        v25 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();
        sub_10003D87C(v18, _s5BoardVMa);
        sub_10003D87C(v19, _s5BoardVMa);
        if (v25 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
          }

          else
          {
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v57 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v58 = a1;
      }

      while (a4 < v48 && a2 < a3);
    }
  }

LABEL_60:
  sub_10063F7C4(&v58, &v57, &v56);
}

double sub_1010F83A4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v53 = v10;
  v54 = v9;
  v52 = &v47 - v8;
  if (a2 == 2)
  {
    if ((*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) & 1) == 0)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_7;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v11 = 1;
  *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
LABEL_7:
  type metadata accessor for CRLTransactableHashableWrapper();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = &off_1018A75D0;
  swift_beginAccess();
  v13 = a1;

  sub_100E6B218(v57, v12);
  swift_endAccess();

  if (v11)
  {
    swift_beginAccess();

    sub_100E6B218(v57, v12);
    swift_endAccess();
  }

  v14 = *&v13[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];
  v15 = v13;
  v16 = v14;
  sub_1010F92B4(v16, a2, a3);

  v17 = *&v15[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer];
  sub_1010F92B4(v17, a2, a3);
  v56 = v15;

  v18 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v19 = *(a3 + v18);

  LOBYTE(v15) = sub_10079C5CC(v12, v19);

  v55 = v6;
  if (v15)
  {
    v51 = objc_opt_self();
    LODWORD(a1) = [v51 _atomicIncrementAssertCount];
    v57[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v57, "A created object should not be listed as a deleted object", 57, 2u);
    StaticString.description.getter("objectCreated(_:undoableModification:)", 38, 2);
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v23;
    v49 = v22;

    if (qword_1019F20A0 == -1)
    {
LABEL_11:
      v24 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = a1;
      v26 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v26;
      v27 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v27;
      v28 = v50;
      *(inited + 72) = v50;
      *(inited + 136) = &type metadata for String;
      v29 = sub_1000053B0();
      v30 = v48;
      *(inited + 112) = v49;
      *(inited + 120) = v30;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v29;
      *(inited + 152) = 308;
      v31 = v57[0];
      *(inited + 216) = v26;
      *(inited + 224) = v27;
      *(inited + 192) = v31;
      v32 = v28;
      v33 = v31;
      v34 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v35 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v35, "A created object should not be listed as a deleted object", 57, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v36 = swift_allocObject();
      v36[2] = 8;
      v36[3] = 0;
      v36[4] = 0;
      v36[5] = 0;
      v37 = __VaListBuilder.va_list()();
      StaticString.description.getter("objectCreated(_:undoableModification:)", 38, 2);
      v38 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
      v39 = String._bridgeToObjectiveC()();

      StaticString.description.getter("A created object should not be listed as a deleted object", 57, 2);
      v40 = String._bridgeToObjectiveC()();

      [v51 handleFailureInFunction:v38 file:v39 lineNumber:308 isFatal:0 format:v40 args:v37];

      goto LABEL_12;
    }

LABEL_16:
    swift_once();
    goto LABEL_11;
  }

LABEL_12:
  v41 = *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  ObjectType = swift_getObjectType();
  v43 = *(v41 + 24);
  swift_unknownObjectRetain();
  v43(v56, &off_1018A75D0, ObjectType, v41);
  swift_unknownObjectRelease();
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    type metadata accessor for CRLBoard(0);
    v44 = v53;
    sub_100ECADE0();
    swift_beginAccess();
    v45 = v52;
    sub_100E6AF38(v52, v44);
    (*(v54 + 8))(v45, v55);
    swift_endAccess();
  }

  return result;
}

void sub_1010F8AD4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v64 = v13;
  v65 = v11;
  v62 = &v56 - v12;
  v63 = v14;
  if (a2 == 2)
  {
    if ((*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) & 1) == 0)
    {
LABEL_4:
      v15 = 0;
      goto LABEL_7;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v15 = 1;
  *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
LABEL_7:
  type metadata accessor for CRLTransactableHashableWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = &off_10188FE10;
  swift_beginAccess();
  v5 = a1;

  sub_100E6B218(v66, v4);
  swift_endAccess();

  if (v15)
  {
    swift_beginAccess();

    sub_100E6B218(v66, v4);
    swift_endAccess();
  }

  type metadata accessor for CRLContainerItem(0);
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = v16;
  v18 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v19 = *(v16 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  v3 = v5;
  if (!v19)
  {
    sub_10096C7D4();
    v19 = *(v17 + v18);
  }

  if (v19)
  {
    a1 = v19;
  }

  else
  {
    a1 = _swiftEmptyArrayStorage;
  }

  if (a1 >> 62)
  {
LABEL_24:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v61 = v4;
    if (v20)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v61 = v4;
  if (v20)
  {
LABEL_17:
    if (v20 < 1)
    {
      __break(1u);
      return;
    }

    v21 = v5;

    for (i = 0; i != v20; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(a1 + 8 * i + 32);
      }

      v24 = v23;
      sub_1010F8AD4(v23, a2, a3);
    }

    goto LABEL_26;
  }

LABEL_25:
  v21 = v5;

LABEL_26:

  v5 = v21;
  v4 = v61;
LABEL_27:
  v25 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v26 = *(a3 + v25);

  v27 = sub_10079C5CC(v4, v26);

  if (v27)
  {
    v60 = v5;
    v59 = objc_opt_self();
    v28 = [v59 _atomicIncrementAssertCount];
    v66[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v66, "A created object should not be listed as a deleted object", 57, 2u);
    StaticString.description.getter("objectCreated(_:undoableModification:)", 38, 2);
    v58 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v29 = String._bridgeToObjectiveC()();

    v30 = [v29 lastPathComponent];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v32;
    v57 = v31;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v33 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v28;
    v35 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v35;
    v36 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v36;
    v37 = v58;
    *(inited + 72) = v58;
    *(inited + 136) = &type metadata for String;
    v38 = sub_1000053B0();
    v39 = v56;
    *(inited + 112) = v57;
    *(inited + 120) = v39;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v38;
    *(inited + 152) = 308;
    v40 = v66[0];
    *(inited + 216) = v35;
    *(inited + 224) = v36;
    *(inited + 192) = v40;
    v41 = v37;
    v42 = v40;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v44, "A created object should not be listed as a deleted object", 57, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v45 = swift_allocObject();
    v45[2] = 8;
    v45[3] = 0;
    v45[4] = 0;
    v45[5] = 0;
    v46 = __VaListBuilder.va_list()();
    StaticString.description.getter("objectCreated(_:undoableModification:)", 38, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter("A created object should not be listed as a deleted object", 57, 2);
    v49 = String._bridgeToObjectiveC()();

    [v59 handleFailureInFunction:v47 file:v48 lineNumber:308 isFatal:0 format:v49 args:v46];

    v5 = v60;
  }

  v50 = *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  ObjectType = swift_getObjectType();
  v52 = *(v50 + 24);
  swift_unknownObjectRetain();
  v52(v5, &off_10188FE10, ObjectType, v50);
  v53 = swift_unknownObjectRelease();
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v54 = v63;
    (*((swift_isaMask & *v5) + 0x88))(v53);
    swift_beginAccess();
    v55 = v62;
    sub_100E6AF38(v62, v54);
    (*(v64 + 8))(v55, v65);
    swift_endAccess();
  }
}

double sub_1010F92B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v58 = &v52 - v10;
  v59 = v11;
  if (a2 == 2)
  {
    if ((*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) & 1) == 0)
    {
LABEL_4:
      v12 = 0;
      goto LABEL_7;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v12 = 1;
  *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
LABEL_7:
  type metadata accessor for CRLTransactableHashableWrapper();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = &off_10188FE10;
  swift_beginAccess();
  v13 = a1;

  sub_100E6B218(v62, v3);
  swift_endAccess();

  if (v12)
  {
    swift_beginAccess();

    sub_100E6B218(v62, v3);
    swift_endAccess();
  }

  v14 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v15 = *&v13[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  v61 = v13;
  if (!v15)
  {
    sub_10096C7D4();
    v15 = *&v13[v14];
  }

  if (v15)
  {
    a1 = v15;
  }

  else
  {
    a1 = _swiftEmptyArrayStorage;
  }

  if (a1 >> 62)
  {
LABEL_23:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v60 = v8;
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_24:

    goto LABEL_25;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v60 = v8;
  if (!v16)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (v16 < 1)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_27;
  }

  for (i = 0; i != v16; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(a1 + 8 * i + 32);
    }

    v19 = v18;
    sub_1010F8AD4(v18, a2, a3);
  }

LABEL_25:
  v20 = v61;

  v21 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v22 = *(a3 + v21);

  v23 = sub_10079C5CC(v3, v22);

  if ((v23 & 1) == 0)
  {
    goto LABEL_28;
  }

  v57 = v7;
  v56 = objc_opt_self();
  LODWORD(a1) = [v56 _atomicIncrementAssertCount];
  v62[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v62, "A created object should not be listed as a deleted object", 57, 2u);
  StaticString.description.getter("objectCreated(_:undoableModification:)", 38, 2);
  v55 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
  v24 = String._bridgeToObjectiveC()();

  v25 = [v24 lastPathComponent];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v27;
  v54 = v26;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_32;
  }

LABEL_27:
  v28 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = a1;
  v30 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v30;
  v31 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v31;
  v32 = v55;
  *(inited + 72) = v55;
  *(inited + 136) = &type metadata for String;
  v33 = sub_1000053B0();
  v34 = v53;
  *(inited + 112) = v54;
  *(inited + 120) = v34;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v33;
  *(inited + 152) = 308;
  v35 = v62[0];
  *(inited + 216) = v30;
  *(inited + 224) = v31;
  *(inited + 192) = v35;
  v36 = v32;
  v37 = v35;
  v38 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v39 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v39, "A created object should not be listed as a deleted object", 57, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v40 = swift_allocObject();
  v40[2] = 8;
  v40[3] = 0;
  v40[4] = 0;
  v40[5] = 0;
  v41 = __VaListBuilder.va_list()();
  StaticString.description.getter("objectCreated(_:undoableModification:)", 38, 2);
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter("A created object should not be listed as a deleted object", 57, 2);
  v44 = String._bridgeToObjectiveC()();

  [v56 handleFailureInFunction:v42 file:v43 lineNumber:308 isFatal:0 format:v44 args:v41];

  v7 = v57;
  v20 = v61;
LABEL_28:
  v45 = *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  ObjectType = swift_getObjectType();
  v47 = *(v45 + 24);
  swift_unknownObjectRetain();
  v47(v20, &off_10188FE10, ObjectType, v45);
  v48 = swift_unknownObjectRelease();
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v49 = v59;
    (*(**&v20[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v48);
    swift_beginAccess();
    v50 = v58;
    sub_100E6AF38(v58, v49);
    (*(v60 + 8))(v50, v7);
    swift_endAccess();
  }

  return result;
}

void sub_1010F9A7C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_active) != 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v64 = v13;
  v65 = v11;
  v62 = &v56 - v12;
  v63 = v14;
  if (a2 == 2)
  {
    if ((*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoable) & 1) == 0)
    {
LABEL_4:
      v15 = 0;
      goto LABEL_7;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v15 = 1;
  *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_undoableAffectedItemSetNeedsUpdate) = 1;
LABEL_7:
  type metadata accessor for CRLTransactableHashableWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = &off_10188FE10;
  swift_beginAccess();
  v5 = a1;

  sub_100E6B218(v66, v4);
  swift_endAccess();

  if (v15)
  {
    swift_beginAccess();

    sub_100E6B218(v66, v4);
    swift_endAccess();
  }

  type metadata accessor for CRLContainerItem(0);
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = v16;
  v18 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v19 = *(v16 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  v3 = v5;
  if (!v19)
  {
    sub_10096C7D4();
    v19 = *(v17 + v18);
  }

  if (v19)
  {
    a1 = v19;
  }

  else
  {
    a1 = _swiftEmptyArrayStorage;
  }

  if (a1 >> 62)
  {
LABEL_24:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v61 = v4;
    if (v20)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v61 = v4;
  if (v20)
  {
LABEL_17:
    if (v20 < 1)
    {
      __break(1u);
      return;
    }

    v21 = v5;

    for (i = 0; i != v20; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(a1 + 8 * i + 32);
      }

      v24 = v23;
      sub_1010F8AD4(v23, a2, a3);
    }

    goto LABEL_26;
  }

LABEL_25:
  v21 = v5;

LABEL_26:

  v5 = v21;
  v4 = v61;
LABEL_27:
  v25 = OBJC_IVAR____TtC8Freeform21CRLTransactionContext_deletedObjects;
  swift_beginAccess();
  v26 = *(a3 + v25);

  v27 = sub_10079C5CC(v4, v26);

  if (v27)
  {
    v60 = v5;
    v59 = objc_opt_self();
    v28 = [v59 _atomicIncrementAssertCount];
    v66[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v66, "A created object should not be listed as a deleted object", 57, 2u);
    StaticString.description.getter("objectCreated(_:undoableModification:)", 38, 2);
    v58 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v29 = String._bridgeToObjectiveC()();

    v30 = [v29 lastPathComponent];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v32;
    v57 = v31;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v33 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v28;
    v35 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v35;
    v36 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v36;
    v37 = v58;
    *(inited + 72) = v58;
    *(inited + 136) = &type metadata for String;
    v38 = sub_1000053B0();
    v39 = v56;
    *(inited + 112) = v57;
    *(inited + 120) = v39;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v38;
    *(inited + 152) = 308;
    v40 = v66[0];
    *(inited + 216) = v35;
    *(inited + 224) = v36;
    *(inited + 192) = v40;
    v41 = v37;
    v42 = v40;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v44, "A created object should not be listed as a deleted object", 57, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v45 = swift_allocObject();
    v45[2] = 8;
    v45[3] = 0;
    v45[4] = 0;
    v45[5] = 0;
    v46 = __VaListBuilder.va_list()();
    StaticString.description.getter("objectCreated(_:undoableModification:)", 38, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLTransactions/CRLTransactionContext.swift", 97, 2);
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter("A created object should not be listed as a deleted object", 57, 2);
    v49 = String._bridgeToObjectiveC()();

    [v59 handleFailureInFunction:v47 file:v48 lineNumber:308 isFatal:0 format:v49 args:v46];

    v5 = v60;
  }

  v50 = *(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_transactableOwner + 8);
  ObjectType = swift_getObjectType();
  v52 = *(v50 + 24);
  swift_unknownObjectRetain();
  v52(v5, &off_10188FE10, ObjectType, v50);
  v53 = swift_unknownObjectRelease();
  if (*(a3 + OBJC_IVAR____TtC8Freeform21CRLTransactionContext_markingState) == 1)
  {
    v54 = v63;
    (*(**&v5[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v53);
    swift_beginAccess();
    v55 = v62;
    sub_100E6AF38(v62, v54);
    (*(v64 + 8))(v55, v65);
    swift_endAccess();
  }
}

void sub_1010FA260(char a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  v17[3] = &type metadata for CRLBoardAuxiliaryRealTimeChange;
  v17[4] = &off_1018834F0;
  v10 = swift_allocObject();
  v17[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v11 = *(a5 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  sub_10000630C(v17, v16);
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  sub_100050F74(v16, v12 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_101107CC0;
  *(v13 + 24) = v12;
  v15[4] = sub_10002AAE0;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = *"";
  v15[2] = sub_10002AAB8;
  v15[3] = &unk_1018B1558;
  v14 = _Block_copy(v15);
  sub_100024E98(a2, a3);

  dispatch_sync(v11, v14);
  _Block_release(v14);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  else
  {
    sub_100005070(v17);
  }
}

void sub_1010FA43C(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13[3] = &type metadata for CRLBoardAuxiliaryRealTimeChangeLegacy;
  v13[4] = &off_1018AD498;
  LOBYTE(v13[0]) = a1;
  v13[1] = a2;
  v13[2] = a3;
  v7 = *(a4 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  sub_10000630C(v13, v12);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  sub_100050F74(v12, v8 + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1011068CC;
  *(v9 + 24) = v8;
  v11[4] = sub_10002AAE0;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = *"";
  v11[2] = sub_10002AAB8;
  v11[3] = &unk_1018B1170;
  v10 = _Block_copy(v11);
  sub_100024E98(a2, a3);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_100005070(v13);
  }
}

uint64_t sub_1010FA5F4(uint64_t a1, char a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(a3 + 112) = a1;
  *(a3 + 120) = &off_1018AFD10;
  *(a3 + 144) = a2;
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v8 = sub_1000053B0();
  v9 = 0x64656C6261736964;
  if (a2)
  {
    v9 = 0x656C62616E65;
  }

  v10 = 0xE800000000000000;
  if (a2)
  {
    v10 = 0xE600000000000000;
  }

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v8;
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v11, "Board real-time sync additional message encryption (CloudKit share encryption) state: %{public}@", 96, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  *(a3 + 128) = PropertyListEncoder.init()();

  dispatch thunk of PropertyListEncoder.outputFormat.setter();

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  *(a3 + 136) = PropertyListDecoder.init()();
  return a3;
}

uint64_t sub_1010FA790(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = *(*(*(a1 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v14 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v13 + v14, v5, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v5, type metadata accessor for CRLBoardCRDTData);
  v15 = *(*(*(v20 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v15 + v16, v5, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v5, type metadata accessor for CRLBoardCRDTData);
  LOBYTE(v5) = static UUID.== infix(_:_:)();
  v17 = *(v7 + 8);
  v17(v9, v6);
  v17(v12, v6);
  return v5 & 1;
}

uint64_t sub_1010FAA00(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v6) = a4;
  v132 = a2;
  v9 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v131 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v141 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for UUID();
  v13 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v126 - v16);
  __chkstk_darwin(v18);
  v133 = &v126 - v19;
  v20 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v20 - 8);
  v134 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  v22 = a5 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_incomingSuspendedCache;
  *v22 = 0;
  *(v22 + 8) = _swiftEmptySetSingleton;
  *(v22 + 16) = 0;
  *(v22 + 24) = 1;
  *(a5 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_pushCommandToCommandControllerTask) = 0;
  *(a5 + 136) = v6;
  v139 = a1;
  v140 = a5;
  v137 = a3;
  v129 = v17;
  v130 = v13;
  if ((v6 & 1) == 0)
  {
    LODWORD(v128) = v6;
    v127 = objc_opt_self();
    LODWORD(v138) = [v127 _atomicIncrementAssertCount];
    v143[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v143, "enforceParticipantCKShareWritePermission must always be true on iOS and macOS", 77, 2u);
    StaticString.description.getter("init(editingCoordinator:suspendResumeCoordinatorState:globallyScopedBoardIdentifier:enforceParticipantCKShareWritePermission:)", 126, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/RealTime/CRLBoardRealTimeChangeCoordinator.swift", 107, 2);
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 lastPathComponent];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v138;
    v31 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v31;
    v32 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v32;
    *(inited + 72) = v23;
    *(inited + 136) = &type metadata for String;
    v33 = sub_1000053B0();
    *(inited + 112) = v26;
    *(inited + 120) = v28;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 144) = v33;
    *(inited + 152) = 201;
    v34 = v143[0];
    *(inited + 216) = v31;
    *(inited + 224) = v32;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 192) = v34;
    v35 = v23;
    v36 = v34;
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v38, "enforceParticipantCKShareWritePermission must always be true on iOS and macOS", 77, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v39 = swift_allocObject();
    v39[2] = 8;
    v39[3] = 0;
    v39[4] = 0;
    v39[5] = 0;
    v40 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(editingCoordinator:suspendResumeCoordinatorState:globallyScopedBoardIdentifier:enforceParticipantCKShareWritePermission:)", 126, 2);
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/RealTime/CRLBoardRealTimeChangeCoordinator.swift", 107, 2);
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter("enforceParticipantCKShareWritePermission must always be true on iOS and macOS", 77, 2);
    v42 = String._bridgeToObjectiveC()();

    [v127 handleFailureInFunction:v41 file:v6 lineNumber:201 isFatal:0 format:v42 args:v40];

    a3 = v137;
    v17 = v129;
    v13 = v130;
    LOBYTE(v6) = v128;
  }

  v43 = a3;
  if (qword_1019F2288 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v44 = static OS_os_log.realTimeSync;
    v138 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_10146BDE0;
    v46 = sub_1000053B0();
    v47 = v46;
    v48 = 1702195828;
    if ((v6 & 1) == 0)
    {
      v48 = 0x65736C6166;
    }

    v49 = 0xE500000000000000;
    if (v6)
    {
      v49 = 0xE400000000000000;
    }

    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = v46;
    *(v45 + 32) = v48;
    *(v45 + 40) = v49;
    v50 = UUID.uuidString.getter();
    *(v45 + 96) = &type metadata for String;
    *(v45 + 104) = v47;
    v127 = v47;
    *(v45 + 72) = v50;
    *(v45 + 80) = v51;
    v52 = static os_log_type_t.default.getter();
    sub_100005404(v44, &_mh_execute_header, v52, "CRLBoardRealTimeChangeCoordinator was instantiated with enforceParticipantCKShareWritePermission = %{public}@ for boardUUID: %{public}@", 135, 2, v45);
    swift_setDeallocating();
    v128 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v54 = v139;
    v53 = v140;
    swift_unknownObjectWeakAssign();
    v55 = *(v54 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    *(v53 + 120) = v55;
    v56 = (v53 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_suspendResumeCoordinatorState);
    *v56 = v132;
    v56[1] = &off_101888A48;
    sub_10005006C(v43, v53 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_globallyScopedBoardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    v57 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v58 = *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v59 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v60 = v58 + v59;
    v61 = v141;
    sub_10005006C(v60, v141, type metadata accessor for CRLBoardCRDTData);
    v62 = v55;
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    v63 = v133;
    CRRegister.wrappedValue.getter();
    sub_10003D87C(v61, type metadata accessor for CRLBoardCRDTData);
    v64 = (*&v55[v57] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v65 = *v64;
    v66 = v64[1];

    v67 = v134;
    sub_10084BD4C(v63, v65, v66, v134);

    v68 = v13[2];
    v69 = v136;
    v68(v17, v67, v136);
    sub_10003D87C(v67, type metadata accessor for CRLBoardIdentifier);
    v70 = v135;
    v68(v135, v43, v69);
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_10146C6B0;
    v143[0] = v69;
    sub_1005B981C(&qword_101A2AD78, &unk_1014C5F80);
    String.init<A>(describing:)();
    v72 = String._bridgeToObjectiveC()();

    v134 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v71 + 56) = v134;
    v73 = v17;
    v74 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v71 + 32) = v72;
    *(v71 + 64) = v74;
    sub_101104B20(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      swift_setDeallocating();
      sub_100005070((v71 + 32));
      v75 = v13[1];
      v75(v70, v69);
      v75(v73, v69);
      goto LABEL_40;
    }

    v141 = v71 + 32;
    v133 = objc_opt_self();
    v76 = [v133 _atomicIncrementAssertCount];
    v143[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v71, v143, "expected equality between two values of type %{public}@", 55, 2u);
    StaticString.description.getter("init(editingCoordinator:suspendResumeCoordinatorState:globallyScopedBoardIdentifier:enforceParticipantCKShareWritePermission:)", 126, 2);
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/RealTime/CRLBoardRealTimeChangeCoordinator.swift", 107, 2);
    v78 = v71;
    v79 = String._bridgeToObjectiveC()();

    v80 = [v79 lastPathComponent];

    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v84 = static OS_os_log.crlAssert;
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_10146CA70;
    *(v85 + 56) = &type metadata for Int32;
    *(v85 + 64) = &protocol witness table for Int32;
    *(v85 + 72) = v77;
    *(v85 + 32) = v76;
    v86 = v134;
    *(v85 + 96) = v134;
    *(v85 + 104) = v74;
    v87 = v127;
    *(v85 + 136) = &type metadata for String;
    *(v85 + 144) = v87;
    *(v85 + 112) = v81;
    *(v85 + 120) = v83;
    *(v85 + 176) = &type metadata for UInt;
    *(v85 + 152) = 210;
    v88 = v143[0];
    *(v85 + 216) = v86;
    *(v85 + 224) = v74;
    *(v85 + 184) = &protocol witness table for UInt;
    *(v85 + 192) = v88;
    v89 = v77;
    v90 = v88;
    v91 = static os_log_type_t.error.getter();
    sub_100005404(v84, &_mh_execute_header, v91, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v85);
    swift_setDeallocating();
    swift_arrayDestroy();
    v92 = static os_log_type_t.error.getter();
    sub_100005404(v84, &_mh_execute_header, v92, "expected equality between two values of type %{public}@", 55, 2, v78);

    type metadata accessor for __VaListBuilder();
    v93 = swift_allocObject();
    v93[2] = 8;
    v93[3] = 0;
    v17 = v93 + 3;
    v93[4] = 0;
    v93[5] = 0;
    v138 = v78;
    v94 = *(v78 + 16);
    v6 = v141;
    if (!v94)
    {
      break;
    }

    v43 = 0;
    while (1)
    {
      v95 = (v6 + 40 * v43);
      v13 = v95[4];
      sub_100020E58(v95, v95[3]);
      v96 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v97 = *v17;
      v98 = *(v96 + 16);
      v99 = __OFADD__(*v17, v98);
      v100 = *v17 + v98;
      if (v99)
      {
        break;
      }

      v101 = v93[4];
      if (v101 >= v100)
      {
        goto LABEL_31;
      }

      if (v101 + 0x4000000000000000 < 0)
      {
        goto LABEL_49;
      }

      v13 = v93[5];
      if (2 * v101 > v100)
      {
        v100 = 2 * v101;
      }

      v93[4] = v100;
      if ((v100 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_50;
      }

      v102 = v96;
      v103 = swift_slowAlloc();
      v104 = v103;
      v93[5] = v103;
      if (v13)
      {
        if (v103 != v13 || v103 >= &v13[v97])
        {
          memmove(v103, v13, 8 * v97);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v96 = v102;
        v6 = v141;
LABEL_31:
        v104 = v93[5];
        if (!v104)
        {
          goto LABEL_38;
        }

        goto LABEL_32;
      }

      v96 = v102;
      v6 = v141;
      if (!v104)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_32:
      v106 = *(v96 + 16);
      if (v106)
      {
        v107 = (v96 + 32);
        v108 = *v17;
        while (1)
        {
          v109 = *v107++;
          v104[v108] = v109;
          v108 = *v17 + 1;
          if (__OFADD__(*v17, 1))
          {
            break;
          }

          *v17 = v108;
          if (!--v106)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }

LABEL_16:

      if (++v43 == v94)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
  }

LABEL_39:
  v110 = __VaListBuilder.va_list()();
  StaticString.description.getter("init(editingCoordinator:suspendResumeCoordinatorState:globallyScopedBoardIdentifier:enforceParticipantCKShareWritePermission:)", 126, 2);
  v111 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/RealTime/CRLBoardRealTimeChangeCoordinator.swift", 107, 2);
  v112 = String._bridgeToObjectiveC()();

  StaticString.description.getter("expected equality between two values of type %{public}@", 55, 2);
  v113 = String._bridgeToObjectiveC()();

  [v133 handleFailureInFunction:v111 file:v112 lineNumber:210 isFatal:0 format:v113 args:v110];

  swift_setDeallocating();
  swift_arrayDestroy();
  v114 = v130[1];
  v115 = v136;
  v114(v135, v136);
  v114(v129, v115);
LABEL_40:
  v117 = v139;
  v116 = v140;
  v118 = v137;
  v119 = *(*(*(v140 + 120) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v119)
  {

    v120 = v119;
    [v120 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();

    sub_100006370(0, &qword_1019F52C0, CKShare_ptr);
    if (swift_dynamicCast())
    {
      v119 = v142;
    }

    else
    {
      v119 = 0;
    }
  }

  type metadata accessor for CRLChangeCoordinatorCachedShareState();
  v121 = swift_allocObject();
  v121[4] = _swiftEmptySetSingleton;
  v121[2] = v119;
  v121[3] = sub_100BD5850(_swiftEmptyArrayStorage);
  *(v116 + 128) = v121;
  v122 = *(v117 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_shareObservers);

  if (([v122 containsObject:v121] & 1) == 0)
  {
    [v122 addObject:v121];
  }

  *(v116 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_queuedIncomingUpdates) = _swiftEmptyArrayStorage;
  v123 = v131;
  sub_10005006C(v118, v131, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  type metadata accessor for CRLBoardRealTimeChangeCoordinator.CRLRealTimeChangeProcessor(0);
  v124 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10003D87C(v118, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  sub_100025738(v123, v124 + OBJC_IVAR____TtCC8Freeform33CRLBoardRealTimeChangeCoordinator26CRLRealTimeChangeProcessor_globallyScopedBoardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  *(v116 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_processor) = v124;
  return v116;
}

uint64_t sub_1010FBA80(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[10] = v5;
  v3[11] = v4;

  return _swift_task_switch(sub_1010FBB80, v5, v4);
}

uint64_t sub_1010FBB80()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  *(v0 + 96) = v2;
  if (v2)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    *(v0 + 16) = _swiftEmptyArrayStorage;
    v5 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store;
    *(v0 + 104) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store;
    v6 = *(v3 + 80);
    *(v0 + 200) = v6;
    v7 = *(v3 + 72);
    *(v0 + 120) = _swiftEmptyArrayStorage;
    *(v0 + 128) = 0;
    *(v0 + 112) = v7;
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    sub_10005006C(v1 + ((v6 + 32) & ~v6), v9, type metadata accessor for CRLBoardIdentifier);
    sub_10005006C(v9, v8, type metadata accessor for CRLBoardIdentifier);
    v10 = *(v4 + v5);
    type metadata accessor for CRLBoardActor(0);
    v11 = swift_allocObject();
    *(v0 + 136) = v11;
    v12 = v10;
    swift_defaultActor_initialize();
    sub_100025738(v8, v11 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    *(v11 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store) = v12;

    return _swift_task_switch(sub_1010FBD38, v11, 0);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1010FBD38()
{
  v1 = *(v0 + 136);
  type metadata accessor for CRLImmutableBoard(0);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store);
  v3 = OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1010FBE00;

  return sub_100797820(v2, v1 + v3, 1);
}

uint64_t sub_1010FBE00(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v4 = v3[17];
    v5 = sub_1010FC174;
    v6 = 0;
  }

  else
  {
    v4 = v3[10];
    v6 = v3[11];
    v5 = sub_1010FBF1C;
  }

  return _swift_task_switch(v5, v4, v6);
}

uint64_t sub_1010FBF1C()
{
  v1 = *(v0 + 152);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *(v0 + 152);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = *(v0 + 128) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  sub_10003D87C(v4, type metadata accessor for CRLBoardIdentifier);
  v6 = *(v0 + 16);
  *(v0 + 168) = v6;
  if (v5 == v3)
  {
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_1010FC274;
    v8 = *(v0 + 32);

    return sub_1010CA9B8(v6, v8, 1, 0);
  }

  else
  {
    v10 = *(v0 + 128) + 1;
    *(v0 + 120) = v6;
    *(v0 + 128) = v10;
    v11 = *(v0 + 104);
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = *(v0 + 40);
    sub_10005006C(*(v0 + 24) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(v0 + 112) * v10, v12, type metadata accessor for CRLBoardIdentifier);
    sub_10005006C(v12, v13, type metadata accessor for CRLBoardIdentifier);
    v15 = *(v14 + v11);
    type metadata accessor for CRLBoardActor(0);
    v16 = swift_allocObject();
    *(v0 + 136) = v16;
    v17 = v15;
    swift_defaultActor_initialize();
    sub_100025738(v13, v16 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    *(v16 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store) = v17;

    return _swift_task_switch(sub_1010FBD38, v16, 0);
  }
}

uint64_t sub_1010FC174()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_1010FC1D8, v1, v2);
}

uint64_t sub_1010FC1D8()
{
  v1 = *(v0 + 64);

  sub_10003D87C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010FC274(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1010FC420;
  }

  else
  {

    v4[24] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1010FC3A4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1010FC3A4()
{

  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1010FC420()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1010FC4A0(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, void *a5)
{
  v201 = a1;
  v8 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  __chkstk_darwin(v8 - 8);
  v222 = &v195 - v9;
  v10 = sub_1005B981C(&unk_1019FA3E0, &unk_101474F20);
  __chkstk_darwin(v10 - 8);
  v221 = &v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v214 = &v195 - v13;
  __chkstk_darwin(v14);
  v229 = &v195 - v15;
  v237 = type metadata accessor for Date();
  v16 = *(v237 - 8);
  __chkstk_darwin(v237);
  v211 = &v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v210 = &v195 - v19;
  __chkstk_darwin(v20);
  v213 = &v195 - v21;
  __chkstk_darwin(v22);
  v225 = &v195 - v23;
  v233 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v233);
  v231 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v232 = &v195 - v26;
  v27 = _s5BoardVMa(0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v243 = &v195 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v244 = &v195 - v31;
  v230 = _s4NodeVMa(0);
  v215 = *(v230 - 8);
  __chkstk_darwin(v230);
  v202 = &v195 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v228 = &v195 - v34;
  __chkstk_darwin(v35);
  v37 = &v195 - v36;
  __chkstk_darwin(v38);
  v242 = &v195 - v39;
  __chkstk_darwin(v40);
  v197 = &v195 - v41;
  __chkstk_darwin(v42);
  v209 = &v195 - v43;
  __chkstk_darwin(v44);
  v198 = &v195 - v45;
  __chkstk_darwin(v46);
  v217 = a3;
  v48 = a3[1];
  if (v48 < 1)
  {
    v176 = a5;
    v50 = _swiftEmptyArrayStorage;
    v51 = a5;
LABEL_121:
    v243 = *v201;
    if (v243)
    {
      v244 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_123;
    }

    goto LABEL_164;
  }

  v195 = &v195 - v47;
  v240 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  v241 = (v28 + 56);
  v220 = v28;
  v239 = (v28 + 48);
  v235 = (v16 + 16);
  v219 = (v16 + 56);
  v224 = (v16 + 32);
  v212 = (v16 + 8);
  v218 = a5;
  v49 = 0;
  v50 = _swiftEmptyArrayStorage;
  v51 = a5;
  v216 = a5;
  v200 = a4;
  v236 = v27;
  v238 = v37;
  v52 = v209;
  while (1)
  {
    if (v49 + 1 >= v48)
    {
      v48 = v49 + 1;
      goto LABEL_25;
    }

    v199 = v50;
    v53 = *v217;
    v54 = *(v215 + 72);
    v55 = *v217 + v54 * (v49 + 1);
    v56 = v195;
    sub_10005006C(v55, v195, _s4NodeVMa);
    v226 = v53;
    v57 = v53 + v54 * v49;
    v58 = v198;
    sub_10005006C(v57, v198, _s4NodeVMa);
    v59 = v234;
    LODWORD(v227) = sub_1010EE72C(v56, v58, v218);
    v234 = v59;
    if (v59)
    {
      sub_10003D87C(v58, _s4NodeVMa);
      v189 = v56;
      goto LABEL_134;
    }

    sub_10003D87C(v58, _s4NodeVMa);
    sub_10003D87C(v56, _s4NodeVMa);
    v196 = v49;
    v60 = v49 + 2;
    v61 = v226 + v54 * (v49 + 2);
    v62 = v197;
    do
    {
      if (v48 == v60)
      {
        goto LABEL_11;
      }

      sub_10005006C(v61, v52, _s4NodeVMa);
      sub_10005006C(v55, v62, _s4NodeVMa);
      v63 = v234;
      v64 = sub_1010EE72C(v52, v62, v218);
      v234 = v63;
      if (v63)
      {
        sub_10003D87C(v62, _s4NodeVMa);
        v189 = v52;
LABEL_134:
        sub_10003D87C(v189, _s4NodeVMa);
        v190 = v218;

        return;
      }

      v65 = v64;
      sub_10003D87C(v62, _s4NodeVMa);
      v37 = v238;
      sub_10003D87C(v52, _s4NodeVMa);
      ++v60;
      v61 += v54;
      v55 += v54;
    }

    while (((v227 ^ v65) & 1) == 0);
    v48 = v60 - 1;
LABEL_11:
    v51 = v216;
    a4 = v200;
    v50 = v199;
    v49 = v196;
    if (v227)
    {
      if (v48 >= v196)
      {
        if (v196 < v48)
        {
          v66 = v54 * (v48 - 1);
          v51 = v48;
          v67 = v48 * v54;
          v208 = v48;
          v68 = v196;
          v69 = v196 * v54;
          do
          {
            if (v68 != --v51)
            {
              v70 = *v217;
              if (!*v217)
              {
                goto LABEL_162;
              }

              sub_100025738(v70 + v69, v202, _s4NodeVMa);
              if (v69 < v66 || v70 + v69 >= v70 + v67)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v69 != v66)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_100025738(v202, v70 + v66, _s4NodeVMa);
              v37 = v238;
            }

            ++v68;
            v66 -= v54;
            v67 -= v54;
            v69 += v54;
          }

          while (v68 < v51);
          v51 = v216;
          a4 = v200;
          v50 = v199;
          v48 = v208;
          v49 = v196;
        }

        goto LABEL_25;
      }

LABEL_158:
      __break(1u);
LABEL_159:
      v191 = v218;

      __break(1u);
LABEL_160:
      v192 = v218;

      __break(1u);
LABEL_161:

      __break(1u);
LABEL_162:
      v193 = v218;

      __break(1u);
LABEL_163:
      v194 = v218;

      __break(1u);
LABEL_164:

      __break(1u);
      return;
    }

LABEL_25:
    v71 = v217[1];
    if (v48 >= v71)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v48, v49))
    {
      goto LABEL_154;
    }

    if (v48 - v49 >= a4)
    {
LABEL_34:
      v74 = v48;
      if (v48 < v49)
      {
        goto LABEL_153;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v49, a4))
    {
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    if (v49 + a4 >= v71)
    {
      v72 = v217[1];
    }

    else
    {
      v72 = v49 + a4;
    }

    v73 = v229;
    if (v72 < v49)
    {
      goto LABEL_157;
    }

    if (v48 == v72)
    {
      goto LABEL_34;
    }

    v199 = v50;
    v126 = *v217;
    v127 = *(v215 + 72);
    v128 = *v217 + v127 * (v48 - 1);
    v226 = -v127;
    v196 = v49;
    v129 = v49 - v48;
    v227 = v126;
    v203 = v127;
    v130 = v126 + v48 * v127;
    v204 = v72;
    while (2)
    {
      v208 = v48;
      v205 = v130;
      v206 = v129;
      v131 = v129;
      v207 = v128;
      v132 = v128;
      while (2)
      {
        v133 = v242;
        sub_10005006C(v130, v242, _s4NodeVMa);
        sub_10005006C(v132, v37, _s4NodeVMa);
        v134 = v232;
        sub_10005006C(v133, v232, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_86;
        }

        sub_100025738(v134, v244, _s5BoardVMa);
        v134 = v231;
        sub_10005006C(v37, v231, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_10003D87C(v244, _s5BoardVMa);
LABEL_86:
          sub_10003D87C(v134, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_87;
        }

        sub_100025738(v134, v243, _s5BoardVMa);
        v135 = v240;
        swift_beginAccess();
        v136 = *(v51 + v135);
        v137 = v236;
        if (*(v136 + 16) && (v138 = sub_1000486F0(v244), (v139 & 1) != 0))
        {
          sub_10005006C(*(v136 + 56) + *(v220 + 72) * v138, v73, _s5BoardVMa);
          v140 = 0;
        }

        else
        {
          v140 = 1;
        }

        v141 = *v241;
        (*v241)(v73, v140, 1, v137);
        v142 = *v239;
        if ((*v239)(v73, 1, v137))
        {
          sub_10000CAAC(v73, &unk_1019FA3E0, &unk_101474F20);
          swift_endAccess();
          v143 = v240;
          swift_beginAccess();
          v144 = *(v51 + v143);
          if (*(v144 + 16) && (v145 = sub_1000486F0(v243), (v146 & 1) != 0))
          {
            v147 = *(v144 + 56) + *(v220 + 72) * v145;
            v148 = v221;
            sub_10005006C(v147, v221, _s5BoardVMa);
            v149 = 0;
          }

          else
          {
            v149 = 1;
            v148 = v221;
          }

          v141(v148, v149, 1, v137);
          if (v142(v148, 1, v137))
          {
            sub_10000CAAC(v148, &unk_1019FA3E0, &unk_101474F20);
            swift_endAccess();
            sub_10003D87C(v243, _s5BoardVMa);
            sub_10003D87C(v244, _s5BoardVMa);
            v175 = v222;
            (*v219)(v222, 1, 1, v237);
            sub_10000CAAC(v175, &qword_101A0A320, &qword_10146D650);
            goto LABEL_115;
          }

          v150 = v148 + *(v137 + 32);
          v151 = v222;
          v152 = v237;
          (*v235)(v222, v150, v237);
          sub_10000CAAC(v148, &unk_1019FA3E0, &unk_101474F20);
          swift_endAccess();
          sub_10003D87C(v243, _s5BoardVMa);
          sub_10003D87C(v244, _s5BoardVMa);
          (*v219)(v151, 0, 1, v152);
          sub_10000CAAC(v151, &qword_101A0A320, &qword_10146D650);
          v37 = v238;
          sub_10003D87C(v238, _s4NodeVMa);
          sub_10003D87C(v242, _s4NodeVMa);
LABEL_109:
          if (!v227)
          {
            goto LABEL_159;
          }

          v173 = v228;
          sub_100025738(v130, v228, _s4NodeVMa);
          swift_arrayInitWithTakeFrontToBack();
          sub_100025738(v173, v132, _s4NodeVMa);
          v132 += v226;
          v130 += v226;
          v174 = __CFADD__(v131++, 1);
          v73 = v229;
          if (v174)
          {
            goto LABEL_88;
          }

          continue;
        }

        break;
      }

      v153 = v51;
      v154 = v73 + *(v137 + 32);
      v155 = v213;
      v156 = v237;
      v223 = *v235;
      v223(v213, v154, v237);
      sub_10000CAAC(v73, &unk_1019FA3E0, &unk_101474F20);
      swift_endAccess();
      v157 = *v224;
      (*v224)(v225, v155, v156);
      v158 = v240;
      swift_beginAccess();
      v159 = *(v153 + v158);
      if (*(v159 + 16) && (v160 = sub_1000486F0(v243), (v161 & 1) != 0))
      {
        v162 = *(v159 + 56) + *(v220 + 72) * v160;
        v163 = v214;
        sub_10005006C(v162, v214, _s5BoardVMa);
        v164 = 0;
      }

      else
      {
        v164 = 1;
        v163 = v214;
      }

      v165 = v236;
      v141(v163, v164, 1, v236);
      if (v142(v163, 1, v165))
      {
        sub_10000CAAC(v163, &unk_1019FA3E0, &unk_101474F20);
        swift_endAccess();
        (*v212)(v225, v237);
        sub_10003D87C(v243, _s5BoardVMa);
        sub_10003D87C(v244, _s5BoardVMa);
        v51 = v216;
        v73 = v229;
LABEL_115:
        v37 = v238;
LABEL_87:
        sub_10003D87C(v37, _s4NodeVMa);
        sub_10003D87C(v242, _s4NodeVMa);
        goto LABEL_88;
      }

      v166 = v163 + *(v165 + 32);
      v167 = v211;
      v168 = v237;
      v223(v211, v166, v237);
      sub_10000CAAC(v163, &unk_1019FA3E0, &unk_101474F20);
      swift_endAccess();
      v169 = v210;
      v157(v210, v167, v168);
      v170 = v225;
      v171 = static Date.> infix(_:_:)();
      v172 = *v212;
      (*v212)(v169, v168);
      v172(v170, v168);
      sub_10003D87C(v243, _s5BoardVMa);
      sub_10003D87C(v244, _s5BoardVMa);
      v37 = v238;
      sub_10003D87C(v238, _s4NodeVMa);
      sub_10003D87C(v242, _s4NodeVMa);
      v51 = v216;
      if (v171)
      {
        goto LABEL_109;
      }

      v73 = v229;
LABEL_88:
      v48 = v208 + 1;
      v128 = v207 + v203;
      v129 = v206 - 1;
      v130 = v205 + v203;
      v74 = v204;
      if (v208 + 1 != v204)
      {
        continue;
      }

      break;
    }

    v50 = v199;
    v52 = v209;
    v49 = v196;
    if (v204 < v196)
    {
      goto LABEL_153;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_100B355CC(0, *(v50 + 2) + 1, 1, v50);
    }

    v51 = *(v50 + 2);
    v75 = *(v50 + 3);
    v76 = v51 + 1;
    if (v51 >= v75 >> 1)
    {
      v50 = sub_100B355CC((v75 > 1), v51 + 1, 1, v50);
    }

    *(v50 + 2) = v76;
    v77 = &v50[16 * v51];
    *(v77 + 4) = v49;
    *(v77 + 5) = v74;
    v204 = v74;
    v227 = *v201;
    if (!v227)
    {
      goto LABEL_163;
    }

    if (v51)
    {
      break;
    }

LABEL_3:
    v48 = v217[1];
    v49 = v204;
    v51 = v216;
    a4 = v200;
    if (v204 >= v48)
    {
      goto LABEL_121;
    }
  }

  while (2)
  {
    v78 = v76 - 1;
    if (v76 >= 4)
    {
      v83 = &v50[16 * v76 + 32];
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_140;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_141;
      }

      v90 = &v50[16 * v76];
      v92 = *v90;
      v91 = *(v90 + 1);
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_143;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_146;
      }

      if (v94 >= v86)
      {
        v112 = &v50[16 * v78 + 32];
        v114 = *v112;
        v113 = *(v112 + 1);
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_152;
        }

        if (v81 < v115)
        {
          v78 = v76 - 2;
        }
      }

      else
      {
LABEL_54:
        if (v82)
        {
          goto LABEL_142;
        }

        v95 = &v50[16 * v76];
        v97 = *v95;
        v96 = *(v95 + 1);
        v98 = __OFSUB__(v96, v97);
        v99 = v96 - v97;
        v100 = v98;
        if (v98)
        {
          goto LABEL_145;
        }

        v101 = &v50[16 * v78 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v89 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v89)
        {
          goto LABEL_148;
        }

        if (__OFADD__(v99, v104))
        {
          goto LABEL_149;
        }

        if (v99 + v104 < v81)
        {
          goto LABEL_68;
        }

        if (v81 < v104)
        {
          v78 = v76 - 2;
        }
      }
    }

    else
    {
      if (v76 == 3)
      {
        v79 = *(v50 + 4);
        v80 = *(v50 + 5);
        v89 = __OFSUB__(v80, v79);
        v81 = v80 - v79;
        v82 = v89;
        goto LABEL_54;
      }

      v105 = &v50[16 * v76];
      v107 = *v105;
      v106 = *(v105 + 1);
      v89 = __OFSUB__(v106, v107);
      v99 = v106 - v107;
      v100 = v89;
LABEL_68:
      if (v100)
      {
        goto LABEL_144;
      }

      v108 = &v50[16 * v78];
      v110 = *(v108 + 4);
      v109 = *(v108 + 5);
      v89 = __OFSUB__(v109, v110);
      v111 = v109 - v110;
      if (v89)
      {
        goto LABEL_147;
      }

      if (v111 < v99)
      {
        goto LABEL_3;
      }
    }

    v51 = v78 - 1;
    if (v78 - 1 < v76)
    {
      v116 = *v217;
      if (!*v217)
      {
        goto LABEL_160;
      }

      v117 = v50;
      v118 = *&v50[16 * v51 + 32];
      v119 = *&v50[16 * v78 + 40];
      v120 = *(v215 + 72);
      v121 = v116 + v120 * v118;
      v50 = (v116 + v120 * *&v50[16 * v78 + 32]);
      v122 = v116 + v120 * v119;
      v123 = v218;
      v124 = v234;
      sub_1010F77D0(v121, v50, v122, v227, v123);
      v234 = v124;
      if (v124)
      {

        return;
      }

      if (v119 < v118)
      {
        goto LABEL_138;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = sub_10113DE48(v117);
      }

      v37 = v238;
      if (v51 >= *(v117 + 2))
      {
        goto LABEL_139;
      }

      v125 = &v117[16 * v51];
      *(v125 + 4) = v118;
      *(v125 + 5) = v119;
      v245 = v117;
      sub_10113DDBC(v78);
      v50 = v245;
      v76 = *(v245 + 2);
      v52 = v209;
      if (v76 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  v50 = sub_10113DE48(v50);
LABEL_123:
  v245 = v50;
  v51 = *(v50 + 2);
  if (v51 >= 2)
  {
    do
    {
      v177 = *v217;
      if (!*v217)
      {
        goto LABEL_161;
      }

      v178 = *&v50[16 * v51];
      v179 = v50;
      v180 = *&v50[16 * v51 + 16];
      v181 = *&v50[16 * v51 + 24];
      v182 = *(v215 + 72);
      v50 = (v177 + v182 * v178);
      v183 = v177 + v182 * v180;
      v184 = v177 + v182 * v181;
      v185 = v244;
      v186 = v234;
      sub_1010F77D0(v50, v183, v184, v243, v185);
      v234 = v186;
      if (v186)
      {

        return;
      }

      if (v181 < v178)
      {
        goto LABEL_150;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v179 = sub_10113DE48(v179);
      }

      if (v51 - 2 >= *(v179 + 2))
      {
        goto LABEL_151;
      }

      v187 = &v179[16 * v51];
      *v187 = v178;
      *(v187 + 1) = v181;
      v245 = v179;
      sub_10113DDBC(v51 - 1);
      v50 = v245;
      v51 = *(v245 + 2);
    }

    while (v51 > 1);
  }

  v188 = v244;
}

void sub_1010FDB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v37 = a5;
  v36 = _s4NodeVMa(0);
  __chkstk_darwin(v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = *a4;
    v28 = v18;
    v22 = v34 + v18 * a3;
LABEL_4:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v19;
    while (1)
    {
      sub_10005006C(v22, v17, _s4NodeVMa);
      sub_10005006C(v23, v13, _s4NodeVMa);
      v24 = sub_1010EE72C(v17, v13, v37);
      sub_10003D87C(v13, _s4NodeVMa);
      sub_10003D87C(v17, _s4NodeVMa);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return;
        }

        v25 = v35;
        sub_100025738(v22, v35, _s4NodeVMa);
        swift_arrayInitWithTakeFrontToBack();
        sub_100025738(v25, v23, _s4NodeVMa);
        v23 += v20;
        v22 += v20;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v19 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1010FDDF8(unint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s4NodeVMa(0);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9 = *(_s4NodeVMa(0) - 8);
      v11[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v11[1] = v7;
      v10 = v4;
      sub_1010FC4A0(v11, v12, a1, v6, v10);

      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1010FDB8C(0, v3, 1, a1, v4);
  }
}

void sub_1010FDF64(uint64_t *a1, void *a2)
{
  v4 = *(_s4NodeVMa(0) - 8);
  v5 = *a1;
  v6 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_10113DF9C(v5);
  }

  v7 = v5[2];
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;
  v8 = v6;
  sub_1010FDDF8(v9, v8);

  *a1 = v5;
}

uint64_t sub_1010FE044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a1;
  v57 = a3;
  v4 = type metadata accessor for CRLFolderIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v54 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v52 - v7;
  v58 = _s4NodeVMa(0);
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v52 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A2AD10, &qword_1014C5DD8);
  __chkstk_darwin(v9);
  v59 = &v52 - v10;
  v11 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v11 - 8);
  v53 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v26 - 8);
  v61 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005006C(a2, v25, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    goto LABEL_5;
  }

  v28 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  if (!(*(*(v28 - 8) + 48))(v25, 5, v28))
  {
    sub_100025738(v25, v61, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_100F87E04(v22);
    v33 = v57;
    if (*(v57 + 16) && (v34 = sub_10003E994(v22), (v35 & 1) != 0))
    {
      sub_10005006C(*(v33 + 56) + *(v60 + 72) * v34, v18, _s4NodeVMa);
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    (*(v20 + 8))(v22, v19);
    v37 = v60;
    v38 = *(v60 + 56);
    v39 = v58;
    v38(v18, v36, 1, v58);
    sub_10005006C(a2, v15, _s4NodeVMa);
    v38(v15, 0, 1, v39);
    v40 = *(v9 + 48);
    v41 = v59;
    sub_10000BE14(v18, v59, &unk_1019FB770, &unk_10146FA30);
    sub_10000BE14(v15, v41 + v40, &unk_1019FB770, &unk_10146FA30);
    v42 = *(v37 + 48);
    if (v42(v41, 1, v39) == 1)
    {
      sub_10000CAAC(v15, &unk_1019FB770, &unk_10146FA30);
      sub_10000CAAC(v18, &unk_1019FB770, &unk_10146FA30);
      if (v42(v41 + v40, 1, v39) == 1)
      {
        sub_10000CAAC(v41, &unk_1019FB770, &unk_10146FA30);
LABEL_14:
        v30 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
        v31 = v61;
        return sub_10003D87C(v31, v30);
      }
    }

    else
    {
      v43 = v53;
      sub_10000BE14(v41, v53, &unk_1019FB770, &unk_10146FA30);
      if (v42(v41 + v40, 1, v39) != 1)
      {
        v50 = v52;
        sub_100025738(v41 + v40, v52, _s4NodeVMa);
        if (sub_100F91CB8(v43, v50))
        {
          v51 = sub_10066F2C0(*(v43 + *(v39 + 20)), *(v50 + *(v39 + 20)));
          sub_10000CAAC(v15, &unk_1019FB770, &unk_10146FA30);
          sub_10000CAAC(v18, &unk_1019FB770, &unk_10146FA30);
          sub_10003D87C(v50, _s4NodeVMa);
          sub_10003D87C(v43, _s4NodeVMa);
          sub_10000CAAC(v41, &unk_1019FB770, &unk_10146FA30);
          if (v51)
          {
            goto LABEL_14;
          }

LABEL_19:
          v47 = v61;
          v48 = v54;
          sub_10005006C(v61, v54, type metadata accessor for CRLFolderIdentifier);
          v49 = v55;
          sub_100E70750(v55, v48);
          sub_10003D87C(v49, type metadata accessor for CRLFolderIdentifier);
          v30 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
          v31 = v47;
          return sub_10003D87C(v31, v30);
        }

        sub_10000CAAC(v15, &unk_1019FB770, &unk_10146FA30);
        sub_10000CAAC(v18, &unk_1019FB770, &unk_10146FA30);
        sub_10003D87C(v50, _s4NodeVMa);
        sub_10003D87C(v43, _s4NodeVMa);
        v46 = v41;
        v44 = &unk_1019FB770;
        v45 = &unk_10146FA30;
LABEL_18:
        sub_10000CAAC(v46, v44, v45);
        goto LABEL_19;
      }

      sub_10000CAAC(v15, &unk_1019FB770, &unk_10146FA30);
      sub_10000CAAC(v18, &unk_1019FB770, &unk_10146FA30);
      sub_10003D87C(v43, _s4NodeVMa);
    }

    v44 = &qword_101A2AD10;
    v45 = &qword_1014C5DD8;
    v46 = v41;
    goto LABEL_18;
  }

  v29 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_5:
  v30 = v29;
  v31 = v25;
  return sub_10003D87C(v31, v30);
}

Swift::Int sub_1010FE83C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v34 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;
  v12 = a2;
  v13 = v12;
  if (v9 > 0xD)
  {
LABEL_23:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v26 = swift_slowAlloc();
      v27 = v13;
      sub_1010F3C90(v26, v10, a1, v27);
      v24 = v28;

      return v24;
    }
  }

  v30 = v10;
  v31 = v3;
  v29 = &v29;
  __chkstk_darwin(v12);
  v32 = &v29 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v32, v11);
  v35 = v13;
  v36 = a1;
  v3 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  a1 = v15 & *(a1 + 56);
  v16 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  swift_beginAccess();
  v17 = 0;
  v10 = 0;
  v18 = (v14 + 63) >> 6;
  while (2)
  {
    v33 = v17;
    while (1)
    {
      if (!a1)
      {
        v20 = v10;
        while (1)
        {
          v10 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v10 >= v18)
          {
            goto LABEL_20;
          }

          v21 = *(v3 + 8 * v10);
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            a1 = (v21 - 1) & v21;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

      v19 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
LABEL_13:
      v13 = v19 | (v10 << 6);
      sub_10005006C(*(v36 + 48) + *(v34 + 72) * v13, v8, type metadata accessor for CRLBoardIdentifier);
      v11 = *&v35[v16];
      if (!*(v11 + 16))
      {
        break;
      }

      sub_1000486F0(v8);
      v23 = v22;

      sub_10003D87C(v8, type metadata accessor for CRLBoardIdentifier);
      if ((v23 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_10003D87C(v8, type metadata accessor for CRLBoardIdentifier);
LABEL_17:
    *&v32[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
    v17 = v33 + 1;
    if (!__OFADD__(v33, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_20:
  v24 = sub_1010F47E8(v32, v30, v33, v36);

  return v24;
}

void sub_1010FEBBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v26 = a4;
  v22 = a2;
  v23 = a1;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v10 << 6);
    sub_10005006C(*(a3 + 48) + *(v25 + 72) * v18, v9, type metadata accessor for CRLBoardIdentifier);
    v19 = sub_1010EF07C(v9, v26, v27);
    sub_10003D87C(v9, type metadata accessor for CRLBoardIdentifier);
    if (v5)
    {
      return;
    }

    if (v19)
    {
      *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1010F47E8(v23, v22, v24, a3);
        return;
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      goto LABEL_16;
    }

    v17 = *(a3 + 56 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1010FEDCC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v31 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v27 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v27;
  v33 = a2;

  v12 = a3;
  v32 = v12;
  if (v10 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v29 = &v27;
    __chkstk_darwin(v12);
    v28 = &v27 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v11);
    v30 = 0;
    v11 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v20 = v17 | (v11 << 6);
      sub_10005006C(*(a1 + 48) + *(v31 + 72) * v20, v9, type metadata accessor for CRLBoardIdentifier);
      v21 = sub_1010EF07C(v9, v33, v32);
      sub_10003D87C(v9, type metadata accessor for CRLBoardIdentifier);
      if (v3)
      {

        swift_willThrow();

        return v21;
      }

      if (v21)
      {
        *&v28[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_17:
          v21 = sub_1010F47E8(v28, v27, v30, a1);

          return v21;
        }
      }
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_17;
      }

      v19 = *(a1 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v33;

  v26 = v32;
  v21 = sub_1010F3BDC(v24, v27, a1, v25, v26);

  return v21;
}

uint64_t sub_1010FF154(uint64_t a1)
{
  v2[82] = v1;
  v2[81] = a1;
  sub_1005B981C(&qword_1019F6268, &unk_101471D00);
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[86] = swift_task_alloc();
  v2[87] = *(_s5BoardVMa(0) - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v2[95] = v3;
  v2[96] = *(v3 - 8);
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();
  v2[109] = *(_s4NodeVMa(0) - 8);
  v2[110] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[111] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[112] = v5;
  v2[113] = v4;

  return _swift_task_switch(sub_1010FF46C, v5, v4);
}

uint64_t sub_1010FF46C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[81];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v3[109];
    v7 = v3[96];
    v8 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v30 = (v7 + 56);
    v31 = *(v6 + 72);
    v29 = v7;
    v9 = (v7 + 48);
    v10 = _swiftEmptyArrayStorage;
    v11 = &unk_1019F52D0;
    do
    {
      v12 = v11;
      v13 = v3[110];
      v14 = v3[86];
      sub_10005006C(v8, v13, _s4NodeVMa);
      sub_10005006C(v13, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10003D87C(v13, _s4NodeVMa);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v15 = v3[93];
        v16 = v3[92];
        sub_100025738(v3[86], v16, _s5BoardVMa);
        sub_10005006C(v16, v15, type metadata accessor for CRLBoardIdentifier);
        sub_10003D87C(v16, _s5BoardVMa);
        v17 = 0;
      }

      else
      {
        sub_10003D87C(v3[86], type metadata accessor for CRLBoardLibraryViewModel.Item);
        v17 = 1;
      }

      v18 = v3[95];
      v19 = v3[94];
      v20 = v3[93];
      (*v30)(v20, v17, 1, v18);
      v21 = v20;
      v11 = v12;
      sub_10003DFF8(v21, v19, v12, &unk_10147C1C0);
      if ((*v9)(v19, 1, v18) == 1)
      {
        a1 = sub_10000CAAC(v3[94], v12, &unk_10147C1C0);
      }

      else
      {
        sub_100025738(v3[94], v3[108], type metadata accessor for CRLBoardIdentifier);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100B36BE4(0, v10[2] + 1, 1, v10);
        }

        v23 = v10[2];
        v22 = v10[3];
        if (v23 >= v22 >> 1)
        {
          v10 = sub_100B36BE4((v22 > 1), v23 + 1, 1, v10);
        }

        v24 = v3[108];
        v10[2] = v23 + 1;
        a1 = sub_100025738(v24, v10 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23, type metadata accessor for CRLBoardIdentifier);
      }

      v8 += v31;
      --v5;
    }

    while (v5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v3[114] = v10;
  v25 = v3[82];
  v26 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_entityStore;
  v3[115] = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_entityStore;
  v27 = *(v25 + v26);
  v3[116] = v27;
  if (v27)
  {

    a1 = sub_1010FF7C8;
    a2 = v27;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1010FF7C8()
{
  v1 = v0[116];
  swift_beginAccess();
  v0[117] = *(v1 + 120);
  v2 = v0[113];
  v3 = v0[112];

  return _swift_task_switch(sub_1010FF860, v3, v2);
}

uint64_t sub_1010FF860()
{
  v1 = *(v0 + 912);

  v92 = v1;
  v96 = *(v1 + 16);
  if (v96)
  {
    v2 = 0;
    v93 = *(v0 + 936);
    v3 = *(v0 + 768);
    do
    {
      if (v2 >= *(v1 + 16))
      {
        goto LABEL_84;
      }

      v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v5 = *(v3 + 72);
      sub_10005006C(*(v0 + 912) + v4 + v5 * v2, *(v0 + 856), type metadata accessor for CRLBoardIdentifier);
      if (*(v93 + 16) && (v6 = *(v0 + 856), , sub_1000486F0(v6), LOBYTE(v6) = v7, , (v6 & 1) != 0))
      {
        sub_10003D87C(*(v0 + 856), type metadata accessor for CRLBoardIdentifier);
      }

      else
      {
        sub_100025738(*(v0 + 856), *(v0 + 848), type metadata accessor for CRLBoardIdentifier);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10004B394(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          sub_10004B394((v8 > 1), v9 + 1, 1);
        }

        v10 = *(v0 + 848);
        _swiftEmptyArrayStorage[2] = v9 + 1;
        sub_100025738(v10, _swiftEmptyArrayStorage + v4 + v9 * v5, type metadata accessor for CRLBoardIdentifier);
      }

      ++v2;
    }

    while (v96 != v2);
    v11 = 0;
    v94 = *(v0 + 936);
    v12 = *(v0 + 768);
    while (v11 < *(v1 + 16))
    {
      v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v14 = *(v12 + 72);
      sub_10005006C(*(v0 + 912) + v13 + v14 * v11, *(v0 + 840), type metadata accessor for CRLBoardIdentifier);
      if (*(v94 + 16) && (v15 = *(v0 + 840), , sub_1000486F0(v15), LOBYTE(v15) = v16, , (v15 & 1) != 0))
      {
        sub_100025738(*(v0 + 840), *(v0 + 832), type metadata accessor for CRLBoardIdentifier);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10004B394(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_10004B394((v17 > 1), v18 + 1, 1);
        }

        v19 = *(v0 + 832);
        _swiftEmptyArrayStorage[2] = v18 + 1;
        sub_100025738(v19, _swiftEmptyArrayStorage + v13 + v18 * v14, type metadata accessor for CRLBoardIdentifier);
        v1 = v92;
      }

      else
      {
        sub_10003D87C(*(v0 + 840), type metadata accessor for CRLBoardIdentifier);
      }

      if (v96 == ++v11)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_85;
  }

LABEL_24:
  *(v0 + 952) = _swiftEmptyArrayStorage;
  *(v0 + 944) = _swiftEmptyArrayStorage;
  v20 = *(v0 + 936);
  v23 = *(v20 + 64);
  v22 = v20 + 64;
  v21 = v23;
  v97 = *(v0 + 768);
  v24 = -1;
  v25 = -1 << *(*(v0 + 936) + 32);
  if (-v25 < 64)
  {
    v24 = ~(-1 << -v25);
  }

  v26 = v24 & v21;
  v27 = (63 - v25) >> 6;
  v91 = *(v0 + 936);

  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  v90 = v22;
  *(v0 + 960) = _swiftEmptyArrayStorage;
  if (!v26)
  {
    goto LABEL_30;
  }

  do
  {
    while (1)
    {
      v95 = v29;
LABEL_35:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = *(v97 + 72);
      sub_10005006C(*(v91 + 48) + v32 * (v31 | (v28 << 6)), *(v0 + 824), type metadata accessor for CRLBoardIdentifier);
      v33 = *(v1 + 16);
      if (v33)
      {
        break;
      }

LABEL_46:
      sub_100025738(*(v0 + 824), *(v0 + 808), type metadata accessor for CRLBoardIdentifier);
      v29 = v95;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10004B394(0, v95[2] + 1, 1);
        v29 = v95;
      }

      v22 = v90;
      v44 = v29[2];
      v43 = v29[3];
      if (v44 >= v43 >> 1)
      {
        sub_10004B394((v43 > 1), v44 + 1, 1);
        v29 = v95;
      }

      v45 = *(v0 + 808);
      v29[2] = v44 + 1;
      sub_100025738(v45, v29 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + v44 * v32, type metadata accessor for CRLBoardIdentifier);
      v1 = v92;
      *(v0 + 960) = v29;
      if (!v26)
      {
        goto LABEL_30;
      }
    }

    v34 = *(v0 + 912) + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    while (1)
    {
      sub_10005006C(v34, *(v0 + 816), type metadata accessor for CRLBoardIdentifier);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        sub_10003D87C(*(v0 + 816), type metadata accessor for CRLBoardIdentifier);
        goto LABEL_38;
      }

      v35 = *(v0 + 824);
      v36 = *(v0 + 816);
      v37 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
      v38 = *(v36 + v37);
      v39 = *(v36 + v37 + 8);
      v40 = (v35 + v37);
      if (v38 == *v40 && v39 == v40[1])
      {
        break;
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10003D87C(v36, type metadata accessor for CRLBoardIdentifier);
      if (v42)
      {
        goto LABEL_29;
      }

LABEL_38:
      v34 += v32;
      if (!--v33)
      {
        goto LABEL_46;
      }
    }

    sub_10003D87C(v36, type metadata accessor for CRLBoardIdentifier);
LABEL_29:
    sub_10003D87C(*(v0 + 824), type metadata accessor for CRLBoardIdentifier);
    v1 = v92;
    v29 = v95;
    v22 = v90;
    *(v0 + 960) = v95;
  }

  while (v26);
LABEL_30:
  while (2)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    if (v30 < v27)
    {
      v26 = *(v22 + 8 * v30);
      ++v28;
      if (!v26)
      {
        continue;
      }

      v95 = v29;
      v28 = v30;
      goto LABEL_35;
    }

    break;
  }

  v46 = _swiftEmptyArrayStorage[2];
  *(v0 + 968) = v46;
  if (!v46)
  {
LABEL_60:
    v56 = *(v0 + 952);
    v57 = *(v56 + 16);
    *(v0 + 1016) = v57;
    if (v57)
    {
      v58 = *(v0 + 768);
      *(v0 + 1024) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
      *(v0 + 1140) = *(v58 + 80);
      *(v0 + 1032) = 0u;
      if (*(v56 + 16))
      {
        v59 = 0;
        while (1)
        {
          v60 = *(v0 + 1024);
          v61 = *(v0 + 656);
          sub_10005006C(v56 + ((*(v0 + 1140) + 32) & ~*(v0 + 1140)) + *(*(v0 + 768) + 72) * v59, *(v0 + 792), type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();
          v62 = *(v61 + v60);
          if (*(v62 + 16))
          {
            v63 = sub_1000486F0(*(v0 + 792));
            if (v64)
            {
              break;
            }
          }

          swift_endAccess();
          v65 = *(v0 + 1016);
          v66 = *(v0 + 1040) + 1;
          sub_10003D87C(*(v0 + 792), type metadata accessor for CRLBoardIdentifier);
          if (v66 == v65)
          {
            goto LABEL_68;
          }

          v59 = *(v0 + 1040) + 1;
          *(v0 + 1040) = v59;
          *(v0 + 1032) = 0;
          v56 = *(v0 + 952);
          if (v59 >= *(v56 + 16))
          {
            goto LABEL_67;
          }
        }

        v84 = *(v0 + 920);
        v85 = *(v0 + 712);
        v86 = *(v0 + 704);
        v87 = *(v0 + 656);
        sub_10005006C(*(v62 + 56) + *(*(v0 + 696) + 72) * v63, v86, _s5BoardVMa);
        sub_100025738(v86, v85, _s5BoardVMa);
        inited = swift_endAccess();
        v76 = *(v87 + v84);
        *(v0 + 1048) = v76;
        if (!v76)
        {
          goto LABEL_91;
        }

        v77 = sub_101100F30;
LABEL_79:
        v88 = v77;

        inited = v88;
        goto LABEL_80;
      }

LABEL_67:
      __break(1u);
    }

LABEL_68:
    v67 = *(v0 + 960);
    v68 = *(v67 + 16);
    *(v0 + 1064) = v68;
    if (!v68)
    {
      if (qword_1019F2238 == -1)
      {
LABEL_75:
        v82 = *(v0 + 920);
        v83 = *(v0 + 656);
        *(v0 + 1096) = static OS_os_log.appIntents;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(v0 + 1104) = inited;
        *(inited + 16) = xmmword_10146C6B0;
        v76 = *(v83 + v82);
        *(v0 + 1112) = v76;
        if (!v76)
        {
          goto LABEL_90;
        }

        inited = sub_101101928;
LABEL_80:
        v74 = v76;
        v75 = 0;

        return _swift_task_switch(inited, v74, v75);
      }

LABEL_87:
      swift_once();
      goto LABEL_75;
    }

    *(v0 + 1072) = 0;
    if (*(v67 + 16))
    {
      v69 = *(v0 + 920);
      v70 = *(v0 + 784);
      v71 = *(v0 + 768);
      v72 = *(v0 + 656);
      *(v0 + 1080) = *(v71 + 72);
      inited = sub_10005006C(v67 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), v70, type metadata accessor for CRLBoardIdentifier);
      v76 = *(v72 + v69);
      *(v0 + 1088) = v76;
      if (v76)
      {
        v77 = sub_101101310;
        goto LABEL_79;
      }

      __break(1u);
      goto LABEL_89;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  *(v0 + 976) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  *(v0 + 1136) = *(v97 + 80);
  *(v0 + 984) = 0u;
  v47 = *(v0 + 944);
  if (!*(v47 + 16))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v48 = 0;
  while (1)
  {
    v49 = *(v0 + 976);
    v50 = *(v0 + 656);
    sub_10005006C(v47 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 768) + 72) * v48, *(v0 + 800), type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v51 = *(v50 + v49);
    if (*(v51 + 16))
    {
      v52 = sub_1000486F0(*(v0 + 800));
      if (v53)
      {
        break;
      }
    }

    swift_endAccess();
    v54 = *(v0 + 968);
    v55 = *(v0 + 992) + 1;
    sub_10003D87C(*(v0 + 800), type metadata accessor for CRLBoardIdentifier);
    if (v55 == v54)
    {
      goto LABEL_60;
    }

    v48 = *(v0 + 992) + 1;
    *(v0 + 992) = v48;
    *(v0 + 984) = 0;
    v47 = *(v0 + 944);
    if (v48 >= *(v47 + 16))
    {
      goto LABEL_59;
    }
  }

  v78 = *(v0 + 920);
  v79 = *(v0 + 728);
  v80 = *(v0 + 720);
  v81 = *(v0 + 656);
  sub_10005006C(*(v51 + 56) + *(*(v0 + 696) + 72) * v52, v80, _s5BoardVMa);
  sub_100025738(v80, v79, _s5BoardVMa);
  inited = swift_endAccess();
  v76 = *(v81 + v78);
  *(v0 + 1000) = v76;
  if (v76)
  {
    v77 = sub_101100330;
    goto LABEL_79;
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return _swift_task_switch(inited, v74, v75);
}

uint64_t sub_101100330()
{
  v1 = v0[123];
  sub_1012818E0(v0[91]);
  v0[126] = v1;
  if (v1)
  {
    v2 = v0[113];
    v3 = v0[112];
    v4 = sub_101100890;
  }

  else
  {

    v2 = v0[113];
    v3 = v0[112];
    v4 = sub_1011003D0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1011003D0()
{
  v1 = *(v0 + 1008);
  sub_10003D87C(*(v0 + 728), _s5BoardVMa);
  while (1)
  {
    v2 = *(v0 + 968);
    v3 = *(v0 + 992) + 1;
    sub_10003D87C(*(v0 + 800), type metadata accessor for CRLBoardIdentifier);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(v0 + 992) + 1;
    *(v0 + 992) = v4;
    *(v0 + 984) = v1;
    v5 = *(v0 + 944);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
LABEL_22:
      v37 = *(v0 + 920);
      v38 = *(v0 + 656);
      *(v0 + 1096) = static OS_os_log.appIntents;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(v0 + 1104) = inited;
      *(inited + 16) = xmmword_10146C6B0;
      v18 = *(v38 + v37);
      *(v0 + 1112) = v18;
      if (v18)
      {

        inited = sub_101101928;
        goto LABEL_27;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v6 = *(v0 + 976);
    v7 = *(v0 + 656);
    sub_10005006C(v5 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 768) + 72) * v4, *(v0 + 800), type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v8 = *(v7 + v6);
    if (*(v8 + 16))
    {
      v9 = sub_1000486F0(*(v0 + 800));
      if (v10)
      {
        v11 = *(v0 + 920);
        v12 = *(v0 + 728);
        v13 = *(v0 + 720);
        v14 = *(v0 + 656);
        sub_10005006C(*(v8 + 56) + *(*(v0 + 696) + 72) * v9, v13, _s5BoardVMa);
        sub_100025738(v13, v12, _s5BoardVMa);
        inited = swift_endAccess();
        v18 = *(v14 + v11);
        *(v0 + 1000) = v18;
        if (v18)
        {
          v19 = sub_101100330;
          goto LABEL_26;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return _swift_task_switch(inited, v16, v17);
      }
    }

    swift_endAccess();
  }

  v20 = *(v0 + 952);
  v21 = *(v20 + 16);
  *(v0 + 1016) = v21;
  if (v21)
  {
    v22 = *(v0 + 768);
    *(v0 + 1024) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
    *(v0 + 1140) = *(v22 + 80);
    *(v0 + 1040) = 0;
    *(v0 + 1032) = v1;
    if (*(v20 + 16))
    {
      v23 = 0;
      while (1)
      {
        v24 = *(v0 + 1024);
        v25 = *(v0 + 656);
        sub_10005006C(v20 + ((*(v0 + 1140) + 32) & ~*(v0 + 1140)) + *(*(v0 + 768) + 72) * v23, *(v0 + 792), type metadata accessor for CRLBoardIdentifier);
        swift_beginAccess();
        v26 = *(v25 + v24);
        if (*(v26 + 16))
        {
          v27 = sub_1000486F0(*(v0 + 792));
          if (v28)
          {
            break;
          }
        }

        swift_endAccess();
        v29 = *(v0 + 1016);
        v30 = *(v0 + 1040) + 1;
        sub_10003D87C(*(v0 + 792), type metadata accessor for CRLBoardIdentifier);
        if (v30 == v29)
        {
          goto LABEL_17;
        }

        v23 = *(v0 + 1040) + 1;
        *(v0 + 1040) = v23;
        *(v0 + 1032) = v1;
        v20 = *(v0 + 952);
        if (v23 >= *(v20 + 16))
        {
          goto LABEL_16;
        }
      }

      v39 = *(v0 + 920);
      v40 = *(v0 + 712);
      v41 = *(v0 + 704);
      v42 = *(v0 + 656);
      sub_10005006C(*(v26 + 56) + *(*(v0 + 696) + 72) * v27, v41, _s5BoardVMa);
      sub_100025738(v41, v40, _s5BoardVMa);
      inited = swift_endAccess();
      v18 = *(v42 + v39);
      *(v0 + 1048) = v18;
      if (!v18)
      {
        goto LABEL_36;
      }

      v19 = sub_101100F30;
      goto LABEL_26;
    }

LABEL_16:
    __break(1u);
  }

LABEL_17:
  v31 = *(v0 + 960);
  v32 = *(v31 + 16);
  *(v0 + 1064) = v32;
  if (!v32)
  {
    if (qword_1019F2238 != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  *(v0 + 1072) = 0;
  if (!*(v31 + 16))
  {
    goto LABEL_31;
  }

  v33 = *(v0 + 920);
  v34 = *(v0 + 784);
  v35 = *(v0 + 768);
  v36 = *(v0 + 656);
  *(v0 + 1080) = *(v35 + 72);
  inited = sub_10005006C(v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v34, type metadata accessor for CRLBoardIdentifier);
  v18 = *(v36 + v33);
  *(v0 + 1088) = v18;
  if (!v18)
  {
    __break(1u);
    goto LABEL_34;
  }

  v19 = sub_101101310;
LABEL_26:
  v43 = v19;

  inited = v43;
LABEL_27:
  v16 = v18;
  v17 = 0;

  return _swift_task_switch(inited, v16, v17);
}

uint64_t sub_101100890()
{

  if (qword_1019F2238 != -1)
  {
LABEL_39:
    swift_once();
  }

  v1 = *(v0 + 800);
  v2 = static OS_os_log.appIntents;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v4 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  if (*v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 0xE000000000000000;
  }

  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = 0xD000000000000012;
    v6 = 0x800000010155E590;
  }

  else
  {
  }

  v8 = *(v0 + 1008);
  *(v0 + 600) = UUID.uuidString.getter();
  *(v0 + 608) = v9;
  v10._countAndFlagsBits = 15418;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v5;
  v11._object = v6;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13 = *(v0 + 600);
  v14 = *(v0 + 608);
  *(inited + 56) = &type metadata for String;
  v15 = sub_1000053B0();
  *(inited + 64) = v15;
  *(inited + 32) = v13;
  *(inited + 40) = v14;
  *(v0 + 640) = v8;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v16 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v15;
  *(inited + 72) = v16;
  *(inited + 80) = v17;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v18, "Could not create new entity for board identifier %@: %@", 55, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  sub_10003D87C(*(v0 + 728), _s5BoardVMa);
  while (1)
  {
    v19 = *(v0 + 968);
    v20 = *(v0 + 992) + 1;
    sub_10003D87C(*(v0 + 800), type metadata accessor for CRLBoardIdentifier);
    if (v20 == v19)
    {
      break;
    }

    v21 = *(v0 + 992) + 1;
    *(v0 + 992) = v21;
    *(v0 + 984) = 0;
    v22 = *(v0 + 944);
    if (v21 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v23 = *(v0 + 976);
    v24 = *(v0 + 656);
    sub_10005006C(v22 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 768) + 72) * v21, *(v0 + 800), type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v25 = *(v24 + v23);
    if (*(v25 + 16))
    {
      v26 = sub_1000486F0(*(v0 + 800));
      if (v27)
      {
        v28 = *(v0 + 920);
        v29 = *(v0 + 728);
        v30 = *(v0 + 720);
        v31 = *(v0 + 656);
        sub_10005006C(*(v25 + 56) + *(*(v0 + 696) + 72) * v26, v30, _s5BoardVMa);
        sub_100025738(v30, v29, _s5BoardVMa);
        v32 = swift_endAccess();
        v35 = *(v31 + v28);
        *(v0 + 1000) = v35;
        if (v35)
        {
          v36 = sub_101100330;
          goto LABEL_34;
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return _swift_task_switch(v32, v33, v34);
      }
    }

    swift_endAccess();
  }

  v37 = *(v0 + 952);
  v38 = *(v37 + 16);
  *(v0 + 1016) = v38;
  if (v38)
  {
    v39 = *(v0 + 768);
    *(v0 + 1024) = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
    *(v0 + 1140) = *(v39 + 80);
    *(v0 + 1032) = 0u;
    if (*(v37 + 16))
    {
      v40 = 0;
      while (1)
      {
        v41 = *(v0 + 1024);
        v42 = *(v0 + 656);
        sub_10005006C(v37 + ((*(v0 + 1140) + 32) & ~*(v0 + 1140)) + *(*(v0 + 768) + 72) * v40, *(v0 + 792), type metadata accessor for CRLBoardIdentifier);
        swift_beginAccess();
        v43 = *(v42 + v41);
        if (*(v43 + 16))
        {
          v44 = sub_1000486F0(*(v0 + 792));
          if (v45)
          {
            break;
          }
        }

        swift_endAccess();
        v46 = *(v0 + 1016);
        v47 = *(v0 + 1040) + 1;
        sub_10003D87C(*(v0 + 792), type metadata accessor for CRLBoardIdentifier);
        if (v47 == v46)
        {
          goto LABEL_25;
        }

        v40 = *(v0 + 1040) + 1;
        *(v0 + 1040) = v40;
        *(v0 + 1032) = 0;
        v37 = *(v0 + 952);
        if (v40 >= *(v37 + 16))
        {
          goto LABEL_24;
        }
      }

      v56 = *(v0 + 920);
      v57 = *(v0 + 712);
      v58 = *(v0 + 704);
      v59 = *(v0 + 656);
      sub_10005006C(*(v43 + 56) + *(*(v0 + 696) + 72) * v44, v58, _s5BoardVMa);
      sub_100025738(v58, v57, _s5BoardVMa);
      v32 = swift_endAccess();
      v35 = *(v59 + v56);
      *(v0 + 1048) = v35;
      if (!v35)
      {
        goto LABEL_45;
      }

      v36 = sub_101100F30;
      goto LABEL_34;
    }

LABEL_24:
    __break(1u);
  }

LABEL_25:
  v48 = *(v0 + 960);
  v49 = *(v48 + 16);
  *(v0 + 1064) = v49;
  if (!v49)
  {
    if (qword_1019F2238 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  *(v0 + 1072) = 0;
  if (!*(v48 + 16))
  {
    __break(1u);
LABEL_41:
    swift_once();
LABEL_30:
    v54 = *(v0 + 920);
    v55 = *(v0 + 656);
    *(v0 + 1096) = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v32 = swift_initStackObject();
    *(v0 + 1104) = v32;
    *(v32 + 16) = xmmword_10146C6B0;
    v35 = *(v55 + v54);
    *(v0 + 1112) = v35;
    if (v35)
    {

      v32 = sub_101101928;
      goto LABEL_35;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v50 = *(v0 + 920);
  v51 = *(v0 + 784);
  v52 = *(v0 + 768);
  v53 = *(v0 + 656);
  *(v0 + 1080) = *(v52 + 72);
  v32 = sub_10005006C(v48 + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v51, type metadata accessor for CRLBoardIdentifier);
  v35 = *(v53 + v50);
  *(v0 + 1088) = v35;
  if (!v35)
  {
    __break(1u);
    goto LABEL_43;
  }

  v36 = sub_101101310;
LABEL_34:
  v60 = v36;

  v32 = v60;
LABEL_35:
  v33 = v35;
  v34 = 0;

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_101100F30()
{
  v1 = v0[129];
  sub_1012813BC(v0[89], 0, 0xF000000000000000);
  v0[132] = v1;
  if (v1)
  {
    v2 = v0[113];
    v3 = v0[112];
    v4 = sub_101101C24;
  }

  else
  {

    v2 = v0[113];
    v3 = v0[112];
    v4 = sub_101100FD8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_101100FD8()
{
  v1 = *(v0 + 1056);
  sub_10003D87C(*(v0 + 712), _s5BoardVMa);
  while (1)
  {
    v2 = *(v0 + 1016);
    v3 = *(v0 + 1040) + 1;
    sub_10003D87C(*(v0 + 792), type metadata accessor for CRLBoardIdentifier);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(v0 + 1040) + 1;
    *(v0 + 1040) = v4;
    *(v0 + 1032) = v1;
    v5 = *(v0 + 952);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      swift_once();
LABEL_15:
      v27 = *(v0 + 920);
      v28 = *(v0 + 656);
      *(v0 + 1096) = static OS_os_log.appIntents;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(v0 + 1104) = inited;
      *(inited + 16) = xmmword_10146C6B0;
      v18 = *(v28 + v27);
      *(v0 + 1112) = v18;
      if (v18)
      {

        inited = sub_101101928;
        goto LABEL_17;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v6 = *(v0 + 1024);
    v7 = *(v0 + 656);
    sub_10005006C(v5 + ((*(v0 + 1140) + 32) & ~*(v0 + 1140)) + *(*(v0 + 768) + 72) * v4, *(v0 + 792), type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v8 = *(v7 + v6);
    if (*(v8 + 16))
    {
      v9 = sub_1000486F0(*(v0 + 792));
      if (v10)
      {
        v11 = *(v0 + 920);
        v12 = *(v0 + 712);
        v13 = *(v0 + 704);
        v14 = *(v0 + 656);
        sub_10005006C(*(v8 + 56) + *(*(v0 + 696) + 72) * v9, v13, _s5BoardVMa);
        sub_100025738(v13, v12, _s5BoardVMa);
        inited = swift_endAccess();
        v18 = *(v14 + v11);
        *(v0 + 1048) = v18;
        if (v18)
        {
          v19 = sub_101100F30;
          goto LABEL_13;
        }

LABEL_25:
        __break(1u);
        return _swift_task_switch(inited, v16, v17);
      }
    }

    swift_endAccess();
  }

  v20 = *(v0 + 960);
  v21 = *(v20 + 16);
  *(v0 + 1064) = v21;
  if (!v21)
  {
    if (qword_1019F2238 != -1)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  *(v0 + 1072) = 0;
  if (!*(v20 + 16))
  {
    goto LABEL_21;
  }

  v22 = *(v0 + 920);
  v23 = *(v0 + 784);
  v24 = *(v0 + 768);
  v25 = *(v0 + 656);
  *(v0 + 1080) = *(v24 + 72);
  inited = sub_10005006C(v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v23, type metadata accessor for CRLBoardIdentifier);
  v18 = *(v25 + v22);
  *(v0 + 1088) = v18;
  if (!v18)
  {
    __break(1u);
    goto LABEL_24;
  }

  v19 = sub_101101310;
LABEL_13:
  v26 = v19;

  inited = v26;
LABEL_17:
  v16 = v18;
  v17 = 0;

  return _swift_task_switch(inited, v16, v17);
}

uint64_t sub_101101310()
{
  v1 = v0[136];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v3 = sub_1000486F0(v0[98]);
    v4 = v0[84];
    if (v5)
    {
      v6 = v3;
      v7 = *(v2 + 56);
      v8 = type metadata accessor for CRLBoardEntity(0);
      v9 = *(v8 - 8);
      sub_10005006C(v7 + *(v9 + 72) * v6, v4, type metadata accessor for CRLBoardEntity);
      (*(v9 + 56))(v4, 0, 1, v8);
    }

    else
    {
      v8 = type metadata accessor for CRLBoardEntity(0);
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    }
  }

  else
  {
    v10 = v0[84];
    v8 = type metadata accessor for CRLBoardEntity(0);
    (*(*(v8 - 8) + 56))(v10, 1, 1, v8);
  }

  v11 = v0[84];
  swift_endAccess();
  type metadata accessor for CRLBoardEntity(0);
  v12 = *(v8 - 8);
  v13 = (*(v12 + 48))(v11, 1, v8);
  sub_10000CAAC(v11, &qword_1019F6268, &unk_101471D00);
  if (v13 == 1)
  {
    v14 = v0[98];
    type metadata accessor for CRLBoardEntityStore.BoardEntityStoreError(0);
    sub_101104B20(&qword_101A2ACE8, type metadata accessor for CRLBoardEntityStore.BoardEntityStoreError, asc_1014D8AE8);
    v0[141] = swift_allocError();
    sub_10005006C(v14, v15, type metadata accessor for CRLBoardIdentifier);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v16 = v0[113];
    v17 = v0[112];
    v18 = sub_101102138;
  }

  else
  {
    v19 = v0[98];
    swift_beginAccess();
    v20 = sub_1000486F0(v19);
    if (v21)
    {
      v22 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v1 + 120);
      v0[78] = v24;
      *(v1 + 120) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA6E7C();
        v24 = v0[78];
      }

      v25 = v0[83];
      sub_10003D87C(*(v24 + 48) + v0[135] * v22, type metadata accessor for CRLBoardIdentifier);
      sub_100025738(*(v24 + 56) + *(v12 + 72) * v22, v25, type metadata accessor for CRLBoardEntity);
      sub_100BCE370(v22, v24);
      *(v1 + 120) = v24;

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = v0[83];
    (*(v12 + 56))(v27, v26, 1, v8);
    sub_10000CAAC(v27, &qword_1019F6268, &unk_101471D00);
    swift_endAccess();

    v16 = v0[113];
    v17 = v0[112];
    v18 = sub_10110172C;
  }

  return _swift_task_switch(v18, v17, v16);
}

uint64_t sub_10110172C()
{
  v1 = v0[133];
  v2 = v0[134] + 1;
  inited = sub_10003D87C(v0[98], type metadata accessor for CRLBoardIdentifier);
  if (v2 == v1)
  {
    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v6 = v0[115];
    v7 = v0[82];
    v0[137] = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    v0[138] = inited;
    *(inited + 16) = xmmword_10146C6B0;
    v8 = *(v7 + v6);
    v0[139] = v8;
    if (v8)
    {

      inited = sub_101101928;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v9 = v0[134] + 1;
  v0[134] = v9;
  v10 = v0[120];
  if (v9 >= *(v10 + 16))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v0[115];
  v12 = v0[98];
  v13 = v0[96];
  v14 = v0[82];
  v15 = *(v13 + 72);
  v0[135] = v15;
  inited = sub_10005006C(v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v15 * v9, v12, type metadata accessor for CRLBoardIdentifier);
  v8 = *(v14 + v11);
  v0[136] = v8;
  if (!v8)
  {
LABEL_14:
    __break(1u);
    return _swift_task_switch(inited, v4, v5);
  }

  inited = sub_101101310;
LABEL_9:
  v4 = v8;
  v5 = 0;

  return _swift_task_switch(inited, v4, v5);
}

uint64_t sub_101101928()
{
  v1 = v0[139];
  swift_beginAccess();
  v0[140] = *(v1 + 120);
  v2 = v0[113];
  v3 = v0[112];

  return _swift_task_switch(sub_1011019C0, v3, v2);
}

uint64_t sub_1011019C0()
{
  v1 = v0[140];
  v2 = v0[138];
  v3 = v0[137];

  v2[7] = sub_1005B981C(&qword_101A2ACF0, &qword_1014C5DB8);
  v2[8] = sub_10001A2F8(&qword_101A2ACF8, &qword_101A2ACF0, &qword_1014C5DB8, &protocol conformance descriptor for [A : B]);
  v2[4] = v1;
  v4 = static os_log_type_t.debug.getter();
  sub_100005404(v3, &_mh_execute_header, v4, "Updated entities in store: %@", 29, 2, v2);
  swift_setDeallocating();
  sub_100005070(v2 + 4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_101101C24()
{

  if (qword_1019F2238 != -1)
  {
LABEL_29:
    swift_once();
  }

  v1 = *(v0 + 792);
  v2 = static OS_os_log.appIntents;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v4 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  if (*v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 0xE000000000000000;
  }

  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = 0xD000000000000012;
    v6 = 0x800000010155E590;
  }

  else
  {
  }

  v8 = *(v0 + 1056);
  *(v0 + 584) = UUID.uuidString.getter();
  *(v0 + 592) = v9;
  v10._countAndFlagsBits = 15418;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v5;
  v11._object = v6;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13 = *(v0 + 584);
  v14 = *(v0 + 592);
  *(inited + 56) = &type metadata for String;
  v15 = sub_1000053B0();
  *(inited + 64) = v15;
  *(inited + 32) = v13;
  *(inited + 40) = v14;
  *(v0 + 632) = v8;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v16 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v15;
  *(inited + 72) = v16;
  *(inited + 80) = v17;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v18, "Could not update entity for board identifier %@: %@", 51, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  sub_10003D87C(*(v0 + 712), _s5BoardVMa);
  while (1)
  {
    v19 = *(v0 + 1016);
    v20 = *(v0 + 1040) + 1;
    sub_10003D87C(*(v0 + 792), type metadata accessor for CRLBoardIdentifier);
    if (v20 == v19)
    {
      break;
    }

    v21 = *(v0 + 1040) + 1;
    *(v0 + 1040) = v21;
    *(v0 + 1032) = 0;
    v22 = *(v0 + 952);
    if (v21 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v23 = *(v0 + 1024);
    v24 = *(v0 + 656);
    sub_10005006C(v22 + ((*(v0 + 1140) + 32) & ~*(v0 + 1140)) + *(*(v0 + 768) + 72) * v21, *(v0 + 792), type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v25 = *(v24 + v23);
    if (*(v25 + 16))
    {
      v26 = sub_1000486F0(*(v0 + 792));
      if (v27)
      {
        v28 = *(v0 + 920);
        v29 = *(v0 + 712);
        v30 = *(v0 + 704);
        v31 = *(v0 + 656);
        sub_10005006C(*(v25 + 56) + *(*(v0 + 696) + 72) * v26, v30, _s5BoardVMa);
        sub_100025738(v30, v29, _s5BoardVMa);
        v32 = swift_endAccess();
        v35 = *(v31 + v28);
        *(v0 + 1048) = v35;
        if (v35)
        {
          v36 = sub_101100F30;
          goto LABEL_21;
        }

LABEL_34:
        __break(1u);
        return _swift_task_switch(v32, v33, v34);
      }
    }

    swift_endAccess();
  }

  v37 = *(v0 + 960);
  v38 = *(v37 + 16);
  *(v0 + 1064) = v38;
  if (!v38)
  {
    if (qword_1019F2238 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  *(v0 + 1072) = 0;
  if (!*(v37 + 16))
  {
    __break(1u);
LABEL_31:
    swift_once();
LABEL_23:
    v44 = *(v0 + 920);
    v45 = *(v0 + 656);
    *(v0 + 1096) = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v32 = swift_initStackObject();
    *(v0 + 1104) = v32;
    *(v32 + 16) = xmmword_10146C6B0;
    v35 = *(v45 + v44);
    *(v0 + 1112) = v35;
    if (v35)
    {

      v32 = sub_101101928;
      goto LABEL_25;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v39 = *(v0 + 920);
  v40 = *(v0 + 784);
  v41 = *(v0 + 768);
  v42 = *(v0 + 656);
  *(v0 + 1080) = *(v41 + 72);
  v32 = sub_10005006C(v37 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v40, type metadata accessor for CRLBoardIdentifier);
  v35 = *(v42 + v39);
  *(v0 + 1088) = v35;
  if (!v35)
  {
    __break(1u);
    goto LABEL_33;
  }

  v36 = sub_101101310;
LABEL_21:
  v43 = v36;

  v32 = v43;
LABEL_25:
  v33 = v35;
  v34 = 0;

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_101102138()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = v0[98];
  v2 = v0[97];
  v3 = static OS_os_log.appIntents;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  sub_10005006C(v1, v2, type metadata accessor for CRLBoardIdentifier);
  v5 = (v2 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v6 = *v5;
  v7 = v5[1];
  if (*v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 == 0xE000000000000000;
  }

  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v6 = 0xD000000000000012;
    v7 = 0x800000010155E590;
  }

  else
  {
  }

  v9 = v0[141];
  v10 = v0[97];
  v0[71] = UUID.uuidString.getter();
  v0[72] = v11;
  v12._countAndFlagsBits = 15418;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v6;
  v13._object = v7;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 62;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = v0[71];
  v16 = v0[72];
  sub_10003D87C(v10, type metadata accessor for CRLBoardIdentifier);
  *(inited + 56) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 64) = v17;
  *(inited + 32) = v15;
  *(inited + 40) = v16;
  v0[77] = v9;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v18 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v17;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  v20 = static os_log_type_t.error.getter();
  sub_100005404(v3, &_mh_execute_header, v20, "Could not remove entity for board identifier %@: %@", 51, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v21 = v0[133];
  v22 = v0[134] + 1;
  v23 = sub_10003D87C(v0[98], type metadata accessor for CRLBoardIdentifier);
  if (v22 == v21)
  {
    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v26 = v0[115];
    v27 = v0[82];
    v0[137] = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v23 = swift_initStackObject();
    v0[138] = v23;
    *(v23 + 16) = xmmword_10146C6B0;
    v28 = *(v27 + v26);
    v0[139] = v28;
    if (v28)
    {

      v23 = sub_101101928;
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v29 = v0[134] + 1;
  v0[134] = v29;
  v30 = v0[120];
  if (v29 >= *(v30 + 16))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = v0[115];
  v32 = v0[98];
  v33 = v0[96];
  v34 = v0[82];
  v35 = *(v33 + 72);
  v0[135] = v35;
  v23 = sub_10005006C(v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + v35 * v29, v32, type metadata accessor for CRLBoardIdentifier);
  v28 = *(v34 + v31);
  v0[136] = v28;
  if (!v28)
  {
LABEL_23:
    __break(1u);
    return _swift_task_switch(v23, v24, v25);
  }

  v23 = sub_101101310;
LABEL_18:
  v24 = v28;
  v25 = 0;

  return _swift_task_switch(v23, v24, v25);
}

uint64_t sub_101102548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[13] = v4;
  v6[14] = a1;
  v6[15] = a2;
  v6[16] = a3;
  v6[17] = a4;
  v6[87] = a2;

  v7 = v5[73];
  v8 = v5[72];

  return _swift_task_switch(sub_101102674, v8, v7);
}

void sub_101102674()
{
  v247 = v0;
  if (!*(v0 + 696))
  {

    v26 = *(v0 + 8);

    v26();
    return;
  }

  v213 = *(v0 + 696);
  v1 = *(v0 + 112);
  v2 = *(v0 + 128);
  v3 = *(v0 + 592);
  v4 = *(v0 + 272);
  *(v0 + 704) = *(v0 + 136);
  v208 = v2;
  *(v0 + 712) = v2;
  v211 = v1;
  *(v0 + 720) = v1;
  v209 = v3 != 0;
  v5 = *(*(v4 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
  v246[0] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_60;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 400);
    v228 = *(v0 + 392);
    v9 = (v8 + 56);
    v222 = v8;
    v10 = (v8 + 48);
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v11 = *(v5 + 8 * v7 + 32);
      }

      v12 = v11;
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v6 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      v14 = *(v0 + 600);
      v15 = *(v0 + 272);
      swift_beginAccess();
      v16 = *(v15 + v14);
      if (*(v16 + 16) && (v17 = sub_1000486F0(&v12[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardIdentifier]), (v18 & 1) != 0))
      {
        sub_10005006C(*(v16 + 56) + *(v222 + 72) * v17, *(v0 + 560), _s5BoardVMa);
        v19 = 0;
      }

      else
      {
        v19 = 1;
      }

      v20 = *(v0 + 560);
      v21 = *(v0 + 392);
      (*v9)(v20, v19, 1, v21);
      v22 = (*v10)(v20, 1, v21);
      v23 = *(v0 + 560);
      if (v22)
      {
        sub_10000CAAC(v23, &unk_1019FA3E0, &unk_101474F20);
        swift_endAccess();
      }

      else
      {
        v24 = *(v23 + *(v228 + 60));
        sub_10000CAAC(v23, &unk_1019FA3E0, &unk_101474F20);
        swift_endAccess();
        if ((v24 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if ((v12[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_accepted] & 1) == 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_7;
      }

LABEL_6:

LABEL_7:
      ++v7;
      if (v13 == v6)
      {
        v25 = v246[0];
        goto LABEL_27;
      }
    }
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_27:

  if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
    if (v27)
    {
LABEL_30:
      v245 = _swiftEmptyArrayStorage;
      sub_100776804(0, v27 & ~(v27 >> 63), 0);
      if (v27 < 0)
      {
        goto LABEL_168;
      }

      v28 = 0;
      v215 = *(v0 + 464);
      v216 = *(v0 + 472);
      v229 = *(v0 + 400);
      v214 = *(v0 + 376);
      v29 = v25;
      v234 = v25 & 0xC000000000000001;
      v5 = v245;
      v219 = v27;
      v223 = v25;
      while (!__OFADD__(v28, 1))
      {
        v239 = v28 + 1;
        if (v234)
        {
          v30 = v5;
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v28 >= *(v29 + 16))
          {
            goto LABEL_59;
          }

          v30 = v5;
          v31 = *(v29 + 8 * v28 + 32);
        }

        v32 = v31;
        v5 = *(v0 + 600);
        v34 = *(v0 + 448);
        v33 = *(v0 + 456);
        v35 = *(v0 + 384);
        v36 = *(v0 + 272);
        sub_1010EE0E8(v31, v33);
        sub_10005006C(v32 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardIdentifier, v35, type metadata accessor for CRLBoardIdentifier);
        swift_beginAccess();
        sub_10005006C(v33, v34, _s5BoardVMa);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v246[0] = *(v36 + v5);
        v38 = v246[0];
        *(v36 + v5) = 0x8000000000000000;
        v39 = sub_1000486F0(v35);
        v41 = v38[2];
        v42 = (v40 & 1) == 0;
        v43 = __OFADD__(v41, v42);
        v44 = v41 + v42;
        if (v43)
        {
          goto LABEL_57;
        }

        v45 = v40;
        if (v38[3] >= v44)
        {
          v5 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v58 = v39;
            sub_100AA62F0();
            v39 = v58;
            v38 = v246[0];
          }
        }

        else
        {
          v46 = *(v0 + 384);
          sub_100A8CC60(v44, isUniquelyReferenced_nonNull_native);
          v38 = v246[0];
          v39 = sub_1000486F0(v46);
          if ((v45 & 1) != (v47 & 1))
          {

            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            return;
          }

          v5 = v30;
        }

        v48 = *(v0 + 448);
        v49 = *(v0 + 384);
        if (v45)
        {
          sub_101107A14(*(v0 + 448), v38[7] + *(v229 + 72) * v39, _s5BoardVMa);
          sub_10003D87C(v49, type metadata accessor for CRLBoardIdentifier);
        }

        else
        {
          v38[(v39 >> 6) + 8] |= 1 << v39;
          v50 = v39;
          sub_10005006C(v49, v38[6] + *(v214 + 72) * v39, type metadata accessor for CRLBoardIdentifier);
          sub_100025738(v48, v38[7] + *(v229 + 72) * v50, _s5BoardVMa);
          sub_10003D87C(v49, type metadata accessor for CRLBoardIdentifier);
          v51 = v38[2];
          v43 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v43)
          {
            goto LABEL_58;
          }

          v38[2] = v52;
        }

        v53 = *(v0 + 544);
        v54 = *(v0 + 456);
        *(*(v0 + 272) + *(v0 + 600)) = v38;

        swift_endAccess();
        sub_10005006C(v54, v53, _s5BoardVMa);
        swift_storeEnumTagMultiPayload();

        *(v53 + *(v215 + 20)) = _swiftEmptyArrayStorage;
        sub_10003D87C(v54, _s5BoardVMa);
        v245 = v5;
        v56 = *(v5 + 16);
        v55 = *(v5 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_100776804((v55 > 1), v56 + 1, 1);
          v5 = v245;
        }

        v57 = *(v0 + 544);
        *(v5 + 16) = v56 + 1;
        sub_100025738(v57, v5 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v56, _s4NodeVMa);
        ++v28;
        v29 = v223;
        if (v239 == v219)
        {

          goto LABEL_63;
        }
      }

      goto LABEL_56;
    }
  }

  else
  {
    v27 = *(v25 + 16);
    if (v27)
    {
      goto LABEL_30;
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_63:
  v59 = *(v0 + 272);
  v60 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_allBoardNodes;
  *&v59[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_allBoardNodes] = v213;

  v246[0] = *&v59[v60];
  swift_bridgeObjectRetain_n();
  sub_1010FDF64(v246, v59);
  v61 = *(v0 + 272);

  v217 = v5;

  *&v61[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_recentBoardNodes] = v246[0];

  v224 = v60;
  v230 = v59;
  v62 = *&v59[v60];
  v63 = *(v62 + 16);

  v240 = v63;
  if (v63)
  {
    v64 = 0;
    v65 = *(v0 + 472);
    v235 = *(v0 + 392);
    v66 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v64 >= *(v62 + 16))
      {
        goto LABEL_164;
      }

      v67 = *(v0 + 536);
      v68 = *(v0 + 360);
      v69 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v70 = *(v65 + 72);
      sub_10005006C(v62 + v69 + v70 * v64, v67, _s4NodeVMa);
      sub_10005006C(v67, v68, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v71 = *(v0 + 440);
        sub_100025738(*(v0 + 360), v71, _s5BoardVMa);
        v72 = *(v71 + *(v235 + 56));
        sub_10003D87C(v71, _s5BoardVMa);
        if (v72)
        {
          sub_100025738(*(v0 + 536), *(v0 + 528), _s4NodeVMa);
          v73 = swift_isUniquelyReferenced_nonNull_native();
          v246[0] = v66;
          if ((v73 & 1) == 0)
          {
            sub_100776804(0, v66[2] + 1, 1);
            v66 = v246[0];
          }

          v75 = v66[2];
          v74 = v66[3];
          if (v75 >= v74 >> 1)
          {
            sub_100776804((v74 > 1), v75 + 1, 1);
            v66 = v246[0];
          }

          v76 = *(v0 + 528);
          v66[2] = v75 + 1;
          sub_100025738(v76, v66 + v69 + v75 * v70, _s4NodeVMa);
          goto LABEL_67;
        }
      }

      else
      {
        sub_10003D87C(*(v0 + 360), type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

      sub_10003D87C(*(v0 + 536), _s4NodeVMa);
LABEL_67:
      if (v240 == ++v64)
      {
        goto LABEL_77;
      }
    }
  }

  v66 = _swiftEmptyArrayStorage;
LABEL_77:
  v77 = *(v0 + 272);

  *(v77 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_favoriteBoardNodes) = v66;

  v78 = *&v230[v224];
  v79 = *(v78 + 16);

  v241 = v79;
  if (v79)
  {
    v80 = 0;
    v81 = *(v0 + 472);
    v231 = *(v0 + 392);
    v82 = _swiftEmptyArrayStorage;
    v225 = v81;
    v236 = v78;
    while (v80 < *(v78 + 16))
    {
      v83 = *(v0 + 520);
      v84 = *(v0 + 352);
      v85 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v86 = *(v81 + 72);
      sub_10005006C(v78 + v85 + v86 * v80, v83, _s4NodeVMa);
      sub_10005006C(v83, v84, type metadata accessor for CRLBoardLibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v88 = *(v0 + 352);
      if (EnumCaseMultiPayload == 2)
      {
        v89 = *(v0 + 432);
        v90 = *(v0 + 336);
        sub_100025738(*(v0 + 352), v89, _s5BoardVMa);
        sub_10000BE14(v89 + *(v231 + 80), v90, &qword_1019F33D0, &unk_101468A70);
        sub_10003D87C(v89, _s5BoardVMa);
        v91 = _s5BoardV13ShareMetadataVMa(0);
        v92 = (*(*(v91 - 8) + 48))(v90, 1, v91);
        sub_10000CAAC(v90, &qword_1019F33D0, &unk_101468A70);
        v93 = *(v0 + 520);
        if (v92 == 1)
        {
          sub_10003D87C(v93, _s4NodeVMa);
          v78 = v236;
          v81 = v225;
        }

        else
        {
          sub_100025738(v93, *(v0 + 512), _s4NodeVMa);
          v94 = swift_isUniquelyReferenced_nonNull_native();
          v246[0] = v82;
          if ((v94 & 1) == 0)
          {
            sub_100776804(0, v82[2] + 1, 1);
            v82 = v246[0];
          }

          v78 = v236;
          v96 = v82[2];
          v95 = v82[3];
          v81 = v225;
          if (v96 >= v95 >> 1)
          {
            sub_100776804((v95 > 1), v96 + 1, 1);
            v82 = v246[0];
          }

          v97 = *(v0 + 512);
          v82[2] = v96 + 1;
          sub_100025738(v97, v82 + v85 + v96 * v86, _s4NodeVMa);
        }
      }

      else
      {
        sub_10003D87C(*(v0 + 520), _s4NodeVMa);
        sub_10003D87C(v88, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

      if (v241 == ++v80)
      {
        goto LABEL_91;
      }
    }

    goto LABEL_165;
  }

  v82 = _swiftEmptyArrayStorage;
LABEL_91:
  v210 = v211 | v209;
  v98 = *(v0 + 600);
  v220 = *(v0 + 312);
  v226 = *(v0 + 376);
  v99 = *(v0 + 272);
  v100 = *(v0 + 400);

  v246[0] = v217;
  sub_10003F1A0(v82);
  *(v99 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedBoardAndInvitationNodes) = v246[0];

  v101 = *(v99 + v98);
  v104 = *(v101 + 64);
  v103 = v101 + 64;
  v102 = v104;
  v105 = -1;
  v106 = -1 << *(*(v99 + v98) + 32);
  if (-v106 < 64)
  {
    v105 = ~(-1 << -v106);
  }

  v107 = v105 & v102;
  v108 = (63 - v106) >> 6;
  v237 = *(v99 + v98);
  swift_bridgeObjectRetain_n();
  v109 = 0;
  v110 = _swiftEmptyArrayStorage;
  v232 = v100;
  v218 = v103;
  while (1)
  {
    v242 = v110;
    if (!v107)
    {
      break;
    }

    v111 = v109;
LABEL_99:
    v112 = *(v0 + 552);
    v113 = *(v0 + 392);
    v114 = *(v0 + 320);
    v115 = *(v0 + 328);
    v116 = __clz(__rbit64(v107));
    v107 &= v107 - 1;
    v117 = v116 | (v111 << 6);
    sub_10005006C(*(v237 + 48) + *(v226 + 72) * v117, v115, type metadata accessor for CRLBoardIdentifier);
    v212 = *(v232 + 72);
    v118 = *(v237 + 56) + v212 * v117;
    v100 = v232;
    sub_10005006C(v118, v115 + *(v220 + 48), _s5BoardVMa);
    sub_10003DFF8(v115, v114, &qword_101A11B20, &qword_101498210);
    sub_100025738(v114 + *(v220 + 48), v112, _s5BoardVMa);
    (*(v232 + 56))(v112, 0, 1, v113);
    sub_10003D87C(v114, type metadata accessor for CRLBoardIdentifier);
    v119 = (*(v232 + 48))(v112, 1, v113);
    v120 = *(v0 + 552);
    if (v119 == 1)
    {
      sub_10000CAAC(v120, &unk_1019FA3E0, &unk_101474F20);
      v109 = v111;
      v110 = v242;
      v103 = v218;
    }

    else
    {
      sub_100025738(v120, *(v0 + 424), _s5BoardVMa);
      v110 = v242;
      v103 = v218;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_100B36CD4(0, v242[2] + 1, 1, v242);
      }

      v122 = v110[2];
      v121 = v110[3];
      if (v122 >= v121 >> 1)
      {
        v110 = sub_100B36CD4((v121 > 1), v122 + 1, 1, v110);
      }

      v123 = *(v0 + 424);
      v110[2] = v122 + 1;
      sub_100025738(v123, v110 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + v122 * v212, _s5BoardVMa);
      v109 = v111;
    }
  }

  while (1)
  {
    v111 = v109 + 1;
    if (__OFADD__(v109, 1))
    {
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    if (v111 >= v108)
    {
      break;
    }

    v107 = *(v103 + 8 * v111);
    ++v109;
    if (v107)
    {
      goto LABEL_99;
    }
  }

  v124 = v110[2];
  v125 = _swiftEmptyArrayStorage;
  if (v124)
  {
    v126 = 0;
    v127 = *(v0 + 392);
    while (v126 < v110[2])
    {
      v128 = *(v0 + 416);
      v129 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v130 = *(v100 + 72);
      sub_10005006C(v110 + v129 + v130 * v126, v128, _s5BoardVMa);
      v131 = *(v0 + 416);
      if (*(v128 + *(v127 + 68)) != 1 || (*(v131 + *(v127 + 52)) & 1) != 0)
      {
        sub_10003D87C(v131, _s5BoardVMa);
      }

      else
      {
        sub_100025738(v131, *(v0 + 408), _s5BoardVMa);
        v132 = swift_isUniquelyReferenced_nonNull_native();
        v246[0] = v125;
        if ((v132 & 1) == 0)
        {
          sub_1007768E4(0, v125[2] + 1, 1);
          v125 = v246[0];
        }

        v134 = v125[2];
        v133 = v125[3];
        if (v134 >= v133 >> 1)
        {
          sub_1007768E4((v133 > 1), v134 + 1, 1);
          v125 = v246[0];
        }

        v135 = *(v0 + 408);
        v125[2] = v134 + 1;
        sub_100025738(v135, v125 + v129 + v134 * v130, _s5BoardVMa);
        v110 = v242;
      }

      if (v124 == ++v126)
      {
        goto LABEL_118;
      }
    }

LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

LABEL_118:

  v246[0] = v125;

  sub_1010AE8B0(v246);

  v136 = v246[0];
  v137 = *(v246[0] + 16);
  if (v137)
  {
    v138 = *(v0 + 472);
    v243 = *(v0 + 464);
    v246[0] = _swiftEmptyArrayStorage;
    sub_100776804(0, v137, 0);
    v139 = v246[0];
    v140 = v136 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
    v141 = *(v232 + 72);
    do
    {
      v142 = *(v0 + 504);
      v143 = *(v0 + 440);
      sub_10005006C(v140, v143, _s5BoardVMa);
      sub_10005006C(v143, v142, _s5BoardVMa);
      swift_storeEnumTagMultiPayload();
      sub_10003D87C(v143, _s5BoardVMa);
      *(v142 + *(v243 + 20)) = _swiftEmptyArrayStorage;
      v246[0] = v139;
      v145 = v139[2];
      v144 = v139[3];
      if (v145 >= v144 >> 1)
      {
        sub_100776804((v144 > 1), v145 + 1, 1);
        v139 = v246[0];
      }

      v146 = *(v0 + 504);
      v139[2] = v145 + 1;
      sub_100025738(v146, v139 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v145, _s4NodeVMa);
      v140 += v141;
      --v137;
    }

    while (v137);
  }

  else
  {

    v139 = _swiftEmptyArrayStorage;
  }

  v147 = *(v0 + 272);
  *(v147 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_recentlyDeletedBoardNodes) = v139;

  v148 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_topLevelUserFolderNodes;
  *(v147 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_topLevelUserFolderNodes) = v208;

  v149 = *(v147 + v148);
  v150 = _swiftEmptySetSingleton;
  v245 = _swiftEmptySetSingleton;
  v151 = v149[2];
  swift_bridgeObjectRetain_n();
  if (v151)
  {
    v152 = *(v0 + 472);
    v153 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v154 = v149;
    do
    {
      sub_10005006C(v154 + v153, *(v0 + 480), _s4NodeVMa);
      v155 = swift_isUniquelyReferenced_nonNull_native();
      if (!v155 || (v151 - 1) > v154[3] >> 1)
      {
        v154 = sub_10003DFD0(v155, v151, 1, v154);
      }

      sub_10003D87C(v154 + v153, _s4NodeVMa);
      v156 = *(v152 + 72);
      if (v156 > 0 || v154 + v153 >= v154 + v153 + v156 + (v154[2] - 1) * v156)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v156)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v157 = *(v0 + 664);
      v159 = *(v0 + 488);
      v158 = *(v0 + 496);
      v160 = *(v0 + 480);
      --v154[2];
      v246[0] = v154;

      sub_10003F1A0(v161);
      sub_100025738(v160, v159, _s4NodeVMa);
      sub_100025738(v159, v158, _s4NodeVMa);
      sub_1010FE044(&v245, v158, v157);
      sub_10003D87C(*(v0 + 496), _s4NodeVMa);
      v154 = v246[0];
      v151 = *(v246[0] + 16);
    }

    while (v151);
    v150 = v245;
  }

  *(v0 + 728) = v150;
  v162 = *(v0 + 624);
  v244 = *(v0 + 288);

  v163 = 0;
  v164 = v162 + 64;
  v165 = -1;
  v166 = -1 << *(v162 + 32);
  if (-v166 < 64)
  {
    v165 = ~(-1 << -v166);
  }

  v167 = v165 & *(v162 + 64);
  v168 = (63 - v166) >> 6;
  v221 = _swiftEmptyArrayStorage;
  v227 = v162;
  while (2)
  {
    if (v167)
    {
      v169 = v163;
LABEL_145:
      v170 = *(v0 + 616);
      v171 = *(v0 + 272);
      v172 = *(v244 + 72);
      sub_10005006C(*(v162 + 48) + v172 * (__clz(__rbit64(v167)) | (v169 << 6)), *(v0 + 304), type metadata accessor for CRLFolderIdentifier);
      swift_beginAccess();
      v173 = *(v171 + v170);
      v238 = v172;
      if (*(v173 + 16))
      {
        v174 = sub_1007C88C4(*(v0 + 304));
        v175 = *(v0 + 280);
        if (v176)
        {
          v177 = v174;
          v233 = *(v173 + 56);
          v178 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
          v179 = *(v178 - 8);
          sub_10005006C(v233 + *(v179 + 72) * v177, v175, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          (*(v179 + 56))(v175, 0, 1, v178);
          v162 = v227;
          goto LABEL_150;
        }
      }

      else
      {
        v175 = *(v0 + 280);
      }

      v178 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
      (*(*(v178 - 8) + 56))(v175, 1, 1, v178);
LABEL_150:
      v167 &= v167 - 1;
      v180 = *(v0 + 280);
      swift_endAccess();
      type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
      if ((*(*(v178 - 8) + 48))(v180, 1, v178) == 1)
      {
        v182 = *(v0 + 296);
        v183 = *(v0 + 304);
        sub_10000CAAC(*(v0 + 280), &qword_101A03A00, &unk_101480610);
        sub_100025738(v183, v182, type metadata accessor for CRLFolderIdentifier);
        v184 = v221;
        v185 = swift_isUniquelyReferenced_nonNull_native();
        v246[0] = v221;
        if ((v185 & 1) == 0)
        {
          sub_1007768C4(0, v221[2] + 1, 1);
          v184 = v246[0];
        }

        v187 = *(v184 + 16);
        v186 = *(v184 + 24);
        if (v187 >= v186 >> 1)
        {
          sub_1007768C4((v186 > 1), v187 + 1, 1);
          v184 = v246[0];
        }

        v188 = *(v0 + 296);
        *(v184 + 16) = v187 + 1;
        v221 = v184;
        sub_100025738(v188, v184 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + v187 * v238, type metadata accessor for CRLFolderIdentifier);
        v163 = v169;
      }

      else
      {
        v181 = *(v0 + 280);
        sub_10003D87C(*(v0 + 304), type metadata accessor for CRLFolderIdentifier);
        sub_10000CAAC(v181, &qword_101A03A00, &unk_101480610);
        v163 = v169;
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v169 = v163 + 1;
    if (__OFADD__(v163, 1))
    {
      break;
    }

    if (v169 >= v168)
    {

      *(v0 + 736) = sub_100E94314(v221);

      v189 = sub_10003B15C();

      v191 = sub_10066F2C0(v190, v189);

      if (v191)
      {
        v192 = v210;
      }

      else
      {
        v193 = (*(v0 + 272) + *(v0 + 632));
        sub_100035FBC(v189, (v0 + 16));
        v195 = *(v0 + 32);
        v194 = *(v0 + 48);
        *v193 = *(v0 + 16);
        v193[1] = v195;
        v193[2] = v194;

        v192 = 1;
      }

      *(v0 + 776) = v192 & 1;
      v196 = *(v0 + 608);
      v197 = *(v0 + 272);

      v199 = sub_100049B74(v198);
      v200 = v197;
      *(v0 + 744) = sub_1010FE83C(v199, v200);

      v202 = sub_100049B74(v201);
      v203 = v200;
      v204 = sub_1010FEDCC(v202, v196, v203);
      *(v0 + 752) = v204;

      sub_1010ACDC4(v205, v204);
      *(v0 + 760) = *(v206 + 16);

      v207 = swift_task_alloc();
      *(v0 + 768) = v207;
      *v207 = v0;
      v207[1] = sub_1011042B8;

      sub_1010FF154(v213);
      return;
    }

    v167 = *(v164 + 8 * v169);
    ++v163;
    if (v167)
    {
      goto LABEL_145;
    }
  }

LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
}

uint64_t sub_1011042B8()
{
  v1 = *v0;

  v2 = *(v1 + 584);
  v3 = *(v1 + 576);

  return _swift_task_switch(sub_1011043D8, v3, v2);
}

uint64_t sub_1011043D8()
{
  v19 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 776);
  v3 = *(v0 + 272);

  if (v1 || (v2 & 1) != 0)
  {
    *(v3 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating) = 1;
    sub_100E70650(&v18, 0);
  }

  else
  {
    if (*(v3 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating))
    {

      goto LABEL_12;
    }

    *(v3 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating) = 1;
  }

  v4 = *(v0 + 720);

  if ((v4 & 0x100) != 0)
  {
    sub_100E70650(&v17, 1);
  }

  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v7 = *(v0 + 264);

  v16 = *(v0 + 728);
  sub_1010ACDC4(v5, v7);
  *(v0 + 64) = _swiftEmptySetSingleton;
  *(v0 + 72) = v8;
  *(v0 + 80) = v6;
  *(v0 + 88) = v16;
  v9 = [objc_opt_self() defaultCenter];
  if (qword_1019F2748 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 272);
  v11 = qword_101AD8948;
  v12 = sub_100F7CA60();

  sub_10007941C(v12);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 postNotificationName:v11 object:v10 userInfo:isa];

LABEL_12:

  v14 = *(v0 + 8);

  return v14();
}

double sub_1011047E4(void *a1)
{
  v2 = [a1 title];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = [a1 message];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v14;
  *(inited + 64) = v14;
  *(inited + 72) = v9;
  *(inited + 80) = v11;
  v15 = static os_log_type_t.default.getter();
  sub_100005404(v12, &_mh_execute_header, v15, "Alert: %@ - %@", 14, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  return result;
}

uint64_t sub_101104990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010E8EF4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_101104A58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_1010E8C1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_101104B20(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

double sub_101104B90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_101104BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest(0) - 8;
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  v16 = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    do
    {
      sub_10005006C(v12, v6, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      sub_100E70A6C(v10, v6);
      sub_10003D87C(v10, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      v12 += v13;
      --v11;
    }

    while (v11);
    return v16;
  }

  return a2;
}

uint64_t sub_101104CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v4, v9);
      sub_100E6AF38(v11, v7);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

void *sub_101104E5C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, __n128), uint64_t a4)
{
  v61 = a3;
  v62 = a4;
  v6 = type metadata accessor for CRLFolder(0);
  v63 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  __chkstk_darwin(v12);
  v51 = &v48 - v13;
  __chkstk_darwin(v14);
  v52 = &v48 - v15;
  v60 = sub_1005B981C(&qword_101A2ADE0, &qword_1014C6240);
  __chkstk_darwin(v60);
  v56 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v50 = &v48 - v18;
  __chkstk_darwin(v19);
  v49 = &v48 - v20;
  v64 = a1;
  v21 = *(a1 + 16);
  v22 = *(a2 + 16);
  if (v22 >= v21)
  {
    v23 = *(a1 + 16);
  }

  else
  {
    v23 = *(a2 + 16);
  }

  v65 = _swiftEmptyArrayStorage;
  result = sub_1007769C4(0, v23, 0);
  v25 = v65;
  v58 = v22;
  v59 = v21;
  v57 = v23;
  if (v23)
  {
    v26 = 0;
    v53 = a2 + 32;
    v54 = v11;
    v55 = a2;
    while (v21 != v26)
    {
      v27 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v28 = *(v63 + 72);
      result = sub_10005006C(v64 + v27 + v28 * v26, v8, type metadata accessor for CRLFolder);
      if (v22 == v26)
      {
        goto LABEL_24;
      }

      v29 = *(v53 + 8 * v26);
      v30 = *(v60 + 48);
      v31 = v56;
      sub_100025738(v8, v56, type metadata accessor for CRLFolder);
      *(v31 + v30) = v29;

      v32 = v54;
      (v61)(v31, v29);
      sub_10000CAAC(v31, &qword_101A2ADE0, &qword_1014C6240);
      v65 = v25;
      v34 = v25[2];
      v33 = v25[3];
      if (v34 >= v33 >> 1)
      {
        sub_1007769C4((v33 > 1), v34 + 1, 1);
        v25 = v65;
      }

      ++v26;
      v25[2] = v34 + 1;
      result = sub_100025738(v32, v25 + v27 + v34 * v28, type metadata accessor for CRLFolder);
      v22 = v58;
      v21 = v59;
      a2 = v55;
      if (v57 == v26)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_11:
    if (v21 <= v22)
    {
      return v25;
    }

    v56 = a2 + 32;
    v35 = v57;
    while (v35 < v21)
    {
      v36 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v37 = *(v63 + 72);
      result = sub_10005006C(v64 + v36 + v37 * v35, v52, type metadata accessor for CRLFolder);
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_26;
      }

      if (v22 == v35)
      {
        sub_10003D87C(v52, type metadata accessor for CRLFolder);
        return v25;
      }

      if (v35 >= v22)
      {
        goto LABEL_27;
      }

      v39 = *(v56 + 8 * v35);
      v40 = v60;
      v41 = *(v60 + 48);
      v42 = v50;
      sub_100025738(v52, v50, type metadata accessor for CRLFolder);
      *(v42 + v41) = v39;
      v43 = v49;
      sub_10003DFF8(v42, v49, &qword_101A2ADE0, &qword_1014C6240);
      v44 = *(v43 + *(v40 + 48));

      v45 = v51;
      (v61)(v43, v44);
      sub_10000CAAC(v43, &qword_101A2ADE0, &qword_1014C6240);
      v65 = v25;
      v47 = v25[2];
      v46 = v25[3];
      if (v47 >= v46 >> 1)
      {
        sub_1007769C4((v46 > 1), v47 + 1, 1);
        v25 = v65;
      }

      v25[2] = v47 + 1;
      result = sub_100025738(v45, v25 + v36 + v47 * v37, type metadata accessor for CRLFolder);
      ++v35;
      v22 = v58;
      v21 = v59;
      if (v38 == v59)
      {
        return v25;
      }
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

char *sub_10110536C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardToParentFolderMapping] = _swiftEmptyDictionarySingleton;
  v9 = &v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot];
  sub_100035FBC(_swiftEmptyArrayStorage, v36);
  v10 = v36[1];
  *v9 = v36[0];
  v9[1] = v10;
  v9[2] = v36[2];
  v11 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  *&v4[v11] = sub_100039400(_swiftEmptyArrayStorage);
  v12 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_folderViewModels;
  *&v4[v12] = sub_100039618(_swiftEmptyArrayStorage);
  v13 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_folders;
  *&v4[v13] = sub_100039830(_swiftEmptyArrayStorage);
  v14 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_collaborationOwners;
  *&v4[v14] = sub_10003A1AC(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_entityStore] = 0;
  v15 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for CRLSharedHighlightController()) init];
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_cloudKitObserver] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_userDataDeletionRequestObserver] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_databaseSyncObserver] = 0;
  v16 = &v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_networkReachabilityListener];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_networkReachabilityListenerSubscriptionSet] = _swiftEmptySetSingleton;
  v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_isNetworkReachable] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pauseSnapshotUpdateCount] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pendingUpdateOptions] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pendingChangedBoards] = _swiftEmptySetSingleton;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_snapshotUpdateInterval] = 0x4000000000000000;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_realTimeCollaborationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating] = 0;
  v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didCallStartUpdating] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_snapshot] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_maxRecentlyDeleted] = -1;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_maxRecents] = 30;
  v17 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  *&v4[v17] = sub_10003AA28(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_allBoardNodes] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_recentBoardNodes] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_favoriteBoardNodes] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedBoardAndInvitationNodes] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_recentlyDeletedBoardNodes] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_topLevelUserFolderNodes] = _swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers;
  *&v4[v18] = [objc_opt_self() weakObjectsHashTable];
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store] = a1;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardShareController] = a2;
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_syncPriorityProvider] = a3;
  type metadata accessor for CRLOpportunisticGroupSessionManager(0);
  v19 = swift_allocObject();
  v19[8] = _swiftEmptyDictionarySingleton;
  sub_1005B981C(&qword_101A2ADD8, &qword_1014C61E8);
  swift_allocObject();
  v20 = a1;

  v19[9] = PassthroughSubject.init()();
  v19[10] = _swiftEmptyDictionarySingleton;
  v19[11] = _swiftEmptyDictionarySingleton;
  v19[2] = _swiftEmptySetSingleton;
  v19[4] = 0;
  swift_unknownObjectWeakInit();
  v19[5] = _swiftEmptyDictionarySingleton;
  v19[6] = _swiftEmptyDictionarySingleton;
  v19[7] = _swiftEmptyDictionarySingleton;
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.realTimeSync;
  v22 = static os_log_type_t.default.getter();
  sub_100005404(v21, &_mh_execute_header, v22, "CRLGroupSessionManager: init.", 29, 2, _swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_opportunisticGroupSessionManager] = v19;
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v35, "init");
  v24 = sub_10003B15C();
  sub_100035FBC(v24, v37);
  v25 = &v23[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot];
  v26 = v37[1];
  *v25 = v37[0];
  *(v25 + 1) = v26;
  *(v25 + 2) = v37[2];

  type metadata accessor for CRLBoardEntityStore();
  v27 = swift_allocObject();
  v28 = v23;
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  *(v27 + 120) = sub_10003F7E4(_swiftEmptyArrayStorage);
  swift_unknownObjectWeakAssign();

  *&v28[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_entityStore] = v27;

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v29 = static OS_os_log.crlBoardLibrary;
  v30 = static os_log_type_t.default.getter();
  sub_100005404(v29, &_mh_execute_header, v30, "CRLBoardLibrary: Initializing and registering synced app model.", 63, 2, _swiftEmptyArrayStorage);
  *(*&v28[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_opportunisticGroupSessionManager] + 32) = &off_1018B0A88;
  swift_unknownObjectWeakAssign();

  v34[3] = &type metadata for CRLFeatureFlags;
  v34[4] = sub_100004D60();
  LOBYTE(v34[0]) = 13;
  LOBYTE(v29) = isFeatureEnabled(_:)();
  sub_100005070(v34);
  if (v29)
  {
    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.crlFollow;
    v32 = static os_log_type_t.default.getter();
    sub_100005404(v31, &_mh_execute_header, v32, "Follow feature flag is enabled.", 31, 2, _swiftEmptyArrayStorage, v34[0]);
  }

  return v28;
}