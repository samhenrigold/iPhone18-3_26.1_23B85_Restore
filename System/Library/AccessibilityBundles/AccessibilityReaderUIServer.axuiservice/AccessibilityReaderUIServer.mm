uint64_t sub_1860()
{
  v1 = OBJC_IVAR___AccessibilityReaderAXUIService____lazy_storage___accessibilityReaderCoordinator;
  if (*&v0[OBJC_IVAR___AccessibilityReaderAXUIService____lazy_storage___accessibilityReaderCoordinator])
  {
    v2 = *&v0[OBJC_IVAR___AccessibilityReaderAXUIService____lazy_storage___accessibilityReaderCoordinator];
  }

  else
  {
    sub_43FC();
    swift_allocObject();
    v3 = v0;
    v2 = sub_43AC();
    *&v0[v1] = v2;
  }

  return v2;
}

id sub_18E4()
{
  result = [objc_allocWithZone(type metadata accessor for AccessibilityReaderAXUIService()) init];
  qword_C578 = result;
  return result;
}

id sub_1914()
{
  if (qword_C570 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

id sub_19C0()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___AccessibilityReaderAXUIService____lazy_storage___accessibilityReaderCoordinator] = 0;
  v2 = OBJC_IVAR___AccessibilityReaderAXUIService_mainActorQueue;
  sub_439C();
  *&v0[v2] = sub_438C();
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v10, "init");
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 sharedInstance];
  v9[4] = sub_1B20;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1C8C;
  v9[3] = &unk_84F8;
  v7 = _Block_copy(v9);
  [v6 registerUpdateBlock:v7 forRetrieveSelector:sub_436C() withListener:v5];
  _Block_release(v7);

  return v5;
}

uint64_t sub_1B20()
{
  v0 = sub_446C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_444C();
  v4 = sub_445C();
  v5 = sub_456C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "Accessibility Reader enabled status changed, updating CC widget", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  sub_449C();
  sub_448C();
  sub_447C();
}

uint64_t sub_1C8C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_1CF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_446C();
  v26 = *(v10 - 8);
  v27 = v10;
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_44DC();
  }

  else
  {
    sub_3894(&_swiftEmptyArrayStorage);
  }

  sub_440C();
  sub_403C(&qword_C4B8, &protocol conformance descriptor for AccessibilityReaderMessageKey);
  v28 = sub_44CC();
  v14 = v13;

  sub_444C();

  v15 = sub_445C();
  v16 = sub_458C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v25 = a3;
    v29 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a2;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2FB0(v25, a4, &v29);
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_2FB0(v28, v14, &v29);
    _os_log_impl(&dword_0, v15, v16, "Service got a message: %ld from client: %s. Payload: %s", v18, 0x20u);
    swift_arrayDestroy();
    a3 = v25;

    v5 = v24;
  }

  (*(v26 + 8))(v12, v27);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = v5;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = v28;
  v20[7] = v14;

  v21 = v5;
  sub_437C();

  return sub_3C7C(&_swiftEmptyArrayStorage);
}

uint64_t sub_1FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_446C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  sub_3E60(&qword_C4D8, &qword_4BA8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  sub_454C();
  v6[15] = sub_453C();
  v9 = sub_452C();
  v6[16] = v9;
  v6[17] = v8;

  return _swift_task_switch(sub_2144, v9, v8);
}

uint64_t sub_2144()
{
  v27 = v0;
  v1 = v0[14];
  sub_441C();
  v2 = sub_442C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {

LABEL_3:
    sub_444C();

    v4 = sub_445C();
    v5 = sub_457C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[10];
LABEL_4:
    v8 = v0[8];
    v9 = v0[9];
    if (v6)
    {
      v23 = v0[6];
      v24 = v0[7];
      v11 = v0[4];
      v10 = v0[5];
      v25 = v7;
      v12 = v0[2];
      v13 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v13 = 134218498;
      *(v13 + 4) = v12;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2FB0(v11, v10, &v26);
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_2FB0(v23, v24, &v26);
      _os_log_impl(&dword_0, v4, v5, "Unhandled service message: %ld from client: %s. Payload: %s", v13, 0x20u);
      swift_arrayDestroy();

      (*(v9 + 8))(v25, v8);
    }

    else
    {

      (*(v9 + 8))(v7, v8);
    }

    sub_3F6C(v0[14]);

    v17 = v0[1];

    return v17();
  }

  v14 = v0[13];
  sub_3FD4(v0[14], v14, &qword_C4D8, &qword_4BA8);
  v15 = (*(v3 + 88))(v14, v2);
  if (v15 == enum case for AccessibilityReaderAXUIServiceMessageID.startAccessibilityReader(_:))
  {
    v0[18] = sub_1860();
    v16 = swift_task_alloc();
    v0[19] = v16;
    *v16 = v0;
    v16[1] = sub_2780;

    return AXRCoordinator.start()();
  }

  else if (v15 == enum case for AccessibilityReaderAXUIServiceMessageID.stopAccessibilityReader(_:))
  {
    v0[20] = sub_1860();
    v18 = swift_task_alloc();
    v0[21] = v18;
    *v18 = v0;
    v18[1] = sub_2970;

    return AXRCoordinator.stop()();
  }

  else
  {
    if (v15 == enum case for AccessibilityReaderAXUIServiceMessageID.showReaderController(_:))
    {

      sub_444C();

      v4 = sub_445C();
      v5 = sub_457C();

      v6 = os_log_type_enabled(v4, v5);
      v7 = v0[12];
      goto LABEL_4;
    }

    if (v15 == enum case for AccessibilityReaderAXUIServiceMessageID.hideReaderController(_:))
    {

      sub_444C();

      v4 = sub_445C();
      v5 = sub_457C();

      v6 = os_log_type_enabled(v4, v5);
      v7 = v0[11];
      goto LABEL_4;
    }

    if (v15 == enum case for AccessibilityReaderAXUIServiceMessageID.showReaderView(_:))
    {
      v0[22] = sub_1860();
      v19 = swift_task_alloc();
      v0[23] = v19;
      *v19 = v0;
      v19[1] = sub_2AB4;

      return AXRCoordinator.showReaderView()();
    }

    else
    {
      if (v15 != enum case for AccessibilityReaderAXUIServiceMessageID.hideReaderView(_:))
      {
        v21 = v0[13];

        (*(v3 + 8))(v21, v2);
        goto LABEL_3;
      }

      v0[24] = sub_1860();
      v20 = swift_task_alloc();
      v0[25] = v20;
      *v20 = v0;
      v20[1] = sub_2BF8;

      return AXRCoordinator.hideReaderView()();
    }
  }
}

uint64_t sub_2780()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_28C4, v3, v2);
}

uint64_t sub_28C4()
{

  sub_3F6C(*(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2970()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_4358, v3, v2);
}

uint64_t sub_2AB4()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_4358, v3, v2);
}

uint64_t sub_2BF8()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_4358, v3, v2);
}

id sub_2F08()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2FB0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_307C(v11, 0, 0, 1, a1, a2);
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
    sub_3E04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3DB8(v11);
  return v7;
}

unint64_t sub_307C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_3188(a5, a6);
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
    result = sub_45EC();
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

char *sub_3188(uint64_t a1, unint64_t a2)
{
  v3 = sub_31D4(a1, a2);
  sub_3304(&off_84A8);
  return v3;
}

char *sub_31D4(uint64_t a1, unint64_t a2)
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

  v6 = sub_33F0(v5, 0);
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

  result = sub_45EC();
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
        v10 = sub_451C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_33F0(v10, 0);
        result = sub_45DC();
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

uint64_t sub_3304(uint64_t result)
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

  result = sub_3464(result, v11, 1, v3);
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

void *sub_33F0(uint64_t a1, uint64_t a2)
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

  sub_3E60(&qword_C4C0, &qword_4B90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3464(char *result, int64_t a2, char a3, char *a4)
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
    sub_3E60(&qword_C4C0, &qword_4B90);
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

unint64_t sub_3558(uint64_t a1)
{
  v2 = v1;
  v4 = sub_459C(*(v2 + 40));

  return sub_3620(a1, v4);
}

unint64_t sub_359C(uint64_t a1)
{
  sub_440C();
  sub_403C(&qword_C4B8, &protocol conformance descriptor for AccessibilityReaderMessageKey);
  v2 = sub_44EC();

  return sub_36E8(a1, v2);
}

unint64_t sub_3620(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_3EBC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_45AC();
      sub_3F18(v8);
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

unint64_t sub_36E8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_440C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_403C(&qword_C4F0, &protocol conformance descriptor for AccessibilityReaderMessageKey);
      v15 = sub_44FC();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_3894(uint64_t a1)
{
  v2 = sub_3E60(&qword_C4E0, &qword_4BB0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_3E60(&qword_C4E8, &qword_4BB8);
    v7 = sub_45FC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_3FD4(v9, v5, &qword_C4E0, &qword_4BB0);
      result = sub_359C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_440C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_3EAC(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_3A80()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_3AC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_3B88;

  return sub_1FEC(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_3B88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_3C7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3E60(&qword_C4C8, &qword_4B98);
    v3 = sub_45FC();
    v4 = a1 + 32;

    while (1)
    {
      sub_3FD4(v4, v13, &qword_C4D0, &qword_4BA0);
      result = sub_3558(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_3EAC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_3DB8(void *a1)
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

uint64_t sub_3E04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3E60(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_3EAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3F6C(uint64_t a1)
{
  v2 = sub_3E60(&qword_C4D8, &qword_4BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3FD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3E60(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_403C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_440C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4080(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int sub_4098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3E60(&unk_C500, &qword_4BC8);
    v3 = sub_45CC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_3EBC(v6 + 40 * v4, v19);
      result = sub_459C(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_3EBC(*(v3 + 48) + 40 * i, v18);
        v11 = sub_45AC();
        result = sub_3F18(v18);
        if (v11)
        {
          sub_3F18(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_41F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_443C())
  {
    return 0;
  }

  sub_3E60(&qword_C4F8, &qword_4BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_4B30;
  sub_45BC();
  sub_45BC();
  sub_45BC();
  sub_45BC();
  v5 = sub_4098(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}