uint64_t sub_1000D57D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  v5 = swift_task_alloc();
  v6 = *a1;
  v3[4] = v5;
  v3[5] = v6;

  return _swift_task_switch(sub_1000D5874, 0, 0);
}

uint64_t sub_1000D5A20()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 56) = v0;

  sub_10000ED84(v6, &qword_1001BB3F8);
  if (v0)
  {
    sub_1000059F8();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    sub_100001F00();

    return v12();
  }
}

uint64_t sub_1000D5B74(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100004B70(sub_1000D5B94, v2);
}

void sub_1000D5B94()
{
  sub_100002BAC();
  v2 = sub_10000E8DC(v1[2]);
  if (v2)
  {
    v3 = v1[2];
    v4 = __OFSUB__(v2, 1);
    v5 = v2 - 1;
    v1[5] = v5;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
        v1[6] = v0;
        v9 = swift_task_alloc();
        v1[7] = v9;
        *v9 = v1;
        v9[1] = sub_1000D5CA4;
        sub_10001E4B4();

        sub_10002BA5C();
        return;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        sub_100007900();
        if (!v8)
        {
          sub_1000DB11C(v6, v7);
          goto LABEL_8;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  sub_100001F00();

  v10();
}

uint64_t sub_1000D5CA4()
{
  sub_100001ED0();
  sub_100018E0C();
  v2 = *v1;
  sub_100002B9C();
  *v3 = v2;

  sub_10000CC7C();
  if (v0)
  {
  }

  sub_100007088();

  return _swift_task_switch(v4, v5, v6);
}

void sub_1000D5DC0()
{
  sub_100002BAC();
  v2 = v1[5];

  if (v2)
  {
    v3 = v1[5];
    v1[5] = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      if ((v1[2] & 0xC000000000000001) != 0)
      {
        v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
        v1[6] = v0;
        v7 = swift_task_alloc();
        v1[7] = v7;
        *v7 = v1;
        v7[1] = sub_1000D5CA4;
        sub_10001E4B4();

        sub_10002BA5C();
        return;
      }

      if (((v3 - 1) & 0x8000000000000000) == 0)
      {
        sub_100007900();
        if (!v6)
        {
          sub_1000DB11C(v4, v5);
          goto LABEL_8;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  sub_100001F00();

  v8();
}

void sub_1000D5ED4(uint64_t a1)
{
  if (!qword_1001BB160)
  {
    type metadata accessor for InferenceProviderAssetManager(255);
    sub_100011B14(&qword_1001B8BB8, type metadata accessor for InferenceProviderAssetManager, &unk_100171CF0);
    v1 = type metadata accessor for WorkQueue();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BB160);
    }
  }
}

uint64_t sub_1000D5F68()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000D5FB0()
{
  sub_100065020(&qword_1001BB470, &qword_100171EB8);
  swift_arrayDestroy();
  sub_100002EE0();

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_1000D600C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = type metadata accessor for InferenceProviderDescriptor();
  v7 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {

    v10 = sub_1000D62E8(a1, a2, a3);

    return v10;
  }

  v31 = v3;
  v10 = &_swiftEmptySetSingleton;
  v36 = &_swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v11 = (v7 + 8);
  while (1)
  {
    v12 = __CocoaSet.Iterator.next()();
    if (!v12)
    {
      break;
    }

    v33[0] = v12;
    type metadata accessor for InferenceProviderAsset(0);
    swift_dynamicCast();
    v14 = *(v34 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v13 = *(v34 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370((v34 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v14);
    (*(v13 + 8))(v14, v13);
    v15 = InferenceProviderDescriptor.id.getter();
    v17 = v16;
    (*v11)(v9, v32);
    if (v15 == a2 && v17 == a3)
    {

LABEL_11:
      v27 = v34;
      v28 = v10[2];
      if (v10[3] <= v28)
      {
        sub_100080444(v28 + 1, v20, v21, v22, v23, v24, v25, v26, v31, v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, vars0, vars8);
      }

      v10 = v36;
      Hasher.init(_seed:)();
      sub_10001214C(v33);
      Hasher._finalize()();
      v29 = _HashTable.nextHole(atOrAfter:)();
      *(v10 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v29;
      *(v10[6] + 8 * v29) = v27;
      ++v10[2];
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_11;
      }
    }
  }

  swift_bridgeObjectRelease_n();

  return v10;
}

void *sub_1000D62E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = type metadata accessor for InferenceProviderDescriptor();
  v8 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v41 = v4;
    v39 = &v39;
    __chkstk_darwin(v13);
    v40 = v11;
    v42 = &v39 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v11, v42);
    v43 = 0;
    v18 = 0;
    v11 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(a1 + 56);
    v22 = (v19 + 63) >> 6;
    v45 = (v8 + 8);
    v46 = a1;
    v47 = a2;
    v48 = a3;
    while (v21)
    {
      v23 = __clz(__rbit64(v21));
      v51 = (v21 - 1) & v21;
LABEL_12:
      v26 = v23 | (v18 << 6);
      v27 = *(a1 + 48);
      v44 = v26;
      v28 = *(v27 + 8 * v26);
      v29 = *(v28 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v30 = *(v28 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370((v28 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v29);
      v31 = *(v30 + 8);

      v4 = v49;
      v31(v29, v30);
      v12 = InferenceProviderDescriptor.id.getter();
      v8 = v32;
      (*v45)(v4, v50);
      a2 = v47;
      a3 = v48;
      if (v12 == v47 && v8 == v48)
      {

        a1 = v46;
        v21 = v51;
LABEL_19:
        *(v42 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
        if (__OFADD__(v43++, 1))
        {
          __break(1u);
LABEL_22:
          sub_1000120FC(v42, v40, v43, a1, v14, v15, v16, v17, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
          v36 = v35;
          swift_bridgeObjectRelease_n();
          return v36;
        }
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        a1 = v46;
        v21 = v51;
        if (v12)
        {
          goto LABEL_19;
        }
      }
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {
        goto LABEL_22;
      }

      v25 = *(v11 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v51 = (v25 - 1) & v25;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v38 = swift_slowAlloc();

  v36 = sub_1000D89D4(v38, v11, a1, a2, a3);

  swift_bridgeObjectRelease_n();
  return v36;
}

void sub_1000D66D4()
{
  sub_10000A274();
  v4 = v3;
  v43 = v5;
  v52 = v7;
  v53 = v6;
  v9 = v8;
  v45 = v10;
  State = type metadata accessor for LoadState();
  sub_100002BDC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100002B8C();
  sub_1000281B0();
  v44 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  sub_100002C00();
  __chkstk_darwin(v15);
  sub_100002B8C();
  sub_1000DB2B0();
  v46 = 0;
  v16 = 0;
  v54 = v9;
  v55 = v2;
  v17 = v9 + 56;
  sub_100002F28();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  HIDWORD(v50) = *v4;
  v48 = (v13 + 8);
  v49 = (v13 + 104);
  v51 = v1;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v64 = (v20 - 1) & v20;
LABEL_9:
    v47 = v23 | (v16 << 6);
    v27 = *(*(v54 + 48) + 8 * v47);
    v28 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_1000183F4();
    swift_beginAccess();
    sub_100005C78();
    sub_1000192DC(v28 + v27, v2);
    (*v49)(v1, HIDWORD(v50), State);
    sub_100002D0C();
    sub_100011B14(&dword_1001BA628, v29, &protocol conformance descriptor for LoadState);
    sub_10001E4B4();

    sub_1000DAE34();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v30 = State;
    sub_1000DAE34();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v58 == v56 && v59 == v57)
    {
LABEL_20:

      goto LABEL_21;
    }

    sub_100012D24();
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
LABEL_21:
      v1 = v51;
      State = v30;
      (*v48)(v51, v30);
      sub_100008654();
      v2 = v55;
      sub_100019338(v55);
LABEL_22:
      v35 = sub_10002D88C(v52);

      v20 = v64;
      if (v35)
      {
        sub_1000267BC();
        *(v45 + v36) |= v37;
        if (__OFADD__(v46++, 1))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      State = v30;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v58 == v56 && v59 == v57)
      {
        goto LABEL_20;
      }

      sub_100012D24();
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v48)(v51, State);
      sub_100008654();
      sub_100019338(v55);
      v1 = v51;
      v2 = v55;
      if (v34)
      {
        goto LABEL_22;
      }

      v20 = v64;
    }
  }

  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v22)
    {

      sub_1000120FC(v45, v43, v46, v54, v39, v40, v41, v42, v43, v0, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);

      sub_100005874();
      return;
    }

    ++v24;
    if (*(v17 + 8 * v16))
    {
      sub_1000062A0();
      v64 = v26 & v25;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1000D6AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41[0] = a2;
  v50 = a5;
  v51 = a4;
  v43 = a1;
  State = type metadata accessor for LoadState();
  v7 = *(State - 8);
  __chkstk_darwin(State);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v42);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v12 = 0;
  v52 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  HIDWORD(v48) = enum case for LoadState.unloaded(_:);
  v46 = (v7 + 8);
  v47 = (v7 + 104);
  v49 = v9;
  v53 = v11;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v59 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = *(v52 + 48);
    v45 = v23;
    v25 = *(v24 + 8 * v23);
    v26 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    sub_1000192DC(v26 + v25, v11);
    (*v47)(v9, HIDWORD(v48), State);
    sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);

    dispatch thunk of RawRepresentable.rawValue.getter();
    v27 = State;
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v56 == v54 && v57 == v55)
    {
LABEL_22:

      goto LABEL_23;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
LABEL_23:
      v9 = v49;
      State = v27;
      (*v46)(v49, v27);
      v11 = v53;
      sub_100019338(v53);
LABEL_24:
      v34 = sub_10002D88C(v25);

      v18 = v59;
      if (v34)
      {
        *(v43 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
        if (__OFADD__(v44++, 1))
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      State = v27;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v30 = v49;
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v56 == v54 && v57 == v55)
      {
        goto LABEL_22;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v46)(v30, State);
      v33 = v53;
      sub_100019338(v53);
      v9 = v30;
      v11 = v33;
      if (v32)
      {
        goto LABEL_24;
      }

      v18 = v59;
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      v36 = v52;

      sub_1000120FC(v43, v41[0], v44, v36, v37, v38, v39, v40, v41[0], v41[1], v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v58[3]);

      return;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v59 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1000D6F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v35 = a2;
  v38 = a1;
  State = type metadata accessor for LoadState();
  v5 = __chkstk_darwin(State);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v35 - v9;
  v10 = 0;
  v46 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v39 = 0;
  v40 = (v14 + 63) >> 6;
  v45 = (v8 + 16);
  HIDWORD(v44) = enum case for LoadState.dynamicMode(_:);
  v42 = (v8 + 8);
  v43 = (v8 + 104);
  while (v16)
  {
    v54 = (v16 - 1) & v16;
    v17 = __clz(__rbit64(v16)) | (v10 << 6);
    v18 = State;
    v19 = v48;
LABEL_11:
    v22 = *(v46 + 48);
    v41 = v17;
    v23 = *(v22 + 8 * v17);
    v24 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    (*v45)(v19, &v24[v23], v18);
    (*v43)(v7, HIDWORD(v44), v18);
    sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);

    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v51 == v49 && v52 == v50)
    {

      v28 = *v42;
      (*v42)(v7, v18);
      v28(v19, v18);

      v16 = v54;
LABEL_18:
      *(v38 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v39++, 1))
      {
        __break(1u);
LABEL_21:
        v30 = v46;

        sub_1000120FC(v38, v35, v39, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, State, v48, v49, v50, v51, v52, v53[0], v53[1], v53[2], v53[3]);

        return;
      }
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v27 = *v42;
      (*v42)(v7, v18);
      v27(v19, v18);

      v16 = v54;
      if (v26)
      {
        goto LABEL_18;
      }
    }
  }

  v20 = v10;
  v18 = State;
  v19 = v48;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v10 >= v40)
    {
      goto LABEL_21;
    }

    v21 = *(v12 + 8 * v10);
    ++v20;
    if (v21)
    {
      v54 = (v21 - 1) & v21;
      v17 = __clz(__rbit64(v21)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1000D7310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v52 = a2;
  v55 = a1;
  State = type metadata accessor for LoadState();
  v7 = *(State - 8);
  __chkstk_darwin(State);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v9 = __chkstk_darwin(v66);
  v63 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v49 - v11;
  v61 = 0;
  v12 = 0;
  v67 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  HIDWORD(v59) = enum case for LoadState.loaded(_:);
  v58 = (v7 + 104);
  v57 = (v7 + 8);
  v56 = a5 & 0xC000000000000001;
  v20 = a5 & 0xFFFFFFFFFFFFFF8;
  if (a5 < 0)
  {
    v20 = a5;
  }

  v51 = v20;
  v74 = a5;
  v69 = a5 + 56;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v68 = (v18 - 1) & v18;
LABEL_14:
    v24 = v21 | (v12 << 6);
    v25 = *(v67 + 48);
    v64 = v24;
    v26 = *(v25 + 8 * v24);
    v27 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    v28 = v65;
    sub_1000192DC(v27 + v26, v65);
    v29 = *(*(v28 + *(v66 + 48)) + 16);

    sub_100019338(v28);
    if (v29)
    {
LABEL_15:

      v18 = v68;
    }

    else
    {
      sub_1000192DC(v27 + v26, v63);
      v30 = State;
      (*v58)(v62, HIDWORD(v59), State);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v70 == v72 && v71 == v73)
      {

        v33 = v62;
LABEL_28:
        (*v57)(v33, v30);
        sub_100019338(v63);
        goto LABEL_29;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v33 = v62;
      if (v32)
      {
        goto LABEL_28;
      }

      v34 = v63;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v70 == v72 && v71 == v73)
      {

        goto LABEL_28;
      }

      HIDWORD(v50) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v57)(v33, v30);
      sub_100019338(v34);
      if ((v50 & 0x100000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_29:
      if (!v56)
      {
        if (*(v74 + 16))
        {
          type metadata accessor for InferenceProviderAsset(0);
          v37 = v74;
          Hasher.init(_seed:)();
          sub_10001214C(&v70);
          v38 = Hasher._finalize()();
          v39 = ~(-1 << *(v37 + 32));
          while (1)
          {
            v40 = v38 & v39;
            if (((*(v69 + (((v38 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v39)) & 1) == 0)
            {
              break;
            }

            v42 = sub_100019CE4(v41, v26);

            v38 = v40 + 1;
            if (v42)
            {
              goto LABEL_15;
            }
          }
        }

        v18 = v68;
        goto LABEL_38;
      }

      v36 = __CocoaSet.contains(_:)();

      v18 = v68;
      if ((v36 & 1) == 0)
      {
LABEL_38:
        *(v55 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
        if (__OFADD__(v61++, 1))
        {
          goto LABEL_44;
        }
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      v44 = v67;

      sub_1000120FC(v55, v52, v61, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, State, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);

      return;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v68 = (v23 - 1) & v23;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_1000D7990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v37 = a2;
  v40 = a1;
  State = type metadata accessor for LoadState();
  v6 = *(State - 8);
  __chkstk_darwin(State);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v47);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v48 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v41 = 0;
  v42 = (v15 + 63) >> 6;
  HIDWORD(v46) = enum case for LoadState.loaded(_:);
  v44 = (v6 + 8);
  v45 = (v6 + 104);
  v18 = v8;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v56 = (v17 - 1) & v17;
LABEL_11:
    v22 = v19 | (v11 << 6);
    v23 = *(v48 + 48);
    v43 = v22;
    v24 = *(v23 + 8 * v22);
    v25 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v24;
    swift_beginAccess();
    v49 = v25;
    sub_1000192DC(v25, v10);
    (*v45)(v18, HIDWORD(v46), State);
    sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
    v50 = v24;

    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v53 == v51 && v54 == v52)
    {

      v17 = v56;
      goto LABEL_23;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v17 = v56;
    if (v27)
    {
LABEL_23:
      (*v44)(v18, State);
      sub_100019338(v10);
LABEL_24:
      v30 = v49[*(v47 + 24)];

      if ((v30 & 1) == 0)
      {
        *(v40 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        if (__OFADD__(v41++, 1))
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v53 == v51 && v54 == v52)
      {

        goto LABEL_23;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v44)(v18, State);
      sub_100019338(v10);
      if (v29)
      {
        goto LABEL_24;
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v42)
    {
      v32 = v48;

      sub_1000120FC(v40, v37, v41, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55[0], v55[1], v55[2], v55[3]);

      return;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v56 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1000D7E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[0] = a2;
  v42 = a5;
  v43 = a4;
  v38 = a1;
  State = type metadata accessor for LoadState();
  v7 = *(State - 8);
  __chkstk_darwin(State);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v44);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v49 = a3;
  v13 = *(a3 + 56);
  v41 = a3 + 56;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v39 = 0;
  v40 = (v14 + 63) >> 6;
  HIDWORD(v48) = enum case for LoadState.loaded(_:);
  v46 = (v7 + 8);
  v47 = (v7 + 104);
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v55 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v12 << 6);
    v21 = *(v49 + 48);
    v45 = v20;
    v22 = *(v21 + 8 * v20);
    v23 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    sub_1000192DC(v23 + v22, v11);
    (*v47)(v9, HIDWORD(v48), State);
    sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);

    v24 = v11;
    dispatch thunk of RawRepresentable.rawValue.getter();
    v25 = v9;
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v52 == v50 && v53 == v51)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        v9 = v25;
        (*v46)(v25, State);
        v11 = v24;
        sub_100019338(v24);
        goto LABEL_23;
      }
    }

    dispatch thunk of RawRepresentable.rawValue.getter();
    v9 = v25;
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v52 == v50 && v53 == v51)
    {

      (*v46)(v25, State);
      sub_100019338(v24);
      v11 = v24;
LABEL_28:

      v16 = v55;
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v46)(v25, State);
      sub_100019338(v24);
      v11 = v24;
      if (v29)
      {
        goto LABEL_28;
      }

LABEL_23:
      v30 = sub_10002D88C(v22);

      v16 = v55;
      if (v30)
      {
        *(v38 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
        if (__OFADD__(v39++, 1))
        {
          goto LABEL_31;
        }
      }
    }
  }

  v18 = v12;
  while (1)
  {
    v12 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v12 >= v40)
    {
      v32 = v49;

      sub_1000120FC(v38, v37[0], v39, v32, v33, v34, v35, v36, v37[0], v37[1], v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54[0], v54[1], v54[2], v54[3]);

      return;
    }

    v19 = *(v41 + 8 * v12);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v55 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1000D8310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v45 = a1;
  v50 = type metadata accessor for InferenceProviderDescriptor();
  result = __chkstk_darwin(v50);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v11 = 0;
  v52 = a5;
  v53 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v48 = (v9 + 8);
  v51 = a4;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v55 = (v17 - 1) & v17;
LABEL_11:
    v22 = v19 | (v11 << 6);
    v23 = *(v53 + 48);
    v47 = v22;
    v24 = *(v23 + 8 * v22);
    v25 = *(v24 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v26 = *(v24 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370((v24 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v25);
    v27 = *(v26 + 8);

    v28 = v49;
    v27(v25, v26);
    v29 = InferenceProviderDescriptor.id.getter();
    v31 = v30;
    (*v48)(v28, v50);
    if (v29 == v51 && v31 == v52)
    {

      v17 = v55;
LABEL_18:
      *(v45 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (__OFADD__(v46++, 1))
      {
        __break(1u);
LABEL_21:
        v35 = v53;

        sub_1000120FC(v45, v43, v46, v35, v36, v37, v38, v39, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
        v41 = v40;

        return v41;
      }
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = v55;
      if (v33)
      {
        goto LABEL_18;
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_21;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v55 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000D85CC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10001E558();
    swift_retain_n();
    sub_1000DB0EC();
    swift_retain_n();
    sub_1000DB290();
    sub_1000D66D4();
    v4 = v3;
    sub_1000DB0EC();

    sub_10001E558();

    return v4;
  }

  return result;
}

void *sub_1000D8870(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
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

    sub_10001E558();
    swift_retain_n();
    v10 = a5(v9, a2, a3, a4);
    sub_10001E558();

    return v10;
  }

  return result;
}

void sub_1000D8910(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10000A274();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    if (v3)
    {
      bzero(v2, 8 * v3);
    }

    sub_1000DB0EC();
    swift_retain_n();
    v10 = sub_1000DB3C4();
    v9(v10);
    v11 = sub_100005980();
    v7(v11);
    v12 = sub_1000DB3C4();
    v5(v12);
    sub_1000DB0EC();

    sub_100005874();
  }
}

void *sub_1000D89D4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

    swift_bridgeObjectRetain_n();
    v10 = sub_1000D8310(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void sub_1000D8A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000A274();
  v21 = v20;
  v182 = v22;
  v24 = v23;
  v183 = v25;
  v196 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  sub_100002C00();
  __chkstk_darwin(v26);
  sub_100009C24();
  v206 = v27;
  sub_100002F1C();
  __chkstk_darwin(v28);
  sub_1000079F8();
  v205 = v29;
  sub_100002F1C();
  __chkstk_darwin(v30);
  sub_1000079F8();
  v191 = v31;
  sub_100002F1C();
  __chkstk_darwin(v32);
  sub_1000079F8();
  v190 = v33;
  sub_100002F1C();
  __chkstk_darwin(v34);
  sub_1000079F8();
  v180 = v35;
  sub_100002F1C();
  __chkstk_darwin(v36);
  sub_1000DB284();
  v179 = v37;
  v188 = v24;
  v38 = v24[1];
  if (v38 < 1)
  {
    v40 = _swiftEmptyArrayStorage;
LABEL_92:
    sub_1000DB29C();
    if (!v168)
    {
      goto LABEL_134;
    }

    v24 = v40;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v169 = v40;
    }

    else
    {
LABEL_128:
      v169 = sub_100147DF0(v24);
    }

    v24 = (v169 + 16);
    for (i = *(v169 + 2); i >= 2; *v24 = i)
    {
      sub_100016718();
      if (!*v172)
      {
        goto LABEL_131;
      }

      v173 = (v171 + 16 * i);
      v174 = *v173;
      v175 = &v24[2 * i];
      v176 = *(v175 + 1);
      sub_1000D9740();
      if (v21)
      {
        break;
      }

      if (v176 < v174)
      {
        goto LABEL_119;
      }

      if (i - 2 >= *v24)
      {
        goto LABEL_120;
      }

      *v173 = v174;
      v173[1] = v176;
      v177 = *v24 - i;
      if (*v24 < i)
      {
        goto LABEL_121;
      }

      i = *v24 - 1;
      sub_100147E04(v175 + 16, v177, v175);
    }

LABEL_103:

    sub_100005874();
    return;
  }

  v39 = 0;
  v40 = _swiftEmptyArrayStorage;
  while (1)
  {
    v41 = v39 + 1;
    v184 = v39;
    if (v39 + 1 < v38)
    {
      v42 = v39;
      v181 = v40;
      sub_100016718();
      v44 = *v43;
      v45 = *(v44 + 8 * v41);
      v193 = 8 * v42;
      v46 = (v44 + 8 * v42 + 16);
      v47 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100004CBC();
      v195 = v48;
      swift_beginAccess();
      v192 = v41;
      v49 = v179;
      sub_1000192DC(v47 + v45, v179);
      sub_100004CBC();
      swift_beginAccess();
      v24 = v180;
      sub_1000DACD0();
      sub_1000192DC(v50, v51);

      sub_1000C1814();
      LODWORD(v194) = v52;
      sub_100019338(v24);
      v53 = v49;
      v41 = v192;
      sub_100019338(v53);

      v54 = v195;
      v55 = v42 + 2;
      while (1)
      {
        v56 = v55;
        v57 = v41 + 1;
        if (v57 >= v54)
        {
          break;
        }

        v204 = v46;
        v59 = *(v46 - 1);
        v58 = *v46;
        v60 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        sub_100004CBC();
        v207 = v61;
        swift_beginAccess();
        sub_100025AC4();
        v201 = v58;
        v62 = v190;
        v203 = v63;
        sub_1000192DC(v60 + v58, v190);
        v64 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        sub_100004CBC();
        swift_beginAccess();
        v200 = v59;
        sub_1000192DC(v64 + v59, v191);
        type metadata accessor for Date();
        v202 = &v178;
        sub_100002BDC();
        v189 = v21;
        v66 = v65;
        __chkstk_darwin(v67);
        sub_1000DB360();
        v69 = *(v68 - 256);
        v70 = *(v69 + 32);
        v71 = v62;
        v72 = v62 + *(v69 + 36);
        v192 = v57;
        v73 = v71 + v70;
        v197 = sub_10002B0EC();

        sub_1000DB224(v73, v72);
        v74 = *(v66 + 16);
        v75 = sub_1000DB380();
        v76 = v74(v75);
        v199 = &v178;
        __chkstk_darwin(v76);
        v77 = v191;
        dispatch thunk of static Comparable.>= infix(_:_:)();
        v78 = sub_1000DB374();
        v74(v78);
        sub_1000DB0D4();
        v79 = static Date.< infix(_:_:)() & 1;
        v80 = *(v66 + 8);
        v81 = sub_1000062B0();
        v80(v81);
        v82 = sub_1000DB38C();
        v80(v82);
        v41 = v192;
        v21 = v189;
        sub_1000DB020();
        sub_1000DB020();
        v24 = v203;
        sub_100019338(v77);
        sub_100019338(v190);

        v56 = v207;
        v46 = v204 + 1;
        v55 = v207 + 1;
        v54 = v195;
        if ((v194 & 1) != v79)
        {
          goto LABEL_10;
        }
      }

      v41 = v54;
      if ((v194 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_10:
      v83 = v184;
      if (v41 < v184)
      {
        goto LABEL_125;
      }

      if (v184 < v41)
      {
        if (v54 >= v56)
        {
          v84 = v56;
        }

        else
        {
          v84 = v54;
        }

        v85 = 8 * v84 - 8;
        v86 = v41;
        v40 = v181;
        v87 = v193;
        do
        {
          if (v83 != --v86)
          {
            v88 = *v188;
            if (!*v188)
            {
              goto LABEL_132;
            }

            v89 = *(v88 + v87);
            *(v88 + v87) = *(v88 + v85);
            *(v88 + v85) = v89;
          }

          ++v83;
          v85 -= 8;
          v87 += 8;
        }

        while (v83 < v86);
      }

      else
      {
LABEL_22:
        v40 = v181;
      }
    }

    sub_100016718();
    v92 = *(v91 + 8);
    if (v41 >= v92)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v41, v184))
    {
      goto LABEL_124;
    }

    if (v41 - v184 >= v90)
    {
LABEL_39:
      v94 = v184;
      goto LABEL_40;
    }

    if (__OFADD__(v184, v90))
    {
      goto LABEL_126;
    }

    if (v184 + v90 >= v92)
    {
      v93 = v92;
    }

    else
    {
      v93 = v184 + v90;
    }

    if (v93 < v184)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v94 = v184;
    if (v41 != v93)
    {
      break;
    }

LABEL_40:
    if (v41 < v94)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10013FB2C();
      v40 = v166;
    }

    v122 = v40[2];
    v123 = v122 + 1;
    if (v122 >= v40[3] >> 1)
    {
      sub_10013FB2C();
      v40 = v167;
    }

    v40[2] = v123;
    v24 = v40 + 4;
    v124 = &v40[2 * v122 + 4];
    *v124 = v184;
    v124[1] = v41;
    sub_1000DB29C();
    if (!v125)
    {
      goto LABEL_133;
    }

    v192 = v41;
    if (v122)
    {
      while (1)
      {
        v126 = v123 - 1;
        v127 = &v24[2 * v123 - 2];
        v128 = &v40[2 * v123];
        if (v123 >= 4)
        {
          break;
        }

        if (v123 == 3)
        {
          v129 = v40[4];
          v130 = v40[5];
          v139 = __OFSUB__(v130, v129);
          v131 = v130 - v129;
          v132 = v139;
LABEL_60:
          if (v132)
          {
            goto LABEL_110;
          }

          v144 = *v128;
          v143 = v128[1];
          v145 = __OFSUB__(v143, v144);
          v146 = v143 - v144;
          v147 = v145;
          if (v145)
          {
            goto LABEL_113;
          }

          v148 = v127[1];
          v149 = v148 - *v127;
          if (__OFSUB__(v148, *v127))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v146, v149))
          {
            goto LABEL_118;
          }

          if (v146 + v149 >= v131)
          {
            if (v131 < v149)
            {
              v126 = v123 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v123 < 2)
        {
          goto LABEL_112;
        }

        v151 = *v128;
        v150 = v128[1];
        v139 = __OFSUB__(v150, v151);
        v146 = v150 - v151;
        v147 = v139;
LABEL_75:
        if (v147)
        {
          goto LABEL_115;
        }

        v153 = *v127;
        v152 = v127[1];
        v139 = __OFSUB__(v152, v153);
        v154 = v152 - v153;
        if (v139)
        {
          goto LABEL_117;
        }

        if (v154 < v146)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v126 - 1 >= v123)
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        sub_100016718();
        if (!*v159)
        {
          goto LABEL_130;
        }

        v160 = &v24[2 * v158];
        v161 = *v160;
        v162 = &v24[2 * v126];
        v163 = *(v162 + 1);
        sub_1000D9740();
        if (v21)
        {
          goto LABEL_103;
        }

        if (v163 < v161)
        {
          goto LABEL_105;
        }

        v164 = v40[2];
        if (v126 > v164)
        {
          goto LABEL_106;
        }

        *v160 = v161;
        v160[1] = v163;
        if (v126 >= v164)
        {
          goto LABEL_107;
        }

        v123 = v164 - 1;
        sub_100147E04(v162 + 16, v164 - 1 - v126, &v24[2 * v126]);
        v40[2] = v164 - 1;
        if (v164 <= 2)
        {
          goto LABEL_89;
        }
      }

      v133 = &v24[2 * v123];
      v134 = *(v133 - 8);
      v135 = *(v133 - 7);
      v139 = __OFSUB__(v135, v134);
      v136 = v135 - v134;
      if (v139)
      {
        goto LABEL_108;
      }

      v138 = *(v133 - 6);
      v137 = *(v133 - 5);
      v139 = __OFSUB__(v137, v138);
      v131 = v137 - v138;
      v132 = v139;
      if (v139)
      {
        goto LABEL_109;
      }

      v140 = v128[1];
      v141 = v140 - *v128;
      if (__OFSUB__(v140, *v128))
      {
        goto LABEL_111;
      }

      v139 = __OFADD__(v131, v141);
      v142 = v131 + v141;
      if (v139)
      {
        goto LABEL_114;
      }

      if (v142 >= v136)
      {
        v156 = *v127;
        v155 = v127[1];
        v139 = __OFSUB__(v155, v156);
        v157 = v155 - v156;
        if (v139)
        {
          goto LABEL_122;
        }

        if (v131 < v157)
        {
          v126 = v123 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    sub_100016718();
    v38 = *(v165 + 8);
    v39 = v192;
    if (v192 >= v38)
    {
      goto LABEL_92;
    }
  }

  v181 = v40;
  v189 = v21;
  v95 = v184;
  sub_100016718();
  v97 = *v96;
  v193 = type metadata accessor for Date();
  v194 = v193 - 8;
  v195 = v97;
  v98 = v97 + 8 * v41 - 8;
  v99 = v95 - v41;
  v185 = v93;
LABEL_33:
  v192 = v41;
  v100 = *(v195 + 8 * v41);
  v186 = v99;
  v187 = v98;
  v101 = v98;
  while (1)
  {
    v197 = v99;
    v102 = *v101;
    v103 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v104 = v100;
    sub_1000183F4();
    swift_beginAccess();
    sub_100018C50();
    v204 = v105;
    sub_1000192DC(v103 + v104, v205);
    v106 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    v202 = v102;
    v107 = sub_1000192DC(v106 + v102, v206);
    v203 = &v178;
    v108 = v193;
    v199 = *(v193 - 8);
    v109 = v199;
    __chkstk_darwin(v107);
    sub_1000DB360();
    v198 = sub_10002B0EC();

    v110 = sub_100005980();
    sub_1000DB224(v110, v111);
    v112 = v109[2];
    v113 = sub_1000DB380();
    v114 = v112(v113);
    v201 = &v178;
    __chkstk_darwin(v114);
    v115 = v206;
    sub_100005980();
    dispatch thunk of static Comparable.>= infix(_:_:)();
    v116 = sub_1000DB374();
    v112(v116);
    v117 = v93;
    sub_1000DB0D4();
    v93 = static Date.< infix(_:_:)();
    v118 = v199[1];
    v119 = sub_1000062B0();
    v118(v119);
    (v118)(v117, v108);
    sub_1000DB020();
    sub_1000DB020();
    v24 = v204;
    sub_100019338(v115);
    sub_100019338(v205);

    if ((v93 & 1) == 0)
    {
LABEL_37:
      v41 = v192 + 1;
      v98 = v187 + 8;
      v99 = v186 - 1;
      v93 = v185;
      if (v192 + 1 == v185)
      {
        v41 = v185;
        v21 = v189;
        v40 = v181;
        goto LABEL_39;
      }

      goto LABEL_33;
    }

    v120 = v197;
    if (!v195)
    {
      break;
    }

    v121 = *v101;
    v100 = v101[1];
    *v101 = v100;
    v101[1] = v121;
    --v101;
    v99 = v120 + 1;
    if (v120 == -1)
    {
      goto LABEL_37;
    }
  }

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
}

void sub_1000D9740()
{
  sub_10000A274();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v88 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  sub_100002C00();
  __chkstk_darwin(v8);
  sub_100009C24();
  v87 = v9;
  sub_100002F1C();
  __chkstk_darwin(v10);
  sub_1000079F8();
  v86 = v11;
  sub_100002F1C();
  __chkstk_darwin(v12);
  sub_1000079F8();
  v90 = v13;
  sub_100002F1C();
  __chkstk_darwin(v14);
  sub_1000DB284();
  v89 = v15;
  v16 = v5 - v7;
  v17 = v3 - v5;
  if (v16 < v17)
  {
    sub_100060E68(v7);
    v18 = &v1[v16];
    v91 = v18;
    for (i = v3; ; v3 = i)
    {
      if (v1 >= v18 || v5 >= v3)
      {
        v5 = v7;
        goto LABEL_33;
      }

      v93 = v7;
      v94 = v1;
      v20 = *v1;
      v21 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      v22 = *v5;
      sub_1000183F4();
      swift_beginAccess();
      sub_100018C50();
      v85 = v22;
      v87 = v23;
      sub_1000192DC(v21 + v22, v89);
      v24 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100004CBC();
      swift_beginAccess();
      v84 = v20;
      sub_1000192DC(v24 + v20, v90);
      type metadata accessor for Date();
      v86 = &v78;
      sub_100002BDC();
      v26 = v25;
      v95 = v5;
      v28 = *(v27 + 64);
      __chkstk_darwin(v29);
      v82 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      v81 = sub_10002B0EC();

      sub_10000D154();
      dispatch thunk of static Comparable.>= infix(_:_:)();
      v30 = *(v26 + 16);
      v31 = sub_1000DB380();
      v32 = v30(v31);
      v83 = &v78;
      __chkstk_darwin(v32);
      v33 = v90;
      sub_1000DB074();
      dispatch thunk of static Comparable.>= infix(_:_:)();
      v34 = sub_1000DB374();
      v30(v34);
      sub_1000DB0D4();
      LOBYTE(v28) = static Date.< infix(_:_:)();
      v35 = *(v26 + 8);
      v36 = sub_1000062B0();
      v35(v36);
      v37 = sub_1000DB38C();
      v35(v37);
      sub_100019338(v33);
      sub_100019338(v89);

      if ((v28 & 1) == 0)
      {
        break;
      }

      v38 = v95;
      v5 = v95 + 1;
      v39 = v93;
      v1 = v94;
      if (v93 != v95)
      {
        goto LABEL_11;
      }

LABEL_12:
      v7 = (v39 + 1);
      v18 = v91;
    }

    v39 = v93;
    v38 = v94;
    v1 = v94 + 1;
    v5 = v95;
    if (v93 == v94)
    {
      goto LABEL_12;
    }

LABEL_11:
    *v39 = *v38;
    goto LABEL_12;
  }

  v40 = sub_10004EF18();
  sub_100060E68(v40);
  v18 = &v1[v17];
  v93 = v7;
  v94 = v1;
LABEL_14:
  v41 = v5 - 1;
  v42 = v3 - 1;
  v96 = v5;
  for (j = v5 - 1; v18 > v1 && v5 > v7; v41 = j)
  {
    i = v42;
    v44 = v18 - 1;
    v45 = *v41;
    v46 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v90 = *(v18 - 1);
    v47 = v90;
    v91 = v18;
    sub_1000183F4();
    swift_beginAccess();
    sub_100025AC4();
    v48 = v86;
    v85 = v49;
    sub_1000192DC(v46 + v47, v86);
    v50 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    v83 = v45;
    sub_1000192DC(v50 + v45, v87);
    v51 = type metadata accessor for Date();
    v84 = &v78;
    sub_100002BDC();
    v89 = v52;
    v54 = *(v53 + 64);
    __chkstk_darwin(v55);
    v81 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
    v56 = &v78 - v81;
    v57 = v88;
    v58 = v48 + *(v88 + 36);
    v59 = v48 + *(v88 + 32);
    v80 = sub_10002B0EC();

    v60 = sub_100019678();
    v62 = sub_1000DB224(v60, v61);
    v63 = *(v89 + 16);
    if (v62)
    {
      v64 = v59;
    }

    else
    {
      v64 = v58;
    }

    v65 = v63(v56, v64, v51);
    v82 = &v78;
    __chkstk_darwin(v65);
    v66 = &v78 - v81;
    v67 = v87 + *(v57 + 36);
    v68 = v87 + *(v57 + 32);
    sub_100019678();
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      v69 = v68;
    }

    else
    {
      v69 = v67;
    }

    v63(v66, v69, v51);
    v70 = static Date.< infix(_:_:)();
    v71 = *(v89 + 8);
    v72 = sub_10000CDA4();
    v71(v72);
    (v71)(v56, v51);
    v73 = sub_1000DB38C();
    sub_100019338(v73);
    sub_100019338(v86);

    if (v70)
    {
      v3 = i;
      v7 = v93;
      v75 = j;
      v5 = j;
      v1 = v94;
      v18 = v91;
      if (i + 1 != v96)
      {
        *i = *j;
        v5 = v75;
      }

      goto LABEL_14;
    }

    v74 = i;
    v5 = v96;
    if (v91 != i + 1)
    {
      *i = *v44;
    }

    v42 = v74 - 1;
    v18 = v44;
    v7 = v93;
    v1 = v94;
  }

LABEL_33:
  v76 = v18 - v1;
  if (v5 != v1 || v5 >= &v1[v76])
  {
    memmove(v5, v1, 8 * v76);
  }

  sub_100005874();
}

void sub_1000D9DB4(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v2 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_100011B14(&qword_1001B94B0, type metadata accessor for InferenceProviderAsset, &unk_1001720DC);
    Set.Iterator.init(_cocoa:)();
    a1 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_22:
      sub_100019334(a1);
      return;
    }

    while (1)
    {
      sub_1000588F0(v15);

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for InferenceProviderAsset(0);
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1000D9FEC()
{
  sub_100001ED0();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_10000D0A0(v2);
  *v3 = v4;
  v5 = sub_1000071DC(v3);

  return sub_1000D53D0(v5, v6, v1);
}

uint64_t sub_1000DA080(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10006F558;

  return sub_1000C0078(a1, a2, v10, a4, a5);
}

uint64_t sub_1000DA148()
{
  sub_10001881C();
  sub_100003884();
  sub_1000063B0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100001FE0(v1);
  sub_100007BB8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000DA1D8()
{
  sub_100001ED0();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_10000D0A0(v2);
  *v3 = v4;
  v5 = sub_1000071DC(v3);

  return sub_1000D57D0(v5, v6, v1);
}

unint64_t sub_1000DA26C()
{
  result = qword_1001BB3F0;
  if (!qword_1001BB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB3F0);
  }

  return result;
}

uint64_t sub_1000DA2C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10006FA64;

  return sub_1000C0624(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_1000DA390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v10 = swift_task_alloc();
  v11 = sub_100004B00(v10);
  *v11 = v12;
  v11[1] = sub_10006FA64;
  sub_100036708();
  sub_10000CD38();
  sub_100006378();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1000DA444()
{
  sub_10001881C();
  sub_100003884();
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  sub_1000071DC(v1);
  sub_10000CD38();
  sub_100007BB8();

  return sub_1000D17CC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1000DA4EC()
{
  sub_100001ED0();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_10000D0A0(v3);
  *v4 = v5;
  v6 = sub_1000071DC(v4);

  return sub_1000D1EE8(v6, v7, v1, v2);
}

uint64_t sub_1000DA588()
{
  sub_100001ED0();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = sub_10000D0A0(v4);
  *v5 = v6;
  v5[1] = sub_10006FA64;

  return sub_1000CCB8C(v3, v1);
}

uint64_t sub_1000DA628()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_10000D154();

  return sub_1000CCC34(v3, v4);
}

uint64_t sub_1000DA6C4(uint64_t a1, uint64_t a2)
{
  v4 = _s6PolicyVMa_0(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DA744()
{
  sub_1000033DC();
  v0 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F44(v0);
  v1 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F44(v1);
  v2 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F44(v2);
  v3 = swift_task_alloc();
  v4 = sub_10000D0A0(v3);
  *v4 = v5;
  v4[1] = sub_10006FA64;
  sub_10000CD38();
  sub_1000062BC();

  return sub_1000C4BA0(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1000DA93C()
{
  sub_10001881C();
  sub_100003884();
  sub_1000063B0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100001FE0(v1);
  sub_100007BB8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000DA9CC()
{
  sub_10000639C();
  sub_100003884();
  sub_1000063B0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_100003D20();

  return sub_1000C1CF0(v3, v4, v5, v6);
}

uint64_t sub_1000DAA70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DAAC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000DAB14(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1000DAB2C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000DABCC()
{
}

void sub_1000DABF0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000DAC20()
{
}

uint64_t sub_1000DAC40()
{
}

uint64_t sub_1000DAD00()
{

  return swift_task_alloc();
}

uint64_t sub_1000DAD20()
{

  return type metadata accessor for Logger();
}

uint64_t sub_1000DAD40()
{

  return type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
}

uint64_t sub_1000DAD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *(a1 + 16) = a19;
  *(a1 + 32) = v19;

  return sub_10000E8DC(a1);
}

uint64_t sub_1000DADD4@<X0>(uint64_t a1@<X8>)
{
  result = v3 + a1;
  *(v2 + 368) = *(v3 + a1 + *(v1 + 28));
  return result;
}

void sub_1000DADE8()
{

  sub_10003E244();
}

uint64_t sub_1000DAE0C()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1000DAE40(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000DAE5C(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = 0;

  return swift_willThrow();
}

uint64_t sub_1000DAEA4()
{

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

uint64_t sub_1000DAEC4()
{
}

uint64_t sub_1000DAF0C()
{
  v3 = v1[37] + v1[38] + *(v1[30] + 60);

  return sub_100007130(v3, v0 - 80);
}

BOOL sub_1000DAF70()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000DAF88()
{

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

double sub_1000DAFD0()
{

  return result;
}

uint64_t sub_1000DAFF8()
{
}

uint64_t sub_1000DB05C(uint64_t result)
{
  *(*(v1 + 48) + 8 * result) = v2;
  ++*(v1 + 16);
  return result;
}

void *sub_1000DB098(void *result)
{
  result[2] = v2;
  result[3] = v1;
  result[4] = v3;
  return result;
}

uint64_t sub_1000DB104()
{

  return sub_10003DA78(v1, v2 + v0);
}

uint64_t sub_1000DB11C(uint64_t a1, uint64_t a2)
{
}

uint64_t sub_1000DB138(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 128);

  return sub_1000286AC(v4, a2);
}

void sub_1000DB15C()
{

  sub_10003E244();
}

uint64_t sub_1000DB180()
{
}

uint64_t sub_1000DB19C(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t sub_1000DB1C0()
{
  v4 = v2 + *(v0 + 60);

  return sub_100007130(v4, v1 + 16);
}

uint64_t sub_1000DB1DC()
{
}

uint64_t sub_1000DB1F4()
{
}

uint64_t sub_1000DB20C()
{
}

uint64_t sub_1000DB224(uint64_t a1, uint64_t a2)
{

  return dispatch thunk of static Comparable.>= infix(_:_:)();
}

uint64_t sub_1000DB23C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1000DB254()
{
}

uint64_t sub_1000DB26C()
{

  return type metadata accessor for AuditToken();
}

char *sub_1000DB3DC(uint64_t a1)
{

  return sub_100038E28(a1, v2, v1, v3);
}

uint64_t sub_1000DB3FC()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;

  return swift_errorRetain();
}

uint64_t sub_1000DB41C()
{

  return type metadata accessor for Logger();
}

uint64_t sub_1000DB43C()
{

  return type metadata accessor for Logger();
}

uint64_t sub_1000DB45C()
{
}

void sub_1000DB474(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{

  sub_100080444(a8 + 1, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1000DB48C(float a1)
{
  *v1 = a1;
}

uint64_t sub_1000DB4A4()
{

  return sub_100004A04((v0 + 96), v0 + 56);
}

uint64_t sub_1000DB4BC()
{

  return swift_allocObject();
}

uint64_t sub_1000DB4D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  Session.Metadata.id.getter();
  type metadata accessor for Session();
  v6 = static UUIDIdentifier.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_1000DB5F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = type metadata accessor for AssetCost();
  sub_100002BDC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002B8C();
  v8 = v7 - v6;
  v9 = type metadata accessor for Date();
  v31 = v9;
  v33 = *(v9 - 8);
  v10 = v33;
  v11 = *(v33 + 64);
  __chkstk_darwin(v9);
  v34 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v28 - v34;
  v13 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v2;
  swift_beginAccess();
  v14 = *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 32);
  v32 = *(v10 + 16);
  v32(v12, &v13[v14], v9);
  v15 = InferenceProviderAssetDescriptor.identifier.getter();
  v29 = v16;
  v30 = v15;
  v17 = (*(v4 + 16))(v8, v2 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_cost, v35);
  v25 = InferenceProviderAssetDescriptor.version.getter(v17, v18, v19, v20, v21, v22, v23, v24, v28, v29, v30, v31);
  __chkstk_darwin(v25);
  v26 = v31;
  v32(&v28 - v34, v12, v31);
  AssetInfo.init(identifier:cost:version:hasForegroundSession:timeLastRequestEnded:)();
  return (*(v33 + 8))(v12, v26);
}

uint64_t sub_1000DB870()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BB478);
  sub_10000641C(v0, qword_1001BB478);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000DB8D4()
{
  sub_1000E00E8(v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_weakManagerWrapper, v3);
  Strong = swift_weakLoadStrong();
  sub_1000E0120(v3);
  return Strong;
}

uint64_t sub_1000DB924()
{
  sub_100002BAC();
  v3 = v2;
  v1[16] = v2;
  v1[17] = v0;
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v1[18] = v4;
  sub_100002F04(v4);
  v1[19] = sub_100002C58();
  v5 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v5);
  v1[20] = sub_100002C58();
  v6 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F04(v6);
  v1[21] = sub_100002C58();
  v7 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F04(v7);
  v1[22] = sub_100002C58();
  v8 = type metadata accessor for InferenceProviderDescriptor();
  v1[23] = v8;
  sub_100002F44(v8);
  v1[24] = v9;
  v1[25] = sub_100002C58();
  v10 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[26] = v10;
  sub_100002F44(v10);
  v1[27] = v11;
  v1[28] = sub_100002C58();
  State = type metadata accessor for LoadState();
  v1[29] = State;
  sub_100002F44(State);
  v1[30] = v13;
  v1[31] = sub_10000BF98();
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000DBB2C, v3, 0);
}

uint64_t sub_1000DBB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v21 = v18[17];
  v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  v18[33] = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0(v22 + v21, (v18 + 7));
  sub_10002B088();
  if (!v16)
  {
    v32 = sub_100010BD4();
    v33(v32);
    v34 = sub_10000E724();
    v20(v34);
    sub_100013814();
    sub_100011B5C(v35, v36, &protocol conformance descriptor for LoadState);
    sub_100001F70();
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    v38 = *(v19 + 8);
    v39 = sub_1000060A4();
    v38(v39);
    if (v37)
    {
      if (qword_1001B8938 != -1)
      {
        sub_100005C90();
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10000641C(v40, qword_1001BB478);
      sub_100001F0C();

      v41 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      v42 = sub_100019C50();
      v43 = v18[32];
      v44 = v18[29];
      if (!v42)
      {

        v183 = sub_100007660();
        v38(v183);
LABEL_17:
        sub_100018404();

        sub_100001F00();
        sub_100011190();

        __asm { BRAA            X1, X16 }
      }

      v45 = v18[17];
      v279 = v38;
      v46 = sub_1000267F8();
      sub_1000080A4();
      *v46 = 136315394;
      v278 = v43;
      v47 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
      v277 = v44;
      v48 = type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100005168();
      sub_100011B5C(v49, v50, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001127C(v51, v52);
      sub_10001E4A8();

      *(v46 + 4) = v48;
      *(v46 + 12) = 2080;
      v53 = *(v45 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      sub_100003370((v45 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v53);
      sub_100003048();
      v54 = sub_100003754();
      v55(v54);
      sub_10000866C();
      sub_100011B5C(v56, v57, &protocol conformance descriptor for InferenceProviderDescriptor);
      sub_100003E14();
      dispatch thunk of CustomStringConvertible.description.getter();
      v58 = sub_10000C738();
      v59(v58);
      v60 = sub_10001993C();
      sub_100004A3C(v60, v53, v61);
      sub_100001F0C();

      *(v46 + 14) = v45 + v47;
      sub_10003DD68();
      _os_log_impl(v62, v63, v64, v65, v46, 0x16u);
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100002BD0();

      v67 = v277;
      v66 = v278;
    }

    else
    {
      sub_100018630();
      UUIDIdentifier.init()();
      sub_100011880(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager);
      v68 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
      v69 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
      v77 = sub_100012E48(v69, v70, v71, v72, v73, v74, v75, v76, v187, v193, v199, v205, v211, v216, v221, v226, v231, v236, v241);
      v85 = sub_10000A7B8(v77, v78, v79, v80, v81, v82, v83, v84, v188, v194, v200, v206, v212, v217, v222, v227, v232, v237, v242);
      v17(v85);
      v86 = *(v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      v238 = v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection;
      sub_100013D6C((v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), *(v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24));
      v87 = sub_10000A868();
      v88(v87, v86);
      v89 = v246;
      InferenceProviderDescriptor.id.getter();
      sub_1000031D4();
      v90 = sub_100004CE8();
      v91(v90);
      v92 = 1;
      v93 = v252;
      sub_100003978();
      sub_100009BFC(v94, v95, v96, v274);
      sub_100065020(&qword_1001B94F0, &unk_100172060);
      v97 = v264;
      sub_100003978();
      sub_100009BFC(v98, v99, v100, v101);
      type metadata accessor for AuditToken();
      v102 = v268;
      sub_100003978();
      v275 = v103;
      v107 = sub_100009BFC(v104, v105, v106, v103);
      v115 = sub_100019A94(v107, v108, v109, v110, v111, v112, v113, v114, v189, v195, v201, v207, v213, v218, v223, v228, v233, v238, v243, v246, v249, v252, v255, v258, v261, v264, v266, v268, v270, v272);
      v116(v115);

      sub_10000ECD8(v102, &qword_1001BB3F8, &qword_100171D50);
      sub_10000ECD8(v97, &qword_1001BB408, &unk_100171DC0);
      sub_10000ECD8(v93, &qword_1001BB410, &unk_100172340);
      v279(v68);
      if (qword_1001B8938 != -1)
      {
        sub_100005C90();
        swift_once();
      }

      v117 = type metadata accessor for Logger();
      sub_10000641C(v117, qword_1001BB478);
      sub_100003170();

      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = v18[25];
        v92 = sub_1000267F8();
        sub_1000080A4();
        sub_1000195F8(4.8151e-34);
        sub_100005168();
        v123 = sub_100011B5C(v121, v122, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
        v124 = sub_10003F858(v123);
        v126 = sub_10001127C(v124, v125);

        *(v92 + 4) = v126;
        sub_1000265C8();
        v127 = v239[3];
        v128 = v239[4];
        sub_100013D6C(v239, v127);
        v129 = sub_100019498();
        v130(v129, v128);
        sub_10000866C();
        sub_100011B5C(v131, v132, &protocol conformance descriptor for InferenceProviderDescriptor);
        v89 = v120;
        dispatch thunk of CustomStringConvertible.description.getter();
        v133 = sub_1000070B8();
        v134(v133);
        v135 = sub_10001993C();
        sub_100004A3C(v135, v127, v136);
        sub_100019498();

        *(v92 + 14) = v120;
        sub_1000E0154(&_mh_execute_header, v137, v138, "Marking asset %s unloaded from %s by termination");
        swift_arrayDestroy();
        sub_100002BD0();

        sub_1000039CC();
      }

      sub_100008244();
      v139 = v18[6];
      sub_100003370(v18 + 2, v18[5]);
      v140 = sub_100019498();
      v141(v140, v139);
      sub_100003324(v18 + 2);
      v142 = sub_100019244();
      (v118)(v142);
      v143 = sub_100002CBC();
      sub_10001938C(v143, v144);
      v145 = sub_100031688();
      v89(v145);
      sub_100002D24();
      swift_beginAccess();
      v146 = sub_1000060A4();
      sub_10003DA78(v146, v147);
      swift_endAccess();
      (v118)(v92, v139, v119);
      v148 = sub_100002CBC();
      v150 = sub_10001938C(v148, v149);
      v158 = sub_10000C644(v150, v151, v152, v153, v154, v155, v156, v157, v190, v196, v202, v208, v214, v219, v224, v229, v234, v239, v244, v247, v250, v253, v256, v259);
      v89(v158);
      sub_100002D24();
      swift_beginAccess();
      v159 = sub_1000060A4();
      sub_10003DA78(v159, v160);
      swift_endAccess();
      v161 = sub_1000037C8();
      InferenceProviderAssetDescriptor.version.getter(v161, v162, v163, v164, v165, v166, v167, v168, v191, v197, v203, v209);
      AssetCost.onDeviceMemory.getter();
      v169 = v267;
      sub_100003978();
      v173 = sub_100009BFC(v170, v171, v172, v275);
      v181 = sub_1000088CC(v173, v174, v175, v176, v177, v178, v179, v180, v192, v198, v204, v210, v215, v220, v225, v230, v235, v240, v245, v248, v251, v254, v257, v260, v262, v265, v267, v269);
      v182(v181);

      sub_10000ECD8(v169, &qword_1001BB3F8, &qword_100171D50);
      (*(v271 + 8))(v119, v273);
      v66 = v276;
      v67 = v263;
    }

    (v279)(v66, v67);
    goto LABEL_17;
  }

  v23 = swift_task_alloc();
  v18[35] = v23;
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v23 = v18;
  sub_10000BFDC();
  sub_100019260();
  sub_100011190();

  return Task.value.getter(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000DC3BC()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100002B9C();
  *v3 = v2;

  if (v0)
  {
  }

  sub_100007088();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000DC4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  sub_10002B088();
  if (!v16)
  {
    v30 = sub_100010BD4();
    v31(v30);
    v32 = sub_10000E724();
    v20(v32);
    sub_100013814();
    sub_100011B5C(v33, v34, &protocol conformance descriptor for LoadState);
    sub_100001F70();
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    v36 = *(v19 + 8);
    v37 = sub_1000060A4();
    v36(v37);
    if (v35)
    {
      if (qword_1001B8938 != -1)
      {
        sub_100005C90();
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_10000641C(v38, qword_1001BB478);
      sub_100001F0C();

      v39 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      v40 = sub_100019C50();
      v41 = v18[32];
      v42 = v18[29];
      if (!v40)
      {

        v181 = sub_100007660();
        v36(v181);
LABEL_17:
        sub_100018404();

        sub_100001F00();
        sub_100011190();

        __asm { BRAA            X1, X16 }
      }

      v43 = v18[17];
      v277 = v36;
      v44 = sub_1000267F8();
      sub_1000080A4();
      *v44 = 136315394;
      v276 = v41;
      v45 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
      v275 = v42;
      v46 = type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100005168();
      sub_100011B5C(v47, v48, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001127C(v49, v50);
      sub_10001E4A8();

      *(v44 + 4) = v46;
      *(v44 + 12) = 2080;
      v51 = *(v43 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      sub_100003370((v43 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v51);
      sub_100003048();
      v52 = sub_100003754();
      v53(v52);
      sub_10000866C();
      sub_100011B5C(v54, v55, &protocol conformance descriptor for InferenceProviderDescriptor);
      sub_100003E14();
      dispatch thunk of CustomStringConvertible.description.getter();
      v56 = sub_10000C738();
      v57(v56);
      v58 = sub_10001993C();
      sub_100004A3C(v58, v51, v59);
      sub_100001F0C();

      *(v44 + 14) = v43 + v45;
      sub_10003DD68();
      _os_log_impl(v60, v61, v62, v63, v44, 0x16u);
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100002BD0();

      v65 = v275;
      v64 = v276;
    }

    else
    {
      sub_100018630();
      UUIDIdentifier.init()();
      sub_100011880(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager);
      v66 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
      v67 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
      v75 = sub_100012E48(v67, v68, v69, v70, v71, v72, v73, v74, v185, v191, v197, v203, v209, v214, v219, v224, v229, v234, v239);
      v83 = sub_10000A7B8(v75, v76, v77, v78, v79, v80, v81, v82, v186, v192, v198, v204, v210, v215, v220, v225, v230, v235, v240);
      v17(v83);
      v84 = *(v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      v236 = v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection;
      sub_100013D6C((v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), *(v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24));
      v85 = sub_10000A868();
      v86(v85, v84);
      v87 = v244;
      InferenceProviderDescriptor.id.getter();
      sub_1000031D4();
      v88 = sub_100004CE8();
      v89(v88);
      v90 = 1;
      v91 = v250;
      sub_100003978();
      sub_100009BFC(v92, v93, v94, v272);
      sub_100065020(&qword_1001B94F0, &unk_100172060);
      v95 = v262;
      sub_100003978();
      sub_100009BFC(v96, v97, v98, v99);
      type metadata accessor for AuditToken();
      v100 = v266;
      sub_100003978();
      v273 = v101;
      v105 = sub_100009BFC(v102, v103, v104, v101);
      v113 = sub_100019A94(v105, v106, v107, v108, v109, v110, v111, v112, v187, v193, v199, v205, v211, v216, v221, v226, v231, v236, v241, v244, v247, v250, v253, v256, v259, v262, v264, v266, v268, v270);
      v114(v113);

      sub_10000ECD8(v100, &qword_1001BB3F8, &qword_100171D50);
      sub_10000ECD8(v95, &qword_1001BB408, &unk_100171DC0);
      sub_10000ECD8(v91, &qword_1001BB410, &unk_100172340);
      v277(v66);
      if (qword_1001B8938 != -1)
      {
        sub_100005C90();
        swift_once();
      }

      v115 = type metadata accessor for Logger();
      sub_10000641C(v115, qword_1001BB478);
      sub_100003170();

      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v116, v117))
      {
        v118 = v18[25];
        v90 = sub_1000267F8();
        sub_1000080A4();
        sub_1000195F8(4.8151e-34);
        sub_100005168();
        v121 = sub_100011B5C(v119, v120, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
        v122 = sub_10003F858(v121);
        v124 = sub_10001127C(v122, v123);

        *(v90 + 4) = v124;
        sub_1000265C8();
        v125 = v237[3];
        v126 = v237[4];
        sub_100013D6C(v237, v125);
        v127 = sub_100019498();
        v128(v127, v126);
        sub_10000866C();
        sub_100011B5C(v129, v130, &protocol conformance descriptor for InferenceProviderDescriptor);
        v87 = v118;
        dispatch thunk of CustomStringConvertible.description.getter();
        v131 = sub_1000070B8();
        v132(v131);
        v133 = sub_10001993C();
        sub_100004A3C(v133, v125, v134);
        sub_100019498();

        *(v90 + 14) = v118;
        sub_1000E0154(&_mh_execute_header, v135, v136, "Marking asset %s unloaded from %s by termination");
        swift_arrayDestroy();
        sub_100002BD0();

        sub_1000039CC();
      }

      sub_100008244();
      v137 = v18[6];
      sub_100003370(v18 + 2, v18[5]);
      v138 = sub_100019498();
      v139(v138, v137);
      sub_100003324(v18 + 2);
      v140 = sub_100019244();
      (v116)(v140);
      v141 = sub_100002CBC();
      sub_10001938C(v141, v142);
      v143 = sub_100031688();
      v87(v143);
      sub_100002D24();
      swift_beginAccess();
      v144 = sub_1000060A4();
      sub_10003DA78(v144, v145);
      swift_endAccess();
      (v116)(v90, v137, v117);
      v146 = sub_100002CBC();
      v148 = sub_10001938C(v146, v147);
      v156 = sub_10000C644(v148, v149, v150, v151, v152, v153, v154, v155, v188, v194, v200, v206, v212, v217, v222, v227, v232, v237, v242, v245, v248, v251, v254, v257);
      v87(v156);
      sub_100002D24();
      swift_beginAccess();
      v157 = sub_1000060A4();
      sub_10003DA78(v157, v158);
      swift_endAccess();
      v159 = sub_1000037C8();
      InferenceProviderAssetDescriptor.version.getter(v159, v160, v161, v162, v163, v164, v165, v166, v189, v195, v201, v207);
      AssetCost.onDeviceMemory.getter();
      v167 = v265;
      sub_100003978();
      v171 = sub_100009BFC(v168, v169, v170, v273);
      v179 = sub_1000088CC(v171, v172, v173, v174, v175, v176, v177, v178, v190, v196, v202, v208, v213, v218, v223, v228, v233, v238, v243, v246, v249, v252, v255, v258, v260, v263, v265, v267);
      v180(v179);

      sub_10000ECD8(v167, &qword_1001BB3F8, &qword_100171D50);
      (*(v269 + 8))(v117, v271);
      v64 = v274;
      v65 = v261;
    }

    (v277)(v64, v65);
    goto LABEL_17;
  }

  v21 = swift_task_alloc();
  v18[35] = v21;
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v21 = v18;
  sub_10000BFDC();
  sub_100019260();
  sub_100011190();

  return Task.value.getter(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000DCD78()
{
  v20 = v0;
  if (qword_1001B8938 != -1)
  {
    sub_100005C90();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001BB478);

  v2 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    v3 = swift_slowAlloc();
    sub_1000033D0();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136315138;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100005168();
    sub_100011B5C(v5, v6, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_100004A3C(v7, v8, &v19);

    *(v3 + 4) = v9;
    sub_1000033FC();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_100003324(v4);
    sub_1000039CC();

    sub_100002BD0();
  }

  v15 = sub_1000DB8D4();
  *(v0 + 24) = v15;
  if (v15)
  {
    v16 = swift_task_alloc();
    *(v0 + 32) = v16;
    *v16 = v0;
    v16[1] = sub_1000DCFA0;

    return sub_1000DB924();
  }

  else
  {
    sub_100001F00();

    return v18();
  }
}

uint64_t sub_1000DCFA0()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  return _swift_task_switch(sub_1000DD08C, 0, 0);
}

uint64_t sub_1000DD08C()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_1000DD0E4()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  type metadata accessor for InferenceProviderAssetDescriptor();
  sub_100002C00();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_cost;
  type metadata accessor for AssetCost();
  sub_100002C00();
  (*(v4 + 8))(v0 + v3);
  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection));
  sub_1000193F0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v0);
  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager));

  sub_1000E0120(v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_weakManagerWrapper);
  v5 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_connectionTerminationIdentifier;
  type metadata accessor for UUID();
  sub_100002C00();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t sub_1000DD210()
{
  sub_1000DD0E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000DD270(uint64_t a1)
{
  result = type metadata accessor for InferenceProviderAssetDescriptor();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AssetCost();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for UUID();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000DD3EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DD40C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_1000DD46C(uint64_t a1)
{
  type metadata accessor for LoadState();
  if (v1 <= 0x3F)
  {
    sub_1000DD5C8(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        sub_1000BC108();
        if (v4 <= 0x3F)
        {
          sub_1000DD62C(319, &qword_1001BB618, &qword_1001B94F0, &unk_100172060, &qword_1001B9500);
          if (v5 <= 0x3F)
          {
            sub_1000DD62C(319, &unk_1001BB620, &qword_1001B94D0, &unk_100171E80, &qword_1001B94E0);
            if (v6 <= 0x3F)
            {
              sub_1000BB98C();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000DD5C8(uint64_t a1)
{
  if (!qword_1001BB610)
  {
    sub_10006A614(&qword_1001B8F70, &qword_10016FB88);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001BB610);
    }
  }
}

void sub_1000DD62C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_10006A614(a3, a4);
    sub_100013074(a5, a3, a4);
    v9 = type metadata accessor for Set();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000DD6FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return sub_1000DCD5C();
}

uint64_t sub_1000DD788()
{
  v1 = v0;
  v0[5] = v0[51];
  v2 = (v0 + 5);
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_100013E7C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v6 = v0[51];

    v0[6] = v6;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v7 = v0 + 21;
      v8 = (*(v0[21] + 88))(v0[23], v0[20]);
      v9 = v0 + 20;
      if (v8 == enum case for ModelManagerError.inferenceError(_:))
      {
        v7 = v0 + 25;
        v10 = v0[25];
        v12 = v0[23];
        v11 = v0[24];
        (*(v0[21] + 96))(v12, v0[20]);
        v13 = (*(v10 + 88))(v12, v11);
        v9 = v0 + 24;
        if (v13 == enum case for InferenceError.alreadyLoaded(_:))
        {
          v14 = v0[24];
          v15 = v1[25];
          v3 = v1[23];

          (*(v15 + 8))(v3, v14);
          goto LABEL_9;
        }
      }

      (*(*v7 + 8))(v0[23], *v9);
    }

    v123 = v0 + 24;

    swift_errorRetain();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v130 = v0[45];
      v68 = v0[38];
      v129 = v0[36];
      v69 = (v0[16] + v0[41]);
      sub_1000033D0();
      v70 = swift_slowAlloc();
      v133 = sub_100003788();
      sub_1000080A4();
      sub_1000195F8(4.8152e-34);
      sub_100005168();
      sub_100011B5C(v71, v72, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = sub_10001127C(v73, v74);

      *(v70 + 4) = v75;
      sub_1000265C8();
      v76 = v69[4];
      sub_100003370(v69, v69[3]);
      v77 = sub_10000A868();
      v78(v77, v76);
      sub_10000866C();
      sub_100011B5C(v79, v80, &protocol conformance descriptor for InferenceProviderDescriptor);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v130(v68, v129);
      v84 = sub_10001993C();
      sub_100004A3C(v84, v83, v85);
      sub_100001F0C();

      *(v70 + 14) = v81;
      *(v70 + 22) = 2112;
      swift_errorRetain();
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 24) = v86;
      *v133 = v86;
      sub_10000CD44(&_mh_execute_header, v87, v88, "Failed to load asset %s into %s: %@");
      sub_10000ECD8(v133, &qword_1001B8F68, &qword_10016FB80);
      sub_100002BD0();

      swift_arrayDestroy();
      sub_100002BD0();

      sub_1000039CC();
    }

    v89 = v0 + 26;
    v90 = v1[51];
    v131 = v1[35];
    v132 = v1[47];
    v92 = v1[18];
    v91 = v1[19];
    v125 = v1[17];
    v128 = v1[15];
    v93 = (v1[16] + v1[43]);
    v95 = v93[3];
    v94 = v93[4];
    sub_100003370(v93, v95);
    v96 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
    v126 = v97;
    v127 = v96;
    v104 = InferenceProviderAssetDescriptor.version.getter(v96, v97, v98, v99, v100, v101, v102, v103, v118, v119, v120, v121);
    v106 = v105;
    static AssetCost.zero.getter();
    v107 = AssetCost.onDeviceMemory.getter();
    (*(v92 + 8))(v91, v125);
    v108 = *(v94 + 48);
    swift_errorRetain();
    v108(v131, v127, v126, v104, v106, v107, 0, v132, v90, v128, v95, v94);

    v1[7] = v90;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v109 = 25;
      v110 = v123;
    }

    else
    {
      v89 = v1 + 22;
      v1[8] = v1[51];
      swift_errorRetain();
      if (!swift_dynamicCast())
      {
        v111 = v1[24];
        v112 = v1[25];
        sub_100003450();
        sub_100011B5C(v113, v114, &protocol conformance descriptor for InferenceError);
        swift_allocError();
        v116 = v115;
        swift_getErrorValue();
        Error.localizedDescription.getter();
        sub_1000031D4();
        Dictionary.init(dictionaryLiteral:)();
        sub_100008004();
        InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
        (*(v112 + 104))(v116, enum case for InferenceError.loadFailed(_:), v111);
        swift_willThrow();

        goto LABEL_23;
      }

      v109 = 21;
      v110 = v1 + 20;
    }

    (*(v1[v109] + 8))(*v89, *v110);
    swift_willThrow();

LABEL_23:
    (*(v1[34] + 8))(v1[35], v1[33]);

    v65 = v1[1];
    goto LABEL_24;
  }

  if ((*(v0[25] + 88))(v0[27], v0[24]) != enum case for InferenceError.alreadyLoaded(_:))
  {
    (*(v0[25] + 8))(v0[27], v0[24]);
    goto LABEL_5;
  }

  v3 = v0[24];

  v4 = sub_100007660();
  v5(v4);
LABEL_9:

  v16 = v1[40];
  v17 = v1[16];

  v18 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (os_log_type_enabled(v18, v3))
  {
    sub_10000CDB0();
    sub_1000062D8();
    sub_100012BB4(4.8151e-34);
    sub_100005168();
    v21 = sub_100011B5C(v19, v20, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v22 = sub_1000060D8(v21);
    sub_10001127C(v22, v23);
    sub_100013E7C();

    v24 = sub_1000113C8();
    v25(v24, v2);
    sub_10000866C();
    sub_100011B5C(v26, v27, &protocol conformance descriptor for InferenceProviderDescriptor);
    sub_1000035E8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v28 = sub_10000588C();
    v134(v28);
    v29 = sub_10001993C();
    sub_100004A3C(v29, v2, v30);
    sub_10000A868();

    *(v17 + 14) = v16;
    sub_100018E18(&_mh_execute_header, v31, v32, "Asset %s already loaded into %s");
    sub_10002A110();
    sub_1000039CC();

    sub_100002BD0();
  }

  v33 = v1[40];
  v34 = v1[16];

  v35 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (os_log_type_enabled(v35, v3))
  {
    sub_10000CDB0();
    sub_1000062D8();
    sub_100012BB4(4.8151e-34);
    sub_100005168();
    v38 = sub_100011B5C(v36, v37, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v39 = sub_1000060D8(v38);
    sub_10001127C(v39, v40);
    sub_100013E7C();

    v41 = sub_1000113C8();
    v42(v41, v2);
    sub_10000866C();
    sub_100011B5C(v43, v44, &protocol conformance descriptor for InferenceProviderDescriptor);
    sub_1000035E8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v45 = sub_10000588C();
    v134(v45);
    v46 = sub_10001993C();
    sub_100004A3C(v46, v2, v47);
    sub_10000A868();

    *(v34 + 14) = v33;
    sub_100018E18(&_mh_execute_header, v48, v49, "Finished loading asset %s into %s");
    sub_10002A110();
    sub_1000039CC();

    sub_100002BD0();
  }

  v50 = v1[34];
  v122 = v1[35];
  v124 = v1[33];
  v51 = (v1[16] + v1[43]);
  sub_100003370(v51, v51[3]);
  v52 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  InferenceProviderAssetDescriptor.version.getter(v52, v53, v54, v55, v56, v57, v58, v59, v118, v119, v120, v121);
  AssetCost.onDeviceMemory.getter();
  sub_10001360C();
  v64(v60, v61, v62, v63);

  (*(v50 + 8))(v122, v124);

  v65 = v1[1];
LABEL_24:

  return v65();
}

uint64_t sub_1000DE2F0()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000DE3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v25;
  a24 = v26;
  sub_100005EA4();
  a22 = v24;
  *(v24 + 208) = *(v24 + 472);
  v27 = (v24 + 304);
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_1000062B0();
  if (swift_dynamicCast())
  {
    v28 = (*(*(v24 + 312) + 88))(*(v24 + 320), *(v24 + 304));
    if (v28 == enum case for InferenceError.alreadyLoaded(_:))
    {
      v29 = v28;
      v31 = *(v24 + 336);
      v30 = *(v24 + 344);
      v33 = *(v24 + 320);
      v32 = *(v24 + 328);
      v34 = *(v24 + 304);
      v35 = *(v24 + 312);
LABEL_9:
      (*(v35 + 96))(v33, v34);
      v40 = *(v31 + 32);
      v40(v30, v33, v32);

      *(v24 + 496) = v40;
      *(v24 + 520) = v29;
      v41 = *(v24 + 224);

      v42 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      sub_1000089B8();
      v43 = &unk_1001BE000;
      if (sub_10000A384())
      {
        v45 = *(v24 + 360);
        v44 = *(v24 + 368);
        v91 = *(v24 + 352);
        v46 = *(v24 + 224);
        sub_1000267F8();
        a12 = sub_1000062D8();
        *v41 = 136315394;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100005168();
        sub_100011B5C(v47, v48, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = sub_100004A3C(v49, v50, &a12);

        *(v41 + 4) = v51;
        *(v41 + 12) = 2080;
        v52 = (v46 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
        v53 = *(v46 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
        v54 = *(v46 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
        sub_100013D6C(v52, v53);
        v55 = sub_100005974();
        v56(v55, v54);
        sub_10000866C();
        sub_100011B5C(v57, v58, &protocol conformance descriptor for InferenceProviderDescriptor);
        sub_1000035E8();
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        (*(v45 + 8))(v44, v91);
        sub_100004A3C(v59, v61, &a12);
        sub_100005974();

        *(v41 + 14) = v59;
        v43 = &unk_1001BE000;
        sub_1000033FC();
        _os_log_impl(v62, v63, v64, v65, v66, 0x16u);
        sub_10002A110();
        sub_1000039CC();

        sub_100002BD0();
      }

      v67 = (*(v24 + 224) + v43[261]);
      v68 = v67[4];
      sub_100003370(v67, v67[3]);
      sub_100004B94();
      v92 = v69 + *v69;
      v70 = swift_task_alloc();
      *(v24 + 504) = v70;
      *v70 = v24;
      v70[1] = sub_1000DE928;
      sub_100003D04();

      return v75(v71, v72, v73, v74, v75, v76, v77, v78, a9, v68 + 136, v92, a12, a13, a14, a15, a16);
    }

    (*(*(v24 + 312) + 8))(*(v24 + 320), *(v24 + 304));
  }

  v36 = *(v24 + 472);

  *(v24 + 216) = v36;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if ((*(*(v24 + 288) + 88))(*(v24 + 296), *(v24 + 280)) == enum case for ModelManagerError.inferenceError(_:))
    {
      (*(*(v24 + 288) + 96))(*(v24 + 296), *(v24 + 280));
      v37 = sub_100002CBC();
      v39 = v38(v37);
      if (v39 == enum case for InferenceError.alreadyLoaded(_:))
      {
        v29 = v39;
        v31 = *(v24 + 336);
        v30 = *(v24 + 344);
        v32 = *(v24 + 328);
        v34 = *(v24 + 304);
        v35 = *(v24 + 312);
        v33 = *(v24 + 296);
        goto LABEL_9;
      }

      v80 = v24 + 312;
    }

    else
    {
      v27 = (v24 + 280);
      v80 = v24 + 288;
    }

    (*(*v80 + 8))(*(v24 + 296), *v27);
  }

  swift_willThrow();
  v81 = sub_1000056DC();
  v82(v81);

  sub_100001F00();
  sub_100003D04();

  return v84(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000DE928()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  v3[64] = v0;

  if (v0)
  {
    v7 = v3[29];
    (*(v3[42] + 8))(v3[43], v3[41]);
    v8 = sub_1000DEECC;
    v9 = v7;
  }

  else
  {
    v9 = v3[29];
    v8 = sub_1000DEA4C;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1000DEA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = *(v14 + 496);
  v17 = *(v14 + 520);
  v36 = *(v14 + 472);
  v18 = *(v14 + 344);
  v19 = *(v14 + 328);
  v21 = *(v14 + 304);
  v20 = *(v14 + 312);
  sub_100003450();
  sub_100011B5C(v22, v23, &protocol conformance descriptor for InferenceError);
  swift_allocError();
  sub_1000031D4();
  v16(v24, v18, v19);
  (*(v20 + 104))(v15, v17, v21);
  swift_willThrow();

  v25 = sub_1000056DC();
  v26(v25);

  sub_100001F00();
  sub_100003540();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, a11, a12, a13, a14);
}

uint64_t sub_1000DEB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v27;
  a24 = v28;
  sub_100005EA4();
  a22 = v24;
  v29 = sub_10004868C(v24[55]);
  sub_1000480AC(v29, (v24 + 7));
  sub_100003370(v24 + 7, v24[10]);
  v30 = sub_1000060A4();
  v31(v30);
  sub_100003324(v24 + 7);
  v24[59] = v24[57];
  v32 = v24[55];
  sub_10000CC88();
  v33 = sub_100010C80();
  v34(v33);
  sub_100002D24();
  swift_beginAccess();
  sub_10003DA78(v25, v26 + v32);
  swift_endAccess();
  if (qword_1001B8938 != -1)
  {
    sub_100005C90();
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v24[60] = sub_10000641C(v35, qword_1001BB478);

  swift_errorRetain();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v24[28];
    sub_1000033D0();
    v39 = swift_slowAlloc();
    v62 = sub_100003788();
    a13 = sub_1000080A4();
    *v39 = 136315650;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100005168();
    v42 = sub_100011B5C(v40, v41, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v43 = sub_100013430(v42);
    v45 = v44;
    sub_100004A3C(v43, v44, &a13);
    sub_100013E7C();

    sub_100006534();
    v46 = (v38 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
    v48 = *(v38 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v47 = *(v38 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370(v46, v48);
    sub_100003048();
    v49(v48, v47);
    sub_10000866C();
    sub_100011B5C(v50, v51, &protocol conformance descriptor for InferenceProviderDescriptor);
    sub_100003E14();
    dispatch thunk of CustomStringConvertible.description.getter();
    v52 = sub_10000F148();
    v53(v52);
    sub_100004A3C(v45, v47, &a13);
    sub_100019498();

    sub_100011DD8();
    swift_errorRetain();
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 24) = v54;
    *v62 = v54;
    _os_log_impl(&_mh_execute_header, v36, v37, "Failed to load asset %s into %s: %@", v39, 0x20u);
    sub_10000ECD8(v62, &qword_1001B8F68, &qword_10016FB80);
    sub_100002BD0();

    sub_10000BEE8(v55, v56, (&type metadata for Any + 1));
    sub_100002BD0();

    sub_100002BD0();
  }

  v57 = swift_task_alloc();
  v24[61] = v57;
  *v57 = v24;
  sub_100007E40(v57);
  sub_100003D04();

  return sub_100041158(v58, v59);
}

uint64_t sub_1000DEECC()
{

  v0 = sub_1000056DC();
  v1(v0);

  sub_100001F00();

  return v2();
}

uint64_t sub_1000DEF8C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000DF084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v18 = v16[28];
  v17 = v16[29];
  v19 = v16[27];
  v29 = v16[18];
  v30 = v16[17];
  v31 = v16[14];
  v32 = v16[11];
  swift_willThrow();

  (*(v18 + 8))(v17, v19);

  sub_100001F00();
  sub_100003D04();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, v32, a13, a14, a15, a16);
}

uint64_t sub_1000DF17C()
{
  v127 = v0;
  v0[2] = v0[42];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (swift_dynamicCast())
  {
    if ((*(v0[10] + 88))(v0[11], v0[9]) == LODWORD(enum case for InferenceError.notLoaded(_:)[0]))
    {
LABEL_7:

      v6 = sub_1000060A4();
      v7(v6);

      v8 = v0[40];
      v9 = v0[4];

      v10 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_1000089B8();
      if (sub_10000A384())
      {
        sub_100012DB0();
        v126 = sub_1000062D8();
        sub_100012BB4(4.8151e-34);
        sub_100005168();
        v13 = sub_100011B5C(v11, v12, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
        v14 = sub_1000060D8(v13);
        sub_100036E38(v14, v15);
        sub_100013E7C();

        v16 = sub_1000113C8();
        v17(v16, v0 + 9);
        sub_10000866C();
        sub_100011B5C(v18, v19, &protocol conformance descriptor for InferenceProviderDescriptor);
        sub_1000035E8();
        dispatch thunk of CustomStringConvertible.description.getter();
        v20 = sub_10000588C();
        v123(v20);
        v21 = sub_100008004();
        sub_100004A3C(v21, v22, v23);
        sub_10000A868();

        *(v9 + 14) = v8;
        sub_1000033FC();
        _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
        sub_10002A110();
        sub_1000039CC();

        sub_100002BD0();
      }

      v37 = sub_100013AE4(v29, v30, v31, v32, v33, v34, v35, v36, v102, v105, v108, v111);
      InferenceProviderAssetDescriptor.version.getter(v37, v38, v39, v40, v41, v42, v43, v44, v103, v106, v109, v112);
      v45 = AssetCost.onDeviceMemory.getter();
      v53 = sub_100007910(v45, v46, v47, v48, v49, v50, v51, v52, v104, v107, v110, v113, v114, v115);
      v54(v53);

      (v123)(v117, v122);
      v55 = swift_task_alloc();
      v0[43] = v55;
      *v55 = v0;
      sub_100002008(v55);
      goto LABEL_15;
    }

    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  v1 = v0[42];
  v2 = v0 + 15;

  v0[3] = v1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v3 = v0 + 16;
    if ((*(v0[16] + 88))(v0[17], v0[15]) == enum case for ModelManagerError.inferenceError(_:))
    {
      v3 = v0 + 10;
      (*(v0[16] + 96))(v0[17], v0[15]);
      v4 = sub_1000060A4();
      if (v5(v4) == LODWORD(enum case for InferenceError.notLoaded(_:)[0]))
      {
        goto LABEL_7;
      }

      v2 = v0 + 9;
    }

    (*(*v3 + 8))(v0[17], *v2);
  }

  swift_errorRetain();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = v0[22];
    v118 = v0[20];
    v120 = v0[35];
    v60 = (v0[4] + v0[34]);
    sub_1000033D0();
    v61 = swift_slowAlloc();
    v62 = sub_100003788();
    v126 = sub_1000080A4();
    *v61 = 136315650;
    v63 = type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100005168();
    sub_100011B5C(v64, v65, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_100036E38(v66, v67);
    sub_100013E7C();

    *(v61 + 4) = v63;
    *(v61 + 12) = 2080;
    v69 = v60[3];
    v68 = v60[4];
    sub_100003370(v60, v69);
    sub_100003048();
    v70(v69, v68);
    sub_10000866C();
    sub_100011B5C(v71, v72, &protocol conformance descriptor for InferenceProviderDescriptor);
    sub_100003E14();
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    v75 = v74;
    v120(v59, v118);
    sub_100004A3C(v73, v75, &v126);
    sub_10000E86C();

    *(v61 + 14) = v73;
    *(v61 + 22) = 2112;
    swift_errorRetain();
    v76 = _swift_stdlib_bridgeErrorToNSError();
    *(v61 + 24) = v76;
    *v62 = v76;
    _os_log_impl(&_mh_execute_header, v57, v58, "Failed to unload asset %s from %s: %@", v61, 0x20u);
    sub_10000ECD8(v62, &qword_1001B8F68, &qword_10016FB80);
    sub_100002BD0();

    sub_10000BEE8(v77, v78, (&type metadata for Any + 1));
    sub_100002BD0();

    sub_100002BD0();
  }

  v79 = v0[42];
  v124 = v0[29];
  v125 = v0[37];
  v81 = v0[13];
  v80 = v0[14];
  v116 = v0[12];
  v121 = v0[7];
  v82 = (v0[4] + v0[30]);
  v84 = v82[3];
  v83 = v82[4];
  sub_100003370(v82, v84);
  v119 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  v86 = v85;
  v93 = InferenceProviderAssetDescriptor.version.getter(v119, v85, v87, v88, v89, v90, v91, v92, v102, v105, v108, v111);
  v95 = v94;
  static AssetCost.zero.getter();
  v96 = AssetCost.onDeviceMemory.getter();
  (*(v81 + 8))(v80, v116);
  v97 = *(v83 + 48);
  swift_errorRetain();
  v97(v124, v119, v86, v93, v95, v96, 0, v125, v79, v121, v84, v83);

  v98 = swift_task_alloc();
  v0[44] = v98;
  *v98 = v0;
  v98[1] = sub_1000DEF8C;
  v56 = v0[8];
LABEL_15:
  v99 = sub_1000031B8(v56);

  return sub_100041158(v99, v100);
}

uint64_t sub_1000DF89C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000DF994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v17 = v16[42];
  v27 = v16[31];
  v28 = v16[28];
  v29 = v16[27];
  v30 = v16[26];
  swift_willThrow();

  sub_10000ECD8(v17, &qword_1001BB410, &unk_100172340);

  sub_100001F00();
  sub_100003D04();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, a13, a14, a15, a16);
}

uint64_t sub_1000DFA94()
{
  v1 = v0[44];
  v2 = v0[20] + v0[43];
  (*(v0[37] + 8))(v0[39], v0[36]);
  sub_1000480AC(v2 + *(v1 + 60), (v0 + 7));
  sub_100003370(v0 + 7, v0[10]);
  v3 = sub_1000060A4();
  v4(v3);
  sub_100003324(v0 + 7);
  v5 = v0[54];
  v6 = v0[50];
  v0[56] = v5;
  v0[57] = v6;
  if (qword_1001B8938 != -1)
  {
    sub_100005C90();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000641C(v7, qword_1001BB478);
  sub_100001F0C();

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[30];
    v11 = v0[31];
    v72 = v0[29];
    v12 = v0[20];
    sub_1000033D0();
    v76 = v6;
    v13 = swift_slowAlloc();
    v73 = sub_100003788();
    sub_1000080A4();
    *v13 = 136315650;
    v14 = type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100005168();
    sub_100011B5C(v15, v16, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_100036E38(v17, v18);
    sub_10001E4A8();

    *(v13 + 4) = v14;
    sub_1000265C8();
    v19 = (v12 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
    v20 = *(v12 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v21 = *(v12 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370(v19, v20);
    v22 = sub_100001F0C();
    v23(v22, v21);
    sub_10000866C();
    sub_100011B5C(v24, v25, &protocol conformance descriptor for InferenceProviderDescriptor);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v10 + 8))(v11, v72);
    v27 = sub_100007660();
    sub_100004A3C(v27, v28, v29);
    sub_100001F0C();

    *(v13 + 14) = v26;
    *(v13 + 22) = 2112;
    swift_errorRetain();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v30;
    *v73 = v30;
    sub_10000CD44(&_mh_execute_header, v31, v32, "Failed to move asset %s to dynamic mode in %s: %@");
    sub_10000ECD8(v73, &qword_1001B8F68, &qword_10016FB80);
    sub_100002BD0();

    sub_10000BEE8(v33, v34, (&type metadata for Any + 1));
    sub_100002BD0();

    v6 = v76;
    sub_100002BD0();
  }

  if (v6)
  {
    v35 = v0[40];
    v36 = v0[36];
    sub_10001E72C(v0[42], v35, &qword_1001BB410, &unk_100172340);
    if (sub_10000C6C0(v35, 1, v36) == 1)
    {
      sub_10000ECD8(v0[40], &qword_1001BB410, &unk_100172340);
    }

    else
    {
      v74 = v0[38];
      v77 = v0[37];
      v75 = v0[36];
      v37 = v0[26];
      v38 = v6;
      v39 = v0[25];
      v70 = v0[24];
      v71 = v0[27];
      v40 = v0[20];
      (*(v77 + 32))();
      v42 = *(v40 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager + 24);
      v41 = *(v40 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager + 32);
      sub_100003370((v40 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager), v42);

      v43 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
      v68 = v44;
      v69 = v43;
      v67 = InferenceProviderAssetDescriptor.version.getter(v43, v44, v45, v46, v47, v48, v49, v50, v63, v64, v65, v66);
      v52 = v51;
      static AssetCost.zero.getter();
      v53 = AssetCost.onDeviceMemory.getter();
      (*(v39 + 8))(v37, v70);
      type metadata accessor for AuditToken();
      sub_100003978();
      sub_100009BFC(v54, v55, v56, v57);
      v58 = *(v41 + 48);
      swift_errorRetain();
      v58(v74, v69, v68, v67, v52, v53, 0, v38, v5, v71, v42, v41);

      sub_10000ECD8(v71, &qword_1001BB3F8, &qword_100171D50);
      (*(v77 + 8))(v74, v75);
    }
  }

  v59 = swift_task_alloc();
  v0[58] = v59;
  *v59 = v0;
  v60 = sub_10000A8D4(v59);

  return sub_100041158(v60, v61);
}

Swift::Int sub_1000DFFB4()
{
  Hasher.init(_seed:)();
  sub_10001214C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000E003C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10001214C(v2);
  return Hasher._finalize()();
}

void sub_1000E0154(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x16u);
}

uint64_t sub_1000E0174()
{
  sub_100002BAC();
  *(v1 + 16) = v0;
  sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  *(v1 + 24) = swift_task_alloc();
  v2 = sub_100002C10();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000E0204()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_forceVersionSwitchTask;
  v3 = *(v1 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_forceVersionSwitchTask);
  v0[4] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1000E03DC;
    v5 = (v0 + 65);
  }

  else
  {
    v6 = v0[3];
    v7 = type metadata accessor for TaskPriority();
    sub_100009BFC(v6, 1, 1, v7);
    v8 = sub_1000E0D80();
    v9 = swift_allocObject();
    v9[2] = v1;
    v9[3] = v8;
    v9[4] = v1;
    swift_retain_n();
    sub_100065530();
    v0[6] = v10;
    *(v1 + v2) = v10;

    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_1000E0540;
    v5 = v0 + 8;
  }

  return Task<>.value.getter(v5);
}

uint64_t sub_1000E03DC()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000E04D4()
{
  sub_100002BAC();

  v1 = *(v0 + 65);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000E0540()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000E0638()
{
  sub_100002BAC();

  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000E06A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1000E06C4, a4, 0);
}

uint64_t sub_1000E06C4()
{
  sub_100002BAC();
  v1 = OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_assetManager;
  v0[4] = OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_requestManager;
  v0[5] = v1;
  v0[6] = 0;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  sub_100005CA4(v2);

  return sub_10012B4A4();
}

uint64_t sub_1000E0750()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000E0848()
{
  sub_100002BAC();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1000E08DC;

  return sub_1000E56F8();
}

uint64_t sub_1000E08DC()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;
  *(v4 + 72) = v3;

  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000E09DC(uint64_t a1)
{
  if (*(v1 + 72))
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = 1;
    if (os_log_type_enabled(v2, v3))
    {
      v5 = "Successfully forced an asset version switch";
LABEL_7:
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, v5, v7, 2u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v6 = *(v1 + 48) + 1;
  *(v1 + 48) = v6;
  if (v6 == 10)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = 0;
    if (os_log_type_enabled(v2, v3))
    {
      v5 = "Failed to force an asset version switch, multiple attempts to quiesce requests & asssets failed";
      goto LABEL_7;
    }

LABEL_8:
    v9 = *(v1 + 16);
    v8 = *(v1 + 24);

    *v9 = v4;
    *(v8 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_forceVersionSwitchTask) = 0;

    v10 = *(v1 + 8);

    return v10();
  }

  v12 = swift_task_alloc();
  *(v1 + 56) = v12;
  *v12 = v1;
  sub_100005CA4(v12);

  return sub_10012B4A4();
}

uint64_t sub_1000E0B98()
{
  v1 = OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_logHandle;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100003324((v0 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_modelCatalog));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000E0C40()
{
  sub_1000E0B98();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t _s20AssetVersionSwitcherCMa(uint64_t a1)
{
  result = qword_1001BB700;
  if (!qword_1001BB700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E0CC0(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

unint64_t sub_1000E0D80()
{
  result = qword_1001BB7D0;
  if (!qword_1001BB7D0)
  {
    _s20AssetVersionSwitcherCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB7D0);
  }

  return result;
}

uint64_t sub_1000E0DD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006A7E4;

  return sub_1000E06A4(a1, v4, v5, v6);
}

uint64_t _s6PolicyVMa(uint64_t a1)
{
  result = qword_1001BB848;
  if (!qword_1001BB848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E0F00(uint64_t a1)
{
  type metadata accessor for RequestPriority();
  if (v1 <= 0x3F)
  {
    sub_1000BC108();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000E0F9C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BB7D8);
  sub_10000641C(v0, qword_1001BB7D8);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E1010()
{
  _s6PolicyVMa(0);

  sub_100065020(&qword_1001B9F78, &qword_100171DF0);
  sub_1000082D4(&qword_1001BB888, &qword_1001B9F78, &qword_100171DF0, &protocol conformance descriptor for Set<A>);
  sub_1000E17B4();
  v0 = Sequence<>.joined(separator:)();

  v1._countAndFlagsBits = 10272;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);

  v2 = RequestPriority.rawValue.getter();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  return v0;
}

uint64_t sub_1000E1170(void *a1, uint64_t a2)
{
  v4 = v3;
  v58 = a2;
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v55 = v7;
  v56 = v6;
  __chkstk_darwin(v6);
  v54 = &v51 - v8;
  v9 = _s6PolicyVMa(0);
  __chkstk_darwin(v9 - 8);
  sub_100002B8C();
  v12 = v11 - v10;
  type metadata accessor for InferenceProviderDescriptor();
  sub_100002BDC();
  v59 = v14;
  v60 = v13;
  __chkstk_darwin(v13);
  sub_100002B8C();
  v17 = v16 - v15;
  v18 = type metadata accessor for RequestPriority();
  sub_100002BDC();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100002B8C();
  v24 = v23 - v22;
  v25 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  __chkstk_darwin(v25 - 8);
  sub_100002B8C();
  v28 = v27 - v26;
  v29 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_100008684();
  v52 = v29;
  sub_1000E1860(a1 + v29, v28, v30);
  InferenceProviderRequestConfiguration.requestPriority.getter();
  sub_100059E18(v28, v2);
  sub_1000E1808();
  v57 = v4;
  v31 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v32 = *(v20 + 8);
  v53 = v20 + 8;
  v32(v24, v18);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  v51 = v12;
  v33 = a1[7];
  v34 = a1[8];
  sub_100003370(a1 + 4, v33);
  (*(v34 + 8))(v33, v34);
  LOBYTE(v33) = InferenceProviderDescriptor.hostedOnServer.getter();
  (v59[1].isa)(v17, v60);
  if (v33)
  {
    return 0;
  }

  v36 = a1;
  if (qword_1001B8940 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000641C(v37, qword_1001BB7D8);
  v38 = v51;
  sub_1000E1860(v57, v51, _s6PolicyVMa);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = v60;
    *v41 = 136315650;
    v59 = v39;
    LODWORD(v58) = v40;
    v42 = v54;
    RequestMetadata.id.getter();
    sub_1000082D4(&qword_1001B8F58, &qword_1001B8F48, &qword_10016FB30, &protocol conformance descriptor for UUIDIdentifier<A>);
    v57 = v32;
    v43 = v56;
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(v55 + 8))(v42, v43);
    v44 = sub_100002D30();

    *(v41 + 4) = v44;
    *(v41 + 12) = 2080;
    sub_100008684();
    sub_1000E1860(v36 + v52, v28, v45);
    InferenceProviderRequestConfiguration.requestPriority.getter();
    sub_100059E18(v28, v44);
    RequestPriority.rawValue.getter();
    v57(v24, v18);
    v46 = sub_100002D30();

    *(v41 + 14) = v46;
    *(v41 + 22) = 2080;
    RequestPriority.rawValue.getter();
    sub_100005180();
    sub_100059E18(v38, v47);
    v48 = sub_100002D30();

    *(v41 + 24) = v48;
    v49 = v59;
    _os_log_impl(&_mh_execute_header, v59, v58, "Request %s should be cancelled: priority %s <= %s and it is not using a server IP", v41, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100005180();
    sub_100059E18(v38, v50);
  }

  return 1;
}

void sub_1000E1724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (sub_100116BA4(a1, a2))
  {
    v32 = _s6PolicyVMa(0);
    if (*(a1 + v32[5]) == *(a2 + v32[5]) && *(a1 + v32[6]) == *(a2 + v32[6]))
    {
      v39 = v32[7];
      v40 = *(a1 + v39);
      v41 = *(a2 + v39);

      sub_10007B664(v40, v41, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
    }
  }
}

unint64_t sub_1000E17B4()
{
  result = qword_1001BB890;
  if (!qword_1001BB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB890);
  }

  return result;
}

unint64_t sub_1000E1808()
{
  result = qword_1001B9428;
  if (!qword_1001B9428)
  {
    type metadata accessor for RequestPriority();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9428);
  }

  return result;
}

uint64_t sub_1000E1860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E18C8()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BB898);
  sub_10000641C(v0, qword_1001BB898);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E193C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  sub_100065020(&qword_1001BA600, &unk_100172720);
  v6[18] = sub_100002C58();
  sub_100065020(&qword_1001BA5F0, &qword_100171290);
  v6[19] = sub_100002C58();
  v7 = type metadata accessor for ClientData();
  v6[20] = v7;
  sub_100002F44(v7);
  v6[21] = v8;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for RemoteInterfaceInformation();
  v6[24] = v9;
  sub_100002F44(v9);
  v6[25] = v10;
  v6[26] = sub_100002C58();
  v11 = type metadata accessor for InferenceProviderRequestResult();
  v6[27] = v11;
  sub_100002F44(v11);
  v6[28] = v12;
  v6[29] = sub_100002C58();

  return _swift_task_switch(sub_1000E1B00, v5, 0);
}

uint64_t sub_1000E1B00()
{
  v11 = v0;
  if (qword_1001B8948 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001BB898);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100004A3C(v5, v4, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "Entering RemoteManager.executeStreamingRequestV0 [deprecated] for %s", v6, 0xCu);
    sub_100003324(v7);
  }

  static RemoteInterfaceInformation.unknownInterface.getter();
  v8 = swift_task_alloc();
  v0[30] = v8;
  *v8 = v0;
  v8[1] = sub_1000E1CDC;

  return sub_1000F55C0();
}

uint64_t sub_1000E1CDC(uint64_t a1)
{
  v4 = *v2;
  sub_100004B40();
  *v5 = v4;
  v6 = *v2;
  v4[31] = a1;
  v4[32] = v1;

  if (v1)
  {
    v7 = v4[17];
    (*(v4[25] + 8))(v4[26], v4[24]);

    return _swift_task_switch(sub_1000E2578, v7, 0);
  }

  else
  {
    (*(v4[25] + 8))(v4[26], v4[24]);
    v8 = swift_task_alloc();
    v4[33] = v8;
    *v8 = v6;
    v8[1] = sub_1000E1E94;

    return sub_1000F8D48();
  }
}

uint64_t sub_1000E1E94()
{
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 272) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_1000E2608;
  }

  else
  {
    v6 = sub_1000E1FB8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E1FB8()
{
  sub_100003884();
  v1 = v0[5];
  v2 = sub_100003370(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = sub_100002C58();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000366C(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v0[35] = _swiftEmptyArrayStorage;
  sub_100016494((v0 + 7), v0[10]);
  v5 = swift_task_alloc();
  v0[36] = v5;
  *v5 = v0;
  v6 = sub_100005198(v5);

  return dispatch thunk of AsyncIteratorProtocol.next()(v6);
}

uint64_t sub_1000E2148()
{
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  *(v2 + 296) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);

    v5 = sub_1000E26C0;
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 136);
    v5 = sub_1000E2268;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1000E2268()
{
  v2 = v0[19];
  v1 = v0[20];
  if (sub_10000C6C0(v2, 1, v1) == 1)
  {
    v3 = v0[28];
    v4 = v0[29];
    v5 = v0[27];
    v6 = v0[24];
    v7 = v0[18];
    sub_1000E2788(v2);
    sub_100009BFC(v7, 1, 1, v6);
    sub_100065020(&qword_1001B9060, &unk_10016FCD0);
    v8 = sub_100002C58();
    v9 = type metadata accessor for UUID();
    sub_100009BFC(v8, 1, 1, v9);
    RemoteIPCRequest.ExecuteRemoteStreamingRequest.Response.init(interface:result:requestId:)();

    (*(v3 + 8))(v4, v5);

    sub_100003324(v0 + 7);
    sub_100003324(v0 + 2);

    sub_100001F00();

    return v10();
  }

  else
  {
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[21];
    v15 = *(v14 + 32);
    v15(v12, v2, v1);
    (*(v14 + 16))(v13, v12, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v0[35];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10013FFE4();
      v17 = v24;
    }

    v18 = *(v17 + 16);
    if (v18 >= *(v17 + 24) >> 1)
    {
      sub_10013FFE4();
      v17 = v25;
    }

    v19 = v0[22];
    v20 = v0[20];
    v21 = v0[21];
    (*(v21 + 8))(v0[23], v20);
    *(v17 + 16) = v18 + 1;
    v15(v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v19, v20);
    v0[35] = v17;
    sub_100016494((v0 + 7), v0[10]);
    v22 = swift_task_alloc();
    v0[36] = v22;
    *v22 = v0;
    v23 = sub_100005198(v22);

    return dispatch thunk of AsyncIteratorProtocol.next()(v23);
  }
}

uint64_t sub_1000E2578()
{
  sub_100003884();
  sub_10000869C();

  sub_100001F00();

  return v0();
}

uint64_t sub_1000E2608()
{
  sub_100003884();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  (*(v2 + 8))(v1, v3);
  sub_10000869C();

  sub_100001F00();

  return v4();
}

uint64_t sub_1000E26C0()
{
  sub_100003884();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  (*(v2 + 8))(v1, v3);
  sub_100003324(v0 + 7);
  sub_100003324(v0 + 2);
  sub_10000869C();

  sub_100001F00();

  return v4();
}

uint64_t sub_1000E2788(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E2800()
{
  v2 = v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_execRequestPostString;
  *v2 = "Execute Request";
  *(v2 + 8) = 15;
  *(v2 + 16) = 2;
  sub_10000CDEC(v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_queueRequestPostString);
  sub_10000CDEC(v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_assetTransitionPostString);
  sub_10000CDEC(v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_addSessionPostString);
  sub_10000CDEC(v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_removeSessionPostString);
  v3 = v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_preWarmPostString;
  *v3 = "Prewarm Request";
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  v6 = OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_logHandle;
  subsystemName.getter();
  Logger.init(subsystem:category:)();
  v7 = type metadata accessor for OSSignposter();
  sub_100002BDC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100002B8C();
  sub_100004BF4();
  type metadata accessor for Logger();
  sub_100002BDC();
  __chkstk_darwin(v11);
  sub_100002B8C();
  (*(v14 + 16))(v13 - v12, v0 + v6);
  OSSignposter.init(logger:)();
  (*(v9 + 32))(v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_signPoster, v1, v7);
  return v0;
}

void sub_1000E2A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, int a24, int a25, unsigned __int8 a26, unsigned __int8 a27)
{
  sub_1000055B0();
  v115 = v29;
  v116 = v30;
  v101 = v31;
  v102 = v32;
  v109 = v34;
  v110 = v33;
  v100 = v35;
  v113 = v36;
  v117 = a21;
  v118 = a23;
  v37 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v39 = v38;
  sub_100004B1C();
  __chkstk_darwin(v40);
  sub_100004BF4();
  v41 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v43 = v42;
  sub_100004B1C();
  __chkstk_darwin(v44);
  sub_100018A10();
  sub_100003058();
  v114 = v45;
  LODWORD(v103) = *(v46 + 16);
  type metadata accessor for OSSignpostID();
  sub_100002BDC();
  v107 = v48;
  v108 = v47;
  __chkstk_darwin(v47);
  v105 = v49;
  v50 = &v97 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  OSSignposter.logHandle.getter();
  v106 = v50;
  OSSignpostID.init(log:)();
  v111 = v43;
  v112 = v41;
  v51 = *(v43 + 16);
  v52 = v109;
  v51(v28, v113, v41);
  v104 = v39;
  v53 = *(v39 + 16);
  v113 = v27;
  v54 = v110;
  v110 = v37;
  v53(v27, v54, v37);
  sub_100016624();

  sub_100001F70();
  v55 = sub_100013554();
  v58 = sub_100009C8C(v55, v56, v57);
  sub_100016484(v58, v59);
  sub_100001F70();
  v60 = sub_100013554();
  v63 = sub_100009C8C(v60, v61, v62);
  sub_100016484(v63, v64);
  v65 = OSSignposter.logHandle.getter();
  v66 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v67 = v28;
  v69 = v111;
  v68 = v112;
  v28 = v113;
  v99 = v65;
  v98 = v66;
  if ((v103 & 1) == 0)
  {

    if (!v114)
    {
      __break(1u);
LABEL_5:

      (*(v104 + 8))(v113, v110);
      v70 = (*(v111 + 8))(v28, v112);
      v71 = v106;
LABEL_23:
      __chkstk_darwin(v70);
      sub_100002D4C();
      v89 = v108;
      v90 = sub_100009DB8();
      v91(v90, v71, v89);
      v92 = type metadata accessor for OSSignpostIntervalState();
      sub_1000038EC(v92);
      sub_100003170();
      OSSignpostIntervalState.init(id:isOpen:)();
      v93 = sub_100005FEC();
      v94(v93);
      v95 = type metadata accessor for TelemetryIntervalState();
      v96 = sub_1000126B4(v95);
      sub_10003533C(v96);
      sub_100002EEC();
      return;
    }

LABEL_10:
    LODWORD(v112) = a27;
    LODWORD(v109) = a26;
    LODWORD(v111) = a25;
    v103 = a22;
    v73 = swift_slowAlloc();
    v119[0] = swift_slowAlloc();
    *v73 = 136448770;
    v74 = UUIDIdentifier.uuidString.getter();
    sub_100004A3C(v74, v75, v119);
    sub_100003170();

    *(v73 + 4) = v67;
    (*(v69 + 8))(v67, v68);
    *(v73 + 12) = 2082;
    v76 = UUIDIdentifier.uuidString.getter();
    sub_100004A3C(v76, v77, v119);
    sub_100003170();

    *(v73 + 14) = v28;
    v78 = sub_100005FEC();
    v79(v78);
    *(v73 + 22) = 2082;
    *(v73 + 24) = sub_100004A3C(v100, v115, v119);
    *(v73 + 32) = 2082;
    *(v73 + 34) = sub_100004A3C(v101, v52, v119);
    *(v73 + 42) = 2082;
    *(v73 + 44) = sub_100004A3C(v102, v116, v119);
    *(v73 + 52) = 2082;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_10002EA34(&qword_1001B94B8, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v80 = Set.description.getter();
    sub_100004A3C(v80, v81, v119);
    sub_100003170();

    *(v73 + 54) = v28;
    *(v73 + 62) = 2082;
    *(v73 + 64) = sub_100004A3C(v103, v118, v119);
    *(v73 + 72) = 1026;
    *(v73 + 74) = a24;
    *(v73 + 78) = 1026;
    v82 = (v109 & 1) == 0;
    if (v109)
    {
      v83 = 1702195828;
    }

    else
    {
      v83 = 0x65736C6166;
    }

    *(v73 + 80) = v111;
    if (v82)
    {
      v84 = 0xE500000000000000;
    }

    else
    {
      v84 = 0xE400000000000000;
    }

    *(v73 + 84) = 2082;
    sub_100004A3C(v83, v84, v119);
    sub_100003170();

    *(v73 + 86) = v28;
    *(v73 + 94) = 2082;
    if (v112)
    {
      v85 = 1702195828;
    }

    else
    {
      v85 = 0x65736C6166;
    }

    if (v112)
    {
      v86 = 0xE400000000000000;
    }

    else
    {
      v86 = 0xE500000000000000;
    }

    sub_100004A3C(v85, v86, v119);
    sub_100003170();

    *(v73 + 96) = v28;
    v71 = v106;
    v87 = OSSignpostID.rawValue.getter();
    v88 = v99;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v99, v98, v87, v114, "requestIdentifier: %{public, signpost.description=attribute,public}s,\nsessionIdentifier: %{public, signpost.description=attribute,public}s,\nrequestLoggingIdentifier: %{public, signpost.description=attribute,public}s,\nuseCaseIdentifier: %{public, signpost.description=attribute,public}s,\nmodelBundleID: %{public, signpost.description=attribute,public}s,\nassetDescriptors: %{public, signpost.description=attribute,public}s,\ninferenceProviderIdentifier: %{public, signpost.description=attribute,public}s,\ncreatedByPID: %{public, signpost.description=attribute,public}d,\nonBehalfOfPID: %{public, signpost.description=attribute,public}d,\noneShot: %{public, signpost.description=attribute,public}s,\nisFallbackRequest: %{public, signpost.description=attribute,public}s", v73, 0x68u);
    swift_arrayDestroy();
    sub_100012A9C();
    sub_100002BB8(v73);

    goto LABEL_23;
  }

  if (v114 >> 32)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_100011408();
  if (!v82)
  {
    sub_100005704();
    if (!(!v82 & v72))
    {

      v114 = v119;
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
}

void sub_1000E30E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21)
{
  sub_1000055B0();
  v91 = v23;
  v80 = v24;
  v81 = v25;
  v93 = v26;
  v28 = v27;
  v79 = v29;
  v87 = v30;
  v89 = v31;
  v32 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC();
  v92 = v33;
  sub_100004B1C();
  __chkstk_darwin(v34);
  sub_10000BFFC();
  v35 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v37 = v36;
  sub_100004B1C();
  __chkstk_darwin(v38);
  sub_100004BF4();
  sub_100003058();
  v90 = v39;
  v82 = *(v40 + 16);
  type metadata accessor for OSSignpostID();
  sub_100002BDC();
  v85 = v42;
  v86 = v41;
  __chkstk_darwin(v41);
  v83 = v43;
  v44 = &v77 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  OSSignposter.logHandle.getter();
  v84 = v44;
  OSSignpostID.init(log:)();
  v45 = *(v37 + 16);
  v88 = v35;
  v45(v21, v89, v35);
  v46 = *(v92 + 16);
  v89 = v22;
  v47 = v32;
  v46(v22, v87, v32);

  v48 = OSSignposter.logHandle.getter();
  v49 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    (*(v92 + 8))(v89, v32);
    v56 = (*(v37 + 8))(v21, v88);
    v57 = v84;
LABEL_17:
    __chkstk_darwin(v56);
    sub_100002D4C();
    v71 = v85;
    v70 = v86;
    v72 = sub_100009DB8();
    v73(v72, v57, v70);
    v74 = type metadata accessor for OSSignpostIntervalState();
    sub_1000038EC(v74);
    sub_100003170();
    OSSignpostIntervalState.init(id:isOpen:)();
    (*(v71 + 8))(v57, v70);
    v75 = type metadata accessor for TelemetryIntervalState();
    v76 = sub_1000126B4(v75);
    sub_10003533C(v76);
    sub_100002EEC();
    return;
  }

  v78 = v48;
  v50 = v37;
  v51 = v88;
  v52 = v89;
  v53 = v47;
  LODWORD(v87) = v49;
  if ((v82 & 1) == 0)
  {

    if (v90)
    {
      v54 = v28;
      v55 = v50;
LABEL_10:
      LODWORD(v88) = a21;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v94 = v61;
      *v60 = 136447490;
      v62 = UUIDIdentifier.uuidString.getter();
      sub_10001127C(v62, v63);
      sub_1000188B4();
      *(v60 + 4) = v28;
      (*(v55 + 8))(v21, v51);
      *(v60 + 12) = 2082;
      v64 = UUIDIdentifier.uuidString.getter();
      sub_100004A3C(v64, v65, &v94);
      sub_100003170();

      *(v60 + 14) = v52;
      (*(v92 + 8))(v52, v53);
      *(v60 + 22) = 2082;
      *(v60 + 24) = sub_100004A3C(v79, v54, &v94);
      *(v60 + 32) = 2082;
      *(v60 + 34) = sub_100004A3C(v80, v93, &v94);
      *(v60 + 42) = 2082;
      *(v60 + 44) = sub_100004A3C(v81, v91, &v94);
      *(v60 + 52) = 2082;
      if (v88)
      {
        v66 = 1702195828;
      }

      else
      {
        v66 = 0x65736C6166;
      }

      if (v88)
      {
        v67 = 0xE400000000000000;
      }

      else
      {
        v67 = 0xE500000000000000;
      }

      sub_100004A3C(v66, v67, &v94);
      sub_100003170();

      *(v60 + 54) = v52;
      v57 = v84;
      v68 = OSSignpostID.rawValue.getter();
      v69 = v78;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v78, v87, v68, v90, "requestIdentifier: %{public, signpost.description=attribute,public}s,\nsessionIdentifier: %{public, signpost.description=attribute,public}s,\nrequestLoggingIdentifier: %{public, signpost.description=attribute,public}s,\nuseCaseIdentifier: %{public, signpost.description=attribute,public}s,\ninferenceProviderIdentifier: %{public, signpost.description=attribute,public}s,\noneShot: %{public, signpost.description=attribute,public}s", v60, 0x3Eu);
      swift_arrayDestroy();
      sub_100002BB8(v61);
      sub_100002BB8(v60);

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v90 >> 32)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_100011408();
  if (!v58)
  {
    sub_100005704();
    if (!(!v58 & v59))
    {
      v55 = v50;

      v90 = &v94;
      v54 = v28;
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
}

void sub_1000E3650()
{
  sub_1000055B0();
  sub_100007C98(v1, v2, v3, v4);
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v7 = v6;
  sub_100004B1C();
  __chkstk_darwin(v8);
  sub_10000BFFC();
  sub_100008458(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_queueRequestPostString);
  v10 = sub_1000127E0(v9);
  v11(v10);

  swift_errorRetain();
  v12 = OSSignposter.logHandle.getter();
  v13 = type metadata accessor for OSSignpostID();
  sub_100002BDC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100002B8C();
  sub_100004BF4();
  OSSignpostIntervalState.signpostID.getter();
  static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    v17 = sub_100019BCC();
    v18(v17, v13);
    (*(v7 + 8))(v0, v5);
LABEL_19:
    sub_100002EEC();
    return;
  }

  if ((v41 & 1) == 0)
  {

    if (v42)
    {
      sub_10000631C();
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_10000A46C();
  if (v19)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_100011408();
  if (!v20)
  {
    sub_100005704();
    if (!(!v20 & v21))
    {
      sub_100013B50();

      sub_10001382C();
LABEL_10:
      type metadata accessor for OSSignpostError();
      sub_100002BDC();
      __chkstk_darwin(v22);
      sub_1000086BC();

      checkForErrorAndConsumeState(state:)();

      v23 = sub_100001F70();
      v24(v23);
      if (!&enum case for OSSignpostError.doubleEnd(_:) || (sub_100003468(), !v20))
      {
        v25 = sub_100001F70();
        v26(v25);
      }

      sub_1000031E0();
      v27 = sub_100013E88();
      v28 = sub_100007A5C(v27);
      sub_10001127C(v28, v29);
      sub_1000188B4();
      v30 = sub_100019948();
      v31(v30);
      v32 = sub_1000035F4();
      sub_1000071F0(v32);
      v34 = v33 | 0x65750000u;
      if (v20)
      {
        v35 = 0x65736C6166;
      }

      else
      {
        v35 = v34;
      }

      sub_10000CF80(v35);

      v36 = OSSignpostID.rawValue.getter();
      sub_100002030(&_mh_execute_header, v37, v38, v36);
      sub_100012500();
      swift_arrayDestroy();
      sub_100003A4C();
      sub_100012A9C();

      v39 = sub_100005A74();
      v40(v39);
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1000E3A00()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_signPoster;
  type metadata accessor for OSSignposter();
  sub_1000055EC();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_logHandle;
  type metadata accessor for Logger();
  sub_1000055EC();
  (*(v4 + 8))(v0 + v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for TelemetrySignposter(uint64_t a1)
{
  result = qword_1001BB8D8;
  if (!qword_1001BB8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E3B18(uint64_t a1)
{
  result = type metadata accessor for OSSignposter();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000E3E08(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return sub_1000051C8();
}

uint64_t sub_1000E3E20()
{
  sub_100002BAC();
  v1 = v0[7];
  sub_100011418(v1 + 16);
  v2 = *(v1 + 16);
  if (*(v2 + 16) && (v3 = sub_1000236F4(v0[5], v0[6]), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
  }

  else
  {
    v5 = 0;
  }

  swift_endAccess();
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1000E3EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return sub_1000051C8();
}

uint64_t sub_1000E3ED0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v11 = v0[5];
  v12 = v0[6];

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v3;
  v5._object = v1;
  String.append(_:)(v5);
  sub_100011418(v2 + 32);
  v6 = sub_100072D40(v11, v12, *(v2 + 32));
  v8 = v7;
  swift_endAccess();

  v9 = v0[1];

  return v9(v6, v8 & 1);
}

uint64_t sub_1000E3FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return sub_1000051C8();
}

uint64_t sub_1000E3FC4()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  sub_100011418(v1 + 40);
  v4 = sub_100072C40(v2, v3, *(v1 + 40));
  v6 = v5;
  swift_endAccess();
  if (v4)
  {
    sub_100016484(v4, v6);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v11 = v0[5];
    v10 = v0[6];
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v8;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v1 + 40);
    sub_10011778C(&unk_1001723C0, v12, v11, v10, isUniquelyReferenced_nonNull_native);
    *(v1 + 40) = v15;
    swift_endAccess();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1000E4164(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10000F254;

  return v5();
}

uint64_t sub_1000E424C()
{

  return v0;
}

uint64_t sub_1000E4284()
{
  sub_1000E424C();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_1000E42DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100013EFC;

  return sub_1000E3E08(a1, a2);
}

uint64_t sub_1000E4384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000E4444;

  return sub_1000E3EB4(a1, a2, a3, a4);
}

uint64_t sub_1000E4444()
{
  sub_100002BAC();
  v2 = v1;
  v4 = v3;
  sub_100001EF4();
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2 & 1);
}

uint64_t sub_1000E4538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10006A7E4;

  return sub_1000E3FA8(a1, a2, a3, a4);
}

uint64_t sub_1000E45F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10006A7E4;

  return sub_1000E4164(a1, v4);
}

double sub_1000E46B0(uint64_t a1)
{
  v3 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  sub_100007CB0();
  v5 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + a1, v7);
  sub_10001938C(v5 + a1, v1);
  *(v1 + *(v4 + 60)) = 1;
  sub_100002D24();
  swift_beginAccess();
  sub_10003DA78(v1, v5 + a1);
  swift_endAccess();
  sub_100002D24();
  swift_beginAccess();
  sub_1000588F0(a1);
  swift_endAccess();

  return result;
}

uint64_t sub_1000E47B0()
{
  sub_100002BAC();
  *(v1 + 304) = v2;
  *(v1 + 184) = v3;
  *(v1 + 192) = v0;
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  *(v1 + 200) = v4;
  sub_100002F04(v4);
  *(v1 + 208) = sub_100002C58();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000E4830()
{
  v59 = v0;
  v1 = v0[23];
  sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets + v0[24], (v0 + 12));

  v3 = sub_1000EC068(v2, v1);
  if (sub_1000453EC(v3))
  {
    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002FD0(v4, qword_1001BBA68);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (sub_100003A34(v6))
    {
      v7 = sub_100007648();
      sub_10000BF10(v7);
      sub_100008348();
      sub_100013624(v8, v9, v10, v11);
      sub_100002BD0();
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_10001C150();
    sub_100011434();
    v14 = sub_1000EE39C(v12, v13, &unk_1001720DC);
    sub_10000CE64(v14);
    v3 = v0[2];
    v15 = v0[3];
    v16 = v0[4];
    v17 = v0[5];
    v18 = v0[6];
  }

  else
  {
    v17 = 0;
    v19 = -1;
    v20 = -1 << *(v3 + 32);
    v15 = v3 + 56;
    v16 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v19 = ~(-1 << v21);
    }

    v18 = v19 & *(v3 + 56);
  }

  v0[28] = v15;
  v0[29] = v16;
  v0[27] = v3;
  if (v3 < 0)
  {
    v28 = __CocoaSet.Iterator.next()();
    if (!v28)
    {
      goto LABEL_29;
    }

    v0[22] = v28;
    type metadata accessor for InferenceProviderAsset(0);
    sub_100009E64();
    v27 = v0[21];
    v23 = v17;
    v26 = v18;
  }

  else
  {
    v22 = v18;
    v23 = v17;
    if (!v18)
    {
      v24 = (v16 + 64) >> 6;
      v25 = v17;
      while (1)
      {
        v23 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v23 >= v24)
        {
          goto LABEL_29;
        }

        v22 = *(v15 + 8 * v23);
        ++v25;
        if (v22)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_18:
    v26 = (v22 - 1) & v22;
    v27 = *(*(v3 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
  }

  v0[31] = v23;
  v0[32] = v26;
  v0[30] = v27;
  if (v27)
  {
    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    v0[33] = sub_100002FD0(v29, qword_1001BBA68);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      sub_100007698();
      v32 = sub_10000359C();
      v58 = v32;
      LODWORD(selRef_addUpdateHandlerForNamespaceName_usingBlock_) = 136315138;

      v33 = sub_100027434();
      v35 = v34;

      v36 = sub_100004A3C(v33, v35, &v58);

      *(&selRef_addUpdateHandlerForNamespaceName_usingBlock_ + 4) = v36;
      sub_10001344C(&_mh_execute_header, v30, v31, "Checking asset update availability for %s");
      sub_100003324(v32);
      sub_100002BD0();

      sub_100002BD0();
    }

    v37 = v0[25];
    v38 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v0[34] = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v39 = &v38[v27];
    sub_100004BA0(&v38[v27], (v0 + 15));
    sub_1000480AC(&v39[*(v37 + 60)], (v0 + 7));
    sub_1000191D4();
    v57 = (v40 + *v40);
    v41 = swift_task_alloc();
    v42 = sub_100009B6C(v41);
    *v42 = v43;
    v44 = sub_10000A478(v42);

    return v57(v44);
  }

LABEL_29:
  sub_100018D00();
  if (qword_1001B8950 != -1)
  {
LABEL_36:
    sub_1000051D8();
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100002FD0(v46, qword_1001BBA68);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (sub_10000320C(v48))
  {
    v49 = sub_100007648();
    sub_10000A240(v49);
    sub_10000EDF4(&_mh_execute_header, v50, v51, "Updating assets that are not currently loaded...");
    sub_100002BD0();
  }

  v52 = swift_task_alloc();
  v0[36] = v52;
  sub_100065020(&qword_1001BB430, &qword_100171E18);
  sub_1000060CC();
  *v52 = v53;
  sub_100013748();
  v62 = &protocol witness table for Never;
  v61 = &type metadata for Never;
  sub_10000A638();
  sub_100019AD8();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v54, v55, v56);
}

uint64_t sub_1000E4DAC()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;
  *(v4 + 305) = v3;

  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000E4EAC()
{
  v54 = v1;
  v2 = *(v1 + 305);
  v3 = *(v1 + 304);
  sub_100003324((v1 + 56));
  if (v2 & 1) != 0 || (v3)
  {

    v4 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_1000089B8();
    if (os_log_type_enabled(v4, v0))
    {
      v5 = sub_100007698();
      v6 = sub_1000031E0();
      v53 = v6;
      *v5 = 136315138;

      v7 = sub_100027434();
      v9 = v8;

      v10 = sub_100004A3C(v7, v9, &v53);

      *(v5 + 4) = v10;
      sub_100005EB0(&_mh_execute_header, v4, v0, "Marking asset update available for %s");
      sub_100003324(v6);
      sub_100002BD0();

      sub_100002BD0();
    }

    v11 = *(v1 + 272);
    v12 = *(v1 + 240);
    v14 = *(v1 + 200);
    v13 = *(v1 + 208);
    sub_10001938C(v12 + v11, v13);
    *(v13 + *(v14 + 56)) = 1;
    sub_100002D24();
    swift_beginAccess();
    sub_10003DA78(v13, v12 + v11);
    swift_endAccess();
  }

  v15 = *(v1 + 248);
  v16 = *(v1 + 256);
  v17 = *(v1 + 216);
  if (v17 < 0)
  {
    v23 = __CocoaSet.Iterator.next()();
    if (!v23)
    {
      goto LABEL_23;
    }

    *(v1 + 176) = v23;
    type metadata accessor for InferenceProviderAsset(0);
    sub_100009E64();
    v22 = *(v1 + 168);
    v19 = v15;
    v21 = v16;
  }

  else
  {
    v18 = *(v1 + 256);
    v19 = *(v1 + 248);
    if (!v16)
    {
      v20 = *(v1 + 248);
      while (1)
      {
        v19 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v19 >= ((*(v1 + 232) + 64) >> 6))
        {
          goto LABEL_23;
        }

        v18 = *(*(v1 + 224) + 8 * v19);
        ++v20;
        if (v18)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_12:
    v21 = (v18 - 1) & v18;
    v22 = *(*(v17 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
  }

  *(v1 + 248) = v19;
  *(v1 + 256) = v21;
  *(v1 + 240) = v22;
  if (v22)
  {
    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    *(v1 + 264) = sub_100002FD0(v24, qword_1001BBA68);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      sub_100007698();
      v27 = sub_10000359C();
      v53 = v27;
      *v21 = 136315138;

      v28 = sub_100027434();
      v30 = v29;

      v31 = sub_100004A3C(v28, v30, &v53);

      *(v21 + 4) = v31;
      sub_10001344C(&_mh_execute_header, v25, v26, "Checking asset update availability for %s");
      sub_100003324(v27);
      sub_100002BD0();

      sub_100002BD0();
    }

    v32 = *(v1 + 200);
    v33 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    *(v1 + 272) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v34 = &v33[v22];
    sub_100004BA0(&v33[v22], v1 + 120);
    sub_1000480AC(&v34[*(v32 + 60)], v1 + 56);
    sub_1000191D4();
    v52 = (v35 + *v35);
    v36 = swift_task_alloc();
    v37 = sub_100009B6C(v36);
    *v37 = v38;
    v39 = sub_10000A478(v37);

    return v52(v39);
  }

LABEL_23:
  sub_100018D00();
  if (qword_1001B8950 != -1)
  {
LABEL_30:
    sub_1000051D8();
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100002FD0(v41, qword_1001BBA68);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (sub_10000320C(v43))
  {
    v44 = sub_100007648();
    sub_10000A240(v44);
    sub_10000EDF4(&_mh_execute_header, v45, v46, "Updating assets that are not currently loaded...");
    sub_100002BD0();
  }

  v47 = swift_task_alloc();
  *(v1 + 288) = v47;
  sub_100065020(&qword_1001BB430, &qword_100171E18);
  sub_1000060CC();
  *v47 = v48;
  sub_100013748();
  v57 = &protocol witness table for Never;
  v56 = &type metadata for Never;
  sub_10000A638();
  sub_100019AD8();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v49, v50, v51);
}

uint64_t sub_1000E542C()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (!v0)
  {

    v8 = sub_100002C10();

    return _swift_task_switch(v8, v9, v10);
  }

  return result;
}

uint64_t sub_1000E5528()
{
  sub_100002BAC();
  if (sub_100019684())
  {
    v1 = swift_task_alloc();
    *(v0 + 296) = v1;
    *v1 = v0;
    v1[1] = sub_1000E55F4;

    return sub_1000440E8();
  }

  else
  {

    sub_100001F00();

    return v3();
  }
}

uint64_t sub_1000E55F4()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000E56F8()
{
  sub_100002BAC();
  v1[31] = v0;
  v2 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v2);
  v1[32] = sub_100002C58();
  State = type metadata accessor for LoadState();
  v1[33] = State;
  sub_100002F44(State);
  v1[34] = v4;
  v1[35] = sub_100002C58();
  v5 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v1[36] = v5;
  sub_100002F04(v5);
  v1[37] = sub_100002C58();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000E57EC()
{
  v92 = v0;
  v1 = v0[31];
  v2 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  v0[38] = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0(&v2[v1], (v0 + 7));
  v86 = v2;
  v88 = v1;
  v3 = *&v2[v1];
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_10001C150();
    sub_100011434();
    v6 = sub_1000EE39C(v4, v5, &unk_1001720DC);
    sub_10000CE64(v6);
    v3 = v0[2];
    v7 = v0[3];
    v1 = v0[4];
    v8 = v0[5];
    v9 = v0[6];
  }

  else
  {
    v7 = v3 + 56;
    sub_100018A20();
    v9 = v10 & v11;

    v8 = 0;
  }

  v12 = v0[36];
  HIDWORD(v85) = HIDWORD(v1);
  v13 = (v1 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v14 = v8;
    v15 = v8;
    if (!v9)
    {
      while (1)
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v15 >= v13)
        {
          goto LABEL_15;
        }

        ++v14;
        if (*(v7 + 8 * v15))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_53;
    }

LABEL_9:
    sub_1000062A0();
    v18 = v17 & v16;
    v20 = *(*(v3 + 48) + ((v15 << 9) | (8 * v19)));

    if (!v20)
    {
      break;
    }

    while (1)
    {
      v22 = v0[37];
      v23 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v20, (v0 + 13));
      sub_10001938C(v23 + v20, v22);
      *(v22 + *(v12 + 56)) = 1;
      sub_100002D24();
      swift_beginAccess();
      sub_10003DA78(v22, v23 + v20);
      swift_endAccess();

      v8 = v15;
      v9 = v18;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      v21 = __CocoaSet.Iterator.next()();
      if (v21)
      {
        v0[30] = v21;
        type metadata accessor for InferenceProviderAsset(0);
        sub_100009E64();
        v20 = v0[29];
        v15 = v8;
        v18 = v9;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_15;
    }
  }

LABEL_15:
  sub_100019334(v3);
  if (qword_1001B8950 == -1)
  {
    goto LABEL_16;
  }

LABEL_53:
  sub_1000051D8();
  swift_once();
LABEL_16:
  v24 = type metadata accessor for Logger();
  v0[39] = sub_10000641C(v24, qword_1001BBA68);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (sub_100002F80(v26))
  {
    v27 = sub_100007648();
    sub_10000A240(v27);
    sub_1000059D8(&_mh_execute_header, v28, v29, "Unloading assets for forced version change");
    sub_100002BD0();
  }

  if ((*&v86[v88] & 0xC000000000000001) != 0)
  {
    v89 = v0[36];
    v30 = v0[34];
    v31 = &_swiftEmptySetSingleton;
    v90 = &_swiftEmptySetSingleton;
    sub_100012BCC();
    swift_retain_n();

    v87 = __CocoaSet.makeIterator()();
    LODWORD(v85) = enum case for LoadState.loaded(_:);
    v32 = (v30 + 104);
    v33 = (v30 + 8);
    while (1)
    {
      v34 = __CocoaSet.Iterator.next()();
      if (!v34)
      {

        sub_1000464C0();
        v59 = 0;
        goto LABEL_41;
      }

      v35 = v0[35];
      v36 = v0[33];
      v0[28] = v34;
      type metadata accessor for InferenceProviderAsset(0);
      sub_100009E64();
      v37 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v0[27];
      sub_100002D24();
      swift_beginAccess();
      (*v32)(v35, v85, v36);
      sub_100005CC8();
      sub_1000EE39C(&dword_1001BA628, v38, &protocol conformance descriptor for LoadState);
      sub_1000486A0();
      sub_1000486A0();
      if (v0[19] == v0[21] && v0[20] == v0[22])
      {
        break;
      }

      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v40)
      {
        goto LABEL_33;
      }

      sub_1000486A0();
      sub_1000486A0();
      if (v0[23] == v0[25] && v0[24] == v0[26])
      {
        break;
      }

      v42 = v0[35];
      v43 = v0[33];
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v33)(v42, v43);
      if ((v44 & 1) == 0)
      {
        swift_endAccess();
        goto LABEL_35;
      }

LABEL_34:
      v45 = *(*&v37[*(v89 + 48)] + 16);
      swift_endAccess();
      if (v45)
      {
LABEL_35:
      }

      else
      {
        v53 = v0[27];
        v54 = *(v31 + 2);
        if (*(v31 + 3) <= v54)
        {
          sub_100080444(v54 + 1, v46, v47, v48, v49, v50, v51, v52, v85, v87, v89, v90, v91[0], v91[1], v91[2], v91[3], v91[4], v91[5], v91[6], v91[7], v91[8], v91[9], v91[10], v91[11], v91[12], v91[13], v91[14], v91[15], v91[16], v92, v93, v94);
          v31 = v90;
        }

        Hasher.init(_seed:)();
        sub_10001214C(v91);
        v55 = Hasher._finalize()();
        sub_100012804(v55, *(v31 + 32));
        v56 = _HashTable.nextHole(atOrAfter:)();
        v57 = sub_100004C00(v56);
        *(v58 + 8 * v57) = v53;
        ++*(v31 + 2);
      }
    }

LABEL_33:
    (*v33)(v0[35], v0[33]);
    goto LABEL_34;
  }

  v60 = v0[31];

  v59 = 0;
  v31 = sub_100011E30(v61, v60, sub_1000C11B0, 0);
LABEL_41:
  v91[0] = sub_100011CBC(v31);
  sub_1000ECFAC(v91, sub_1000C12DC, 0);

  sub_10002B918(v91[0]);
  sub_10002B524();
  v63 = v62;
  v0[40] = v62;

  if (!(v63 >> 62))
  {
    v66 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v66)
    {
      goto LABEL_43;
    }

LABEL_55:

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    if (sub_10000320C(v79))
    {
      v80 = sub_100007648();
      sub_10000A240(v80);
      sub_10000EDF4(&_mh_execute_header, v81, v82, "Finished unloading assets for forced version change");
      sub_100002BD0();
    }

    v83 = swift_task_alloc();
    v0[44] = v83;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    sub_1000060CC();
    *v83 = v84;
    sub_10001250C();
    v96 = &protocol witness table for Never;
    v95 = &type metadata for Never;
    sub_10000A638();
    sub_100019AD8();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v68, v64, v65);
  }

  sub_100012BCC();
  v66 = _CocoaArrayWrapper.endIndex.getter();
  if (!v66)
  {
    goto LABEL_55;
  }

LABEL_43:
  v67 = __OFSUB__(v66, 1);
  v68 = v66 - 1;
  v0[41] = v68;
  if (v67)
  {
    __break(1u);
    goto LABEL_61;
  }

  v64 = v0[40];
  if ((v64 & 0xC000000000000001) == 0)
  {
    if ((v68 & 0x8000000000000000) == 0)
    {
      sub_100007900();
      if (!v69)
      {
        sub_100011174(v68, v64);
        goto LABEL_49;
      }

      goto LABEL_62;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v68, v64, v65);
  }

  v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_49:
  v0[42] = v59;
  type metadata accessor for AuditToken();
  v70 = sub_100007A04();
  sub_100009BFC(v70, v71, v72, v73);
  v74 = swift_task_alloc();
  v75 = sub_1000080CC(v74);
  *v75 = v76;
  v75[1] = sub_1000E6034;
  sub_100003A68();

  return sub_10002BA5C();
}

uint64_t sub_1000E6034()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;

  v5 = *(v2 + 256);
  v6 = *(v2 + 248);
  if (v0)
  {

    sub_10002C278(v5, &qword_1001BB3F8, &qword_100171D50);
    v7 = sub_1000EE524;
  }

  else
  {
    sub_10002C278(v5, &qword_1001BB3F8, &qword_100171D50);
    v7 = sub_1000E61A4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000E61A4()
{
  sub_100001ED0();
  v2 = v1[41];

  if (!v2)
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (sub_10000320C(v17))
    {
      v18 = sub_100007648();
      sub_10000A240(v18);
      sub_10000EDF4(&_mh_execute_header, v19, v20, "Finished unloading assets for forced version change");
      sub_100002BD0();
    }

    v21 = swift_task_alloc();
    v1[44] = v21;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    sub_1000060CC();
    *v21 = v22;
    sub_10001250C();
    sub_10000A638();
    sub_100019AD8();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v6, v3, v4);
  }

  v5 = v1[41];
  v6 = v5 - 1;
  v1[41] = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v1[40];
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      sub_100007900();
      if (!v7)
      {
        sub_100011174(v6, v3);
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v6, v3, v4);
  }

  v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  v1[42] = v0;
  type metadata accessor for AuditToken();
  v8 = sub_100007A04();
  sub_100009BFC(v8, v9, v10, v11);
  v12 = swift_task_alloc();
  v13 = sub_1000080CC(v12);
  *v13 = v14;
  v13[1] = sub_1000E6034;
  sub_100003A68();

  return sub_10002BA5C();
}

uint64_t sub_1000E63B4()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (!v0)
  {

    v8 = sub_100002C10();

    return _swift_task_switch(v8, v9, v10);
  }

  return result;
}

void sub_1000E64B0()
{
  sub_100003884();

  v0 = sub_1000071D0();
  sub_1000B5114(v0, v1);

  sub_100003D20();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1000E6558()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BBA68);
  sub_10000641C(v0, qword_1001BBA68);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E65C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001C260;

  return sub_100025A00();
}

uint64_t sub_1000E6658(uint64_t a1, uint64_t a2)
{
  v2[23] = a2;
  v3 = type metadata accessor for InferenceProviderAssetDescriptor();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  State = type metadata accessor for LoadState();
  v2[27] = State;
  v2[28] = *(State - 8);
  v2[29] = swift_task_alloc();
  v2[30] = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v2[31] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[32] = v5;
  *v5 = v2;
  v5[1] = sub_1000E67D4;

  return sub_100025A00();
}

uint64_t sub_1000E67D4()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

void sub_1000E68CC()
{
  v60 = v0;
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets + v1, (v0 + 7));
  v3 = *&v2[v1];
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_10001C150();
    sub_100011434();
    v6 = sub_1000EE39C(v4, v5, &unk_1001720DC);
    sub_10000CE64(v6);
    v3 = v0[2];
    v7 = v0[3];
    v1 = v0[4];
    v8 = v0[5];
    v9 = v0[6];
  }

  else
  {
    v7 = v3 + 56;
    sub_100018A20();
    v9 = v10 & v11;

    v8 = 0;
  }

  v12 = (v1 + 64) >> 6;
  v13 = v0[25];
  v57 = enum case for LoadState.unloaded(_:);
  v56 = (v0[28] + 104);
  v50 = (v13 + 8);
  v51 = (v13 + 16);
  v53 = v12;
  v54 = v7;
  v55 = v3;
  while (v3 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v0[22] = v21, type metadata accessor for InferenceProviderAsset(0), sub_100009E64(), v20 = v0[21], v15 = v8, v18 = v9, !v20))
    {
LABEL_33:
      sub_100019334(v3);

      sub_100002F54();

      v49();
      return;
    }

LABEL_14:
    v22 = v0[31];
    v23 = v0[29];
    v24 = v0[27];
    v25 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100005A88(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v20);
    sub_10001938C(v25 + v20, v22);
    (*v56)(v23, v57, v24);
    sub_100005CC8();
    sub_1000EE39C(&dword_1001BA628, v26, &protocol conformance descriptor for LoadState);
    sub_10000E884();
    sub_10000E884();
    if (v0[13] == v0[15] && v0[14] == v0[16])
    {

      goto LABEL_21;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
LABEL_21:
      v58 = v18;
      sub_10000E884();
      sub_10000E884();
      v32 = v0[31];
      if (v0[17] == v0[19] && v0[18] == v0[20])
      {
        v37 = sub_1000156C4();
        v38(v37);
        sub_1000193F0(v32);

LABEL_28:
        if (qword_1001B8950 != -1)
        {
          sub_1000051D8();
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_100002FD0(v39, qword_1001BBA68);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = v0[26];
          v43 = v0[24];
          v44 = sub_100007698();
          v52 = sub_1000031E0();
          v59 = v52;
          *v44 = 136315138;
          (*v51)(v42, v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor, v43);
          sub_1000EE39C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v47 = v46;
          (*v50)(v42, v43);
          v48 = sub_100004A3C(v45, v47, &v59);

          *(v44 + 4) = v48;
          sub_100005EB0(&_mh_execute_header, v40, v41, "Invalidating and removing asset for force version change: %s");
          sub_100003324(v52);
          sub_100002BD0();

          sub_100002BD0();
        }

        v7 = v54;
        v3 = v55;
        v12 = v53;
        v9 = v58;
        sub_1000E46B0(v20);

        v8 = v15;
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v35 = sub_1000156C4();
        v36(v35);
        sub_1000193F0(v32);

        if (v34)
        {
          goto LABEL_28;
        }

        v8 = v15;
        v9 = v58;
        v7 = v54;
        v3 = v55;
        v12 = v53;
      }
    }

    else
    {
      v29 = v0[31];
      v9 = v18;

      v30 = sub_1000071D0();
      v12 = v53;
      v31(v30);
      sub_1000193F0(v29);
      v8 = v15;
      v7 = v54;
      v3 = v55;
    }
  }

  v14 = v8;
  v15 = v8;
  if (v9)
  {
LABEL_10:
    sub_1000062A0();
    v18 = v17 & v16;
    v20 = *(*(v3 + 48) + ((v15 << 9) | (8 * v19)));

    if (!v20)
    {
      goto LABEL_33;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_33;
    }

    ++v14;
    if (*(v7 + 8 * v15))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1000E6EBC()
{
  sub_100002BAC();
  v1[19] = v0;
  State = type metadata accessor for LoadState();
  v1[20] = State;
  sub_100002F44(State);
  v1[21] = v3;
  v1[22] = sub_100002C58();
  v4 = sub_100002C10();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000E6F60()
{
  v94 = v0;
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets + v1, (v0 + 2));
  v3 = v0[19];
  v70 = &_swiftEmptySetSingleton;
  if ((*(v2 + v1) & 0xC000000000000001) != 0)
  {
    v74 = &_swiftEmptySetSingleton;
    sub_100012BCC();
    swift_retain_n();

    __CocoaSet.makeIterator()();
    v4 = &_swiftEmptySetSingleton;
    while (1)
    {
      v5 = __CocoaSet.Iterator.next()();
      if (!v5)
      {
        break;
      }

      v0[18] = v5;
      type metadata accessor for InferenceProviderAsset(0);
      swift_dynamicCast();
      v6 = v0[17];
      v7 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v6;
      sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v6, (v0 + 8));
      if (v7[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 56)])
      {
        v15 = *(v4 + 16);
        if (*(v4 + 24) <= v15)
        {
          sub_100080444(v15 + 1, v8, v9, v10, v11, v12, v13, v14, v68, v70, v71, v72, v74, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
          v4 = v74;
        }

        Hasher.init(_seed:)();
        sub_10001214C(&v76);
        Hasher._finalize()();
        v16 = _HashTable.nextHole(atOrAfter:)();
        *(v4 + 56 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v4 + 48) + 8 * v16) = v6;
        ++*(v4 + 16);
      }

      else
      {
      }
    }

    sub_1000464C0();
  }

  else
  {

    v4 = sub_1000EC2C8(v17, v3);
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v69 = 0;
    v18 = v0[21];
    v75 = &_swiftEmptySetSingleton;
    swift_retain_n();
    v73 = __CocoaSet.makeIterator()();
    HIDWORD(v71) = enum case for LoadState.dynamicMode(_:);
    v19 = (v18 + 104);
    v20 = (v18 + 8);
    while (1)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {

        sub_1000464C0();
        v45 = v70;
        goto LABEL_28;
      }

      v22 = v0[22];
      v23 = v0[20];
      v0[16] = v21;
      type metadata accessor for InferenceProviderAsset(0);
      swift_dynamicCast();
      v24 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v0[15];
      sub_100002D24();
      swift_beginAccess();
      (*v19)(v22, HIDWORD(v71), v23);
      sub_100005CC8();
      sub_1000EE39C(&dword_1001BA628, v25, &protocol conformance descriptor for LoadState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v26 = v0[22];
      v27 = v0[20];
      if (v0[11] == v0[13] && v0[12] == v0[14])
      {

        (*v20)(v26, v27);
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v20)(v26, v27);
        if ((v29 & 1) == 0)
        {
          swift_endAccess();
          goto LABEL_22;
        }
      }

      v30 = *&v24[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 28)];
      swift_endAccess();
      if (v30)
      {
LABEL_22:
      }

      else
      {
        v38 = v0[15];
        v39 = v70;
        v40 = v70[2];
        if (v70[3] <= v40)
        {
          sub_100080444(v40 + 1, v31, v32, v33, v34, v35, v36, v37, v69, v70, v71, v73, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
          v39 = v75;
        }

        Hasher.init(_seed:)();
        sub_10001214C(&v76);
        v41 = Hasher._finalize()();
        sub_100012804(v41, *(v39 + 32));
        v42 = _HashTable.nextHole(atOrAfter:)();
        v43 = sub_100004C00(v42);
        *(v44 + 8 * v43) = v38;
        v70 = v39;
        ++v39[2];
      }
    }
  }

  sub_10000BF1C();
  v45 = sub_100011E30(v46, v47, v48, v49);
LABEL_28:
  v0[23] = v45;
  if (sub_1000453EC(v45))
  {

    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100002FD0(v50, qword_1001BBA68);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (sub_100002F80(v52))
    {
      v53 = sub_100007648();
      sub_10000A240(v53);
      sub_1000059D8(&_mh_execute_header, v54, v55, "Assets with pending verison change exist, but none are ready to unload");
      sub_100002BD0();
    }

    sub_100001F00();

    return v56();
  }

  else
  {
    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100002FD0(v58, qword_1001BBA68);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (sub_100003A34(v60))
    {
      v61 = sub_100007648();
      sub_10000BF10(v61);
      sub_100008348();
      sub_100013624(v62, v63, v64, v65);
      sub_100002BD0();
    }

    v66 = swift_task_alloc();
    v0[24] = v66;
    *v66 = v0;
    v66[1] = sub_1000E75DC;
    v67 = v0[19];

    return sub_1001291C0(v45, &unk_100172420, v67);
  }
}

uint64_t sub_1000E75DC()
{
  sub_100001ED0();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

BOOL sub_1000E7720(uint64_t a1)
{
  State = type metadata accessor for LoadState();
  v3 = *(State - 8);
  __chkstk_darwin(State);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for LoadState.dynamicMode(_:), State);
  v6 = sub_100116D68(a1, v5);
  (*(v3 + 8))(v5, State);
  return (v6 & 1) != 0 && *(a1 + *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 28)) == 0;
}

uint64_t sub_1000E7840(uint64_t *a1, uint64_t a2)
{
  v2[2] = a2;
  sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  v4 = swift_task_alloc();
  v5 = *a1;
  v2[3] = v4;
  v2[4] = v5;

  return _swift_task_switch(sub_1000E78E4, 0, 0);
}

uint64_t sub_1000E78E4()
{
  sub_100002BAC();
  type metadata accessor for AuditToken();
  sub_100003978();
  sub_100009BFC(v1, v2, v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1000E799C;

  return sub_10002BA5C();
}

uint64_t sub_1000E799C()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;

  v6 = *(v2 + 24);
  if (v0)
  {

    sub_10002C278(v6, &qword_1001BB3F8, &qword_100171D50);
    sub_1000059F8();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    sub_10002C278(v6, &qword_1001BB3F8, &qword_100171D50);

    v10 = *(v5 + 8);

    return v10();
  }
}

uint64_t sub_1000E7B20()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

BOOL sub_1000E7B78()
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  sub_100007CB0();
  static Date.now.getter();
  sub_100010338();
  v9 = v0;
  v10 = v1;
  v5 = sub_10003DADC(sub_1000EE474, v8, v4);
  v6 = sub_10000E8DC(v5);

  (*(v3 + 8))(v1, v2);
  return v6 != 0;
}

uint64_t sub_1000E7C80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v7;
  swift_beginAccess();
  v13 = sub_10001938C(v12, v6);
  __chkstk_darwin(v13);
  v15 = *(v4 + 32);
  v14 = *(v4 + 36);
  v24 = v4;
  v16 = &v6[v14];
  v17 = &v6[v15];
  sub_10002B0EC();
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  (*(v9 + 16))(v11, v18, v8);
  sub_1000193F0(v6);
  static Date.+ infix(_:_:)();
  v19 = *(v9 + 8);
  v19(v11, v8);
  v20 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v19(v11, v8);
  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = v12[*(v24 + 24)] ^ 1;
  }

  return v21 & 1;
}

uint64_t sub_1000E7EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock.Instant();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000E800C, 0, 0);
}

uint64_t sub_1000E800C()
{
  sub_100003884();
  v1 = v0[19];
  type metadata accessor for _OSActivity();
  inited = swift_initStackObject();
  v0[27] = inited;
  v0[28] = sub_10001B160("Unload Assets For Version Change", 32, 2);
  sub_100004BA0(v1 + 16, (v0 + 7));
  v3 = type metadata accessor for Date();
  sub_10000F18C(v3);
  v0[30] = v4;
  v0[31] = *(v5 + 64);
  v0[32] = sub_100002C58();
  v6 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v6);
  v0[33] = sub_100002C58();
  Strong = swift_weakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {
    v8 = swift_task_alloc();
    v9 = sub_100009B6C(v8);
    *v9 = v10;
    sub_10000A29C(v9);
    sub_100004CC8();

    return sub_1000E8FF4();
  }

  else
  {
    v13 = sub_100007A04();
    sub_100009BFC(v13, v14, v15, inited);
    sub_10002C278(v0[33], &qword_1001BBA80, &qword_100172440);

    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100002FD0(v16, qword_1001BBA68);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (sub_100002F80(v18))
    {
      v19 = sub_100007648();
      sub_10000A240(v19);
      sub_1000059D8(&_mh_execute_header, v20, v21, "Ending task to unload assets due to pending version change");
      sub_100002BD0();
    }

    v22 = v0[19];

    sub_100005A88(v22 + 16);
    v23 = swift_weakLoadStrong();
    v0[42] = v23;
    if (!v23)
    {
      sub_100005CE0();
      os_activity_scope_leave((v17 + 24));
      swift_endAccess();

      sub_100001F00();
      sub_100004CC8();

      __asm { BRAA            X1, X16 }
    }

    v24 = swift_task_alloc();
    v25 = sub_1000080CC(v24);
    *v25 = v26;
    sub_100003064(v25);
    sub_100004CC8();

    return sub_1000EBD88(v27);
  }
}

uint64_t sub_1000E833C()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;
  *(v2 + 288) = v0;

  if (!v0)
  {
  }

  sub_1000059F8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000E8474()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  v3 = sub_10000205C();
  if (sub_10000C6C0(v3, v4, v2) == 1)
  {
    sub_10002C278(v1, &qword_1001BBA80, &qword_100172440);

    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100002FD0(v5, qword_1001BBA68);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (sub_100002F80(v7))
    {
      v8 = sub_100007648();
      sub_10000A240(v8);
      sub_1000059D8(&_mh_execute_header, v9, v10, "Ending task to unload assets due to pending version change");
      sub_100002BD0();
    }

    v11 = *(v0 + 152);

    sub_100005A88(v11 + 16);
    Strong = swift_weakLoadStrong();
    *(v0 + 336) = Strong;
    if (!Strong)
    {
      sub_100005CE0();
      os_activity_scope_leave((v6 + 24));
      swift_endAccess();

      sub_100001F00();
      sub_10000A7FC();

      __asm { BRAA            X1, X16 }
    }

    v13 = swift_task_alloc();
    v14 = sub_1000080CC(v13);
    *v14 = v15;
    sub_100003064(v14);
    sub_10000A7FC();

    return sub_1000EBD88(v16);
  }

  else
  {
    v19 = *(v0 + 240);
    v20 = *(v0 + 192);
    (*(v19 + 32))(*(v0 + 256), v1, v2);

    static ContinuousClock.Instant.now.getter();
    v21 = swift_task_alloc();
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v22 = *(v19 + 8);
    *(v0 + 296) = v22;
    *(v0 + 304) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v21, v2);

    static Duration.seconds(_:)();
    ContinuousClock.Instant.advanced(by:)();
    *(v0 + 312) = *(v20 + 8);
    *(v0 + 320) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23 = sub_100003754();
    v24(v23);
    *(v0 + 128) = xmmword_1001723E0;
    *(v0 + 144) = 0;
    static Clock<>.continuous.getter();
    v25 = swift_task_alloc();
    *(v0 + 328) = v25;
    sub_1000EE39C(&qword_1001BBA88, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    sub_1000060CC();
    *v25 = v26;
    v25[1] = sub_1000E8838;
    sub_10000A7FC();

    return static Task<>.sleep<A>(until:tolerance:clock:)();
  }
}

uint64_t sub_1000E8838()
{
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;

  if (v0)
  {
    v6 = v2[39];
    v7 = v2[22];
    v10 = v2 + 20;
    v8 = v2[20];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    v11 = sub_100003754();
    v6(v11);
  }

  else
  {
    v12 = v2[39];
    (*(v2[21] + 8))(v2[22], v2[20]);
    v13 = sub_100007660();
    v12(v13);
  }

  sub_1000059F8();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1000E89E0()
{
  sub_100003884();
  v4 = sub_10003DD74(v3);
  v5 = sub_100007660();
  v2(v5);
  if ((v4 & 1) == 0)
  {

    v6 = type metadata accessor for Date();
    sub_10000F18C(v6);
    v1[30] = v7;
    v1[31] = *(v8 + 64);
    v1[32] = sub_100002C58();
    v9 = sub_100065020(&qword_1001BBA80, &qword_100172440);
    sub_100002F04(v9);
    v1[33] = sub_100002C58();
    Strong = swift_weakLoadStrong();
    v1[34] = Strong;
    if (Strong)
    {
      v11 = swift_task_alloc();
      v12 = sub_100009B6C(v11);
      *v12 = v13;
      sub_10000A29C(v12);
      sub_100003E20();
      sub_100003D20();

      return sub_1000E8FF4();
    }

    sub_100003978();
    sub_100009BFC(v16, v17, v18, v0);
    sub_10002C278(v1[33], &qword_1001BBA80, &qword_100172440);
  }

  if (qword_1001B8950 != -1)
  {
    sub_1000051D8();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100002FD0(v19, qword_1001BBA68);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (sub_100003A34(v21))
  {
    v22 = sub_100007648();
    sub_10000BF10(v22);
    sub_100008348();
    sub_100013624(v23, v24, v25, v26);
    sub_100002BD0();
  }

  v27 = v1[19];

  sub_100005A88(v27 + 16);
  v28 = swift_weakLoadStrong();
  v1[42] = v28;
  if (!v28)
  {
    sub_100005CE0();
    os_activity_scope_leave((v20 + 24));
    swift_endAccess();

    sub_100001F00();
    sub_100003D20();

    __asm { BRAA            X1, X16 }
  }

  v29 = swift_task_alloc();
  v30 = sub_1000080CC(v29);
  *v30 = v31;
  sub_100013EA4(v30);
  sub_100007F4C();
  sub_100003D20();

  return sub_1000EBD88(v32);
}

uint64_t sub_1000E8CE4()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_1000059F8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000E8E18()
{
  sub_100003884();

  if (qword_1001B8950 != -1)
  {
    sub_1000051D8();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002FD0(v1, qword_1001BBA68);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = sub_100007648();
    sub_10000A240(v4);
    sub_1000059D8(&_mh_execute_header, v5, v6, "Ending task to unload assets due to pending version change");
    sub_100002BD0();
  }

  v7 = *(v0 + 152);

  sub_100005A88(v7 + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 336) = Strong;
  if (!Strong)
  {
    sub_100005CE0();
    os_activity_scope_leave((v2 + 24));
    swift_endAccess();

    sub_100001F00();
    sub_100004CC8();

    __asm { BRAA            X1, X16 }
  }

  v9 = swift_task_alloc();
  v10 = sub_1000080CC(v9);
  *v10 = v11;
  sub_100003064(v10);
  sub_100004CC8();

  return sub_1000EBD88(v12);
}

uint64_t sub_1000E8FF4()
{
  sub_100002BAC();
  v1[35] = v2;
  v1[36] = v0;
  v3 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v1[37] = v3;
  sub_100002F04(v3);
  v1[38] = sub_100002C58();
  v4 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v4);
  v1[39] = sub_100002C58();
  State = type metadata accessor for LoadState();
  v1[40] = State;
  sub_100002F44(State);
  v1[41] = v6;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E9108()
{
  v240 = v0;
  if ((sub_100019684() & 1) == 0)
  {
    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100002FD0(v45, qword_1001BBA68);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (sub_100002F80(v47))
    {
      v48 = sub_100007648();
      sub_10000A240(v48);
      sub_1000059D8(&_mh_execute_header, v49, v50, "While unloading assets for pending version change: no assets have a pending version change");
      sub_100002BD0();
    }

    type metadata accessor for Date();
    v51 = sub_100007A04();
    sub_100009BFC(v51, v52, v53, v54);
LABEL_34:
    sub_100010BF0();

    sub_100002F54();
    goto LABEL_35;
  }

  if (qword_1001B8950 != -1)
  {
    sub_1000051D8();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 360) = sub_10000641C(v2, qword_1001BBA68);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100002F80(v4))
  {
    v5 = sub_100007648();
    sub_10000A240(v5);
    sub_1000059D8(&_mh_execute_header, v6, v7, "Unloading assets for pending version change");
    sub_100002BD0();
  }

  v8 = *(v0 + 288);

  *(v0 + 256) = &_swiftEmptySetSingleton;
  v9 = type metadata accessor for Date();
  *(v0 + 368) = v9;
  sub_100002F44(v9);
  *(v0 + 376) = v10;
  *(v0 + 384) = *(v11 + 64);
  *(v0 + 392) = swift_task_alloc();
  static Date.now.getter();
  v12 = swift_task_alloc();
  *(v0 + 400) = v12;
  static Date.- infix(_:_:)();
  v13 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  *(v0 + 408) = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0(v13 + v8, v0 + 16);
  v14 = &enum case for LoadState.loaded(_:);
  if ((*(v13 + v8) & 0xC000000000000001) != 0)
  {
    v232 = v12;
    v234 = &_swiftEmptySetSingleton;
    v15 = *(v0 + 328);
    v16 = *(v0 + 296);
    v238 = &_swiftEmptySetSingleton;
    sub_100012BCC();
    swift_retain_n();

    v237 = __CocoaSet.makeIterator()();
    LODWORD(v236) = enum case for LoadState.loaded(_:);
    v17 = (v15 + 104);
    v18 = (v15 + 8);
    while (1)
    {
      v19 = __CocoaSet.Iterator.next()();
      if (!v19)
      {

        sub_1000464C0();
        v14 = &enum case for LoadState.loaded(_:);
        v12 = v232;
        v58 = v234;
        goto LABEL_40;
      }

      v20 = *(v0 + 352);
      v21 = *(v0 + 320);
      *(v0 + 272) = v19;
      type metadata accessor for InferenceProviderAsset(0);
      sub_100009E64();
      v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + *(v0 + 264);
      sub_100002D24();
      swift_beginAccess();
      (*v17)(v20, v236, v21);
      sub_100005CC8();
      sub_1000EE39C(&dword_1001BA628, v23, &protocol conformance descriptor for LoadState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (*(v0 + 192) == *(v0 + 208) && *(v0 + 200) == *(v0 + 216))
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_21;
      }

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (*(v0 + 224) == *(v0 + 240) && *(v0 + 232) == *(v0 + 248))
      {
        break;
      }

      v27 = *(v0 + 352);
      v28 = *(v0 + 320);
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v18)(v27, v28);
      if ((v29 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_22:
      if (*(*&v22[*(v16 + 48)] + 16))
      {
LABEL_23:
        swift_endAccess();
        goto LABEL_25;
      }

      v30 = *(*&v22[*(v16 + 44)] + 16);
      swift_endAccess();
      if (v30)
      {
LABEL_25:
      }

      else
      {
        v38 = *(v0 + 264);
        v39 = v234;
        v40 = v234[2];
        if (v234[3] <= v40)
        {
          sub_100080444(v40 + 1, v31, v32, v33, v34, v35, v36, v37, v214, v218, v223, v226, v229, v230, v232, v234, v236, v237, v238, v239[0], v239[1], v239[2], v239[3], v239[4], v239[5], v239[6], v239[7], v239[8], v239[9], v239[10], v239[11], v239[12]);
          v39 = v238;
        }

        Hasher.init(_seed:)();
        sub_10001214C(v239);
        v41 = Hasher._finalize()();
        sub_100012804(v41, *(v39 + 32));
        v42 = _HashTable.nextHole(atOrAfter:)();
        v43 = sub_100004C00(v42);
        *(v44 + 8 * v43) = v38;
        v234 = v39;
        ++v39[2];
      }
    }

LABEL_21:
    (*v18)(*(v0 + 352), *(v0 + 320));
    goto LABEL_22;
  }

  v59 = *(v0 + 288);

  sub_100008468();
  v58 = sub_100011E30(v60, v59, v61, 0);
LABEL_40:
  v239[0] = sub_100011CBC(v58);
  sub_100002D60();
  sub_1000ECFAC(v239, v62, 0);
  v63 = *(v0 + 288);

  v64 = v239[0];
  v65 = swift_task_alloc();
  *(v65 + 16) = v12;
  v66 = sub_10002B370(v63, sub_1000EE394, v65, v64);

  sub_10002B918(v66);
  *(v0 + 416) = v67;
  sub_10002B524();
  *(v0 + 424) = v68;
  if (v68 >> 62)
  {
    v69 = _CocoaArrayWrapper.endIndex.getter();
    if (v69)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v69)
    {
LABEL_42:
      *(v0 + 472) = enum case for LoadState.loaded(_:);
      v70 = __OFSUB__(v69, 1);
      v71 = v69 - 1;
      *(v0 + 432) = v71;
      if (!v70)
      {
        if ((*(v0 + 424) & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_48:
          sub_1000032C8();
          v75 = sub_100007A04();
          sub_100009BFC(v75, v76, v77, v78);
          v79 = swift_task_alloc();
          *(v0 + 448) = v79;
          *v79 = v0;
          sub_100003BD0(v79);
          sub_10001E688();

          return sub_10002BA5C();
        }

        if (v71 < 0)
        {
          __break(1u);
        }

        else
        {
          sub_100007900();
          if (!v74)
          {
            sub_100011174(v72, v73);
            goto LABEL_48;
          }
        }

        __break(1u);
LABEL_70:

        v121 = Logger.logObject.getter();
        static os_log_type_t.fault.getter();
        sub_1000089B8();

        if (sub_10000A098())
        {
          sub_100007698();
          v122 = sub_10000359C();
          v239[0] = v122;
          *v14 = 136315138;
          v123 = sub_1001196B4(v229, v236);
          v125 = sub_100004A3C(v123, v124, v239);

          *(v14 + 4) = v125;
          sub_100008348();
          sub_10001344C(v126, v127, v128, v129);
          sub_100003324(v122);
          sub_100002BD0();

          sub_100002BD0();
        }

        v130 = *(v0 + 376);
        type metadata accessor for ModelManagerError();
        sub_1000086D4();
        sub_1000EE39C(v131, v132, &protocol conformance descriptor for ModelManagerError);
        v133 = sub_100008194();
        sub_10002AB60(v133, v134);
        sub_100006098();
        (*(v135 + 104))();
        swift_willThrow();

        v112 = *(v130 + 8);
        v136 = sub_10000A9EC();
        v112(v136);
        goto LABEL_78;
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  v63 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  if (!sub_100002F80(v81))
  {
LABEL_55:

    goto LABEL_56;
  }

  v14 = sub_100007648();
  *v14 = 0;

  sub_1000265D4(&_mh_execute_header, v82, v83, "Finished unloading assets for version change");
  sub_100002BD0();

LABEL_56:

  sub_10002AB6C();

  sub_100008468();
  sub_10000BF1C();
  v88 = sub_100038E28(v84, v85, v86, v87);
  v239[0] = sub_100011CBC(v88);
  sub_100002D60();
  sub_1000ECFAC(v239, v89, 0);

  v90 = v239[0];
  if (v239[0] < 0 || (v239[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_85;
  }

  if (!*(v239[0] + 16))
  {
LABEL_86:

    v207 = Logger.logObject.getter();
    v208 = static os_log_type_t.default.getter();
    if (sub_10000320C(v208))
    {
      v209 = sub_100007648();
      sub_10000A240(v209);
      sub_10000EDF4(&_mh_execute_header, v210, v211, "While unloading assets for pending version change: no more assets can be unloaded, attempting version switch");
      sub_100002BD0();
    }

    v212 = swift_task_alloc();
    *(v0 + 464) = v212;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    sub_1000060CC();
    *v212 = v213;
    sub_1000058A0();
    v242 = &protocol witness table for Never;
    v241 = &type metadata for Never;
    sub_10000A638();
    sub_100019AD8();
    sub_10001E688();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v188, v189, v190);
  }

LABEL_59:
  v91 = sub_10002CC90(v90);
  v229 = sub_100013B74(v91, v92);
  v94 = v93;

  v236 = v94;
  v95 = *(v94 + 16);
  if (!v95)
  {
    goto LABEL_70;
  }

  v96 = *(v0 + 368);
  v90 = *(v0 + 376);
  v231 = *(v0 + 296);
  v97 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v97);
  v219 = *(v98 + 64) + 15;
  v227 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v99, v100, v101, v96);
  v233 = (v90 + 16);
  v14 = (v90 + 8);
  v102 = v236;

  v103 = 0;
  v224 = (v90 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v235 = (v90 + 8);
  while (1)
  {
    if (v103 >= v95)
    {
      __break(1u);
LABEL_85:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_86;
      }

      goto LABEL_59;
    }

    sub_1000063C4();
    v104 = *(v0 + 304);
    v105 = *(v102 + 8 * v103 + 32);
    v95 = swift_task_alloc();
    v106 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v105, v0 + 64);
    sub_10001938C(v106 + v105, v104);
    v107 = swift_task_alloc();
    v108 = v104 + *(v231 + 36);
    v109 = v104 + *(v231 + 32);
    sub_10002B0EC();

    sub_100004CA4();
    v110 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v90 = *v233;
    v111 = (v110 & 1) != 0 ? v109 : v108;
    (v90)(v107, v111, v96);
    sub_1000193F0(v104);
    static Date.+ infix(_:_:)();
    v14 = v235;
    v112 = *v235;
    (*v235)(v107, v96);

    v96 = static Date.> infix(_:_:)();

    if (v96)
    {
      break;
    }

    ++v103;
    (v112)(v95, *(v0 + 368));

    v102 = v236;
    v95 = *(v236 + 16);
    if (v103 == v95)
    {

      goto LABEL_74;
    }
  }

  v137 = *(v0 + 368);
  v138 = *(v0 + 376);

  sub_10002C278(v227, &qword_1001BBA80, &qword_100172440);
  (*(v138 + 32))(v227, v95, v137);
  sub_1000070D0(v227);

LABEL_74:
  v139 = *(v0 + 368);
  v140 = sub_100005FA4(v113, v114, v115, v116, v117, v118, v119, v120, v214, v219);
  sub_1000316A0(v140, v141, v142, v143, v144, v145, v146, v147, v215, v220, v224, v227);
  sub_100007204();
  sub_10002C278(v95, &qword_1001BBA80, &qword_100172440);

  if (v139 != 1)
  {
    v166 = *(v0 + 368);
    sub_100002C58();
    sub_100003904();
    (v90)();
    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v167, v168))
    {
      v201 = *(v0 + 392);
      v202 = *(v0 + 368);

      v203 = sub_100009524();
      v112(v203);
      (v112)(v201, v202);

      goto LABEL_83;
    }

    v169 = *(v0 + 368);
    v170 = sub_100007698();
    *v170 = 134217984;
    v177 = sub_100003474(v170, v0 + 112, v171, v172, v173, v174, v175, v176, v216, v221, v225, v228);
    v185 = sub_100005FA4(v177, v178, v179, v180, v181, v182, v183, v184, v217, v222);
    sub_10002CC20(v166, v185);
    v186 = sub_10000205C();
    v188 = sub_10000C6C0(v186, v187, v169);
    if (v188 != 1)
    {
      v166 = *(v0 + 392);
      v191 = *(v0 + 368);
      Date.timeIntervalSince(_:)();
      v192 = sub_100003228();
      v112(v192);
      (v112)(v185, v191);

      *(v170 + 4) = v1;
      sub_100005EB0(&_mh_execute_header, v167, v168, "While unloading assets for pending version change: additional assets need unloading, next task wake in %f seconds");
      sub_100002BD0();

      v193 = (v112)(v166, v191);
LABEL_83:
      sub_10000892C(v193, v194, v195, v196, v197, v198, v199, v200, v216, v221, v225, v228);
      v204 = sub_100004CA4();
      sub_10002CC20(v204, v205);
      sub_10002C278(v166, &qword_1001BBA80, &qword_100172440);

      v206 = sub_100007660();
      v112(v206);

      goto LABEL_34;
    }

    __break(1u);
    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v188, v189, v190);
  }

  v148 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();
  sub_1000089B8();

  if (sub_10000A098())
  {
    v149 = sub_100007698();
    v150 = sub_1000031E0();
    v239[0] = v150;
    *v149 = 136315138;
    v151 = sub_1001196B4(v229, v236);
    v153 = sub_100004A3C(v151, v152, v239);

    *(v149 + 4) = v153;
    sub_100008348();
    _os_log_impl(v154, v155, v156, v157, v149, 0xCu);
    sub_100003324(v150);
    sub_100002BD0();

    sub_100002BD0();
  }

  v158 = *(v0 + 392);
  v159 = *(v0 + 368);
  type metadata accessor for ModelManagerError();
  sub_1000086D4();
  sub_1000EE39C(v160, v161, &protocol conformance descriptor for ModelManagerError);
  v162 = sub_10000A418();
  sub_10002AB60(v162, v163);
  sub_100006098();
  (*(v164 + 104))();
  swift_willThrow();

  (v112)(v158, v159);
  sub_10002C278(v228, &qword_1001BBA80, &qword_100172440);

LABEL_78:
  v165 = sub_10002B0A4();
  v112(v165);

  sub_100001F00();
LABEL_35:
  sub_10001E688();

  return v55();
}

uint64_t sub_1000EA188()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 456) = v0;

  v5 = *(v2 + 312);
  v6 = *(v2 + 288);
  if (v0)
  {

    sub_10002C278(v5, &qword_1001BB3F8, &qword_100171D50);
    v7 = sub_1000EB144;
  }

  else
  {
    sub_10002C278(v5, &qword_1001BB3F8, &qword_100171D50);
    v7 = sub_1000EA2F8;
  }

  return _swift_task_switch(v7, v6, 0);
}

void sub_1000EA2F8()
{
  v176 = v0;
  v3 = *(v0 + 456);
  v4 = *(v0 + 440);
  v5 = *(v0 + 472);
  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v8 = *(v0 + 320);
  v9 = *(v0 + 328);
  v10 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v4, v0 + 40);
  (*(v9 + 16))(v6, &v10[v4], v8);
  (*(v9 + 104))(v7, v5, v8);
  sub_100005CC8();
  sub_1000EE39C(v11, v12, &protocol conformance descriptor for LoadState);
  sub_10000A9EC();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_10000A9EC();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v0 + 168);
  v14 = *(v0 + 184);
  v15 = *(v0 + 336);
  v16 = *(v0 + 320);
  v17 = (*(v0 + 328) + 8);
  if (*(v0 + 160) == *(v0 + 176) && v13 == v14)
  {
    v21 = *v17;
    (*v17)(*(v0 + 336), *(v0 + 320));
    v22 = sub_1000071D0();
    v21(v22);

    goto LABEL_8;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v1 = *v17;
  (*v17)(v15, v16);
  v20 = sub_1000071D0();
  (v1)(v20);

  if (v19)
  {
LABEL_8:
    v13 = (v0 + 256);
    sub_10001A264(v175, *(v0 + 440));
  }

  v23 = *(v0 + 432);
  if (v23)
  {
    *(v0 + 432) = v23 - 1;
    if (!__OFSUB__(v23, 1))
    {
      if ((*(v0 + 424) & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
        sub_1000032C8();
        v27 = sub_100007A04();
        sub_100009BFC(v27, v28, v29, v30);
        v31 = swift_task_alloc();
        *(v0 + 448) = v31;
        *v31 = v0;
        sub_100003BD0(v31);
        sub_100007A90();

        sub_10002BA5C();
        return;
      }

      if (v23 - 1 < 0)
      {
        __break(1u);
      }

      else
      {
        sub_100007900();
        if (!v26)
        {
          sub_100011174(v24, v25);
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_38:

      v70 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();

      if (sub_10000A098())
      {
        sub_100007698();
        v71 = sub_10000359C();
        v175[0] = v71;
        *v16 = 136315138;
        v72 = sub_1001196B4(v172, v1);
        v74 = sub_100004A3C(v72, v73, v175);

        *(v16 + 4) = v74;
        sub_100008348();
        sub_10001344C(v75, v76, v77, v78);
        sub_100003324(v71);
        sub_100002BD0();

        sub_100002BD0();
      }

      v79 = *(v0 + 392);
      v80 = *(v0 + 368);
      v81 = *(v0 + 376);
      v82 = type metadata accessor for ModelManagerError();
      sub_1000086D4();
      sub_1000EE39C(v83, v84, &protocol conformance descriptor for ModelManagerError);
      v85 = sub_100008194();
      sub_10002AB60(v85, v86);
      sub_100006098();
      (*(v87 + 104))(v88, v89, v82);
      swift_willThrow();

      v61 = *(v81 + 8);
      v61(v79, v80);
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_22;
  }

  v13 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (!sub_100002F80(v33))
  {
LABEL_22:

    goto LABEL_23;
  }

  v34 = sub_100007648();
  *v34 = 0;

  _os_log_impl(&_mh_execute_header, v13, v14, "Finished unloading assets for version change", v34, 2u);
  sub_100002BD0();

LABEL_23:

  sub_10002AB6C();

  sub_100008468();
  sub_10000BF1C();
  v39 = sub_100038E28(v35, v36, v37, v38);
  v175[0] = sub_100011CBC(v39);
  sub_100002D60();
  sub_1000ECFAC(v175, v40, 0);
  if (v3)
  {

    sub_100007A90();

    return;
  }

  v42 = v175[0];
  if (v175[0] < 0 || (v175[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_56;
  }

  if (!*(v175[0] + 16))
  {
LABEL_57:

    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.default.getter();
    if (sub_10000320C(v157))
    {
      v158 = sub_100007648();
      sub_10000A240(v158);
      sub_10000EDF4(&_mh_execute_header, v159, v160, "While unloading assets for pending version change: no more assets can be unloaded, attempting version switch");
      sub_100002BD0();
    }

    v161 = swift_task_alloc();
    *(v0 + 464) = v161;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    sub_1000060CC();
    *v161 = v162;
    sub_1000058A0();
    v178 = &protocol witness table for Never;
    v177 = &type metadata for Never;
    sub_10000A638();
    sub_100019AD8();
    sub_100010C94();

    goto _$s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF;
  }

LABEL_30:
  v43 = sub_10002CC90(v42);
  v16 = sub_100013B74(v43, v44);
  v1 = v45;

  v46 = *(v1 + 16);
  v172 = v16;
  if (!v46)
  {
    goto LABEL_38;
  }

  v47 = *(v0 + 368);
  v42 = *(v0 + 376);
  v173 = *(v0 + 296);
  v48 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v48);
  v165 = *(v49 + 64) + 15;
  v170 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v50, v51, v52, v47);

  v53 = 0;
  v174 = (v42 + 8);
  v54 = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v168 = v54;
  while (1)
  {
    if (v53 >= v46)
    {
      __break(1u);
LABEL_56:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_57;
      }

      goto LABEL_30;
    }

    sub_1000063C4();
    v55 = *(v0 + 304);
    v56 = *(v1 + 8 * v53 + 32);
    swift_task_alloc();
    v57 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v56, v0 + 64);
    sub_10001938C(v57 + v56, v55);
    v58 = swift_task_alloc();
    v59 = v55 + *(v173 + 32);
    v42 = sub_10002B0EC();

    sub_100004CA4();
    dispatch thunk of static Comparable.>= infix(_:_:)();
    v60 = sub_100018C68();
    v42(v60);
    sub_1000193F0(v55);
    static Date.+ infix(_:_:)();
    v61 = *v174;
    (*v174)(v58, v54);

    v54 = static Date.> infix(_:_:)();

    if (v54)
    {
      break;
    }

    ++v53;
    v61(v59, *(v0 + 368));

    v46 = *(v1 + 16);
    if (v53 == v46)
    {

      goto LABEL_42;
    }
  }

  v90 = *(v0 + 376);

  sub_10002C278(v170, &qword_1001BBA80, &qword_100172440);
  v53 = v90 + 32;
  v91 = sub_1000071D0();
  v92(v91);
  sub_1000070D0(v170);

LABEL_42:
  v93 = *(v0 + 368);
  v94 = sub_100005FA4(v62, v63, v64, v65, v66, v67, v68, v69, v1, v165);
  sub_1000316A0(v94, v95, v96, v97, v98, v99, v100, v101, v163, v166, v168, v170);
  sub_100007204();
  sub_10002C278(v53, &qword_1001BBA80, &qword_100172440);

  if (v93 == 1)
  {

    v102 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();

    if (sub_10000A098())
    {
      v103 = sub_100007698();
      v104 = sub_1000031E0();
      v175[0] = v104;
      *v103 = 136315138;
      v105 = sub_1001196B4(v172, v164);
      v107 = sub_100004A3C(v105, v106, v175);

      *(v103 + 4) = v107;
      sub_100008348();
      _os_log_impl(v108, v109, v110, v111, v103, 0xCu);
      sub_100003324(v104);
      sub_100002BD0();

      sub_100002BD0();
    }

    v112 = *(v0 + 392);
    v113 = *(v0 + 368);
    type metadata accessor for ModelManagerError();
    sub_1000086D4();
    sub_1000EE39C(v114, v115, &protocol conformance descriptor for ModelManagerError);
    v116 = sub_10000A418();
    sub_10002AB60(v116, v117);
    sub_100006098();
    (*(v118 + 104))();
    swift_willThrow();

    v61(v112, v113);
    sub_10002C278(v171, &qword_1001BBA80, &qword_100172440);

LABEL_46:
    v61(*(v0 + 400), *(v0 + 368));

    sub_100001F00();
LABEL_52:
    sub_100007A90();

    __asm { BRAA            X1, X16 }
  }

  sub_100002C58();
  sub_100003904();
  (v42)();
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v119, v120))
  {
    v148 = *(v0 + 392);
    v149 = *(v0 + 368);

    v150 = sub_100009524();
    (v61)(v150);
    v61(v148, v149);

    goto LABEL_51;
  }

  v121 = *(v0 + 368);
  v122 = sub_100007698();
  *v122 = 134217984;
  v123 = sub_100004BA0(v171, v0 + 112);
  v131 = sub_100005FA4(v123, v124, v125, v126, v127, v128, v129, v130, v164, v167);
  sub_10002CC20(v171, v131);
  v132 = sub_10000205C();
  v134 = sub_10000C6C0(v132, v133, v121);
  if (v134 != 1)
  {
    v137 = *(v0 + 392);
    v138 = *(v0 + 368);
    Date.timeIntervalSince(_:)();
    v139 = sub_100003228();
    (v61)(v139);
    v61(v131, v138);

    *(v122 + 4) = v2;
    sub_100005EB0(&_mh_execute_header, v119, v120, "While unloading assets for pending version change: additional assets need unloading, next task wake in %f seconds");
    sub_100002BD0();

    v140 = (v61)(v137, v138);
LABEL_51:
    sub_10000892C(v140, v141, v142, v143, v144, v145, v146, v147, v164, v167, v169, v171);
    v151 = sub_100004CA4();
    sub_10002CC20(v151, v152);
    sub_10002C278(v119, &qword_1001BBA80, &qword_100172440);

    v153 = sub_100007660();
    (v61)(v153);

    sub_100010BF0();

    sub_100002F54();
    goto LABEL_52;
  }

  __break(1u);
_$s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF:
  __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v134, v135, v136);
}

uint64_t sub_1000EAF68()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (!v0)
  {

    v8 = sub_100002C10();

    return _swift_task_switch(v8, v9, v10);
  }

  return result;
}

uint64_t sub_1000EB06C()
{
  sub_100003884();
  v1 = v0[46];
  v2 = *(v0[47] + 8);
  (v2)(v0[49], v1);
  sub_100003978();
  sub_100009BFC(v3, v4, v5, v1);
  v6 = sub_100007660();
  v2(v6);

  sub_100010BF0();

  sub_100002F54();

  return v7();
}

uint64_t sub_1000EB144()
{
  v162 = v0;
  v2 = *(v0 + 440);
  v3 = *(v0 + 472);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  v8 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v2, v0 + 40);
  (*(v7 + 16))(v4, &v8[v2], v6);
  (*(v7 + 104))(v5, v3, v6);
  sub_100005CC8();
  sub_1000EE39C(v9, v10, &protocol conformance descriptor for LoadState);
  sub_1000071D0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_1000071D0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v11 = *(v0 + 168);
  v12 = *(v0 + 336);
  v13 = (*(v0 + 328) + 8);
  if (*(v0 + 160) == *(v0 + 176) && v11 == *(v0 + 184))
  {
    v15 = *v13;
    v19 = sub_100004CA4();
    (v15)(v19);
    v20 = sub_100003754();
    (v15)(v20);

    goto LABEL_8;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v16 = *v13;
  v17 = sub_100004CA4();
  v16(v17);
  v18 = sub_100003754();
  v16(v18);

  if (v15)
  {
LABEL_8:
    v11 = (v0 + 256);
    sub_10001A264(v161, *(v0 + 440));
  }

  v21 = *(v0 + 432);
  if (v21)
  {
    *(v0 + 432) = v21 - 1;
    if (!__OFSUB__(v21, 1))
    {
      if ((*(v0 + 424) & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
        sub_1000032C8();
        v25 = sub_100007A04();
        sub_100009BFC(v25, v26, v27, v28);
        v29 = swift_task_alloc();
        *(v0 + 448) = v29;
        *v29 = v0;
        sub_100003BD0(v29);
        sub_100007A90();

        return sub_10002BA5C();
      }

      if (v21 - 1 < 0)
      {
        __break(1u);
      }

      else
      {
        sub_100007900();
        if (!v24)
        {
          sub_100011174(v22, v23);
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_34:

      v61 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      v62 = v15;

      if (sub_10000A098())
      {
        sub_100007698();
        v63 = sub_10000359C();
        v161[0] = v63;
        *v12 = 136315138;
        v64 = sub_1001196B4(v62, v12);
        v66 = sub_100004A3C(v64, v65, v161);

        *(v12 + 4) = v66;
        sub_100008348();
        sub_10001344C(v67, v68, v69, v70);
        sub_100003324(v63);
        sub_100002BD0();

        sub_100002BD0();
      }

      v71 = *(v0 + 376);
      type metadata accessor for ModelManagerError();
      sub_1000086D4();
      sub_1000EE39C(v72, v73, &protocol conformance descriptor for ModelManagerError);
      v74 = sub_100008194();
      sub_10002AB60(v74, v75);
      sub_100006098();
      (*(v76 + 104))();
      swift_willThrow();

      v60 = *(v71 + 8);
      v77 = sub_10000A9EC();
      (v60)(v77);
      goto LABEL_42;
    }

    __break(1u);
  }

  else
  {
    v11 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (sub_100002F80(v32))
    {
      *sub_100007648() = 0;

      sub_1000265D4(&_mh_execute_header, v33, v34, "Finished unloading assets for version change");
      sub_100002BD0();

      goto LABEL_23;
    }
  }

LABEL_23:

  sub_10002AB6C();

  sub_100008468();
  sub_10000BF1C();
  v39 = sub_100038E28(v35, v36, v37, v38);
  v161[0] = sub_100011CBC(v39);
  sub_100002D60();
  sub_1000ECFAC(v161, v40, 0);

  v41 = v161[0];
  if (v161[0] < 0 || (v161[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_52;
  }

  if (!*(v161[0] + 16))
  {
LABEL_53:

    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.default.getter();
    if (sub_10000320C(v144))
    {
      v145 = sub_100007648();
      sub_10000A240(v145);
      sub_10000EDF4(&_mh_execute_header, v146, v147, "While unloading assets for pending version change: no more assets can be unloaded, attempting version switch");
      sub_100002BD0();
    }

    v148 = swift_task_alloc();
    *(v0 + 464) = v148;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    sub_1000060CC();
    *v148 = v149;
    sub_1000058A0();
    v164 = &protocol witness table for Never;
    v163 = &type metadata for Never;
    sub_10000A638();
    sub_100019AD8();
    sub_100010C94();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v122, v123, v124);
  }

LABEL_26:
  v42 = sub_10002CC90(v41);
  v15 = sub_100013B74(v42, v43);
  v12 = v44;

  v45 = *(v12 + 16);
  if (!v45)
  {
    goto LABEL_34;
  }

  v46 = *(v0 + 368);
  v41 = *(v0 + 376);
  v158 = *(v0 + 296);
  v47 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v47);
  v150 = *(v48 + 64) + 15;
  v156 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v49, v50, v51, v46);

  v154 = v15;

  v52 = 0;
  v159 = v12;
  v160 = (v41 + 8);
  v53 = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v152 = v53;
  while (1)
  {
    if (v52 >= v45)
    {
      __break(1u);
LABEL_52:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_53;
      }

      goto LABEL_26;
    }

    sub_1000063C4();
    v54 = *(v0 + 304);
    v55 = *(v12 + 8 * v52 + 32);
    swift_task_alloc();
    v56 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v55, v0 + 64);
    sub_10001938C(v56 + v55, v54);
    v57 = swift_task_alloc();
    v58 = v54 + *(v158 + 32);
    v41 = sub_10002B0EC();

    sub_100004CA4();
    dispatch thunk of static Comparable.>= infix(_:_:)();
    v59 = sub_100018C68();
    v41(v59);
    sub_1000193F0(v54);
    static Date.+ infix(_:_:)();
    v60 = *v160;
    (*v160)(v57, v53);

    v53 = static Date.> infix(_:_:)();

    if (v53)
    {
      break;
    }

    ++v52;
    v60(v58, *(v0 + 368));

    v12 = v159;
    v45 = *(v159 + 16);
    if (v52 == v45)
    {

      goto LABEL_38;
    }
  }

  v78 = *(v0 + 376);

  sub_10002C278(v156, &qword_1001BBA80, &qword_100172440);
  v52 = v78 + 32;
  v79 = sub_1000071D0();
  v80(v79);
  sub_1000070D0(v156);

LABEL_38:
  v81 = *(v0 + 368);
  v82 = swift_task_alloc();
  sub_1000316A0(v82, v83, v84, v85, v86, v87, v88, v89, v150, v152, v154, v156);
  sub_100007204();
  sub_10002C278(v52, &qword_1001BBA80, &qword_100172440);

  if (v81 == 1)
  {

    v90 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();

    if (sub_10000A098())
    {
      v91 = sub_100007698();
      v92 = sub_1000031E0();
      v161[0] = v92;
      *v91 = 136315138;
      v93 = sub_1001196B4(v155, v159);
      v95 = sub_100004A3C(v93, v94, v161);

      *(v91 + 4) = v95;
      sub_100008348();
      _os_log_impl(v96, v97, v98, v99, v91, 0xCu);
      sub_100003324(v92);
      sub_100002BD0();

      sub_100002BD0();
    }

    v100 = *(v0 + 392);
    v101 = *(v0 + 368);
    type metadata accessor for ModelManagerError();
    sub_1000086D4();
    sub_1000EE39C(v102, v103, &protocol conformance descriptor for ModelManagerError);
    v104 = sub_10000A418();
    sub_10002AB60(v104, v105);
    sub_100006098();
    (*(v106 + 104))();
    swift_willThrow();

    v60(v100, v101);
    sub_10002C278(v157, &qword_1001BBA80, &qword_100172440);

LABEL_42:
    v107 = sub_10002B0A4();
    (v60)(v107);

    sub_100001F00();
LABEL_48:
    sub_100007A90();

    __asm { BRAA            X1, X16 }
  }

  v108 = *(v0 + 368);
  sub_100002C58();
  sub_100003904();
  (v41)();
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v109, v110))
  {
    v135 = *(v0 + 392);
    v136 = *(v0 + 368);

    v137 = sub_100009524();
    (v60)(v137);
    v60(v135, v136);

    goto LABEL_47;
  }

  v111 = *(v0 + 368);
  v112 = sub_100007698();
  *v112 = 134217984;
  sub_100003474(v112, v0 + 112, v113, v114, v115, v116, v117, v118, v151, v153, v155, v157);
  v119 = swift_task_alloc();
  sub_10002CC20(v108, v119);
  v120 = sub_10000205C();
  v122 = sub_10000C6C0(v120, v121, v111);
  if (v122 != 1)
  {
    v108 = *(v0 + 392);
    v125 = *(v0 + 368);
    Date.timeIntervalSince(_:)();
    v126 = sub_100003228();
    (v60)(v126);
    v60(v119, v125);

    *(v112 + 4) = v1;
    sub_100005EB0(&_mh_execute_header, v109, v110, "While unloading assets for pending version change: additional assets need unloading, next task wake in %f seconds");
    sub_100002BD0();

    v127 = (v60)(v108, v125);
LABEL_47:
    sub_10000892C(v127, v128, v129, v130, v131, v132, v133, v134, v151, v153, v155, v157);
    v138 = sub_100004CA4();
    sub_10002CC20(v138, v139);
    sub_10002C278(v108, &qword_1001BBA80, &qword_100172440);

    v140 = sub_100007660();
    (v60)(v140);

    sub_100010BF0();

    sub_100002F54();
    goto LABEL_48;
  }

  __break(1u);
  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v122, v123, v124);
}