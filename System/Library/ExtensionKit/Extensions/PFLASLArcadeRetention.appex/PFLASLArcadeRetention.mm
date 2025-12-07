int64_t sub_1000171A4(id a1, NSArray *a2, NSArray *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v6 = [location[0] firstObject];
  v5 = [v8 firstObject];
  v7 = [v6 compare:?];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

uint64_t sub_100021030(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100022C78(&qword_1000324C8, &unk_1000272B0);
    v2 = sub_100024428();
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
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100022C1C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100023398(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100023398(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100023398(v31, v32);
    result = sub_1000243D8(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100023398(v32, (v2[7] + 32 * v10));
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

uint64_t sub_1000212F8()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100021384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100021450;

  return PFLTaskRunner.resolveTask(for:taskPreferences:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100021450()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100021544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000215F4;

  return PFLTaskRunner.ensureDataAvailability(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_1000215F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000216E8()
{
  v1 = sub_100024208();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_100021748()
{
  v1 = sub_100024218();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_1000217A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100021858;

  return sub_100022F28(a1);
}

uint64_t sub_100021858(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100021978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000233A8;

  return PFLTaskRunner.handleNoTasksAvailable(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_100021A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000233AC;

  return PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)(a1, a2, a3);
}

unint64_t sub_100021AD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100021BA4(v11, 0, 0, 1, a1, a2);
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
    sub_100022C1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100022D6C(v11);
  return v7;
}

unint64_t sub_100021BA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100021CB0(a5, a6);
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
    result = sub_100024418();
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

char *sub_100021CB0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100021CFC(a1, a2);
  sub_100021E2C(&off_10002C7C8);
  return v3;
}

char *sub_100021CFC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100021F18(v5, 0);
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

  result = sub_100024418();
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
        v10 = sub_100024398();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100021F18(v10, 0);
        result = sub_100024408();
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

uint64_t sub_100021E2C(uint64_t result)
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

  result = sub_100021F8C(result, v11, 1, v3);
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

void *sub_100021F18(uint64_t a1, uint64_t a2)
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

  sub_100022C78(&qword_1000324B0, &qword_100027290);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100021F8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100022C78(&qword_1000324B0, &qword_100027290);
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

unint64_t sub_100022080(uint64_t a1, uint64_t a2)
{
  sub_100024448();
  sub_100024378();
  v4 = sub_100024458();

  return sub_10002213C(a1, a2, v4);
}

unint64_t sub_1000220F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000243D8(*(v2 + 40));

  return sub_1000221F4(a1, v4);
}

unint64_t sub_10002213C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100024438())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000221F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100022DBC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000243E8();
      sub_100022D18(v8);
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

uint64_t sub_1000222BC()
{
  v0 = sub_100024318();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v56 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v56 - v9;
  __chkstk_darwin(v8);
  v12 = &v56 - v11;
  v13 = AMD_DOMAIN_APPS;
  v14 = objc_allocWithZone(AMDClientRequestEvent);
  v15 = v13;
  v16 = sub_100024348();
  v17 = [v14 initWithFeatureName:v16 withAccountDSID:0 andAccountStoreFrontId:0 inDomain:v15 withCustomDescriptor:0 andSchemaVersion:0];

  if (!v17)
  {
    sub_1000241C8();
    v27 = sub_100024308();
    v28 = sub_1000243B8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to create AMDClientRequestEvent", v29, 2u);
    }

    (*(v1 + 8))(v4, v0);
    goto LABEL_16;
  }

  v18 = [objc_allocWithZone(AMDClient) init];
  v19 = [v18 getFeature:v17];

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = sub_100024338();

  v57 = sub_100024358();
  v58 = v21;
  sub_1000243F8();
  if (!*(v20 + 16) || (v22 = sub_1000220F8(v59), (v23 & 1) == 0))
  {

    sub_100022D18(v59);
LABEL_13:
    sub_1000241C8();
    v30 = sub_100024308();
    v31 = sub_1000243B8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to get feature contains_arcade_plays from AMDClient", v32, 2u);
    }

    (*(v1 + 8))(v7, v0);
    goto LABEL_16;
  }

  sub_100022C1C(*(v20 + 56) + 32 * v22, v60);
  sub_100022D18(v59);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v25 = v57;
  v24 = v58;
  if (v25 != sub_100024358() || v24 != v26)
  {
    v35 = sub_100024438();

    if (v35)
    {
      goto LABEL_20;
    }

    v57 = sub_100024358();
    v58 = v46;
    sub_1000243F8();
    if (*(v20 + 16) && (v47 = sub_1000220F8(v59), (v48 & 1) != 0))
    {
      sub_100022C1C(*(v20 + 56) + 32 * v47, v60);
      sub_100022D18(v59);

      if (swift_dynamicCast())
      {
        v50 = v57;
        v49 = v58;
LABEL_36:
        sub_1000241C8();

        v51 = sub_100024308();
        v52 = sub_1000243B8();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v59[0] = v54;
          *v53 = 136315138;
          v55 = sub_100021AD8(v50, v49, v59);

          *(v53 + 4) = v55;
          _os_log_impl(&_mh_execute_header, v51, v52, "Failed to get feature contains_arcade_plays from AMDClient with error %s", v53, 0xCu);
          sub_100022D6C(v54);
        }

        else
        {
        }

        (*(v1 + 8))(v10, v0);
LABEL_16:
        v33 = 0;
        return v33 & 1;
      }
    }

    else
    {

      sub_100022D18(v59);
    }

    v49 = 0xE700000000000000;
    v50 = 0x6E776F6E6B6E75;
    goto LABEL_36;
  }

LABEL_20:
  v57 = sub_100024358();
  v58 = v36;
  sub_1000243F8();
  if (!*(v20 + 16) || (v37 = sub_1000220F8(v59), (v38 & 1) == 0))
  {

    sub_100022D18(v59);
    goto LABEL_27;
  }

  sub_100022C1C(*(v20 + 56) + 32 * v37, v60);
  sub_100022D18(v59);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    sub_1000241C8();
    v39 = sub_100024308();
    v40 = sub_1000243B8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v59[0] = v42;
      *v41 = 136315138;
      v43 = sub_100024358();
      v45 = sub_100021AD8(v43, v44, v59);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "No %s returned from AMDClient", v41, 0xCu);
      sub_100022D6C(v42);
    }

    (*(v1 + 8))(v12, v0);
    goto LABEL_16;
  }

  if (v57 == 1702195828 && v58 == 0xE400000000000000)
  {

    v33 = 1;
  }

  else
  {
    v33 = sub_100024438();
  }

  return v33 & 1;
}

uint64_t sub_100022A64()
{
  v0 = sub_1000242C8();
  if (!*(v0 + 16))
  {
  }

  v1 = sub_100022080(0xD000000000000010, 0x8000000100029ED0);
  if ((v2 & 1) == 0)
  {
  }

  sub_100022C1C(*(v0 + 56) + 32 * v1, v9);

  sub_100022C78(&qword_1000324A0, &qword_100027288);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (!*(v8 + 16))
  {
  }

  v4 = sub_100022080(0xD000000000000015, 0x8000000100029EF0);
  if ((v5 & 1) == 0)
  {
  }

  sub_100022C1C(*(v8 + 56) + 32 * v4, v9);

  result = swift_dynamicCast();
  if (result && (v8 & 1) != 0)
  {
    v6 = sub_1000242D8();
    sub_100022CC0();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for PFLError.dataNotAvailable(_:), v6);
    if (sub_1000222BC())
    {
    }

    else
    {
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100022C1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100022C78(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100022CC0()
{
  result = qword_1000324A8;
  if (!qword_1000324A8)
  {
    sub_1000242D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000324A8);
  }

  return result;
}

uint64_t sub_100022D6C(void *a1)
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

unint64_t sub_100022E18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022C78(&qword_1000324B8, &qword_1000272A0);
    v3 = sub_100024428();
    v4 = a1 + 32;

    while (1)
    {
      sub_100023328(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100022080(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100023398(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_100022F28(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_100022FB8, 0, 0);
}

uint64_t sub_100022FB8()
{
  v1 = objc_allocWithZone(AMDDODMLTask);
  v2 = sub_100024348();
  v3 = [v1 initWithErrorDomain:v2];

  v4 = sub_1000242C8();
  sub_100021030(v4);

  v5 = objc_allocWithZone(MLRTaskParameters);
  isa = sub_100024328().super.isa;

  v7 = [v5 initWithParametersDict:isa];

  sub_1000242B8();
  v8 = objc_allocWithZone(MLRTaskAttachments);
  sub_100024148();
  v9 = sub_1000243A8().super.isa;

  v10 = [v8 initWithURLs:v9];

  v11 = [objc_allocWithZone(MLRTask) initWithParameters:v7 attachments:v10];
  *(v0 + 16) = 0;
  v12 = [v3 performTask:v11 error:v0 + 16];
  v13 = *(v0 + 16);
  if (v12)
  {
    v14 = v12;
    v15 = v13;
    v16 = [v14 JSONResult];
    if (v16)
    {
      v17 = v16;
      sub_100024338();
    }

    else
    {
      sub_100022E18(&_swiftEmptyArrayStorage);
    }

    v21 = [v14 vector];
    if (v21)
    {
      v22 = v21;
      sub_100024158();
    }

    sub_1000241E8();
    swift_allocObject();
    v23 = sub_1000241D8();

    v24 = *(v0 + 8);

    return v24(v23);
  }

  else
  {
    v18 = v13;
    sub_100024138();

    swift_willThrow();
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100023328(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022C78(&qword_1000324C0, &qword_1000272A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100023398(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000233B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100024134;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100023460(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100023508;

  return sub_100023998(a1);
}

uint64_t sub_100023508(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100023604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000236E8;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000236E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000237DC(uint64_t a1)
{
  v2 = sub_100023944();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100023888();
  sub_100024168();
  return 0;
}

unint64_t sub_100023888()
{
  result = qword_1000324D0;
  if (!qword_1000324D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000324D0);
  }

  return result;
}

unint64_t sub_100023944()
{
  result = qword_1000324D8;
  if (!qword_1000324D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000324D8);
  }

  return result;
}

uint64_t sub_100023998(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_100024278();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_1000242A8();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100023AB4, 0, 0);
}

uint64_t sub_100023AB4()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = v0[12];
    v4 = v0[11];
    v18 = v0[10];
    v5 = sub_100024358();
    v7 = v6;

    v0[7] = &type metadata for PFLASLArcadeRetention;
    sub_100022C78(&qword_1000324E0, &qword_100027388);
    sub_100024368();
    sub_100022C78(&qword_1000324E8, &qword_100027390);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000272C0;

    sub_100024298();
    sub_100024288();
    v0[8] = v8;
    sub_1000240A0(&qword_1000324F0, &type metadata accessor for PFLPluginConsent, &protocol conformance descriptor for PFLPluginConsent);
    sub_100022C78(&qword_1000324F8, &qword_100027398);
    sub_100023FF4();
    sub_1000243C8();
    (*(v4 + 104))(v3, enum case for PFLTaskSource.CKProd(_:), v18);
    sub_1000242F8();
    swift_allocObject();
    v0[16] = sub_1000242E8();
    v21._countAndFlagsBits = 0x6F44726F7272452ELL;
    v21._object = 0xEC0000006E69616DLL;
    sub_100024388(v21);
    v9 = type metadata accessor for PFLAMDODMLTaskRunner();
    v10 = swift_allocObject();
    v0[17] = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v7;
    v0[5] = v9;
    v11 = sub_1000240A0(&qword_100032508, type metadata accessor for PFLAMDODMLTaskRunner, &unk_100027210);
    v0[2] = v10;
    v0[6] = v11;
    v19 = &async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:);

    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_100023E68;
    v13 = v0[9];

    return (v19)(v13, v0 + 2);
  }

  else
  {
    v15 = objc_allocWithZone(sub_100024188());
    v16 = sub_100024178();

    v17 = v0[1];

    return v17(v16);
  }
}

uint64_t sub_100023E68(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 152) = a1;

  sub_1000240E8((v2 + 16));

  return _swift_task_switch(sub_100023F70, 0, 0);
}

uint64_t sub_100023F70()
{

  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100023FF4()
{
  result = qword_100032500;
  if (!qword_100032500)
  {
    sub_100024058(&qword_1000324F8, &qword_100027398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032500);
  }

  return result;
}

uint64_t sub_100024058(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000240A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000240E8(void *a1)
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