Swift::Int sub_1794()
{
  v1 = *v0;
  sub_6364();
  sub_6374(v1);
  return sub_6384();
}

Swift::Int sub_1808(uint64_t a1)
{
  v2 = *v1;
  sub_6364();
  sub_6374(v2);
  return sub_6384();
}

id sub_184C()
{
  result = [objc_allocWithZone(type metadata accessor for NameRecognitionPluginService(0)) init];
  qword_C940 = result;
  return result;
}

id static NameRecognitionPluginService.sharedInstance()()
{
  if (qword_C790 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

id sub_196C()
{
  v1 = v0;
  v2 = sub_5784(&qword_C670, &qword_6B20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v1[OBJC_IVAR___AXNameRecognitionPluginService_serviceState] = 0;
  v1[OBJC_IVAR___AXNameRecognitionPluginService_isNameRecognitionEnabled] = 2;
  v6 = OBJC_IVAR___AXNameRecognitionPluginService__isStoreReady;
  LOBYTE(aBlock[0]) = 0;
  sub_61C4();
  (*(v3 + 32))(&v1[v6], v5, v2);
  sub_5FF4();
  *&v1[OBJC_IVAR___AXNameRecognitionPluginService_triggerController] = sub_5FE4();
  sub_6154();
  *&v1[OBJC_IVAR___AXNameRecognitionPluginService_store] = sub_6144();
  v7 = type metadata accessor for NameRecognitionPluginService(0);
  v16.receiver = v1;
  v16.super_class = v7;
  v8 = objc_msgSendSuper2(&v16, "init");
  sub_24A8();
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  v10 = AXkMobileKeyBagLockStatusNotificationID();
  CFNotificationCenterAddObserver(v9, v8, sub_27B8, v10, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v11 = [objc_opt_self() sharedInstance];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_5894;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C18;
  aBlock[3] = &unk_8818;
  v13 = _Block_copy(aBlock);

  [v11 registerUpdateBlock:v13 forRetrieveSelector:"isNameRecognitionEnabled" withListener:v8];

  _Block_release(v13);
  return v8;
}

uint64_t sub_1C18(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id NameRecognitionPluginService.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_61A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6184();
  v6 = sub_6194();
  v7 = sub_62B4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Deinitializing NameRecognitionPluginService", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v9, v1);

  v10 = type metadata accessor for NameRecognitionPluginService(0);
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t type metadata accessor for NameRecognitionPluginService(uint64_t a1)
{
  result = qword_C828;
  if (!qword_C828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1F20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5784(&qword_C720, &qword_6B98);
    v2 = sub_6334();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    sub_5B78(v17, v18);
    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_5EA4(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_5EA4(v33, v34);
    result = sub_62C4(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_5EA4(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_2380()
{
  v1 = v0;

  v2 = sub_60D4();

  if (v2)
  {
    v3 = OBJC_IVAR___AXNameRecognitionPluginService_isNameRecognitionEnabled;
    v4 = *(v0 + OBJC_IVAR___AXNameRecognitionPluginService_isNameRecognitionEnabled);
    v5 = objc_opt_self();
    v6 = [v5 sharedInstance];
    v7 = [v6 isNameRecognitionEnabled];

    if (v4 == 2 || ((v7 ^ v4) & 1) != 0)
    {
      v8 = [v5 sharedInstance];
      v9 = [v8 isNameRecognitionEnabled];

      *(v1 + v3) = v9;
      v10 = [v5 sharedInstance];
      LODWORD(v8) = [v10 isNameRecognitionEnabled];

      if (v8)
      {
        sub_5FB4();
      }

      else
      {
        sub_5FA4();
      }
    }
  }
}

uint64_t sub_24A8()
{
  v0 = sub_5784(&qword_C658, &qword_6B10);
  v11 = *(v0 - 8);
  v1 = v11;
  v2 = __chkstk_darwin(v0);
  v13 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = sub_5784(&qword_C660, &qword_6B18);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;

  sub_60E4();

  sub_5814(&qword_C668, &qword_C658, &qword_6B10, &protocol conformance descriptor for Published<A>.Publisher);
  sub_6204();
  v12 = *(v1 + 8);
  v12(v5, v0);
  swift_beginAccess();
  sub_5784(&qword_C670, &qword_6B20);
  sub_61D4();
  swift_endAccess();
  sub_5814(&qword_C678, &qword_C660, &qword_6B18, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_6214();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 16))(v13, v5, v0);
  swift_beginAccess();
  sub_61E4();
  swift_endAccess();
  return (v12)(v5, v0);
}

void sub_27C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_61A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6054();
  if (!v2)
  {
    v8 = v7;
    sub_5FB4();
    v9 = [v8 frameCapacity];
    v10 = [v8 format];
    [v10 sampleRate];
    v12 = v11;

    v13 = v9 / v12;
    v19.super._impl = mach_absolute_time();
    v19.super.super.isa = v8;
    sub_5FD4(v19, v14);
    sub_6184();
    v15 = sub_6194();
    v16 = sub_62B4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v13;
      _os_log_impl(&dword_0, v15, v16, "Audio length is %f seconds, will sleep for that duration", v17, 0xCu);
    }

    (*(v4 + 8))(v6, v3);
    [objc_opt_self() sleepForTimeInterval:v13];
    sub_5FA4();
  }
}

uint64_t sub_29E4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NameRecognitionPluginService(0);
  result = sub_61B4();
  *a2 = result;
  return result;
}

unint64_t sub_2A24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2AF0(v11, 0, 0, 1, a1, a2);
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
    sub_5C20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5E54(v11);
  return v7;
}

unint64_t sub_2AF0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2BFC(a5, a6);
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
    result = sub_6324();
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

char *sub_2BFC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2C48(a1, a2);
  sub_2D78(&off_8738);
  return v3;
}

char *sub_2C48(uint64_t a1, unint64_t a2)
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

  v6 = sub_2E64(v5, 0);
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

  result = sub_6324();
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
        v10 = sub_6274();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2E64(v10, 0);
        result = sub_6304();
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

uint64_t sub_2D78(uint64_t result)
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

  result = sub_2ED8(result, v11, 1, v3);
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

void *sub_2E64(uint64_t a1, uint64_t a2)
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

  sub_5784(&qword_C718, &qword_6B90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2ED8(char *result, int64_t a2, char a3, char *a4)
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
    sub_5784(&qword_C718, &qword_6B90);
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

unint64_t sub_2FCC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_62C4(*(v2 + 40));

  return sub_3088(a1, v4);
}

unint64_t sub_3010(uint64_t a1, uint64_t a2)
{
  sub_6364();
  sub_6254();
  v4 = sub_6384();

  return sub_3150(a1, a2, v4);
}

unint64_t sub_3088(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_5A58(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_62D4();
      sub_5AB4(v8);
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

unint64_t sub_3150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_6354())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_3208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5784(&qword_C720, &qword_6B98);
    v3 = sub_6334();
    v4 = a1 + 32;

    while (1)
    {
      sub_5EB4(v4, v13, &qword_C6C0, &qword_6B60);
      result = sub_2FCC(v13);
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
      result = sub_5EA4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_3344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5784(&qword_C728, &qword_6BA0);
    v3 = sub_6334();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_5B78(v7, v8);
      result = sub_3010(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_345C(char *a1, uint64_t a2)
{
  v140 = a1;
  v3 = sub_5784(&qword_C690, &qword_6B38);
  __chkstk_darwin(v3 - 8);
  v148 = &v135 - v4;
  v150 = sub_6034();
  v154 = *(v150 - 8);
  v5 = __chkstk_darwin(v150);
  v7 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v139 = &v135 - v8;
  v9 = sub_6174();
  v136 = *(v9 - 8);
  v137 = v9;
  __chkstk_darwin(v9);
  v138 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_61A4();
  v145 = *(v11 - 8);
  v146 = v11;
  __chkstk_darwin(v11);
  v156 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6024();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v147 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v141 = &v135 - v18;
  v19 = __chkstk_darwin(v17);
  v153 = &v135 - v20;
  __chkstk_darwin(v19);
  v157 = &v135 - v21;
  v22 = sub_5784(&qword_C698, &qword_6B40);
  v23 = __chkstk_darwin(v22 - 8);
  v152 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v135 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v135 - v29;
  __chkstk_darwin(v28);
  v31 = v14 + 56;
  v32 = *(v14 + 7);
  v163 = &v135 - v33;
  v34 = v32();
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_77;
  }

  v142 = v7;
  sub_6004();
  v151 = *(v14 + 6);
  v35 = (v151)(v30, 1, v13);
  v155 = v14;
  v144 = a2;
  if (v35 == 1)
  {
    sub_5CF8(v30, &qword_C698, &qword_6B40);
    sub_6014();
    v36 = v163;
    sub_5CF8(v163, &qword_C698, &qword_6B40);
    sub_5B08(v27, v36);
  }

  else
  {
    v37 = v163;
    sub_5CF8(v163, &qword_C698, &qword_6B40);
    (*(v14 + 4))(v37, v30, v13);
    (v32)(v37, 0, 1, v13);
  }

  v27 = v13;
  v38 = v152;
  sub_5EB4(v163, v152, &qword_C698, &qword_6B40);
  v39 = (v151)(v38, 1, v13);
  v40 = v156;
  v41 = v153;
  if (v39 == 1)
  {
    sub_5CF8(v38, &qword_C698, &qword_6B40);
    sub_5E0C(&qword_C6A0, &type metadata accessor for NameRecognitionError, &protocol conformance descriptor for NameRecognitionError);
    v7 = v150;
    v42 = swift_allocError();
    v44 = v43;
    v45 = (v43 + *(sub_5784(&qword_C6A8, &qword_6B48) + 48));
    v46 = enum case for RuntimeError.ipc(_:);
    v47 = sub_60C4();
    (*(*(v47 - 8) + 104))(v44, v46, v47);
    v160[0]._countAndFlagsBits = 0;
    v160[0]._object = 0xE000000000000000;
    sub_6314(74);
    v164._countAndFlagsBits = 0xD000000000000048;
    v164._object = 0x80000000000074B0;
    sub_6264(v164);
    *&v161 = v144;
    v165._countAndFlagsBits = sub_6344();
    sub_6264(v165);

    object = v160[0]._object;
    *v45 = v160[0]._countAndFlagsBits;
    v45[1] = object;
    v13 = v154;
    (*(v154 + 104))(v44, enum case for NameRecognitionError.runtime(_:), v7);
    swift_willThrow();
    goto LABEL_7;
  }

  v53 = v155;
  v54 = v157;
  v155[4](v157, v38, v27);
  sub_6184();
  v151 = v53[2];
  v151(v41, v54, v27);
  v55 = sub_6194();
  v56 = sub_62B4();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v152 = v27;
    v58 = v57;
    v59 = swift_slowAlloc();
    v160[0]._countAndFlagsBits = v59;
    *v58 = 136315138;
    v151(v141, v41, v152);
    v60 = sub_6244();
    v62 = v61;
    v153 = v155[1];
    (v153)(v41, v152);
    v63 = sub_2A24(v60, v62, &v160[0]._countAndFlagsBits);
    v53 = v155;

    *(v58 + 4) = v63;
    _os_log_impl(&dword_0, v55, v56, "Successfully recieved messageID: %s", v58, 0xCu);
    sub_5E54(v59);

    v27 = v152;

    (*(v145 + 8))(v156, v146);
  }

  else
  {

    v153 = v53[1];
    (v153)(v41, v27);
    (*(v145 + 8))(v40, v146);
  }

  v68 = v149;
  v30 = v147;
  v151(v147, v157, v27);
  v34 = (v53[11])(v30, v27);
  v13 = v154;
  if (v34 == enum case for NameRecognitionServiceMessageID.startup(_:))
  {
    v69 = OBJC_IVAR___AXNameRecognitionPluginService_serviceState;
    v70 = v143;
    if (*(v143 + OBJC_IVAR___AXNameRecognitionPluginService_serviceState) == 1)
    {
      v80 = sub_3208(&_swiftEmptyArrayStorage);
      (v153)(v157, v27);
      goto LABEL_32;
    }

    sub_2380();
    (v153)(v157, v27);
    *(v70 + v69) = 1;
LABEL_31:
    v80 = sub_3208(&_swiftEmptyArrayStorage);
    goto LABEL_32;
  }

  if (v34 != enum case for NameRecognitionServiceMessageID.prebuildRecognizer(_:))
  {
    v7 = v150;
    if (v34 == enum case for NameRecognitionServiceMessageID.shutdown(_:))
    {
      v71 = OBJC_IVAR___AXNameRecognitionPluginService_serviceState;
      v72 = v143;
      if (*(v143 + OBJC_IVAR___AXNameRecognitionPluginService_serviceState) != 2)
      {
        v84 = [objc_opt_self() sharedInstance];
        v85 = [v84 isNameRecognitionEnabled];

        if (v85)
        {
          sub_62A4();
          v86 = sub_6294();
          [v86 setNameRecognitionEnabled:0];
        }

        (v153)(v157, v27);
        *(v72 + v71) = 2;
        goto LABEL_31;
      }

      v80 = sub_3208(&_swiftEmptyArrayStorage);
      v73 = v157;
      v74 = v27;
LABEL_46:
      (v153)(v73, v74);
      goto LABEL_32;
    }

    if (v34 == enum case for NameRecognitionServiceMessageID.fetchEnrolledNames(_:))
    {

      v81 = sub_6114();

      sub_5F74();
      swift_allocObject();
      sub_5F64();
      v160[0]._countAndFlagsBits = v81;
      sub_5784(&qword_C700, &qword_6B88);
      sub_5D58();
      v82 = sub_5F54();
      v42 = v68;
      if (!v68)
      {
        v94 = v82;
        v95 = v83;

        sub_5784(&qword_C6E8, &qword_6B78);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_69E0;
        *(inited + 32) = sub_6084();
        *(inited + 40) = v97;
        *(inited + 48) = v94;
        *(inited + 56) = v95;
        sub_5B78(v94, v95);
        v98 = sub_3344(inited);
        swift_setDeallocating();
        sub_5CF8(inited + 32, &qword_C6F0, &qword_6B80);
        v80 = sub_1F20(v98);

        sub_5BCC(v94, v95);
        v73 = v157;
        v74 = v27;
        goto LABEL_46;
      }

      (v153)(v157, v27);

LABEL_26:

      goto LABEL_7;
    }

    v14 = &v161;
    if (v34 == enum case for NameRecognitionServiceMessageID.deleteName(_:))
    {
      v88 = v140;
      if (!v140)
      {
LABEL_85:
        *v14 = 0u;
        v14[1] = 0u;
        goto LABEL_86;
      }

      v158 = sub_6064();
      v159 = v89;
      sub_62E4();
      if (*(v88 + 2))
      {
        v90 = sub_2FCC(v160);
        if (v91)
        {
          sub_5C20(*(v88 + 7) + 32 * v90, &v161);
          sub_5AB4(v160);
          if (*(&v162 + 1))
          {
            if (swift_dynamicCast())
            {
              countAndFlagsBits = v160[0]._countAndFlagsBits;
              v93 = v160[0]._object;

              v166._countAndFlagsBits = countAndFlagsBits;
              v166._object = v93;
              sub_6104(v166);
              if (v68)
              {
                (v153)(v157, v27);

LABEL_44:

                v42 = v68;
                goto LABEL_7;
              }

              (v153)(v157, v27);

              goto LABEL_59;
            }

            goto LABEL_87;
          }

          goto LABEL_86;
        }
      }

LABEL_84:
      sub_5AB4(v160);
      goto LABEL_85;
    }

    v31 = v140;
    if (v34 == enum case for NameRecognitionServiceMessageID.deleteAll(_:))
    {

      sub_6124();
      if (v68)
      {
        (v153)(v157, v27);
        goto LABEL_44;
      }

      (v153)(v157, v27);
LABEL_59:

      goto LABEL_31;
    }

    if (v34 == enum case for NameRecognitionServiceMessageID.addNameConfig(_:))
    {
      if (v140)
      {
        v158 = sub_6074();
        v159 = v99;
        sub_62E4();
        if (*(v31 + 2))
        {
          v100 = sub_2FCC(v160);
          if (v101)
          {
            sub_5C20(*(v31 + 7) + 32 * v100, &v161);
            sub_5AB4(v160);
            if (*(&v162 + 1))
            {
              if (swift_dynamicCast())
              {
                v102 = v160[0]._countAndFlagsBits;
                v103 = v160[0]._object;
                sub_5F44();
                swift_allocObject();
                v42 = v68;
                sub_5F34();
                sub_5E0C(&qword_C6F8, &type metadata accessor for NRNameConfiguration, &protocol conformance descriptor for NRNameConfiguration);
                sub_5F24();
                if (!v68)
                {

                  sub_6134();

                  sub_5BCC(v102, v103);
                  (*(v136 + 8))(v138, v137);
                  (v153)(v157, v27);
                  goto LABEL_31;
                }

                (v153)(v157, v27);

                sub_5BCC(v102, v103);
                goto LABEL_7;
              }

              goto LABEL_66;
            }

LABEL_65:
            sub_5CF8(&v161, &qword_C6D0, &qword_6B68);
LABEL_66:
            v104 = sub_5784(&qword_C6A8, &qword_6B48);
            v105 = v139;
            v106 = &v139[*(v104 + 48)];
            v107 = enum case for RuntimeError.ipc(_:);
            v108 = sub_60C4();
            (*(*(v108 - 8) + 104))(v105, v107, v108);
            *v106 = 0xD00000000000001FLL;
            *(v106 + 1) = 0x8000000000007550;
            (*(v13 + 104))(v105, enum case for NameRecognitionError.runtime(_:), v7);
            sub_5E0C(&qword_C6A0, &type metadata accessor for NameRecognitionError, &protocol conformance descriptor for NameRecognitionError);
            v42 = swift_allocError();
            (*(v13 + 16))(v109, v105, v7);
            swift_willThrow();
            (*(v13 + 8))(v105, v7);
LABEL_89:
            (v153)(v157, v27);
            goto LABEL_7;
          }
        }

        sub_5AB4(v160);
      }

      v161 = 0u;
      v162 = 0u;
      goto LABEL_65;
    }

    if (v34 == enum case for NameRecognitionServiceMessageID.openTapToRadar(_:))
    {

      sub_60F4();
      v42 = v68;
      if (!v68)
      {

        sub_6044();

        sub_6164();
        (v153)(v157, v27);

        goto LABEL_31;
      }

      (v153)(v157, v27);

      goto LABEL_7;
    }

    if (v34 == enum case for NameRecognitionServiceMessageID.storeAudio(_:))
    {

      sub_60F4();
      v42 = v68;
      if (!v68)
      {

        v128 = sub_6044();
        v152 = v27;

        sub_5F74();
        swift_allocObject();
        sub_5F64();
        v160[0]._countAndFlagsBits = v128;
        sub_5784(&qword_C6D8, &qword_6B70);
        sub_5C7C();
        v129 = sub_5F54();
        v131 = v130;

        sub_5784(&qword_C6E8, &qword_6B78);
        v132 = swift_initStackObject();
        *(v132 + 16) = xmmword_69E0;
        *(v132 + 32) = sub_60B4();
        *(v132 + 40) = v133;
        *(v132 + 48) = v129;
        *(v132 + 56) = v131;
        sub_5B78(v129, v131);
        v134 = sub_3344(v132);
        swift_setDeallocating();
        sub_5CF8(v132 + 32, &qword_C6F0, &qword_6B80);
        v80 = sub_1F20(v134);

        sub_5BCC(v129, v131);
        (v153)(v157, v152);
        goto LABEL_32;
      }

      (v153)(v157, v27);
      goto LABEL_26;
    }

    if (v34 == enum case for NameRecognitionServiceMessageID.listen(_:))
    {
      if (v140)
      {
        v158 = sub_60A4();
        v159 = v110;
        sub_62E4();
        if (*(v31 + 2))
        {
          v111 = sub_2FCC(v160);
          if (v112)
          {
            sub_5C20(*(v31 + 7) + 32 * v111, &v161);
            sub_5AB4(v160);
            if (*(&v162 + 1))
            {
              if (swift_dynamicCast())
              {
                v113 = v149;
                sub_27C0(v160[0]._countAndFlagsBits, v160[0]._object);
                v42 = v113;
                if (!v113)
                {
                  (v153)(v157, v27);

                  goto LABEL_31;
                }

                (v153)(v157, v27);

                v7 = v150;
                v13 = v154;
                goto LABEL_7;
              }

              v7 = v150;
              v13 = v154;
              goto LABEL_96;
            }

LABEL_95:
            sub_5CF8(&v161, &qword_C6D0, &qword_6B68);
LABEL_96:
            sub_5E0C(&qword_C6A0, &type metadata accessor for NameRecognitionError, &protocol conformance descriptor for NameRecognitionError);
            v42 = swift_allocError();
            v118 = v125;
            v119 = (v125 + *(sub_5784(&qword_C6A8, &qword_6B48) + 48));
            v126 = enum case for RuntimeError.ipc(_:);
            v127 = sub_60C4();
            (*(*(v127 - 8) + 104))(v118, v126, v127);
            v122 = 0x8000000000007500;
            v123 = 0xD000000000000011;
            goto LABEL_88;
          }
        }

        sub_5AB4(v160);
      }

      v161 = 0u;
      v162 = 0u;
      goto LABEL_95;
    }

LABEL_77:
    if (v34 != enum case for NameRecognitionServiceMessageID.sendNotification(_:))
    {
      v124 = v153;
      (v153)(v157, v27);
      v124(v30, v27);
      goto LABEL_31;
    }

    if (!v31)
    {
      goto LABEL_85;
    }

    v158 = sub_6064();
    v159 = v114;
    sub_62E4();
    if (*(v31 + 2))
    {
      v115 = sub_2FCC(v160);
      if (v116)
      {
        sub_5C20(*(v31 + 7) + 32 * v115, &v161);
        sub_5AB4(v160);
        if (*(&v162 + 1))
        {
          if (swift_dynamicCast())
          {
            sub_5FC4(v160[0]);

            (v153)(v157, v27);
            goto LABEL_31;
          }

          v7 = v150;
          v13 = v154;
          goto LABEL_87;
        }

LABEL_86:
        sub_5CF8(&v161, &qword_C6D0, &qword_6B68);
LABEL_87:
        sub_5E0C(&qword_C6A0, &type metadata accessor for NameRecognitionError, &protocol conformance descriptor for NameRecognitionError);
        v42 = swift_allocError();
        v118 = v117;
        v119 = (v117 + *(sub_5784(&qword_C6A8, &qword_6B48) + 48));
        v120 = enum case for RuntimeError.ipc(_:);
        v121 = sub_60C4();
        (*(*(v121 - 8) + 104))(v118, v120, v121);
        v122 = 0x8000000000007520;
        v123 = 0xD000000000000021;
LABEL_88:
        *v119 = v123;
        v119[1] = v122;
        (*(v13 + 104))(v118, enum case for NameRecognitionError.runtime(_:), v7);
        swift_willThrow();
        goto LABEL_89;
      }
    }

    goto LABEL_84;
  }

  sub_5F94();
  v7 = v150;
  if (!v68)
  {
    (v153)(v157, v27);
    goto LABEL_31;
  }

  (v153)(v157, v27);
  v42 = v68;
LABEL_7:
  v160[0]._countAndFlagsBits = v42;
  swift_errorRetain();
  sub_5784(&qword_C6B0, &qword_6B50);
  v49 = v148;
  v50 = swift_dynamicCast();
  v51 = *(v13 + 56);
  if (v50)
  {
    v51(v49, 0, 1, v7);
    v52 = v142;
    (*(v13 + 32))(v142, v49, v7);
    sub_5F74();
    swift_allocObject();
    sub_5F64();
    sub_5E0C(&qword_C6C8, &type metadata accessor for NameRecognitionError, &protocol conformance descriptor for NameRecognitionError);
    v75 = sub_5F54();
    v149 = 0;
    v77 = v76;
    sub_5784(&qword_C6B8, &qword_6B58);
    v78 = swift_initStackObject();
    *(v78 + 16) = xmmword_69E0;
    v160[0]._countAndFlagsBits = sub_6094();
    v160[0]._object = v79;
    sub_62E4();
    *(v78 + 96) = &type metadata for Data;
    *(v78 + 72) = v75;
    *(v78 + 80) = v77;
    sub_5B78(v75, v77);
    v80 = sub_3208(v78);
    swift_setDeallocating();
    sub_5CF8(v78 + 32, &qword_C6C0, &qword_6B60);

    sub_5BCC(v75, v77);

    (*(v13 + 8))(v52, v150);
  }

  else
  {
    v51(v49, 1, 1, v7);
    sub_5CF8(v49, &qword_C690, &qword_6B38);
    sub_5784(&qword_C6B8, &qword_6B58);
    v64 = swift_initStackObject();
    *(v64 + 16) = xmmword_69E0;
    v160[0]._countAndFlagsBits = sub_6094();
    v160[0]._object = v65;
    sub_62E4();
    v160[0]._countAndFlagsBits = v42;
    swift_errorRetain();
    v66 = sub_6244();
    *(v64 + 96) = &type metadata for String;
    *(v64 + 72) = v66;
    *(v64 + 80) = v67;
    v80 = sub_3208(v64);
    swift_setDeallocating();
    sub_5CF8(v64 + 32, &qword_C6C0, &qword_6B60);
  }

LABEL_32:
  sub_5CF8(v163, &qword_C698, &qword_6B40);
  return v80;
}

Swift::Int sub_51C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5784(&qword_C688, &qword_6B30);
    v3 = sub_62F4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_5A58(v6 + 40 * v4, v19);
      result = sub_62C4(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_5A58(*(v3 + 48) + 40 * i, v18);
        v11 = sub_62D4();
        result = sub_5AB4(v18);
        if (v11)
        {
          sub_5AB4(v19);
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

Swift::Int _s30AXNameRecognitionPluginService04NamebcD0C48possibleRequiredEntitlementsForProcessingMessage14withIdentifierShys11AnyHashableVGSgSi_tFZ_0()
{
  sub_5784(&qword_C680, &qword_6B28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_69F0;
  sub_62E4();
  sub_62E4();
  sub_62E4();
  sub_62E4();
  sub_62E4();
  v1 = sub_51C4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}

void sub_54B0(uint64_t a1)
{
  sub_5568();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_5568()
{
  if (!qword_C648)
  {
    v0 = sub_61F4();
    if (!v1)
    {
      atomic_store(v0, &qword_C648);
    }
  }
}

uint64_t getEnumTagSinglePayload for NameRecognitionPluginService.ServiceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NameRecognitionPluginService.ServiceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_5730()
{
  result = qword_C650;
  if (!qword_C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C650);
  }

  return result;
}

uint64_t sub_5784(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_57CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_5814(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_57CC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_585C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_5894()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2380();
  }
}

uint64_t sub_58E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_58FC(void *a1)
{
  if (AXDeviceIsUnlocked() && a1 && (byte_C798 & 1) == 0)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    v3 = a1;
    v6[4] = sub_5A34;
    v6[5] = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1C18;
    v6[3] = &unk_8868;
    v4 = _Block_copy(v6);
    v5 = v3;

    AXPerformBlockOnMainThread();
    _Block_release(v4);
    byte_C798 = AXDeviceIsUnlocked();
  }
}

uint64_t sub_59FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_5784(&qword_C698, &qword_6B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5B78(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_5BCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_5C20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_5C7C()
{
  result = qword_C6E0;
  if (!qword_C6E0)
  {
    sub_57CC(&qword_C6D8, &qword_6B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6E0);
  }

  return result;
}

uint64_t sub_5CF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5784(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_5D58()
{
  result = qword_C708;
  if (!qword_C708)
  {
    sub_57CC(&qword_C700, &qword_6B88);
    sub_5E0C(&qword_C710, &type metadata accessor for NREnrolledName, &protocol conformance descriptor for NREnrolledName);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C708);
  }

  return result;
}

uint64_t sub_5E0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5E54(void *a1)
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

_OWORD *sub_5EA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_5EB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5784(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}