uint64_t sub_1000013A8()
{
  v0 = sub_100004E00();
  sub_100001D18(v0, qword_10000C2B0);
  sub_100001CE0(v0, qword_10000C2B0);
  return sub_100004D70();
}

uint64_t sub_1000013F4()
{
  v1 = v0;
  if (qword_10000C1A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100004E00();
  sub_100001CE0(v2, qword_10000C2B0);
  v3 = sub_100004DF0();
  v4 = sub_100004E40();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PnROnDeviceWorker init", v5, 2u);
  }

  return v1;
}

unint64_t *sub_1000014D4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v19 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = *(a1 + 16);
  v9 = &_swiftEmptyArrayStorage;
  if (v8)
  {
    v23 = &_swiftEmptyArrayStorage;
    sub_100002324(0, v8, 0);
    v9 = v23;
    v12 = *(v5 + 16);
    v10 = v5 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v18 = *(v10 + 56);
    do
    {
      v11(v7, v13, v4);
      v23 = v9;
      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        sub_100002324((v14 > 1), v15 + 1, 1);
      }

      v21 = v4;
      v22 = v19;
      v16 = sub_100004948(&v20);
      v11(v16, v7, v4);
      v9 = v23;
      v23[2] = v15 + 1;
      sub_1000049AC(&v20, &v9[5 * v15 + 4]);
      (*(v10 - 8))(v7, v4);
      v13 += v18;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_1000016C8()
{
  objc_allocWithZone(sub_100004B00());
  v1 = sub_100004AE0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10000173C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000017E4;

  return sub_10000423C(a1);
}

uint64_t sub_1000017E4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000018E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000019C4;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000019C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001AB8()
{
  v0 = type metadata accessor for PnROnDeviceWorker();
  v1 = sub_100001CA0(&qword_10000C150, &unk_1000051E0);

  return MLHostExtension.configuration.getter(v0, v1);
}

uint64_t sub_100001B24@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PnROnDeviceWorker();
  v2 = swift_allocObject();
  result = sub_1000013F4();
  *a1 = v2;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for PnROnDeviceWorker();
  sub_100001CA0(&qword_10000C090, &unk_100005220);
  sub_100004AD0();
  return 0;
}

uint64_t sub_100001CA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PnROnDeviceWorker();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001CE0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100001D18(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100001D7C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001E48(v11, 0, 0, 1, a1, a2);
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
    sub_100004A74(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004A28(v11);
  return v7;
}

unint64_t sub_100001E48(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001F54(a5, a6);
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
    result = sub_100004E80();
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

char *sub_100001F54(uint64_t a1, unint64_t a2)
{
  v3 = sub_100001FA0(a1, a2);
  sub_1000020D0(&off_100008528);
  return v3;
}

char *sub_100001FA0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000021BC(v5, 0);
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

  result = sub_100004E80();
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
        v10 = sub_100004E10();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000021BC(v10, 0);
        result = sub_100004E60();
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

uint64_t sub_1000020D0(uint64_t result)
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

  result = sub_100002230(result, v11, 1, v3);
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

void *sub_1000021BC(uint64_t a1, uint64_t a2)
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

  sub_100004890(&unk_10000C190, &qword_1000052B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002230(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004890(&unk_10000C190, &qword_1000052B0);
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

void *sub_100002324(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100002344(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100002344(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004890(&qword_10000C170, &qword_100005290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004890(&qword_10000C178, &qword_100005298);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000248C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100004C70();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_100004890(&qword_10000C180, &qword_1000052A0);
  v1[6] = swift_task_alloc();
  sub_100004890(&qword_10000C188, &qword_1000052A8);
  v1[7] = swift_task_alloc();
  v3 = sub_100004B80();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = sub_100004BB0();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = sub_100004C20();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();
  v6 = sub_100004D60();
  v1[18] = v6;
  v1[19] = *(v6 - 8);
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_100002738, 0, 0);
}

uint64_t sub_100002738()
{
  v25 = v0;
  if (sub_100004E20())
  {
    if (qword_10000C1A0 != -1)
    {
      swift_once();
    }

    v1 = v0[2];
    v2 = sub_100004E00();
    sub_100001CE0(v2, qword_10000C2B0);
    v3 = v1;
    v4 = sub_100004DF0();
    v5 = sub_100004E30();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v6 = 136315394;
      v7 = sub_100004B40();
      v9 = sub_100001D7C(v7, v8, &v24);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2080;
      v10 = sub_100004B50();
      v12 = sub_100001D7C(v10, v11, &v24);

      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "TaskId: %s, TaskName: %s: asked to stop!", v6, 0x16u);
      swift_arrayDestroy();
    }

    v13 = objc_allocWithZone(sub_100004B00());
    v14 = sub_100004AE0();

    v15 = v0[1];

    return v15(v14);
  }

  else
  {
    v18 = v0[16];
    v17 = v0[17];
    v20 = v0[14];
    v19 = v0[15];
    v21 = v0[12];
    v22 = v0[13];
    (*(v18 + 104))(v17, enum case for StreamIdentifier.SELFProcessedStreamIdentifier(_:), v19);
    sub_100004C10();
    (*(v18 + 8))(v17, v19);
    (*(v22 + 104))(v20, enum case for ReaderDomain.PnROnDeviceWorker(_:), v21);
    sub_100004BA0();
    (*(v22 + 8))(v20, v21);
    sub_100004D40();
    v23 = swift_task_alloc();
    v0[21] = v23;
    *v23 = v0;
    v23[1] = sub_100002AC4;

    return SELFProcessedStreamTurnReader.read()();
  }
}

uint64_t sub_100002AC4(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  *(*v1 + 176) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100002C24, 0, 0);
}

uint64_t sub_100002C24()
{
  v74 = v0;
  v2 = v0;
  v3 = v0[22];
  if (!v3)
  {
    if (qword_10000C1A0 != -1)
    {
      swift_once();
    }

    v10 = sub_100004E00();
    sub_100001CE0(v10, qword_10000C2B0);
    v11 = sub_100004DF0();
    v12 = sub_100004E40();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No turn sequence to extract Siri latencies", v13, 2u);
    }

    v14 = objc_allocWithZone(sub_100004B00());
    goto LABEL_38;
  }

  if (qword_10000C1A0 != -1)
  {
    goto LABEL_35;
  }

LABEL_3:
  v4 = sub_100004E00();
  sub_100001CE0(v4, qword_10000C2B0);

  v5 = sub_100004DF0();
  v6 = sub_100004E40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v2[22];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v7 >> 62)
    {
      v9 = sub_100004E90();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v5, v6, "Received the turnSequence, count is %ld", v8, 0xCu);
  }

  else
  {
  }

  v15 = v2[22];
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_37;
    }

    goto LABEL_15;
  }

  v16 = sub_100004E90();
  if (v16)
  {
LABEL_15:
    v17 = 0;
    v18 = v2[22];
    v19 = v2[9];
    v69 = v18 & 0xFFFFFFFFFFFFFF8;
    v70 = v18 & 0xC000000000000001;
    v66 = (v19 + 48);
    v63 = (v19 + 16);
    v64 = (v19 + 32);
    v72 = (v19 + 8);
    v62 = v16;
    v61 = v2;
    v65 = v3;
    do
    {
      if (v70)
      {
        v20 = sub_100004E70();
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          v68 = v1;
          v47 = v2[8];
          v48 = v2[9];
          v50 = v2[6];
          v49 = v2[7];

          sub_1000049C8(v50, &qword_10000C180, &qword_1000052A0);
          (*(v48 + 56))(v49, 1, 1, v47);
LABEL_33:
          v52 = v2[4];
          v51 = v2[5];
          v53 = v2[3];
          sub_1000049C8(v2[7], &qword_10000C188, &qword_1000052A8);
          v54 = enum case for ReliabilityCategory.PnROnDeviceWorkerIssues.doWorkSiriMetricsFailed(_:);
          v55 = sub_100004C50();
          (*(*(v55 - 8) + 104))(v51, v54, v55);
          (*(v52 + 104))(v51, enum case for ReliabilityCategory.pnrOnDeviceWorkerIssues(_:), v53);
          sub_100004DE0();
          (*(v52 + 8))(v51, v53);
          sub_100004D80();
          sub_100004B90();
          sub_100004C40();
          sub_100004BC0();

          v56 = objc_allocWithZone(sub_100004B00());
          v57 = sub_100004AE0();

          goto LABEL_39;
        }
      }

      else
      {
        if (v17 >= *(v69 + 16))
        {
          __break(1u);
LABEL_35:
          swift_once();
          goto LABEL_3;
        }

        v20 = *(v3 + 8 * v17 + 32);
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_30;
        }
      }

      v22 = v2[6];
      v1 = v20;
      sub_100004C90();
      v23 = sub_100004CA0();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v22, 1, v23) == 1)
      {
        goto LABEL_31;
      }

      sub_100004C80();
      v26 = v2[7];
      v25 = v2[8];
      (*(v24 + 8))(v2[6], v23);
      if ((*v66)(v26, 1, v25) == 1)
      {
        v68 = v1;

        goto LABEL_33;
      }

      v28 = v2[10];
      v27 = v2[11];
      v29 = v2[8];
      (*v64)(v27, v2[7], v29);
      (*v63)(v28, v27, v29);
      v30 = sub_100004DF0();
      v31 = sub_100004E40();
      v32 = os_log_type_enabled(v30, v31);
      v33 = v2[10];
      v34 = v2[8];
      v71 = v21;
      if (v32)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v73 = v36;
        *v35 = 136315138;
        v37 = sub_100004B70();
        v38 = v1;
        v39 = v37;
        v67 = v38;
        v41 = v40;
        v42 = *v72;
        (*v72)(v33, v34);
        v43 = sub_100001D7C(v39, v41, &v73);
        v1 = v67;
        v2 = v61;

        *(v35 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v30, v31, "siriTurnGrainRecord is %s", v35, 0xCu);
        sub_100004A28(v36);
      }

      else
      {

        v42 = *v72;
        (*v72)(v33, v34);
      }

      v44 = sub_100004DF0();
      v45 = sub_100004E40();
      v3 = v65;
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "About to do uploadSiriTurnGrainLatency", v46, 2u);
      }

      sub_100004C00();
      swift_allocObject();
      sub_100004BF0();
      sub_100004BE0();
      v42(v2[11], v2[8]);

      ++v17;
    }

    while (v71 != v62);
  }

LABEL_37:

  v58 = objc_allocWithZone(sub_100004B00());
LABEL_38:
  v57 = sub_100004AE0();
LABEL_39:

  v59 = v2[1];

  return v59(v57);
}

uint64_t sub_100003654()
{
  v1 = sub_100004C70();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_100004D90();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  sub_100004890(&qword_10000C160, &qword_100005280);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000037B0, 0, 0);
}

uint64_t sub_1000037B0()
{
  if (qword_10000C1A0 != -1)
  {
    swift_once();
  }

  v1 = sub_100004E00();
  v0[10] = sub_100001CE0(v1, qword_10000C2B0);
  v2 = sub_100004DF0();
  v3 = sub_100004E50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Use platform managed bookmark with unique PnRMetricsWorker domain", v4, 2u);
  }

  sub_100004DD0();
  swift_allocObject();
  sub_100004DC0();
  sub_100004B60();
  v0[11] = sub_100004DB0();

  v5 = sub_100004DF0();
  v6 = sub_100004E50();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "PnROnDeviceWorker retrieving sessionized data for IE metrics", v7, 2u);
  }

  sub_100004890(&qword_10000C168, &qword_100005288);
  v8 = sub_100004DA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v0[12] = v12;
  *(v12 + 16) = xmmword_1000051A0;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, enum case for JoinableStreams.IE_TRANSCRIPT(_:), v8);
  v14(v13 + v10, enum case for JoinableStreams.IE_TELEMETRY(_:), v8);
  v18 = (&async function pointer to dispatch thunk of BiomeSessionBuilder.buildSessionView(streams:) + async function pointer to dispatch thunk of BiomeSessionBuilder.buildSessionView(streams:));
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_100003AC8;
  v16 = v0[9];

  return v18(v16, v12);
}

uint64_t sub_100003AC8()
{

  return _swift_task_switch(sub_100003BE0, 0, 0);
}

uint64_t sub_100003BE0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  sub_1000048D8(v0[9], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000049C8(v0[8], &qword_10000C160, &qword_100005280);
    v4 = sub_100004DF0();
    v5 = sub_100004E40();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No Session objects buildable from Biome", v6, 2u);
    }

    v7 = objc_allocWithZone(sub_100004B00());
    v8 = sub_100004AE0();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[8], v0[5]);
    sub_100004D00();
    swift_allocObject();
    sub_100004CF0();
    v9 = sub_100004CE0();

    v10 = sub_1000014D4(v9, &type metadata accessor for IERequestGrainMetricsRecord, &protocol witness table for IERequestGrainMetricsRecord);

    sub_100004C00();
    swift_allocObject();
    sub_100004BF0();
    v11._rawValue = v10;
    sub_100004BD0(v11);

    sub_100004CD0();
    swift_allocObject();
    sub_100004CC0();
    v12 = sub_100004CB0();

    v13 = sub_1000014D4(v12, &type metadata accessor for IEPlannerGrainMetricsRecord, &protocol witness table for IEPlannerGrainMetricsRecord);

    swift_allocObject();
    sub_100004BF0();
    v14._rawValue = v13;
    sub_100004BD0(v14);

    sub_100004D30();
    swift_allocObject();
    sub_100004D20();
    v15 = sub_100004D10();

    v16 = sub_1000014D4(v15, &type metadata accessor for IEExecutionGrainMetricsRecord, &protocol witness table for IEExecutionGrainMetricsRecord);

    swift_allocObject();
    sub_100004BF0();
    v17._rawValue = v16;
    sub_100004BD0(v17);

    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[5];
    v21 = objc_allocWithZone(sub_100004B00());
    v8 = sub_100004AE0();

    (*(v19 + 8))(v18, v20);
  }

  sub_1000049C8(v0[9], &qword_10000C160, &qword_100005280);

  v22 = v0[1];

  return v22(v8);
}

uint64_t sub_10000425C()
{
  if (qword_10000C1A0 != -1)
  {
    swift_once();
  }

  v1 = sub_100004E00();
  v0[3] = sub_100001CE0(v1, qword_10000C2B0);
  v2 = sub_100004DF0();
  v3 = sub_100004E50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PnROnDeviceWorker doWork start", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1000043C4;
  v6 = v0[2];

  return sub_10000248C(v6);
}

uint64_t sub_1000043C4(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v5;
  v3[1] = sub_100004504;

  return sub_100003654();
}

uint64_t sub_100004504(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100004604, 0, 0);
}

uint64_t sub_100004604()
{
  sub_100004AF0();
  v1 = sub_100004B30();
  if (v1 != sub_100004B30() || (sub_100004AF0(), v2 = sub_100004B30(), v2 != sub_100004B30()))
  {
    sub_100004AF0();
    v3 = sub_100004B30();
    if (v3 != sub_100004B30())
    {
      sub_100004AF0();
      v4 = sub_100004B30();
      if (v4 != sub_100004B30())
      {
        sub_100004AF0();
        v15 = sub_100004B30();
        if (v15 != sub_100004B30())
        {
          sub_100004AF0();
          v16 = sub_100004B30();
          if (v16 != sub_100004B30())
          {
            sub_100004AF0();
            v17 = sub_100004B30();
            if (v17 != sub_100004B30())
            {
              sub_100004AF0();
              sub_100004B30();
              sub_100004B30();
            }
          }
        }
      }
    }
  }

  v5 = objc_allocWithZone(sub_100004B00());
  v6 = sub_100004AE0();
  v7 = sub_100004DF0();
  v8 = sub_100004E50();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "PnROnDeviceWorker doWork end %@", v9, 0xCu);
    sub_1000049C8(v10, &qword_10000C158, &qword_100005278);
  }

  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13(v6);
}

uint64_t sub_100004890(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000048D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004890(&qword_10000C160, &qword_100005280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100004948(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000049AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000049C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004890(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004A28(void *a1)
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

uint64_t sub_100004A74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}