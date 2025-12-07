uint64_t sub_F90()
{
  v1 = v0;
  v2 = sub_3C74();
  __chkstk_darwin(v2 - 8);
  sub_37C0(0, &qword_C378, OS_os_log_ptr);
  v3 = sub_3DB4();
  v4 = sub_3D34();
  sub_3C44("usbaudioxpc starting session", 28, 2, &dword_0, v3, v4, &_swiftEmptyArrayStorage);

  v5 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session;
  if (*&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session])
  {

    sub_3C94();
  }

  sub_3CA4();
  v6 = *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_dispatchQueue];
  *(swift_allocObject() + 16) = v1;
  v7 = v6;
  v8 = v1;
  sub_3C64();
  *&v1[v5] = sub_3C54();

  sub_3C84();
}

uint64_t sub_123C(char *a1)
{
  v35 = sub_3CB4();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3CD4();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3CF4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  v14 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_audioInterfaceServices;
  result = swift_beginAccess();
  v16 = *&a1[v14];
  if ((v16 & 0xC000000000000001) != 0)
  {

    v17 = sub_3E04();

    if (!v17)
    {
      return result;
    }
  }

  else if (!*(v16 + 16))
  {
    return result;
  }

  sub_37C0(0, &qword_C378, OS_os_log_ptr);
  v18 = sub_3DB4();
  v19 = sub_3D34();
  sub_3C44("usbaudioxpc restarting session", 30, 2, &dword_0, v18, v19, &_swiftEmptyArrayStorage);

  v31 = *&a1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_dispatchQueue];
  sub_3CE4();
  v30 = v13;
  sub_3D04();
  v20 = *(v8 + 8);
  v33 = v8 + 8;
  v34 = v20;
  v32 = v7;
  v20(v11, v7);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  aBlock[4] = sub_2368;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_16BC;
  aBlock[3] = &unk_84B0;
  v22 = _Block_copy(aBlock);
  v23 = a1;
  sub_3CC4();
  v38 = &_swiftEmptyArrayStorage;
  sub_23EC(&qword_C390, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v24 = v35;
  v25 = v37;
  v29 = v4;
  sub_22CC(&qword_C398, &qword_42B0);
  v26 = v36;
  sub_2434(&qword_C3A0, &qword_C398, &qword_42B0);
  sub_3DC4();
  v28 = v30;
  v27 = v31;
  sub_3D54();
  _Block_release(v22);

  (*(v25 + 8))(v3, v24);
  (*(v26 + 8))(v6, v29);
  v34(v28, v32);
}

uint64_t sub_16BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1700(uint64_t a1)
{
  v2 = v1;
  v44.receiver = v1;
  v44.super_class = type metadata accessor for AUAXPCPlugin();
  objc_msgSendSuper2(&v44, "halInitializeWithPluginHost:", a1);
  sub_37C0(0, &qword_C378, OS_os_log_ptr);
  v4 = sub_3DB4();
  v5 = sub_3D34();
  sub_3C44("HAL initialized usbaudioxpc driver", 34, 2, &dword_0, v4, v5, &_swiftEmptyArrayStorage);

  v6 = objc_opt_self();
  sub_37C0(0, &qword_C3D8, NSNumber_ptr);
  isa = sub_3D84(1).super.super.isa;
  v8 = sub_3D84(1).super.super.isa;
  v9 = [v6 createMatchingDictionaryWithVendorID:0 productID:0 bcdDevice:0 interfaceNumber:0 configurationValue:0 interfaceClass:isa interfaceSubclass:v8 interfaceProtocol:0 speed:0 productIDArray:0];

  v10 = v6;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    aBlock = 0;
    sub_3D24();

    v11 = aBlock;
    if (aBlock)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_6:
  v12 = [objc_allocWithZone(IOKNotificationPort) initOnDispatchQueue:*&v2[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_dispatchQueue]];
  v13 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_notificationPort;
  v14 = *&v2[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_notificationPort];
  *&v2[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_notificationPort] = v12;

  if (!v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = IOKMatchedNotification;

  v16.super.isa = sub_3D14().super.isa;

  v17 = *&v2[v13];
  if (!v17)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v18 = objc_opt_self();
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  v49 = sub_3808;
  v50 = v19;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_1C58;
  v48 = &unk_8500;
  v20 = _Block_copy(&aBlock);
  v21 = v2;
  v22 = v17;

  aBlock = 0;
  v23 = [v18 addNotificationOfType:v15 forMatching:v16.super.isa usingNotificationPort:v22 error:&aBlock withEnumerationBlock:v20];
  _Block_release(v20);

  v24 = aBlock;
  if (!v23)
  {
    v25 = v24;
    sub_3C34();

    swift_willThrow();
  }

  v26 = *&v21[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_matchedNotification];
  v43 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_matchedNotification;
  *&v21[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_matchedNotification] = v23;

  v27 = IOKTerminatedNotification;

  v28 = v27;
  v29.super.isa = sub_3D14().super.isa;

  v30 = *&v2[v13];
  if (!v30)
  {
    goto LABEL_18;
  }

  v31 = swift_allocObject();
  *(v31 + 16) = v21;
  v49 = sub_39C8;
  v50 = v31;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_1C58;
  v48 = &unk_8550;
  v32 = _Block_copy(&aBlock);
  v33 = v21;
  v34 = v30;

  aBlock = 0;
  v35 = [v18 addNotificationOfType:v28 forMatching:v29.super.isa usingNotificationPort:v34 error:&aBlock withEnumerationBlock:v32];
  _Block_release(v32);

  v36 = aBlock;
  if (!v35)
  {
    v37 = v36;
    sub_3C34();

    swift_willThrow();

    v35 = 0;
  }

  v38 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_terminatedNotification;
  v39 = *&v33[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_terminatedNotification];
  *&v33[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_terminatedNotification] = v35;

  v40 = *&v21[v43];
  if (!v40)
  {
    goto LABEL_19;
  }

  [v40 primeNotification];
  v41 = *&v33[v38];
  if (!v41)
  {
    goto LABEL_20;
  }

  v42 = v41;

  [v42 primeNotification];
}

void sub_1C58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1D14()
{
  type metadata accessor for AUAXPCPlugin();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_C3F0 = result;
  return result;
}

id sub_1D48(void *a1)
{
  v15 = a1;
  v2 = sub_3D64();
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3D44();
  __chkstk_darwin(v4);
  v5 = sub_3CD4();
  __chkstk_darwin(v5 - 8);
  *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session] = 0;
  *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_notificationPort] = 0;
  *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_matchedNotification] = 0;
  *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_terminatedNotification] = 0;
  *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_interestNotifification] = 0;
  if (&_swiftEmptyArrayStorage >> 62 && sub_3E94())
  {
    sub_34D0(&_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_audioInterfaceServices] = v6;
  v11 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_dispatchQueue;
  sub_37C0(0, &qword_C3A8, OS_dispatch_queue_ptr);
  sub_3CC4();
  v17 = &_swiftEmptyArrayStorage;
  sub_23EC(&qword_C3B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_22CC(&qword_C3B8, &qword_42B8);
  sub_2434(&qword_C3C0, &qword_C3B8, &qword_42B8);
  sub_3DC4();
  (*(v13 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *&v1[v11] = sub_3D74();
  v7 = type metadata accessor for AUAXPCPlugin();
  v16.receiver = v1;
  v16.super_class = v7;
  v8 = v15;
  v9 = objc_msgSendSuper2(&v16, "initWithPlugin:", v15);

  if (v9)
  {
  }

  return v9;
}

id sub_20A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUAXPCPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id AUAXPCPluginFactory(void *a1, void *a2)
{
  v3 = qword_C3E8;
  v4 = a1;
  v5 = a2;
  if (v3 != -1)
  {
    swift_once();
  }

  result = [qword_C3F0 driverRef];
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

id AUAXPCPluginFactory(inAllocator:inRequestedTypeUUID:)()
{
  if (qword_C3E8 != -1)
  {
    swift_once();
  }

  result = [qword_C3F0 driverRef];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_228C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_22CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2314()
{
  result = qword_C388;
  if (!qword_C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C388);
  }

  return result;
}

uint64_t sub_238C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2434(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_23A4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2488(uint64_t *a1, void *a2)
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

    v9 = sub_3E14();

    if (v9)
    {

      sub_37C0(0, &qword_C3D0, IOKService_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_3E04();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_26C0(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_28B0(v20 + 1);
    }

    v18 = v8;
    sub_2AD8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_37C0(0, &qword_C3D0, IOKService_ptr);
  v11 = sub_3D94(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2B5C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_3DA4();

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

Swift::Int sub_26C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22CC(&qword_C3C8, &qword_42C0);
    v2 = sub_3E64();
    v15 = v2;
    sub_3DF4();
    if (sub_3E24())
    {
      sub_37C0(0, &qword_C3D0, IOKService_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_28B0(v9 + 1);
        }

        v2 = v15;
        result = sub_3D94(*(v15 + 40));
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

      while (sub_3E24());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_28B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22CC(&qword_C3C8, &qword_42C0);
  result = sub_3E54();
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
      result = sub_3D94(*(v5 + 40));
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

unint64_t sub_2AD8(uint64_t a1, void *a2)
{
  sub_3D94(a2[5]);
  result = sub_3DE4();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_2B5C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_28B0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2CCC();
      goto LABEL_12;
    }

    sub_2E1C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_3D94(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_37C0(0, &qword_C3D0, IOKService_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_3DA4();

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
  sub_3EA4();
  __break(1u);
}

id sub_2CCC()
{
  v1 = v0;
  sub_22CC(&qword_C3C8, &qword_42C0);
  v2 = *v0;
  v3 = sub_3E44();
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

uint64_t sub_2E1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22CC(&qword_C3C8, &qword_42C0);
  result = sub_3E54();
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
      result = sub_3D94(v16);
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

uint64_t sub_3030(void *a1)
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
    v6 = sub_3E34();

    if (v6)
    {
      v7 = sub_31C8(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_37C0(0, &qword_C3D0, IOKService_ptr);
  v10 = sub_3D94(*(v3 + 40));
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
    v15 = sub_3DA4();

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
    sub_2CCC();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_3330(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_31C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_3E04();
  v5 = swift_unknownObjectRetain();
  v6 = sub_26C0(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = sub_3D94(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_37C0(0, &qword_C3D0, IOKService_ptr);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_3DA4();

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
  sub_3330(v10);
  result = sub_3DA4();
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

unint64_t sub_3330(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_3DD4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_3D94(v10);

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

void sub_34D0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_3E94())
    {
LABEL_3:
      sub_22CC(&qword_C3C8, &qword_42C0);
      v3 = sub_3E74();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_3E94();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
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
      v8 = sub_3E84();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_3D94(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_37C0(0, &qword_C3D0, IOKService_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_3DA4();

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
    v37 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_3D94(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_37C0(0, &qword_C3D0, IOKService_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_3DA4();

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

uint64_t sub_37C0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_3808(void *a1)
{
  v3 = *(v1 + 16);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    sub_22CC(&qword_C380, &qword_42A8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_4270;
    *(v6 + 56) = sub_37C0(0, &qword_C3D0, IOKService_ptr);
    *(v6 + 64) = sub_3BB0();
    *(v6 + 32) = v5;
    sub_37C0(0, &qword_C378, OS_os_log_ptr);
    v7 = a1;
    v8 = sub_3DB4();
    v9 = sub_3D34();
    sub_3C44("usbaudioxpc matched a service %{public}@", 40, 2, &dword_0, v8, v9, v6);

    v10 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_audioInterfaceServices;
    swift_beginAccess();
    v11 = v7;
    sub_2488(&v15, v5);
    v12 = v15;
    swift_endAccess();

    v13 = *(v3 + v10);
    if ((v13 & 0xC000000000000001) != 0)
    {

      v14 = sub_3E04();

      if (!v14)
      {
        goto LABEL_8;
      }
    }

    else if (!*(v13 + 16))
    {
LABEL_8:

      return;
    }

    if (!*(v3 + OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session))
    {
      sub_F90();
    }

    goto LABEL_8;
  }
}

void sub_39C8(void *a1)
{
  v3 = *(v1 + 16);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    sub_22CC(&qword_C380, &qword_42A8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_4270;
    *(v6 + 56) = sub_37C0(0, &qword_C3D0, IOKService_ptr);
    *(v6 + 64) = sub_3BB0();
    *(v6 + 32) = v5;
    sub_37C0(0, &qword_C378, OS_os_log_ptr);
    v7 = a1;
    v8 = sub_3DB4();
    v9 = sub_3D34();
    sub_3C44("usbaudioxpc terminated a service %{public}@", 43, 2, &dword_0, v8, v9, v6);

    v10 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_audioInterfaceServices;
    swift_beginAccess();
    v11 = sub_3030(v5);
    swift_endAccess();

    v12 = *(v3 + v10);
    if ((v12 & 0xC000000000000001) != 0)
    {

      v13 = sub_3E04();

      if (v13)
      {
LABEL_4:

        return;
      }
    }

    else if (*(v12 + 16))
    {
      goto LABEL_4;
    }

    v14 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session;
    if (*(v3 + OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session))
    {

      sub_3C94();
    }

    *(v3 + v14) = 0;
  }
}

unint64_t sub_3BB0()
{
  result = qword_C3E0;
  if (!qword_C3E0)
  {
    sub_37C0(255, &qword_C3D0, IOKService_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3E0);
  }

  return result;
}