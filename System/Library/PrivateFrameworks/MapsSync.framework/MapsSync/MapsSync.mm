id sub_1000017A8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(void *__return_ptr, void *, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  a6(v15, a3, a4);

  __swift_project_boxed_opaque_existential_0(v15, v15[3]);
  v13 = sub_100029418();
  __swift_destroy_boxed_opaque_existential_0(v15);

  return v13;
}

id sub_1000018B0(id result, id a2)
{
  if ((v2[OBJC_IVAR____TtC9mapssyncd40MapsSyncStoreServerRequestHandlingPolicy_mapsInstalled] & 1) == 0)
  {
    sub_10000A05C();
    swift_allocError();
    *v12 = 5;
    return swift_willThrow();
  }

  if (!a2)
  {
    __break(1u);
    goto LABEL_38;
  }

  v4 = v2;
  v5 = result;
  result = [a2 entitlements];
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v6 = result;
  v7 = sub_100028F38();

  v39 = 0xD000000000000016;
  v40 = 0x800000010002C8E0;
  sub_100029348();
  if (!*(v7 + 16) || (v8 = sub_10000243C(&v41), (v9 & 1) == 0))
  {

    sub_100001EB8(&v41);
    goto LABEL_11;
  }

  sub_100002480(*(v7 + 56) + 32 * v8, v43);
  sub_100001EB8(&v41);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v41 = 0;
    v38.receiver = v4;
    v38.super_class = type metadata accessor for MapsSyncStoreServerRequestHandlingPolicy();
    v13 = objc_msgSendSuper2(&v38, "processRequest:fromClientWithContext:error:", v5, a2, &v41);
LABEL_12:
    v14 = v13;
    v15 = v41;
    if (v14)
    {
      sub_1000292D8();
      return swift_unknownObjectRelease();
    }

    v16 = v15;
    sub_100028C78();

    return swift_willThrow();
  }

  v36 = v39;
  v39 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046738, &unk_10002AFA0);
  v41 = sub_1000292B8();
  v42 = v10;
  v43[0] = 0xD000000000000011;
  v43[1] = 0x800000010002C900;
  sub_100001FC0();
  v11 = sub_1000292C8();

  if (v11)
  {

    goto LABEL_11;
  }

  if (v5)
  {
    v17 = [v5 requestType];
    if (v17 == 7)
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v41 = 0;
        v42 = 0xE000000000000000;
        v30 = v5;
        sub_100029388(25);

        v41 = v36;
        v42 = v40;
        v46._countAndFlagsBits = 0x6E6974656C656420;
        v46._object = 0xED0000203E2D2067;
        sub_100028FE8(v46);
        v31 = [v29 fetchRequest];
        v22 = [v31 entityName];

        if (v22)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (v17 != 2)
      {
        if (v17 != 1)
        {
          goto LABEL_36;
        }

        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (!v18)
        {
          goto LABEL_36;
        }

        v19 = v18;
        v41 = 0;
        v42 = 0xE000000000000000;
        v20 = v5;
        sub_100029388(27);

        v41 = v36;
        v42 = v40;
        v44._countAndFlagsBits = 0x7473657571657220;
        v44._object = 0xEF203E2D20676E69;
        sub_100028FE8(v44);
        v21 = [v19 entityName];
        if (v21)
        {
          v22 = v21;
LABEL_29:
          v32 = sub_100028F88();
          v34 = v33;

LABEL_31:
          v47._countAndFlagsBits = v32;
          v47._object = v34;
          sub_100028FE8(v47);

          v35._countAndFlagsBits = 0x737463656A626F20;
          v35._object = 0xE800000000000000;
LABEL_35:
          sub_100028FE8(v35);
          _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v41, v42);

          goto LABEL_36;
        }

LABEL_30:
        v32 = 0x6E776F6E6B6E55;
        v34 = 0xE700000000000000;
        goto LABEL_31;
      }

      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = v23;
        v41 = 0;
        v42 = 0xE000000000000000;
        v25 = v5;
        sub_100029388(25);

        v41 = v36;
        v42 = v40;
        v45._countAndFlagsBits = 0x20676E6976617320;
        v45._object = 0xEB00000000203E2DLL;
        sub_100028FE8(v45);
        v26 = [v24 insertedObjects];
        if (v26)
        {
          sub_100003E20(0, &qword_100046740, NSManagedObject_ptr);
          sub_10000A0B0();
          v27 = sub_100029108();

          if ((v27 & 0xC000000000000001) != 0)
          {
            v26 = sub_100029318();
          }

          else
          {
            v26 = *(v27 + 16);
          }
        }

        v43[0] = v26;
        v48._countAndFlagsBits = sub_100029408();
        sub_100028FE8(v48);

        v35._countAndFlagsBits = 0x287463656A626F20;
        v35._object = 0xEA00000000002973;
        goto LABEL_35;
      }
    }

LABEL_36:

    v41 = 0;
    v37.receiver = v4;
    v37.super_class = type metadata accessor for MapsSyncStoreServerRequestHandlingPolicy();
    v13 = objc_msgSendSuper2(&v37, "processRequest:fromClientWithContext:error:", v5, a2, &v41);
    goto LABEL_12;
  }

LABEL_39:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100001FC0()
{
  result = qword_100047310;
  if (!qword_100047310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047310);
  }

  return result;
}

uint64_t _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = 0;
    v6 = 7;
    if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
    {
      v6 = 11;
    }

    v7 = v6 | (v4 << 16);
    v20 = 4 * v4;
    while (1)
    {
      v8 = sub_100028FD8();
      v10 = (v9 & 1) != 0 ? v7 : v8;
      if (v10 >> 14 < v5)
      {
        break;
      }

      sub_100029008();
      v11 = sub_100028FB8();
      v13 = v12;

      v14 = sub_100029138();
      if (qword_100046258 != -1)
      {
        swift_once();
      }

      v15 = static OS_os_log.MapsSync;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10002AD50;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_1000022C4();
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      sub_100028DE8(v14, &_mh_execute_header, v15, "%@", 2, 2, v16);

      v5 = v10 >> 14;
      if (v10 >> 14 == v20)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v7 = sub_100029138();
  if (qword_100046258 != -1)
  {
LABEL_20:
    swift_once();
  }

  v18 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10002AD50;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000022C4();
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;

  sub_100028DE8(v7, &_mh_execute_header, v18, "%@", 2, 2, v19);
}

unint64_t sub_1000022C4()
{
  result = qword_100046300;
  if (!qword_100046300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046300);
  }

  return result;
}

unint64_t sub_100002318(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000023E0(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100029338();
      sub_100001EB8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000243C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100029328(*(v2 + 40));

  return sub_100002318(a1, v4);
}

uint64_t sub_100002480(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100002604(void *a1, uint64_t a2)
{
  v9 = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for MapsSyncStoreServerRequestHandlingPolicy();
  v5 = objc_msgSendSuper2(&v8, "processFaultForObjectWithID:fromClientWithContext:error:", a1, a2, &v9);
  v6 = v9;
  if (v5)
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = v6;
    sub_100028C78();

    swift_willThrow();
  }

  sub_1000026F0(a1);
}

void sub_1000026F0(void *a1)
{
  if (GEOConfigGetBOOL())
  {
    if (a1)
    {
      v2 = [a1 persistentStore];
      if (v2)
      {
        v3 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046720, &qword_10002AF90);
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_10002AD50;
        *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046728, &qword_10002AF98);
        *(v4 + 32) = a1;
        v5 = a1;
        isa = sub_100029038().super.isa;

        [v3 _mapsSyncDidUnregisterObjectsWithIDs_112229675:isa];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000029A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002A08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000034F8;

  return sub_100002AC0(a1, v4);
}

uint64_t sub_100002AC0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000036E8;

  return v6(a1);
}

uint64_t sub_100002BB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000034F8;

  return sub_100002C84(a1, v4, v5, v6);
}

uint64_t sub_100002C84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000034FC;

  return v7();
}

uint64_t sub_100002D6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000034F8;

  return sub_100002E2C(v2, v3, v4);
}

uint64_t sub_100002E2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000034F8;

  return v6();
}

uint64_t sub_100002F14(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000032B4;

  return sub_100003068();
}

uint64_t sub_100002FBC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000034F8;

  return sub_100002F14(v2, v3);
}

uint64_t sub_100003088()
{
  v1 = v0[22];
  v2 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService__accountStatus;
  v0[23] = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService__accountStatus;
  swift_beginAccess();
  v3 = *(v1 + v2);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));

  if (v4)
  {
    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v8 = objc_allocWithZone(CKContainerID);
    v9 = sub_100028F78();
    v10 = [v8 initWithContainerIdentifier:v9 environment:1];
    v0[24] = v10;

    v11 = [objc_allocWithZone(CKContainer) initWithContainerID:v10];
    v0[25] = v11;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_10000BEEC;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B30, &qword_10002B310);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000C290;
    v0[13] = &block_descriptor_53;
    v0[14] = v12;
    [v11 accountInfoWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000032B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 24);

    v5 = sub_100028C68();

    (*(v4 + 16))(v4, 0, v5);

    _Block_release(*(v3 + 24));
    v6 = *(v3 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100003438, 0, 0);
  }
}

uint64_t sub_100003438()
{
  if ([*(v0 + 40) deviceToDeviceEncryptionAvailability])
  {
    v1 = [*(v0 + 40) hasValidCredentials];
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  (*(v3 + 16))(v3, v1, 0);
  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000034FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000035F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_60Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_56Tm()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000376C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000037A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000037E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003828()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003860()
{

  sub_100006E48(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000038A4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100003914()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100003974()
{

  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_1000110C8(*(v0 + 32), v1);
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000039E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003A24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003A5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003A94()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003AD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003B4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003B8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473B8, &qword_10002BF80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003E20(0, &qword_100046270, OS_dispatch_source_ptr);
  sub_100003E20(0, &qword_100046278, OS_dispatch_queue_ptr);
  v3 = sub_100029188();
  v4 = sub_1000291B8();

  qword_100047418 = v4;
  v5 = objc_autoreleasePoolPush();
  sub_100003E68();
  objc_autoreleasePoolPop(v5);
  v6 = [objc_opt_self() mainRunLoop];
  [v6 run];

  return 0;
}

uint64_t sub_100003E20(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_100003E68()
{
  v0 = sub_100028EA8();
  v20 = *(v0 - 8);
  v21 = v0;
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100028EC8();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004304();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  swift_getObjectType();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  v26 = sub_100006D78;
  v27 = v9;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v17 = &v24;
  v24 = sub_100005AF0;
  v25 = &block_descriptor;
  v10 = _Block_copy(&aBlock);
  v18 = v6;

  sub_100028EB8();
  sub_100004508();
  sub_1000291C8();
  _Block_release(v10);
  (*(v20 + 8))(v2, v21);
  (*(v3 + 8))(v5, v19);

  sub_1000291E8();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v14 = sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10002AD50;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000022C4();
    *(v16 + 32) = 0xD00000000000001ALL;
    *(v16 + 40) = 0x800000010002C3E0;
    sub_100028DE8(v14, &_mh_execute_header, v15, "%{public}@", 10, 2, v16);

    exit(1);
  }

  sub_1000045E0();
  sub_100003E20(0, &qword_100046278, OS_dispatch_queue_ptr);
  v11 = sub_100029188();
  v26 = sub_100004DBC;
  v27 = 0;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000052CC;
  v25 = &block_descriptor_6;
  v12 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v11, v12);
  _Block_release(v12);

  type metadata accessor for MapsSyncDaemon();
  swift_allocObject();
  v13 = sub_10000874C();
  swift_beginAccess();
  *v8 = v13;

  if (*v8)
  {

    sub_100004AE0(sub_10000487C, 0);
  }
}

id sub_100004304()
{
  result = [objc_opt_self() sharedPlatform];
  if (result)
  {
    v1 = result;
    v2 = [result isInternalInstall];

    if (v2 && GEOConfigGetBOOL())
    {
      GEOConfigGetUint64();
      GEOConfigGetUint64();
      GEOGetApproximateTapewormIterations();
      return GEOInsertTapewormOnDispatchTimer();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000043C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10002AD50;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000022C4();
  *(v6 + 32) = 0xD00000000000001ALL;
  *(v6 + 40) = 0x800000010002C5A0;
  sub_100028DE8(v4, &_mh_execute_header, v5, "%{public}@", 10, 2, v6);

  swift_beginAccess();
  *(a1 + 16) = 0;

  if (a2)
  {
    sub_100003E20(0, &qword_100046270, OS_dispatch_source_ptr);
    sub_1000291D8();
  }

  exit(0);
}

uint64_t sub_100004508()
{
  sub_100028EA8();
  sub_100006DA4(&qword_100046308, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046310, &qword_10002AD70);
  sub_100006DEC(&qword_100046318, &qword_100046310, &qword_10002AD70);
  return sub_1000292E8();
}

void sub_1000045E0()
{
  v0 = [objc_opt_self() sharedManager];
  if (!v0)
  {
    __break(1u);
    return;
  }

  v1 = v0;
  v2 = [v0 isSharedIPad];

  if ((v2 & 1) == 0)
  {
    v3 = [objc_opt_self() currentPersona];
    if (v3)
    {
      v12 = v3;
      v4 = [objc_opt_self() personaAttributesForPersonaType:0];
      if (v4)
      {
        v11 = v4;
        if (([v12 isPersonalPersona] & 1) == 0)
        {
          v5 = [v11 userPersonaUniqueString];
          v6 = [v12 generateAndRestorePersonaContextWithPersonaUniqueString:v5];

          if (v6)
          {
            sub_100029388(27);

            swift_getErrorValue();
            v14._countAndFlagsBits = sub_100029488();
            sub_100028FE8(v14);

            v7 = sub_100029148();
            if (qword_100046258 != -1)
            {
              swift_once();
            }

            v8 = static OS_os_log.MapsSync;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
            v9 = swift_allocObject();
            *(v9 + 16) = xmmword_10002AD50;
            *(v9 + 56) = &type metadata for String;
            *(v9 + 64) = sub_1000022C4();
            *(v9 + 32) = 0xD000000000000019;
            *(v9 + 40) = 0x800000010002C580;
            sub_100028DE8(v7, &_mh_execute_header, v8, "%{public}@", 10, 2, v9);

            return;
          }
        }

        v10 = v11;
      }

      else
      {
        v10 = v12;
      }
    }
  }
}

uint64_t sub_10000487C(uint64_t *a1)
{
  if (*(a1 + 8) == 1)
  {
    sub_100029388(28);
    v9._object = 0x800000010002C4C0;
    v9._countAndFlagsBits = 0xD00000000000001ALL;
    sub_100028FE8(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    v5 = sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10002AD50;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1000022C4();
    *(v7 + 32) = 0;
    *(v7 + 40) = 0xE000000000000000;
    sub_100028DE8(v5, &_mh_execute_header, v6, "%{public}@", 10, 2, v7);

    exit(1);
  }

  v1 = sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10002AD50;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000022C4();
  *(v3 + 32) = 0xD00000000000001FLL;
  *(v3 + 40) = 0x800000010002C4E0;
  sub_100028DE8(v1, &_mh_execute_header, v2, "%{public}@", 10, 2, v3);
}

uint64_t sub_100004AE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100028EA8();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100028EC8();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 48);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_100006D98;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005AF0;
  aBlock[3] = &block_descriptor_12;
  v14 = _Block_copy(aBlock);
  v15 = v12;

  sub_100028EB8();
  v20 = _swiftEmptyArrayStorage;
  sub_100006DA4(&qword_100046308, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046310, &qword_10002AD70);
  sub_100006DEC(&qword_100046318, &qword_100046310, &qword_10002AD70);
  sub_1000292E8();
  sub_100029198();
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);
}

char *sub_100004DBC(void *a1)
{
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    result = xpc_dictionary_get_dictionary(a1, "UserInfo");
    if (result)
    {
      v3 = result;
      v4 = xpc_dictionary_get_array(result, "bundleIDs");
      if (v4)
      {
        v5 = v4;
        v6 = xpc_dictionary_get_BOOL(v3, "isPlaceholder");
        v20 = &_swiftEmptySetSingleton;
        v7 = swift_allocObject();
        *(v7 + 16) = &v20;
        v8 = swift_allocObject();
        *(v8 + 16) = sub_100006F20;
        *(v8 + 24) = v7;
        v18 = sub_100006F28;
        v19 = v8;
        aBlock = _NSConcreteStackBlock;
        v15 = 1107296256;
        v16 = sub_1000051C8;
        v17 = &block_descriptor_47;
        v9 = _Block_copy(&aBlock);

        xpc_array_apply(v5, v9);
        _Block_release(v9);
        LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

        if (v9)
        {
          __break(1u);
        }

        else
        {
          v13 = 0;
          v10 = swift_allocObject();
          *(v10 + 16) = &v13;
          v11 = swift_allocObject();
          *(v11 + 16) = sub_100006F54;
          *(v11 + 24) = v10;
          v18 = sub_100007040;
          v19 = v11;
          aBlock = _NSConcreteStackBlock;
          v15 = 1107296256;
          v16 = sub_1000051C8;
          v17 = &block_descriptor_57;
          v12 = _Block_copy(&aBlock);

          xpc_array_apply(v5, v12);
          _Block_release(v12);
          LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

          if ((v12 & 1) == 0)
          {
            if (v6 || (v13 & 1) == 0)
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

LABEL_14:
            aBlock = 0;
            v15 = 0xE000000000000000;
            sub_100029388(39);

            aBlock = 0xD000000000000025;
            v15 = 0x800000010002C550;
            v22._countAndFlagsBits = sub_100028FF8();
            sub_100028FE8(v22);

            _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(aBlock, v15);

            exit(0);
          }
        }

        __break(1u);
        goto LABEL_14;
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10000516C(int a1, xpc_object_t xstring)
{
  if (xpc_string_get_string_ptr(xstring))
  {
    sub_100028FF8();
    sub_100027D44();
  }

  return 1;
}

uint64_t sub_1000051C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_100005220(int a1, xpc_object_t xstring, _BYTE *a3)
{
  if (xpc_string_get_string_ptr(xstring))
  {
    if (sub_100028FF8() == 0x6C7070612E6D6F63 && v4 == 0xEE007370614D2E65)
    {

LABEL_6:
      result = 0;
      *a3 = 1;
      return result;
    }

    v5 = sub_100029428();

    if (v5)
    {
      goto LABEL_6;
    }
  }

  return 1;
}

uint64_t sub_1000052CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t variable initialization expression of MapsSyncDaemon.dispatchQueue()
{
  v7 = sub_100029178();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100029158();
  __chkstk_darwin(v3);
  v4 = sub_100028EC8();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100003E20(0, &qword_100046278, OS_dispatch_queue_ptr);
  sub_100028EB8();
  v8 = _swiftEmptyArrayStorage;
  sub_100006DA4(&qword_100046280, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046288, &unk_10002AD60);
  sub_100006DEC(&qword_100046290, &qword_100046288, &unk_10002AD60);
  sub_1000292E8();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return sub_1000291A8();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005640(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_100028EF8();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v35 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_100029388(29);

  v41 = 0x626179727465525BLL;
  v42 = 0xEB000000003A656CLL;
  v40 = type metadata accessor for MapsSyncDaemon();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046320, &qword_10002AD78);
  v43._countAndFlagsBits = sub_100028F98();
  sub_100028FE8(v43);

  v44._object = 0x800000010002C440;
  v44._countAndFlagsBits = 0xD000000000000010;
  sub_100028FE8(v44);
  v9 = v41;
  v8 = v42;
  v10 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v10 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v15 = sub_100029138();
    if (qword_100046258 != -1)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v32 = a2;
  v33 = a3;
  v34 = a1;
  v11 = 0;
  v12 = 7;
  if (((v42 >> 60) & ((v41 & 0x800000000000000) == 0)) != 0)
  {
    v12 = 11;
  }

  a2 = v12 | (v10 << 16);
  v39 = 4 * v10;
  v38 = xmmword_10002AD50;
  do
  {
    v13 = sub_100028FD8();
    if (v14)
    {
      a1 = a2;
    }

    else
    {
      a1 = v13;
    }

    v15 = a1 >> 14;
    if (a1 >> 14 < v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_100029008();
    v16 = sub_100028FB8();
    a3 = v17;

    v18 = sub_100029138();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v20 = swift_allocObject();
    *(v20 + 16) = v38;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_1000022C4();
    *(v20 + 32) = v16;
    *(v20 + 40) = a3;
    sub_100028DE8(v18, &_mh_execute_header, v19, "%@", 2, 2, v20);

    v11 = a1 >> 14;
  }

  while (v15 != v39);
  a3 = v33;
  a1 = v34;
  a2 = v32;
  while (1)
  {

    v23 = *(a1 + 24);
    v24 = *(a1 + 48);
    v26 = v35;
    v25 = v36;
    *v35 = v24;
    v8 = v37;
    (*(v25 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v37);
    v27 = v24;
    LOBYTE(v24) = sub_100028F18();
    v28 = *(v25 + 8);
    v15 = v25 + 8;
    v28(v26, v8);
    if (v24)
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
LABEL_16:
    v21 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10002AD50;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_1000022C4();
    *(v22 + 32) = v9;
    *(v22 + 40) = v8;
    sub_100028DE8(v15, &_mh_execute_header, v21, "%@", 2, 2, v22);
  }

  v29 = swift_allocObject();
  v29[2] = a1;
  v29[3] = 1;
  v29[4] = a2;
  v29[5] = a3;
  v29[6] = v23;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100006E40;
  *(v30 + 24) = v29;

  sub_100007214(sub_100006E44, v30);
}

uint64_t sub_100005AF0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100005B34(unint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, double a7)
{
  v70 = a6;
  v72 = sub_100028EE8();
  v69 = *(v72 - 8);
  v13 = __chkstk_darwin(v72);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v68 = &v61 - v16;
  v17 = sub_100028EA8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100028EC8();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v43 = *(a3 + 48);
    v80 = 0;
    *&v71 = v23;
    v67 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = swift_allocObject();
    *(v44 + 16) = a4;
    *(v44 + 24) = a5;
    *(v44 + 32) = v70;
    *(v44 + 40) = a1;
    *(v44 + 48) = v80;
    v78 = sub_100006E54;
    v79 = v44;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100005AF0;
    v77 = &block_descriptor_24;
    v45 = _Block_copy(&aBlock);
    v46 = v43;

    sub_100028EB8();
    v73 = _swiftEmptyArrayStorage;
    sub_100006DA4(&qword_100046308, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046310, &qword_10002AD70);
    sub_100006DEC(&qword_100046318, &qword_100046310, &qword_10002AD70);
    sub_1000292E8();
    v47 = v67;
    sub_100029198();
    _Block_release(v45);

    (*(v18 + 8))(v20, v17);
    (*(v22 + 8))(v47, v71);
  }

  v64 = v17;
  v65 = v20;
  v26 = v70;
  v63 = a1;
  v66 = a5;
  v27 = *(a3 + 16);
  if (v27 < 1 || v27 > a4)
  {
    v48 = *(a3 + 48);
    *&v71 = v23;
    v63 = v22;
    v49 = v25;
    v62 = v48;
    sub_100028ED8();
    v50 = v68;
    sub_100028F08();
    v69 = *(v69 + 8);
    (v69)(v15, v72);
    v51 = swift_allocObject();
    *(v51 + 16) = a3;
    *(v51 + 24) = a7;
    v52 = v66;
    *(v51 + 32) = a4;
    *(v51 + 40) = v52;
    *(v51 + 48) = v26;
    v78 = sub_100006E64;
    v79 = v51;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100005AF0;
    v77 = &block_descriptor_30;
    v53 = _Block_copy(&aBlock);

    sub_100028EB8();
    v73 = _swiftEmptyArrayStorage;
    sub_100006DA4(&qword_100046308, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046310, &qword_10002AD70);
    sub_100006DEC(&qword_100046318, &qword_100046310, &qword_10002AD70);
    v54 = v64;
    v55 = v65;
    sub_1000292E8();
    v56 = v62;
    sub_100029168();
    _Block_release(v53);

    (*(v18 + 8))(v55, v54);
    (*(v63 + 8))(v49, v71);
    (v69)(v50, v72);
  }

  aBlock = 0;
  v75 = 0xE000000000000000;
  sub_100029388(46);

  aBlock = 0x626179727465525BLL;
  v75 = 0xEB000000003A656CLL;
  v73 = type metadata accessor for MapsSyncDaemon();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046320, &qword_10002AD78);
  v81._countAndFlagsBits = sub_100028F98();
  sub_100028FE8(v81);

  v82._object = 0x800000010002C460;
  v82._countAndFlagsBits = 0xD00000000000001DLL;
  sub_100028FE8(v82);
  v73 = *(a3 + 16);
  v83._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v83);

  v84._countAndFlagsBits = 11817;
  v84._object = 0xE200000000000000;
  sub_100028FE8(v84);
  v28 = aBlock;
  v29 = v75;
  v30 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v30 = aBlock & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v31 = 0;
    v32 = 7;
    if (((v75 >> 60) & ((aBlock & 0x800000000000000) == 0)) != 0)
    {
      v32 = 11;
    }

    v33 = v32 | (v30 << 16);
    v72 = 4 * v30;
    v71 = xmmword_10002AD50;
    while (1)
    {
      v34 = sub_100028FD8();
      v36 = (v35 & 1) != 0 ? v33 : v34;
      if (v36 >> 14 < v31)
      {
        break;
      }

      sub_100029008();
      v37 = sub_100028FB8();
      v39 = v38;

      v40 = sub_100029138();
      if (qword_100046258 != -1)
      {
        swift_once();
      }

      v41 = static OS_os_log.MapsSync;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v42 = swift_allocObject();
      *(v42 + 16) = v71;
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = sub_1000022C4();
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      sub_100028DE8(v40, &_mh_execute_header, v41, "%@", 2, 2, v42);

      v31 = v36 >> 14;
      if (v36 >> 14 == v72)
      {
        v58 = v66;
        v31 = v63;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = sub_100029138();
    v31 = v63;
    if (qword_100046258 == -1)
    {
      goto LABEL_22;
    }
  }

  swift_once();
LABEL_22:
  v59 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10002AD50;
  *(v60 + 56) = &type metadata for String;
  *(v60 + 64) = sub_1000022C4();
  *(v60 + 32) = v28;
  *(v60 + 40) = v29;
  sub_100028DE8(v36, &_mh_execute_header, v59, "%@", 2, 2, v60);
  v58 = v66;
LABEL_23:

  aBlock = v31;
  LOBYTE(v75) = 1;
  sub_100006E78(v31, 1);
  v58(&aBlock);
  return sub_100006E48(v31, 1);
}

uint64_t sub_100006470(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_100028EF8();
  v41 = *(v10 - 8);
  __chkstk_darwin(v10);
  v40 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 40) * a5 >= *(a1 + 32))
  {
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = *(a1 + 40) * a5;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_100029388(62);
  v48._countAndFlagsBits = 0x626179727465525BLL;
  v48._object = 0xEB000000003A656CLL;
  sub_100028FE8(v48);
  v45 = type metadata accessor for MapsSyncDaemon();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046320, &qword_10002AD78);
  v49._countAndFlagsBits = sub_100028F98();
  sub_100028FE8(v49);

  v50._object = 0x800000010002C480;
  v50._countAndFlagsBits = 0xD000000000000015;
  sub_100028FE8(v50);
  v42 = a2;
  v45 = a2;
  v51._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v51);

  v52._countAndFlagsBits = 0x7972746552202E29;
  v52._object = 0xEF206E6920676E69;
  sub_100028FE8(v52);
  sub_1000290F8();
  v53._countAndFlagsBits = 0x73646E6F63657320;
  v53._object = 0xE90000000000002ELL;
  sub_100028FE8(v53);
  v14 = v46;
  v13 = v47;
  v15 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v15 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    v16 = sub_100029138();
    if (qword_100046258 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v36 = v10;
  v37 = a3;
  v38 = a4;
  v39 = a1;
  v16 = 0;
  v17 = 7;
  if (((v47 >> 60) & ((v46 & 0x800000000000000) == 0)) != 0)
  {
    v17 = 11;
  }

  v10 = v17 | (v15 << 16);
  v44 = 4 * v15;
  v43 = xmmword_10002AD50;
  do
  {
    v18 = sub_100028FD8();
    if (v19)
    {
      a1 = v10;
    }

    else
    {
      a1 = v18;
    }

    a3 = a1 >> 14;
    if (a1 >> 14 < v16)
    {
      __break(1u);
      goto LABEL_24;
    }

    sub_100029008();
    v20 = sub_100028FB8();
    a4 = v21;

    v22 = sub_100029138();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v24 = swift_allocObject();
    *(v24 + 16) = v43;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_1000022C4();
    *(v24 + 32) = v20;
    *(v24 + 40) = a4;
    sub_100028DE8(v22, &_mh_execute_header, v23, "%@", 2, 2, v24);

    v16 = a1 >> 14;
  }

  while (a3 != v44);
  a4 = v38;
  a1 = v39;
  v10 = v36;
  a3 = v37;
  while (1)
  {

    v13 = v42 + 1;
    if (!__OFADD__(v42, 1))
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
LABEL_19:
    v25 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10002AD50;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_1000022C4();
    *(v26 + 32) = v14;
    *(v26 + 40) = v13;
    sub_100028DE8(v16, &_mh_execute_header, v25, "%@", 2, 2, v26);
  }

  v27 = *(a1 + 48);
  v29 = v40;
  v28 = v41;
  *v40 = v27;
  (*(v28 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v10);
  v30 = v27;
  LOBYTE(v27) = sub_100028F18();
  v31 = *(v28 + 8);
  v16 = v28 + 8;
  v31(v29, v10);
  if ((v27 & 1) == 0)
  {
    goto LABEL_25;
  }

  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = v13;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = v12;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10000705C;
  *(v33 + 24) = v32;

  sub_100007214(sub_100007060, v33);
}

uint64_t sub_1000069D0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, char a5)
{
  v20 = a5 & 1;
  v19 = a4;
  sub_100029388(45);

  type metadata accessor for MapsSyncDaemon();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046320, &qword_10002AD78);
  v21._countAndFlagsBits = sub_100028F98();
  sub_100028FE8(v21);

  v22._object = 0x800000010002C4A0;
  v22._countAndFlagsBits = 0xD000000000000013;
  sub_100028FE8(v22);
  v23._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v23);

  v24._countAndFlagsBits = 0x74706D6574746120;
  v24._object = 0xEB000000002E2973;
  sub_100028FE8(v24);
  v18 = a2;
  v6 = 0;
  while (1)
  {
    v7 = sub_100028FD8();
    v9 = (v8 & 1) != 0 ? 720903 : v7;
    if (v9 >> 14 < v6)
    {
      break;
    }

    sub_100029008();
    v10 = sub_100028FB8();
    v12 = v11;

    a2 = sub_100029138();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10002AD50;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_1000022C4();
    *(v14 + 32) = v10;
    *(v14 + 40) = v12;
    sub_100028DE8(a2, &_mh_execute_header, v13, "%@", 2, 2, v14);

    v6 = v9 >> 14;
    if (v9 >> 14 == 44)
    {
      a2 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  swift_once();
  v15 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10002AD50;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_1000022C4();
  *(v16 + 32) = 0x626179727465525BLL;
  *(v16 + 40) = 0xEB000000003A656CLL;
  sub_100028DE8(720903, &_mh_execute_header, v15, "%@", 2, 2, v16);
LABEL_10:

  return a2(&v19);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100006DEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006E48(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100006E78(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006EE0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_100006F6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006F8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_100006FDC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_1000070BC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedHistoryTransitItem();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100007120@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedCollection();
  result = sub_100029398();
  *a2 = result;
  return result;
}

id sub_1000071BC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedHistorySearchItem();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100007214(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v133 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046750, qword_10002B660);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v117 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v117 - v12;
  __chkstk_darwin(v11);
  v15 = &v117 - v14;
  v16 = sub_100028D08();
  v131 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v127 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v128 = &v117 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v117 - v22;
  __chkstk_darwin(v21);
  v132 = &v117 - v24;
  v25 = [objc_opt_self() sharedObject];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 canAccessFilesWithProtection:3];

    if ((v27 & 1) == 0)
    {
      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000002CLL, 0x800000010002CAA0);
      sub_10000A05C();
      v47 = swift_allocError();
      *v48 = 6;
LABEL_13:
      v133(v47, 1);

      return;
    }
  }

  v129 = a2;
  v130 = v16;
  v28 = [objc_opt_self() mainBundle];
  v29 = sub_100028F78();
  v30 = sub_100028F78();
  v31 = [v28 URLForResource:v29 withExtension:v30];

  if (!v31)
  {
    v49 = sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10002AD50;
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = sub_1000022C4();
    *(v51 + 32) = 0xD00000000000001BLL;
    *(v51 + 40) = 0x800000010002C920;
    sub_100028DE8(v49, &_mh_execute_header, v50, "%{public}@", 10, 2, v51);

    sub_10000A05C();
    v47 = swift_allocError();
    *v52 = 4;
    goto LABEL_13;
  }

  v126 = v2;
  sub_100028CE8();

  v32 = v131;
  v33 = *(v131 + 32);
  v34 = v23;
  v35 = v130;
  v33(v132, v34, v130);
  v36 = objc_allocWithZone(NSManagedObjectModel);
  sub_100028CB8(v37);
  v39 = v38;
  v40 = [v36 initWithContentsOfURL:v38];

  if (v40)
  {
    v125 = v7;
    type metadata accessor for MapsSyncUtil();
    sub_100011FCC(0, v15);
    v41 = *(v32 + 48);
    if (v41(v15, 1, v35) == 1)
    {
      v42 = v40;
      sub_10000A118(v15);
      v43 = sub_100029148();
      if (qword_100046258 != -1)
      {
        swift_once();
      }

      v44 = static OS_os_log.MapsSync;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_10002AD50;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_1000022C4();
      *(v45 + 32) = 0xD00000000000001FLL;
      *(v45 + 40) = 0x800000010002C960;
      sub_100028DE8(v43, &_mh_execute_header, v44, "%{public}@", 10, 2, v45);

      sub_10000A05C();
      swift_allocError();
      *v46 = 4;
      (v133)();

      (*(v131 + 8))(v132, v130);
    }

    else
    {
      v124 = v40;
      v57 = v128;
      v33(v128, v15, v35);
      sub_100011FCC(1, v13);
      if (v41(v13, 1, v35) == 1)
      {
        sub_10000A118(v13);
        v58 = sub_100029148();
        if (qword_100046258 != -1)
        {
          swift_once();
        }

        v59 = static OS_os_log.MapsSync;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_10002AD50;
        *(v60 + 56) = &type metadata for String;
        *(v60 + 64) = sub_1000022C4();
        *(v60 + 32) = 0xD000000000000025;
        *(v60 + 40) = 0x800000010002C980;
        sub_100028DE8(v58, &_mh_execute_header, v59, "%{public}@", 10, 2, v60);

        sub_10000A05C();
        swift_allocError();
        *v61 = 4;
        (v133)();

        v62 = v130;
        v63 = *(v131 + 8);
        v63(v128, v130);
      }

      else
      {
        v33(v127, v13, v35);
        v64 = sub_100008A4C();
        v65 = objc_allocWithZone(NSPersistentCloudKitContainer);
        v123 = v41;
        v66 = v65;
        v67 = v57;
        v68 = sub_100028F78();
        v69 = [v66 initWithName:v68];

        sub_1000090F4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_10002AEB0;
        *(v70 + 32) = v64;
        sub_100003E20(0, &qword_100046760, NSPersistentStoreDescription_ptr);
        v71 = v69;
        v122 = v64;
        isa = sub_100029038().super.isa;

        v121 = v71;
        [v71 setPersistentStoreDescriptions:isa];

        v73 = v131;
        v120 = *(v131 + 16);
        v120(v10, v67, v35);
        v119 = *(v73 + 56);
        v119(v10, 0, 1, v35);
        v74 = v124;
        sub_100008CD0(0xD00000000000001DLL, 0x800000010002C9B0);
        v118 = type metadata accessor for MapsSyncStoreServerRequestHandlingPolicy();
        v75 = [objc_allocWithZone(v118) init];
        LODWORD(v68) = v123(v10, 1, v35);
        v77 = v74;
        v78 = 0;
        if (v68 != 1)
        {
          sub_100028CB8(v76);
          v78 = v79;
          (*(v131 + 8))(v10, v130);
        }

        v80 = objc_allocWithZone(NSXPCStoreServer);
        v81 = sub_100028F28().super.isa;

        v82 = [v80 initForStoreWithURL:v78 usingModel:v77 options:v81 policy:v75];

        v124 = v82;
        v83 = v125;
        if (v82)
        {
          v84 = v130;
          v120(v125, v127, v130);
          v119(v83, 0, 1, v84);
          sub_100008CD0(0xD00000000000001DLL, 0x800000010002CA00);
          v85 = [objc_allocWithZone(v118) init];
          v86 = v123(v83, 1, v84);
          v88 = v121;
          if (v86 == 1)
          {
            v89 = 0;
          }

          else
          {
            sub_100028CB8(v87);
            v89 = v95;
            (*(v131 + 8))(v83, v84);
          }

          v96 = v126;
          v97 = objc_allocWithZone(NSXPCStoreServer);
          v98 = sub_100028F28().super.isa;

          v99 = [v97 initForStoreWithURL:v89 usingModel:v77 options:v98 policy:v85];

          if (v99)
          {
            v100 = v124;
            [v124 setDelegate:v96];
            [v99 setDelegate:v96];
            v101 = sub_100028040("LoadStore", 9, 2u, 1);
            v102 = swift_allocObject();
            v102[2] = v101;
            v102[3] = v96;
            v103 = v133;
            v102[4] = v88;
            v102[5] = v103;
            v102[6] = v129;
            v102[7] = v100;
            v102[8] = v99;
            aBlock[4] = sub_10000A180;
            aBlock[5] = v102;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10000854C;
            aBlock[3] = &block_descriptor_0;
            v104 = _Block_copy(aBlock);
            v105 = v88;
            v106 = v100;
            v107 = v99;

            [v105 loadPersistentStoresWithCompletionHandler:v104];

            _Block_release(v104);

            v108 = v130;
            v109 = *(v131 + 8);
            v109(v127, v130);
            v109(v128, v108);
            v109(v132, v108);
            v110 = v96[9];
            v96[9] = v105;

            v111 = v96[7];
            v96[7] = v100;

            v112 = v96[8];
            v96[8] = v99;

            return;
          }

          v113 = sub_100029148();
          if (qword_100046258 != -1)
          {
            swift_once();
          }

          v114 = static OS_os_log.MapsSync;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
          v115 = swift_allocObject();
          *(v115 + 16) = xmmword_10002AD50;
          *(v115 + 56) = &type metadata for String;
          *(v115 + 64) = sub_1000022C4();
          *(v115 + 32) = 0xD000000000000029;
          *(v115 + 40) = 0x800000010002CA20;
          sub_100028DE8(v113, &_mh_execute_header, v114, "%{public}@", 10, 2, v115);

          sub_10000A05C();
          swift_allocError();
          *v116 = 4;
          (v133)();
        }

        else
        {

          v90 = v121;
          v91 = sub_100029148();
          if (qword_100046258 != -1)
          {
            swift_once();
          }

          v92 = static OS_os_log.MapsSync;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
          v93 = swift_allocObject();
          *(v93 + 16) = xmmword_10002AD50;
          *(v93 + 56) = &type metadata for String;
          *(v93 + 64) = sub_1000022C4();
          *(v93 + 32) = 0xD000000000000023;
          *(v93 + 40) = 0x800000010002C9D0;
          sub_100028DE8(v91, &_mh_execute_header, v92, "%{public}@", 10, 2, v93);

          sub_10000A05C();
          swift_allocError();
          *v94 = 4;
          (v133)();
        }

        v62 = v130;
        v63 = *(v131 + 8);
        v63(v127, v130);
        v63(v128, v62);
      }

      v63(v132, v62);
    }
  }

  else
  {
    v53 = sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v54 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_10002AD50;
    *(v55 + 56) = &type metadata for String;
    *(v55 + 64) = sub_1000022C4();
    *(v55 + 32) = 0xD000000000000014;
    *(v55 + 40) = 0x800000010002C940;
    sub_100028DE8(v53, &_mh_execute_header, v54, "%{public}@", 10, 2, v55);

    sub_10000A05C();
    swift_allocError();
    *v56 = 4;
    (v133)();

    (*(v32 + 8))(v132, v35);
  }
}

void sub_10000836C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, void *a8, void *a9)
{
  sub_1000285E4("LoadStore", 9, 2u, a3, 1);
  if (a2)
  {
    swift_errorRetain();
    v15 = sub_100028C68();
    sub_10000994C(v15, a1, a5);

    swift_errorRetain();
    a6(a2, 1);
  }

  else
  {
    [a8 startListening];
    [a9 startListening];
    type metadata accessor for MapsSyncDaemonPeriodicActivityHandler();
    swift_allocObject();
    v16 = a5;
    *(a4 + 88) = sub_100026E80(v16);

    v17 = objc_allocWithZone(type metadata accessor for MapsSyncDaemonService());
    v18 = sub_10000B1CC(v16);
    v19 = *(a4 + 80);
    *(a4 + 80) = v18;

    v20 = *(a4 + 88);
    if (v20)
    {
      v21 = *(a4 + 80);
      v22 = *(v20 + 32);
      *(v20 + 32) = v21;
    }

    v23 = *(a4 + 80);
    if (v23)
    {
      *&v23[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_activityHandler] = *(a4 + 88);
      v24 = v23;
    }
  }
}

void sub_10000854C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

Swift::String __swiftcall MapsSyncDaemon.identifier(for:)(NSXPCConnection a1)
{
  v1 = 0x636E79537370614DLL;
  v2 = 0xEC0000004350582DLL;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t MapsSyncDaemon.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10000874C()
{
  v7[0] = sub_100029178();
  v1 = *(v7[0] - 8);
  __chkstk_darwin(v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100029158();
  __chkstk_darwin(v4);
  v5 = sub_100028EC8();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = 5;
  *(v0 + 24) = xmmword_10002AEC0;
  *(v0 + 40) = 0x3FF8000000000000;
  sub_100003E20(0, &qword_100046278, OS_dispatch_queue_ptr);
  sub_100028EB8();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10000A23C(&qword_100046280, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046288, &unk_10002AD60);
  sub_10000A284();
  sub_1000292E8();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7[0]);
  *(v0 + 48) = sub_1000291A8();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  return v0;
}

id sub_100008A18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncStoreServerRequestHandlingPolicy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100008A4C()
{
  v0 = objc_allocWithZone(NSPersistentStoreDescription);
  sub_100028CB8(v1);
  v3 = v2;
  v4 = [v0 initWithURL:v2];

  [v4 setType:NSSQLiteStoreType];
  [v4 setOption:NSFileProtectionNone forKey:NSPersistentStoreFileProtectionKey];
  sub_100003E20(0, &qword_100046788, NSNumber_ptr);
  isa = sub_100029268(1).super.super.isa;
  [v4 setOption:isa forKey:NSPersistentStoreRemoteChangeNotificationPostOptionKey];

  v6 = sub_100029268(1).super.super.isa;
  [v4 setOption:v6 forKey:NSPersistentHistoryTrackingKey];

  v7 = sub_100029268(1).super.super.isa;
  [v4 setOption:v7 forKey:NSPersistentStoreServiceConfigurationOptionKey];

  v8 = sub_100028F78();
  [v4 setConfiguration:v8];

  v9 = objc_allocWithZone(NSCloudKitMirroringDelegateOptions);
  v10 = sub_100028F78();
  v11 = [v9 initWithContainerIdentifier:v10];

  v12 = sub_100028F78();
  [v11 setApsConnectionMachServiceName:v12];

  [v11 setUseDeviceToDeviceEncryption:1];
  [v11 setAutomaticallyScheduleImportAndExportOperations:1];
  v13 = sub_100029278(0x200000).super.super.isa;
  [v11 setOperationMemoryThresholdBytes:v13];

  v14 = [objc_allocWithZone(NSCloudKitMirroringDelegate) initWithOptions:v11];
  [v4 setMirroringDelegate:v14];

  return v4;
}

unint64_t sub_100008CD0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472B0, &unk_10002BE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002AED0;
  sub_100028F88();
  sub_100029348();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_100028F88();
  sub_100029348();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  sub_100028F88();
  sub_100029348();
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = 1;
  sub_100028F88();
  sub_100029348();
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 1;
  sub_100028F88();
  sub_100029348();
  *(inited + 384) = &type metadata for String;
  *(inited + 360) = a1;
  *(inited + 368) = a2;

  v5 = sub_100026B8C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046778, &unk_10002AFE0);
  swift_arrayDestroy();
  return v5;
}

id sub_100008E90(void *a1)
{
  sub_100029388(25);

  v17[0] = 0xD000000000000017;
  v17[1] = 0x800000010002CBA0;
  v2 = [a1 description];
  v3 = sub_100028F88();
  v5 = v4;

  v19._countAndFlagsBits = v3;
  v19._object = v5;
  sub_100028FE8(v19);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000017, 0x800000010002CBA0);

  v6.super.super.isa = sub_100029078().super.super.isa;
  if (!_kCFURLIsExcludedFromCloudBackupKey)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_100028F88();
  v7 = sub_100028F78();

  v17[0] = 0;
  v8 = [a1 setResourceValue:v6.super.super.isa forKey:v7 error:v17];

  if (v8)
  {
    v9 = v17[0];
  }

  else
  {
    v10 = v17[0];
    sub_100028C78();

    swift_willThrow();
  }

  v11.super.super.isa = sub_100029078().super.super.isa;
  if (!_kCFURLIsExcludedFromUnencryptedBackupKey)
  {
LABEL_12:
    __break(1u);
  }

  sub_100028F88();
  v12 = sub_100028F78();

  v17[0] = 0;
  v13 = [a1 setResourceValue:v11.super.super.isa forKey:v12 error:v17];

  v14 = v17[0];
  if (v13)
  {

    return v14;
  }

  else
  {
    v16 = v17[0];
    sub_100028C78();

    swift_willThrow();
  }
}

uint64_t sub_1000090F4()
{
  v0 = sub_100028D08();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_100029388(47);

  v8 = 0xD00000000000002DLL;
  v9 = 0x800000010002CB70;
  sub_10000A23C(&qword_100046780, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v10._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v10);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v8, v9);

  sub_100028CD8();
  sub_100028CB8(v4);
  v6 = v5;
  sub_100008E90(v5);

  return (*(v1 + 8))(v3, v0);
}

void sub_100009280(uint64_t a1, void *a2)
{
  v4 = sub_100028D08();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v54 - v9;
  v11 = [a2 persistentStoreCoordinator];
  sub_100028CB8(v12);
  v14 = v13;
  v69 = 0;
  v15 = [v11 destroyPersistentStoreAtURL:v13 withType:NSSQLiteStoreType options:0 error:&v69];

  v16 = v69;
  if (v15)
  {

    v17 = v16;
  }

  else
  {
    v66 = v10;
    v67 = v69;
    v18 = v69;
    v19 = sub_100028C78();

    swift_willThrow();
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_100029388(36);

    v69 = 0xD000000000000022;
    v70 = 0x800000010002CB00;
    v68 = v19;
    v54[1] = v19;
    swift_errorRetain();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    v72._countAndFlagsBits = sub_100028F98();
    sub_100028FE8(v72);

    v20 = v69;
    v21 = v70;
    v22 = sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.MapsSync;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v24 = swift_allocObject();
    v59 = xmmword_10002AD50;
    *(v24 + 16) = xmmword_10002AD50;
    *(v24 + 56) = &type metadata for String;
    v58 = sub_1000022C4();
    *(v24 + 64) = v58;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    v61 = v23;
    sub_100028DE8(v22, &_mh_execute_header, v23, "%{public}@", 10, 2, v24);

    v25 = sub_100028CA8();
    v65 = v25;
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046770, &unk_10002AFD0);
    v28 = a1;
    v29 = *(v5 + 72);
    v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v67 = (2 * v29);
    v54[0] = swift_allocObject();
    v31 = v54[0] + v30;
    v63 = *(v5 + 16);
    v64 = v28;
    v63(v54[0] + v30, v28, v4);
    v32 = v66;
    sub_100028CD8();
    v69 = v25;
    v70 = v27;

    v73._countAndFlagsBits = 1818326829;
    v73._object = 0xE400000000000000;
    sub_100028FE8(v73);
    v55 = v31;
    sub_100028CC8();

    v33 = *(v5 + 8);
    v33(v32, v4);
    sub_100028CD8();
    v69 = v65;
    v70 = v27;

    v74._countAndFlagsBits = 1835561773;
    v74._object = 0xE400000000000000;
    sub_100028FE8(v74);

    sub_100028CC8();

    v34 = v32;
    v35 = v63;
    v65 = (v5 + 8);
    v66 = v33;
    v33(v34, v4);
    v67 = [objc_opt_self() defaultManager];
    v56 = "yPersistentStore: ";
    v57 = v5 + 16;
    v36 = 3;
    v37 = v55;
    do
    {
      v35(v8, v37, v4);
      sub_100028CF8();
      v39 = sub_100028F78();

      v40 = [v67 fileExistsAtPath:v39];

      if (v40)
      {
        sub_100028CB8(v41);
        v43 = v42;
        v69 = 0;
        v44 = [v67 removeItemAtURL:v42 error:&v69];

        if (v44)
        {
          v38 = v69;
        }

        else
        {
          v45 = v69;
          v46 = sub_100028C78();

          swift_willThrow();
          v69 = 0;
          v70 = 0xE000000000000000;
          sub_100029388(52);
          v75._countAndFlagsBits = 0xD000000000000032;
          v75._object = (v56 | 0x8000000000000000);
          sub_100028FE8(v75);
          v64 = v46;
          v68 = v46;
          swift_errorRetain();
          v76._countAndFlagsBits = sub_100028F98();
          sub_100028FE8(v76);

          v47 = v29;
          v48 = v4;
          v50 = v69;
          v49 = v70;
          v51 = sub_100029148();
          v52 = swift_allocObject();
          *(v52 + 16) = v59;
          v53 = v58;
          *(v52 + 56) = &type metadata for String;
          *(v52 + 64) = v53;
          *(v52 + 32) = v50;
          *(v52 + 40) = v49;
          v4 = v48;
          v29 = v47;
          v35 = v63;
          sub_100028DE8(v51, &_mh_execute_header, v61, "%{public}@", 10, 2, v52);
        }
      }

      v66(v8, v4);
      v37 += v29;
      --v36;
    }

    while (v36);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }
}

uint64_t sub_10000994C(void *a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046750, qword_10002B660);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v40 - v10;
  v12 = sub_100028D08();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    return sub_10000A118(v11);
  }

  v16 = [a2 URL];
  if (v16)
  {
    v17 = v16;
    sub_100028CE8();

    (*(v13 + 56))(v9, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v9, 1, 1, v12);
  }

  sub_10000A1CC(v9, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_10000A118(v11);
  }

  (*(v13 + 32))(v15, v11, v12);
  if (a1)
  {
    v19 = [a1 domain];
    v20 = sub_100028F88();
    v22 = v21;

    v40[0] = a1;
    v23 = [a1 code];
    if (sub_100028F88() == v20 && v24 == v22)
    {
    }

    else
    {
      v25 = sub_100029428();

      if ((v25 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (v23 == 256)
    {
      goto LABEL_34;
    }

LABEL_14:
    if (sub_100028F88() == v20 && v26 == v22)
    {
    }

    else
    {
      v27 = sub_100029428();

      if ((v27 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (v23 == 259)
    {
      goto LABEL_34;
    }

LABEL_19:
    if (sub_100028F88() == v20 && v28 == v22)
    {
    }

    else
    {
      v29 = sub_100029428();

      if ((v29 & 1) == 0)
      {
LABEL_24:
        if (sub_100028F88() == v20 && v30 == v22)
        {
        }

        else
        {
          v31 = sub_100029428();

          if ((v31 & 1) == 0)
          {
LABEL_29:
            if (sub_100028F88() == v20 && v32 == v22)
            {
            }

            else
            {
              v33 = sub_100029428();

              if ((v33 & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            if (v23 == 14)
            {
              goto LABEL_34;
            }

LABEL_37:

            v41 = 0;
            v42 = 0xE000000000000000;
            sub_100029388(42);

            v41 = 0xD000000000000028;
            v42 = 0x800000010002CAD0;
            v40[1] = v40[0];
            v34 = v40[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046768, &unk_10002AFC0);
            v43._countAndFlagsBits = sub_100028F98();
            sub_100028FE8(v43);

            v35 = v41;
            v36 = v42;
            v37 = sub_100029148();
            if (qword_100046258 != -1)
            {
              swift_once();
            }

            v38 = static OS_os_log.MapsSync;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
            v39 = swift_allocObject();
            *(v39 + 16) = xmmword_10002AD50;
            *(v39 + 56) = &type metadata for String;
            *(v39 + 64) = sub_1000022C4();
            *(v39 + 32) = v35;
            *(v39 + 40) = v36;
            sub_100028DE8(v37, &_mh_execute_header, v38, "%{public}@", 10, 2, v39);
            goto LABEL_35;
          }
        }

        if (v23 != 26)
        {
          goto LABEL_29;
        }

LABEL_34:
        sub_100009280(v15, a3);
LABEL_35:

        return (*(v13 + 8))(v15, v12);
      }
    }

    if (v23 == 11)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t _s9mapssyncd14MapsSyncDaemonC19willPerformRecovery8forError4fromSbs0I0_pSg_So33NSXPCStoreServerConnectionContextCSgtF_0(uint64_t a1)
{
  sub_100029388(20);

  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046790, &qword_10002B3D0);
  v5._countAndFlagsBits = sub_100028F98();
  sub_100028FE8(v5);

  v1 = sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10002AD50;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000022C4();
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = 0x800000010002CC00;
  sub_100028DE8(v1, &_mh_execute_header, v2, "%{public}@", 10, 2, v3);

  return 0;
}

unint64_t sub_10000A05C()
{
  result = qword_100046730;
  if (!qword_100046730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046730);
  }

  return result;
}

unint64_t sub_10000A0B0()
{
  result = qword_100046748;
  if (!qword_100046748)
  {
    sub_100003E20(255, &qword_100046740, NSManagedObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046748);
  }

  return result;
}

uint64_t sub_10000A118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046750, qword_10002B660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A1CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046750, qword_10002B660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A23C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000A284()
{
  result = qword_100046290;
  if (!qword_100046290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100046288, &unk_10002AD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046290);
  }

  return result;
}

id sub_10000A340(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedIncidentReport();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10000A3F0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedMixinMapItem();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10000A448@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedVehicle();
  result = sub_100029398();
  *a2 = result;
  return result;
}

uint64_t sub_10000A48C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedIncidentReport();
  result = sub_100029398();
  *a2 = result;
  return result;
}

uint64_t sub_10000A4D0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedCachedUserReview();
  result = sub_100029398();
  *a2 = result;
  return result;
}

id sub_10000A56C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedReviewedPlace();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10000A5C4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedRAPRecord();
  result = sub_100029398();
  *a2 = result;
  return result;
}

id sub_10000A660(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10000A710(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10000A7C0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedHistoryPlaceItem();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10000A870(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedVehicle();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000A8C8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedAnonymousCredential();
  result = sub_100029398();
  *a2 = result;
  return result;
}

id sub_10000A964(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedAnonymousCredential();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10000A9BC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AD0, &qword_10002B2D8);
  v5 = __chkstk_darwin(v4 - 8);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = &v35 - v7;
  v37 = sub_100028D98();
  v8 = *(v37 - 8);
  v9 = __chkstk_darwin(v37);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = &v35 - v12;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_100029388(27);
  v42 = v1;
  type metadata accessor for CKContainerEventState();

  v43._countAndFlagsBits = sub_100028F98();
  sub_100028FE8(v43);

  v44._countAndFlagsBits = 8250;
  v44._object = 0xE200000000000000;
  sub_100028FE8(v44);
  v42 = [a1 type];
  type metadata accessor for EventType(0);
  sub_1000293C8();
  v45._countAndFlagsBits = 0x203A746E65766520;
  v45._object = 0xE800000000000000;
  sub_100028FE8(v45);
  v13 = [a1 description];
  v14 = sub_100028F88();
  v16 = v15;

  v46._countAndFlagsBits = v14;
  v46._object = v16;
  sub_100028FE8(v46);

  v47._countAndFlagsBits = 0x3A726F727265202CLL;
  v47._object = 0xE900000000000020;
  sub_100028FE8(v47);
  v17 = [a1 error];
  v42 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046790, &qword_10002B3D0);
  v18 = sub_1000292B8();
  v20 = v19;

  v48._countAndFlagsBits = v18;
  v48._object = v20;
  sub_100028FE8(v48);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v40, v41);

  v21 = [a1 error];
  swift_beginAccess();
  v42 = v21;
  v22 = v2[3];
  v39 = &v42;
  swift_errorRetain();
  os_unfair_lock_lock((v22 + 24));
  sub_10001168C((v22 + 16));
  os_unfair_lock_unlock((v22 + 24));

  swift_endAccess();
  swift_beginAccess();
  v23 = v2[4];
  os_unfair_lock_lock((v23 + 20));
  *(v23 + 16) = 1;
  os_unfair_lock_unlock((v23 + 20));
  swift_endAccess();
  result = [a1 endDate];
  if (result)
  {
    v25 = result;
    sub_100028D78();

    v27 = v37;
    v26 = v38;
    (*(v8 + 32))(v38, v11, v37);
    swift_beginAccess();
    v28 = v2[4];
    os_unfair_lock_lock((v28 + 20));
    *(v28 + 16) = 0;
    os_unfair_lock_unlock((v28 + 20));
    swift_endAccess();
    if ([a1 succeeded])
    {
      v29 = v36;
      (*(v8 + 16))(v36, v26, v27);
      (*(v8 + 56))(v29, 0, 1, v27);
      v30 = v35;
      sub_100011330(v29, v35, &unk_100046AD0, &qword_10002B2D8);
      v31 = swift_beginAccess();
      v32 = v2[2];
      __chkstk_darwin(v31);
      *(&v35 - 2) = v30;
      v33 = *(*v32 + class metadata base offset for ManagedBuffer + 16);
      v34 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v32 + v34));
      sub_1000116D8(v32 + v33);
      v26 = v38;
      os_unfair_lock_unlock((v32 + v34));
      sub_1000029A8(v30, &unk_100046AD0, &qword_10002B2D8);
      swift_endAccess();
      sub_1000029A8(v29, &unk_100046AD0, &qword_10002B2D8);
    }

    return (*(v8 + 8))(v26, v27);
  }

  return result;
}

uint64_t sub_10000AF48()
{

  return swift_deallocClassInstance();
}

void *sub_10000AFB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AD0, &qword_10002B2D8);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  v7 = sub_100028D98();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_100011330(v6, v4, &unk_100046AD0, &qword_10002B2D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B58, &qword_10002B3E0);
  v8 = swift_allocObject();
  *(v8 + ((*(*v8 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1000029A8(v6, &unk_100046AD0, &qword_10002B2D8);
  sub_100011010(v4, v8 + *(*v8 + class metadata base offset for ManagedBuffer + 16));
  v0[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B60, &qword_10002B3E8);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  v0[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B68, &qword_10002B3F0);
  v10 = swift_allocObject();
  *(v10 + 20) = 0;
  *(v10 + 16) = 0;
  v0[4] = v10;
  return v0;
}

char *sub_10000B1CC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kSyncDateSetupThreshold;
  GEOConfigGetDouble();
  *&v2[v4] = v5;
  v6 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kInitialSyncCheckEnabled;
  v2[v6] = GEOConfigGetBOOL();
  v7 = &v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kOSVersionKey];
  *v7 = 0x6F6973726576736FLL;
  v7[1] = 0xE90000000000006ELL;
  v8 = &v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kLastSyncDateKey];
  strcpy(&v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kLastSyncDateKey], "lastsyncdate");
  v8[13] = 0;
  *(v8 + 7) = -5120;
  *&v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_activityHandler] = 0;
  v9 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService__accountStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B50, &qword_10002B3D8);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *&v2[v9] = v10;
  v11 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_setupState;
  type metadata accessor for CKContainerEventState();
  v12 = swift_allocObject();
  sub_10000AFB4();
  *&v2[v11] = v12;
  v13 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_importState;
  v14 = swift_allocObject();
  sub_10000AFB4();
  *&v2[v13] = v14;
  v15 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_exportState;
  v16 = swift_allocObject();
  sub_10000AFB4();
  *&v2[v15] = v16;
  v17 = objc_allocWithZone(NSXPCListener);
  v18 = sub_100028F78();
  v19 = [v17 initWithMachServiceName:v18];

  *&v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_listener] = v19;
  v20 = [a1 newBackgroundContext];
  *&v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_moc] = v20;
  [v20 setAutomaticallyMergesChangesFromParent:1];
  v29.receiver = v2;
  v29.super_class = type metadata accessor for MapsSyncDaemonService();
  v21 = objc_msgSendSuper2(&v29, "init");
  v22 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_listener;
  v23 = *&v21[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_listener];
  v24 = v21;
  [v23 setDelegate:v24];
  [*&v21[v22] resume];
  v25 = objc_opt_self();
  v26 = [v25 defaultCenter];
  [v26 addObserver:v24 selector:"cloudKitContainerEventWithNotification:" name:NSPersistentCloudKitContainerEventChangedNotification object:0];

  v27 = [v25 defaultCenter];
  [v27 addObserver:v24 selector:"cloudKitAccountChangedWithNotification:" name:CKAccountChangedNotification object:0];

  return v24;
}

void sub_10000B4C0(void *a1)
{
  v2 = v1;
  v3 = [a1 userInfo];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = sub_100028F38();

  sub_100028F88();
  sub_100029348();
  if (!*(v5 + 16) || (v6 = sub_10000243C(&v18), (v7 & 1) == 0))
  {

    sub_100001EB8(&v18);
LABEL_10:
    v20 = 0u;
    v21 = 0u;
    goto LABEL_11;
  }

  sub_100002480(*(v5 + 56) + 32 * v6, &v20);
  sub_100001EB8(&v18);

  if (!*(&v21 + 1))
  {
LABEL_11:
    sub_1000029A8(&v20, &qword_100047350, &qword_10002B2E0);
    return;
  }

  sub_100003E20(0, &qword_100046B38, NSPersistentCloudKitContainerEvent_ptr);
  if (swift_dynamicCast())
  {
    v8 = v18;
    if ([v18 type] > 2)
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_100029388(25);
      v9 = v2;
      v10 = [v9 description];
      v11 = sub_100028F88();
      v13 = v12;

      v18 = v11;
      v19 = v13;
      v22._object = 0x800000010002D600;
      v22._countAndFlagsBits = 0xD000000000000014;
      sub_100028FE8(v22);
      v14 = [v8 description];
      v15 = sub_100028F88();
      v17 = v16;

      v23._countAndFlagsBits = v15;
      v23._object = v17;
      sub_100028FE8(v23);

      v24._countAndFlagsBits = 41;
      v24._object = 0xE100000000000000;
      sub_100028FE8(v24);
      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v18, v19);
    }

    else
    {

      sub_10000A9BC(v8);
    }
  }
}

uint64_t sub_10000B7EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService__accountStatus;
    swift_beginAccess();
    v0[11] = 0;
    v4 = *&v2[v3];
    *(swift_task_alloc() + 16) = v0 + 11;
    os_unfair_lock_lock((v4 + 24));
    sub_100011750((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));

    swift_endAccess();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  v0[13] = v5;
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_10000B998;

    return sub_100003068();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10000B998(void *a1)
{
  v4 = *v2;
  v5 = *v2;

  v6 = *(v4 + 104);
  if (v1)
  {
  }

  else
  {
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_10000BAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100011330(a3, v25 - v10, &unk_100046B40, &qword_10002B318);
  v12 = sub_1000290C8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000029A8(v11, &unk_100046B40, &qword_10002B318);
  }

  else
  {
    sub_1000290B8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100029088();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100028FA8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000029A8(a3, &unk_100046B40, &qword_10002B318);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000029A8(a3, &unk_100046B40, &qword_10002B318);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000BEEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_10000C218;
  }

  else
  {
    v2 = sub_10000BFFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000BFFC()
{
  v2 = v0 + 21;
  v1 = v0[21];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];

  sub_100029388(22);
  v6 = v4;
  v7 = [v6 description];
  v8 = sub_100028F88();
  v10 = v9;

  v22._object = 0x800000010002D5E0;
  v22._countAndFlagsBits = 0xD000000000000012;
  sub_100028FE8(v22);
  v11 = [v1 description];
  v12 = sub_100028F88();
  v14 = v13;

  v23._countAndFlagsBits = v12;
  v23._object = v14;
  sub_100028FE8(v23);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v8, v10);

  swift_beginAccess();
  *v2 = v1;
  v15 = *&v4[v5];
  *(swift_task_alloc() + 16) = v2;
  v16 = v1;
  os_unfair_lock_lock((v15 + 24));
  sub_10001123C((v15 + 16));
  v17 = *(v20 + 192);
  os_unfair_lock_unlock((v15 + 24));

  swift_endAccess();
  v18 = *(v20 + 8);

  return v18(v16);
}

uint64_t sub_10000C218()
{
  v1 = v0[25];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000C290(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000C368(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_moc];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100011218;
  *(v7 + 24) = v6;
  v12[4] = sub_100011748;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100015128;
  v12[3] = &block_descriptor_50;
  v8 = _Block_copy(v12);
  v9 = v2;

  [v5 performBlockAndWait:v8];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000C4E0(uint64_t a1, void (*a2)(char *, unint64_t, void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AD0, &qword_10002B2D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = objc_allocWithZone(NSFetchRequest);
  v10 = sub_100028F78();
  v11 = [v9 initWithEntityName:v10];

  type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
  v17 = sub_100029238();
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_100029388(19);

  v46 = 0xD000000000000036;
  v47 = 0x800000010002D570;
  if (v17 >> 62)
  {
    v18 = sub_1000293D8();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = a3;
  v48 = v18;
  v49._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v49);

  v50._countAndFlagsBits = 1935960352;
  v50._object = 0xE400000000000000;
  sub_100028FE8(v50);
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v46, v47);

  v44 = a2;
  if (v17 >> 62)
  {
    v19 = sub_1000293D8();
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = a1;
  v42 = v11;
  v45 = v8;
  if (v19)
  {
    v20 = 0;
    v21 = v17 & 0xC000000000000001;
    v22 = _swiftEmptyArrayStorage;
    do
    {
      v23 = v20;
      while (1)
      {
        if (v21)
        {
          v24 = sub_1000293B8();
        }

        else
        {
          if (v23 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v24 = *(v17 + 8 * v23 + 32);
        }

        v25 = v24;
        v20 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          swift_once();
          v12 = static OS_os_log.MapsSync;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_10002AD50;
          *(v13 + 56) = &type metadata for String;
          *(v13 + 64) = sub_1000022C4();
          *(v13 + 32) = v20;
          *(v13 + 40) = &stru_100042FF8.attr;
          sub_100028DE8(v19, &_mh_execute_header, v12, "%{public}@", 10, 2, v13);

          v14 = sub_100028D98();
          (*(*(v14 - 8) + 56))(v21, 1, 1, v14);
          sub_10000A05C();
          v15 = swift_allocError();
          *v16 = 1;
          (v23)(_swiftEmptyArrayStorage, v21, v15);

          return sub_1000029A8(v21, &unk_100046AD0, &qword_10002B2D8);
        }

        v26 = [v24 data];
        if (v26)
        {
          break;
        }

        ++v23;
        if (v20 == v19)
        {
          goto LABEL_24;
        }
      }

      v27 = v26;
      v28 = sub_100028D28();
      v40 = v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_100010C2C(0, *(v22 + 2) + 1, 1, v22);
      }

      v31 = *(v22 + 2);
      v30 = *(v22 + 3);
      if (v31 >= v30 >> 1)
      {
        v22 = sub_100010C2C((v30 > 1), v31 + 1, 1, v22);
      }

      *(v22 + 2) = v31 + 1;
      v32 = &v22[16 * v31];
      v33 = v40;
      *(v32 + 4) = v28;
      *(v32 + 5) = v33;
    }

    while (v20 != v19);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

LABEL_24:

  v34 = *(v41 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_importState);
  swift_beginAccess();
  v35 = *(v34 + 16);
  v36 = *(*v35 + class metadata base offset for ManagedBuffer + 16);
  v37 = (*(*v35 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v35 + v37));
  v21 = v45;
  sub_100011330(v35 + v36, v45, &unk_100046AD0, &qword_10002B2D8);
  os_unfair_lock_unlock((v35 + v37));

  v44(v22, v21, 0);

  return sub_1000029A8(v21, &unk_100046AD0, &qword_10002B2D8);
}

void sub_10000CB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AD0, &qword_10002B2D8);
  v8 = __chkstk_darwin(a1);
  v10 = &v16 - v9;
  if (v8)
  {
    v11.super.isa = sub_100029038().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  sub_100011330(a2, v10, &unk_100046AD0, &qword_10002B2D8);
  v12 = sub_100028D98();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    isa = sub_100028D48().super.isa;
    (*(v13 + 8))(v10, v12);
  }

  if (a3)
  {
    v15 = sub_100028C68();
  }

  else
  {
    v15 = 0;
  }

  (*(a4 + 16))(a4, v11.super.isa, isa, v15);
}

uint64_t sub_10000CCEC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *&v5[OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_moc];
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v5;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a4;
  v12[7] = a5;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10001111C;
  *(v13 + 24) = v12;
  v18[4] = sub_10001112C;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100015128;
  v18[3] = &block_descriptor_1;
  v14 = _Block_copy(v18);

  v15 = v5;
  sub_10001114C(a1, a2);

  [v11 performBlockAndWait:v14];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_10000CE90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6)
{
  v44 = a6;
  v41[1] = a3;
  v42 = a4;
  v43 = sub_100028DD8();
  v9 = *(v43 - 8);
  __chkstk_darwin(v43);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100028D98();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &unk_100046000;
  if (a1)
  {
    v41[0] = a5;
    type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
    v17 = [swift_getObjCClassFromMetadata() fetchRequest];
    sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10002AD50;
    *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B18, &qword_10002B300);
    *(v18 + 64) = sub_1000111B4();
    *(v18 + 32) = a1;

    v19 = sub_100029118();
    [v17 setPredicate:v19];

    v20 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v17];
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_100029388(18);

    v46 = 0xD000000000000046;
    v47 = 0x800000010002D4D0;
    v45 = *(a1 + 16);
    v48._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v48);

    v49._countAndFlagsBits = 1935960352;
    v49._object = 0xE400000000000000;
    sub_100028FE8(v49);
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v46, v47);

    v21 = *(a2 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_moc);
    v46 = 0;
    v22 = [v21 executeRequest:v20 error:&v46];
    if (!v22)
    {
      v34 = v46;
      v33 = sub_100028C78();

      swift_willThrow();
      a5 = v41[0];
      goto LABEL_10;
    }

    v23 = v22;
    v24 = v46;

    a5 = v41[0];
    v16 = &unk_100046000;
  }

  type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
  v25 = *(a2 + v16[321]);
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v25];
  isa = 0;
  if (v42 >> 60 != 15)
  {
    isa = sub_100028D18().super.isa;
  }

  [v17 setData:isa];

  sub_100028D88();
  v27 = sub_100028D48().super.isa;
  v28 = *(v13 + 8);
  v28(v15, v12);
  [v17 setCreateTime:v27];

  sub_100028D88();
  v29 = sub_100028D48().super.isa;
  v28(v15, v12);
  [v17 setModificationTime:v29];

  sub_100028DC8();
  v30 = sub_100028DB8().super.isa;
  (*(v9 + 8))(v11, v43);
  [v17 setIdentifier:v30];

  [v17 setPositionIndex:0];
  v46 = 0;
  if ([v25 save:&v46])
  {
    v31 = v46;
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000049, 0x800000010002D480);
    (a5)(0);

    return;
  }

  v32 = v46;
  v33 = sub_100028C78();

  swift_willThrow();
LABEL_10:

  v46 = 0;
  v47 = 0xE000000000000000;
  v50._object = 0x800000010002D440;
  v50._countAndFlagsBits = 0xD00000000000003CLL;
  sub_100028FE8(v50);
  v51._countAndFlagsBits = 0x3A64656C69616620;
  v51._object = 0xE900000000000020;
  sub_100028FE8(v51);
  v45 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
  sub_1000293C8();
  v35 = v46;
  v36 = v47;
  v37 = sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v38 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_10002AD50;
  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = sub_1000022C4();
  *(v39 + 32) = v35;
  *(v39 + 40) = v36;
  sub_100028DE8(v37, &_mh_execute_header, v38, "%{public}@", 10, 2, v39);

  sub_10000A05C();
  swift_allocError();
  *v40 = 1;
  a5();
}

void sub_10000D680(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100028C68();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_10000D6E4()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000D774;

  return sub_1000102C4();
}

uint64_t sub_10000D774(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_10000D8D0, 0, 0);
  }
}

uint64_t sub_10000D8D0(uint64_t a1)
{
  if (*(v1 + 56) == 1)
  {
    v2 = *(*(v1 + 16) + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_activityHandler);
    *(v1 + 32) = v2;
    if (v2)
    {

      v3 = swift_task_alloc();
      *(v1 + 40) = v3;
      *v3 = v1;
      v3[1] = sub_10000DAE4;

      return sub_100015150();
    }

    v6 = sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v7 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10002AD50;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_1000022C4();
    *(v8 + 32) = 0xD00000000000002BLL;
    *(v8 + 40) = 0x800000010002D400;
    sub_100028DE8(v6, &_mh_execute_header, v7, "%{public}@", 10, 2, v8);

    sub_10000A05C();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v5 = *(v1 + 8);
  }

  else
  {
    v5 = *(v1 + 8);
  }

  return v5();
}

uint64_t sub_10000DAE4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10000DC5C;
  }

  else
  {
    v2 = sub_10000DBF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000DBF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000DC5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000DE34(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10000DEDC;

  return sub_10000D6E4();
}

uint64_t sub_10000DEDC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_100028C68();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10000E1D4(const void *a1, void *a2)
{
  v2[2] = a2;
  v5 = sub_100028D98();
  v2[3] = v5;
  v2[4] = *(v5 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = _Block_copy(a1);
  v6 = a2;

  return _swift_task_switch(sub_10000E2B0, 0, 0);
}

uint64_t sub_10000E2B0()
{
  v1 = *(v0 + 16);
  sub_10000E3AC(*(v0 + 40));

  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  isa = sub_100028D48().super.isa;
  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 48);
  (v6)[2](v6, isa, 0);

  _Block_release(v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10000E3AC@<X0>(char *a1@<X8>)
{
  v193 = a1;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AD0, &qword_10002B2D8);
  v195 = *(v201 - 8);
  v2 = __chkstk_darwin(v201);
  v191 = &v180 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v192 = &v180 - v5;
  v6 = __chkstk_darwin(v4);
  v194 = &v180 - v7;
  v8 = __chkstk_darwin(v6);
  v199 = &v180 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v180 - v11;
  v13 = __chkstk_darwin(v10);
  v203 = &v180 - v14;
  __chkstk_darwin(v13);
  v196 = &v180 - v15;
  v202 = sub_100028D98();
  v205 = *(v202 - 8);
  v16 = __chkstk_darwin(v202);
  v189 = &v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v190 = &v180 - v19;
  v20 = __chkstk_darwin(v18);
  v200 = &v180 - v21;
  v22 = __chkstk_darwin(v20);
  v204 = &v180 - v23;
  __chkstk_darwin(v22);
  v197 = &v180 - v24;
  v25 = [objc_opt_self() processInfo];
  v26 = [v25 operatingSystemVersionString];

  v27 = v26;
  v28 = v26;
  v29 = v26;
  if (!v26)
  {
    sub_100028F88();
    v29 = sub_100028F78();

    sub_100028F88();
    v28 = sub_100028F78();

    sub_100028F88();
    v27 = sub_100028F78();
  }

  v209 = v28;
  v210 = v27;
  v30 = sub_100028F88();
  v32 = v31;
  v33 = objc_opt_self();
  v34 = v26;
  v208 = v33;
  v35 = [v33 standardUserDefaults];
  v36 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kOSVersionKey + 8);
  v206 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kOSVersionKey);
  v207 = v36;
  v37 = sub_100028F78();
  v38 = [v35 objectForKey:v37];

  if (v38)
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v214 = 0u;
    v215 = 0u;
  }

  v216 = v214;
  v217 = v215;
  if (!*(&v215 + 1))
  {
    sub_1000029A8(&v216, &qword_100047350, &qword_10002B2E0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

LABEL_13:
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000039, 0x800000010002D2D0);
    v39 = v208;
    v40 = [v208 standardUserDefaults];
    v41 = sub_100028F78();
    [v40 setURL:0 forKey:v41];

    v42 = [v39 standardUserDefaults];
    v43 = sub_100028F78();
    [v42 setObject:v29 forKey:v43];

    goto LABEL_14;
  }

  if (v30 != v212 || v32 != v213)
  {
    v58 = sub_100029428();

    if (v58)
    {

      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
  v198 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_setupState;
  v44 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_setupState);
  swift_beginAccess();
  v45 = *(v44 + 24);

  os_unfair_lock_lock((v45 + 24));
  v46 = *(v45 + 16);
  swift_errorRetain();
  os_unfair_lock_unlock((v45 + 24));

  if (v46 || (v47 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_importState, v48 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_importState), swift_beginAccess(), v49 = *(v48 + 24), , , os_unfair_lock_lock((v49 + 24)), v46 = *(v49 + 16), swift_errorRetain(), os_unfair_lock_unlock((v49 + 24)), , , v46) || (v50 = OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_exportState, v51 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_exportState), swift_beginAccess(), v52 = *(v51 + 24), , , os_unfair_lock_lock((v52 + 24)), v46 = *(v52 + 16), swift_errorRetain(), os_unfair_lock_unlock((v52 + 24)), , , v46))
  {

    *&v216 = 0;
    *(&v216 + 1) = 0xE000000000000000;
    sub_100029388(35);
    v218._countAndFlagsBits = 0x636E79537473616CLL;
    v218._object = 0xEE00292865746144;
    sub_100028FE8(v218);
    v219._countAndFlagsBits = 0xD00000000000001FLL;
    v219._object = 0x800000010002D3E0;
    sub_100028FE8(v219);
    *&v214 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    v53 = v216;
    v54 = sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v55 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_10002AD50;
    *(v56 + 56) = &type metadata for String;
    *(v56 + 64) = sub_1000022C4();
    *(v56 + 32) = v53;
    sub_100028DE8(v54, &_mh_execute_header, v55, "%{public}@", 10, 2, v56);

    return swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AE0, &unk_10002B2E8);
    v187 = *(v195 + 9);
    v59 = (*(v195 + 80) + 32) & ~*(v195 + 80);
    v182 = swift_allocObject();
    v60 = v182 + v59;
    v184 = v47;
    v61 = *(v1 + v47);
    swift_beginAccess();
    v62 = v50;
    v63 = *(v61 + 16);
    v64 = *(*v63 + class metadata base offset for ManagedBuffer + 16);
    v65 = (*(*v63 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v63 + v65));
    sub_100011330(v63 + v64, v60, &unk_100046AD0, &qword_10002B2D8);
    os_unfair_lock_unlock((v63 + v65));

    v183 = v62;
    v66 = *(v1 + v62);
    swift_beginAccess();
    v67 = *(v66 + 16);
    v68 = *(*v67 + class metadata base offset for ManagedBuffer + 16);
    v69 = (*(*v67 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v67 + v69));
    sub_100011330(v67 + v68, v60 + v187, &unk_100046AD0, &qword_10002B2D8);
    os_unfair_lock_unlock((v67 + v69));

    v188 = v60;
    v70 = v203;
    sub_100011330(v60, v203, &unk_100046AD0, &qword_10002B2D8);
    sub_100011010(v70, v12);
    v72 = v205 + 48;
    v71 = *(v205 + 48);
    v73 = (v205 + 32);
    v74 = v202;
    v75 = v71(v12, 1, v202);
    v185 = (v72 - 16);
    v186 = v72;
    v195 = v71;
    if (v75 == 1)
    {
      sub_1000029A8(v12, &unk_100046AD0, &qword_10002B2D8);
      v76 = _swiftEmptyArrayStorage;
    }

    else
    {
      v77 = *v73;
      (*v73)(v204, v12, v74);
      v76 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_100010D38(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v79 = *(v76 + 2);
      v78 = *(v76 + 3);
      if (v79 >= v78 >> 1)
      {
        v76 = sub_100010D38((v78 > 1), v79 + 1, 1, v76);
      }

      *(v76 + 2) = v79 + 1;
      v73 = v185;
      v77(&v76[((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v79], v204, v74);
    }

    v80 = v203;
    sub_100011330(v188 + v187, v203, &unk_100046AD0, &qword_10002B2D8);
    sub_100011010(v80, v12);
    if (v195(v12, 1, v74) == 1)
    {
      sub_1000029A8(v12, &unk_100046AD0, &qword_10002B2D8);
      v81 = v196;
      v82 = v197;
    }

    else
    {
      v83 = *v73;
      (*v73)(v204, v12, v74);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_100010D38(0, *(v76 + 2) + 1, 1, v76);
      }

      v82 = v197;
      v85 = *(v76 + 2);
      v84 = *(v76 + 3);
      if (v85 >= v84 >> 1)
      {
        v76 = sub_100010D38((v84 > 1), v85 + 1, 1, v76);
      }

      *(v76 + 2) = v85 + 1;
      v73 = v185;
      v83(&v76[((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v85], v204, v74);
      v81 = v196;
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_100010028(v76, v81);

    if (v195(v81, 1, v74) == 1)
    {

      sub_1000029A8(v81, &unk_100046AD0, &qword_10002B2D8);
    }

    else
    {
      v86 = *v73;
      (*v73)(v82, v81, v74);
      v87 = *(v1 + v184);
      swift_beginAccess();
      v88 = *(v87 + 32);

      os_unfair_lock_lock((v88 + 20));
      v89 = *(v88 + 16);
      os_unfair_lock_unlock((v88 + 20));

      if ((v89 & 1) == 0)
      {
        v90 = *(v1 + v183);
        swift_beginAccess();
        v91 = *(v90 + 32);

        os_unfair_lock_lock((v91 + 20));
        v92 = *(v91 + 16);
        os_unfair_lock_unlock((v91 + 20));

        if ((v92 & 1) == 0)
        {

          *&v216 = 0;
          *(&v216 + 1) = 0xE000000000000000;
          sub_100029388(16);

          *&v216 = 0xD00000000000001ALL;
          *(&v216 + 1) = 0x800000010002D3C0;
          sub_100011084(&unk_100046AF0, &protocol conformance descriptor for Date);
          v231._countAndFlagsBits = sub_100029408();
          sub_100028FE8(v231);

          _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v216, *(&v216 + 1));

          v163 = v208;
          v164 = [v208 standardUserDefaults];
          isa = sub_100028D48().super.isa;
          v166 = sub_100028F78();
          [v164 setObject:isa forKey:v166];

          v167 = [v163 standardUserDefaults];
          v168 = sub_100028F78();
          v169 = v209;
          [v167 setObject:v209 forKey:v168];

          return (v86)(v193, v82, v74);
        }
      }

      (*(v205 + 8))(v82, v74);
    }

    v93 = [v208 standardUserDefaults];
    v94 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kLastSyncDateKey);
    v209 = *(v1 + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kLastSyncDateKey + 8);
    v95 = sub_100028F78();
    v96 = [v93 objectForKey:v95];

    if (v96)
    {
      sub_1000292D8();
      swift_unknownObjectRelease();
    }

    else
    {
      v214 = 0u;
      v215 = 0u;
    }

    v97 = v199;
    v98 = v194;
    v99 = v195;
    v216 = v214;
    v217 = v215;
    if (*(&v215 + 1))
    {
      v100 = swift_dynamicCast();
      (*(v205 + 56))(v97, v100 ^ 1u, 1, v74);
    }

    else
    {
      sub_1000029A8(&v216, &qword_100047350, &qword_10002B2E0);
      (*(v205 + 56))(v97, 1, 1, v74);
    }

    sub_100011330(v97, v98, &unk_100046AD0, &qword_10002B2D8);
    if (v99(v98, 1, v74) != 1)
    {

      (*v185)(v193, v98, v74);
      *&v216 = 0;
      *(&v216 + 1) = 0xE000000000000000;
      sub_100029388(23);

      *&v216 = 0xD000000000000021;
      *(&v216 + 1) = 0x800000010002D390;
      sub_100011084(&unk_100046AF0, &protocol conformance descriptor for Date);
      v220._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v220);

      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v216, *(&v216 + 1));

      return sub_1000029A8(v97, &unk_100046AD0, &qword_10002B2D8);
    }

    v204 = v94;
    sub_1000029A8(v98, &unk_100046AD0, &qword_10002B2D8);
    sub_100028D88();
    v101 = *(v1 + v198);
    swift_beginAccess();
    v102 = *(v101 + 16);
    v103 = *(*v102 + class metadata base offset for ManagedBuffer + 16);
    v104 = (*(*v102 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v102 + v104));
    v105 = v102 + v103;
    v106 = v192;
    sub_100011330(v105, v192, &unk_100046AD0, &qword_10002B2D8);
    v107 = (v102 + v104);
    v108 = v106;
    os_unfair_lock_unlock(v107);

    v109 = v202;

    if (v99(v108, 1, v109) == 1)
    {
      v110 = v1;

      sub_1000029A8(v108, &unk_100046AD0, &qword_10002B2D8);
    }

    else
    {
      v111 = *v185;
      v112 = v190;
      (*v185)(v190, v108, v109);
      v113 = *(v1 + v184);
      swift_beginAccess();
      v114 = *(v113 + 32);

      os_unfair_lock_lock((v114 + 20));
      v115 = *(v114 + 16);
      os_unfair_lock_unlock((v114 + 20));

      if (v115 & 1) != 0 || (v116 = *(v1 + v183), swift_beginAccess(), v117 = *(v116 + 32), , , os_unfair_lock_lock((v117 + 20)), v118 = *(v117 + 16), os_unfair_lock_unlock((v117 + 20)), , , (v118))
      {
        v110 = v1;
        (*(v205 + 8))(v112, v109);
      }

      else
      {
        v110 = v1;
        v170 = v189;
        sub_100028D38();
        v171 = sub_100028D58();
        v172 = *(v205 + 8);
        v172(v170, v109);
        if (v171)
        {
          *&v214 = 0;
          *(&v214 + 1) = 0xE000000000000000;
          sub_100029388(40);
          v232._countAndFlagsBits = 0x636E79537473616CLL;
          v232._object = 0xEE00292865746144;
          sub_100028FE8(v232);
          v233._countAndFlagsBits = 0xD000000000000012;
          v233._object = 0x800000010002D350;
          sub_100028FE8(v233);
          sub_100011084(&unk_100046AF0, &protocol conformance descriptor for Date);
          v234._countAndFlagsBits = sub_100029408();
          sub_100028FE8(v234);

          v235._countAndFlagsBits = 0xD000000000000010;
          v235._object = 0x800000010002D370;
          sub_100028FE8(v235);
          sub_1000290F8();
          _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v214, *(&v214 + 1));

          v173 = v208;
          v174 = [v208 standardUserDefaults];
          v175 = sub_100028D48().super.isa;
          v176 = sub_100028F78();
          v209 = v172;
          [v174 setObject:v175 forKey:v176];

          v177 = [v173 standardUserDefaults];
          v178 = sub_100028F78();
          v179 = v210;
          [v177 setObject:v210 forKey:v178];

          v209(v200, v109);
          v111(v193, v190, v109);
          return sub_1000029A8(v199, &unk_100046AD0, &qword_10002B2D8);
        }

        v172(v112, v109);
      }
    }

    *&v214 = 0;
    *(&v214 + 1) = 0xE000000000000000;
    sub_100029388(104);
    v211 = v214;
    v221._countAndFlagsBits = 0x636E79537473616CLL;
    v221._object = 0xEE00292865746144;
    sub_100028FE8(v221);
    v222._object = 0x800000010002D310;
    v222._countAndFlagsBits = 0xD000000000000017;
    sub_100028FE8(v222);
    v119 = *(v110 + v198);
    v120 = v110;
    v181 = v110;
    swift_beginAccess();
    v121 = *(v119 + 16);
    v122 = *(*v121 + class metadata base offset for ManagedBuffer + 16);
    v123 = (*(*v121 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v121 + v123));
    v124 = v191;
    sub_100011330(v121 + v122, v191, &unk_100046AD0, &qword_10002B2D8);
    os_unfair_lock_unlock((v121 + v123));

    v125 = sub_1000292B8();
    v127 = v126;
    sub_1000029A8(v124, &unk_100046AD0, &qword_10002B2D8);
    v223._countAndFlagsBits = v125;
    v223._object = v127;
    sub_100028FE8(v223);

    v224._countAndFlagsBits = 0x726F706D69202C22;
    v224._object = 0xEC00000022203A74;
    sub_100028FE8(v224);
    v128 = *(v120 + v184);
    swift_beginAccess();
    v129 = *(v128 + 16);
    v130 = *(*v129 + class metadata base offset for ManagedBuffer + 16);
    v131 = (*(*v129 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v129 + v131));
    sub_100011330(v129 + v130, v124, &unk_100046AD0, &qword_10002B2D8);
    os_unfair_lock_unlock((v129 + v131));

    v132 = sub_1000292B8();
    v134 = v133;
    sub_1000029A8(v124, &unk_100046AD0, &qword_10002B2D8);
    v225._countAndFlagsBits = v132;
    v225._object = v134;
    sub_100028FE8(v225);

    v226._countAndFlagsBits = 0x726F707865202C22;
    v226._object = 0xEC00000022203A74;
    sub_100028FE8(v226);
    v135 = v181;
    v136 = *(v181 + v183);
    swift_beginAccess();
    v137 = *(v136 + 16);
    v138 = *(*v137 + class metadata base offset for ManagedBuffer + 16);
    v139 = (*(*v137 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v137 + v139));
    sub_100011330(v137 + v138, v124, &unk_100046AD0, &qword_10002B2D8);
    os_unfair_lock_unlock((v137 + v139));

    v140 = sub_1000292B8();
    v142 = v141;
    sub_1000029A8(v124, &unk_100046AD0, &qword_10002B2D8);
    v227._countAndFlagsBits = v140;
    v227._object = v142;
    sub_100028FE8(v227);

    v228._object = 0x800000010002D330;
    v228._countAndFlagsBits = 0xD000000000000017;
    sub_100028FE8(v228);
    v143 = *(v135 + v198);
    swift_beginAccess();
    v144 = *(v143 + 32);

    os_unfair_lock_lock((v144 + 20));
    v145 = *(v144 + 16);
    os_unfair_lock_unlock((v144 + 20));

    if (v145)
    {
      v146._countAndFlagsBits = 1702195828;
    }

    else
    {
      v146._countAndFlagsBits = 0x65736C6166;
    }

    if (v145)
    {
      v147 = 0xE400000000000000;
    }

    else
    {
      v147 = 0xE500000000000000;
    }

    v146._object = v147;
    sub_100028FE8(v146);

    v229._countAndFlagsBits = 0x74726F706D69202CLL;
    v229._object = 0xEA0000000000203ALL;
    sub_100028FE8(v229);
    v148 = *(v135 + v184);
    swift_beginAccess();
    v149 = *(v148 + 32);

    os_unfair_lock_lock((v149 + 20));
    v150 = *(v149 + 16);
    os_unfair_lock_unlock((v149 + 20));

    if (v150)
    {
      v151._countAndFlagsBits = 1702195828;
    }

    else
    {
      v151._countAndFlagsBits = 0x65736C6166;
    }

    if (v150)
    {
      v152 = 0xE400000000000000;
    }

    else
    {
      v152 = 0xE500000000000000;
    }

    v151._object = v152;
    sub_100028FE8(v151);

    v230._countAndFlagsBits = 0x74726F707865202CLL;
    v230._object = 0xEA0000000000203ALL;
    sub_100028FE8(v230);
    v153 = *(v135 + v183);
    swift_beginAccess();
    v154 = *(v153 + 32);

    os_unfair_lock_lock((v154 + 20));
    v155 = *(v154 + 16);
    os_unfair_lock_unlock((v154 + 20));

    if (v155)
    {
      v156._countAndFlagsBits = 1702195828;
    }

    else
    {
      v156._countAndFlagsBits = 0x65736C6166;
    }

    if (v155)
    {
      v157 = 0xE400000000000000;
    }

    else
    {
      v157 = 0xE500000000000000;
    }

    v156._object = v157;
    sub_100028FE8(v156);

    v158 = v211;
    v159 = sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v160 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v161 = swift_allocObject();
    *(v161 + 16) = xmmword_10002AD50;
    *(v161 + 56) = &type metadata for String;
    *(v161 + 64) = sub_1000022C4();
    *(v161 + 32) = v158;
    sub_100028DE8(v159, &_mh_execute_header, v160, "%{public}@", 10, 2, v161);

    sub_10000A05C();
    swift_allocError();
    *v162 = 0;
    swift_willThrow();
    (*(v205 + 8))(v200, v202);
    return sub_1000029A8(v199, &unk_100046AD0, &qword_10002B2D8);
  }
}

uint64_t sub_100010028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100028D98();
  v5 = __chkstk_darwin(*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_100011084(&qword_100046B08, &protocol conformance descriptor for Date);
        v20 = sub_100028F68();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1000102C4()
{
  v1[2] = v0;
  v2 = sub_100028D98();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_1000103B0;

  return sub_100003068();
}

uint64_t sub_1000103B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {

    return _swift_task_switch(sub_100010504, 0, 0);
  }
}

uint64_t sub_100010504(id a1)
{
  if (*(*(v1 + 16) + OBJC_IVAR____TtC9mapssyncd21MapsSyncDaemonService_kInitialSyncCheckEnabled) == 1 && ([*(v1 + 56) deviceToDeviceEncryptionAvailability] & 1) != 0 && objc_msgSend(*(v1 + 56), "hasValidCredentials"))
  {
    v2 = *(v1 + 64);
    sub_10000E3AC(*(v1 + 40));
    v3 = *(v1 + 56);
    if (v2)
    {

      v4 = *(v1 + 8);
      v5 = 0;
      goto LABEL_10;
    }

    (*(*(v1 + 32) + 8))(*(v1 + 40), *(v1 + 24));
  }

  else
  {
    v6 = sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v3 = *(v1 + 56);
    v7 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10002AD50;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_1000022C4();
    *(v8 + 32) = 0xD000000000000043;
    *(v8 + 40) = 0x800000010002D280;
    sub_100028DE8(v6, &_mh_execute_header, v7, "%{public}@", 10, 2, v8);
  }

  v4 = *(v1 + 8);
  v5 = 1;
LABEL_10:

  return v4(v5);
}

id sub_10001071C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncDaemonService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100010838(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000035F0;

  return v6(a1);
}

uint64_t sub_100010930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100011330(a3, v23 - v10, &unk_100046B40, &qword_10002B318);
  v12 = sub_1000290C8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000029A8(v11, &unk_100046B40, &qword_10002B318);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000290B8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_100029088();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_100028FA8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000029A8(a3, &unk_100046B40, &qword_10002B318);

    return v21;
  }

LABEL_8:
  sub_1000029A8(a3, &unk_100046B40, &qword_10002B318);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

char *sub_100010C2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B28, &qword_10002B308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100010D38(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B00, &qword_10002B2F8);
  v10 = *(sub_100028D98() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100028D98() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100010F10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046B70, &qword_10002B3F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_100011010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AD0, &qword_10002B2D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011084(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100028D98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000110C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001114C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100011160(a1, a2);
  }

  return a1;
}

uint64_t sub_100011160(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1000111B4()
{
  result = qword_100046B20;
  if (!qword_100046B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100046B18, &qword_10002B300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046B20);
  }

  return result;
}

id sub_10001123C(id *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t sub_100011284()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000034FC;

  return sub_10000E1D4(v2, v3);
}

uint64_t sub_100011330(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011398()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000034F8;

  return sub_10000DE34(v2, v3);
}

uint64_t sub_10001144C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000110C8(result, a2);
  }

  return result;
}

uint64_t sub_100011468(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000034F8;

  return sub_10000B7CC(a1, v4, v5, v6);
}

uint64_t sub_10001151C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000034F8;

  return sub_100010838(a1, v4);
}

uint64_t sub_1000115D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000034FC;

  return sub_100010838(a1, v4);
}

uint64_t sub_10001168C(void *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return swift_errorRetain();
}

uint64_t sub_1000116D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1000029A8(a1, &unk_100046AD0, &qword_10002B2D8);
  return sub_100011330(v3, a1, &unk_100046AD0, &qword_10002B2D8);
}

id sub_1000117C0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedContactHandle();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100011818@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  result = sub_100029398();
  *a2 = result;
  return result;
}

id sub_1000118B4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100011964(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedCuratedCollection();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100011A14(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100011AC4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedVisit();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100011B1C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedVisit();
  result = sub_100029398();
  *a2 = result;
  return result;
}

uint64_t sub_100011B60@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedVisitedLocation();
  result = sub_100029398();
  *a2 = result;
  return result;
}

id sub_100011BFC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedVisitedLocation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100011CAC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedFavoriteItem();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100011D5C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedCollectionTransitItem();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100011DB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100028D08();
  v14 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = sub_100028F78();
  v10 = [v8 containerURLForSecurityApplicationGroupIdentifier:v9];

  if (v10)
  {
    sub_100028CE8();

    (*(v14 + 32))(v7, v5, v2);
    sub_100028CC8();
    (*(v14 + 8))(v7, v2);
    return (*(v14 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v12 = *(v14 + 56);

    return v12(a1, 1, 1, v2);
  }
}

uint64_t sub_100011FCC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v40 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046750, qword_10002B660);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_100028D08();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100029128();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v10 = swift_allocObject();
  v39 = xmmword_10002AD50;
  *(v10 + 16) = xmmword_10002AD50;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_1000022C4();
  *(v10 + 64) = v11;
  *(v10 + 32) = 0xD00000000000002FLL;
  *(v10 + 40) = 0x800000010002D870;
  sub_100028DE8(v8, &_mh_execute_header, v9, "%{public}@", 10, 2, v10);

  sub_100011DB4(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000A118(v4);
    v12 = sub_100029148();
    v13 = swift_allocObject();
    *(v13 + 16) = v39;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = v11;
    *(v13 + 32) = 0xD000000000000031;
    *(v13 + 40) = 0x800000010002D8B0;
    sub_100028DE8(v12, &_mh_execute_header, v9, "%{public}@", 10, 2, v13);

LABEL_8:
    v27 = 1;
    v26 = v40;
    return (*(v6 + 56))(v26, v27, 1, v5);
  }

  v36 = v9;
  v14 = v38;
  (*(v6 + 32))(v38, v4, v5);
  v15 = [objc_opt_self() defaultManager];
  sub_100028CB8(v16);
  v18 = v17;
  v42 = 0;
  v19 = [v15 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v42];

  v20 = v42;
  if (!v19)
  {
    v28 = v20;

    v29 = sub_100028C78();

    swift_willThrow();
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_100029388(45);
    v45._countAndFlagsBits = 0xD000000000000026;
    v45._object = 0x800000010002D8F0;
    sub_100028FE8(v45);
    sub_1000126AC();
    v46._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v46);

    v47._countAndFlagsBits = 8236;
    v47._object = 0xE200000000000000;
    sub_100028FE8(v47);
    v41 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    v48._countAndFlagsBits = 46;
    v48._object = 0xE100000000000000;
    sub_100028FE8(v48);
    v30 = v42;
    v31 = v43;
    v32 = sub_100029148();
    v33 = swift_allocObject();
    *(v33 + 16) = v39;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = v11;
    *(v33 + 32) = v30;
    *(v33 + 40) = v31;
    sub_100028DE8(v32, &_mh_execute_header, v36, "%{public}@", 10, 2, v33);

    (*(v6 + 8))(v14, v5);
    goto LABEL_8;
  }

  v21 = v40;
  sub_100028CC8();

  v42 = 0;
  v43 = 0xE000000000000000;
  sub_100029388(21);

  v42 = 0xD000000000000013;
  v43 = 0x800000010002D920;
  sub_1000126AC();
  v44._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v44);

  v22 = v42;
  v23 = v43;
  v24 = sub_100029128();
  v25 = swift_allocObject();
  *(v25 + 16) = v39;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = v11;
  *(v25 + 32) = v22;
  *(v25 + 40) = v23;
  sub_100028DE8(v24, &_mh_execute_header, v36, "%{public}@", 10, 2, v25);

  (*(v6 + 8))(v14, v5);
  v26 = v21;
  v27 = 0;
  return (*(v6 + 56))(v26, v27, 1, v5);
}

uint64_t sub_10001264C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1000126AC()
{
  result = qword_100046780;
  if (!qword_100046780)
  {
    sub_100028D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046780);
  }

  return result;
}

id sub_100012704(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100028F78();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100028C78();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1000127E0()
{
  v0 = sub_100028F78();
  HasEntitlement = BSSelfTaskHasEntitlement();

  if (HasEntitlement)
  {
    v2 = objc_allocWithZone(LSApplicationRecord);
  }

  else
  {
    v3 = sub_100029148();
    if (qword_100046258 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.MapsSync;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10002AD50;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000022C4();
    *(v5 + 32) = 0xD00000000000004BLL;
    *(v5 + 40) = 0x800000010002D9C0;
    sub_100028DE8(v3, &_mh_execute_header, v4, "%{public}@", 10, 2, v5);
  }

  return 1;
}

uint64_t sub_100012B64@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  result = sub_100029398();
  *a2 = result;
  return result;
}

id sub_100012C00(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100012CB0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedHistoryItem();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100012D60(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedRAPRecord();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100012DB8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedMixinMapItem();
  result = sub_100029398();
  *a2 = result;
  return result;
}

uint64_t sub_100012DFC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedReviewedPlace();
  result = sub_100029398();
  *a2 = result;
  return result;
}

id sub_100012E98(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100012F48(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedCachedUserReview();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100012FC4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
  result = sub_100029398();
  *a2 = result;
  return result;
}

double sub_100013008()
{
  result = GEOMapItemEquivalenceDistanceThresholdForPOIDeduplication + 20.0;
  MapsSyncDeduplicationRadiusMeters = GEOMapItemEquivalenceDistanceThresholdForPOIDeduplication + 20.0;
  return result;
}

Swift::Double *MapsSyncDeduplicationRadiusMeters.unsafeMutableAddressor()
{
  if (qword_100046250 != -1)
  {
    swift_once();
  }

  return &MapsSyncDeduplicationRadiusMeters;
}

Swift::Bool __swiftcall MapsSyncIsHostedByMapsSyncDaemon()()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_100028F88();
    v4 = v3;

    if (v2 == 0xD000000000000018 && 0x800000010002C3C0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_100029428();
    }
  }

  return v1 & 1;
}

Swift::Bool __swiftcall MapsSyncIsHostedByMapsApp()()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    sub_100028F88();
    goto LABEL_10;
  }

  v3 = sub_100028F88();
  v5 = v4;

  v6 = sub_100028F88();
  if (!v5)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v3 == v6 && v5 == v7)
  {

LABEL_17:

    goto LABEL_18;
  }

  v9 = sub_100029428();

  if (v9)
  {
    goto LABEL_18;
  }

LABEL_11:
  v10 = [v0 mainBundle];
  v11 = [v10 bundleIdentifier];

  if (!v11)
  {
    return 0;
  }

  v12 = sub_100028F88();
  v14 = v13;

  if (v12 == 0xD000000000000012 && 0x800000010002DD60 == v14)
  {
    goto LABEL_17;
  }

  v15 = sub_100029428();

  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v17 = objc_opt_self();
  v18 = [v17 processInfo];
  v19 = [v18 processName];

  v20 = sub_100028F88();
  v22 = v21;

  if (v20 == 1936744781 && v22 == 0xE400000000000000)
  {
    goto LABEL_20;
  }

  v23 = sub_100029428();

  if (v23)
  {
    return 1;
  }

  v24 = [v17 processInfo];
  v25 = [v24 processName];

  v26 = sub_100028F88();
  v28 = v27;

  if (v26 == 0x7370614D6F6E614ELL && v28 == 0xE800000000000000)
  {
LABEL_20:

    return 1;
  }

  v29 = sub_100029428();

  return v29 & 1;
}

id MapsSyncCategoryForMapItem(mapItem:)(void *a1)
{
  swift_getObjectType();

  return sub_100013678(a1);
}

id MapsSyncClassTypeForMapItem(mapItem:)(void *a1)
{
  result = [a1 _clientAttributes];
  if (result)
  {
    v2 = result;
    v3 = [result mapsSyncAttributes];

    if (v3 && (v4 = [v3 mapsSyncObjectType], v3, v4) && (sub_100028F88(), v4, v5 = sub_100028F78(), , v6 = NSClassFromString(v5), v5, v6))
    {
      return swift_getObjCClassMetadata();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MapsSyncObjectIdentifierForMapItem(mapItem:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 _clientAttributes];
  if (v3 && (v4 = v3, v5 = [v3 mapsSyncAttributes], v4, v5) && (v6 = objc_msgSend(v5, "mapsSyncIdentifier"), v5, v6))
  {
    sub_100028F88();

    sub_100028DA8();
  }

  else
  {
    v8 = sub_100028DD8();
    v9 = *(*(v8 - 8) + 56);

    return v9(a2, 1, 1, v8);
  }
}

id sub_100013678(void *a1)
{
  v22 = sub_100028C98();
  v19 = *(v22 - 8);
  v2 = __chkstk_darwin(v22);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  v28 = &_swiftEmptySetSingleton;
  v7 = [a1 _place];
  v8 = [v7 firstBusiness];

  v9 = [v8 localizedCategories];
  if (!v9)
  {
    sub_100003E20(0, &qword_100046F98, NSMutableArray_ptr);
    v9 = sub_100029248();
  }

  sub_100029258();

  sub_100028C88();
  if (!v27)
  {
LABEL_16:
    (*(v19 + 8))(v6, v22);
    v26 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100047300, &qword_10002BEC0);
    sub_100013A34();
    sub_100001FC0();
    v17 = sub_100029018();

    return v17;
  }

  v10 = sub_100003E20(0, &qword_100046FA8, GEOCategory_ptr);
  v20 = (v19 + 8);
  v21 = v10;
  while (1)
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    v11 = v6;
    v12 = v24;
    v13 = [v24 localizedNames];
    if (!v13)
    {
      sub_100003E20(0, &qword_100046F98, NSMutableArray_ptr);
      v13 = sub_100029248();
    }

    sub_100029258();

    sub_100028C88();
    if (v25)
    {
      break;
    }

LABEL_5:
    (*v20)(v4, v22);

    v6 = v11;
LABEL_6:
    sub_100028C88();
    if (!v27)
    {
      goto LABEL_16;
    }
  }

  sub_100003E20(0, &qword_100047320, GEOLocalizedName_ptr);
  while ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_100028C88();
    if (!v25)
    {
      goto LABEL_5;
    }
  }

  v14 = v23;
  result = [v23 name];
  if (result)
  {
    v16 = result;
    sub_100028F88();

    sub_100027D44();

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_100013A34()
{
  result = qword_100046FA0;
  if (!qword_100046FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_100047300, &qword_10002BEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046FA0);
  }

  return result;
}

id sub_100013AF0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100013BA0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedCommunityID();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100013C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10002AD50;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_1000022C4();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  sub_100028DE8(v5, &_mh_execute_header, v6, "%{public}@", 10, 2, v7);
}

uint64_t *OS_os_log.MapsSync.unsafeMutableAddressor()
{
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.MapsSync;
}

uint64_t sub_100013E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1000140D8();
  result = sub_1000292A8();
  *a4 = result;
  return result;
}

uint64_t *OS_os_log.Signpost.unsafeMutableAddressor()
{
  if (qword_100046260 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.Signpost;
}

id sub_100013EDC(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_100013FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), const char *a6, uint64_t a7)
{
  v13 = a5();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10002B870;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_1000022C4();
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v16;
  *(v15 + 64) = v16;
  *(v15 + 72) = a3;
  *(v15 + 80) = a4;

  sub_100028DE8(v13, &_mh_execute_header, v14, a6, a7, 2, v15);
}

unint64_t sub_1000140D8()
{
  result = qword_100047000;
  if (!qword_100047000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100047000);
  }

  return result;
}

id sub_10001417C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedCollectionItem();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10001422C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100014284@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedCollectionItem();
  result = sub_100029398();
  *a2 = result;
  return result;
}

uint64_t sub_1000142CC(uint64_t a1)
{
  result = 0xD000000000000010;
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        return 0xD00000000000001BLL;
      }

      return result;
    }

    if (a1 == 5)
    {
      return 0xD000000000000016;
    }

    if (a1 == 6)
    {
      return 0xD00000000000002ALL;
    }

LABEL_16:
    result = sub_100029458();
    __break(1u);
    return result;
  }

  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  if (a1 != 2)
  {
    goto LABEL_16;
  }

  return result;
}

Swift::Int sub_100014434(uint64_t a1, uint64_t a2)
{
  sub_1000294B8();
  sub_100028F58();
  return sub_1000294E8();
}

uint64_t sub_100014498(uint64_t a1, uint64_t a2)
{
  v4 = sub_100014834();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000144E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000294B8();
  sub_100028F58();
  return sub_1000294E8();
}

unint64_t sub_100014544@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100014658(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100014584(uint64_t a1)
{
  v2 = sub_100014834();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1000145C0(uint64_t a1)
{
  v2 = sub_100014834();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_100014604(uint64_t a1, uint64_t a2)
{
  v4 = sub_100014834();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

unint64_t sub_100014658(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10001466C()
{
  result = qword_100047058;
  if (!qword_100047058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047058);
  }

  return result;
}

unint64_t sub_1000146C4()
{
  result = qword_100047060;
  if (!qword_100047060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047060);
  }

  return result;
}

unint64_t sub_10001471C()
{
  result = qword_100047068;
  if (!qword_100047068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047068);
  }

  return result;
}

unint64_t sub_100014774()
{
  result = qword_100047070;
  if (!qword_100047070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047070);
  }

  return result;
}

unint64_t sub_1000147CC()
{
  result = qword_100047078;
  if (!qword_100047078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047078);
  }

  return result;
}

unint64_t sub_100014834()
{
  result = qword_100047080;
  if (!qword_100047080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100047080);
  }

  return result;
}

uint64_t sub_100014890@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedContactHandle();
  result = sub_100029398();
  *a2 = result;
  return result;
}

id sub_10001492C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedUserRoute();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1000149DC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100014A34@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedUserRoute();
  result = sub_100029398();
  *a2 = result;
  return result;
}

id sub_100014AD0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsSyncManagedCollection();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100014B28@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedCommunityID();
  result = sub_100029398();
  *a2 = result;
  return result;
}

uint64_t sub_100014B6C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  result = sub_100029398();
  *a2 = result;
  return result;
}

uint64_t sub_100014BB0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedHistoryItem();
  result = sub_100029398();
  *a2 = result;
  return result;
}

uint64_t sub_100014BF4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  result = sub_100029398();
  *a2 = result;
  return result;
}

uint64_t sub_100014C38@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MapsSyncManagedCuratedCollection();
  result = sub_100029398();
  *a2 = result;
  return result;
}

id sub_100014CD4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MapsSyncManagedHistoryRideShareItem();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_100014D2C(uint64_t a1)
{
  v38 = _swiftEmptyArrayStorage;
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v39 = *(a1 + 24);
  v40 = *(a1 + 40);
  v5 = *(&v39 + 1);
  v4 = v39;
  v6 = v40;
  v7 = *(a1 + 48);
  v41 = v7;
  v37 = v3;
  v31 = *(a1 + 32);
  v32 = *(a1 + 24);
  v36 = v40;
  sub_1000277FC(v2, v1, v3);
  sub_1000277FC(v2, v1, v3);
  sub_100011330(&v39, v35, &qword_100047378, &qword_10002BF10);
  result = sub_100011330(&v41, v35, &qword_100047380, &qword_10002BF18);
  if (v3 & 1) != 0 || (v6)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v33 = v1;
  if (v1 != v5)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = v2;
  if (v2 != v4)
  {
    v12 = v33;
    v34 = v2;
    while (v2 >= v9)
    {
      if (v2 >= v4)
      {
        goto LABEL_28;
      }

      if (v2 < 0)
      {
        goto LABEL_29;
      }

      v13 = 1 << *(v7 + 32);
      if (v2 >= v13)
      {
        goto LABEL_29;
      }

      v14 = v2 >> 6;
      v15 = *(v7 + 56 + 8 * (v2 >> 6));
      if (((v15 >> v2) & 1) == 0)
      {
        goto LABEL_30;
      }

      if (*(v7 + 36) != v5)
      {
        goto LABEL_31;
      }

      v16 = *(v7 + 48) + 16 * v2;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = v15 & (-2 << (v2 & 0x3F));
      if (v19)
      {
        v2 = __clz(__rbit64(v19)) | v2 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v5;
        v21 = v4;
        v22 = v14 << 6;
        v23 = v14 + 1;
        v24 = (v7 + 64 + 8 * v14);
        while (v23 < (v13 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            v27 = v21;
            sub_1000277FC(v21, v20, 0);
            sub_100027808(v2, v12, 0);
            v28 = __rbit64(v25);
            v4 = v27;
            v2 = __clz(v28) + v22;
            v5 = v20;
            v9 = v34;
            goto LABEL_20;
          }
        }

        v4 = v21;
        v5 = v20;
        sub_1000277FC(v21, v20, 0);
        sub_100027808(v2, v12, 0);
        v2 = v13;
        v9 = v34;
      }

LABEL_20:
      v12 = *(v7 + 36);
      sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10002B870;
      *(v29 + 56) = &type metadata for Int64;
      *(v29 + 64) = &protocol witness table for Int64;
      *(v29 + 32) = v17;
      *(v29 + 96) = &type metadata for Int32;
      *(v29 + 104) = &protocol witness table for Int32;
      *(v29 + 72) = v18;
      sub_100029118();
      sub_100029028();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100029058();
      }

      result = sub_100029068();
      if (v12 != v5)
      {
        goto LABEL_26;
      }

      if (v2 == v4)
      {
        v10 = v38;
        v11 = v33;
        goto LABEL_25;
      }
    }

    goto LABEL_27;
  }

  v10 = _swiftEmptyArrayStorage;
  v11 = v33;
  v12 = v33;
LABEL_25:
  v30 = v36;
  sub_100027808(v9, v11, v37);
  sub_100027808(v32, v31, v30);

  sub_100027808(v4, v12, 0);
  return v10;
}

uint64_t sub_100015170()
{
  v1 = v0[2];
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001ALL, 0x800000010002E490);
  v2 = sub_100021D28(type metadata accessor for MapsSyncManagedCollectionPlaceItem);
  v0[3] = v2;
  v3 = *(v1 + 88);
  v0[4] = v3;
  swift_retain_n();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100015288;
  v5 = v0[2];

  return sub_10001D690(v2, v3, 0, 0, v5, sub_100026CD8, v5);
}

uint64_t sub_100015288()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_100027CE4;
  }

  else
  {
    v4 = *(v2 + 24);

    v3 = sub_1000153A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000153A8()
{
  v1 = sub_100021D28(type metadata accessor for MapsSyncManagedFavoriteItem);
  v0[7] = v1;
  swift_retain_n();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10001549C;
  v3 = v0[4];
  v4 = v0[2];

  return sub_10001E608(v1, v3, 0, 0, v4, sub_100026CE0, v4);
}

uint64_t sub_10001549C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_100027CE8;
  }

  else
  {
    v4 = *(v2 + 56);

    v3 = sub_1000155C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000155C0()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000023, 0x800000010002E4B0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_100015638()
{
  v1 = [objc_opt_self() sharedScheduler];
  v2 = sub_100028F78();
  v3 = *(v0 + 40);
  v5[4] = sub_1000274B4;
  v6 = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100017058;
  v5[3] = &block_descriptor_78;
  v4 = _Block_copy(v5);

  [v1 registerForTaskWithIdentifier:v2 usingQueue:v3 launchHandler:v4];
  _Block_release(v4);
}

void sub_100015758()
{
  v1 = [objc_opt_self() sharedScheduler];
  v2 = sub_100028F78();
  v3 = *(v0 + 40);
  v5[4] = sub_1000273A0;
  v6 = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100017058;
  v5[3] = &block_descriptor_66;
  v4 = _Block_copy(v5);

  [v1 registerForTaskWithIdentifier:v2 usingQueue:v3 launchHandler:v4];
  _Block_release(v4);
}

uint64_t sub_100015878()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046750, qword_10002B660);
  __chkstk_darwin(v1 - 8);
  v3 = &v42 - v2;
  v4 = sub_100028D08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapsSyncUtil();
  sub_100011FCC(1, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000029A8(v3, &qword_100046750, qword_10002B660);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = *(v0 + 16);
  v10 = [v9 persistentStoreCoordinator];
  sub_100028CB8(v11);
  v13 = v12;
  v14 = [v10 persistentStoreForURL:v12];

  if (v14)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472B0, &unk_10002BE70);
    inited = swift_initStackObject();
    v42 = xmmword_10002AD50;
    *(inited + 16) = xmmword_10002AD50;
    v45 = sub_100028F88();
    v46 = v16;
    sub_100029348();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = 1;
    sub_100026B8C(inited);
    swift_setDeallocating();
    sub_1000029A8(inited + 32, &qword_100046778, &unk_10002AFE0);
    v17 = [v9 persistentStoreCoordinator];
    v18 = NSSQLiteStoreType;
    v19 = sub_100028F78();
    sub_100028CB8(v20);
    v22 = v21;
    isa = sub_100028F28().super.isa;

    v45 = 0;
    v24 = [v17 addPersistentStoreWithType:v18 configuration:v19 URL:v22 options:isa error:&v45];

    if (!v24)
    {
      v26 = v45;
      v27 = sub_100028C78();

      swift_willThrow();
      v44 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
      sub_100003E20(0, &qword_1000472C8, NSError_ptr);
      swift_dynamicCast();
      v28 = v43;
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_100029388(23);

      v45 = 0xD000000000000011;
      v46 = 0x800000010002E470;
      v29 = [v28 description];
      v30 = sub_100028F88();
      v32 = v31;

      v47._countAndFlagsBits = v30;
      v47._object = v32;
      sub_100028FE8(v47);

      v48._countAndFlagsBits = 8236;
      v48._object = 0xE200000000000000;
      sub_100028FE8(v48);
      v33 = [v28 userInfo];
      sub_100028F38();

      v34 = sub_100028F48();
      v36 = v35;

      v49._countAndFlagsBits = v34;
      v49._object = v36;
      sub_100028FE8(v49);

      v37 = v45;
      v38 = v46;
      v39 = sub_100029148();
      if (qword_100046258 != -1)
      {
        swift_once();
      }

      v40 = static OS_os_log.MapsSync;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v41 = swift_allocObject();
      *(v41 + 16) = v42;
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = sub_1000022C4();
      *(v41 + 32) = v37;
      *(v41 + 40) = v38;
      sub_100028DE8(v39, &_mh_execute_header, v40, "%{public}@", 10, 2, v41);

      (*(v5 + 8))(v7, v4);

      return 0;
    }

    v25 = v45;
  }

  (*(v5 + 8))(v7, v4);
  return 1;
}

uint64_t sub_100015E78()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100015EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  v6 = swift_task_alloc();
  *(v5 + 48) = v6;
  *v6 = v5;
  v6[1] = sub_100015F88;

  return sub_100016310();
}

uint64_t sub_100015F88()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100016120;
  }

  else
  {
    v2 = sub_10001609C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001609C()
{
  [*(v0 + 40) setTaskCompleted];
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000017, 0x800000010002E6D0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016120()
{
  v1 = *(v0 + 56);
  sub_100029388(37);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000023;
  v10._object = 0x800000010002E670;
  sub_100028FE8(v10);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
  sub_1000293C8();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10002AD50;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000022C4();
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  sub_100028DE8(v4, &_mh_execute_header, v5, "%{public}@", 10, 2, v6);

  [*(v0 + 40) setTaskCompleted];
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000017, 0x800000010002E6D0);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100016330()
{
  v1 = v0[8];
  if (*(v1 + 108) == 1)
  {
    sub_10001796C();
    if (sub_1000290E8())
    {
      goto LABEL_16;
    }

    v1 = v0[8];
  }

  if (*(v1 + 107) == 1)
  {
    sub_100017AC4();
    if (sub_1000290E8())
    {
      goto LABEL_16;
    }

    v1 = v0[8];
  }

  if (*(v1 + 109) == 1)
  {
    sub_100017CA0();
    if (sub_1000290E8())
    {
      goto LABEL_16;
    }

    v1 = v0[8];
  }

  v2 = *(v1 + 32);
  v0[9] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_10001649C;

    return sub_1000102C4();
  }

  if (*(v1 + 104) == 1)
  {
    sub_100018AB0();
    sub_1000290E8();
  }

LABEL_16:
  v5 = v0[1];

  return v5();
}

uint64_t sub_10001649C(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100016F14;
  }

  else
  {
    *(v4 + 120) = a1 & 1;
    v5 = sub_1000165CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000165CC()
{
  if (*(v0 + 120) != 1)
  {
    goto LABEL_21;
  }

  v1 = *(v0 + 64);
  if (*(v1 + 106) == 1)
  {
    sub_100017D4C();
    if (sub_1000290E8())
    {
LABEL_7:

LABEL_24:
      v10 = *(v0 + 8);

      return v10();
    }

    v1 = *(v0 + 64);
  }

  if (*(v1 + 105) == 1)
  {
    sub_100017EA4();
    if (sub_1000290E8())
    {
      goto LABEL_7;
    }

    v1 = *(v0 + 64);
  }

  if (*(v1 + 110) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1000168D0;

    return sub_100017FFC();
  }

  if (*(v1 + 111) != 1)
  {
    if (*(v1 + 112) == 1)
    {
      v5 = *(v1 + 24);
      v6 = swift_allocObject();
      *(v6 + 16) = sub_100027634;
      *(v6 + 24) = v1;
      *(v0 + 48) = sub_100027D6C;
      *(v0 + 56) = v6;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_100015128;
      *(v0 + 40) = &block_descriptor_94;
      v7 = _Block_copy((v0 + 16));

      [v5 performBlockAndWait:v7];
      _Block_release(v7);
      LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

      if (v5)
      {
        __break(1u);
        return result;
      }

      v8 = *(v0 + 72);
      v9 = sub_1000290E8();

      if (v9)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_21:

LABEL_22:
    if (*(*(v0 + 64) + 104) == 1)
    {
      sub_100018AB0();
      sub_1000290E8();
    }

    goto LABEL_24;
  }

  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_100016C30;

  return sub_100015150();
}

uint64_t sub_1000168D0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100016F90;
  }

  else
  {
    v2 = sub_1000169E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000169E4(uint64_t a1)
{
  if (sub_1000290E8())
  {

    goto LABEL_3;
  }

  v4 = *(v1 + 64);
  if (*(v4 + 111) != 1)
  {
    if (*(v4 + 112) == 1)
    {
      v6 = *(v4 + 24);
      v7 = swift_allocObject();
      *(v7 + 16) = sub_100027634;
      *(v7 + 24) = v4;
      *(v1 + 48) = sub_100027D6C;
      *(v1 + 56) = v7;
      *(v1 + 16) = _NSConcreteStackBlock;
      *(v1 + 24) = 1107296256;
      *(v1 + 32) = sub_100015128;
      *(v1 + 40) = &block_descriptor_94;
      v8 = _Block_copy((v1 + 16));

      [v6 performBlockAndWait:v8];
      _Block_release(v8);
      LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

      if (v6)
      {
        __break(1u);
        return result;
      }

      v9 = *(v1 + 72);
      v10 = sub_1000290E8();

      if (v10)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    if (*(*(v1 + 64) + 104) == 1)
    {
      sub_100018AB0();
      sub_1000290E8();
    }

LABEL_3:
    v2 = *(v1 + 8);

    return v2();
  }

  v5 = swift_task_alloc();
  *(v1 + 104) = v5;
  *v5 = v1;
  v5[1] = sub_100016C30;

  return sub_100015150();
}

uint64_t sub_100016C30()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100016FF4;
  }

  else
  {
    v2 = sub_100016D44;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100016D44(uint64_t a1)
{
  if (sub_1000290E8())
  {

    goto LABEL_10;
  }

  v2 = v1[8];
  if (*(v2 + 112) != 1)
  {

LABEL_8:
    if (*(v1[8] + 104) == 1)
    {
      sub_100018AB0();
      sub_1000290E8();
    }

    goto LABEL_10;
  }

  v3 = *(v2 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100027634;
  *(v4 + 24) = v2;
  v1[6] = sub_100027D6C;
  v1[7] = v4;
  v1[2] = _NSConcreteStackBlock;
  v1[3] = 1107296256;
  v1[4] = sub_100015128;
  v1[5] = &block_descriptor_94;
  v5 = _Block_copy(v1 + 2);

  [v3 performBlockAndWait:v5];
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
    return result;
  }

  v7 = v1[9];
  v8 = sub_1000290E8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v9 = v1[1];

  return v9();
}

uint64_t sub_100016F14()
{
  if (*(*(v0 + 64) + 104) == 1)
  {
    sub_100018AB0();
    sub_1000290E8();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016F90()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100016FF4()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_100017058(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000170C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318);
  __chkstk_darwin(v11 - 8);
  v13 = aBlock - v12;
  v14 = sub_1000290C8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a1;

  v16 = a1;
  v17 = sub_10000BAC8(0, 0, v13, a4, v15);
  aBlock[4] = a5;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005AF0;
  aBlock[3] = a6;
  v18 = _Block_copy(aBlock);

  [v16 setExpirationHandler:v18];
  _Block_release(v18);
}

uint64_t sub_10001726C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10001728C, 0, 0);
}

uint64_t sub_10001728C()
{
  v1 = *(*(v0 + 40) + 32);
  *(v0 + 56) = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_100017394;

    return sub_1000102C4();
  }

  else
  {
    [*(v0 + 48) setTaskCompleted];
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001BLL, 0x800000010002E650);
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100017394(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1000175D4;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v5 = sub_1000174C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000174C4()
{
  if (*(v0 + 88) == 1 && *(*(v0 + 40) + 111) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_100017660;

    return sub_100015150();
  }

  else
  {

    [*(v0 + 48) setTaskCompleted];
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001BLL, 0x800000010002E650);
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1000175D4()
{
  [*(v0 + 48) setTaskCompleted];
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001BLL, 0x800000010002E650);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100017660()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100017774;
  }

  else
  {
    v2 = sub_100027D48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100017774()
{
  v1 = *(v0 + 80);

  sub_100029388(37);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000023;
  v10._object = 0x800000010002E670;
  sub_100028FE8(v10);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
  sub_1000293C8();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10002AD50;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000022C4();
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  sub_100028DE8(v4, &_mh_execute_header, v5, "%{public}@", 10, 2, v6);

  [*(v0 + 48) setTaskCompleted];
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001BLL, 0x800000010002E650);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10001796C()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001ALL, 0x800000010002E6F0);
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10002763C;
  *(v2 + 24) = v0;
  v5[4] = sub_100027D6C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100015128;
  v5[3] = &block_descriptor_104;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait:v3];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100017AC4()
{
  aBlock = 0;
  v6 = 0xE000000000000000;
  sub_100029388(55);
  v12._object = 0x800000010002E760;
  v12._countAndFlagsBits = 0xD00000000000002FLL;
  sub_100028FE8(v12);
  v11 = *(v0 + 56);
  v13._countAndFlagsBits = sub_100029408();
  sub_100028FE8(v13);

  v14._countAndFlagsBits = 0x297379616420;
  v14._object = 0xE600000000000000;
  sub_100028FE8(v14);
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0, 0xE000000000000000);

  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100027644;
  *(v2 + 24) = v0;
  v9 = sub_100027D6C;
  v10 = v2;
  aBlock = _NSConcreteStackBlock;
  v6 = 1107296256;
  v7 = sub_100015128;
  v8 = &block_descriptor_111;
  v3 = _Block_copy(&aBlock);

  [v1 performBlockAndWait:v3];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100017CA0()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000025, 0x800000010002E870);
  sub_100029218();
}

uint64_t sub_100017D4C()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001CLL, 0x800000010002E980);
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100027814;
  *(v2 + 24) = v0;
  v5[4] = sub_100027D6C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100015128;
  v5[3] = &block_descriptor_118;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait:v3];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100017EA4()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001ALL, 0x800000010002EA60);
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100027880;
  *(v2 + 24) = v0;
  v5[4] = sub_100027D6C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100015128;
  v5[3] = &block_descriptor_125;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait:v3];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001801C()
{
  v1 = v0[2];
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000014, 0x800000010002EAA0);
  v2 = sub_10001B9F4(type metadata accessor for MapsSyncManagedCollectionPlaceItem);
  v0[3] = v2;
  v3 = *(v1 + 88);
  v0[4] = v3;
  swift_retain_n();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100018130;
  v5 = v0[2];

  return sub_10001DB7C(v2, v3, sub_100027888, v1, v5, v5);
}

uint64_t sub_100018130()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_100018904;
  }

  else
  {
    v4 = *(v2 + 24);

    v3 = sub_100018250;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100018250()
{
  v1 = v0[2];
  v2 = sub_10001B9F4(type metadata accessor for MapsSyncManagedHistoryPlaceItem);
  v0[7] = v2;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100018340;
  v4 = v0[4];
  v5 = v0[2];

  return sub_10001F5E4(v2, v4, sub_1000278B8, v1, v5, v5);
}

uint64_t sub_100018340()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10001896C;
  }

  else
  {
    v4 = *(v2 + 56);

    v3 = sub_100018464;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100018464()
{
  v1 = v0[2];
  v2 = sub_10001B9F4(type metadata accessor for MapsSyncManagedFavoriteItem);
  v0[10] = v2;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_100018554;
  v4 = v0[4];
  v5 = v0[2];

  return sub_10001EAF4(v2, v4, sub_1000278E8, v1, v5, v5);
}

uint64_t sub_100018554()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1000189D8;
  }

  else
  {
    v4 = *(v2 + 80);

    v3 = sub_100018678;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100018678()
{
  v1 = v0[2];
  v2 = sub_10001B9F4(type metadata accessor for MapsSyncManagedReviewedPlace);
  v0[13] = v2;
  swift_retain_n();
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100018768;
  v4 = v0[4];
  v5 = v0[2];

  return sub_100020070(v2, v4, sub_100027918, v1, v5, v5);
}

uint64_t sub_100018768()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100018A44;
  }

  else
  {
    v4 = *(v2 + 104);

    v3 = sub_10001888C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001888C()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001DLL, 0x800000010002EAC0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018904()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001896C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000189D8()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100018A44()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100018AB0()
{
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001FLL, 0x800000010002EC70);
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100027BCC;
  *(v2 + 24) = v0;
  v5[4] = sub_100027D6C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100015128;
  v5[3] = &block_descriptor_241;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait:v3];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_100018C08(uint64_t a1)
{
  v6 = sub_100028D98();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 64);
  if (v10 == 0x8000000000000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((-v10 * 86400) >> 64 != (-86400 * v10) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100028D68();
  v11 = objc_opt_self();
  isa = sub_100028D48().super.isa;
  v2 = [v11 deleteHistoryBeforeDate:isa];

  [v2 setResultType:0];
  v13 = *(a1 + 24);
  *&v26 = 0;
  v14 = [v13 executeRequest:v2 error:&v26];
  v15 = v26;
  if (!v14)
  {
    v19 = v26;
    v20 = sub_100028C78();

    swift_willThrow();
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_100029388(29);
    v28._object = 0x800000010002EA20;
    v28._countAndFlagsBits = 0xD00000000000001BLL;
    sub_100028FE8(v28);
    *&v24 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    v4 = *(&v26 + 1);
    v3 = v26;
    v1 = sub_100029148();
    if (qword_100046258 == -1)
    {
LABEL_8:
      v21 = static OS_os_log.MapsSync;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_10002AD50;
      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = sub_1000022C4();
      *(v22 + 32) = v3;
      *(v22 + 40) = v4;
      sub_100028DE8(v1, &_mh_execute_header, v21, "%{public}@", 10, 2, v22);

LABEL_9:
      (*(v7 + 8))(v9, v6);
      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_8;
  }

  v16 = v14;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  v18 = v15;
  if (!v17)
  {

    (*(v7 + 8))(v9, v6);
    v26 = 0u;
    v27 = 0u;
LABEL_17:
    sub_1000029A8(&v26, &qword_100047350, &qword_10002B2E0);
    return;
  }

  if ([v17 result])
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    (*(v7 + 8))(v9, v6);

    goto LABEL_17;
  }

  if (swift_dynamicCast())
  {
    if (v24)
    {
      *&v26 = 0;
      *(&v26 + 1) = 0xE000000000000000;
      sub_100029388(57);
      v29._countAndFlagsBits = 0xD000000000000037;
      v29._object = 0x800000010002EC90;
      sub_100028FE8(v29);
      sub_100027BD4(&unk_100046AF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v30._countAndFlagsBits = sub_100029408();
      sub_100028FE8(v30);

      _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v26, *(&v26 + 1));

      goto LABEL_9;
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }
}

void sub_100019130(uint64_t a1)
{
  type metadata accessor for MapsSyncManagedMixinMapItem();
  v2 = [swift_getObjCClassFromMetadata() entity];
  v3 = [objc_allocWithZone(NSBatchUpdateRequest) initWithEntity:v2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472B0, &unk_10002BE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002AD50;
  *&v22 = 0xD000000000000010;
  *(&v22 + 1) = 0x800000010002C720;
  sub_100029348();
  *(inited + 96) = sub_100028D98();
  __swift_allocate_boxed_opaque_existential_0((inited + 72));
  sub_100028D88();
  sub_100026B8C(inited);
  swift_setDeallocating();
  sub_1000029A8(inited + 32, &qword_100046778, &unk_10002AFE0);
  isa = sub_100028F28().super.isa;

  [v3 setPropertiesToUpdate:isa];

  [v3 setResultType:2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10002BCF0;
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  *(v6 + 32) = sub_100029118();
  *(v6 + 40) = sub_100029118();
  *(v6 + 48) = sub_100029118();
  *(v6 + 56) = sub_100029118();
  v7 = sub_100029038().super.isa;

  v8 = [objc_opt_self() andPredicateWithSubpredicates:v7];

  [v3 setPredicate:v8];
  v9 = *(a1 + 24);
  *&v22 = 0;
  v10 = [v9 executeRequest:v3 error:&v22];
  v11 = v22;
  if (v10)
  {
    v12 = v10;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    v14 = v11;
    if (v13)
    {
      if ([v13 result])
      {
        sub_1000292D8();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      v22 = v20;
      v23 = v21;
      if (*(&v21 + 1))
      {
        if (swift_dynamicCast())
        {
          *&v22 = 0;
          *(&v22 + 1) = 0xE000000000000000;
          sub_100029388(35);

          strcpy(&v22, "Added date to ");
          HIBYTE(v22) = -18;
          v25._countAndFlagsBits = sub_100029408();
          sub_100028FE8(v25);

          v26._object = 0x800000010002EA40;
          v26._countAndFlagsBits = 0xD000000000000013;
          sub_100028FE8(v26);
          _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v22, *(&v22 + 1));
        }

        else
        {
        }

        return;
      }
    }

    else
    {

      v22 = 0u;
      v23 = 0u;
    }

    sub_1000029A8(&v22, &qword_100047350, &qword_10002B2E0);
    return;
  }

  v15 = v22;
  sub_100028C78();

  swift_willThrow();
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  sub_100029388(29);
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  v24._object = 0x800000010002EA20;
  sub_100028FE8(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
  sub_1000293C8();
  v16 = v22;
  v17 = sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v18 = static OS_os_log.MapsSync;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10002AD50;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000022C4();
  *(v19 + 32) = v16;
  sub_100028DE8(v17, &_mh_execute_header, v18, "%{public}@", 10, 2, v19);
}

void sub_10001973C(uint64_t a1)
{
  type metadata accessor for MapsSyncManagedMixinMapItem();
  v8 = [swift_getObjCClassFromMetadata() fetchRequest];
  v9 = *(a1 + 72);
  if (v9 == 0x8000000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = -v9;
  v11 = -86400 * v9;
  if ((v10 * 86400) >> 64 != v11 >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v1 = v8;
  v12 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10002BCF0;
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  *(v13 + 32) = sub_100029118();
  *(v13 + 40) = sub_100029118();
  *(v13 + 48) = sub_100029118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v14 = swift_allocObject();
  v30 = xmmword_10002AD50;
  *(v14 + 16) = xmmword_10002AD50;
  *(v14 + 56) = sub_100003E20(0, &qword_100047358, NSDate_ptr);
  *(v14 + 64) = sub_10002764C();
  *(v14 + 32) = v12;
  v3 = v12;
  *(v13 + 56) = sub_100029118();
  isa = sub_100029038().super.isa;

  v16 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v1 setPredicate:v16];
  v4 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v1];
  [v4 setResultType:2];
  v17 = *(a1 + 24);
  *&v33 = 0;
  v18 = [v17 executeRequest:v4 error:&v33];
  v19 = v33;
  if (!v18)
  {
    v23 = v33;
    sub_100028C78();

    swift_willThrow();
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    sub_100029388(29);
    v35._countAndFlagsBits = 0xD00000000000001BLL;
    v35._object = 0x800000010002EA20;
    sub_100028FE8(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    v6 = *(&v33 + 1);
    v5 = v33;
    v2 = sub_100029148();
    if (qword_100046258 == -1)
    {
LABEL_8:
      v24 = static OS_os_log.MapsSync;
      v25 = swift_allocObject();
      *(v25 + 16) = v30;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_1000022C4();
      *(v25 + 32) = v5;
      *(v25 + 40) = v6;
      sub_100028DE8(v2, &_mh_execute_header, v24, "%{public}@", 10, 2, v25);

      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  v20 = v18;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  v22 = v19;
  if (!v21)
  {

    v33 = 0u;
    v34 = 0u;
LABEL_15:
    sub_1000029A8(&v33, &qword_100047350, &qword_10002B2E0);
    return;
  }

  if ([v21 result])
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (!*(&v32 + 1))
  {

    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    sub_100029388(41);

    *&v33 = 0x20646574656C6544;
    *(&v33 + 1) = 0xE800000000000000;
    v36._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v36);

    v37._countAndFlagsBits = 0xD00000000000001DLL;
    v37._object = 0x800000010002EA80;
    sub_100028FE8(v37);
    v26 = [v3 description];
    v27 = sub_100028F88();
    v29 = v28;

    v38._countAndFlagsBits = v27;
    v38._object = v29;
    sub_100028FE8(v38);

    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v33, *(&v33 + 1));
  }

  else
  {
  }
}

void sub_100019D6C(uint64_t a1)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v2 = [swift_getObjCClassFromMetadata() entity];
  v3 = [objc_allocWithZone(NSBatchUpdateRequest) initWithEntity:v2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1000472B0, &unk_10002BE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002AD50;
  *&v27 = 0x656372756F73;
  *(&v27 + 1) = 0xE600000000000000;
  sub_100029348();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = 3;
  sub_100026B8C(inited);
  swift_setDeallocating();
  sub_1000029A8(inited + 32, &qword_100046778, &unk_10002AFE0);
  isa = sub_100028F28().super.isa;

  [v3 setPropertiesToUpdate:isa];

  [v3 setResultType:2];
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10002AD50;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = 1;
  v7 = sub_100029118();
  v8 = sub_100029118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10002BD00;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v10 = v7;
  v11 = v8;
  v12 = sub_100029038().super.isa;

  v13 = [objc_opt_self() andPredicateWithSubpredicates:v12];

  [v3 setPredicate:v13];
  v14 = *(a1 + 24);
  *&v27 = 0;
  v15 = [v14 executeRequest:v3 error:&v27];
  v16 = v27;
  if (v15)
  {
    v17 = v15;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    v19 = v16;
    if (v18)
    {
      if ([v18 result])
      {
        sub_1000292D8();
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0u;
        v26 = 0u;
      }

      v27 = v25;
      v28 = v26;
      if (*(&v26 + 1))
      {
        if (swift_dynamicCast())
        {
          *&v27 = 0;
          *(&v27 + 1) = 0xE000000000000000;
          sub_100029388(35);

          *&v27 = 0xD000000000000012;
          *(&v27 + 1) = 0x800000010002E740;
          v30._countAndFlagsBits = sub_100029408();
          sub_100028FE8(v30);

          v31._countAndFlagsBits = 0x7469726F76614620;
          v31._object = 0xEF736D6574692065;
          sub_100028FE8(v31);
          _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v27, *(&v27 + 1));
        }

        else
        {
        }

        return;
      }
    }

    else
    {

      v27 = 0u;
      v28 = 0u;
    }

    sub_1000029A8(&v27, &qword_100047350, &qword_10002B2E0);
    return;
  }

  v20 = v27;
  sub_100028C78();

  swift_willThrow();
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  sub_100029388(47);
  v29._countAndFlagsBits = 0xD00000000000002DLL;
  v29._object = 0x800000010002E710;
  sub_100028FE8(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
  sub_1000293C8();
  v21 = v27;
  v22 = sub_100029148();
  if (qword_100046258 != -1)
  {
    swift_once();
  }

  v23 = static OS_os_log.MapsSync;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10002AD50;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_1000022C4();
  *(v24 + 32) = v21;
  sub_100028DE8(v22, &_mh_execute_header, v23, "%{public}@", 10, 2, v24);
}

void sub_10001A3A0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 == 0x8000000000000000)
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v2 = -v1;
  v3 = -86400 * v1;
  if ((v2 * 86400) >> 64 != v3 >> 63)
  {
    goto LABEL_17;
  }

  v5 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:v3];
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10002AD50;
  *(v6 + 56) = sub_100003E20(0, &qword_100047358, NSDate_ptr);
  *(v6 + 64) = sub_10002764C();
  *(v6 + 32) = v5;
  v36 = v5;
  v7 = sub_100029118();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10002AD50;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = 1;
  v9 = sub_100029118();
  v10 = sub_100029118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10002BD10;
  *(v11 + 32) = v7;
  *(v11 + 40) = v9;
  *(v11 + 48) = v10;
  v35 = v7;
  v34 = v9;
  v12 = v10;
  isa = sub_100029038().super.isa;

  v14 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  type metadata accessor for MapsSyncManagedFavoriteItem();
  v15 = [swift_getObjCClassFromMetadata() fetchRequest];
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10002BD00;
  v17 = v14;
  *(v16 + 32) = sub_100029118();
  *(v16 + 40) = v17;
  v18 = objc_allocWithZone(NSCompoundPredicate);
  v19 = v17;
  v20 = sub_100029038().super.isa;

  v21 = [v18 initWithType:1 subpredicates:v20];

  [v15 setPredicate:v21];
  v22 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v15];
  [v22 setResultType:2];
  sub_100029388(34);

  *&v39 = 0xD000000000000020;
  *(&v39 + 1) = 0x800000010002E7D0;
  v23 = [v22 description];
  v24 = sub_100028F88();
  v26 = v25;

  v41._countAndFlagsBits = v24;
  v41._object = v26;
  sub_100028FE8(v41);

  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD000000000000020, 0x800000010002E7D0);

  v27 = *(a1 + 24);
  *&v39 = 0;
  v28 = [v27 executeRequest:v22 error:&v39];
  v29 = v39;
  if (!v28)
  {
    v33 = v39;
    sub_100028C78();

    swift_willThrow();
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    sub_100029388(37);
    v42._countAndFlagsBits = 0xD000000000000023;
    v42._object = 0x800000010002E800;
    sub_100028FE8(v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000472C0, &unk_10002AD80);
    sub_1000293C8();
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v39, *(&v39 + 1));

    return;
  }

  v30 = v28;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  v32 = v29;
  if (!v31)
  {

    v39 = 0u;
    v40 = 0u;
LABEL_14:
    sub_1000029A8(&v39, &qword_100047350, &qword_10002B2E0);
    return;
  }

  if ([v31 result])
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {

    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    sub_100029388(44);

    *&v39 = 0xD000000000000018;
    *(&v39 + 1) = 0x800000010002E830;
    v43._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v43);

    v44._countAndFlagsBits = 0xD000000000000012;
    v44._object = 0x800000010002E850;
    sub_100028FE8(v44);
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v39, *(&v39 + 1));
  }

  else
  {
  }
}

Swift::Int sub_10001AAF8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1000294B8();
  sub_1000294D8(v1);
  sub_1000294C8(v2);
  return sub_1000294E8();
}

void sub_10001AB58()
{
  v1 = *(v0 + 8);
  sub_1000294D8(*v0);
  sub_1000294C8(v1);
}

Swift::Int sub_10001AB98(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1000294B8();
  sub_1000294D8(v2);
  sub_1000294C8(v3);
  return sub_1000294E8();
}

void sub_10001AC20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = sub_100028F78();
  v8 = [v6 initWithEntityName:v7];

  v9 = objc_allocWithZone(NSFetchRequest);
  v10 = sub_100028F78();
  v11 = [v9 initWithEntityName:v10];

  v12 = *(a1 + 24);
  type metadata accessor for MapsSyncManagedCuratedCollection();
  v13 = sub_100029238();
  v14 = v3;
  if (v3)
  {

    return;
  }

  v15 = v13;
  v88 = a1;
  v89 = a2;
  type metadata accessor for MapsSyncManagedHistoryCuratedCollection();
  isUniquelyReferenced_nonNull_native = sub_100029238();
  v83 = v12;
  v86 = v11;
  if (v15 >> 62)
  {
    goto LABEL_40;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v94 = isUniquelyReferenced_nonNull_native;
    v87 = v8;
    v84 = v14;
    if (v17)
    {
      v8 = 0;
      v14 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1000293B8();
        }

        else
        {
          if (v8 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          isUniquelyReferenced_nonNull_native = *(v15 + 8 * v8 + 32);
        }

        v18 = isUniquelyReferenced_nonNull_native;
        v19 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v20 = [isUniquelyReferenced_nonNull_native curatedCollectionIdentifier];
        v21 = [v18 resultProviderIdentifier];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_100010F10(0, *(v14 + 2) + 1, 1, v14);
          v14 = isUniquelyReferenced_nonNull_native;
        }

        v23 = *(v14 + 2);
        v22 = *(v14 + 3);
        if (v23 >= v22 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_100010F10((v22 > 1), v23 + 1, 1, v14);
          v14 = isUniquelyReferenced_nonNull_native;
        }

        *(v14 + 2) = v23 + 1;
        v24 = &v14[16 * v23];
        *(v24 + 4) = v20;
        *(v24 + 10) = v21;
        ++v8;
        if (v19 == v17)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v14 = _swiftEmptyArrayStorage;
LABEL_19:

    v25 = *(v14 + 2);
    if (v25)
    {
      v26 = v14 + 40;
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        v26 += 4;
        sub_1000242C0(&v100, v27, v28);
        --v25;
      }

      while (v25);
    }

    isUniquelyReferenced_nonNull_native = v94;
    if (!(v94 >> 62))
    {
      v29 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        break;
      }

      goto LABEL_24;
    }

    v29 = sub_1000293D8();
    isUniquelyReferenced_nonNull_native = v94;
    if (!v29)
    {
      break;
    }

LABEL_24:
    v8 = 0;
    v92 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v15 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v92)
      {
        isUniquelyReferenced_nonNull_native = sub_1000293B8();
      }

      else
      {
        if (v8 >= *(v15 + 16))
        {
          goto LABEL_39;
        }

        isUniquelyReferenced_nonNull_native = *(isUniquelyReferenced_nonNull_native + 8 * v8 + 32);
      }

      v30 = isUniquelyReferenced_nonNull_native;
      v31 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v32 = [isUniquelyReferenced_nonNull_native curatedCollectionIdentifier];
      v33 = [v30 resultProviderIdentifier];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100010F10(0, *(v14 + 2) + 1, 1, v14);
      }

      v35 = *(v14 + 2);
      v34 = *(v14 + 3);
      if (v35 >= v34 >> 1)
      {
        v14 = sub_100010F10((v34 > 1), v35 + 1, 1, v14);
      }

      *(v14 + 2) = v35 + 1;
      v36 = &v14[16 * v35];
      *(v36 + 4) = v32;
      *(v36 + 10) = v33;
      ++v8;
      isUniquelyReferenced_nonNull_native = v94;
      if (v31 == v29)
      {
        goto LABEL_43;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v37 = isUniquelyReferenced_nonNull_native;
    v17 = sub_1000293D8();
    isUniquelyReferenced_nonNull_native = v37;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_43:

  v38 = *(v14 + 2);
  if (v38)
  {
    v39 = v14 + 40;
    do
    {
      v40 = *(v39 - 1);
      v41 = *v39;
      v39 += 4;
      sub_1000242C0(&v100, v40, v41);
      --v38;
    }

    while (v38);
  }

  v42 = v87;
  if (sub_100015878() & 1) == 0 || (v43 = v84, (sub_1000290E8()))
  {

    return;
  }

  v44 = objc_allocWithZone(NSFetchRequest);
  v45 = sub_100028F78();
  v46 = [v44 initWithEntityName:v45];

  [v46 setResultType:2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046720, &qword_10002AF90);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10002B870;
  *(v47 + 32) = 0xD00000000000001BLL;
  *(v47 + 40) = 0x800000010002E040;
  *(v47 + 88) = &type metadata for String;
  *(v47 + 56) = &type metadata for String;
  *(v47 + 64) = 0xD000000000000018;
  *(v47 + 72) = 0x800000010002DCA0;
  isa = sub_100029038().super.isa;

  [v46 setPropertiesToFetch:isa];

  sub_100003E20(0, &qword_100047370, NSDictionary_ptr);
  v49 = sub_100029238();
  if (v84)
  {

    return;
  }

  v50 = v49;
  if (v49 >> 62)
  {
    goto LABEL_69;
  }

  v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v46; v51; i = v46)
  {
    v52 = 0;
    v53 = v50 & 0xC000000000000001;
    v95 = v50 & 0xFFFFFFFFFFFFFF8;
    v54 = _swiftEmptyArrayStorage;
    v91 = v50;
    v93 = v51;
    while (1)
    {
      if (v53)
      {
        v56 = sub_1000293B8();
      }

      else
      {
        if (v52 >= *(v95 + 16))
        {
          goto LABEL_68;
        }

        v56 = *(v50 + 8 * v52 + 32);
      }

      v57 = v56;
      v46 = (v52 + 1);
      if (__OFADD__(v52, 1))
      {
        break;
      }

      *&v98 = v56;
      v58 = v43;
      sub_10001B810(&v98, &v100);

      if ((BYTE12(v100) & 1) == 0)
      {
        v59 = v100;
        v60 = DWORD2(v100);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_100010F10(0, *(v54 + 2) + 1, 1, v54);
        }

        v62 = *(v54 + 2);
        v61 = *(v54 + 3);
        if (v62 >= v61 >> 1)
        {
          v54 = sub_100010F10((v61 > 1), v62 + 1, 1, v54);
        }

        *(v54 + 2) = v62 + 1;
        v55 = &v54[16 * v62];
        *(v55 + 4) = v59;
        *(v55 + 10) = v60;
        v43 = v58;
        v42 = v87;
        v50 = v91;
        v51 = v93;
      }

      ++v52;
      if (v46 == v51)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    v51 = sub_1000293D8();
  }

  v54 = _swiftEmptyArrayStorage;
LABEL_71:

  v63 = *(v54 + 2);
  if (v63)
  {
    v64 = v54 + 40;
    v65 = a3;
    do
    {
      v66 = *(v64 - 1);
      v67 = *v64;
      v64 += 4;
      sub_1000242C0(&v100, v66, v67);
      --v63;
    }

    while (v63);
  }

  else
  {
    v65 = a3;
  }

  v68 = *v65;
  if (*(*v89 + 16) <= *(*v65 + 16) >> 3)
  {
    *&v100 = *v65;

    sub_1000252D4(v71);

    v70 = v100;
  }

  else
  {

    v70 = sub_1000253D4(v69, v68);
  }

  sub_1000276D4(*(v88 + 88), v70, &v102);

  sub_100014D2C(&v102);
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();
  v72 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  v73 = sub_100029038().super.isa;

  v74 = [objc_opt_self() orPredicateWithSubpredicates:v73];

  [v72 setPredicate:v74];
  v75 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v72];
  [v75 setResultType:2];
  *&v100 = 0;
  v76 = [v83 executeRequest:v75 error:&v100];
  v77 = v100;
  if (!v76)
  {
    v81 = v100;
    sub_100028C78();

    swift_willThrow();
    v113 = v102;
    v114 = v103;
    sub_1000029A8(&v113, &qword_100047378, &qword_10002BF10);
    v111 = v104;
    v112 = v105;
    sub_1000029A8(&v111, &qword_100047378, &qword_10002BF10);
    v97 = v106;
    sub_1000029A8(&v97, &qword_100047380, &qword_10002BF18);

    goto LABEL_91;
  }

  v78 = v76;
  objc_opt_self();
  v79 = swift_dynamicCastObjCClass();
  v80 = v77;
  if (!v79)
  {

    v100 = 0u;
    v101 = 0u;
LABEL_89:
    sub_1000029A8(&v100, &qword_100047350, &qword_10002B2E0);
    goto LABEL_90;
  }

  if ([v79 result])
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v98 = 0u;
    v99 = 0u;
  }

  v100 = v98;
  v101 = v99;
  if (!*(&v99 + 1))
  {
    goto LABEL_89;
  }

  if (swift_dynamicCast())
  {
    v82 = v98;
    *&v100 = 0;
    *(&v100 + 1) = 0xE000000000000000;
    sub_100029388(41);

    *&v100 = 0x20646567727550;
    *(&v100 + 1) = 0xE700000000000000;
    *&v98 = v82;
    v115._countAndFlagsBits = sub_100029408();
    sub_100028FE8(v115);

    v116._countAndFlagsBits = 0xD000000000000020;
    v116._object = 0x800000010002E900;
    sub_100028FE8(v116);
    _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(v100, *(&v100 + 1));
  }

LABEL_90:
  [v83 reset];

  v109 = v102;
  v110 = v103;
  sub_1000029A8(&v109, &qword_100047378, &qword_10002BF10);
  v107 = v104;
  v108 = v105;
  sub_1000029A8(&v107, &qword_100047378, &qword_10002BF10);
  v96 = v106;
  sub_1000029A8(&v96, &qword_100047380, &qword_10002BF18);

LABEL_91:
}

uint64_t sub_10001B810@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *&v11 = 0xD00000000000001BLL;
  *(&v11 + 1) = 0x800000010002E040;
  v4 = [*a1 __swift_objectForKeyedSubscript:sub_100029468()];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v13 = 0u;
  }

  v14 = v11;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_12;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_13:
    v6 = 0;
    v9 = 0;
    v8 = 1;
    goto LABEL_14;
  }

  v6 = v10;
  *&v12 = 0xD000000000000018;
  *(&v12 + 1) = 0x800000010002DCA0;
  v7 = [v3 __swift_objectForKeyedSubscript:sub_100029468()];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_1000292D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
LABEL_12:
    result = sub_1000029A8(&v14, &qword_100047350, &qword_10002B2E0);
    goto LABEL_13;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = 0;
  v9 = v10;
LABEL_14:
  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 12) = v8;
  return result;
}

void (*sub_10001B9F4(void (*result)(void)))(void)
{
  v2 = *(v1 + 80);
  if (v2 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    v3 = -v2;
    v4 = -86400 * v2;
    if ((v3 * 86400) >> 64 == v4 >> 63)
    {
      v5 = result;
      v6 = v1;
      v7 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:v4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100046758, &qword_10002BEB0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_10002BD00;
      sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
      *(v8 + 32) = sub_100029118();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_10002AD50;
      *(v9 + 56) = sub_100003E20(0, &qword_100047358, NSDate_ptr);
      *(v9 + 64) = sub_10002764C();
      *(v9 + 32) = v7;
      v10 = v7;
      *(v8 + 40) = sub_100029118();
      v11 = objc_allocWithZone(NSCompoundPredicate);
      isa = sub_100029038().super.isa;

      v13 = [v11 initWithType:2 subpredicates:isa];

      v5(0);
      v14 = [swift_getObjCClassFromMetadata() fetchRequest];
      [v14 setFetchBatchSize:*(v6 + 88)];
      [v14 setPredicate:v13];

      return v14;
    }
  }

  __break(1u);
  return result;
}

void *sub_10001BC2C(uint64_t a1, uint64_t (*a2)(void))
{
  object = v2;
  a2(0);
  v5 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v5 setResultType:4];
  sub_100003E20(0, &qword_100046B10, NSPredicate_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046AC0, &unk_10002AFB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10002AD50;
  v7 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:-172800.0];
  *(v6 + 56) = sub_100003E20(0, &qword_100047358, NSDate_ptr);
  *(v6 + 64) = sub_10002764C();
  *(v6 + 32) = v7;
  v8 = sub_100029118();
  [v5 setPredicate:v8];

  v9 = ceil(*(a1 + 16) * 0.25);
  if (v9 == INFINITY)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = v9;
  object = 0;
  result = sub_100029228();
  if (result <= 0)
  {
    goto LABEL_9;
  }

  v12 = ceil(vcvtd_n_f64_u64(result, 1uLL));
  if (v12 == INFINITY)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v10 = v12;
  sub_100029388(49);

  v19[1] = 0x800000010002EB40;
  v20._countAndFlagsBits = sub_100029408();
  object = v20._object;
  sub_100028FE8(v20);

  v21._object = 0x800000010002EB60;
  v21._countAndFlagsBits = 0xD000000000000011;
  sub_100028FE8(v21);
  _sSo9OS_os_logC9mapssyncdE5debugyySSFZ_0(0xD00000000000001ELL, 0x800000010002EB40);

LABEL_9:
  v19[0] = a1;

  v8 = v19;
  sub_100026024();
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_unknownObjectRelease();
    sub_100026258(v8, (v8 + 4), 0, object);
    goto LABEL_19;
  }

  v8 = v19[0];
  v13 = *(v19[0] + 16);
  if (v13 >= v10)
  {
    v13 = v10;
  }

  v14 = 2 * v13;
  if (v10)
  {
    object = v14 + 1;
  }

  else
  {
    object = 1;
  }

  sub_100029438();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = _swiftEmptyArrayStorage;
  }

  v16 = v15[2];

  if (v16 != object >> 1)
  {
    goto LABEL_26;
  }

  v17 = swift_dynamicCastClass();
  if (v17)
  {
LABEL_19:
    v18 = v17;
    swift_unknownObjectRelease();

    return v18;
  }

  swift_unknownObjectRelease_n();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10001BFDC(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_10001BFFC, 0, 0);
}

uint64_t sub_10001BFFC()
{
  v18 = v0;
  v1 = v0[9];
  v17 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_23:
    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    v16 = sub_1000293D8();
    v2 = v0[9];
  }

  else
  {
    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = v1;
  }

  v3 = 0;
  v4 = v0[10];
  v5 = v1 & 0xC000000000000001;
  v6 = v2 + 32;
  v7 = _swiftEmptyArrayStorage;
LABEL_4:
  v14 = v7;
  v0[11] = v7;
  while (v16 != v3)
  {
    if (v5)
    {
      v8 = sub_1000293B8();
    }

    else
    {
      if (v3 >= *(v15 + 16))
      {
        goto LABEL_22;
      }

      v8 = *(v6 + 8 * v3);
    }

    v9 = v8;
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v1 = *(v4 + 24);
    *(swift_task_alloc() + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000473A0, &qword_10002BF60);
    sub_100029218();

    ++v3;
    if (v0[8])
    {
      sub_100029028();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100029058();
      }

      v1 = &v17;
      sub_100029068();
      v7 = v17;
      v3 = v10;
      goto LABEL_4;
    }
  }

  if (v14 >> 62)
  {
    if (sub_1000293D8())
    {
      goto LABEL_18;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_10001C2A8;

    return sub_100020C5C(v14);
  }

  v13 = v0[1];

  return v13();
}