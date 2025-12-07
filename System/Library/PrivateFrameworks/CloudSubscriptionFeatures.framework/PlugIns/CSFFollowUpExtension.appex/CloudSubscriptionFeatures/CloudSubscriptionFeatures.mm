void sub_100001364(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v67 = a4;
  v68 = a3;
  v6 = sub_1000030C8(&qword_10000C230, &qword_100005028);
  __chkstk_darwin(v6 - 8);
  v64 = &v58 - v7;
  v8 = sub_100004B00();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v66 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v61 = &v58 - v13;
  __chkstk_darwin(v12);
  v15 = &v58 - v14;
  sub_100004A90();
  v16 = a2;
  v17 = a1;
  v18 = sub_100004AF0();
  v19 = sub_100004BB0();

  v20 = os_log_type_enabled(v18, v19);
  v65 = a2;
  v62 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v59 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v60 = v8;
    v25 = v24;
    v69 = v24;
    *v22 = 136315650;
    *(v22 + 4) = sub_100002B20(0xD000000000000031, 0x8000000100005120, &v69);
    *(v22 + 12) = 2112;
    *(v22 + 14) = v17;
    *(v22 + 22) = 2112;
    *(v22 + 24) = v16;
    *v23 = a1;
    v23[1] = a2;
    v26 = v17;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: processing follow up item %@, action %@", v22, 0x20u);
    sub_1000030C8(&qword_10000C238, &qword_100005040);
    swift_arrayDestroy();

    sub_10000330C(v25);
    v8 = v60;

    v9 = v59;
  }

  v28 = *(v9 + 8);
  v28(v15, v8);
  if (!a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1000019C4())
  {
    v29 = v61;
    sub_100004A90();
    v30 = sub_100004AF0();
    v31 = sub_100004BB0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v8;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v69 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100002B20(0xD000000000000031, 0x8000000100005120, &v69);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s: handling image creation CFU", v33, 0xCu);
      sub_10000330C(v34);

      v35 = v29;
      v36 = v32;
    }

    else
    {

      v35 = v29;
      v36 = v8;
    }

    v28(v35, v36);
    v50 = v65;
    v51 = v62;
    v52 = sub_100004B90();
    v53 = v64;
    (*(*(v52 - 8) + 56))(v64, 1, 1, v52);
    sub_100004B70();
    v54 = v51;
    v55 = v63;
    v56 = sub_100004B60();
    v57 = swift_allocObject();
    v57[2] = v56;
    v57[3] = &protocol witness table for MainActor;
    v57[4] = v50;
    v57[5] = v55;
    sub_1000020D8(0, 0, v53, &unk_100005038, v57);

LABEL_14:
    if (v68)
    {
      v68(1);
      return;
    }

    goto LABEL_17;
  }

  v37 = v66;
  sub_100004A90();
  v38 = v17;
  v39 = sub_100004AF0();
  v40 = sub_100004BB0();
  if (!os_log_type_enabled(v39, v40))
  {

    v48 = v37;
    v49 = v8;
    goto LABEL_13;
  }

  v41 = v8;
  v42 = swift_slowAlloc();
  v69 = swift_slowAlloc();
  *v42 = 136315394;
  *(v42 + 4) = sub_100002B20(0xD000000000000031, 0x8000000100005120, &v69);
  *(v42 + 12) = 2080;
  v43 = [v38 uniqueIdentifier];

  if (v43)
  {
    v44 = sub_100004B20();
    v46 = v45;

    v47 = sub_100002B20(v44, v46, &v69);

    *(v42 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s: no special handling for CFU id %s", v42, 0x16u);
    swift_arrayDestroy();

    v48 = v66;
    v49 = v41;
LABEL_13:
    v28(v48, v49);
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1000019C4()
{
  v1 = v0;
  v2 = sub_100004AC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 uniqueIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_100004B20();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  (*(v3 + 104))(v5, enum case for FollowUp.Feature.adm(_:), v2);
  v11 = sub_100004AB0();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    if (v8 == v11 && v10 == v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_100004BF0();
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100001B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_100004B00();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_100004B70();
  v4[6] = sub_100004B60();
  v7 = sub_100004B50();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_100001C44, v7, v6);
}

void sub_100001C44()
{
  v12 = v0;
  if (v0[2])
  {
    if (sub_100001FD0())
    {

      sub_100004A90();
      v1 = sub_100004AF0();
      v2 = sub_100004BB0();
      v3 = os_log_type_enabled(v1, v2);
      v5 = v0[4];
      v4 = v0[5];
      v6 = v0[3];
      if (v3)
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v11 = v8;
        *v7 = 136315138;
        *(v7 + 4) = sub_100002B20(0xD000000000000031, 0x8000000100005120, &v11);
        _os_log_impl(&_mh_execute_header, v1, v2, "%s: image creation notification was dismissed", v7, 0xCu);
        sub_10000330C(v8);
      }

      (*(v5 + 8))(v4, v6);

      v9 = v0[1];

      v9();
    }

    else
    {
      v10 = swift_task_alloc();
      v0[9] = v10;
      *v10 = v0;
      v10[1] = sub_100001E48;

      sub_100003C94();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100001E48()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100001F68, v3, v2);
}

uint64_t sub_100001F68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100001FD0()
{
  v1 = v0;
  v2 = [v0 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100004B20();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_100004AE0();
  v7 = sub_100004AA0();
  if (v6)
  {
    if (v4 == v7 && v6 == v8)
    {

      return 1;
    }

    v9 = sub_100004BF0();

    if (v9)
    {
      return 1;
    }
  }

  else
  {
  }

  v10 = [v1 label];
  if (v10)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_1000020D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000030C8(&qword_10000C230, &qword_100005028);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100003358(a3, v25 - v10);
  v12 = sub_100004B90();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000048A0(v11, &qword_10000C230, &qword_100005028);
  }

  else
  {
    sub_100004B80();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100004B50();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100004B30() + 32;
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

      sub_1000048A0(a3, &qword_10000C230, &qword_100005028);

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

  sub_1000048A0(a3, &qword_10000C230, &qword_100005028);
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

uint64_t sub_1000024B4(char a1, uint64_t a2)
{
  v4 = sub_100004B00();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004A90();
  swift_errorRetain();
  v8 = sub_100004AF0();
  v9 = sub_100004BB0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_100002B20(0xD000000000000019, 0x80000001000051E0, &v17);
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    *(v10 + 18) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v10 + 20) = v13;
    *v11 = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s completed with success %{BOOL}d, error %@", v10, 0x1Cu);
    sub_1000048A0(v11, &qword_10000C238, &qword_100005040);

    sub_10000330C(v12);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1000026E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_100002878(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CSFFollowUpExtension();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000028D0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000028E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002930(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002A28;

  return v6(a1);
}

uint64_t sub_100002A28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100002B20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002BEC(v11, 0, 0, 1, a1, a2);
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
    sub_100004958(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000330C(v11);
  return v7;
}

unint64_t sub_100002BEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002CF8(a5, a6);
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
    result = sub_100004BD0();
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

char *sub_100002CF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002D44(a1, a2);
  sub_100002E74(&off_100008380);
  return v3;
}

char *sub_100002D44(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002F60(v5, 0);
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

  result = sub_100004BD0();
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
        v10 = sub_100004B40();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002F60(v10, 0);
        result = sub_100004BC0();
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

uint64_t sub_100002E74(uint64_t result)
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

  result = sub_100002FD4(result, v11, 1, v3);
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

void *sub_100002F60(uint64_t a1, uint64_t a2)
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

  sub_1000030C8(&qword_10000C250, &qword_100005070);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002FD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000030C8(&qword_10000C250, &qword_100005070);
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

uint64_t sub_1000030C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003110()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100003158(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003218;

  return sub_100001B50(a1, v4, v5, v6);
}

uint64_t sub_100003218()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000330C(void *a1)
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

uint64_t sub_100003358(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000030C8(&qword_10000C230, &qword_100005028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000033C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004A28;

  return sub_100002930(a1, v4);
}

uint64_t sub_100003480()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000034B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003218;

  return sub_100002930(a1, v4);
}

uint64_t sub_100003570(uint64_t (*a1)(void))
{
  v2 = sub_100004B00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004A90();
  v6 = sub_100004AF0();
  v7 = sub_100004BB0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100002B20(0xD000000000000029, 0x8000000100005260, &v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000330C(v9);
  }

  result = (*(v3 + 8))(v5, v2);
  if (a1)
  {
    return a1(0);
  }

  __break(1u);
  return result;
}

void sub_100003730()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_100004B10();
    v4[4] = sub_1000024B4;
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_1000026E8;
    v4[3] = &unk_100008448;
    v3 = _Block_copy(v4);
    [v1 openApplicationWithBundleIdentifier:v2 usingConfiguration:0 completionHandler:v3];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

id sub_100003838()
{
  v0 = sub_100004B00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000030C8(&qword_10000C240, &qword_100005068);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_100004A80();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  sub_100004A70();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000048A0(v6, &qword_10000C240, &qword_100005068);
  }

  v32 = v1;
  (*(v8 + 32))(v13, v6, v7);
  sub_100004A90();
  (*(v8 + 16))(v11, v13, v7);
  v15 = sub_100004AF0();
  v16 = sub_100004BB0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v0;
    v18 = v17;
    v30 = swift_slowAlloc();
    v33 = v30;
    *v18 = 136315394;
    *(v18 + 4) = sub_100002B20(0xD000000000000022, 0x8000000100005230, &v33);
    *(v18 + 12) = 2080;
    sub_100004900();
    v19 = sub_100004BE0();
    v21 = v20;
    v22 = v11;
    v23 = *(v8 + 8);
    v23(v22, v7);
    v24 = sub_100002B20(v19, v21, &v33);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s launching app store link %s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v32 + 8))(v3, v31);
  }

  else
  {

    v25 = v11;
    v23 = *(v8 + 8);
    v23(v25, v7);
    (*(v32 + 8))(v3, v0);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v27 = result;
    sub_100004A60(v26);
    v29 = v28;
    [v27 openURL:v28 configuration:0 completionHandler:0];

    return (v23)(v13, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100003C94()
{
  v1 = sub_100004B00();
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v2 = sub_100004AC0();
  v0[12] = v2;
  v0[13] = *(v2 - 8);
  v0[14] = swift_task_alloc();
  sub_100004B70();
  v0[15] = sub_100004B60();
  v4 = sub_100004B50();
  v0[16] = v4;
  v0[17] = v3;

  return _swift_task_switch(sub_100003E04, v4, v3);
}

uint64_t sub_100003E04()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_100004AE0();
  (*(v2 + 104))(v1, enum case for FollowUp.Feature.adm(_:), v3);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_100003EE0;
  v5 = v0[14];

  return static FollowUp.clearCFU(_:)(v5);
}

uint64_t sub_100003EE0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_100004420;
  }

  else
  {
    v8 = sub_100004078;
  }

  return _swift_task_switch(v8, v7, v6);
}

id sub_100004078(uint64_t a1)
{
  v30 = v1;
  sub_100004A90();
  v2 = sub_100004AF0();
  v3 = sub_100004BB0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[6];
  v7 = v1[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ADM CFU was successfully cleared", v8, 2u);
  }

  v9 = *(v7 + 8);
  v9(v5, v6);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v11 = result;

    v12 = sub_100004B10();
    v13 = [v11 applicationIsInstalled:v12];

    if (v13)
    {
      sub_100004A90();
      v14 = sub_100004AF0();
      v15 = sub_100004BB0();
      v16 = os_log_type_enabled(v14, v15);
      v17 = v1[10];
      v18 = v1[6];
      if (v16)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v29 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_100002B20(0xD000000000000029, 0x8000000100005190, &v29);
        _os_log_impl(&_mh_execute_header, v14, v15, "%s: Image Playground is installed, will launch the app", v19, 0xCu);
        sub_10000330C(v20);
      }

      v9(v17, v18);
      sub_100003730();
    }

    else
    {
      sub_100004A90();
      v21 = sub_100004AF0();
      v22 = sub_100004BB0();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v1[9];
      v25 = v1[6];
      if (v23)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v29 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_100002B20(0xD000000000000029, 0x8000000100005190, &v29);
        _os_log_impl(&_mh_execute_header, v21, v22, "%s: Image Playground is not found, opening App Store page", v26, 0xCu);
        sub_10000330C(v27);
      }

      v9(v24, v25);
      sub_100003838();
    }

    v28 = v1[1];

    return v28();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100004420(uint64_t a1)
{
  v36 = v1;
  sub_100004A90();
  swift_errorRetain();
  v2 = sub_100004AF0();
  v3 = sub_100004BA0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[7];
    v34 = v1[8];
    v5 = v1[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_100004C00();
    v10 = sub_100002B20(v8, v9, &v35);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "error clearing ADM CFU %s", v6, 0xCu);
    sub_10000330C(v7);

    v11 = *(v4 + 8);
    v11(v34, v5);
  }

  else
  {
    v13 = v1[7];
    v12 = v1[8];
    v14 = v1[6];

    v11 = *(v13 + 8);
    v11(v12, v14);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v16 = result;

    v17 = sub_100004B10();
    v18 = [v16 applicationIsInstalled:v17];

    if (v18)
    {
      sub_100004A90();
      v19 = sub_100004AF0();
      v20 = sub_100004BB0();
      v21 = os_log_type_enabled(v19, v20);
      v22 = v1[10];
      v23 = v1[6];
      if (v21)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v35 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_100002B20(0xD000000000000029, 0x8000000100005190, &v35);
        _os_log_impl(&_mh_execute_header, v19, v20, "%s: Image Playground is installed, will launch the app", v24, 0xCu);
        sub_10000330C(v25);
      }

      v11(v22, v23);
      sub_100003730();
    }

    else
    {
      sub_100004A90();
      v26 = sub_100004AF0();
      v27 = sub_100004BB0();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v1[9];
      v30 = v1[6];
      if (v28)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v35 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_100002B20(0xD000000000000029, 0x8000000100005190, &v35);
        _os_log_impl(&_mh_execute_header, v26, v27, "%s: Image Playground is not found, opening App Store page", v31, 0xCu);
        sub_10000330C(v32);
      }

      v11(v29, v30);
      sub_100003838();
    }

    v33 = v1[1];

    return v33();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100004888(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000048A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000030C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100004900()
{
  result = qword_10000C248;
  if (!qword_10000C248)
  {
    sub_100004A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C248);
  }

  return result;
}

uint64_t sub_100004958(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for FLUpdateResult()
{
  if (!qword_10000C258)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10000C258);
    }
  }
}