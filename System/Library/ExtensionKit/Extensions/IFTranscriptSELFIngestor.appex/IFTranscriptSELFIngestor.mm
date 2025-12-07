uint64_t sub_100001190()
{
  v0 = sub_1000033A4();
  sub_100003240(v0, qword_100008048);
  sub_1000030FC(v0, qword_100008048);
  return sub_100003394();
}

uint64_t sub_10000120C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000012B4;

  return sub_100001C40(a1);
}

uint64_t sub_1000012B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000013A8(uint64_t a1)
{
  v2 = sub_100001510();

  return IngestionExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001454();
  sub_1000032E4();
  return 0;
}

unint64_t sub_100001454()
{
  result = qword_100008008;
  if (!qword_100008008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008008);
  }

  return result;
}

unint64_t sub_100001510()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

void *sub_100001564(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000030B4(&qword_100008030, &qword_1000037B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000030B4(&qword_100008038, &qword_1000037B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100001698(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001764(v11, 0, 0, 1, a1, a2);
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
    sub_1000031E0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003194(v11);
  return v7;
}

unint64_t sub_100001764(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001870(a5, a6);
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
    result = sub_100003404();
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

char *sub_100001870(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000018BC(a1, a2);
  sub_1000019EC(&off_1000042E0);
  return v3;
}

char *sub_1000018BC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100001AD8(v5, 0);
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

  result = sub_100003404();
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
        v10 = sub_1000033C4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100001AD8(v10, 0);
        result = sub_1000033F4();
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

uint64_t sub_1000019EC(uint64_t result)
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

  result = sub_100001B4C(result, v11, 1, v3);
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

void *sub_100001AD8(uint64_t a1, uint64_t a2)
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

  sub_1000030B4(&qword_100008028, &qword_1000037A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100001B4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000030B4(&qword_100008028, &qword_1000037A8);
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

uint64_t sub_100001C40(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100003374();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000030B4(&qword_100008018, &qword_100003798);
  v1[6] = swift_task_alloc();
  v3 = sub_100003344();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100001DA0, 0, 0);
}

uint64_t sub_100001DA0()
{
  sub_1000032D4();
  swift_allocObject();
  v0[11] = sub_1000032C4();
  if (qword_100008040 != -1)
  {
    swift_once();
  }

  v1 = sub_1000033A4();
  v0[12] = sub_1000030FC(v1, qword_100008048);
  v2 = sub_100003384();
  v3 = sub_1000033D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Begin ingesting", v4, 2u);
  }

  sub_100003314();

  v0[13] = sub_100003304();
  v7 = (&async function pointer to dispatch thunk of ObjCSELFMapper.loadBiomeEvent() + async function pointer to dispatch thunk of ObjCSELFMapper.loadBiomeEvent());
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_100001F64;

  return v7();
}

uint64_t sub_100001F64(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 120) = a1;

  v5 = swift_task_alloc();
  *(v3 + 128) = v5;
  *v5 = v4;
  v5[1] = sub_1000020BC;

  return IFTranscriptSELFMapper.adaptToSELF(events:)(a1);
}

uint64_t sub_1000020BC(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1000021DC, 0, 0);
}

uint64_t sub_1000021DC()
{
  v42 = v0;

  v1 = sub_100003384();
  v2 = sub_1000033D4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[17];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4[2];

    _os_log_impl(&_mh_execute_header, v1, v2, "SELF message count: %ld", v5, 0xCu);
  }

  else
  {
  }

  v7 = v0[17];
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v38 = v0[8];
    v39 = (v38 + 8);
    v34 = v0[17];
    v33 = *(v7 + 16);
    while (1)
    {
      v10 = *(v7 + 16);
      if (v9 >= v10)
      {
        break;
      }

      v11 = *(v38 + 16);
      v11(v0[10], v0[17] + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v9, v0[7]);
      sub_100003324();
      v12 = sub_100003334();
      sub_1000032A4();
      v0[18] = 0;
      v14 = v0[9];
      v13 = v0[10];
      v15 = v0[7];
      sub_100003134(v0[6], &qword_100008018, &qword_100003798);

      v11(v14, v13, v15);
      v4 = sub_100003384();
      v16 = sub_1000033D4();
      v17 = os_log_type_enabled(v4, v16);
      v1 = v0[9];
      v18 = v0[10];
      v19 = v0[7];
      if (v17)
      {
        v20 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v41 = v37;
        *v20 = 136315138;
        v21 = sub_100003334();
        v35 = v16;
        v22 = [v21 qualifiedMessageName];

        v23 = sub_1000033B4();
        v36 = v18;
        v25 = v24;

        v2 = v38 + 8;
        v26 = *v39;
        (*v39)(v1, v19);
        v27 = v23;
        v7 = v34;
        v28 = sub_100001698(v27, v25, &v41);
        v8 = v33;

        *(v20 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v4, v35, "appended %s to SELF staging pool", v20, 0xCu);
        v1 = v37;
        sub_100003194(v37);

        v26(v36, v19);
      }

      else
      {

        v4 = (v38 + 8);
        v2 = *v39;
        (*v39)(v1, v19);
        (v2)(v18, v19);
      }

      if (v8 == ++v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    v32 = sub_100001564((v10 > 1), v1, 1, v6);
    v0[23] = v32;
    v32[2] = v1;
    v32[v2 + 4] = v4;
    v40 = (&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + async function pointer to dispatch thunk of OLEStreamTelemetry.emit());
    v29 = swift_task_alloc();
    v0[24] = v29;
    *v29 = v0;
    v30 = sub_100002C38;
  }

  else
  {
LABEL_11:

    v40 = (&async function pointer to dispatch thunk of OLEStreamTelemetry.emit() + async function pointer to dispatch thunk of OLEStreamTelemetry.emit());
    v29 = swift_task_alloc();
    v0[19] = v29;
    *v29 = v0;
    v30 = sub_1000027B0;
  }

  v29[1] = v30;

  return v40();
}

uint64_t sub_1000027B0()
{

  return _swift_task_switch(sub_1000028AC, 0, 0);
}

uint64_t sub_1000028AC()
{

  v0[20] = &_swiftEmptyArrayStorage;
  v1 = sub_100003384();
  v2 = sub_1000033D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "IF RequestLinks: begin ingesting", v3, 2u);
  }

  sub_100003354();
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_1000029F8;
  v5 = v0[2];

  return IFRequestTelemetryRequestLinkMapper.ingest(dataPool:)(v5);
}

uint64_t sub_1000029F8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100002E7C;
  }

  else
  {
    v2 = sub_100002B0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002B0C()
{
  v1 = v0[20];
  (*(v0[4] + 8))(v0[5], v0[3]);
  if (*(v1 + 16))
  {
    swift_errorRetain();

    swift_willThrow();
  }

  else
  {
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_100002C38()
{

  return _swift_task_switch(sub_100002D34, 0, 0);
}

uint64_t sub_100002D34()
{

  v0[20] = v0[23];
  v1 = sub_100003384();
  v2 = sub_1000033D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "IF RequestLinks: begin ingesting", v3, 2u);
  }

  sub_100003354();
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_1000029F8;
  v5 = v0[2];

  return IFRequestTelemetryRequestLinkMapper.ingest(dataPool:)(v5);
}

uint64_t sub_100002E7C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  swift_errorRetain();
  v1 = sub_100003384();
  v2 = sub_1000033E4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error ingesting IF RequestLinks: %@", v3, 0xCu);
    sub_100003134(v4, &qword_100008020, &qword_1000037A0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0[20];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_100001564(0, v7[2] + 1, 1, v0[20]);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_100001564((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = v0[22];
  v7[2] = v9 + 1;
  v7[v9 + 4] = v10;
  swift_errorRetain();

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000030B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000030FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003134(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000030B4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003194(void *a1)
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

uint64_t sub_1000031E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100003240(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}