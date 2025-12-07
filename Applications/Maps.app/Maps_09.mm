void sub_10015D330(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5)
    {
      sub_100511374(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v5; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(a2 + 8 * i + 32);
        }

        v8 = v7;
        v9 = dispatch thunk of CollectionTransitItem.muid.getter();

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_100511374((v10 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        _swiftEmptyArrayStorage[v11 + 4] = v9;
      }
    }

    v12 = sub_100455250(_swiftEmptyArrayStorage);

    *&v4[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_pinnedLines] = v12;

    sub_1001585D4();
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_10015A9C8();
  }
}

uint64_t sub_10015D4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10015D604, 0, 0);
}

uint64_t sub_10015D604()
{
  type metadata accessor for CollectionTransitItemRequest();
  *(v0 + 192) = CollectionTransitItemRequest.__allocating_init()();
  v3 = (&async function pointer to dispatch thunk of CollectionTransitItemRequest.fetch() + async function pointer to dispatch thunk of CollectionTransitItemRequest.fetch());
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_10015D6BC;

  return v3();
}

uint64_t sub_10015D6BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_10015DA84;
  }

  else
  {

    *(v4 + 216) = a1;
    v5 = sub_10015D7EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10015D7EC()
{
  v1 = v0[27];
  v12 = v0[23];
  v2 = v0[20];
  v14 = v0[22];
  v15 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  sub_100014C84(0, &qword_10190B4F0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v1;
  v8[4] = v5;
  v0[6] = sub_100161840;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100039C64;
  v0[5] = &unk_101606900;
  v9 = _Block_copy(v0 + 2);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_100041318(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500, &unk_1011E4610);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v4 + 8))(v2, v3);
  (*(v14 + 8))(v12, v15);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10015DA84()
{
  v12 = v0;

  if (qword_101906708 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FFB8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10004DEB8(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error unpinning transit line: %s", v4, 0xCu);
    sub_10004E3D0(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_10015DC60(uint64_t a1, unint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = a2 >> 62;
  if (Strong)
  {
    v7 = Strong;
    if (v6)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = _swiftEmptyArrayStorage;
    if (v8)
    {
      v35 = _swiftEmptyArrayStorage;
      sub_100511374(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        __break(1u);
        return;
      }

      v33 = v7;
      v10 = 0;
      v9 = v35;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v11 = *(a2 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = dispatch thunk of CollectionTransitItem.muid.getter();

        v35 = v9;
        v15 = v9[2];
        v14 = v9[3];
        if (v15 >= v14 >> 1)
        {
          sub_100511374((v14 > 1), v15 + 1, 1);
          v9 = v35;
        }

        ++v10;
        v9[2] = v15 + 1;
        v9[v15 + 4] = v13;
      }

      while (v8 != v10);
      v7 = v33;
      v6 = a2 >> 62;
    }

    v16 = sub_100455250(v9);

    *&v7[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_pinnedLines] = v16;

    sub_1001585D4();
  }

  v35 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_29:
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_29;
  }

LABEL_17:
  if (v17 < 1)
  {
    __break(1u);
    swift_once();
    v25 = type metadata accessor for Logger();
    sub_100021540(v25, qword_10195FFB8);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = Error.localizedDescription.getter();
      v32 = sub_10004DEB8(v30, v31, &v34);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error unpinning transit line: %s", v28, 0xCu);
      sub_10004E3D0(v29);
    }

    else
    {
    }

    return;
  }

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = *(a2 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = dispatch thunk of CollectionTransitItem.muid.getter();
    if (v22 == [a3 muid])
    {
      v23 = v21;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v19 = v35;
    }

    else
    {
    }

    ++v18;
  }

  while (v17 != v18);
LABEL_30:
  type metadata accessor for MapsSyncStore();
  v24 = static MapsSyncStore.sharedStore.getter();
  if (v19 >> 62)
  {
    type metadata accessor for MapsSyncObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for MapsSyncObject();
  }

  dispatch thunk of MapsSyncStore.delete(objects:)();
}

uint64_t sub_10015E0F8(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10015E174(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4, v9);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  (v12)(v7, v11, v4);
  v14 = v13;
  static Published.subscript.setter();
  return (*(v5 + 8))(v11, v4);
}

void *sub_10015E2F4(uint64_t a1, void *a2)
{

  return sub_10015ED38(a1, a2, &unk_101918390, MKMapItem_ptr, &qword_10190D338, sub_100155760, sub_100155760);
}

void *sub_10015E37C(unint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v52[0] = a1;
    v43 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v34 = a1;
      v3 = _CocoaArrayWrapper.endIndex.getter();
      a1 = v34;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = a1;

    if (v3)
    {
      v4 = 0;
      v49 = v48 & 0xC000000000000001;
      v47 = v48 & 0xFFFFFFFFFFFFFF8;
      v45 = v48 + 32;
      v51 = v2 + 7;
      while (1)
      {
        if (v49)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v47 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v45 + 8 * v4);
        }

        v50 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = NSObject._rawHashValue(seed:)(v2[5]);
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v51[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      sub_100014C84(0, &unk_101918390, MKMapItem_ptr);
      while (1)
      {
        v12 = *(v2[6] + 8 * v8);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v51[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v52[1] = v4;

      v15 = *(v2 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v41 = v17;
      if (v16 <= 0xD)
      {
LABEL_19:
        v42 = &v40;
        __chkstk_darwin(v14);
        v19 = &v40 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v19, v51, v18);
        v20 = v2[2];
        v21 = *&v19[8 * v9] & ~v10;
        v46 = v19;
        *&v19[8 * v9] = v21;
        v44 = v20 - 1;
        if (v43)
        {
          a1 = _CocoaArrayWrapper.endIndex.getter();
          v50 = a1;
        }

        else
        {
          v50 = *(v47 + 16);
        }

        while (1)
        {
          if (v4 == v50)
          {
            v2 = sub_100155760(v46, v41, v44, v2);
            goto LABEL_40;
          }

          if (v49)
          {
            a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v47 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v45 + 8 * v4);
          }

          v22 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v23 = NSObject._rawHashValue(seed:)(v2[5]);
          v24 = -1 << *(v2 + 32);
          v25 = v23 & ~v24;
          v26 = v25 >> 6;
          v27 = 1 << v25;
          if (((1 << v25) & v51[v25 >> 6]) != 0)
          {
            v28 = ~v24;
            while (1)
            {
              v29 = *(v2[6] + 8 * v25);
              v30 = static NSObject.== infix(_:_:)();

              if (v30)
              {
                break;
              }

              v25 = (v25 + 1) & v28;
              v26 = v25 >> 6;
              v27 = 1 << v25;
              if (((1 << v25) & v51[v25 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v31 = v46[v26];
            v46[v26] = v31 & ~v27;
            if ((v31 & v27) != 0)
            {
              v32 = v44 - 1;
              if (__OFSUB__(v44, 1))
              {
                __break(1u);
              }

              --v44;
              if (!v32)
              {

                v2 = &_swiftEmptySetSingleton;
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v35 = 8 * v17;

      v36 = v35;
      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_19;
      }

      v37 = swift_slowAlloc();
      memcpy(v37, v51, v36);
      sub_10015F790(v37, v41, v2, v8, v52);
      v39 = v38;

      return v39;
    }

    else
    {
LABEL_40:
    }
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void *sub_10015E854(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v48 << 9) | (8 * v18)));
        v19 = static Hasher._hash(seed:_:)();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & v13[v5 >> 6]) == 0);
      v21 = v6[6];
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & v13[v5 >> 6]) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v46;
    v51 = v48;
    v52 = v11;
    v49[0] = v47;
    v49[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, v6 + 7, v14);
      v41 = sub_10015F9D0(v40, v4, v6, v5, v49);

      v2 = v49[0];
      v46 = v50;
      v48 = v51;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v4;
    v44 = &v42;
    __chkstk_darwin(v22);
    v5 = &v42 - v23;
    memcpy(&v42 - v23, v6 + 7, v14);
    v24 = v6[2];
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v48 << 9) | (8 * v29)));
      v30 = static Hasher._hash(seed:_:)();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & v13[v32 >> 6]) != 0)
      {
        v35 = v6[6];
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & v13[v32 >> 6]) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_100155774(v5, v43, v45, v6);
LABEL_41:
    v38 = v2;
LABEL_43:
    sub_10005F150(v38);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v6;
}

void *sub_10015ECB0(uint64_t a1, void *a2)
{

  return sub_10015ED38(a1, a2, &qword_10190D2F0, off_1015F6280, &qword_10190D2F8, sub_100155960, sub_100155960);
}

void *sub_10015ED38(uint64_t a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, uint64_t (*a6)(unint64_t *, unint64_t, uint64_t, void *), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v72 = a4;
  v70 = a3;
  v8 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v9 = a1;
  v69 = a6;
  v68 = a7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    v7 = sub_100014C84(0, v70, v72);
    sub_1001609AC(a5, v70, v72);
    Set.Iterator.init(_cocoa:)();
    v9 = v85;
    v12 = v86;
    v13 = v87;
    v14 = v88;
    v15 = v89;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v80 = v9;
  v81 = v12;
  v82 = v13;
  v83 = v14;
  v71 = v13;
  v19 = (v13 + 64) >> 6;
  v77 = v8 + 7;
  v84 = v15;
  v74 = v12;
  v75 = v9;
  for (i = v19; ; v19 = i)
  {
    if (v9 < 0)
    {
      v27 = __CocoaSet.Iterator.next()();
      if (!v27)
      {
        goto LABEL_65;
      }

      v78 = v27;
      sub_100014C84(0, v70, v72);
      swift_dynamicCast();
      v25 = v79;
      v23 = v14;
      v7 = v15;
      if (!v79)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v20 = v15;
      v21 = v14;
      if (v15)
      {
LABEL_20:
        v7 = (v20 - 1) & v20;
        v25 = *(*(v9 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        v26 = v25;
        v23 = v21;
      }

      else
      {
        if (v19 <= v14 + 1)
        {
          v22 = v14 + 1;
        }

        else
        {
          v22 = v19;
        }

        v23 = v22 - 1;
        v24 = v14;
        while (1)
        {
          v21 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_67;
          }

          if (v21 >= v19)
          {
            break;
          }

          v20 = *(v12 + 8 * v21);
          ++v24;
          if (v20)
          {
            goto LABEL_20;
          }
        }

        v25 = 0;
        v7 = 0;
      }

      v80 = v9;
      v81 = v12;
      v82 = v71;
      v83 = v23;
      v84 = v7;
      if (!v25)
      {
LABEL_65:
        v60 = v9;
        goto LABEL_63;
      }
    }

    v28 = v25;
    v29 = NSObject._rawHashValue(seed:)(v8[5]);
    v30 = -1 << *(v8 + 32);
    v15 = v29 & ~v30;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v77[v15 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v14 = v23;
    v15 = v7;
    v12 = v74;
    v9 = v75;
  }

  v31 = ~v30;
  v32 = sub_100014C84(0, v70, v72);
  v33 = *(v8[6] + 8 * v15);
  v76 = v32;
  while (1)
  {
    v34 = static NSObject.== infix(_:_:)();

    if (v34)
    {
      break;
    }

    v15 = (v15 + 1) & v31;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v77[v15 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v33 = *(v8[6] + 8 * v15);
  }

  v36 = *(v8 + 32);
  v67 = ((1 << v36) + 63) >> 6;
  v11 = 8 * v67;
  if ((v36 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v68 = &v67;
    __chkstk_darwin(v35);
    v38 = &v67 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v38, v77, v37);
    v39 = *&v38[8 * v9] & ~v21;
    v40 = v8[2];
    v70 = v38;
    *&v38[8 * v9] = v39;
    v9 = v40 - 1;
    v42 = v74;
    v41 = v75;
    v43 = i;
LABEL_33:
    v72 = v9;
    while (v41 < 0)
    {
      v44 = __CocoaSet.Iterator.next()();
      if (!v44)
      {
        goto LABEL_61;
      }

      v78 = v44;
      swift_dynamicCast();
      v15 = v79;
      if (!v79)
      {
        goto LABEL_61;
      }

LABEL_50:
      v49 = NSObject._rawHashValue(seed:)(v8[5]);
      v50 = v8;
      v51 = -1 << *(v8 + 32);
      v52 = v49 & ~v51;
      v53 = v52 >> 6;
      v54 = 1 << v52;
      if (((1 << v52) & v77[v52 >> 6]) != 0)
      {
        v55 = ~v51;
        while (1)
        {
          v56 = *(v50[6] + 8 * v52);
          v57 = static NSObject.== infix(_:_:)();

          if (v57)
          {
            break;
          }

          v52 = (v52 + 1) & v55;
          v53 = v52 >> 6;
          v54 = 1 << v52;
          if (((1 << v52) & v77[v52 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v43 = i;

        v58 = v70[v53];
        v70[v53] = v58 & ~v54;
        v59 = (v58 & v54) == 0;
        v8 = v50;
        v42 = v74;
        v41 = v75;
        v9 = v72;
        if (!v59)
        {
          v9 = v72 - 1;
          if (__OFSUB__(v72, 1))
          {
            __break(1u);
          }

          if (v72 == 1)
          {

            v8 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v8 = v50;
        v42 = v74;
        v41 = v75;
        v9 = v72;
        v43 = i;
      }
    }

    if (v7)
    {
      v21 = v23;
LABEL_48:
      v47 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(*(v41 + 48) + ((v21 << 9) | (8 * v47)));
      v48 = v15;
      v46 = v21;
LABEL_49:
      v80 = v41;
      v81 = v42;
      v82 = v71;
      v83 = v46;
      v23 = v46;
      v84 = v7;
      if (!v15)
      {
LABEL_61:
        v8 = v69(v70, v67, v9, v8);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v43 <= v23 + 1)
    {
      v45 = v23 + 1;
    }

    else
    {
      v45 = v43;
    }

    v46 = v45 - 1;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v21 >= v43)
      {
        v15 = 0;
        v7 = 0;
        goto LABEL_49;
      }

      v7 = *(v42 + 8 * v21);
      ++v23;
      if (v7)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v62 = v11;

    v63 = v8;
    v64 = v62;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v8 = v63;
      continue;
    }

    break;
  }

  v65 = swift_slowAlloc();
  memcpy(v65, v77, v64);
  sub_10015FB8C(v65, v67, v63, v15, &v80, v70, v72, v68);
  v8 = v66;

LABEL_62:
  v60 = v80;
LABEL_63:
  sub_10005F150(v60);
  return v8;
}

uint64_t sub_10015F438(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_100308830(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_10015F560(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, uint64_t (*a5)(id))
{
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v5 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100014C84(0, a2, a3);
    sub_1001609AC(a4, a2, a3);
    Set.Iterator.init(_cocoa:)();
    a1 = v26;
    v8 = v27;
    v9 = v28;
    v10 = v29;
    v11 = v30;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (!v11)
    {
      break;
    }

LABEL_16:
    v19 = (v17 - 1) & v17;
    v20 = *(*(a1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
LABEL_22:
      sub_10005F150(a1);
      return;
    }

    while (1)
    {
      v21 = a5(v20);

      v10 = v18;
      v11 = v19;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100014C84(0, a2, a3);
        swift_dynamicCast();
        v20 = v25;
        v18 = v10;
        v19 = v11;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_22;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_10015F790(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_100155760(a1, a2, v26, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(v11 + 8 * v10 + 32);
        }

        v13 = v12;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

        v5[1] = v10 + 1;
        v14 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      sub_100014C84(0, &unk_101918390, MKMapItem_ptr);
      v19 = *(*(a3 + 48) + 8 * v16);
      v20 = static NSObject.== infix(_:_:)();

      if ((v20 & 1) == 0)
      {
        v21 = ~v15;
        do
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = static NSObject.== infix(_:_:)();
        }

        while ((v23 & 1) == 0);
      }

      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_28;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_10015F9D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = static Hasher._hash(seed:_:)();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return &_swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_100155774(v8, a2, v10, a3);
}

void sub_10015FB8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t *a6, void *a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a5;
  v10 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v11 = v10 - 1;
  v39 = a3 + 56;
  while (2)
  {
    v34 = v11;
    do
    {
      while (1)
      {
        if ((*v8 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_29;
          }

          sub_100014C84(0, a6, a7);
          swift_dynamicCast();
          v15 = v40;
          if (!v40)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v12 = v8[3];
          v13 = v8[4];
          if (!v13)
          {
            v16 = (v8[2] + 64) >> 6;
            if (v16 <= v12 + 1)
            {
              v17 = v12 + 1;
            }

            else
            {
              v17 = (v8[2] + 64) >> 6;
            }

            v18 = v17 - 1;
            while (1)
            {
              v14 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                break;
              }

              if (v14 >= v16)
              {
                v8[3] = v18;
                v8[4] = 0;
                goto LABEL_29;
              }

              v13 = *(v8[1] + 8 * v14);
              ++v12;
              if (v13)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v14 = v8[3];
LABEL_17:
          v19 = (v13 - 1) & v13;
          v15 = *(*(*v8 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
          v20 = v15;
          v8[3] = v14;
          v8[4] = v19;
          if (!v15)
          {
LABEL_29:

            a8(a1, a2, v34, a3);
            return;
          }
        }

        v21 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v22 = -1 << *(a3 + 32);
        v23 = v21 & ~v22;
        v24 = v23 >> 6;
        v25 = 1 << v23;
        if (((1 << v23) & *(v39 + 8 * (v23 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_100014C84(0, a6, a7);
        v26 = *(*(a3 + 48) + 8 * v23);
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {
          break;
        }

        v28 = ~v22;
        while (1)
        {
          v23 = (v23 + 1) & v28;
          v24 = v23 >> 6;
          v25 = 1 << v23;
          if (((1 << v23) & *(v39 + 8 * (v23 >> 6))) == 0)
          {
            break;
          }

          v29 = *(*(a3 + 48) + 8 * v23);
          v30 = static NSObject.== infix(_:_:)();

          if (v30)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v8 = a5;
      }

LABEL_23:
      v8 = a5;

      v31 = *(a1 + 8 * v24);
      *(a1 + 8 * v24) = v31 & ~v25;
    }

    while ((v31 & v25) == 0);
    v11 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v34 != 1)
    {
      continue;
    }

    break;
  }
}

void *sub_10015FE24(void *a1)
{
  v1 = [a1 incidents];
  if (v1)
  {
    v2 = v1;
    sub_1000CE6B8(&unk_10190A7F0, &unk_1011E9F00);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      goto LABEL_63;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_4:
      v5 = 0;
      v56 = v3 & 0xC000000000000001;
      v53 = v3 + 32;
      v54 = v3 & 0xFFFFFFFFFFFFFF8;
      v6 = _swiftEmptyDictionarySingleton;
      v7 = &selRef_menuItemForIndexPath_;
      v55 = v4;
      while (1)
      {
        if (v56)
        {
          v8 = v5;
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = __OFADD__(v8, 1);
          v3 = v8 + 1;
          if (v10)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (v5 >= *(v54 + 16))
          {
            goto LABEL_62;
          }

          v9 = *(v53 + 8 * v5);
          v11 = v5;
          swift_unknownObjectRetain();
          v10 = __OFADD__(v11, 1);
          v3 = v11 + 1;
          if (v10)
          {
            goto LABEL_61;
          }
        }

        v57 = v3;
        v12 = [v9 affectedEntities];
        if (!v12)
        {
          swift_unknownObjectRelease();
          goto LABEL_6;
        }

        v13 = v12;
        sub_1000CE6B8(&unk_10190D2E0, &qword_1011E9F10);
        v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v14 >> 62))
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v15)
          {
            break;
          }

          goto LABEL_5;
        }

        v15 = _CocoaArrayWrapper.endIndex.getter();
        if (v15)
        {
          break;
        }

LABEL_5:
        swift_unknownObjectRelease();

LABEL_6:
        v5 = v57;
        if (v57 == v55)
        {
          goto LABEL_65;
        }
      }

      v16 = 0;
      v61 = v9;
      v62 = v14 & 0xC000000000000001;
      v58 = v14 & 0xFFFFFFFFFFFFFF8;
      v59 = v15;
      v60 = v14;
      while (1)
      {
        if (v62)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v20 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v16 >= *(v58 + 16))
          {
            goto LABEL_57;
          }

          v19 = *(v14 + 8 * v16 + 32);
          swift_unknownObjectRetain();
          v20 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
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
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            v4 = _CocoaArrayWrapper.endIndex.getter();
            if (!v4)
            {
              goto LABEL_64;
            }

            goto LABEL_4;
          }
        }

        v21 = [v19 v7[192]];
        v63 = v20;
        if (!v6[2])
        {
          break;
        }

        v22 = sub_100298E64(v21);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v65 = *(v6[7] + 8 * v22);

        swift_unknownObjectRetain();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v24 = v65;
        v25 = [v19 v7[192]];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v6;
        v3 = v6;
        v27 = sub_100298E64(v25);
        v29 = v6[2];
        v30 = (v28 & 1) == 0;
        v10 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v10)
        {
          goto LABEL_59;
        }

        v32 = v28;
        if (v6[3] >= v31)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v3 = &v64;
            v51 = v27;
            sub_10012C644();
            v27 = v51;
          }
        }

        else
        {
          sub_100126BC4(v31, isUniquelyReferenced_nonNull_native);
          v3 = v64;
          v27 = sub_100298E64(v25);
          if ((v32 & 1) != (v33 & 1))
          {
            goto LABEL_67;
          }
        }

        v9 = v61;
        v6 = v64;
        if (v32)
        {
          v48 = v64[7];
          v3 = *(v48 + 8 * v27);
          *(v48 + 8 * v27) = v24;
          swift_unknownObjectRelease();
        }

        else
        {
          v64[(v27 >> 6) + 8] |= 1 << v27;
          *(v6[6] + 8 * v27) = v25;
          *(v6[7] + 8 * v27) = v24;
          swift_unknownObjectRelease();
          v49 = v6[2];
          v10 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v10)
          {
            goto LABEL_60;
          }

          v6[2] = v50;
        }

        v18 = v63;
        v14 = v60;
LABEL_19:
        ++v16;
        if (v18 == v15)
        {
          goto LABEL_5;
        }
      }

      v34 = v7;
      v35 = [v19 v7[192]];
      sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1011E47B0;
      *(v36 + 32) = v9;
      swift_unknownObjectRetain();
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v6;
      v3 = v6;
      v39 = sub_100298E64(v35);
      v40 = v6[2];
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        goto LABEL_56;
      }

      v43 = v38;
      if (v6[3] < v42)
      {
        sub_100126BC4(v42, v37);
        v3 = v65;
        v44 = sub_100298E64(v35);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_67;
        }

        v39 = v44;
        v6 = v65;
        if ((v43 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_17:
        v17 = v6[7];
        v3 = *(v17 + 8 * v39);
        *(v17 + 8 * v39) = v36;
        swift_unknownObjectRelease();

LABEL_18:
        v7 = v34;
        v14 = v60;
        v9 = v61;
        v15 = v59;
        v18 = v63;
        goto LABEL_19;
      }

      if (v37)
      {
        v6 = v65;
        if (v38)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v3 = &v65;
        sub_10012C644();
        v6 = v65;
        if (v43)
        {
          goto LABEL_17;
        }
      }

LABEL_41:
      v6[(v39 >> 6) + 8] |= 1 << v39;
      *(v6[6] + 8 * v39) = v35;
      *(v6[7] + 8 * v39) = v36;
      swift_unknownObjectRelease();
      v46 = v6[2];
      v10 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v10)
      {
        goto LABEL_58;
      }

      v6[2] = v47;
      goto LABEL_18;
    }

LABEL_64:
    v6 = _swiftEmptyDictionarySingleton;
LABEL_65:

    return v6;
  }

  else
  {
    __break(1u);
LABEL_67:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

void *sub_100160538(unint64_t a1, uint64_t a2, int a3, char a4)
{
  v4 = a1;
  if (*(a2 + 16))
  {
    LODWORD(v5) = a3;
    if (a1 >> 62)
    {
      goto LABEL_65;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    if (v7)
    {
      v8 = 0;
      v9 = v4 & 0xC000000000000001;
      v33 = v4 + 32;
      v34 = v4 & 0xFFFFFFFFFFFFFF8;
      v10 = a2 + 56;
      v35 = v4;
      v36 = v4 & 0xC000000000000001;
      v31 = v5;
      v30 = v7;
      while (1)
      {
        if (v9)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = __OFADD__(v8++, 1);
          if (v12)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v8 >= *(v34 + 16))
          {
            goto LABEL_64;
          }

          v11 = *(v33 + 8 * v8);
          swift_unknownObjectRetain();
          v12 = __OFADD__(v8++, 1);
          if (v12)
          {
            goto LABEL_63;
          }
        }

        if ((v5 & 1) == 0 && [v11 isBlockingIncident])
        {
          goto LABEL_52;
        }

        v13 = [v11 affectedEntities];
        if (!v13)
        {
          goto LABEL_52;
        }

        v14 = v13;
        sub_1000CE6B8(&unk_10190D2E0, &qword_1011E9F10);
        v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v39 = v15;
        v38 = v15 >> 62;
        if (v15 >> 62)
        {
          v16 = _CocoaArrayWrapper.endIndex.getter();
          if (v16)
          {
LABEL_19:
            v37 = v8;
            v17 = 0;
            v5 = v15 + 32;
            while (1)
            {
              if ((v15 & 0xC000000000000001) != 0)
              {
                v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v12 = __OFADD__(v17++, 1);
                if (v12)
                {
                  goto LABEL_61;
                }
              }

              else
              {
                if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_62;
                }

                v4 = *(v5 + 8 * v17);
                swift_unknownObjectRetain();
                v12 = __OFADD__(v17++, 1);
                if (v12)
                {
LABEL_61:
                  __break(1u);
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  v7 = _CocoaArrayWrapper.endIndex.getter();
                  goto LABEL_4;
                }
              }

              v18 = [v4 muid];
              if (*(a2 + 16) && (v19 = v18, v20 = static Hasher._hash(seed:_:)(), v21 = -1 << *(a2 + 32), v22 = v20 & ~v21, ((*(v10 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
              {
                v23 = ~v21;
                while (*(*(a2 + 48) + 8 * v22) != v19)
                {
                  v22 = (v22 + 1) & v23;
                  if (((*(v10 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
                  {
                    goto LABEL_20;
                  }
                }

                swift_unknownObjectRelease();
              }

              else
              {
LABEL_20:
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              if (v17 == v16)
              {
                v4 = v35;
                LODWORD(v5) = v31;
                v7 = v30;
                v8 = v37;
                break;
              }
            }
          }
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v16)
          {
            goto LABEL_19;
          }
        }

        v24 = _swiftEmptyArrayStorage < 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0;
        v9 = v36;
        if (v24)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_6;
          }

LABEL_42:
          if (a4)
          {
            if (v24)
            {
              v25 = v8;
              v26 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v25 = v8;
              v26 = _swiftEmptyArrayStorage[2];
            }

            if (v38)
            {
              v27 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v27 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v28 = v26 == v27;
            v8 = v25;
            v4 = v35;
            if (!v28)
            {
              goto LABEL_7;
            }
          }

          else
          {
          }

LABEL_52:
          swift_unknownObjectRetain();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_unknownObjectRelease();
          if (v8 == v7)
          {
            return _swiftEmptyArrayStorage;
          }
        }

        else
        {
          if (_swiftEmptyArrayStorage[2])
          {
            goto LABEL_42;
          }

LABEL_6:

LABEL_7:
          swift_unknownObjectRelease();
          if (v8 == v7)
          {
            return _swiftEmptyArrayStorage;
          }
        }
      }
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1001609AC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100014C84(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001609FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10015CBCC(a1, v4, v5, v6);
}

id sub_100160AB8()
{
  if (*(v0 + OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isTrackingUser) == 1)
  {
    result = [objc_opt_self() sharedLocationManager];
    if (!result)
    {
      return result;
    }

    v2 = result;
    v3 = [result currentLocation];

    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_requestedLocation);
    v4 = v3;
    if (!v3)
    {
      return 0;
    }
  }

  v5 = objc_opt_self();
  v6 = v3;
  v7 = [v5 sharedService];
  if (v7)
  {
    v8 = v7;
    v9 = sub_10015900C();
    v10 = [objc_opt_self() sharedLocationManager];
    v11 = [v10 currentLocation];

    v12 = [v8 ticketForNearbyTransitDeparturesWithLookupOrigin:v6 userLocation:v11 traits:v9];
    return v12;
  }

  return 0;
}

void sub_100160D10(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = a1;
    swift_errorRetain();
    if (qword_101906708 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100021540(v5, qword_10195FFB8);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_10004DEB8(v10, v11, &v23);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error when attempting to update mapItem: %s", v8, 0xCu);
      sub_10004E3D0(v9);
    }

    else
    {
    }

    a1 = v4;
  }

  v13 = [a1 _transitInfo];
  if (v13 && (v14 = [v13 nearbySchedule], swift_unknownObjectRelease(), v14))
  {
    if (qword_101906708 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100021540(v15, qword_10195FFB8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Updated mapItem", v18, 2u);
    }

    *(v3 + OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_geoNearbyTransitSchedule) = v14;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_10015A9C8();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_101906708 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100021540(v19, qword_10195FFB8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing nearby schedule in updated mapItem response", v22, 2u);
    }
  }
}

uint64_t sub_10016108C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v32 = &v26[-v8];
  __chkstk_darwin(v9);
  v11 = &v26[-v10];
  if (qword_101906708 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100021540(v12, qword_10195FFB8);
  v31 = *(v5 + 16);
  v31(v11, a1, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = a1;
    v16 = v15;
    v28 = swift_slowAlloc();
    v34 = v28;
    *v16 = 136315138;
    sub_100041318(&qword_10190D308, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v27 = v14;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v2;
    v19 = v18;
    v20 = *(v5 + 8);
    v20(v11, v4);
    v21 = sub_10004DEB8(v17, v19, &v34);
    v2 = v30;

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v27, "Updated referenceDate: %s", v16, 0xCu);
    sub_10004E3D0(v28);

    a1 = v29;
  }

  else
  {

    v20 = *(v5 + 8);
    v20(v11, v4);
  }

  v23 = v31;
  v22 = v32;
  v31(v32, a1, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v23(v33, v22, v4);
  v24 = v2;
  static Published.subscript.setter();
  return (v20)(v22, v4);
}

uint64_t sub_1001613F0(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10190D330, &qword_101200F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100161458(void *a1)
{
  type metadata accessor for CollectionTransitItem();
  v2 = MapsSyncObject.__allocating_init()();
  v3 = [objc_allocWithZone(MSPTransitStorageLine) initWithLine:a1];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 data];
    if (v5)
    {
      v6 = v5;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    dispatch thunk of CollectionTransitItem.transitLineStorage.setter();
    [a1 muid];
    dispatch thunk of CollectionTransitItem.muid.setter();
  }

  type metadata accessor for MapsSyncStore();
  v7 = static MapsSyncStore.sharedStore.getter();
  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1011E47B0;
  *(v8 + 32) = v2;
  v9 = v2;
  dispatch thunk of MapsSyncStore.save(_:)();
}

uint64_t sub_1001617D8(void (*a1)(void), void (*a2)(void))
{

  a1(*(v2 + 24));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_10016186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for UICollectionView.CellRegistration();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v19 - v14;
  (*(a4 + 24))(a3, a4, v13);
  v16 = *(a3 - 8);
  (*(v16 + 16))(v10, a2, a3);
  (*(v16 + 56))(v10, 0, 1, a3);
  v17 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v15, v11);
  return v17;
}

__n128 sub_100161AD8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100161AEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100161B34(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

char *sub_100161B84(void *a1)
{
  v1 = [a1 geoMapItemPlaceTypes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1000F337C();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_22:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v10 = [v7 intValue];

    ++v5;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100356900(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_100356900((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      *&v6[4 * v12 + 32] = v10;
      v5 = v9;
    }
  }

  return v6;
}

id sub_100161D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_template] = 0;
  v6 = &v3[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_query];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_asyncDataManager] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_mappedActionButtons] = 0;
  *&v3[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_mappedRefinementButtons] = 0;
  *&v3[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_containmentParentMapItem] = 0;
  *&v3[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_collectionHandler] = 0;
  v7 = OBJC_IVAR____TtC4Maps18PlaceTableViewCell_tappableContextLineModelID;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  if (a3)
  {

    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for PlaceTableViewCell(0);
  v10 = objc_msgSendSuper2(&v17, "initWithStyle:reuseIdentifier:", a1, v9);

  v11 = v10;
  if (a3)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v10 setAccessibilityIdentifier:v12];

  v13 = v10;
  v14 = [v13 contentView];
  v15 = [objc_opt_self() clearColor];
  [v14 setBackgroundColor:v15];

  [v13 setSelectionStyle:0];
  return v13;
}

id sub_100161FEC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = *&v5[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_template];
  *&v5[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_template] = a1;
  v11 = a1;

  v12 = &v5[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_query];
  *v12 = a2;
  *(v12 + 1) = a3;

  v13 = *&v5[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_asyncDataManager];
  *&v5[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_asyncDataManager] = a4;
  v14 = a4;

  swift_unknownObjectWeakAssign();
  if (!a1)
  {
    goto LABEL_7;
  }

  v15 = v11;
  if (!_UISolariumEnabled())
  {

LABEL_7:
    v19 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor:v19];
    goto LABEL_8;
  }

  v16 = v15[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase];
  v17 = objc_opt_self();
  v18 = &selRef_secondarySystemGroupedBackgroundColor;
  if (v16 != 1)
  {
    v18 = &selRef_clearColor;
  }

  v19 = [v17 *v18];
  [v5 setBackgroundColor:v19];

LABEL_8:

  return sub_1001655D4();
}

void sub_100162230(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v5 - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v2[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel];
  if (v16)
  {
    v17 = a1 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    return;
  }

  v34 = a2;
  v35 = v11;
  v33 = v2;
  v18 = v16;

  v19 = sub_100222634(13);
  if (!v19)
  {

    return;
  }

  v29[0] = v9;
  v29[1] = v7;
  v30 = v8;
  v36 = _swiftEmptyArrayStorage;
  v20 = v19[2];
  if (v20)
  {
    v31 = v18;
    v32 = v19;
    v21 = v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v22 = *(v13 + 72);
    v23 = _swiftEmptyArrayStorage;
    do
    {
      sub_10016E8C0(v21, v15, type metadata accessor for PlaceSummaryViewModelUnit);
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        swift_beginAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v23 = v36;
      }

      else
      {
        sub_10016EA4C(v15, type metadata accessor for PlaceSummaryViewModelUnit);
      }

      v21 += v22;
      --v20;
    }

    while (v20);
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
  }

  v24 = v35;
  if (v23 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_23;
    }

LABEL_32:

    return;
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

LABEL_23:
  if (!v34 || (v25 = [v34 _realTimeAvailableEVCharger]) == 0)
  {

    return;
  }

  v26 = v25;
  if (v23 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_27;
    }

LABEL_34:

    goto LABEL_35;
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_27:
  if ((v23 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();

    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v27)
  {
LABEL_29:
    sub_1004CE7A4(v26, 0);
    sub_1000CE6B8(&qword_10190D578, &qword_1011FD2B0);
    type metadata accessor for ContextLineAccessoryViewModel();
    *(swift_allocObject() + 16) = xmmword_1011E1D30;
    v28 = *(sub_1000CE6B8(&unk_101926E60, &qword_1011EA1F0) + 48);
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v24[v28] = 1;
    (*(v29[0] + 104))(v24, enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.realTimeCharger(_:), v30);
    ContextLineAccessoryViewModel.init(type:)();
    dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
    [v33 updateContextLinesToDisplayVisitedState];
LABEL_35:

    return;
  }

  __break(1u);
}

void sub_1001628C8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlaceTableViewCell(0);
  objc_msgSendSuper2(&v3, "prepareForReuse");
  *&v0[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel] = 0;

  swift_unknownObjectWeakAssign();
  v1 = *&v0[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_containmentParentMapItem];
  *&v0[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_containmentParentMapItem] = 0;

  v2 = *&v0[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_collectionHandler];
  *&v0[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_collectionHandler] = 0;
}

void sub_100162998()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_10190D618, &qword_1011EA2F0);
  v26 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  __chkstk_darwin(v11);
  v25 = &v24 - v12;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v14 = type metadata accessor for PlaceTableViewCell(0);
  v28.receiver = v0;
  v28.super_class = v14;
  objc_msgSendSuper2(&v28, "_bridgedUpdateConfigurationUsingState:", isa);

  v15 = *&v0[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel];
  if (v15)
  {
    v16 = *&v0[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_template];
    if (v16)
    {
      v17 = v16;

      v18 = UICellConfigurationState.traitCollection.getter();
      [v18 userInterfaceStyle];

      v19 = swift_allocObject();
      v20 = swift_unknownObjectWeakInit();
      __chkstk_darwin(v20);
      *(&v24 - 4) = v17;
      *(&v24 - 3) = v15;
      v24 = v15;
      *(&v24 - 2) = v1;
      *(&v24 - 1) = v19;
      sub_1000CE6B8(&qword_10190D620, &qword_1011EA2F8);
      sub_10016EBE8();
      UIHostingConfiguration<>.init(content:)();

      static Edge.Set.leading.getter();
      v21 = v26;
      UIHostingConfiguration.margins(_:_:)();
      v22 = *(v21 + 8);
      v22(v4, v2);
      static Edge.Set.trailing.getter();
      UIHostingConfiguration.margins(_:_:)();
      v22(v7, v2);
      static Edge.Set.top.getter();
      v23 = v25;
      UIHostingConfiguration.margins(_:_:)();
      v22(v10, v2);
      static Edge.Set.bottom.getter();
      v27[3] = v2;
      v27[4] = sub_1000414C8(&qword_10190D6A0, &qword_10190D618, &qword_1011EA2F0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      sub_10001A848(v27);
      UIHostingConfiguration.margins(_:_:)();
      v22(v23, v2);
      UITableViewCell.contentConfiguration.setter();
    }
  }
}

uint64_t sub_100162DF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = type metadata accessor for SearchCell.SearchCellType();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v43 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchCell();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v44 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000CE6B8(&qword_10190D660, &qword_1011EA310);
  __chkstk_darwin(v40);
  v10 = v39 - v9;
  v11 = sub_1000CE6B8(&qword_10190D650, &qword_1011EA308);
  __chkstk_darwin(v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = v39 - v15;
  v16 = sub_1000CE6B8(&unk_10190D6D0, &unk_1011EA380);
  __chkstk_darwin(v16);
  v18 = v39 - v17;
  v19 = type metadata accessor for PlaceCell();
  v20 = a1;
  v21 = *(v19 - 8);
  __chkstk_darwin(v19);
  v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v20 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) == 1)
  {
    v50 = type metadata accessor for ListCellViewModel();
    v51 = sub_100041360(&qword_10190B068, &type metadata accessor for ListCellViewModel, &protocol conformance descriptor for ListCellViewModel);
    v49 = a2;

    PlaceCell.init(model:tapHandler:)();
    (*(v21 + 16))(v18, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_100041360(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
    sub_10016ED5C();
    _ConditionalContent<>.init(storage:)();
    return (*(v21 + 8))(v23, v19);
  }

  else
  {
    v39[1] = v19;
    v25 = sub_100217754();
    v39[0] = v16;
    if (v25)
    {

      v26 = &enum case for SearchCell.SearchCellType.carousel(_:);
    }

    else
    {
      v26 = &enum case for SearchCell.SearchCellType.photo(_:);
      if ([v20 trailingEntityType] != 1 && objc_msgSend(v20, "trailingEntityType") != 11)
      {
        v26 = &enum case for SearchCell.SearchCellType.action(_:);
      }
    }

    (*(v41 + 104))(v43, *v26, v42);
    v50 = type metadata accessor for ListCellViewModel();
    v51 = sub_100041360(&qword_10190B068, &type metadata accessor for ListCellViewModel, &protocol conformance descriptor for ListCellViewModel);
    v49 = a2;

    v27 = v44;
    SearchCell.init(_:model:tapHandler:)();
    v28 = static Alignment.center.getter();
    v30 = v29;
    v31 = &v10[*(v40 + 36)];
    sub_100163454(v20, v31);
    v32 = (v31 + *(sub_1000CE6B8(&qword_10190D678, &qword_1011EA318) + 36));
    *v32 = v28;
    v32[1] = v30;
    (*(v45 + 32))(v10, v27, v46);
    v33 = static Alignment.center.getter();
    v35 = v34;
    v36 = &v13[*(v11 + 36)];
    sub_100163614(v20, v36);
    v37 = (v36 + *(sub_1000CE6B8(&qword_10190D688, &unk_1011EA320) + 36));
    *v37 = v33;
    v37[1] = v35;
    sub_1000F11C4(v10, v13, &qword_10190D660, &qword_1011EA310);
    v38 = v47;
    sub_1000F11C4(v13, v47, &qword_10190D650, &qword_1011EA308);
    sub_1000D2DFC(v38, v18, &qword_10190D650, &qword_1011EA308);
    swift_storeEnumTagMultiPayload();
    sub_100041360(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
    sub_10016ED5C();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v38, &qword_10190D650, &qword_1011EA308);
  }
}

uint64_t sub_100163454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InsetGroupedUIPlatter();
  v6.n128_f64[0] = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) == 2 && (v9 = *(a1 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics)) != 0 && *(v9 + OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_showPlatter) == 1)
  {
    v13 = v5;
    InsetGroupedUIPlatter.init(topLeft:topRight:bottomLeft:bottomRight:)();
    (*(v13 + 32))(a2, v8, v4);
    return (*(v13 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v11 = *(v5 + 56);

    return v11(a2, 1, 1, v4, v6);
  }
}

uint64_t sub_100163614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_10190D6E0, &unk_1011F5F20);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = sub_1000CE6B8(&qword_10190D6E8, &unk_1011EA390);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = *(a1 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics);
  if (v15 && *(v15 + OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_showsDivider) == 1)
  {
    v31 = v11;
    Divider.init()();
    v16 = static Edge.Set.top.getter();
    v17 = &v6[*(sub_1000CE6B8(&qword_10190D6F0, &qword_1011F5F30) + 36)];
    *v17 = v16;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    v17[40] = 1;
    v18 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v19 = &v6[*(v4 + 36)];
    *v19 = v18;
    *(v19 + 1) = v20;
    *(v19 + 2) = v21;
    *(v19 + 3) = v22;
    *(v19 + 4) = v23;
    v19[40] = 0;
    static Alignment.bottom.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1000F11C4(v6, v9, &qword_10190D6E0, &unk_1011F5F20);
    v24 = &v9[*(v7 + 36)];
    v25 = v37;
    *(v24 + 4) = v36;
    *(v24 + 5) = v25;
    *(v24 + 6) = v38;
    v26 = v33;
    *v24 = v32;
    *(v24 + 1) = v26;
    v27 = v35;
    *(v24 + 2) = v34;
    *(v24 + 3) = v27;
    sub_1000F11C4(v9, v14, &qword_10190D6E8, &unk_1011EA390);
    sub_1000F11C4(v14, a2, &qword_10190D6E8, &unk_1011EA390);
    return (*(v31 + 56))(a2, 0, 1, v7);
  }

  else
  {
    v29 = *(v11 + 56);

    return v29(a2, 1, 1, v7, v12);
  }
}

uint64_t sub_100163920@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_100162DF8(a1, a2, a4);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  result = sub_1000CE6B8(&qword_10190D620, &qword_1011EA2F8);
  v9 = (a4 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_10016EEFC;
  v9[2] = v6;
  return result;
}

void sub_1001639E4(void *a1, uint64_t a2)
{
  v184 = a1;
  v178 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
  __chkstk_darwin(v178);
  v179 = &v165 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  v182 = *(v3 - 8);
  v183 = v3;
  __chkstk_darwin(v3);
  v181 = &v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&unk_101918E50, &unk_1011E4770);
  __chkstk_darwin(v5 - 8);
  v7 = &v165 - v6;
  v169 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
  __chkstk_darwin(v169);
  v168 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v171 = &v165 - v10;
  v11 = sub_1000CE6B8(&qword_10190D6A8, &qword_1011EA360);
  __chkstk_darwin(v11 - 8);
  v180 = &v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v172 = &v165 - v14;
  __chkstk_darwin(v15);
  v173 = &v165 - v16;
  __chkstk_darwin(v17);
  v174 = &v165 - v18;
  v19 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
  __chkstk_darwin(v19);
  v170 = &v165 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button(0);
  v175 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PlaceSummaryViewModelActionButtons.Button(0);
  v176 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v177 = &v165 - v28;
  v29 = type metadata accessor for AccessoryType();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = (&v165 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = OBJC_IVAR____TtC4Maps18PlaceTableViewCell_template;
  if (!*&Strong[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_template])
  {

    return;
  }

  v166 = *&Strong[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_template];
  v167 = Strong;
  (*(v30 + 16))(v32, v184, v29);
  v35 = (*(v30 + 88))(v32, v29);
  if (v35 == enum case for AccessoryType.custom(_:))
  {
    (*(v30 + 96))(v32, v29);
    v37 = *v32;
    v36 = v32[1];
    v38 = OBJC_IVAR____TtC4Maps18PlaceTableViewCell_tappableContextLineModelID;
    v39 = v167;
    swift_beginAccess();
    sub_1000D2DFC(&v39[v38], v7, &unk_101918E50, &unk_1011E4770);
    v41 = v182;
    v40 = v183;
    if ((*(v182 + 48))(v7, 1, v183))
    {

      sub_100024F64(v7, &unk_101918E50, &unk_1011E4770);
      return;
    }

    v76 = v181;
    (*(v41 + 16))(v181, v7, v40);
    v77 = v166;
    sub_100024F64(v7, &unk_101918E50, &unk_1011E4770);
    v78 = UUID.uuidString.getter();
    v80 = v79;
    (*(v41 + 8))(v76, v40);
    if (v37 == v78 && v36 == v80)
    {

LABEL_52:
      v101 = v180;
      sub_100217BE0(10, v180);
      v102 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      if ((*(*(v102 - 8) + 48))(v101, 1, v102) == 1)
      {

LABEL_54:
        sub_100024F64(v101, &qword_10190D6A8, &qword_1011EA360);
        return;
      }

      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v103 = v179;
        sub_10016EF04(v101, v179, type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry);
        v104 = v167;
        v105 = swift_unknownObjectWeakLoadStrong();
        if (v105)
        {
          [v105 didTapOnTappableEntryWithMapItemIdentifier:*(v103 + *(v178 + 24)) cell:v104];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v133 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry;
LABEL_95:
        sub_10016EA4C(v103, v133);
        return;
      }

LABEL_65:
      sub_10016EA4C(v101, type metadata accessor for PlaceSummaryViewModelUnit);
      return;
    }

    v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v100)
    {
      goto LABEL_52;
    }

LABEL_71:

    return;
  }

  if (v35 == enum case for AccessoryType.image(_:))
  {
    (*(v30 + 96))(v32, v29);
    v42 = *v32;
    v43 = v32[1];
    v44 = v166;
    v45 = sub_1003861CC(v42, v43);
    if (v46)
    {
      goto LABEL_63;
    }

    v47 = v45;
    v48 = sub_100217754();
    if (!v48)
    {
      goto LABEL_63;
    }

    v23 = v48;
    v49 = [*(v48 + OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel_mapItem) _searchResultPhotoCarousel];
    if (v49)
    {
      v50 = v49;
      sub_1000CE6B8(&qword_10190ABA0, qword_1011E4C20);
      v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v51 >> 62)
      {
        v52 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v47 < v52)
      {
        v53 = v167;
        v54 = swift_unknownObjectWeakLoadStrong();
        if (v54)
        {
          [v54 didSelectPhotoCarouselImage:v53 photoIndex:v47];

LABEL_16:
          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_92;
      }

LABEL_63:

LABEL_100:
      return;
    }

    goto LABEL_177;
  }

  if (v35 == enum case for AccessoryType.action(_:))
  {
    v55 = *(v30 + 96);
    v30 += 96;
    v55(v32, v29);
    v57 = *v32;
    v56 = v32[1];
    v58 = OBJC_IVAR____TtC4Maps18PlaceTableViewCell_mappedActionButtons;
    v59 = *&v167[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_mappedActionButtons];
    if (v59)
    {
      v60 = *(v59 + 16);
      if (v60)
      {
        v29 = 0;
        v32 = (v59 + 40);
        while (1)
        {
          v61 = *(v32 - 1) == v57 && *v32 == v56;
          if (v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v29;
          v32 += 4;
          if (v60 == v29)
          {
            goto LABEL_27;
          }
        }

        v77 = v166;

        v110 = *&v77[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons + 8];
        if (!v110)
        {
          goto LABEL_71;
        }

        if (v29 < *(v110 + 16))
        {
          sub_10016E8C0(v110 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v29, v26, type metadata accessor for PlaceSummaryViewModelActionButtons.Button);
          v111 = v177;
          sub_10016EF04(v26, v177, type metadata accessor for PlaceSummaryViewModelActionButtons.Button);
          swift_unknownObjectRetain();
          objc_opt_self();
          v112 = swift_dynamicCastObjCClass();
          if (v112)
          {
            v113 = v112;
            v114 = v167;
            v115 = swift_unknownObjectWeakLoadStrong();
            if (v115)
            {
              [v115 didSelectAction:v113 buttonIndex:*(v111 + *(v24 + 28)) cell:v114];

              swift_unknownObjectRelease();
LABEL_114:
              swift_unknownObjectRelease();
              sub_10016EA4C(v111, type metadata accessor for PlaceSummaryViewModelActionButtons.Button);
              return;
            }
          }

          else
          {
          }

          goto LABEL_114;
        }

        __break(1u);
LABEL_171:

        (*(v30 + 8))(v32, v29);
        return;
      }
    }

LABEL_27:
    v62 = qword_101906728;
    v63 = v166;
    if (v62 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100021540(v64, qword_101960018);
    v65 = v167;
    v66 = v167;

    v44 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v67))
    {
      v184 = v63;
      v68 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v185 = v183;
      *v68 = 136315650;
      v69 = sub_10004DEB8(v57, v56, &v185);

      *(v68 + 4) = v69;
      *(v68 + 12) = 2080;
      v186[0] = *&v65[v58];

      sub_1000CE6B8(&qword_10190D6B8, &qword_1011EA368);
      v70 = String.init<A>(describing:)();
      v72 = sub_10004DEB8(v70, v71, &v185);

      *(v68 + 14) = v72;
      *(v68 + 22) = 2080;
      v73 = *&v65[v34];
      if (v73)
      {
        v74 = *(v73 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons);
      }

      else
      {
        v74 = 0;
        v75 = 0;
      }

      v63 = v184;
      v186[0] = v74;
      v186[1] = v75;
      sub_1000CE6B8(&qword_10190D6C8, &qword_1011EA378);
      v118 = String.init<A>(describing:)();
      v120 = sub_10004DEB8(v118, v119, &v185);

      *(v68 + 24) = v120;
      _os_log_impl(&_mh_execute_header, v44, v67, "[Place Summary] Unable to find action button for id:%s, mappedActionButtons: %s actionButtons: %s", v68, 0x20u);
      swift_arrayDestroy();

LABEL_98:

      goto LABEL_99;
    }

    goto LABEL_78;
  }

  if (v35 == enum case for AccessoryType.refinement(_:))
  {
    (*(v30 + 96))(v32, v29);
    v82 = *v32;
    v81 = v32[1];
    v83 = OBJC_IVAR____TtC4Maps18PlaceTableViewCell_mappedRefinementButtons;
    v84 = *&v167[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_mappedRefinementButtons];
    if (!v84 || (v85 = *(v84 + 16)) == 0)
    {
LABEL_45:
      v89 = qword_101906728;
      v63 = v166;
      if (v89 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_100021540(v90, qword_101960018);
      v91 = v167;
      v66 = v167;

      v44 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v92))
      {
        v184 = v63;
        v93 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v186[0] = v183;
        *v93 = 136315650;
        v94 = sub_10004DEB8(v82, v81, v186);

        *(v93 + 4) = v94;
        *(v93 + 12) = 2080;
        v185 = *&v91[v83];

        sub_1000CE6B8(&qword_10190D6B8, &qword_1011EA368);
        v95 = String.init<A>(describing:)();
        v97 = sub_10004DEB8(v95, v96, v186);

        *(v93 + 14) = v97;
        *(v93 + 22) = 2080;
        v98 = *&v91[v34];
        if (v98)
        {
          v99 = *(v98 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons);
          if (v99)
          {
          }
        }

        else
        {
          v99 = 0;
        }

        v63 = v184;
        v185 = v99;
        sub_1000CE6B8(&qword_10190D6C0, &qword_1011EA370);
        v134 = String.init<A>(describing:)();
        v136 = sub_10004DEB8(v134, v135, v186);

        *(v93 + 24) = v136;
        _os_log_impl(&_mh_execute_header, v44, v92, "[Place Summary] Unable to find refinement button for id:%s, mappedActionButtons: %s actionButtons: %s", v93, 0x20u);
        swift_arrayDestroy();

        goto LABEL_98;
      }

LABEL_78:

LABEL_99:

      goto LABEL_100;
    }

    v86 = 0;
    v87 = (v84 + 40);
    while (1)
    {
      v88 = *(v87 - 1) == v82 && *v87 == v81;
      if (v88 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v86;
      v87 += 4;
      if (v85 == v86)
      {
        goto LABEL_45;
      }
    }

    v44 = v166;

    v121 = *(&v44->isa + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons);
    if (!v121)
    {
      goto LABEL_63;
    }

    v122 = *(v121 + 16);

    if (v86 < v122)
    {
      sub_10016E8C0(v121 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v86, v23, type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button);

      swift_unknownObjectRetain();
      sub_10016EA4C(v23, type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button);
      objc_opt_self();
      v123 = swift_dynamicCastObjCClass();
      if (v123)
      {
        v124 = v123;
        v125 = v167;
        v126 = swift_unknownObjectWeakLoadStrong();
        if (v126)
        {
          [v126 didSelectRefinement:v124 cell:v125];

          swift_unknownObjectRelease();
          goto LABEL_16;
        }
      }

      else
      {
      }

      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
    goto LABEL_173;
  }

  if (v35 == enum case for AccessoryType.call(_:))
  {
    v106 = v167;
    v107 = swift_unknownObjectWeakLoadStrong();
    if (v107)
    {
      v108 = v107;
      v44 = v166;
      v109 = "didTapOnAccessoryEntityCallWithCell:";
LABEL_75:
      v117 = v108;
LABEL_76:
      [v117 v109];

      goto LABEL_77;
    }

    goto LABEL_79;
  }

  if (v35 == enum case for AccessoryType.queryBuilder(_:))
  {
    v106 = v167;
    v116 = swift_unknownObjectWeakLoadStrong();
    if (v116)
    {
      v108 = v116;
      v44 = v166;
      v109 = "didTapOnAccessoryEntityQueryAcceleratorWithCell:";
      goto LABEL_75;
    }

LABEL_79:

    return;
  }

  if (v35 == enum case for AccessoryType.containment(_:))
  {
    v127 = v167;
    v128 = *&v167[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_containmentParentMapItem];
    if (v128)
    {
      v129 = swift_unknownObjectWeakLoadStrong();
      if (v129)
      {
        v130 = v129;
        v131 = v166;
        v132 = v128;
        [v130 didSelectContainment:v132 cell:v127];
LABEL_91:

        goto LABEL_16;
      }
    }

    goto LABEL_119;
  }

  if (v35 == enum case for AccessoryType.inLibrary(_:))
  {
    v44 = v166;
    v137 = sub_1002179C8();
    if (!v137)
    {
      goto LABEL_63;
    }

    v23 = v137;
    v121 = v137 & 0xFFFFFFFFFFFFFF8;
    if (!(v137 >> 62))
    {
      if (!*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_174:

        return;
      }

      goto LABEL_106;
    }

LABEL_173:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_174;
    }

LABEL_106:
    if ((v23 & 0xC000000000000001) != 0)
    {
      v138 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v121 + 16))
      {
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v138 = *(v23 + 32);
    }

    v53 = v167;
    v139 = swift_unknownObjectWeakLoadStrong();
    if (!v139)
    {
LABEL_92:

      goto LABEL_100;
    }

    v140 = v139;
    v141 = *(v138 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit11UserLibrary_mapItem);
    [v140 didTapOnUserLibrary:v53 mapItem:v141];

LABEL_77:

    goto LABEL_16;
  }

  if (v35 == enum case for AccessoryType.inUserGuide(_:))
  {
    v127 = v167;
    v142 = *&v167[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_collectionHandler];
    if (v142)
    {
      v143 = swift_unknownObjectWeakLoadStrong();
      if (v143)
      {
        v144 = v143;
        v131 = v166;
        v132 = v142;
        [v144 didSelectUserGuide:v132 cell:v127];
        goto LABEL_91;
      }
    }

LABEL_119:

    return;
  }

  if (v35 == enum case for AccessoryType.featuredInGuide(_:))
  {
    v44 = v166;
    v101 = v174;
    sub_100217BE0(3, v174);
    v145 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    if ((*(*(v145 - 8) + 48))(v101, 1, v145) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v103 = v170;
        sub_10016EF04(v101, v170, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
        v146 = v167;
        v147 = swift_unknownObjectWeakLoadStrong();
        if (v147)
        {
          [v147 didSelectCuratedGuide:*(v103 + *(v19 + 32)) cell:v146];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v133 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide;
        goto LABEL_95;
      }

      goto LABEL_142;
    }

LABEL_141:

    goto LABEL_54;
  }

  if (v35 != enum case for AccessoryType.featuredInMultipleGuides(_:))
  {
    if (v35 == enum case for AccessoryType.featuredInMultipleGuidesOther(_:))
    {
      v44 = v166;
      v101 = v172;
      sub_100217BE0(2, v172);
      v153 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      if ((*(*(v153 - 8) + 48))(v101, 1, v153) != 1)
      {
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_10016EF04(v172, v168, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
          v156 = swift_unknownObjectWeakLoadStrong();
          if (v156)
          {
            v157 = v156;
            v158 = v168;
            sub_100014C84(0, &qword_10190D6B0, GEOPlaceCollection_ptr);
            isa = Array._bridgeToObjectiveC()().super.isa;
            v160 = v167;
            [v157 didSelectCuratedGuides:isa cell:v167];

            swift_unknownObjectRelease();
            sub_10016EA4C(v158, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
          }

          else
          {

            sub_10016EA4C(v168, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
          }
        }

        else
        {

          sub_10016EA4C(v172, type metadata accessor for PlaceSummaryViewModelUnit);
        }

        return;
      }

      goto LABEL_141;
    }

    if (v35 == enum case for AccessoryType.directions(_:))
    {
      v154 = swift_unknownObjectWeakLoadStrong();
      if (v154)
      {
        v155 = v154;
        v44 = v166;
        v109 = "didTapOnAccessoryEntityDirectionsWithCell:";
LABEL_168:
        v117 = v155;
        v106 = v167;
        goto LABEL_76;
      }
    }

    else if (v35 == enum case for AccessoryType.flyover(_:))
    {
      v161 = swift_unknownObjectWeakLoadStrong();
      if (v161)
      {
        v155 = v161;
        v44 = v166;
        v109 = "didTapOnAccessoryEntityFlyoverWithCell:";
        goto LABEL_168;
      }
    }

    else if (v35 == enum case for AccessoryType.lookAround(_:))
    {
      v162 = swift_unknownObjectWeakLoadStrong();
      if (v162)
      {
        v155 = v162;
        v44 = v166;
        v109 = "didTapOnAccessoryEntityLookAroundWithCell:";
        goto LABEL_168;
      }
    }

    else if (v35 == enum case for AccessoryType.website(_:))
    {
      v163 = swift_unknownObjectWeakLoadStrong();
      if (v163)
      {
        v155 = v163;
        v44 = v166;
        v109 = "didTapOnAccessoryEntityWebsiteWithCell:";
        goto LABEL_168;
      }
    }

    else
    {
      if (v35 != enum case for AccessoryType.addStop(_:))
      {
        goto LABEL_171;
      }

      v164 = swift_unknownObjectWeakLoadStrong();
      if (v164)
      {
        v155 = v164;
        v44 = v166;
        v109 = "didTapOnAddStop:";
        goto LABEL_168;
      }
    }

    return;
  }

  v44 = v166;
  v101 = v173;
  sub_100217BE0(2, v173);
  v148 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  if ((*(*(v148 - 8) + 48))(v101, 1, v148) == 1)
  {
    goto LABEL_141;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_142:

    goto LABEL_65;
  }

  v149 = v171;
  sub_10016EF04(v101, v171, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
  v23 = *(v149 + *(v169 + 24));
  if (!(v23 >> 62))
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_179:

      sub_10016EA4C(v171, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);

      goto LABEL_63;
    }

    goto LABEL_133;
  }

LABEL_178:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_179;
  }

LABEL_133:
  if ((v23 & 0xC000000000000001) != 0)
  {

    v150 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v150 = *(v23 + 32);
  }

  v151 = swift_unknownObjectWeakLoadStrong();
  if (v151)
  {
    v152 = v167;
    [v151 didSelectCuratedGuide:v150 cell:v167];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_10016EA4C(v171, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
}

id sub_1001655D4()
{
  v350 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
  __chkstk_darwin(v350);
  v2 = &v315 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000CE6B8(&unk_101918E50, &unk_1011E4770);
  __chkstk_darwin(v3 - 8);
  v349 = &v315 - v4;
  v348 = type metadata accessor for ContextLineAccessoryViewModel();
  v366 = *(v348 - 8);
  __chkstk_darwin(v348);
  v347 = &v315 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
  __chkstk_darwin(v6);
  v8 = &v315 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&qword_10190D5A0, &qword_1011EDF20);
  __chkstk_darwin(v9 - 8);
  v11 = &v315 - v10;
  v345 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
  __chkstk_darwin(v345);
  v360 = &v315 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = type metadata accessor for RichTextType();
  v335 = *(v354 - 8);
  __chkstk_darwin(v354);
  v353 = &v315 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v14 - 8);
  v352 = &v315 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AttributedString();
  v334 = *(v16 - 8);
  __chkstk_darwin(v16);
  v368 = &v315 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v351 = &v315 - v19;
  v358 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
  v333 = *(v358 - 8);
  __chkstk_darwin(v358);
  v341 = &v315 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v371 = &v315 - v22;
  v364 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType();
  v332 = *(v364 - 8);
  __chkstk_darwin(v364);
  v363 = (&v315 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for PlaceSummaryViewModelUnit.TransitShields(0);
  __chkstk_darwin(v24);
  v367 = &v315 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0);
  __chkstk_darwin(v26 - 8);
  v343 = &v315 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v28 - 8);
  v326 = &v315 - v29;
  v30 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v379 = *(v30 - 8);
  __chkstk_darwin(v30);
  v374 = (&v315 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v342 = (&v315 - v33);
  v346 = type metadata accessor for UUID();
  v331 = *(v346 - 8);
  __chkstk_darwin(v346);
  v359 = &v315 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = sub_1000CE6B8(&qword_10190D5A8, &unk_1011EA150);
  __chkstk_darwin(v383);
  v382 = &v315 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v381 = &v315 - v37;
  v376 = type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button(0);
  v330 = *(v376 - 8);
  __chkstk_darwin(v376);
  v375 = &v315 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = type metadata accessor for PlaceSummaryViewModelLine(0);
  *&v387 = *(v369 - 8);
  __chkstk_darwin(v369);
  v339 = &v315 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v344 = &v315 - v41;
  __chkstk_darwin(v42);
  v384 = &v315 - v43;
  __chkstk_darwin(v44);
  v373 = (&v315 - v45);
  v378 = type metadata accessor for PlaceSummaryViewModelActionButtons.Button(0);
  v336 = *(v378 - 8);
  __chkstk_darwin(v378);
  v377 = &v315 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = type metadata accessor for BottomAccessoryViewModel.BottomAccessoryType();
  v356 = *(v357 - 1);
  __chkstk_darwin(v357);
  v355 = (&v315 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_1000CE6B8(&unk_10190D5B0, &unk_1011E6660);
  __chkstk_darwin(v48 - 8);
  v361 = (&v315 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v50);
  v365 = &v315 - v51;
  v386 = v0;
  v52 = *&v0[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_template];
  if (!v52)
  {
    goto LABEL_5;
  }

  v324 = v24;
  v323 = v11;
  v325 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v52;
  static Published.subscript.getter();

  v54 = *(aBlock + 16);

  if (!v54)
  {

LABEL_5:
    v390 = 0;
    aBlock = 0u;
    v389 = 0u;
    return UITableViewCell.contentConfiguration.setter();
  }

  v380 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase;
  v385 = v53;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v56 = aBlock;
  if ((~aBlock & 0xF000000000000007) == 0)
  {
    goto LABEL_10;
  }

  if (aBlock >> 61)
  {
    sub_10013BD74(aBlock);
LABEL_10:
    v337 = 0;
    v56 = 0;
    goto LABEL_11;
  }

  type metadata accessor for PlaceSummaryImageProvider();
  v57 = swift_allocObject();
  v57[2] = v56;
  v57[3] = 0;
  v57[4] = 0;
  v57[5] = 0;
  v337 = v57;
LABEL_11:
  v321 = v56;
  if (v385[v380] == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((~aBlock & 0xF000000000000007) != 0)
    {
      if (aBlock >> 61 == 3)
      {
        v58 = aBlock & 0x1FFFFFFFFFFFFFFFLL;
        v320 = aBlock & 0x1FFFFFFFFFFFFFFFLL;
        if (!v321)
        {
          sub_10013BAE8(aBlock);

          type metadata accessor for PlaceSummaryImageProvider();
          v59 = swift_allocObject();
          v59[2] = 0;
          v59[3] = 0;
          v59[4] = 0;
          v59[5] = v58;
          v337 = v59;
        }

        goto LABEL_18;
      }

      sub_10013BD74(aBlock);
    }
  }

  v320 = 0;
LABEL_18:
  v60 = type metadata accessor for BottomAccessoryViewModel();
  v61 = *(v60 - 8);
  v62 = *(v61 + 56);
  *&v329 = v60;
  v328 = v62;
  v327 = (v61 + 56);
  (v62)(v365, 1, 1);
  v63 = sub_100217754();
  v340 = v2;
  v322 = v8;
  v338 = v16;
  v362 = v30;
  if (!v63)
  {
    goto LABEL_35;
  }

  v64 = v63;
  result = [*(v63 + OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel_mapItem) _searchResultPhotoCarousel];
  if (!result)
  {
LABEL_164:
    __break(1u);
    return result;
  }

  v65 = result;
  sub_1000CE6B8(&qword_10190ABA0, qword_1011E4C20);
  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v319 = v64;
  if (v66 >> 62)
  {
    goto LABEL_162;
  }

  v370 = v66 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v67 = 0;
    v68 = _swiftEmptyArrayStorage;
    do
    {
      if (i == v67)
      {
        break;
      }

      if ((v66 & 0xC000000000000001) != 0)
      {
        v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v67 >= *(v370 + 16))
        {
          goto LABEL_160;
        }

        v69 = *(v66 + 8 * v67 + 32);
        swift_unknownObjectRetain();
      }

      *&aBlock = v67;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      type metadata accessor for PlaceSummaryImageProvider();
      v73 = swift_allocObject();
      v73[2] = 0;
      v73[3] = 0;
      v73[4] = v69;
      v73[5] = 0;
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_100356914(0, v68[2] + 1, 1, v68);
      }

      v75 = v68[2];
      v74 = v68[3];
      if (v75 >= v74 >> 1)
      {
        v68 = sub_100356914((v74 > 1), v75 + 1, 1, v68);
      }

      ++v67;
      swift_unknownObjectRelease();
      v68[2] = v75 + 1;
      v76 = &v68[3 * v75];
      v76[4] = v70;
      v76[5] = v72;
      v76[6] = v73;
    }

    while (v67 != 3);

    v77 = sub_100192EB4(v68);

    v78 = v355;
    *v355 = v77;
    (v356[13])(v78, enum case for BottomAccessoryViewModel.BottomAccessoryType.photos(_:), v357);
    v79 = v361;
    BottomAccessoryViewModel.init(type:)();

    v80 = v365;
    sub_100024F64(v365, &unk_10190D5B0, &unk_1011E6660);
    (v328)(v79, 0, 1, v329);
    sub_1000F11C4(v79, v80, &unk_10190D5B0, &unk_1011E6660);
LABEL_35:
    v81 = *&v385[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons + 8];
    if (v81)
    {
      v82 = *(v81 + 16);

      v83 = _swiftEmptyArrayStorage;
      if (v82)
      {
        *&aBlock = _swiftEmptyArrayStorage;

        sub_1005113D4(0, v82, 0);
        v83 = aBlock;
        v84 = (*(v336 + 80) + 32) & ~*(v336 + 80);
        v370 = v81;
        v85 = v81 + v84;
        i = *(v336 + 72);
        do
        {
          v86 = v377;
          sub_10016E8C0(v85, v377, type metadata accessor for PlaceSummaryViewModelActionButtons.Button);
          v87 = UUID.uuidString.getter();
          v89 = v88;
          v90 = &v86[*(v378 + 20)];
          v91 = *v90;
          v92 = *(v90 + 1);

          sub_10016EA4C(v86, type metadata accessor for PlaceSummaryViewModelActionButtons.Button);
          *&aBlock = v83;
          v94 = v83[2];
          v93 = v83[3];
          if (v94 >= v93 >> 1)
          {
            sub_1005113D4((v93 > 1), v94 + 1, 1);
            v83 = aBlock;
          }

          v83[2] = v94 + 1;
          v95 = &v83[4 * v94];
          v95[4] = v87;
          v95[5] = v89;
          v95[6] = v91;
          v95[7] = v92;
          v85 += i;
          --v82;
        }

        while (v82);
        v81 = v370;
      }
    }

    else
    {
      v83 = 0;
    }

    *&v386[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_mappedActionButtons] = v83;

    if (v83)
    {
      v96 = sub_100193008(v83);

      v97 = v355;
      *v355 = v96;
      (v356[13])(v97, enum case for BottomAccessoryViewModel.BottomAccessoryType.actions(_:), v357);
      v98 = v361;
      BottomAccessoryViewModel.init(type:)();
      v99 = v365;
      sub_100024F64(v365, &unk_10190D5B0, &unk_1011E6660);
      (v328)(v98, 0, 1, v329);
      sub_1000F11C4(v98, v99, &unk_10190D5B0, &unk_1011E6660);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v66 = aBlock;
    v100 = *(aBlock + 16);
    v101 = _swiftEmptyArrayStorage;
    if (!v100)
    {
      break;
    }

    v102 = 0;
    v103 = v369;
    v104 = v373;
    while (v102 < *(v66 + 16))
    {
      v105 = (*(v387 + 80) + 32) & ~*(v387 + 80);
      v106 = *(v387 + 72);
      sub_10016E8C0(v66 + v105 + v106 * v102, v104, type metadata accessor for PlaceSummaryViewModelLine);
      if (*(v104 + *(v103 + 24)))
      {
        sub_10016EA4C(v104, type metadata accessor for PlaceSummaryViewModelLine);
      }

      else
      {
        sub_10016EF04(v104, v384, type metadata accessor for PlaceSummaryViewModelLine);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&aBlock = v101;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100511330(0, v101[2] + 1, 1);
          v103 = v369;
          v101 = aBlock;
        }

        v109 = v101[2];
        v108 = v101[3];
        if (v109 >= v108 >> 1)
        {
          sub_100511330((v108 > 1), v109 + 1, 1);
          v103 = v369;
          v101 = aBlock;
        }

        v101[2] = v109 + 1;
        sub_10016EF04(v384, v101 + v105 + v109 * v106, type metadata accessor for PlaceSummaryViewModelLine);
        v104 = v373;
      }

      if (v100 == ++v102)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    v370 = v66 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_56:

  v110 = v385;
  v111 = *&v385[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons];
  v384 = v101;
  v370 = v81;
  if (v111)
  {
    v112 = *(v111 + 2);

    v113 = _swiftEmptyArrayStorage;
    if (v112)
    {
      *&aBlock = _swiftEmptyArrayStorage;

      sub_1005113D4(0, v112, 0);
      v113 = aBlock;
      v114 = (*(v330 + 80) + 32) & ~*(v330 + 80);
      v377 = v111;
      v115 = &v111[v114];
      v378 = *(v330 + 72);
      do
      {
        v116 = v375;
        sub_10016E8C0(v115, v375, type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button);
        v117 = UUID.uuidString.getter();
        v119 = v118;
        v120 = (v116 + *(v376 + 20));
        v121 = *v120;
        v122 = v120[1];

        sub_10016EA4C(v116, type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button);
        *&aBlock = v113;
        v124 = v113[2];
        v123 = v113[3];
        if (v124 >= v123 >> 1)
        {
          sub_1005113D4((v123 > 1), v124 + 1, 1);
          v113 = aBlock;
        }

        v113[2] = v124 + 1;
        v125 = &v113[4 * v124];
        v125[4] = v117;
        v125[5] = v119;
        v125[6] = v121;
        v125[7] = v122;
        v115 += v378;
        --v112;
      }

      while (v112);
      v111 = v377;

      v101 = v384;
      v110 = v385;
    }
  }

  else
  {
    v113 = 0;
  }

  v126 = v337;
  *&v386[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_mappedRefinementButtons] = v113;

  if (v113)
  {
    v127 = sub_100193008(v113);

    v128 = v355;
    *v355 = v127;
    (v356[13])(v128, enum case for BottomAccessoryViewModel.BottomAccessoryType.refinement(_:), v357);
    v129 = v361;
    BottomAccessoryViewModel.init(type:)();
    v130 = v365;
    sub_100024F64(v365, &unk_10190D5B0, &unk_1011E6660);
    (v328)(v129, 0, 1, v329);
    v101 = v384;
    sub_1000F11C4(v129, v130, &unk_10190D5B0, &unk_1011E6660);
  }

  if (v126)
  {
    v131 = type metadata accessor for PlaceSummaryImageProvider();
    v132 = sub_100041360(&unk_10190D5E0, type metadata accessor for PlaceSummaryImageProvider, &unk_1011F4220);
    v133 = v126;
  }

  else
  {
    v133 = 0;
    v131 = 0;
    v132 = 0;
    *(&aBlock + 1) = 0;
    *&v389 = 0;
  }

  *&aBlock = v133;
  *(&v389 + 1) = v131;
  v390 = v132;
  v394 = 0;
  memset(v393, 0, sizeof(v393));
  v134 = *&v386[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_query + 8];
  v66 = v101[2];
  if (v66)
  {
    v378 = *&v386[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_query];
    v377 = v111;
    v392 = _swiftEmptyArrayStorage;

    v376 = v134;

    sub_100511394(0, v66, 0);
    v135 = 0;
    v136 = v392;
    v137 = v101[2];
    v138 = v101 + ((*(v387 + 80) + 32) & ~*(v387 + 80));
    v139 = v382;
    while (v137 != v135)
    {
      if (v135 >= v101[2])
      {
        goto LABEL_158;
      }

      v140 = v383;
      v141 = *(v383 + 48);
      v142 = v381;
      sub_10016E8C0(&v138[*(v387 + 72) * v135], &v381[v141], type metadata accessor for PlaceSummaryViewModelLine);
      *v139 = v135;
      sub_10016EF04(&v142[v141], v139 + *(v140 + 48), type metadata accessor for PlaceSummaryViewModelLine);
      v143 = sub_1002180A8(v135 == 0, v110[v380]);
      sub_100024F64(v139, &qword_10190D5A8, &unk_1011EA150);
      v392 = v136;
      v145 = v136[2];
      v144 = v136[3];
      if (v145 >= v144 >> 1)
      {
        sub_100511394((v144 > 1), v145 + 1, 1);
        v136 = v392;
      }

      ++v135;
      v136[2] = v145 + 1;
      v136[v145 + 4] = v143;
      v101 = v384;
      v110 = v385;
      if (v66 == v135)
      {

        v66 = v367;
        goto LABEL_78;
      }
    }

    goto LABEL_157;
  }

  v66 = v367;
LABEL_78:
  sub_1000D2DFC(v365, v361, &unk_10190D5B0, &unk_1011E6660);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  v146 = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
  v384 = OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel;
  *&v386[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel] = v146;

  sub_10021C698(1);
  v148 = *(v147 + 16);
  v149 = v368;
  v150 = v362;
  v151 = v374;
  v152 = v342;
  if (v148 != 1)
  {
    goto LABEL_87;
  }

  v153 = *(v147 + ((*(v387 + 80) + 32) & ~*(v387 + 80)) + *(v369 + 20));
  if (*(v153 + 16) != 1)
  {
LABEL_88:
    v166 = v339;
    sub_10016E8C0(v147 + ((*(v387 + 80) + 32) & ~*(v387 + 80)), v339, type metadata accessor for PlaceSummaryViewModelLine);

    v167 = v344;
    sub_10016EF04(v166, v344, type metadata accessor for PlaceSummaryViewModelLine);
    v168 = *(v167 + *(v369 + 20));
    v169 = *(v168 + 16);
    v170 = v371;
    if (!v169)
    {
LABEL_149:
      sub_10016EA4C(v344, type metadata accessor for PlaceSummaryViewModelLine);
      v110 = v385;
      goto LABEL_151;
    }

    v171 = v150;
    v172 = 0;
    v375 = &v386[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_tappableContextLineModelID];
    v355 = OBJC_IVAR____TtC4Maps18PlaceTableViewCell_asyncDataManager;
    v173 = v168 + ((*(v379 + 80) + 32) & ~*(v379 + 80));
    v381 = (v332 + 104);
    LODWORD(v332) = enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.note(_:);
    v377 = (v335 + 104);
    v376 = v335 + 8;
    v373 = (v331 + 16);
    LODWORD(v335) = enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.realTimeCharger(_:);
    i = v331 + 56;
    v370 = v366 + 16;
    LODWORD(v378) = enum case for RichTextType.line(_:);
    v369 = v366 + 8;
    v361 = (v331 + 8);
    LODWORD(v331) = enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.customButton(_:);
    v327 = &v389;
    LODWORD(v330) = enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.transitShields(_:);
    v357 = 0x800000010121F570;
    LODWORD(v342) = enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.featuredInMultipleGuides(_:);
    v356 = (v334 + 1);
    v328 = (v333 + 48);
    v334 += 2;
    LODWORD(v333) = enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.custom(_:);
    v387 = xmmword_1011E1D30;
    v329 = xmmword_1011E47B0;
    v380 = v168;
    v382 = v169;
    v383 = v173;
    while (1)
    {
      if (v172 >= *(v168 + 16))
      {
        goto LABEL_159;
      }

      sub_10016E8C0(v173 + *(v379 + 72) * v172, v151, type metadata accessor for PlaceSummaryViewModelUnit);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 8)
      {
        if (EnumCaseMultiPayload <= 12)
        {
          if (EnumCaseMultiPayload != 9)
          {
            if (EnumCaseMultiPayload == 10)
            {
              v206 = v322;
              sub_10016EF04(v151, v322, type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry);
              if (*&v386[v384])
              {

                v207 = v359;
                UUID.init()();
                v208 = v207;
                v339 = UUID.uuidString.getter();
                v336 = v209;
                sub_1000CE6B8(&qword_10190A070, &unk_1011E78E0);
                type metadata accessor for RichTextViewModel();
                v210 = swift_allocObject();
                *(v210 + 16) = v387;
                v211 = v353;
                v212 = v354;
                (*v377)(v353, v378, v354);
                v213 = v206 + *(v325 + 20);
                v214 = v350;
                RichTextType.set(attributed:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
                (*v376)(v211, v212);
                v215 = *(v214 + 24);
                v216 = v386;
                v217 = (v213 + v215);
                v218 = *v217;
                v219 = v217[1];
                v220 = v363;
                v221 = v336;
                *v363 = v339;
                v220[1] = v221;
                v220[2] = v210;
                v220[3] = v218;
                v220[4] = v219;
                (*v381)(v220, v331, v364);

                v222 = v347;
                ContextLineAccessoryViewModel.init(type:)();
                v223 = v349;
                v224 = v208;
                v225 = v346;
                (*v373)(v349, v208, v346);
                (*i)(v223, 0, 1, v225);
                v226 = v375;
                swift_beginAccess();
                sub_10016E928(v223, v226);
                swift_endAccess();
                sub_1000CE6B8(&qword_10190D578, &qword_1011FD2B0);
                v227 = v366;
                v228 = (*(v366 + 80) + 32) & ~*(v366 + 80);
                v229 = swift_allocObject();
                *(v229 + 16) = v387;
                v230 = v229 + v228;
                v231 = v348;
                (*(v227 + 16))(v230, v222, v348);
                dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
                v151 = v374;
                [v216 updateContextLinesToDisplayVisitedState];

                v232 = *(v227 + 8);
                v149 = v368;
                v233 = v222;
                v173 = v383;
                v232(v233, v231);
                v234 = v225;
                v169 = v382;
                (*v361)(v224, v234);
              }

              sub_10016EA4C(v206, type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry);
              v170 = v371;
              v66 = v367;
              v171 = v362;
              v168 = v380;
              goto LABEL_93;
            }

            goto LABEL_138;
          }

          v258 = *v151;
          v259 = *(v355 + v386);
          if (v259)
          {
            v260 = *(v259 + OBJC_IVAR____TtC4Maps28PlaceSummaryAsyncDataManager_mapItemDownloader);
            v261 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v262 = objc_opt_self();
            v263 = v260;

            result = [v262 sharedService];
            if (!result)
            {
              __break(1u);
              goto LABEL_164;
            }

            v264 = result;
            sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
            v265 = swift_allocObject();
            *(v265 + 16) = v329;
            v266 = *(v258 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit17ContainmentParent_parentIdentifier);
            *(v265 + 32) = v266;
            sub_100014C84(0, &unk_101918370, MKMapItemIdentifier_ptr);
            v267 = v266;
            isa = Array._bridgeToObjectiveC()().super.isa;

            v269 = [v264 ticketForIdentifiers:isa traits:0];

            if (v269)
            {
              v270 = swift_allocObject();
              v270[2] = v258;
              v270[3] = sub_10016EAAC;
              v270[4] = v261;
              v390 = sub_10016EAB4;
              v391 = v270;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              *&v389 = sub_1002B00C4;
              *(&v389 + 1) = &unk_101606AF8;
              v271 = _Block_copy(&aBlock);

              [v269 submitWithHandler:v271 networkActivity:0];

              _Block_release(v271);

              swift_unknownObjectRelease();
            }

            else
            {
            }

            v149 = v368;
            v170 = v371;
            v151 = v374;
            v66 = v367;
            v169 = v382;
            v173 = v383;
            goto LABEL_148;
          }

LABEL_135:

LABEL_92:
          v151 = v374;
          goto LABEL_93;
        }

        if (EnumCaseMultiPayload == 13)
        {
          if (*&v386[v384])
          {
            v339 = *v151;
            swift_beginAccess();
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            v287 = aBlock != 0;
            sub_1000CE6B8(&qword_10190D578, &qword_1011FD2B0);
            *(swift_allocObject() + 16) = v387;
            v288 = *(sub_1000CE6B8(&unk_101926E60, &qword_1011EA1F0) + 48);
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            AttributeContainer.init()();
            v289 = v363;
            v173 = v383;
            AttributedString.init(_:attributes:)();
            *(v289 + v288) = v287;
            v169 = v382;
            (*v381)(v289, v335, v364);
            v168 = v380;
            v171 = v362;
            v66 = v367;
            ContextLineAccessoryViewModel.init(type:)();
            v149 = v368;
            dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
            [v386 updateContextLinesToDisplayVisitedState];

            v170 = v371;
          }

          goto LABEL_135;
        }

        if (EnumCaseMultiPayload != 15)
        {
          if (EnumCaseMultiPayload == 16)
          {
            v181 = *v151;
            if (*&v386[v384])
            {
              sub_1000CE6B8(&qword_10190D578, &qword_1011FD2B0);
              *(swift_allocObject() + 16) = v387;
              v182 = v66;
              v183 = *(v181 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_userNote);
              v184 = *(v181 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_userNote + 8);
              *&aBlock = 10256610;
              *(&aBlock + 1) = 0xA300000000000000;

              v185._countAndFlagsBits = v183;
              v185._object = v184;
              v173 = v383;
              String.append(_:)(v185);

              v186._countAndFlagsBits = 10322146;
              v186._object = 0xA300000000000000;
              String.append(_:)(v186);
              v66 = v182;
              v187 = v386;
              v188 = v380;

              v189 = *(&aBlock + 1);
              v190 = v363;
              *v363 = aBlock;
              v190[1] = v189;
              v190[2] = 0;
              *(v190 + 24) = 1;
              (*v381)(v190, v332, v364);
              v169 = v382;
              ContextLineAccessoryViewModel.init(type:)();
              v149 = v368;
              dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
              v151 = v374;
              v191 = v187;
              v168 = v188;
              [v191 updateContextLinesToDisplayVisitedState];
            }

            v170 = v371;
LABEL_148:
            v171 = v362;
            goto LABEL_93;
          }

LABEL_138:
          v293 = type metadata accessor for PlaceSummaryViewModelUnit;
          v294 = v151;
LABEL_139:
          sub_10016EA4C(v294, v293);
          goto LABEL_93;
        }

        sub_1001699BC(*v151);
        v151 = v374;
        v170 = v371;
      }

      else
      {
        if (EnumCaseMultiPayload > 2)
        {
          switch(EnumCaseMultiPayload)
          {
            case 3:
              sub_10016EF04(v151, v170, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
              if (*&v386[v384])
              {
                v272 = qword_101906768;

                if (v272 != -1)
                {
                  swift_once();
                }

                v396._object = v357;
                v273._countAndFlagsBits = 0x5020739980E24025;
                v273._object = 0xAB000000006B6369;
                v274._countAndFlagsBits = 0;
                v274._object = 0xE000000000000000;
                v396._countAndFlagsBits = 0x1000000000000048;
                NSLocalizedString(_:tableName:bundle:value:comment:)(v273, 0, qword_1019600D8, v274, v396);
                sub_1000CE6B8(&unk_10190D5C0, &unk_1011EA240);
                v275 = swift_allocObject();
                *(v275 + 16) = v387;
                v276 = &v371[*(v358 + 24)];
                v277 = v371;
                v279 = *v276;
                v278 = *(v276 + 1);
                *(v275 + 56) = &type metadata for String;
                *(v275 + 64) = sub_1000DA61C();
                *(v275 + 32) = v279;
                *(v275 + 40) = v278;

                static String.localizedStringWithFormat(_:_:)();

                AttributeContainer.init()();
                v280 = v351;
                AttributedString.init(_:attributes:)();
                sub_1000CE6B8(&qword_10190D578, &qword_1011FD2B0);
                v339 = (*(v366 + 80) + 32) & ~*(v366 + 80);
                *(swift_allocObject() + 16) = v387;
                v281 = *&v277[*(v358 + 32)];
                v282 = v363;
                v363[3] = &type metadata for CuratedGuidePublisherImageProvider;
                v282[4] = sub_10016E998();
                *v282 = v281;
                sub_1000CE6B8(&qword_10190A070, &unk_1011E78E0);
                type metadata accessor for RichTextViewModel();
                v283 = swift_allocObject();
                *(v283 + 16) = v387;
                v284 = v353;
                v285 = v354;
                (*v377)(v353, v378, v354);
                v286 = v281;
                RichTextType.set(attributed:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
                (*v376)(v284, v285);
                v282[5] = v283;
                v282[6] = _swiftEmptyArrayStorage;
                (*v381)(v282, v342, v364);
                ContextLineAccessoryViewModel.init(type:)();
                dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
                [v386 updateContextLinesToDisplayVisitedState];
                v170 = v371;

                (*v356)(v280, v338);
                sub_10016EA4C(v170, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
                v149 = v368;
                v66 = v367;
                v171 = v362;
                v151 = v374;
                v168 = v380;
                v169 = v382;
                v173 = v383;
                goto LABEL_93;
              }

              sub_10016EA4C(v170, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
              break;
            case 4:
              v290 = v168;
              v291 = v171;
              v292 = v343;
              sub_10016EF04(v151, v343, type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide);
              sub_100169098(v292);
              v151 = v374;
              v293 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide;
              v294 = v292;
              v171 = v291;
              v168 = v290;
              goto LABEL_139;
            case 8:
              sub_10016EF04(v151, v66, type metadata accessor for PlaceSummaryViewModelUnit.TransitShields);
              if (*&v386[v384])
              {
                sub_1000CE6B8(&qword_10190D578, &qword_1011FD2B0);
                *(swift_allocObject() + 16) = v387;
                v177 = *(v66 + *(v324 + 20));
                v178 = v363;
                v363[3] = &type metadata for TransitShields;
                v178[4] = sub_10016E9EC();
                v179 = swift_allocObject();
                *v178 = v179;
                *(v179 + 16) = v177;
                *(v179 + 24) = 0;
                *(v179 + 32) = 0;
                *(v179 + 40) = 1;
                *(v179 + 48) = 0;
                *(v179 + 56) = 0;
                *(v179 + 64) = 1;
                (*v381)(v178, v330, v364);

                v180 = v177;
                v149 = v368;
                v173 = v383;
                ContextLineAccessoryViewModel.init(type:)();
                v170 = v371;
                dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
                [v386 updateContextLinesToDisplayVisitedState];
              }

              v174 = type metadata accessor for PlaceSummaryViewModelUnit.TransitShields;
              v175 = v66;
LABEL_91:
              sub_10016EA4C(v175, v174);
              break;
            default:
              goto LABEL_138;
          }

          goto LABEL_92;
        }

        if (!EnumCaseMultiPayload)
        {
          sub_10016EF04(v151, v340, type metadata accessor for PlaceSummaryViewModelUnit.Label);
          if (*&v386[v384])
          {

            v235 = v359;
            UUID.init()();
            v236 = sub_1000CE6B8(&unk_101915790, &qword_1011F4C60);
            v237 = v363;
            v238 = v171;
            v239 = (v363 + *(v236 + 48));
            v240 = v350;
            v241 = v340;
            (*v334)(v363, &v340[*(v350 + 20)], v338);
            v242 = (v241 + *(v240 + 24));
            v243 = v242[1];
            *v239 = *v242;
            v239[1] = v243;
            (*v381)(v237, v333, v364);

            v244 = v347;
            ContextLineAccessoryViewModel.init(type:)();
            v245 = v349;
            v246 = v346;
            (*v373)(v349, v235, v346);
            (*i)(v245, 0, 1, v246);
            v247 = v375;
            swift_beginAccess();
            sub_10016E928(v245, v247);
            swift_endAccess();
            sub_1000CE6B8(&qword_10190D578, &qword_1011FD2B0);
            v248 = v366;
            v249 = (*(v366 + 80) + 32) & ~*(v366 + 80);
            v250 = swift_allocObject();
            *(v250 + 16) = v387;
            v251 = v250 + v249;
            v252 = v348;
            (*(v248 + 16))(v251, v244, v348);
            v170 = v371;
            dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
            [v386 updateContextLinesToDisplayVisitedState];

            v253 = *(v248 + 8);
            v149 = v368;
            v254 = v244;
            v173 = v383;
            v255 = v252;
            v171 = v238;
            v253(v254, v255);
            v256 = v235;
            v168 = v380;
            v66 = v367;
            v257 = v246;
            v169 = v382;
            (*v361)(v256, v257);
            v174 = type metadata accessor for PlaceSummaryViewModelUnit.Label;
            v175 = v241;
          }

          else
          {
            v174 = type metadata accessor for PlaceSummaryViewModelUnit.Label;
            v175 = v340;
          }

          goto LABEL_91;
        }

        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_138;
        }

        v192 = v168;
        v193 = v171;
        v194 = v360;
        sub_10016EF04(v151, v360, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
        if (*&v386[v384])
        {
          v195 = *(v194 + *(v345 + 20));
          v196 = v195 - 1;
          if (__OFSUB__(v195, 1))
          {
            goto LABEL_161;
          }

          v339 = *&v386[v384];

          sub_10016D84C(v196, v149);
          if (qword_101906768 != -1)
          {
            swift_once();
          }

          v395._object = v357;
          v197._countAndFlagsBits = 0x5020739980E24025;
          v197._object = 0xAB000000006B6369;
          v198._countAndFlagsBits = 0;
          v198._object = 0xE000000000000000;
          v395._countAndFlagsBits = 0x1000000000000048;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v197, 0, qword_1019600D8, v198, v395);
          v199 = v323;
          sub_1000D2DFC(v360 + *(v345 + 28), v323, &qword_10190D5A0, &qword_1011EDF20);
          v200 = v358;
          if ((*v328)(v199, 1, v358) == 1)
          {
            v201 = v66;

            sub_100024F64(v199, &qword_10190D5A0, &qword_1011EDF20);
            v202 = v338;
            v203 = v368;
            v204 = v360;
            v169 = v382;
            v205 = v356;
          }

          else
          {
            v295 = v341;
            sub_10016EF04(v199, v341, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
            sub_1000CE6B8(&unk_10190D5C0, &unk_1011EA240);
            v296 = swift_allocObject();
            *(v296 + 16) = v387;
            v297 = (v295 + *(v200 + 24));
            v299 = *v297;
            v298 = v297[1];
            *(v296 + 56) = &type metadata for String;
            *(v296 + 64) = sub_1000DA61C();
            *(v296 + 32) = v299;
            *(v296 + 40) = v298;

            static String.localizedStringWithFormat(_:_:)();

            AttributeContainer.init()();
            AttributedString.init(_:attributes:)();
            sub_1000CE6B8(&qword_10190D578, &qword_1011FD2B0);
            v336 = (*(v366 + 80) + 32) & ~*(v366 + 80);
            v326 = swift_allocObject();
            *(v326 + 1) = v387;
            v300 = *(v295 + *(v200 + 32));
            v301 = v363;
            v363[3] = &type metadata for CuratedGuidePublisherImageProvider;
            v301[4] = sub_10016E998();
            *v301 = v300;
            v319 = sub_1000CE6B8(&qword_10190A070, &unk_1011E78E0);
            v318 = *(*(type metadata accessor for RichTextViewModel() - 8) + 72);
            v302 = swift_allocObject();
            *(v302 + 16) = v387;
            v317 = *v377;
            v303 = v353;
            v304 = v354;
            v317(v353, v378, v354);
            v305 = v300;
            RichTextType.set(attributed:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
            v316 = *v376;
            v316(v303, v304);
            v301[5] = v302;
            v204 = v360;
            v306 = swift_allocObject();
            *(v306 + 16) = v387;
            v317(v303, v378, v304);
            v203 = v368;
            RichTextType.set(attributed:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
            v316(v303, v304);
            v301[6] = v306;
            (*v381)(v301, v342, v364);
            v192 = v380;
            v193 = v362;
            v201 = v367;
            ContextLineAccessoryViewModel.init(type:)();
            dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
            v205 = v356;
            v202 = v338;
            (*v356)(v351, v338);
            sub_10016EA4C(v341, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
            v169 = v382;
          }

          [v386 updateContextLinesToDisplayVisitedState];

          (*v205)(v203, v202);
          sub_10016EA4C(v204, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
          v149 = v203;
          v170 = v371;
          v151 = v374;
          v66 = v201;
          v173 = v383;
        }

        else
        {
          sub_10016EA4C(v194, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
        }

        v171 = v193;
        v168 = v192;
      }

LABEL_93:
      if (v169 == ++v172)
      {
        goto LABEL_149;
      }
    }
  }

  v154 = v147;
  sub_10016E8C0(v153 + ((*(v379 + 80) + 32) & ~*(v379 + 80)), v342, type metadata accessor for PlaceSummaryViewModelUnit);
  if (swift_getEnumCaseMultiPayload() != 17)
  {
    sub_10016EA4C(v152, type metadata accessor for PlaceSummaryViewModelUnit);
    v147 = v154;
    v148 = *(v154 + 16);
LABEL_87:
    if (!v148)
    {

      goto LABEL_151;
    }

    goto LABEL_88;
  }

  v155 = *v152;
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v156 = type metadata accessor for Logger();
  sub_100021540(v156, qword_101960018);

  v157 = Logger.logObject.getter();
  v158 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v157, v158))
  {
    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    *&v393[0] = v160;
    *v159 = 136315138;
    v161 = [*(v155 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit12VisitedPlace_mapItem) name];
    if (v161)
    {
      v162 = v161;
      v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v165 = v164;
    }

    else
    {
      v163 = 0;
      v165 = 0;
    }

    *&aBlock = v163;
    *(&aBlock + 1) = v165;
    sub_1000CE6B8(&unk_10190D010, &unk_1011E94A0);
    v307 = String.init<A>(describing:)();
    v309 = sub_10004DEB8(v307, v308, v393);

    *(v159 + 4) = v309;
    _os_log_impl(&_mh_execute_header, v157, v158, "[Place Summary] Only context one context line found for visited place:%s", v159, 0xCu);
    sub_10004E3D0(v160);

    v110 = v385;
  }

  else
  {
  }

  v310 = v326;
  static TaskPriority.userInitiated.getter();
  v311 = type metadata accessor for TaskPriority();
  (*(*(v311 - 8) + 56))(v310, 0, 1, v311);
  type metadata accessor for MainActor();

  v312 = v386;
  v313 = static MainActor.shared.getter();
  v314 = swift_allocObject();
  v314[2] = v313;
  v314[3] = &protocol witness table for MainActor;
  v314[4] = v155;
  v314[5] = v312;
  sub_10020AAE4(0, 0, v310, &unk_1011EA250, v314);

LABEL_151:
  [v386 addTrailingEntityTypeFrom:v110];

  return sub_100024F64(v365, &unk_10190D5B0, &unk_1011E6660);
}

void sub_100169098(uint64_t a1)
{
  v69 = a1;
  v2 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RichTextType();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v64 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RichTextViewModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v67 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000CE6B8(&unk_10190D5F0, &unk_1011E78A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v52 - v12;
  v14 = sub_1000CE6B8(&qword_10190B850, &unk_10120B950);
  __chkstk_darwin(v14 - 8);
  v16 = &v52 - v15;
  v17 = sub_1000CE6B8(&unk_10190D600, &qword_1011E78B0);
  v61 = *(v17 - 8);
  v62 = v17;
  __chkstk_darwin(v17);
  v60 = &v52 - v18;
  v19 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v19 - 8);
  v63 = type metadata accessor for AttributedString();
  __chkstk_darwin(v63);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *&v1[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel];
  if (v23)
  {
    v53 = v20;
    v54 = v9;
    v55 = v8;
    v56 = v5;
    v57 = v3;
    v58 = v2;
    v24 = v23;
    v25 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0);
    v26 = *(v69 + *(v25 + 24));
    v27 = *&v1[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_collectionHandler];
    v59 = v1;
    *&v1[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_collectionHandler] = v26;
    v52 = v24;

    v28 = v26;

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v72._object = 0x800000010121F660;
    v29._countAndFlagsBits = 0x4025206E49;
    v30._countAndFlagsBits = 0xD00000000000002BLL;
    v30._object = 0x800000010121F630;
    v29._object = 0xE500000000000000;
    v72._countAndFlagsBits = 0xD000000000000021;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, qword_1019600D8, v29, v72);
    sub_1000CE6B8(&unk_10190D5C0, &unk_1011EA240);
    v31 = swift_allocObject();
    v68 = xmmword_1011E1D30;
    *(v31 + 16) = xmmword_1011E1D30;
    v32 = (v69 + *(v25 + 20));
    v33 = *v32;
    v34 = v32[1];
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_1000DA61C();
    *(v31 + 32) = v33;
    *(v31 + 40) = v34;

    static String.localizedStringWithFormat(_:_:)();

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v71[0] = v33;
    v71[1] = v34;
    v35 = type metadata accessor for Locale();
    (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
    sub_100041360(&qword_101910100, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    sub_1000E5580();

    v36 = v63;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_100024F64(v13, &unk_10190D5F0, &unk_1011E78A0);

    if ((*(v61 + 48))(v16, 1, v62) == 1)
    {
      v37 = &qword_10190B850;
      v38 = &unk_10120B950;
      v39 = v16;
    }

    else
    {
      v40 = v60;
      sub_1000F11C4(v16, v60, &unk_10190D600, &qword_1011E78B0);
      v41 = static Color.blue.getter();
      sub_1000414C8(&qword_10190B858, &unk_10190D600, &qword_1011E78B0, &protocol conformance descriptor for Range<A>);
      v42 = AttributedString.subscript.modify();
      v70 = v41;
      sub_10016EB80();
      AttributedSubstring.subscript.setter();
      v42(v71, 0);
      v39 = v40;
      v37 = &unk_10190D600;
      v38 = &qword_1011E78B0;
    }

    sub_100024F64(v39, v37, v38);
    v43 = v56;
    v44 = v55;
    v45 = v64;
    v46 = v65;
    v47 = v66;
    (*(v65 + 104))(v64, enum case for RichTextType.line(_:), v66);
    v48 = v67;
    RichTextType.set(attributed:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
    (*(v46 + 8))(v45, v47);
    sub_1000CE6B8(&qword_10190D578, &qword_1011FD2B0);
    type metadata accessor for ContextLineAccessoryViewModel();
    *(swift_allocObject() + 16) = v68;
    sub_1000CE6B8(&qword_10190A070, &unk_1011E78E0);
    v49 = v54;
    v50 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v68;
    (*(v49 + 16))(v51 + v50, v48, v44);
    *v43 = v51;
    (*(v57 + 104))(v43, enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.inUserGuide(_:), v58);
    ContextLineAccessoryViewModel.init(type:)();
    dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
    [v59 updateContextLinesToDisplayVisitedState];

    (*(v49 + 8))(v48, v44);
    (*(v53 + 8))(v22, v36);
  }
}

uint64_t sub_1001699BC(uint64_t a1)
{
  *&v77 = a1;
  v2 = type metadata accessor for RichTextType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v75 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType();
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v73 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000CE6B8(&unk_10190D5F0, &unk_1011E78A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - v8;
  v80 = type metadata accessor for AttributedString();
  v10 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CE6B8(&qword_10190B850, &unk_10120B950);
  __chkstk_darwin(v12 - 8);
  v14 = &v63 - v13;
  v76 = sub_1000CE6B8(&unk_10190D600, &qword_1011E78B0);
  v15 = *(v76 - 8);
  __chkstk_darwin(v76);
  v17 = &v63 - v16;
  v18 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v18 - 8);
  result = *&v1[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel];
  if (result)
  {
    v65 = v17;
    v78 = v10;
    v67 = v5;
    v68 = v3;
    v69 = v2;
    v71 = result;
    v72 = v1;
    v20 = qword_101906768;

    if (v20 != -1)
    {
      swift_once();
    }

    v21.super.isa = qword_1019600D8;
    v87._object = 0x800000010121F6F0;
    v22._countAndFlagsBits = 0x6F74206465646441;
    v22._object = 0xE800000000000000;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v87._countAndFlagsBits = 0xD000000000000022;
    v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, qword_1019600D8, v23, v87);
    v88._object = 0x800000010121F6F0;
    v25._countAndFlagsBits = 0x736563616C50;
    v25._object = 0xE600000000000000;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v88._countAndFlagsBits = 0xD000000000000022;
    v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v21, v26, v88);
    v28 = v80;
    v70 = swift_allocBox();
    v30 = v29;
    aBlock = v24;
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    String.append(_:)(v27);
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v33 = v78;
    v32 = v79;
    v66 = *(v78 + 16);
    v66(v79, v30, v28);
    aBlock = v27;
    v34 = type metadata accessor for Locale();
    (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
    sub_100041360(&qword_101910100, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    sub_1000E5580();
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_100024F64(v9, &unk_10190D5F0, &unk_1011E78A0);
    v35 = v28;
    v36 = v33 + 8;
    v64 = *(v33 + 8);
    v64(v32, v35);

    if ((*(v15 + 48))(v14, 1, v76) == 1)
    {
      v37 = &qword_10190B850;
      v38 = &unk_10120B950;
      v39 = v14;
    }

    else
    {
      v40 = v65;
      sub_1000F11C4(v14, v65, &unk_10190D600, &qword_1011E78B0);
      v41 = static Color.blue.getter();
      sub_1000414C8(&qword_10190B858, &unk_10190D600, &qword_1011E78B0, &protocol conformance descriptor for Range<A>);
      v42 = AttributedString.subscript.modify();
      v81 = v41;
      sub_10016EB80();
      AttributedSubstring.subscript.setter();
      v42(&aBlock, 0);
      v39 = v40;
      v37 = &unk_10190D600;
      v38 = &qword_1011E78B0;
    }

    sub_100024F64(v39, v37, v38);
    v43 = v77;
    v44 = v30;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (LOBYTE(aBlock._countAndFlagsBits) == 1)
    {
      sub_1000CE6B8(&qword_10190D578, &qword_1011FD2B0);
      type metadata accessor for ContextLineAccessoryViewModel();
      v78 = v36;
      v45 = swift_allocObject();
      v77 = xmmword_1011E1D30;
      *(v45 + 16) = xmmword_1011E1D30;
      sub_1000CE6B8(&qword_10190A070, &unk_1011E78E0);
      type metadata accessor for RichTextViewModel();
      v46 = swift_allocObject();
      *(v46 + 16) = v77;
      v47 = v68;
      v48 = v75;
      v49 = v69;
      (*(v68 + 104))(v75, enum case for RichTextType.line(_:), v69);
      v50 = v79;
      v51 = v44;
      v52 = v80;
      v66(v79, v51, v80);
      RichTextType.set(attributed:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
      v64(v50, v52);
      (*(v47 + 8))(v48, v49);
      v54 = v73;
      v53 = v74;
      *v73 = v46;
      (*(v53 + 104))(v54, enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.inLibrary(_:), v67);
      ContextLineAccessoryViewModel.init(type:)();
      dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
    }

    else
    {
      v55 = [*(v43 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit11UserLibrary_mapItem) _hikeAssociatedInfo];
      v57 = v70;
      v56 = v71;
      if (v55)
      {
        v58 = v55;
        v59 = [v55 encryptedTourMuid];

        v60 = objc_opt_self();
        v61 = swift_allocObject();
        *(v61 + 16) = v56;
        *(v61 + 24) = v57;
        v85 = sub_10016EBD4;
        v86 = v61;
        aBlock._countAndFlagsBits = _NSConcreteStackBlock;
        aBlock._object = 1107296256;
        v83 = sub_10021BDC0;
        v84 = &unk_101606B70;
        v62 = _Block_copy(&aBlock);

        [v60 fetchSavedRoutesWithTourMuid:v59 completion:v62];
        _Block_release(v62);
      }
    }

    [v72 updateContextLinesToDisplayVisitedState];
  }

  return result;
}

id sub_10016A404()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceTableViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PlaceTableViewCell(uint64_t a1)
{
  result = qword_10190D498;
  if (!qword_10190D498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016A564(uint64_t a1)
{
  sub_1000095FC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_10016A620(void *a1)
{
  result = [a1 trailingEntityType];
  if (result <= 4)
  {
    switch(result)
    {
      case 2:
        v5 = "updateViewModelWithETA:";
        goto LABEL_14;
      case 3:
        v5 = "updateViewModelWithFlyover";
        break;
      case 4:
        v5 = "updateViewModelWithLookAround";
        break;
      default:
        return result;
    }

LABEL_21:
    v6 = v1;

    return [v6 v5];
  }

  if (result > 7)
  {
    if (result != 8)
    {
      if (result != 10)
      {
        return result;
      }

      v5 = "updateViewModelWithAddStopWithTemplate:";
LABEL_14:
      v6 = v1;
      v4 = a1;

      return [v6 v5];
    }

    v5 = "updateViewModelWithQueryAccelerator";
    goto LABEL_21;
  }

  if (result == 5)
  {
    v5 = "updateViewModelWithCall";
    goto LABEL_21;
  }

  if (result == 6)
  {
    v5 = "updateViewModelWithWebsite";
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_10016A78C(uint64_t a1)
{
  v2 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v50;
  if ((~v50 & 0xF000000000000007) != 0)
  {
    if (v50 >> 61 != 1)
    {
      return sub_10013BD74(v7);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return sub_10013BD74(v7);
    }

    v9 = Strong;
    if (([Strong respondsToSelector:"etaProviderForMapItem:"] & 1) == 0)
    {
      goto LABEL_29;
    }

    v10 = v7 & 0x1FFFFFFFFFFFFFFFLL;
    v11 = OBJC_IVAR____TtC4Maps18DirectionsETAModel_mapItem;
    v12 = [v9 etaProviderForMapItem:*((v7 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC4Maps18DirectionsETAModel_mapItem)];
    v13 = v12;
    v14 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC4Maps18DirectionsETAModel_showETA);
    v48 = v1;
    if (v14 == 1)
    {
      [v12 etaTravelTime];
      if (v15 > 0.0)
      {
        v16 = v15;
        if (qword_101906728 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100021540(v17, qword_101960018);
        sub_10013BAE8(v7);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.info.getter();
        sub_10013BD74(v7);
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v47 = v13;
          v50 = v21;
          *v20 = 136315650;
          *(v20 + 4) = sub_10004DEB8(0xD000000000000019, 0x800000010121F550, &v50);
          *(v20 + 12) = 2048;
          *(v20 + 14) = v16;
          *(v20 + 22) = 2080;
          v49 = [*(v10 + v11) identifier];
          sub_1000CE6B8(&unk_10190D590, &qword_1011EA148);
          v22 = String.init<A>(describing:)();
          v24 = sub_10004DEB8(v22, v23, &v50);

          *(v20 + 24) = v24;
          _os_log_impl(&_mh_execute_header, v18, v19, "%s: cached etaTravelTime: %f for mapItem: %s", v20, 0x20u);
          swift_arrayDestroy();
          v13 = v47;
        }

        [v48 updateTrailingEntityUsing:v16];
LABEL_28:

LABEL_29:
        sub_10013BD74(v7);
        return swift_unknownObjectRelease();
      }

      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100021540(v36, qword_101960018);
      sub_10013BAE8(v7);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      sub_10013BD74(v7);
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v47 = v13;
        v40 = v39;
        v46 = swift_slowAlloc();
        v50 = v46;
        *v40 = 136315394;
        *(v40 + 4) = sub_10004DEB8(0xD000000000000019, 0x800000010121F550, &v50);
        *(v40 + 12) = 2080;
        v49 = [*(v10 + v11) identifier];
        sub_1000CE6B8(&unk_10190D590, &qword_1011EA148);
        v41 = String.init<A>(describing:)();
        v43 = sub_10004DEB8(v41, v42, &v50);

        *(v40 + 14) = v43;
        _os_log_impl(&_mh_execute_header, v37, v38, "%s: Will fetch etaTravelTime for mapItem: %s", v40, 0x16u);
        swift_arrayDestroy();

        v13 = v47;
      }

      v44 = v48;
      [v13 _placeSummary_addObserver:v48];
      [v13 start];
      if (!*&v44[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel])
      {
        goto LABEL_28;
      }

      sub_1000CE6B8(&unk_10190D580, &unk_1011E9400);
      type metadata accessor for TrailingAccessoryViewModel();
      *(swift_allocObject() + 16) = xmmword_1011E1D30;
      v5->_countAndFlagsBits = 0;
      v5->_object = 0;
      (*(v3 + 104))(v5, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.direction(_:), v2);

      TrailingAccessoryViewModel.init(type:)();
      dispatch thunk of ListCellViewModel.trailingAccessory.setter();
    }

    else
    {
      if (qword_101906728 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100021540(v25, qword_101960018);
      sub_10013BAE8(v7);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      sub_10013BD74(v7);
      v28 = os_log_type_enabled(v26, v27);
      v47 = v13;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v50 = v46;
        *v29 = 136315394;
        *(v29 + 4) = sub_10004DEB8(0xD000000000000019, 0x800000010121F550, &v50);
        *(v29 + 12) = 2080;
        v49 = [*(v10 + v11) identifier];
        sub_1000CE6B8(&unk_10190D590, &qword_1011EA148);
        v30 = String.init<A>(describing:)();
        v32 = sub_10004DEB8(v30, v31, &v50);

        *(v29 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s: not showing ETA for mapItem: %s", v29, 0x16u);
        swift_arrayDestroy();

        v13 = v47;
      }

      if (!*&v48[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel])
      {
        goto LABEL_28;
      }

      sub_1000CE6B8(&unk_10190D580, &unk_1011E9400);
      type metadata accessor for TrailingAccessoryViewModel();
      *(swift_allocObject() + 16) = xmmword_1011E1D30;
      v33 = qword_101906768;

      if (v33 != -1)
      {
        swift_once();
      }

      v51._object = 0x800000010121F530;
      v34._countAndFlagsBits = 0x706F745320646441;
      v34._object = 0xEE005D52504D5B20;
      v51._countAndFlagsBits = 0xD00000000000001FLL;
      v35._countAndFlagsBits = 6579265;
      v35._object = 0xE300000000000000;
      *v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, qword_1019600D8, v35, v51);
      (*(v3 + 104))(v5, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.addStop(_:), v2);
      TrailingAccessoryViewModel.init(type:)();
      dispatch thunk of ListCellViewModel.trailingAccessory.setter();
    }

    sub_10013BD74(v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10016B194(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel])
  {
    sub_1000CE6B8(&unk_10190D580, &unk_1011E9400);
    type metadata accessor for TrailingAccessoryViewModel();
    *(swift_allocObject() + 16) = xmmword_1011E1D30;
    (*(v6 + 104))(v8, *a3, v5);
    v9 = a1;

    TrailingAccessoryViewModel.init(type:)();
    dispatch thunk of ListCellViewModel.trailingAccessory.setter();
  }
}

void sub_10016B394(void *a1)
{
  v2 = *(&v1->isa + OBJC_IVAR____TtC4Maps18PlaceTableViewCell_template);
  if (!v2)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  static Published.subscript.getter();

  if ((~v45 & 0xF000000000000007) == 0)
  {

    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_27;
  }

  v6 = Strong;
  if (v45 >> 61 != 1)
  {
    if (v45 >> 61 == 2)
    {
      v7 = &OBJC_IVAR____TtC4Maps24AccessoryButtonViewModel_mapItem;
      goto LABEL_9;
    }

    swift_unknownObjectRelease();
LABEL_27:

    sub_10013BD74(v45);
    return;
  }

  v7 = &OBJC_IVAR____TtC4Maps18DirectionsETAModel_mapItem;
LABEL_9:
  v8 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + *v7);
  v9 = [Strong respondsToSelector:"etaProviderForMapItem:"];
  v10 = v8;
  if ((v9 & 1) == 0)
  {

    sub_10013BD74(v45);
    swift_unknownObjectRelease();

    return;
  }

  v44 = [v6 etaProviderForMapItem:v10];
  v11 = [v44 mapItem];
  if (!v11)
  {
    __break(1u);
    goto LABEL_39;
  }

  v12 = v11;
  v13 = [v11 _identifier];

  if (!v13)
  {
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  if (!a1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v14 = [a1 mapItem];
  if (!v14)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v14 _identifier];

  if (!v16)
  {
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  if (([v13 isEqual:v16] & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  [a1 etaTravelTime];
  v18 = v17;
  if (v17 <= 0.0)
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100021540(v26, qword_101960018);
    v27 = v10;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v42 = v29;
      v30 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v30 = 136315650;
      *(v30 + 4) = sub_10004DEB8(0xD000000000000016, 0x800000010121F510, &v46);
      *(v30 + 12) = 2048;
      *(v30 + 14) = v18;
      *(v30 + 22) = 2080;
      v31 = [v27 name];
      if (v31)
      {
        v32 = v31;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_1000CE6B8(&unk_10190D010, &unk_1011E94A0);
      v36 = String.init<A>(describing:)();
      v38 = sub_10004DEB8(v36, v37, &v46);

      *(v30 + 24) = v38;
      _os_log_impl(&_mh_execute_header, v28, v42, "%s: Invalid(or blank) etaTravelTime:%f for mapItem: %s, ", v30, 0x20u);
      swift_arrayDestroy();

      sub_10013BD74(v45);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_10013BD74(v45);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    log = v1;
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100021540(v19, qword_101960018);
    v20 = v10;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v39 = v22;
      v41 = v21;
      v23 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v23 = 136315394;
      *(v23 + 4) = sub_10004DEB8(0xD000000000000016, 0x800000010121F510, &v46);
      v40 = v23;
      *(v23 + 12) = 2080;
      v24 = [v20 name];
      if (v24)
      {
        v25 = v24;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_1000CE6B8(&unk_10190D010, &unk_1011E94A0);
      v33 = String.init<A>(describing:)();
      v35 = sub_10004DEB8(v33, v34, &v46);

      v21 = v41;
      *(v40 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v41, v39, "%s: fetched etaTravelTime for mapItem: %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    [log updateTrailingEntityUsing:v18];
    [a1 pause];
    [a1 _placeSummary_removeObserver:log];
    sub_10013BD74(v45);

    swift_unknownObjectRelease();
  }
}

void sub_10016BAD8(double a1)
{
  v3 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC4Maps18PlaceTableViewCell_template);
  if (!v7)
  {
    return;
  }

  v8 = objc_opt_self();
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a1 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a1 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v9 = v8;
  v17 = v7;
  v10 = [v9 _navigation_stringWithSeconds:a1 andAbbreviationType:2];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (*(v1 + OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel))
    {
      sub_1000CE6B8(&unk_10190D580, &unk_1011E9400);
      type metadata accessor for TrailingAccessoryViewModel();
      *(swift_allocObject() + 16) = xmmword_1011E1D30;
      *v6 = v12;
      v6[1] = v14;
      (*(v4 + 104))(v6, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.direction(_:), v3);

      TrailingAccessoryViewModel.init(type:)();
      dispatch thunk of ListCellViewModel.trailingAccessory.setter();

      return;
    }
  }

  v15 = v17;
}

void sub_10016BDBC()
{
  v1 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = *&v0[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_template];
  if (v15)
  {
    v29 = v0;
    v16 = v15;
    sub_10021C698(1);
    v18 = v17;

    v19 = *(v18 + 16);
    if (v19)
    {
      sub_10016E8C0(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * (v19 - 1), v11, type metadata accessor for PlaceSummaryViewModelLine);

      sub_10016EF04(v11, v14, type metadata accessor for PlaceSummaryViewModelLine);
      v20 = *&v14[*(v8 + 20)];
      if (*(v20 + 16) == 1)
      {
        sub_10016E8C0(v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v7, type metadata accessor for PlaceSummaryViewModelUnit);
        if (swift_getEnumCaseMultiPayload() != 17)
        {
          sub_10016EA4C(v14, type metadata accessor for PlaceSummaryViewModelLine);
          v26 = type metadata accessor for PlaceSummaryViewModelUnit;
          v27 = v7;
          goto LABEL_11;
        }

        v21 = *v7;
        static TaskPriority.userInitiated.getter();
        v22 = type metadata accessor for TaskPriority();
        (*(*(v22 - 8) + 56))(v3, 0, 1, v22);
        type metadata accessor for MainActor();

        v23 = v29;
        v24 = static MainActor.shared.getter();
        v25 = swift_allocObject();
        v25[2] = v24;
        v25[3] = &protocol witness table for MainActor;
        v25[4] = v21;
        v25[5] = v23;
        sub_10020AAE4(0, 0, v3, &unk_1011EA0E8, v25);
      }

      v26 = type metadata accessor for PlaceSummaryViewModelLine;
      v27 = v14;
LABEL_11:
      sub_10016EA4C(v27, v26);
      return;
    }
  }
}

void sub_10016C1E4(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType();
  v72 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RichTextType();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RichTextViewModel();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v69 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000CE6B8(&unk_10190D5F0, &unk_1011E78A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_1000CE6B8(&qword_10190B850, &unk_10120B950);
  __chkstk_darwin(v13 - 8);
  v15 = &v55 - v14;
  v16 = sub_1000CE6B8(&unk_10190D600, &qword_1011E78B0);
  v63 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  v19 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for AttributedString();
  v64 = *(v20 - 8);
  v65 = v20;
  __chkstk_darwin(v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v62 = v22;
    v25 = *&Strong[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel];
    if (v25)
    {
      if (a1)
      {
        v60 = v5;

        v26 = [a1 name];
        if (v26)
        {
          v27 = v26;
          v55 = v18;
          v58 = v25;
          v59 = v3;
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v29;

          v30 = *&v24[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_containmentParentMapItem];
          *&v24[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_containmentParentMapItem] = a1;
          v31 = a1;

          if (qword_101906768 != -1)
          {
            swift_once();
          }

          v75._object = 0x800000010121F5E0;
          v32._countAndFlagsBits = 0x6E6F697461636F4CLL;
          v32._object = 0xEB00000000402520;
          v33._object = 0x800000010121F5C0;
          v75._countAndFlagsBits = 0xD000000000000041;
          v33._countAndFlagsBits = 0xD000000000000018;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, qword_1019600D8, v32, v75);
          sub_1000CE6B8(&unk_10190D5C0, &unk_1011EA240);
          v34 = swift_allocObject();
          v61 = xmmword_1011E1D30;
          *(v34 + 16) = xmmword_1011E1D30;
          *(v34 + 56) = &type metadata for String;
          *(v34 + 64) = sub_1000DA61C();
          *(v34 + 32) = v28;
          v56 = v28;
          v35 = v57;
          *(v34 + 40) = v57;

          static String.localizedStringWithFormat(_:_:)();

          AttributeContainer.init()();
          v36 = v62;
          AttributedString.init(_:attributes:)();
          v74[0] = v56;
          v74[1] = v35;
          v37 = type metadata accessor for Locale();
          (*(*(v37 - 8) + 56))(v12, 1, 1, v37);
          sub_100041360(&qword_101910100, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
          sub_1000E5580();
          v38 = v65;
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_100024F64(v12, &unk_10190D5F0, &unk_1011E78A0);

          if ((*(v63 + 48))(v15, 1, v16) == 1)
          {
            v39 = &qword_10190B850;
            v40 = &unk_10120B950;
            v41 = v15;
          }

          else
          {
            v42 = v55;
            sub_1000F11C4(v15, v55, &unk_10190D600, &qword_1011E78B0);
            v43 = static Color.blue.getter();
            sub_1000414C8(&qword_10190B858, &unk_10190D600, &qword_1011E78B0, &protocol conformance descriptor for Range<A>);
            v44 = AttributedString.subscript.modify();
            v73 = v43;
            sub_10016EB80();
            AttributedSubstring.subscript.setter();
            v44(v74, 0);
            v41 = v42;
            v39 = &unk_10190D600;
            v40 = &qword_1011E78B0;
          }

          sub_100024F64(v41, v39, v40);
          v45 = v60;
          v46 = v66;
          v47 = v67;
          v48 = v68;
          (*(v67 + 104))(v66, enum case for RichTextType.line(_:), v68);
          v49 = v69;
          RichTextType.set(attributed:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
          (*(v47 + 8))(v46, v48);
          sub_1000CE6B8(&qword_10190D578, &qword_1011FD2B0);
          type metadata accessor for ContextLineAccessoryViewModel();
          *(swift_allocObject() + 16) = v61;
          sub_1000CE6B8(&qword_10190A070, &unk_1011E78E0);
          v50 = v70;
          v51 = (*(v70 + 80) + 32) & ~*(v70 + 80);
          v52 = swift_allocObject();
          *(v52 + 16) = v61;
          v53 = v52 + v51;
          v54 = v71;
          (*(v50 + 16))(v53, v49, v71);
          *v45 = v52;
          (*(v72 + 104))(v45, enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.containment(_:), v59);
          ContextLineAccessoryViewModel.init(type:)();
          dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
          (*(v50 + 8))(v49, v54);
          (*(v64 + 8))(v36, v38);
        }
      }

      else
      {
      }

      [v24 updateContextLinesToDisplayVisitedState];
    }

    else
    {
    }
  }
}

uint64_t sub_10016CB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[20] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[21] = v9;
  v5[22] = v8;

  return _swift_task_switch(sub_10016CCB4, v9, v8);
}

uint64_t sub_10016CCB4()
{
  if (qword_101906610 != -1)
  {
    swift_once();
  }

  *(v0 + 184) = *(*(v0 + 96) + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit12VisitedPlace_mapItem);

  return _swift_task_switch(sub_10016CD5C, 0, 0);
}

uint64_t sub_10016CD5C()
{
  v1 = [*(v0 + 184) _geoMapItem];
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = v1;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = swift_task_alloc();
    *(v0 + 200) = v3;
    *v3 = v0;
    v3[1] = sub_10016CE7C;

    return sub_100256D78(v2);
  }

  else
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);

    return _swift_task_switch(sub_10016D2AC, v5, v6);
  }
}

uint64_t sub_10016CE7C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 80) = a2;
  *(v3 + 64) = v2;
  *(v3 + 72) = a1;
  *(v3 + 208) = a2;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10016CFA0, 0, 0);
}

uint64_t sub_10016CFA0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return _swift_task_switch(sub_10016D004, v1, v2);
}

uint64_t sub_10016D004()
{
  v1 = *(v0 + 208);

  if ((v1 & 1) == 0)
  {
    v2 = v0[9];
    v3 = v0[19];
    v13 = v0[18];
    v14 = v0[17];
    v4 = v0[14];
    v11 = v0[16];
    v12 = v0[15];
    sub_100014C84(0, &qword_10190B4F0, OS_dispatch_queue_ptr);
    v10 = static OS_dispatch_queue.main.getter();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;
    v0[6] = sub_10016E564;
    v0[7] = v6;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100039C64;
    v0[5] = &unk_101606A80;
    v7 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[11] = _swiftEmptyArrayStorage;
    sub_100041360(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000CE6B8(&unk_10190B500, &unk_1011E4610);
    sub_1000414C8(&qword_1019097E0, &unk_10190B500, &unk_1011E4610, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v7);

    (*(v12 + 8))(v11, v4);
    (*(v13 + 8))(v3, v14);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10016D2AC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10016D320(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for ContextLineAccessoryViewModel();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*&Strong[OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel] && a2 > 0)
    {
      v28 = v3;
      v29 = v11;
      v30 = Strong;
      v15 = qword_101906768;

      if (v15 != -1)
      {
        swift_once();
      }

      v34._object = 0x800000010121F4E0;
      v16._countAndFlagsBits = 0x64657469736956;
      v17._object = 0x800000010121F4C0;
      v34._countAndFlagsBits = 0xD00000000000002CLL;
      v17._countAndFlagsBits = 0xD000000000000018;
      v16._object = 0xE700000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, qword_1019600D8, v16, v34);
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      v18 = *(dispatch thunk of ListCellViewModel.contextLineAccessory.getter() + 16);

      if (v18)
      {
        v19 = v29;
        (*(v29 + 16))(v8, v13, v10);
        (*(v32 + 104))(v8, enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.visited(_:), v6);
        ContextLineAccessoryViewModel.init(type:)();
        v20 = dispatch thunk of ListCellViewModel.contextLineAccessory.modify();
        v22 = v21;
        v23 = *v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v22 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_100356A84(0, v23[2] + 1, 1, v23);
          *v22 = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_100356A84((v25 > 1), v26 + 1, 1, v23);
          *v22 = v23;
        }

        v23[2] = v26 + 1;
        (*(v28 + 32))(v23 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26, v5, v31);
        v20(v33, 0);

        (*(v19 + 8))(v13, v10);
      }

      else
      {
        sub_1000CE6B8(&qword_10190D578, &qword_1011FD2B0);
        *(swift_allocObject() + 16) = xmmword_1011E1D30;
        v27 = v29;
        (*(v29 + 16))(v8, v13, v10);
        (*(v32 + 104))(v8, enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.visited(_:), v6);
        ContextLineAccessoryViewModel.init(type:)();
        dispatch thunk of ListCellViewModel.contextLineAccessory.setter();

        (*(v27 + 8))(v13, v10);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10016D84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_1000CE6B8(&unk_10190D5F0, &unk_1011E78A0);
  __chkstk_darwin(v3 - 8);
  v36 = &v33 - v4;
  v5 = sub_1000CE6B8(&qword_10190B850, &unk_10120B950);
  __chkstk_darwin(v5 - 8);
  v39 = &v33 - v6;
  v7 = sub_1000CE6B8(&unk_10190D600, &qword_1011E78B0);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v34 = &v33 - v8;
  v9 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v9 - 8);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v10 = qword_1019600D8;
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000CE6B8(&unk_10190D5C0, &unk_1011EA240);
  v14 = swift_allocObject();
  v35 = xmmword_1011E1D30;
  *(v14 + 16) = xmmword_1011E1D30;
  *(v14 + 56) = &type metadata for Int;
  *(v14 + 64) = &protocol witness table for Int;
  *(v14 + 32) = a1;
  static String.localizedStringWithFormat(_:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v10 localizedStringForKey:v15 value:v16 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v35;
  *(v18 + 56) = &type metadata for Int;
  *(v18 + 64) = &protocol witness table for Int;
  *(v18 + 32) = a1;
  v19 = static String.localizedStringWithFormat(_:_:)();
  v21 = v20;

  v42[0] = v19;
  v42[1] = v21;
  v22 = type metadata accessor for Locale();
  v23 = v36;
  (*(*(v22 - 8) + 56))(v36, 1, 1, v22);
  type metadata accessor for AttributedString();
  sub_100041360(&qword_101910100, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  sub_1000E5580();
  v24 = v39;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_100024F64(v23, &unk_10190D5F0, &unk_1011E78A0);

  v25 = (*(v37 + 48))(v24, 1, v38) == 1;
  v26 = v24;
  if (v25)
  {
    v30 = &qword_10190B850;
    v31 = &unk_10120B950;
  }

  else
  {
    v27 = v34;
    sub_1000F11C4(v24, v34, &unk_10190D600, &qword_1011E78B0);
    v28 = static Color.blue.getter();
    sub_1000414C8(&qword_10190B858, &unk_10190D600, &qword_1011E78B0, &protocol conformance descriptor for Range<A>);
    v29 = AttributedString.subscript.modify();
    v41 = v28;
    sub_10016EB80();
    AttributedSubstring.subscript.setter();
    v29(v42, 0);
    v26 = v27;
    v30 = &unk_10190D600;
    v31 = &qword_1011E78B0;
  }

  return sub_100024F64(v26, v30, v31);
}

uint64_t sub_10016DE04(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RichTextType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType();
  v27 = *(v14 - 8);
  v28 = v14;
  __chkstk_darwin(v14);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_projectBox();
  if (a1)
  {
    v18 = result;
    if (a1 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 1)
      {
        return result;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result < 1)
      {
        return result;
      }
    }

    sub_1000CE6B8(&qword_10190D578, &qword_1011FD2B0);
    v19 = *(type metadata accessor for ContextLineAccessoryViewModel() - 8);
    v26 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v25 = swift_allocObject();
    v23 = xmmword_1011E1D30;
    *(v25 + 16) = xmmword_1011E1D30;
    sub_1000CE6B8(&qword_10190A070, &unk_1011E78E0);
    v20 = v11;
    v21 = v6;
    type metadata accessor for RichTextViewModel();
    v24 = a3;
    v22 = swift_allocObject();
    *(v22 + 16) = v23;
    (*(v20 + 104))(v13, enum case for RichTextType.line(_:), v10);
    swift_beginAccess();
    (*(v7 + 16))(v9, v18, v21);
    RichTextType.set(attributed:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
    (*(v7 + 8))(v9, v21);
    (*(v20 + 8))(v13, v10);
    *v16 = v22;
    (*(v27 + 104))(v16, enum case for ContextLineAccessoryViewModel.ContextLineAccessoryType.inLibrary(_:), v28);
    ContextLineAccessoryViewModel.init(type:)();
    return dispatch thunk of ListCellViewModel.contextLineAccessory.setter();
  }

  return result;
}

void sub_10016E294(int a1, uint64_t a2, uint64_t a3, id a4)
{
  v6 = [a4 publisherAttribution];
  if (v6)
  {
    v7 = [objc_allocWithZone(MapsUIImagePublisherSpec) initWithIconIdentifier:{objc_msgSend(v6, "iconIdentifier")}];
    v8 = [objc_opt_self() sharedCache];
    if (v8)
    {
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *(v10 + 24) = a3;
      v13[4] = sub_10016F02C;
      v13[5] = v10;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_100271778;
      v13[3] = &unk_101606BE8;
      v11 = _Block_copy(v13);
      v12 = v7;

      [v9 getImageForSpec:v12 loadImageOnBackgroundQueue:1 completion:v11];
      _Block_release(v11);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10016E41C(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v4 = a1;
    a2(a1);
  }

  else
  {
    (a2)();
  }
}

uint64_t sub_10016E4A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC40;

  return sub_10016CB64(a1, v4, v5, v7, v6);
}

void sub_10016E56C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC4Maps18PlaceTableViewCell_template) = 0;
  v2 = (v1 + OBJC_IVAR____TtC4Maps18PlaceTableViewCell_query);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + OBJC_IVAR____TtC4Maps18PlaceTableViewCell_asyncDataManager) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel) = 0;
  *(v1 + OBJC_IVAR____TtC4Maps18PlaceTableViewCell_mappedActionButtons) = 0;
  *(v1 + OBJC_IVAR____TtC4Maps18PlaceTableViewCell_mappedRefinementButtons) = 0;
  *(v1 + OBJC_IVAR____TtC4Maps18PlaceTableViewCell_containmentParentMapItem) = 0;
  *(v1 + OBJC_IVAR____TtC4Maps18PlaceTableViewCell_collectionHandler) = 0;
  v3 = OBJC_IVAR____TtC4Maps18PlaceTableViewCell_tappableContextLineModelID;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10016E698()
{
  v1 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + OBJC_IVAR____TtC4Maps18PlaceTableViewCell_viewModel))
  {
    sub_1000CE6B8(&unk_10190D580, &unk_1011E9400);
    type metadata accessor for TrailingAccessoryViewModel();
    *(swift_allocObject() + 16) = xmmword_1011E1D30;
    v5 = qword_101906768;

    if (v5 != -1)
    {
      swift_once();
    }

    v9._object = 0x800000010121F530;
    v6._countAndFlagsBits = 0x706F745320646441;
    v6._object = 0xEE005D52504D5B20;
    v7._countAndFlagsBits = 6579265;
    v7._object = 0xE300000000000000;
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    *v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, qword_1019600D8, v7, v9);
    (*(v2 + 104))(v4, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.addStop(_:), v1);
    TrailingAccessoryViewModel.init(type:)();
    dispatch thunk of ListCellViewModel.trailingAccessory.setter();
  }
}

uint64_t sub_10016E8C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016E928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101918E50, &unk_1011E4770);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10016E998()
{
  result = qword_10190D5D0;
  if (!qword_10190D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D5D0);
  }

  return result;
}

unint64_t sub_10016E9EC()
{
  result = qword_10190D5D8;
  if (!qword_10190D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D5D8);
  }

  return result;
}

void sub_10016EA40(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10016EA4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10016EAC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC4C;

  return sub_10016CB64(a1, v4, v5, v7, v6);
}

unint64_t sub_10016EB80()
{
  result = qword_10190D610;
  if (!qword_10190D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D610);
  }

  return result;
}

unint64_t sub_10016EBE8()
{
  result = qword_10190D628;
  if (!qword_10190D628)
  {
    sub_1000D6664(&qword_10190D620, &qword_1011EA2F8);
    sub_10016ECA0();
    sub_1000414C8(&unk_10190D690, &qword_10190BE10, &qword_1011EBB00, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D628);
  }

  return result;
}

unint64_t sub_10016ECA0()
{
  result = qword_10190D630;
  if (!qword_10190D630)
  {
    sub_1000D6664(&qword_10190D638, &qword_1011EA300);
    sub_100041360(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
    sub_10016ED5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D630);
  }

  return result;
}

unint64_t sub_10016ED5C()
{
  result = qword_10190D648;
  if (!qword_10190D648)
  {
    sub_1000D6664(&qword_10190D650, &qword_1011EA308);
    sub_10016EE14();
    sub_1000414C8(&qword_10190D680, &qword_10190D688, &unk_1011EA320, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D648);
  }

  return result;
}

unint64_t sub_10016EE14()
{
  result = qword_10190D658;
  if (!qword_10190D658)
  {
    sub_1000D6664(&qword_10190D660, &qword_1011EA310);
    sub_100041360(&qword_10190D668, &type metadata accessor for SearchCell, &protocol conformance descriptor for SearchCell);
    sub_1000414C8(&qword_10190D670, &qword_10190D678, &qword_1011EA318, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D658);
  }

  return result;
}

uint64_t sub_10016EF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10016EF80()
{
  result = qword_10190D6F8;
  if (!qword_10190D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D6F8);
  }

  return result;
}

unint64_t sub_10016EFD8()
{
  result = qword_10190D700;
  if (!qword_10190D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190D700);
  }

  return result;
}

uint64_t sub_10016F04C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10056DDF4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100171E08(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_10016F0C8()
{
  v1 = sub_1000CE6B8(&qword_10190D880, &unk_1011EA578);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_continuation;
  v5 = sub_1000CE6B8(&unk_10190D780, &qword_1011EA528);
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  v7 = [objc_allocWithZone(type metadata accessor for UGCReviewedPlaceMapsSyncTrampoline(0)) init];
  v6(v3, 1, 1, v5);
  swift_beginAccess();
  sub_100171C18(v3, v0 + v4);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_ratingsHistoryTrampoline) = v7;
  *(v0 + OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_mapItemsByIdentifiers) = _swiftEmptyDictionarySingleton;
  v8 = qword_101906588;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_100021540(v10, qword_10190D708);
  (*(*(v10 - 8) + 16))(v0 + OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_logger, v11, v10);
  *&v9[OBJC_IVAR____TtC4Maps34UGCReviewedPlaceMapsSyncTrampoline_delegate + 8] = sub_100171D10(&qword_10190D888, &unk_1011EA530);
  swift_unknownObjectWeakAssign();

  return v0;
}

uint64_t sub_10016F304()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_10190D880, &unk_1011EA578);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = sub_1000CE6B8(&unk_10190D780, &qword_1011EA528);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_continuation;
  swift_beginAccess();
  if (!(*(v6 + 48))(v1 + v9, 1, v5))
  {
    (*(v6 + 16))(v8, v1 + v9, v5);
    v13[0] = 0;
    AsyncThrowingStream.Continuation.finish(throwing:)();
    (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 56))(v4, 1, 1, v5);
  swift_beginAccess();
  sub_100171C18(v4, v1 + v9);
  swift_endAccess();
  sub_100024F64(v1 + v9, &qword_10190D880, &unk_1011EA578);

  v10 = OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_logger;
  v11 = type metadata accessor for Logger();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_10016F560()
{
  sub_10016F304();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10016F58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1000CE6B8(&qword_10190D880, &unk_1011EA578);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating stream", v12, 2u);
  }

  v13 = sub_1000CE6B8(&unk_10190D780, &qword_1011EA528);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v9, a1, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  v15 = OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_continuation;
  swift_beginAccess();
  sub_100171C18(v9, a2 + v15);
  swift_endAccess();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = sub_100171D10(&qword_10190D878, &unk_1011EA54C);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = v17;
  v18[4] = a2;
  swift_retain_n();
  sub_10020AAE4(0, 0, v6, &unk_1011EA590, v18);
}

uint64_t sub_10016F84C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003AC4C;

  return sub_10016FBFC();
}

uint64_t sub_10016F8DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_10190D780, &qword_1011EA528);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = sub_1000CE6B8(&qword_10190D880, &unk_1011EA578);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000CE6B8(&qword_10190D8B0, &qword_1011EA5C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Invoking observers with new list of reviewed places.", v16, 2u);
  }

  v17 = OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_continuation;
  swift_beginAccess();
  sub_100172FB0(v2 + v17, v10);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_100024F64(v10, &qword_10190D880, &unk_1011EA578);
    v18 = 1;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_100024F64(v10, &qword_10190D880, &unk_1011EA578);
    v21 = a1;

    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v5 + 8))(v7, v4);
    v18 = 0;
  }

  v19 = sub_1000CE6B8(&qword_10190D8B8, &qword_1011EA5C8);
  (*(*(v19 - 8) + 56))(v13, v18, 1, v19);
  return sub_100024F64(v13, &qword_10190D8B0, &qword_1011EA5C0);
}

uint64_t sub_10016FBFC()
{
  v1[32] = v0;
  v2 = sub_1000CE6B8(&unk_10190D780, &qword_1011EA528);
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();
  sub_1000CE6B8(&qword_10190D880, &unk_1011EA578);
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_10016FD00, v0, 0);
}

uint64_t sub_10016FD00(uint64_t a1)
{
  v1[37] = OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Building content.", v4, 2u);
  }

  v5 = objc_opt_self();
  v1[2] = v1;
  v1[7] = v1 + 30;
  v1[3] = sub_10016FEA4;
  v6 = swift_continuation_init();
  v1[17] = sub_1000CE6B8(&qword_10190D890, &qword_1011EA598);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001712B4;
  v1[13] = &unk_101606C50;
  v1[14] = v6;
  [v5 fetchAllHistoryObjectsFromStorageWithCompletion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10016FEA4()
{
  v1 = *(*v0 + 256);

  return _swift_task_switch(sub_10016FF98, v1, 0);
}

void sub_10016FF98(uint64_t a1)
{
  v79 = v1;
  v2 = v1[30];
  v1[38] = v2;
  if (v2)
  {
    v78 = _swiftEmptyArrayStorage;
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_77:
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MKCoordinateInvalid[0];
    v6 = MKCoordinateInvalid[1];

    v7 = 0;
    v75 = _swiftEmptyArrayStorage;
    while (v4 != v7)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_70;
        }

        v8 = *(v2 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_70:
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
        goto LABEL_77;
      }

      v11 = [objc_allocWithZone(MKMapItemIdentifier) initWithMUID:objc_msgSend(v8 resultProviderID:"muid") coordinate:{0, v5, v6}];

      ++v7;
      if (v11)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v75 = v78;
        v7 = v10;
      }
    }

    v1 = v74;
    v12 = v75;
  }

  else
  {
    v12 = 0;
  }

  v76 = v12;
  v1[39] = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Successfully fetched map item identifiers.", v15, 2u);
  }

  if (!v76)
  {
    goto LABEL_83;
  }

  v78 = _swiftEmptyArrayStorage;
  v3 = v76 & 0xFFFFFFFFFFFFFF8;
  if (v76 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v1[32];
  v17 = OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_mapItemsByIdentifiers;
  v1[40] = OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_mapItemsByIdentifiers;

  v77 = v2;
  swift_beginAccess();
  if (v16)
  {
    v18 = 0;
    do
    {
      if ((v76 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v19 = *(v76 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_71;
      }

      v22 = [v19 muid];
      if (*(*(v77 + v17) + 16) && (sub_100298E64(v22), (v23 & 1) != 0))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v2 = v16;
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v18;
    }

    while (v21 != v16);
    v24 = v78;
    v1 = v74;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  v1[41] = v24;

  if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 0)
    {
      goto LABEL_39;
    }

LABEL_80:

    goto LABEL_83;
  }

  if (*(v24 + 16) <= 0)
  {
    goto LABEL_80;
  }

LABEL_39:
  v25 = objc_opt_self();
  v2 = &selRef_setUseCompactVerticalLayout_;
  v26 = [v25 sharedService];
  if (!v26)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v27 = v26;
  sub_100014C84(0, &unk_101918370, MKMapItemIdentifier_ptr);

  v28.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v29 = [v25 sharedService];
  if (!v29)
  {
LABEL_107:
    __break(1u);
    return;
  }

  v30 = v29;
  v31 = [v29 defaultTraits];

  v32 = [v27 ticketForIdentifiers:v28.super.isa traits:v31];
  v1[42] = v32;

  if (v32)
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v34 = swift_task_alloc();
    v1[43] = v34;
    *v34 = v1;
    v34[1] = sub_1001709D0;

    sub_100171344(ObjectType);
    return;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
    if (v35)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v35 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
LABEL_47:
      v36 = 0;
      while (1)
      {
        if (_swiftEmptyArrayStorage >> 62)
        {
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v36 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_74;
          }

          v39 = _swiftEmptyArrayStorage[v36 + 4];
        }

        v40 = v39;
        v2 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_73;
        }

        v41 = [v39 _identifier];
        if (!v41)
        {
          goto LABEL_105;
        }

        v42 = v41;
        v43 = v1[40];
        v3 = v1[32];
        v44 = [v41 muid];

        swift_beginAccess();
        v45 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = *(v3 + v43);
        v47 = v78;
        *(v3 + v43) = 0x8000000000000000;
        v48 = sub_100298E64(v44);
        v50 = v47[2];
        v51 = (v49 & 1) == 0;
        v52 = __OFADD__(v50, v51);
        v53 = v50 + v51;
        if (v52)
        {
          goto LABEL_75;
        }

        v3 = v49;
        if (v47[3] < v53)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_60;
        }

        v57 = v48;
        sub_10012C7A0();
        v48 = v57;
        v47 = v78;
        if (v3)
        {
LABEL_48:
          v37 = v47[7];
          v38 = *(v37 + 8 * v48);
          *(v37 + 8 * v48) = v45;

          goto LABEL_49;
        }

LABEL_61:
        v47[(v48 >> 6) + 8] |= 1 << v48;
        *(v47[6] + 8 * v48) = v44;
        *(v47[7] + 8 * v48) = v45;
        v55 = v47[2];
        v52 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v52)
        {
          goto LABEL_76;
        }

        v47[2] = v56;
LABEL_49:
        *(v1[32] + v1[40]) = v47;
        swift_endAccess();

        ++v36;
        if (v2 == v35)
        {
          goto LABEL_82;
        }
      }

      sub_100126BD8(v53, isUniquelyReferenced_nonNull_native);
      v47 = v78;
      v48 = sub_100298E64(v44);
      if ((v3 & 1) != (v54 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

LABEL_60:
      if (v3)
      {
        goto LABEL_48;
      }

      goto LABEL_61;
    }
  }

LABEL_82:

  swift_unknownObjectRelease();

LABEL_83:
  if (v1[38])
  {
    v58 = v1[38];
  }

  else
  {
    v58 = _swiftEmptyArrayStorage;
  }

  if (v58 >> 62)
  {
    v59 = _CocoaArrayWrapper.endIndex.getter();
    if (v59)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
LABEL_88:
      if (v59 >= 1)
      {
        v60 = v1[32];
        v61 = OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_mapItemsByIdentifiers;
        swift_beginAccess();
        for (i = 0; i != v59; ++i)
        {
          if ((v58 & 0xC000000000000001) != 0)
          {
            v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v63 = *(v58 + 8 * i + 32);
          }

          v64 = v63;
          v65 = [v63 muid];
          v66 = *(v60 + v61);
          if (*(v66 + 16) && (v67 = sub_100298E64(v65), (v68 & 1) != 0))
          {
            v69 = *(*(v66 + 56) + 8 * v67);
            v70 = objc_allocWithZone(UGCRefinedReviewedPlace);
            v71 = v69;
            [v70 initWithMapItem:v71 reviewedPlace:v64];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          else
          {
          }
        }

        goto LABEL_101;
      }

      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }
  }

LABEL_101:

  v78 = sub_1002EEFC0(v72);
  sub_10016F04C(&v78);

  sub_10016F8DC(v78);

  v73 = *(v74 + 8);

  v73();
}

uint64_t sub_1001709D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = *(v4 + 256);
    v6 = sub_100171040;
  }

  else
  {
    v7 = *(v4 + 256);
    swift_unknownObjectRelease();
    *(v4 + 360) = a1;
    v6 = sub_100170B10;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

id sub_100170B10()
{
  v52 = v0;
  v2 = v0[44];
  v1 = v0[45];

  v46 = v2;
  if (v1 >> 62)
  {
LABEL_29:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v48 = v1 & 0xFFFFFFFFFFFFFF8;
      v49 = v1 & 0xC000000000000001;
      v47 = v1;
      while (1)
      {
        if (v49)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v48 + 16))
          {
            goto LABEL_26;
          }

          v8 = *(v1 + 8 * v4 + 32);
        }

        v9 = v8;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v50 = v4 + 1;
        v1 = v3;
        result = [v8 _identifier];
        if (!result)
        {
          goto LABEL_56;
        }

        v11 = result;
        v12 = v0[40];
        v13 = v0[32];
        v14 = [result muid];

        swift_beginAccess();
        v15 = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = *(v13 + v12);
        v17 = v51;
        *(v13 + v12) = 0x8000000000000000;
        v18 = sub_100298E64(v14);
        v20 = v17[2];
        v21 = (v19 & 1) == 0;
        v22 = __OFADD__(v20, v21);
        v23 = v20 + v21;
        if (v22)
        {
          goto LABEL_27;
        }

        v24 = v19;
        if (v17[3] < v23)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_16;
        }

        v28 = v18;
        sub_10012C7A0();
        v18 = v28;
        v17 = v51;
        if (v24)
        {
LABEL_4:
          v5 = v17[7];
          v6 = *(v5 + 8 * v18);
          *(v5 + 8 * v18) = v15;

          goto LABEL_5;
        }

LABEL_17:
        v17[(v18 >> 6) + 8] |= 1 << v18;
        *(v17[6] + 8 * v18) = v14;
        *(v17[7] + 8 * v18) = v15;
        v26 = v17[2];
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_28;
        }

        v17[2] = v27;
LABEL_5:
        *(v0[32] + v0[40]) = v17;
        swift_endAccess();

        ++v4;
        v3 = v1;
        v7 = v50 == v1;
        v1 = v47;
        if (v7)
        {
          goto LABEL_30;
        }
      }

      sub_100126BD8(v23, isUniquelyReferenced_nonNull_native);
      v17 = v51;
      v18 = sub_100298E64(v14);
      if ((v24 & 1) != (v25 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_16:
      if (v24)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

LABEL_30:
  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease();

  if (v0[38])
  {
    v29 = v0[38];
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = v0;
    if (v30)
    {
      goto LABEL_35;
    }

LABEL_48:

    v51 = sub_1002EEFC0(v43);
    sub_10016F04C(&v51);
    if (v46)
    {
    }

    else
    {

      sub_10016F8DC(v51);

      v44 = v45[1];

      return v44();
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v30 = result;
  v45 = v0;
  if (!result)
  {
    goto LABEL_48;
  }

LABEL_35:
  if (v30 >= 1)
  {
    v31 = v0[32];
    v32 = OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_mapItemsByIdentifiers;
    swift_beginAccess();
    for (i = 0; i != v30; ++i)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v29 + 8 * i + 32);
      }

      v35 = v34;
      v36 = [v34 muid];
      v37 = *(v31 + v32);
      if (*(v37 + 16) && (v38 = sub_100298E64(v36), (v39 & 1) != 0))
      {
        v40 = *(*(v37 + 56) + 8 * v38);
        v41 = objc_allocWithZone(UGCRefinedReviewedPlace);
        v42 = v40;
        [v41 initWithMapItem:v42 reviewedPlace:v35];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
      }
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_100171040()
{
  swift_unknownObjectRelease_n();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Encountered error %@", v3, 0xCu);
    sub_100024F64(v4, &qword_1019144F0, &unk_1011E4A70);
  }

  v6 = v0[36];
  v7 = v0[33];
  v8 = v0[34];
  v9 = v0[32];

  v10 = OBJC_IVAR____TtC4Maps22ARPHistoryDataProvider_continuation;
  swift_beginAccess();
  sub_100172FB0(v9 + v10, v6);
  v11 = (*(v8 + 48))(v6, 1, v7);
  v12 = v0[44];
  v13 = v0[36];
  if (v11)
  {

    sub_100024F64(v13, &qword_10190D880, &unk_1011EA578);
  }

  else
  {
    v15 = v0[34];
    v14 = v0[35];
    v16 = v0[33];
    (*(v15 + 16))(v14, v0[36], v16);
    sub_100024F64(v13, &qword_10190D880, &unk_1011EA578);
    v0[31] = v12;
    AsyncThrowingStream.Continuation.finish(throwing:)();
    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001712B4(uint64_t a1, uint64_t a2)
{
  v3 = *sub_10005E838((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_100014C84(0, &qword_10190D8A8, off_1015F6698);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return _swift_continuation_resume(v3);
}

uint64_t sub_100171344(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100171364, 0, 0);
}

uint64_t sub_100171364()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_1000CE6B8(&qword_101919D30, &qword_1011EA5B0);
  *v2 = v0;
  v2[1] = sub_100171460;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x292874696D627573, 0xE800000000000000, sub_100173020, v1, v3);
}

uint64_t sub_100171460()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100171598;
  }

  else
  {

    v2 = sub_10017157C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100171598()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_1001715FC(id *a1, void **a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = *a2;
  v13 = [*a1 reviewedPlace];
  v14 = [v13 dateOfLastEdit];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = [v12 reviewedPlace];
  v16 = [v15 dateOfLastEdit];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = Date.compare(_:)();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v11, v4);
  return v17 == 1;
}

void sub_1001717B0(uint64_t a1, void *a2)
{
  v4 = sub_1000CE6B8(&qword_10190D898, &qword_1011EA5B8);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_100173028;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B00C4;
  aBlock[3] = &unk_101606CA0;
  v11 = _Block_copy(aBlock);

  [a2 submitWithHandler:v11 networkActivity:0];
  _Block_release(v11);
}

uint64_t sub_100171964(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    if (a1 && sub_1002B0288(a1))
    {
      sub_1000CE6B8(&qword_10190D898, &qword_1011EA5B8);
      return CheckedContinuation.resume(returning:)();
    }

    sub_1001730CC();
    swift_allocError();
  }

  sub_1000CE6B8(&qword_10190D898, &qword_1011EA5B8);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t type metadata accessor for ARPHistoryDataProvider(uint64_t a1)
{
  result = qword_10190D768;
  if (!qword_10190D768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100171A7C(uint64_t a1)
{
  sub_100171B70(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100171B70(uint64_t a1)
{
  if (!qword_10190D778)
  {
    sub_1000D6664(&unk_10190D780, &qword_1011EA528);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10190D778);
    }
  }
}

uint64_t sub_100171BD4(uint64_t a1)
{
  result = sub_100171D10(&qword_10190D878, &unk_1011EA54C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100171C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190D880, &unk_1011EA578);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100171C88()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10190D708);
  sub_100021540(v0, qword_10190D708);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100171D10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ARPHistoryDataProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100171D54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003AC4C;

  return sub_10016F84C();
}

void sub_100171E08(uint64_t *a1)
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
        sub_100014C84(0, &qword_101915270, off_1015F6690);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100172184(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_100171F1C(0, v2, 1, a1);
  }
}

void sub_100171F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for Date();
  __chkstk_darwin(v38);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v36 = &v30 - v11;
  v31 = a2;
  if (a3 != a2)
  {
    v39 = *a4;
    v35 = (v10 + 8);
    v12 = v39 + 8 * a3 - 8;
    v13 = a1 - a3;
LABEL_5:
    v33 = v12;
    v34 = a3;
    v14 = *(v39 + 8 * a3);
    v32 = v13;
    while (1)
    {
      v15 = *v12;
      v16 = v14;
      v17 = v15;
      v18 = [v16 reviewedPlace];
      v19 = [v18 dateOfLastEdit];

      v20 = v36;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = [v17 reviewedPlace];
      v22 = [v21 dateOfLastEdit];

      v23 = v37;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = Date.compare(_:)();
      v25 = *v35;
      v26 = v23;
      v27 = v38;
      (*v35)(v26, v38);
      v25(v20, v27);

      if (v24 != 1)
      {
LABEL_4:
        a3 = v34 + 1;
        v12 = v33 + 8;
        v13 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v28 = *v12;
      v14 = *(v12 + 8);
      *v12 = v14;
      *(v12 + 8) = v28;
      v12 -= 8;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100172184(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v119 = a1;
  v129 = type metadata accessor for Date();
  __chkstk_darwin(v129);
  v128 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v127 = &v114 - v10;
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = _swiftEmptyArrayStorage;
    v14 = v4;
LABEL_99:
    v16 = *v119;
    if (!*v119)
    {
      goto LABEL_139;
    }

    v15 = v14;
    v14 = v13;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v109 = v14;
    }

    else
    {
LABEL_133:
      v109 = sub_10056D550(v14);
    }

    v132 = v109;
    v14 = *(v109 + 2);
    if (v14 >= 2)
    {
      while (*a3)
      {
        v110 = *&v109[16 * v14];
        v111 = v109;
        v112 = *&v109[16 * v14 + 24];
        sub_100172A88((*a3 + 8 * v110), (*a3 + 8 * *&v109[16 * v14 + 16]), (*a3 + 8 * v112), v16);
        if (v15)
        {
          goto LABEL_110;
        }

        if (v112 < v110)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_10056D550(v111);
        }

        if (v14 - 2 >= *(v111 + 2))
        {
          goto LABEL_127;
        }

        v113 = &v111[16 * v14];
        *v113 = v110;
        *(v113 + 1) = v112;
        v132 = v111;
        sub_10056D4C4(v14 - 1);
        v109 = v132;
        v14 = *(v132 + 16);
        if (v14 <= 1)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_137;
    }

LABEL_110:

    return;
  }

  v117 = a4;
  v12 = 0;
  v126 = (v9 + 8);
  v13 = _swiftEmptyArrayStorage;
  v14 = v4;
  v115 = a3;
  while (1)
  {
    v15 = v12;
    v16 = v12 + 1;
    if (v12 + 1 >= v11)
    {
      v24 = v12 + 1;
      goto LABEL_21;
    }

    v124 = v11;
    v118 = v13;
    v17 = *a3;
    v18 = *(*a3 + 8 * v16);
    v130 = *(*a3 + 8 * v12);
    v19 = v130;
    v131 = v18;
    v20 = v18;
    v21 = v19;
    LODWORD(v125) = sub_1001715FC(&v131, &v130);
    if (v14)
    {

      return;
    }

    v22 = v12 + 2;
    if (v12 + 2 >= v124)
    {
      v24 = v12 + 2;
      goto LABEL_16;
    }

    v116 = v12;
    v23 = (v17 + 8 * v12 + 16);
    v121 = 0;
    do
    {
      v25 = *(v23 - 1);
      v26 = *v23;
      v27 = v25;
      v28 = [v26 reviewedPlace];
      v29 = [v28 dateOfLastEdit];

      v30 = v127;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = [v27 reviewedPlace];
      v32 = [v31 dateOfLastEdit];

      v33 = v128;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = Date.compare(_:)();
      v16 = *v126;
      v35 = v33;
      v36 = v129;
      (*v126)(v35, v129);
      (v16)(v30, v36);

      if (v34 == 1)
      {
        v14 = v121;
        v24 = v124;
        if ((v125 & 1) == 0)
        {
          v24 = v22;
          a3 = v115;
          v15 = v116;
          v13 = v118;
          goto LABEL_21;
        }
      }

      else
      {
        v14 = v121;
        v24 = v124;
        if (v125)
        {
          v16 = v22 - 1;
          v24 = v22;
          a3 = v115;
          v15 = v116;
          v13 = v118;
          if (v22 < v116)
          {
            goto LABEL_132;
          }

          goto LABEL_20;
        }
      }

      ++v22;
      ++v23;
    }

    while (v24 != v22);
    v16 = v22 - 1;
    a3 = v115;
    v15 = v116;
LABEL_16:
    v13 = v118;
    if ((v125 & 1) == 0)
    {
      goto LABEL_21;
    }

    if (v24 < v15)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

LABEL_20:
    if (v15 <= v16)
    {
      v103 = 8 * v24 - 8;
      v104 = 8 * v15;
      v105 = v24;
      v106 = v15;
      do
      {
        if (v106 != --v105)
        {
          v108 = *a3;
          if (!*a3)
          {
            goto LABEL_136;
          }

          v107 = *(v108 + v104);
          *(v108 + v104) = *(v108 + v103);
          *(v108 + v103) = v107;
        }

        ++v106;
        v103 -= 8;
        v104 += 8;
      }

      while (v106 < v105);
    }

LABEL_21:
    v37 = a3[1];
    if (v24 < v37)
    {
      if (__OFSUB__(v24, v15))
      {
        goto LABEL_129;
      }

      if (v24 - v15 < v117)
      {
        if (__OFADD__(v15, v117))
        {
          goto LABEL_130;
        }

        if (v15 + v117 >= v37)
        {
          v38 = a3[1];
        }

        else
        {
          v38 = v15 + v117;
        }

        if (v38 < v15)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v24 != v38)
        {
          break;
        }
      }
    }

    v12 = v24;
    if (v24 < v15)
    {
      goto LABEL_128;
    }

LABEL_31:
    v39 = v13;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v13 = v39;
    }

    else
    {
      v13 = sub_100097874(0, *(v39 + 2) + 1, 1, v39);
    }

    v41 = *(v13 + 2);
    v40 = *(v13 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v13 = sub_100097874((v40 > 1), v41 + 1, 1, v13);
    }

    *(v13 + 2) = v42;
    v43 = &v13[16 * v41];
    *(v43 + 4) = v15;
    *(v43 + 5) = v12;
    v44 = *v119;
    if (!*v119)
    {
      goto LABEL_138;
    }

    if (v41)
    {
      while (1)
      {
        v16 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v45 = *(v13 + 4);
          v46 = *(v13 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_50:
          if (v48)
          {
            goto LABEL_117;
          }

          v61 = &v13[16 * v42];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_120;
          }

          v67 = &v13[16 * v16 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_124;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v16 = v42 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v71 = &v13[16 * v42];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_64:
        if (v66)
        {
          goto LABEL_119;
        }

        v74 = &v13[16 * v16];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_122;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_71:
        v82 = v16 - 1;
        if (v16 - 1 >= v42)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v15 = v13;
        v83 = *&v13[16 * v82 + 32];
        v84 = *&v13[16 * v16 + 40];
        sub_100172A88((*a3 + 8 * v83), (*a3 + 8 * *&v13[16 * v16 + 32]), (*a3 + 8 * v84), v44);
        if (v14)
        {
          goto LABEL_110;
        }

        if (v84 < v83)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_10056D550(v15);
        }

        if (v82 >= *(v15 + 16))
        {
          goto LABEL_114;
        }

        v85 = v15 + 16 * v82;
        *(v85 + 32) = v83;
        *(v85 + 40) = v84;
        v132 = v15;
        sub_10056D4C4(v16);
        v13 = v132;
        v42 = *(v132 + 16);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v13[16 * v42 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_115;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_116;
      }

      v56 = &v13[16 * v42];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_118;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_121;
      }

      if (v60 >= v52)
      {
        v78 = &v13[16 * v16 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_125;
        }

        if (v47 < v81)
        {
          v16 = v42 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v11 = a3[1];
    if (v12 >= v11)
    {
      goto LABEL_99;
    }
  }

  v118 = v13;
  v120 = v38;
  v121 = v14;
  v125 = *a3;
  v86 = v125 + 8 * v24 - 8;
  v116 = v15;
  v87 = v15 - v24;
LABEL_82:
  v123 = v86;
  v124 = v24;
  v88 = *(v125 + 8 * v24);
  v122 = v87;
  while (1)
  {
    v89 = *v86;
    v16 = v88;
    v90 = v89;
    v91 = [v16 reviewedPlace];
    v92 = [v91 dateOfLastEdit];

    v93 = v127;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v94 = [v90 reviewedPlace];
    v95 = [v94 dateOfLastEdit];

    v96 = v128;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v97 = Date.compare(_:)();
    v98 = *v126;
    v99 = v96;
    v100 = v129;
    (*v126)(v99, v129);
    v98(v93, v100);

    if (v97 != 1)
    {
LABEL_81:
      v24 = v124 + 1;
      v86 = v123 + 8;
      v87 = v122 - 1;
      v12 = v120;
      if (v124 + 1 != v120)
      {
        goto LABEL_82;
      }

      v14 = v121;
      a3 = v115;
      v15 = v116;
      v13 = v118;
      if (v120 < v116)
      {
        goto LABEL_128;
      }

      goto LABEL_31;
    }

    if (!v125)
    {
      break;
    }

    v101 = *v86;
    v88 = *(v86 + 8);
    *v86 = v88;
    *(v86 + 8) = v101;
    v86 -= 8;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

uint64_t sub_100172A88(id *a1, void **a2, id *a3, void **a4)
{
  v60 = type metadata accessor for Date();
  v8 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v11 = a2;
  v58 = &v51 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
      v11 = a2;
    }

    v62 = &a4[v16];
    if (a3 - a2 < 8 || v11 <= a1)
    {
      v30 = v11;
    }

    else
    {
      v53 = (v8 + 8);
      v61 = a4;
      v52 = a1;
      do
      {
        v57 = v11;
        v31 = v11 - 1;
        v32 = a3 - 1;
        v33 = v62;
        v54 = v31;
        while (1)
        {
          v34 = v32;
          v35 = v32 + 1;
          v36 = *--v33;
          v37 = *v31;
          v38 = v36;
          v56 = v38;
          v39 = v37;
          v55 = v39;
          v40 = [v38 reviewedPlace];
          v41 = [v40 dateOfLastEdit];

          v42 = v58;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v43 = [v39 reviewedPlace];
          v44 = [v43 dateOfLastEdit];

          v45 = v59;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v46 = Date.compare(_:)();
          v47 = *v53;
          v48 = v60;
          (*v53)(v45, v60);
          v47(v42, v48);

          if (v46 == 1)
          {
            break;
          }

          if (v35 != v62)
          {
            *v34 = *v33;
          }

          v32 = v34 - 1;
          v62 = v33;
          v31 = v54;
          if (v33 <= v61)
          {
            v62 = v33;
            a4 = v61;
            v30 = v57;
            goto LABEL_38;
          }
        }

        v49 = v52;
        a3 = v34;
        v30 = v54;
        if (v35 != v57)
        {
          *v34 = *v54;
        }

        a4 = v61;
        if (v62 <= v61)
        {
          break;
        }

        v11 = v30;
      }

      while (v30 > v49);
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
      v11 = a2;
    }

    v62 = &a4[v14];
    if (a2 - a1 >= 8 && v11 < a3)
    {
      v55 = (v8 + 8);
      v56 = a3;
      while (1)
      {
        v61 = a4;
        v57 = v11;
        v17 = *a4;
        v18 = *v11;
        v19 = v17;
        v20 = [v18 reviewedPlace];
        v21 = [v20 dateOfLastEdit];

        v22 = v58;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = [v19 reviewedPlace];
        v24 = [v23 dateOfLastEdit];

        v25 = v59;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = Date.compare(_:)();
        v27 = *v55;
        v28 = v60;
        (*v55)(v25, v60);
        v27(v22, v28);

        if (v26 != 1)
        {
          break;
        }

        v29 = v57;
        v11 = v57 + 1;
        a4 = v61;
        if (a1 != v57)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++a1;
        if (a4 >= v62 || v11 >= v56)
        {
          goto LABEL_19;
        }
      }

      v29 = v61;
      a4 = v61 + 1;
      v11 = v57;
      if (a1 == v61)
      {
        goto LABEL_17;
      }

LABEL_16:
      *a1 = *v29;
      goto LABEL_17;
    }

LABEL_19:
    v30 = a1;
  }

LABEL_38:
  if (v30 != a4 || v30 >= (a4 + ((v62 - a4 + (v62 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v30, a4, 8 * (v62 - a4));
  }

  return 1;
}

uint64_t sub_100172FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190D880, &unk_1011EA578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}