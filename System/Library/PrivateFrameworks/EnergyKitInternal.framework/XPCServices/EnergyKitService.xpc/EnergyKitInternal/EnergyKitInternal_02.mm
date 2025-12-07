uint64_t sub_10003F9B0()
{
  *(v0 + 72) = *(*(v0 + 64) + 120);

  return _swift_task_switch(sub_10003FA28, 0, 0);
}

uint64_t sub_10003FA28()
{
  if (v0[9])
  {

    v1 = sub_1000A39C8();
    v2 = qword_1000C95F0;
    v0[10] = v1;
    v0[11] = v2;

    return _swift_task_switch(sub_10003FB70, v2, 0);
  }

  else
  {
    v3 = sub_1000A3518();
    v4 = sub_1000A3CC8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[LoadEventOperations] Invalid application-identifier", v5, 2u);
    }

    swift_unknownObjectRelease();

    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_10003FB70()
{
  *(v0 + 144) = *(*(v0 + 88) + 144);

  return _swift_task_switch(sub_10003FBE0, 0, 0);
}

uint64_t sub_10003FBE0(uint64_t a1)
{
  if (*(v1 + 144) == 1)
  {
    if (*(v1 + 40))
    {
      v2 = *(v1 + 80);
      v3 = *(v1 + 32);
      v4 = sub_1000A39B8();
      *(v1 + 96) = v4;
      sub_1000A35D8();
      v5 = swift_task_alloc();
      *(v1 + 104) = v5;
      *(v5 + 16) = v2;
      *(v5 + 24) = v3;
      v6 = swift_task_alloc();
      *(v1 + 112) = v6;
      *v6 = v1;
      v6[1] = sub_10003FEE4;

      return static SandboxExtension.withResources<A>(resources:_:)(v1 + 16, v4, &unk_1000AC008, v5, &type metadata for Int);
    }

    else
    {
      if (qword_1000C7598 != -1)
      {
        swift_once();
      }

      v14 = swift_task_alloc();
      *(v1 + 128) = v14;
      *v14 = v1;
      v14[1] = sub_10004016C;
      v15 = *(v1 + 80);
      v16 = *(v1 + 32);

      return sub_1000834F0(v15, v16);
    }
  }

  else
  {

    v7 = sub_1000A3518();
    v8 = sub_1000A3CC8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "[LoadEventOperations] Unauthorized", v9, 2u);
    }

    v10 = sub_1000A3518();
    v11 = sub_1000A3CB8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "[LoadEventOperations] Submitted %ld load event records", v12, 0xCu);
    }

    swift_unknownObjectRelease();

    v13 = *(v1 + 8);

    return v13(0);
  }
}

uint64_t sub_10003FEE4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100040384;
  }

  else
  {
    v2 = sub_100040074;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100040074(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1000A3518();
  v4 = sub_1000A3CB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[LoadEventOperations] Submitted %ld load event records", v5, 0xCu);
  }

  swift_unknownObjectRelease();

  v6 = *(v1 + 8);

  return v6(v2);
}

uint64_t sub_10004016C(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10004028C, 0, 0);
}

uint64_t sub_10004028C(uint64_t a1)
{
  v2 = *(v1 + 136);
  v3 = sub_1000A3518();
  v4 = sub_1000A3CB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[LoadEventOperations] Submitted %ld load event records", v5, 0xCu);
  }

  swift_unknownObjectRelease();

  v6 = *(v1 + 8);

  return v6(v2);
}

uint64_t sub_100040384()
{
  swift_errorRetain();
  v1 = sub_1000A3518();
  v2 = sub_1000A3CC8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[LoadEventOperations] Event submission failed: %@", v3, 0xCu);
    sub_10000343C(v4);
  }

  else
  {
  }

  v6 = sub_1000A3518();
  v7 = sub_1000A3CB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[LoadEventOperations] Submitted %ld load event records", v8, 0xCu);
  }

  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_100040560(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014898;

  return sub_10003F5BC(a1, v5, v4);
}

id sub_10004060C()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[10];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    sub_10004068C(v0, &v8);
    objc_autoreleasePoolPop(v3);
    v4 = v8;
    v5 = v0[10];
    v0[10] = v8;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_10004068C(void *a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v3 = sub_1000A2388();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(*(v60 + 64));
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v59 = v55 - v6;
  v7 = sub_1000A2D38();
  if (!v7)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = v7;
  v9 = sub_1000A3A78();
  v10 = sub_1000A3A78();
  v11 = [v8 URLForResource:v9 withExtension:v10];

  if (!v11)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1000A2378();

  (*(v60 + 32))(v59, v5, v61);
  v12 = objc_allocWithZone(NSManagedObjectModel);
  sub_1000A2368(v13);
  v15 = v14;
  v16 = [v12 initWithContentsOfURL:v14];

  if (!v16)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v17 = objc_allocWithZone(NSPersistentContainer);
  v18 = v16;
  v19 = sub_1000A3A78();
  v20 = [v17 initWithName:v19 managedObjectModel:v18];

  v21 = v20;
  v22 = [v21 persistentStoreDescriptions];
  v23 = sub_100032224(0, &qword_1000C8548, NSPersistentStoreDescription_ptr);
  v24 = sub_1000A3B68();

  if (v24 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000A3EC8())
  {
    v56 = v21;
    v57 = v18;
    v55[1] = v23;
    if (i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = sub_1000A3EA8();
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_36;
        }

        v26 = *(v24 + 32);
      }

      v27 = v26;
    }

    else
    {

      v27 = [objc_allocWithZone(NSPersistentStoreDescription) init];
    }

    v70 = v27;
    v28 = sub_1000A3A78();
    [v27 setConfiguration:v28];

    [v27 setType:NSXPCStoreType];
    sub_100032224(0, &qword_1000C7F28, NSNumber_ptr);
    isa = sub_1000A3D88(0).super.super.isa;
    [v27 setOption:isa forKey:NSMigratePersistentStoresAutomaticallyOption];

    sub_10000275C(&qword_1000C8550, &qword_1000AC0A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AC010;
    *(inited + 32) = sub_1000A3A88();
    v23 = (inited + 32);
    *(inited + 40) = v31;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    *(inited + 80) = sub_1000A3A88();
    *(inited + 88) = v32;
    v34 = a1[6];
    v33 = a1[7];
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = v34;
    *(inited + 104) = v33;

    v24 = sub_100089D44(inited);
    swift_setDeallocating();
    sub_10000275C(&qword_1000C8558, &qword_1000AC0A8);
    swift_arrayDestroy();
    v35 = 0;
    v37 = v24 + 64;
    v36 = *(v24 + 64);
    v62 = v24;
    v38 = 1 << *(v24 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v21 = v39 & v36;
    a1 = ((v38 + 63) >> 6);
    if ((v39 & v36) != 0)
    {
      break;
    }

LABEL_16:
    if (a1 <= v35 + 1)
    {
      v40 = (v35 + 1);
    }

    else
    {
      v40 = a1;
    }

    v41 = v40 - 1;
    while (1)
    {
      v18 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v18 >= a1)
      {
        v21 = 0;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        goto LABEL_24;
      }

      v21 = *(v37 + 8 * v18);
      ++v35;
      if (v21)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_33:
    ;
  }

  while (1)
  {
    v18 = v35;
LABEL_23:
    v42 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v43 = v42 | (v18 << 6);
    v44 = (*(v62 + 48) + 16 * v43);
    v45 = *v44;
    v46 = v44[1];
    sub_10000F814(*(v62 + 56) + 32 * v43, v63);
    *&v64 = v45;
    *(&v64 + 1) = v46;
    sub_1000413C4(v63, &v65);

    v41 = v18;
LABEL_24:
    v67 = v64;
    v68 = v65;
    v69 = v66;
    if (!*(&v64 + 1))
    {
      break;
    }

    sub_1000413C4(&v68, &v64);
    sub_100032224(0, &qword_1000C8560, NSObject_ptr);
    v47 = swift_dynamicCast();
    v24 = *&v63[0];
    v23 = sub_1000A3A78();

    if (v47)
    {
      v48 = v24;
    }

    else
    {
      v48 = 0;
    }

    [v70 setOption:v48 forKey:v23];

    v35 = v41;
    if (!v21)
    {
      goto LABEL_16;
    }
  }

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1000ABC60;
  v50 = v70;
  *(v49 + 32) = v70;
  v51 = v50;
  v52 = sub_1000A3B48().super.isa;

  v53 = v56;
  [v56 setPersistentStoreDescriptions:v52];

  *&v69 = sub_100040D8C;
  *(&v69 + 1) = 0;
  *&v67 = _NSConcreteStackBlock;
  *(&v67 + 1) = 1107296256;
  *&v68 = sub_100040F30;
  *(&v68 + 1) = &unk_1000BF5F0;
  v54 = _Block_copy(&v67);
  [v53 loadPersistentStoresWithCompletionHandler:v54];

  _Block_release(v54);
  (*(v60 + 8))(v59, v61);
  *v58 = v53;
}

void sub_100040D8C(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1000A2348();
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v4 = sub_1000A3538();
    sub_100001E38(v4, qword_1000C96B8);
    v5 = a1;
    v6 = v3;
    oslog = sub_1000A3518();
    v7 = sub_1000A3CC8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *(v8 + 12) = 2114;
      *(v8 + 14) = v6;
      *v9 = v5;
      v9[1] = v6;
      v10 = v5;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Failed to load persistent stores(%@):%{public}@", v8, 0x16u);
      sub_10000275C(&unk_1000C7740, &qword_1000AB610);
      swift_arrayDestroy();

      v6 = oslog;
      oslog = v11;
    }
  }
}

void sub_100040F30(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_100040FBC()
{

  return _swift_deallocClassInstance(v0, 88, 7);
}

id sub_100041038(char a1)
{
  result = [v1 hasChanges];
  if (result)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v4 = sub_1000A3538();
    sub_100001E38(v4, qword_1000C96B8);
    v5 = sub_1000A3518();
    v6 = sub_1000A3CB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      if (a1)
      {
        v9 = 0x6144657461647075;
      }

      else
      {
        v9 = 0xD000000000000012;
      }

      v10 = a1;
      if (a1)
      {
        v11 = 0xEA00000000006174;
      }

      else
      {
        v11 = 0x80000001000A6D30;
      }

      v12 = sub_1000954AC(v9, v11, &v23);
      a1 = v10;

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "[CoreDataStack] Saving changes for %s", v7, 0xCu);
      sub_10000F7B8(v8);
    }

    v23 = 0;
    if ([v1 save:&v23])
    {
      return v23;
    }

    else
    {
      v13 = v23;
      sub_1000A2358();

      swift_willThrow();
      swift_errorRetain();
      v14 = sub_1000A3518();
      v15 = sub_1000A3CC8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v16 = 136315394;
        if (a1)
        {
          v19 = 0x6144657461647075;
        }

        else
        {
          v19 = 0xD000000000000012;
        }

        if (a1)
        {
          v20 = 0xEA00000000006174;
        }

        else
        {
          v20 = 0x80000001000A6D30;
        }

        v21 = sub_1000954AC(v19, v20, &v23);

        *(v16 + 4) = v21;
        *(v16 + 12) = 2112;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 14) = v22;
        *v17 = v22;
        _os_log_impl(&_mh_execute_header, v14, v15, "[CoreDataStack] Error saving changes for %s. %@", v16, 0x16u);
        sub_10000343C(v17);

        sub_10000F7B8(v18);
      }

      return swift_willThrow();
    }
  }

  return result;
}

_OWORD *sub_1000413C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000413D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000413EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000A3538();
  sub_100015578(v3, qword_1000C96B8);
  sub_100001E38(v3, qword_1000C96B8);
  return sub_1000A3528();
}

Class sub_10004146C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1000417E4();
    v4.super.isa = sub_1000A3A08().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_10004151C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);

  v5 = sub_1000A3518();
  v6 = sub_1000A3CB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_1000954AC(0x65766528646E6573, 0xEC000000293A746ELL, v17);
    *(v7 + 12) = 2080;
    v8 = sub_100047FE8(*(a1 + 16));
    v10 = sub_1000954AC(v8, v9, v17);

    *(v7 + 14) = v10;
    *(v7 + 22) = 2080;
    sub_100048104();
    sub_1000417E4();
    v11 = sub_1000A3A28();
    v13 = v12;

    v14 = sub_1000954AC(v11, v13, v17);

    *(v7 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Sending analytics event for [%s]: %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  sub_100047FE8(*(a1 + 16));
  v15 = sub_1000A3A78();

  v17[4] = sub_1000417C8;
  v17[5] = a1;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10004146C;
  v17[3] = &unk_1000BF618;
  v16 = _Block_copy(v17);

  AnalyticsSendEventLazy();
  _Block_release(v16);
}

uint64_t sub_1000417CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000417E4()
{
  result = qword_1000C8560;
  if (!qword_1000C8560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C8560);
  }

  return result;
}

uint64_t sub_100041830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000A3F88();
  sub_1000A3AC8();
  v6 = sub_1000A3F98();
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
    if (v11 || (sub_1000A3F48() & 1) != 0)
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

void *sub_100041928(uint64_t a1)
{
  v2 = v1;
  sub_1000A2E28();
  v4 = sub_1000A2E18();
  [v4 setResultType:0];
  sub_10000275C(&qword_1000C8600, &qword_1000AC5E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000AC0E0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 32) = 0x73676E6964616572;
  *(v5 + 40) = 0xE800000000000000;
  isa = sub_1000A3B48().super.isa;

  [v4 setPropertiesToFetch:isa];

  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = sub_1000A3A78();
  v9 = [v7 initWithKey:v8 ascending:1];

  v10 = objc_allocWithZone(NSSortDescriptor);
  v11 = sub_1000A3A78();
  v12 = [v10 initWithKey:v11 ascending:0];

  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = sub_1000A3A78();
  v15 = [v13 initWithKey:v14 ascending:0];

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000AC0F0;
  *(v16 + 32) = v9;
  *(v16 + 40) = v12;
  *(v16 + 48) = v15;
  sub_100047238();
  v17 = v9;
  v18 = v12;
  v19 = v15;
  v20 = sub_1000A3B48().super.isa;

  [v4 setSortDescriptors:v20];

  v21 = sub_1000478F4(*(v2 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_subID), *(v2 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_subID + 8), *(v2 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_utilityID), *(v2 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_utilityID + 8), *(v2 + 112), a1, *(v2 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_metersToExclude));
  [v4 setPredicate:v21];
  [v4 setFetchBatchSize:30];
  [v4 setReturnsObjectsAsFaults:0];

  return v4;
}

unint64_t sub_100041C10(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v46 = &_swiftEmptySetSingleton;
  sub_1000A2E28();
  result = sub_1000A3D68();
  if (!v5)
  {
    if (result >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v32)
    {
      v12 = 0;
      v42 = i;
      v43 = result & 0xC000000000000001;
      v38 = result & 0xFFFFFFFFFFFFFF8;
      v37 = result + 32;
      v40 = a3;
      v41 = a4;
      v39 = a2;
      while (1)
      {
        if (v43)
        {
          result = sub_1000A3EA8();
        }

        else
        {
          if (v12 >= *(v38 + 16))
          {
            goto LABEL_25;
          }

          result = *(v37 + 8 * v12);
        }

        v21 = result;
        if (__OFADD__(v12++, 1))
        {
          break;
        }

        a4 = a5;
        v44 = objc_autoreleasePoolPush();
        v23 = v46;
        v24 = [v21 recordID];
        v25 = sub_1000A3A88();
        a3 = v26;

        if (v23[2] && (sub_1000A3F88(), sub_1000A3AC8(), v27 = sub_1000A3F98(), v28 = -1 << *(v23 + 32), a2 = v27 & ~v28, ((*(v23 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a2) & 1) != 0))
        {
          v29 = ~v28;
          while (1)
          {
            v30 = (v23[6] + 16 * a2);
            v31 = *v30 == v25 && v30[1] == a3;
            if (v31 || (sub_1000A3F48() & 1) != 0)
            {
              break;
            }

            a2 = (a2 + 1) & v29;
            if (((*(v23 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a2) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          a5 = a4;
        }

        else
        {
LABEL_5:

          v13 = [v21 recordID];
          v14 = sub_1000A3A88();
          v16 = v15;

          sub_100095D34(&v45, v14, v16);

          sub_1000A3358();
          v17 = [v21 readings];
          v18 = sub_1000A23B8();
          v20 = v19;

          a3 = sub_1000A3348();
          sub_10003228C(v18, v20);
          a5 = a4;
          sub_1000394B4(v39, a3, v40, v41, a4);
        }

        objc_autoreleasePoolPop(v44);

        if (v12 == v42)
        {
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v32 = result;
      i = sub_1000A3EC8();
    }

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v33 = sub_1000A3538();
    sub_100001E38(v33, qword_1000C96B8);
    v34 = sub_1000A3518();
    v35 = sub_1000A3CA8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "[AMIQueryEngine] No blocks found", v36, 2u);
    }
  }

  return result;
}

uint64_t sub_100041FF0(char a1)
{
  *(v2 + 408) = v1;
  *(v2 + 1100) = a1;
  v3 = sub_1000A2C08();
  *(v2 + 416) = v3;
  *(v2 + 424) = *(v3 - 8);
  *(v2 + 432) = swift_task_alloc();
  v4 = sub_1000A3538();
  *(v2 + 440) = v4;
  *(v2 + 448) = *(v4 - 8);
  *(v2 + 456) = swift_task_alloc();
  *(v2 + 464) = swift_task_alloc();
  v5 = sub_1000A3938();
  *(v2 + 472) = v5;
  *(v2 + 480) = *(v5 - 8);
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 496) = swift_task_alloc();
  v6 = sub_10000275C(&unk_1000C7CA0, qword_1000ABAF0);
  *(v2 + 504) = v6;
  *(v2 + 512) = *(v6 - 8);
  *(v2 + 520) = swift_task_alloc();
  sub_10000275C(&qword_1000C7D58, &qword_1000ABB20);
  *(v2 + 528) = swift_task_alloc();
  *(v2 + 536) = swift_task_alloc();
  sub_10000275C(&qword_1000C7EB8, &qword_1000ABD48);
  *(v2 + 544) = swift_task_alloc();
  *(v2 + 552) = swift_task_alloc();
  v7 = sub_1000A32F8();
  *(v2 + 560) = v7;
  *(v2 + 568) = *(v7 - 8);
  *(v2 + 576) = swift_task_alloc();
  *(v2 + 584) = swift_task_alloc();
  v8 = sub_1000A25A8();
  *(v2 + 592) = v8;
  *(v2 + 600) = *(v8 - 8);
  *(v2 + 608) = swift_task_alloc();
  v9 = sub_1000A23F8();
  *(v2 + 616) = v9;
  *(v2 + 624) = *(v9 - 8);
  *(v2 + 632) = swift_task_alloc();
  sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  *(v2 + 640) = swift_task_alloc();
  *(v2 + 648) = swift_task_alloc();
  v10 = sub_1000A2568();
  *(v2 + 656) = v10;
  *(v2 + 664) = *(v10 - 8);
  *(v2 + 672) = swift_task_alloc();
  v11 = sub_1000A2498();
  *(v2 + 680) = v11;
  *(v2 + 688) = *(v11 - 8);
  *(v2 + 696) = swift_task_alloc();
  *(v2 + 704) = swift_task_alloc();
  *(v2 + 712) = swift_task_alloc();
  *(v2 + 720) = swift_task_alloc();
  *(v2 + 728) = swift_task_alloc();
  *(v2 + 736) = swift_task_alloc();
  *(v2 + 744) = swift_task_alloc();
  *(v2 + 752) = swift_task_alloc();
  *(v2 + 760) = swift_task_alloc();
  *(v2 + 768) = swift_task_alloc();
  *(v2 + 776) = swift_task_alloc();
  v12 = sub_1000A22A8();
  *(v2 + 784) = v12;
  *(v2 + 792) = *(v12 - 8);
  *(v2 + 800) = swift_task_alloc();
  *(v2 + 808) = swift_task_alloc();
  *(v2 + 816) = swift_task_alloc();
  *(v2 + 824) = swift_task_alloc();
  *(v2 + 832) = swift_task_alloc();
  *(v2 + 840) = swift_task_alloc();
  *(v2 + 848) = swift_task_alloc();

  return _swift_task_switch(sub_1000425AC, v1, 0);
}

uint64_t sub_1000425AC(uint64_t a1)
{
  v231 = v1;
  v2 = *(v1 + 840);
  v3 = *(v1 + 832);
  v4 = *(v1 + 792);
  v199 = *(v1 + 776);
  v209 = *(v1 + 784);
  v204 = *(v1 + 752);
  v226 = *(v1 + 688);
  v202 = *(v1 + 680);
  v5 = *(v1 + 664);
  v215 = *(v1 + 656);
  v220 = *(v1 + 672);
  v6 = *(v1 + 408);
  *(v1 + 376) = &_swiftEmptyArrayStorage;
  sub_1000A3868();
  sub_1000A2288();
  v7 = *(v4 + 8);
  *(v1 + 856) = v7;
  *(v1 + 864) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = v2;
  v9 = v209;
  v7(v8, v209);
  sub_1000A3868();
  sub_1000A2248();
  v210 = v7;
  v7(v3, v9);
  sub_1000A2478();
  v10 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar;
  *(v1 + 872) = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar;
  v11 = *(v226 + 16);
  *(v1 + 880) = v11;
  *(v1 + 888) = (v226 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v204, v199, v202);
  (*(v5 + 104))(v220, enum case for Calendar.Component.year(_:), v215);
  sub_1000A2ED8();
  (*(v5 + 8))(v220, v215);
  v216 = v6;
  v221 = v10;
  sub_1000A2E88();
  if (sub_1000A2438())
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    sub_100001E38(*(v1 + 440), qword_1000C96B8);
    v12 = sub_1000A3518();
    v13 = sub_1000A3CC8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[AMIQueryEngine] Client requested query start date is before five years ago.", v14, 2u);
    }

    v15 = *(v1 + 752);
    v16 = *(v1 + 736);
    v17 = *(v1 + 688);
    v18 = *(v1 + 680);

    (*(v17 + 8))(v15, v18);
    v11(v15, v16, v18);
  }

  v11(*(v1 + 728), *(v1 + 768), *(v1 + 680));
  if (sub_1000A2428())
  {
    v19 = *(v1 + 760);
    v20 = *(v1 + 728);
    v21 = *(v1 + 680);
    (*(*(v1 + 688) + 8))(v20, v21);
    v11(v20, v19, v21);
  }

  v203 = *(v1 + 824);
  v201 = *(v1 + 776);
  v198 = *(v1 + 760);
  v200 = *(v1 + 768);
  v22 = *(v1 + 752);
  v196 = *(v1 + 736);
  v197 = *(v1 + 744);
  v23 = *(v1 + 728);
  v24 = *(v1 + 720);
  v25 = *(v1 + 712);
  v26 = *(v1 + 688);
  v27 = *(v1 + 680);
  v205 = *(v1 + 408);
  v208 = *(v1 + 1100);
  v11(v24, v22, v27);
  v11(v25, v23, v27);
  sub_1000A2268();
  v28 = *(v26 + 8);
  *(v1 + 896) = v28;
  *(v1 + 904) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v23, v27);
  v28(v196, v27);
  v28(v197, v27);
  v28(v22, v27);
  v28(v198, v27);
  v28(v200, v27);
  v28(v201, v27);
  *(v1 + 912) = type metadata accessor for InsightBucketBoundaries();
  sub_1000A2288();
  v29 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity;
  *(v1 + 920) = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity;
  sub_10004C5C8(v24, v205 + v29, v216 + v221, v208, v203);
  v206 = v28;
  v28(v24, v27);
  sub_1000A2288();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v227 = (v1 + 376);
  v30 = *(v1 + 848);
  v31 = *(v1 + 816);
  v32 = *(v1 + 792);
  v33 = *(v1 + 784);
  *(v1 + 928) = sub_100001E38(*(v1 + 440), qword_1000C96B8);
  v34 = *(v32 + 16);
  *(v1 + 936) = v34;
  *(v1 + 944) = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v34(v31, v30, v33);
  v35 = sub_1000A3518();
  v36 = sub_1000A3CA8();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v1 + 816);
  v39 = *(v1 + 784);
  if (v37)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v230[0] = v41;
    *v40 = 136315138;
    sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v42 = sub_1000A3F28();
    v44 = v43;
    v210(v38, v39);
    v45 = sub_1000954AC(v42, v44, v230);

    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v35, v36, "[AMIQueryEngine] Query Range: %s", v40, 0xCu);
    sub_10000F7B8(v41);
  }

  else
  {

    v210(v38, v39);
  }

  v46 = *(v1 + 608);
  v47 = *(v1 + 600);
  v48 = *(v1 + 592);
  sub_1000A2548();
  sub_1000A2EB8();
  (*(v47 + 8))(v46, v48);
  sub_1000A23E8();
  v49 = *(v1 + 720);
  v50 = *(v1 + 688);
  v51 = *(v1 + 680);
  v52 = *(v1 + 648);
  (*(*(v1 + 624) + 8))(*(v1 + 632), *(v1 + 616));
  (*(v50 + 56))(v52, 0, 1, v51);
  *(v1 + 952) = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_stream;
  *(v1 + 960) = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_gridID;
  *(v1 + 968) = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options;
  *(v1 + 976) = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_context;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  sub_1000A2248();
  v53 = sub_1000A2438();
  v54 = v206(v49, v51);
  v57 = 0;
  v58 = 0;
  if ((v53 & 1) == 0)
  {
LABEL_55:
    v168 = *(v1 + 376);
    *(v1 + 1056) = v168;
    v169 = *(v168 + 16);
    if (!v169)
    {
      v187 = sub_1000A3518();
      v188 = sub_1000A3CA8();
      if (os_log_type_enabled(v187, v188))
      {
        v189 = swift_slowAlloc();
        *v189 = 134217984;
        *(v189 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v187, v188, "[AMIQueryEngine] Total Yielded %ld", v189, 0xCu);
      }

      v190 = *(v1 + 952);
      v191 = *(v1 + 408);

      v55 = *(v191 + v190);
      *(v1 + 1088) = v55;
      v192 = sub_100046B08;
      goto LABEL_75;
    }

    *(v1 + 1064) = v58 + v169;
    if (!__OFADD__(v58, v169))
    {
      v170 = sub_1000A3518();
      v171 = sub_1000A3CA8();
      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        *v172 = 134217984;
        *(v172 + 4) = *(v168 + 16);
        _os_log_impl(&_mh_execute_header, v170, v171, "[AMIQueryEngine] Yield %ld", v172, 0xCu);
      }

      v173 = *(v1 + 952);
      v174 = *(v1 + 408);

      v55 = *(v174 + v173);
      *(v1 + 1072) = v55;
      v175 = *(v168 + 16);
      if (v175)
      {
        v214 = v55;
        v176 = *(v1 + 568);
        v178 = *(v176 + 16);
        v177 = v176 + 16;
        v179 = v168 + ((*(v177 + 64) + 32) & ~*(v177 + 64));
        v225 = *(v177 + 56);
        v229 = v178;

        v180 = &_swiftEmptyArrayStorage;
        do
        {
          v229(*(v1 + 576), v179, *(v1 + 560));
          sub_1000471F0(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload, &protocol conformance descriptor for InsightRecordPayload);
          v181 = sub_1000A3458();
          v183 = v182;
          (*(v177 - 8))(*(v1 + 576), *(v1 + 560));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v180 = sub_100095044(0, *(v180 + 2) + 1, 1, v180);
          }

          v185 = *(v180 + 2);
          v184 = *(v180 + 3);
          if (v185 >= v184 >> 1)
          {
            v180 = sub_100095044((v184 > 1), v185 + 1, 1, v180);
          }

          *(v180 + 2) = v185 + 1;
          v186 = &v180[16 * v185];
          *(v186 + 4) = v181;
          *(v186 + 5) = v183;
          v179 += v225;
          --v175;
        }

        while (v175);

        v55 = v214;
      }

      else
      {
        v180 = &_swiftEmptyArrayStorage;
      }

      *(v1 + 1080) = v180;
      v192 = sub_100046828;
      goto LABEL_75;
    }

LABEL_82:
    __break(1u);
    return _swift_task_switch(v54, v55, v56);
  }

  *(v1 + 1096) = enum case for Logging.framework(_:);
  v59 = *(v1 + 376);
  v60 = *(v59 + 16);
  if (v60)
  {
    v58 = 0;
LABEL_17:
    *(v1 + 984) = v58 + v60;
    if (!__OFADD__(v58, v60))
    {
      v61 = sub_1000A3518();
      v62 = sub_1000A3CA8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 134217984;
        *(v63 + 4) = *(v59 + 16);
        _os_log_impl(&_mh_execute_header, v61, v62, "[AMIQueryEngine] Yield %ld", v63, 0xCu);
      }

      v64 = *(v1 + 952);
      v65 = *(v1 + 408);

      v55 = *(v65 + v64);
      *(v1 + 992) = v55;
      v66 = *(v59 + 16);
      if (v66)
      {
        v67 = *(v1 + 568);
        v68 = v59 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
        v228 = *(v67 + 72);
        v217 = v55;
        v222 = *(v67 + 16);

        v69 = &_swiftEmptyArrayStorage;
        do
        {
          v222(*(v1 + 584), v68, *(v1 + 560));
          sub_1000471F0(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload, &protocol conformance descriptor for InsightRecordPayload);
          v70 = sub_1000A3458();
          v72 = v71;
          (*(*(v1 + 568) + 8))(*(v1 + 584), *(v1 + 560));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = sub_100095044(0, *(v69 + 2) + 1, 1, v69);
          }

          v74 = *(v69 + 2);
          v73 = *(v69 + 3);
          if (v74 >= v73 >> 1)
          {
            v69 = sub_100095044((v73 > 1), v74 + 1, 1, v69);
          }

          *(v69 + 2) = v74 + 1;
          v75 = &v69[16 * v74];
          *(v75 + 4) = v70;
          *(v75 + 5) = v72;
          v68 += v228;
          --v66;
        }

        while (v66);

        v55 = v217;
      }

      else
      {
        v69 = &_swiftEmptyArrayStorage;
      }

      *(v1 + 1008) = v69;
      *(v1 + 1000) = 0;
      v192 = sub_100043FD0;
LABEL_75:
      v54 = v192;
      v56 = 0;

      return _swift_task_switch(v54, v55, v56);
    }

    __break(1u);
    goto LABEL_82;
  }

  v57 = 0;
  v58 = 0;
  while (1)
  {
    *(v1 + 1032) = v58;
    *(v1 + 1024) = v57;
    *(v1 + 1016) = 0;
    v76 = *(v1 + 408);
    v77 = (v76 + *(v1 + 960));
    *(v1 + 392) = &_swiftEmptyArrayStorage;
    v78 = v77[1];
    if (!v78)
    {
      goto LABEL_44;
    }

    v79 = *v77;
    v81 = *(v1 + 488);
    v80 = *(v1 + 496);
    v83 = *(v1 + 472);
    v82 = *(v1 + 480);
    (*(v82 + 16))(v80, v76 + *(v1 + 968), v83);
    sub_1000A3908();
    sub_1000471F0(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options);
    v84 = sub_1000A3DF8();
    v85 = *(v82 + 8);
    v85(v81, v83);
    v85(v80, v83);
    if ((v84 & 1) == 0)
    {
      goto LABEL_44;
    }

    v86 = *(v1 + 688);
    v87 = *(v1 + 680);
    v88 = *(v1 + 648);
    v89 = *(v1 + 640);
    (*(v1 + 936))(*(v1 + 808), *(v1 + 824), *(v1 + 784));
    sub_100047188(v88, v89, &qword_1000C7F58, &qword_1000AC770);
    v90 = (*(v86 + 48))(v89, 1, v87);
    v91 = *(v1 + 808);
    if (v90 == 1)
    {
      v92 = *(v1 + 856);
      v93 = *(v1 + 784);
      sub_100022154(*(v1 + 640), &qword_1000C7F58, &qword_1000AC770);
      v92(v91, v93);
      goto LABEL_44;
    }

    v94 = *(v1 + 896);
    v95 = *(v1 + 720);
    v96 = *(v1 + 680);
    (*(*(v1 + 688) + 32))(*(v1 + 696), *(v1 + 640), v96);
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    sub_1000471F0(&qword_1000C7F50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v97 = sub_1000A3A48();
    v94(v95, v96);
    if (v97)
    {
      v98 = *(v1 + 896);
      v99 = *(v1 + 720);
      v100 = *(v1 + 680);
      swift_beginAccess();
      sub_1000A2288();
      swift_endAccess();
      v101 = sub_1000A2438();
      v98(v99, v100);
      if (v101)
      {
        v102 = *(v1 + 896);
        v103 = *(v1 + 720);
        v104 = *(v1 + 680);
        swift_beginAccess();
        sub_1000A2248();
        swift_endAccess();
        v105 = sub_1000A3A48();
        v102(v103, v104);
        if ((v105 & 1) == 0)
        {
          v223 = *(v1 + 1096);
          v106 = *(v1 + 424);
          v107 = *(v1 + 432);
          v213 = *(v1 + 416);
          (*(v1 + 880))(*(v1 + 720), *(v1 + 696), *(v1 + 680));
          swift_beginAccess();
          sub_1000A2298();
          swift_endAccess();
          swift_beginAccess();
          sub_1000A2248();
          swift_endAccess();
          swift_beginAccess();
          sub_1000A2258();
          swift_endAccess();
          (*(v106 + 104))(v107, v223, v213);
          sub_1000A2B68();
          (*(v106 + 8))(v107, v213);
          v108 = sub_1000A3518();
          v109 = sub_1000A3CA8();
          if (os_log_type_enabled(v108, v109))
          {
            v224 = *(v1 + 456);
            v211 = *(v1 + 448);
            v218 = *(v1 + 440);
            v110 = swift_slowAlloc();
            v230[0] = swift_slowAlloc();
            *v110 = 136315394;
            sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
            v111 = sub_1000A3F28();
            v113 = sub_1000954AC(v111, v112, v230);

            *(v110 + 4) = v113;
            *(v110 + 12) = 2080;
            v114 = sub_1000A3F28();
            v116 = sub_1000954AC(v114, v115, v230);

            *(v110 + 14) = v116;
            _os_log_impl(&_mh_execute_header, v108, v109, "Corrected historical interval from %s to %s", v110, 0x16u);
            swift_arrayDestroy();

            (*(v211 + 8))(v224, v218);
          }

          else
          {
            v165 = *(v1 + 448);
            v166 = *(v1 + 456);
            v167 = *(v1 + 440);

            (*(v165 + 8))(v166, v167);
          }
        }
      }
    }

    else
    {
      v117 = *(v1 + 424);
      v118 = *(v1 + 432);
      v119 = *(v1 + 416);
      (*(v117 + 104))(v118, *(v1 + 1096), v119);
      sub_1000A2B68();
      (*(v117 + 8))(v118, v119);
      v120 = sub_1000A3518();
      v121 = sub_1000A3CB8();
      v122 = os_log_type_enabled(v120, v121);
      v123 = *(v1 + 464);
      v125 = *(v1 + 440);
      v124 = *(v1 + 448);
      if (v122)
      {
        v126 = swift_slowAlloc();
        *v126 = 0;
        _os_log_impl(&_mh_execute_header, v120, v121, "Skip interval", v126, 2u);
      }

      (*(v124 + 8))(v123, v125);
    }

    v127 = *(v1 + 896);
    v128 = *(v1 + 720);
    v129 = *(v1 + 680);
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    v130 = sub_1000A3A48();
    v127(v128, v129);
    v131 = *(v1 + 784);
    if ((v130 & 1) == 0)
    {
      break;
    }

    v132 = *(v1 + 856);
    v133 = *(v1 + 808);
    (*(v1 + 896))(*(v1 + 696), *(v1 + 680));
    v132(v133, v131);
LABEL_44:
    v134 = *(v1 + 1016);
    v135 = *(v1 + 824);
    v136 = *(v1 + 648);
    v137 = *(v1 + 408);
    v138 = swift_task_alloc();
    v138[2] = v137;
    v138[3] = v135;
    v138[4] = v227;
    v138[5] = v1 + 392;
    v138[6] = v136;
    sub_1000A3D58();
    if (v134)
    {

      swift_errorRetain();
      v139 = sub_1000A3518();
      v140 = sub_1000A3CC8();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *v141 = 138412290;
        swift_errorRetain();
        v143 = _swift_stdlib_bridgeErrorToNSError();
        *(v141 + 4) = v143;
        *v142 = v143;
        _os_log_impl(&_mh_execute_header, v139, v140, "[AMIQueryEngine] Error fetching energy interval blocks: %@", v141, 0xCu);
        sub_100022154(v142, &unk_1000C7740, &qword_1000AB610);
      }

      else
      {
      }
    }

    else
    {
    }

    v207 = *(v1 + 920);
    v212 = *(v1 + 896);
    v144 = *(v1 + 872);
    v145 = *(v1 + 824);
    v146 = *(v1 + 800);
    v147 = *(v1 + 792);
    v219 = *(v1 + 784);
    v148 = *(v1 + 720);
    v149 = *(v1 + 680);
    v150 = *(v1 + 408);
    v151 = *(v1 + 1100);
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    sub_10004C5C8(v148, v150 + v207, v150 + v144, v151, v146);
    v212(v148, v149);
    (*(v147 + 40))(v145, v146, v219);
    v152 = sub_1000A3518();
    v153 = sub_1000A3CA8();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v230[0] = v155;
      *v154 = 136315138;
      sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v156 = sub_1000A3F28();
      v158 = sub_1000954AC(v156, v157, v230);

      *(v154 + 4) = v158;
      _os_log_impl(&_mh_execute_header, v152, v153, "[AMIQueryEngine] Next rack: %s", v154, 0xCu);
      sub_10000F7B8(v155);
    }

    v159 = *(v1 + 896);
    v160 = *(v1 + 720);
    v161 = *(v1 + 704);
    v162 = *(v1 + 688);
    v163 = *(v1 + 680);
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    v159(v161, v163);
    (*(v162 + 32))(v161, v160, v163);
    sub_1000A2248();
    v164 = sub_1000A2438();
    v54 = (v159)(v160, v163);
    v58 = *(v1 + 1032);
    v57 = *(v1 + 1024);
    if ((v164 & 1) == 0)
    {
      goto LABEL_55;
    }

    v59 = *v227;
    v60 = *(*v227 + 16);
    if (v60)
    {
      goto LABEL_17;
    }
  }

  (*(v1 + 936))(*(v1 + 800), *(v1 + 808), *(v1 + 784));
  v193 = swift_task_alloc();
  *(v1 + 1040) = v193;
  *v193 = v1;
  v193[1] = sub_1000454DC;
  v194 = *(v1 + 800);

  return sub_10005409C(v79, v78, v194);
}

uint64_t sub_100043FD0()
{
  v1 = v0[124];
  v2 = v0[67];
  v3 = v0[63];
  v4 = v0[64];
  v5 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  swift_beginAccess();
  sub_100047188(v1 + v5, v2, &qword_1000C7D58, &qword_1000ABB20);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v6 = v0[67];

    sub_100022154(v6, &qword_1000C7D58, &qword_1000ABB20);
    v7 = 1;
  }

  else
  {
    v8 = v0[126];
    v9 = v0[67];
    v10 = v0[65];
    v11 = v0[63];
    v12 = v0[64];
    (*(v12 + 16))(v10, v9, v11);
    sub_100022154(v9, &qword_1000C7D58, &qword_1000ABB20);
    v0[50] = v8;
    sub_1000A3BF8();
    (*(v12 + 8))(v10, v11);
    v7 = 0;
  }

  v13 = v0[69];
  v14 = v0[51];
  v15 = sub_10000275C(&qword_1000C7EC8, &qword_1000ABD50);
  (*(*(v15 - 8) + 56))(v13, v7, 1, v15);
  sub_100022154(v13, &qword_1000C7EB8, &qword_1000ABD48);

  return _swift_task_switch(sub_1000441BC, v14, 0);
}

uint64_t sub_1000441BC()
{
  v175 = v0;
  v159 = v0 + 47;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[47];
  if (isUniquelyReferenced_nonNull_native)
  {
    v3 = v2[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10009501C(0, v3, 1, v2);
    }

    v4 = *(v0[71] + 80);
    v5 = v2 + ((v4 + 32) & ~v4);
    swift_arrayDestroy();
    if (v3)
    {
      v6 = *(v0[71] + 72);
      if (v6 * v3 > 0 || v5 >= &v5[v6 * v3 + (v2[2] - v3) * v6])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v6)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v2[2] -= v3;
    }

    goto LABEL_22;
  }

  if (v2[3] > 1uLL)
  {
    v8 = v0[71];
    sub_10000275C(&qword_1000C7ED0, &unk_1000ABD58);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    if (v9)
    {
      if (v12 - v10 != 0x8000000000000000 || v9 != -1)
      {
        v11[2] = 0;
        v11[3] = 2 * ((v12 - v10) / v9);

        v2 = v11;
        goto LABEL_22;
      }
    }

    else
    {
LABEL_88:
      __break(1u);
    }

    __break(1u);
    return _swift_task_switch(v12, v13, v14);
  }

  v2 = &_swiftEmptyArrayStorage;
LABEL_22:
  v158 = v0 + 49;
  v0[47] = v2;
  swift_endAccess();
  v16 = v0[125];
  v17 = v0[123];
  v18 = v17;
  while (1)
  {
    v0[129] = v18;
    v0[128] = v17;
    v0[127] = v16;
    v19 = v0[51];
    v20 = (v19 + v0[120]);
    v0[49] = &_swiftEmptyArrayStorage;
    v21 = v20[1];
    if (!v21)
    {
      goto LABEL_37;
    }

    v22 = *v20;
    v24 = v0[61];
    v23 = v0[62];
    v26 = v0[59];
    v25 = v0[60];
    (*(v25 + 16))(v23, v19 + v0[121], v26);
    sub_1000A3908();
    sub_1000471F0(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options);
    v27 = sub_1000A3DF8();
    v28 = *(v25 + 8);
    v28(v24, v26);
    v28(v23, v26);
    if ((v27 & 1) == 0)
    {
      goto LABEL_37;
    }

    v29 = v0[86];
    v30 = v0[85];
    v31 = v0[81];
    v32 = v0[80];
    (v0[117])(v0[101], v0[103], v0[98]);
    sub_100047188(v31, v32, &qword_1000C7F58, &qword_1000AC770);
    v33 = (*(v29 + 48))(v32, 1, v30);
    v34 = v0[101];
    if (v33 == 1)
    {
      v35 = v0[107];
      v36 = v0[98];
      sub_100022154(v0[80], &qword_1000C7F58, &qword_1000AC770);
      v35(v34, v36);
      goto LABEL_37;
    }

    v37 = v0[112];
    v38 = v0[90];
    v39 = v0[85];
    (*(v0[86] + 32))(v0[87], v0[80], v39);
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    sub_1000471F0(&qword_1000C7F50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v40 = sub_1000A3A48();
    v37(v38, v39);
    if (v40)
    {
      v41 = v0[112];
      v42 = v0[90];
      v43 = v0[85];
      swift_beginAccess();
      sub_1000A2288();
      swift_endAccess();
      v44 = sub_1000A2438();
      v41(v42, v43);
      if (v44)
      {
        v45 = v0[112];
        v46 = v0[90];
        v47 = v0[85];
        swift_beginAccess();
        sub_1000A2248();
        swift_endAccess();
        v48 = sub_1000A3A48();
        v45(v46, v47);
        if ((v48 & 1) == 0)
        {
          v171 = *(v0 + 274);
          v49 = v0[53];
          v50 = v0[54];
          v164 = v0[52];
          (v0[110])(v0[90], v0[87], v0[85]);
          swift_beginAccess();
          sub_1000A2298();
          swift_endAccess();
          swift_beginAccess();
          sub_1000A2248();
          swift_endAccess();
          swift_beginAccess();
          sub_1000A2258();
          swift_endAccess();
          (*(v49 + 104))(v50, v171, v164);
          sub_1000A2B68();
          (*(v49 + 8))(v50, v164);
          v51 = sub_1000A3518();
          v52 = sub_1000A3CA8();
          if (os_log_type_enabled(v51, v52))
          {
            v172 = v0[57];
            v161 = v0[56];
            v167 = v0[55];
            v53 = swift_slowAlloc();
            v174[0] = swift_slowAlloc();
            *v53 = 136315394;
            sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
            v54 = sub_1000A3F28();
            v56 = sub_1000954AC(v54, v55, v174);

            *(v53 + 4) = v56;
            *(v53 + 12) = 2080;
            v57 = sub_1000A3F28();
            v59 = sub_1000954AC(v57, v58, v174);

            *(v53 + 14) = v59;
            _os_log_impl(&_mh_execute_header, v51, v52, "Corrected historical interval from %s to %s", v53, 0x16u);
            swift_arrayDestroy();

            (*(v161 + 8))(v172, v167);
          }

          else
          {
            v112 = v0[56];
            v113 = v0[57];
            v114 = v0[55];

            (*(v112 + 8))(v113, v114);
          }
        }
      }
    }

    else
    {
      v60 = v0[53];
      v61 = v0[54];
      v62 = v0[52];
      (*(v60 + 104))(v61, *(v0 + 274), v62);
      sub_1000A2B68();
      (*(v60 + 8))(v61, v62);
      v63 = sub_1000A3518();
      v64 = sub_1000A3CB8();
      v65 = os_log_type_enabled(v63, v64);
      v66 = v0[58];
      v68 = v0[55];
      v67 = v0[56];
      if (v65)
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "Skip interval", v69, 2u);
      }

      (*(v67 + 8))(v66, v68);
    }

    v70 = v0[112];
    v71 = v0[90];
    v72 = v0[85];
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    v73 = sub_1000A3A48();
    v70(v71, v72);
    v74 = v0[98];
    if ((v73 & 1) == 0)
    {
      break;
    }

    v75 = v0[107];
    v76 = v0[101];
    (v0[112])(v0[87], v0[85]);
    v75(v76, v74);
LABEL_37:
    v77 = v0[127];
    v78 = v0[103];
    v79 = v0[81];
    v80 = v0[51];
    v81 = swift_task_alloc();
    v81[2] = v80;
    v81[3] = v78;
    v81[4] = v159;
    v81[5] = v158;
    v81[6] = v79;
    sub_1000A3D58();
    if (v77)
    {

      swift_errorRetain();
      v82 = sub_1000A3518();
      v83 = sub_1000A3CC8();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v84 = 138412290;
        swift_errorRetain();
        v86 = _swift_stdlib_bridgeErrorToNSError();
        *(v84 + 4) = v86;
        *v85 = v86;
        _os_log_impl(&_mh_execute_header, v82, v83, "[AMIQueryEngine] Error fetching energy interval blocks: %@", v84, 0xCu);
        sub_100022154(v85, &unk_1000C7740, &qword_1000AB610);
      }

      else
      {
      }
    }

    else
    {
    }

    v160 = v0[115];
    v162 = v0[112];
    v87 = v0[109];
    v88 = v0[103];
    v89 = v0[100];
    v90 = v0[99];
    v168 = v0[98];
    v91 = v0[90];
    v92 = v0[85];
    v93 = v0;
    v94 = v0[51];
    v95 = *(v93 + 1100);
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    sub_10004C5C8(v91, v94 + v160, v94 + v87, v95, v89);
    v162(v91, v92);
    (*(v90 + 40))(v88, v89, v168);
    v96 = sub_1000A3518();
    v97 = sub_1000A3CA8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v174[0] = v99;
      *v98 = 136315138;
      sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v100 = sub_1000A3F28();
      v102 = sub_1000954AC(v100, v101, v174);

      *(v98 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v96, v97, "[AMIQueryEngine] Next rack: %s", v98, 0xCu);
      sub_10000F7B8(v99);
    }

    v103 = v93;
    v104 = v93[112];
    v105 = v93[90];
    v106 = v103[88];
    v107 = v103[86];
    v108 = v103[85];
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    v104(v106, v108);
    (*(v107 + 32))(v106, v105, v108);
    v0 = v103;
    sub_1000A2248();
    v109 = sub_1000A2438();
    v12 = (v104)(v105, v108);
    v18 = v103[129];
    v17 = v103[128];
    v110 = v103[47];
    if ((v109 & 1) == 0)
    {
      v103[132] = v110;
      v115 = *(v110 + 16);
      if (!v115)
      {
        v149 = sub_1000A3518();
        v150 = sub_1000A3CA8();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          *v151 = 134217984;
          *(v151 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v149, v150, "[AMIQueryEngine] Total Yielded %ld", v151, 0xCu);
        }

        v152 = v103[119];
        v153 = v103[51];

        v13 = *(v153 + v152);
        v103[136] = v13;
        v154 = sub_100046B08;
        goto LABEL_80;
      }

      v103[133] = v18 + v115;
      if (!__OFADD__(v18, v115))
      {
        v116 = sub_1000A3518();
        v117 = sub_1000A3CA8();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 134217984;
          *(v118 + 4) = *(v110 + 16);
          _os_log_impl(&_mh_execute_header, v116, v117, "[AMIQueryEngine] Yield %ld", v118, 0xCu);
        }

        v119 = v103[119];
        v120 = v103[51];

        v13 = *(v120 + v119);
        v121 = v103;
        v103[134] = v13;
        v122 = *(v110 + 16);
        if (v122)
        {
          v123 = v103[71];
          v124 = *(v123 + 16);
          v123 += 16;
          v169 = v124;
          v125 = v110 + ((*(v123 + 64) + 32) & ~*(v123 + 64));
          v163 = v13;
          v165 = *(v123 + 56);
          v126 = (v123 - 8);

          v127 = &_swiftEmptyArrayStorage;
          do
          {
            v169(v121[72], v125, v121[70]);
            sub_1000471F0(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload, &protocol conformance descriptor for InsightRecordPayload);
            v128 = sub_1000A3458();
            v130 = v129;
            (*v126)(v121[72], v121[70]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v127 = sub_100095044(0, *(v127 + 2) + 1, 1, v127);
            }

            v132 = *(v127 + 2);
            v131 = *(v127 + 3);
            if (v132 >= v131 >> 1)
            {
              v127 = sub_100095044((v131 > 1), v132 + 1, 1, v127);
            }

            *(v127 + 2) = v132 + 1;
            v133 = &v127[16 * v132];
            *(v133 + 4) = v128;
            *(v133 + 5) = v130;
            v125 += v165;
            --v122;
          }

          while (v122);

          v13 = v163;
        }

        else
        {
          v127 = &_swiftEmptyArrayStorage;
        }

        v121[135] = v127;
        v154 = sub_100046828;
        goto LABEL_80;
      }

LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v16 = 0;
    v111 = *(v110 + 16);
    if (v111)
    {
      v103[123] = v18 + v111;
      if (!__OFADD__(v18, v111))
      {
        v134 = sub_1000A3518();
        v135 = sub_1000A3CA8();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          *v136 = 134217984;
          *(v136 + 4) = *(v110 + 16);
          _os_log_impl(&_mh_execute_header, v134, v135, "[AMIQueryEngine] Yield %ld", v136, 0xCu);
        }

        v137 = v103[119];
        v138 = v103[51];

        v13 = *(v138 + v137);
        v103[124] = v13;
        v139 = *(v110 + 16);
        if (v139)
        {
          v166 = v13;
          v140 = v103[71];
          v141 = v110 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
          v173 = *(v140 + 72);
          v170 = *(v140 + 16);

          v142 = &_swiftEmptyArrayStorage;
          do
          {
            v170(v0[73], v141, v0[70]);
            sub_1000471F0(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload, &protocol conformance descriptor for InsightRecordPayload);
            v143 = sub_1000A3458();
            v145 = v144;
            (*(v0[71] + 8))(v0[73], v0[70]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v142 = sub_100095044(0, *(v142 + 2) + 1, 1, v142);
            }

            v147 = *(v142 + 2);
            v146 = *(v142 + 3);
            if (v147 >= v146 >> 1)
            {
              v142 = sub_100095044((v146 > 1), v147 + 1, 1, v142);
            }

            *(v142 + 2) = v147 + 1;
            v148 = &v142[16 * v147];
            *(v148 + 4) = v143;
            *(v148 + 5) = v145;
            v141 += v173;
            --v139;
          }

          while (v139);

          v13 = v166;
        }

        else
        {
          v142 = &_swiftEmptyArrayStorage;
        }

        v0[126] = v142;
        v0[125] = 0;
        v154 = sub_100043FD0;
LABEL_80:
        v12 = v154;
        v14 = 0;

        return _swift_task_switch(v12, v13, v14);
      }

      __break(1u);
      goto LABEL_87;
    }
  }

  (v0[117])(v0[100], v0[101], v0[98]);
  v155 = swift_task_alloc();
  v0[130] = v155;
  *v155 = v0;
  v155[1] = sub_1000454DC;
  v156 = v0[100];

  return sub_10005409C(v22, v21, v156);
}

uint64_t sub_1000454DC(uint64_t a1)
{
  v2 = *(*v1 + 856);
  v3 = *(*v1 + 800);
  v4 = *(*v1 + 784);
  v5 = *(*v1 + 408);
  *(*v1 + 1048) = a1;

  v2(v3, v4);

  return _swift_task_switch(sub_100045660, v5, 0);
}

uint64_t sub_100045660()
{
  v167 = v0;
  v1 = *(v0 + 1048);
  v163 = (v0 + 376);
  v150 = v0 + 392;
  v2 = *(v0 + 856);
  v3 = *(v0 + 808);
  v4 = *(v0 + 784);
  (*(v0 + 896))(*(v0 + 696), *(v0 + 680));
  v2(v3, v4);
  *(v0 + 392) = v1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v7 = *(v0 + 1016);
        v8 = *(v0 + 824);
        v9 = *(v0 + 648);
        v10 = *(v0 + 408);
        v11 = swift_task_alloc();
        v11[2] = v10;
        v11[3] = v8;
        v11[4] = v163;
        v11[5] = v150;
        v11[6] = v9;
        sub_1000A3D58();
        if (v7)
        {

          swift_errorRetain();
          v12 = sub_1000A3518();
          v13 = sub_1000A3CC8();

          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            *v14 = 138412290;
            swift_errorRetain();
            v16 = _swift_stdlib_bridgeErrorToNSError();
            *(v14 + 4) = v16;
            *v15 = v16;
            _os_log_impl(&_mh_execute_header, v12, v13, "[AMIQueryEngine] Error fetching energy interval blocks: %@", v14, 0xCu);
            sub_100022154(v15, &unk_1000C7740, &qword_1000AB610);
          }

          else
          {
          }
        }

        else
        {
        }

        v151 = *(v0 + 920);
        v152 = *(v0 + 896);
        v17 = *(v0 + 872);
        v18 = *(v0 + 824);
        v19 = *(v0 + 800);
        v20 = *(v0 + 792);
        v156 = *(v0 + 784);
        v21 = *(v0 + 720);
        v22 = *(v0 + 680);
        v23 = v0;
        v24 = *(v0 + 408);
        v25 = *(v23 + 1100);
        swift_beginAccess();
        sub_1000A2248();
        swift_endAccess();
        sub_10004C5C8(v21, v24 + v151, v24 + v17, v25, v19);
        v152(v21, v22);
        (*(v20 + 40))(v18, v19, v156);
        v26 = sub_1000A3518();
        v27 = sub_1000A3CA8();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v166[0] = v29;
          *v28 = 136315138;
          sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
          v30 = sub_1000A3F28();
          v32 = sub_1000954AC(v30, v31, v166);

          *(v28 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v26, v27, "[AMIQueryEngine] Next rack: %s", v28, 0xCu);
          sub_10000F7B8(v29);
        }

        v33 = v23;
        v34 = *(v23 + 896);
        v35 = *(v23 + 720);
        v36 = *(v23 + 704);
        v37 = *(v23 + 688);
        v38 = *(v23 + 680);
        swift_beginAccess();
        sub_1000A2288();
        swift_endAccess();
        v34(v36, v38);
        (*(v37 + 32))(v36, v35, v38);
        sub_1000A2248();
        v39 = sub_1000A2438();
        v40 = (v34)(v35, v38);
        v0 = v23;
        v43 = *(v23 + 1032);
        if ((v39 & 1) == 0)
        {
          v105 = *(v23 + 1024);
          v106 = *(v23 + 376);
          *(v23 + 1056) = v106;
          v107 = *(v106 + 16);
          if (!v107)
          {
            v141 = sub_1000A3518();
            v142 = sub_1000A3CA8();
            if (os_log_type_enabled(v141, v142))
            {
              v143 = swift_slowAlloc();
              *v143 = 134217984;
              *(v143 + 4) = v105;
              _os_log_impl(&_mh_execute_header, v141, v142, "[AMIQueryEngine] Total Yielded %ld", v143, 0xCu);
            }

            v144 = *(v33 + 952);
            v145 = *(v33 + 408);

            v41 = *(v145 + v144);
            *(v33 + 1088) = v41;
            v146 = sub_100046B08;
            goto LABEL_58;
          }

          *(v23 + 1064) = v43 + v107;
          if (!__OFADD__(v43, v107))
          {
            v108 = sub_1000A3518();
            v109 = sub_1000A3CA8();
            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              *v110 = 134217984;
              *(v110 + 4) = *(v106 + 16);
              _os_log_impl(&_mh_execute_header, v108, v109, "[AMIQueryEngine] Yield %ld", v110, 0xCu);
            }

            v111 = *(v23 + 952);
            v112 = *(v23 + 408);

            v41 = *(v112 + v111);
            v113 = v33;
            *(v33 + 1072) = v41;
            v114 = *(v106 + 16);
            if (v114)
            {
              v155 = v41;
              v115 = *(v33 + 568);
              v117 = *(v115 + 16);
              v116 = v115 + 16;
              v164 = v117;
              v118 = v106 + ((*(v116 + 64) + 32) & ~*(v116 + 64));
              v161 = *(v116 + 56);

              v119 = &_swiftEmptyArrayStorage;
              do
              {
                v164(v113[72], v118, v113[70]);
                sub_1000471F0(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload, &protocol conformance descriptor for InsightRecordPayload);
                v120 = sub_1000A3458();
                v122 = v121;
                (*(v116 - 8))(v113[72], v113[70]);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v119 = sub_100095044(0, *(v119 + 2) + 1, 1, v119);
                }

                v124 = *(v119 + 2);
                v123 = *(v119 + 3);
                if (v124 >= v123 >> 1)
                {
                  v119 = sub_100095044((v123 > 1), v124 + 1, 1, v119);
                }

                *(v119 + 2) = v124 + 1;
                v125 = &v119[16 * v124];
                *(v125 + 4) = v120;
                *(v125 + 5) = v122;
                v118 += v161;
                --v114;
              }

              while (v114);

              v41 = v155;
            }

            else
            {
              v119 = &_swiftEmptyArrayStorage;
            }

            v113[135] = v119;
            v146 = sub_100046828;
            goto LABEL_58;
          }

LABEL_65:
          __break(1u);
          return _swift_task_switch(v40, v41, v42);
        }

        v44 = *v163;
        v45 = *(*v163 + 16);
        if (v45)
        {
          *(v23 + 984) = v43 + v45;
          if (!__OFADD__(v43, v45))
          {
            v126 = sub_1000A3518();
            v127 = sub_1000A3CA8();
            if (os_log_type_enabled(v126, v127))
            {
              v128 = swift_slowAlloc();
              *v128 = 134217984;
              *(v128 + 4) = *(v44 + 16);
              _os_log_impl(&_mh_execute_header, v126, v127, "[AMIQueryEngine] Yield %ld", v128, 0xCu);
            }

            v129 = *(v33 + 952);
            v130 = *(v33 + 408);

            v41 = *(v130 + v129);
            *(v33 + 992) = v41;
            v131 = *(v44 + 16);
            if (v131)
            {
              v158 = v41;
              v132 = *(v33 + 568);
              v133 = v44 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
              v165 = *(v132 + 72);
              v162 = *(v132 + 16);

              v134 = &_swiftEmptyArrayStorage;
              do
              {
                v162(*(v0 + 584), v133, *(v0 + 560));
                sub_1000471F0(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload, &protocol conformance descriptor for InsightRecordPayload);
                v135 = sub_1000A3458();
                v137 = v136;
                (*(*(v0 + 568) + 8))(*(v0 + 584), *(v0 + 560));
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v134 = sub_100095044(0, *(v134 + 2) + 1, 1, v134);
                }

                v139 = *(v134 + 2);
                v138 = *(v134 + 3);
                if (v139 >= v138 >> 1)
                {
                  v134 = sub_100095044((v138 > 1), v139 + 1, 1, v134);
                }

                *(v134 + 2) = v139 + 1;
                v140 = &v134[16 * v139];
                *(v140 + 4) = v135;
                *(v140 + 5) = v137;
                v133 += v165;
                --v131;
              }

              while (v131);

              v41 = v158;
            }

            else
            {
              v134 = &_swiftEmptyArrayStorage;
            }

            *(v0 + 1008) = v134;
            *(v0 + 1000) = 0;
            v146 = sub_100043FD0;
LABEL_58:
            v40 = v146;
            v42 = 0;

            return _swift_task_switch(v40, v41, v42);
          }

          __break(1u);
          goto LABEL_65;
        }

        *(v23 + 1016) = 0;
        v46 = *(v23 + 408);
        v47 = (v46 + *(v23 + 960));
        *(v23 + 392) = &_swiftEmptyArrayStorage;
        v48 = v47[1];
        if (v48)
        {
          v49 = *v47;
          v50 = *(v23 + 488);
          v51 = *(v33 + 496);
          v53 = *(v33 + 472);
          v52 = *(v33 + 480);
          (*(v52 + 16))(v51, v46 + *(v33 + 968), v53);
          sub_1000A3908();
          sub_1000471F0(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options, &protocol conformance descriptor for ElectricityInsightQuery.Options);
          v54 = sub_1000A3DF8();
          v55 = *(v52 + 8);
          v55(v50, v53);
          v55(v51, v53);
          if (v54)
          {
            break;
          }
        }
      }

      v56 = *(v33 + 688);
      v57 = *(v33 + 680);
      v58 = *(v33 + 648);
      v59 = *(v33 + 640);
      (*(v33 + 936))(*(v33 + 808), *(v33 + 824), *(v33 + 784));
      sub_100047188(v58, v59, &qword_1000C7F58, &qword_1000AC770);
      v60 = (*(v56 + 48))(v59, 1, v57);
      v61 = *(v33 + 808);
      if (v60 != 1)
      {
        break;
      }

      v5 = *(v33 + 856);
      v6 = *(v33 + 784);
      sub_100022154(*(v33 + 640), &qword_1000C7F58, &qword_1000AC770);
      v5(v61, v6);
    }

    v62 = *(v33 + 896);
    v63 = *(v0 + 720);
    v64 = *(v0 + 680);
    (*(*(v0 + 688) + 32))(*(v0 + 696), *(v0 + 640), v64);
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    sub_1000471F0(&qword_1000C7F50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v65 = sub_1000A3A48();
    v62(v63, v64);
    if (v65)
    {
      v66 = *(v0 + 896);
      v67 = *(v0 + 720);
      v68 = *(v0 + 680);
      swift_beginAccess();
      sub_1000A2288();
      swift_endAccess();
      v69 = sub_1000A2438();
      v66(v67, v68);
      if (v69)
      {
        v70 = *(v0 + 896);
        v71 = *(v0 + 720);
        v72 = *(v0 + 680);
        swift_beginAccess();
        sub_1000A2248();
        swift_endAccess();
        v73 = sub_1000A3A48();
        v70(v71, v72);
        if ((v73 & 1) == 0)
        {
          v159 = *(v0 + 1096);
          v75 = *(v0 + 424);
          v74 = *(v0 + 432);
          v153 = *(v0 + 416);
          (*(v0 + 880))(*(v0 + 720), *(v0 + 696), *(v0 + 680));
          swift_beginAccess();
          sub_1000A2298();
          swift_endAccess();
          swift_beginAccess();
          sub_1000A2248();
          swift_endAccess();
          swift_beginAccess();
          sub_1000A2258();
          swift_endAccess();
          (*(v75 + 104))(v74, v159, v153);
          sub_1000A2B68();
          (*(v75 + 8))(v74, v153);
          v76 = sub_1000A3518();
          v77 = sub_1000A3CA8();
          if (os_log_type_enabled(v76, v77))
          {
            v154 = *(v0 + 448);
            v157 = *(v0 + 440);
            v160 = *(v0 + 456);
            v78 = swift_slowAlloc();
            v166[0] = swift_slowAlloc();
            *v78 = 136315394;
            sub_1000471F0(&qword_1000C7ED8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
            v79 = sub_1000A3F28();
            v81 = sub_1000954AC(v79, v80, v166);

            *(v78 + 4) = v81;
            *(v78 + 12) = 2080;
            v82 = sub_1000A3F28();
            v84 = sub_1000954AC(v82, v83, v166);

            *(v78 + 14) = v84;
            _os_log_impl(&_mh_execute_header, v76, v77, "Corrected historical interval from %s to %s", v78, 0x16u);
            swift_arrayDestroy();

            (*(v154 + 8))(v160, v157);
          }

          else
          {
            v103 = *(v0 + 448);
            v102 = *(v0 + 456);
            v104 = *(v0 + 440);

            (*(v103 + 8))(v102, v104);
          }
        }
      }
    }

    else
    {
      v86 = *(v0 + 424);
      v85 = *(v0 + 432);
      v87 = *(v0 + 416);
      (*(v86 + 104))(v85, *(v0 + 1096), v87);
      sub_1000A2B68();
      (*(v86 + 8))(v85, v87);
      v88 = sub_1000A3518();
      v89 = sub_1000A3CB8();
      v90 = os_log_type_enabled(v88, v89);
      v91 = *(v0 + 464);
      v93 = *(v0 + 440);
      v92 = *(v0 + 448);
      if (v90)
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v88, v89, "Skip interval", v94, 2u);
      }

      (*(v92 + 8))(v91, v93);
    }

    v95 = *(v0 + 896);
    v96 = *(v0 + 720);
    v97 = *(v0 + 680);
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    v98 = sub_1000A3A48();
    v95(v96, v97);
    v99 = *(v0 + 784);
    if ((v98 & 1) == 0)
    {
      break;
    }

    v100 = *(v0 + 856);
    v101 = *(v0 + 808);
    (*(v0 + 896))(*(v0 + 696), *(v0 + 680));
    v100(v101, v99);
  }

  (*(v0 + 936))(*(v0 + 800), *(v0 + 808), *(v0 + 784));
  v147 = swift_task_alloc();
  *(v0 + 1040) = v147;
  *v147 = v0;
  v147[1] = sub_1000454DC;
  v148 = *(v0 + 800);

  return sub_10005409C(v49, v48, v148);
}

uint64_t sub_100046828()
{
  v1 = v0[134];
  v2 = v0[66];
  v3 = v0[63];
  v4 = v0[64];
  v5 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  swift_beginAccess();
  sub_100047188(v1 + v5, v2, &qword_1000C7D58, &qword_1000ABB20);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v6 = v0[66];

    sub_100022154(v6, &qword_1000C7D58, &qword_1000ABB20);
    v7 = 1;
  }

  else
  {
    v8 = v0[135];
    v9 = v0[66];
    v10 = v0[65];
    v11 = v0[63];
    v12 = v0[64];
    (*(v12 + 16))(v10, v9, v11);
    sub_100022154(v9, &qword_1000C7D58, &qword_1000ABB20);
    v0[48] = v8;
    sub_1000A3BF8();
    (*(v12 + 8))(v10, v11);
    v7 = 0;
  }

  v13 = v0[68];
  v14 = v0[51];
  v15 = sub_10000275C(&qword_1000C7EC8, &qword_1000ABD50);
  (*(*(v15 - 8) + 56))(v13, v7, 1, v15);
  sub_100022154(v13, &qword_1000C7EB8, &qword_1000ABD48);

  return _swift_task_switch(sub_100046A14, v14, 0);
}

uint64_t sub_100046A14(uint64_t a1)
{
  v2 = v1[133];
  v3 = sub_1000A3518();
  v4 = sub_1000A3CA8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[AMIQueryEngine] Total Yielded %ld", v5, 0xCu);
  }

  v6 = v1[119];
  v7 = v1[51];

  v8 = *(v7 + v6);
  v1[136] = v8;

  return _swift_task_switch(sub_100046B08, v8, 0);
}

uint64_t sub_100046B08()
{
  v1 = *(v0 + 408);
  sub_10001833C();

  return _swift_task_switch(sub_100046B74, v1, 0);
}

uint64_t sub_100046B74()
{
  v1 = v0[112];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[103];
  v5 = v0[98];
  v6 = v0[88];
  v7 = v0[85];
  v8 = v0[81];
  [*(v0[51] + v0[122]) reset];
  v1(v6, v7);
  v2(v3, v5);
  sub_100022154(v8, &qword_1000C7F58, &qword_1000AC770);
  v2(v4, v5);

  v9 = v0[1];

  return v9();
}

void sub_100046E58(uint64_t a1, uint64_t a2, unint64_t a3, char **a4, char *a5)
{
  v23 = a3;
  v24 = a5;
  v22 = a4;
  v20 = a1;
  v6 = sub_1000A2508();
  __chkstk_darwin(*(*(v6 - 8) + 64));
  v7 = sub_1000A22A8();
  v8 = *(v7 - 8);
  __chkstk_darwin(*(v8 + 64));
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v8 + 16);
  v11(v10, a2, v7);
  v21 = sub_100041928(v10);
  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  v11(v10, a2, v7);
  v19[1] = sub_1000A3888();
  sub_1000A3858();
  sub_1000A3838();
  sub_1000A3848();
  sub_1000A3898();
  sub_1000A38A8();
  sub_1000A3828();
  v12 = objc_allocWithZone(sub_1000A38B8());
  v13 = v21;
  v14 = v20;
  v15 = sub_1000A3878();
  v16 = v23;
  v17 = *v22;
  swift_beginAccess();

  v18 = v25;
  sub_100041C10(v13, v16, v15, v17, v24);
  swift_endAccess();
  if (v18)
  {
  }

  else
  {

    *(v14 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalIDX) = 0;
    *(v14 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentThresholdIDX) = 0;
    *(v14 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalSubIDX) = 0;
    [*(v14 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_context) reset];
  }
}

uint64_t sub_100047188(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000275C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000471F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100047238()
{
  result = qword_1000C7EF0;
  if (!qword_1000C7EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C7EF0);
  }

  return result;
}

uint64_t sub_1000472A8(char a1)
{
  *(v1 + 80) = a1;
  v2 = sub_1000A2AD8();
  *(v1 + 40) = v2;
  *(v1 + 48) = *(v2 - 8);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100047374, 0, 0);
}

uint64_t sub_100047374()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 72) = qword_1000C95F0;

  return _swift_task_switch(sub_10004741C, v1, 0);
}

uint64_t sub_10004741C(uint64_t a1)
{
  if ((*(v1 + 80) & 1) != 0 || (sub_1000A2D18() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = sub_100001E38(v4, qword_1000C95F8);
  swift_beginAccess();
  (*(v5 + 16))(v3, v6, v4);
  sub_1000A2AA8();
  sub_100047878();
  LOBYTE(v6) = sub_1000A3DF8();
  v7 = *(v5 + 8);
  v7(v2, v4);
  v7(v3, v4);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
LABEL_7:
    v8 = *(*(v1 + 72) + 145);
  }

  v9 = *(v1 + 8);

  return v9(v8);
}

uint64_t sub_100047590(char a1)
{
  *(v1 + 80) = a1;
  v2 = sub_1000A2AD8();
  *(v1 + 40) = v2;
  *(v1 + 48) = *(v2 - 8);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_10004765C, 0, 0);
}

uint64_t sub_10004765C()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 72) = qword_1000C95F0;

  return _swift_task_switch(sub_100047704, v1, 0);
}

uint64_t sub_100047704(uint64_t a1)
{
  if ((*(v1 + 80) & 1) != 0 || (sub_1000A2D18() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = sub_100001E38(v4, qword_1000C95F8);
  swift_beginAccess();
  (*(v5 + 16))(v3, v6, v4);
  sub_1000A2AA8();
  sub_100047878();
  LOBYTE(v6) = sub_1000A3DF8();
  v7 = *(v5 + 8);
  v7(v2, v4);
  v7(v3, v4);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
LABEL_7:
    v8 = *(*(v1 + 72) + 146);
  }

  v9 = *(v1 + 8);

  return v9(v8);
}

unint64_t sub_100047878()
{
  result = qword_1000C7D78;
  if (!qword_1000C7D78)
  {
    sub_1000A2AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7D78);
  }

  return result;
}

id sub_1000478F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46[1] = a5;
  v47 = sub_1000A2498();
  v12 = *(v47 - 8);
  __chkstk_darwin(*(v12 + 64));
  v48 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v46 - v14;
  v16 = sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  v49 = "ervice23IntervalBlocksPredicate";
  v50 = v16;
  v46[0] = sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000ABC70;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_1000321D0();
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v18;
  *(v17 + 64) = v18;
  *(v17 + 72) = a3;
  *(v17 + 80) = a4;

  isa = sub_1000A3C88().super.super.isa;
  *(v17 + 136) = sub_100032224(0, &qword_1000C7F28, NSNumber_ptr);
  *(v17 + 144) = sub_100032180(&qword_1000C7F38, &qword_1000C7F28, NSNumber_ptr);
  *(v17 + 112) = isa;
  sub_1000A2248();
  v20 = sub_1000A2418().super.isa;
  v21 = *(v12 + 8);
  v22 = v15;
  v23 = v47;
  v21(v22, v47);
  v24 = sub_100032224(0, &qword_1000C7F18, NSDate_ptr);
  *(v17 + 176) = v24;
  v25 = sub_100032180(&qword_1000C7F20, &qword_1000C7F18, NSDate_ptr);
  *(v17 + 184) = v25;
  *(v17 + 152) = v20;
  v26 = v48;
  sub_1000A2288();
  v27 = v26;
  v28 = sub_1000A2418().super.isa;
  v21(v27, v23);
  *(v17 + 216) = v24;
  *(v17 + 224) = v25;
  *(v17 + 192) = v28;
  result = sub_1000A3C98();
  if (a7)
  {
    v30 = a7;
    if (*(a7 + 16))
    {
      v52 = &_swiftEmptyArrayStorage;
      v31 = result;

      v32 = v31;
      sub_1000A3B38();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000A3B88();
      }

      sub_1000A3B98();
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v33 = sub_1000A3538();
      sub_100001E38(v33, qword_1000C96B8);

      v34 = sub_1000A3518();
      v35 = sub_1000A3CD8();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v51 = v37;
        *v36 = 136315138;
        v38 = sub_1000A3B78();
        v40 = sub_1000954AC(v38, v39, &v51);

        *(v36 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v34, v35, "[IntervalBlocksPredicate] Excluding meters %s", v36, 0xCu);
        sub_10000F7B8(v37);
      }

      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1000AC0E0;
      *(v41 + 56) = sub_10000275C(&qword_1000C8738, &unk_1000AC180);
      *(v41 + 64) = sub_100047E60();
      *(v41 + 32) = v30;
      v42 = sub_1000A3C98();
      sub_1000A3B38();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000A3B88();
      }

      sub_1000A3B98();
      v43 = objc_allocWithZone(NSCompoundPredicate);
      v44 = sub_1000A3B48().super.isa;

      v45 = [v43 initWithType:1 subpredicates:v44];

      return v45;
    }
  }

  return result;
}

unint64_t sub_100047E60()
{
  result = qword_1000C8740;
  if (!qword_1000C8740)
  {
    sub_100018734(&qword_1000C8738, &unk_1000AC180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C8740);
  }

  return result;
}

uint64_t sub_100047EC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "validateTCCAccess";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "idanceForLocation";
      v4 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = "eksElectricityGuidanceForSite";
      v4 = 0xD000000000000016;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000021;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v3)
    {
      v5 = "eksSiteNearLocation";
    }

    else
    {
      v5 = "validateTCCAccess";
    }
  }

  if (a2 > 1u)
  {
    v2 = "idanceForLocation";
    v6 = "eksElectricityGuidanceForSite";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD00000000000001DLL;
    }

    else
    {
      v8 = 0xD000000000000016;
    }
  }

  else
  {
    v6 = "eksSiteNearLocation";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000021;
    }

    else
    {
      v8 = 0xD000000000000013;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000A3F48();
  }

  return v10 & 1;
}

unint64_t sub_100047FE8(unsigned __int8 a1)
{
  v1 = 0xD000000000000013;
  v2 = "validateTCCAccess";
  v3 = "idanceForLocation";
  v4 = 0xD00000000000001DLL;
  if (a1 != 2)
  {
    v4 = 0xD000000000000016;
    v3 = "eksElectricityGuidanceForSite";
  }

  if (a1)
  {
    v1 = 0xD000000000000021;
    v2 = "eksSiteNearLocation";
  }

  if (a1 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_100048B64(3, v5, v6 | 0x8000000000000000);

  v7 = sub_1000A3AB8();
  v9 = v8;

  v11._countAndFlagsBits = v7;
  v11._object = v9;
  sub_1000A3AE8(v11);

  return 0xD00000000000001BLL;
}

uint64_t sub_100048104()
{
  v1 = v0;
  v2 = sub_1000A2498();
  v3 = *(v2 - 8);
  __chkstk_darwin(*(v3 + 64));
  v5 = &v38[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A2488();
  sub_1000A2448();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = &swift_dynamicCast_ptr;
  v9 = [objc_allocWithZone(NSNumber) initWithDouble:v7 * 1000.0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39 = &_swiftEmptyDictionarySingleton;
  sub_10007BBC4(v9, 0x6D617473656D6974, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
  v11 = *(v1 + 24);
  v40 = *(v1 + 40);
  v12 = *(v1 + 88);
  v42 = *(v1 + 72);
  v43 = v12;
  v13 = *(v1 + 56);
  v14 = v39;
  v39 = v11;
  v41 = v13;
  v44 = *(v1 + 104);
  v15 = *(&v40 + 1);
  v16 = v13;
  v17 = *(&v13 + 1);
  v18 = v42;
  v19 = v12;
  if (*(&v11 + 1))
  {
    if (*(&v11 + 1) == 1)
    {
      return v14;
    }

    v37 = *(&v42 + 1);
    v20 = objc_allocWithZone(NSString);
    sub_100048CC8(&v39, v38);

    v21 = sub_1000A3A78();

    v22 = v20;
    v8 = &swift_dynamicCast_ptr;
    v23 = [v22 initWithString:v21];

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v14;
    sub_10007BBC4(v23, 0x746163696C707061, 0xED000044496E6F69, v24);
    v14 = v38[0];
  }

  else
  {
    v37 = *(&v42 + 1);
  }

  if (v15)
  {
    v25 = objc_allocWithZone(NSString);

    v26 = sub_1000A3A78();

    v27 = [v25 initWithString:v26];

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v14;
    sub_10007BBC4(v27, 0x65636E6164697567, 0xEA00000000004449, v28);
    v14 = v38[0];
  }

  if (v16 != 2)
  {
    v29 = [objc_allocWithZone(v8[217]) initWithBool:v16 & 1];
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v14;
    sub_10007BBC4(v29, 0x7275746552646964, 0xED0000657469536ELL, v30);
    v14 = v38[0];
  }

  if (v18)
  {
    sub_100048C60(&v39);
    if (v19)
    {
      return v14;
    }

    goto LABEL_13;
  }

  v31 = [objc_allocWithZone(v8[217]) initWithInteger:v17];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = v14;
  sub_10007BBC4(v31, 0x65636E6164697567, 0xEC00000065707954, v32);
  sub_100048C60(&v39);
  v14 = v38[0];
  if ((v19 & 1) == 0)
  {
LABEL_13:
    v33 = objc_allocWithZone(v8[217]);
    v34 = [v33 initWithInteger:v37];
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v14;
    sub_10007BBC4(v34, 0x65636E6164697567, 0xEF736E6F6974704FLL, v35);
    return v38[0];
  }

  return v14;
}

uint64_t sub_100048550()
{
  sub_100048D38(v0[3], v0[4], v0[5], v0[6]);

  return _swift_deallocClassInstance(v0, 105, 7);
}

__n128 sub_1000485D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000485F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100048650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EKSAnalyticsEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EKSAnalyticsEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_10004884C()
{
  sub_1000A3F88();
  sub_1000A3AC8();

  return sub_1000A3F98();
}

uint64_t sub_100048904(uint64_t a1)
{
  sub_1000A3AC8();
}

Swift::Int sub_1000489A8(uint64_t a1)
{
  sub_1000A3F88();
  sub_1000A3AC8();

  return sub_1000A3F98();
}

unint64_t sub_100048A5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100048C14(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100048A8C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = "validateTCCAccess";
  v4 = "idanceForLocation";
  v5 = 0xD00000000000001DLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = "eksElectricityGuidanceForSite";
  }

  if (*v1)
  {
    v2 = 0xD000000000000021;
    v3 = "eksSiteNearLocation";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_100048B10()
{
  result = qword_1000C8828;
  if (!qword_1000C8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C8828);
  }

  return result;
}

uint64_t sub_100048B64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_1000A3AD8();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t sub_100048C14(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BDDD0;
  v6._object = a2;
  v4 = sub_1000A3F18(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100048C60(uint64_t a1)
{
  v2 = sub_10000275C(&qword_1000C8830, &unk_1000AC300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100048CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C8830, &unk_1000AC300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100048D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void sub_100048D80(char **a3@<X8>)
{
  v40 = a3;
  v4 = sub_1000A3438();
  __chkstk_darwin(*(*(v4 - 8) + 64));
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000A2F68();
  v8 = *(v7 - 8);
  __chkstk_darwin(*(v8 + 64));
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v36 - v11;
  __chkstk_darwin(v13);
  v15 = v36 - v14;
  sub_100032224(0, &qword_1000C88E8, NSArray_ptr);
  v16 = sub_1000A3D78();
  if (v3)
  {
LABEL_2:
    v17 = v40;
    if (qword_1000C7570 == -1)
    {
LABEL_3:
      v18 = sub_1000A3538();
      sub_100001E38(v18, qword_1000C96B8);
      swift_errorRetain();
      v19 = sub_1000A3518();
      v20 = sub_1000A3CC8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        swift_errorRetain();
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v23;
        *v22 = v23;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to unarchive TariffProfile %@", v21, 0xCu);
        sub_10000343C(v22);
      }

      else
      {
      }

      v27 = &_swiftEmptyArrayStorage;
      goto LABEL_19;
    }

LABEL_26:
    swift_once();
    goto LABEL_3;
  }

  v39 = v15;
  if (!v16)
  {
    v27 = &_swiftEmptyArrayStorage;
    v17 = v40;
    goto LABEL_19;
  }

  v46 = 0;
  *&v43 = 0;
  v24 = v16;
  sub_1000A3B58();

  v17 = v43;
  if (!v43)
  {
    v27 = &_swiftEmptyArrayStorage;
    v17 = v40;
    goto LABEL_19;
  }

  v38 = *(v43 + 16);
  if (v38)
  {
    v37 = v12;
    v42 = v10;
    v25 = 0;
    v36[0] = v8;
    v41 = (v8 + 32);
    v26 = (v43 + 40);
    v27 = &_swiftEmptyArrayStorage;
    v36[1] = v6;
    while (v25 < v17[2])
    {
      v29 = *(v26 - 1);
      v28 = *v26;
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      sub_10004AABC(v29, v28);
      sub_1000A3428();
      sub_10004AB10();
      v30 = v37;
      v31 = v46;
      sub_1000A3448();
      v46 = v31;
      if (v31)
      {

        goto LABEL_2;
      }

      v32 = *v41;
      v33 = v39;
      (*v41)(v39, v30, v7);
      v32(v42, v33, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_100095178(0, *(v27 + 2) + 1, 1, v27);
      }

      v35 = *(v27 + 2);
      v34 = *(v27 + 3);
      if (v35 >= v34 >> 1)
      {
        v27 = sub_100095178((v34 > 1), v35 + 1, 1, v27);
      }

      ++v25;
      *(v27 + 2) = v35 + 1;
      v32(&v27[((*(v36[0] + 80) + 32) & ~*(v36[0] + 80)) + *(v36[0] + 72) * v35], v42, v7);
      v26 += 2;
      if (v38 == v25)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v27 = &_swiftEmptyArrayStorage;
LABEL_23:

  v17 = v40;
LABEL_19:
  *v17 = v27;
}

uint64_t sub_100049258(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000A2498();
  v3 = *(v2 - 8);
  __chkstk_darwin(*(v3 + 64));
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000A3408();
  v7 = *(v6 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A2F48();
  sub_1000A33E8();
  (*(v7 + 8))(v9, v6);
  v10 = sub_1000A2428();
  (*(v3 + 8))(v5, v2);
  return v10 & 1;
}

void *sub_1000493F0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = sub_1000A2F68();
  __chkstk_darwin(*(*(v38 - 8) + 64));
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v37 = &v27 - v10;
  v34 = *(a3 + 16);
  if (v34)
  {
    v11 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = &_swiftEmptyArrayStorage;
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v11 < *(a3 + 16))
    {
      v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v13 = *(v9 + 72);
      v14 = a3;
      v15 = a3 + v12 + v13 * v11;
      v16 = v9;
      v17 = a1;
      v18 = v37;
      (*(v9 + 16))(v37, v15, v38);
      v19 = v18;
      a1 = v17;
      v20 = v17(v19);
      if (v3)
      {
        (*v31)(v37, v38);
        v26 = v36;

        return v26;
      }

      if (v20)
      {
        v21 = *v32;
        (*v32)(v35, v37, v38);
        v22 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10004A298(0, v22[2] + 1, 1);
          v22 = v39;
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          sub_10004A298((v24 > 1), v25 + 1, 1);
          v22 = v39;
        }

        v22[2] = v25 + 1;
        v36 = v22;
        result = (v21)(v22 + v12 + v25 * v13, v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        result = (*v31)(v37, v38);
        a3 = v14;
      }

      ++v11;
      v9 = v16;
      if (v34 == v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = &_swiftEmptyArrayStorage;
LABEL_14:

    return v36;
  }

  return result;
}

void sub_1000496C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_autoreleasePoolPush();
  sub_100049770(a5, a1, a2, a3, a4, v5, v5, &v12);
  objc_autoreleasePoolPop(v11);
}

uint64_t sub_100049770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_10000275C(&qword_1000C88D8, &unk_1000AC370);
  result = sub_1000A3D58();
  if (v8)
  {
    *a8 = v8;
  }

  return result;
}

void sub_100049804(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v49 = a1;
  v50 = a3;
  v47 = a6;
  v9 = sub_1000A2498();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(*(v45 + 64));
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000A2F88();
  v11 = sub_1000A2F78();
  [v11 setResultType:0];
  v12 = objc_allocWithZone(NSSortDescriptor);
  v13 = sub_1000A3A78();
  v14 = [v12 initWithKey:v13 ascending:0];

  v15 = objc_allocWithZone(NSSortDescriptor);
  v16 = sub_1000A3A78();
  v17 = [v15 initWithKey:v16 ascending:0];

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000AC310;
  *(v18 + 32) = v14;
  *(v18 + 40) = v17;
  sub_100032224(0, &qword_1000C7EF0, NSSortDescriptor_ptr);
  v53 = v14;
  v19 = v17;
  isa = sub_1000A3B48().super.isa;

  [v11 setSortDescriptors:isa];

  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000AC010;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_1000321D0();
  v23 = v50;
  *(v21 + 32) = v49;
  *(v21 + 40) = a2;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  *(v21 + 64) = v22;
  *(v21 + 72) = v23;
  *(v21 + 80) = a4;

  v24 = sub_1000A3C98();
  [v11 setPredicate:v24];
  [v11 setFetchLimit:1];
  v25 = v52;
  v51 = a5;
  v26 = sub_1000A3D68();
  if (v25)
  {

    return;
  }

  v27 = v48;
  if (!(v26 >> 62))
  {
    v28 = v53;
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:
    v40 = v19;

    v37 = 0;
    v39 = 0;
LABEL_12:
    [v51 reset];

    v43 = v47;
    *v47 = v37;
    v43[1] = v39;
    return;
  }

  v41 = v26;
  v42 = sub_1000A3EC8();
  v26 = v41;
  v28 = v53;
  if (!v42)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v29 = sub_1000A3EA8();
LABEL_8:
    v30 = v29;

    v31 = [v30 tariffProfiles];
    v32 = sub_1000A23B8();
    v34 = v33;

    v35 = objc_autoreleasePoolPush();
    sub_100048D80(&v54);
    objc_autoreleasePoolPop(v35);
    sub_10003228C(v32, v34);
    v36 = v54;
    sub_1000A2478();
    v37 = sub_10004A5BC(v36, v27);
    v39 = v38;

    (*(v45 + 8))(v27, v46);
    v28 = v53;
    v40 = v19;
    goto LABEL_12;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v26 + 32);
    goto LABEL_8;
  }

  __break(1u);
  objc_autoreleasePoolPop(v28);
  __break(1u);
}

uint64_t sub_100049CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100049CD8, 0, 0);
}

uint64_t sub_100049CD8()
{
  if (qword_1000C7568 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C9648;
  *(v0 + 56) = qword_1000C9648;

  return _swift_task_switch(sub_100049D70, v1, 0);
}

uint64_t sub_100049D70()
{
  v1 = sub_10004060C();
  v2 = [v1 newBackgroundContext];
  *(v0 + 64) = v2;
  v3 = sub_1000A3A78();
  [v2 setTransactionAuthor:v3];

  [v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v2 setUndoManager:0];
  [v2 setShouldRefreshAfterSave:1];
  [v2 setStalenessInterval:0.0];
  [v2 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100049EAC, 0, 0);
}

uint64_t sub_100049EAC()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 64);
  sub_1000496C0(v4, v3, v2, v1, v5);
  v7 = v6;
  v9 = v8;
  *(v0 + 72) = 0;

  if (v9)
  {

    v10 = *(v0 + 8);

    return v10(v7, v9);
  }

  else
  {
    v12 = *(v0 + 56);

    return _swift_task_switch(sub_10004A008, v12, 0);
  }
}

uint64_t sub_10004A008()
{
  v1 = sub_10004060C();
  v2 = [v1 newBackgroundContext];
  *(v0 + 80) = v2;
  v3 = sub_1000A3A78();
  [v2 setTransactionAuthor:v3];

  [v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v2 setUndoManager:0];
  [v2 setShouldRefreshAfterSave:1];
  [v2 setStalenessInterval:0.0];
  [v2 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_10004A144, 0, 0);
}

uint64_t sub_10004A144()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);

  v7 = v2;
  sub_1000496C0(v6, v5, v4, v3, v7);
  v9 = v8;
  v11 = v10;

  if (v1)
  {
    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 8);

    return v14(v9, v11);
  }
}

void *sub_10004A298(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004A2D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004A2B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10004A4B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004A2D8(void *result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000275C(&qword_1000C88E0, &qword_1000AC388);
  v10 = *(sub_1000A2F68() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_1000A2F68() - 8);
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

char *sub_10004A4B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000275C(&qword_1000C88F8, &unk_1000AC790);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_10004A5BC(uint64_t a1, uint64_t a2)
{
  v59 = sub_1000A2498();
  v4 = *(v59 - 8);
  __chkstk_darwin(*(v4 + 64));
  v58 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v42 - v6;
  v57 = sub_1000A3408();
  v7 = *(v57 - 8);
  __chkstk_darwin(*(v7 + 64));
  v55 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v42 - v9;
  v10 = sub_1000A2F68();
  v11 = *(v10 - 8);
  __chkstk_darwin(*(v11 + 64));
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  v61 = a2;

  v19 = sub_1000493F0(sub_10004AA9C, v60, a1);
  v20 = v19[2];
  if (!v20)
  {

    return 0;
  }

  v42 = v18;
  v21 = *(v11 + 16);
  v22 = v19;
  v51 = v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v52 = v21;
  v53 = v11 + 16;
  (v21)(v15);
  result = v22;
  if (v20 == 1)
  {
LABEL_3:

    v24 = v42;
    (*(v11 + 32))(v42, v15, v10);
    v25 = sub_1000A2F38();
    (*(v11 + 8))(v24, v10);
    return v25;
  }

  v47 = (v4 + 8);
  v48 = (v7 + 8);
  v46 = v11 + 8;
  v43 = (v11 + 32);
  v26 = 1;
  v49 = v20;
  v50 = v22;
  v44 = v15;
  v45 = v13;
  v27 = v56;
  while (v26 < *(result + 16))
  {
    v52(v13, &v51[*(v11 + 72) * v26], v10);
    v28 = v54;
    sub_1000A2F58();
    sub_1000A33E8();
    v29 = *v48;
    v30 = v28;
    v31 = v11;
    v32 = v57;
    (*v48)(v30, v57);
    v33 = v55;
    sub_1000A2F58();
    v34 = v10;
    v35 = v58;
    sub_1000A33E8();
    v36 = v32;
    v11 = v31;
    v29(v33, v36);
    v37 = sub_1000A2438();
    v38 = *v47;
    v39 = v35;
    v40 = v59;
    (*v47)(v39, v59);
    v38(v27, v40);
    v41 = *(v31 + 8);
    if (v37)
    {
      v15 = v44;
      v41(v44, v34);
      v13 = v45;
      (*v43)(v15, v45, v34);
      v10 = v34;
    }

    else
    {
      v13 = v45;
      v41(v45, v34);
      v10 = v34;
      v15 = v44;
    }

    ++v26;
    result = v50;
    if (v49 == v26)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004AABC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10004AB10()
{
  result = qword_1000C88F0;
  if (!qword_1000C88F0)
  {
    sub_1000A2F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C88F0);
  }

  return result;
}

uint64_t sub_10004AB68()
{
  v0 = objc_autoreleasePoolPush();
  sub_10004ACF0(&v2);
  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t sub_10004ABB8(uint64_t a1)
{
  type metadata accessor for ServiceSandbox();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  qword_1000C96D0 = v1;
  return result;
}

uint64_t sub_10004ABF8()
{
  result = _set_user_dir_suffix();
  if (!result)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v1 = sub_1000A3538();
    sub_100001E38(v1, qword_1000C96B8);
    v2 = sub_1000A3518();
    v3 = sub_1000A3CC8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "_set_user_dir_suffix() failed!", v4, 2u);
    }

    exit(0);
  }

  return result;
}

void sub_10004ACF0(uint64_t *a1@<X8>)
{
  v2 = objc_autoreleasePoolPush();
  sub_1000A2308();
  swift_allocObject();
  v15 = 0x40000000000;
  v16 = sub_1000A22D8();
  sub_10004B384(&v15, 0);
  v16 |= 0x4000000000000000uLL;
  sub_10004AF68(&v15, 65537);
  v4 = v3;
  sub_10003228C(v15, v16);
  objc_autoreleasePoolPop(v2);
  if (!v4)
  {
LABEL_6:
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v11 = sub_1000A3538();
    sub_100001E38(v11, qword_1000C96B8);
    v12 = sub_1000A3518();
    v13 = sub_1000A3CC8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to read _CS_DARWIN_USER_TEMP_DIR!", v14, 2u);
    }

    exit(1);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = sub_1000A3AA8();

  v7 = realpath_DARWIN_EXTSN((v6 + 32), 0);

  if (!v7)
  {
    objc_autoreleasePoolPop(v5);
    goto LABEL_6;
  }

  v8 = sub_1000A3AF8();
  v10 = v9;

  objc_autoreleasePoolPop(v5);
  if (!v10)
  {
    goto LABEL_6;
  }

  *a1 = v8;
  a1[1] = v10;
}

uint64_t sub_10004AEE0@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = sub_1000A3AF8();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_10004AF68(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      v15 = a2;
      sub_10003228C(v6, v5);
      *v16 = v6;
      *&v16[8] = v5;
      v16[10] = BYTE2(v5);
      v16[11] = BYTE3(v5);
      v16[12] = BYTE4(v5);
      v16[13] = BYTE5(v5);
      v16[14] = BYTE6(v5);
      result = sub_10004AEE0(v16, v15, &v17);
      if (!v2)
      {
        result = v17;
      }

      v9 = *&v16[8] | ((*&v16[12] | (v16[14] << 16)) << 32);
      *a1 = *v16;
      a1[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10003228C(v6, v5);
    *a1 = xmmword_1000AC3A0;
    sub_10003228C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (sub_1000A22C8() && __OFSUB__(v6, sub_1000A22F8()))
      {
LABEL_24:
        __break(1u);
      }

      sub_1000A2308();
      swift_allocObject();
      v13 = sub_1000A22B8();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_10004B2D8(v6, v6 >> 32, v11, v3);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v10;
        return v14;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 2)
  {

    sub_10003228C(v6, v5);
    v17 = v6;
    v18 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1000AC3A0;
    sub_10003228C(0, 0xC000000000000000);
    sub_1000A2398();
    v6 = v17;
    result = sub_10004B2D8(*(v17 + 16), *(v17 + 24), v18, v3);
    v10 = v18 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v17;
      a1[1] = v10;
      return result;
    }

LABEL_19:
    *a1 = v6;
    a1[1] = v10;
    return result;
  }

  memset(v16, 0, 15);
  result = sub_10004AEE0(v16, a2, &v17);
  if (!v2)
  {
    return v17;
  }

  return result;
}

uint64_t sub_10004B2D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_1000A22C8();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = sub_1000A22F8();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1000A22E8();
  result = sub_10004AEE0((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_10004B384(int *a1, int a2)
{
  sub_1000A23A8();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_1000A22C8();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_1000A22F8();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = sub_1000A22E8();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

uint64_t sub_10004B42C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v139 = a3;
  v145 = a2;
  v138 = a1;
  v110 = a4;
  v140 = sub_1000A38F8();
  v116 = *(v140 - 8);
  __chkstk_darwin(*(v116 + 64));
  v119 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v120 = &v108 - v5;
  v126 = sub_1000A2568();
  v127 = *(v126 - 8);
  __chkstk_darwin(*(v127 + 64));
  v125 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000A2498();
  v8 = *(v7 - 8);
  __chkstk_darwin(*(v8 + 64));
  v136 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v135 = &v108 - v10;
  __chkstk_darwin(v11);
  v147 = &v108 - v12;
  __chkstk_darwin(v13);
  v144 = &v108 - v14;
  __chkstk_darwin(v15);
  v142 = &v108 - v16;
  __chkstk_darwin(v17);
  v113 = &v108 - v18;
  __chkstk_darwin(v19);
  v143 = &v108 - v20;
  __chkstk_darwin(v21);
  v23 = &v108 - v22;
  __chkstk_darwin(v24);
  v132 = (&v108 - v25);
  __chkstk_darwin(v26);
  v148 = &v108 - v27;
  __chkstk_darwin(v28);
  v30 = &v108 - v29;
  __chkstk_darwin(v31);
  v33 = &v108 - v32;
  v128 = (&v108 - v32);
  __chkstk_darwin(v34);
  v36 = (&v108 - v35);
  __chkstk_darwin(v37);
  v39 = &v108 - v38;
  __chkstk_darwin(v40);
  v42 = (&v108 - v41);
  v146 = sub_1000A22A8();
  v111 = *(v146 - 8);
  __chkstk_darwin(*(v111 + 64));
  v134 = &v108 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v137 = &v108 - v44;
  __chkstk_darwin(v45);
  v141 = &v108 - v46;
  sub_1000A2288();
  v133 = v39;
  sub_1000A2248();
  sub_1000A2478();
  v48 = (v8 + 16);
  v47 = *(v8 + 16);
  v129 = v42;
  v47(v33, v42, v7);
  v49 = v127;
  v50 = *(v127 + 104);
  v51 = v125;
  v118 = enum case for Calendar.Component.year(_:);
  v52 = v126;
  v123 = v127 + 104;
  v122 = v50;
  v50(v125);
  v130 = v36;
  sub_1000A2ED8();
  v54 = v49 + 8;
  v53 = *(v49 + 8);
  v55 = v8;
  v127 = v54;
  v121 = v53;
  v53(v51, v52);
  v131 = v30;
  v56 = v128;
  sub_1000A2E88();
  if (sub_1000A2438())
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v57 = sub_1000A3538();
    sub_100001E38(v57, qword_1000C96B8);
    v58 = sub_1000A3518();
    v59 = sub_1000A3CC8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "[AMIQueryEngine] Client requested query start date is before five years ago.", v60, 2u);
    }

    (*(v55 + 8))(v56, v7);
    v47(v56, v148, v7);
  }

  v61 = v132;
  v47(v132, v133, v7);
  v62 = v130;
  if (sub_1000A2428())
  {
    (*(v55 + 8))(v61, v7);
    v47(v61, v62, v7);
  }

  v47(v23, v56, v7);
  v112 = v47;
  v47(v143, v61, v7);
  sub_1000A2268();
  v108 = v55;
  v63 = *(v55 + 8);
  v63(v61, v7);
  v63(v148, v7);
  v63(v131, v7);
  v63(v56, v7);
  v63(v62, v7);
  v63(v133, v7);
  v63(v129, v7);
  type metadata accessor for InsightBucketBoundaries();
  sub_1000A2288();
  v64 = v137;
  sub_10004C5C8(v23, v138, v145, v139 & 1, v137);
  v63(v23, v7);
  sub_1000A2288();
  sub_1000A2288();
  sub_1000A2248();
  sub_1000A2248();
  v65 = v112;
  v66 = sub_1000A2438();
  v63(v23, v7);
  if (v66)
  {
    v67 = (v116 + 16);
    v132 = (v116 + 88);
    LODWORD(v131) = enum case for ElectricityInsightQuery.Granularity.hourly(_:);
    v124 = enum case for ElectricityInsightQuery.Granularity.daily(_:);
    v117 = enum case for ElectricityInsightQuery.Granularity.weekly(_:);
    v115 = enum case for ElectricityInsightQuery.Granularity.monthly(_:);
    v114 = enum case for ElectricityInsightQuery.Granularity.yearly(_:);
    v130 = (v111 + 8);
    v109 = (v116 + 8);
    LODWORD(v116) = enum case for Calendar.Component.day(_:);
    v129 = (v111 + 32);
    v128 = (v108 + 32);
    v148 = v48;
    v133 = v67;
    while (1)
    {
      sub_1000A2248();
      v68 = *v67;
      if ((v139 & 1) == 0)
      {
        break;
      }

      v69 = v120;
      v70 = v140;
      v68(v120, v138, v140);
      v71 = (*v132)(v69, v70);
      if (v71 == v131 || v71 == v124)
      {
        goto LABEL_17;
      }

      if (v71 != v117)
      {
        if (v71 != v115 && v71 != v114)
        {
          sub_1000A2E88();
          v87 = v125;
          v88 = v126;
          v122(v125, v118, v126);
          v89 = v143;
          sub_1000A2ED8();
          v121(v87, v88);
          v65(v135, v23, v7);
          v65(v136, v89, v7);
          v80 = v134;
          sub_1000A2268();
          v63(v89, v7);
          v63(v23, v7);
          v63(v147, v7);
          v90 = v137;
          (*v130)(v137, v146);
          v91 = *v109;
          v92 = &v150;
LABEL_40:
          v94 = *(v92 - 32);
          v95 = v140;
          goto LABEL_35;
        }

        goto LABEL_17;
      }

      v82 = v147;
      sub_1000A2EA8();
      v83 = v143;
      sub_1000A2E58();
      v65(v135, v23, v7);
      v65(v136, v83, v7);
      v80 = v134;
      sub_1000A2268();
      v63(v83, v7);
      v63(v23, v7);
      v84 = v82;
LABEL_34:
      v63(v84, v7);
      v91 = *v130;
      v90 = v137;
      v94 = v137;
      v95 = v146;
LABEL_35:
      v91(v94, v95);
      (*v129)(v90, v80, v146);
      v64 = v90;
      sub_1000A2288();
      v96 = v144;
      v63(v144, v7);
      v97 = v142;
      v63(v142, v7);
      (*v128)(v97, v23, v7);
      v65(v96, v97, v7);
      sub_1000A2248();
      v98 = sub_1000A2438();
      v63(v23, v7);
      v67 = v133;
      if ((v98 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v77 = v119;
    v78 = v140;
    v68(v119, v138, v140);
    v79 = (*v132)(v77, v78);
    if (v79 == v131)
    {
      v73 = v147;
      sub_1000A2E78();
      v74 = v125;
      v75 = v126;
      v122(v125, v116, v126);
      v76 = v143;
LABEL_20:
      sub_1000A2ED8();
      v121(v74, v75);
      v65(v135, v23, v7);
      v65(v136, v76, v7);
      v80 = v134;
      sub_1000A2268();
      v81 = v76;
LABEL_33:
      v63(v81, v7);
      v63(v23, v7);
      v84 = v73;
      goto LABEL_34;
    }

    if (v79 == v124)
    {
      v73 = v147;
      sub_1000A2E98();
      v85 = v143;
      sub_1000A2E38();
    }

    else
    {
      if (v79 != v117)
      {
        if (v79 != v115 && v79 != v114)
        {
          v99 = v147;
          sub_1000A2E48();
          v100 = v143;
          sub_1000A2EE8();
          v65(v135, v23, v7);
          v65(v136, v100, v7);
          v101 = v134;
          sub_1000A2268();
          v102 = v100;
          v80 = v101;
          v63(v102, v7);
          v63(v23, v7);
          v63(v99, v7);
          v90 = v137;
          (*v130)(v137, v146);
          v91 = *v109;
          v92 = &v149;
          goto LABEL_40;
        }

LABEL_17:
        v73 = v147;
        sub_1000A2E88();
        v74 = v125;
        v75 = v126;
        v122(v125, v118, v126);
        v76 = v143;
        goto LABEL_20;
      }

      v73 = v147;
      sub_1000A2EA8();
      v85 = v143;
      sub_1000A2E58();
    }

    v65(v135, v23, v7);
    v65(v136, v85, v7);
    v93 = v134;
    sub_1000A2268();
    v81 = v85;
    v80 = v93;
    goto LABEL_33;
  }

LABEL_41:
  v103 = v113;
  v65(v23, v113, v7);
  v104 = v144;
  v65(v143, v144, v7);
  sub_1000A2268();
  v63(v104, v7);
  v63(v142, v7);
  v63(v103, v7);
  v105 = *(v111 + 8);
  v106 = v146;
  v105(v64, v146);
  return (v105)(v141, v106);
}

uint64_t sub_10004C5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v50 = a1;
  v51 = a3;
  v54 = a5;
  v49 = sub_1000A2568();
  v7 = *(v49 - 8);
  __chkstk_darwin(*(v7 + 64));
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000A2498();
  v11 = *(v10 - 8);
  v55 = v10;
  v56 = v11;
  __chkstk_darwin(*(v11 + 64));
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v52 = &v48 - v13;
  __chkstk_darwin(v14);
  v57 = &v48 - v15;
  __chkstk_darwin(v16);
  v18 = &v48 - v17;
  v19 = sub_1000A38F8();
  v20 = *(v19 - 8);
  __chkstk_darwin(*(v20 + 64));
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v48 - v23;
  v25 = (v20 + 88);
  v26 = *(v20 + 16);
  if (a4)
  {
    v26(v22, a2, v19);
    v27 = (*v25)(v22, v19);
    if (v27 != enum case for ElectricityInsightQuery.Granularity.hourly(_:) && v27 != enum case for ElectricityInsightQuery.Granularity.daily(_:))
    {
      if (v27 != enum case for ElectricityInsightQuery.Granularity.weekly(_:))
      {
        if (v27 != enum case for ElectricityInsightQuery.Granularity.monthly(_:) && v27 != enum case for ElectricityInsightQuery.Granularity.yearly(_:))
        {
          sub_1000A2E88();
          v33 = v49;
          (*(v7 + 104))(v9, enum case for Calendar.Component.year(_:), v49);
          sub_1000A2ED8();
          (*(v7 + 8))(v9, v33);
          v35 = v55;
          v34 = v56;
          v36 = *(v56 + 16);
          v36(v52, v18, v55);
          v36(v53, v57, v35);
          sub_1000A2268();
          v37 = *(v34 + 8);
          v37(v57, v35);
          v37(v18, v35);
          return (*(v20 + 8))(v22, v19);
        }

        goto LABEL_7;
      }

LABEL_20:
      sub_1000A2EA8();
      v30 = v57;
      sub_1000A2E58();
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  v26(&v48 - v23, a2, v19);
  v31 = (*v25)(v24, v19);
  if (v31 == enum case for ElectricityInsightQuery.Granularity.hourly(_:))
  {
    sub_1000A2E78();
    v29 = v49;
    (*(v7 + 104))(v9, enum case for Calendar.Component.day(_:), v49);
    v30 = v57;
    goto LABEL_10;
  }

  if (v31 == enum case for ElectricityInsightQuery.Granularity.daily(_:))
  {
    sub_1000A2E98();
    v30 = v57;
    sub_1000A2E38();
    goto LABEL_21;
  }

  if (v31 == enum case for ElectricityInsightQuery.Granularity.weekly(_:))
  {
    goto LABEL_20;
  }

  if (v31 == enum case for ElectricityInsightQuery.Granularity.monthly(_:) || v31 == enum case for ElectricityInsightQuery.Granularity.yearly(_:))
  {
LABEL_7:
    sub_1000A2E88();
    v29 = v49;
    (*(v7 + 104))(v9, enum case for Calendar.Component.year(_:), v49);
    v30 = v57;
LABEL_10:
    sub_1000A2ED8();
    (*(v7 + 8))(v9, v29);
LABEL_21:
    v40 = v55;
    v39 = v56;
    v41 = *(v56 + 16);
    v41(v52, v18, v55);
    v41(v53, v30, v40);
    sub_1000A2268();
    v42 = *(v39 + 8);
    v42(v30, v40);
    return (v42)(v18, v40);
  }

  sub_1000A2E48();
  sub_1000A2EE8();
  v45 = v55;
  v44 = v56;
  v46 = *(v56 + 16);
  v46(v52, v18, v55);
  v46(v53, v57, v45);
  sub_1000A2268();
  v47 = *(v44 + 8);
  v47(v57, v45);
  v47(v18, v45);
  return (*(v20 + 8))(v24, v19);
}

uint64_t sub_10004CC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v35 = a1;
  v37 = a4;
  v34 = sub_1000A2568();
  v5 = *(v34 - 8);
  __chkstk_darwin(*(v5 + 64));
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000A2498();
  v9 = *(v8 - 8);
  __chkstk_darwin(*(v9 + 64));
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = &v33 - v11;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v18 = sub_1000A38F8();
  v19 = *(v18 - 8);
  __chkstk_darwin(*(v19 + 64));
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, a2, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for ElectricityInsightQuery.Granularity.hourly(_:))
  {
    if (qword_1000C7580 != -1)
    {
      swift_once();
    }

    v23 = sub_1000A2578();
    sub_100001E38(v23, qword_1000C96D8);
    sub_1000A2E68();
    v24 = v34;
    (*(v5 + 104))(v7, enum case for Calendar.Component.hour(_:), v34);
    sub_1000A2ED8();
    (*(v5 + 8))(v7, v24);
    goto LABEL_10;
  }

  if (v22 == enum case for ElectricityInsightQuery.Granularity.daily(_:))
  {
    sub_1000A2E48();
    sub_1000A2EE8();
LABEL_10:
    v26 = *(v9 + 16);
    v26(v38, v17, v8);
    v26(v36, v14, v8);
    sub_1000A2268();
    v27 = *(v9 + 8);
    v27(v14, v8);
    return (v27)(v17, v8);
  }

  if (v22 == enum case for ElectricityInsightQuery.Granularity.weekly(_:))
  {
    sub_1000A2EC8();
    v25 = v34;
    (*(v5 + 104))(v7, enum case for Calendar.Component.day(_:), v34);
LABEL_9:
    sub_1000A2ED8();
    (*(v5 + 8))(v7, v25);
    goto LABEL_10;
  }

  if (v22 == enum case for ElectricityInsightQuery.Granularity.monthly(_:))
  {
    sub_1000A2E98();
    sub_1000A2E38();
    goto LABEL_10;
  }

  if (v22 == enum case for ElectricityInsightQuery.Granularity.yearly(_:))
  {
    sub_1000A2E88();
    v25 = v34;
    (*(v5 + 104))(v7, enum case for Calendar.Component.year(_:), v34);
    goto LABEL_9;
  }

  if (qword_1000C7580 != -1)
  {
    swift_once();
  }

  v29 = sub_1000A2578();
  v33 = sub_100001E38(v29, qword_1000C96D8);
  sub_1000A2E68();
  v30 = v34;
  (*(v5 + 104))(v7, enum case for Calendar.Component.hour(_:), v34);
  sub_1000A2ED8();
  (*(v5 + 8))(v7, v30);
  v31 = *(v9 + 16);
  v31(v38, v17, v8);
  v31(v36, v14, v8);
  sub_1000A2268();
  v32 = *(v9 + 8);
  v32(v14, v8);
  v32(v17, v8);
  return (*(v19 + 8))(v21, v18);
}

uint64_t sub_10004D2D0()
{
  v0 = sub_10000275C(&qword_1000C7AF0, qword_1000AB9C0);
  __chkstk_darwin(((*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = &v13 - v1;
  v3 = sub_1000A25A8();
  v4 = *(v3 - 8);
  __chkstk_darwin(*(v4 + 64));
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000A2518();
  v8 = *(v7 - 8);
  __chkstk_darwin(*(v8 + 64));
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A2578();
  sub_100015578(v11, qword_1000C96D8);
  sub_100001E38(v11, qword_1000C96D8);
  (*(v8 + 104))(v10, enum case for Calendar.Identifier.gregorian(_:), v7);
  sub_1000A2528();
  (*(v8 + 8))(v10, v7);
  sub_1000A2598();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    return sub_1000A2558();
  }

  return result;
}

uint64_t sub_10004D548()
{
  type metadata accessor for EnergyKitAppTrackerQuery();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  qword_1000C96F0 = v0;
  return result;
}

uint64_t sub_10004D5A8()
{
  v1 = *(v0[2] + 112);
  if (v1)
  {
    v5 = v0[1];
    v2 = v1;

    return v5(v2);
  }

  else
  {
    if (qword_1000C7568 != -1)
    {
      swift_once();
    }

    v4 = qword_1000C9648;
    v0[3] = qword_1000C9648;

    return _swift_task_switch(sub_10004D688, v4, 0);
  }
}

uint64_t sub_10004D688()
{
  v1 = *(v0 + 16);
  v2 = sub_10004060C();
  v3 = [v2 newBackgroundContext];
  *(v0 + 32) = v3;
  v4 = sub_1000A3A78();
  [v3 setTransactionAuthor:v4];

  [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v3 setUndoManager:0];
  [v3 setShouldRefreshAfterSave:1];
  [v3 setStalenessInterval:0.0];
  [v3 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_10004D7C4, v1, 0);
}

uint64_t sub_10004D7C4()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + 112);
  *(v2 + 112) = v1;
  v4 = v1;

  v5 = v0[4];
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_10004D838(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1000A2508();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v2[12] = *(v4 + 64);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10004D900, v1, 0);
}

uint64_t sub_10004D900()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 112) = qword_1000C95F0;

  return _swift_task_switch(sub_10004D9A8, v1, 0);
}

uint64_t sub_10004D9A8()
{
  v1 = v0[14];
  v0[15] = *(v1 + 112);
  v2 = *(v1 + 120);
  v0[16] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_10004DA9C;

    return sub_10004D588();
  }

  else
  {

    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_10004DA9C(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10004DBB4, v2, 0);
}

uint64_t sub_10004DBB4()
{
  *(v0 + 152) = 1;
  v1 = v0 + 152;
  aBlock = (v0 + 16);
  v18 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v1 - 56);
  v5 = *(v1 - 48);
  v6 = *(v1 - 72);
  v7 = *(v1 - 64);
  (*(v7 + 16))(v5, *(v1 - 88), v6);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v2;
  (*(v7 + 32))(v10 + v8, v5, v6);
  *(v10 + v9) = v1;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10005271C;
  *(v11 + 24) = v10;
  *(v1 - 104) = sub_1000527D8;
  *(v1 - 96) = v11;
  *(v1 - 136) = _NSConcreteStackBlock;
  *(v1 - 128) = 1107296256;
  *(v1 - 120) = sub_1000636D8;
  *(v1 - 112) = &unk_1000BF990;
  v12 = _Block_copy(aBlock);
  v13 = v18;

  [v13 performBlockAndWait:v12];

  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v17 + 152);

    v16 = *(v17 + 8);

    return v16(v15);
  }

  return result;
}

void sub_10004DDF0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, void *a5)
{
  v24 = a4;
  v8 = sub_1000A2508();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(*(v26 + 64));
  v25 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A2CD8();
  v28 = sub_1000A2CC8();
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000AC010;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_1000321D0();
  v23[2] = a1;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  isa = sub_1000A24D8().super.isa;
  *(v10 + 96) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v10 + 104) = sub_100051BB4();
  *(v10 + 72) = isa;
  v12 = sub_1000A3C98();
  [v28 setPredicate:v12];

  [v28 setReturnsObjectsAsFaults:0];
  [v28 setResultType:0];
  sub_10000275C(&qword_1000C8600, &qword_1000AC5E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000AC0E0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = 0x436564756C636E69;
  *(v13 + 40) = 0xEB0000000074736FLL;
  v14 = sub_1000A3B48().super.isa;

  [v28 setPropertiesToFetch:v14];

  [v28 setFetchBatchSize:1];
  v15 = sub_1000A3D68();
  v16 = v24;
  if (v15 >> 62)
  {
    v20 = v15;
    v21 = sub_1000A3EC8();
    v15 = v20;
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_8:

    v19 = 1;
    goto LABEL_9;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = sub_1000A3EA8();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v15 + 32);
  }

  v18 = v17;

  v19 = [v18 includeCost];

LABEL_9:
  *v16 = v19;
  [a5 reset];
  v22 = v28;
}

uint64_t sub_10004E3E0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  v3 = sub_1000A2508();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = *(v4 + 64);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10004E4D0, v1, 0);
}

uint64_t sub_10004E4D0()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 128) = qword_1000C95F0;

  return _swift_task_switch(sub_10004E578, v1, 0);
}

uint64_t sub_10004E578()
{
  v1 = v0[16];
  v2 = v0[10];
  v0[17] = *(v1 + 112);
  v0[18] = *(v1 + 120);

  return _swift_task_switch(sub_10004E5FC, v2, 0);
}

uint64_t sub_10004E5FC()
{
  if (v0[18])
  {
    v1 = swift_task_alloc();
    v0[19] = v1;
    *v1 = v0;
    v1[1] = sub_10004E6E0;

    return sub_10004D588();
  }

  else
  {
    v3 = sub_100089E74(&_swiftEmptyArrayStorage);

    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_10004E6E0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_10004E7F8, v2, 0);
}

uint64_t sub_10004E7F8()
{
  v0[8] = &_swiftEmptyDictionarySingleton;
  v1 = v0 + 8;
  v20 = v0[20];
  aBlock = v0 + 2;
  v18 = v0[18];
  v2 = v0[17];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[4];
  v6 = v1[5];
  v19 = v1[3];
  (*(v6 + 16))(v4, v1[1], v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v18;
  (*(v6 + 32))(v10 + v7, v4, v5);
  *(v10 + v8) = v20;
  *(v10 + v9) = v1;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100052594;
  *(v11 + 24) = v10;
  *(v1 - 2) = sub_1000527D8;
  *(v1 - 1) = v11;
  *(v1 - 6) = _NSConcreteStackBlock;
  *(v1 - 5) = 1107296256;
  *(v1 - 4) = sub_1000636D8;
  *(v1 - 3) = &unk_1000BF918;
  v12 = _Block_copy(aBlock);
  v13 = v20;

  [v13 performBlockAndWait:v12];

  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v17 + 64);

    v16 = *(v17 + 8);

    return v16(v15);
  }

  return result;
}

void sub_10004EA54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v75 = a5;
  v83 = a4;
  v8 = sub_1000A2508();
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(*(v78 + 64));
  v77 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000A2498();
  v80 = *(v10 - 8);
  v81 = v10;
  __chkstk_darwin(*(v80 + 64));
  v74 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v72 - v12;
  sub_1000A2CD8();
  v13 = sub_1000A2CC8();
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v14 = swift_allocObject();
  v82 = xmmword_1000AC010;
  *(v14 + 16) = xmmword_1000AC010;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_1000321D0();
  v72 = a1;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v76 = a3;
  isa = sub_1000A24D8().super.isa;
  *(v14 + 96) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v14 + 104) = sub_100051BB4();
  *(v14 + 72) = isa;
  v16 = sub_1000A3C98();
  [v13 setPredicate:v16];

  [v13 setReturnsObjectsAsFaults:0];
  [v13 setResultType:0];
  sub_10000275C(&qword_1000C8600, &qword_1000AC5E0);
  v17 = swift_allocObject();
  *(v17 + 16) = v82;
  *(v17 + 32) = 0x73444964697267;
  *(v17 + 40) = 0xE700000000000000;
  *(v17 + 88) = &type metadata for String;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = 0x616470557473616CLL;
  v18 = v83;
  *(v17 + 72) = 0xEB00000000646574;
  v19 = sub_1000A3B48().super.isa;

  [v13 setPropertiesToFetch:v19];

  [v13 setFetchBatchSize:1];
  *&v82 = v13;
  v20 = sub_1000A3D68();
  if (v20 >> 62)
  {
LABEL_38:
    v71 = v20;
    v34 = sub_1000A3EC8();
    v20 = v71;
  }

  else
  {
    v34 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v75;
  v37 = v80;
  v36 = v81;
  if (!v34)
  {
    goto LABEL_35;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
LABEL_40:
    v38 = sub_1000A3EA8();
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_42:
      sub_1000A3F78();
      __break(1u);
      return;
    }

    v38 = *(v20 + 32);
  }

  v39 = v38;

  v40 = [v39 gridIDs];
  v79 = sub_1000A3A18();

  v41 = [v39 lastUpdated];
  if (!v41)
  {

LABEL_34:
    *v35 = v79;
LABEL_35:

    v70 = v82;
    [v18 reset];

    return;
  }

  v42 = v41;
  sub_1000A2468();

  sub_1000A2488();
  sub_1000A23D8();
  v44 = pow(0.95, v43 / 86400.0);
  v35 = (v79 + 64);
  v45 = 1 << *(v79 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v79 + 64);
  v18 = ((v45 + 63) >> 6);

  v49 = 0;
  v50 = v48;
  while (v47)
  {
    v52 = v49;
LABEL_23:
    v53 = __clz(__rbit64(v47)) | (v52 << 6);
    v54 = (*(v79 + 48) + 16 * v53);
    v37 = *v54;
    v36 = v54[1];
    v55 = *(*(v79 + 56) + 8 * v53);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v50;
    v20 = sub_100079BDC(v37, v36);
    v58 = v50[2];
    v59 = (v57 & 1) == 0;
    v60 = __OFADD__(v58, v59);
    v61 = v58 + v59;
    if (v60)
    {
      __break(1u);
      goto LABEL_38;
    }

    v62 = v57;
    if (v50[3] >= v61)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = v20;
        sub_10007CB30();
        v20 = v68;
      }
    }

    else
    {
      sub_10007AFB0(v61, isUniquelyReferenced_nonNull_native);
      v20 = sub_100079BDC(v37, v36);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_42;
      }
    }

    v47 &= v47 - 1;
    v64 = v44 * v55;
    if (v62)
    {
      v51 = v20;

      v50 = v84[0];
      *(*(v84[0] + 56) + 8 * v51) = v64;
    }

    else
    {
      v50 = v84[0];
      *(v84[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v65 = (v50[6] + 16 * v20);
      *v65 = v37;
      v65[1] = v36;
      *(v50[7] + 8 * v20) = v64;
      v66 = v50[2];
      v60 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v60)
      {
        __break(1u);
        goto LABEL_40;
      }

      v50[2] = v67;
    }

    v49 = v52;
    v37 = v80;
    v36 = v81;
  }

  while (1)
  {
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v52 >= v18)
    {

      v69 = *(v37 + 8);
      v69(v74, v36);
      v69(v73, v36);

      v79 = v50;
      v18 = v83;
      v35 = v75;
      goto LABEL_34;
    }

    v47 = v35[v52];
    ++v49;
    if (v47)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  swift_once();
  v21 = sub_1000A3538();
  sub_100001E38(v21, qword_1000C96B8);
  v22 = v77;
  v23 = v78;
  v24 = v79;
  (*(v78 + 16))(v77, v76, v79);

  swift_errorRetain();
  v25 = sub_1000A3518();
  v26 = sub_1000A3CC8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v84[0] = v81;
    *v27 = 136315651;
    *(v27 + 4) = sub_1000954AC(v72, v36, v84);
    *(v27 + 12) = 2081;
    sub_100051C1C();
    v29 = sub_1000A3F28();
    v31 = v30;
    (*(v23 + 8))(v22, v24);
    v32 = sub_1000954AC(v29, v31, v84);

    *(v27 + 14) = v32;
    *(v27 + 22) = 2112;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 24) = v33;
    *v28 = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed to fetch gridIDs for %s at site %{private}s: %@", v27, 0x20u);
    sub_100022154(v28, &unk_1000C7740, &qword_1000AB610);

    swift_arrayDestroy();

    v18 = v83;
  }

  else
  {

    (*(v23 + 8))(v22, v24);
  }

  [v18 reset];
}

uint64_t sub_10004F370(uint64_t a1, char a2)
{
  *(v3 + 152) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v4 = sub_1000A2508();
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_10004F43C, v2, 0);
}

uint64_t sub_10004F43C()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 112) = qword_1000C95F0;

  return _swift_task_switch(sub_10004F4E4, v1, 0);
}

uint64_t sub_10004F4E4()
{
  v1 = v0[14];
  v0[15] = *(v1 + 112);
  v2 = *(v1 + 120);
  v0[16] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_10004F5D4;

    return sub_10004D588();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10004F5D4(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10004F6EC, v2, 0);
}

uint64_t sub_10004F6EC()
{
  v17 = *(v0 + 144);
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 152);
  (*(v6 + 16))(v4, *(v0 + 64), v5);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v1;
  (*(v6 + 32))(v10 + v8, v4, v5);
  v11 = v10 + v9;
  *v11 = v17;
  *(v11 + 8) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10005240C;
  *(v12 + 24) = v10;
  *(v0 + 48) = sub_1000527D8;
  *(v0 + 56) = v12;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1000636D8;
  *(v0 + 40) = &unk_1000BF8A0;
  v13 = _Block_copy((v0 + 16));
  v14 = v17;

  [v14 performBlockAndWait:v13];

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }

  return result;
}

void sub_10004F90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1000A2CD8();
  v8 = sub_1000A2CC8();
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000AC010;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000321D0();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  isa = sub_1000A24D8().super.isa;
  *(v9 + 96) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v9 + 104) = sub_100051BB4();
  *(v9 + 72) = isa;
  v11 = sub_1000A3C98();
  [v8 setPredicate:v11];

  v12 = sub_1000A3D68();
  if (v12 >> 62)
  {
    v19 = v12;
    v20 = sub_1000A3EC8();
    v12 = v19;
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_11:

    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a4];
    [v22 setIncludeCost:a5 & 1];
    v13 = sub_1000A24D8().super.isa;
    [v22 setSiteID:v13];

    v14 = sub_1000A3A78();
    [v22 setAppID:v14];

    sub_100089E74(&_swiftEmptyArrayStorage);
    v15 = sub_1000A3A08().super.isa;

    [v22 setGridIDs:v15];

    sub_100041038(1);
    v18 = v22;
    goto LABEL_7;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v16 = sub_1000A3EA8();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v16 = *(v12 + 32);
  }

  v17 = v16;

  [v17 setIncludeCost:a5 & 1];

  sub_100041038(1);
  v18 = v8;
LABEL_7:
}

uint64_t sub_10004FC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = *v3;
  v5 = sub_1000A2508();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v4[15] = *(v6 + 64);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10004FD34, v3, 0);
}

uint64_t sub_10004FD34()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 136) = qword_1000C95F0;

  return _swift_task_switch(sub_10004FDDC, v1, 0);
}

uint64_t sub_10004FDDC()
{
  v1 = v0[17];
  v0[18] = *(v1 + 112);
  v2 = *(v1 + 120);
  v0[19] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_10004FECC;

    return sub_10004D588();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10004FECC(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_10004FFE4, v2, 0);
}

uint64_t sub_10004FFE4()
{
  v20 = v0[21];
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v18 = v0[9];
  v19 = v0[12];
  v16 = v0[19];
  v17 = v0[8];
  (*(v5 + 16))(v3, v0[10], v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v16;
  (*(v5 + 32))(v9 + v6, v3, v4);
  *(v9 + v7) = v20;
  v10 = (v9 + v8);
  *v10 = v17;
  v10[1] = v18;
  *(v9 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100051D70;
  *(v11 + 24) = v9;
  v0[6] = sub_1000527D8;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000636D8;
  v0[5] = &unk_1000BF828;
  v12 = _Block_copy(v0 + 2);
  v13 = v20;

  [v13 performBlockAndWait:v12];

  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }

  return result;
}

void sub_100050238(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78 = a5;
  v79 = a6;
  v82 = a4;
  v8 = sub_1000A2498();
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(*(v80 + 64));
  v75 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v73 - v10;
  __chkstk_darwin(v11);
  v13 = &v73 - v12;
  sub_1000A2CD8();
  v14 = sub_1000A2CC8();
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000AC010;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_1000321D0();
  v76 = a1;
  v77 = a2;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  isa = sub_1000A24D8().super.isa;
  *(v15 + 96) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v15 + 104) = sub_100051BB4();
  *(v15 + 72) = isa;
  v17 = v14;
  v18 = v82;
  v19 = sub_1000A3C98();
  [v14 setPredicate:v19];

  v20 = sub_1000A3D68();
  v21 = 0;
  v73 = v13;
  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_41:

    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v18];
    sub_10000275C(&qword_1000C8BB0, &qword_1000AC510);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AC0E0;
    v24 = v79;
    *(inited + 32) = v78;
    *(inited + 40) = v24;
    *(inited + 48) = 0x3FF0000000000000;

    sub_100089E74(inited);
    swift_setDeallocating();
    sub_100022154(inited + 32, &qword_1000C8BB8, &qword_1000AC518);
    v25 = sub_1000A3A08().super.isa;

    [v22 setGridIDs:v25];

    v26 = v75;
    sub_1000A2488();
    v27 = sub_1000A2418().super.isa;
    (*(v80 + 8))(v26, v81);
    [v22 setLastUpdated:v27];

    v28 = sub_1000A24D8().super.isa;
    [v22 setSiteID:v28];

    v29 = sub_1000A3A78();
    [v22 setAppID:v29];

    [v22 setIncludeCost:1];
    sub_100041038(1);
    if (v21)
    {
    }

    goto LABEL_4;
  }

LABEL_40:
  v71 = v20;
  v72 = sub_1000A3EC8();
  v20 = v71;
  if (!v72)
  {
    goto LABEL_41;
  }

LABEL_7:
  if ((v20 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v20 + 32); ; i = sub_1000A3EA8())
    {
      v22 = i;

      v31 = [v22 gridIDs];
      v32 = sub_1000A3A18();

      sub_1000A2488();
      v33 = [v22 lastUpdated];
      if (!v33)
      {
        v42 = v32;
LABEL_32:
        v62 = 1.0;
        v64 = v78;
        v63 = v79;
        if (v42[2])
        {
          v65 = sub_100079BDC(v78, v79);
          if (v66)
          {
            v62 = *(v42[7] + 8 * v65) + 1.0;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v42;
        sub_10007BD3C(v64, v63, isUniquelyReferenced_nonNull_native, v62);
        sub_100051E2C(v83);

        v68 = sub_1000A3A08().super.isa;

        [v22 setGridIDs:v68];

        v69 = v73;
        v70 = sub_1000A2418().super.isa;
        [v22 setLastUpdated:v70];

        sub_100041038(1);
        if (v21)
        {

          (*(v80 + 8))(v69, v81);

          return;
        }

        (*(v80 + 8))(v69, v81);

LABEL_4:

        return;
      }

      v75 = v22;
      v76 = v17;
      v34 = v33;
      sub_1000A2468();

      sub_1000A23D8();
      v36 = pow(0.95, v35 / 86400.0);
      v37 = v32 + 64;
      v38 = 1 << *(v32 + 32);
      v39 = -1;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      v17 = v39 & *(v32 + 64);
      v40 = (v38 + 63) >> 6;

      v41 = 0;
      v42 = v32;
      v77 = v21;
      while (1)
      {
        if (!v17)
        {
          while (1)
          {
            v44 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              break;
            }

            if (v44 >= v40)
            {
              (*(v80 + 8))(v74, v81);

              v22 = v75;
              v17 = v76;
              goto LABEL_32;
            }

            v17 = *(v37 + 8 * v44);
            ++v41;
            if (v17)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v44 = v41;
LABEL_21:
        v45 = __clz(__rbit64(v17)) | (v44 << 6);
        v46 = *(v32 + 56);
        v47 = v32;
        v48 = (*(v32 + 48) + 16 * v45);
        v21 = *v48;
        v49 = v48[1];
        v50 = *(v46 + 8 * v45);

        v18 = swift_isUniquelyReferenced_nonNull_native();
        v83 = v42;
        v20 = sub_100079BDC(v21, v49);
        v52 = v42[2];
        v53 = (v51 & 1) == 0;
        v54 = __OFADD__(v52, v53);
        v55 = v52 + v53;
        if (v54)
        {
          goto LABEL_39;
        }

        v56 = v51;
        if (v42[3] >= v55)
        {
          if ((v18 & 1) == 0)
          {
            v18 = v20;
            sub_10007CB30();
            v20 = v18;
          }
        }

        else
        {
          sub_10007AFB0(v55, v18);
          v20 = sub_100079BDC(v21, v49);
          if ((v56 & 1) != (v57 & 1))
          {
            goto LABEL_45;
          }
        }

        v17 &= v17 - 1;
        v58 = v36 * v50;
        if (v56)
        {
          v43 = v20;

          v42 = v83;
          *(v83[7] + 8 * v43) = v58;
          goto LABEL_15;
        }

        v42 = v83;
        v83[(v20 >> 6) + 8] |= 1 << v20;
        v59 = (v42[6] + 16 * v20);
        *v59 = v21;
        v59[1] = v49;
        *(v42[7] + 8 * v20) = v58;
        v60 = v42[2];
        v54 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v54)
        {
          break;
        }

        v42[2] = v61;
LABEL_15:
        v41 = v44;
        v21 = v77;
        v32 = v47;
      }

      __break(1u);
LABEL_43:
      ;
    }
  }

  __break(1u);
LABEL_45:
  sub_1000A3F78();
  __break(1u);
}

uint64_t sub_100050A90(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100050B28;

  return sub_10004E3E0(a1);
}

uint64_t sub_100050B28(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100050C40, v2, 0);
}

uint64_t sub_100050C40()
{

  v2 = COERCE_DOUBLE(sub_100050E04(v1));
  v4 = v3;

  result = *(v0 + 32);
  if ((v4 & 1) != 0 || !*(result + 16))
  {

LABEL_25:
    v21 = 0;
    v20 = 0;
LABEL_26:
    v22 = *(v0 + 8);

    return v22(v21, v20);
  }

  else
  {
    v6 = result + 64;
    v7 = -1 << *(result + 32);
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(result + 64);
    v10 = (63 - v7) >> 6;
    v11 = 0;
    if (v2 >= 7.5)
    {
      while (v9)
      {
        v15 = v11;
LABEL_21:
        v16 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v14 = v16 | (v15 << 6);
        if (*(*(result + 56) + 8 * v14) == v2)
        {
LABEL_22:
          v17 = (*(result + 48) + 16 * v14);
          v19 = *v17;
          v18 = v17[1];

          v20 = v18;
          v21 = v19;
          goto LABEL_26;
        }
      }

      while (1)
      {
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v15 >= v10)
        {
LABEL_24:

          goto LABEL_25;
        }

        v9 = *(v6 + 8 * v15);
        ++v11;
        if (v9)
        {
          v11 = v15;
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      while (v9)
      {
        v12 = v11;
LABEL_13:
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v14 = v13 | (v12 << 6);
        if (*(*(result + 56) + 8 * v14) == v2)
        {
          goto LABEL_22;
        }
      }

      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {
          goto LABEL_24;
        }

        v9 = *(v6 + 8 * v12);
        ++v11;
        if (v9)
        {
          v11 = v12;
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100050E04(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100050F14(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1000A2508();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v2[12] = *(v4 + 64);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100050FDC, v1, 0);
}

uint64_t sub_100050FDC()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 112) = qword_1000C95F0;

  return _swift_task_switch(sub_100051084, v1, 0);
}

uint64_t sub_100051084()
{
  v1 = v0[14];
  v0[15] = *(v1 + 112);
  v2 = *(v1 + 120);
  v0[16] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_100051174;

    return sub_10004D588();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100051174(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10005128C, v2, 0);
}

uint64_t sub_10005128C()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  (*(v7 + 16))(v5, v0[8], v6);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v2;
  (*(v7 + 32))(v10 + v8, v5, v6);
  v11 = v1;
  *(v10 + v9) = v1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100051B04;
  *(v12 + 24) = v10;
  v0[6] = sub_100051B94;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000636D8;
  v0[5] = &unk_1000BF7B0;
  v13 = _Block_copy(v0 + 2);
  v14 = v11;

  [v14 performBlockAndWait:v13];

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }

  return result;
}

void sub_1000514A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = a3;
  v20 = *(sub_1000A2508() - 8);
  __chkstk_darwin(*(v20 + 64));
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A2CD8();
  v22 = sub_1000A2CC8();
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000AC010;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000321D0();
  v19[2] = a1;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  isa = sub_1000A24D8().super.isa;
  *(v9 + 96) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v9 + 104) = sub_100051BB4();
  *(v9 + 72) = isa;
  v11 = sub_1000A3C98();
  [v22 setPredicate:v11];

  v12 = sub_1000A3D68();
  v13 = v12;
  v19[1] = v8;
  if (v12 >> 62)
  {
    v14 = sub_1000A3EC8();
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = sub_1000A3EA8();
    }

    else
    {
      v16 = *(v13 + 8 * i + 32);
    }

    v17 = v16;
    [a4 deleteObject:v16];
  }

LABEL_10:

  sub_100041038(1);
  v18 = v22;
}

uint64_t sub_1000519D0()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100051A2C()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100051B04()
{
  v1 = *(sub_1000A2508() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000514A0(v3, v4, v0 + v2, v5);
}

uint64_t sub_100051B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100051BB4()
{
  result = qword_1000C7F08;
  if (!qword_1000C7F08)
  {
    sub_100032224(255, &qword_1000C7F00, NSUUID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7F08);
  }

  return result;
}

unint64_t sub_100051C1C()
{
  result = qword_1000C9340;
  if (!qword_1000C9340)
  {
    sub_1000A2508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9340);
  }

  return result;
}

uint64_t sub_100051C74()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_100051D70()
{
  v1 = *(sub_1000A2508() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);

  sub_100050238(v5, v6, v0 + v2, v7, v8, v9);
}

unint64_t *sub_100051E2C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = (1 << v3) + 63;
  v6 = v5 >> 6;
  if (v4 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(v5);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_100051F8C(v8, v9, v6, a1);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v13 = sub_100052080(v11, v6, a1, v12);

  if (!v1)
  {
    return v13;
  }

  return result;
}

unint64_t *sub_100051F8C(unint64_t *result, __n128 a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a4 + 56) + 8 * v12) >= 0.1)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_1000520F8(result, a3, v5, a4);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_1000520F8(result, a3, v5, a4);
    }

    v14 = *(a4 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100052080(unint64_t *result, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
    }

    v7 = sub_100051F8C(result, a4, a2, a3);

    return v7;
  }

  return result;
}

uint64_t sub_1000520F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000275C(&qword_1000C93A0, &unk_1000AC520);
  result = sub_1000A3F08();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1000A3F88();

    sub_1000A3AC8();
    result = sub_1000A3F98();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
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

uint64_t sub_100052334()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

void sub_10005240C()
{
  v1 = *(sub_1000A2508() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_10004F90C(v3, v4, v0 + v2, v6, v7);
}

uint64_t sub_1000524A4()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_100052594()
{
  v1 = *(sub_1000A2508() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10004EA54(v4, v5, v0 + v2, v6, v7);
}

uint64_t sub_10005263C()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10005271C()
{
  v1 = *(sub_1000A2508() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  sub_10004DDF0(v6, v7, v0 + v2, v4, v5);
}

void sub_1000527EC(unint64_t a1@<X0>, void (**a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v70 = a4;
  v79 = a1;
  v80 = a3;
  v73 = a2;
  v68 = a5;
  v5 = sub_10000275C(&qword_1000C8C68, &qword_1000AC5D8);
  __chkstk_darwin(((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = &v66 - v6;
  v7 = sub_1000A26C8();
  v75 = *(v7 - 8);
  __chkstk_darwin(*(v75 + 64));
  v74 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v66 - v9;
  v76 = sub_1000A2498();
  v10 = *(v76 - 1);
  __chkstk_darwin(*(v10 + 64));
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v66 - v13;
  v78 = sub_1000A3338();
  v15 = sub_1000A3328();
  [v15 setReturnsObjectsAsFaults:0];
  [v15 setResultType:0];
  sub_10000275C(&qword_1000C8600, &qword_1000AC5E0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000AC0E0;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 32) = 0xD000000000000012;
  *(v16 + 40) = 0x80000001000A70F0;
  isa = sub_1000A3B48().super.isa;

  v71 = v15;
  [v15 setPropertiesToFetch:isa];

  v18 = objc_allocWithZone(NSSortDescriptor);
  v19 = sub_1000A3A78();
  v20 = [v18 initWithKey:v19 ascending:1];

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000ABC60;
  *(v21 + 32) = v20;
  sub_100032224(0, &qword_1000C7EF0, NSSortDescriptor_ptr);
  v67 = v20;
  v22 = sub_1000A3B48().super.isa;

  [v15 setSortDescriptors:v22];

  v72 = sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  v69 = "historicalGuidance";
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000AC530;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_1000321D0();
  v24 = v73;
  *(v23 + 32) = v79;
  *(v23 + 40) = v24;

  sub_1000A2248();
  v25 = sub_1000A2418().super.isa;
  v26 = *(v10 + 8);
  v79 = v10 + 8;
  v27 = v76;
  v26(v14, v76);
  v28 = sub_100032224(0, &qword_1000C7F18, NSDate_ptr);
  *(v23 + 96) = v28;
  v29 = sub_1000548D8();
  *(v23 + 104) = v29;
  *(v23 + 72) = v25;
  sub_1000A2288();
  v30 = sub_1000A2418().super.isa;
  v31 = v12;
  v32 = v70;
  v26(v31, v27);
  *(v23 + 136) = v28;
  *(v23 + 144) = v29;
  *(v23 + 112) = v30;
  v33 = sub_1000A3C98();
  v34 = v71;
  [v71 setPredicate:v33];
  [v34 setFetchBatchSize:1];
  v35 = v82;
  v36 = sub_1000A3D68();
  if (v35)
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v37 = sub_1000A3538();
    sub_100001E38(v37, qword_1000C96B8);
    swift_errorRetain();
    v38 = sub_1000A3518();
    v39 = sub_1000A3CC8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v33;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to fetch historical guidance from cache: %@", v41, 0xCu);
      sub_100022154(v42, &unk_1000C7740, &qword_1000AB610);

      v33 = v40;
    }

    else
    {
    }

    goto LABEL_20;
  }

  v44 = v36;
  if (!(v36 >> 62))
  {
    v45 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v75;
    if (v45)
    {
      goto LABEL_8;
    }

LABEL_24:

LABEL_20:
    v64 = &_swiftEmptyArrayStorage;
LABEL_22:
    [v32 reset];

    *v68 = v64;
    return;
  }

  v65 = v36;
  v45 = sub_1000A3EC8();
  v44 = v65;
  v46 = v75;
  if (!v45)
  {
    goto LABEL_24;
  }

LABEL_8:
  v69 = v33;
  if (v45 >= 1)
  {
    v47 = 0;
    v78 = (v46 + 56);
    v79 = v44 & 0xC000000000000001;
    v76 = (v46 + 32);
    v72 = v46 + 8;
    v73 = (v46 + 16);
    v82 = &_swiftEmptyArrayStorage;
    v80 = v44;
    do
    {
      v48 = v45;
      if (v79)
      {
        v49 = sub_1000A3EA8();
      }

      else
      {
        v49 = *(v44 + 8 * v47 + 32);
      }

      v50 = v49;
      sub_1000A2208();
      swift_allocObject();
      sub_1000A21F8();
      v51 = [v50 historicalGuidance];
      v52 = sub_1000A23B8();
      v54 = v53;

      sub_100054940(&qword_1000C8C70, &type metadata accessor for HSHistoricalGuidance, &protocol conformance descriptor for HSHistoricalGuidance);
      v55 = v81;
      sub_1000A21E8();
      sub_10003228C(v52, v54);

      (*v78)(v55, 0, 1, v7);
      v56 = v55;
      v57 = v77;
      v58 = *v76;
      (*v76)(v77, v56, v7);
      v59 = v74;
      (*v73)(v74, v57, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_1000951A0(0, v82[2] + 1, 1, v82);
      }

      v61 = v82[2];
      v60 = v82[3];
      if (v61 >= v60 >> 1)
      {
        v82 = sub_1000951A0((v60 > 1), v61 + 1, 1, v82);
      }

      v62 = v75;
      (*(v75 + 8))(v77, v7);
      v63 = v82;
      v82[2] = v61 + 1;
      v58(&v63[((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v61], v59, v7);
      ++v47;
      v45 = v48;
      v44 = v80;
    }

    while (v48 != v47);

    v33 = v69;
    v32 = v70;
    v64 = v82;
    goto LABEL_22;
  }

  __break(1u);
}

unint64_t sub_1000531A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v49 = a4;
  v45 = sub_1000A2C08();
  v6 = *(v45 - 8);
  __chkstk_darwin(*(v6 + 64));
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000A3538();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(*(v47 + 64));
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  __chkstk_darwin(((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = &v42 - v12;
  sub_1000A3338();
  v13 = sub_1000A3328();
  [v13 setResultType:0];
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000AC0E0;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_1000321D0();
  v43 = a1;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;

  v15 = sub_1000A3C98();
  [v13 setPredicate:v15];
  [v13 setFetchLimit:1];
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = sub_1000A3A78();
  v18 = [v16 initWithKey:v17 ascending:0];

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000ABC60;
  *(v19 + 32) = v18;
  sub_100032224(0, &qword_1000C7EF0, NSSortDescriptor_ptr);
  v20 = v18;
  isa = sub_1000A3B48().super.isa;
  v22 = v50;

  [v13 setSortDescriptors:isa];

  v23 = v51;
  result = sub_1000A3D68();
  if (!v23)
  {
    v33 = v44;
    if (result >> 62)
    {
      v39 = result;
      v40 = sub_1000A3EC8();
      result = v39;
      v34 = v15;
      if (v40)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v34 = v15;
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_7:
        if ((result & 0xC000000000000001) != 0)
        {
          v35 = sub_1000A3EA8();
        }

        else
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v35 = *(result + 32);
        }

        v36 = v35;

        v37 = [v36 intervalEnd];

        sub_1000A2468();
        v38 = sub_1000A2498();
        (*(*(v38 - 8) + 56))(v33, 0, 1, v38);
        goto LABEL_13;
      }
    }

    v41 = sub_1000A2498();
    (*(*(v41 - 8) + 56))(v33, 1, 1, v41);
LABEL_13:
    [v22 reset];

    return sub_1000549A8(v33, v49);
  }

  v25 = v45;
  (*(v6 + 104))(v8, enum case for Logging.daemon(_:), v45);
  v26 = v46;
  sub_1000A2B68();
  (*(v6 + 8))(v8, v25);

  v27 = sub_1000A3518();
  v28 = sub_1000A3CC8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = v22;
    v31 = swift_slowAlloc();
    v52 = v31;
    *v29 = 136380675;
    *(v29 + 4) = sub_1000954AC(v43, a2, &v52);
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed to fetch latest hist guidance entry for %{private}s", v29, 0xCu);
    sub_10000F7B8(v31);
    v22 = v30;
  }

  (*(v47 + 8))(v26, v48);
  [v22 reset];

  v32 = sub_1000A2498();
  return (*(*(v32 - 8) + 56))(v49, 1, 1, v32);
}

uint64_t sub_100053844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000A2498();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100053950, 0, 0);
}

uint64_t sub_100053950()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];
  v19 = v0[6];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = objc_autoreleasePoolPush();
  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = v4;
  sub_1000A3D58();

  objc_autoreleasePoolPop(v7);
  sub_10003E114(v1, v2);
  v9 = (*(v3 + 48))(v2, 1, v19);
  v11 = v0[10];
  v10 = v0[11];
  if (v9 == 1)
  {
    sub_100022154(v0[11], &qword_1000C7F58, &qword_1000AC770);
    sub_100022154(v11, &qword_1000C7F58, &qword_1000AC770);
    v12 = 1;
  }

  else
  {
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];
    (*(v14 + 32))(v13, v0[10], v15);
    sub_100054940(&qword_1000C7F50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v16 = sub_1000A3A48();
    (*(v14 + 8))(v13, v15);
    sub_100022154(v10, &qword_1000C7F58, &qword_1000AC770);
    v12 = v16 ^ 1;
  }

  v17 = v0[1];

  return v17(v12 & 1);
}

uint64_t sub_100053B70(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000A2498();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100053C30, 0, 0);
}

uint64_t sub_100053C30()
{
  v1 = v0[3];
  sub_1000A2A38();
  v0[7] = sub_1000A2A28();
  sub_1000A2478();
  v6 = &async function pointer to dispatch thunk of HomeEnergyManager.saveAllHistorical(gridID:untilDate:mockCompleteSession:deterministicMock:) + async function pointer to dispatch thunk of HomeEnergyManager.saveAllHistorical(gridID:untilDate:mockCompleteSession:deterministicMock:);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100053D18;
  v3 = v0[6];
  v4 = v0[2];

  return (v6)(v4, v1, v3, 0, 0);
}

uint64_t sub_100053D18()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_100053EF0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100053EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  sub_100001E38(v4, qword_1000C96B8);
  swift_errorRetain();
  v5 = sub_1000A3518();
  v6 = sub_1000A3CC8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to refresh historical guidance: %@", v7, 0xCu);
    sub_100022154(v8, &unk_1000C7740, &qword_1000AB610);
  }

  else
  {
  }

  v10 = *(v3 + 8);

  return v10();
}

uint64_t sub_10005409C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1000A2498();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100054160, 0, 0);
}

uint64_t sub_100054160()
{
  if (qword_1000C7568 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C9648;
  *(v0 + 72) = qword_1000C9648;

  return _swift_task_switch(sub_1000541F8, v1, 0);
}

uint64_t sub_1000541F8()
{
  v1 = sub_10004060C();
  v2 = [v1 newBackgroundContext];
  *(v0 + 80) = v2;
  v3 = sub_1000A3A78();
  [v2 setTransactionAuthor:v3];

  [v2 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [v2 setUndoManager:0];
  [v2 setShouldRefreshAfterSave:1];
  [v2 setStalenessInterval:0.0];
  [v2 setShouldDeleteInaccessibleFaults:1];

  return _swift_task_switch(sub_100054334, 0, 0);
}

uint64_t sub_100054334(uint64_t a1)
{
  sub_1000A2288();
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_1000543DC;
  v3 = v1[10];
  v4 = v1[8];
  v6 = v1[3];
  v5 = v1[4];

  return sub_100053844(v6, v5, v4, v3);
}

uint64_t sub_1000543DC(char a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 104) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10005453C, 0, 0);
}

uint64_t sub_10005453C()
{
  if (*(v0 + 104) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_1000546BC;
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);

    return sub_100053B70(v3, v2);
  }

  else
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 24);
    v11 = *(v0 + 32);
    v7 = objc_autoreleasePoolPush();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = v11;
    *(v8 + 40) = v5;
    sub_10000275C(&qword_1000C8C60, &qword_1000AC5C0);
    sub_1000A3D58();

    objc_autoreleasePoolPop(v7);

    v9 = *(v0 + 16);

    v10 = *(v0 + 8);

    return v10(v9);
  }
}

uint64_t sub_1000546BC()
{

  return _swift_task_switch(sub_1000547B8, 0, 0);
}

uint64_t sub_1000547B8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v8 = *(v0 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v8;
  *(v4 + 40) = v1;
  sub_10000275C(&qword_1000C8C60, &qword_1000AC5C0);
  sub_1000A3D58();

  objc_autoreleasePoolPop(v3);

  v5 = *(v0 + 16);

  v6 = *(v0 + 8);

  return v6(v5);
}

unint64_t sub_1000548D8()
{
  result = qword_1000C7F20;
  if (!qword_1000C7F20)
  {
    sub_100032224(255, &qword_1000C7F18, NSDate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7F20);
  }

  return result;
}

uint64_t sub_100054940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000549A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100054A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_1000A3A78();
    if (a3)
    {
LABEL_3:
      v7 = sub_1000A2348();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_100054AA8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000A2AD8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100054B74, 0, 0);
}

uint64_t sub_100054B74()
{
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = sub_100001E38(v3, qword_1000C95F8);
  swift_beginAccess();
  (*(v4 + 16))(v1, v5, v3);
  sub_1000A2A58();
  sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v5) = sub_1000A3DF8();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5 & 1) != 0 && (sub_1000A2D18())
  {
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_100054DFC;

    return sub_1000683FC();
  }

  else
  {
    [*(v0 + 48) coordinate];
    v10 = v9;
    v12 = v11;
    v13 = [objc_opt_self() sharedSession];
    *(v0 + 112) = v13;
    v14 = swift_task_alloc();
    *(v0 + 120) = v14;
    *v14 = v0;
    v14[1] = sub_100054F68;
    v15.n128_u64[0] = v10;
    v16.n128_u64[0] = v12;

    return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v13, v15, v16);
  }
}

uint64_t sub_100054DFC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 96) = a2;
    *(v6 + 104) = a1;

    return _swift_task_switch(sub_100060660, 0, 0);
  }
}

uint64_t sub_100054F68(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v7 = sub_100060640;
  }

  else
  {

    *(v6 + 96) = a2;
    *(v6 + 104) = a1;
    v7 = sub_100060660;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100055234(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a4;
  v10 = a2;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_10005531C;

  return sub_1000569A0(v8, a2);
}

uint64_t sub_10005531C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (a2)
  {
    v9 = sub_1000A3A78();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v4 + 40);
  (v10)[2](v10, v9);

  _Block_release(v10);
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1000554B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_100055558;

  return sub_100057BC4(a5, a6);
}

uint64_t sub_100055558(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v7 = sub_100060648;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v7 = sub_10006065C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000557F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_100055890;

  return sub_100059998(a5, a6);
}

uint64_t sub_100055890(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v7 = sub_100055A3C;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v7 = sub_1000559C4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000559C4()
{
  (*(v0 + 16))(*(v0 + 56), *(v0 + 48), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100055A3C()
{
  v1 = v0[5];
  v2 = v0[2];
  swift_errorRetain();
  v2(0, 0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100055DA0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000A2AD8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100055E6C, 0, 0);
}

uint64_t sub_100055E6C()
{
  if (qword_1000C7560 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = sub_100001E38(v3, qword_1000C95F8);
  swift_beginAccess();
  (*(v4 + 16))(v1, v5, v3);
  sub_1000A2A58();
  sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
  LOBYTE(v5) = sub_1000A3DF8();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5 & 1) != 0 && (sub_1000A2D18())
  {
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_1000560F4;

    return sub_1000683FC();
  }

  else
  {
    [*(v0 + 48) coordinate];
    v10 = v9;
    v12 = v11;
    v13 = [objc_opt_self() sharedSession];
    *(v0 + 112) = v13;
    v14 = swift_task_alloc();
    *(v0 + 120) = v14;
    *v14 = v0;
    v14[1] = sub_1000562D8;
    v15.n128_u64[0] = v10;
    v16.n128_u64[0] = v12;

    return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v13, v15, v16);
  }
}

uint64_t sub_1000560F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 96) = a2;
    *(v6 + 104) = a1;

    return _swift_task_switch(sub_100056260, 0, 0);
  }
}

uint64_t sub_100056260()
{
  v1 = v0[12];
  v2 = v0[5];
  *v2 = v0[13];
  v2[1] = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000562D8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v7 = sub_100056414;
  }

  else
  {

    *(v6 + 96) = a2;
    *(v6 + 104) = a1;
    v7 = sub_100056260;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100056414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100056618(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_1000A3A88();
  v9 = v8;
  v4[5] = v8;
  v10 = a4;
  v11 = a2;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100056710;

  return sub_10005E240(v7, v9, a2);
}

uint64_t sub_100056710(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (a2)
  {
    v8 = sub_1000A3A78();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v4 + 32);
  (v9)[2](v9, v8);

  _Block_release(v9);
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1000568B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014898;

  return sub_100056618(v2, v3, v5, v4);
}

uint64_t sub_1000569A0(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_1000A2AD8();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100056A6C, 0, 0);
}

uint64_t sub_100056A6C()
{
  sub_1000A3AA8();
  v0[13] = os_transaction_create();

  sub_10003690C(v1, v2, v3);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  v0[14] = sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connection established to EnergyKit API", v7, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v8 = qword_1000C95F0;
  v0[15] = qword_1000C95F0;

  return _swift_task_switch(sub_100056C28, v8, 0);
}

uint64_t sub_100056C28()
{
  *(v0 + 128) = *(*(v0 + 120) + 120);

  return _swift_task_switch(sub_100056CA0, 0, 0);
}

uint64_t sub_100056CA0()
{
  if (v0[16])
  {

    v1 = qword_1000C95F0;
    v0[17] = qword_1000C95F0;

    return _swift_task_switch(sub_100056DF4, v1, 0);
  }

  else
  {
    v2 = sub_1000A3518();
    v3 = sub_1000A3CC8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[SiteOperations] Invalid application-identifier", v4, 2u);
    }

    swift_unknownObjectRelease();

    v5 = v0[1];

    return v5(0, 0);
  }
}

uint64_t sub_100056DF4()
{
  *(v0 + 232) = *(*(v0 + 136) + 144);

  return _swift_task_switch(sub_100056E64, 0, 0);
}

uint64_t sub_100056E64(uint64_t a1)
{
  if (*(v1 + 232) == 1)
  {
    v2 = *(v1 + 56);
    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v1 + 56);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Location: %@", v6, 0xCu);
      sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);
    }

    v9 = *(v1 + 64);

    if (v9)
    {
      v10 = *(v1 + 56);
      v11 = sub_1000A2BF8();
      *(v1 + 144) = v11;
      sub_1000A2BC8();
      v12 = swift_task_alloc();
      *(v1 + 152) = v12;
      *(v12 + 16) = v10;
      v13 = swift_task_alloc();
      *(v1 + 160) = v13;
      *v13 = v1;
      v13[1] = sub_100057378;

      return static EKSandboxExtension.withResources<A>(resources:_:)(v1 + 40, v11, &unk_1000AC698, v12, &type metadata for String);
    }

    else
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v19 = *(v1 + 88);
      v18 = *(v1 + 96);
      v20 = *(v1 + 72);
      v21 = *(v1 + 80);
      v22 = sub_100001E38(v20, qword_1000C95F8);
      swift_beginAccess();
      (*(v21 + 16))(v18, v22, v20);
      sub_1000A2A58();
      sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
      LOBYTE(v22) = sub_1000A3DF8();
      v23 = *(v21 + 8);
      v23(v19, v20);
      v23(v18, v20);
      if (v22 & 1) != 0 && (sub_1000A2D18())
      {
        v24 = swift_task_alloc();
        *(v1 + 176) = v24;
        *v24 = v1;
        v24[1] = sub_10005754C;

        return sub_1000683FC();
      }

      else
      {
        [*(v1 + 56) coordinate];
        v26 = v25;
        v28 = v27;
        v29 = [objc_opt_self() sharedSession];
        *(v1 + 208) = v29;
        v30 = swift_task_alloc();
        *(v1 + 216) = v30;
        *v30 = v1;
        v30[1] = sub_100057890;
        v31.n128_u64[0] = v26;
        v32.n128_u64[0] = v28;

        return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v29, v31, v32);
      }
    }
  }

  else
  {
    v14 = sub_1000A3518();
    v15 = sub_1000A3CC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[SiteOperations] Unauthorized", v16, 2u);
    }

    swift_unknownObjectRelease();

    v17 = *(v1 + 8);

    return v17(0, 0);
  }
}

uint64_t sub_100057378()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100057A3C;
  }

  else
  {
    v2 = sub_1000574C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000574C8()
{
  swift_unknownObjectRelease();
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_10005754C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v6[25] = v2;
    v7 = sub_100057708;
  }

  else
  {
    v6[23] = a2;
    v6[24] = a1;
    v7 = sub_100057680;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100057680()
{
  v1 = v0[23];
  swift_unknownObjectRelease();
  v2 = v0[24];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_100057708()
{
  swift_errorRetain();
  v1 = sub_1000A3518();
  v2 = sub_1000A3CC8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[SiteOperations] Grid Fetch Failed: %@", v3, 0xCu);
    sub_100022154(v4, &unk_1000C7740, &qword_1000AB610);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 8);

  return v6(0, 0);
}

uint64_t sub_100057890(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 224) = v2;

  if (v2)
  {
    v7 = sub_1000579CC;
  }

  else
  {

    *(v6 + 184) = a2;
    *(v6 + 192) = a1;
    v7 = sub_100057680;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000579CC()
{
  *(v0 + 200) = *(v0 + 224);

  return _swift_task_switch(sub_100057708, 0, 0);
}

uint64_t sub_100057A3C()
{
  swift_errorRetain();
  v1 = sub_1000A3518();
  v2 = sub_1000A3CC8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[SiteOperations] Grid Fetch Failed: %@", v3, 0xCu);
    sub_100022154(v4, &unk_1000C7740, &qword_1000AB610);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 8);

  return v6(0, 0);
}

uint64_t sub_100057BC4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_10000275C(&qword_1000C8C78, &qword_1000AC628);
  v2[10] = swift_task_alloc();
  v3 = sub_1000A25D8();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = sub_1000A2AD8();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100057D30, 0, 0);
}

uint64_t sub_100057D30()
{
  sub_1000A3AA8();
  v0[19] = os_transaction_create();

  sub_10003690C(v1, v2, v3);
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v4 = sub_1000A3538();
  v0[20] = sub_100001E38(v4, qword_1000C96B8);
  v5 = sub_1000A3518();
  v6 = sub_1000A3CB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connection established to EnergyKit API", v7, 2u);
  }

  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v8 = qword_1000C95F0;
  v0[21] = qword_1000C95F0;

  return _swift_task_switch(sub_100057EEC, v8, 0);
}

uint64_t sub_100057EEC()
{
  *(v0 + 176) = *(*(v0 + 168) + 120);

  return _swift_task_switch(sub_100057F64, 0, 0);
}

uint64_t sub_100057F64()
{
  if (v0[22])
  {

    v1 = qword_1000C95F0;
    v0[23] = qword_1000C95F0;

    return _swift_task_switch(sub_1000580DC, v1, 0);
  }

  else
  {
    v2 = sub_1000A3518();
    v3 = sub_1000A3CC8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[SiteOperations] Invalid application-identifier", v4, 2u);
    }

    swift_unknownObjectRelease();

    v5 = v0[1];

    return v5(0, 0);
  }
}

uint64_t sub_1000580DC()
{
  *(v0 + 280) = *(*(v0 + 184) + 144);

  return _swift_task_switch(sub_10005814C, 0, 0);
}

uint64_t sub_10005814C(uint64_t a1)
{
  if (*(v1 + 280) == 1)
  {
    v2 = *(v1 + 64);
    v3 = sub_1000A3518();
    v4 = sub_1000A3CB8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v1 + 64);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, v4, "[SiteOperations] Location: %@", v6, 0xCu);
      sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);
    }

    v9 = *(v1 + 72);

    if (v9)
    {
      v10 = *(v1 + 64);
      v11 = sub_1000A39B8();
      *(v1 + 192) = v11;
      sub_1000A35D8();
      v12 = swift_task_alloc();
      *(v1 + 200) = v12;
      *(v12 + 16) = v10;
      v13 = swift_task_alloc();
      *(v1 + 208) = v13;
      *v13 = v1;
      v13[1] = sub_100058684;

      return static SandboxExtension.withResources<A>(resources:_:)(v1 + 40, v11, &unk_1000AC660, v12, &type metadata for String);
    }

    else
    {
      if (qword_1000C7560 != -1)
      {
        swift_once();
      }

      v19 = *(v1 + 136);
      v18 = *(v1 + 144);
      v20 = *(v1 + 120);
      v21 = *(v1 + 128);
      v22 = sub_100001E38(v20, qword_1000C95F8);
      swift_beginAccess();
      (*(v21 + 16))(v18, v22, v20);
      sub_1000A2A58();
      sub_100060224(&qword_1000C7D78, &type metadata accessor for MockEnergyKitOptions, &protocol conformance descriptor for MockEnergyKitOptions);
      LOBYTE(v22) = sub_1000A3DF8();
      v23 = *(v21 + 8);
      v23(v19, v20);
      v23(v18, v20);
      if (v22 & 1) != 0 && (sub_1000A2D18())
      {
        v24 = swift_task_alloc();
        *(v1 + 224) = v24;
        *v24 = v1;
        v24[1] = sub_100058884;

        return sub_1000683FC();
      }

      else
      {
        [*(v1 + 64) coordinate];
        v26 = v25;
        v28 = v27;
        v29 = [objc_opt_self() sharedSession];
        *(v1 + 256) = v29;
        v30 = swift_task_alloc();
        *(v1 + 264) = v30;
        *v30 = v1;
        v30[1] = sub_10005912C;
        v31.n128_u64[0] = v26;
        v32.n128_u64[0] = v28;

        return static EnergyServices.gridIDLookup(forCoordinate:withSession:)(v29, v31, v32);
      }
    }
  }

  else
  {
    v14 = sub_1000A3518();
    v15 = sub_1000A3CC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[SiteOperations] Unauthorized", v16, 2u);
    }

    swift_unknownObjectRelease();

    v17 = *(v1 + 8);

    return v17(0, 0);
  }
}

uint64_t sub_100058684()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1000592D8;
  }

  else
  {
    v2 = sub_1000587D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000587D4()
{
  swift_unknownObjectRelease();
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_100058884(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v6[31] = v2;
    v7 = sub_100058A6C;
  }

  else
  {
    v6[29] = a2;
    v6[30] = a1;
    v7 = sub_1000589B8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000589B8()
{
  v1 = v0[29];
  swift_unknownObjectRelease();
  v2 = v0[30];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_100058A6C()
{
  v1 = v0[31];
  swift_errorRetain();
  v2 = sub_1000A3518();
  v3 = sub_1000A3CC8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[SiteOperations] Grid Fetch Failed: %@", v4, 0xCu);
    sub_100022154(v5, &unk_1000C7740, &qword_1000AB610);
  }

  v0[7] = v1;
  swift_errorRetain();
  sub_10000275C(&qword_1000C7860, &qword_1000AB7B8);
  if (swift_dynamicCast())
  {
    v7 = v0[14];
    v9 = v0 + 13;
    v8 = v0[13];
    v10 = v0[11];
    v11 = v0[12];
    v12 = v0[10];
    (*(v11 + 56))(v12, 0, 1, v10);
    (*(v11 + 32))(v7, v12, v10);
    (*(v11 + 16))(v8, v7, v10);
    v13 = (*(v11 + 88))(v8, v10);
    if (v13 == enum case for NetworkError.urlNetworkError(_:) || v13 == enum case for NetworkError.internalFailure(_:))
    {
      v14 = v0[14];
      v15 = v0[11];
      v16 = v0[12];
      v17 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, enum case for EnergyKitError.guidanceUnavailable(_:), v17);
      swift_willThrow();
      swift_unknownObjectRelease();

      v19 = *(v16 + 8);
      v19(v14, v15);
      v19(*v9, v0[11]);
LABEL_16:

      v31 = v0[1];

      return v31();
    }

    if (v13 != enum case for NetworkError.serverFailure(_:) && v13 != enum case for NetworkError.notConnectedToInternet(_:) && v13 != enum case for NetworkError.cannotFindHost(_:))
    {
      if (v13 == enum case for NetworkError.dataUnavailable(_:))
      {
        v25 = v0[12];
        v26 = sub_1000A3598();
        sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
        swift_allocError();
        v28 = v32;
        v29 = &enum case for EnergyKitError.unsupportedRegion(_:);
        goto LABEL_14;
      }

      if (v13 != enum case for NetworkError.responseDecodingError(_:))
      {
        v33 = v0[14];
        v34 = v0[11];
        v35 = v0[12];
        v39 = enum case for NetworkError.unknown(_:);
        v36 = v13;
        v37 = sub_1000A3598();
        sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
        swift_allocError();
        (*(*(v37 - 8) + 104))(v38, enum case for EnergyKitError.guidanceUnavailable(_:), v37);
        swift_willThrow();
        swift_unknownObjectRelease();

        v30 = *(v35 + 8);
        v30(v33, v34);
        if (v36 == v39)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    v25 = v0[12];
    v26 = sub_1000A3598();
    sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    v28 = v27;
    v29 = &enum case for EnergyKitError.guidanceUnavailable(_:);
LABEL_14:
    (*(*(v26 - 8) + 104))(v28, *v29, v26);
    swift_willThrow();
    swift_unknownObjectRelease();

    v30 = *(v25 + 8);
    v9 = v0 + 14;
LABEL_15:
    v30(*v9, v0[11]);
    goto LABEL_16;
  }

  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[10];
  swift_unknownObjectRelease();

  (*(v21 + 56))(v22, 1, 1, v20);
  sub_100022154(v22, &qword_1000C8C78, &qword_1000AC628);

  v23 = v0[1];

  return v23(0, 0);
}

uint64_t sub_10005912C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {
    v7 = sub_100059268;
  }

  else
  {

    *(v6 + 232) = a2;
    *(v6 + 240) = a1;
    v7 = sub_1000589B8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100059268()
{
  *(v0 + 248) = *(v0 + 272);

  return _swift_task_switch(sub_100058A6C, 0, 0);
}

uint64_t sub_1000592D8()
{
  v1 = v0[27];
  swift_errorRetain();
  v2 = sub_1000A3518();
  v3 = sub_1000A3CC8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[SiteOperations] Grid Fetch Failed: %@", v4, 0xCu);
    sub_100022154(v5, &unk_1000C7740, &qword_1000AB610);
  }

  v0[7] = v1;
  swift_errorRetain();
  sub_10000275C(&qword_1000C7860, &qword_1000AB7B8);
  if (swift_dynamicCast())
  {
    v7 = v0[14];
    v9 = v0 + 13;
    v8 = v0[13];
    v10 = v0[11];
    v11 = v0[12];
    v12 = v0[10];
    (*(v11 + 56))(v12, 0, 1, v10);
    (*(v11 + 32))(v7, v12, v10);
    (*(v11 + 16))(v8, v7, v10);
    v13 = (*(v11 + 88))(v8, v10);
    if (v13 == enum case for NetworkError.urlNetworkError(_:) || v13 == enum case for NetworkError.internalFailure(_:))
    {
      v14 = v0[14];
      v15 = v0[11];
      v16 = v0[12];
      v17 = sub_1000A3598();
      sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, enum case for EnergyKitError.guidanceUnavailable(_:), v17);
      swift_willThrow();
      swift_unknownObjectRelease();

      v19 = *(v16 + 8);
      v19(v14, v15);
      v19(*v9, v0[11]);
LABEL_16:

      v31 = v0[1];

      return v31();
    }

    if (v13 != enum case for NetworkError.serverFailure(_:) && v13 != enum case for NetworkError.notConnectedToInternet(_:) && v13 != enum case for NetworkError.cannotFindHost(_:))
    {
      if (v13 == enum case for NetworkError.dataUnavailable(_:))
      {
        v25 = v0[12];
        v26 = sub_1000A3598();
        sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
        swift_allocError();
        v28 = v32;
        v29 = &enum case for EnergyKitError.unsupportedRegion(_:);
        goto LABEL_14;
      }

      if (v13 != enum case for NetworkError.responseDecodingError(_:))
      {
        v33 = v0[14];
        v34 = v0[11];
        v35 = v0[12];
        v39 = enum case for NetworkError.unknown(_:);
        v36 = v13;
        v37 = sub_1000A3598();
        sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
        swift_allocError();
        (*(*(v37 - 8) + 104))(v38, enum case for EnergyKitError.guidanceUnavailable(_:), v37);
        swift_willThrow();
        swift_unknownObjectRelease();

        v30 = *(v35 + 8);
        v30(v33, v34);
        if (v36 == v39)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    v25 = v0[12];
    v26 = sub_1000A3598();
    sub_100060224(&qword_1000C7830, &type metadata accessor for EnergyKitError, &protocol conformance descriptor for EnergyKitError);
    swift_allocError();
    v28 = v27;
    v29 = &enum case for EnergyKitError.guidanceUnavailable(_:);
LABEL_14:
    (*(*(v26 - 8) + 104))(v28, *v29, v26);
    swift_willThrow();
    swift_unknownObjectRelease();

    v30 = *(v25 + 8);
    v9 = v0 + 14;
LABEL_15:
    v30(*v9, v0[11]);
    goto LABEL_16;
  }

  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[10];
  swift_unknownObjectRelease();

  (*(v21 + 56))(v22, 1, 1, v20);
  sub_100022154(v22, &qword_1000C8C78, &qword_1000AC628);

  v23 = v0[1];

  return v23(0, 0);
}