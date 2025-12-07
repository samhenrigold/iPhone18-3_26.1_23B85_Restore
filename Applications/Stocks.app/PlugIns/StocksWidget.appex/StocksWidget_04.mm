void sub_100073340(uint64_t a1)
{
  if (!qword_100117ED0)
  {
    sub_1000733EC(255);
    sub_1000103E8(255);
    sub_100071B28(&qword_100117F00, sub_1000733EC, &protocol conformance descriptor for LazyFilterSequence<A>);
    v1 = sub_1000DC0B0();
    if (!v2)
    {
      atomic_store(v1, &qword_100117ED0);
    }
  }
}

void sub_1000733EC(uint64_t a1)
{
  if (!qword_100117ED8)
  {
    sub_100073480(255);
    sub_100071B28(&qword_100117EF8, sub_100073480, &protocol conformance descriptor for LazyMapSequence<A, B>);
    v1 = sub_1000DC100();
    if (!v2)
    {
      atomic_store(v1, &qword_100117ED8);
    }
  }
}

void sub_100073480(uint64_t a1)
{
  if (!qword_100117EE0)
  {
    sub_10007355C(255);
    sub_100071DE0(255, &qword_100114E18, sub_1000103E8, &type metadata accessor for Optional);
    sub_100071B28(&qword_100117EF0, sub_10007355C, &protocol conformance descriptor for [A]);
    v1 = sub_1000DC0B0();
    if (!v2)
    {
      atomic_store(v1, &qword_100117EE0);
    }
  }
}

uint64_t sub_100073590(uint64_t *a1, uint64_t *a2)
{
  if ((sub_10007310C(*a1, *a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = type metadata accessor for PreparedSparkline(0);
  sub_1000D9090();
  sub_100071B28(&qword_100117F10, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((sub_1000DB8D0() & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_100053DE0(0);
  if ((sub_1000DB8D0() & 1) == 0 || (sub_1000D92B0() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    goto LABEL_9;
  }

  v12 = v4[8];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 8);
  if (v14)
  {
    if (!v16)
    {
LABEL_9:
      v10 = 0;
      return v10 & 1;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      goto LABEL_9;
    }
  }

  v17 = v4[9];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18)
  {
    v20 = 1853321060;
  }

  else
  {
    v20 = 28789;
  }

  if (v18)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE200000000000000;
  }

  if (v19)
  {
    v22 = 1853321060;
  }

  else
  {
    v22 = 28789;
  }

  if (v19)
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE200000000000000;
  }

  if (v20 == v22 && v21 == v23)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000DC360();
  }

  return v10 & 1;
}

unint64_t sub_10007375C()
{
  result = qword_100117F20;
  if (!qword_100117F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117F20);
  }

  return result;
}

uint64_t sub_1000737E4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100073888()
{
  result = qword_100117F50;
  if (!qword_100117F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117F50);
  }

  return result;
}

uint64_t sub_1000738DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000739AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10006D868();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100073A0C()
{
  result = qword_100117F88;
  if (!qword_100117F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117F88);
  }

  return result;
}

unint64_t sub_100073A60()
{
  result = qword_100117F98;
  if (!qword_100117F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117F98);
  }

  return result;
}

void sub_100073AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_100073B40()
{
  result = qword_100117FA8;
  if (!qword_100117FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FA8);
  }

  return result;
}

unint64_t sub_100073B98()
{
  result = qword_100117FB0;
  if (!qword_100117FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FB0);
  }

  return result;
}

unint64_t sub_100073BF0()
{
  result = qword_100117FB8;
  if (!qword_100117FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FB8);
  }

  return result;
}

unint64_t sub_100073C48()
{
  result = qword_100117FC0;
  if (!qword_100117FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FC0);
  }

  return result;
}

unint64_t sub_100073CA0()
{
  result = qword_100117FC8;
  if (!qword_100117FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FC8);
  }

  return result;
}

unint64_t sub_100073CF8()
{
  result = qword_100117FD0;
  if (!qword_100117FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FD0);
  }

  return result;
}

uint64_t sub_100073D4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656972746E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E756F42656D6974 && a2 == 0xEA00000000007364 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D695473697861 && a2 == 0xEC000000656E6F5ALL || (sub_1000DC360() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F426563697270 && a2 == 0xEB0000000073646ELL || (sub_1000DC360() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73756F6976657270 && a2 == 0xED000065736F6C43 || (sub_1000DC360() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646E657274 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100073F5C()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100073FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007BC5C(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_1000DBEF0();
    v5 = 0;
    v22 = *(a1 + 36);
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v21 = *v8;
      v10 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];

      if (v10 >= v11 >> 1)
      {
        sub_10007BC5C((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v10];
      v12[4] = v21;
      v12[5] = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v13 = *(a1 + 64 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 72 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_10007CB04(v4, v22, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_10007CB04(v4, v22, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_10007420C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000742B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000742DC, v2, 0);
}

uint64_t sub_1000742DC()
{
  v32 = v0;
  v1 = v0[4];
  sub_100006C7C((v1 + 112), *(v1 + 136));
  if (sub_1000D9800())
  {
    sub_100006C7C((v1 + 112), *(v1 + 136));
    if (sub_1000D9820())
    {
      sub_100006C7C((v1 + 112), *(v1 + 136));
      v2 = sub_1000D9830();

      v3 = sub_1000DA350();
      v4 = sub_1000DBDD0();

      v5 = os_log_type_enabled(v3, v4);
      if (v2)
      {
        if (v5)
        {
          v7 = v0[2];
          v6 = v0[3];
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v31 = v9;
          *v8 = 136315138;
          *(v8 + 4) = sub_1000848C8(v7, v6, &v31);
          _os_log_impl(&_mh_execute_header, v3, v4, "Using widget-specific config for fetching mandatory headlines for symbol=%s", v8, 0xCu);
          sub_100006D0C(v9);
        }

        v10 = *(v0[4] + 176);
        ObjectType = swift_getObjectType();
        v30 = (*(v10 + 16) + **(v10 + 16));
        v12 = swift_task_alloc();
        v0[5] = v12;
        *v12 = v0;
        v13 = sub_100074848;
      }

      else
      {
        if (v5)
        {
          v25 = v0[2];
          v24 = v0[3];
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v31 = v27;
          *v26 = 136315138;
          *(v26 + 4) = sub_1000848C8(v25, v24, &v31);
          _os_log_impl(&_mh_execute_header, v3, v4, "Using Top Stories-service for fetching mandatory headlines for symbol=%s", v26, 0xCu);
          sub_100006D0C(v27);
        }

        v10 = *(v0[4] + 160);
        ObjectType = swift_getObjectType();
        v30 = (*(v10 + 16) + **(v10 + 16));
        v12 = swift_task_alloc();
        v0[6] = v12;
        *v12 = v0;
        v13 = sub_100074948;
      }

      v12[1] = v13;
      v29 = v0[2];
      v28 = v0[3];

      return v30(v29, v28, ObjectType, v10);
    }

    v14 = sub_1000DA350();
    v17 = sub_1000DBDD0();

    if (os_log_type_enabled(v14, v17))
    {
      v19 = v0[2];
      v18 = v0[3];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000848C8(v19, v18, &v31);
      _os_log_impl(&_mh_execute_header, v14, v17, "Widget news curation is disabled, skipping mandatory headlines fetch for symbol=%s", v20, 0xCu);
      sub_100006D0C(v21);

      goto LABEL_11;
    }
  }

  else
  {
    v14 = sub_1000DA350();
    v15 = sub_1000DBDD0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Widget news curation is disabled, because no Apple News content is being served", v16, 2u);
LABEL_11:
    }
  }

  v22 = v0[1];

  return v22(_swiftEmptyArrayStorage);
}

uint64_t sub_100074848(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100074948(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100074A48(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_100074A68, v1, 0);
}

uint64_t sub_100074A68()
{
  v39 = v0;
  v1 = v0[6];
  sub_100006C7C((v1 + 112), *(v1 + 136));
  if (sub_1000D9800())
  {
    sub_100006C7C((v1 + 112), *(v1 + 136));
    if (sub_1000D9820())
    {
      sub_100006C7C((v1 + 112), *(v1 + 136));
      v2 = sub_1000D9830();

      v3 = sub_1000DA350();
      v4 = sub_1000DBDD0();

      v5 = os_log_type_enabled(v3, v4);
      if (v2)
      {
        if (v5)
        {
          v6 = v0[5];
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v38 = v8;
          *v7 = 136315138;
          v0[4] = v6;
          sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
          sub_10007CA88();
          v9 = sub_1000DB890();
          v11 = sub_1000848C8(v9, v10, &v38);

          *(v7 + 4) = v11;
          _os_log_impl(&_mh_execute_header, v3, v4, "Using Top Stories-service for fetching mandatory headlines for symbols=[%s]", v7, 0xCu);
          sub_100006D0C(v8);
        }

        v12 = *(v0[6] + 176);
        ObjectType = swift_getObjectType();
        v37 = (*(v12 + 24) + **(v12 + 24));
        v14 = swift_task_alloc();
        v0[7] = v14;
        *v14 = v0;
        v15 = sub_1000750F0;
      }

      else
      {
        if (v5)
        {
          v30 = v0[5];
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v38 = v32;
          *v31 = 136315138;
          v0[3] = v30;
          sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
          sub_10007CA88();
          v33 = sub_1000DB890();
          v35 = sub_1000848C8(v33, v34, &v38);

          *(v31 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v3, v4, "Using widget-specific config for fetching mandatory headlines for symbols=[%s]", v31, 0xCu);
          sub_100006D0C(v32);
        }

        v12 = *(v0[6] + 160);
        ObjectType = swift_getObjectType();
        v37 = (*(v12 + 24) + **(v12 + 24));
        v14 = swift_task_alloc();
        v0[8] = v14;
        *v14 = v0;
        v15 = sub_1000751F0;
      }

      v14[1] = v15;
      v36 = v0[5];

      return v37(v36, ObjectType, v12);
    }

    v19 = sub_1000DA350();
    v20 = sub_1000DBDD0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[5];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136315138;
      v0[2] = v21;
      sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
      sub_10007CA88();
      v24 = sub_1000DB890();
      v26 = sub_1000848C8(v24, v25, &v38);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Widget news curation is disabled, skipping mandatory headlines fetch for symbols=[%s]", v22, 0xCu);
      sub_100006D0C(v23);
    }
  }

  else
  {
    v16 = sub_1000DA350();
    v17 = sub_1000DBDD0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Widget news curation is disabled, because no Apple News content is being served", v18, 2u);
    }
  }

  v27 = sub_100033A30(_swiftEmptyArrayStorage);
  v28 = v0[1];

  return v28(v27);
}

uint64_t sub_1000750F0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000751F0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000752F0()
{
  sub_100006D0C((v0 + 112));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12StocksWidget24MandatoryHeadlineService_logger;
  v2 = sub_1000DA370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000753BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001557C;

  return sub_1000742B8(a1, a2);
}

uint64_t sub_100075460(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001557C;

  return sub_100074A48(a1);
}

uint64_t sub_1000754F4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1000D9C30();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000755C4, v2, 0);
}

uint64_t sub_1000755C4()
{
  v10 = v0;
  v0[10] = OBJC_IVAR____TtC12StocksWidget34TopStoriesMandatoryHeadlineService_logger;

  v1 = sub_1000DA350();
  v2 = sub_1000DBDD0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000848C8(v4, v3, &v9);
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching top stories for symbol=%s", v5, 0xCu);
    sub_100006D0C(v6);
  }

  sub_100006C7C((v0[5] + 112), *(v0[5] + 136));
  v0[11] = sub_1000D97B0();
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_10007577C;

  return Promise.resolveAsync()(v0 + 2);
}

uint64_t sub_10007577C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_100075D34;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1000758A4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000758A4()
{
  v42 = v0;
  v1 = v0[2];

  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v41[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000848C8(v5, v4, v41);
    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully fetched top stories for symbol=%s, count=%ld", v6, 0x16u);
    sub_100006D0C(v7);
  }

  else
  {
  }

  result = v1;
  v40 = *(v1 + 16);
  if (v40)
  {
    v9 = 0;
    v10 = v0[7];
    v38 = v10;
    v36 = (v10 + 8);
    v37 = (v10 + 32);
    v11 = v0[13];
    v12 = _swiftEmptyArrayStorage;
    v39 = result;
    while (1)
    {
      if (v9 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v13 = v0[9];
      v14 = v0[5];
      v16 = v0[3];
      v15 = v0[4];
      v17 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v18 = *(v38 + 72);
      (*(v38 + 16))(v13, result + v17 + v18 * v9, v0[6]);
      v19 = sub_100075DAC(v13, v14, v16, v15);
      v20 = v0[9];
      if (v11)
      {
        break;
      }

      if (v19)
      {
        v21 = *v37;
        (*v37)(v0[8], v0[9], v0[6]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41[0] = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10007BC9C(0, *(v12 + 2) + 1, 1);
          v12 = v41[0];
        }

        v24 = *(v12 + 2);
        v23 = *(v12 + 3);
        if (v24 >= v23 >> 1)
        {
          sub_10007BC9C((v23 > 1), v24 + 1, 1);
          v12 = v41[0];
        }

        v25 = v0[8];
        v26 = v0[6];
        *(v12 + 2) = v24 + 1;
        v21(&v12[v17 + v24 * v18], v25, v26);
      }

      else
      {
        (*v36)(v0[9], v0[6]);
      }

      v11 = 0;
      ++v9;
      result = v39;
      if (v40 == v9)
      {
        goto LABEL_17;
      }
    }

    v35 = v0[6];

    (*v36)(v20, v35);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_17:

    v27 = sub_1000DA350();
    v28 = sub_1000DBDD0();

    if (os_log_type_enabled(v27, v28))
    {
      v30 = v0[3];
      v29 = v0[4];
      v31 = swift_slowAlloc();
      v32 = v12;
      v33 = swift_slowAlloc();
      v41[0] = v33;
      *v31 = 134218242;
      *(v31 + 4) = *(v32 + 2);

      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_1000848C8(v30, v29, v41);
      _os_log_impl(&_mh_execute_header, v27, v28, "Filtered top stories down to relevant ones for symbol, count=%ld, symbol=%s", v31, 0x16u);
      sub_100006D0C(v33);
      v12 = v32;
    }

    else
    {
    }

    v34 = v0[1];

    return v34(v12);
  }
}

uint64_t sub_100075D34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100075DAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v76 = a3;
  v81 = a2;
  v80 = sub_1000D9600();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v79 = &v65[-v8];
  v9 = sub_1000D9620();
  v72 = *(v9 - 8);
  v73 = v9;
  __chkstk_darwin(v9);
  *&v70 = &v65[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v68 = &v65[-v12];
  v13 = sub_1000D9C30();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v65[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v17);
  v20 = &v65[-v19];
  v21 = OBJC_IVAR____TtC12StocksWidget34TopStoriesMandatoryHeadlineService_logger;
  v22 = *(v14 + 16);
  v22(&v65[-v19], a1, v13, v18);
  v69 = v16;
  v71 = a1;
  (v22)(v16, a1, v13);

  v74 = v21;
  v23 = sub_1000DA350();
  v24 = sub_1000DBDA0();

  v25 = os_log_type_enabled(v23, v24);
  v77 = a4;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v82 = v67;
    *v26 = 136315650;
    v66 = v24;
    v27 = sub_1000D9C00();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 7104878;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0xE300000000000000;
    }

    v31 = *(v14 + 8);
    v31(v20, v13);
    v32 = sub_1000848C8(v29, v30, &v82);
    a4 = v77;

    *(v26 + 4) = v32;
    *(v26 + 12) = 2048;
    v33 = v69;
    sub_1000D9BD0();
    swift_getObjectType();
    v34 = v68;
    sub_1000DBE10();
    swift_unknownObjectRelease();
    v35 = sub_1000D9610();
    (*(v72 + 8))(v34, v73);
    v36 = *(v35 + 16);

    v31(v33, v13);
    *(v26 + 14) = v36;
    *(v26 + 22) = 2080;
    *(v26 + 24) = sub_1000848C8(v76, a4, &v82);
    _os_log_impl(&_mh_execute_header, v23, v66, "Checking relevance of headline to symbol, headline=%s, entityMetadataCount=%ld, symbol=%s", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v37 = *(v14 + 8);
    v37(v69, v13);

    v37(v20, v13);
  }

  v39 = v72;
  v38 = v73;
  sub_1000D9BD0();
  swift_getObjectType();
  v40 = v70;
  sub_1000DBE10();
  swift_unknownObjectRelease();
  v41 = sub_1000D9610();
  result = (*(v39 + 8))(v40, v38);
  v45 = v79;
  v44 = v80;
  v73 = *(v41 + 16);
  if (v73)
  {
    v46 = 0;
    v71 = v78 + 16;
    v47 = (v78 + 8);
    *&v43 = 136315394;
    v70 = v43;
    v72 = v41;
    while (v46 < *(v41 + 16))
    {
      v48 = *(v78 + 16);
      v48(v45, v41 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v46, v44);
      v49 = v75;
      v48(v75, v45, v44);

      v50 = sub_1000DA350();
      v51 = sub_1000DBDA0();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v52 = v70;
        v53 = sub_1000D95F0();
        if (v54)
        {
          v55 = v53;
        }

        else
        {
          v55 = 7104878;
        }

        v56 = v49;
        if (v54)
        {
          v57 = v54;
        }

        else
        {
          v57 = 0xE300000000000000;
        }

        v58 = *v47;
        (*v47)(v56, v80);
        v59 = sub_1000848C8(v55, v57, &v82);

        *(v52 + 4) = v59;
        *(v52 + 12) = 2080;
        v60 = v76;
        *(v52 + 14) = sub_1000848C8(v76, v77, &v82);
        _os_log_impl(&_mh_execute_header, v50, v51, "Checking relevance of entity metadata to symbol, metadataSymbol=%s, symbol=%s", v52, 0x16u);
        swift_arrayDestroy();
        a4 = v77;

        v44 = v80;
      }

      else
      {

        v58 = *v47;
        (*v47)(v49, v44);
        v60 = v76;
      }

      v45 = v79;
      v61 = sub_1000D95F0();
      v41 = v72;
      if (v62)
      {
        if (v61 == v60 && v62 == a4)
        {

          v58(v45, v44);
LABEL_31:
          v64 = 1;
          goto LABEL_32;
        }

        v63 = sub_1000DC360();

        result = (v58)(v45, v44);
        if (v63)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = (v58)(v45, v44);
      }

      if (v73 == ++v46)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    v64 = 0;
LABEL_32:

    return v64;
  }

  return result;
}

uint64_t sub_100076530(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1000D9C30();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000765F0, v1, 0);
}

uint64_t sub_1000765F0()
{
  v12 = v0;
  v0[9] = OBJC_IVAR____TtC12StocksWidget34TopStoriesMandatoryHeadlineService_logger;

  v1 = sub_1000DA350();
  v2 = sub_1000DBDD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[3] = v3;
    sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    sub_10007CA88();
    v6 = sub_1000DB890();
    v8 = sub_1000848C8(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching top stories for symbols=[%s]", v4, 0xCu);
    sub_100006D0C(v5);
  }

  sub_100006C7C((v0[5] + 112), *(v0[5] + 136));
  v0[10] = sub_1000D97B0();
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_100076800;

  return Promise.resolveAsync()(v0 + 2);
}

uint64_t sub_100076800()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_100076BE4;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_100076928;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100076928()
{
  v27 = v0;
  v1 = v0[2];

  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully fetched top stories, count=%ld", v4, 0xCu);
  }

  else
  {
  }

  v5 = &_swiftEmptyDictionarySingleton;
  v25 = *(v1 + 16);
  v26[0] = &_swiftEmptyDictionarySingleton;
  if (!v25)
  {
    goto LABEL_14;
  }

  v6 = v0[7];
  v8 = *(v6 + 16);
  v6 += 16;
  v7 = v8;
  v9 = (v6 - 8);
  v10 = v0[12];
  v11 = v0[8];
  v13 = v0[4];
  v12 = v0[5];
  v14 = (*(v6 + 64) + 32) & ~*(v6 + 64);
  v23 = *(v6 + 56);
  v8(v11, v1 + v14, v0[6]);
  sub_100076C54(v26, v11, v13, v12);
  if (v10)
  {
    v15 = v0[8];
    v16 = v0[6];

    (*v9)(v15, v16);

    return;
  }

  v24 = *v9;
  (*v9)(v0[8], v0[6]);
  if (v25 == 1)
  {
LABEL_13:
    v5 = v26[0];
LABEL_14:

    v22 = v0[1];

    v22(v5);
    return;
  }

  v17 = v1 + v23 + v14;
  v18 = 1;
  while (v18 < *(v1 + 16))
  {
    v19 = v0[8];
    v20 = v0[5];
    v21 = v0[4];
    v7(v19, v17, v0[6]);
    sub_100076C54(v26, v19, v21, v20);
    ++v18;
    v24(v0[8], v0[6]);
    v17 += v23;
    if (v25 == v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_100076BE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100076C54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v68 = a1;
  v73 = a3;
  v74 = sub_1000D9C30();
  v5 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = &v60 - v8;
  v83 = sub_1000D9600();
  v9 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000D9620();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a2;
  sub_1000D9BD0();
  swift_getObjectType();
  sub_1000DBE10();
  swift_unknownObjectRelease();
  v15 = sub_1000D9610();
  (*(v12 + 8))(v14, v11);
  v81 = *(v15 + 16);
  if (!v81)
  {
    v75 = 0;
LABEL_29:

    return sub_10007CDBC(v75, 0);
  }

  v75 = 0;
  v17 = 0;
  v79 = v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v80 = v9;
  v77 = v9 + 8;
  v78 = v9 + 16;
  v70 = (v5 + 16);
  v65 = (v5 + 8);
  v66 = OBJC_IVAR____TtC12StocksWidget34TopStoriesMandatoryHeadlineService_logger;
  v63 = v5 + 32;
  *&v16 = 136315394;
  v60 = v16;
  v18 = v74;
  v19 = v69;
  v64 = v5;
  v76 = v15;
  while (v17 < *(v15 + 16))
  {
    v20 = v80;
    v21 = v82;
    v22 = v83;
    (*(v80 + 16))(v82, v79 + *(v80 + 72) * v17, v83);
    v23 = sub_1000D95F0();
    v25 = v24;
    v26 = (*(v20 + 8))(v21, v22);
    if (v25)
    {
      v84[0] = v23;
      v84[1] = v25;
      __chkstk_darwin(v26);
      *(&v60 - 2) = v84;
      v27 = v85;
      v28 = sub_10007420C(sub_10007CE78, (&v60 - 2), v73);
      v85 = v27;
      if (v28)
      {
        v29 = *v70;
        (*v70)(v19, v72, v18);

        v30 = sub_1000DA350();
        v31 = sub_1000DBDD0();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = v19;
          v61 = swift_slowAlloc();
          v84[0] = v61;
          *v32 = v60;
          v34 = sub_1000D9BE0();
          v62 = v29;
          v36 = v35;
          (*v65)(v33, v74);
          v37 = sub_1000848C8(v34, v36, v84);
          v29 = v62;

          *(v32 + 4) = v37;
          *(v32 + 12) = 2080;
          *(v32 + 14) = sub_1000848C8(v23, v25, v84);
          _os_log_impl(&_mh_execute_header, v30, v31, "Found headline relevant for symbol, headlineID=%s, symbol=%s", v32, 0x16u);
          swift_arrayDestroy();

          v18 = v74;
        }

        else
        {

          (*v65)(v19, v18);
        }

        v38 = v68;
        v29(v71, v72, v18);
        sub_10007CDBC(v75, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84[0] = *v38;
        v40 = v84[0];
        v42 = sub_100033210(v23, v25);
        v43 = v40[2];
        v44 = (v41 & 1) == 0;
        v45 = v43 + v44;
        if (__OFADD__(v43, v44))
        {
          goto LABEL_31;
        }

        v46 = v41;
        if (v40[3] >= v45)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            *v38 = v40;
            if ((v41 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          else
          {
            sub_10007C5C0(sub_10007CB10);
            v40 = v84[0];
            *v38 = v84[0];
            if ((v46 & 1) == 0)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          sub_10007C320(v45, isUniquelyReferenced_nonNull_native, sub_10007CB10);
          v40 = v84[0];
          v47 = sub_100033210(v23, v25);
          if ((v46 & 1) != (v48 & 1))
          {
            goto LABEL_33;
          }

          v42 = v47;
          *v38 = v40;
          if ((v46 & 1) == 0)
          {
LABEL_16:
            v40[(v42 >> 6) + 8] |= 1 << v42;
            v49 = (v40[6] + 16 * v42);
            *v49 = v23;
            v49[1] = v25;
            *(v40[7] + 8 * v42) = _swiftEmptyArrayStorage;
            v50 = v40[2];
            v51 = __OFADD__(v50, 1);
            v52 = v50 + 1;
            if (v51)
            {
              goto LABEL_32;
            }

            v40[2] = v52;
            goto LABEL_21;
          }
        }

LABEL_21:
        v53 = v40[7];
        v54 = *(v53 + 8 * v42);
        v55 = swift_isUniquelyReferenced_nonNull_native();
        *(v53 + 8 * v42) = v54;
        v56 = v64;
        if ((v55 & 1) == 0)
        {
          v54 = sub_10007B8FC(0, v54[2] + 1, 1, v54, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
          *(v53 + 8 * v42) = v54;
        }

        v58 = v54[2];
        v57 = v54[3];
        if (v58 >= v57 >> 1)
        {
          v54 = sub_10007B8FC((v57 > 1), v58 + 1, 1, v54, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
          *(v53 + 8 * v42) = v54;
        }

        v15 = v76;
        v54[2] = v58 + 1;
        v18 = v74;
        (*(v56 + 32))(v54 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v58, v71, v74);
        v75 = sub_100077428;
        v19 = v69;
        goto LABEL_5;
      }
    }

    v15 = v76;
LABEL_5:
    if (v81 == ++v17)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1000DC3A0();
  __break(1u);
  return result;
}

uint64_t sub_100077438()
{
  sub_100006D0C((v0 + 112));
  v1 = OBJC_IVAR____TtC12StocksWidget34TopStoriesMandatoryHeadlineService_logger;
  v2 = sub_1000DA370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000774E0(uint64_t a1)
{
  result = sub_1000DA370();
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

uint64_t sub_100077584(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001557C;

  return sub_1000754F4(a1, a2);
}

uint64_t sub_100077628(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001557C;

  return sub_100076530(a1);
}

uint64_t sub_1000776BC(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  sub_10007CBA8(0, &qword_100114E38, &type metadata accessor for Headline, &type metadata accessor for Optional);
  v3[17] = swift_task_alloc();
  v4 = sub_1000D9C30();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v5 = sub_1000D9490();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_10007785C, v2, 0);
}

uint64_t sub_10007785C()
{
  v10 = v0;
  v0[27] = OBJC_IVAR____TtC12StocksWidget36WidgetConfigMandatoryHeadlineService_logger;

  v1 = sub_1000DA350();
  v2 = sub_1000DBDD0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[14];
    v3 = v0[15];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000848C8(v4, v3, &v9);
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching widget config record to determine mandatory headlines for symbol=%s", v5, 0xCu);
    sub_100006D0C(v6);
  }

  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_1000779E4;

  return sub_10006C22C();
}

uint64_t sub_1000779E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[29] = a2;
  v5[30] = a3;

  if (v3)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v5[16];

    return _swift_task_switch(sub_100077B6C, v8, 0);
  }
}

uint64_t sub_100077B6C()
{
  v1 = v0[15];
  v2 = v0[14];
  sub_100006C7C((v0[16] + 168), *(v0[16] + 192));
  sub_10007CE24(0, &qword_100115350, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000DDD30;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v0[31] = sub_1000D9760();

  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_100077CA8;

  return Promise.resolveAsync()(v0 + 11);
}

uint64_t sub_100077CA8()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);

    v4 = sub_100078E90;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 128);

    v4 = sub_100077E08;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100077E08()
{
  v73 = v0;
  v1 = v0;
  v2 = v0[11];
  if (*(v2 + 16) && (v3 = sub_100033210(v0[14], v0[15]), v4 = v0[30], (v5 & 1) != 0))
  {
    v66 = v0 + 7;
    v69 = *(*(v2 + 56) + 8 * v3);

    v6 = v4 + 64;
    v7 = -1;
    v8 = -1 << *(v4 + 32);
    if (-v8 < 64)
    {
      v7 = ~(-1 << -v8);
    }

    v9 = v7 & *(v4 + 64);
    v10 = (63 - v8) >> 6;
    v11 = swift_bridgeObjectRetain_n();
    v12 = 0;
    v68 = v0;
    if (!v9)
    {
LABEL_7:
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_15;
        }

        v9 = *(v6 + 8 * v13);
        ++v12;
        if (v9)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return Promise.resolveAsync()(v11);
    }

    while (1)
    {
      v13 = v12;
LABEL_10:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = v4;
      v16 = (*(v4 + 48) + 16 * v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(v4 + 56) + 8 * v14);
      v1[34] = v19;
      v1[7] = v17;
      v1[8] = v18;
      v20 = swift_task_alloc();
      *(v20 + 16) = v66;

      v21 = sub_10007420C(sub_10007CE78, v20, v69);

      if (v21)
      {
        break;
      }

      v9 &= v9 - 1;
      v12 = v13;
      v4 = v15;
      v1 = v68;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v1 = v68;

    swift_bridgeObjectRelease_n();

    v30 = v19;
    if (*(v19 + 16))
    {

      v31 = sub_1000DA350();
      v32 = sub_1000DBDD0();

      if (os_log_type_enabled(v31, v32))
      {
        v34 = v68[14];
        v33 = v68[15];
        v35 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v35 = 136315394;
        *(v35 + 4) = sub_1000848C8(v34, v33, &v71);
        *(v35 + 12) = 2080;
        v36 = *(v30 + 16);
        v37 = _swiftEmptyArrayStorage;
        if (v36)
        {
          v64 = v35;
          v65 = v32;
          v67 = v31;
          v72 = _swiftEmptyArrayStorage;
          sub_10007BC5C(0, v36, 0);
          v37 = v72;
          v38 = v72[2];
          v39 = 2 * v38;
          v70 = v30;
          v40 = (v30 + 40);
          do
          {
            v41 = *(v40 - 1);
            v42 = *v40;
            v72 = v37;
            v43 = v38 + 1;
            v44 = v37[3];

            if (v38 >= v44 >> 1)
            {
              sub_10007BC5C((v44 > 1), v43, 1);
              v37 = v72;
            }

            v37[2] = v43;
            v45 = &v37[v39];
            v45[4] = v41;
            v45[5] = v42;
            v39 += 2;
            v40 += 4;
            ++v38;
            --v36;
          }

          while (v36);
          v30 = v70;
          v31 = v67;
          v32 = v65;
          v35 = v64;
        }

        v68[13] = v37;
        sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
        sub_10007CA88();
        v46 = sub_1000DB890();
        v48 = v47;
        v1 = v68;

        v49 = sub_1000848C8(v46, v48, &v71);

        *(v35 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v31, v32, "Fetching mandatory headlines for symbol=%s headlineIDs=[%s]", v35, 0x16u);
        swift_arrayDestroy();
      }

      sub_100006E20(v1[16] + 128, (v1 + 2));
      sub_100006C7C(v1 + 2, v1[5]);
      v50 = *(v30 + 16);
      if (v50)
      {
        v72 = _swiftEmptyArrayStorage;
        sub_10007BC5C(0, v50, 0);
        v51 = v72;
        v52 = v72[2];
        v53 = 2 * v52;
        v54 = (v30 + 40);
        do
        {
          v55 = *(v54 - 1);
          v56 = *v54;
          v72 = v51;
          v57 = v52 + 1;
          v58 = v51[3];

          if (v52 >= v58 >> 1)
          {
            sub_10007BC5C((v58 > 1), v57, 1);
            v51 = v72;
          }

          v51[2] = v57;
          v59 = &v51[v53];
          v59[4] = v55;
          v59[5] = v56;
          v53 += 2;
          v54 += 4;
          ++v52;
          --v50;
        }

        while (v50);
      }

      v61 = v68[25];
      v60 = v68[26];
      v62 = v68[24];
      (*(v61 + 104))(v60, enum case for HeadlineOrigin.topStories(_:), v62);
      v68[35] = sub_1000D9850();

      (*(v61 + 8))(v60, v62);
      v63 = swift_task_alloc();
      v68[36] = v63;
      *v63 = v68;
      v63[1] = sub_10007859C;
      v11 = (v68 + 9);

      return Promise.resolveAsync()(v11);
    }
  }

  else
  {
  }

LABEL_15:

  v22 = sub_1000DA350();
  v23 = sub_1000DBDD0();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = v1[14];
    v24 = v1[15];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v72 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1000848C8(v25, v24, &v72);
    _os_log_impl(&_mh_execute_header, v22, v23, "No mandatory headlines found for symbol=%s", v26, 0xCu);
    sub_100006D0C(v27);
  }

  v28 = v1[1];

  return v28(_swiftEmptyArrayStorage);
}

uint64_t sub_10007859C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);

    v4 = sub_100078F38;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 128);

    sub_100006D0C((v2 + 16));
    v4 = sub_1000786E0;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

void sub_1000786E0()
{
  v84 = v0;
  v1 = v0[9];

  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();

  v81 = v1;
  if (os_log_type_enabled(v2, v3))
  {
    v75 = v3;
    v4 = _swiftEmptyArrayStorage;
    v6 = v0[14];
    v5 = v0[15];
    v7 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000848C8(v6, v5, &v82);
    buf = v7;
    *(v7 + 12) = 2080;
    v8 = v1;
    v9 = *(v1 + 16);
    if (v9)
    {
      v70 = v2;
      v10 = v0[19];
      v83 = _swiftEmptyArrayStorage;
      sub_10007BC7C(0, v9, 0);
      v4 = v83;
      v11 = *(v10 + 16);
      v10 += 16;
      v12 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v77 = *(v10 + 56);
      v79 = v11;
      v13 = (v10 - 8);
      do
      {
        v14 = v0[23];
        v15 = v0[18];
        v79(v14, v12, v15);
        v16 = sub_1000D9C00();
        v18 = v17;
        (*v13)(v14, v15);
        v83 = v4;
        v20 = v4[2];
        v19 = v4[3];
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          sub_10007BC7C((v19 > 1), v20 + 1, 1);
          v4 = v83;
        }

        v4[2] = v21;
        v22 = &v4[2 * v20];
        v22[4] = v16;
        v22[5] = v18;
        v12 += v77;
        --v9;
      }

      while (v9);
      v2 = v70;
    }

    else
    {
      v21 = _swiftEmptyArrayStorage[2];
    }

    v23 = 0;
    v24 = _swiftEmptyArrayStorage;
LABEL_11:
    v25 = 16 * v23 + 40;
    while (v21 != v23)
    {
      if (v23 >= v4[2])
      {
        goto LABEL_52;
      }

      v26 = v25 + 16;
      ++v23;
      v27 = *(v4 + v25);
      v25 += 16;
      if (v27)
      {
        v28 = *(v4 + v26 - 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_10007B454(0, *(v24 + 2) + 1, 1, v24);
        }

        v30 = *(v24 + 2);
        v29 = *(v24 + 3);
        if (v30 >= v29 >> 1)
        {
          v24 = sub_10007B454((v29 > 1), v30 + 1, 1, v24);
        }

        *(v24 + 2) = v30 + 1;
        v31 = &v24[16 * v30];
        *(v31 + 4) = v28;
        *(v31 + 5) = v27;
        goto LABEL_11;
      }
    }

    v0[12] = v24;
    sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    sub_10007CA88();
    v32 = sub_1000DB890();
    v34 = v33;

    v35 = sub_1000848C8(v32, v34, &v82);

    *(buf + 14) = v35;
    _os_log_impl(&_mh_execute_header, v2, v75, "Fetched mandatory headlines for symbol=%s headlines=[%s]", buf, 0x16u);
    swift_arrayDestroy();

    v1 = v81;
  }

  else
  {
  }

  v36 = v0[34];
  v71 = *(v36 + 16);
  if (v71)
  {
    v37 = 0;
    v38 = v0[19];
    v80 = (v38 + 8);
    v67 = (v38 + 32);
    v68 = (v38 + 56);
    v69 = v36 + 32;
    v39 = _swiftEmptyArrayStorage;
    while (v37 < *(v0[34] + 16))
    {
      bufa = v37;
      v76 = v39;
      v43 = (v69 + 32 * v37);
      v45 = *v43;
      v44 = v43[1];
      v46 = v43[3];
      v72 = v43[2];
      v47 = *(v1 + 16);

      v78 = v46;

      if (v47)
      {
        v48 = 0;
        while (1)
        {
          if (v48 >= *(v1 + 16))
          {
            __break(1u);
            goto LABEL_51;
          }

          v49 = (*(v38 + 80) + 32) & ~*(v38 + 80);
          v50 = *(v38 + 72);
          (*(v38 + 16))(v0[20], v1 + v49 + v50 * v48, v0[18]);
          if (sub_1000D9BE0() == v45 && v51 == v44)
          {
            break;
          }

          v53 = sub_1000DC360();

          if (v53)
          {
            goto LABEL_37;
          }

          ++v48;
          (*v80)(v0[20], v0[18]);
          v1 = v81;
          if (v47 == v48)
          {
            goto LABEL_23;
          }
        }

LABEL_37:
        v54 = *v67;
        (*v67)(v0[21], v0[20], v0[18]);
        v55 = v0[21];
        v56 = v0[17];
        v66 = v0[18];
        if (v78)
        {
          sub_10007AD5C(v55, v72, v78, v56);

          (*v80)(v55, v66);
        }

        else
        {

          v54(v56, v55, v66);
        }

        v57 = v0[22];
        v59 = v0[17];
        v58 = v0[18];
        (*v68)(v59, 0, 1, v58);
        v54(v57, v59, v58);
        v60 = v54;
        v39 = v76;
        v1 = v81;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_10007B8FC(0, v76[2] + 1, 1, v76, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
        }

        v42 = bufa;
        v62 = v39[2];
        v61 = v39[3];
        if (v62 >= v61 >> 1)
        {
          v39 = sub_10007B8FC((v61 > 1), v62 + 1, 1, v39, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
        }

        v63 = v0[22];
        v64 = v0[18];
        v39[2] = v62 + 1;
        v60(v39 + v49 + v62 * v50, v63, v64);
      }

      else
      {
LABEL_23:
        v41 = v0[17];
        v40 = v0[18];

        (*v68)(v41, 1, 1, v40);
        sub_10007CC0C(v41);
        v42 = bufa;
        v39 = v76;
      }

      v37 = v42 + 1;
      if (v37 == v71)
      {
        goto LABEL_47;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_47:

    v65 = v0[1];

    v65(v39);
  }
}

uint64_t sub_100078E90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100078F38()
{
  sub_100006D0C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100078FE8(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_1000D9490();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000790A8, v1, 0);
}

uint64_t sub_1000790A8()
{
  v12 = v0;
  v0[20] = OBJC_IVAR____TtC12StocksWidget36WidgetConfigMandatoryHeadlineService_logger;

  v1 = sub_1000DA350();
  v2 = sub_1000DBDD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[14] = v3;
    sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    sub_10007CA88();
    v6 = sub_1000DB890();
    v8 = sub_1000848C8(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching widget config record to determine mandatory headlines for symbols=[%s]", v4, 0xCu);
    sub_100006D0C(v5);
  }

  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_100079288;

  return sub_10006C22C();
}

uint64_t sub_100079288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v5[22] = a2;
  v5[23] = a3;

  if (v3)
  {

    v7 = v6[1];

    return v7();
  }

  else
  {
    v9 = v5[16];

    return _swift_task_switch(sub_1000793D8, v9, 0);
  }
}

uint64_t sub_1000793D8()
{
  sub_100006C7C((v0[16] + 168), *(v0[16] + 192));
  v0[24] = sub_1000D9760();
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_1000794AC;

  return Promise.resolveAsync()(v0 + 9);
}

uint64_t sub_1000794AC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);

    v4 = sub_10007A248;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 128);

    v4 = sub_10007960C;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

void sub_10007960C()
{
  v88 = v0;
  v83 = v0[9];

  v1 = sub_1000DA350();
  v2 = sub_1000DBDD0();

  v85 = v0;
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[26];
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v86[0] = v6;
    *v5 = 136315138;
    sub_100073FC8(v4);
    v7 = v3;
    v0[13] = v8;
    sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    sub_10007CA88();
    v9 = sub_1000DB890();
    v11 = v10;

    v12 = sub_1000848C8(v9, v11, v86);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully fetched widget config record for symbolIDs=[%s]", v5, 0xCu);
    sub_100006D0C(v6);
  }

  else
  {

    v7 = v0[26];
  }

  v13 = v0[23];
  v14 = *(v13 + 64);
  v87[0] = &_swiftEmptyDictionarySingleton;
  v15 = -1;
  v16 = -1 << *(v13 + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & v14;
  v18 = (63 - v16) >> 6;
  isUniquelyReferenced_nonNull_native = swift_bridgeObjectRetain_n();
  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_11:
      v22 = v0[16];
      v23 = __clz(__rbit64(v17)) | (v21 << 6);
      v24 = (*(v13 + 48) + 16 * v23);
      v25 = v24[1];
      v26 = *(*(v13 + 56) + 8 * v23);
      v86[0] = *v24;
      v86[1] = v25;
      v86[2] = v26;

      sub_10007A318(v87, v86, v83, v22);
      if (v7)
      {
        break;
      }

      v7 = 0;
      v17 &= v17 - 1;
      v20 = v21;
      if (!v17)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_8:
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v21 >= v18)
      {
        break;
      }

      v17 = *(v13 + 64 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_11;
      }
    }

    swift_bridgeObjectRelease_n();
    v27 = v87[0];
    v0[27] = v87[0];
    v28 = v27 + 64;
    v29 = -1;
    v30 = -1 << *(v27 + 32);
    if (-v30 < 64)
    {
      v29 = ~(-1 << -v30);
    }

    v31 = v29 & *(v27 + 64);
    v32 = (63 - v30) >> 6;
    v84 = v27;
    isUniquelyReferenced_nonNull_native = swift_bridgeObjectRetain_n();
    v33 = 0;
    v34 = _swiftEmptyArrayStorage;
    while (v31)
    {
LABEL_23:
      v36 = *(*(v84 + 56) + ((v33 << 9) | (8 * __clz(__rbit64(v31)))));
      v37 = *(v36 + 16);
      v38 = *(v34 + 2);
      v39 = v38 + v37;
      if (__OFADD__(v38, v37))
      {
        goto LABEL_58;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v39 > *(v34 + 3) >> 1)
      {
        if (v38 <= v39)
        {
          v40 = v38 + v37;
        }

        else
        {
          v40 = v38;
        }

        isUniquelyReferenced_nonNull_native = sub_10007B5AC(isUniquelyReferenced_nonNull_native, v40, 1, v34);
        v34 = isUniquelyReferenced_nonNull_native;
      }

      v31 &= v31 - 1;
      if (*(v36 + 16))
      {
        if ((*(v34 + 3) >> 1) - *(v34 + 2) < v37)
        {
          goto LABEL_60;
        }

        swift_arrayInitWithCopy();

        if (v37)
        {
          v41 = *(v34 + 2);
          v42 = __OFADD__(v41, v37);
          v43 = v41 + v37;
          if (v42)
          {
            goto LABEL_61;
          }

          *(v34 + 2) = v43;
        }
      }

      else
      {

        if (v37)
        {
          goto LABEL_59;
        }
      }
    }

    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35 >= v32)
      {
        v44 = v85;

        v45 = sub_1000DA350();
        v46 = sub_1000DBDD0();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = v85[15];
          v48 = swift_slowAlloc();
          v87[0] = swift_slowAlloc();
          *v48 = 136315394;
          v85[11] = v47;
          sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
          sub_10007CA88();
          v49 = sub_1000DB890();
          v51 = sub_1000848C8(v49, v50, v87);

          *(v48 + 4) = v51;
          *(v48 + 12) = 2080;
          v52 = *(v34 + 2);
          v53 = _swiftEmptyArrayStorage;
          if (v52)
          {
            v80 = v48;
            v81 = v46;
            v82 = v45;
            v86[0] = _swiftEmptyArrayStorage;
            sub_10007BC5C(0, v52, 0);
            v53 = v86[0];
            v54 = *(v86[0] + 16);
            v55 = 2 * v54;
            v56 = (v34 + 40);
            do
            {
              v57 = *(v56 - 1);
              v58 = *v56;
              v86[0] = v53;
              v59 = v54 + 1;
              v60 = v53[3];

              if (v54 >= v60 >> 1)
              {
                sub_10007BC5C((v60 > 1), v59, 1);
                v53 = v86[0];
              }

              v53[2] = v59;
              v61 = &v53[v55];
              v61[4] = v57;
              v61[5] = v58;
              v55 += 2;
              v56 += 4;
              ++v54;
              --v52;
            }

            while (v52);
            v44 = v85;
            v45 = v82;
            v46 = v81;
            v48 = v80;
          }

          v44[12] = v53;
          v62 = sub_1000DB890();
          v64 = v63;

          v65 = sub_1000848C8(v62, v64, v87);

          *(v48 + 14) = v65;
          _os_log_impl(&_mh_execute_header, v45, v46, "Fetching all relevant headlines for symbols=[%s], headlineIDs=[%s]", v48, 0x16u);
          swift_arrayDestroy();
        }

        sub_100006E20(v44[16] + 128, (v44 + 2));
        sub_100006C7C(v44 + 2, v44[5]);
        v66 = *(v34 + 2);
        if (v66)
        {
          v86[0] = _swiftEmptyArrayStorage;
          sub_10007BC5C(0, v66, 0);
          v67 = 0;
          v68 = v86[0];
          v69 = *(v86[0] + 16);
          v70 = 16 * v69;
          do
          {
            v71 = *&v34[v67 + 32];
            v72 = *&v34[v67 + 40];
            v86[0] = v68;
            v73 = *(v68 + 24);
            v74 = v69 + 1;

            if (v69 >= v73 >> 1)
            {
              sub_10007BC5C((v73 > 1), v74, 1);
              v68 = v86[0];
            }

            *(v68 + 16) = v74;
            v75 = v68 + v70;
            *(v75 + 32) = v71;
            *(v75 + 40) = v72;
            v70 += 16;
            v67 += 32;
            ++v69;
            --v66;
          }

          while (v66);

          v44 = v85;
        }

        else
        {
        }

        v77 = v44[18];
        v76 = v44[19];
        v78 = v44[17];
        (*(v77 + 104))(v76, enum case for HeadlineOrigin.topStories(_:), v78);
        v44[28] = sub_1000D9850();

        (*(v77 + 8))(v76, v78);
        v79 = swift_task_alloc();
        v44[29] = v79;
        *v79 = v44;
        v79[1] = sub_100079F0C;
        isUniquelyReferenced_nonNull_native = (v44 + 7);

        goto LABEL_62;
      }

      v31 = *(v28 + 8 * v35);
      ++v33;
      if (v31)
      {
        v33 = v35;
        goto LABEL_23;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    Promise.resolveAsync()(isUniquelyReferenced_nonNull_native);
  }
}

uint64_t sub_100079F0C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);

    v4 = sub_10007A2AC;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 128);

    sub_100006D0C((v2 + 16));
    v4 = sub_10007A050;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10007A050()
{
  v15 = v0;
  v1 = v0[27];
  v2 = v0[7];

  v3 = sub_10007C8D0(v1, v2);

  swift_bridgeObjectRelease_n();

  v4 = sub_1000DA350();
  v5 = sub_1000DBDD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v0[10] = v6;
    sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    sub_10007CA88();
    v9 = sub_1000DB890();
    v11 = sub_1000848C8(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully fetched all relevant headlines for symbols=[%s]", v7, 0xCu);
    sub_100006D0C(v8);
  }

  v12 = v0[1];

  return v12(v3);
}

uint64_t sub_10007A248()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007A2AC()
{
  sub_100006D0C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

void sub_10007A318(uint64_t *a1, uint64_t *a2, uint64_t a3, NSObject *a4)
{
  v6 = *a2;
  v5 = a2[1];
  v50 = a4;
  v51 = v6;
  v52 = v5;
  v7 = a2[2];
  v48 = a1;
  v49 = v7;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = (*(a3 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(*(a3 + 56) + 8 * v16);
      v54[0] = v51;
      v54[1] = v52;
      __chkstk_darwin(v13);
      v46[2] = v54;

      v21 = v53;
      v22 = sub_10007420C(sub_10007CC98, v46, v20);
      v53 = v21;
      if (v22)
      {
        break;
      }

      v11 &= v11 - 1;

      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v28 = v49;
    if (*(v49 + 16))
    {
      swift_bridgeObjectRetain_n();

      v29 = sub_1000DA350();
      v30 = sub_1000DBDD0();

      if (os_log_type_enabled(v29, v30))
      {
        LODWORD(v52) = v30;
        v31 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v54[0] = v51;
        *v31 = 136315394;
        v32 = *(v28 + 16);
        v33 = _swiftEmptyArrayStorage;
        if (v32)
        {
          v47 = v31;
          v50 = v29;
          v55 = _swiftEmptyArrayStorage;
          sub_10007BC5C(0, v32, 0);
          v33 = v55;
          v34 = (v28 + 40);
          do
          {
            v35 = *(v34 - 1);
            v36 = *v34;
            v55 = v33;
            v38 = v33[2];
            v37 = v33[3];

            if (v38 >= v37 >> 1)
            {
              sub_10007BC5C((v37 > 1), v38 + 1, 1);
              v33 = v55;
            }

            v33[2] = v38 + 1;
            v39 = &v33[2 * v38];
            v39[4] = v35;
            v39[5] = v36;
            v34 += 4;
            --v32;
          }

          while (v32);
          v28 = v49;
          v29 = v50;
          v31 = v47;
        }

        v55 = v33;
        sub_10007CE24(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
        sub_10007CA88();
        v40 = sub_1000DB890();
        v42 = v41;

        v43 = sub_1000848C8(v40, v42, v54);

        *(v31 + 4) = v43;
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_1000848C8(v19, v18, v54);
        _os_log_impl(&_mh_execute_header, v29, v52, "Found relevant headlines for symbol, headlineIDs=[%s], symbol=%s", v31, 0x16u);
        swift_arrayDestroy();
      }

      v44 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54[0] = *v44;
      sub_10007C72C(v28, v19, v18, isUniquelyReferenced_nonNull_native);

      *v44 = v54[0];
    }

    else
    {
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return;
      }

      if (v15 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    v23 = v52;

    v24 = sub_1000DA350();
    v25 = sub_1000DBDD0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1000848C8(v51, v23, v54);
      _os_log_impl(&_mh_execute_header, v24, v25, "No symbol found matching feedID=%s", v26, 0xCu);
      sub_100006D0C(v27);
    }
  }
}

void sub_10007A814(uint64_t *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v39 = a3;
  v53 = a2;
  sub_10007CBA8(0, &qword_100114E38, &type metadata accessor for Headline, &type metadata accessor for Optional);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_1000D9C30();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v41 = &v38 - v12;
  __chkstk_darwin(v13);
  v40 = &v38 - v14;
  __chkstk_darwin(v15);
  v44 = &v38 - v16;
  v17 = *a1;
  v50 = *(*a1 + 16);
  if (v50)
  {
    v18 = 0;
    v56 = (v8 + 8);
    v57 = v8 + 16;
    v43 = (v8 + 32);
    v45 = (v8 + 56);
    v46 = v17 + 32;
    v52 = _swiftEmptyArrayStorage;
    v47 = v17;
    v48 = v6;
    v42 = v8;
    while (v18 < *(v17 + 16))
    {
      v55 = v18;
      v21 = (v46 + 32 * v18);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[3];
      v51 = v21[2];
      v25 = *(v53 + 16);

      v54 = v24;

      if (v25)
      {
        v26 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v58 = *(v42 + 72);
        v49 = v26;
        v27 = v53 + v26;
        v28 = *(v42 + 16);
        while (1)
        {
          v28(v10, v27, v7);
          if (sub_1000D9BE0() == v22 && v29 == v23)
          {
            break;
          }

          v30 = sub_1000DC360();

          if (v30)
          {
            goto LABEL_14;
          }

          (*v56)(v10, v7);
          v27 += v58;
          if (!--v25)
          {
            goto LABEL_3;
          }
        }

LABEL_14:
        v31 = *v43;
        v32 = v41;
        (*v43)(v41, v10, v7);
        v33 = v40;
        v31(v40, v32, v7);
        if (v54)
        {
          v34 = v48;
          sub_10007AD5C(v33, v51, v54, v48);

          (*v56)(v33, v7);
        }

        else
        {

          v34 = v48;
          v31(v48, v33, v7);
        }

        v17 = v47;
        v20 = v55;
        (*v45)(v34, 0, 1, v7);
        v31(v44, v34, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_10007B8FC(0, *(v52 + 2) + 1, 1, v52, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
        }

        v36 = *(v52 + 2);
        v35 = *(v52 + 3);
        if (v36 >= v35 >> 1)
        {
          v52 = sub_10007B8FC((v35 > 1), v36 + 1, 1, v52, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
        }

        v37 = v52;
        *(v52 + 2) = v36 + 1;
        v31(&v37[v49 + v36 * v58], v44, v7);
      }

      else
      {
LABEL_3:

        v19 = v48;
        (*v45)(v48, 1, 1, v7);
        sub_10007CC0C(v19);
        v17 = v47;
        v20 = v55;
      }

      v18 = v20 + 1;
      if (v18 == v50)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
LABEL_23:
    *v39 = v52;
  }
}

uint64_t sub_10007AD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1000D9BD0();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v14[4] = sub_10007B3CC;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10007AF34;
  v14[3] = &unk_10010AF78;
  v10 = _Block_copy(v14);
  swift_unknownObjectRetain();

  v11 = FCMutateHeadlineWithBlock();
  _Block_release(v10);
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_1000D9BF0();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = sub_1000D9C30();
    (*(*(v12 - 8) + 16))(a4, a1, v12);
  }

  return swift_unknownObjectRelease();
}

void sub_10007AECC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_1000DB910();
    [a1 setTitle:v4];
  }
}

void sub_10007AF34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10007AFA0()
{
  swift_unknownObjectRelease();
  sub_100006D0C((v0 + 128));
  sub_100006D0C((v0 + 168));
  v1 = OBJC_IVAR____TtC12StocksWidget36WidgetConfigMandatoryHeadlineService_logger;
  v2 = sub_1000DA370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10007B06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1000DA370();
  if (v6 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10007B10C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001557C;

  return sub_1000776BC(a1, a2);
}

uint64_t sub_10007B1B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100011054;

  return sub_100078FE8(a1);
}

uint64_t sub_10007B244(uint64_t a1)
{
  result = sub_10007B2F4(&qword_100118330, type metadata accessor for WidgetConfigMandatoryHeadlineService, &unk_1000E2CD4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10007B29C(uint64_t a1)
{
  result = sub_10007B2F4(&qword_100118338, type metadata accessor for TopStoriesMandatoryHeadlineService, &unk_1000E2D2C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10007B2F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007B33C(uint64_t a1)
{
  result = sub_10007B2F4(&qword_100118340, type metadata accessor for MandatoryHeadlineService, &unk_1000E2D84);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10007B394()
{

  return swift_deallocObject();
}

uint64_t sub_10007B3D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_10007B454(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007CE24(0, &qword_100115350, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10007B5AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007CE24(0, &qword_100118350, &type metadata for WidgetSectionConfigRecord.SymbolConfiguration.Article, &type metadata accessor for _ContiguousArrayStorage);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10007B738(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007CBA8(0, &qword_100116370, sub_100028708, &type metadata accessor for _ContiguousArrayStorage);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10007B8FC(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10007CBA8(0, a5, a6, &type metadata accessor for _ContiguousArrayStorage);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_10007BAF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007CE24(0, &qword_100118390, &type metadata for Double, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10007BC0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007C12C(a1, a2, a3, *v3, &qword_100115378, type metadata accessor for WidgetStock, type metadata accessor for WidgetStock);
  *v3 = result;
  return result;
}

char *sub_10007BC5C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007BD5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007BC7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007BE80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007BC9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007C12C(a1, a2, a3, *v3, &qword_100118348, &type metadata accessor for Headline, &type metadata accessor for Headline);
  *v3 = result;
  return result;
}

char *sub_10007BCEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007BFC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007BD0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007C12C(a1, a2, a3, *v3, &qword_100118388, &type metadata accessor for Stock, &type metadata accessor for Stock);
  *v3 = result;
  return result;
}

char *sub_10007BD5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007CE24(0, &qword_100115350, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10007BE80(void *result, int64_t a2, char a3, void *a4)
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
    sub_10007CD40(0);
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
    sub_10007CE24(0, &qword_100115C60, &type metadata for String, &type metadata accessor for Optional);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10007BFC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007CE24(0, &qword_100115340, &type metadata for QuoteDetailItem, &type metadata accessor for _ContiguousArrayStorage);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10007C12C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10007CBA8(0, a5, a6, &type metadata accessor for _ContiguousArrayStorage);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10007C320(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v35 = v5;
  result = sub_1000DC120();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1000DC420();
      sub_1000DB9F0();
      result = sub_1000DC460();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

void sub_10007C5C0(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1000DC110();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }
}

void sub_10007C72C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100033210(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10007C320(v16, a4 & 1, sub_10007CCB4);
      v11 = sub_100033210(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1000DC3A0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10007C5C0(sub_10007CCB4);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void *sub_10007C8D0(uint64_t a1, uint64_t a2)
{
  sub_10007CB10(0);
  result = sub_1000DC110();
  v5 = 0;
  v26 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v25 = result + 8;
  v28 = result;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v26 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v30 = *(*(v26 + 56) + 8 * v16);

      sub_10007A814(&v30, a2, &v29);

      if (v2)
      {
        break;
      }

      *(v25 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v28;
      v20 = v29;
      v21 = (v28[6] + 16 * v16);
      *v21 = v18;
      v21[1] = v19;
      *(v28[7] + 8 * v16) = v20;
      v22 = v28[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v28[2] = v24;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    return v28;
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_10007CA88()
{
  result = qword_100114E30;
  if (!qword_100114E30)
  {
    sub_10007CE24(255, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114E30);
  }

  return result;
}

double sub_10007CB04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_10007CB10(uint64_t a1)
{
  if (!qword_100115D58)
  {
    sub_10007CBA8(255, &qword_100115D60, &type metadata accessor for Headline, &type metadata accessor for Array);
    v1 = sub_1000DC140();
    if (!v2)
    {
      atomic_store(v1, &qword_100115D58);
    }
  }
}

void sub_10007CBA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10007CC0C(uint64_t a1)
{
  sub_10007CBA8(0, &qword_100114E38, &type metadata accessor for Headline, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10007CCB4(uint64_t a1)
{
  if (!qword_100118358)
  {
    sub_10007CE24(255, &qword_100117AA8, &type metadata for WidgetSectionConfigRecord.SymbolConfiguration.Article, &type metadata accessor for Array);
    v1 = sub_1000DC140();
    if (!v2)
    {
      atomic_store(v1, &qword_100118358);
    }
  }
}

void sub_10007CD40(uint64_t a1)
{
  if (!qword_100118360)
  {
    sub_10007CE24(255, &qword_100115C60, &type metadata for String, &type metadata accessor for Optional);
    v1 = sub_1000DC330();
    if (!v2)
    {
      atomic_store(v1, &qword_100118360);
    }
  }
}

uint64_t sub_10007CDBC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10007CDCC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000DC360() & 1;
  }
}

void sub_10007CE24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10007CEB8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  sub_100071F74(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_10007D024(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  sub_100023704(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

void sub_10007D058(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10007D0D0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  sub_100071F74(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_10007D024(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  sub_100023704(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

void sub_10007D25C(uint64_t a1)
{
  sub_100082BC8(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100071F74(319);
    if (v2 <= 0x3F)
    {
      sub_10007D024(319);
      if (v3 <= 0x3F)
      {
        sub_100023704(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

double sub_10007D368@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = sub_1000D90C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D90B0();
  v7 = sub_1000D90A0();
  v35 = v8;
  v36 = v7;
  (*(v4 + 8))(v6, v3);
  v41._countAndFlagsBits = 46;
  v41._object = 0xE100000000000000;
  v9 = sub_1000DBA30(v41, 3);
  v33 = v10;
  v34 = v9;
  v42._countAndFlagsBits = 46;
  v42._object = 0xE100000000000000;
  v11 = sub_1000DBA30(v42, 5);
  v13 = v12;
  v43._countAndFlagsBits = 46;
  v43._object = 0xE100000000000000;
  v14 = sub_1000DBA30(v43, 9);
  v16 = v15;
  v17 = type metadata accessor for TickerCellViewModel(0);
  v18 = v17[10];
  sub_10006F9D8(a2 + v18);
  v19 = type metadata accessor for PreparedSparkline(0);
  (*(*(v19 - 8) + 56))(a2 + v18, 0, 1, v19);
  v39 = xmmword_100119468;
  v20 = unk_100119480;
  v40 = qword_100119478;
  v38[0] = xmmword_100119488;
  *(v38 + 9) = *(&xmmword_100119488 + 9);
  v21 = v17[12];
  v22 = sub_1000D8F30();
  (*(*(v22 - 8) + 56))(a2 + v21, 1, 1, v22);
  v23 = v17[13];
  v24 = qword_100114118;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_1000D9450();
  v26 = sub_100015294(v25, qword_100128EC0);
  v27 = *(v25 - 8);
  (*(v27 + 16))(a2 + v23, v26, v25);
  (*(v27 + 56))(a2 + v23, 0, 1, v25);
  *a2 = v37;
  v28 = v35;
  *(a2 + 8) = v36;
  *(a2 + 16) = v28;
  v29 = v33;
  *(a2 + 24) = v34;
  *(a2 + 32) = v29;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14;
  *(a2 + 64) = v16;
  *(a2 + 72) = 2;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v30 = a2 + v17[11];
  *v30 = v39;
  *(v30 + 16) = v40;
  *(v30 + 24) = v20;
  *(v30 + 32) = v38[0];
  result = *(v38 + 9);
  *(v30 + 41) = *(v38 + 9);
  return result;
}

double sub_10007D67C@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

unint64_t sub_10007D68C()
{
  result = qword_100118448;
  if (!qword_100118448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118448);
  }

  return result;
}

double sub_10007D6E0@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v54 = a2;
  sub_100023704(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for WidgetStock(0);
  __chkstk_darwin(v8);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000D9AB0();
  v52 = v12;
  v53 = v11;
  sub_100082D80(a1, v10, type metadata accessor for WidgetStock);
  v13 = sub_1000D9AC0();
  v50 = v14;
  v51 = v13;
  v15 = sub_1000D9B30();
  v48 = v16;
  v49 = v15;
  sub_10007DA7C(v10, type metadata accessor for WidgetStock);
  v17 = sub_1000D9AF0();
  v46 = v18;
  v47 = v17;
  v19 = *(v8 + 20);
  sub_100082D80(a1 + v19, v7, sub_100023704);
  v20 = sub_1000D9450();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v7, 1, v20) == 1)
  {
    sub_10007DA7C(v7, sub_100023704);
    v22 = 2;
  }

  else
  {
    v23 = COERCE_DOUBLE(sub_1000D93D0());
    v25 = v24;
    (*(v21 + 8))(v7, v20);
    if (v25)
    {
      v22 = 2;
    }

    else
    {
      v22 = v23 < 0.0;
    }
  }

  v45 = v22;
  v26 = sub_1000BA50C();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = *(v8 + 24);
  v34 = type metadata accessor for TickerCellViewModel(0);
  sub_100082D80(a1 + v33, a3 + v34[10], sub_100071F74);
  sub_100082D80(a1, v10, type metadata accessor for WidgetStock);
  sub_10009FCB4(v10, v55);
  v35 = v34[12];
  sub_1000D9AD0();
  v36 = sub_1000D8F30();
  (*(*(v36 - 8) + 56))(a3 + v35, 0, 1, v36);
  sub_100082D80(a1 + v19, a3 + v34[13], sub_100023704);
  sub_10007DA7C(a1, type metadata accessor for WidgetStock);
  *a3 = v54;
  v37 = v52;
  *(a3 + 8) = v53;
  *(a3 + 16) = v37;
  v38 = v50;
  *(a3 + 24) = v51;
  *(a3 + 32) = v38;
  v39 = v48;
  *(a3 + 40) = v49;
  *(a3 + 48) = v39;
  v40 = v46;
  *(a3 + 56) = v47;
  *(a3 + 64) = v40;
  *(a3 + 72) = v45;
  *(a3 + 80) = v26;
  *(a3 + 88) = v28 & 1;
  *(a3 + 96) = v30;
  *(a3 + 104) = v32;
  v41 = (a3 + v34[11]);
  v42 = v55[1];
  *v41 = v55[0];
  v41[1] = v42;
  v41[2] = v56[0];
  result = *(v56 + 9);
  *(v41 + 41) = *(v56 + 9);
  return result;
}

uint64_t sub_10007DA7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007DADC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v67 = 9666786;
  v3 = sub_1000D9690();
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v63 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = _s11FormatStyleVMa_0(0);
  __chkstk_darwin(v60);
  v6 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000DAE60();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081C4C(0);
  v12 = v11;
  __chkstk_darwin(v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000829D8(0);
  v16 = *(v15 - 8);
  v57 = v15;
  v58 = v16;
  __chkstk_darwin(v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081D94(0, &qword_100118668, sub_1000829D8, &type metadata accessor for AccessibilityAttachmentModifier, &type metadata accessor for ModifiedContent);
  v62 = v19;
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  sub_10007E1A4(v2, v14);
  sub_1000DAE30();
  v22 = sub_100082A5C();
  sub_1000DB2A0();
  (*(v8 + 8))(v10, v7);
  sub_10007DA7C(v14, sub_100081C4C);
  v23 = *(v2 + 64);
  v70 = *(v2 + 56);
  v71 = v23;

  v72._countAndFlagsBits = 8236;
  v72._object = 0xE200000000000000;
  sub_1000DBA00(v72);
  v24 = *(v2 + 40);
  v25 = *(v2 + 48);

  v73._countAndFlagsBits = v24;
  v73._object = v25;
  sub_1000DBA00(v73);

  v68 = v12;
  v69 = v22;
  swift_getOpaqueTypeConformance2();
  v26 = sub_100017740();
  v61 = v21;
  v27 = v57;
  v59 = v26;
  sub_1000DB280();

  (*(v58 + 8))(v18, v27);
  if (*(v2 + 88))
  {
    goto LABEL_7;
  }

  v28 = *(v2 + 80);
  if (qword_1001140F8 != -1)
  {
    swift_once();
  }

  v29 = sub_10002999C(0, 3, 1, v28);
  [v29 setNumberStyle:1];
  v30 = [objc_allocWithZone(NSNumber) initWithDouble:v28];
  v31 = [v29 stringFromNumber:v30];

  if (!v31)
  {

LABEL_7:
    v58 = 0xA300000000000000;
    goto LABEL_8;
  }

  v67 = sub_1000DB950();
  v58 = v32;

LABEL_8:
  v33 = v2 + *(type metadata accessor for TickerCellViewModel(0) + 44);
  v34 = *v33;
  v35 = *(v33 + 8);
  v36 = *(v33 + 32);
  v37 = *(v33 + 40);
  v38 = *(v33 + 48);
  v39 = *(v33 + 56);
  type metadata accessor for TickerCellView(0);
  sub_10004CF98(v6);
  v40 = v60;
  *(v6 + *(v60 + 20)) = 0;
  *(v6 + v40[6]) = 0;
  *(v6 + v40[7]) = 1;
  v41 = (v6 + v40[8]);
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  v42 = sub_100086C3C(v34, v35, v36, v37, v38, v39);
  v44 = v43;
  sub_10007DA7C(v6, _s11FormatStyleVMa_0);
  sub_100082BC8(0, &qword_100115350, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1000DE440;
  v46 = v58;
  *(v45 + 32) = v67;
  *(v45 + 40) = v46;
  v47 = v63;
  sub_10004CF98(v63);
  v48 = sub_100049030();
  v50 = v49;
  (*(v64 + 8))(v47, v65);
  *(v45 + 48) = v48;
  *(v45 + 56) = v50;
  *(v45 + 64) = v42;
  *(v45 + 72) = v44;
  v70 = v45;
  sub_100082BC8(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
  sub_10007CA88();
  v51 = sub_1000DB890();
  v53 = v52;

  v70 = v51;
  v71 = v53;
  v54 = v61;
  sub_1000DA920();

  return sub_100082C18(v54);
}

uint64_t sub_10007E1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[2] = a2;
  sub_100081CE8(0);
  v28 = v3;
  v27[0] = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081D94(0, &qword_100118670, sub_100081CE8, sub_100081D4C, &type metadata accessor for _ConditionalContent.Storage);
  v27[1] = v6;
  __chkstk_darwin(v6);
  v8 = v27 - v7;
  sub_100081D4C(0);
  __chkstk_darwin(v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007D024(0);
  __chkstk_darwin(v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000D8F30();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v27 - v20;
  v22 = type metadata accessor for TickerCellViewModel(0);
  sub_100082D80(a1 + *(v22 + 48), v14, sub_10007D024);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10007DA7C(v14, sub_10007D024);
    sub_10007E694(v11);
    sub_100082D80(v11, v8, sub_100081D4C);
    swift_storeEnumTagMultiPayload();
    sub_10008183C(&qword_100118660, sub_100081CE8, &protocol conformance descriptor for Link<A>);
    sub_10008279C();
    sub_1000DAD90();
    return sub_10007DA7C(v11, sub_100081D4C);
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    v24 = (*(v16 + 16))(v18, v21, v15);
    __chkstk_darwin(v24);
    v27[-2] = a1;
    sub_10008279C();
    sub_1000DB0B0();
    v25 = v27[0];
    v26 = v28;
    (*(v27[0] + 16))(v8, v5, v28);
    swift_storeEnumTagMultiPayload();
    sub_10008183C(&qword_100118660, sub_100081CE8, &protocol conformance descriptor for Link<A>);
    sub_1000DAD90();
    (*(v25 + 8))(v5, v26);
    return (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_10007E694@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v63 = type metadata accessor for LineTicker(0);
  __chkstk_darwin(v63);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081D94(0, &qword_100118678, type metadata accessor for RowWithChartTicker, type metadata accessor for LineTicker, &type metadata accessor for _ConditionalContent.Storage);
  v60 = v4;
  __chkstk_darwin(v4);
  v62 = &v56 - v5;
  sub_100082754(0);
  v68 = v6;
  __chkstk_darwin(v6);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for RowWithChartTicker(0);
  __chkstk_darwin(v61);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000822B4(0);
  __chkstk_darwin(v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081D94(0, &qword_100118680, sub_100081E18, sub_100082754, &type metadata accessor for _ConditionalContent.Storage);
  v65 = v13;
  __chkstk_darwin(v13);
  v67 = &v56 - v14;
  sub_100081D94(0, &qword_100118688, sub_100081E60, sub_1000822B4, &type metadata accessor for _ConditionalContent.Storage);
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  sub_100081E18(0);
  v66 = v18;
  __chkstk_darwin(v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100081E60(0);
  __chkstk_darwin(v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      v59 = v1[72];
      v28 = *(v1 + 3);
      v27 = *(v1 + 4);
      v30 = *(v1 + 5);
      v29 = *(v1 + 6);
      v31 = *(v1 + 8);
      v58 = *(v1 + 7);
      v57 = *(v1 + 10);
      v56 = v1[88];
      v33 = *(v1 + 12);
      v32 = *(v1 + 13);
      v34 = type metadata accessor for TickerCellViewModel(0);
      v35 = &v1[*(v34 + 44)];
      v36 = *(v35 + 2);
      v72 = *(v35 + 1);
      v73[0] = v36;
      *(v73 + 9) = *(v35 + 41);
      v71 = *v35;
      v75 = v72;
      *v76 = v36;
      *&v76[9] = *(v73 + 9);
      v74 = v71;
      v37 = v61;
      sub_100082D80(&v1[*(v34 + 40)], &v9[*(v61 + 36)], sub_100071F74);
      v38 = v75;
      *(v9 + 88) = v74;
      *v9 = v59;
      *(v9 + 1) = v28;
      *(v9 + 2) = v27;
      *(v9 + 3) = v30;
      *(v9 + 4) = v29;
      *(v9 + 5) = v58;
      *(v9 + 6) = v31;
      v39 = v56;
      *(v9 + 7) = v57;
      *(v9 + 8) = v39;
      *(v9 + 9) = v33;
      *(v9 + 10) = v32;
      *(v9 + 104) = v38;
      *(v9 + 120) = *v76;
      *(v9 + 129) = *&v76[9];
      v40 = *(v37 + 40);

      sub_10002B068(&v71, v70);
      if (qword_100114158 != -1)
      {
        swift_once();
      }

      sub_100002540();
      swift_allocObject();

      *&v9[v40] = sub_1000D9DD0();
      v41 = *(v37 + 44);
      *&v9[v41] = swift_getKeyPath();
      sub_10007D058(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
      swift_storeEnumTagMultiPayload();
      sub_100082D80(v9, v62, type metadata accessor for RowWithChartTicker);
      swift_storeEnumTagMultiPayload();
      sub_10008183C(&qword_100118638, type metadata accessor for RowWithChartTicker, &unk_1000E6A24);
      sub_10008183C(&qword_100118640, type metadata accessor for LineTicker, &unk_1000E03B0);
      v42 = v64;
      sub_1000DAD90();
      sub_100082D80(v42, v67, sub_100082754);
      swift_storeEnumTagMultiPayload();
      sub_10008281C();
      sub_1000828F8();
      sub_1000DAD90();
      sub_10007DA7C(v42, sub_100082754);
      v25 = type metadata accessor for RowWithChartTicker;
      v26 = v9;
    }

    else
    {
      v44 = v1[72];
      v45 = *(v1 + 3);
      v46 = *(v1 + 4);
      v47 = *(v1 + 5);
      v48 = *(v1 + 6);
      v49 = *(v1 + 10);
      v50 = v1[88];
      v51 = *(v1 + 12);
      v52 = *(v1 + 13);
      *v3 = v44;
      *(v3 + 1) = v45;
      *(v3 + 2) = v46;
      *(v3 + 3) = v47;
      *(v3 + 4) = v48;
      *(v3 + 5) = v49;
      *(v3 + 6) = v50;
      *(v3 + 7) = v51;
      *(v3 + 8) = v52;
      v53 = *(v63 + 28);
      *&v3[v53] = swift_getKeyPath();
      sub_10007D058(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
      swift_storeEnumTagMultiPayload();
      sub_100082D80(v3, v62, type metadata accessor for LineTicker);
      swift_storeEnumTagMultiPayload();
      sub_10008183C(&qword_100118638, type metadata accessor for RowWithChartTicker, &unk_1000E6A24);
      sub_10008183C(&qword_100118640, type metadata accessor for LineTicker, &unk_1000E03B0);

      v54 = v64;
      sub_1000DAD90();
      sub_100082D80(v54, v67, sub_100082754);
      swift_storeEnumTagMultiPayload();
      sub_10008281C();
      sub_1000828F8();
      sub_1000DAD90();
      sub_10007DA7C(v54, sub_100082754);
      v25 = type metadata accessor for LineTicker;
      v26 = v3;
    }
  }

  else if (*v1)
  {
    *v12 = sub_1000DAD00();
    *(v12 + 1) = 0x4000000000000000;
    v12[16] = 0;
    sub_100082CE8(0, &qword_100118690, sub_100082348, &type metadata for _VStackLayout, &protocol witness table for _VStackLayout);
    sub_10007FDF8(v1, &v12[*(v43 + 44)]);
    sub_100082D80(v12, v17, sub_1000822B4);
    swift_storeEnumTagMultiPayload();
    sub_10008183C(&qword_100118620, sub_100081E60, &protocol conformance descriptor for VStack<A>);
    sub_10008183C(&qword_100118628, sub_1000822B4, &protocol conformance descriptor for VStack<A>);
    sub_1000DAD90();
    sub_100082D80(v20, v67, sub_100081E18);
    swift_storeEnumTagMultiPayload();
    sub_10008281C();
    sub_1000828F8();
    sub_1000DAD90();
    sub_10007DA7C(v20, sub_100081E18);
    v25 = sub_1000822B4;
    v26 = v12;
  }

  else
  {
    *v23 = sub_1000DAD00();
    *(v23 + 1) = 0x4000000000000000;
    v23[16] = 0;
    sub_100082CE8(0, &qword_100118698, sub_100081EF4, &type metadata for _VStackLayout, &protocol witness table for _VStackLayout);
    sub_10007F350(v1, &v23[*(v24 + 44)]);
    sub_100082D80(v23, v17, sub_100081E60);
    swift_storeEnumTagMultiPayload();
    sub_10008183C(&qword_100118620, sub_100081E60, &protocol conformance descriptor for VStack<A>);
    sub_10008183C(&qword_100118628, sub_1000822B4, &protocol conformance descriptor for VStack<A>);
    sub_1000DAD90();
    sub_100082D80(v20, v67, sub_100081E18);
    swift_storeEnumTagMultiPayload();
    sub_10008281C();
    sub_1000828F8();
    sub_1000DAD90();
    sub_10007DA7C(v20, sub_100081E18);
    v25 = sub_100081E60;
    v26 = v23;
  }

  return sub_10007DA7C(v26, v25);
}

uint64_t sub_10007F350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_100082114(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  sub_100081F7C(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  *v16 = sub_1000DAC50();
  *(v16 + 1) = 0;
  v16[16] = 0;
  sub_100082CE8(0, &qword_100116738, sub_10008202C, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
  sub_10007F6B8(a1, &v16[*(v17 + 44)]);
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 1;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  v20 = &v16[*(v11 + 44)];
  *v20 = KeyPath;
  v20[1] = sub_10002B050;
  v20[2] = v19;
  *v9 = sub_1000DAC50();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_100082CE8(0, &qword_1001186A0, sub_1000821C8, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
  sub_10007FBD0(a1, &v9[*(v21 + 44)]);
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  v24 = &v9[*(v4 + 44)];
  *v24 = v22;
  v24[1] = sub_10002B5D4;
  v24[2] = v23;
  sub_100082D80(v16, v13, sub_100081F7C);
  sub_100082D80(v9, v6, sub_100082114);
  v25 = v29;
  sub_100082D80(v13, v29, sub_100081F7C);
  sub_1000823D0(0, &qword_100118548, sub_100081F7C, sub_100082114);
  sub_100082D80(v6, v25 + *(v26 + 48), sub_100082114);
  sub_10007DA7C(v9, sub_100082114);
  sub_10007DA7C(v16, sub_100081F7C);
  sub_10007DA7C(v6, sub_100082114);
  return sub_10007DA7C(v13, sub_100081F7C);
}

uint64_t sub_10007F6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_1000DB030();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100045460(0);
  v46 = v6;
  __chkstk_darwin(v6);
  v48 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (v43 - v9);
  v11 = type metadata accessor for SymbolTrendView(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v47 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v43 - v15;
  v17 = *(a1 + 72);
  v19 = *(a1 + 24);
  v18 = *(a1 + 32);
  v21 = *(a1 + 40);
  v20 = *(a1 + 48);
  v43[0] = swift_getKeyPath();
  *v16 = v17;
  *(v16 + 1) = v19;
  *(v16 + 2) = v18;
  *(v16 + 3) = v21;
  *(v16 + 4) = v20;
  v22 = v12[8];
  *&v16[v22] = swift_getKeyPath();
  sub_10007D058(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  v43[1] = v23;
  swift_storeEnumTagMultiPayload();
  v24 = v12[9];
  *&v16[v24] = swift_getKeyPath();
  sub_10007D058(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v25 = &v16[v12[10]];
  *v25 = v43[0];
  v25[8] = 0;
  v43[0] = *(a1 + 80);
  v26 = *(a1 + 88);
  v28 = *(a1 + 96);
  v27 = *(a1 + 104);

  sub_1000DB080();
  sub_1000DAF80();

  v30 = v44;
  v29 = v45;
  (*(v44 + 104))(v5, enum case for Font.Leading.tight(_:), v45);
  v31 = sub_1000DB060();

  (*(v30 + 8))(v5, v29);
  KeyPath = swift_getKeyPath();
  *v10 = v43[0];
  v10[1] = v26;
  v10[2] = v28;
  v10[3] = v27;
  v10[4] = v31;
  v33 = type metadata accessor for StockPriceView(0);
  v34 = v33[6];
  *(v10 + v34) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v35 = v10 + v33[7];
  *v35 = KeyPath;
  v35[8] = 0;
  v36 = v33[8];
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  sub_100002540();
  swift_allocObject();

  *(v10 + v36) = sub_1000D9DD0();
  v37 = v47;
  *(v10 + *(v46 + 36)) = 0x3FF0000000000000;
  sub_100082D80(v16, v37, type metadata accessor for SymbolTrendView);
  v38 = v48;
  sub_100082D80(v10, v48, sub_100045460);
  v39 = v49;
  sub_100082D80(v37, v49, type metadata accessor for SymbolTrendView);
  sub_100082688(0, &qword_100116718, type metadata accessor for SymbolTrendView, sub_100045460);
  v41 = v39 + *(v40 + 48);
  *v41 = 0x4020000000000000;
  *(v41 + 8) = 0;
  sub_100082D80(v38, v39 + *(v40 + 64), sub_100045460);
  sub_10007DA7C(v10, sub_100045460);
  sub_10007DA7C(v16, type metadata accessor for SymbolTrendView);
  sub_10007DA7C(v38, sub_100045460);
  return sub_10007DA7C(v37, type metadata accessor for SymbolTrendView);
}

double sub_10007FBD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008226C(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = (a1 + *(type metadata accessor for TickerCellViewModel(0) + 44));
  v14 = v13[2];
  v22 = v13[1];
  v23[0] = v14;
  *(v23 + 9) = *(v13 + 41);
  v21 = *v13;
  v25 = v22;
  v26[0] = v14;
  *(v26 + 9) = *(v23 + 9);
  v24 = v21;
  LOBYTE(a1) = *(a1 + 72);
  *v10 = swift_getKeyPath();
  sub_10007D058(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for PriceChangeView(0);
  v16 = (v10 + *(v15 + 20));
  v17 = v25;
  *v16 = v24;
  v16[1] = v17;
  v16[2] = v26[0];
  *(v16 + 41) = *(v26 + 9);
  *(v10 + *(v15 + 24)) = a1;
  *(v10 + *(v5 + 44)) = 0x3FF0000000000000;
  sub_100082D80(v10, v7, sub_10008226C);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0x4020000000000000;
  *(a2 + 24) = 0;
  sub_1000821FC(0);
  sub_100082D80(v7, a2 + *(v18 + 64), sub_10008226C);

  sub_10002B068(&v21, v20);

  sub_10007DA7C(v10, sub_10008226C);
  sub_10007DA7C(v7, sub_10008226C);

  return result;
}

uint64_t sub_10007FDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_100082598(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  sub_10008244C(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  *v16 = sub_1000DAC50();
  *(v16 + 1) = 0;
  v16[16] = 0;
  sub_100082CE8(0, &qword_1001186A8, sub_100082500, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
  sub_100080160(a1, &v16[*(v17 + 44)]);
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 1;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  v20 = &v16[*(v11 + 44)];
  *v20 = KeyPath;
  v20[1] = sub_10002B5D4;
  v20[2] = v19;
  *v9 = sub_1000DAC50();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_100082CE8(0, &qword_1001186B0, sub_10008264C, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
  sub_100080598(a1, &v9[*(v21 + 44)]);
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  v24 = &v9[*(v4 + 44)];
  *v24 = v22;
  v24[1] = sub_10002B5D4;
  v24[2] = v23;
  sub_100082D80(v16, v13, sub_10008244C);
  sub_100082D80(v9, v6, sub_100082598);
  v25 = v29;
  sub_100082D80(v13, v29, sub_10008244C);
  sub_1000823D0(0, &qword_1001185A0, sub_10008244C, sub_100082598);
  sub_100082D80(v6, v25 + *(v26 + 48), sub_100082598);
  sub_10007DA7C(v9, sub_100082598);
  sub_10007DA7C(v16, sub_10008244C);
  sub_10007DA7C(v6, sub_100082598);
  return sub_10007DA7C(v13, sub_10008244C);
}

uint64_t sub_100080160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_10008226C(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v38 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&KeyPath - v7);
  v9 = type metadata accessor for SymbolTrendView(0);
  v10 = (v9 - 8);
  __chkstk_darwin(v9);
  v35 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &KeyPath - v13;
  v15 = *(a1 + 72);
  v17 = *(a1 + 24);
  v36 = *(a1 + 32);
  v16 = v36;
  v18 = *(a1 + 40);
  v37 = *(a1 + 48);
  v19 = v37;
  KeyPath = swift_getKeyPath();
  *v14 = v15;
  *(v14 + 1) = v17;
  *(v14 + 2) = v16;
  *(v14 + 3) = v18;
  *(v14 + 4) = v19;
  v20 = v10[8];
  *&v14[v20] = swift_getKeyPath();
  sub_10007D058(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v21 = v10[9];
  *&v14[v21] = swift_getKeyPath();
  sub_10007D058(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v22 = &v14[v10[10]];
  *v22 = KeyPath;
  v22[8] = 0;
  v23 = (a1 + *(type metadata accessor for TickerCellViewModel(0) + 44));
  v24 = v23[2];
  v42 = v23[1];
  v43[0] = v24;
  *(v43 + 9) = *(v23 + 41);
  v41 = *v23;
  v45 = v42;
  v46[0] = v24;
  *(v46 + 9) = *(v43 + 9);
  v44 = v41;
  *v8 = swift_getKeyPath();
  sub_10007D058(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for PriceChangeView(0);
  v26 = (v8 + *(v25 + 20));
  v27 = v45;
  *v26 = v44;
  v26[1] = v27;
  v26[2] = v46[0];
  *(v26 + 41) = *(v46 + 9);
  *(v8 + *(v25 + 24)) = v15;
  *(v8 + *(v4 + 44)) = 0x3FF0000000000000;
  v28 = v35;
  sub_100082D80(v14, v35, type metadata accessor for SymbolTrendView);
  v29 = v38;
  sub_100082D80(v8, v38, sub_10008226C);
  v30 = v39;
  sub_100082D80(v28, v39, type metadata accessor for SymbolTrendView);
  sub_100082688(0, &qword_1001185C0, type metadata accessor for SymbolTrendView, sub_10008226C);
  v32 = v30 + *(v31 + 48);
  *v32 = 0x4020000000000000;
  *(v32 + 8) = 0;
  sub_100082D80(v29, v30 + *(v31 + 64), sub_10008226C);

  sub_10002B068(&v41, v40);
  sub_10007DA7C(v8, sub_10008226C);
  sub_10007DA7C(v14, type metadata accessor for SymbolTrendView);
  sub_10007DA7C(v29, sub_10008226C);
  return sub_10007DA7C(v28, type metadata accessor for SymbolTrendView);
}

uint64_t sub_100080598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_10008270C(0);
  v37 = v3;
  __chkstk_darwin(v3);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v37 - v6);
  v8 = type metadata accessor for StockPriceView(0);
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v37 - v12);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);

  sub_1000DB070();
  sub_1000DAFD0();
  v18 = sub_1000DB010();

  KeyPath = swift_getKeyPath();
  *v13 = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  v13[4] = v18;
  v20 = v9[8];
  *(v13 + v20) = swift_getKeyPath();
  sub_10007D058(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v21 = v13 + v9[9];
  *v21 = KeyPath;
  v21[8] = 0;
  v22 = v9[10];
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  sub_100002540();
  swift_allocObject();

  *(v13 + v22) = sub_1000D9DD0();
  v23 = (a1 + *(type metadata accessor for TickerCellViewModel(0) + 44));
  v42 = *v23;
  v24 = *(v23 + 3);
  v43 = *(v23 + 2);
  v41[0] = v23[2];
  *(v41 + 9) = *(v23 + 41);
  v25 = *(a1 + 72);
  *v7 = swift_getKeyPath();
  sub_10007D058(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for PriceChangeView(0);
  v27 = v7 + *(v26 + 20);
  *v27 = v42;
  *(v27 + 2) = v43;
  *(v27 + 3) = v24;
  *(v27 + 2) = v41[0];
  *(v27 + 41) = *(v41 + 9);
  *(v7 + *(v26 + 24)) = v25;
  sub_10008226C(0);
  *(v7 + *(v28 + 36)) = 0x3FF0000000000000;
  v29 = swift_getKeyPath();
  v30 = v38;
  v31 = (v7 + *(v37 + 36));
  *v31 = v29;
  v31[1] = sub_100080A10;
  v31[2] = 0;
  sub_100082D80(v13, v30, type metadata accessor for StockPriceView);
  v32 = v40;
  sub_100082D80(v7, v40, sub_10008270C);
  v33 = v39;
  sub_100082D80(v30, v39, type metadata accessor for StockPriceView);
  sub_100082688(0, &qword_1001185E8, type metadata accessor for StockPriceView, sub_10008270C);
  v35 = v33 + *(v34 + 48);
  *v35 = 0x4020000000000000;
  *(v35 + 8) = 0;
  sub_100082D80(v32, v33 + *(v34 + 64), sub_10008270C);

  sub_10007DA7C(v7, sub_10008270C);
  sub_10007DA7C(v13, type metadata accessor for StockPriceView);
  sub_10007DA7C(v32, sub_10008270C);
  return sub_10007DA7C(v30, type metadata accessor for StockPriceView);
}

uint64_t sub_100080A10(uint64_t a1)
{
  v2 = sub_1000D9690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v16 - v8;
  (*(v3 + 32))(&v16 - v8, a1, v2, v7);
  (*(v3 + 16))(v5, v9, v2);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == enum case for PriceChangeDisplay.currency(_:))
  {
    (*(v3 + 8))(v9, v2);
    v11 = enum case for PriceChangeDisplay.percentage(_:);
    return (*(v3 + 104))(a1, v11, v2);
  }

  v12 = enum case for PriceChangeDisplay.percentage(_:);
  if (v10 == enum case for PriceChangeDisplay.percentage(_:))
  {
    v13 = v9;
    v14 = enum case for PriceChangeDisplay.currency(_:);
    (*(v3 + 8))(v13, v2);
    v11 = v14;
    return (*(v3 + 104))(a1, v11, v2);
  }

  if (v10 == enum case for PriceChangeDisplay.marketCapitalization(_:))
  {
    (*(v3 + 8))(v9, v2);
    v11 = v12;
    return (*(v3 + 104))(a1, v11, v2);
  }

  result = sub_1000DC350();
  __break(1u);
  return result;
}

BOOL sub_100080C14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1000D9450();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023704(0);
  __chkstk_darwin(v8 - 8);
  v79 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008177C(0);
  v81 = v10;
  __chkstk_darwin(v10);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000D8F30();
  v85 = *(v13 - 8);
  v86 = v13;
  __chkstk_darwin(v13);
  v80 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007D024(0);
  __chkstk_darwin(v15 - 8);
  v82 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008179C(0);
  v83 = v17;
  __chkstk_darwin(v17);
  v84 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PreparedSparkline(0);
  v88 = *(v19 - 8);
  __chkstk_darwin(v19);
  v87 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071F74(0);
  __chkstk_darwin(v21 - 8);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008181C(0);
  v25 = v24;
  __chkstk_darwin(v24);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 || (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (sub_1000DC360() & 1) == 0)
  {
    return 0;
  }

  v78 = v7;
  v75 = v12;
  v77 = v5;
  v76 = v4;
  v29 = *(a1 + 5);
  v28 = *(a1 + 6);
  v30 = *(a2 + 5);
  v31 = *(a2 + 6);
  if ((*(a1 + 3) != *(a2 + 3) || *(a1 + 4) != *(a2 + 4)) && (sub_1000DC360() & 1) == 0)
  {
    return 0;
  }

  if ((v29 != v30 || v28 != v31) && (sub_1000DC360() & 1) == 0 || (*(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8)) && (sub_1000DC360() & 1) == 0)
  {
    return 0;
  }

  v32 = a1[72];
  v33 = a2[72];
  if (v32 == 2)
  {
    v34 = v78;
    if (v33 != 2)
    {
      return 0;
    }
  }

  else
  {
    v34 = v78;
    if (v33 == 2)
    {
      return 0;
    }

    if (v32)
    {
      v35 = 1853321060;
    }

    else
    {
      v35 = 28789;
    }

    if (v32)
    {
      v36 = 0xE400000000000000;
    }

    else
    {
      v36 = 0xE200000000000000;
    }

    if (v33)
    {
      v37 = 1853321060;
    }

    else
    {
      v37 = 28789;
    }

    if (v33)
    {
      v38 = 0xE400000000000000;
    }

    else
    {
      v38 = 0xE200000000000000;
    }

    if (v35 == v37 && v36 == v38)
    {
    }

    else
    {
      v39 = sub_1000DC360();

      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v40 = *(a1 + 13);
  v41 = a2[88];
  v42 = *(a2 + 13);
  if (a1[88])
  {
    if (!a2[88])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 10) != *(a2 + 10))
    {
      v41 = 1;
    }

    if (v41)
    {
      return 0;
    }
  }

  if (v40)
  {
    if (!v42 || (*(a1 + 12) != *(a2 + 12) || v40 != v42) && (sub_1000DC360() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v78 = type metadata accessor for TickerCellViewModel(0);
  v43 = *(v78 + 40);
  v44 = *(v25 + 48);
  sub_100082D80(&a1[v43], v27, sub_100071F74);
  sub_100082D80(&a2[v43], &v27[v44], sub_100071F74);
  v45 = *(v88 + 48);
  if (v45(v27, 1, v19) == 1)
  {
    if (v45(&v27[v44], 1, v19) == 1)
    {
      sub_10007DA7C(v27, sub_100071F74);
      goto LABEL_55;
    }

LABEL_52:
    v46 = sub_10008181C;
    v47 = v27;
LABEL_53:
    sub_10007DA7C(v47, v46);
    return 0;
  }

  sub_100082D80(v27, v23, sub_100071F74);
  if (v45(&v27[v44], 1, v19) == 1)
  {
    sub_10007DA7C(v23, type metadata accessor for PreparedSparkline);
    goto LABEL_52;
  }

  v48 = v87;
  sub_100081884(&v27[v44], v87);
  v49 = sub_100070EA0();
  sub_10007DA7C(v48, type metadata accessor for PreparedSparkline);
  sub_10007DA7C(v23, type metadata accessor for PreparedSparkline);
  sub_10007DA7C(v27, sub_100071F74);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  v50 = v78;
  v51 = &a1[*(v78 + 44)];
  v52 = *(v51 + 2);
  v89[1] = *(v51 + 1);
  v90[0] = v52;
  *(v90 + 9) = *(v51 + 41);
  v89[0] = *v51;
  v53 = &a2[*(v78 + 44)];
  *&v92[9] = *(v53 + 41);
  v54 = *(v53 + 2);
  v91[1] = *(v53 + 1);
  *v92 = v54;
  v91[0] = *v53;
  if (!sub_10009FBBC(v89, v91))
  {
    return 0;
  }

  v55 = *(v50 + 48);
  v56 = *(v83 + 48);
  v57 = v84;
  sub_100082D80(&a1[v55], v84, sub_10007D024);
  sub_100082D80(&a2[v55], v57 + v56, sub_10007D024);
  v59 = v85;
  v58 = v86;
  v60 = *(v85 + 48);
  if (v60(v57, 1, v86) != 1)
  {
    v61 = v82;
    sub_100082D80(v57, v82, sub_10007D024);
    if (v60(v57 + v56, 1, v58) != 1)
    {
      v62 = v80;
      (*(v59 + 32))(v80, v57 + v56, v58);
      sub_10008183C(&qword_100118470, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v63 = sub_1000DB8D0();
      v64 = *(v59 + 8);
      v64(v62, v58);
      v64(v61, v58);
      sub_10007DA7C(v57, sub_10007D024);
      v50 = v78;
      if ((v63 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_63;
    }

    (*(v59 + 8))(v61, v58);
    goto LABEL_61;
  }

  if (v60(v57 + v56, 1, v58) != 1)
  {
LABEL_61:
    v46 = sub_10008179C;
    v47 = v57;
    goto LABEL_53;
  }

  sub_10007DA7C(v57, sub_10007D024);
LABEL_63:
  v65 = *(v50 + 52);
  v66 = *(v81 + 48);
  v67 = v75;
  sub_100082D80(&a1[v65], v75, sub_100023704);
  sub_100082D80(&a2[v65], v67 + v66, sub_100023704);
  v68 = *(v77 + 48);
  v69 = v76;
  if (v68(v67, 1, v76) == 1)
  {
    if (v68(v67 + v66, 1, v69) == 1)
    {
      sub_10007DA7C(v67, sub_100023704);
      return 1;
    }

    goto LABEL_68;
  }

  v70 = v79;
  sub_100082D80(v67, v79, sub_100023704);
  if (v68(v67 + v66, 1, v69) == 1)
  {
    (*(v77 + 8))(v70, v69);
LABEL_68:
    v46 = sub_10008177C;
    v47 = v67;
    goto LABEL_53;
  }

  v71 = v77;
  (*(v77 + 32))(v34, v67 + v66, v69);
  sub_10008183C(&qword_100118468, &type metadata accessor for WidgetQuote, &protocol conformance descriptor for WidgetQuote);
  v72 = sub_1000DB8D0();
  v73 = *(v71 + 8);
  v73(v34, v69);
  v73(v70, v69);
  sub_10007DA7C(v67, sub_100023704);
  return (v72 & 1) != 0;
}

void sub_1000817BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_10008183C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100081884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreparedSparkline(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000818FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TickerCellViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_10007D058(0, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100081A30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TickerCellViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_10007D058(0, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_100081B7C(uint64_t a1)
{
  type metadata accessor for TickerCellViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_10007D058(319, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100081C4C(uint64_t a1)
{
  if (!qword_100118510)
  {
    sub_100081D94(255, &qword_100118518, sub_100081CE8, sub_100081D4C, &type metadata accessor for _ConditionalContent);
    v1 = sub_1000DB3A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100118510);
    }
  }
}

void sub_100081CE8(uint64_t a1)
{
  if (!qword_100118520)
  {
    sub_100081D4C(255);
    sub_10008279C();
    v1 = sub_1000DB0C0();
    if (!v2)
    {
      atomic_store(v1, &qword_100118520);
    }
  }
}

void sub_100081D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_100081E60(uint64_t a1)
{
  if (!qword_100118538)
  {
    sub_100081EF4(255);
    sub_10008183C(&qword_100118588, sub_100081EF4, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_100118538);
    }
  }
}

void sub_100081EF4(uint64_t a1)
{
  if (!qword_100118540)
  {
    sub_1000823D0(255, &qword_100118548, sub_100081F7C, sub_100082114);
    v1 = sub_1000DB650();
    if (!v2)
    {
      atomic_store(v1, &qword_100118540);
    }
  }
}

void sub_100081F9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100082BC8(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10008202C(uint64_t a1)
{
  if (!qword_100116710)
  {
    sub_100082688(255, &qword_100116718, type metadata accessor for SymbolTrendView, sub_100045460);
    v1 = sub_1000DB650();
    if (!v2)
    {
      atomic_store(v1, &qword_100116710);
    }
  }
}

void sub_1000820B4(uint64_t a1)
{
  if (!qword_100116728)
  {
    sub_1000DADF0();
    v1 = sub_1000DADB0();
    if (!v2)
    {
      atomic_store(v1, &qword_100116728);
    }
  }
}

void sub_100082134(uint64_t a1)
{
  if (!qword_100118560)
  {
    sub_1000821C8(255);
    sub_10008183C(&qword_100118580, sub_1000821C8, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100118560);
    }
  }
}

void sub_1000821FC(uint64_t a1)
{
  if (!qword_100118570)
  {
    sub_10008226C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_100118570);
    }
  }
}

void sub_1000822B4(uint64_t a1)
{
  if (!qword_100118590)
  {
    sub_100082348(255);
    sub_10008183C(&qword_100118600, sub_100082348, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_100118590);
    }
  }
}

void sub_100082348(uint64_t a1)
{
  if (!qword_100118598)
  {
    sub_1000823D0(255, &qword_1001185A0, sub_10008244C, sub_100082598);
    v1 = sub_1000DB650();
    if (!v2)
    {
      atomic_store(v1, &qword_100118598);
    }
  }
}

void sub_1000823D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10008246C(uint64_t a1)
{
  if (!qword_1001185B0)
  {
    sub_100082500(255);
    sub_10008183C(&qword_1001185C8, sub_100082500, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1001185B0);
    }
  }
}

void sub_10008253C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_100082688(255, a3, a4, a5);
    v6 = sub_1000DB650();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000825B8(uint64_t a1)
{
  if (!qword_1001185D8)
  {
    sub_10008264C(255);
    sub_10008183C(&qword_1001185F8, sub_10008264C, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1001185D8);
    }
  }
}

void sub_100082688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

unint64_t sub_10008279C()
{
  result = qword_100118610;
  if (!qword_100118610)
  {
    sub_100081D4C(255);
    sub_10008281C();
    sub_1000828F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118610);
  }

  return result;
}

unint64_t sub_10008281C()
{
  result = qword_100118618;
  if (!qword_100118618)
  {
    sub_100081E18(255);
    sub_10008183C(&qword_100118620, sub_100081E60, &protocol conformance descriptor for VStack<A>);
    sub_10008183C(&qword_100118628, sub_1000822B4, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118618);
  }

  return result;
}

unint64_t sub_1000828F8()
{
  result = qword_100118630;
  if (!qword_100118630)
  {
    sub_100082754(255);
    sub_10008183C(&qword_100118638, type metadata accessor for RowWithChartTicker, &unk_1000E6A24);
    sub_10008183C(&qword_100118640, type metadata accessor for LineTicker, &unk_1000E03B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118630);
  }

  return result;
}

void sub_1000829D8(uint64_t a1)
{
  if (!qword_100118648)
  {
    sub_100081C4C(255);
    sub_100082A5C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100118648);
    }
  }
}

unint64_t sub_100082A5C()
{
  result = qword_100118650;
  if (!qword_100118650)
  {
    sub_100081C4C(255);
    sub_100082AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118650);
  }

  return result;
}

unint64_t sub_100082AD4()
{
  result = qword_100118658;
  if (!qword_100118658)
  {
    sub_100081D94(255, &qword_100118518, sub_100081CE8, sub_100081D4C, &type metadata accessor for _ConditionalContent);
    sub_10008183C(&qword_100118660, sub_100081CE8, &protocol conformance descriptor for Link<A>);
    sub_10008279C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118658);
  }

  return result;
}

void sub_100082BC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100082C18(uint64_t a1)
{
  sub_100081D94(0, &qword_100118668, sub_1000829D8, &type metadata accessor for AccessibilityAttachmentModifier, &type metadata accessor for ModifiedContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100082CE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1000DA800();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_100082D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100082DEC()
{
  result = qword_1001186B8;
  if (!qword_1001186B8)
  {
    sub_100081D94(255, &qword_100118668, sub_1000829D8, &type metadata accessor for AccessibilityAttachmentModifier, &type metadata accessor for ModifiedContent);
    sub_100081C4C(255);
    sub_100082A5C();
    swift_getOpaqueTypeConformance2();
    sub_10008183C(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001186B8);
  }

  return result;
}

uint64_t sub_100082F1C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1000DA040();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_1000851A8(0, &qword_100118810, &type metadata accessor for NewsUserProfile, &type metadata accessor for Optional);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100083050, 0, 0);
}

uint64_t sub_100083050()
{
  v1 = v0[10];
  v0[11] = *(v0[4] + 56);
  sub_1000DA0D0();
  v2 = sub_1000D9510();
  v0[12] = v2;
  v3 = *(v2 - 8);
  v0[13] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[4];
    sub_100085138(v0[10], &qword_100118810, &type metadata accessor for NewsUserProfile);
    sub_100006C7C((v4 + 16), *(v4 + 40));
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_100083218;

    return sub_10005A770();
  }

  else
  {
    (*(v3 + 32))(v0[3], v0[10], v2);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100083218(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_1000837E8;
  }

  else
  {
    v4 = sub_10008332C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10008332C()
{
  v35 = v0;
  v1 = [*(v0 + 120) bundleSubscription];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 bundleChannelIDs];
    v4 = [v3 count];

    if (v4 > 0)
    {
      v5 = [*(v0 + 120) rankedAllSubscribedTagIDs];
      if (v5)
      {
        v6 = v5;
        sub_1000DBB10();
      }

      v14 = [*(v0 + 120) mutedTagIDs];
      if (!v14)
      {
        goto LABEL_12;
      }

      v15 = v14;
      v16 = sub_1000DBCA0();

      v17 = v16[2];
      if (v17)
      {
        while (1)
        {
          v18 = sub_100084840(v17, 0);
          v19 = sub_100084E78(&v34, v18 + 4, v17, v16);
          sub_100084FD0(v34);
          if (v19 == v17)
          {
            break;
          }

          __break(1u);
LABEL_12:
          v16 = _swiftEmptySetSingleton;
          v17 = _swiftEmptySetSingleton[2];
          if (!v17)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
      }

      v20 = [*(v0 + 120) autoFavoriteTagIDs];
      if (v20)
      {
        v21 = v20;
        sub_1000DBB10();
      }

      v22 = [*(v0 + 120) purchasedTagIDs];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1000DBCA0();

        v25 = v24[2];
        if (v25)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v24 = _swiftEmptySetSingleton;
        v25 = _swiftEmptySetSingleton[2];
        if (v25)
        {
LABEL_18:
          v26 = sub_100084840(v25, 0);
          v27 = sub_100084E78(&v34, v26 + 4, v25, v24);
          result = sub_100084FD0(v34);
          if (v27 != v25)
          {
            __break(1u);
            return result;
          }

          goto LABEL_22;
        }
      }

LABEL_22:
      v30 = *(v0 + 96);
      v29 = *(v0 + 104);
      v31 = *(v0 + 72);
      v32 = *(v0 + 24);
      v33 = v2;
      sub_1000D94F0();
      (*(v29 + 16))(v31, v32, v30);
      (*(v29 + 56))(v31, 0, 1, v30);
      sub_1000DA0E0();

      swift_unknownObjectRelease();

      v13 = *(v0 + 8);
      goto LABEL_23;
    }

    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    type metadata accessor for TodayPrivateDataError(0);
    sub_1000847F8(&qword_100118818, 255, type metadata accessor for TodayPrivateDataError, &unk_1000E3390);
    swift_allocError();
    (*(v11 + 56))(v12, 2, 2, v10);
    swift_willThrow();
  }

  else
  {
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    type metadata accessor for TodayPrivateDataError(0);
    sub_1000847F8(&qword_100118818, 255, type metadata accessor for TodayPrivateDataError, &unk_1000E3390);
    swift_allocError();
    (*(v8 + 56))(v9, 1, 2, v7);
    swift_willThrow();
  }

  swift_unknownObjectRelease();

  v13 = *(v0 + 8);
LABEL_23:

  return v13();
}

uint64_t sub_1000837E8()
{
  v0[2] = v0[16];
  swift_errorRetain();
  sub_10006D25C();
  if (swift_dynamicCast())
  {
    v2 = v0[7];
    v1 = v0[8];
    v3 = v0[5];
    v4 = v0[6];

    (*(v4 + 32))(v2, v1, v3);
    type metadata accessor for TodayPrivateDataError(0);
    sub_1000847F8(&qword_100118818, 255, type metadata accessor for TodayPrivateDataError, &unk_1000E3390);
    swift_allocError();
    v6 = v5;
    (*(v4 + 16))(v5, v2, v3);
    (*(v4 + 56))(v6, 0, 2, v3);
    swift_willThrow();
    (*(v4 + 8))(v2, v3);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000839BC()
{
  sub_100006D0C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_100083A24(uint64_t a1)
{
  result = sub_1000DA370();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100083AC0()
{
  sub_1000851A8(0, &qword_100118808, &type metadata accessor for NewsUserProfile, &type metadata accessor for Promise);

  return sub_1000DA120();
}

uint64_t sub_100083CCC()
{
  sub_100084FD8();
  swift_allocError();
  sub_1000851A8(0, &qword_100118828, &type metadata accessor for RemoteNotificationFetchResult, &type metadata accessor for Promise);
  swift_allocObject();
  return sub_1000DA150();
}

uint64_t sub_100083D58()
{
  v1 = sub_1000DA370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v12 = sub_1000D9510();
  sub_1000DA180();
  v16 = qword_100128F28;
  v14 = *(v2 + 16);
  v14(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + qword_100128F28, v1);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v13 = *(v2 + 32);
  v13(v5 + v4, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v6 = sub_1000DA100();
  v12 = sub_1000DA130();

  v14(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v16, v1);
  v7 = swift_allocObject();
  v13(v7 + v4, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v8 = sub_1000DA100();
  v9 = sub_1000DA140();

  return v9;
}

uint64_t sub_100083F98(uint64_t *a1)
{
  v1 = sub_1000DA350();
  v2 = sub_1000DBDD0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "fetching news user profile", v3, 2u);
  }

  return sub_1000D98F0();
}

uint64_t sub_10008407C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_1000DBF50(60);
  v16._countAndFlagsBits = 40;
  v16._object = 0xE100000000000000;
  sub_1000DBA00(v16);
  sub_1000D94E0();

  v17._countAndFlagsBits = sub_1000DC320();
  sub_1000DBA00(v17);

  v18._countAndFlagsBits = 0x6154646574756D20;
  v18._object = 0xEE00202C73444967;
  sub_1000DBA00(v18);
  v4 = sub_1000D9500();
  v5 = [v4 bundleChannelIDs];

  [v5 count];
  v19._countAndFlagsBits = sub_1000DC320();
  sub_1000DBA00(v19);

  v20._object = 0x80000001000E9090;
  v20._countAndFlagsBits = 0xD000000000000013;
  sub_1000DBA00(v20);
  v6 = sub_1000D9500();
  v7 = [v6 subscriptionState];

  v15[3] = v7;
  type metadata accessor for FCSubscriptionState(0);
  sub_1000DC0C0();
  v21._countAndFlagsBits = 0xD000000000000014;
  v21._object = 0x80000001000E90B0;
  sub_1000DBA00(v21);

  v8 = sub_1000DA350();
  v9 = sub_1000DBDD0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136446210;
    v12 = sub_1000848C8(0, 0xE000000000000000, v15);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "fetched news user profile: %{public}s", v10, 0xCu);
    sub_100006D0C(v11);
  }

  else
  {
  }

  v13 = sub_1000D9510();
  return (*(*(v13 - 8) + 16))(a2, a1, v13);
}

void sub_100084388(uint64_t a1)
{
  swift_errorRetain();
  oslog = sub_1000DA350();
  v1 = sub_1000DBDB0();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138543362;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "failed to fetch news user profile with error: %{public}@", v2, 0xCu);
    sub_100085138(v3, &qword_100114B48, sub_100006CC0);
  }
}

uint64_t sub_100084500()
{
  swift_unknownObjectRelease();
  v1 = qword_100128F28;
  v2 = sub_1000DA370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100084568()
{
  sub_100084500();

  return swift_deallocClassInstance();
}

unint64_t sub_1000845EC()
{
  result = qword_1001187F0;
  if (!qword_1001187F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001187F0);
  }

  return result;
}

uint64_t sub_100084710(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000ECF4;

  return sub_100082F1C(a1, v1);
}

uint64_t type metadata accessor for TodayPrivateDataError(uint64_t a1)
{
  result = qword_1001188A8;
  if (!qword_1001188A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000847F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_100084840(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100024A74(0, &qword_100115350, &type metadata for String);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_1000848C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100084994(v11, 0, 0, 1, a1, a2);
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
    sub_100061EC4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006D0C(v11);
  return v7;
}

unint64_t sub_100084994(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100084AA0(a5, a6);
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
    result = sub_1000DC010();
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

void *sub_100084AA0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100084AEC(a1, a2);
  sub_100084C1C(&off_100108B00);
  return v3;
}

void *sub_100084AEC(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100084D08(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000DC010();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000DBA10();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100084D08(v10, 0);
        result = sub_1000DBF40();
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

void sub_100084C1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_100084D80(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100084D08(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100024A74(0, &qword_100118830, &type metadata for UInt8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100084D80(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024A74(0, &qword_100118830, &type metadata for UInt8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100084E78(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_100084FD8()
{
  result = qword_100118820;
  if (!qword_100118820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118820);
  }

  return result;
}

void sub_1000850C8(uint64_t a1)
{
  sub_1000DA370();

  sub_100084388(a1);
}

uint64_t sub_100085138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1000851A8(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1000851A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100085230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA040();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000852B0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000DA040();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100085334(uint64_t a1)
{
  v1 = sub_1000DA040();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_100085390()
{
  result = qword_1001188D8;
  if (!qword_1001188D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001188D8);
  }

  return result;
}

unint64_t sub_100085410()
{
  result = qword_1001188E0;
  if (!qword_1001188E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001188E0);
  }

  return result;
}

uint64_t sub_100085474@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 56) = xmmword_1000DE450;
  v4 = objc_opt_self();
  *(a3 + 72) = [v4 blackColor];
  *(a3 + 80) = [v4 whiteColor];
  *(a3 + 88) = [objc_allocWithZone(UIColor) initWithRed:0.490196078 green:0.498039216 blue:0.498039216 alpha:1.0];
  *(a3 + 96) = [objc_allocWithZone(UIColor) initWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
  *(a3 + 104) = [objc_allocWithZone(UIColor) initWithRed:0.882352941 green:0.960784314 blue:0.905882353 alpha:1.0];
  *(a3 + 112) = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.490196078 blue:0.105882353 alpha:1.0];
  *(a3 + 120) = [objc_allocWithZone(UIColor) initWithRed:0.203921569 green:0.780392157 blue:0.349019608 alpha:1.0];
  *(a3 + 128) = [objc_allocWithZone(UIColor) initWithRed:0.247058824 green:0.941176471 blue:0.419607843 alpha:1.0];
  *(a3 + 136) = [objc_allocWithZone(UIColor) initWithRed:0.870588235 green:0.0274509804 blue:0.109803922 alpha:1.0];
  *(a3 + 144) = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  *(a3 + 152) = [objc_allocWithZone(UIColor) initWithRed:0.231372549 green:0.588235294 blue:0.97254902 alpha:1.0];
  *(a3 + 160) = [objc_allocWithZone(UIColor) initWithRed:0.501960784 green:0.501960784 blue:0.501960784 alpha:1.0];
  *(a3 + 168) = [objc_allocWithZone(UIColor) initWithRed:0.329411765 green:0.329411765 blue:0.329411765 alpha:1.0];
  *(a3 + 176) = [v4 secondaryLabelColor];
  *(a3 + 184) = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:0.12];
  *(a3 + 192) = [objc_allocWithZone(UIColor) initWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:1.0];
  *(a3 + 200) = [objc_allocWithZone(UIColor) initWithRed:0.352941176 green:0.784313725 blue:0.980392157 alpha:1.0];
  *(a3 + 208) = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.592156863 blue:1.0 alpha:1.0];
  *(a3 + 216) = [objc_allocWithZone(UIColor) initWithRed:0.552941176 green:0.294117647 blue:1.0 alpha:1.0];
  *(a3 + 224) = [objc_allocWithZone(UIColor) initWithRed:0.407843137 green:0.0 blue:1.0 alpha:1.0];
  *(a3 + 232) = 1;
  *(a3 + 240) = [objc_allocWithZone(UIColor) initWithWhite:0.670588235 alpha:1.0];
  v5 = [v4 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.25];

  *(a3 + 248) = v6;
  v7 = [v4 blackColor];
  v8 = [v7 colorWithAlphaComponent:0.25];

  *(a3 + 256) = v8;
  v9 = [v4 blackColor];
  v10 = [v9 colorWithAlphaComponent:0.6];

  *(a3 + 264) = v10;
  v11 = [v4 grayColor];
  v12 = [v11 colorWithAlphaComponent:0.3];

  *(a3 + 272) = v12;
  *(a3 + 280) = [objc_allocWithZone(UIColor) initWithRed:0.365 green:0.365 blue:0.365 alpha:1.0];
  *(a3 + 288) = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  *(a3 + 296) = [v4 whiteColor];
  sub_100068510();
  *(a3 + 304) = sub_1000DBE40();
  *(a3 + 312) = [v4 secondaryLabelColor];
  v13 = [v4 whiteColor];
  v14 = [v4 secondarySystemBackgroundColor];
  v15 = [v4 ts_dynamicColor:v13 withDarkStyleVariant:v14];

  *(a3 + 320) = v15;
  *(a3 + 328) = [v4 secondaryLabelColor];
  *(a3 + 336) = [v4 labelColor];
  *(a3 + 344) = [v4 systemBackgroundColor];
  *(a3 + 352) = [objc_allocWithZone(UIColor) initWithRed:0.933333333 green:0.933333333 blue:0.937254902 alpha:1.0];
  *(a3 + 360) = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  *(a3 + 368) = [v4 separatorColor];
  *(a3 + 376) = [v4 secondaryLabelColor];
  *(a3 + 384) = [v4 labelColor];
  result = sub_100023738(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_100085B7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100085BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100085C78(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = [v2 horizontalSizeClass];
    if (v3 >= 2)
    {
      if (v3 != 2)
      {
        result = sub_1000DC0D0();
        __break(1u);
        return result;
      }

      goto LABEL_9;
    }
  }

  if ((sub_1000DB5C0() & 1) == 0)
  {
LABEL_9:
    sub_100068510();
    return sub_1000DBE40();
  }

  v4 = [objc_opt_self() clearColor];

  return v4;
}

id sub_100085D9C(uint64_t a1)
{
  if (sub_1000DB5C0())
  {
    v1 = [objc_opt_self() clearColor];

    return v1;
  }

  else
  {
    sub_100068510();
    return sub_1000DBE40();
  }
}

id sub_100085E1C(uint64_t a1)
{
  sub_1000DB5C0();
  v1 = sub_1000DB5C0();
  v2 = objc_opt_self();
  v3 = &selRef_tertiarySystemFillColor;
  if ((v1 & 1) == 0)
  {
    v3 = &selRef_systemWhiteColor;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_100085E84(uint64_t a1)
{
  sub_1000DB5C0();
  v2 = *(v1 + 96);

  return v2;
}

id sub_100085EB0()
{
  v1 = UIAccessibilityDarkerSystemColorsEnabled();
  v2 = 120;
  if (v1)
  {
    v2 = 112;
  }

  v3 = *(v0 + v2);

  return v3;
}

id sub_100085EEC()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v1 = 128;
  }

  else
  {
    v2 = UIAccessibilityDarkerSystemColorsEnabled();
    v1 = 120;
    if (v2)
    {
      v1 = 112;
    }
  }

  v3 = *(v0 + v1);

  return v3;
}

id sub_100085F3C()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v1 = UIAccessibilityDarkerSystemColorsEnabled();
    v2 = 120;
    if (v1)
    {
      v2 = 112;
    }
  }

  else
  {
    v2 = 192;
  }

  v3 = *(v0 + v2);

  return v3;
}

id sub_100085F88(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = sub_1000DB5C0();
  v7 = objc_opt_self();
  if (v6)
  {
    v8 = a3;
  }

  else
  {
    v8 = a4;
  }

  v9 = [v7 *v8];

  return v9;
}

uint64_t sub_100086048(void *a1)
{
  sub_100087514(0, &qword_1001189B8, &type metadata accessor for KeyedEncodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v9[-v6];
  sub_100006C7C(a1, a1[3]);
  sub_100087400();
  sub_1000DC480();
  v9[15] = 0;
  sub_1000D9690();
  sub_100087578(&qword_1001171E0, &type metadata accessor for PriceChangeDisplay, &protocol conformance descriptor for PriceChangeDisplay);
  sub_1000DC2F0();
  if (!v1)
  {
    _s11FormatStyleVMa_0(0);
    v9[14] = 1;
    sub_1000DC2C0();
    v9[13] = 2;
    sub_1000DC2C0();
    v9[12] = 3;
    sub_1000DC2C0();
    v9[11] = 4;
    sub_1000DC2B0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10008629C(uint64_t a1)
{
  sub_1000D9690();
  sub_100087578(&qword_1001189C0, &type metadata accessor for PriceChangeDisplay, &protocol conformance descriptor for PriceChangeDisplay);
  sub_1000DB880();
  v2 = _s11FormatStyleVMa_0(0);
  sub_1000DC440(*(v1 + v2[5]));
  sub_1000DC440(*(v1 + v2[6]));
  sub_1000DC440(*(v1 + v2[7]));

  return sub_1000DB9F0();
}

Swift::Int sub_10008636C()
{
  sub_1000DC420();
  sub_1000D9690();
  sub_100087578(&qword_1001189C0, &type metadata accessor for PriceChangeDisplay, &protocol conformance descriptor for PriceChangeDisplay);
  sub_1000DB880();
  v1 = _s11FormatStyleVMa_0(0);
  sub_1000DC440(*(v0 + v1[5]));
  sub_1000DC440(*(v0 + v1[6]));
  sub_1000DC440(*(v0 + v1[7]));
  sub_1000DB9F0();
  return sub_1000DC460();
}

uint64_t sub_100086450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1000D9690();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100087514(0, &qword_1001189A8, &type metadata accessor for KeyedDecodingContainer);
  v27 = v6;
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = _s11FormatStyleVMa_0(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C7C(a1, a1[3]);
  sub_100087400();
  sub_1000DC470();
  if (v2)
  {
    return sub_100006D0C(a1);
  }

  v12 = v24;
  v32 = 0;
  sub_100087578(&qword_1001171B8, &type metadata accessor for PriceChangeDisplay, &protocol conformance descriptor for PriceChangeDisplay);
  sub_1000DC220();
  (*(v12 + 32))(v11, v26, v4);
  v31 = 1;
  v11[v9[5]] = sub_1000DC1F0() & 1;
  v30 = 2;
  v13 = sub_1000DC1F0();
  v14 = v25;
  v11[v9[6]] = v13 & 1;
  v29 = 3;
  v11[v9[7]] = sub_1000DC1F0() & 1;
  v28 = 4;
  v15 = sub_1000DC1E0();
  v16 = v9;
  v18 = v17;
  v19 = v14;
  v20 = &v11[v16[8]];
  (*(v19 + 8))(v8, v27);
  *v20 = v15;
  v20[1] = v18;
  sub_100087454(v11, v23);
  sub_100006D0C(a1);
  return sub_1000874B8(v11);
}

unint64_t sub_100086850()
{
  v1 = *v0;
  v2 = 0x79616C70736964;
  v3 = 0xD000000000000010;
  v4 = 0x6B61657053726F66;
  if (v1 != 3)
  {
    v4 = 0x6B6361626C6C6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6665725065646968;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100086904@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100087818(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100086938(uint64_t a1)
{
  v2 = sub_100087400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086974(uint64_t a1)
{
  v2 = sub_100087400();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000869B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100086C3C(*a1, *(a1 + 8), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  *a2 = result;
  a2[1] = v4;
  return result;
}

Swift::Int sub_100086A2C(uint64_t a1, int *a2)
{
  sub_1000DC420();
  sub_1000D9690();
  sub_100087578(&qword_1001189C0, &type metadata accessor for PriceChangeDisplay, &protocol conformance descriptor for PriceChangeDisplay);
  sub_1000DB880();
  sub_1000DC440(*(v2 + a2[5]));
  sub_1000DC440(*(v2 + a2[6]));
  sub_1000DC440(*(v2 + a2[7]));
  sub_1000DB9F0();
  return sub_1000DC460();
}

uint64_t sub_100086B08(uint64_t a1, uint64_t a2)
{
  sub_1000D9690();
  sub_100087578(&qword_1001189C8, &type metadata accessor for PriceChangeDisplay, &protocol conformance descriptor for PriceChangeDisplay);
  sub_1000DBAD0();
  sub_1000DBAD0();
  if (v13 == v12 && (v4 = _s11FormatStyleVMa_0(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    v7 = v4[8];
    v8 = *(a1 + v7);
    v9 = *(a1 + v7 + 8);
    v10 = (a2 + v7);
    if (v8 == *v10 && v9 == v10[1])
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1000DC360();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100086C3C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v40 = a3;
  v41 = a5;
  v39 = *&a1;
  v10 = sub_1000D91C0();
  v38 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000D9690();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v6;
  (*(v14 + 16))(v17, v6, v13, v15);
  v19 = (*(v14 + 88))(v17, v13);
  if (v19 == enum case for PriceChangeDisplay.currency(_:))
  {
    if ((a4 & 1) == 0 && (a2 & 1) == 0)
    {
      v20 = *&v40;
      v21 = v39 == 0.0 || v39 >= 5.0;
      v22 = _s11FormatStyleVMa_0(0);
      if (*(v18 + v22[7]) == 1)
      {
        v23 = sub_100087B64(v21, v20);
        if (!v24)
        {
LABEL_9:
          v25 = (v18 + v22[8]);
          v26 = *v25;
          v27 = v25[1];

          goto LABEL_27;
        }
      }

      else
      {
        v23 = sub_100087A54(v21, v20);
        if (!v24)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v19 == enum case for PriceChangeDisplay.percentage(_:))
  {
    if ((a2 & 1) == 0 && (a4 & 1) == 0)
    {
      v28 = v39;
      v29 = *&v40;
      v30 = _s11FormatStyleVMa_0(0);
      v22 = v30;
      if (*(v6 + *(v30 + 28)) == 1)
      {
        v23 = sub_1000D6520(v28, v29);
        if (!v24)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v23 = sub_1000D63C0(*(v6 + *(v30 + 20)), v28, v29);
        if (!v24)
        {
          goto LABEL_9;
        }
      }

LABEL_26:
      v26 = v23;
      v27 = v24;
LABEL_27:
      _s11FormatStyleVMa_0(0);
      if (*(v18 + v22[6]) == 1)
      {
        v46 = v26;
        v47 = v27;
        v44 = 32;
        v45 = 0xE100000000000000;
        v42 = 0;
        v43 = 0xE000000000000000;
        sub_100017740();
        v26 = sub_1000DBEA0();
      }

      return v26;
    }

LABEL_23:
    v26 = *(v6 + *(_s11FormatStyleVMa_0(0) + 32));

    return v26;
  }

  if (v19 == enum case for PriceChangeDisplay.marketCapitalization(_:))
  {
    if ((a6 & 1) == 0)
    {
      if (qword_1001140C0 != -1)
      {
        swift_once();
      }

      v31 = _s11FormatStyleVMa_0(0);
      if (v41 >= 1)
      {
        v22 = v31;
        v32 = *(v6 + *(v31 + 28));
        v33 = *(qword_100128E70 + 16);
        sub_1000D9170();
        isa = sub_1000D9130().super.isa;
        (*(v38 + 8))(v12, v10);
        v35 = [v33 formattedCount:v41 withLocale:isa longform:v32 compactDisplay:0];

        if (v35)
        {
          v26 = sub_1000DB950();
          v27 = v36;

          goto LABEL_27;
        }
      }
    }

    goto LABEL_23;
  }

  result = sub_1000DC350();
  __break(1u);
  return result;
}

uint64_t _s11FormatStyleVMa_0(uint64_t a1)
{
  result = qword_100118940;
  if (!qword_100118940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000870C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D9690();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008719C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000D9690();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100087258(uint64_t a1)
{
  result = sub_1000D9690();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100087400()
{
  result = qword_1001189B0;
  if (!qword_1001189B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189B0);
  }

  return result;
}

uint64_t sub_100087454(uint64_t a1, uint64_t a2)
{
  v4 = _s11FormatStyleVMa_0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000874B8(uint64_t a1)
{
  v2 = _s11FormatStyleVMa_0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100087514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100087400();
    v7 = a3(a1, &_s11FormatStyleV10CodingKeysON_0, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100087578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s11FormatStyleV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11FormatStyleV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100087714()
{
  result = qword_1001189D0;
  if (!qword_1001189D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189D0);
  }

  return result;
}

unint64_t sub_10008776C()
{
  result = qword_1001189D8;
  if (!qword_1001189D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189D8);
  }

  return result;
}

unint64_t sub_1000877C4()
{
  result = qword_1001189E0;
  if (!qword_1001189E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189E0);
  }

  return result;
}

uint64_t sub_100087818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C70736964 && a2 == 0xE700000000000000;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6665725065646968 && a2 == 0xEA00000000007869 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000E90F0 == a2 || (sub_1000DC360() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B61657053726F66 && a2 == 0xEB00000000676E69 || (sub_1000DC360() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000074786554)
  {

    return 4;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000879E0()
{
  type metadata accessor for PriceFormatter(0);
  v0 = swift_allocObject();
  result = sub_1000D9140();
  qword_100128F30 = v0;
  return result;
}

uint64_t sub_100087A54(char a1, double a2)
{
  if (qword_100114140 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v3 = sub_10002999C(a1, 3, 0, a2);
  [v3 setNumberStyle:1];
  v4 = [objc_allocWithZone(NSNumber) initWithDouble:a2];
  v5 = [v3 stringFromNumber:v4];

  if (v5)
  {
    v6 = sub_1000DB950();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_100087B64(char a1, double a2)
{
  if (qword_100114140 != -1)
  {
    v24 = a1;
    swift_once();
    a1 = v24;
  }

  v3 = fabs(a2);
  v4 = sub_10002999C(a1, 3, 1, v3);
  [v4 setNumberStyle:1];
  v5 = [objc_allocWithZone(NSNumber) initWithDouble:v3];
  v6 = [v4 stringFromNumber:v5];

  if (v6)
  {
    v7 = sub_1000DB950();
    v9 = v8;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = objc_opt_self();
    v12 = [v11 bundleForClass:ObjCClassFromMetadata];
    v27._countAndFlagsBits = 0xD000000000000013;
    v25._countAndFlagsBits = 0x80000001000E9160;
    v27._object = 0x80000001000E9140;
    v28.value._countAndFlagsBits = 0;
    v28.value._object = 0;
    v13.super.isa = v12;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    sub_1000D8E50(v27, v28, v13, v30, 0xD00000000000002BLL, v25);

    v14 = [v11 bundleForClass:ObjCClassFromMetadata];
    if (a2 >= 0.0)
    {
      v26._countAndFlagsBits = 0x80000001000E91D0;
      v15._countAndFlagsBits = 28789;
      v15._object = 0xE200000000000000;
    }

    else
    {
      v26._countAndFlagsBits = 0x80000001000E9190;
      v15._countAndFlagsBits = 1853321060;
      v15._object = 0xE400000000000000;
    }

    v29.value._countAndFlagsBits = 0;
    v29.value._object = 0;
    v17.super.isa = v14;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v18 = sub_1000D8E50(v15, v29, v17, v31, 0xD000000000000030, v26);
    v20 = v19;

    sub_1000029E8(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000DE440;
    *(v21 + 56) = &type metadata for Double;
    *(v21 + 64) = &protocol witness table for Double;
    *(v21 + 32) = v3;
    *(v21 + 96) = &type metadata for String;
    v22 = sub_100002AAC();
    *(v21 + 72) = v18;
    *(v21 + 80) = v20;
    *(v21 + 136) = &type metadata for String;
    *(v21 + 144) = v22;
    *(v21 + 104) = v22;
    *(v21 + 112) = v7;
    *(v21 + 120) = v9;
    v16 = sub_1000DB920();
  }

  else
  {

    return 0;
  }

  return v16;
}

uint64_t sub_100087E54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1000638B4(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_100023694(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_100087FBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1000638B4(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_100023694(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t type metadata accessor for MediumDetailWithNewsContentView(uint64_t a1)
{
  result = qword_100118AD8;
  if (!qword_100118AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100088178@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  sub_1000637C8(0, &qword_1001177E0, type metadata accessor for HeadlinesList);
  v74 = v3;
  __chkstk_darwin(v3);
  v77 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v75 = &v61[-v6];
  sub_100063768(0);
  v73 = v7;
  __chkstk_darwin(v7);
  v76 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v80 = &v61[-v10];
  sub_1000637C8(0, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  v71 = v11;
  __chkstk_darwin(v11);
  v79 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v61[-v14];
  LODWORD(v70) = *(a1 + 80);
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[3];
  v68 = a1[2];
  v69 = v16;
  v19 = a1[5];
  v67 = a1[4];
  v20 = a1[6];
  v21 = a1[7];
  v65 = v17;
  v66 = v20;
  v22 = a1[8];
  v23 = a1[9];
  v24 = *(a1 + 13);
  v93[0] = *(a1 + 11);
  v93[1] = v24;
  v94[0] = *(a1 + 15);
  *(v94 + 9) = *(a1 + 129);
  v25 = *(a1 + 13);
  v95 = *(a1 + 11);
  v96 = v25;
  v97[0] = *(a1 + 15);
  *(v97 + 9) = *(a1 + 129);
  v72 = type metadata accessor for MediumDetailWithNewsContentView(0);
  v26 = *(v72 + 36);
  v27 = type metadata accessor for RowWithChartTicker(0);
  sub_100024964(a1 + v26, &v15[*(v27 + 36)]);
  v28 = v96;
  *(v15 + 88) = v95;
  *v15 = v70;
  v29 = v68;
  v30 = v65;
  v31 = v66;
  *(v15 + 1) = v69;
  *(v15 + 2) = v30;
  *(v15 + 3) = v29;
  *(v15 + 4) = v18;
  *(v15 + 5) = v67;
  *(v15 + 6) = v19;
  *(v15 + 7) = v31;
  *(v15 + 8) = v21;
  *(v15 + 9) = v22;
  *(v15 + 10) = v23;
  *(v15 + 104) = v28;
  *(v15 + 120) = v97[0];
  *(v15 + 129) = *(v97 + 9);
  v70 = v27;
  v32 = *(v27 + 40);

  sub_10002B054(v31, v21, v22, v23);
  sub_10002B068(v93, &v81);
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  sub_100063858(0, &qword_1001141F8, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for SettingProperty);
  swift_allocObject();

  *&v15[v32] = sub_1000D9DD0();
  v33 = *(v70 + 44);
  *&v15[v33] = swift_getKeyPath();
  sub_1000638B4(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 1;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  v36 = &v15[*(v71 + 36)];
  *v36 = KeyPath;
  v36[1] = sub_10002B050;
  v36[2] = v35;
  sub_1000DB600();
  sub_1000DA7A0();
  v70 = v89;
  v71 = v87;
  v68 = v92;
  v69 = v91;
  v100 = 1;
  v99 = v88;
  v98 = v90;
  v37 = v80;
  sub_1000DB560();
  v38 = swift_getKeyPath();
  v39 = &v37[*(v73 + 36)];
  *v39 = 1;
  *(v39 + 1) = v38;
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = 0;
  v39[40] = 0;
  sub_1000DB600();
  sub_1000DA7A0();
  v73 = v81;
  v66 = v85;
  v67 = v83;
  v65 = v86;
  v103 = 1;
  v102 = v82;
  v101 = v84;
  v40 = *(v72 + 40);
  sub_100023694(0);
  v42 = v75;
  (*(*(v41 - 8) + 16))(v75, a1 + v40, v41);
  v43 = sub_1000DA1E0();
  v44 = type metadata accessor for HeadlinesList(0);
  *(v42 + *(v44 + 20)) = v43;
  *(v42 + *(v44 + 24)) = 0x4028000000000000;
  v45 = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 40) = 1;
  v47 = (v42 + *(v74 + 36));
  *v47 = v45;
  v47[1] = sub_10002B5D4;
  v47[2] = v46;
  v48 = v79;
  sub_100063934(v15, v79, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  v49 = v100;
  v62 = v99;
  v63 = v98;
  v50 = v76;
  sub_1000639A0(v37, v76);
  v64 = v103;
  LODWORD(v72) = v102;
  LODWORD(v74) = v101;
  v51 = v77;
  sub_100063934(v42, v77, &qword_1001177E0, type metadata accessor for HeadlinesList);
  v52 = v48;
  v53 = v78;
  sub_100063934(v52, v78, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  sub_10006361C(0);
  v55 = v54;
  v56 = v53 + *(v54 + 48);
  *v56 = 0;
  *(v56 + 8) = v49;
  *(v56 + 16) = v71;
  *(v56 + 24) = v62;
  *(v56 + 32) = v70;
  *(v56 + 40) = v63;
  v57 = v68;
  *(v56 + 48) = v69;
  *(v56 + 56) = v57;
  sub_1000639A0(v50, v53 + *(v54 + 64));
  v58 = v53 + *(v55 + 80);
  *v58 = 0;
  *(v58 + 8) = v64;
  *(v58 + 16) = v73;
  *(v58 + 24) = v72;
  *(v58 + 32) = v67;
  *(v58 + 40) = v74;
  v59 = v65;
  *(v58 + 48) = v66;
  *(v58 + 56) = v59;
  sub_100063934(v51, v53 + *(v55 + 96), &qword_1001177E0, type metadata accessor for HeadlinesList);
  sub_100063A60(v42, &qword_1001177E0, type metadata accessor for HeadlinesList);
  sub_100063A04(v80);
  sub_100063A60(v15, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  sub_100063A60(v51, &qword_1001177E0, type metadata accessor for HeadlinesList);
  sub_100063A04(v50);
  return sub_100063A60(v79, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
}

uint64_t sub_10008891C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1000DAD00();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_100063584(0);
  return sub_100088178(v2, a2 + *(v4 + 44));
}

uint64_t sub_1000889A0(uint64_t a1, uint64_t a2)
{
  sub_100023694(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100088A20(uint64_t a1, uint64_t a2)
{
  sub_100023694(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for HeadlinesList(uint64_t a1)
{
  result = qword_100118B80;
  if (!qword_100118B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100088ADC(uint64_t a1)
{
  sub_100023694(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100088B7C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for HeadlinesList(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for HeadlineView(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089370(0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089754(a1, v12, type metadata accessor for HeadlineViewModel);
  v17 = *(v10 + 28);
  *&v12[v17] = swift_getKeyPath();
  sub_1000897C0(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  sub_1000DB5E0();
  sub_1000DA9A0();
  sub_10008997C(v12, v16, type metadata accessor for HeadlineView);
  v18 = &v16[*(v14 + 44)];
  v19 = v27[5];
  *(v18 + 4) = v27[4];
  *(v18 + 5) = v19;
  *(v18 + 6) = v27[6];
  v20 = v27[1];
  *v18 = v27[0];
  *(v18 + 1) = v20;
  v21 = v27[3];
  *(v18 + 2) = v27[2];
  *(v18 + 3) = v21;
  KeyPath = swift_getKeyPath();
  sub_100089754(a2, v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadlinesList);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  sub_10008997C(v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for HeadlinesList);
  sub_10008997C(v16, a3, sub_100089370);
  sub_100089308(0);
  v26 = (a3 + *(v25 + 36));
  *v26 = KeyPath;
  v26[1] = sub_1000898F8;
  v26[2] = v24;
}

void sub_100088E9C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1 - 8;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  sub_100023694(0);
  v9 = v8;
  v10 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + *(v5 + 28));
  if (v13 < 1)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v2 + *(a1 + 24));
    *a2 = 1;
    a2[1] = 0;
    a2[2] = v13;
    a2[3] = v14;
    sub_100089114(0);
    (*(v10 + 16))(v12, v2, v9);
    sub_100089754(v2, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadlinesList);
    v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v16 = swift_allocObject();
    sub_10008997C(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for HeadlinesList);
    sub_100089308(0);
    sub_100089420();
    sub_1000895F4();
    sub_100089528(&qword_100118C18, type metadata accessor for HeadlineViewModel, &unk_1000E4A34);
    sub_1000DB590();
  }
}

void sub_100089114(uint64_t a1)
{
  if (!qword_100118BC0)
  {
    sub_1000891C0(255);
    sub_100089270(255);
    sub_100089528(&qword_100118C00, sub_1000891C0, &protocol conformance descriptor for _LayoutRoot<A>);
    v1 = sub_1000DA800();
    if (!v2)
    {
      atomic_store(v1, &qword_100118BC0);
    }
  }
}

void sub_1000891C0(uint64_t a1)
{
  if (!qword_100118BC8)
  {
    sub_10008921C();
    v1 = sub_1000DA740();
    if (!v2)
    {
      atomic_store(v1, &qword_100118BC8);
    }
  }
}

unint64_t sub_10008921C()
{
  result = qword_100118BD0;
  if (!qword_100118BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118BD0);
  }

  return result;
}

void sub_100089270(uint64_t a1)
{
  if (!qword_100118BD8)
  {
    sub_100023694(255);
    sub_100089308(255);
    sub_100089420();
    v1 = sub_1000DB5A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100118BD8);
    }
  }
}

void sub_100089308(uint64_t a1)
{
  if (!qword_100118BE0)
  {
    sub_100089370(255);
    sub_1000893D0();
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100118BE0);
    }
  }
}

void sub_100089370(uint64_t a1)
{
  if (!qword_100118BE8)
  {
    type metadata accessor for HeadlineView(255);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100118BE8);
    }
  }
}

void sub_1000893D0()
{
  if (!qword_100115740)
  {
    v0 = sub_1000DAEC0();
    if (!v1)
    {
      atomic_store(v0, &qword_100115740);
    }
  }
}

unint64_t sub_100089420()
{
  result = qword_100118BF0;
  if (!qword_100118BF0)
  {
    sub_100023694(255);
    sub_1000894B4(&qword_100118BF8, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118BF0);
  }

  return result;
}

uint64_t sub_1000894B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000897C0(255, &qword_1001152C8, type metadata accessor for HeadlineViewModel, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100089528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100089574(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeadlinesList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100088B7C(a1, v6, a2);
}

unint64_t sub_1000895F4()
{
  result = qword_100118C08;
  if (!qword_100118C08)
  {
    sub_100089308(255);
    sub_1000896A4();
    sub_100089528(&qword_100116BE8, sub_1000893D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C08);
  }

  return result;
}

unint64_t sub_1000896A4()
{
  result = qword_100118C10;
  if (!qword_100118C10)
  {
    sub_100089370(255);
    sub_100089528(&qword_1001165F8, type metadata accessor for HeadlineView, &unk_1000E4BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C10);
  }

  return result;
}

uint64_t sub_100089754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000897C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10008982C()
{
  v1 = *(type metadata accessor for HeadlinesList(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_100023694(0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1000898F8(double *a1)
{
  v3 = type metadata accessor for HeadlinesList(0);
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *a1;
  v8 = *(result + 32);
  v9 = *(v6 + v8);
  if (v9 < *a1)
  {
    v7 = *(v6 + v8);
  }

  *a1 = v7;
  v10 = a1[2];
  if (v9 < v10)
  {
    v10 = v9;
  }

  a1[2] = v10;
  return result;
}

uint64_t sub_10008997C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000899E8()
{
  result = qword_100118C20;
  if (!qword_100118C20)
  {
    sub_100089114(255);
    sub_100089528(&qword_100118C28, sub_1000891C0, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100089A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C20);
  }

  return result;
}

unint64_t sub_100089A98()
{
  result = qword_100118C30;
  if (!qword_100118C30)
  {
    sub_100089270(255);
    sub_1000895F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C30);
  }

  return result;
}

uint64_t sub_100089B24(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  sub_10008A14C(0, &qword_100118C48, &type metadata accessor for KeyedEncodingContainer);
  v8 = v7;
  v9 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v13 - v10;
  sub_100006C7C(a1, a1[3]);
  sub_10008A0F8();
  sub_1000DC480();
  v15 = 0;
  sub_1000DC280();
  if (!v5)
  {
    v14 = 1;
    sub_1000DC270();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100089CA4()
{
  if (*v0)
  {
    return 0x79636E6572727563;
  }

  else
  {
    return 0x746E756F6D61;
  }
}

void sub_100089CE4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v6 || (sub_1000DC360() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1000DC360();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_100089DC0(uint64_t a1)
{
  v2 = sub_10008A0F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100089DFC(uint64_t a1)
{
  v2 = sub_10008A0F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100089E38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (v7 && (v5 == *(a2 + 16) && v6 == v7 || (sub_1000DC360() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100089ECC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100089F30(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_100089F30(void *a1)
{
  sub_10008A14C(0, &qword_100118C38, &type metadata accessor for KeyedDecodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  sub_100006C7C(a1, v8);
  sub_10008A0F8();
  sub_1000DC470();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1000DC1B0();
    v11 = 1;
    sub_1000DC1A0();
    (*(v5 + 8))(v7, v4);
  }

  sub_100006D0C(a1);
  return v8;
}

unint64_t sub_10008A0F8()
{
  result = qword_100118C40;
  if (!qword_100118C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C40);
  }

  return result;
}

void sub_10008A14C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_10008A0F8();
    v7 = a3(a1, &type metadata for StockPrice.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}