uint64_t sub_100001878(uint64_t a1)
{
  v2 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000018E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100004134;

  return sub_100001E10(a1, v4, v5, v6);
}

uint64_t sub_1000019AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004134;

  return sub_100001A64(a1, v4);
}

uint64_t sub_100001A64(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100004138;

  return v6(a1);
}

uint64_t sub_100001D00(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  sub_100002370(0, &qword_100018A60, GDViewUpdateSourceRequest_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v9;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100003F58;

  return sub_1000023B8(v6, v8, v9);
}

uint64_t sub_100001E10(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000026DC;

  return v7();
}

uint64_t sub_100001EF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100004134;

  return sub_100001FB8(v2, v3, v4);
}

uint64_t sub_100001FB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100004134;

  return v6();
}

uint64_t sub_1000020A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000026DC;

  return sub_100001D00(v2, v3, v5, v4);
}

uint64_t sub_100002160()
{
  v16 = v0;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002A34(v1, qword_100018BA0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100002968(v5, v4, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: updateViewWithName %{public}s called", v6, 0xCu);
    sub_100002DB8(v7);
  }

  if (qword_1000187F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Configuration();
  v9 = sub_100002A34(v8, qword_100018B70);
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_100003CC8;
  v11 = v0[4];
  v13 = v0[2];
  v12 = v0[3];

  return sub_100003B20(v13, v12, v11, v9);
}

uint64_t sub_100002370(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000023B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100002160, 0, 0);
}

uint64_t sub_1000023DC()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[18];
  v6 = v0[19];
  v14 = v0[17];
  v15 = v0[21];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_task_alloc();
  (*(v1 + 16))(v9, v5, v4);
  v10 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v14;
  *(v11 + 5) = v7;
  (*(v1 + 32))(&v11[v10], v9, v4);
  *&v11[(v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v6;

  v0[31] = sub_10000640C(0, 0, v3, &unk_10000F4F8, v11, &qword_100018928, &qword_10000F3A0);
  v12 = *(v15 + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateViewTaskRegister);
  v0[32] = v12;

  return _swift_task_switch(sub_100002BD4, v12, 0);
}

uint64_t sub_1000025A4()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1000061A8;
  }

  else
  {
    v2 = sub_1000026B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000026B8()
{
  v1 = v0[32];
  v0[43] = v0[13];
  return _swift_task_switch(sub_100003254, v1, 0);
}

uint64_t sub_1000026DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000027D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1000063A8;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1000028F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000028F8()
{
  v1 = v0[10];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

unint64_t sub_100002968(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002A6C(v11, 0, 0, 1, a1, a2);
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
    sub_100002B78(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002DB8(v11);
  return v7;
}

uint64_t sub_100002A34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100002A6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000CCA8(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_100002B78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002BD4()
{
  v1 = v0[32];
  swift_beginAccess();
  v2 = *(v1 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100004270(0, v2[2] + 1, 1, v2, &unk_100018970, &unk_10000F508, &qword_100018968, &qword_10000F500);
    *(v1 + 112) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_100004270((v4 > 1), v5 + 1, 1, v2, &unk_100018970, &unk_10000F508, &qword_100018968, &qword_10000F500);
  }

  v6 = v0[31];
  v8 = v0[17];
  v7 = v0[18];
  v2[2] = v5 + 1;
  v9 = &v2[3 * v5];
  v9[4] = v6;
  v9[5] = v8;
  v9[6] = v7;
  *(v1 + 112) = v2;
  swift_endAccess();
  v10 = swift_task_alloc();
  v0[33] = v10;
  v11 = sub_10000A234(&qword_100018928, &qword_10000F3A0);
  v0[34] = v11;
  v12 = sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
  v0[35] = v12;
  *v10 = v0;
  v10[1] = sub_1000025A4;
  v13 = v0[31];

  return Task.value.getter(v0 + 13, v13, v11, v12, &protocol self-conformance witness table for Error);
}

uint64_t sub_100002DB8(void *a1)
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

uint64_t sub_100002E04()
{
  v14 = v0;
  static Task<>.checkCancellation()();
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002A34(v1, qword_100018BA0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100002968(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: updateViewWithName %{public}s begining update", v6, 0xCu);
    sub_100002DB8(v7);
  }

  type metadata accessor for ViewUpdate.ViewInProcessRunner();
  v0[7] = static ViewUpdate.ViewInProcessRunner.sharedInProcessRunner(for:)();
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1000027D0;
  v9 = v0[6];
  v11 = v0[3];
  v10 = v0[4];

  return ViewUpdate.ViewInProcessRunner.update(viewName:requests:)(v11, v10, v9);
}

uint64_t sub_100003040(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Configuration() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000026DC;

  return sub_100003178(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_100003178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100002E04, 0, 0);
}

uint64_t sub_1000031A0()
{
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  static Configuration.intelligencePlatformComputeService.getter();
  v2 = swift_task_alloc();
  *(v0 + 360) = v2;
  *v2 = v0;
  v2[1] = sub_100003820;

  return static IntelligencePlatformComputeSystem.teardown(config:)(v1);
}

uint64_t sub_100003254()
{
  v1 = v0[32];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v4 = v2[2];
  v3 = v2 + 2;

  v34 = v0;
  v35 = v4;
  if (!v4)
  {
    v6 = 0;
LABEL_18:

    v12 = v2[2];
    if (v12 < v6)
    {
      goto LABEL_50;
    }

    sub_100003648(v6, v12, &unk_100018970, &unk_10000F508, &qword_100018968, &qword_10000F500);
    swift_endAccess();
    v11 = sub_1000031A0;
    v12 = 0;
    v13 = 0;

    return _swift_task_switch(v11, v12, v13);
  }

  v5 = 0;
  v6 = 0;
  v37 = v2;
  while (1)
  {
    v7 = v2[v5 + 5];
    v8 = v2[v5 + 6];

    if (static Task.== infix(_:_:)())
    {
      break;
    }

LABEL_4:
    ++v6;
    v5 += 3;
    v2 = v37;
    if (v35 == v6)
    {
      v6 = *v3;
      goto LABEL_18;
    }
  }

  if (v7 != v0[17] || v8 != v0[18])
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

LABEL_15:
  v14 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_51;
  }

  v15 = *v3;
  if (v14 == *v3)
  {
    v2 = v37;
    goto LABEL_18;
  }

  v2 = v37;
  while (2)
  {
    if (v14 < v15)
    {
      v36 = v14;
      v38 = v2;
      v16 = &v2[v5];
      v33 = v2[v5 + 8];
      v17 = v2[v5 + 9];

      if (static Task.== infix(_:_:)())
      {
        if (v33 == v34[17] && v17 == v34[18])
        {

          goto LABEL_44;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
LABEL_44:
          v20 = v36;
          v2 = v38;
LABEL_25:
          v14 = v20 + 1;
          v3 = v2 + 2;
          v15 = v2[2];
          v5 += 3;
          if (v14 == v15)
          {
            goto LABEL_18;
          }

          continue;
        }
      }

      else
      {
      }

      v20 = v36;
      if (v36 == v6)
      {
        v2 = v38;
      }

      else
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v6 >= *v3)
        {
          goto LABEL_47;
        }

        if (v36 >= *v3)
        {
          goto LABEL_48;
        }

        v21 = v38;
        v22 = &v38[3 * v6 + 4];
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v16[7];
        v27 = v16[8];
        v28 = v16[9];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10000A6B8(v38);
        }

        v29 = &v21[3 * v6];
        v29[4] = v26;
        v29[5] = v27;
        v29[6] = v28;

        v20 = v36;
        if (v36 >= v21[2])
        {
          goto LABEL_49;
        }

        v30 = v34[32];
        v31 = &v21[v5];
        v31[7] = v23;
        v31[8] = v24;
        v31[9] = v25;

        *(v30 + 112) = v21;
        v2 = v21;
      }

      ++v6;
      goto LABEL_25;
    }

    break;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return _swift_task_switch(v11, v12, v13);
}

unint64_t sub_100003648(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v9 + v11;
  if (__OFADD__(v9, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v12 > v8[3] >> 1)
  {
    if (v9 <= v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = v9;
    }

    v8 = sub_100004270(isUniquelyReferenced_nonNull_native, v18, 1, v8, a3, a4, a5, a6);
    *v6 = v8;
  }

  result = sub_100003740(v10, a2, 0, a5, a6);
  *v6 = v8;
  return result;
}

unint64_t sub_100003740(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v5;
  v10 = v9 + 32 + 24 * result;
  sub_10000A234(a4, a5);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v6);
  v12 = a3 - v6;
  if (v11)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_17;
  }

  result = v10 + 24 * a3;
  v15 = (v9 + 32 + 24 * a2);
  if (result != v15 || result >= v15 + 24 * v14)
  {
    result = memmove(result, v15, 24 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_18;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100003820()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    (*(v3 + 232))(*(v2 + 352), *(v3 + 184));

    v4 = sub_100005620;
  }

  else
  {
    (*(v3 + 232))();

    v4 = sub_100003980;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100003980()
{
  v12 = v0;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002A34(v1, qword_100018BA0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[17];
    v4 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100002968(v5, v4, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: update %{public}s returning responses", v6, 0xCu);
    sub_100002DB8(v7);
  }

  v8 = v0[1];
  v9 = v0[43];

  return v8(v9);
}

uint64_t sub_100003B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_100003BC4, 0, 0);
}

uint64_t sub_100003BC4()
{
  v1 = type metadata accessor for Configuration();
  v0[23] = v1;
  v2 = *(v1 - 8);
  v0[24] = v2;
  v0[25] = *(v2 + 64);
  v3 = swift_task_alloc();
  v0[26] = v3;
  static Configuration.intelligencePlatformComputeService.getter();
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_100003DC8;

  return static IntelligencePlatformComputeSystem.prepare(config:)(v3);
}

uint64_t sub_100003CC8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100003DC8()
{
  v2 = *v1;
  v2[28] = v0;

  v3 = v2[26];
  v4 = v2[24];
  v5 = v2[23];
  v6 = *(v4 + 8);
  v7 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[37] = v6;
    v2[38] = v7;
    (v6)(v3, v5);
    v8 = sub_100005074;
  }

  else
  {
    v2[29] = v6;
    v2[30] = v7;
    v6();

    v8 = sub_1000023DC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100003F58(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_100002370(0, &qword_100018960, GDViewUpdateSourceResponse_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_100004138()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100004230()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_100004270(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000A234(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A234(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1000043B8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000043F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000445C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004498()
{

  return _swift_deallocObject(v0, 32, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Configuration();
  sub_100004644(v3, qword_100018B58);
  v4 = sub_100002A34(v3, qword_100018B58);
  v5 = os_transaction_create();
  v6 = *(v3 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004B6C();
  v9 = objc_autoreleasePoolPush();
  type metadata accessor for Library();
  sub_100004DF4();
  static UnifiedLibrary.add(library:)();
  objc_autoreleasePoolPop(v9);
  v10 = objc_autoreleasePoolPush();
  static IntelligencePlatformComputeSystem.start()();
  objc_autoreleasePoolPop(v10);
  if (Configuration.isIPCSMemoryTransactionEnabled.getter())
  {
    (*(v6 + 32))(v4, v8, v3);
    swift_unknownObjectRelease();
    sub_10000D078(v4);
  }

  sub_10000D078(v8);
}

uint64_t *sub_100004644(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t *sub_1000046A8(uint64_t *a1, uint64_t a2)
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
      sub_100004E4C(v6, v5);
      *v16 = v6;
      *&v16[8] = v5;
      v16[10] = BYTE2(v5);
      v16[11] = BYTE3(v5);
      v16[12] = BYTE4(v5);
      v16[13] = BYTE5(v5);
      v16[14] = BYTE6(v5);
      result = sub_10000E6CC(&v17, v16, v15);
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

    sub_100004E4C(v6, v5);
    *a1 = xmmword_10000F2B0;
    sub_100004E4C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_24:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_100004A18(v6, v6 >> 32, v11, v3);

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

    sub_100004E4C(v6, v5);
    v17 = v6;
    v18 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10000F2B0;
    sub_100004E4C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v6 = v17;
    result = sub_100004A18(v17[2], v17[3], v18, v3);
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
  result = sub_10000E6CC(&v17, v16, a2);
  if (!v2)
  {
    return v17;
  }

  return result;
}

uint64_t *sub_100004A18(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = __DataStorage._offset.getter();
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

  __DataStorage._length.getter();
  result = sub_10000E6CC(&v11, v9 + v10, a4);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_100004AC4(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = __DataStorage._length.getter();
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

uint64_t sub_100004B6C()
{
  String.utf8CString.getter();
  v0 = _set_user_dir_suffix();

  if (!v0)
  {
    if (qword_100018800 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100002A34(v15, qword_100018BA0);
    v7 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v10 = "_set_user_dir_suffix() failed!";
      v11 = v16;
      v12 = v7;
      v13 = v17;
      v14 = 2;
      goto LABEL_15;
    }

LABEL_16:

    exit(1);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  v18 = 0x40000000000;
  v19 = __DataStorage.init(length:)();
  sub_100004AC4(&v18, 0);
  v19 |= 0x4000000000000000uLL;
  sub_1000046A8(&v18, 65537);
  v2 = v1;
  sub_100004E4C(v18, v19);
  if (!v2 || (v3 = String.utf8CString.getter(), , v4 = realpath_DARWIN_EXTSN((v3 + 32), 0), , !v4))
  {
    if (qword_100018800 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100002A34(v6, qword_100018BA0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 1) = 65537;
      v10 = "Unable to read _CS_DARWIN_USER_CACHE_DIR %d!";
      v11 = v8;
      v12 = v7;
      v13 = v9;
      v14 = 8;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v12, v11, v10, v13, v14);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  String.init(cString:)();
}

unint64_t sub_100004DF4()
{
  result = qword_100018808;
  if (!qword_100018808)
  {
    type metadata accessor for Library();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018808);
  }

  return result;
}

uint64_t sub_100004E4C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100004EA0()
{
  v0 = type metadata accessor for Configuration();
  sub_100004644(v0, qword_100018B70);
  v1 = sub_100002A34(v0, qword_100018B70);
  if (qword_1000187F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A234(&qword_100018A30, &qword_10000F440);
  v3 = sub_100002A34(v2, qword_100018B88);
  v4 = swift_beginAccess();
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_10000AFB0(v3, &v9 - v5, &qword_100018A30, &qword_10000F440);
  v7 = *(v0 - 8);
  result = (*(v7 + 48))(v6, 1, v0);
  if (result != 1)
  {
    return (*(v7 + 32))(v1, v6, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000502C()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100005074()
{
  v14 = v0;

  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[39] = sub_100002A34(v1, qword_100018BA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[28];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v0[12] = v4;
    swift_errorRetain();
    sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
    v7 = String.init<A>(describing:)();
    v9 = sub_100002968(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: Error preparing system: %s", v5, 0xCu);
    sub_100002DB8(v6);
  }

  v10 = swift_task_alloc();
  v0[40] = v10;
  static Configuration.intelligencePlatformComputeService.getter();
  v11 = swift_task_alloc();
  v0[41] = v11;
  *v11 = v0;
  v11[1] = sub_100005294;

  return static IntelligencePlatformComputeSystem.teardown(config:)(v10);
}

uint64_t sub_100005294()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  (*(v2 + 296))(*(v2 + 320), *(v2 + 184));
  if (v0)
  {
    v3 = sub_100005484;
  }

  else
  {

    v3 = sub_100005410;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100005410()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100005484()
{
  v12 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[42];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[11] = v3;
    swift_errorRetain();
    sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
    v6 = String.init<A>(describing:)();
    v8 = sub_100002968(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "IntelligencePlatformComputeService: further error tearing down view system: %s", v4, 0xCu);
    sub_100002DB8(v5);
  }

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100005620()
{
  v22 = v0;

  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002A34(v1, qword_100018BA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[46];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21[0] = v6;
    *v5 = 136315138;
    v0[16] = v4;
    swift_errorRetain();
    v7 = String.init<A>(describing:)();
    v9 = sub_100002968(v7, v8, v21);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: further error tearing down view system: %s", v5, 0xCu);
    sub_100002DB8(v6);
  }

  swift_willThrow();
  v10 = v0[46];
  v0[47] = v10;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v0[48] = sub_100002A34(v1, qword_100018BA0);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[17];
    v13 = v0[18];
    v15 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_100002968(v14, v13, v21);
    *(v15 + 12) = 2080;
    v0[15] = v10;
    swift_errorRetain();
    v16 = String.init<A>(describing:)();
    v18 = sub_100002968(v16, v17, v21);

    *(v15 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "IntelligencePlatformComputeService: updateView: n:%{public}s failed: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v19 = v0[32];

  return _swift_task_switch(sub_100005964, v19, 0);
}

uint64_t sub_100005964()
{
  v1 = v0[32];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v4 = v2[2];
  v3 = v2 + 2;

  v34 = v0;
  v35 = v4;
  if (!v4)
  {
    v6 = 0;
LABEL_18:

    v12 = v2[2];
    if (v12 < v6)
    {
      goto LABEL_50;
    }

    sub_100003648(v6, v12, &unk_100018970, &unk_10000F508, &qword_100018968, &qword_10000F500);
    swift_endAccess();
    v11 = sub_100005D58;
    v12 = 0;
    v13 = 0;

    return _swift_task_switch(v11, v12, v13);
  }

  v5 = 0;
  v6 = 0;
  v37 = v2;
  while (1)
  {
    v7 = v2[v5 + 5];
    v8 = v2[v5 + 6];

    if (static Task.== infix(_:_:)())
    {
      break;
    }

LABEL_4:
    ++v6;
    v5 += 3;
    v2 = v37;
    if (v35 == v6)
    {
      v6 = *v3;
      goto LABEL_18;
    }
  }

  if (v7 != v0[17] || v8 != v0[18])
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

LABEL_15:
  v14 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_51;
  }

  v15 = *v3;
  if (v14 == *v3)
  {
    v2 = v37;
    goto LABEL_18;
  }

  v2 = v37;
  while (2)
  {
    if (v14 < v15)
    {
      v36 = v14;
      v38 = v2;
      v16 = &v2[v5];
      v33 = v2[v5 + 8];
      v17 = v2[v5 + 9];

      if (static Task.== infix(_:_:)())
      {
        if (v33 == v34[17] && v17 == v34[18])
        {

          goto LABEL_44;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
LABEL_44:
          v20 = v36;
          v2 = v38;
LABEL_25:
          v14 = v20 + 1;
          v3 = v2 + 2;
          v15 = v2[2];
          v5 += 3;
          if (v14 == v15)
          {
            goto LABEL_18;
          }

          continue;
        }
      }

      else
      {
      }

      v20 = v36;
      if (v36 == v6)
      {
        v2 = v38;
      }

      else
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v6 >= *v3)
        {
          goto LABEL_47;
        }

        if (v36 >= *v3)
        {
          goto LABEL_48;
        }

        v21 = v38;
        v22 = &v38[3 * v6 + 4];
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v16[7];
        v27 = v16[8];
        v28 = v16[9];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10000A6B8(v38);
        }

        v29 = &v21[3 * v6];
        v29[4] = v26;
        v29[5] = v27;
        v29[6] = v28;

        v20 = v36;
        if (v36 >= v21[2])
        {
          goto LABEL_49;
        }

        v30 = v34[32];
        v31 = &v21[v5];
        v31[7] = v23;
        v31[8] = v24;
        v31[9] = v25;

        *(v30 + 112) = v21;
        v2 = v21;
      }

      ++v6;
      goto LABEL_25;
    }

    break;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100005D58()
{
  v1 = swift_task_alloc();
  *(v0 + 392) = v1;
  static Configuration.intelligencePlatformComputeService.getter();
  v2 = swift_task_alloc();
  *(v0 + 400) = v2;
  *v2 = v0;
  v2[1] = sub_100005E0C;

  return static IntelligencePlatformComputeSystem.teardown(config:)(v1);
}

uint64_t sub_100005E0C()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  (*(v2 + 232))(*(v2 + 392), *(v2 + 184));
  if (v0)
  {
    v3 = sub_100006008;
  }

  else
  {

    v3 = sub_100005F88;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100005F88(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100006008()
{
  v12 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[51];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[14] = v3;
    swift_errorRetain();
    v6 = String.init<A>(describing:)();
    v8 = sub_100002968(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "IntelligencePlatformComputeService: further error tearing down view system: %s", v4, 0xCu);
    sub_100002DB8(v5);
  }

  swift_willThrow();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000061A8()
{
  v14 = v0;
  v1 = v0[36];
  v0[47] = v1;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[48] = sub_100002A34(v2, qword_100018BA0);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[17];
    v5 = v0[18];
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_100002968(v6, v5, &v13);
    *(v7 + 12) = 2080;
    v0[15] = v1;
    swift_errorRetain();
    v8 = String.init<A>(describing:)();
    v10 = sub_100002968(v8, v9, &v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "IntelligencePlatformComputeService: updateView: n:%{public}s failed: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[32];

  return _swift_task_switch(sub_100005964, v11, 0);
}

uint64_t sub_1000063A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000640C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v26[0] = a4;
  v12 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  __chkstk_darwin(v12 - 8);
  v14 = v26 - v13;
  sub_10000AFB0(a3, v26 - v13, &unk_100018AA0, &qword_10000F5D0);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_100001878(v14);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;

      sub_10000A234(a6, a7);
      v23 = (v21 | v19);
      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_100001878(a3);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100001878(a3);
  sub_10000A234(a6, a7);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_10000668C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_100006730, 0, 0);
}

uint64_t sub_100006730()
{
  v1 = type metadata accessor for Configuration();
  v0[23] = v1;
  v2 = *(v1 - 8);
  v0[24] = v2;
  v0[25] = *(v2 + 64);
  v3 = swift_task_alloc();
  v0[26] = v3;
  static Configuration.intelligencePlatformComputeService.getter();
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_100006834;

  return static IntelligencePlatformComputeSystem.prepare(config:)(v3);
}

uint64_t sub_100006834()
{
  v2 = *v1;
  v2[28] = v0;

  v3 = v2[26];
  v4 = v2[24];
  v5 = v2[23];
  v6 = *(v4 + 8);
  v7 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[37] = v6;
    v2[38] = v7;
    (v6)(v3, v5);
    v8 = sub_100006E80;
  }

  else
  {
    v2[29] = v6;
    v2[30] = v7;
    v6();

    v8 = sub_1000069C4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000069C4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[18];
  v6 = v0[19];
  v14 = v0[17];
  v15 = v0[21];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_task_alloc();
  (*(v1 + 16))(v9, v5, v4);
  v10 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v14;
  *(v11 + 5) = v7;
  (*(v1 + 32))(&v11[v10], v9, v4);
  *&v11[(v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v6;

  v0[31] = sub_10000640C(0, 0, v3, &unk_10000F4A8, v11, &qword_100018930, &qword_10000F3B0);
  v12 = *(v15 + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateGroupTaskRegister);
  v0[32] = v12;

  return _swift_task_switch(sub_100006B88, v12, 0);
}

uint64_t sub_100006B88()
{
  v1 = v0[32];
  swift_beginAccess();
  v2 = *(v1 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100004270(0, v2[2] + 1, 1, v2, &qword_100018958, &qword_10000F4B8, &qword_100018950, &qword_10000F4B0);
    *(v1 + 112) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_100004270((v4 > 1), v5 + 1, 1, v2, &qword_100018958, &qword_10000F4B8, &qword_100018950, &qword_10000F4B0);
  }

  v6 = v0[31];
  v8 = v0[17];
  v7 = v0[18];
  v2[2] = v5 + 1;
  v9 = &v2[3 * v5];
  v9[4] = v6;
  v9[5] = v8;
  v9[6] = v7;
  *(v1 + 112) = v2;
  swift_endAccess();
  v10 = swift_task_alloc();
  v0[33] = v10;
  v11 = sub_10000A234(&qword_100018930, &qword_10000F3B0);
  v0[34] = v11;
  v12 = sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
  v0[35] = v12;
  *v10 = v0;
  v10[1] = sub_100006D6C;
  v13 = v0[31];

  return Task.value.getter(v0 + 13, v13, v11, v12, &protocol self-conformance witness table for Error);
}

uint64_t sub_100006D6C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_100008350;
  }

  else
  {
    v2 = sub_10000721C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100006E80()
{
  v14 = v0;

  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[39] = sub_100002A34(v1, qword_100018BA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[28];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v0[12] = v4;
    swift_errorRetain();
    sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
    v7 = String.init<A>(describing:)();
    v9 = sub_100002968(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: Error preparing system: %s", v5, 0xCu);
    sub_100002DB8(v6);
  }

  v10 = swift_task_alloc();
  v0[40] = v10;
  static Configuration.intelligencePlatformComputeService.getter();
  v11 = swift_task_alloc();
  v0[41] = v11;
  *v11 = v0;
  v11[1] = sub_1000070A0;

  return static IntelligencePlatformComputeSystem.teardown(config:)(v10);
}

uint64_t sub_1000070A0()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  (*(v2 + 296))(*(v2 + 320), *(v2 + 184));
  if (v0)
  {
    v3 = sub_10000B488;
  }

  else
  {

    v3 = sub_10000B480;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000721C()
{
  v1 = v0[32];
  v0[43] = v0[13];
  return _swift_task_switch(sub_100007240, v1, 0);
}

uint64_t sub_100007240()
{
  v1 = v0[32];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v4 = v2[2];
  v3 = v2 + 2;

  v34 = v0;
  v35 = v4;
  if (!v4)
  {
    v6 = 0;
LABEL_18:

    v12 = v2[2];
    if (v12 < v6)
    {
      goto LABEL_50;
    }

    sub_100003648(v6, v12, &qword_100018958, &qword_10000F4B8, &qword_100018950, &qword_10000F4B0);
    swift_endAccess();
    v11 = sub_100007634;
    v12 = 0;
    v13 = 0;

    return _swift_task_switch(v11, v12, v13);
  }

  v5 = 0;
  v6 = 0;
  v37 = v2;
  while (1)
  {
    v7 = v2[v5 + 5];
    v8 = v2[v5 + 6];

    if (static Task.== infix(_:_:)())
    {
      break;
    }

LABEL_4:
    ++v6;
    v5 += 3;
    v2 = v37;
    if (v35 == v6)
    {
      v6 = *v3;
      goto LABEL_18;
    }
  }

  if (v7 != v0[17] || v8 != v0[18])
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

LABEL_15:
  v14 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_51;
  }

  v15 = *v3;
  if (v14 == *v3)
  {
    v2 = v37;
    goto LABEL_18;
  }

  v2 = v37;
  while (2)
  {
    if (v14 < v15)
    {
      v36 = v14;
      v38 = v2;
      v16 = &v2[v5];
      v33 = v2[v5 + 8];
      v17 = v2[v5 + 9];

      if (static Task.== infix(_:_:)())
      {
        if (v33 == v34[17] && v17 == v34[18])
        {

          goto LABEL_44;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
LABEL_44:
          v20 = v36;
          v2 = v38;
LABEL_25:
          v14 = v20 + 1;
          v3 = v2 + 2;
          v15 = v2[2];
          v5 += 3;
          if (v14 == v15)
          {
            goto LABEL_18;
          }

          continue;
        }
      }

      else
      {
      }

      v20 = v36;
      if (v36 == v6)
      {
        v2 = v38;
      }

      else
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v6 >= *v3)
        {
          goto LABEL_47;
        }

        if (v36 >= *v3)
        {
          goto LABEL_48;
        }

        v21 = v38;
        v22 = &v38[3 * v6 + 4];
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v16[7];
        v27 = v16[8];
        v28 = v16[9];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10000A700(v38);
        }

        v29 = &v21[3 * v6];
        v29[4] = v26;
        v29[5] = v27;
        v29[6] = v28;

        v20 = v36;
        if (v36 >= v21[2])
        {
          goto LABEL_49;
        }

        v30 = v34[32];
        v31 = &v21[v5];
        v31[7] = v23;
        v31[8] = v24;
        v31[9] = v25;

        *(v30 + 112) = v21;
        v2 = v21;
      }

      ++v6;
      goto LABEL_25;
    }

    break;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100007634()
{
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  static Configuration.intelligencePlatformComputeService.getter();
  v2 = swift_task_alloc();
  *(v0 + 360) = v2;
  *v2 = v0;
  v2[1] = sub_1000076E8;

  return static IntelligencePlatformComputeSystem.teardown(config:)(v1);
}

uint64_t sub_1000076E8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    (*(v3 + 232))(*(v2 + 352), *(v3 + 184));

    v4 = sub_1000079E8;
  }

  else
  {
    (*(v3 + 232))();

    v4 = sub_100007848;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100007848()
{
  v12 = v0;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002A34(v1, qword_100018BA0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[17];
    v4 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100002968(v5, v4, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: updateGroupWithName %{public}s returning responses", v6, 0xCu);
    sub_100002DB8(v7);
  }

  v8 = v0[1];
  v9 = v0[43];

  return v8(v9);
}

uint64_t sub_1000079E8()
{
  v22 = v0;

  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002A34(v1, qword_100018BA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[46];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21[0] = v6;
    *v5 = 136315138;
    v0[16] = v4;
    swift_errorRetain();
    v7 = String.init<A>(describing:)();
    v9 = sub_100002968(v7, v8, v21);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: further error tearing down view system: %s", v5, 0xCu);
    sub_100002DB8(v6);
  }

  swift_willThrow();
  v10 = v0[46];
  v0[47] = v10;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v0[48] = sub_100002A34(v1, qword_100018BA0);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[17];
    v13 = v0[18];
    v15 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = sub_100002968(v14, v13, v21);
    *(v15 + 12) = 2080;
    v0[15] = v10;
    swift_errorRetain();
    v16 = String.init<A>(describing:)();
    v18 = sub_100002968(v16, v17, v21);

    *(v15 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "IntelligencePlatformComputeService: updateGroup: n:%{public}s failed: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v19 = v0[32];

  return _swift_task_switch(sub_100007D2C, v19, 0);
}

uint64_t sub_100007D2C()
{
  v1 = v0[32];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v4 = v2[2];
  v3 = v2 + 2;

  v34 = v0;
  v35 = v4;
  if (!v4)
  {
    v6 = 0;
LABEL_18:

    v12 = v2[2];
    if (v12 < v6)
    {
      goto LABEL_50;
    }

    sub_100003648(v6, v12, &qword_100018958, &qword_10000F4B8, &qword_100018950, &qword_10000F4B0);
    swift_endAccess();
    v11 = sub_100008120;
    v12 = 0;
    v13 = 0;

    return _swift_task_switch(v11, v12, v13);
  }

  v5 = 0;
  v6 = 0;
  v37 = v2;
  while (1)
  {
    v7 = v2[v5 + 5];
    v8 = v2[v5 + 6];

    if (static Task.== infix(_:_:)())
    {
      break;
    }

LABEL_4:
    ++v6;
    v5 += 3;
    v2 = v37;
    if (v35 == v6)
    {
      v6 = *v3;
      goto LABEL_18;
    }
  }

  if (v7 != v0[17] || v8 != v0[18])
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_4;
  }

LABEL_15:
  v14 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_51;
  }

  v15 = *v3;
  if (v14 == *v3)
  {
    v2 = v37;
    goto LABEL_18;
  }

  v2 = v37;
  while (2)
  {
    if (v14 < v15)
    {
      v36 = v14;
      v38 = v2;
      v16 = &v2[v5];
      v33 = v2[v5 + 8];
      v17 = v2[v5 + 9];

      if (static Task.== infix(_:_:)())
      {
        if (v33 == v34[17] && v17 == v34[18])
        {

          goto LABEL_44;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
LABEL_44:
          v20 = v36;
          v2 = v38;
LABEL_25:
          v14 = v20 + 1;
          v3 = v2 + 2;
          v15 = v2[2];
          v5 += 3;
          if (v14 == v15)
          {
            goto LABEL_18;
          }

          continue;
        }
      }

      else
      {
      }

      v20 = v36;
      if (v36 == v6)
      {
        v2 = v38;
      }

      else
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v6 >= *v3)
        {
          goto LABEL_47;
        }

        if (v36 >= *v3)
        {
          goto LABEL_48;
        }

        v21 = v38;
        v22 = &v38[3 * v6 + 4];
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v16[7];
        v27 = v16[8];
        v28 = v16[9];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10000A700(v38);
        }

        v29 = &v21[3 * v6];
        v29[4] = v26;
        v29[5] = v27;
        v29[6] = v28;

        v20 = v36;
        if (v36 >= v21[2])
        {
          goto LABEL_49;
        }

        v30 = v34[32];
        v31 = &v21[v5];
        v31[7] = v23;
        v31[8] = v24;
        v31[9] = v25;

        *(v30 + 112) = v21;
        v2 = v21;
      }

      ++v6;
      goto LABEL_25;
    }

    break;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100008120()
{
  v1 = swift_task_alloc();
  *(v0 + 392) = v1;
  static Configuration.intelligencePlatformComputeService.getter();
  v2 = swift_task_alloc();
  *(v0 + 400) = v2;
  *v2 = v0;
  v2[1] = sub_1000081D4;

  return static IntelligencePlatformComputeSystem.teardown(config:)(v1);
}

uint64_t sub_1000081D4()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  (*(v2 + 232))(*(v2 + 392), *(v2 + 184));
  if (v0)
  {
    v3 = sub_10000B4A4;
  }

  else
  {

    v3 = sub_10000B494;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100008350()
{
  v14 = v0;
  v1 = v0[36];
  v0[47] = v1;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[48] = sub_100002A34(v2, qword_100018BA0);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[17];
    v5 = v0[18];
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_100002968(v6, v5, &v13);
    *(v7 + 12) = 2080;
    v0[15] = v1;
    swift_errorRetain();
    v8 = String.init<A>(describing:)();
    v10 = sub_100002968(v8, v9, &v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "IntelligencePlatformComputeService: updateGroup: n:%{public}s failed: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[32];

  return _swift_task_switch(sub_100007D2C, v11, 0);
}

uint64_t sub_100008550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100008578, 0, 0);
}

uint64_t sub_100008578()
{
  v14 = v0;
  static Task<>.checkCancellation()();
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002A34(v1, qword_100018BA0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100002968(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: updateGroupWithName %{public}s begining update", v6, 0xCu);
    sub_100002DB8(v7);
  }

  type metadata accessor for ViewUpdate.ViewInProcessRunner();
  v0[7] = static ViewUpdate.ViewInProcessRunner.sharedInProcessRunner(for:)();
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1000087B4;
  v9 = v0[6];
  v11 = v0[3];
  v10 = v0[4];

  return ViewUpdate.ViewInProcessRunner.update(groupName:namesAndRequests:)(v11, v10, v9);
}

uint64_t sub_1000087B4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_10000B48C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_10000B484;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000088DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100008900, 0, 0);
}

uint64_t sub_100008900()
{
  v19 = v0;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002A34(v1, qword_100018BA0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[4];
  if (v4)
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_100002968(v7, v6, &v18);
    *(v8 + 12) = 2048;
    if (v5 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 14) = v10;

    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: updateGroupWithName %{public}s called with %ld namesAndRequests", v8, 0x16u);
    sub_100002DB8(v9);
  }

  else
  {
  }

  if (qword_1000187F0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Configuration();
  v12 = sub_100002A34(v11, qword_100018B70);
  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = sub_10000B49C;
  v14 = v0[4];
  v16 = v0[2];
  v15 = v0[3];

  return sub_10000668C(v16, v15, v14, v12);
}

uint64_t sub_100008CFC(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  sub_100002370(0, &qword_100018A70, GDViewUpdateNameAndRequests_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v9;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100008E0C;

  return sub_1000088DC(v6, v8, v9);
}

uint64_t sub_100008E0C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_100002370(0, &qword_100018948, GDViewUpdateNameAndResponses_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_100009178(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v6 = a2;
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[5] = v11;
  *v11 = v4;
  v11[1] = sub_10000B498;

  return sub_10000A748(v7, v9, v6);
}

uint64_t sub_1000093FC(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v6 = a2;
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[5] = v11;
  *v11 = v4;
  v11[1] = sub_1000094F0;

  return sub_10000AB14(v7, v9, v6);
}

uint64_t sub_1000094F0(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1000096C4()
{
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = sub_100002A34(v1, qword_100018BA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: stop called", v4, 2u);
  }

  v5 = v0[8];

  v6 = *(v5 + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateViewTaskRegister);
  v0[10] = v6;

  return _swift_task_switch(sub_1000097F4, v6, 0);
}

uint64_t sub_1000097F4()
{
  v16 = v0;
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v14 = v1;
    v3 = ( + 48);
    v4 = &qword_10000F3A0;
    do
    {
      v9 = *(v3 - 1);
      v10 = *v3;

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v5 = swift_slowAlloc();
        v6 = v4;
        v7 = swift_slowAlloc();
        v15 = v7;
        *v5 = 136446210;
        v8 = sub_100002968(v9, v10, &v15);

        *(v5 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v11, v12, "IntelligencePlatformComputeService: cancelling task %{public}s", v5, 0xCu);
        sub_100002DB8(v7);
        v4 = v6;
      }

      else
      {
      }

      sub_10000A234(&qword_100018928, v4);
      sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
      Task.cancel()();

      v3 += 3;
      --v2;
    }

    while (v2);

    v1 = v14;
  }

  *(v1 + 112) = &_swiftEmptyArrayStorage;

  return _swift_task_switch(sub_100009A38, 0, 0);
}

uint64_t sub_100009A38()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateGroupTaskRegister);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_100009A64, v1, 0);
}

uint64_t sub_100009A64()
{
  v18 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v15 = v1;
    v3 = ( + 48);
    v4 = &unk_10000F3B0;
    v16 = v0;
    do
    {
      v9 = *(v3 - 1);
      v10 = *v3;

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v5 = swift_slowAlloc();
        v6 = v4;
        v7 = swift_slowAlloc();
        v17 = v7;
        *v5 = 136446210;
        v8 = sub_100002968(v9, v10, &v17);

        *(v5 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v11, v12, "IntelligencePlatformComputeService: cancelling task %{public}s", v5, 0xCu);
        sub_100002DB8(v7);
        v4 = v6;

        v0 = v16;
      }

      else
      {
      }

      sub_10000A234(&qword_100018930, v4);
      sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
      Task.cancel()();

      v3 += 3;
      --v2;
    }

    while (v2);

    v1 = v15;
  }

  *(v1 + 112) = &_swiftEmptyArrayStorage;

  v13 = *(v0 + 8);

  return v13(1);
}

uint64_t sub_100009E1C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100009EC4;

  return sub_1000096A4();
}

uint64_t sub_100009EC4(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

id IntelligencePlatformComputeServiceXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000A234(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000A27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000AFB0(a3, v23 - v10, &unk_100018AA0, &qword_10000F5D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100001878(v11);
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

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
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

    sub_100001878(a3);

    return v21;
  }

LABEL_8:
  sub_100001878(a3);
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

uint64_t sub_10000A548()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100004134;

  return sub_100009E1C(v2, v3);
}

uint64_t sub_10000A5F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100004134;

  return sub_1000093FC(v2, v3, v5, v4);
}

uint64_t sub_10000A748(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_10000A76C, 0, 0);
}

uint64_t sub_10000A76C()
{
  v16 = v0;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002A34(v1, qword_100018BA0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_100002968(v6, v5, &v15);
    *(v7 + 12) = 1024;
    *(v7 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: clearViewWithName called [name: %{public}s, fullRebuild: %{BOOL}d]", v7, 0x12u);
    sub_100002DB8(v8);
  }

  if (qword_1000187F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Configuration();
  sub_100002A34(v9, qword_100018B70);
  static Task<>.checkCancellation()();
  type metadata accessor for ViewUpdate.ViewInProcessRunner();
  *(v0 + 32) = static ViewUpdate.ViewInProcessRunner.sharedInProcessRunner(for:)();
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_10000AA00;
  v11 = *(v0 + 56);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);

  return ViewUpdate.ViewInProcessRunner.clear(viewName:fullRebuild:)(v13, v12, v11);
}

uint64_t sub_10000AA00()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10000B490;
  }

  else
  {
    v2 = sub_10000B4A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000AB14(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_10000AB38, 0, 0);
}

uint64_t sub_10000AB38()
{
  v16 = v0;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002A34(v1, qword_100018BA0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_100002968(v6, v5, &v15);
    *(v7 + 12) = 1024;
    *(v7 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: truncateViewWithName called [name: %{public}s, fullRebuild: %{BOOL}d]", v7, 0x12u);
    sub_100002DB8(v8);
  }

  if (qword_1000187F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Configuration();
  sub_100002A34(v9, qword_100018B70);
  static Task<>.checkCancellation()();
  type metadata accessor for ViewUpdate.ViewInProcessRunner();
  *(v0 + 32) = static ViewUpdate.ViewInProcessRunner.sharedInProcessRunner(for:)();
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_10000ADCC;
  v11 = *(v0 + 56);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);

  return ViewUpdate.ViewInProcessRunner.truncate(viewName:fullRebuild:)(v13, v12, v11);
}

uint64_t sub_10000ADCC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10000AF48;
  }

  else
  {
    v2 = sub_10000AEE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000AEE0()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_10000AF48()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10000AFB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000A234(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000B018()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B060()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100004134;

  return sub_100009178(v2, v3, v5, v4);
}

uint64_t sub_10000B124()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100004134;

  return sub_100008CFC(v2, v3, v5, v4);
}

uint64_t sub_10000B1E4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Configuration() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100004134;

  return sub_100008550(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_10000B320()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B370()
{
  v1 = type metadata accessor for Configuration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000B4A8()
{
  v0 = sub_10000A234(&qword_100018A30, &qword_10000F440);
  sub_100004644(v0, qword_100018B88);
  v1 = sub_100002A34(v0, qword_100018B88);
  v2 = type metadata accessor for Configuration();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_10000B548(void *a1)
{
  v2 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100002A34(v5, qword_100018BA0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "XPC connection is invalid, stopping work", v8, 2u);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v11 = a1;
  sub_10000BD08(0, 0, v4, &unk_10000F618, v10);
}

uint64_t sub_10000B72C()
{
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = sub_100002A34(v1, qword_100018BA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: stop called", v4, 2u);
  }

  v5 = v0[8];

  v6 = *(v5 + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateViewTaskRegister);
  v0[10] = v6;

  return _swift_task_switch(sub_10000B85C, v6, 0);
}

uint64_t sub_10000B85C()
{
  v16 = v0;
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v14 = v1;
    v3 = ( + 48);
    v4 = &qword_10000F3A0;
    do
    {
      v9 = *(v3 - 1);
      v10 = *v3;

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v5 = swift_slowAlloc();
        v6 = v4;
        v7 = swift_slowAlloc();
        v15 = v7;
        *v5 = 136446210;
        v8 = sub_100002968(v9, v10, &v15);

        *(v5 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v11, v12, "IntelligencePlatformComputeService: cancelling task %{public}s", v5, 0xCu);
        sub_100002DB8(v7);
        v4 = v6;
      }

      else
      {
      }

      sub_10000A234(&qword_100018928, v4);
      sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
      Task.cancel()();

      v3 += 3;
      --v2;
    }

    while (v2);

    v1 = v14;
  }

  *(v1 + 112) = &_swiftEmptyArrayStorage;

  return _swift_task_switch(sub_10000BAA0, 0, 0);
}

uint64_t sub_10000BAA0()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateGroupTaskRegister);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_10000BACC, v1, 0);
}

uint64_t sub_10000BACC()
{
  v18 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v15 = v1;
    v3 = ( + 48);
    v4 = &qword_10000F3B0;
    v16 = v0;
    do
    {
      v9 = *(v3 - 1);
      v10 = *v3;

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v5 = swift_slowAlloc();
        v6 = v4;
        v7 = swift_slowAlloc();
        v17 = v7;
        *v5 = 136446210;
        v8 = sub_100002968(v9, v10, &v17);

        *(v5 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v11, v12, "IntelligencePlatformComputeService: cancelling task %{public}s", v5, 0xCu);
        sub_100002DB8(v7);
        v4 = v6;

        v0 = v16;
      }

      else
      {
      }

      sub_10000A234(&qword_100018930, v4);
      sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
      Task.cancel()();

      v3 += 3;
      --v2;
    }

    while (v2);

    v1 = v15;
  }

  *(v1 + 112) = &_swiftEmptyArrayStorage;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10000BD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000AFB0(a3, v25 - v10, &unk_100018AA0, &qword_10000F5D0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000E1C4(v11, &unk_100018AA0, &qword_10000F5D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_10000E1C4(a3, &unk_100018AA0, &qword_10000F5D0);

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

  sub_10000E1C4(a3, &unk_100018AA0, &qword_10000F5D0);
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

uint64_t sub_10000C008(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000C04C(void *a1)
{
  v2 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  if (qword_1000187F8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A234(&qword_100018A30, &qword_10000F440);
  v6 = sub_100002A34(v5, qword_100018B88);
  v7 = swift_beginAccess();
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  sub_10000AFB0(v6, &v21 - v8, &qword_100018A30, &qword_10000F440);
  v10 = type metadata accessor for Configuration();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    __break(1u);
LABEL_11:
    _exit(1);
  }

  v12 = Configuration.isIPCSMemoryTransactionEnabled.getter();
  (*(v11 + 8))(v9, v10);
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002A34(v13, qword_100018BA0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "IntelligencePlatformComputeService: Recieved SIGTERM, stopping work", v16, 2u);
  }

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v19 = a1;
  sub_10000BD08(0, 0, v4, &unk_10000F5E0, v18);
}

uint64_t sub_10000C38C()
{
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = sub_100002A34(v1, qword_100018BA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IntelligencePlatformComputeService: stop called", v4, 2u);
  }

  v5 = v0[8];

  v6 = *(v5 + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateViewTaskRegister);
  v0[10] = v6;

  return _swift_task_switch(sub_10000C4BC, v6, 0);
}

uint64_t sub_10000C4BC()
{
  v16 = v0;
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v14 = v1;
    v3 = ( + 48);
    v4 = &qword_10000F3A0;
    do
    {
      v9 = *(v3 - 1);
      v10 = *v3;

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v5 = swift_slowAlloc();
        v6 = v4;
        v7 = swift_slowAlloc();
        v15 = v7;
        *v5 = 136446210;
        v8 = sub_100002968(v9, v10, &v15);

        *(v5 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v11, v12, "IntelligencePlatformComputeService: cancelling task %{public}s", v5, 0xCu);
        sub_100002DB8(v7);
        v4 = v6;
      }

      else
      {
      }

      sub_10000A234(&qword_100018928, v4);
      sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
      Task.cancel()();

      v3 += 3;
      --v2;
    }

    while (v2);

    v1 = v14;
  }

  *(v1 + 112) = &_swiftEmptyArrayStorage;

  return _swift_task_switch(sub_10000C700, 0, 0);
}

uint64_t sub_10000C700()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateGroupTaskRegister);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_10000C72C, v1, 0);
}

uint64_t sub_10000C72C()
{
  v16 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    v14 = v1;
    v3 = ( + 48);
    v4 = &qword_10000F3B0;
    do
    {
      v9 = *(v3 - 1);
      v10 = *v3;

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v5 = swift_slowAlloc();
        v6 = v4;
        v7 = swift_slowAlloc();
        v15 = v7;
        *v5 = 136446210;
        v8 = sub_100002968(v9, v10, &v15);

        *(v5 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v11, v12, "IntelligencePlatformComputeService: cancelling task %{public}s", v5, 0xCu);
        sub_100002DB8(v7);
        v4 = v6;
      }

      else
      {
      }

      sub_10000A234(&qword_100018930, v4);
      sub_10000A234(&unk_100018AB0, &qword_10000F3A8);
      Task.cancel()();

      v3 += 3;
      --v2;
    }

    while (v2);

    v1 = v14;
  }

  *(v1 + 112) = &_swiftEmptyArrayStorage;

  return _swift_task_switch(sub_10000C970, 0, 0);
}

uint64_t sub_10000C970()
{
  xpc_transaction_exit_clean();
  v1 = *(v0 + 8);

  return v1();
}

id sub_10000CA6C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for IntelligencePlatformComputeServiceXPC.ServiceDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id BMDaemonLibraryLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntelligencePlatformComputeServiceXPC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_10000CB98(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10000CBE4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

_BYTE **sub_10000CC14(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10000CC4C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100002968(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_10000CCA8(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000CCF4(a1, a2);
  sub_10000CE24(&off_100014658);
  return v3;
}

char *sub_10000CCF4(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000CF10(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000CF10(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_10000CE24(uint64_t result)
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

  result = sub_10000CF84(result, v11, 1, v3);
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

void *sub_10000CF10(uint64_t a1, uint64_t a2)
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

  sub_10000A234(&unk_100018AC0, &qword_10000F608);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000CF84(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A234(&unk_100018AC0, &qword_10000F608);
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

void sub_10000D078(uint64_t a1)
{
  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002A34(v2, qword_100018BA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "IntelligencePlatformComputeServiceXPC: starting...", v5, 2u);
  }

  if (qword_1000187F8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A234(&qword_100018A30, &qword_10000F440);
  v7 = sub_100002A34(v6, qword_100018B88);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Configuration();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();
  sub_10000E488(v9, v7);
  swift_endAccess();
  v12 = [objc_allocWithZone(type metadata accessor for IntelligencePlatformComputeServiceXPC.ServiceDelegate()) init];
  v13 = [objc_opt_self() serviceListener];
  [v13 setDelegate:v12];
  [v13 resume];

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10000D32C(uint64_t a1)
{
  *&v68 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v64 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000187F8 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A234(&qword_100018A30, &qword_10000F440);
  v5 = sub_100002A34(v4, qword_100018B88);
  v6 = swift_beginAccess();
  __chkstk_darwin(v6);
  v8 = &v62 - v7;
  sub_10000AFB0(v5, &v62 - v7, &qword_100018A30, &qword_10000F440);
  v9 = type metadata accessor for Configuration();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v12 = type metadata accessor for Options();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  Configuration.options.getter();
  v15 = (*(v10 + 8))(v8, v9);
  __chkstk_darwin(v15);
  v16 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Options.noOperation.getter();
  sub_10000DF98();
  v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v18 = *(v13 + 8);
  v18(v16, v12);
  v18(v16, v12);
  if (v17)
  {
    if (qword_100018800 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100002A34(v19, qword_100018BA0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v20, v21))
    {
      v24 = 0;
LABEL_37:

      return v24;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "IntelligencePlatformComputeService: service is in no-op mode.", v22, 2u);
LABEL_25:

    v24 = 0;
    goto LABEL_37;
  }

  v23 = v68;
  if ([v68 valueForEntitlement:kGDCComputeServiceName])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
  }

  aBlock = v74;
  v70 = v75;
  if (!*(&v75 + 1))
  {
    sub_10000E1C4(&aBlock, &qword_100018A40, &qword_10000F5A0);
LABEL_21:
    if (qword_100018800 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100002A34(v30, qword_100018BA0);
    v31 = v23;
    v20 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v32))
    {

      v24 = 0;
      v20 = v31;
      goto LABEL_37;
    }

    v33 = swift_slowAlloc();
    *v33 = 67109120;
    *(v33 + 4) = [v31 processIdentifier];

    _os_log_impl(&_mh_execute_header, v20, v32, "IntelligencePlatformComputeService: Rejecting connection from %d: lacking entitlement", v33, 8u);
    goto LABEL_25;
  }

  if (!swift_dynamicCast() || (v73 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (qword_100018800 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100002A34(v25, qword_100018BA0);
  v26 = v23;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = [v26 processIdentifier];

    _os_log_impl(&_mh_execute_header, v27, v28, "IntelligencePlatformComputeService: connection from %d", v29, 8u);
  }

  else
  {

    v27 = v26;
  }

  v34 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___GDCIntelligencePlatformComputeServiceProtocol];
  [v26 setExportedInterface:v34];

  sub_10000A234(&qword_100018A48, &qword_10000F5A8);
  v35 = swift_allocObject();
  v68 = xmmword_10000F520;
  *(v35 + 16) = xmmword_10000F520;
  v36 = sub_100002370(0, &qword_100018A50, NSArray_ptr);
  v37 = sub_10000A234(&qword_100018A58, &qword_10000F5B0);
  *(v35 + 56) = v37;
  *(v35 + 32) = v36;
  v38 = sub_100002370(0, &qword_100018A60, GDViewUpdateSourceRequest_ptr);
  *(v35 + 88) = sub_10000A234(&qword_100018A68, &qword_10000F5B8);
  *(v35 + 64) = v38;
  v39 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v41 = [v39 initWithArray:isa];

  *&aBlock = 0;
  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  if (!aBlock)
  {
    goto LABEL_39;
  }

  v42 = [v26 exportedInterface];
  if (v42)
  {
    v43 = v42;
    v44 = Set._bridgeToObjectiveC()().super.isa;

    [v43 setClasses:v44 forSelector:"updateViewWithName:viewUpdateSourceRequests:reply:" argumentIndex:1 ofReply:0];
  }

  else
  {
  }

  v45 = swift_allocObject();
  *(v45 + 16) = v68;
  *(v45 + 56) = v37;
  *(v45 + 32) = v36;
  v46 = sub_100002370(0, &qword_100018A70, GDViewUpdateNameAndRequests_ptr);
  *(v45 + 88) = sub_10000A234(&qword_100018A78, &qword_10000F5C0);
  *(v45 + 64) = v46;
  v47 = objc_allocWithZone(NSSet);
  v48 = Array._bridgeToObjectiveC()().super.isa;

  v49 = [v47 initWithArray:v48];

  *&aBlock = 0;
  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  if (aBlock)
  {

    v50 = [v26 exportedInterface];
    if (v50)
    {
      v51 = v50;
      v52 = Set._bridgeToObjectiveC()().super.isa;

      [v51 setClasses:v52 forSelector:"updateGroupWithName:namesAndRequests:reply:" argumentIndex:1 ofReply:0];
    }

    else
    {
    }

    v53 = [objc_allocWithZone(type metadata accessor for IntelligencePlatformComputeService()) init];
    [v26 setExportedObject:v53];
    v54 = swift_allocObject();
    *(v54 + 16) = v53;
    v71 = sub_10000DFE4;
    v72 = v54;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v70 = sub_10000C008;
    *(&v70 + 1) = &unk_100014A58;
    v55 = _Block_copy(&aBlock);
    v56 = v53;

    [v26 setInvalidationHandler:v55];
    _Block_release(v55);
    sub_100002370(0, &qword_100018A80, OS_dispatch_source_ptr);
    static OS_dispatch_source.makeSignalSource(signal:queue:)();
    swift_getObjectType();
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    v71 = sub_10000E004;
    v72 = v57;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v70 = sub_10000C008;
    *(&v70 + 1) = &unk_100014AA8;
    v58 = _Block_copy(&aBlock);
    v20 = v56;
    v59 = v62;
    static DispatchQoS.unspecified.getter();
    *&v74 = &_swiftEmptyArrayStorage;
    sub_10000E00C();
    sub_10000A234(&qword_100018A90, &qword_10000F5C8);
    sub_10000E064();
    v60 = v64;
    v61 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v58);
    (*(v66 + 8))(v60, v61);
    (*(v63 + 8))(v59, v65);

    OS_dispatch_source.resume()();
    [v26 resume];
    swift_unknownObjectRelease();
    v24 = 1;
    goto LABEL_37;
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_10000DF98()
{
  result = qword_100018A38;
  if (!qword_100018A38)
  {
    type metadata accessor for Options();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018A38);
  }

  return result;
}

uint64_t sub_10000DFEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000E00C()
{
  result = qword_100018A88;
  if (!qword_100018A88)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018A88);
  }

  return result;
}

unint64_t sub_10000E064()
{
  result = qword_100018A98;
  if (!qword_100018A98)
  {
    sub_10000E0C8(&qword_100018A90, &qword_10000F5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018A98);
  }

  return result;
}

uint64_t sub_10000E0C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000E110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000026DC;

  return sub_10000C36C(a1, v4, v5, v6);
}

uint64_t sub_10000E1C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000A234(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E224(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004134;

  return sub_100001A64(a1, v4);
}

uint64_t sub_10000E2DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000026DC;

  return sub_100001A64(a1, v4);
}

uint64_t sub_10000E394()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E3D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100004134;

  return sub_10000B70C(a1, v4, v5, v6);
}

uint64_t sub_10000E488(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A234(&qword_100018A30, &qword_10000F440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static BMDaemonLibraryLoader.loadRootLibrary()()
{
  type metadata accessor for Library();
  sub_100004DF4();

  return static UnifiedLibrary.add(library:)();
}

id BMDaemonLibraryLoader.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BMDaemonLibraryLoader();
  return objc_msgSendSuper2(&v2, "init");
}

id BMDaemonLibraryLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BMDaemonLibraryLoader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000E654()
{
  v0 = type metadata accessor for Logger();
  sub_100004644(v0, qword_100018BA0);
  sub_100002A34(v0, qword_100018BA0);
  return Logger.init(subsystem:category:)();
}

int64_t sub_10000E6CC@<X0>(uint64_t *__return_ptr a1@<X8>, char *a2@<X0>, int a3@<W2>)
{
  result = confstr(a3, a2, 0x400uLL);
  if (result >= 1 && a2)
  {
    result = String.init(cString:)();
    *a1 = result;
    a1[1] = v6;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t String.realpath.getter(uint64_t a1, uint64_t a2)
{
  v2 = String.utf8CString.getter();
  v3 = realpath_DARWIN_EXTSN((v2 + 32), 0);

  if (!v3)
  {
    return 0;
  }

  v4 = String.init(cString:)();

  return v4;
}