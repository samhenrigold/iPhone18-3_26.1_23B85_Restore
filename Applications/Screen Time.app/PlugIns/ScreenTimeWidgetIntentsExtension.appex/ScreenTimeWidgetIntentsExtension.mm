uint64_t sub_100001674@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000708C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000016AC()
{
  v0 = sub_10000704C();
  sub_1000026F0(v0, qword_1000114C0);
  sub_100002510(v0, qword_1000114C0);
  return sub_10000703C();
}

id sub_100001820(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000018A0(uint64_t a1)
{
  if (qword_1000114A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000704C();
  sub_100002510(v2, qword_1000114C0);
  v3 = sub_10000702C();
  v4 = sub_10000710C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "provide user options collection", v5, 2u);
  }

  if (qword_1000114B0 != -1)
  {
    swift_once();
  }

  v6 = qword_100011C10;
  v7 = type metadata accessor for XPCPersistentStoreManager();
  v38[3] = v7;
  v38[4] = &off_10000C6F8;
  v38[0] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = &_swiftEmptyArrayStorage;
  v9 = *sub_10000258C(v38, v7);
  swift_retain_n();

  sub_100002A30();
  if (*(v9 + 24) == 1)
  {
    v10 = [*(v9 + 16) newBackgroundContext];
    [v10 setAutomaticallyMergesChangesFromParent:1];
    [v10 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v11 = swift_allocObject();
    v11[2] = sub_10000278C;
    v11[3] = v8;
    v11[4] = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1000027FC;
    *(v12 + 24) = v11;
    aBlock[4] = sub_1000027F4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100001878;
    aBlock[3] = &unk_10000C6D0;
    v13 = _Block_copy(aBlock);

    v14 = v10;

    [v14 performBlockAndWait:v13];

    _Block_release(v13);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  sub_100004464(v8);

LABEL_11:
  swift_beginAccess();
  v15 = *(v8 + 16);

  sub_100002658(v38);
  v16 = *(v15 + 16);
  if (v16)
  {
    v38[0] = &_swiftEmptyArrayStorage;
    sub_10000718C();
    type metadata accessor for STUser();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35._object = v15;
    v17 = (v15 + 57);
    do
    {
      v28 = *(v17 - 25);
      v29 = *v17;
      v30 = *(v17 - 17) == 1701736270 && *(v17 - 9) == 0xE400000000000000;
      if (v30 || (sub_1000071EC() & 1) != 0)
      {
        v18 = objc_opt_self();

        v19 = v28;
        v20 = [v18 mainBundle];
        v35._countAndFlagsBits = 0xE000000000000000;
        v39._object = 0x8000000100008970;
        v39._countAndFlagsBits = 0xD000000000000016;
        v40.value._countAndFlagsBits = 0;
        v40.value._object = 0;
        v21.super.isa = v20;
        v41._countAndFlagsBits = 0;
        v41._object = 0xE000000000000000;
        sub_100006FBC(v39, v40, v21, v41, 0, v35);
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v31 = v28;
      }

      v22 = [v28 stringValue];
      sub_10000708C();

      v23 = objc_allocWithZone(ObjCClassFromMetadata);
      v24 = sub_10000707C();

      v25 = sub_10000707C();

      v26 = [v23 initWithIdentifier:v24 displayString:v25];

      v27 = [objc_allocWithZone(NSNumber) initWithBool:v29];
      [v26 setIsRemote:v27];

      sub_10000716C();
      sub_10000719C();
      sub_1000071AC();
      sub_10000717C();
      v17 += 32;
      --v16;
    }

    while (v16);
  }

  v32 = objc_allocWithZone(INObjectCollection);
  type metadata accessor for STUser();
  isa = sub_1000070AC().super.isa;

  v34 = [v32 initWithItems:isa];

  (*(a1 + 16))(a1, v34, 0);
}

id sub_100001ED4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2 == 1701736270 && a3 == 0xE400000000000000;
  if (v6 || (sub_1000071EC() & 1) != 0)
  {
    v7 = [objc_opt_self() mainBundle];
    v16._countAndFlagsBits = 0xE000000000000000;
    v17._object = 0x8000000100008970;
    v17._countAndFlagsBits = 0xD000000000000016;
    v18.value._countAndFlagsBits = 0;
    v18.value._object = 0;
    v8.super.isa = v7;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    sub_100006FBC(v17, v18, v8, v19, 0, v16);
  }

  else
  {
  }

  type metadata accessor for STUser();
  v9 = [a1 stringValue];
  sub_10000708C();

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_10000707C();

  v12 = sub_10000707C();

  v13 = [v10 initWithIdentifier:v11 displayString:v12];

  v14 = [objc_allocWithZone(NSNumber) initWithBool:a4 & 1];
  [v13 setIsRemote:v14];

  return v13;
}

id sub_1000020A8()
{
  if (qword_1000114A0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000704C();
  sub_100002510(v0, qword_1000114C0);
  v1 = sub_10000702C();
  v2 = sub_10000710C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "get default user for widget. getting local user", v3, 2u);
  }

  if (qword_1000114B0 != -1)
  {
    swift_once();
  }

  v4 = qword_100011C10;
  v5 = type metadata accessor for XPCPersistentStoreManager();
  v33[3] = v5;
  v33[4] = &off_10000C6F8;
  v33[0] = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v7 = *sub_10000258C(v33, v5);
  swift_retain_n();

  sub_100002A30();
  if (*(v7 + 24) == 1)
  {
    v8 = [*(v7 + 16) newBackgroundContext];
    [v8 setAutomaticallyMergesChangesFromParent:1];
    [v8 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v9 = swift_allocObject();
    v9[2] = sub_1000025D0;
    v9[3] = v6;
    v9[4] = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1000026A4;
    *(v10 + 24) = v9;
    v32[4] = sub_1000026B0;
    v32[5] = v10;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 1107296256;
    v32[2] = sub_100001878;
    v32[3] = &unk_10000C630;
    v11 = _Block_copy(v32);

    v12 = v8;

    [v12 performBlockAndWait:v11];

    _Block_release(v11);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v13 = sub_100003D9C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  swift_beginAccess();
  v20 = *(v6 + 16);
  v21 = *(v6 + 24);
  v22 = *(v6 + 32);
  *(v6 + 16) = v13;
  *(v6 + 24) = v15;
  *(v6 + 32) = v17;
  *(v6 + 40) = v19;
  sub_1000025D8(v20, v21, v22);

LABEL_11:
  swift_beginAccess();
  v23 = *(v6 + 16);
  v24 = *(v6 + 24);
  v25 = *(v6 + 32);
  v26 = *(v6 + 40);
  sub_100002618(v23, v24, v25);

  sub_100002658(v33);
  if (v23)
  {
    v27 = sub_100001ED4(v23, v24, v25, HIBYTE(v26) & 1);
  }

  else
  {
    v28 = sub_10000702C();
    v29 = sub_1000070FC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "couldn't fetch local user to use as default user", v30, 2u);
    }

    return 0;
  }

  return v27;
}

uint64_t sub_100002510(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002548()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  return _swift_deallocObject(v0, 42, 7);
}

void *sub_10000258C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_1000025D8(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

void *sub_100002618(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
  }

  return result;
}

uint64_t sub_100002658(void *a1)
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

uint64_t sub_1000026D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_1000026F0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100002754()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002798()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002800()
{
  v0 = sub_10000704C();
  sub_1000026F0(v0, qword_100011500);
  sub_100002510(v0, qword_100011500);
  return sub_10000703C();
}

uint64_t sub_100002880(uint64_t a1)
{
  type metadata accessor for XPCPersistentStoreManager();
  v1 = swift_allocObject();
  result = sub_1000028BC();
  qword_100011C10 = v1;
  return result;
}

uint64_t sub_1000028BC()
{
  v1 = objc_opt_self();
  v2 = [v1 managedObjectModel];
  v3 = objc_allocWithZone(NSPersistentContainer);
  v4 = sub_10000707C();
  v5 = [v3 initWithName:v4 managedObjectModel:v2];

  *(v0 + 16) = v5;
  *(v0 + 24) = 0;
  *(v0 + 32) = [objc_allocWithZone(type metadata accessor for STWidgetXPCStoreServerEndpointFactory()) init];
  v6 = [v1 localPersistentXPCStoreDescription];
  v7 = *(v0 + 16);
  sub_100003460(&qword_1000116A8, qword_100007B30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100007A50;
  *(v8 + 32) = v6;
  sub_1000034A8();
  v9 = v7;
  v10 = v6;
  isa = sub_1000070AC().super.isa;

  [v9 setPersistentStoreDescriptions:isa];

  return v0;
}

void sub_100002A30()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    v1 = *(v0 + 16);
    v2 = [v1 persistentStoreDescriptions];
    sub_1000034A8();
    v3 = sub_1000070BC();

    if (v3 >> 62)
    {
      v4 = sub_1000071DC();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      aBlock[4] = sub_1000034F4;
      aBlock[5] = v0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002EB4;
      aBlock[3] = &unk_10000C718;
      v5 = _Block_copy(aBlock);

      [v1 loadPersistentStoresWithCompletionHandler:v5];
      _Block_release(v5);
      if (*(v0 + 24) == 1)
      {
        if (qword_1000114A8 != -1)
        {
          swift_once();
        }

        v6 = sub_10000704C();
        sub_100002510(v6, qword_100011500);
        v7 = sub_10000702C();
        v8 = sub_10000710C();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, v8, "Successfully loaded persistent stores", v9, 2u);
        }
      }
    }

    else
    {
      *(v0 + 24) = 0;
      if (qword_1000114A8 != -1)
      {
        swift_once();
      }

      v10 = sub_10000704C();
      sub_100002510(v10, qword_100011500);
      oslog = sub_10000702C();
      v11 = sub_1000070FC();
      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v11, "No persistent stores available to load", v12, 2u);
      }
    }
  }
}

void sub_100002D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    *(a3 + 24) = 0;
    swift_errorRetain();
    if (qword_1000114A8 != -1)
    {
      swift_once();
    }

    v3 = sub_10000704C();
    sub_100002510(v3, qword_100011500);
    swift_errorRetain();
    oslog = sub_10000702C();
    v4 = sub_1000070FC();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Failed to load persistent store: %@", v5, 0xCu);
      sub_1000033F8(v6);
    }

    else
    {
    }
  }

  else
  {
    *(a3 + 24) = 1;
  }
}

void sub_100002EB4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_100002F70()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

id sub_100003018(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for STWidgetXPCStoreServerEndpointFactory();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100003070(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1000030BC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1000030CC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1000033F8(uint64_t a1)
{
  v2 = sub_100003460(&qword_100011698, &qword_100007B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003460(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000034A8()
{
  result = qword_1000116A0;
  if (!qword_1000116A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000116A0);
  }

  return result;
}

uint64_t sub_1000034FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003514()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100003578()
{
  sub_100002658(v0 + 2);
  sub_100002658(v0 + 7);
  sub_100002658(v0 + 12);

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_1000035E4()
{
  v0 = sub_10000704C();
  sub_1000026F0(v0, qword_100011930);
  sub_100002510(v0, qword_100011930);
  return sub_10000703C();
}

void *sub_10000366C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003D9C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  swift_beginAccess();
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  return sub_1000025D8(v10, v11, v12);
}

char *sub_1000036E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003460(&qword_1000119A0, &qword_100007C70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000037F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000038C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000053EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002658(v11);
  return v7;
}

unint64_t sub_1000038C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000039CC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10000715C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000039CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003A18(a1, a2);
  sub_100003B48(&off_10000C590);
  return v3;
}

char *sub_100003A18(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003C34(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000715C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000709C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003C34(v10, 0);
        result = sub_10000713C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100003B48(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100003CA8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100003C34(uint64_t a1, uint64_t a2)
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

  sub_100003460(&qword_100011998, &qword_100007C68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003CA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003460(&qword_100011998, &qword_100007C68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_100003D9C()
{
  v0 = sub_10000700C();
  v1 = *(v0 - 1);
  __chkstk_darwin();
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() fetchRequestMatchingLocalUser];
  v41 = 0;
  v5 = [v4 execute:&v41];

  v6 = v41;
  if (!v5)
  {
    v23 = v41;
    v24 = sub_10000701C();

    swift_willThrow();
    v41 = v24;
    sub_100003460(&qword_100011948, &unk_100007C50);
    sub_100005358(0, &qword_100011950, NSError_ptr);
    swift_dynamicCast();
    v0 = v40;
    if (qword_1000114B8 == -1)
    {
LABEL_18:
      v25 = sub_10000704C();
      sub_100002510(v25, qword_100011930);
      v26 = v0;
      v27 = sub_10000702C();
      v28 = sub_1000070FC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v26;
        *v30 = v26;
        v31 = v26;
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to fetch local user: %@", v29, 0xCu);
        sub_1000033F8(v30);

        v26 = v27;
        v27 = v31;
      }

      return 0;
    }

LABEL_32:
    swift_once();
    goto LABEL_18;
  }

  sub_100005358(0, &qword_100011958, STCoreUser_ptr);
  v7 = sub_1000070BC();
  v8 = v6;

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_24:

    if (qword_1000114B8 != -1)
    {
      swift_once();
    }

    v35 = sub_10000704C();
    sub_100002510(v35, qword_100011930);
    v36 = sub_10000702C();
    v37 = sub_1000070FC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Fetching local user returned empty results.", v38, 2u);
    }

    return 0;
  }

  if (!sub_1000071DC())
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = sub_10000714C();
    goto LABEL_7;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_32;
  }

  v9 = *(v7 + 32);
LABEL_7:
  v10 = v9;

  if (qword_1000114B8 != -1)
  {
    swift_once();
  }

  v11 = sub_10000704C();
  sub_100002510(v11, qword_100011930);
  v12 = sub_10000702C();
  v13 = sub_10000710C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Successfully fetched local user.", v14, 2u);
  }

  sub_100006FFC();
  v15 = [v10 givenName];
  if (v15)
  {
    v16 = v15;
    sub_10000708C();

    sub_100006FCC();
    v17 = [v10 familyName];
    if (v17)
    {
      v18 = v17;
      sub_10000708C();

      sub_100006FDC();
    }

    v19 = sub_10000702C();
    v20 = sub_10000710C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Successfully fetched given name of local user.", v21, 2u);
    }

    sub_100006FEC();
    v22 = [v10 dsid];
  }

  else
  {
    v22 = [v10 dsid];
    v32 = [objc_opt_self() mainBundle];
    v39._countAndFlagsBits = 0xE000000000000000;
    v42._object = 0x8000000100008970;
    v42._countAndFlagsBits = 0xD000000000000016;
    v43.value._countAndFlagsBits = 0;
    v43.value._object = 0;
    v33.super.isa = v32;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    sub_100006FBC(v42, v43, v33, v44, 0, v39);
  }

  [v10 isParent];

  (*(v1 + 8))(v3, v0);
  return v22;
}

void sub_100004464(uint64_t a1)
{
  v109 = a1;
  v120 = sub_10000700C();
  v1 = *(v120 - 8);
  __chkstk_darwin();
  v3 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003D9C();
  v107 = v7;
  if (v4)
  {
    v101 = v5;
    v103 = v4;
    v102 = v6;
    if ((v6 & 1) == 0)
    {
      goto LABEL_68;
    }

    v118 = v1;
    v108 = v3;
    v8 = [objc_opt_self() fetchRequest];
    v121 = sub_100005358(0, &qword_100011960, NSPredicate_ptr);
    v119 = "Intent Configuration";
    sub_100003460(&qword_100011968, &qword_100007C60);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100007C40;
    *(v9 + 56) = &type metadata for String;
    v10 = sub_100005304();
    *(v9 + 32) = 0xD000000000000018;
    *(v9 + 40) = 0x8000000100008DD0;
    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v10;
    *(v9 + 64) = v10;
    *(v9 + 72) = 0xD000000000000010;
    *(v9 + 80) = 0x8000000100008DF0;
    v11 = STFamilyMemberTypeChild;
    v12 = sub_100005358(0, &qword_100011978, NSString_ptr);
    *(v9 + 136) = v12;
    v13 = sub_1000053A0(&qword_100011980, &qword_100011978, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v9 + 112) = v11;
    *(v9 + 176) = &type metadata for String;
    *(v9 + 184) = v10;
    *(v9 + 144) = v13;
    *(v9 + 152) = 0xD000000000000010;
    *(v9 + 160) = 0x8000000100008DF0;
    v14 = STFamilyMemberTypeTeen;
    *(v9 + 216) = v12;
    *(v9 + 224) = v13;
    *(v9 + 192) = v14;
    v15 = v11;
    v16 = v14;
    v17 = sub_1000070EC();
    [v8 setPredicate:v17];

    v124[0] = 0;
    v100 = v8;
    v18 = [v8 execute:v124];
    v19 = v124[0];
    if (v18)
    {
      v20 = v18;
      sub_100005358(0, &qword_100011958, STCoreUser_ptr);
      v99 = sub_1000070BC();
      v21 = v19;

      if (qword_1000114B8 != -1)
      {
        swift_once();
      }

      v22 = sub_10000704C();
      v98 = sub_100002510(v22, qword_100011930);
      v23 = sub_10000702C();
      v24 = sub_10000710C();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v108;
      if (v25)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Successfully fetched managed users.", v27, 2u);
      }

      v28 = 0;
      v29 = v99 & 0xFFFFFFFFFFFFFF8;
      if (v99 < 0)
      {
        v30 = v99;
      }

      else
      {
        v30 = v99 & 0xFFFFFFFFFFFFFF8;
      }

      v104 = v30;
      v112 = v99 & 0xC000000000000001;
      v111 = v99 + 32;
      v110 = (v118 + 8);
      v113 = v99 >> 62;
      v105 = v99 & 0xFFFFFFFFFFFFFF8;
      if (!(v99 >> 62))
      {
        goto LABEL_16;
      }

LABEL_14:
      if (v28 == sub_1000071DC())
      {
        goto LABEL_67;
      }

      while (1)
      {
        if (v112)
        {
          v31 = sub_10000714C();
        }

        else
        {
          if (v28 >= *(v29 + 16))
          {
            goto LABEL_80;
          }

          v31 = *(v111 + 8 * v28);
        }

        v32 = v31;
        if (__OFADD__(v28++, 1))
        {
          goto LABEL_79;
        }

        v34 = [v31 givenName];
        if (!v34)
        {

          v88 = [v32 dsid];
          v89 = [v88 stringValue];

          v90 = sub_10000708C();
          v92 = v91;

          v93 = sub_10000702C();
          v94 = sub_1000070FC();

          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v123 = v96;
            *v95 = 136380675;
            v97 = sub_1000037F4(v90, v92, &v123);

            *(v95 + 4) = v97;
            _os_log_impl(&_mh_execute_header, v93, v94, "Failed to fetch given name for remote user with dsid: %{private}s", v95, 0xCu);
            sub_100002658(v96);
          }

          else
          {
          }

          return;
        }

        v23 = v34;
        sub_10000708C();
        v36 = v35;

        sub_100006FFC();

        sub_100006FCC();
        v37 = [v32 familyName];
        if (v37)
        {
          v23 = v37;
          sub_10000708C();

          sub_100006FDC();
        }

        v38 = sub_100006FEC();
        v40 = v39;
        v41 = [v32 userDeviceStates];
        if (!v41)
        {
          (*v110)(v26, v120);

          if (v113)
          {
            goto LABEL_14;
          }

          goto LABEL_16;
        }

        v42 = v41;
        v106 = v38;
        v116 = v36;
        v117 = v40;
        v118 = v28;
        v26 = &qword_100011988;
        v43 = sub_100005358(0, &qword_100011988, STUserDeviceState_ptr);
        sub_1000053A0(&qword_100011990, &qword_100011988, STUserDeviceState_ptr, &protocol conformance descriptor for NSObject);
        v44 = sub_1000070CC();

        v119 = v32;
        v114 = v44;
        v121 = v43;
        if ((v44 & 0xC000000000000001) != 0)
        {
          v26 = (v44 < 0 ? v44 : v44 & 0xFFFFFFFFFFFFFF8);

          sub_10000711C();
          sub_1000070DC();
          v44 = v124[0];
          v45 = v124[1];
          v23 = v124[2];
          v46 = v124[3];
          v47 = v124[4];
        }

        else
        {
          v48 = -1 << *(v44 + 32);
          v45 = (v44 + 56);
          v23 = ~v48;
          v49 = -v48;
          v50 = v49 < 64 ? ~(-1 << v49) : -1;
          v47 = (v50 & *(v44 + 56));

          v46 = 0;
        }

        v115 = v23;
        v51 = (v23 + 64) >> 6;
        if ((v44 & 0x8000000000000000) == 0)
        {
          break;
        }

        while (1)
        {
          v56 = sub_10000712C();
          if (!v56)
          {
            goto LABEL_47;
          }

          v122 = v56;
          swift_dynamicCast();
          v26 = v123;
          v54 = v46;
          v55 = v47;
          if (!v123)
          {
            goto LABEL_47;
          }

LABEL_43:
          v57 = [v26 device];
          if (!v57)
          {
            __break(1u);
          }

          v58 = v57;
          v23 = [v57 platform];

          if (v23 != 4)
          {
            break;
          }

          v46 = v54;
          v47 = v55;
          if ((v44 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }
        }

        v23 = [v119 dsid];
        v59 = v109;
        swift_beginAccess();
        v60 = *(v59 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v59 + 16) = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = sub_1000036E8(0, *(v60 + 2) + 1, 1, v60);
          *(v109 + 16) = v60;
        }

        v63 = *(v60 + 2);
        v62 = *(v60 + 3);
        if (v63 >= v62 >> 1)
        {
          v60 = sub_1000036E8((v62 > 1), v63 + 1, 1, v60);
        }

        *(v60 + 2) = v63 + 1;
        v64 = &v60[32 * v63];
        v65 = v106;
        *(v64 + 4) = v23;
        *(v64 + 5) = v65;
        *(v64 + 6) = v117;
        *(v64 + 28) = 256;
        *(v109 + 16) = v60;
        swift_endAccess();

        sub_1000053E4(v44);
        v26 = v108;
        (*v110)(v108, v120);
LABEL_48:
        v28 = v118;
        v29 = v105;
        if (v113)
        {
          goto LABEL_14;
        }

LABEL_16:
        if (v28 == *(v29 + 16))
        {
LABEL_67:

LABEL_68:
          v81 = v109;
          swift_beginAccess();
          v26 = *(v81 + 16);
          v23 = v103;

          v82 = swift_isUniquelyReferenced_nonNull_native();
          *(v81 + 16) = v26;
          if ((v82 & 1) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_69;
        }
      }

LABEL_35:
      v52 = v46;
      v53 = v47;
      v54 = v46;
      if (v47)
      {
LABEL_39:
        v55 = (v53 - 1) & v53;
        v26 = *(*(v44 + 48) + ((v54 << 9) | (8 * __clz(__rbit64(v53)))));
        if (v26)
        {
          goto LABEL_43;
        }
      }

      else
      {
        while (1)
        {
          v54 = (v52 + 1);
          if (__OFADD__(v52, 1))
          {
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            v26 = sub_1000036E8(0, *(v26 + 2) + 1, 1, v26);
            *(v109 + 16) = v26;
LABEL_69:
            v84 = *(v26 + 2);
            v83 = *(v26 + 3);
            if (v84 >= v83 >> 1)
            {
              v26 = sub_1000036E8((v83 > 1), v84 + 1, 1, v26);
            }

            *(v26 + 2) = v84 + 1;
            v85 = &v26[32 * v84];
            v86 = v101;
            *(v85 + 4) = v23;
            *(v85 + 5) = v86;
            *(v85 + 6) = v107;
            v87 = BYTE1(v102);
            v85[56] = v102 & 1;
            v85[57] = v87 & 1;
            *(v109 + 16) = v26;
            swift_endAccess();

            return;
          }

          if (v54 >= v51)
          {
            break;
          }

          v53 = v45[v54];
          ++v52;
          if (v53)
          {
            goto LABEL_39;
          }
        }
      }

LABEL_47:
      v26 = v108;
      (*v110)(v108, v120);

      sub_1000053E4(v44);
      goto LABEL_48;
    }

    v70 = v124[0];
    v71 = sub_10000701C();

    swift_willThrow();
    v124[0] = v71;
    sub_100003460(&qword_100011948, &unk_100007C50);
    sub_100005358(0, &qword_100011950, NSError_ptr);
    swift_dynamicCast();
    v72 = v123;
    if (qword_1000114B8 != -1)
    {
      swift_once();
    }

    v73 = sub_10000704C();
    sub_100002510(v73, qword_100011930);
    v74 = v72;
    v75 = sub_10000702C();
    v76 = sub_1000070FC();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      *(v77 + 4) = v74;
      *v78 = v74;
      v79 = v74;
      _os_log_impl(&_mh_execute_header, v75, v76, "Failed to fetch managed users: %@", v77, 0xCu);
      sub_1000033F8(v78);

      v80 = v75;
      v75 = v79;
    }

    else
    {

      v80 = v103;
    }
  }

  else
  {
    if (qword_1000114B8 != -1)
    {
      swift_once();
    }

    v66 = sub_10000704C();
    sub_100002510(v66, qword_100011930);
    v121 = sub_10000702C();
    v67 = sub_1000070FC();
    if (os_log_type_enabled(v121, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v121, v67, "couldn't fetch local user", v68, 2u);
    }

    v69 = v121;
  }
}

unint64_t sub_100005304()
{
  result = qword_100011970;
  if (!qword_100011970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011970);
  }

  return result;
}

uint64_t sub_100005358(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000053A0(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005358(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000053EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_10000544C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100005460(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_1000054A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000054FC()
{
  sub_100002658(v0 + 2);
  sub_100002658(v0 + 9);
  sub_100002658(v0 + 14);

  return _swift_deallocClassInstance(v0, 152, 7);
}

id STSelectUserIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STSelectUserIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STSelectUserIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id STUser.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id STSelectUserIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id STSelectUserIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10000707C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id STSelectUserIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_10000707C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for STSelectUserIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id STSelectUserIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000707C();

  v8 = sub_10000707C();

  if (a5)
  {
    v9.super.isa = sub_10000705C().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id STSelectUserIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000707C();

  v8 = sub_10000707C();

  if (a5)
  {
    v9.super.isa = sub_10000705C().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for STSelectUserIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

Swift::Int sub_100005BD4()
{
  v1 = *v0;
  sub_10000720C();
  sub_10000721C(v1);
  return sub_10000722C();
}

Swift::Int sub_100005C48(uint64_t a1)
{
  v2 = *v1;
  sub_10000720C();
  sub_10000721C(v2);
  return sub_10000722C();
}

unint64_t sub_100005C8C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100006380(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t STSelectUserIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *STSelectUserIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *STSelectUserIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id STSelectUserIntentResponse.init()()
{
  *&v0[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STSelectUserIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id STSelectUserIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id STSelectUserIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id STSelectUserIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10000612C(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for STSelectUserIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id STSelectUserIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_10000705C().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id STSelectUserIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_10000705C().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_100006348(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100006380(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1000063B8()
{
  result = qword_100011B60;
  if (!qword_100011B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011B60);
  }

  return result;
}

uint64_t sub_10000640C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STSelectUserIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100006464(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STSelectUserIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id STUser.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_10000707C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_10000707C();

  if (a6)
  {
    v10 = sub_10000707C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id STUser.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_10000707C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_10000707C();

  if (a6)
  {
    v10 = sub_10000707C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for STUser();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id STUser.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STUser();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static STUserResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___STUserResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static STUserResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1000069F8();

    sub_1000071CC();
  }

  else
  {

    sub_1000071FC();
    sub_1000069F8();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1000069F8();
  isa = sub_1000070AC().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___STUserResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_1000069F8()
{
  result = qword_100011BE0;
  if (!qword_100011BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100011BE0);
  }

  return result;
}

id static STUserResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___STUserResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id STUserResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_10000705C().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id STUserResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_10000705C().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for STUserResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_100006F84(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}