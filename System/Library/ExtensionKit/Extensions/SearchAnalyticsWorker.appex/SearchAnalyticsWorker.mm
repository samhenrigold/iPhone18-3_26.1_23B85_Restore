uint64_t sub_1000013F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003FDC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = a1;
  swift_errorRetain();
  sub_100001DAC(&qword_10000C1D8, &unk_1000043B8);
  if (swift_dynamicCast())
  {
    (*(v5 + 8))(v7, v4);
    if (qword_10000C108 != -1)
    {
      sub_100001DF4(&qword_10000C108);
    }

    v8 = sub_100003F9C();
    sub_100001D0C(v8, qword_10000C250);

    v9 = sub_100003F7C();
    v10 = sub_100003FEC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_100001E2C();
      v12 = sub_100001E44();
      *v11 = 138412290;
      v13 = *(v2 + 32);
      *(v11 + 4) = v13;
      *v12 = v13;
      v14 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "On-demand task is interrupted: %@", v11, 0xCu);
LABEL_10:
      sub_100001D44(v12);
      sub_100001E14(v12);
      sub_100001E14(v11);
    }
  }

  else
  {
    if (qword_10000C108 != -1)
    {
      sub_100001DF4(&qword_10000C108);
    }

    v15 = sub_100003F9C();
    sub_100001D0C(v15, qword_10000C250);
    swift_errorRetain();
    v9 = sub_100003F7C();
    v16 = sub_100003FFC();

    if (os_log_type_enabled(v9, v16))
    {
      v11 = sub_100001E2C();
      v12 = sub_100001E44();
      *v11 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v17;
      *v12 = v17;
      _os_log_impl(&_mh_execute_header, v9, v16, "Unexpected error: %@", v11, 0xCu);
      goto LABEL_10;
    }
  }

  v18 = objc_allocWithZone(sub_100003E6C());
  return sub_100003E5C();
}

uint64_t sub_1000016C4(uint64_t a1)
{
  v2 = v1;
  if (qword_10000C108 != -1)
  {
    sub_100001DF4(&qword_10000C108);
  }

  v4 = sub_100003F9C();
  sub_100001D0C(v4, qword_10000C250);

  v5 = sub_100003F7C();
  v6 = sub_100003FEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_100001E2C();
    v8 = sub_100001E44();
    *v7 = 138412290;
    v9 = *(v2 + 32);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "On-demand task started: %@", v7, 0xCu);
    sub_100001D44(v8);
    sub_100001E14(v8);
    sub_100001E14(v7);
  }

  sub_1000018CC(a1);

  v11 = sub_100003F7C();
  v12 = sub_100003FEC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_100001E2C();
    v14 = sub_100001E44();
    *v13 = 138412290;
    v15 = *(v2 + 32);
    *(v13 + 4) = v15;
    *v14 = v15;
    v16 = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "On-demand task is finished: %@", v13, 0xCu);
    sub_100001D44(v14);
    sub_100001E14(v14);
    sub_100001E14(v13);
  }

  v17 = objc_allocWithZone(sub_100003E6C());
  return sub_100003E5C();
}

uint64_t sub_1000018CC(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = objc_opt_self();

  v4 = [v3 defaultManager];
  sub_100003F6C();
  swift_allocObject();
  sub_100003F5C();
  sub_100003EAC();
  sub_100003EBC();
  sub_100003F4C();

  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;

  sub_100003EEC();
}

uint64_t sub_100001A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v7;
    if (qword_10000C108 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v8 = sub_100003F9C();
  sub_100001D0C(v8, qword_10000C250);

  v9 = sub_100003F7C();
  v10 = sub_100003FEC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 134218242;
    swift_beginAccess();
    *(v11 + 4) = *(a2 + 16);

    *(v11 + 12) = 2112;
    v13 = *(a3 + 32);
    *(v11 + 14) = v13;
    *v12 = v13;
    v14 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "On-demand task completed %ld iteration(s): %@", v11, 0x16u);
    sub_100001D44(v12);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_100001C1C()
{

  return v0;
}

uint64_t sub_100001C44()
{
  sub_100001C1C();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100001CAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001D0C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001D44(uint64_t a1)
{
  v2 = sub_100001DAC(&qword_10000C1D0, &qword_1000043B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001DAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001DF4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100001E14(uint64_t a1)
{
}

uint64_t sub_100001E2C()
{

  return swift_slowAlloc();
}

uint64_t sub_100001E44()
{

  return swift_slowAlloc();
}

uint64_t sub_100001E5C()
{
  v0 = sub_100003EDC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for KnownAggregationProcessBundleId.SearchAnalyticsWorker(_:), v0);
  v4 = sub_100003ECC();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_10000C228 = v4;
  unk_10000C230 = v6;
  return result;
}

uint64_t sub_100001F5C()
{
  result = sub_100003EFC();
  byte_10000C238 = result & 1;
  return result;
}

uint64_t sub_100001F9C()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_1000034AC(0xD000000000000011, 0x80000001000044F0);
  v4 = sub_100003F3C();

  if (v4)
  {
    v5 = sub_1000021EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 1;
  }

  if (qword_10000C0F8 != -1)
  {
    swift_once();
  }

  if (byte_10000C238 & v5)
  {
    if (qword_10000C108 != -1)
    {
      sub_100001DF4(&qword_10000C108);
    }

    v6 = sub_100003F9C();
    sub_100001D0C(v6, qword_10000C250);
    v7 = sub_100003F7C();
    v8 = sub_100003FEC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = "On-demand task detected";
LABEL_15:
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, v9, v11, 2u);
      sub_100001E14(v11);
    }
  }

  else
  {
    if (qword_10000C108 != -1)
    {
      sub_100001DF4(&qword_10000C108);
    }

    v10 = sub_100003F9C();
    sub_100001D0C(v10, qword_10000C250);
    v7 = sub_100003F7C();
    v8 = sub_100003FEC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = "On-demand task detected, but feature disabled";
      goto LABEL_15;
    }
  }

  objc_allocWithZone(sub_100003E6C());
  v12 = sub_100003E5C();
  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_1000021EC()
{
  v1 = sub_100003FAC();
  v2 = [v0 configBoolForKey:v1];

  return v2 ^ 1;
}

uint64_t sub_100002248(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = sub_100001DAC(&qword_10000C200, &qword_1000044A8);
  v2[4] = v4;
  v2[5] = swift_task_alloc();
  v5 = sub_100001DAC(&qword_10000C208, &qword_1000044B0);
  v2[6] = v5;
  v2[7] = *(v5 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_100001DAC(&qword_10000C210, &qword_1000044B8);
  v2[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[11] = v6;
  v7 = swift_task_alloc();
  v2[12] = v7;
  v8 = sub_100003458();
  v2[13] = v8;
  v9 = sub_100003B74(&qword_10000C218, &protocol conformance descriptor for PoirotUserTaskParameters<A>);
  v2[14] = v9;
  v10 = sub_100003B74(&qword_10000C220, &protocol conformance descriptor for PoirotUserTaskParameters<A>);
  v2[15] = v10;
  *v7 = v2;
  v7[1] = sub_10000246C;

  return MLHostExtension.loadConfig<A>(context:)(v6, a2, &type metadata for SearchAnalyticsWorker, v4, v8, v9, v10);
}

uint64_t sub_10000246C()
{
  v1 = *v0;
  v2 = *v0;
  sub_100003C78();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  v2[16] = v5;
  *v5 = v4;
  v5[1] = sub_100002618;
  v6 = v1[15];
  v7 = v1[14];
  v8 = v1[13];
  v9 = v1[10];
  v10 = v1[4];
  v11 = v1[3];

  return MLHostExtension.loadConfig<A>(context:)(v9, v11, &type metadata for SearchAnalyticsWorker, v10, v8, v7, v6);
}

uint64_t sub_100002618()
{
  sub_100003C98();
  sub_100003CA4();
  v1 = *v0;
  sub_100003C78();
  *v2 = v1;

  v3 = sub_100003C88();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000026FC()
{
  v33 = v0;
  v1 = v0[10];
  v2 = v0[6];
  if (sub_100003BC4(v1, 1, v2) == 1)
  {
    sub_100003BEC(v1, &qword_10000C210, &qword_1000044B8);
    if (qword_10000C108 != -1)
    {
      sub_100001DF4(&qword_10000C108);
    }

    v3 = sub_100003F9C();
    sub_100001D0C(v3, qword_10000C250);
    v4 = sub_100003F7C();
    v5 = sub_100003FEC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No valid config found", v6, 2u);
      sub_100001E14(v6);
    }

    v7 = 1;
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v1, v2);
    if (qword_10000C108 != -1)
    {
      sub_100001DF4(&qword_10000C108);
    }

    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    v12 = sub_100003F9C();
    sub_100001D0C(v12, qword_10000C250);
    (*(v11 + 16))(v8, v9, v10);
    v13 = sub_100003F7C();
    v14 = sub_100003FEC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[7];
    if (v15)
    {
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v17 = 136315138;
      sub_100003E9C();
      v18 = sub_100003FBC();
      v20 = v19;
      v21 = *(v16 + 8);
      v22 = sub_100003CB0();
      v21(v22);
      v23 = sub_100003510(v18, v20, &v32);

      *(v17 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "Config found. Task params: %s", v17, 0xCu);
      sub_1000035D4(v31);
      sub_100001E14(v31);
      sub_100001E14(v17);
    }

    else
    {

      v21 = *(v16 + 8);
      v24 = sub_100003CB0();
      v21(v24);
    }

    v25 = v0[9];
    v26 = v0[6];
    sub_100003E9C();
    (v21)(v25, v26);
    v7 = 0;
  }

  v27 = v0[4];
  v28 = v0[2];
  sub_100003BEC(v0[11], &qword_10000C210, &qword_1000044B8);
  sub_100003C4C(v28, v7, 1, v27);

  v29 = v0[1];

  return v29();
}

uint64_t sub_100002A6C()
{
  sub_100003C98();
  *(v0 + 24) = v1;
  sub_100001DAC(&qword_10000C1F0, &qword_100004488);
  *(v0 + 32) = swift_task_alloc();
  v2 = sub_100003C88();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100002AFC()
{
  v1 = objc_autoreleasePoolPush();
  sub_100003F2C();
  swift_allocObject();
  sub_100003F1C();
  sub_100003F0C();

  objc_autoreleasePoolPop(v1);
  if (qword_10000C0F0 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_10000C228;
  v4 = unk_10000C230;
  type metadata accessor for SAWTask();
  v5 = swift_allocObject();
  v0[5] = v5;
  v5[3] = v4;
  v5[4] = v2;
  v5[2] = v3;

  v6 = v2;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_100002D9C;
  v9 = v0[3];
  v8 = v0[4];

  return sub_100002248(v8, v9);
}

uint64_t sub_100002D9C()
{
  sub_100003C98();
  sub_100003CA4();
  v1 = *v0;
  sub_100003C78();
  *v2 = v1;

  v3 = sub_100003C88();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100002E80()
{
  v1 = *(v0 + 32);
  v2 = sub_1000016C4(v1);

  sub_100003BEC(v1, &qword_10000C1F0, &qword_100004488);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100002F1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003C74;

  return sub_100001F80();
}

uint64_t sub_100002FA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000303C;

  return sub_100002A6C();
}

uint64_t sub_10000303C()
{
  sub_100003C98();
  v2 = v1;
  sub_100003CA4();
  v3 = *v0;
  sub_100003C78();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_100003128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10000320C;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_10000320C()
{
  sub_100003C98();
  sub_100003CA4();
  v1 = *v0;
  sub_100003C78();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000032F0(uint64_t a1)
{
  v2 = sub_100003458();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000339C();
  sub_100003E4C();
  return 0;
}

unint64_t sub_10000339C()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}

unint64_t sub_100003458()
{
  result = qword_10000C1E8;
  if (!qword_10000C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E8);
  }

  return result;
}

id sub_1000034AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100003FAC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

unint64_t sub_100003510(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003620(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100003720(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000035D4(v11);
  return v7;
}

uint64_t sub_1000035D4(void *a1)
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

unint64_t sub_100003620(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000377C(a5, a6);
    *a1 = v9;
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
    result = sub_10000402C();
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

uint64_t sub_100003720(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_10000377C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000037C8(a1, a2);
  sub_1000038E0(&off_1000083C0);
  return v3;
}

char *sub_1000037C8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100003FCC())
  {
    result = sub_1000039C4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10000401C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_10000402C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000038E0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100003A34(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000039C4(uint64_t a1, uint64_t a2)
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

  sub_100001DAC(&qword_10000C1F8, &qword_1000044A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100003A34(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DAC(&qword_10000C1F8, &qword_1000044A0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100003B2C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003B74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100003B2C(&qword_10000C200, &qword_1000044A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003BEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001DAC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003CC4()
{
  if (qword_10000C0F0 != -1)
  {
    swift_once();
  }

  qword_10000C240 = qword_10000C228;
  *algn_10000C248 = unk_10000C230;
}

uint64_t sub_100003D30()
{
  v0 = sub_100003F9C();
  sub_100003DE8(v0, qword_10000C250);
  sub_100001D0C(v0, qword_10000C250);
  if (qword_10000C100 != -1)
  {
    swift_once();
  }

  return sub_100003F8C();
}

uint64_t *sub_100003DE8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}