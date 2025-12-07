uint64_t sub_1000514C8(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_100051508(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return _swift_task_switch(sub_100051550, v1, 0);
}

uint64_t sub_100051550()
{
  v1 = v0[6];
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];
    sub_10005327C(&qword_10009F1F0, v2, type metadata accessor for BackendGroup, &unk_10007EBD0);
    v6 = swift_task_alloc();
    v0[8] = v6;
    v6[2] = v3;
    v6[3] = v5;
    v6[4] = v4;
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_100051708;

    return withTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  else
  {
    sub_100051EC8();
    swift_allocError();
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100051708()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1000224A8, v1, 0);
}

uint64_t sub_100051858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_100051908, a3, 0);
}

uint64_t sub_100051908()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v3 + 16);
  if (v4)
  {
    v31 = **(v0 + 96);
    v5 = sub_10007A0A0();
    v6 = *(v5 - 8);
    v29 = *(v6 + 56);
    v28 = (v6 + 48);
    v27 = (v6 + 8);

    v7 = 32;
    v30 = v5;
    v32 = v3;
    while (1)
    {
      v33 = v4;
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = *(v0 + 112);
      v13 = *(v0 + 120);
      v14 = *(v0 + 104);
      v34 = *(v3 + v7);
      v29(v10, 1, 1, v5);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      *(v15 + 32) = v34;
      *(v15 + 48) = v12;
      *(v15 + 56) = v14;
      *(v15 + 64) = v13;
      sub_10001A1D4(v10, v11);
      LODWORD(v11) = (*v28)(v11, 1, v5);
      swift_unknownObjectRetain_n();

      v17 = *(v0 + 128);
      if (v11 == 1)
      {
        sub_1000096C4(*(v0 + 128), &qword_10009E000, &qword_10007BA70);
        if (*v16)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_10007A090();
        (*v27)(v17, v5);
        if (*v16)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_10007A050();
          v19 = v20;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_10:
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_10007EC58;
      *(v21 + 24) = v15;

      if (v19 | v18)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v19;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 136);
      *(v0 + 72) = 1;
      *(v0 + 80) = v8;
      *(v0 + 88) = v31;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_1000096C4(v9, &qword_10009E000, &qword_10007BA70);
      v7 += 16;
      v3 = v32;
      v4 = v33 - 1;
      v5 = v30;
      if (v33 == 1)
      {

        break;
      }
    }
  }

  v22 = *(v0 + 104);
  v23 = sub_10005327C(&qword_10009F1F0, v2, type metadata accessor for BackendGroup, &unk_10007EBD0);
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  v25 = sub_10000712C(&qword_10009F2D8, &qword_10007EC68);
  *v24 = v0;
  v24[1] = sub_100051CEC;

  return TaskGroup.awaitAllRemainingTasks(isolation:)(v22, v23, v25);
}

uint64_t sub_100051CEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100051E18(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100007838;

  return sub_100051858(v8, a2, v5, v6, v7);
}

unint64_t sub_100051EC8()
{
  result = qword_10009F1F8;
  if (!qword_10009F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F1F8);
  }

  return result;
}

uint64_t sub_100051F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a5;
  v7[17] = a7;
  v7[15] = a4;
  sub_10000712C(&qword_10009F2E0, &qword_10007EC70);
  v7[18] = swift_task_alloc();
  v10 = sub_100079530();
  v7[19] = v10;
  v7[20] = *(v10 - 8);
  v7[21] = swift_task_alloc();
  v11 = sub_100079B30();
  v7[22] = v11;
  v7[23] = *(v11 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  sub_10000712C(&qword_10009F2E8, &unk_10007EC78);
  v7[26] = swift_task_alloc();
  v12 = sub_100079B40();
  v7[27] = v12;
  v7[28] = *(v12 - 8);
  v7[29] = swift_task_alloc();
  ObjectType = swift_getObjectType();
  v16 = (*(a5 + 8) + **(a5 + 8));
  v14 = swift_task_alloc();
  v7[30] = v14;
  *v14 = v7;
  v14[1] = sub_1000521EC;

  return v16(a6, ObjectType, a5);
}

uint64_t sub_1000521EC()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100052504, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100052378()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  swift_beginAccess();
  swift_unknownObjectRetain();
  v3 = sub_100052F7C((v1 + 112), v2);
  v4 = swift_unknownObjectRelease();
  v6 = *(*(v1 + 112) + 16);
  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    sub_1000531BC(v3, v6);
    swift_endAccess();
    v4 = sub_100052454;
    v6 = 0;
    v5 = 0;
  }

  return _swift_task_switch(v4, v6, v5);
}

uint64_t sub_100052454()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100052504()
{
  v37 = v0;
  *(v0 + 80) = *(v0 + 248);
  v1 = *(v0 + 160);
  swift_errorRetain();
  sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v3(v7, 0, 1, v6);
    (*(v5 + 32))(v4, v7, v6);
    LOBYTE(v7) = sub_1000794E0();
    (*(v5 + 8))(v4, v6);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = *(v0 + 144);
    v3(v8, 1, 1, *(v0 + 152));
    sub_1000096C4(v8, &qword_10009F2E0, &qword_10007EC70);
  }

  v9 = *(v0 + 224);
  *(v0 + 88) = *(v0 + 248);
  swift_errorRetain();
  v10 = swift_dynamicCast();
  v11 = *(v9 + 56);
  if (v10)
  {
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v14 = *(v0 + 208);
    v15 = *(v0 + 216);
    v16 = *(v0 + 192);
    v34 = *(v0 + 200);
    v18 = *(v0 + 176);
    v17 = *(v0 + 184);
    v11(v14, 0, 1, v15);
    (*(v13 + 32))(v12, v14, v15);
    sub_10005327C(&qword_10009F2F8, 255, &type metadata accessor for URLError, &protocol conformance descriptor for URLError);
    sub_100079790();
    sub_100079B20();
    sub_10005327C(&qword_10009F300, 255, &type metadata accessor for URLError.Code, &protocol conformance descriptor for URLError.Code);
    sub_100079FC0();
    sub_100079FC0();
    v19 = *(v17 + 8);
    v19(v16, v18);
    v19(v34, v18);
    (*(v13 + 8))(v12, v15);
    if (*(v0 + 104) == *(v0 + 112))
    {
LABEL_7:

      v20 = *(v0 + 8);

      return v20();
    }
  }

  else
  {
    v22 = *(v0 + 208);
    v11(v22, 1, 1, *(v0 + 216));
    sub_1000096C4(v22, &qword_10009F2E8, &unk_10007EC78);
  }

  if (qword_1000A47C0 != -1)
  {
    swift_once();
  }

  v23 = sub_100079BA0();
  sub_1000070F4(v23, qword_1000A47C8);
  swift_errorRetain();
  swift_unknownObjectRetain();
  v24 = sub_100079B80();
  v25 = sub_10007A170();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v24, v25))
  {
    v35 = *(v0 + 120);
    v26 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v26 = 136446466;
    *(v0 + 64) = v35;
    swift_unknownObjectRetain();
    sub_10000712C(&qword_10009F2F0, &qword_10007EC88);
    v27 = sub_100079E80();
    v29 = sub_100006B00(v27, v28, &v36);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    swift_getErrorValue();
    v30 = sub_10007A6D0();
    v32 = sub_100006B00(v30, v31, &v36);

    *(v26 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "disabling backend '%{public}s' which returned error: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
  }

  v33 = *(v0 + 136);

  return _swift_task_switch(sub_100052378, v33, 0);
}

uint64_t sub_100052A88()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100052AC4()
{
  result = qword_10009F200;
  if (!qword_10009F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F200);
  }

  return result;
}

uint64_t sub_100052B18(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100007838;

  return v6(a1);
}

uint64_t sub_100052C48(__n128 a1)
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, 72, 7);
}

uint64_t sub_100052C98()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001A474;

  return sub_100051F1C(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_100052D44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052D7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007838;

  return sub_100018644(a1, v4);
}

void *sub_100052E34(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10000712C(&qword_10009F308, &unk_1000800C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000712C(&qword_10009F2F0, &qword_10007EC88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100052F7C(void *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  for (i = 4; v3[i] != a2; i += 2)
  {
    if (v4 == ++v7)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return v7;
  }

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    if (v9 == v4)
    {
      return v7;
    }

    v10 = i * 8 + 16;
    while (v9 < v4)
    {
      if (*(v3 + v10) != a2)
      {
        if (v9 != v7)
        {
          if (v7 >= v4)
          {
            goto LABEL_23;
          }

          v12 = *(v3 + v10);
          v11 = *&v3[2 * v7 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_100052F68(v3);
          }

          *&v3[2 * v7 + 4] = v12;
          result = swift_unknownObjectRelease();
          if (v9 >= v3[2])
          {
            goto LABEL_24;
          }

          *(v3 + v10) = v11;
          result = swift_unknownObjectRelease();
          *v6 = v3;
        }

        ++v7;
      }

      ++v9;
      v4 = v3[2];
      v10 += 16;
      if (v9 == v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000530EC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_10000712C(&qword_10009F2F0, &qword_10007EC88);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000531BC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100052E34(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1000530EC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10005327C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000532C4()
{
  type metadata accessor for RequestOptions();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  swift_beginAccess();
  *(v0 + 16) = 0;
  static RequestOptions.globalRequestOptions = v0;
}

uint64_t RequestOptions.__allocating_init(networkingDelegate:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t *RequestOptions.globalRequestOptions.unsafeMutableAddressor()
{
  if (qword_1000A49E0 != -1)
  {
    swift_once();
  }

  return &static RequestOptions.globalRequestOptions;
}

uint64_t static RequestOptions.globalRequestOptions.getter()
{
  if (qword_1000A49E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static RequestOptions.globalRequestOptions.setter(uint64_t a1)
{
  if (qword_1000A49E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static RequestOptions.globalRequestOptions = a1;
}

uint64_t (*static RequestOptions.globalRequestOptions.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1000A49E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t RequestOptions.init(networkingDelegate:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

id sub_1000535B0(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = (a1 >> 8) & 1;
  v6 = [objc_allocWithZone(C2RequestOptions) init];
  [v6 set_timeoutIntervalForRequest:5.0];
  [v6 setAllowsCellularAccess:v4 & 1];
  [v6 set_allowsExpensiveAccess:v5];
  v7 = sub_100079DF0();
  [v6 set_sourceApplicationBundleIdentifier:v7];

  swift_beginAccess();
  if (*(v3 + 16))
  {
    [v6 setNetworkingDelegate:?];
  }

  return v6;
}

uint64_t RequestOptions.__deallocating_deinit(__n128 a1)
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10005371C()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6D78);
  sub_1000070F4(v0, qword_1000A6D78);
  return sub_100079B90();
}

uint64_t sub_100053794(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC21CloudTelemetryService8Throttle_state) = 0;
  v3 = OBJC_IVAR____TtC21CloudTelemetryService8Throttle_location;
  v4 = sub_1000798B0();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

id sub_100053858()
{
  v1 = OBJC_IVAR____TtC21CloudTelemetryService8Throttle_state;
  v2 = *(v0 + OBJC_IVAR____TtC21CloudTelemetryService8Throttle_state);
  if (v2)
  {
    goto LABEL_3;
  }

  v11 = sub_1000798D0();
  v13 = v12;
  v14 = objc_opt_self();
  sub_100007230(v11, v13);
  isa = sub_100079910().super.isa;
  sub_1000071DC(v11, v13);
  v26[0] = 0;
  v16 = [v14 propertyListWithData:isa options:0 format:0 error:v26];

  if (v16)
  {
    v17 = v26[0];
    sub_10007A2D0();
    sub_1000071DC(v11, v13);
    swift_unknownObjectRelease();
    sub_10000712C(&qword_10009E290, qword_10007BD90);
    v18 = swift_dynamicCast();
    v19 = v25;
    if (!v18)
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = v26[0];
    sub_1000797A0();

    swift_willThrow();
    sub_1000071DC(v11, v13);

    v19 = 0;
  }

  *(v0 + v1) = v19;

  v2 = *(v0 + v1);
  if (v2)
  {
LABEL_3:
    if (!*(v2 + 16))
    {
      goto LABEL_23;
    }

    v3 = sub_10000A0FC(0xD000000000000011, 0x8000000100083FD0);
    if (v4)
    {
      sub_10000978C(*(v2 + 56) + 32 * v3, v26);
      sub_100054868();
      if (swift_dynamicCast())
      {
        if (!*(v2 + 16) || (v5 = sub_10000A0FC(0xD000000000000012, 0x8000000100083FF0), (v6 & 1) == 0) || (sub_10000978C(*(v2 + 56) + 32 * v5, v26), (swift_dynamicCast() & 1) == 0))
        {

          goto LABEL_23;
        }

        if (*(v2 + 16))
        {
          v7 = sub_10000A0FC(0x756F437972746572, 0xEC0000007265746ELL);
          if (v8)
          {
            sub_10000978C(*(v2 + 56) + 32 * v7, v26);

            if (swift_dynamicCast())
            {
              v9 = v25;
              [v25 doubleValue];
              [v25 doubleValue];
              v10 = [v25 integerValue];

LABEL_28:
              return v10;
            }

LABEL_23:
            if (qword_1000A49F0 != -1)
            {
              swift_once();
            }

            v21 = sub_100079BA0();
            sub_1000070F4(v21, qword_1000A6D78);
            v9 = sub_100079B80();
            v22 = sub_10007A170();
            if (os_log_type_enabled(v9, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&_mh_execute_header, v9, v22, "failed to decode throttle state", v23, 2u);
            }

            v10 = 0;
            goto LABEL_28;
          }
        }
      }
    }

    goto LABEL_23;
  }

  return 0;
}

void sub_100053CB8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = [objc_allocWithZone(NSNumber) initWithDouble:a2];
  v8 = sub_100054868();
  v28 = v8;
  *&v27 = v7;
  sub_100032BD8(&v27, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100054B6C(v26, 0xD000000000000011, 0x8000000100083FD0, isUniquelyReferenced_nonNull_native);
  v10 = [objc_allocWithZone(NSNumber) initWithDouble:a3];
  v28 = v8;
  *&v27 = v10;
  sub_100032BD8(&v27, v26);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_100054B6C(v26, 0xD000000000000012, 0x8000000100083FF0, v11);
  v12 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v28 = v8;
  *&v27 = v12;
  sub_100032BD8(&v27, v26);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100054B6C(v26, 0x756F437972746572, 0xEC0000007265746ELL, v13);
  *(v4 + OBJC_IVAR____TtC21CloudTelemetryService8Throttle_state) = &_swiftEmptyDictionarySingleton;

  v14 = objc_opt_self();
  isa = sub_100079D30().super.isa;

  *&v27 = 0;
  v16 = [v14 dataWithPropertyList:isa format:100 options:0 error:&v27];

  v17 = v27;
  if (v16)
  {
    v18 = sub_100079930();
    v20 = v19;

    sub_100079940();
    sub_1000071DC(v18, v20);
  }

  else
  {
    v21 = v17;
    sub_1000797A0();

    swift_willThrow();

    if (qword_1000A49F0 != -1)
    {
      swift_once();
    }

    v22 = sub_100079BA0();
    sub_1000070F4(v22, qword_1000A6D78);
    v23 = sub_100079B80();
    v24 = sub_10007A170();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "failed to encode throttle", v25, 2u);
    }
  }
}

uint64_t sub_100054108()
{
  *(v1 + 24) = v0;

  return _swift_task_switch(sub_100054198, v0, 0);
}

uint64_t sub_100054198()
{
  *(v0[3] + OBJC_IVAR____TtC21CloudTelemetryService8Throttle_state) = 0;

  v1 = [objc_opt_self() defaultManager];
  sub_100079800(OBJC_IVAR____TtC21CloudTelemetryService8Throttle_location);
  v3 = v2;
  v0[2] = 0;
  v4 = [v1 removeItemAtURL:v2 error:v0 + 2];

  v5 = v0[2];
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v7 = v5;
    sub_1000797A0();

    swift_willThrow();
    if (qword_1000A49F0 != -1)
    {
      swift_once();
    }

    v8 = sub_100079BA0();
    sub_1000070F4(v8, qword_1000A6D78);
    v9 = sub_100079B80();
    v10 = sub_10007A170();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "failed to clear throttle", v11, 2u);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100054394()
{
  v1[2] = v0;
  v2 = sub_100079A00();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100054454, v0, 0);
}

uint64_t sub_100054454()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_100053858();
  v5 = v4;
  v7 = v6;
  sub_1000799C0();
  sub_1000799B0();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  v10 = 1;
  if (v5 != 0.0)
  {
    v10 = v7 == 0.0 || v9 + 3600.0 < v5 || v5 + v7 < v9;
  }

  v12 = v0[1];

  return v12(v10);
}

uint64_t sub_100054544()
{
  v1[2] = v0;
  v2 = sub_100079A00();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100054604, v0, 0);
}

uint64_t sub_100054604()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_100053858();
  sub_1000799C0();
  sub_1000799B0();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  result = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = 86400.0;
    if ((v4 ^ 2) <= 86400.0)
    {
      v8 = (v4 ^ 2);
    }

    sub_100053CB8(result, v6, v8);

    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_1000546E8()
{
  v1 = OBJC_IVAR____TtC21CloudTelemetryService8Throttle_location;
  v2 = sub_1000798B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for Throttle(uint64_t a1)
{
  result = qword_1000A4A90;
  if (!qword_1000A4A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000547C4(uint64_t a1)
{
  result = sub_1000798B0();
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

unint64_t sub_100054868()
{
  result = qword_10009EC80;
  if (!qword_10009EC80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009EC80);
  }

  return result;
}

uint64_t sub_1000548B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000712C(&qword_10009F500, &unk_10007ED40);
  v33 = v4;
  result = sub_10007A4C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100032BD8(v24, v34);
      }

      else
      {
        sub_10000978C(v24, v34);
      }

      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100032BD8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_100054B6C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000A0FC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100054D28();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000548B4(v16, a4 & 1);
    v11 = sub_10000A0FC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_10007A6C0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1000070A8(v22);

    sub_100032BD8(a1, v22);
  }

  else
  {
    sub_100054CBC(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100054CBC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100032BD8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_100054D28()
{
  v1 = v0;
  sub_10000712C(&qword_10009F500, &unk_10007ED40);
  v2 = *v0;
  v3 = sub_10007A4B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000978C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100032BD8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }
}

uint64_t sub_100054ECC()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6D90);
  sub_1000070F4(v0, qword_1000A6D90);
  return sub_100079B90();
}

uint64_t sub_100054F48()
{
  v1[6] = v0;
  v2 = sub_100079A00();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100055014, v0, 0);
}

uint64_t sub_100055014()
{
  v1 = *(v0[6] + 112);
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[7];
    v4 = v0[8];

    sub_1000799C0();
    sub_100079970();
    v5 = *(v4 + 8);
    v0[12] = v5;
    v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v2, v3);
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_100055220;
    v7 = v0[10];

    return sub_100021C08(v7);
  }

  else
  {
    if (qword_1000A4AA0 != -1)
    {
      swift_once();
    }

    v9 = sub_100079BA0();
    sub_1000070F4(v9, qword_1000A6D90);
    v10 = sub_100079B80();
    v11 = sub_10007A190();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "cleanup cache activity skipped due to bad initialization", v12, 2u);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100055220()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[6];

    return _swift_task_switch(sub_100055548, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[16] = v4;
    *v4 = v2;
    v4[1] = sub_100055390;

    return sub_100022D30();
  }
}

uint64_t sub_100055390()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100055740;
  }

  else
  {
    v4 = sub_1000554BC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000554BC()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100055548()
{
  v12 = v0;
  (*(v0 + 96))(*(v0 + 80), *(v0 + 56));
  if (qword_1000A4AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  sub_1000070F4(v1, qword_1000A6D90);
  swift_errorRetain();
  v2 = sub_100079B80();
  v3 = sub_10007A180();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = sub_10007A6D0();
    v8 = sub_100006B00(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to delete outdated sessions: %{public}s", v4, 0xCu);
    sub_1000070A8(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100055740()
{
  v12 = v0;
  (*(v0 + 96))(*(v0 + 80), *(v0 + 56));
  if (qword_1000A4AA0 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  sub_1000070F4(v1, qword_1000A6D90);
  swift_errorRetain();
  v2 = sub_100079B80();
  v3 = sub_10007A180();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = sub_10007A6D0();
    v8 = sub_100006B00(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "failed to delete outdated sessions: %{public}s", v4, 0xCu);
    sub_1000070A8(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100055938()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100007838;

  return v4();
}

double sub_100055A48()
{
  CacheCleanupActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();

  return result;
}

uint64_t sub_100055A8C()
{
  v0 = *CacheCleanupActivityConfig.identifier.unsafeMutableAddressor();

  return v0;
}

unint64_t sub_100055AC0(uint64_t a1)
{
  result = sub_100055AE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100055AE8()
{
  result = qword_10009F508;
  if (!qword_10009F508)
  {
    type metadata accessor for CacheCleanupActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F508);
  }

  return result;
}

uint64_t sub_100055B74@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100056940(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_100055BA4(char a1)
{
  result = 0x79745F746E657665;
  switch(a1)
  {
    case 1:
      result = 0x6C72755F74736F70;
      break;
    case 2:
      result = 0x676E696C706D6173;
      break;
    case 3:
    case 12:
    case 16:
      result = 0xD000000000000012;
      break;
    case 4:
    case 20:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x5F64656C62616E65;
      break;
    case 9:
      result = 0x6C625F746E657665;
      break;
    case 10:
      result = 0x68775F746E657665;
      break;
    case 11:
      result = 0x68745F746E657665;
      break;
    case 13:
      result = 0x737265746C6966;
      break;
    case 14:
      result = 0x635F646568736168;
      break;
    case 15:
      result = 0x6863726172656968;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x656469727265766FLL;
      break;
    case 19:
      result = 0x746C6165725F7369;
      break;
    case 21:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100055E7C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100055BA4(*a1);
  v5 = v4;
  if (v3 == sub_100055BA4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10007A610();
  }

  return v8 & 1;
}

uint64_t sub_100055F04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000736570;
  v3 = a1;
  v4 = 0x737265746C6966;
  if (a1 != 2)
  {
    v4 = 0x73747069726373;
  }

  v5 = 0xD000000000000012;
  v6 = 0x80000001000840A0;
  if (!a1)
  {
    v5 = 0x79745F746E657665;
    v6 = 0xEB00000000736570;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v3 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (a2 > 1u)
  {
    v10 = a2 == 2;
    v2 = 0xE700000000000000;
    v9 = 0xE700000000000000;
    if (a2 == 2)
    {
      v11 = 0x737265746C6966;
    }

    else
    {
      v11 = 0x73747069726373;
    }
  }

  else
  {
    v9 = 0x80000001000840A0;
    v10 = a2 == 0;
    if (a2)
    {
      v11 = 0xD000000000000012;
    }

    else
    {
      v11 = 0x79745F746E657665;
    }
  }

  if (v10)
  {
    v12 = v2;
  }

  else
  {
    v12 = v9;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_10007A610();
  }

  return v13 & 1;
}

Swift::Int sub_100056044()
{
  v1 = *v0;
  sub_10007A730();
  sub_100055BA4(v1);
  sub_100079EC0();

  return sub_10007A760();
}

uint64_t sub_1000560A8(uint64_t a1)
{
  sub_100055BA4(*v1);
  sub_100079EC0();
}

Swift::Int sub_1000560FC(uint64_t a1)
{
  v2 = *v1;
  sub_10007A730();
  sub_100055BA4(v2);
  sub_100079EC0();

  return sub_10007A760();
}

unint64_t sub_10005615C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100056AFC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10005618C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100055BA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000561C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100056AFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000561F4(uint64_t a1)
{
  v2 = sub_1000584E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100056230(uint64_t a1)
{
  v2 = sub_1000584E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10005626C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100056B50(a2, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v10[12];
    v6 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v6;
    v7 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v7;
    v8 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v8;
    v9 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v9;
    result = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000562D8()
{
  if (*v0)
  {
    return 0x6C6F687365726874;
  }

  else
  {
    return 0x7972746E756F63;
  }
}

uint64_t sub_100056318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_10007A610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10007A610();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000563FC(uint64_t a1)
{
  v2 = sub_100058588();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100056438(uint64_t a1)
{
  v2 = sub_100058588();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100056474(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v5 = sub_1000578A8(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

Swift::Int sub_1000564B0()
{
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

uint64_t sub_100056580(uint64_t a1)
{
  sub_100079EC0();
}

Swift::Int sub_10005663C(uint64_t a1)
{
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

unint64_t sub_100056708@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100057AA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100056738(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000736570;
  v3 = 0x79745F746E657665;
  v4 = 0x737265746C6966;
  if (*v1 != 2)
  {
    v4 = 0x73747069726373;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001000840A0;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_1000567C4()
{
  v1 = 0x79745F746E657665;
  v2 = 0x737265746C6966;
  if (*v0 != 2)
  {
    v2 = 0x73747069726373;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10005684C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100057AA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100056874(uint64_t a1)
{
  v2 = sub_10005848C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000568B0(uint64_t a1)
{
  v2 = sub_10005848C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000568EC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100057AF4(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_100056940(void *a1)
{
  v3 = sub_10000751C(a1, a1[3]);
  sub_10007A780();
  if (!v1)
  {
    sub_10000751C(v9, v9[3]);
    v4 = sub_10007A630();
    if (!v4)
    {
      v3 = 1;
      goto LABEL_10;
    }

    if (v4 == 1)
    {
      v3 = 0;
LABEL_10:
      sub_1000070A8(v9);
      sub_1000070A8(a1);
      return v3;
    }

    v6 = sub_10007A400();
    swift_allocError();
    v8 = v7;
    sub_10000712C(&qword_10009F670, &qword_10007F418);
    *v8 = &type metadata for StorebagBool;
    v3 = sub_10000751C(a1, a1[3]);
    sub_10007A770();
    sub_10007A3F0();
    (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.typeMismatch(_:), v6);
    swift_willThrow();
    sub_1000070A8(v9);
  }

  sub_1000070A8(a1);
  return v3;
}

unint64_t sub_100056AFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_10007A690();

  if (v2 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100056B50@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009F638, &qword_10007F400);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v51 - v7;
  v9 = a1[3];
  v151 = a1;
  sub_10000751C(a1, v9);
  sub_1000584E0();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(v151);
  }

  v10 = v6;
  v80 = a2;
  LOBYTE(v94) = 0;
  v12 = sub_10007A550();
  v78 = v13;
  LOBYTE(v94) = 1;
  v14 = sub_10007A550();
  v76 = v15;
  v77 = 0;
  v66 = v14;
  v16 = sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  LOBYTE(v81) = 2;
  v17 = v16;
  v18 = sub_100058630(&qword_10009ECE8, &qword_10009E130, &qword_10007BCF0);
  sub_10007A520();
  v65 = v17;
  v75 = v94;
  LOBYTE(v94) = 3;
  v64 = sub_10007A510();
  v150 = v19 & 1;
  LOBYTE(v94) = 4;
  v20 = sub_10007A540();
  v79 = 0;
  v62 = v20;
  v63 = v18;
  v148 = v21 & 1;
  LOBYTE(v81) = 5;
  v27 = sub_1000585DC();
  v28 = v79;
  sub_10007A520();
  if (v28)
  {
    v79 = v28;
    (*(v10 + 8))(v8, v5);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v61 = v27;
    v60 = v94;
    LOBYTE(v81) = 6;
    sub_10007A520();
    v74 = v94;
    LOBYTE(v81) = 7;
    sub_10007A520();
    v73 = v94;
    LOBYTE(v94) = 8;
    v29 = sub_10007A500();
    v79 = 0;
    v30 = v29;
    v72 = v31;
    sub_10000712C(&qword_10009F648, &qword_10007F408);
    LOBYTE(v81) = 9;
    sub_100058630(&qword_10009F650, &qword_10009F648, &qword_10007F408);
    v32 = v79;
    sub_10007A520();
    v79 = v32;
    if (v32)
    {
      (*(v10 + 8))(v8, v5);
      v25 = 0;
      v26 = 0;
      v22 = 1;
      v23 = 1;
      v24 = 1;
    }

    else
    {
      v71 = v94;
      LOBYTE(v81) = 10;
      sub_10007A520();
      v79 = 0;
      v70 = v94;
      LOBYTE(v94) = 11;
      v59 = sub_10007A540();
      v79 = 0;
      v145 = v33 & 1;
      LOBYTE(v81) = 12;
      sub_10007A520();
      v79 = 0;
      v58 = v94;
      sub_10000712C(&qword_10009F610, &qword_10007F3E8);
      LOBYTE(v81) = 13;
      sub_100058534(&qword_10009F618, &qword_10009F610, &qword_10007F3E8);
      v34 = v79;
      sub_10007A570();
      v79 = v34;
      if (!v34)
      {
        v68 = v95;
        v69 = v94;
        v142 = v96;
        LOBYTE(v94) = 14;
        v35 = sub_10007A500();
        v67 = v36;
        v79 = 0;
        v37 = v35;
        LOBYTE(v81) = 15;
        sub_10007A520();
        v79 = 0;
        v57 = v94;
        LOBYTE(v81) = 16;
        sub_10007A520();
        v79 = 0;
        v56 = v94;
        LOBYTE(v81) = 17;
        sub_10007A520();
        v79 = 0;
        v77 = v94;
        LOBYTE(v81) = 18;
        sub_10007A520();
        v79 = 0;
        LODWORD(v65) = v94;
        LOBYTE(v81) = 19;
        sub_10007A520();
        v79 = 0;
        LODWORD(v63) = v94;
        LOBYTE(v81) = 20;
        sub_10007A520();
        v79 = 0;
        LODWORD(v61) = v94;
        sub_10000712C(&qword_10009F658, &qword_10007F410);
        v135 = 21;
        sub_100058698();
        v38 = v79;
        sub_10007A520();
        v79 = v38;
        (*(v10 + 8))(v8, v5);
        if (v38)
        {
          sub_1000070A8(v151);

          sub_10004E018(v69, v68, v142);
        }

        else
        {
          v52 = v136;
          *&v81 = v12;
          *(&v81 + 1) = v78;
          *&v82 = v75;
          *(&v82 + 1) = v66;
          *&v83 = v76;
          *(&v83 + 1) = v64;
          v55 = v150;
          LOBYTE(v84) = v150;
          *(&v84 + 1) = *v149;
          DWORD1(v84) = *&v149[3];
          *(&v84 + 1) = v62;
          v54 = v148;
          LOBYTE(v85) = v148;
          BYTE1(v85) = v60;
          WORD3(v85) = v147;
          *(&v85 + 2) = v146;
          *(&v85 + 1) = v74;
          *&v86 = v73;
          v53 = v30;
          *(&v86 + 1) = v30;
          *&v87 = v72;
          *(&v87 + 1) = v71;
          *&v88 = v70;
          *(&v88 + 1) = v59;
          *(&v89 + 2) = v143;
          HIDWORD(v90) = *&v141[3];
          *(&v90 + 9) = *v141;
          *(&v92 + 2) = v139;
          *(&v93 + 3) = v137;
          HIDWORD(v51) = v145;
          LOBYTE(v89) = v145;
          v40 = v57;
          v39 = v58;
          BYTE1(v89) = v58;
          WORD3(v89) = v144;
          *(&v89 + 1) = v69;
          *&v90 = v68;
          WORD3(v92) = v140;
          BYTE7(v93) = v138;
          v41 = v142;
          BYTE8(v90) = v142;
          v42 = v67;
          *&v91 = v37;
          *(&v91 + 1) = v67;
          LOBYTE(v92) = v57;
          v43 = v56;
          BYTE1(v92) = v56;
          *(&v92 + 1) = v77;
          LOBYTE(v93) = v65;
          BYTE1(v93) = v63;
          BYTE2(v93) = v61;
          *(&v93 + 1) = v136;
          sub_10004D64C(&v81, &v94);
          sub_1000070A8(v151);
          v94 = v12;
          v95 = v78;
          v96 = v75;
          v97 = v66;
          v98 = v76;
          v99 = v64;
          v100 = v55;
          *v101 = *v149;
          *&v101[3] = *&v149[3];
          v102 = v62;
          v103 = v54;
          v104 = v60;
          v105 = v146;
          v106 = v147;
          v107 = v74;
          v108 = v73;
          v109 = v53;
          v110 = v72;
          v111 = v71;
          v112 = v70;
          v113 = v59;
          v114 = BYTE4(v51);
          v115 = v39;
          v116 = v143;
          v117 = v144;
          v118 = v69;
          v119 = v68;
          v120 = v41;
          *v121 = *v141;
          *&v121[3] = *&v141[3];
          v122 = v37;
          v123 = v42;
          v124 = v40;
          v125 = v43;
          v127 = v140;
          v126 = v139;
          v128 = v77;
          v129 = v65;
          v130 = v63;
          v131 = v61;
          v133 = v138;
          v132 = v137;
          v134 = v52;
          result = sub_10004D6A8(&v94);
          v44 = v92;
          v45 = v80;
          v80[10] = v91;
          v45[11] = v44;
          v45[12] = v93;
          v46 = v88;
          v45[6] = v87;
          v45[7] = v46;
          v47 = v90;
          v45[8] = v89;
          v45[9] = v47;
          v48 = v84;
          v45[2] = v83;
          v45[3] = v48;
          v49 = v86;
          v45[4] = v85;
          v45[5] = v49;
          v50 = v82;
          *v45 = v81;
          v45[1] = v50;
        }

        return result;
      }

      (*(v10 + 8))(v8, v5);
      v22 = 1;
      v23 = 1;
      v24 = 1;
      v25 = 1;
      v26 = 1;
    }
  }

  sub_1000070A8(v151);

  if (v77)
  {
    if (v22)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v22)
    {
LABEL_7:

      if ((v23 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  if (!v23)
  {
LABEL_8:
    if (v24)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:

  if (v24)
  {
LABEL_9:

    if ((v25 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:

    if (v26)
    {
    }

    return result;
  }

LABEL_15:
  if (v25)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v26)
  {
  }

  return result;
}

double sub_1000578A8(void *a1)
{
  v4 = sub_10000712C(&qword_10009F630, &qword_10007F3F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  sub_10000751C(a1, a1[3]);
  sub_100058588();
  sub_10007A790();
  if (!v1)
  {
    sub_10000712C(&qword_10009E130, &qword_10007BCF0);
    v10[15] = 0;
    sub_100058630(&qword_10009ECE8, &qword_10009E130, &qword_10007BCF0);
    sub_10007A570();
    v10[14] = 1;
    sub_10007A560();
    v2 = v9;
    (*(v5 + 8))(v7, v4);
  }

  sub_1000070A8(a1);
  return v2;
}

unint64_t sub_100057AA8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100098530;
  v6._object = a2;
  v4 = sub_10007A4F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100057AF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009F608, &unk_10007F3D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10000751C(a1, a1[3]);
  sub_10005848C();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(a1);
  }

  sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  v29 = 0;
  sub_100058630(&qword_10009ECE8, &qword_10009E130, &qword_10007BCF0);
  sub_10007A570();
  v9 = v25;
  LOBYTE(v25) = 1;
  v10 = sub_10007A510();
  v21 = v11;
  v22 = v10;
  v23 = v9;
  sub_10000712C(&qword_10009F610, &qword_10007F3E8);
  v29 = 2;
  sub_100058534(&qword_10009F618, &qword_10009F610, &qword_10007F3E8);
  sub_10007A520();
  v18 = v25;
  v19 = v26;
  v20 = v27;
  sub_10000712C(&qword_10009F620, &qword_10007F3F0);
  v29 = 3;
  sub_100058534(&qword_10009F628, &qword_10009F620, &qword_10007F3F0);
  sub_10007A570();
  (*(v6 + 8))(v8, v5);
  v12 = v25;
  v13 = v26;
  v28 = v21 & 1;
  v24 = v27;
  result = sub_1000070A8(a1);
  v15 = v22;
  *a2 = v23;
  *(a2 + 8) = v15;
  *(a2 + 16) = v28;
  v16 = v19;
  *(a2 + 24) = v18;
  *(a2 + 32) = v16;
  *(a2 + 40) = v20;
  *(a2 + 48) = v12;
  *(a2 + 56) = v13;
  *(a2 + 64) = v24;
  return result;
}

unint64_t sub_100057EA8()
{
  result = qword_10009F5C0;
  if (!qword_10009F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5C0);
  }

  return result;
}

unint64_t sub_100057F00()
{
  result = qword_10009F5C8;
  if (!qword_10009F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5C8);
  }

  return result;
}

unint64_t sub_100057F58()
{
  result = qword_10009F5D0;
  if (!qword_10009F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5D0);
  }

  return result;
}

unint64_t sub_100057FB0()
{
  result = qword_10009F5D8;
  if (!qword_10009F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5D8);
  }

  return result;
}

unint64_t sub_100058008()
{
  result = qword_10009F5E0;
  if (!qword_10009F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5E0);
  }

  return result;
}

unint64_t sub_100058060()
{
  result = qword_10009F5E8;
  if (!qword_10009F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5E8);
  }

  return result;
}

unint64_t sub_1000580B8()
{
  result = qword_10009F5F0;
  if (!qword_10009F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5F0);
  }

  return result;
}

__n128 sub_100058130(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_10005816C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000581B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorebagSectionClientHTTP.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorebagSectionClientHTTP.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100058398(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000583AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000583D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_100058418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005848C()
{
  result = qword_10009F5F8;
  if (!qword_10009F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5F8);
  }

  return result;
}

unint64_t sub_1000584E0()
{
  result = qword_10009F600;
  if (!qword_10009F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F600);
  }

  return result;
}

uint64_t sub_100058534(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000072D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100058588()
{
  result = qword_1000A54C0[0];
  if (!qword_1000A54C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A54C0);
  }

  return result;
}

unint64_t sub_1000585DC()
{
  result = qword_10009F640;
  if (!qword_10009F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F640);
  }

  return result;
}

uint64_t sub_100058630(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000072D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100058698()
{
  result = qword_10009F660;
  if (!qword_10009F660)
  {
    sub_1000072D8(&qword_10009F658, &qword_10007F410);
    sub_10005871C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F660);
  }

  return result;
}

unint64_t sub_10005871C()
{
  result = qword_10009F668;
  if (!qword_10009F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F668);
  }

  return result;
}

unint64_t sub_100058784()
{
  result = qword_1000A55D0[0];
  if (!qword_1000A55D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A55D0);
  }

  return result;
}

unint64_t sub_1000587DC()
{
  result = qword_1000A56E0;
  if (!qword_1000A56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A56E0);
  }

  return result;
}

unint64_t sub_100058834()
{
  result = qword_1000A56E8[0];
  if (!qword_1000A56E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A56E8);
  }

  return result;
}

const char *sub_1000588A4(int a1, uint64_t a2, unint64_t a3)
{
  v4 = 0x6F727245204C5153;
  if (a3)
  {
    v4 = a2;
  }

  v9 = v4;

  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  sub_100079F00(v10);

  result = sqlite3_errstr(a1);
  if (result)
  {
    v6 = sub_100079F10();
    v8 = v7;

    v11._countAndFlagsBits = v6;
    v11._object = v8;
    sub_100079F00(v11);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100058984()
{
  v1 = 0x6465736F6C63;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000026;
  }

  v2 = 0xD00000000000001ALL;
  if (*v0)
  {
    v2 = 0xD000000000000020;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t type metadata accessor for SQLiteDB.Location(uint64_t a1)
{
  result = qword_1000A5C00;
  if (!qword_1000A5C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100058A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLiteDB.Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100058AB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000798B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ppDb - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SQLiteDB.Location(0);
  __chkstk_darwin(v8 - 8);
  v10 = &ppDb - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  ppDb = 0;
  sub_100058A54(a1, v10);
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_100079870();
    (*(v5 + 8))(v7, v4);
  }

  v11 = sub_100079EA0();

  v12 = sqlite3_open_v2((v11 + 32), &ppDb, 32774, 0);

  v13 = ppDb;
  if (!ppDb || v12)
  {
    sub_1000590E4();
    swift_allocError();
    *v14 = v12;
    *(v14 + 8) = 0xD000000000000017;
    *(v14 + 16) = 0x8000000100084580;
    swift_willThrow();
    sub_10005A24C(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10005A24C(a1);
    *(v2 + 16) = v13;
  }

  return v2;
}

uint64_t sub_100058D70()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    *(v0 + 24) = 1;
    sqlite3_close_v2(*(v0 + 16));
  }

  return swift_deallocClassInstance();
}

uint64_t sub_100058DB8()
{
  v1 = sqlite3_expanded_sql(*(v0 + 16));
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100079F10();
  sqlite3_free(v2);
  return v3;
}

uint64_t sub_100058E14()
{
  v1 = v0;
  v2 = sqlite3_step(*(v0 + 16));
  if (v2 == 101)
  {
    swift_beginAccess();
    *(v0 + 24) = 1;
    return 0;
  }

  else if (v2 == 100)
  {
  }

  else
  {
    v3 = v2;
    sub_10007A3B0(38);

    strcpy(v8, "Statement ((");
    BYTE5(v8[1]) = 0;
    HIWORD(v8[1]) = -5120;
    v9._countAndFlagsBits = (*(*v0 + 96))(v4);
    sub_100079F00(v9);

    v10._object = 0x80000001000842F0;
    v10._countAndFlagsBits = 0xD000000000000018;
    sub_100079F00(v10);
    v1 = v8[0];
    v5 = v8[1];
    sub_1000590E4();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v1;
    *(v6 + 16) = v5;
    swift_willThrow();
  }

  return v1;
}

void sub_100058F68(void (*a1)(uint64_t))
{
  v4 = *(v1 + 16);
  while (1)
  {
    v5 = sqlite3_step(v4);
    if (v5 != 100)
    {
      break;
    }

    a1(v6);

    if (v2)
    {
      return;
    }
  }

  if (v5 == 101)
  {
    swift_beginAccess();
    *(v1 + 24) = 1;
  }

  else
  {
    v7 = v5;
    sub_10007A3B0(38);

    strcpy(v12, "Statement ((");
    BYTE5(v12[1]) = 0;
    HIWORD(v12[1]) = -5120;
    v13._countAndFlagsBits = (*(*v1 + 96))(v8);
    sub_100079F00(v13);

    v14._object = 0x80000001000842F0;
    v14._countAndFlagsBits = 0xD000000000000018;
    sub_100079F00(v14);
    v9 = v12[0];
    v10 = v12[1];
    sub_1000590E4();
    swift_allocError();
    *v11 = v7;
    *(v11 + 8) = v9;
    *(v11 + 16) = v10;
    swift_willThrow();
  }
}

unint64_t sub_1000590E4()
{
  result = qword_10009F678;
  if (!qword_10009F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F678);
  }

  return result;
}

uint64_t sub_100059138@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  result = sub_100058E14();
  if (!v4)
  {
    if (result)
    {
      a1();
      if (sub_100058E14())
      {

        v11 = *(v3 + 16);
        do
        {
          v12 = sqlite3_step(v11);
        }

        while (v12 == 100);
        if (v12 == 101)
        {
          swift_beginAccess();
          v5[24] = 1;
          sub_1000593AC();
          swift_allocError();
          *v13 = 1;
        }

        else
        {
          v14 = v12;
          sub_10007A3B0(38);

          strcpy(v19, "Statement ((");
          BYTE5(v19[1]) = 0;
          HIWORD(v19[1]) = -5120;
          v20._countAndFlagsBits = (*(*v5 + 96))(v15);
          sub_100079F00(v20);

          v21._object = 0x80000001000842F0;
          v21._countAndFlagsBits = 0xD000000000000018;
          sub_100079F00(v21);
          v16 = v19[0];
          v17 = v19[1];
          sub_1000590E4();
          swift_allocError();
          *v18 = v14;
          *(v18 + 8) = v16;
          *(v18 + 16) = v17;
        }

        swift_willThrow();

        return (*(*(a2 - 8) + 8))(a3, a2);
      }

      else
      {
      }
    }

    else
    {
      sub_1000593AC();
      swift_allocError();
      *v10 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1000593AC()
{
  result = qword_10009F680;
  if (!qword_10009F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F680);
  }

  return result;
}

uint64_t sub_100059400(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[3] = a2;
  return (*(*v2 + 152))(sub_100059460, v4, a1);
}

uint64_t sub_100059460(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (sqlite3_column_count(*(a1 + 16)) == 1)
  {
    v4 = *(v2 + 8);

    return v4(v5, 0, v3, v2);
  }

  else
  {
    sub_1000593AC();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_10005951C(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[3] = a2;
  v3 = *(*v2 + 152);
  v4 = sub_10007A2B0();
  return v3(sub_1000595AC, v6, v4);
}

uint64_t sub_1000595AC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (sqlite3_column_count(*(a1 + 16)) == 1)
  {
    v4 = *(v2 + 8);

    return v4(v5, 0, v3, v2);
  }

  else
  {
    sub_1000593AC();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }
}

void sub_100059668()
{
  v1 = *(v0 + 16);
  do
  {
    v2 = sqlite3_step(v1);
  }

  while (v2 == 100);
  if (v2 == 101)
  {
    swift_beginAccess();
    *(v0 + 24) = 1;
  }

  else
  {
    v3 = v2;
    sub_10007A3B0(38);

    strcpy(v8, "Statement ((");
    BYTE5(v8[1]) = 0;
    HIWORD(v8[1]) = -5120;
    v9._countAndFlagsBits = (*(*v0 + 96))(v4);
    sub_100079F00(v9);

    v10._object = 0x80000001000842F0;
    v10._countAndFlagsBits = 0xD000000000000018;
    sub_100079F00(v10);
    v5 = v8[0];
    v6 = v8[1];
    sub_1000590E4();
    swift_allocError();
    *v7 = v3;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;
    swift_willThrow();
  }
}

uint64_t sub_1000597AC(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  sub_10000751C(a2, v4);
  return (*(v5 + 8))(v2, a1, v4, v5);
}

uint64_t sub_100059820(uint64_t result)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  while (1)
  {
    v6 = 0uLL;
    v7 = v4;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v3 != v4)
    {
      if (v3 >= v4)
      {
        goto LABEL_11;
      }

      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

      *&v11[0] = v3;
      result = sub_10001378C(v5 + 40 * v3, v11 + 8);
      v6 = v11[0];
      v8 = v11[1];
      v9 = v11[2];
    }

    v12[0] = v6;
    v12[1] = v8;
    v12[2] = v9;
    if (!v9)
    {
      return result;
    }

    v10 = v6;
    sub_1000354EC((v12 + 8), v11);
    result = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    (*(*v1 + 184))(result, v11);
    result = sub_1000070A8(v11);
    v3 = v7;
    if (v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100059934()
{
  sqlite3_finalize(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10005996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);

  return v8(a2, a1, a3, a4);
}

uint64_t sub_1000599E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);

  return v8(a2, a1, a3, a4);
}

uint64_t sub_100059B20(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t sub_100059B58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if ((*(*v3 + 96))())
  {
    sub_1000590E4();
    swift_allocError();
    *v8 = 1;
    *(v8 + 8) = 0xD00000000000001DLL;
    *(v8 + 16) = 0x8000000100084310;
    return swift_willThrow();
  }

  else
  {
    result = sub_100059C58(a1, a2);
    if (!v4)
    {
      a3();
    }
  }

  return result;
}

uint64_t sub_100059C58(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);
  if (*(v3 + 24))
  {
    sub_1000593AC();
    swift_allocError();
    *v4 = 3;
  }

  else
  {
    v11 = 0;
    v5 = sub_100079EA0();
    v6 = *(v5 + 16);
    if (v6 >> 31)
    {
      __break(1u);
    }

    v7 = sqlite3_prepare_v2(*(v3 + 16), (v5 + 32), v6, &v11, 0);

    v8 = v11;
    if (v11 && !v7)
    {
      type metadata accessor for SQLiteDB.Statement();
      result = swift_allocObject();
      *(result + 24) = 0;
      *(result + 16) = v8;
      return result;
    }

    sub_1000590E4();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = 0xD00000000000001BLL;
    *(v10 + 16) = 0x80000001000845A0;
  }

  return swift_willThrow();
}

uint64_t sub_100059DD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);
  if (*(v3 + 24))
  {
    sub_1000593AC();
    swift_allocError();
    *v4 = 3;
  }

  else
  {
    v5 = *(v3 + 16);
    v6 = sub_100079EA0();
    v7 = sqlite3_exec(v5, (v6 + 32), 0, 0, 0);

    if (!v7)
    {
      return result;
    }

    sub_1000590E4();
    swift_allocError();
    *v9 = v7;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
  }

  return swift_willThrow();
}

uint64_t sub_100059ECC(uint64_t a1, uint64_t a2)
{
  if ((*(*v2 + 96))())
  {
    sub_1000590E4();
    swift_allocError();
    *v6 = 1;
    *(v6 + 8) = 0xD00000000000001DLL;
    *(v6 + 16) = 0x8000000100084310;
    return swift_willThrow();
  }

  else
  {
    result = sub_100059DD8(a1, a2);
    if (!v3)
    {
      return (*(*v2 + 104))(1);
    }
  }

  return result;
}

uint64_t sub_100059FCC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10005A004(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_10005A054(a1);
  return v2;
}

void *sub_10005A054(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for SQLiteDB.Location(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_100058A54(a1, v7);
  type metadata accessor for SQLiteDB.DBHandle();
  v8 = swift_allocObject();
  sub_100058AB8(v7);
  if (!v2)
  {
    v9 = 0xD000000000000013;
    v10 = sqlite3_exec(*(v8 + 16), "PRAGMA journal_mode=WAL;", 0, 0, 0);
    if (v10)
    {
      v11 = v10;
      v12 = "PRAGMA journal_mode=WAL;";
      v9 = 0xD000000000000014;
    }

    else
    {
      v13 = sqlite3_exec(*(v8 + 16), "PRAGMA foreign_keys=ON;", 0, 0, 0);
      if (!v13)
      {
        sub_10005A24C(a1);
        *(v3 + 112) = v8;
        return v3;
      }

      v11 = v13;
      v12 = "PRAGMA foreign_keys=ON;";
    }

    v14 = v12 | 0x8000000000000000;
    sub_1000590E4();
    swift_allocError();
    *v15 = v11;
    *(v15 + 8) = v9;
    *(v15 + 16) = v14;
    swift_willThrow();
  }

  swift_defaultActor_destroy();
  sub_10005A24C(a1);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_10005A24C(uint64_t a1)
{
  v2 = type metadata accessor for SQLiteDB.Location(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005A2A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = sub_100059C58(a1, a2);
  if (!v3)
  {
    a3();
  }

  return result;
}

uint64_t sub_10005A304(void (*a1)(uint64_t))
{
  type metadata accessor for SQLiteDB.Transaction();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v1;

  sub_100059DD8(0xD000000000000011, 0x80000001000843B0);
  if (!v2)
  {
    a1(v4);
    swift_beginAccess();
    if ((*(v4 + 24) & 1) == 0)
    {
      sub_100059DD8(0x54494D4D4F43, 0xE600000000000000);
    }
  }
}

uint64_t sub_10005A488()
{
  v1 = *(v0 + 112);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return sqlite3_close_v2(*(v1 + 16));
  }

  return result;
}

uint64_t sub_10005A4A8(uint64_t result, uint64_t a2, char a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int(*(result + 16), a2, a3 & 1);
  if (result)
  {
    v3 = result;
    sub_1000590E4();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000012;
    *(v4 + 16) = 0x80000001000843D0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005A550@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_int(*(result + 16), a2);

    *a3 = v4 > 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A5DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_9;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int(*(result + 16), a2, a3);
  if (result)
  {
    v3 = result;
    sub_1000590E4();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000012;
    *(v4 + 16) = 0x80000001000843D0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005A698@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_int(*(result + 16), a2);

    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A720@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, sqlite3_int64 *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_int64(*(result + 16), a2);

    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A788(uint64_t result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int64(*(result + 16), a2, *v2);
  if (result)
  {
    v3 = result;
    sub_1000590E4();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000014;
    *(v4 + 16) = 0x80000001000843F0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005A830@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_double(*(result + 16), a2);

    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A898(uint64_t result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_double(*(result + 16), a2, *v2);
  if (result)
  {
    v3 = result;
    sub_1000590E4();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000015;
    *(v4 + 16) = 0x8000000100084410;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005A940(sqlite3_stmt *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100079EA0();
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v7 + 16);
  if (!(v4 >> 31))
  {
    a1 = *(a1 + 2);
    if (qword_1000A5770 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  v11 = v7;
  swift_once();
  v7 = v11;
LABEL_5:
  v8 = sqlite3_bind_text(a1, a2, (v7 + 32), v4, qword_1000A5778);

  if (v8)
  {
    sub_1000590E4();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = 0xD000000000000015;
    *(v10 + 16) = 0x8000000100084430;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005AA70@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (sqlite3_column_text(*(result + 16), a2))
  {
    v4 = sub_100079F20();
    v6 = v5;
  }

  else
  {

    v4 = 0;
    v6 = 0;
  }

  *a3 = v4;
  a3[1] = v6;
  return result;
}

unint64_t sub_10005AB28()
{
  result = qword_10009F688;
  if (!qword_10009F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F688);
  }

  return result;
}

uint64_t sub_10005AB80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10005ABDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10005AC88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000798B0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005AD08(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000798B0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10005AD88(uint64_t a1)
{
  v1 = sub_1000798B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t variable initialization expression of StorebagCoordinator.pathMonitorQueue()
{
  v12 = sub_100079C90();
  v0 = *(v12 - 8);
  __chkstk_darwin(v12);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007A1C0();
  v3 = *(v11 - 8);
  __chkstk_darwin(v11);
  v10 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007A1B0();
  __chkstk_darwin(v5);
  v6 = sub_100079CC0();
  __chkstk_darwin(v6 - 8);
  v9[0] = sub_100026E98();
  v9[1] = "Failed to prepare statement";
  sub_100079CA0();
  v13 = _swiftEmptyArrayStorage;
  sub_10005D680(&qword_10009E978, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000712C(&unk_10009FB70, &qword_10007D210);
  sub_100007710(&qword_10009E980, &unk_10009FB70, &qword_10007D210);
  sub_10007A2E0();
  (*(v3 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  v7 = v12;
  (*(v0 + 104))(v2, enum case for DispatchQoS.QoSClass.background(_:), v12);
  sub_10007A1F0();
  (*(v0 + 8))(v2, v7);
  return sub_10007A1E0();
}

uint64_t sub_10005B228(uint64_t a1, uint64_t a2)
{
  v4 = sub_100079C80();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100079CC0();
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin(v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000712C(&qword_10009FB58, &qword_10007F9B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  v19[1] = *(a2 + 120);
  (*(v11 + 16))(v19 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  *(v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_10005D5D0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000054F0;
  aBlock[3] = &unk_100098BF0;
  v17 = _Block_copy(aBlock);

  sub_100079CB0();
  v23 = _swiftEmptyArrayStorage;
  sub_10005D680(&qword_10009DFE8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000712C(&qword_10009DFF0, &qword_10007BA68);
  sub_100007710(&qword_10009DFF8, &qword_10009DFF0, &qword_10007BA68);
  sub_10007A2E0();
  sub_10007A1D0();
  _Block_release(v17);
  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

uint64_t sub_10005B5C4()
{
  v0 = sub_100079C50();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v15[-v5];
  v7 = sub_100079C70();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (static StorebagCoordinator.mockAvailability == 4)
  {
    sub_100079BE0();
    sub_100079C60();
    (*(v1 + 104))(v4, enum case for NWPath.Status.unsatisfied(_:), v0);
    v11 = sub_100079C40();
    v12 = *(v1 + 8);
    v12(v4, v0);
    v12(v6, v0);
    if (v11 & 1) != 0 || (sub_100079C30())
    {
      v16 = 0;
      sub_10000712C(&qword_10009FB58, &qword_10007F9B0);
      sub_10007A070();
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      if (sub_100079C20())
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      v16 = v14;
      sub_10000712C(&qword_10009FB58, &qword_10007F9B0);
      sub_10007A070();
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v16 = static StorebagCoordinator.mockAvailability;
    sub_10000712C(&qword_10009FB58, &qword_10007F9B0);
    return sub_10007A070();
  }
}

uint64_t sub_10005B8A0(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_10005B8C0, v1, 0);
}

uint64_t sub_10005B8C0()
{
  v1 = v0[9];
  v2 = *(v0[10] + 128);
  v0[11] = v2;
  v3 = v1[3];
  v4 = v1[4];
  sub_10000751C(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = v0[3];
  v0[12] = v0[2];
  v0[13] = v5;

  sub_100019EF4((v0 + 2));
  v6 = (*v2 + 224) & 0xFFFFFFFFFFFFLL | 0x665A000000000000;
  v0[14] = *(*v2 + 224);
  v0[15] = v6;

  return _swift_task_switch(sub_10005B994, v2, 0);
}

uint64_t sub_10005B994()
{
  v1 = (*(v0 + 112))(*(v0 + 96), *(v0 + 104));

  if (v1)
  {
    v2 = *(v0 + 8);

    return v2(3);
  }

  else
  {
    v4 = *(v0 + 80);

    return _swift_task_switch(sub_10005BA4C, v4, 0);
  }
}

uint64_t sub_10005BA4C()
{
  v1 = *(v0 + 80);
  v2 = sub_10005D680(&qword_10009FA60, type metadata accessor for StorebagCoordinator, &protocol conformance descriptor for StorebagCoordinator);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_10005BB68;
  v4 = *(v0 + 80);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 136, v1, v2, 0xD000000000000013, 0x80000001000845F0, sub_10005BCDC, v4, &type metadata for SessionConfiguration.Availability);
}

uint64_t sub_10005BB68()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_10005BC78, v1, 0);
}

uint64_t type metadata accessor for StorebagCoordinator(uint64_t a1)
{
  result = qword_1000A5D20;
  if (!qword_1000A5D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005BCE4(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  return _swift_task_switch(sub_10005BD08, v2, 0);
}

uint64_t sub_10005BD08()
{
  v1 = v0[24];
  v2 = *(v0[25] + 128);
  v3 = v1[3];
  v4 = v1[4];
  sub_10000751C(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = v0[2];
  v6 = v0[3];
  v0[26] = v6;

  sub_100019EF4((v0 + 2));
  v9 = (*(*v2 + 232) + **(*v2 + 232));
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_10005BE8C;

  return v9(v0 + 14, v5, v6);
}

uint64_t sub_10005BE8C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = sub_10005C080;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_10005BFB0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005BFB0()
{
  v1 = *(v0 + 184);
  sub_100047CF0(*(v0 + 192), (v0 + 72));
  *(v0 + 168) = *(v0 + 112);
  sub_1000096C4(v0 + 168, &qword_10009ED88, &unk_10007E7C0);
  *(v0 + 152) = *(v0 + 128);
  sub_10002A4B4(v0 + 152);
  *(v0 + 176) = *(v0 + 144);
  sub_1000096C4(v0 + 176, &qword_10009ED90, qword_10007E200);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  *(v1 + 32) = *(v0 + 104);
  *v1 = v3;
  *(v1 + 16) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10005C080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C0E4(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_10005C104, v1, 0);
}

uint64_t sub_10005C104()
{
  v1 = v0[18];
  v2 = *(v0[19] + 128);
  v3 = v1[3];
  v4 = v1[4];
  sub_10000751C(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = v0[2];
  v6 = v0[3];
  v0[20] = v6;

  sub_100019EF4((v0 + 2));
  v9 = (*(*v2 + 232) + **(*v2 + 232));
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_10005C288;

  return v9(v0 + 9, v5, v6);
}

uint64_t sub_10005C288()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_10005C46C;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_10005C3AC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005C3AC()
{
  v1 = sub_10004723C(*(v0 + 144));
  *(v0 + 128) = *(v0 + 72);
  sub_1000096C4(v0 + 128, &qword_10009ED88, &unk_10007E7C0);
  *(v0 + 112) = *(v0 + 88);
  sub_10002A4B4(v0 + 112);
  *(v0 + 136) = *(v0 + 104);
  sub_1000096C4(v0 + 136, &qword_10009ED90, qword_10007E200);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10005C46C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C4D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10005C4F4, v2, 0);
}

uint64_t sub_10005C4F4()
{
  v1 = *(v0[4] + 128);
  v0[5] = v1;
  v2 = *v1 + 256;
  v0[6] = *v2;
  v0[7] = v2 & 0xFFFFFFFFFFFFLL | 0x7B8C000000000000;
  return _swift_task_switch(sub_10005C53C, v1, 0);
}

uint64_t sub_10005C53C()
{
  (*(v0 + 48))(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C5A4(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000030A0;

  return sub_10005C64C(a1);
}

uint64_t sub_10005C64C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000798B0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_100079C90();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_10007A1C0();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = sub_10007A1B0();
  v2[15] = swift_task_alloc();
  sub_100079CC0();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10005C820, 0, 0);
}

uint64_t sub_10005C820()
{
  v1 = v0[12];
  v2 = v0[10];
  v17 = v0[13];
  v18 = v0[11];
  v3 = v0[9];
  v19 = v0[8];
  v22 = v0[7];
  v23 = v0[5];
  v24 = v0[4];
  v20 = v0[6];
  v21 = v0[3];
  swift_defaultActor_initialize();
  sub_100026E98();
  sub_100079CA0();
  v0[2] = _swiftEmptyArrayStorage;
  sub_10005D680(&qword_10009E978, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000712C(&unk_10009FB70, &qword_10007D210);
  sub_100007710(&qword_10009E980, &unk_10009FB70, &qword_10007D210);
  sub_10007A2E0();
  (*(v1 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v18);
  (*(v3 + 104))(v2, enum case for DispatchQoS.QoSClass.background(_:), v19);
  sub_10007A1F0();
  (*(v3 + 8))(v2, v19);
  *(v24 + 120) = sub_10007A1E0();
  type metadata accessor for StorebagCache(0);
  v4 = *(v20 + 16);
  v4(v22, v21, v23);
  v5 = sub_100039E00();
  v6 = sub_100039E0C(v5, 0, 0, v22);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  *(v7 + 128) = v6;
  sub_10000712C(&qword_10009FA68, &qword_10007F8F8);
  v10 = sub_100079BD0();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10007B7C0;
  (*(v11 + 104))(v13 + v12, enum case for NWInterface.InterfaceType.loopback(_:), v10);
  sub_100079C10();
  swift_allocObject();
  *(v7 + 112) = sub_100079BF0();
  v14 = *(v24 + 120);

  v15 = v14;
  sub_100079C00();

  v4(v7 + OBJC_IVAR____TtC21CloudTelemetryService19StorebagCoordinator_rootCacheURL, v9, v8);

  return _swift_task_switch(sub_10005CCBC, v7, 0);
}

uint64_t sub_10005CCBC()
{
  (*(v0[6] + 8))(v0[3], v0[5]);

  v1 = v0[1];
  v2 = v0[4];

  return v1(v2);
}

uint64_t StorebagCoordinator.deinit()
{

  v1 = OBJC_IVAR____TtC21CloudTelemetryService19StorebagCoordinator_rootCacheURL;
  v2 = sub_1000798B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t StorebagCoordinator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC21CloudTelemetryService19StorebagCoordinator_rootCacheURL;
  v2 = sub_1000798B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10005CE8C(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005CFAC;

  return v6(a1);
}

uint64_t sub_10005CFAC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10005D0A8(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = a1;
  v7 = (*(*v2 + 136) + **(*v2 + 136));
  v5 = swift_task_alloc();
  *(v3 + 64) = v5;
  *v5 = v3;
  v5[1] = sub_10005D1D4;

  return v7(v3 + 16, a2);
}

uint64_t sub_10005D1D4()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 56);
    *(v6 + 32) = *(v2 + 48);
    *v6 = v4;
    *(v6 + 16) = v5;
  }

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_10005D2E8(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100007838;

  return v8(a1, a2);
}

uint64_t sub_10005D410(uint64_t a1)
{
  result = sub_10005D680(&qword_10009FA60, type metadata accessor for StorebagCoordinator, &protocol conformance descriptor for StorebagCoordinator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005D470(uint64_t a1)
{
  result = sub_1000798B0();
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

uint64_t sub_10005D528()
{
  v1 = sub_10000712C(&qword_10009FB58, &qword_10007F9B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005D5D0()
{
  sub_10000712C(&qword_10009FB58, &qword_10007F9B0);

  return sub_10005B5C4();
}

uint64_t sub_10005D668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005D680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005D6C8(char a1, char a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFFFE | a1 & 1;
}

uint64_t sub_10005D6E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 33) = HIBYTE(a5) & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_10005D708()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  v5._countAndFlagsBits = 58;
  v5._object = 0xE100000000000000;
  sub_100079F00(v5);
  v6._countAndFlagsBits = v1;
  v6._object = v2;
  sub_100079F00(v6);
  return v4;
}

uint64_t sub_10005D768()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A5D38);
  sub_1000070F4(v0, qword_1000A5D38);
  return sub_100079B90();
}

uint64_t sub_10005D7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = sub_100079C90();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_10007A1C0();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = sub_10007A1B0();
  v7[20] = swift_task_alloc();
  sub_100079CC0();
  v7[21] = swift_task_alloc();
  v7[22] = swift_allocObject();

  return _swift_task_switch(sub_10005D9A0, 0, 0);
}

uint64_t sub_10005D9A0()
{
  v25 = v0;
  v1 = *(v0 + 176);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  swift_defaultActor_initialize();
  v1[14] = 0;
  v1[18] = v7;
  v1[19] = v6;
  v1[20] = v5;
  v1[21] = v4;
  v1[22] = v3;

  *(v0 + 184) = XPCIncomingConnection.auditToken.getter(v2);
  *(v0 + 192) = v8;
  *(v0 + 200) = v9;
  *(v0 + 208) = v10;
  if (swift_stdlib_isStackAllocationSafe())
  {
    sub_10005E668(&v23, v0 + 216, (v0 + 184), v0 + 4312);
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_10005E668(&v23, v11, (v0 + 184), v11 + 4096);
  }

  v12 = v24;
  v13 = *(v0 + 176);
  v14 = *(v0 + 136);
  v20 = *(v0 + 144);
  v15 = *(v0 + 120);
  v21 = *(v0 + 128);
  v16 = *(v0 + 112);
  v22 = *(v0 + 104);
  v13[16] = v23;
  v13[17] = v12;
  sub_100026E98();
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_10007A3B0(34);

  v23 = 0xD000000000000020;
  v24 = 0x80000001000846A0;
  v17 = v13[16];
  v18 = v13[17];

  v27._countAndFlagsBits = v17;
  v27._object = v18;
  sub_100079F00(v27);

  sub_100079CA0();
  *(v0 + 40) = _swiftEmptyArrayStorage;
  sub_1000688EC(&qword_10009E978, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000712C(&unk_10009FB70, &qword_10007D210);
  sub_100026EE4();
  sub_10007A2E0();
  (*(v14 + 104))(v20, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v21);
  (*(v16 + 104))(v15, enum case for DispatchQoS.QoSClass.background(_:), v22);
  sub_10007A1F0();
  (*(v16 + 8))(v15, v22);
  v13[15] = sub_10007A1E0();

  return _swift_task_switch(sub_10005DDA0, v13, 0);
}

uint64_t sub_10005DDA0()
{
  v1 = v0[22];
  v2 = v0[11];
  v3 = *(v1 + 120);

  v4 = XPCIncomingConnection.makeConnection(targetQ:delegate:)(v3, v1, &off_100098C68, v2);
  swift_unknownObjectRelease();

  swift_beginAccess();
  *(v1 + 112) = v4;

  v5 = v0[1];
  v6 = v0[22];

  return v5(v6);
}

uint64_t sub_10005DF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v7[13] = *v6;
  v8 = sub_100079C90();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = sub_10007A1C0();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = sub_10007A1B0();
  v7[21] = swift_task_alloc();
  sub_100079CC0();
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_10005E0F0, 0, 0);
}

uint64_t sub_10005E0F0()
{
  v25 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  swift_defaultActor_initialize();
  v2[14] = 0;
  v2[18] = v7;
  v2[19] = v6;
  v2[20] = v5;
  v2[21] = v4;
  v2[22] = v3;

  *(v0 + 184) = XPCIncomingConnection.auditToken.getter(v1);
  *(v0 + 192) = v8;
  *(v0 + 200) = v9;
  *(v0 + 208) = v10;
  if (swift_stdlib_isStackAllocationSafe())
  {
    sub_10005E668(&v23, v0 + 216, (v0 + 184), v0 + 4312);
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_10005E668(&v23, v11, (v0 + 184), v11 + 4096);
  }

  v12 = v24;
  v20 = *(v0 + 152);
  v13 = *(v0 + 144);
  v21 = *(v0 + 136);
  v15 = *(v0 + 120);
  v14 = *(v0 + 128);
  v22 = *(v0 + 112);
  v16 = *(v0 + 96);
  v16[16] = v23;
  v16[17] = v12;
  sub_100026E98();
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_10007A3B0(34);

  v23 = 0xD000000000000020;
  v24 = 0x80000001000846A0;
  v17 = v16[16];
  v18 = v16[17];

  v27._countAndFlagsBits = v17;
  v27._object = v18;
  sub_100079F00(v27);

  sub_100079CA0();
  *(v0 + 40) = _swiftEmptyArrayStorage;
  sub_1000688EC(&qword_10009E978, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000712C(&unk_10009FB70, &qword_10007D210);
  sub_100026EE4();
  sub_10007A2E0();
  (*(v13 + 104))(v20, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v21);
  (*(v15 + 104))(v14, enum case for DispatchQoS.QoSClass.background(_:), v22);
  sub_10007A1F0();
  (*(v15 + 8))(v14, v22);
  v16[15] = sub_10007A1E0();

  return _swift_task_switch(sub_10005E4F0, v16, 0);
}

uint64_t sub_10005E4F0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = *(v1 + 120);

  v4 = XPCIncomingConnection.makeConnection(targetQ:delegate:)(v3, v1, &off_100098C68, v2);
  swift_unknownObjectRelease();

  swift_beginAccess();
  *(v1 + 112) = v4;

  v5 = v0[1];
  v6 = v0[12];

  return v5(v6);
}

uint64_t sub_10005E668@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t buffer@<X0>, audit_token_t *audittoken@<X2>, uint64_t a4@<X1>)
{
  *buffer = 0;
  if (!buffer)
  {
    goto LABEL_9;
  }

  if (a4 - buffer > 0xFFFFFFFFLL)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return buffer;
  }

  buffer = proc_pidpath_audittoken(audittoken, buffer, a4 - buffer);
  if (buffer < 1)
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = sub_100079F20();
    v7 = v6;
    v12[0] = 47;
    v12[1] = 0xE100000000000000;
    __chkstk_darwin(v5);
    v11[2] = v12;
    buffer = sub_100068354(sub_10004DE1C, v11, v5, v7);
    if ((v8 & 1) == 0)
    {
      v9 = sub_100079ED0();
      sub_100068584(v9, v5, v7);

      v5 = sub_100079EB0();
      v7 = v10;
    }
  }

  *a1 = v5;
  a1[1] = v7;
  return buffer;
}

void sub_10005E7F8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = swift_unknownObjectRetain();
  v7 = XPCMessage.init(fromXPC:)(v6);
  if (v7)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_10007A0A0();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v2;
    *(v12 + 40) = v9;
    *(v12 + 48) = v10;

    sub_100014B7C(0, 0, v5, &unk_10007F9E8, v12);
  }

  else
  {
    if (qword_1000A5D30 != -1)
    {
      swift_once();
    }

    v13 = sub_100079BA0();
    sub_1000070F4(v13, qword_1000A5D38);

    v18 = sub_100079B80();
    v14 = sub_10007A170();

    if (os_log_type_enabled(v18, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_100006B00(*(v2 + 128), *(v2 + 136), &v19);
      _os_log_impl(&_mh_execute_header, v18, v14, "received invalid XPC message from %{public}s", v15, 0xCu);
      sub_1000070A8(v16);
    }

    else
    {
      v17 = v18;
    }
  }
}

uint64_t sub_10005EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100007838;

  return sub_10005EB18(a5, v7);
}

uint64_t sub_10005EB18(uint64_t a1, char a2)
{
  *(v3 + 1560) = v2;
  *(v3 + 2212) = a2;
  *(v3 + 1552) = a1;
  v4 = sub_100079A00();
  *(v3 + 1568) = v4;
  *(v3 + 1576) = *(v4 - 8);
  *(v3 + 1584) = swift_task_alloc();
  *(v3 + 1592) = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  *(v3 + 1600) = swift_task_alloc();
  *(v3 + 1608) = swift_task_alloc();
  *(v3 + 1616) = swift_task_alloc();
  sub_10000712C(&qword_10009FC90, &qword_10007C910);
  *(v3 + 1624) = swift_task_alloc();
  *(v3 + 1632) = swift_task_alloc();
  *(v3 + 1640) = swift_task_alloc();
  *(v3 + 1648) = swift_task_alloc();
  sub_10000712C(&qword_10009FC98, &qword_10007FBE0);
  *(v3 + 1656) = swift_task_alloc();
  *(v3 + 1664) = swift_task_alloc();
  v5 = type metadata accessor for CachedSession(0);
  *(v3 + 1672) = v5;
  *(v3 + 1680) = *(v5 - 8);
  *(v3 + 1688) = swift_task_alloc();
  *(v3 + 1696) = swift_task_alloc();
  *(v3 + 1704) = swift_task_alloc();

  return _swift_task_switch(sub_10005ED64, v2, 0);
}

uint64_t sub_10005ED64()
{
  v1 = *(v0 + 2212);
  if (v1 <= 1)
  {
    if (*(v0 + 2212))
    {
      v21 = *(v0 + 1560);
      type metadata accessor for SubmitEventsActivity();
      v22 = v21[18];
      v23 = v21[19];
      v24 = v21[20];

      v25 = sub_10001B388(v22, v23, v24);
      *(v0 + 2096) = v25;
      v29 = (*(*v25 + 120) + **(*v25 + 120));
      v26 = swift_task_alloc();
      *(v0 + 2104) = v26;
      *v26 = v0;
      v26[1] = sub_100062934;
      v5 = v29;

      return v5();
    }

    if (qword_1000A5D30 != -1)
    {
      swift_once();
    }

    v6 = sub_100079BA0();
    *(v0 + 1712) = sub_1000070F4(v6, qword_1000A5D38);
    v7 = sub_100079B80();
    v8 = sub_10007A150();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "SendOneMessage Request Received", v9, 2u);
    }

    v10 = swift_task_alloc();
    *(v0 + 1720) = v10;
    *v10 = v0;
    v10[1] = sub_10005F340;
    v11 = *(v0 + 1664);
  }

  else
  {
    if (v1 == 2)
    {
      type metadata accessor for PostInstallActivity();
      v12 = sub_10000A0C4();
      *(v0 + 2112) = v12;
      v28 = (*(*v12 + 88) + **(*v12 + 88));
      v13 = swift_task_alloc();
      *(v0 + 2120) = v13;
      *v13 = v0;
      v13[1] = sub_100062BE0;
      v5 = v28;

      return v5();
    }

    if (v1 == 3)
    {
      type metadata accessor for CacheCleanupActivity();

      v3 = sub_1000514C8(v2);
      *(v0 + 2128) = v3;
      v27 = (*(*v3 + 104) + **(*v3 + 104));
      v4 = swift_task_alloc();
      *(v0 + 2136) = v4;
      *v4 = v0;
      v4[1] = sub_100062E8C;
      v5 = v27;

      return v5();
    }

    if (qword_1000A5D30 != -1)
    {
      swift_once();
    }

    v14 = sub_100079BA0();
    *(v0 + 2144) = sub_1000070F4(v14, qword_1000A5D38);
    v15 = sub_100079B80();
    v16 = sub_10007A150();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "CheckSamplingResult Request Received", v17, 2u);
    }

    v18 = swift_task_alloc();
    *(v0 + 2152) = v18;
    *v18 = v0;
    v18[1] = sub_100063138;
    v11 = *(v0 + 1656);
  }

  v19 = *(v0 + 1552);

  return sub_10006689C(v11, v19);
}

uint64_t sub_10005F340()
{
  v1 = *(*v0 + 1560);

  return _swift_task_switch(sub_10005F450, v1, 0);
}

uint64_t sub_10005F450()
{
  v1 = *(v0 + 1672);
  v2 = *(v0 + 1664);
  if ((*(*(v0 + 1680) + 48))(v2, 1, v1) == 1)
  {
    sub_1000096C4(v2, &qword_10009FC98, &qword_10007FBE0);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 1704);
    v6 = *(v0 + 1560);
    sub_100068CE0(v2, v5, type metadata accessor for CachedSession);
    *(v0 + 1728) = *(v5 + *(v1 + 36));
    v7 = *v5;
    v8 = *(v5 + 16);
    v9 = *(v5 + 32);
    *(v0 + 792) = *(v5 + 48);
    *(v0 + 760) = v8;
    *(v0 + 776) = v9;
    *(v0 + 744) = v7;
    *(v0 + 1736) = *(v5 + 72);
    *(v0 + 1744) = *(v0 + 744);
    *(v0 + 1752) = *(v0 + 752);
    v10 = *(v6 + 152);
    *(v0 + 1760) = v10;
    v11 = *(*v10 + 232);

    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 1768) = v12;
    *v12 = v0;
    v12[1] = sub_10005F734;
    v13 = *(v0 + 1704);
    v14 = *(v0 + 1672);

    return (v15)(v0 + 856, v13, v14, &off_100095D60);
  }
}

uint64_t sub_10005F734()
{
  v2 = *v1;
  *(*v1 + 1776) = v0;

  if (v0)
  {
    v3 = *(v2 + 1560);
    v4 = sub_100063DC8;
  }

  else
  {
    v5 = *(v2 + 1560);

    v4 = sub_10005F85C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10005F85C()
{
  v1 = *(v0 + 1760);
  *(v0 + 1784) = *(v0 + 864);
  *(v0 + 1792) = *(v0 + 856);
  *(v0 + 1464) = *(v0 + 880);
  v2 = *v1 + 248;
  *(v0 + 1800) = *v2;
  *(v0 + 1808) = v2 & 0xFFFFFFFFFFFFLL | 0x7F8D000000000000;

  return _swift_task_switch(sub_10005F904, v1, 0);
}

uint64_t sub_10005F904()
{
  v1 = *(v0 + 1560);
  (*(v0 + 1800))(*(v0 + 1744), *(v0 + 1752));

  return _swift_task_switch(sub_10005F980, v1, 0);
}

uint64_t sub_10005F980()
{
  v54 = v0;
  v1 = *(*(v0 + 1784) + 16);

  if (v1)
  {
    v51 = (*(**(*(v0 + 1560) + 160) + 136) + **(**(*(v0 + 1560) + 160) + 136));
    v2 = swift_task_alloc();
    *(v0 + 1816) = v2;
    *v2 = v0;
    v2[1] = sub_100060160;
    v3 = *(v0 + 1704);
    v4 = *(v0 + 1672);

    return v51(v0 + 856, v3, v4, &off_100095D60);
  }

  v6 = 4079420;
  *(v0 + 1840) = 0u;
  v7 = *(v0 + 1728);
  if (*(v7 + 16) && (v8 = sub_10000A0FC(0x646F6874656D5FLL, 0xE700000000000000), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v0 + 1648);
    v12 = *(v0 + 1640);
    v13 = *(*(v0 + 1728) + 56);
    v14 = type metadata accessor for ServiceEventValue(0);
    v15 = *(v14 - 8);
    sub_100068C78(v13 + *(v15 + 72) * v10, v11, type metadata accessor for ServiceEventValue);
    (*(v15 + 56))(v11, 0, 1, v14);
    sub_10000939C(v11, v12, &qword_10009FC90, &qword_10007C910);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = *(v0 + 1640);
    if (EnumCaseMultiPayload == 1)
    {
      *(v0 + 1544) = *v17;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *(v0 + 1536) = *v17;
LABEL_13:
      v21 = sub_10007A5E0();
      v20 = v22;

      goto LABEL_14;
    }

    sub_100068BD0(v17, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v18 = *(v0 + 1648);
    v19 = type metadata accessor for ServiceEventValue(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  }

  v20 = 0xE300000000000000;
  v21 = 4079420;
LABEL_14:
  *(v0 + 1864) = v20;
  *(v0 + 1856) = v21;
  sub_1000096C4(*(v0 + 1648), &qword_10009FC90, &qword_10007C910);
  if (*(v7 + 16) && (v23 = sub_10000A0FC(0x7375746174735FLL, 0xE700000000000000), (v24 & 1) != 0))
  {
    v25 = v23;
    v26 = *(v0 + 1632);
    v27 = *(v0 + 1624);
    v28 = *(*(v0 + 1728) + 56);
    v29 = type metadata accessor for ServiceEventValue(0);
    v30 = *(v29 - 8);
    sub_100068C78(v28 + *(v30 + 72) * v25, v26, type metadata accessor for ServiceEventValue);
    (*(v30 + 56))(v26, 0, 1, v29);
    sub_10000939C(v26, v27, &qword_10009FC90, &qword_10007C910);
    v31 = swift_getEnumCaseMultiPayload();
    v32 = *(v0 + 1624);
    if (v31 == 1)
    {
      *(v0 + 1528) = *v32;
      goto LABEL_22;
    }

    if (v31 == 2)
    {
      *(v0 + 1520) = *v32;
LABEL_22:
      v6 = sub_10007A5E0();
      v35 = v36;

      goto LABEL_23;
    }

    sub_100068BD0(v32, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v33 = *(v0 + 1632);
    v34 = type metadata accessor for ServiceEventValue(0);
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  v35 = 0xE300000000000000;
LABEL_23:
  *(v0 + 1880) = v35;
  *(v0 + 1872) = v6;
  sub_1000096C4(*(v0 + 1632), &qword_10009FC90, &qword_10007C910);

  v37 = sub_100079B80();
  v38 = sub_10007A190();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v39 = 136446466;
    v40 = sub_100006B00(v21, v20, &v53);

    *(v39 + 4) = v40;
    *(v39 + 12) = 2082;
    v41 = sub_100006B00(v6, v35, &v53);

    *(v39 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "sending one message %{public}s:%{public}s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v42 = *(v0 + 1792);
  v43 = *(v0 + 1784);
  v44 = *(v0 + 1560);

  XPCIncomingConnection.init(conn:)();
  *(v0 + 1200) = v45;
  *(v0 + 1208) = v46;
  *(v0 + 1216) = v47;
  *(v0 + 1888) = sub_1000685D0(v42, v43);
  *(v0 + 1896) = v48;
  *(v0 + 1904) = v49;
  v52 = (*(**(v44 + 160) + 152) + **(**(v44 + 160) + 152));
  v50 = swift_task_alloc();
  *(v0 + 1912) = v50;
  *v50 = v0;
  v50[1] = sub_10006096C;

  return v52(v0 + 744);
}

uint64_t sub_100060160(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3;

  v8 = *(v6 + 1560);
  if (v2)
  {

    v9 = sub_100064194;
  }

  else
  {
    *(v7 + 1824) = a2;
    *(v7 + 1832) = a1;
    v9 = sub_1000602AC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000602AC()
{
  v50 = v0;
  v1 = 4079420;
  v2 = v0[229];
  v0[231] = v0[228];
  v0[230] = v2;
  v3 = v0[216];
  if (*(v3 + 16) && (v4 = sub_10000A0FC(0x646F6874656D5FLL, 0xE700000000000000), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = v0[206];
    v8 = v0[205];
    v9 = *(v0[216] + 56);
    v10 = type metadata accessor for ServiceEventValue(0);
    v11 = *(v10 - 8);
    sub_100068C78(v9 + *(v11 + 72) * v6, v7, type metadata accessor for ServiceEventValue);
    (*(v11 + 56))(v7, 0, 1, v10);
    sub_10000939C(v7, v8, &qword_10009FC90, &qword_10007C910);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = v0[205];
    if (EnumCaseMultiPayload == 1)
    {
      v0[193] = *v13;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v0[192] = *v13;
LABEL_9:
      v17 = sub_10007A5E0();
      v16 = v18;

      goto LABEL_10;
    }

    sub_100068BD0(v13, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v14 = v0[206];
    v15 = type metadata accessor for ServiceEventValue(0);
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  v16 = 0xE300000000000000;
  v17 = 4079420;
LABEL_10:
  v0[233] = v16;
  v0[232] = v17;
  sub_1000096C4(v0[206], &qword_10009FC90, &qword_10007C910);
  if (!*(v3 + 16) || (v19 = sub_10000A0FC(0x7375746174735FLL, 0xE700000000000000), (v20 & 1) == 0))
  {
    v29 = v0[204];
    v30 = type metadata accessor for ServiceEventValue(0);
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
LABEL_16:
    v31 = 0xE300000000000000;
    goto LABEL_19;
  }

  v21 = v19;
  v22 = v0[204];
  v23 = v0[203];
  v24 = *(v0[216] + 56);
  v25 = type metadata accessor for ServiceEventValue(0);
  v26 = *(v25 - 8);
  sub_100068C78(v24 + *(v26 + 72) * v21, v22, type metadata accessor for ServiceEventValue);
  (*(v26 + 56))(v22, 0, 1, v25);
  sub_10000939C(v22, v23, &qword_10009FC90, &qword_10007C910);
  v27 = swift_getEnumCaseMultiPayload();
  v28 = v0[203];
  if (v27 == 1)
  {
    v0[191] = *v28;
    goto LABEL_18;
  }

  if (v27 != 2)
  {
    sub_100068BD0(v28, type metadata accessor for ServiceEventValue);
    goto LABEL_16;
  }

  v0[190] = *v28;
LABEL_18:
  v1 = sub_10007A5E0();
  v31 = v32;

LABEL_19:
  v0[235] = v31;
  v0[234] = v1;
  sub_1000096C4(v0[204], &qword_10009FC90, &qword_10007C910);

  v33 = sub_100079B80();
  v34 = sub_10007A190();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v35 = 136446466;
    v36 = sub_100006B00(v17, v16, &v49);

    *(v35 + 4) = v36;
    *(v35 + 12) = 2082;
    v37 = sub_100006B00(v1, v31, &v49);

    *(v35 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v33, v34, "sending one message %{public}s:%{public}s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v38 = v0[224];
  v39 = v0[223];
  v40 = v0[195];

  XPCIncomingConnection.init(conn:)();
  v0[150] = v41;
  v0[151] = v42;
  v0[152] = v43;
  v0[236] = sub_1000685D0(v38, v39);
  v0[237] = v44;
  v0[238] = v45;
  v48 = (*(**(v40 + 160) + 152) + **(**(v40 + 160) + 152));
  v46 = swift_task_alloc();
  v0[239] = v46;
  *v46 = v0;
  v46[1] = sub_10006096C;

  return v48(v0 + 93);
}

uint64_t sub_10006096C(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3;

  v8 = *(v6 + 1560);
  if (v2)
  {

    v9 = sub_10006484C;
  }

  else
  {
    *(v7 + 1920) = a2;
    *(v7 + 1928) = a1;
    v9 = sub_100060AB8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100060AB8()
{
  sub_100038C34(v0[236], v0[237], v0[238]);
  sub_100037D28(v0 + 117);
  sub_100009B00((v0 + 93), (v0 + 72));
  v1 = swift_task_alloc();
  v0[242] = v1;
  *v1 = v0;
  v1[1] = sub_100060BB8;
  v2 = v0[241];
  v3 = v0[240];
  v4 = v0[237];
  v5 = v0[236];

  return sub_100037DB4((v0 + 44), (v0 + 93), v2, v3, 0x4D656E4F646E6553, 0xEE00656761737365, v5, v4);
}

uint64_t sub_100060BB8()
{
  v2 = *v1;
  *(*v1 + 1944) = v0;

  if (v0)
  {
    v3 = *(v2 + 1560);

    v4 = sub_10006484C;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 1560);
    v4 = sub_100060CF0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100060CF0()
{
  v65 = v0;
  v1 = *(v0 + 1944);
  sub_10000939C(v0 + 352, v0 + 16, &unk_10009FCA0, qword_10007FBF0);
  if (*(v0 + 40))
  {
    v2 = *(v0 + 160);
    *(v0 + 312) = *(v0 + 144);
    *(v0 + 328) = v2;
    *(v0 + 344) = *(v0 + 176);
    v3 = *(v0 + 96);
    *(v0 + 248) = *(v0 + 80);
    *(v0 + 264) = v3;
    v4 = *(v0 + 128);
    *(v0 + 280) = *(v0 + 112);
    *(v0 + 296) = v4;
    v5 = *(v0 + 32);
    *(v0 + 184) = *(v0 + 16);
    *(v0 + 200) = v5;
    v6 = *(v0 + 64);
    *(v0 + 216) = *(v0 + 48);
    *(v0 + 232) = v6;
    *(v0 + 1000) = &type metadata for AllEventFieldProvider;
    *(v0 + 1008) = &off_1000974E8;
    v7 = swift_allocObject();
    *(v0 + 976) = v7;
    sub_100068ACC(v0 + 184, v7 + 16);
    sub_10002D410((v0 + 976));
    sub_100068B28(v0 + 184);
    sub_1000070A8((v0 + 976));
  }

  else
  {
    sub_1000096C4(v0 + 16, &unk_10009FCA0, qword_10007FBF0);
  }

  *(v0 + 1952) = *(v0 + 1200);
  *(v0 + 1960) = *(v0 + 1208);
  v8 = sub_10003F2A0();
  swift_beginAccess();
  if (*v8 == 1)
  {
    v9 = *(v0 + 1792);
    v10 = *(v9 + 16);
    *(v0 + 1976) = v10;
    if (v10)
    {
      v11 = *(v0 + 1592);
      *(v0 + 1984) = *(*(v0 + 1560) + 168);
      v12 = *(v11 + 80);
      *(v0 + 2208) = v12;
      *(v0 + 1992) = *(v11 + 72);
      *(v0 + 2008) = 0;
      *(v0 + 2000) = v1;
      v13 = *(v0 + 1616);
      v14 = *(v0 + 1608);
      sub_100068C78(v9 + ((v12 + 32) & ~v12), v13, type metadata accessor for SessionConfiguration.Backend);
      sub_100068C78(v13, v14, type metadata accessor for SessionConfiguration.Backend);

      v15 = sub_100079B80();
      v16 = sub_10007A190();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = *(v0 + 1880);
        v18 = *(v0 + 1872);
        v19 = *(v0 + 1864);
        v20 = *(v0 + 1856);
        v21 = *(v0 + 1608);
        v22 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v22 = 136446722;
        *(v22 + 4) = sub_100006B00(v20, v19, &v64);
        *(v22 + 12) = 2082;
        *(v22 + 14) = sub_100006B00(v18, v17, &v64);
        *(v22 + 22) = 2082;
        v23 = sub_100068D4C();
        v25 = v24;
        sub_100068BD0(v21, type metadata accessor for SessionConfiguration.Backend);
        v26 = sub_100006B00(v23, v25, &v64);

        *(v22 + 24) = v26;
        _os_log_impl(&_mh_execute_header, v15, v16, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v22, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v56 = *(v0 + 1608);

        sub_100068BD0(v56, type metadata accessor for SessionConfiguration.Backend);
      }

      v57 = *(v0 + 1984);
      *(v0 + 2016) = sub_100068D4C();
      *(v0 + 2024) = v58;
      v59 = sub_100061544;
      v60 = v57;
      goto LABEL_23;
    }
  }

  if (*(v0 + 1840))
  {

    swift_unknownObjectRetain();
    v27 = sub_100079B80();
    v28 = sub_10007A190();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 1880);
      v30 = *(v0 + 1872);
      v31 = *(v0 + 1864);
      v32 = *(v0 + 1856);
      v33 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v33 = 136446466;
      *(v33 + 4) = sub_100006B00(v32, v31, &v64);
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_100006B00(v30, v29, &v64);
      _os_log_impl(&_mh_execute_header, v27, v28, "processing sendOneMessage, immediate %{public}s:%{public}s", v33, 0x16u);
      swift_arrayDestroy();
    }

    v34 = *(v0 + 1968);
    v35 = *(v0 + 1960);
    v36 = *(v0 + 1952);
    v63 = *(v0 + 1848);
    ObjectType = swift_getObjectType();
    sub_10000712C(&qword_10009E4A8, &qword_10007C2D0);
    v38 = swift_allocObject();
    *(v0 + 2040) = v38;
    *(v38 + 16) = xmmword_10007B7C0;
    *(v38 + 32) = v36;
    *(v38 + 40) = v35;
    *(v38 + 48) = v34;
    v39 = *(v63 + 8);

    v62 = (v39 + *v39);
    v40 = swift_task_alloc();
    *(v0 + 2048) = v40;
    *v40 = v0;
    v40[1] = sub_100061D54;
    v41 = *(v0 + 1848);

    return v62(v38, ObjectType, v41);
  }

  else
  {
    if (!*(*(v0 + 1792) + 16))
    {
      v60 = *(v0 + 1760);
      v61 = *v60 + 256;
      *(v0 + 2080) = *v61;
      *(v0 + 2088) = v61 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;
      v59 = sub_100062560;
LABEL_23:

      return _swift_task_switch(v59, v60, 0);
    }

    v43 = sub_100079B80();
    v44 = sub_10007A190();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = *(v0 + 1880);
      v46 = *(v0 + 1872);
      v47 = *(v0 + 1864);
      v48 = *(v0 + 1856);
      v49 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v49 = 136446466;
      *(v49 + 4) = sub_100006B00(v48, v47, &v64);
      *(v49 + 12) = 2082;
      *(v49 + 14) = sub_100006B00(v46, v45, &v64);
      _os_log_impl(&_mh_execute_header, v43, v44, "caching sendOneMessage %{public}s:%{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000799C0();
    v50 = swift_task_alloc();
    *(v0 + 2064) = v50;
    *v50 = v0;
    v50[1] = sub_100062220;
    v51 = *(v0 + 1968);
    v52 = *(v0 + 1960);
    v53 = *(v0 + 1952);
    v54 = *(v0 + 1736);
    v55 = *(v0 + 1584);

    return sub_100020D38(v0 + 744, v55, v54, v53, v52, v51);
  }
}

uint64_t sub_100061544()
{
  v1 = *(v0 + 2000);
  sub_1000059F4(*(v0 + 2016), *(v0 + 2024), *(v0 + 1952), *(v0 + 1960), *(v0 + 1968));
  *(v0 + 2032) = v1;
  if (v1)
  {
    v2 = *(v0 + 1560);
    v3 = sub_1000650B8;
  }

  else
  {
    v4 = *(v0 + 1560);

    v3 = sub_1000615F8;
    v2 = v4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1000615F8()
{
  v55 = v0;
  sub_100068BD0(*(v0 + 1616), type metadata accessor for SessionConfiguration.Backend);
  v1 = *(v0 + 2008) + 1;
  if (v1 == *(v0 + 1976))
  {
    if (*(v0 + 1840))
    {

      swift_unknownObjectRetain();
      v2 = sub_100079B80();
      v3 = sub_10007A190();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = *(v0 + 1880);
        v5 = *(v0 + 1872);
        v6 = *(v0 + 1864);
        v7 = *(v0 + 1856);
        v8 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v8 = 136446466;
        *(v8 + 4) = sub_100006B00(v7, v6, &v54);
        *(v8 + 12) = 2082;
        *(v8 + 14) = sub_100006B00(v5, v4, &v54);
        _os_log_impl(&_mh_execute_header, v2, v3, "processing sendOneMessage, immediate %{public}s:%{public}s", v8, 0x16u);
        swift_arrayDestroy();
      }

      v9 = *(v0 + 1968);
      v10 = *(v0 + 1960);
      v11 = *(v0 + 1952);
      v53 = *(v0 + 1848);
      ObjectType = swift_getObjectType();
      sub_10000712C(&qword_10009E4A8, &qword_10007C2D0);
      v13 = swift_allocObject();
      *(v0 + 2040) = v13;
      *(v13 + 16) = xmmword_10007B7C0;
      *(v13 + 32) = v11;
      *(v13 + 40) = v10;
      *(v13 + 48) = v9;
      v14 = *(v53 + 8);

      v52 = (v14 + *v14);
      v15 = swift_task_alloc();
      *(v0 + 2048) = v15;
      *v15 = v0;
      v15[1] = sub_100061D54;
      v16 = *(v0 + 1848);

      return v52(v13, ObjectType, v16);
    }

    if (*(*(v0 + 1792) + 16))
    {

      v38 = sub_100079B80();
      v39 = sub_10007A190();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = *(v0 + 1880);
        v41 = *(v0 + 1872);
        v42 = *(v0 + 1864);
        v43 = *(v0 + 1856);
        v44 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v44 = 136446466;
        *(v44 + 4) = sub_100006B00(v43, v42, &v54);
        *(v44 + 12) = 2082;
        *(v44 + 14) = sub_100006B00(v41, v40, &v54);
        _os_log_impl(&_mh_execute_header, v38, v39, "caching sendOneMessage %{public}s:%{public}s", v44, 0x16u);
        swift_arrayDestroy();
      }

      sub_1000799C0();
      v45 = swift_task_alloc();
      *(v0 + 2064) = v45;
      *v45 = v0;
      v45[1] = sub_100062220;
      v46 = *(v0 + 1968);
      v47 = *(v0 + 1960);
      v48 = *(v0 + 1952);
      v49 = *(v0 + 1736);
      v50 = *(v0 + 1584);

      return sub_100020D38(v0 + 744, v50, v49, v48, v47, v46);
    }

    v37 = *(v0 + 1760);
    v51 = *v37 + 256;
    *(v0 + 2080) = *v51;
    *(v0 + 2088) = v51 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;
    v36 = sub_100062560;
  }

  else
  {
    v18 = *(v0 + 2032);
    *(v0 + 2008) = v1;
    *(v0 + 2000) = v18;
    v19 = *(v0 + 1616);
    v20 = *(v0 + 1608);
    sub_100068C78(*(v0 + 1792) + ((*(v0 + 2208) + 32) & ~*(v0 + 2208)) + *(v0 + 1992) * v1, v19, type metadata accessor for SessionConfiguration.Backend);
    sub_100068C78(v19, v20, type metadata accessor for SessionConfiguration.Backend);

    v21 = sub_100079B80();
    v22 = sub_10007A190();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 1880);
      v24 = *(v0 + 1872);
      v25 = *(v0 + 1864);
      v26 = *(v0 + 1856);
      v27 = *(v0 + 1608);
      v28 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v28 = 136446722;
      *(v28 + 4) = sub_100006B00(v26, v25, &v54);
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_100006B00(v24, v23, &v54);
      *(v28 + 22) = 2082;
      v29 = sub_100068D4C();
      v31 = v30;
      sub_100068BD0(v27, type metadata accessor for SessionConfiguration.Backend);
      v32 = sub_100006B00(v29, v31, &v54);

      *(v28 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v33 = *(v0 + 1608);

      sub_100068BD0(v33, type metadata accessor for SessionConfiguration.Backend);
    }

    v34 = *(v0 + 1984);
    *(v0 + 2016) = sub_100068D4C();
    *(v0 + 2024) = v35;
    v36 = sub_100061544;
    v37 = v34;
  }

  return _swift_task_switch(v36, v37, 0);
}

uint64_t sub_100061D54()
{
  v2 = *v1;
  *(*v1 + 2056) = v0;

  if (v0)
  {
    v3 = *(v2 + 1560);
    v4 = sub_100065A50;
  }

  else
  {
    v5 = *(v2 + 1560);

    v4 = sub_100061E7C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100061E7C()
{
  v25 = v0;

  v1 = sub_100079B80();
  v2 = sub_10007A190();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 235);
    v4 = *(v0 + 234);
    v5 = *(v0 + 233);
    v6 = *(v0 + 232);
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_100006B00(v6, v5, &v24);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_100006B00(v4, v3, &v24);
    _os_log_impl(&_mh_execute_header, v1, v2, "processed sendOneMessage, immediate %{public}s:%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_unknownObjectRelease();
  if (*(*(v0 + 224) + 16))
  {

    v8 = sub_100079B80();
    v9 = sub_10007A190();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 235);
      v11 = *(v0 + 234);
      v12 = *(v0 + 233);
      v13 = *(v0 + 232);
      v14 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_100006B00(v13, v12, &v24);
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_100006B00(v11, v10, &v24);
      _os_log_impl(&_mh_execute_header, v8, v9, "caching sendOneMessage %{public}s:%{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000799C0();
    v15 = swift_task_alloc();
    *(v0 + 258) = v15;
    *v15 = v0;
    v15[1] = sub_100062220;
    v16 = *(v0 + 246);
    v17 = *(v0 + 245);
    v18 = *(v0 + 244);
    v19 = v0[217];
    v20 = *(v0 + 198);

    return sub_100020D38((v0 + 93), v20, v19, v18, v17, v16);
  }

  else
  {
    v22 = *(v0 + 220);
    v23 = *v22 + 256;
    v0[260] = *v23;
    *(v0 + 261) = v23 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;

    return _swift_task_switch(sub_100062560, v22, 0);
  }
}

uint64_t sub_100062220()
{
  v2 = *v1;
  *(*v1 + 2072) = v0;

  v3 = v2[198];
  v4 = v2[197];
  v5 = v2[196];
  v6 = v2[195];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_100065DF8;
  }

  else
  {
    v7 = sub_10006239C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10006239C()
{
  v12 = v0;

  v1 = sub_100079B80();
  v2 = sub_10007A190();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[235];
    v4 = v0[234];
    v5 = v0[233];
    v6 = v0[232];
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_100006B00(v6, v5, &v11);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_100006B00(v4, v3, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "cached sendOneMessage %{public}s:%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v8 = v0[220];
  v9 = *v8 + 256;
  v0[260] = *v9;
  v0[261] = v9 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;

  return _swift_task_switch(sub_100062560, v8, 0);
}

uint64_t sub_100062560()
{
  v1 = *(v0 + 1560);
  (*(v0 + 2080))(*(v0 + 1744), *(v0 + 1752), 1);

  return _swift_task_switch(sub_1000625E0, v1, 0);
}

void sub_1000625E0()
{
  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v2 = reply;
    v3 = *(v0 + 1560);
    swift_beginAccess();
    v4 = *(v3 + 112);
    if (v4)
    {
      swift_beginAccess();
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = *(v0 + 1904);
        v7 = *(v0 + 1896);
        v8 = *(v0 + 1888);
        swift_unknownObjectRetain();
        sub_100068A04(v8, v7, v6);

        sub_10002A4B4(v0 + 1464);
        xpc_connection_send_message(v5, v2);
        swift_unknownObjectRelease();
        v9 = sub_100079B80();
        v10 = sub_10007A150();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "SendOneMessage Reply Sent", v11, 2u);
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_1000096C4(v0 + 352, &unk_10009FCA0, qword_10007FBF0);
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v12 = *(v0 + 1904);
  v13 = *(v0 + 1896);
  v14 = *(v0 + 1888);
  sub_1000096C4(v0 + 352, &unk_10009FCA0, qword_10007FBF0);
  sub_100068A04(v14, v13, v12);

  swift_unknownObjectRelease();
  sub_10002A4B4(v0 + 1464);
LABEL_8:
  sub_100068BD0(*(v0 + 1704), type metadata accessor for CachedSession);

  v15 = *(v0 + 8);

  v15();
}

uint64_t sub_100062934()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100062BE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100062E8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100063138()
{
  v1 = *(*v0 + 1560);

  return _swift_task_switch(sub_100063248, v1, 0);
}

uint64_t sub_100063248()
{
  v1 = v0[209];
  v2 = v0[207];
  if ((*(v0[210] + 48))(v2, 1, v1) == 1)
  {
    sub_1000096C4(v2, &qword_10009FC98, &qword_10007FBE0);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[212];
    v6 = v0[195];
    sub_100068CE0(v2, v5, type metadata accessor for CachedSession);
    v7 = *(v6 + 152);
    v0[270] = v7;
    v8 = *(v7 + 112);
    v0[271] = v8;
    v0[115] = v1;
    v0[116] = &off_100095D60;
    v9 = sub_100019E90(v0 + 112);
    sub_100068C78(v5, v9, type metadata accessor for CachedSession);
    v10 = *(*v8 + 128);

    v12 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[272] = v11;
    *v11 = v0;
    v11[1] = sub_100063520;

    return v12(v0 + 112);
  }
}

uint64_t sub_100063520(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1560);
  *(v2 + 2213) = a1;

  sub_1000070A8((v2 + 896));

  return _swift_task_switch(sub_100063664, v3, 0);
}

void sub_100063664()
{
  if (sub_100067A24(*(v0 + 2213), &off_100098C18))
  {
    v1 = *(v0 + 1696);
    v2 = *(v0 + 1672);
    v3 = *(*(v0 + 2160) + 112);
    *(v0 + 2184) = v3;
    *(v0 + 1040) = v2;
    *(v0 + 1048) = &off_100095D60;
    v4 = sub_100019E90((v0 + 1016));
    sub_100068C78(v1, v4, type metadata accessor for CachedSession);
    v5 = *(*v3 + 144);

    v20 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 2192) = v6;
    *v6 = v0;
    v6[1] = sub_100063A2C;

    v20(v0 + 1016);
    return;
  }

  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v8 = reply;
    v9 = *(v0 + 1560);
    MessageKeys.samplingOutcome.unsafeMutableAddressor();

    v10 = ServiceSamplingOutcome.rawValue.getter(4);
    v11 = sub_100079EA0();

    xpc_dictionary_set_int64(v8, (v11 + 32), v10);

    swift_beginAccess();
    v12 = *(v9 + 112);
    if (v12)
    {
      swift_beginAccess();
      v13 = *(v12 + 16);
      if (v13)
      {
        xpc_connection_send_message(v13, v8);
        v14 = sub_100079B80();
        v15 = sub_10007A150();
        v16 = os_log_type_enabled(v14, v15);
        v17 = *(v0 + 1696);
        if (v16)
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "CheckSamplingResult Reply Sent", v18, 2u);
        }

        swift_unknownObjectRelease();

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v17 = *(v0 + 1696);
LABEL_12:
  sub_100068BD0(v17, type metadata accessor for CachedSession);

  v19 = *(v0 + 8);

  v19();
}

uint64_t sub_100063A2C(char a1)
{
  v3 = *v2;
  *(v3 + 2214) = a1;
  *(v3 + 2200) = v1;

  if (v1)
  {
    v4 = *(v3 + 1560);

    v5 = sub_100065FAC;
  }

  else
  {
    v4 = *(v3 + 1560);

    sub_1000070A8((v3 + 1016));
    v5 = sub_100063B64;
  }

  return _swift_task_switch(v5, v4, 0);
}

void sub_100063B64()
{
  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v2 = reply;
    v3 = *(v0 + 1560);
    v4 = *(v0 + 2214);
    MessageKeys.samplingOutcome.unsafeMutableAddressor();

    v5 = ServiceSamplingOutcome.rawValue.getter(v4);
    v6 = sub_100079EA0();

    xpc_dictionary_set_int64(v2, (v6 + 32), v5);

    swift_beginAccess();
    v7 = *(v3 + 112);
    if (v7)
    {
      swift_beginAccess();
      v8 = *(v7 + 16);
      if (v8)
      {
        xpc_connection_send_message(v8, v2);
        v9 = sub_100079B80();
        v10 = sub_10007A150();
        v11 = os_log_type_enabled(v9, v10);
        v12 = *(v0 + 1696);
        if (v11)
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "CheckSamplingResult Reply Sent", v13, 2u);
        }

        swift_unknownObjectRelease();

        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v12 = *(v0 + 1696);
LABEL_8:
  sub_100068BD0(v12, type metadata accessor for CachedSession);

  v14 = *(v0 + 8);

  v14();
}

void sub_100063DC8()
{
  v24 = v0;
  sub_100009B00(v0 + 744, v0 + 520);
  swift_errorRetain();
  v1 = sub_100079B80();
  v2 = sub_10007A170();
  sub_100019EF4(v0 + 744);

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1752);
    v4 = *(v0 + 1744);
    v5 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v4;
    *v5 = 136446466;
    v6 = *(v0 + 760);
    v7 = *(v0 + 768);
    v23 = v3;
    sub_100009B00(v0 + 744, v0 + 800);
    v26._countAndFlagsBits = 58;
    v26._object = 0xE100000000000000;
    sub_100079F00(v26);
    v27._countAndFlagsBits = v6;
    v27._object = v7;
    sub_100079F00(v27);
    sub_100019EF4(v0 + 744);
    v8 = sub_100006B00(v22, v3, &v21);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v9 = sub_10007A6D0();
    v11 = sub_100006B00(v9, v10, &v21);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "unable to find config for identity %{public}s with error %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v13 = reply;
    v14 = *(v0 + 1560);
    xpc_dictionary_set_string(reply, "error", "missing required sendOneMessage event fields");
    swift_beginAccess();
    v15 = *(v14 + 112);
    if (v15)
    {
      swift_beginAccess();
      v16 = *(v15 + 16);
      if (v16)
      {
        xpc_connection_send_message(v16, v13);
        v17 = sub_100079B80();
        v18 = sub_10007A150();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "SendOneMessage Error Reply Sent", v19, 2u);
        }

        swift_unknownObjectRelease();

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_11:
  sub_100068BD0(*(v0 + 1704), type metadata accessor for CachedSession);

  v20 = *(v0 + 8);

  v20();
}

uint64_t sub_100064194()
{
  v49 = v0;
  v1 = 4079420;
  *(v0 + 1840) = 0u;
  v2 = *(v0 + 1728);
  if (*(v2 + 16) && (v3 = sub_10000A0FC(0x646F6874656D5FLL, 0xE700000000000000), (v4 & 1) != 0))
  {
    v5 = v3;
    v6 = *(v0 + 1648);
    v7 = *(v0 + 1640);
    v8 = *(*(v0 + 1728) + 56);
    v9 = type metadata accessor for ServiceEventValue(0);
    v10 = *(v9 - 8);
    sub_100068C78(v8 + *(v10 + 72) * v5, v6, type metadata accessor for ServiceEventValue);
    (*(v10 + 56))(v6, 0, 1, v9);
    sub_10000939C(v6, v7, &qword_10009FC90, &qword_10007C910);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v12 = *(v0 + 1640);
    if (EnumCaseMultiPayload == 1)
    {
      *(v0 + 1544) = *v12;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *(v0 + 1536) = *v12;
LABEL_9:
      v16 = sub_10007A5E0();
      v15 = v17;

      goto LABEL_10;
    }

    sub_100068BD0(v12, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v13 = *(v0 + 1648);
    v14 = type metadata accessor for ServiceEventValue(0);
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  v15 = 0xE300000000000000;
  v16 = 4079420;
LABEL_10:
  *(v0 + 1864) = v15;
  *(v0 + 1856) = v16;
  sub_1000096C4(*(v0 + 1648), &qword_10009FC90, &qword_10007C910);
  if (!*(v2 + 16) || (v18 = sub_10000A0FC(0x7375746174735FLL, 0xE700000000000000), (v19 & 1) == 0))
  {
    v28 = *(v0 + 1632);
    v29 = type metadata accessor for ServiceEventValue(0);
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
LABEL_16:
    v30 = 0xE300000000000000;
    goto LABEL_19;
  }

  v20 = v18;
  v21 = *(v0 + 1632);
  v22 = *(v0 + 1624);
  v23 = *(*(v0 + 1728) + 56);
  v24 = type metadata accessor for ServiceEventValue(0);
  v25 = *(v24 - 8);
  sub_100068C78(v23 + *(v25 + 72) * v20, v21, type metadata accessor for ServiceEventValue);
  (*(v25 + 56))(v21, 0, 1, v24);
  sub_10000939C(v21, v22, &qword_10009FC90, &qword_10007C910);
  v26 = swift_getEnumCaseMultiPayload();
  v27 = *(v0 + 1624);
  if (v26 == 1)
  {
    *(v0 + 1528) = *v27;
    goto LABEL_18;
  }

  if (v26 != 2)
  {
    sub_100068BD0(v27, type metadata accessor for ServiceEventValue);
    goto LABEL_16;
  }

  *(v0 + 1520) = *v27;
LABEL_18:
  v1 = sub_10007A5E0();
  v30 = v31;

LABEL_19:
  *(v0 + 1880) = v30;
  *(v0 + 1872) = v1;
  sub_1000096C4(*(v0 + 1632), &qword_10009FC90, &qword_10007C910);

  v32 = sub_100079B80();
  v33 = sub_10007A190();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v34 = 136446466;
    v35 = sub_100006B00(v16, v15, &v48);

    *(v34 + 4) = v35;
    *(v34 + 12) = 2082;
    v36 = sub_100006B00(v1, v30, &v48);

    *(v34 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v32, v33, "sending one message %{public}s:%{public}s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v37 = *(v0 + 1792);
  v38 = *(v0 + 1784);
  v39 = *(v0 + 1560);

  XPCIncomingConnection.init(conn:)();
  *(v0 + 1200) = v40;
  *(v0 + 1208) = v41;
  *(v0 + 1216) = v42;
  *(v0 + 1888) = sub_1000685D0(v37, v38);
  *(v0 + 1896) = v43;
  *(v0 + 1904) = v44;
  v47 = (*(**(v39 + 160) + 152) + **(**(v39 + 160) + 152));
  v45 = swift_task_alloc();
  *(v0 + 1912) = v45;
  *v45 = v0;
  v45[1] = sub_10006096C;

  return v47(v0 + 744);
}

uint64_t sub_10006484C()
{
  v64 = v0;
  *(v0 + 512) = 0;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  sub_10000939C(v0 + 352, v0 + 16, &unk_10009FCA0, qword_10007FBF0);
  if (*(v0 + 40))
  {
    v1 = *(v0 + 160);
    *(v0 + 312) = *(v0 + 144);
    *(v0 + 328) = v1;
    *(v0 + 344) = *(v0 + 176);
    v2 = *(v0 + 96);
    *(v0 + 248) = *(v0 + 80);
    *(v0 + 264) = v2;
    v3 = *(v0 + 128);
    *(v0 + 280) = *(v0 + 112);
    *(v0 + 296) = v3;
    v4 = *(v0 + 32);
    *(v0 + 184) = *(v0 + 16);
    *(v0 + 200) = v4;
    v5 = *(v0 + 64);
    *(v0 + 216) = *(v0 + 48);
    *(v0 + 232) = v5;
    *(v0 + 1000) = &type metadata for AllEventFieldProvider;
    *(v0 + 1008) = &off_1000974E8;
    v6 = swift_allocObject();
    *(v0 + 976) = v6;
    sub_100068ACC(v0 + 184, v6 + 16);
    sub_10002D410((v0 + 976));
    sub_100068B28(v0 + 184);
    sub_1000070A8((v0 + 976));
  }

  else
  {
    sub_1000096C4(v0 + 16, &unk_10009FCA0, qword_10007FBF0);
  }

  *(v0 + 1952) = *(v0 + 1200);
  *(v0 + 1960) = *(v0 + 1208);
  v7 = sub_10003F2A0();
  swift_beginAccess();
  if (*v7 == 1)
  {
    v8 = *(v0 + 1792);
    v9 = *(v8 + 16);
    *(v0 + 1976) = v9;
    if (v9)
    {
      v10 = *(v0 + 1592);
      *(v0 + 1984) = *(*(v0 + 1560) + 168);
      v11 = *(v10 + 80);
      *(v0 + 2208) = v11;
      *(v0 + 1992) = *(v10 + 72);
      *(v0 + 2000) = 0u;
      v12 = *(v0 + 1616);
      v13 = *(v0 + 1608);
      sub_100068C78(v8 + ((v11 + 32) & ~v11), v12, type metadata accessor for SessionConfiguration.Backend);
      sub_100068C78(v12, v13, type metadata accessor for SessionConfiguration.Backend);

      v14 = sub_100079B80();
      v15 = sub_10007A190();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 1880);
        v17 = *(v0 + 1872);
        v18 = *(v0 + 1864);
        v19 = *(v0 + 1856);
        v20 = *(v0 + 1608);
        v21 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v21 = 136446722;
        *(v21 + 4) = sub_100006B00(v19, v18, &v63);
        *(v21 + 12) = 2082;
        *(v21 + 14) = sub_100006B00(v17, v16, &v63);
        *(v21 + 22) = 2082;
        v22 = sub_100068D4C();
        v24 = v23;
        sub_100068BD0(v20, type metadata accessor for SessionConfiguration.Backend);
        v25 = sub_100006B00(v22, v24, &v63);

        *(v21 + 24) = v25;
        _os_log_impl(&_mh_execute_header, v14, v15, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v21, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v55 = *(v0 + 1608);

        sub_100068BD0(v55, type metadata accessor for SessionConfiguration.Backend);
      }

      v56 = *(v0 + 1984);
      *(v0 + 2016) = sub_100068D4C();
      *(v0 + 2024) = v57;
      v58 = sub_100061544;
      v59 = v56;
      goto LABEL_23;
    }
  }

  if (*(v0 + 1840))
  {

    swift_unknownObjectRetain();
    v26 = sub_100079B80();
    v27 = sub_10007A190();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 1880);
      v29 = *(v0 + 1872);
      v30 = *(v0 + 1864);
      v31 = *(v0 + 1856);
      v32 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v32 = 136446466;
      *(v32 + 4) = sub_100006B00(v31, v30, &v63);
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_100006B00(v29, v28, &v63);
      _os_log_impl(&_mh_execute_header, v26, v27, "processing sendOneMessage, immediate %{public}s:%{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    v33 = *(v0 + 1968);
    v34 = *(v0 + 1960);
    v35 = *(v0 + 1952);
    v62 = *(v0 + 1848);
    ObjectType = swift_getObjectType();
    sub_10000712C(&qword_10009E4A8, &qword_10007C2D0);
    v37 = swift_allocObject();
    *(v0 + 2040) = v37;
    *(v37 + 16) = xmmword_10007B7C0;
    *(v37 + 32) = v35;
    *(v37 + 40) = v34;
    *(v37 + 48) = v33;
    v38 = *(v62 + 8);

    v61 = (v38 + *v38);
    v39 = swift_task_alloc();
    *(v0 + 2048) = v39;
    *v39 = v0;
    v39[1] = sub_100061D54;
    v40 = *(v0 + 1848);

    return v61(v37, ObjectType, v40);
  }

  else
  {
    if (!*(*(v0 + 1792) + 16))
    {
      v59 = *(v0 + 1760);
      v60 = *v59 + 256;
      *(v0 + 2080) = *v60;
      *(v0 + 2088) = v60 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;
      v58 = sub_100062560;
LABEL_23:

      return _swift_task_switch(v58, v59, 0);
    }

    v42 = sub_100079B80();
    v43 = sub_10007A190();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v0 + 1880);
      v45 = *(v0 + 1872);
      v46 = *(v0 + 1864);
      v47 = *(v0 + 1856);
      v48 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v48 = 136446466;
      *(v48 + 4) = sub_100006B00(v47, v46, &v63);
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_100006B00(v45, v44, &v63);
      _os_log_impl(&_mh_execute_header, v42, v43, "caching sendOneMessage %{public}s:%{public}s", v48, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000799C0();
    v49 = swift_task_alloc();
    *(v0 + 2064) = v49;
    *v49 = v0;
    v49[1] = sub_100062220;
    v50 = *(v0 + 1968);
    v51 = *(v0 + 1960);
    v52 = *(v0 + 1952);
    v53 = *(v0 + 1736);
    v54 = *(v0 + 1584);

    return sub_100020D38(v0 + 744, v54, v53, v52, v51, v50);
  }
}

uint64_t sub_1000650B8()
{
  v75 = v0;
  v1 = *(v0 + 1616);
  v2 = *(v0 + 1600);

  sub_100068C78(v1, v2, type metadata accessor for SessionConfiguration.Backend);

  swift_errorRetain();
  v3 = sub_100079B80();
  v4 = sub_10007A170();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1880);
    v6 = *(v0 + 1872);
    v7 = *(v0 + 1864);
    v8 = *(v0 + 1856);
    v72 = *(v0 + 1616);
    v9 = *(v0 + 1600);
    v10 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v10 = 136446978;
    *(v10 + 4) = sub_100006B00(v8, v7, &v74);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_100006B00(v6, v5, &v74);
    *(v10 + 22) = 2082;
    v11 = sub_100068D4C();
    v13 = v12;
    sub_100068BD0(v9, type metadata accessor for SessionConfiguration.Backend);
    v14 = sub_100006B00(v11, v13, &v74);

    *(v10 + 24) = v14;
    *(v10 + 32) = 2082;
    swift_getErrorValue();
    v15 = sub_10007A6D0();
    v17 = sub_100006B00(v15, v16, &v74);

    *(v10 + 34) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "failed writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s with error %{public}s", v10, 0x2Au);
    swift_arrayDestroy();

    v18 = v72;
  }

  else
  {
    v19 = *(v0 + 1616);
    v20 = *(v0 + 1600);

    sub_100068BD0(v20, type metadata accessor for SessionConfiguration.Backend);
    v18 = v19;
  }

  sub_100068BD0(v18, type metadata accessor for SessionConfiguration.Backend);
  v21 = *(v0 + 2008) + 1;
  if (v21 == *(v0 + 1976))
  {
    if (*(v0 + 1840))
    {

      swift_unknownObjectRetain();
      v22 = sub_100079B80();
      v23 = sub_10007A190();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = *(v0 + 1880);
        v25 = *(v0 + 1872);
        v26 = *(v0 + 1864);
        v27 = *(v0 + 1856);
        v28 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v28 = 136446466;
        *(v28 + 4) = sub_100006B00(v27, v26, &v74);
        *(v28 + 12) = 2082;
        *(v28 + 14) = sub_100006B00(v25, v24, &v74);
        _os_log_impl(&_mh_execute_header, v22, v23, "processing sendOneMessage, immediate %{public}s:%{public}s", v28, 0x16u);
        swift_arrayDestroy();
      }

      v29 = *(v0 + 1968);
      v30 = *(v0 + 1960);
      v31 = *(v0 + 1952);
      v73 = *(v0 + 1848);
      ObjectType = swift_getObjectType();
      sub_10000712C(&qword_10009E4A8, &qword_10007C2D0);
      v33 = swift_allocObject();
      *(v0 + 2040) = v33;
      *(v33 + 16) = xmmword_10007B7C0;
      *(v33 + 32) = v31;
      *(v33 + 40) = v30;
      *(v33 + 48) = v29;
      v34 = *(v73 + 8);

      v71 = (v34 + *v34);
      v35 = swift_task_alloc();
      *(v0 + 2048) = v35;
      *v35 = v0;
      v35[1] = sub_100061D54;
      v36 = *(v0 + 1848);

      return v71(v33, ObjectType, v36);
    }

    if (*(*(v0 + 1792) + 16))
    {

      v57 = sub_100079B80();
      v58 = sub_10007A190();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = *(v0 + 1880);
        v60 = *(v0 + 1872);
        v61 = *(v0 + 1864);
        v62 = *(v0 + 1856);
        v63 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v63 = 136446466;
        *(v63 + 4) = sub_100006B00(v62, v61, &v74);
        *(v63 + 12) = 2082;
        *(v63 + 14) = sub_100006B00(v60, v59, &v74);
        _os_log_impl(&_mh_execute_header, v57, v58, "caching sendOneMessage %{public}s:%{public}s", v63, 0x16u);
        swift_arrayDestroy();
      }

      sub_1000799C0();
      v64 = swift_task_alloc();
      *(v0 + 2064) = v64;
      *v64 = v0;
      v64[1] = sub_100062220;
      v65 = *(v0 + 1968);
      v66 = *(v0 + 1960);
      v67 = *(v0 + 1952);
      v68 = *(v0 + 1736);
      v69 = *(v0 + 1584);

      return sub_100020D38(v0 + 744, v69, v68, v67, v66, v65);
    }

    v56 = *(v0 + 1760);
    v70 = *v56 + 256;
    *(v0 + 2080) = *v70;
    *(v0 + 2088) = v70 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;
    v55 = sub_100062560;
  }

  else
  {
    *(v0 + 2008) = v21;
    *(v0 + 2000) = 0;
    v38 = *(v0 + 1616);
    v39 = *(v0 + 1608);
    sub_100068C78(*(v0 + 1792) + ((*(v0 + 2208) + 32) & ~*(v0 + 2208)) + *(v0 + 1992) * v21, v38, type metadata accessor for SessionConfiguration.Backend);
    sub_100068C78(v38, v39, type metadata accessor for SessionConfiguration.Backend);

    v40 = sub_100079B80();
    v41 = sub_10007A190();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 1880);
      v43 = *(v0 + 1872);
      v44 = *(v0 + 1864);
      v45 = *(v0 + 1856);
      v46 = *(v0 + 1608);
      v47 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v47 = 136446722;
      *(v47 + 4) = sub_100006B00(v45, v44, &v74);
      *(v47 + 12) = 2082;
      *(v47 + 14) = sub_100006B00(v43, v42, &v74);
      *(v47 + 22) = 2082;
      v48 = sub_100068D4C();
      v50 = v49;
      sub_100068BD0(v46, type metadata accessor for SessionConfiguration.Backend);
      v51 = sub_100006B00(v48, v50, &v74);

      *(v47 + 24) = v51;
      _os_log_impl(&_mh_execute_header, v40, v41, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v47, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v52 = *(v0 + 1608);

      sub_100068BD0(v52, type metadata accessor for SessionConfiguration.Backend);
    }

    v53 = *(v0 + 1984);
    *(v0 + 2016) = sub_100068D4C();
    *(v0 + 2024) = v54;
    v55 = sub_100061544;
    v56 = v53;
  }

  return _swift_task_switch(v55, v56, 0);
}

uint64_t sub_100065A50()
{
  v25 = v0;

  swift_errorRetain();
  v1 = sub_100079B80();
  v2 = sub_10007A170();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v24 = v4;
    *v3 = 136446210;
    swift_getErrorValue();
    v5 = sub_10007A6D0();
    v7 = sub_100006B00(v5, v6, &v24);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "immediate backend failed to send events: %{public}s", v3, 0xCu);
    sub_1000070A8(v4);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  if (*(*(v0 + 224) + 16))
  {

    v8 = sub_100079B80();
    v9 = sub_10007A190();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 235);
      v11 = *(v0 + 234);
      v12 = *(v0 + 233);
      v13 = *(v0 + 232);
      v14 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_100006B00(v13, v12, &v24);
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_100006B00(v11, v10, &v24);
      _os_log_impl(&_mh_execute_header, v8, v9, "caching sendOneMessage %{public}s:%{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000799C0();
    v15 = swift_task_alloc();
    *(v0 + 258) = v15;
    *v15 = v0;
    v15[1] = sub_100062220;
    v16 = *(v0 + 246);
    v17 = *(v0 + 245);
    v18 = *(v0 + 244);
    v19 = v0[217];
    v20 = *(v0 + 198);

    return sub_100020D38((v0 + 93), v20, v19, v18, v17, v16);
  }

  else
  {
    v22 = *(v0 + 220);
    v23 = *v22 + 256;
    v0[260] = *v23;
    *(v0 + 261) = v23 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;

    return _swift_task_switch(sub_100062560, v22, 0);
  }
}

uint64_t sub_100065DF8()
{
  v12 = v0;
  swift_errorRetain();
  v1 = sub_100079B80();
  v2 = sub_10007A170();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136446210;
    swift_getErrorValue();
    v5 = sub_10007A6D0();
    v7 = sub_100006B00(v5, v6, &v11);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "failed to cache sendOneMessage event: %{public}s", v3, 0xCu);
    sub_1000070A8(v4);
  }

  else
  {
  }

  v8 = v0[220];
  v9 = *v8 + 256;
  v0[260] = *v9;
  v0[261] = v9 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;

  return _swift_task_switch(sub_100062560, v8, 0);
}

void sub_100065FAC()
{
  v36 = v0;
  v1 = *(v0 + 1696);
  v2 = *(v0 + 1688);
  sub_1000070A8((v0 + 1016));
  sub_100068C78(v1, v2, type metadata accessor for CachedSession);
  swift_errorRetain();
  v3 = sub_100079B80();
  v4 = sub_10007A170();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1688);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136446466;
    v9 = *(v5 + 16);
    v8 = *(v5 + 32);
    v10 = *(v5 + 48);
    *(v0 + 632) = *v5;
    *(v0 + 648) = v9;
    *(v0 + 680) = v10;
    *(v0 + 664) = v8;
    v11 = *(v0 + 632);
    v12 = *(v0 + 640);
    v13 = *(v0 + 648);
    v14 = *(v0 + 656);
    v33 = v7;
    v34 = v11;
    v35 = v12;
    sub_100009B00(v0 + 632, v0 + 688);

    v38._countAndFlagsBits = 58;
    v38._object = 0xE100000000000000;
    sub_100079F00(v38);
    v39._countAndFlagsBits = v13;
    v39._object = v14;
    sub_100079F00(v39);
    sub_100068BD0(v5, type metadata accessor for CachedSession);
    sub_100019EF4(v0 + 632);
    v15 = sub_100006B00(v34, v12, &v33);

    *(v6 + 4) = v15;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v16 = sub_10007A6D0();
    v18 = sub_100006B00(v16, v17, &v33);

    *(v6 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "unable to determine sampling for identity %{public}s with error %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v19 = *(v0 + 1688);

    sub_100068BD0(v19, type metadata accessor for CachedSession);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v21 = reply;
    v22 = *(v0 + 1560);
    MessageKeys.samplingOutcome.unsafeMutableAddressor();

    v23 = ServiceSamplingOutcome.rawValue.getter(6);
    v24 = sub_100079EA0();

    xpc_dictionary_set_int64(v21, (v24 + 32), v23);

    swift_beginAccess();
    v25 = *(v22 + 112);
    if (v25)
    {
      swift_beginAccess();
      v26 = *(v25 + 16);
      if (v26)
      {
        xpc_connection_send_message(v26, v21);
        v27 = sub_100079B80();
        v28 = sub_10007A150();
        v29 = os_log_type_enabled(v27, v28);
        v30 = *(v0 + 1696);
        if (v29)
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "CheckSamplingResult Error Reply Sent", v31, 2u);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        sub_100068BD0(v30, type metadata accessor for CachedSession);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_100068BD0(*(v0 + 1696), type metadata accessor for CachedSession);

LABEL_12:

  v32 = *(v0 + 8);

  v32();
}

void sub_100066470(void *a1)
{
  v2 = v1;
  v4 = sub_100079BB0();
  swift_unknownObjectRelease();
  if (v4 == a1)
  {
    if (qword_1000A5D30 != -1)
    {
      swift_once();
    }

    v16 = sub_100079BA0();
    sub_1000070F4(v16, qword_1000A5D38);

    v17 = sub_100079B80();
    v18 = sub_10007A150();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_100006B00(*(v2 + 128), *(v2 + 136), &v26);
      _os_log_impl(&_mh_execute_header, v17, v18, "XPC client %{public}s closed connection", v19, 0xCu);
      sub_1000070A8(v20);
    }

    sub_100028130();
  }

  else
  {
    v5 = sub_100079BC0();
    swift_unknownObjectRelease();
    if (v5 == a1)
    {
      if (qword_1000A5D30 != -1)
      {
        swift_once();
      }

      v21 = sub_100079BA0();
      sub_1000070F4(v21, qword_1000A5D38);

      oslog = sub_100079B80();
      v22 = sub_10007A150();

      if (os_log_type_enabled(oslog, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26 = v24;
        *v23 = 136446210;
        *(v23 + 4) = sub_100006B00(*(v2 + 128), *(v2 + 136), &v26);
        _os_log_impl(&_mh_execute_header, oslog, v22, "XPC client %{public}s interrupted connection", v23, 0xCu);
        sub_1000070A8(v24);
      }
    }

    else
    {
      v6 = xpc_copy_description(a1);
      v7 = sub_100079F10();
      v9 = v8;
      if (qword_1000A5D30 != -1)
      {
        swift_once();
      }

      v10 = sub_100079BA0();
      sub_1000070F4(v10, qword_1000A5D38);

      v11 = sub_100079B80();
      v12 = sub_10007A150();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v26 = v14;
        *v13 = 136315138;
        v15 = sub_100006B00(v7, v9, &v26);

        *(v13 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v11, v12, "XPC connection triggered error: %s", v13, 0xCu);
        sub_1000070A8(v14);
      }

      else
      {
      }

      sub_100028130();

      free(v6);
    }
  }
}

uint64_t sub_10006689C(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v3[37] = *v2;
  sub_100079A00();
  v3[38] = swift_task_alloc();
  sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return _swift_task_switch(sub_1000669F0, v2, 0);
}

void sub_1000669F0()
{
  v101 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 280);
  MessageKeys.sendOneMessageSessionInfo.unsafeMutableAddressor();

  XPCDictionary.subscript.getter(v2, v1);

  v3 = type metadata accessor for XPCObject(0);
  v4 = *(*(v3 - 8) + 48);
  v5 = v4(v1, 1, v3);
  v6 = *(v0 + 376);
  if (v5 == 1)
  {
    sub_1000096C4(*(v0 + 376), &unk_10009EC50, &unk_10007D650);
    goto LABEL_8;
  }

  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v7 = *(v0 + 368);
    v8 = *(v0 + 280);
    v9 = *v6;
    MessageKeys.sendOneMessageEvent.unsafeMutableAddressor();

    XPCDictionary.subscript.getter(v8, v7);

    v10 = v4(v7, 1, v3);
    v11 = *(v0 + 368);
    if (v10 == 1)
    {
      swift_unknownObjectRelease();
      sub_1000096C4(v11, &unk_10009EC50, &unk_10007D650);
      goto LABEL_8;
    }

    if (swift_getEnumCaseMultiPayload() == 12)
    {
      v30 = *(v0 + 360);
      v31 = *v11;
      MessageKeys.eventType.unsafeMutableAddressor();

      XPCDictionary.subscript.getter(v9, v30);

      v32 = v4(v30, 1, v3);
      v33 = *(v0 + 360);
      if (v32 == 1)
      {
LABEL_24:
        sub_1000096C4(v33, &unk_10009EC50, &unk_10007D650);
LABEL_34:
        if (qword_1000A5D30 != -1)
        {
          swift_once();
        }

        v41 = sub_100079BA0();
        sub_1000070F4(v41, qword_1000A5D38);

        v42 = sub_100079B80();
        v43 = sub_10007A170();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = *(v0 + 288);
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v100 = v46;
          *v45 = 136446210;
          *(v45 + 4) = sub_100006B00(*(v44 + 128), *(v44 + 136), &v100);
          _os_log_impl(&_mh_execute_header, v42, v43, "missing required values in create session from %{public}s", v45, 0xCu);
          sub_1000070A8(v46);
        }

        reply = xpc_dictionary_create_reply(*(v0 + 280));
        if (!reply)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_18;
        }

        v48 = reply;
        v49 = *(v0 + 288);
        xpc_dictionary_set_string(reply, "error", "missing required sendOneMessage event fields");
        swift_beginAccess();
        v50 = *(v49 + 112);
        if (v50)
        {
          swift_beginAccess();
          v51 = *(v50 + 16);
          if (v51)
          {
            xpc_connection_send_message(v51, v48);
            v24 = sub_100079B80();
            v52 = sub_10007A150();
            if (os_log_type_enabled(v24, v52))
            {
              v53 = swift_slowAlloc();
              *v53 = 0;
              _os_log_impl(&_mh_execute_header, v24, v52, "CheckSamplingResult Error Reply Sent", v53, 2u);
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_17;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_79;
      }

      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v34 = *(v0 + 352);
        v35 = v33[1];
        v99 = *v33;
        MessageKeys.clientType.unsafeMutableAddressor();

        XPCDictionary.subscript.getter(v9, v34);

        v36 = v4(v34, 1, v3);
        v33 = *(v0 + 352);
        if (v36 == 1)
        {

          goto LABEL_24;
        }

        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v37 = *(v0 + 344);
          v97 = *v33;
          xdict = v31;
          v38 = v33[1];
          MessageKeys.transportConfiguration.unsafeMutableAddressor();

          XPCDictionary.subscript.getter(v9, v37);

          v39 = v4(v37, 1, v3);
          v40 = *(v0 + 344);
          if (v39 == 1)
          {

            sub_1000096C4(v40, &unk_10009EC50, &unk_10007D650);
            goto LABEL_34;
          }

          v96 = v38;
          if (swift_getEnumCaseMultiPayload() != 12)
          {

            sub_100068BD0(v40, type metadata accessor for XPCObject);
            goto LABEL_34;
          }

          v95 = v35;
          v54 = *(v0 + 336);
          v55 = *v40;
          MessageKeys.tcAllowsCellularAccess.unsafeMutableAddressor();

          XPCDictionary.subscript.getter(v55, v54);

          v56 = v4(v54, 1, v3);
          v57 = *(v0 + 336);
          if (v56 == 1)
          {
            sub_1000096C4(*(v0 + 336), &unk_10009EC50, &unk_10007D650);
            goto LABEL_56;
          }

          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_55;
          }

          v58 = *(v0 + 328);
          v94 = *v57;
          MessageKeys.tcAllowsExpensiveAccess.unsafeMutableAddressor();

          XPCDictionary.subscript.getter(v55, v58);

          v59 = v4(v58, 1, v3);
          v57 = *(v0 + 328);
          if (v59 == 1)
          {
            sub_1000096C4(*(v0 + 328), &unk_10009EC50, &unk_10007D650);
            goto LABEL_56;
          }

          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v60 = *(v0 + 320);
            v93 = *v57;
            MessageKeys.tcBundleID.unsafeMutableAddressor();

            XPCDictionary.subscript.getter(v55, v60);

            v61 = v3;
            v62 = v4(v60, 1, v3);
            v63 = *(v0 + 320);
            if (v62 == 1)
            {
              sub_1000096C4(*(v0 + 320), &unk_10009EC50, &unk_10007D650);
            }

            else
            {
              if (swift_getEnumCaseMultiPayload() == 8)
              {
                v77 = *(v0 + 296);
                v91 = v63[1];
                v92 = *v63;
                *(v0 + 264) = sub_100032434(_swiftEmptyArrayStorage);
                count = xpc_dictionary_get_count(xdict);
                sub_10000712C(&unk_10009EB50, &unk_10007D3B0);
                sub_100079D80(count);
                v79 = swift_allocObject();
                *(v79 + 16) = v0 + 264;
                *(v79 + 24) = v77;
                v80 = swift_allocObject();
                *(v80 + 16) = sub_100068C40;
                *(v80 + 24) = v79;
                *(v0 + 104) = sub_100032638;
                *(v0 + 112) = v80;
                *(v0 + 72) = _NSConcreteStackBlock;
                *(v0 + 80) = 1107296256;
                *(v0 + 88) = sub_10002F120;
                *(v0 + 96) = &unk_100098E08;
                v81 = _Block_copy((v0 + 72));
                swift_unknownObjectRetain();

                xpc_dictionary_apply(xdict, v81);
                swift_unknownObjectRelease();
                _Block_release(v81);
                LOBYTE(v79) = swift_isEscapingClosureAtFileLocation();

                if ((v79 & 1) == 0)
                {
                  v82 = *(v0 + 312);
                  MessageKeys.samplingUUID.unsafeMutableAddressor();

                  XPCDictionary.subscript.getter(v9, v82);

                  v83 = v4(v82, 1, v61);
                  v84 = *(v0 + 312);
                  if (v83 == 1)
                  {
                    sub_1000096C4(*(v0 + 312), &unk_10009EC50, &unk_10007D650);
                  }

                  else if (swift_getEnumCaseMultiPayload() != 8)
                  {
                    sub_100068BD0(v84, type metadata accessor for XPCObject);
                  }

                  v85 = *(v0 + 304);
                  v86 = *(v0 + 272);
                  type metadata accessor for Session();
                  sub_100009D54();
                  v88 = v87;

                  *(v0 + 16) = v97;
                  *(v0 + 24) = v96;
                  *(v0 + 32) = v99;
                  *(v0 + 40) = v95;
                  *(v0 + 48) = v94;
                  *(v0 + 49) = v93;
                  *(v0 + 56) = v92;
                  *(v0 + 64) = v91;
                  sub_1000799C0();
                  v89 = *(v0 + 264);

                  sub_100009BA8(v0 + 16, 0x4D656E4F646E6553, 0xEE00656761737365, v85, v89, v86, v88);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v90 = type metadata accessor for CachedSession(0);
                  (*(*(v90 - 8) + 56))(v86, 0, 1, v90);

                  goto LABEL_19;
                }

LABEL_79:
                __break(1u);
                goto LABEL_80;
              }

              sub_100068BD0(v63, type metadata accessor for XPCObject);
            }
          }

          else
          {
LABEL_55:
            sub_100068BD0(v57, type metadata accessor for XPCObject);
          }

LABEL_56:
          if (qword_1000A5D30 == -1)
          {
            goto LABEL_57;
          }

          goto LABEL_76;
        }
      }

      sub_100068BD0(v33, type metadata accessor for XPCObject);
      goto LABEL_34;
    }

    swift_unknownObjectRelease();
    v12 = v11;
  }

  else
  {
    v12 = v6;
  }

  sub_100068BD0(v12, type metadata accessor for XPCObject);
LABEL_8:
  if (qword_1000A5D30 != -1)
  {
    swift_once();
  }

  v13 = sub_100079BA0();
  sub_1000070F4(v13, qword_1000A5D38);

  v14 = sub_100079B80();
  v15 = sub_10007A170();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 288);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v100 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_100006B00(*(v16 + 128), *(v16 + 136), &v100);
    _os_log_impl(&_mh_execute_header, v14, v15, "missing required values for sendOneMessage from %{public}s", v17, 0xCu);
    sub_1000070A8(v18);
  }

  v19 = xpc_dictionary_create_reply(*(v0 + 280));
  if (!v19)
  {
    goto LABEL_18;
  }

  v20 = v19;
  v21 = *(v0 + 288);
  xpc_dictionary_set_string(v19, "error", "missing required sendOneMessage fields");
  swift_beginAccess();
  v22 = *(v21 + 112);
  if (!v22)
  {
    __break(1u);
    goto LABEL_75;
  }

  swift_beginAccess();
  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
LABEL_57:
    v64 = sub_100079BA0();
    sub_1000070F4(v64, qword_1000A5D38);

    v65 = sub_100079B80();
    v66 = sub_10007A170();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = *(v0 + 288);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v100 = v69;
      *v68 = 136446210;
      *(v68 + 4) = sub_100006B00(*(v67 + 128), *(v67 + 136), &v100);
      _os_log_impl(&_mh_execute_header, v65, v66, "missing required values in transport configuration from %{public}s", v68, 0xCu);
      sub_1000070A8(v69);
    }

    v70 = xpc_dictionary_create_reply(*(v0 + 280));
    if (!v70)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_18;
    }

    v71 = v70;
    v72 = *(v0 + 288);
    xpc_dictionary_set_string(v70, "error", "missing required sendOneMessage event fields");
    swift_beginAccess();
    v73 = *(v72 + 112);
    if (v73)
    {
      swift_beginAccess();
      v74 = *(v73 + 16);
      if (v74)
      {
        swift_unknownObjectRetain();

        xpc_connection_send_message(v74, v71);
        swift_unknownObjectRelease();
        v24 = sub_100079B80();
        v75 = sub_10007A150();
        if (os_log_type_enabled(v24, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&_mh_execute_header, v24, v75, "CheckSamplingResult Error Reply Sent", v76, 2u);
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_17;
      }

LABEL_81:
      __break(1u);
      return;
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  xpc_connection_send_message(v23, v20);
  v24 = sub_100079B80();
  v25 = sub_10007A150();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "CheckSamplingResult Error Reply Sent", v26, 2u);
  }

LABEL_17:
  swift_unknownObjectRelease();

LABEL_18:
  v27 = *(v0 + 272);
  v28 = type metadata accessor for CachedSession(0);
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
LABEL_19:

  v29 = *(v0 + 8);

  v29();
}

BOOL sub_100067A24(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_100068B7C();
  }

  while ((sub_100079DE0() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_100067AA8()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100067B08()
{
  sub_100067AA8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100067B34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007A3C0();
  *a1 = result;
  return result;
}

Swift::Int sub_100067B60(uint64_t a1, uint64_t a2)
{
  sub_10007A730();
  sub_100079DB0();
  return sub_10007A760();
}

void sub_100067BC4(uint64_t a1, uint64_t a2)
{
  sub_1000688EC(&unk_10009FB80, a2, type metadata accessor for Client, &unk_10007FA40);
  v2 = sub_10007A3C0();
  sub_10007A740(v2);
}

Swift::Int sub_100067C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10007A730();
  sub_100079DB0();
  return sub_10007A760();
}

BOOL sub_100067CA4(uint64_t a1, uint64_t a2)
{
  sub_1000688EC(&unk_10009FB80, a2, type metadata accessor for Client, &unk_10007FA40);
  v2 = sub_10007A3C0();
  return v2 == sub_10007A3C0();
}

void sub_100067D3C(uint64_t a1, void *a2, uint64_t a3)
{
  v43 = a3;
  v4 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  v5 = __chkstk_darwin(v4 - 8);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = type metadata accessor for ServiceEventValue(0);
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for XPCObject(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  v41 = sub_100079F10();
  v23 = v22;
  v24 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v24, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    v25 = &unk_10009EC50;
    v26 = &unk_10007D650;
    v27 = v14;
  }

  else
  {
    sub_100068CE0(v14, v21, type metadata accessor for XPCObject);
    sub_100068C78(v21, v19, type metadata accessor for XPCObject);
    sub_10002E2D8(v19, v8);
    v28 = v44;
    if ((*(v44 + 48))(v8, 1, v9) != 1)
    {
      sub_100068CE0(v8, v11, type metadata accessor for ServiceEventValue);
      v39 = v42;
      sub_100068C78(v11, v42, type metadata accessor for ServiceEventValue);
      (*(v28 + 56))(v39, 0, 1, v9);
      sub_10002EF60(v39, v41, v23);
      sub_100068BD0(v11, type metadata accessor for ServiceEventValue);
      sub_100068BD0(v21, type metadata accessor for XPCObject);
      return;
    }

    sub_100068BD0(v21, type metadata accessor for XPCObject);

    v25 = &qword_10009FC90;
    v26 = &qword_10007C910;
    v27 = v8;
  }

  sub_1000096C4(v27, v25, v26);
  type = xpc_get_type(a2);
  xpc_type_get_name(type);
  v30 = sub_100079F10();
  v32 = v31;
  if (qword_1000A5D30 != -1)
  {
    swift_once();
  }

  v33 = sub_100079BA0();
  sub_1000070F4(v33, qword_1000A5D38);

  v34 = sub_100079B80();
  v35 = sub_10007A170();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45 = v37;
    *v36 = 136446210;
    v38 = sub_100006B00(v30, v32, &v45);

    *(v36 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v34, v35, "skipping invalid payload value of type %{public}s", v36, 0xCu);
    sub_1000070A8(v37);
  }

  else
  {
  }
}

uint64_t sub_100068264(__n128 a1)
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, 49, 7);
}

uint64_t sub_1000682AC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_10005EA6C(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_100068354(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_100079EE0();
    v13[0] = sub_100079F70();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_100068458(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100049BCC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for SessionConfiguration.Backend(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100068584(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return String.subscript.getter();
}

uint64_t sub_1000685D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SessionConfiguration.Backend(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v7 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v21[0] = a1;

  result = sub_100068458(v10);
  v12 = v21[0];
  v13 = *(v21[0] + 16);
  if (v13)
  {
    v14 = 0;
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      sub_100068C78(v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v6, type metadata accessor for SessionConfiguration.Backend);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      ++v14;
      result = sub_100068BD0(v6, type metadata accessor for SessionConfiguration.Backend);
      if (v13 == v14)
      {
        goto LABEL_6;
      }
    }

    v15 = sub_100068CE0(v6, v9, type metadata accessor for SessionConfiguration.BackendHTTP);
    result = sub_100068FFC(v15);
    v16 = result;
    v17 = *(result + 16);
    if (!v17)
    {
LABEL_12:

      sub_100068BD0(v9, type metadata accessor for SessionConfiguration.BackendHTTP);
      return 0;
    }

    v18 = 0;
    v19 = result + 32;
    while (v18 < *(v16 + 16))
    {
      sub_10001378C(v19, v21);
      sub_10000712C(&unk_10009FC80, &qword_10007E7E8);
      result = swift_dynamicCast();
      if (result)
      {

        sub_100068BD0(v9, type metadata accessor for SessionConfiguration.BackendHTTP);
        return v20;
      }

      ++v18;
      v19 += 40;
      if (v17 == v18)
      {
        goto LABEL_12;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t sub_1000688EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_100068944(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100068960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000689A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100068A04(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100068A50()
{

  if (*(v0 + 120))
  {
  }

  sub_1000070A8((v0 + 144));

  return _swift_deallocObject(v0, 184, 7);
}

unint64_t sub_100068B7C()
{
  result = qword_10009FCB0;
  if (!qword_10009FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009FCB0);
  }

  return result;
}

uint64_t sub_100068BD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100068C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100068CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100068D4C()
{
  v1 = v0;
  v2 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SessionConfiguration.Backend(0);
  __chkstk_darwin(v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068ED4(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100068F9C(v7, type metadata accessor for SessionConfiguration.Backend);
    return 0x6C61636F6CLL;
  }

  else
  {
    sub_100068F38(v7, v4);
    v8 = *v4;

    sub_100068F9C(v4, type metadata accessor for SessionConfiguration.BackendHTTP);
  }

  return v8;
}

uint64_t sub_100068ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.Backend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068F9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_100069000()
{
  type metadata accessor for SessionConfiguration.BackendHTTP(0);

  return result;
}

uint64_t sub_100069034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a3;
  v14 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v15 = v14[7];
  v16 = sub_1000798B0();
  result = (*(*(v16 - 8) + 32))(a8 + v15, a4, v16);
  *(a8 + v14[8]) = a5;
  *(a8 + v14[9]) = a6;
  *(a8 + v14[10]) = a7;
  return result;
}

uint64_t sub_1000690FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void sub_10006910C(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = 1;
  *(a1 + 24) = 1701736302;
  *(a1 + 32) = 0xE400000000000000;
}

uint64_t sub_100069158(uint64_t a1)
{
  result = type metadata accessor for SessionConfiguration.BackendHTTP(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000691D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000798B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100069294(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000798B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100069338(uint64_t a1)
{
  sub_1000693FC();
  if (v1 <= 0x3F)
  {
    sub_1000798B0();
    if (v2 <= 0x3F)
    {
      sub_10006944C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000693FC()
{
  if (!qword_10009FDA8)
  {
    v0 = sub_10007A030();
    if (!v1)
    {
      atomic_store(v0, &qword_10009FDA8);
    }
  }
}

void sub_10006944C(uint64_t a1)
{
  if (!qword_10009FDB0)
  {
    sub_1000072D8(&unk_10009FC80, &qword_10007E7E8);
    v1 = sub_10007A030();
    if (!v2)
    {
      atomic_store(v1, &qword_10009FDB0);
    }
  }
}

uint64_t sub_1000694C0()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6DA8);
  sub_1000070F4(v0, qword_1000A6DA8);
  return sub_100079B90();
}

unint64_t sub_10006953C(uint64_t a1, void *a2, char a3)
{
  if (!a3)
  {
    sub_10007A3B0(33);

    v6 = 0xD00000000000001FLL;
    v9._countAndFlagsBits = a1;
    v9._object = a2;
    sub_100079F00(v9);
    return v6;
  }

  if (a3 == 1)
  {
    v6 = 0;
    sub_10007A3B0(52);
    v7._countAndFlagsBits = 0xD000000000000032;
    v7._object = 0x80000001000847B0;
    sub_100079F00(v7);
    v8._countAndFlagsBits = sub_10007A5E0();
    sub_100079F00(v8);

    return v6;
  }

  return 0xD000000000000010;
}

uint64_t sub_100069670()
{
  if (*v0)
  {
    return 0x727574616E676973;
  }

  else
  {
    return 1852797802;
  }
}

uint64_t sub_1000696A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1852797802 && a2 == 0xE400000000000000;
  if (v5 || (sub_10007A610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10007A610();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10006978C(uint64_t a1)
{
  v2 = sub_100069998();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000697C8(uint64_t a1)
{
  v2 = sub_100069998();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100069804(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10000712C(&qword_10009FDF8, &qword_10007FD50);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000751C(a1, a1[3]);
  sub_100069998();
  sub_10007A7C0();
  v14 = 0;
  sub_10007A5A0();
  if (!v5)
  {
    v13 = 1;
    sub_10007A5A0();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_100069998()
{
  result = qword_1000A60F8[0];
  if (!qword_1000A60F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A60F8);
  }

  return result;
}

uint64_t sub_1000699EC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10006D414(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

double sub_100069A3C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100069A84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_throttlesByName;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100069B3C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100069B8C(a1);
  return v2;
}

uint64_t sub_100069B8C(uint64_t a1)
{
  v4 = type metadata accessor for StorebagSigningConfiguration(0);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000798B0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  type metadata accessor for Throttle(0);
  sub_100053828(a1, v13);
  if (v2)
  {
    (*(v8 + 8))(a1, v7);
    type metadata accessor for StorebagSource(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v8 + 32))(v1 + OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_throttleCacheURL, v13, v7);
    (*(v8 + 16))(v11, a1, v7);
    sub_10000AFC4(v11, v6);
    sub_10006D644(v6, v1 + OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_storebagSigningConfiguration);
    v15 = sub_10006D6A8(_swiftEmptyArrayStorage);
    (*(v8 + 8))(a1, v7);
    *(v1 + OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_throttlesByName) = v15;
  }

  return v1;
}

uint64_t sub_100069E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[44] = a3;
  v4[45] = v3;
  v4[42] = a1;
  v4[43] = a2;
  v5 = sub_100079E70();
  v4[46] = v5;
  v4[47] = *(v5 - 8);
  v4[48] = swift_task_alloc();
  v6 = sub_100079590();
  v4[49] = v6;
  v4[50] = *(v6 - 8);
  v4[51] = swift_task_alloc();
  v7 = sub_1000797B0();
  v4[52] = v7;
  v4[53] = *(v7 - 8);
  v4[54] = swift_task_alloc();
  sub_10000712C(&qword_10009DFB0, &qword_10007BA50);
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v8 = sub_1000798B0();
  v4[57] = v8;
  v4[58] = *(v8 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[61] = v9;
  *v9 = v4;
  v9[1] = sub_10006A0AC;

  return sub_10000D950();
}

uint64_t sub_10006A0AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 496) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10006A290, 0, 0);
  }
}

uint64_t sub_10006A290()
{
  v1 = *(v0 + 496);
  if (v1 >> 62)
  {
    if (sub_10007A4A0())
    {
      goto LABEL_3;
    }

LABEL_12:

    v23 = 0x8000000100084A00;
    v24 = 0xD000000000000043;
    goto LABEL_13;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_3:
  v2 = *(**(v0 + 360) + 104);
  v3 = v2();
  if (*(v3 + 16) && (v4 = sub_10000A0FC(*(v0 + 336), *(v0 + 344)), (v5 & 1) != 0) || (v6 = *(v0 + 480), v7 = *(v0 + 360), v9 = *(v0 + 336), v8 = *(v0 + 344), , type metadata accessor for Throttle(0), , sub_10007A3B0(32), , v30._countAndFlagsBits = v9, v30._object = v8, sub_100079F00(v30), v31._countAndFlagsBits = 0x7473696C702ELL, v31._object = 0xE600000000000000, sub_100079F00(v31), sub_100079820(), , v10 = sub_100053794(v6), v11 = (*(*v7 + 120))(v0 + 16), v13 = v12, isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(), v28 = *v13, *v13 = 0x8000000000000000, sub_10006D128(v10, v9, v8, isUniquelyReferenced_nonNull_native), , *v13 = v28, v15 = v11(v0 + 16, 0), v3 = (v2)(v15), *(v3 + 16)) && (v4 = sub_10000A0FC(*(v0 + 336), *(v0 + 344)), (v16 & 1) != 0))
  {
    v17 = *(*(v3 + 56) + 8 * v4);

    *(v0 + 504) = v17;
    v18 = *(*v17 + 160);

    v27 = (v18 + *v18);
    v19 = swift_task_alloc();
    *(v0 + 512) = v19;
    *v19 = v0;
    v19[1] = sub_10006A75C;
    v20 = v27;

    return v20();
  }

  v22 = *(v0 + 336);
  v21 = *(v0 + 344);

  sub_10007A3B0(32);

  v32._countAndFlagsBits = v22;
  v32._object = v21;
  sub_100079F00(v32);
  v24 = 0xD00000000000001ELL;
  v23 = 0x8000000100084830;
LABEL_13:
  sub_10006D7AC();
  swift_allocError();
  *v25 = v24;
  *(v25 + 8) = v23;
  *(v25 + 16) = 0;
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10006A75C(char a1)
{
  *(*v1 + 736) = a1;

  return _swift_task_switch(sub_10006A888, 0, 0);
}

uint64_t sub_10006A888()
{
  if (*(v0 + 736))
  {
    RequestOptions.globalRequestOptions.unsafeMutableAddressor();
    swift_beginAccess();
    v1 = objc_opt_self();

    v2 = [v1 mainBundle];
    v3 = [v2 bundleIdentifier];

    if (v3)
    {
      v6 = *(v0 + 456);
      v7 = *(v0 + 464);
      v8 = *(v0 + 440);
      v9 = *(v0 + 448);
      sub_100079E20();

      v10 = sub_10005D6C8(1, 1);
      v31 = sub_1000535B0(v10 & 0x101, v11, v12);
      *(v0 + 520) = v31;

      sub_100079880();

      sub_10006D800(v9, v8);
      v4 = (*(v7 + 48))(v8, 1, v6);
      if (v4 != 1)
      {
        v13 = *(v0 + 464);
        v32 = *(v0 + 456);
        v15 = *(v0 + 432);
        v14 = *(v0 + 440);
        v17 = *(v0 + 416);
        v16 = *(v0 + 424);
        v19 = *(v0 + 336);
        v18 = *(v0 + 344);
        sub_10000712C(&qword_10009E278, &qword_10007CCF0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_10007B7D0;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        v22 = 0x80000001000849E0;
        v23 = 0x67616265726F7473;
        if (has_internal_diagnostics)
        {
          v23 = 0xD000000000000011;
        }

        else
        {
          v22 = 0xE800000000000000;
        }

        *(v20 + 32) = v23;
        *(v20 + 40) = v22;
        *(v20 + 48) = v19;
        *(v20 + 56) = v18;
        (*(v16 + 104))(v15, enum case for URL.DirectoryHint.notDirectory(_:), v17);
        sub_100025EBC();

        sub_100079890();

        (*(v16 + 8))(v15, v17);
        v24 = *(v13 + 8);
        *(v0 + 528) = v24;
        *(v0 + 536) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v24(v14, v32);
        v4 = [objc_opt_self() sharedManager];
        *(v0 + 544) = v4;
        if (v4)
        {
          (*(*(v0 + 464) + 16))(*(v0 + 480), *(v0 + 472), *(v0 + 456));
          sub_100079550();
          v25 = swift_task_alloc();
          *(v0 + 552) = v25;
          *v25 = v0;
          v25[1] = sub_10006AD80;
          v4 = *(v0 + 408);
          v5 = v31;

          return C2RequestManager.data(for:options:)(v4, v5);
        }

LABEL_16:
        __break(1u);
        return C2RequestManager.data(for:options:)(v4, v5);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v0 + 336);
  v26 = *(v0 + 344);

  sub_10007A3B0(31);

  v34._countAndFlagsBits = v27;
  v34._object = v26;
  sub_100079F00(v34);
  sub_10006D7AC();
  swift_allocError();
  *v28 = 0xD00000000000001DLL;
  *(v28 + 8) = 0x8000000100084850;
  *(v28 + 16) = 0;
  swift_willThrow();

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10006AD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[70] = a1;
  v6[71] = a2;
  v6[72] = a3;
  v6[73] = v3;

  v7 = v5[68];
  (*(v6[50] + 8))(v6[51], v6[49]);
  if (v3)
  {

    v8 = sub_10006C95C;
  }

  else
  {

    v8 = sub_10006AF3C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10006AF3C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 576);
    v4 = [v2 statusCode];
    v5 = *(v0 + 576);
    if (v4 <= 199)
    {

LABEL_9:

      v31 = *(v0 + 576);
      v32 = *(v0 + 568);
      v33 = *(v0 + 560);
      v34 = *(v0 + 528);
      v35 = *(v0 + 520);
      v36 = *(v0 + 472);
      v37 = *(v0 + 456);
      v180 = *(v0 + 448);
      v38 = [v2 statusCode];
      sub_10006D7AC();
      v15 = swift_allocError();
      *v39 = v38;
      *(v39 + 8) = 0;
      *(v39 + 16) = 1;
      swift_willThrow();

      v14 = v0;
      sub_1000071DC(v33, v32);

      v34(v36, v37);
      v17 = v180;
      goto LABEL_13;
    }

    v6 = [v2 statusCode];

    if (v6 >= 300)
    {
      goto LABEL_9;
    }
  }

  v7 = *(v0 + 584);
  sub_1000795C0();
  swift_allocObject();
  sub_1000795B0();
  sub_10006D870();
  sub_1000795A0();
  if (v7)
  {
    v8 = *(v0 + 568);
    v9 = *(v0 + 560);
    v177 = *(v0 + 528);
    v10 = *(v0 + 520);
    v168 = *(v0 + 472);
    v172 = *(v0 + 576);
    v11 = *(v0 + 456);
    v175 = *(v0 + 448);
    v12 = *(v0 + 336);
    v13 = *(v0 + 344);

    sub_10007A3B0(59);
    v14 = v0;
    v185._object = 0x80000001000848A0;
    v185._countAndFlagsBits = 0xD000000000000019;
    sub_100079F00(v185);
    v186._countAndFlagsBits = v12;
    v186._object = v13;
    sub_100079F00(v186);
    v187._countAndFlagsBits = 0xD000000000000020;
    v187._object = 0x80000001000848C0;
    sub_100079F00(v187);
    sub_10006D7AC();
    v15 = swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0xE000000000000000;
    *(v16 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v9, v8);

    v177(v168, v11);
    v17 = v175;
    goto LABEL_13;
  }

  v18 = sub_1000798E0();
  v20 = v19;
  v178 = v18;
  *(v0 + 592) = v18;
  *(v0 + 600) = v19;
  v21 = sub_1000798E0();
  v23 = v22;

  *(v0 + 608) = v21;
  *(v0 + 616) = v23;
  v183 = v20;
  if (v20 >> 60 == 15)
  {
    v24 = *(v0 + 568);
    v25 = *(v0 + 560);
    v179 = *(v0 + 528);
    v26 = v23;
    v27 = *(v0 + 520);
    v160 = *(v0 + 472);
    v163 = *(v0 + 576);
    v155 = *(v0 + 456);
    v169 = *(v0 + 448);
    v29 = *(v0 + 336);
    v28 = *(v0 + 344);

    sub_10007A3B0(55);
    v14 = v0;
    v188._object = 0x80000001000848A0;
    v188._countAndFlagsBits = 0xD000000000000019;
    sub_100079F00(v188);
    v189._countAndFlagsBits = v29;
    v189._object = v28;
    sub_100079F00(v189);
    v190._countAndFlagsBits = 0xD00000000000001CLL;
    v190._object = 0x80000001000848F0;
    sub_100079F00(v190);
    sub_10006D7AC();
    v15 = swift_allocError();
    *v30 = 0;
    *(v30 + 8) = 0xE000000000000000;
    *(v30 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v25, v24);

    sub_1000071C8(v21, v26);
    v179(v160, v155);
LABEL_12:
    v17 = v169;
    goto LABEL_13;
  }

  if (v23 >> 60 == 15)
  {
    v40 = *(v0 + 568);
    v41 = *(v0 + 560);
    v173 = *(v0 + 528);
    v42 = *(v0 + 520);
    v43 = *(v0 + 472);
    v44 = *(v0 + 456);
    v164 = *(v0 + 576);
    v169 = *(v0 + 448);
    v46 = *(v0 + 336);
    v45 = *(v0 + 344);

    sub_10007A3B0(66);
    v14 = v0;
    v191._object = 0x80000001000848A0;
    v191._countAndFlagsBits = 0xD000000000000019;
    sub_100079F00(v191);
    v192._countAndFlagsBits = v46;
    v192._object = v45;
    sub_100079F00(v192);
    v193._countAndFlagsBits = 0xD000000000000027;
    v193._object = 0x8000000100084910;
    sub_100079F00(v193);
    sub_10006D7AC();
    v15 = swift_allocError();
    *v47 = 0;
    *(v47 + 8) = 0xE000000000000000;
    *(v47 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v41, v40);

    sub_1000071C8(v178, v183);
    v173(v43, v44);
    goto LABEL_12;
  }

  v50 = *(v0 + 496);
  v174 = v23;
  v176 = v21;
  v170 = v50 & 0xFFFFFFFFFFFFFF8;
  if (v50 >> 62)
  {
    v51 = sub_10007A4A0();
    v50 = *(v0 + 496);
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = 0;
  v53 = v50 & 0xC000000000000001;
  v54 = v50 + 32;
  do
  {
    if (v51 == v52)
    {
      v60 = *(v0 + 576);
      v61 = *(v0 + 568);
      v62 = *(v0 + 560);
      v165 = *(v0 + 528);
      v63 = *(v0 + 520);
      v64 = *(v0 + 456);
      v156 = *(v0 + 472);
      v161 = *(v0 + 448);
      v66 = *(v0 + 336);
      v65 = *(v0 + 344);

      sub_10007A3B0(55);
      v14 = v0;
      v194._object = 0x80000001000848A0;
      v194._countAndFlagsBits = 0xD000000000000019;
      sub_100079F00(v194);
      v195._countAndFlagsBits = v66;
      v195._object = v65;
      sub_100079F00(v195);
      v196._countAndFlagsBits = 0xD00000000000001CLL;
      v196._object = 0x80000001000849C0;
      sub_100079F00(v196);
      sub_10006D7AC();
      v15 = swift_allocError();
      *v67 = 0;
      *(v67 + 8) = 0xE000000000000000;
      *(v67 + 16) = 0;
      swift_willThrow();
      sub_1000071DC(v62, v61);

      sub_1000071C8(v176, v174);
      sub_1000071C8(v178, v183);

      v165(v156, v64);
      v17 = v161;
      goto LABEL_13;
    }

    if (v53)
    {
      v55 = sub_10007A3D0();
    }

    else
    {
      if (v52 >= *(v170 + 16))
      {
        goto LABEL_45;
      }

      v55 = *(v54 + 8 * v52);
    }

    v56 = v55;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v182 = (*(**(v0 + 504) + 152) + **(**(v0 + 504) + 152));
      v139 = swift_task_alloc();
      *(v0 + 712) = v139;
      *v139 = v0;
      v139[1] = sub_10006C338;
      v49 = v182;

      return v49();
    }

    isa = sub_100079910().super.isa;
    v58 = sub_100079910().super.isa;
    v59 = SecKeyVerifySignature(v56, kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA256, isa, v58, 0);

    ++v52;
  }

  while (!v59);

  v68 = objc_opt_self();
  v69 = sub_100079910().super.isa;
  v70 = [v68 gzipDecode:v69];

  if (!v70)
  {
    v96 = *(v0 + 568);
    v97 = *(v0 + 560);
    v158 = *(v0 + 576);
    v162 = *(v0 + 528);
    v98 = *(v0 + 520);
    v150 = *(v0 + 456);
    v153 = *(v0 + 472);
    v167 = *(v0 + 448);
    v100 = *(v0 + 336);
    v99 = *(v0 + 344);
    sub_10007A3B0(55);
    v14 = v0;
    v197._object = 0x80000001000848A0;
    v197._countAndFlagsBits = 0xD000000000000019;
    sub_100079F00(v197);
    v198._countAndFlagsBits = v100;
    v198._object = v99;
    sub_100079F00(v198);
    v199._countAndFlagsBits = 0xD00000000000001CLL;
    v199._object = 0x8000000100084940;
    sub_100079F00(v199);
    sub_10006D7AC();
    v15 = swift_allocError();
    *v101 = 0;
    *(v101 + 8) = 0xE000000000000000;
    *(v101 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v97, v96);

    sub_1000071C8(v176, v174);
    sub_1000071C8(v178, v183);

    v162(v153, v150);
    v17 = v167;
    goto LABEL_13;
  }

  v71 = sub_100079930();
  v73 = v72;

  *(v0 + 624) = v71;
  *(v0 + 632) = v73;
  v74 = objc_opt_self();
  v75 = sub_100079910().super.isa;
  *(v0 + 296) = 0;
  v76 = [v74 JSONObjectWithData:v75 options:0 error:v0 + 296];

  v77 = *(v0 + 296);
  v166 = v71;
  v171 = v73;
  if (!v76)
  {
    v102 = v77;
    sub_1000797A0();

    swift_willThrow();

    goto LABEL_37;
  }

  v78 = v77;
  sub_10007A2D0();
  swift_unknownObjectRelease();
  sub_10006D8C4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    v103 = *(v0 + 568);
    v104 = *(v0 + 560);
    v151 = *(v0 + 576);
    v154 = *(v0 + 528);
    v105 = *(v0 + 520);
    v145 = *(v0 + 456);
    v147 = *(v0 + 472);
    v159 = *(v0 + 448);
    v107 = *(v0 + 336);
    v106 = *(v0 + 344);
    sub_10007A3B0(49);

    v14 = v0;
    v200._countAndFlagsBits = v107;
    v200._object = v106;
    sub_100079F00(v200);
    v201._countAndFlagsBits = 0xD000000000000016;
    v201._object = 0x8000000100084960;
    sub_100079F00(v201);
    sub_10006D7AC();
    v15 = swift_allocError();
    *v108 = 0xD000000000000019;
    *(v108 + 8) = 0x80000001000848A0;
    *(v108 + 16) = 0;
    swift_willThrow();
    sub_1000071DC(v104, v103);

    sub_1000071C8(v176, v174);
    sub_1000071C8(v178, v183);
    sub_1000071DC(v71, v73);
LABEL_38:

    v154(v147, v145);
    v17 = v159;
    goto LABEL_13;
  }

  v79 = *(v0 + 304);
  *(v0 + 640) = v79;
  v80 = objc_opt_self();
  *(v0 + 312) = 0;
  v81 = v79;
  v82 = [v80 dataWithPropertyList:v81 format:100 options:0 error:v0 + 312];
  v83 = *(v0 + 312);
  if (!v82)
  {
    v109 = v83;
    v110 = *(v0 + 568);
    v111 = *(v0 + 560);
    v151 = *(v0 + 576);
    v154 = *(v0 + 528);
    v147 = *(v0 + 472);
    v143 = *(v0 + 520);
    v145 = *(v0 + 456);
    v159 = *(v0 + 448);
    v113 = *(v0 + 336);
    v112 = *(v0 + 344);
    sub_1000797A0();

    swift_willThrow();

    sub_10007A3B0(57);
    v202._object = 0x80000001000848A0;
    v202._countAndFlagsBits = 0xD000000000000019;
    sub_100079F00(v202);
    v203._countAndFlagsBits = v113;
    v203._object = v112;
    sub_100079F00(v203);
    v204._countAndFlagsBits = 0xD00000000000001ELL;
    v204._object = 0x8000000100084980;
    sub_100079F00(v204);
    sub_10006D7AC();
    v15 = swift_allocError();
    *v114 = 0;
    *(v114 + 8) = 0xE000000000000000;
    *(v114 + 16) = 0;
    swift_willThrow();
    v115 = v111;
    v14 = v0;
    sub_1000071DC(v115, v110);

    sub_1000071C8(v176, v174);
    sub_1000071C8(v178, v183);
    sub_1000071DC(v166, v171);

    goto LABEL_38;
  }

  v157 = v81;
  v84 = *(v0 + 376);
  v85 = *(v0 + 384);
  v86 = *(v0 + 368);
  v87 = sub_100079930();
  v89 = v88;

  *(v0 + 648) = v87;
  *(v0 + 656) = v89;
  v149 = v87;
  v152 = v89;
  v90 = sub_100079920(0);
  *(v0 + 136) = &type metadata for String;
  *(v0 + 112) = v90;
  *(v0 + 120) = v91;
  sub_100032BD8((v0 + 112), (v0 + 144));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100054B6C((v0 + 144), 6775138, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  *(v0 + 320) = &_swiftEmptyDictionarySingleton;
  sub_100079E60();
  v93 = sub_100079E30();
  v95 = v94;
  (*(v84 + 8))(v85, v86);
  if (v95 >> 60 == 15)
  {
    sub_10006CC2C(0x727574616E676973, 0xE900000000000065, (v0 + 208));
    sub_1000096C4(v0 + 208, &qword_10009F0C0, &qword_10007E3A0);
  }

  else
  {
    v116 = sub_100079920(0);
    v118 = v117;
    sub_1000071C8(v93, v95);
    *(v0 + 200) = &type metadata for String;
    *(v0 + 176) = v116;
    *(v0 + 184) = v118;
    sub_100032BD8((v0 + 176), (v0 + 240));
    v119 = *(v0 + 320);
    v120 = swift_isUniquelyReferenced_nonNull_native();
    sub_100054B6C((v0 + 240), 0x727574616E676973, 0xE900000000000065, v120);
    *(v0 + 320) = v119;
  }

  v121 = sub_100079D30().super.isa;

  *(v0 + 328) = 0;
  v122 = [v80 dataWithPropertyList:v121 format:100 options:0 error:v0 + 328];

  v123 = *(v0 + 328);
  if (v122)
  {
    v124 = sub_100079930();
    v126 = v125;

    *(v0 + 664) = v124;
    *(v0 + 672) = v126;
    v127 = sub_1000260E0(v124, v126);
    *(v0 + 680) = v127;
    *(v0 + 688) = v128;
    *(v0 + 696) = v129;
    *(v0 + 704) = v130;
    sub_1000262AC(*(v0 + 352), v127, v128);
    goto LABEL_46;
  }

  v131 = *(v0 + 568);
  v132 = *(v0 + 560);
  v144 = *(v0 + 576);
  v146 = *(v0 + 528);
  v133 = *(v0 + 520);
  v141 = *(v0 + 456);
  v142 = *(v0 + 472);
  v148 = *(v0 + 448);
  v135 = *(v0 + 336);
  v134 = *(v0 + 344);
  v136 = v123;
  sub_1000797A0();

  swift_willThrow();

  sub_10007A3B0(57);
  v205._object = 0x80000001000848A0;
  v205._countAndFlagsBits = 0xD000000000000019;
  sub_100079F00(v205);
  v206._countAndFlagsBits = v135;
  v206._object = v134;
  sub_100079F00(v206);
  v207._countAndFlagsBits = 0xD00000000000001ELL;
  v207._object = 0x80000001000849A0;
  sub_100079F00(v207);
  sub_10006D7AC();
  v15 = swift_allocError();
  *v137 = 0;
  *(v137 + 8) = 0xE000000000000000;
  *(v137 + 16) = 0;
  swift_willThrow();
  v138 = v132;
  v14 = v0;
  sub_1000071DC(v138, v131);

  sub_1000071C8(v176, v174);
  sub_1000071C8(v178, v183);
  sub_1000071DC(v166, v171);
  sub_1000071DC(v149, v152);

  v146(v142, v141);
  v17 = v148;
LABEL_13:
  sub_1000096C4(v17, &qword_10009DFB0, &qword_10007BA50);
  *(v14 + 720) = v15;
  v181 = (*(**(v14 + 504) + 168) + **(**(v14 + 504) + 168));
  v48 = swift_task_alloc();
  *(v14 + 728) = v48;
  *v48 = v14;
  v48[1] = sub_10006C738;
  v49 = v181;

  return v49();
}