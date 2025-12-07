uint64_t sub_100087E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000DC8C;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100087F28()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100087F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100087FE4(uint64_t a1)
{
  v2 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100088040()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000880D0(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_1000C1F68();
  *a3 = result;
  return result;
}

unint64_t sub_10008811C()
{
  result = qword_1000EFFC0;
  if (!qword_1000EFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFFC0);
  }

  return result;
}

uint64_t sub_1000881B4()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C0888();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C0728();
  sub_10000D9B0(v10, qword_1000FAB10);
  sub_10000D978(v10, qword_1000FAB10);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C08A8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C0718();
}

uint64_t sub_100088490@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100004D04(&qword_1000ED0F0, &qword_1000C43C8);
  __chkstk_darwin(v1 - 8);
  v29 = &v23 - v2;
  v3 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v3 - 8);
  v28 = &v23 - v4;
  v5 = sub_1000C0888();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C0B68();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C2628();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000C0898();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v26 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v25 = &v23 - v15;
  sub_1000C2618();
  sub_1000C0B58();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v24 = v5;
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v5);
  v18 = v28;
  sub_1000C08A8();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = v29;
  sub_1000C05F8();
  v20 = sub_1000C0608();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
  *(swift_allocObject() + 16) = xmmword_1000C44F0;
  sub_1000C2618();
  sub_1000C0B58();
  v21 = v24;
  v17(v8, v16, v24);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v21);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v21);
  sub_1000C08A8();
  return sub_1000C0618();
}

uint64_t sub_100088A44()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAB28);
  sub_10000D978(v0, qword_1000FAB28);
  return sub_1000C0878();
}

uint64_t sub_100088AA8()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v14[0] = sub_1000C0888();
  v3 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  sub_10000D9B0(v10, qword_1000FAB40);
  v11 = sub_10000D978(v10, qword_1000FAB40);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v14[0]);
  sub_1000C08A8();
  (*(v9 + 56))(v2, 1, 1, v8);
  sub_1000C0588();
  v12 = sub_1000C0578();
  return (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
}

uint64_t sub_100088DD8()
{
  result = swift_getKeyPath();
  qword_1000FAB58 = result;
  return result;
}

uint64_t sub_100088E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100004D04(&qword_1000ED110, &unk_1000C8A60);
  v3[10] = swift_task_alloc();
  sub_100004D04(&qword_1000ED118, &qword_1000C4400);
  v3[11] = swift_task_alloc();
  sub_100004D04(&qword_1000F0100, &qword_1000C8A70);
  v3[12] = swift_task_alloc();
  v4 = sub_1000C0318();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100004D04(&qword_1000F0108, &qword_1000C8A78);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100088FE0, 0, 0);
}

uint64_t sub_100088FE0()
{
  sub_1000C0368();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = sub_10008A680();
  *v1 = v0;
  v1[1] = sub_1000890B0;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_10008CE2C, 0, &type metadata for TodayNotificationEntity, v2);
}

uint64_t sub_1000890B0()
{

  return _swift_task_switch(sub_1000891AC, 0, 0);
}

uint64_t sub_1000891AC()
{
  sub_1000C0368();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_1000C0368();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000EC9A0 != -1)
  {
    swift_once();
  }

  v2 = qword_1000FAB58;
  *(v0 + 176) = qword_1000FAB58;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_100008478(&qword_1000F00E8, &qword_1000F00F0, &qword_1000C8A48, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_10008930C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for Bool, v4);
}

uint64_t sub_10008930C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100009CB4;
  }

  else
  {
    v2 = sub_100089460;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100089460()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_1000C0368();
  v0[6] = v0[5];
  v6 = sub_1000C06F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_1000C0738();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_10008811C();
  sub_10008A894();
  sub_1000C02E8();
  (*(v2 + 16))(v10, v1, v3);
  sub_1000C0308();
  sub_1000C0328();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000896CC()
{
  v0 = sub_100004D04(&qword_1000F0110, &qword_1000C8A80);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_1000EC9A0 != -1)
  {
    swift_once();
  }

  sub_1000C05D8();

  sub_10008A894();
  sub_100008478(&qword_1000F0118, &qword_1000F0110, &qword_1000C8A80, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000C05C8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_100089840(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C0358();
  return sub_100009FE8;
}

uint64_t (*sub_1000898B4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

uint64_t sub_100089928()
{
  if (qword_1000EC9A0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100089988()
{
  result = qword_1000EFFD8;
  if (!qword_1000EFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFFD8);
  }

  return result;
}

unint64_t sub_1000899E0()
{
  result = qword_1000EFFE0;
  if (!qword_1000EFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFFE0);
  }

  return result;
}

uint64_t sub_100089AB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000EC998 != -1)
  {
    swift_once();
  }

  v2 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  v3 = sub_10000D978(v2, qword_1000FAB40);
  return sub_1000082B4(v3, a1, &qword_1000ED140, &unk_1000C8AB0);
}

uint64_t sub_100089B48(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DC8C;

  return sub_100088E00(a1, v5, v4);
}

uint64_t sub_100089BF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008C360();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100089C3C()
{
  result = qword_1000EFFE8;
  if (!qword_1000EFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFFE8);
  }

  return result;
}

unint64_t sub_100089C94()
{
  result = qword_1000EFFF0;
  if (!qword_1000EFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFFF0);
  }

  return result;
}

uint64_t sub_100089CE8(uint64_t a1)
{
  v1[2] = a1;
  sub_100004D04(&qword_1000F00F8, &qword_1000C8A50);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100089D90, 0, 0);
}

uint64_t sub_100089D90()
{
  v1 = [objc_opt_self() daemonUserDefaults];
  v2 = [v1 todayNotificationFireTime];

  if (v2)
  {
    sub_1000C0798();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = sub_1000C07A8();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v5, v3, 1, v7);
  sub_10008CD84(v5, v4);
  v9 = (*(v8 + 48))(v4, 1, v7) != 1;
  sub_10008CD1C(v4);
  *v6 = v9;

  v10 = v0[1];

  return v10();
}

uint64_t sub_100089F08(uint64_t a1, _BYTE *a2)
{
  v4 = sub_1000C07A8();
  *(v2 + 16) = v4;
  *(v2 + 24) = *(v4 - 8);
  *(v2 + 32) = swift_task_alloc();
  sub_100004D04(&qword_1000F00F8, &qword_1000C8A50);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a2;

  return _swift_task_switch(sub_10008A02C, 0, 0);
}

uint64_t sub_10008A02C()
{
  v1 = objc_opt_self();
  v2 = [v1 daemonUserDefaults];
  v3 = [v2 todayNotificationFireTime];

  v4 = *(v0 + 72);
  v5 = *(v0 + 64);
  if (v3)
  {
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = *(v0 + 16);
    sub_1000C0798();

    (*(v7 + 32))(v5, v6, v8);
    v9 = *(v7 + 56);
    v9(v5, 0, 1, v8);
    sub_10008CD1C(v5);
    if (v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = *(*(v0 + 24) + 56);
    v9(*(v0 + 64), 1, 1, *(v0 + 16));
    sub_10008CD1C(v5);
    if ((v4 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (*(v0 + 72) == 1)
  {
    v10 = [objc_opt_self() todayNotificationFireTimeFromStorageNumber:0];
    if (v10)
    {
      v11 = v10;
      sub_1000C0798();

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v9(v14, v12, 1, *(v0 + 16));
    sub_10008CD84(v14, v13);
  }

  else
  {
    v9(*(v0 + 56), 1, 1, *(v0 + 16));
  }

  v15 = *(v0 + 56);
  v16 = *(v0 + 40);
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  v19 = [v1 daemonUserDefaults];
  sub_1000082B4(v15, v16, &qword_1000F00F8, &qword_1000C8A50);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    isa = 0;
  }

  else
  {
    v21 = *(v0 + 40);
    v22 = *(v0 + 16);
    v23 = *(v0 + 24);
    isa = sub_1000C0788().super.isa;
    (*(v23 + 8))(v21, v22);
  }

  v24 = *(v0 + 56);
  [v19 setTodayNotificationFireTime:isa];

  sub_10008CD1C(v24);
LABEL_15:

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10008A314(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000C0898();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10008A3A4, 0, 0);
}

uint64_t sub_10008A3A4()
{
  v1 = *(v0 + 16);
  sub_100004D04(&qword_1000EFFD0, qword_1000C8190);
  sub_1000C0878();
  sub_100008478(&qword_1000F00E8, &qword_1000F00F0, &qword_1000C8A48, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_1000C0768();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10008A4C8()
{
  result = qword_1000EFFF8;
  if (!qword_1000EFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFFF8);
  }

  return result;
}

uint64_t sub_10008A51C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10008AA28();
  *v4 = v2;
  v4[1] = sub_10000A8F8;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10008A5D0()
{
  result = qword_1000F0000;
  if (!qword_1000F0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0000);
  }

  return result;
}

unint64_t sub_10008A628()
{
  result = qword_1000F0008;
  if (!qword_1000F0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0008);
  }

  return result;
}

unint64_t sub_10008A680()
{
  result = qword_1000F0010;
  if (!qword_1000F0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0010);
  }

  return result;
}

uint64_t sub_10008A6D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10008AA28();
  *v5 = v2;
  v5[1] = sub_10000DCD8;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10008A788(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10008AA28();
  *v4 = v2;
  v4[1] = sub_10000DCA4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10008A83C()
{
  result = qword_1000F0018;
  if (!qword_1000F0018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0018);
  }

  return result;
}

unint64_t sub_10008A894()
{
  result = qword_1000F0020;
  if (!qword_1000F0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0020);
  }

  return result;
}

unint64_t sub_10008A8EC()
{
  result = qword_1000F0028;
  if (!qword_1000F0028)
  {
    sub_100005334(&qword_1000F0030, qword_1000C8430);
    sub_10008A894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0028);
  }

  return result;
}

uint64_t sub_10008A970(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10008A4C8();
  *v5 = v2;
  v5[1] = sub_10000B028;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10008AA28()
{
  result = qword_1000F0038;
  if (!qword_1000F0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0038);
  }

  return result;
}

uint64_t sub_10008AA7C()
{
  v0 = qword_1000EFFA0;

  return v0;
}

unint64_t sub_10008AAB8()
{
  result = qword_1000F0040;
  if (!qword_1000F0040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0040);
  }

  return result;
}

unint64_t sub_10008AB10()
{
  result = qword_1000F0048;
  if (!qword_1000F0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0048);
  }

  return result;
}

unint64_t sub_10008AB68()
{
  result = qword_1000F0050;
  if (!qword_1000F0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0050);
  }

  return result;
}

unint64_t sub_10008ABC0()
{
  result = qword_1000F0058;
  if (!qword_1000F0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0058);
  }

  return result;
}

unint64_t sub_10008AC18()
{
  result = qword_1000F0060;
  if (!qword_1000F0060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0060);
  }

  return result;
}

unint64_t sub_10008AC70()
{
  result = qword_1000F0068;
  if (!qword_1000F0068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0068);
  }

  return result;
}

uint64_t sub_10008ACC4@<X0>(uint64_t *a2@<X8>)
{
  sub_100089C94();
  result = sub_1000C0348();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10008AD80(uint64_t a1)
{
  v2 = sub_10008A680();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10008ADD0()
{
  result = qword_1000F0080;
  if (!qword_1000F0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0080);
  }

  return result;
}

uint64_t sub_10008AE28(uint64_t a1)
{
  v2 = sub_10008AC70();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10008AE78()
{
  result = qword_1000F0088;
  if (!qword_1000F0088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0088);
  }

  return result;
}

uint64_t sub_10008AECC(uint64_t a1)
{
  if (qword_1000EC8C0 != -1)
  {
    swift_once();
  }

  sub_1000C26D8(xmmword_1000FAA98);
  v2 = sub_10008A680();

  return _EntityURLRepresentation.init(_:)(0xD000000000000041, 0x80000001000CBC20, a1, v2);
}

uint64_t sub_10008AF8C(uint64_t a1)
{
  sub_10008CCC8();
  v2 = sub_1000C0668();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_10008AFFC()
{
  result = qword_1000F0090;
  if (!qword_1000F0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0090);
  }

  return result;
}

uint64_t sub_10008B050()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAB60);
  sub_10000D978(v0, qword_1000FAB60);
  return sub_1000C0878();
}

uint64_t sub_10008B0B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1000C0888();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000C0B68();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C2628();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000C0898();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000C08A8();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_1000C0588();
  v13 = sub_1000C0578();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*sub_10008B3E4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

unint64_t sub_10008B458()
{
  result = qword_1000F0098;
  if (!qword_1000F0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0098);
  }

  return result;
}

uint64_t sub_10008B4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10008CC20();
  v5 = sub_10008CCC8();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10008B518()
{
  v0 = qword_1000EFFB0;

  return v0;
}

unint64_t sub_10008B554()
{
  result = qword_1000F00A0;
  if (!qword_1000F00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F00A0);
  }

  return result;
}

unint64_t sub_10008B5AC()
{
  result = qword_1000F00A8;
  if (!qword_1000F00A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F00A8);
  }

  return result;
}

uint64_t sub_10008B6A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10008CC20();
  v7 = sub_10008CC74();
  v8 = sub_10008CCC8();
  *v5 = v2;
  v5[1] = sub_10000C134;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_10008B77C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008C7C4();
  *a1 = result;
  return result;
}

uint64_t sub_10008B7A4(uint64_t a1)
{
  v2 = sub_10008B458();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10008B8A8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100004D04(&qword_1000ED148, &qword_1000C44B0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100004D04(&qword_1000ED150, &qword_1000C44B8);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100004D04(&qword_1000ED158, &qword_1000C44C0);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v23 = &v23 - v10;
  v11 = sub_100004D04(&qword_1000ED160, &qword_1000C44C8);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  __chkstk_darwin(v11);
  v24 = &v23 - v13;
  swift_getKeyPath();
  sub_100004D04(&qword_1000ED168, &qword_1000C44D0);
  sub_100004D04(&qword_1000ED170, qword_1000C44D8);
  sub_100089C94();
  sub_100008478(&qword_1000ED178, &qword_1000ED168, &qword_1000C44D0, &protocol conformance descriptor for Label<A, B>);
  sub_10000DABC();
  sub_1000C2398();
  sub_1000C19E8();
  v14 = sub_100008478(&qword_1000ED188, &qword_1000ED148, &qword_1000C44B0, &protocol conformance descriptor for ControlToggle<A>);
  sub_1000C1AB8();

  (*(v25 + 8))(v3, v1);
  sub_1000C19E8();
  v33 = v1;
  v34 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v23;
  v17 = v26;
  sub_1000C1A78();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_1000C1AD8();
  (*(v29 + 8))(v16, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000C1A98();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_10008BE0C()
{
  v0 = sub_1000C19E8();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10008BE7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C0888();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  __chkstk_darwin(v8 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C08A8();
  result = sub_1000C1DD8();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

double sub_10008C090@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0888();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000C2628();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C0898();
  __chkstk_darwin(v10 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_1000C08A8();
  v17[1] = sub_1000C1DD8();
  v17[2] = v11;
  v17[3] = v12 & 1;
  v17[4] = v13;
  v18 = (a1 & 1) == 0;
  sub_1000C1AE8();
  result = *&v19;
  v15 = v20;
  v16 = v21;
  *a2 = v19;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_10008C360()
{
  v0 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000C0658();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000C0898();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100004D04(&qword_1000F00C8, &qword_1000C8A30);
  sub_1000C0878();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000C0318();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v7, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_10008A680();
  v23 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);
  sub_1000C0878();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_1000C2808();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_1000C0398();
  return v23;
}

uint64_t sub_10008C7C4()
{
  v0 = sub_1000C0658();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  __chkstk_darwin(v2 - 8);
  v22 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v21 - v5;
  v7 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_1000C0888();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C0B68();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000C2628();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1000C0898();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21[1] = sub_100004D04(&qword_1000F00C8, &qword_1000C8A30);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_1000C08A8();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26 = 0;
  v18 = sub_1000C0318();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_10008A680();
  return sub_1000C0388();
}

unint64_t sub_10008CC20()
{
  result = qword_1000F00D0;
  if (!qword_1000F00D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F00D0);
  }

  return result;
}

unint64_t sub_10008CC74()
{
  result = qword_1000F00D8;
  if (!qword_1000F00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F00D8);
  }

  return result;
}

unint64_t sub_10008CCC8()
{
  result = qword_1000F00E0;
  if (!qword_1000F00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F00E0);
  }

  return result;
}

uint64_t sub_10008CD1C(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000F00F8, &qword_1000C8A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008CD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000F00F8, &qword_1000C8A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10008CE4C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v24 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_10009DA8C(a3 + v14 + v15 * v12, v11, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      v16 = a1(v11);
      if (v3)
      {
        sub_100099C44(v11, type metadata accessor for TTRNewWidgetViewModel.Reminder);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_10009DB2C(v11, v23, type metadata accessor for TTRNewWidgetViewModel.Reminder);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000BA468(0, v13[2] + 1, 1);
          v13 = v25;
        }

        v19 = v13[2];
        v18 = v13[3];
        if (v19 >= v18 >> 1)
        {
          sub_1000BA468((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        v13[2] = v19 + 1;
        sub_10009DB2C(v23, v13 + v14 + v19 * v15, type metadata accessor for TTRNewWidgetViewModel.Reminder);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_100099C44(v11, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void *sub_10008D0D8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_1000BA468(0, v10, 0);
  v11 = v21;
  v12 = (a3 + 32);
  while (1)
  {
    v13 = *v12++;
    v20 = v13;
    v18(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_1000BA468((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    v11[2] = v15 + 1;
    sub_10009DB2C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_10008D27C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v27 = a7;
  v28 = a1;
  v10 = v7;
  v29 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v24 - v15;
  v17 = *(a3 + 16);
  v18 = _swiftEmptyArrayStorage;
  if (!v17)
  {
    return v18;
  }

  v30 = _swiftEmptyArrayStorage;
  v25 = a5;
  (a5)(0, v17, 0, v14);
  v18 = v30;
  v19 = *(a6(0) - 8);
  v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v26 = *(v19 + 72);
  while (1)
  {
    v28(v20);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v30 = v18;
    v22 = v18[2];
    v21 = v18[3];
    if (v22 >= v21 >> 1)
    {
      v25(v21 > 1, v22 + 1, 1);
      v18 = v30;
    }

    v18[2] = v22 + 1;
    sub_10009DB2C(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, v27);
    v20 += v26;
    if (!--v17)
    {
      return v18;
    }
  }

  __break(1u);
  return result;
}

void sub_10008D488(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v213 = a5;
  v214 = a6;
  v210 = a4;
  v215 = a3;
  v217 = a2;
  v209 = sub_1000C0C18();
  v8 = *(v209 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v209);
  v208 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v199 - v11;
  v13 = sub_1000C0AF8();
  v14 = *(v13 - 8);
  v211 = v13;
  v212 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v216 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  __chkstk_darwin(Configuration);
  v18 = &v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000C1118();
  v20 = __chkstk_darwin(v19);
  v22 = (&v199 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1;
  v25 = v24;
  (*(v24 + 16))(v22, v23, v19, v20);
  v26 = (*(v25 + 88))(v22, v19);
  if (v26 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v25 + 96))(v22, v19);

    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v27 = sub_1000C1568();
    sub_10000D978(v27, qword_1000F0120);
    v28 = sub_1000C1558();
    v29 = sub_1000C2948();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Widget presenter: unable to display accounts", v30, 2u);
    }

    v31 = *(sub_100004D04(&qword_1000EDA60, &qword_1000C5848) + 48);
    v32 = sub_1000C1098();
    goto LABEL_7;
  }

  if (v26 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v25 + 96))(v22, v19);
    v33 = *v22;
    v34 = *(sub_100004D04(&qword_1000EDA48, &unk_1000C5830) + 48);
    v208 = *(v6 + 16);
    v209 = v34;
    v35 = &v18[Configuration[5]];
    v206 = v15;
    v36 = v210;
    sub_100090C24(v35);
    v37 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v207 = v22;
    v38 = Configuration[6];
    v39 = sub_1000C1388();
    (*(*(v39 - 8) + 16))(&v18[v38], v6 + v37, v39);
    v40 = v211;
    v41 = v212;
    v42 = *(v212 + 16);
    v42(&v18[Configuration[7]], v36, v211);
    *v18 = v217;
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = v216;
    v42(v216, v36, v40);
    v45 = (*(v41 + 80) + 64) & ~*(v41 + 80);
    v46 = swift_allocObject();
    v47 = v213;
    v48 = v214;
    *(v46 + 2) = v43;
    *(v46 + 3) = v47;
    *(v46 + 4) = v48;
    *(v46 + 5) = v33;
    v49 = v215;
    *(v46 + 6) = v217;
    *(v46 + 7) = v49;
    (*(v41 + 32))(&v46[v45], v44, v40);

    v50 = v33;

    sub_10006A1B0(v50, v18, sub_10009A0AC, v46);
LABEL_12:

    sub_100099C44(v18, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);

    v67 = sub_1000C10C8();
    (*(*(v67 - 8) + 8))(v207 + v209, v67);
    return;
  }

  if (v26 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v25 + 96))(v22, v19);
    v205 = *v22;
    v51 = *(sub_100004D04(&qword_1000EDA48, &unk_1000C5830) + 48);
    v208 = *(v6 + 16);
    v209 = v51;
    v52 = v210;
    sub_100090C24(&v18[Configuration[5]]);
    v207 = v22;
    v53 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v54 = Configuration[6];
    v55 = sub_1000C1388();
    (*(*(v55 - 8) + 16))(&v18[v54], v6 + v53, v55);
    v56 = v211;
    v57 = v212;
    v58 = *(v212 + 16);
    v58(&v18[Configuration[7]], v52, v211);
    *v18 = v217;
    v59 = swift_allocObject();
    swift_weakInit();
    v60 = v216;
    v58(v216, v52, v56);
    v61 = (*(v57 + 80) + 64) & ~*(v57 + 80);
    v62 = swift_allocObject();
    v63 = v213;
    v64 = v214;
    *(v62 + 2) = v59;
    *(v62 + 3) = v63;
    v65 = v205;
    *(v62 + 4) = v64;
    *(v62 + 5) = v65;
    v66 = v215;
    *(v62 + 6) = v217;
    *(v62 + 7) = v66;
    (*(v57 + 32))(&v62[v61], v60, v56);

    v50 = v65;
    sub_10006BCBC(v50, v18, sub_100099FB8, v62);
    goto LABEL_12;
  }

  if (v26 == enum case for REMNavigationSpecifier.newList(_:))
  {
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v68 = sub_1000C1568();
    sub_10000D978(v68, qword_1000F0120);
    v69 = sub_1000C1558();
    v70 = sub_1000C2948();
    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_19;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "Widget presenter: unable to display newList";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v69, v70, v72, v71, 2u);

LABEL_19:

    (*(v25 + 8))(v22, v19);
    return;
  }

  if (v26 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v25 + 96))(v22, v19);

    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v73 = sub_1000C1568();
    sub_10000D978(v73, qword_1000F0120);
    v74 = sub_1000C1558();
    v75 = sub_1000C2948();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Widget presenter: unable to display individual reminders", v76, 2u);
    }

    v31 = *(sub_100004D04(&qword_1000EDA50, &unk_1000C8CD0) + 48);
    v32 = sub_1000C10F8();
    goto LABEL_7;
  }

  if (v26 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v25 + 96))(v22, v19);

    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v77 = sub_1000C1568();
    sub_10000D978(v77, qword_1000F0120);
    v78 = sub_1000C1558();
    v79 = sub_1000C2948();
    if (!os_log_type_enabled(v78, v79))
    {
      goto LABEL_37;
    }

    v80 = swift_slowAlloc();
    *v80 = 0;
    v81 = "Widget presenter: unable to display individual sections";
LABEL_36:
    _os_log_impl(&_mh_execute_header, v78, v79, v81, v80, 2u);

LABEL_37:

    v31 = *(sub_100004D04(&qword_1000EDA58, &qword_1000C5840) + 48);
    v32 = sub_1000C10A8();
LABEL_7:
    (*(*(v32 - 8) + 8))(v22 + v31, v32);
    return;
  }

  if (v26 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v25 + 96))(v22, v19);

    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v82 = sub_1000C1568();
    sub_10000D978(v82, qword_1000F0120);
    v78 = sub_1000C1558();
    v79 = sub_1000C2948();
    if (!os_log_type_enabled(v78, v79))
    {
      goto LABEL_37;
    }

    v80 = swift_slowAlloc();
    *v80 = 0;
    v81 = "Widget presenter: unable to display individual smart list sections";
    goto LABEL_36;
  }

  if (v26 == enum case for REMNavigationSpecifier.root(_:))
  {
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v83 = sub_1000C1568();
    sub_10000D978(v83, qword_1000F0120);
    v69 = sub_1000C1558();
    v70 = sub_1000C2948();
    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_19;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "Widget presenter: unable to display root";
    goto LABEL_18;
  }

  v206 = v15;
  v207 = v22;
  v203 = v25;
  v204 = v19;
  v205 = v12;
  v201 = v6;
  v202 = v18;
  v200 = v8;
  if (v26 == enum case for REMNavigationSpecifier.today(_:))
  {
    (*(v8 + 104))(v12, enum case for TTRListType.PredefinedSmartListType.today(_:), v209);
    v199 = *(v6 + 16);
    v84 = v210;
    sub_100090C24(&v18[Configuration[5]]);
    v85 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v86 = Configuration[6];
    v87 = sub_1000C1388();
    (*(*(v87 - 8) + 16))(&v18[v86], v6 + v85, v87);
    v88 = v211;
    v89 = v212;
    v90 = *(v212 + 16);
    v90(&v18[Configuration[7]], v84, v211);
    *v18 = v217;
    v91 = v200;
    v92 = v209;
    (*(v200 + 16))(v208, v205, v209);
    v90(v216, v84, v88);
    v93 = (*(v91 + 80) + 16) & ~*(v91 + 80);
    v210 = (v9 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = (v210 + 15) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
    v96 = (*(v89 + 80) + v95 + 8) & ~*(v89 + 80);
    v97 = (v206 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    (*(v91 + 32))(v98 + v93, v208, v92);
    *(v98 + v210) = v201;
    v99 = v216;
    *(v98 + v94) = v217;
    *(v98 + v95) = v215;
    (*(v89 + 32))(v98 + v96, v99, v88);
    v100 = (v98 + v97);
    v101 = v214;
    *v100 = v213;
    v100[1] = v101;

LABEL_49:
    v134 = v205;
    v135 = v202;
    sub_10006D34C(v205, v202, sub_1000A087C, v98);

    sub_100099C44(v135, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    (*(v91 + 8))(v134, v209);
LABEL_50:
    (*(v203 + 8))(v207, v204);
    return;
  }

  if (v26 == enum case for REMNavigationSpecifier.scheduled(_:))
  {
    (*(v8 + 104))(v12, enum case for TTRListType.PredefinedSmartListType.scheduled(_:), v209);
    v199 = *(v6 + 16);
    v102 = v210;
    sub_100090C24(&v18[Configuration[5]]);
    v103 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v104 = Configuration[6];
    v105 = sub_1000C1388();
    (*(*(v105 - 8) + 16))(&v18[v104], v6 + v103, v105);
    v106 = v211;
    v107 = v212;
    v108 = *(v212 + 16);
    v108(&v18[Configuration[7]], v102, v211);
    *v18 = v217;
    v91 = v200;
    v109 = v209;
    (*(v200 + 16))(v208, v205, v209);
    v108(v216, v102, v106);
    v110 = (*(v91 + 80) + 16) & ~*(v91 + 80);
    v210 = (v9 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
    v111 = (v210 + 15) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
    v113 = (*(v107 + 80) + v112 + 8) & ~*(v107 + 80);
    v114 = (v206 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    (*(v91 + 32))(v98 + v110, v208, v109);
    *(v98 + v210) = v201;
    v115 = v216;
    *(v98 + v111) = v217;
    *(v98 + v112) = v215;
    (*(v107 + 32))(v98 + v113, v115, v106);
    v116 = (v98 + v114);
    v117 = v214;
    *v116 = v213;
    v116[1] = v117;

    goto LABEL_49;
  }

  if (v26 == enum case for REMNavigationSpecifier.allReminders(_:))
  {
    (*(v8 + 104))(v12, enum case for TTRListType.PredefinedSmartListType.all(_:), v209);
    v199 = *(v6 + 16);
    v118 = v210;
    sub_100090C24(&v18[Configuration[5]]);
    v119 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v120 = Configuration[6];
    v121 = sub_1000C1388();
    (*(*(v121 - 8) + 16))(&v18[v120], v6 + v119, v121);
    v122 = v211;
    v123 = v212;
    v124 = *(v212 + 16);
    v124(&v18[Configuration[7]], v118, v211);
    *v18 = v217;
    v91 = v200;
    v125 = v209;
    (*(v200 + 16))(v208, v205, v209);
    v124(v216, v118, v122);
    v126 = (*(v91 + 80) + 16) & ~*(v91 + 80);
    v210 = (v9 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
    v127 = (v210 + 15) & 0xFFFFFFFFFFFFFFF8;
    v128 = (v127 + 15) & 0xFFFFFFFFFFFFFFF8;
    v129 = (*(v123 + 80) + v128 + 8) & ~*(v123 + 80);
    v130 = (v206 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    (*(v91 + 32))(v98 + v126, v208, v125);
    *(v98 + v210) = v201;
    v131 = v216;
    *(v98 + v127) = v217;
    *(v98 + v128) = v215;
    (*(v123 + 32))(v98 + v129, v131, v122);
    v132 = (v98 + v130);
    v133 = v214;
    *v132 = v213;
    v132[1] = v133;

    goto LABEL_49;
  }

  if (v26 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    v136 = v8;
    (*(v8 + 104))(v12, enum case for TTRListType.PredefinedSmartListType.flagged(_:), v209);
    v199 = *(v6 + 16);
    v137 = v210;
    sub_100090C24(&v18[Configuration[5]]);
    v138 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v139 = Configuration[6];
    v140 = sub_1000C1388();
    (*(*(v140 - 8) + 16))(&v18[v139], v6 + v138, v140);
    v141 = v211;
    v142 = v212;
    v143 = *(v212 + 16);
    v143(&v18[Configuration[7]], v137, v211);
    *v18 = v217;
    v144 = v136;
    v145 = v209;
    (*(v136 + 16))(v208, v205, v209);
    v143(v216, v137, v141);
    v146 = (*(v136 + 80) + 16) & ~*(v136 + 80);
    v210 = (v9 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
    v147 = (v210 + 15) & 0xFFFFFFFFFFFFFFF8;
    v148 = (v147 + 15) & 0xFFFFFFFFFFFFFFF8;
    v149 = (*(v142 + 80) + v148 + 8) & ~*(v142 + 80);
    v150 = (v206 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
    v151 = swift_allocObject();
    (*(v144 + 32))(v151 + v146, v208, v145);
    *(v151 + v210) = v201;
    v152 = v216;
    *(v151 + v147) = v217;
    *(v151 + v148) = v215;
    (*(v142 + 32))(v151 + v149, v152, v141);
    v153 = (v151 + v150);
    v154 = v214;
    *v153 = v213;
    v153[1] = v154;

    v155 = sub_1000A087C;
LABEL_53:
    v156 = v205;
    v157 = v202;
    sub_10006D34C(v205, v202, v155, v151);

    sub_100099C44(v157, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    (*(v200 + 8))(v156, v209);
    goto LABEL_50;
  }

  if (v26 != enum case for REMNavigationSpecifier.search(_:))
  {
    if (v26 == enum case for REMNavigationSpecifier.assigned(_:))
    {
      v166 = v8;
      (*(v8 + 104))(v12, enum case for TTRListType.PredefinedSmartListType.assigned(_:), v209);
      v199 = *(v6 + 16);
      v167 = v210;
      sub_100090C24(&v18[Configuration[5]]);
      v168 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
      v169 = Configuration[6];
      v170 = sub_1000C1388();
      (*(*(v170 - 8) + 16))(&v18[v169], v6 + v168, v170);
      v171 = v211;
      v172 = v212;
      v173 = *(v212 + 16);
      v173(&v18[Configuration[7]], v167, v211);
      *v18 = v217;
      v174 = v166;
      v175 = v209;
      (*(v166 + 16))(v208, v205, v209);
      v173(v216, v167, v171);
      v176 = (*(v166 + 80) + 16) & ~*(v166 + 80);
      v210 = (v9 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
      v177 = (v210 + 15) & 0xFFFFFFFFFFFFFFF8;
      v178 = (v177 + 15) & 0xFFFFFFFFFFFFFFF8;
      v179 = (*(v172 + 80) + v178 + 8) & ~*(v172 + 80);
      v180 = (v206 + v179 + 7) & 0xFFFFFFFFFFFFFFF8;
      v151 = swift_allocObject();
      (*(v174 + 32))(v151 + v176, v208, v175);
      *(v151 + v210) = v201;
      v181 = v216;
      *(v151 + v177) = v217;
      *(v151 + v178) = v215;
      (*(v172 + 32))(v151 + v179, v181, v171);
      v182 = (v151 + v180);
      v183 = v214;
      *v182 = v213;
      v182[1] = v183;

      v155 = sub_100099CA8;
      goto LABEL_53;
    }

    if (v26 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
    {
      if (qword_1000EC9B0 != -1)
      {
        swift_once();
      }

      v184 = sub_1000C1568();
      sub_10000D978(v184, qword_1000F0120);
      v185 = sub_1000C1558();
      v186 = sub_1000C2948();
      if (!os_log_type_enabled(v185, v186))
      {
        goto LABEL_83;
      }

      v187 = swift_slowAlloc();
      *v187 = 0;
      v188 = "Widget presenter: unable to display siriFoundInApps";
LABEL_82:
      _os_log_impl(&_mh_execute_header, v185, v186, v188, v187, 2u);

LABEL_83:

      goto LABEL_50;
    }

    if (v26 == enum case for REMNavigationSpecifier.tagged(_:))
    {
      if (qword_1000EC9B0 != -1)
      {
        swift_once();
      }

      v189 = sub_1000C1568();
      sub_10000D978(v189, qword_1000F0120);
      v185 = sub_1000C1558();
      v186 = sub_1000C2948();
      if (!os_log_type_enabled(v185, v186))
      {
        goto LABEL_83;
      }

      v187 = swift_slowAlloc();
      *v187 = 0;
      v188 = "Widget presenter: unable to display tags";
      goto LABEL_82;
    }

    if (v26 == enum case for REMNavigationSpecifier.completed(_:))
    {
      if (qword_1000EC9B0 != -1)
      {
        swift_once();
      }

      v190 = sub_1000C1568();
      sub_10000D978(v190, qword_1000F0120);
      v185 = sub_1000C1558();
      v186 = sub_1000C2948();
      if (!os_log_type_enabled(v185, v186))
      {
        goto LABEL_83;
      }

      v187 = swift_slowAlloc();
      *v187 = 0;
      v188 = "Widget presenter: unable to display completed";
      goto LABEL_82;
    }

    if (v26 == enum case for REMNavigationSpecifier.publicTemplate(_:))
    {
      if (qword_1000EC9B0 != -1)
      {
        swift_once();
      }

      v191 = sub_1000C1568();
      sub_10000D978(v191, qword_1000F0120);
      v185 = sub_1000C1558();
      v186 = sub_1000C2948();
      if (!os_log_type_enabled(v185, v186))
      {
        goto LABEL_83;
      }

      v187 = swift_slowAlloc();
      *v187 = 0;
      v188 = "Widget presenter: unable to display publicTemplate";
      goto LABEL_82;
    }

    if (v26 == enum case for REMNavigationSpecifier.newReminder(_:))
    {
      if (qword_1000EC9B0 != -1)
      {
        swift_once();
      }

      v192 = sub_1000C1568();
      sub_10000D978(v192, qword_1000F0120);
      v193 = sub_1000C1558();
      v194 = sub_1000C2948();
      if (!os_log_type_enabled(v193, v194))
      {
        goto LABEL_95;
      }

      v195 = swift_slowAlloc();
      *v195 = 0;
      v196 = "Widget presenter: unable to display newReminder";
    }

    else
    {
      if (v26 != enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
      {
        if (qword_1000EC9B0 != -1)
        {
          swift_once();
        }

        v198 = sub_1000C1568();
        sub_10000D978(v198, qword_1000F0120);
        v185 = sub_1000C1558();
        v186 = sub_1000C2948();
        if (!os_log_type_enabled(v185, v186))
        {
          goto LABEL_83;
        }

        v187 = swift_slowAlloc();
        *v187 = 0;
        v188 = "Widget presenter: unable to handle unknown navigation specifier";
        goto LABEL_82;
      }

      if (qword_1000EC9B0 != -1)
      {
        swift_once();
      }

      v197 = sub_1000C1568();
      sub_10000D978(v197, qword_1000F0120);
      v193 = sub_1000C1558();
      v194 = sub_1000C2948();
      if (!os_log_type_enabled(v193, v194))
      {
LABEL_95:

        return;
      }

      v195 = swift_slowAlloc();
      *v195 = 0;
      v196 = "Widget presenter: unable to handle requestLocationAuthorization";
    }

    _os_log_impl(&_mh_execute_header, v193, v194, v196, v195, 2u);

    goto LABEL_95;
  }

  if (qword_1000EC9B0 != -1)
  {
    swift_once();
  }

  v158 = sub_1000C1568();
  sub_10000D978(v158, qword_1000F0120);
  v159 = sub_1000C1558();
  v160 = sub_1000C2948();
  v161 = os_log_type_enabled(v159, v160);
  v162 = v207;
  v163 = v203;
  v164 = v204;
  if (v161)
  {
    v165 = swift_slowAlloc();
    *v165 = 0;
    _os_log_impl(&_mh_execute_header, v159, v160, "Widget presenter: unable to display search", v165, 2u);
  }

  (*(v163 + 8))(v162, v164);
}

void *sub_10008F144(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = *(type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0) - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = _swiftEmptyArrayStorage;
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_1000084C0(v9, &qword_1000ECD40, &unk_1000C5880);
    }

    else
    {
      v20 = v28;
      sub_10009DB2C(v9, v28, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      sub_10009DB2C(v20, v30, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1000224D4(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_1000224D4((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_10009DB2C(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t sub_10008F460(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for TTRNewWidgetPresenter.Division(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_10008F54C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v93 = a7;
  v94 = a4;
  v95 = a5;
  v96 = a3;
  v91 = sub_1000C0AF8();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v12;
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  __chkstk_darwin(Configuration);
  v90 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v14 - 8);
  v98 = &v81 - v15;
  v16 = sub_1000C1118();
  v85 = *(v16 - 8);
  __chkstk_darwin(v16);
  v83 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  __chkstk_darwin(v18 - 8);
  v20 = &v81 - v19;
  v21 = sub_1000C0938();
  v99 = *(v21 - 8);
  v100 = v21;
  __chkstk_darwin(v21);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v84 = &v81 - v25;
  __chkstk_darwin(v26);
  v97 = &v81 - v27;
  if (qword_1000EC9B0 != -1)
  {
    swift_once();
  }

  v28 = sub_1000C1568();
  v29 = sub_10000D978(v28, qword_1000F0120);

  v92 = v29;
  v30 = sub_1000C1558();
  v31 = sub_1000C2968();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v82 = v16;
    v33 = v23;
    v34 = v32;
    v35 = a6;
    v36 = v8;
    v37 = swift_slowAlloc();
    v101[0] = v37;
    *v34 = 136315138;
    *(v34 + 4) = sub_1000B7B58(a1, a2, v101);
    _os_log_impl(&_mh_execute_header, v30, v31, "Widget presenter: requested %s", v34, 0xCu);
    sub_10002285C(v37);
    v8 = v36;
    a6 = v35;

    v23 = v33;
    v16 = v82;
  }

  v38 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v38 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v39 = v99;
  v40 = v100;
  v41 = v98;
  if (v38)
  {
    sub_1000C0918();
    if ((*(v39 + 48))(v20, 1, v40) == 1)
    {
      v42 = a1;
      sub_1000084C0(v20, &qword_1000ECCE0, &qword_1000C4EF0);

      v43 = sub_1000C1558();
      v44 = sub_1000C2948();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v101[0] = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_1000B7B58(v42, a2, v101);
        _os_log_impl(&_mh_execute_header, v43, v44, "Widget presenter: unable to parse identifier %s", v45, 0xCu);
        sub_10002285C(v46);
      }
    }

    else
    {
      v91 = a6;
      v64 = v97;
      (*(v39 + 32))(v97, v20, v40);
      v65 = *(v39 + 16);
      v65(v84, v64, v40);
      sub_1000C1128();
      v66 = v85;
      if ((*(v85 + 48))(v41, 1, v16) == 1)
      {
        sub_1000084C0(v41, &qword_1000EFF50, &qword_1000C8D10);
        v67 = v97;
        v65(v23, v97, v40);
        v68 = sub_1000C1558();
        v69 = sub_1000C2948();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = v39;
          v72 = swift_slowAlloc();
          v101[0] = v72;
          *v70 = 136315138;
          sub_1000A064C(&qword_1000F0410, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v73 = sub_1000C2CA8();
          v74 = v23;
          v76 = v75;
          v77 = *(v71 + 8);
          v77(v74, v40);
          v78 = sub_1000B7B58(v73, v76, v101);

          *(v70 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v68, v69, "Widget presenter: unable to parse url %s", v70, 0xCu);
          sub_10002285C(v72);

          v77(v67, v40);
        }

        else
        {

          v80 = *(v39 + 8);
          v80(v23, v40);
          v80(v67, v40);
        }
      }

      else
      {
        v79 = v83;
        (*(v66 + 32))(v83, v41, v16);
        sub_10008D488(v79, v96, v94, v95, v91, v93);
        (*(v66 + 8))(v79, v16);
        (*(v39 + 8))(v97, v40);
      }
    }
  }

  else
  {
    v100 = *(v8 + 16);
    v47 = Configuration;
    v48 = v90;
    v49 = v95;
    sub_100090C24(&v90[*(Configuration + 20)]);
    v50 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v51 = *(v47 + 24);
    v52 = sub_1000C1388();
    (*(*(v52 - 8) + 16))(&v48[v51], v8 + v50, v52);
    v53 = *(v47 + 28);
    v54 = v89;
    v55 = *(v89 + 16);
    v56 = v91;
    v55(&v48[v53], v49, v91);
    v57 = v96;
    *v48 = v96;
    v58 = v87;
    v55(v87, v49, v56);
    v59 = (*(v54 + 80) + 40) & ~*(v54 + 80);
    v60 = (v88 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    *(v61 + 2) = v8;
    *(v61 + 3) = v57;
    *(v61 + 4) = v94;
    (*(v54 + 32))(&v61[v59], v58, v56);
    v62 = &v61[v60];
    v63 = v93;
    *v62 = a6;
    *(v62 + 1) = v63;

    sub_100068A80(v48, sub_1000A0880, v61);

    sub_100099C44(v48, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  }
}

void sub_10008FEEC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a1;
  v3 = sub_1000C0C58();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C1118();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C0938();
  v65 = *(v11 - 8);
  v66 = v11;
  __chkstk_darwin(v11);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000EC9B0 != -1)
  {
    swift_once();
  }

  v14 = sub_1000C1568();
  sub_10000D978(v14, qword_1000F0120);
  v15 = sub_1000C1558();
  v16 = sub_1000C2968();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v64 = v7;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Widget presenter: requesting placeholder view model", v17, 2u);
    v7 = v64;
  }

  v18 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
  v19 = sub_1000C10D8();
  (*(*(v19 - 8) + 104))(v10, v18, v19);
  (*(v8 + 104))(v10, enum case for REMNavigationSpecifier.root(_:), v7);
  sub_1000C1108();
  (*(v8 + 8))(v10, v7);
  v69._countAndFlagsBits = 119;
  v69._object = 0xE100000000000000;
  sub_1000C2708(v69, 100);
  v20 = objc_allocWithZone(NSAttributedString);
  v21 = sub_1000C2638();

  v22 = [v20 initWithString:v21];

  v24 = v67;
  v25 = (v67 + 1);
  if (__OFADD__(v67, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v67 != -1)
  {
    v26 = sub_100099BC0(v67 + 1, 0);
    v23 = sub_10009A638(v68, (v26 + 4), v24 + 1, 0, v24 + 1);
    if (v23 == v25)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v26 = _swiftEmptyArrayStorage;
LABEL_11:
  __chkstk_darwin(v23);
  v59[-2] = v13;
  v59[-1] = v22;
  v27 = sub_10008D0D8(sub_1000A0820, &v59[-4], v26);

  sub_1000C0C78();
  sub_1000C0C28();
  v64 = sub_1000C0C38();
  v28 = v13;
  v31 = *(v4 + 8);
  v30 = v4 + 8;
  v29 = v31;
  v31(v6, v3);
  v70._countAndFlagsBits = 119;
  v70._object = 0xE100000000000000;
  v32 = sub_1000C2708(v70, 20);
  if (!__OFADD__(v24, 2))
  {
    v62 = v32;
    v63 = v24 + 2;
    v61 = v33;
    v34 = type metadata accessor for TTRNewWidgetViewModel(0);
    v67 = v27;
    v59[1] = v30;
    v35 = v34;
    v36 = *(v34 + 28);
    v60 = v28;
    v37 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
    v38 = sub_1000C0E28();
    (*(*(v38 - 8) + 104))(&a2[v36], v37, v38);
    v39 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:);
    v40 = sub_1000C0E58();
    (*(*(v40 - 8) + 104))(&a2[v36], v39, v40);
    v71._countAndFlagsBits = 119;
    v71._object = 0xE100000000000000;
    v41 = sub_1000C2708(v71, 10);
    v43 = v42;
    v44 = v35[9];
    v45 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    (*(*(v45 - 8) + 56))(&a2[v44], 1, 1, v45);
    sub_1000C0C28();
    v46 = sub_1000C0C48();
    v48 = v47;

    v29(v6, v3);
    v50 = v65;
    v49 = v66;
    v51 = v60;
    (*(v65 + 16))(&a2[v35[18]], v60, v66);
    v52 = v61;
    *a2 = v62;
    *(a2 + 1) = v52;
    v53 = v64;
    *(a2 + 2) = v63;
    *(a2 + 3) = 11565;
    *(a2 + 4) = 0xE200000000000000;
    v54 = &a2[v35[8]];
    *v54 = v41;
    *(v54 + 1) = v43;
    *&a2[v35[10]] = v53;
    v55 = &a2[v35[11]];
    *v55 = v46;
    *(v55 + 1) = v48;
    *&a2[v35[12]] = 0;
    v56 = &a2[v35[13]];
    *v56 = 0;
    *(v56 + 1) = 0;
    v57 = &a2[v35[14]];
    *v57 = 0;
    *(v57 + 1) = 0;
    a2[v35[15]] = 0;
    v58 = &a2[v35[16]];
    *v58 = 0;
    *(v58 + 1) = 0;
    *&a2[v35[17]] = 0;
    *&a2[v35[19]] = v67;
    a2[v35[20]] = 1;
    (*(v50 + 8))(v51, v49);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100090590()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000F0120);
  v1 = sub_10000D978(v0, qword_1000F0120);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100090658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v37 = a4;
  v38 = a3;
  v36 = sub_1000C0C18();
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v36);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v10 = (Configuration - 8);
  __chkstk_darwin(Configuration);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004D04(&qword_1000F0278, &unk_1000C8CA0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v33 - v16;
  (*(v14 + 16))(&v33 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v18, v17, v13);
  v33 = *(a2 + 16);
  v20 = v34;
  sub_100090C24(&v12[v10[7]]);
  v21 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
  v22 = v10[8];
  v23 = sub_1000C1388();
  (*(*(v23 - 8) + 16))(&v12[v22], a2 + v21, v23);
  v24 = v10[9];
  v25 = sub_1000C0AF8();
  (*(*(v25 - 8) + 16))(&v12[v24], v20, v25);
  v26 = v38;
  *v12 = v37;
  v27 = v35;
  v28 = v36;
  (*(v7 + 16))(v35, v26, v36);
  v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v30 = swift_allocObject();
  (*(v7 + 32))(v30 + v29, v27, v28);
  v31 = (v30 + ((v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v31 = sub_100099A04;
  v31[1] = v19;

  sub_10006D34C(v26, v12, sub_100099B20, v30);

  return sub_100099C44(v12, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
}

uint64_t sub_1000909F0(uint64_t a1)
{

  sub_100004D04(&qword_1000F0278, &unk_1000C8CA0);
  return sub_1000C2828();
}

id sub_100090A40@<X0>(void *a1@<X0>, void *a2@<X2>, char *a3@<X8>)
{
  v6 = sub_1000C08D8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = *a1;
  v15[0] = sub_1000C2CA8();
  v15[1] = v10;
  (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  v11 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  sub_100012814();
  sub_1000C0928();
  (*(v7 + 8))(v9, v6);

  v12 = v11[6];
  v13 = sub_1000C0818();
  (*(*(v13 - 8) + 56))(&a3[v12], 1, 1, v13);
  *a3 = a2;
  *(a3 + 1) = 0;
  *&a3[v11[8]] = 0;
  *&a3[v11[9]] = 0;
  a3[v11[10]] = 0;
  a3[v11[11]] = 0;
  return a2;
}

uint64_t sub_100090C24@<X0>(char *a2@<X8>)
{
  v28 = a2;
  v27 = sub_100004D04(&qword_1000EE308, &unk_1000C8CC0);
  __chkstk_darwin(v27);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = sub_1000C0BC8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C0AF8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  sub_1000C0A48();
  sub_1000C0B98();
  sub_1000C0B88();
  (*(v9 + 8))(v11, v8);
  sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_1000C25E8();
  if (result)
  {
    v20 = *(v13 + 32);
    v20(v7, v18, v12);
    v21 = v27;
    v20(&v7[*(v27 + 48)], v15, v12);
    sub_1000082B4(v7, v4, &qword_1000EE308, &unk_1000C8CC0);
    v22 = *(v21 + 48);
    v23 = v28;
    v20(v28, v4, v12);
    v24 = *(v13 + 8);
    v24(&v4[v22], v12);
    sub_10001DA60(v7, v4, &qword_1000EE308, &unk_1000C8CC0);
    v25 = *(v21 + 48);
    v26 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
    v20(&v23[*(v26 + 36)], &v4[v25], v12);
    return (v24)(v4, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100090F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v50 = a6;
  v51 = a7;
  v46 = a5;
  v48 = a4;
  v49 = a2;
  v47 = sub_1000C0AF8();
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v47);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v43 - v14);
  v16 = sub_100004D04(&qword_1000EFC20, &unk_1000C7DC0);
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  sub_1000082B4(a1, &v43 - v17, &qword_1000EFC20, &unk_1000C7DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v19 = sub_1000C1568();
    sub_10000D978(v19, qword_1000F0120);
    swift_errorRetain();
    v20 = sub_1000C1558();
    v21 = sub_1000C2948();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v52 = v23;
      *v22 = 136446210;
      swift_getErrorValue();
      v24 = sub_1000C2D08();
      v26 = sub_1000B7B58(v24, v25, &v52);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Widget presenter: Could not fetch default list because {error: %{public}s}", v22, 0xCu);
      sub_10002285C(v23);
    }

    v50(_swiftEmptyArrayStorage);
  }

  else
  {
    sub_10001DA60(v18, v15, &qword_1000EFC28, &unk_1000C8CE0);
    v28 = v15;
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v29 = sub_1000C1568();
    sub_10000D978(v29, qword_1000F0120);
    v30 = sub_1000C1558();
    v31 = sub_1000C2968();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Widget presenter: Fetched default list", v32, 2u);
    }

    v43 = *v15;
    sub_1000082B4(v15, v12, &qword_1000EFC28, &unk_1000C8CE0);
    v33 = v45;
    v34 = v47;
    (*(v8 + 16))(v45, v46, v47);
    v35 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v46 = v28;
    v36 = (v11 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (*(v8 + 80) + v36 + 8) & ~*(v8 + 80);
    v38 = (v9 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    sub_10001DA60(v12, v39 + v35, &qword_1000EFC28, &unk_1000C8CE0);
    *(v39 + v36) = v49;
    (*(v8 + 32))(v39 + v37, v33, v34);
    v40 = v48;
    *(v39 + v38) = v48;
    v41 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
    v42 = v51;
    *v41 = v50;
    v41[1] = v42;

    sub_1000953BC(v43, v40, sub_1000A0840, v39);

    return sub_1000084C0(v46, &qword_1000EFC28, &unk_1000C8CE0);
  }
}

uint64_t sub_100091504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v85 = a8;
  v88 = a7;
  v82 = a6;
  v83 = a5;
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  __chkstk_darwin(Configuration);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C0AF8();
  v86 = *(v13 - 8);
  v87 = v13;
  __chkstk_darwin(v13);
  v84 = v14;
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0);
  v79 = *(v16 - 8);
  v17 = *(v79 + 8);
  __chkstk_darwin(v16 - 8);
  v80 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = (&v76 - v19);
  v21 = sub_100004D04(&qword_1000EFC20, &unk_1000C7DC0);
  __chkstk_darwin(v21);
  v23 = (&v76 - v22);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a3(_swiftEmptyArrayStorage);
  }

  v25 = Strong;
  v77 = a4;
  v78 = a3;
  sub_1000082B4(a1, v23, &qword_1000EFC20, &unk_1000C7DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v79 = v15;
    v26 = *v23;
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v27 = sub_1000C1568();
    sub_10000D978(v27, qword_1000F0120);
    v28 = v83;
    swift_errorRetain();
    v29 = sub_1000C1558();
    v30 = sub_1000C2948();

    v31 = os_log_type_enabled(v29, v30);
    v80 = v26;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89 = v83;
      *v32 = 138543618;
      *(v32 + 4) = v28;
      *v33 = v28;
      *(v32 + 12) = 2082;
      swift_getErrorValue();
      v34 = v28;
      v35 = sub_1000C2D08();
      v37 = sub_1000B7B58(v35, v36, &v89);

      *(v32 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Widget presenter: Could not fetch list {listID: %{public}@ error: %{public}s}", v32, 0x16u);
      sub_1000084C0(v33, &qword_1000F0280, &qword_1000C8CF0);

      sub_10002285C(v83);
    }

    v83 = *(v25 + 16);
    v38 = Configuration;
    v39 = v85;
    sub_100090C24(&v12[*(Configuration + 20)]);
    v40 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v41 = *(v38 + 24);
    v42 = sub_1000C1388();
    (*(*(v42 - 8) + 16))(&v12[v41], v25 + v40, v42);
    v43 = v86;
    v44 = *(v86 + 16);
    v45 = &v12[*(v38 + 28)];
    v46 = v25;
    v47 = v87;
    v44(v45, v39, v87);
    v48 = v82;
    *v12 = v82;
    v49 = v79;
    v44(v79, v39, v47);
    v50 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v51 = (v84 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 2) = v46;
    *(v52 + 3) = v48;
    *(v52 + 4) = v88;
    (*(v43 + 32))(&v52[v50], v49, v47);
    v53 = &v52[v51];
    v54 = v77;
    *v53 = v78;
    *(v53 + 1) = v54;

    sub_100068A80(v12, sub_10009A158, v52);

    sub_100099C44(v12, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  }

  else
  {
    sub_10001DA60(v23, v20, &qword_1000EFC28, &unk_1000C8CE0);
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v56 = v15;
    v82 = v25;
    v57 = sub_1000C1568();
    sub_10000D978(v57, qword_1000F0120);
    v58 = v83;
    v59 = sub_1000C1558();
    v60 = sub_1000C2968();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138543362;
      *(v61 + 4) = v58;
      *v62 = v58;
      v63 = v58;
      _os_log_impl(&_mh_execute_header, v59, v60, "Widget presenter: Fetched list {listID: %{public}@}", v61, 0xCu);
      sub_1000084C0(v62, &qword_1000F0280, &qword_1000C8CF0);
    }

    v76 = v20;
    v83 = *v20;
    v64 = v20;
    v65 = v80;
    sub_1000082B4(v64, v80, &qword_1000EFC28, &unk_1000C8CE0);
    v66 = v86;
    v67 = v87;
    (*(v86 + 16))(v56, v85, v87);
    v68 = (v79[80] + 16) & ~v79[80];
    v69 = (v17 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = (*(v66 + 80) + v69 + 8) & ~*(v66 + 80);
    v71 = (v84 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    sub_10001DA60(v65, v72 + v68, &qword_1000EFC28, &unk_1000C8CE0);
    *(v72 + v69) = v82;
    (*(v66 + 32))(v72 + v70, v56, v67);
    v73 = v88;
    *(v72 + v71) = v88;
    v74 = (v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8));
    v75 = v77;
    *v74 = v78;
    v74[1] = v75;

    sub_1000953BC(v83, v73, sub_10009A160, v72);

    return sub_1000084C0(v76, &qword_1000EFC28, &unk_1000C8CE0);
  }
}

uint64_t sub_100091D7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = a8;
  v74 = a7;
  v71 = a6;
  v72 = a5;
  v11 = sub_1000C0AF8();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  __chkstk_darwin(v11);
  v68 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  __chkstk_darwin(Configuration);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004D04(&qword_1000EFC60, &qword_1000C7E48);
  __chkstk_darwin(v15 - 8);
  v17 = (&v62 - v16);
  v18 = sub_100004D04(&qword_1000EFC58, &qword_1000C7E40);
  __chkstk_darwin(v18);
  v20 = (&v62 - v19);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (a3)(_swiftEmptyArrayStorage);
  }

  v22 = Strong;
  v65 = a3;
  v66 = a4;
  sub_1000082B4(a1, v20, &qword_1000EFC58, &qword_1000C7E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v20;
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v24 = sub_1000C1568();
    sub_10000D978(v24, qword_1000F0120);
    v25 = v72;
    swift_errorRetain();
    v26 = sub_1000C1558();
    v27 = sub_1000C2948();

    v28 = os_log_type_enabled(v26, v27);
    v64 = v23;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v63 = v30;
      v72 = swift_slowAlloc();
      v75 = v72;
      *v29 = 138543618;
      *(v29 + 4) = v25;
      *v30 = v25;
      *(v29 + 12) = 2082;
      swift_getErrorValue();
      LOBYTE(v30) = v27;
      v31 = v25;
      v32 = sub_1000C2D08();
      v34 = sub_1000B7B58(v32, v33, &v75);

      *(v29 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v26, v30, "Widget presenter: Could not fetch custom smart list {customSmartListID: %{public}@ error: %{public}s}", v29, 0x16u);
      sub_1000084C0(v63, &qword_1000F0280, &qword_1000C8CF0);

      sub_10002285C(v72);
    }

    v72 = *(v22 + 16);
    v35 = Configuration;
    v36 = v73;
    sub_100090C24(&v14[*(Configuration + 20)]);
    v37 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v38 = *(v35 + 24);
    v39 = sub_1000C1388();
    (*(*(v39 - 8) + 16))(&v14[v38], v22 + v37, v39);
    v40 = *(v35 + 28);
    v42 = v69;
    v41 = v70;
    v43 = *(v69 + 16);
    v43(&v14[v40], v36, v70);
    v44 = v71;
    *v14 = v71;
    v45 = v68;
    v43(v68, v36, v41);
    v46 = (*(v42 + 80) + 40) & ~*(v42 + 80);
    v47 = (v12 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    *(v48 + 2) = v22;
    *(v48 + 3) = v44;
    *(v48 + 4) = v74;
    (*(v42 + 32))(&v48[v46], v45, v41);
    v49 = &v48[v47];
    v50 = v66;
    *v49 = v65;
    v49[1] = v50;

    sub_100068A80(v14, sub_1000A0880, v48);

    sub_100099C44(v14, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  }

  else
  {
    sub_10001DA60(v20, v17, &qword_1000EFC60, &qword_1000C7E48);
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v52 = sub_1000C1568();
    sub_10000D978(v52, qword_1000F0120);
    v53 = v72;
    v54 = sub_1000C1558();
    v55 = sub_1000C2968();

    v56 = os_log_type_enabled(v54, v55);
    v58 = v65;
    v57 = v66;
    if (v56)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138543362;
      *(v59 + 4) = v53;
      *v60 = v53;
      v61 = v53;
      _os_log_impl(&_mh_execute_header, v54, v55, "Widget presenter: Fetched custom smart list {customSmartListID: %{public}@}", v59, 0xCu);
      sub_1000084C0(v60, &qword_1000F0280, &qword_1000C8CF0);
    }

    sub_10009DEFC(v17, v74, v73, v58, v57);

    return sub_1000084C0(v17, &qword_1000EFC60, &qword_1000C7E48);
  }
}

uint64_t sub_10009245C(char *a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v69 = a4;
  v70 = a3;
  v73 = a2;
  v68 = a1;
  v4 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  __chkstk_darwin(v4 - 8);
  v75 = &v66 - v5;
  v76 = sub_1000C0AF8();
  v72 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v74 = &v66 - v8;
  v9 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v66 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000C0C18();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  v67 = sub_100004D04(&qword_1000EFBE8, &unk_1000C8CB0);
  __chkstk_darwin(v67);
  v20 = &v66 - v19;
  v21 = sub_100004D04(&qword_1000EFB98, &qword_1000C7C50);
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  sub_1000082B4(v68, &v66 - v22, &qword_1000EFB98, &qword_1000C7C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v24 = sub_1000C1568();
    sub_10000D978(v24, qword_1000F0120);
    v25 = v15;
    (*(v13 + 16))(v15, v73, v12);
    swift_errorRetain();
    v26 = v12;
    v27 = sub_1000C1558();
    v28 = sub_1000C2948();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v29 = 136446466;
      v30 = sub_1000C0C08();
      v32 = v31;
      (*(v13 + 8))(v25, v26);
      v33 = sub_1000B7B58(v30, v32, &v77);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      swift_getErrorValue();
      v34 = sub_1000C2D18();
      v36 = sub_1000B7B58(v34, v35, &v77);

      *(v29 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "Widget presenter: Could not fetch pre-defined smart list {predefinedSmartListType: %{public}s, error %{public}s}", v29, 0x16u);
      swift_arrayDestroy();

      v37 = v70;
    }

    else
    {

      (*(v13 + 8))(v15, v26);
      v37 = v70;
    }

    v37(_swiftEmptyArrayStorage);
  }

  else
  {
    sub_10001DA60(v23, v20, &qword_1000EFBE8, &unk_1000C8CB0);
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v38 = sub_1000C1568();
    sub_10000D978(v38, qword_1000F0120);
    (*(v13 + 16))(v18, v73, v12);
    v39 = sub_1000C1558();
    v40 = sub_1000C2968();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v77 = v42;
      *v41 = 136446210;
      v73 = sub_1000C0C08();
      v44 = v43;
      (*(v13 + 8))(v18, v12);
      v45 = sub_1000B7B58(v73, v44, &v77);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "Widget presenter: Fetched pre-defined smart list {predefinedSmartListType: %{public}s}", v41, 0xCu);
      sub_10002285C(v42);
    }

    else
    {

      (*(v13 + 8))(v18, v12);
    }

    v47 = *(v67 + 40);
    v68 = v20;
    v48 = *&v20[v47];
    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = v48 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
      v73 = *(v66 + 72);
      v51 = (v72 + 32);
      v52 = (v72 + 56);
      v53 = _swiftEmptyArrayStorage;
      v54 = (v72 + 48);
      do
      {
        sub_10009DA8C(v50, v11, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
        sub_100026D74(v11, v11[3]);
        if ((sub_1000C0DA8() & 1) != 0 || (sub_100026D74(v11, v11[3]), (v55 = sub_1000C0D98()) == 0))
        {
          v62 = 1;
          v59 = v75;
          v61 = v76;
        }

        else
        {
          v56 = v55;
          v57 = [v55 date];

          v58 = v71;
          sub_1000C0AA8();

          v59 = v75;
          v60 = v58;
          v61 = v76;
          (*v51)(v75, v60, v76);
          v62 = 0;
        }

        (*v52)(v59, v62, 1, v61);
        sub_100099C44(v11, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
        if ((*v54)(v59, 1, v61) == 1)
        {
          sub_1000084C0(v59, &qword_1000EE300, &unk_1000C6370);
        }

        else
        {
          v63 = *v51;
          (*v51)(v74, v59, v61);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_1000224AC(0, *(v53 + 2) + 1, 1, v53);
          }

          v65 = *(v53 + 2);
          v64 = *(v53 + 3);
          if (v65 >= v64 >> 1)
          {
            v53 = sub_1000224AC((v64 > 1), v65 + 1, 1, v53);
          }

          *(v53 + 2) = v65 + 1;
          v63(&v53[((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v65], v74, v76);
        }

        v50 += v73;
        --v49;
      }

      while (v49);
    }

    else
    {
      v53 = _swiftEmptyArrayStorage;
    }

    v70(v53);

    return sub_1000084C0(v68, &qword_1000EFBE8, &unk_1000C8CB0);
  }
}

uint64_t sub_100092DA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void (*a7)(uint64_t, __n128), uint64_t a8)
{
  v119 = a8;
  v120 = a7;
  v125 = a6;
  v123 = a3;
  v133 = a2;
  v128 = a1;
  v8 = type metadata accessor for TTRNewWidgetPresenter.Snapshot(0);
  v130 = *(v8 - 8);
  v131 = v8;
  __chkstk_darwin(v8);
  v124 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v127 = v111 - v11;
  v12 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
  __chkstk_darwin(v12 - 8);
  v14 = v111 - v13;
  v129 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v113 = *(v129 - 8);
  __chkstk_darwin(v129);
  v132 = (v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v112 = *(v134 - 8);
  __chkstk_darwin(v134);
  v17 = v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v18 - 8);
  v122 = v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v121 = v111 - v21;
  v118 = sub_1000C1118();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1000C0C18();
  v23 = *(v126 - 8);
  __chkstk_darwin(v126);
  v25 = v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v111 - v27;
  v114 = sub_100004D04(&qword_1000EFBE8, &unk_1000C8CB0);
  __chkstk_darwin(v114);
  v30 = v111 - v29;
  v31 = sub_100004D04(&qword_1000EFB98, &qword_1000C7C50);
  __chkstk_darwin(v31);
  v33 = v111 - v32;
  sub_1000082B4(v128, v111 - v32, &qword_1000EFB98, &qword_1000C7C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v34 = sub_1000C1568();
    sub_10000D978(v34, qword_1000F0120);
    v35 = v25;
    v36 = v25;
    v37 = v126;
    (*(v23 + 16))(v36, v133, v126);
    swift_errorRetain();
    v38 = sub_1000C1558();
    v39 = sub_1000C2948();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v135[0] = swift_slowAlloc();
      *v40 = 136446466;
      v41 = sub_1000C0C08();
      v43 = v42;
      (*(v23 + 8))(v35, v37);
      v44 = sub_1000B7B58(v41, v43, v135);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      swift_getErrorValue();
      v45 = sub_1000C2D18();
      v47 = sub_1000B7B58(v45, v46, v135);

      *(v40 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "Widget presenter: Could not fetch pre-defined smart list {predefinedSmartListType: %{public}s, error %{public}s}", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v23 + 8))(v35, v37);
    }

    (v120)(_swiftEmptyArrayStorage);
  }

  sub_10001DA60(v33, v30, &qword_1000EFBE8, &unk_1000C8CB0);
  if (qword_1000EC9B0 != -1)
  {
    swift_once();
  }

  v115 = v30;
  v48 = sub_1000C1568();
  sub_10000D978(v48, qword_1000F0120);
  v49 = v126;
  (*(v23 + 16))(v28, v133, v126);
  v50 = sub_1000C1558();
  v51 = sub_1000C2968();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v135[0] = v53;
    *v52 = 136446210;
    v128 = sub_1000C0C08();
    v55 = v54;
    (*(v23 + 8))(v28, v49);
    v56 = sub_1000B7B58(v128, v55, v135);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v50, v51, "Widget presenter: Fetched pre-defined smart list {predefinedSmartListType: %{public}s}", v52, 0xCu);
    sub_10002285C(v53);
  }

  else
  {

    (*(v23 + 8))(v28, v49);
  }

  v58 = v117;
  v59 = v116;
  v60 = sub_1000C0BD8();
  v61 = v121;
  sub_1000C29A8();
  v62 = *(v58 + 48);
  v63 = v118;
  if (v62(v61, 1, v118) == 1)
  {
    v64 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
    v65 = sub_1000C10B8();
    (*(*(v65 - 8) + 104))(v59, v64, v65);
    (*(v58 + 104))(v59, enum case for REMNavigationSpecifier.today(_:), v63);
    v66 = v62(v61, 1, v63);
    v67 = v114;
    if (v66 != 1)
    {
      sub_1000084C0(v61, &qword_1000EFF50, &qword_1000C8D10);
    }
  }

  else
  {
    (*(v58 + 32))(v59, v61, v63);
    v67 = v114;
  }

  v114 = v60;
  LODWORD(v126) = sub_1000C2998();
  v68 = *(v67 + 40);
  v69 = *&v115[*(v67 + 36)];
  v128 = *&v115[v68];
  v70 = v122;
  (*(v58 + 16))(v122, v59, v63);
  v71 = (*(v58 + 56))(v70, 0, 1, v63);
  __chkstk_darwin(v71);
  v72 = v125;
  v73 = v123;
  v111[-4] = v125;
  v111[-3] = v73;
  v111[-2] = v70;
  v133 = sub_10008D27C(sub_1000A0864, &v111[-6], v69, type metadata accessor for TTRNewWidgetViewModel.Reminder, sub_1000BA468, type metadata accessor for TTRNewWidgetInteractorReminderWrapper, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  __chkstk_darwin(v133);
  v111[-2] = v73;
  v111[-1] = v70;
  v74 = sub_10008F144(sub_1000A0884, &v111[-4], v69);
  __chkstk_darwin(v74);
  v111[-2] = v73;
  v111[-1] = v70;
  v75 = sub_10008F144(sub_1000A089C, &v111[-4], v69);
  v76 = sub_10009A6D4(v128);
  v77 = sub_10009B378(v76, v72);

  v135[0] = v69;

  sub_100078858(v78);
  v79 = sub_10009C674(v77, v135[0], v72);

  v80 = v79[2];
  if (v80)
  {
    v111[1] = 0;
    v81 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v111[0] = v79;
    v82 = v79 + v81;
    v128 = *(v112 + 72);
    v83 = v75;
    v84 = (v113 + 6);
    v85 = _swiftEmptyArrayStorage;
    v121 = v74;
    v113 = v83;
    if (v126)
    {
      v86 = v83;
    }

    else
    {
      v86 = v74;
    }

    v125 = v14;
    v126 = v86;
    v87 = v124;
    v88 = v133;
    while (1)
    {
      sub_10009DA8C(v82, v17, type metadata accessor for TTRNewWidgetPresenter.Division);
      sub_1000082B4(v17, v14, &qword_1000F0290, &qword_1000C8D08);
      if ((*v84)(v14, 1, v129) == 1)
      {
        sub_1000084C0(v14, &qword_1000F0290, &qword_1000C8D08);
      }

      else
      {
        v95 = v132;
        sub_10009DB2C(v14, v132, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
        sub_100026D74(v95, v95[3]);
        if (sub_1000C0DA8() & 1) == 0 || (v88 = v133, (v17[*(v134 + 24)]))
        {

          v97 = sub_1000983DC(v96, v132, v122);

          v98 = *(v134 + 20);
          v99 = sub_1000C0AF8();
          v100 = &v17[v98];
          v101 = v127;
          (*(*(v99 - 8) + 16))(v127, v100, v99);
          v102 = v131;
          *(v101 + *(v131 + 20)) = v97;
          *(v101 + *(v102 + 24)) = 1065353216;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_1000224FC(0, v85[2] + 1, 1, v85);
          }

          v104 = v85[2];
          v103 = v85[3];
          v87 = v124;
          if (v104 >= v103 >> 1)
          {
            v85 = sub_1000224FC((v103 > 1), v104 + 1, 1, v85);
          }

          sub_100099C44(v17, type metadata accessor for TTRNewWidgetPresenter.Division);
          v85[2] = v104 + 1;
          sub_10009DB2C(v127, v85 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v104, type metadata accessor for TTRNewWidgetPresenter.Snapshot);
          sub_100099C44(v132, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
          goto LABEL_23;
        }

        sub_100099C44(v132, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
        v87 = v124;
      }

      v89 = v134;
      if (!v17[*(v134 + 24)])
      {
        v88 = v126;
      }

      v90 = *(v89 + 20);
      v91 = sub_1000C0AF8();
      (*(*(v91 - 8) + 16))(v87, &v17[v90], v91);
      v92 = v131;
      *(v87 + *(v131 + 20)) = v88;
      *(v87 + *(v92 + 24)) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_1000224FC(0, v85[2] + 1, 1, v85);
      }

      v14 = v125;
      v94 = v85[2];
      v93 = v85[3];
      if (v94 >= v93 >> 1)
      {
        v85 = sub_1000224FC((v93 > 1), v94 + 1, 1, v85);
      }

      sub_100099C44(v17, type metadata accessor for TTRNewWidgetPresenter.Division);
      v85[2] = v94 + 1;
      sub_10009DB2C(v87, v85 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v94, type metadata accessor for TTRNewWidgetPresenter.Snapshot);
LABEL_23:
      v82 += v128;
      --v80;
      v88 = v133;
      if (!v80)
      {

        v105 = v118;
        goto LABEL_42;
      }
    }
  }

  v85 = _swiftEmptyArrayStorage;
  v105 = v118;
LABEL_42:

  v106 = sub_1000084C0(v122, &qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v106);
  v107 = v114;
  v111[-4] = v123;
  v111[-3] = v107;
  v108 = v115;
  v109 = v116;
  v111[-2] = v115;
  v111[-1] = v109;
  v110 = sub_10008D27C(sub_10009EA4C, &v111[-6], v85, type metadata accessor for TTRNewWidgetTimelineEntry, sub_1000BA4F0, type metadata accessor for TTRNewWidgetPresenter.Snapshot, type metadata accessor for TTRNewWidgetTimelineEntry);

  (v120)(v110);

  (*(v117 + 8))(v109, v105);
  return sub_1000084C0(v108, &qword_1000EFBE8, &unk_1000C8CB0);
}

uint64_t sub_100093F14(uint64_t a1, uint64_t a2, uint64_t a3, id *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, __n128), uint64_t a9)
{
  v86 = a8;
  v84 = a7;
  v92 = a6;
  v83 = a3;
  v82 = a2;
  v80 = a1;
  v85 = a9;
  v11 = type metadata accessor for TTRNewWidgetPresenter.Snapshot(0);
  v94 = *(v11 - 8);
  v95 = v11;
  __chkstk_darwin(v11);
  v89 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v90 = v74 - v14;
  v15 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
  __chkstk_darwin(v15 - 8);
  v17 = v74 - v16;
  v93 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v76 = *(v93 - 8);
  __chkstk_darwin(v93);
  v96 = (v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v75 = *(v97 - 8);
  __chkstk_darwin(v97);
  v20 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v21 - 8);
  v23 = v74 - v22;
  v24 = sub_1000C1118();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(sub_100004D04(&qword_1000EDA48, &unk_1000C5830) + 48);
  *v27 = [*a4 objectID];
  v29 = enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:);
  v30 = sub_1000C10C8();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  (*(v25 + 104))(v27, enum case for REMNavigationSpecifier.list(_:), v24);
  v31 = sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0);
  v32 = *(v31 + 40);
  v33 = *(a4 + *(v31 + 36));
  v81 = a4;
  v34 = *(a4 + v32);
  v35 = *(v25 + 16);
  v77 = v27;
  v35(v23, v27, v24);
  v78 = v25;
  v36 = *(v25 + 56);
  v79 = v24;
  v36(v23, 0, 1, v24);
  v37 = v92;
  v106 = v92;
  v107 = a5;
  v108 = v23;
  v98 = sub_10008D27C(sub_10009A450, v105, v33, type metadata accessor for TTRNewWidgetViewModel.Reminder, sub_1000BA468, type metadata accessor for TTRNewWidgetInteractorReminderWrapper, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v103 = a5;
  v104 = v23;
  v91 = sub_10008F144(sub_10009A474, v102, v33);
  v88 = a5;
  v100 = a5;
  v101 = v23;
  v87 = v23;
  sub_10008F144(sub_10009A490, v99, v33);

  v38 = sub_10009A6D4(v34);
  v39 = v37;
  v40 = sub_10009B378(v38, v37);

  v109 = v33;

  sub_100078858(v41);
  v42 = sub_10009C674(v40, v109, v39);

  v43 = v42[2];
  if (!v43)
  {

    v46 = _swiftEmptyArrayStorage;
    v66 = v86;
    goto LABEL_23;
  }

  v74[1] = 0;
  v44 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v74[0] = v42;
  v45 = v42 + v44;
  v92 = *(v75 + 72);
  v46 = _swiftEmptyArrayStorage;
  v47 = (v76 + 48);
  v48 = v89;
  v49 = v98;
  do
  {
    sub_10009DA8C(v45, v20, type metadata accessor for TTRNewWidgetPresenter.Division);
    sub_1000082B4(v20, v17, &qword_1000F0290, &qword_1000C8D08);
    if ((*v47)(v17, 1, v93) == 1)
    {
      sub_1000084C0(v17, &qword_1000F0290, &qword_1000C8D08);
LABEL_7:
      v50 = v97;
      if (!v20[*(v97 + 24)])
      {
        v49 = v91;
      }

      v51 = *(v50 + 20);
      v52 = sub_1000C0AF8();
      (*(*(v52 - 8) + 16))(v48, &v20[v51], v52);
      v53 = v95;
      *(v48 + *(v95 + 20)) = v49;
      *(v48 + *(v53 + 24)) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1000224FC(0, v46[2] + 1, 1, v46);
      }

      v55 = v46[2];
      v54 = v46[3];
      if (v55 >= v54 >> 1)
      {
        v46 = sub_1000224FC((v54 > 1), v55 + 1, 1, v46);
      }

      sub_100099C44(v20, type metadata accessor for TTRNewWidgetPresenter.Division);
      v46[2] = v55 + 1;
      sub_10009DB2C(v48, v46 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v55, type metadata accessor for TTRNewWidgetPresenter.Snapshot);
      goto LABEL_4;
    }

    v56 = v96;
    sub_10009DB2C(v17, v96, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
    sub_100026D74(v56, v56[3]);
    if (sub_1000C0DA8())
    {
      v49 = v98;
      if ((v20[*(v97 + 24)] & 1) == 0)
      {
        sub_100099C44(v96, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
        v48 = v89;
        goto LABEL_7;
      }
    }

    v58 = sub_1000983DC(v57, v96, v87);

    v59 = *(v97 + 20);
    v60 = sub_1000C0AF8();
    v61 = &v20[v59];
    v62 = v90;
    (*(*(v60 - 8) + 16))(v90, v61, v60);
    v63 = v95;
    *(v62 + *(v95 + 20)) = v58;
    *(v62 + *(v63 + 24)) = 1065353216;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_1000224FC(0, v46[2] + 1, 1, v46);
    }

    v65 = v46[2];
    v64 = v46[3];
    v48 = v89;
    if (v65 >= v64 >> 1)
    {
      v46 = sub_1000224FC((v64 > 1), v65 + 1, 1, v46);
    }

    sub_100099C44(v20, type metadata accessor for TTRNewWidgetPresenter.Division);
    v46[2] = v65 + 1;
    sub_10009DB2C(v90, v46 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v65, type metadata accessor for TTRNewWidgetPresenter.Snapshot);
    sub_100099C44(v96, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
LABEL_4:
    v45 += v92;
    --v43;
    v49 = v98;
  }

  while (v43);

  v66 = v86;
LABEL_23:

  v67 = sub_1000084C0(v87, &qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v67);
  v68 = v81;
  v74[-8] = v88;
  v74[-7] = v68;
  v69 = v77;
  v70 = v80;
  v74[-6] = v77;
  v74[-5] = v70;
  v71 = v83;
  v74[-4] = v82;
  v74[-3] = v71;
  v74[-2] = v84;
  v72 = sub_10008D27C(sub_10009DAF4, &v74[-10], v46, type metadata accessor for TTRNewWidgetTimelineEntry, sub_1000BA4F0, type metadata accessor for TTRNewWidgetPresenter.Snapshot, type metadata accessor for TTRNewWidgetTimelineEntry);

  (v66)(v72);

  return (*(v78 + 8))(v69, v79);
}

uint64_t sub_100094A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v103 = a7;
  v101 = a6;
  v102 = a5;
  v99 = a4;
  v95 = a2;
  v9 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  __chkstk_darwin(v9 - 8);
  v98 = &v82 - v10;
  v11 = sub_1000C0E58();
  v107 = *(v11 - 8);
  v108 = v11;
  __chkstk_darwin(v11);
  v106 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C0C58();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C0938();
  v96 = *(v17 - 8);
  v97 = v17;
  __chkstk_darwin(v17);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for TTRNewWidgetViewModel(0);
  __chkstk_darwin(v85);
  v21 = (&v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *a3;
  v22 = *(a3 + 8);
  v94 = a3;
  v105 = v22;
  v89 = *(sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0) + 32);
  v24 = type metadata accessor for TTRNewWidgetPresenter.Snapshot(0);
  v104 = *(a1 + *(v24 + 20));
  v93 = v19;
  sub_1000C1108();
  v25 = *(v24 + 24);
  v100 = a1;
  v26 = *(a1 + v25);
  sub_1000C0C78();
  v27 = sub_10007E3A8(0, &qword_1000EFF48, REMList_ptr);
  v110 = v27;
  v111 = &protocol witness table for REMList;
  v109[0] = v23;
  v28 = v23;
  sub_1000C0C68();
  sub_1000084C0(v109, &qword_1000F02A8, &qword_1000C8D28);
  v92 = sub_1000C0C38();
  v29 = *(v14 + 8);
  v29(v16, v13);
  v110 = v27;
  v111 = &protocol witness table for REMList;
  v87 = v27;
  v109[0] = v28;
  v30 = v28;
  sub_1000C0C68();
  sub_1000084C0(v109, &qword_1000F02A8, &qword_1000C8D28);
  v91 = sub_1000C0C48();
  v90 = v31;
  v29(v16, v13);
  v32 = [v30 appearanceContext];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 badge];

    if (v34)
    {
      v35 = [v34 emoji];
      if (v35)
      {
        v36 = v35;
        v37 = sub_1000C2678();
        v39 = v38;

        v87 = 0;
        v86 = 0;
        v88 = 0;
        goto LABEL_7;
      }
    }
  }

  sub_1000C0D58();
  v40 = v87;
  v110 = v87;
  v111 = &protocol witness table for REMList;
  v109[0] = v30;
  v41 = v30;
  v42 = sub_1000C0D48();
  sub_10002285C(v109);
  v88 = sub_1000C2A08();

  v110 = v40;
  v111 = &protocol witness table for REMList;
  v109[0] = v41;
  v43 = v41;
  v44 = sub_1000C0D48();
  sub_10002285C(v109);
  v87 = sub_1000C29F8();
  v86 = v45;

  v37 = 0;
  v39 = 0;
LABEL_7:
  v46 = [v30 displayName];
  v84 = sub_1000C2678();
  v83 = v47;

  v48 = objc_opt_self();
  v49 = objc_allocWithZone(NSNumber);
  v50 = [v49 initWithInteger:v105];
  v51 = [v48 localizedStringFromNumber:v50 numberStyle:1];

  v52 = sub_1000C2678();
  v54 = v53;

  (*(v107 + 16))(v106, v94 + v89, v108);
  v56 = *(v95 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString);
  v55 = *(v95 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString + 8);
  if (v26 <= 0.0)
  {
    v63 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v62 = v98;
    (*(*(v63 - 8) + 56))(v98, 1, 1, v63);
  }

  else
  {
    v89 = *(v95 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString + 8);
    v94 = v39;
    v95 = v37;
    v57 = v104;
    v58 = *(v104 + 16);
    v59 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v60 = *(v59 - 8);
    v61 = v60;
    if (v58)
    {
      v62 = v98;
      sub_10009DA8C(v57 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v98, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      (*(v61 + 56))(v62, 0, 1, v59);
    }

    else
    {
      v62 = v98;
      (*(v60 + 56))(v98, 1, 1, v59);
    }

    v39 = v94;
    v37 = v95;
    v55 = v89;
  }

  v64 = v85;
  (*(v96 + 32))(v21 + *(v85 + 72), v93, v97);
  v65 = v83;
  *v21 = v84;
  v21[1] = v65;
  v66 = v106;
  v21[2] = v105;
  v21[3] = v52;
  v21[4] = v54;
  (*(v107 + 32))(v21 + v64[7], v66, v108);
  v67 = (v21 + v64[8]);
  *v67 = v56;
  v67[1] = v55;
  sub_10001DA60(v62, v21 + v64[9], &qword_1000ECD40, &unk_1000C5880);
  *(v21 + v64[10]) = v92;
  v68 = (v21 + v64[11]);
  v69 = v90;
  *v68 = v91;
  v68[1] = v69;
  *(v21 + v64[12]) = v88;
  v70 = (v21 + v64[13]);
  v71 = v86;
  *v70 = v87;
  v70[1] = v71;
  v72 = (v21 + v64[14]);
  *v72 = v37;
  v72[1] = v39;
  *(v21 + v64[15]) = 0;
  v73 = (v21 + v64[16]);
  v75 = v101;
  v74 = v102;
  *v73 = v99;
  v73[1] = v74;
  *(v21 + v64[17]) = v75;
  *(v21 + v64[19]) = v104;
  *(v21 + v64[20]) = 2;
  v76 = sub_1000C0AF8();
  v77 = v103;
  (*(*(v76 - 8) + 16))(v103, v100, v76);
  v78 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  sub_10009DA8C(v21, v77 + *(v78 + 20), type metadata accessor for TTRNewWidgetViewModel);
  v79 = *(v78 + 24);

  sub_1000C2468();
  sub_100099C44(v21, type metadata accessor for TTRNewWidgetViewModel);
  v80 = sub_1000C2478();
  return (*(*(v80 - 8) + 56))(v77 + v79, 0, 1, v80);
}

uint64_t sub_1000953BC(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  v7 = sub_1000C0F38();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C0F68();
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009A164((v4 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_shareeInfoStyle), &v31);
  if (!v32)
  {
    return (a3)(0, 0, 0);
  }

  v26 = v11;
  v27 = a3;
  v28 = a4;
  sub_100004E0C(&v31, v30);
  if (qword_1000EC9B0 != -1)
  {
    swift_once();
  }

  v14 = sub_1000C1568();
  sub_10000D978(v14, qword_1000F0120);
  v15 = sub_1000C1558();
  v16 = sub_1000C2968();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "TTRNewWidgetPresenter checking to see if list has sharees", v17, 2u);
  }

  v18 = sub_1000C2A18();
  if (*(v18 + 16))
  {

    sub_1000C0F58();
    if (*(v18 + 16) <= 4uLL)
    {
    }

    else
    {
      v19 = *(sub_1000C0D88() - 8);
      sub_10009A26C(v18, v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), 0, 9uLL, &qword_1000F0288, &unk_1000C8CF8, &type metadata accessor for TTRParticipantModel);
    }

    v21 = sub_1000C1558();
    v22 = sub_1000C2968();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "TTRNewWidgetPresenter fetching sharee data", v23, 2u);
    }

    sub_100026D74(v30, v30[3]);
    (*(v8 + 104))(v10, enum case for TTRParticipantAvatarNameStyle.givenName(_:), v7);
    v24 = swift_allocObject();
    v25 = v27;
    v24[2] = v18;
    v24[3] = v25;
    v24[4] = v28;

    sub_1000C0F48();

    (*(v8 + 8))(v10, v7);
    (*(v29 + 8))(v13, v26);
  }

  else
  {

    v27(0, 0, 0);
  }

  return sub_10002285C(v30);
}

uint64_t sub_100095850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a4;
  v91 = a2;
  v6 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  __chkstk_darwin(v6 - 8);
  v95 = &v77 - v7;
  v8 = sub_1000C0E58();
  v100 = *(v8 - 8);
  v101 = v8;
  __chkstk_darwin(v8);
  v99 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C0C58();
  v87 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C0938();
  v92 = *(v13 - 8);
  v93 = v13;
  __chkstk_darwin(v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TTRNewWidgetViewModel(0);
  __chkstk_darwin(v79);
  v17 = (&v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a3;
  v18 = *(a3 + 8);
  v90 = a3;
  v98 = v18;
  v85 = *(sub_100004D04(&qword_1000EFC60, &qword_1000C7E48) + 32);
  v20 = type metadata accessor for TTRNewWidgetPresenter.Snapshot(0);
  v94 = *(a1 + *(v20 + 20));
  v89 = v15;
  sub_1000C1108();
  v21 = *(v20 + 24);
  v96 = a1;
  v22 = *(a1 + v21);
  sub_1000C0C78();
  v23 = sub_10007E3A8(0, &qword_1000F02C8, REMSmartList_ptr);
  v103 = v23;
  v104 = &protocol witness table for REMSmartList;
  v102[0] = v19;
  v24 = v19;
  sub_1000C0C68();
  sub_1000084C0(v102, &qword_1000F02A8, &qword_1000C8D28);
  v88 = sub_1000C0C38();
  v25 = *(v87 + 8);
  v25(v12, v10);
  v103 = v23;
  v104 = &protocol witness table for REMSmartList;
  v83 = v23;
  v102[0] = v24;
  v26 = v24;
  sub_1000C0C68();
  sub_1000084C0(v102, &qword_1000F02A8, &qword_1000C8D28);
  v87 = sub_1000C0C48();
  v86 = v27;
  v25(v12, v10);
  v28 = [v26 customContext];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 badge];

    if (v30)
    {
      v31 = [v30 emoji];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1000C2678();
        v82 = v34;

        v35 = v33;
        v81 = 0;
        v80 = 0;
        v84 = 0;
        goto LABEL_7;
      }
    }
  }

  sub_1000C0D58();
  v36 = v83;
  v103 = v83;
  v104 = &protocol witness table for REMSmartList;
  v102[0] = v26;
  v37 = v26;
  v38 = sub_1000C0D48();
  sub_10002285C(v102);
  v84 = sub_1000C2A08();

  v103 = v36;
  v104 = &protocol witness table for REMSmartList;
  v102[0] = v37;
  v39 = v37;
  v40 = sub_1000C0D48();
  sub_10002285C(v102);
  v81 = sub_1000C29F8();
  v80 = v41;

  v35 = 0;
  v82 = 0;
LABEL_7:
  v102[0] = v26;
  v83 = sub_1000C2928();
  v78 = v42;
  v43 = objc_opt_self();
  v44 = objc_allocWithZone(NSNumber);
  v45 = [v44 initWithInteger:v98];
  v46 = [v43 localizedStringFromNumber:v45 numberStyle:1];

  v77 = sub_1000C2678();
  v48 = v47;

  (*(v100 + 16))(v99, v90 + v85, v101);
  v50 = *(v91 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString);
  v49 = *(v91 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString + 8);
  if (v22 <= 0.0)
  {
    v57 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v56 = v95;
    (*(*(v57 - 8) + 56))(v95, 1, 1, v57);
    v51 = v94;
  }

  else
  {
    v91 = v35;
    v51 = v94;
    v52 = *(v94 + 16);
    v53 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v54 = *(v53 - 8);
    v55 = v54;
    if (v52)
    {
      v56 = v95;
      sub_10009DA8C(v51 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v95, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      (*(v55 + 56))(v56, 0, 1, v53);
    }

    else
    {
      v56 = v95;
      (*(v54 + 56))(v95, 1, 1, v53);
    }

    v35 = v91;
  }

  v58 = v79;
  (*(v92 + 32))(v17 + *(v79 + 72), v89, v93);
  v59 = v78;
  *v17 = v83;
  v17[1] = v59;
  v60 = v99;
  v61 = v77;
  v17[2] = v98;
  v17[3] = v61;
  v17[4] = v48;
  (*(v100 + 32))(v17 + v58[7], v60, v101);
  v62 = (v17 + v58[8]);
  *v62 = v50;
  v62[1] = v49;
  sub_10001DA60(v56, v17 + v58[9], &qword_1000ECD40, &unk_1000C5880);
  v63 = v87;
  *(v17 + v58[10]) = v88;
  v64 = (v17 + v58[11]);
  v65 = v86;
  *v64 = v63;
  v64[1] = v65;
  *(v17 + v58[12]) = v84;
  v66 = (v17 + v58[13]);
  v67 = v80;
  *v66 = v81;
  v66[1] = v67;
  v68 = (v17 + v58[14]);
  v69 = v82;
  *v68 = v35;
  v68[1] = v69;
  *(v17 + v58[15]) = 1;
  v70 = (v17 + v58[16]);
  *v70 = 0;
  v70[1] = 0;
  *(v17 + v58[17]) = 0;
  *(v17 + v58[19]) = v51;
  *(v17 + v58[20]) = 2;
  v71 = sub_1000C0AF8();
  v72 = v97;
  (*(*(v71 - 8) + 16))(v97, v96, v71);
  v73 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  sub_10009DA8C(v17, v72 + *(v73 + 20), type metadata accessor for TTRNewWidgetViewModel);
  v74 = *(v73 + 24);

  sub_1000C2468();
  sub_100099C44(v17, type metadata accessor for TTRNewWidgetViewModel);
  v75 = sub_1000C2478();
  return (*(*(v75 - 8) + 56))(v72 + v74, 0, 1, v75);
}

uint64_t sub_100096150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a6;
  v71 = a5;
  v67 = a2;
  v8 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  __chkstk_darwin(v8 - 8);
  v70 = &v61 - v9;
  v10 = sub_1000C0E58();
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v75 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C0C58();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C0938();
  v68 = *(v16 - 8);
  v69 = v16;
  __chkstk_darwin(v16);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRNewWidgetViewModel(0);
  __chkstk_darwin(v19);
  v21 = (&v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = a4;
  v74 = *(a4 + 8);
  v62 = *(sub_100004D04(&qword_1000EFBE8, &unk_1000C8CB0) + 32);
  v22 = type metadata accessor for TTRNewWidgetPresenter.Snapshot(0);
  v73 = *(a1 + *(v22 + 20));
  v66 = v18;
  sub_1000C1108();
  v23 = *(v22 + 24);
  v71 = a1;
  v24 = *(a1 + v23);
  v25 = sub_1000C29D8();
  v27 = v26;
  v28 = sub_1000C29B8();
  if (v28)
  {
    v64 = v28;
  }

  else
  {
    sub_1000C0C78();
    sub_1000C0C28();
    v64 = sub_1000C0C38();
    (*(v13 + 8))(v15, v12);
  }

  v63 = sub_1000C29C8();
  v29 = objc_opt_self();
  v30 = objc_allocWithZone(NSNumber);
  v31 = [v30 initWithInteger:v74];
  v32 = [v29 localizedStringFromNumber:v31 numberStyle:1];

  v33 = sub_1000C2678();
  v35 = v34;

  (*(v76 + 16))(v75, v65 + v62, v77);
  v36 = *(v67 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString);
  v37 = *(v67 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString + 8);
  if (v24 <= 0.0)
  {
    v46 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v45 = v70;
    (*(*(v46 - 8) + 56))(v70, 1, 1, v46);
  }

  else
  {
    v62 = v33;
    v65 = v27;
    v67 = v25;
    v38 = v73;
    v39 = *(v73 + 16);
    v40 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v41 = *(v40 - 8);
    v42 = v41;
    if (v39)
    {
      v43 = v70;
      sub_10009DA8C(v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v70, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      v44 = v40;
      v45 = v43;
      (*(v42 + 56))(v43, 0, 1, v44);
    }

    else
    {
      v47 = v40;
      v45 = v70;
      (*(v41 + 56))(v70, 1, 1, v47);
    }

    v25 = v67;
    v27 = v65;
    v33 = v62;
  }

  if (!v27)
  {
    v27 = 0xE000000000000000;
    v25 = 0;
  }

  (*(v68 + 32))(v21 + v19[18], v66, v69);
  *v21 = v25;
  v21[1] = v27;
  v48 = v75;
  v21[2] = v74;
  v21[3] = v33;
  v21[4] = v35;
  (*(v76 + 32))(v21 + v19[7], v48, v77);
  v49 = (v21 + v19[8]);
  *v49 = v36;
  v49[1] = v37;
  sub_10001DA60(v45, v21 + v19[9], &qword_1000ECD40, &unk_1000C5880);
  v50 = v63;
  *(v21 + v19[10]) = v64;
  v51 = (v21 + v19[11]);
  *v51 = 0;
  v51[1] = 0;
  *(v21 + v19[12]) = v50;
  v52 = (v21 + v19[13]);
  *v52 = 0;
  v52[1] = 0;
  v53 = (v21 + v19[14]);
  *v53 = 0;
  v53[1] = 0;
  *(v21 + v19[15]) = 0;
  v54 = (v21 + v19[16]);
  *v54 = 0;
  v54[1] = 0;
  *(v21 + v19[17]) = 0;
  *(v21 + v19[19]) = v73;
  *(v21 + v19[20]) = 2;
  v55 = sub_1000C0AF8();
  v56 = v72;
  (*(*(v55 - 8) + 16))(v72, v71, v55);
  v57 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  sub_10009DA8C(v21, v56 + *(v57 + 20), type metadata accessor for TTRNewWidgetViewModel);
  v58 = *(v57 + 24);

  sub_1000C2468();
  sub_100099C44(v21, type metadata accessor for TTRNewWidgetViewModel);
  v59 = sub_1000C2478();
  return (*(*(v59 - 8) + 56))(v56 + v58, 0, 1, v59);
}

void sub_100096824(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, char *, __n128), uint64_t a4)
{
  v55 = a4;
  v56 = a3;
  v51 = a2;
  v62 = sub_1000C0E98();
  v57 = *(v62 - 8);
  __chkstk_darwin(v62);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000C0EB8();
  v7 = *(v61 - 1);
  __chkstk_darwin(v61);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000EC9B0 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v10 = sub_1000C1568();
    sub_10000D978(v10, qword_1000F0120);
    v11 = sub_1000C1558();
    v12 = sub_1000C2968();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "TTRNewWidgetPresenter fetched sharee data", v13, 2u);
    }

    v14 = *(a1 + 16);
    v53 = v7;
    v54 = a1;
    v52 = v14;
    if (!v14)
    {
      break;
    }

    v16 = *(v7 + 16);
    v15 = v7 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v58 = *(v15 + 56);
    v59 = v16;
    v60 = v15;
    v18 = (v15 - 8);
    v19 = _swiftEmptyArrayStorage;
    v7 = v14;
    while (1)
    {
      v20 = v61;
      v59(v9, v17, v61);
      v21 = sub_1000C0EA8();
      (*v18)(v9, v20);
      v22 = *(v21 + 16);
      a1 = v19[2];
      v23 = a1 + v22;
      if (__OFADD__(a1, v22))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v23 > v19[3] >> 1)
      {
        if (a1 <= v23)
        {
          v25 = a1 + v22;
        }

        else
        {
          v25 = a1;
        }

        v19 = sub_100022658(isUniquelyReferenced_nonNull_native, v25, 1, v19);
      }

      if (*(v21 + 16))
      {
        if ((v19[3] >> 1) - v19[2] < v22)
        {
          goto LABEL_44;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v26 = v19[2];
          v27 = __OFADD__(v26, v22);
          v28 = v26 + v22;
          if (v27)
          {
            goto LABEL_45;
          }

          v19[2] = v28;
        }
      }

      else
      {

        if (v22)
        {
          goto LABEL_43;
        }
      }

      v17 += v58;
      if (!--v7)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_21:
  v29 = v19[2];
  if (v29)
  {
    v30 = *(v57 + 16);
    v31 = v19 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v60 = *(v57 + 72);
    v61 = v30;
    v32 = (v57 + 8);
    v33 = _swiftEmptyArrayStorage;
    v34 = v62;
    (v30)(v6, v31, v62);
    while (1)
    {
      v35 = sub_1000C0E78();
      if (v35)
      {
        v36 = v35;
        sub_1000C0E88();
        v38 = v37;
        (*v32)(v6, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_10002254C(0, *(v33 + 2) + 1, 1, v33);
        }

        v40 = *(v33 + 2);
        v39 = *(v33 + 3);
        if (v40 >= v39 >> 1)
        {
          v33 = sub_10002254C((v39 > 1), v40 + 1, 1, v33);
        }

        *(v33 + 2) = v40 + 1;
        v41 = &v33[16 * v40];
        *(v41 + 4) = v36;
        *(v41 + 5) = v38;
        v34 = v62;
      }

      else
      {
        (*v32)(v6, v34);
      }

      v31 += v60;
      if (!--v29)
      {
        break;
      }

      (v61)(v6, v31, v34);
    }
  }

  else
  {

    v33 = _swiftEmptyArrayStorage;
  }

  if (v52)
  {
    v42 = sub_1000C0E68();
    v44 = v43;
    v45 = *(v51 + 16);
    v46 = v45 - 1;
    if (v45 == 1)
    {
      v63._countAndFlagsBits = 0x7720646572616853;
      v63._object = 0xEE00402520687469;
      v65._object = 0x80000001000CDDA0;
      v65._countAndFlagsBits = 0xD000000000000027;
      sub_1000C0D78(v63, v65);
      sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1000C3590;
      *(v47 + 56) = &type metadata for String;
      *(v47 + 64) = sub_10002C68C();
      *(v47 + 32) = v42;
      *(v47 + 40) = v44;
LABEL_40:
      v42 = sub_1000C2688();
      v44 = v50;

      goto LABEL_41;
    }

    if (v45)
    {
      v64._countAndFlagsBits = 0x206425202B204025;
      v64._object = 0xEC00000065726F4DLL;
      v66._object = 0x80000001000CDD70;
      v66._countAndFlagsBits = 0xD000000000000027;
      sub_1000C0D78(v64, v66);
      sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1000C44F0;
      *(v48 + 56) = &type metadata for String;
      v49 = sub_10002C68C();
      *(v48 + 32) = v42;
      *(v48 + 40) = v44;
      *(v48 + 96) = &type metadata for Int;
      *(v48 + 104) = &protocol witness table for Int;
      *(v48 + 64) = v49;
      *(v48 + 72) = v46;
      goto LABEL_40;
    }
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

LABEL_41:
  (v56)(v42, v44, v33);
}

uint64_t sub_100096E88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a5;
  v51 = a3;
  v52 = a4;
  v48 = a2;
  v6 = sub_1000C1118();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v50 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v49 = &v48 - v9;
  v10 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  __chkstk_darwin(v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C0B68();
  v56 = *(v13 - 8);
  v57 = v13;
  __chkstk_darwin(v13);
  v62 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v15 - 8);
  v53 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v59 = &v48 - v18;
  v19 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  __chkstk_darwin(v19 - 8);
  v21 = &v48 - v20;
  v22 = sub_1000C0AF8();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000239F4(a1, v60);
  v26 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  sub_1000082B4(a1 + *(v26 + 24), v21, &qword_1000EE300, &unk_1000C6370);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1000084C0(v21, &qword_1000EE300, &unk_1000C6370);
    sub_100026D74(a1, a1[3]);
    v27 = sub_1000C0DA8();
  }

  else
  {
    (*(v23 + 32))(v25, v21, v22);
    v27 = sub_1000C0A98();
    (*(v23 + 8))(v25, v22);
  }

  v28 = *(v51 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForBaseReminder);
  v51 = a1[5];
  v29 = v59;
  sub_1000082B4(v52, v59, &qword_1000EFF50, &qword_1000C8D10);
  v30 = v62;
  sub_1000C0B58();
  sub_100026D74(v60, v61);
  v31 = sub_1000C0DC8();
  if (!v31)
  {
    v32 = objc_allocWithZone(NSAttributedString);
    v31 = [v32 init];
  }

  *v12 = v31;
  sub_100026D74(v60, v61);
  *(v12 + 1) = sub_1000C0D98();
  v33 = v10[6];
  if (v28 == 2)
  {
    v34 = sub_1000C0818();
    (*(*(v34 - 8) + 56))(&v12[v33], 1, 1, v34);
  }

  else
  {
    sub_100024434(v60, v28 & 1, v30, &v12[v33]);
  }

  v35 = v55;
  v36 = v53;
  sub_1000082B4(v29, v53, &qword_1000EFF50, &qword_1000C8D10);
  v37 = v54;
  if ((*(v54 + 48))(v36, 1, v35) == 1)
  {
    sub_1000084C0(v36, &qword_1000EFF50, &qword_1000C8D10);
    sub_100026D74(v60, v61);
    v38 = sub_1000C0DD8();
    v39 = [v38 urlRepresentation];

    sub_1000C0908();
  }

  else
  {
    v40 = v49;
    (*(v37 + 32))(v49, v36, v35);
    v41 = v27;
    v42 = v50;
    sub_100026384(v60, v50);
    sub_1000C1108();
    v43 = *(v37 + 8);
    v44 = v42;
    v27 = v41;
    v30 = v62;
    v43(v44, v35);
    v45 = v40;
    v29 = v59;
    v43(v45, v35);
  }

  sub_100026D74(v60, v61);
  *&v12[v10[8]] = sub_1000C0DD8();
  v12[v10[10]] = v27 & 1;
  *&v12[v10[9]] = v51;
  sub_100026D74(v60, v61);
  v46 = sub_1000C0DF8();
  (*(v56 + 8))(v30, v57);
  sub_1000084C0(v29, &qword_1000EFF50, &qword_1000C8D10);
  v12[v10[11]] = v46 & 1;
  sub_10009DB2C(v12, v58, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  return sub_10002285C(v60);
}

uint64_t sub_100097578@<X0>(void *a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v46 = a2;
  v55 = a4;
  v5 = sub_1000C1118();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v45 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v44 = &v41 - v8;
  v9 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v49 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000C0B68();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  sub_100026D74(a1, a1[3]);
  if (sub_1000C0DA8())
  {
    return (*(v10 + 56))(v55, 1, 1, v9);
  }

  v43 = v10;
  sub_1000239F4(a1, v53);
  v22 = *(v46 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForBaseReminder);
  v42 = a1[5];
  v23 = v50;
  v50 = v20;
  sub_1000082B4(v23, v20, &qword_1000EFF50, &qword_1000C8D10);
  v46 = v14;
  sub_1000C0B58();
  sub_100026D74(v53, v54);
  v24 = sub_1000C0DC8();
  if (!v24)
  {
    v24 = [objc_allocWithZone(NSAttributedString) init];
  }

  v25 = v9;
  v26 = v47;
  v27 = v49;
  *v49 = v24;
  sub_100026D74(v53, v54);
  *(v27 + 8) = sub_1000C0D98();
  v28 = v25[6];
  if (v22 == 2)
  {
    v29 = sub_1000C0818();
    (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  }

  else
  {
    sub_100024434(v53, v22 & 1, v46, v27 + v28);
  }

  v30 = v48;
  sub_1000082B4(v50, v17, &qword_1000EFF50, &qword_1000C8D10);
  v31 = (*(v26 + 48))(v17, 1, v30);
  v32 = v55;
  if (v31 == 1)
  {
    sub_1000084C0(v17, &qword_1000EFF50, &qword_1000C8D10);
    sub_100026D74(v53, v54);
    v33 = sub_1000C0DD8();
    v34 = [v33 urlRepresentation];

    sub_1000C0908();
  }

  else
  {
    v35 = v44;
    (*(v26 + 32))(v44, v17, v30);
    v36 = v45;
    sub_100026384(v53, v45);
    sub_1000C1108();
    v37 = *(v26 + 8);
    v37(v36, v30);
    v32 = v55;
    v37(v35, v30);
  }

  v38 = v43;
  v39 = v46;
  sub_100026D74(v53, v54);
  *(v27 + v25[8]) = sub_1000C0DD8();
  *(v27 + v25[10]) = 0;
  *(v27 + v25[9]) = v42;
  sub_100026D74(v53, v54);
  v40 = sub_1000C0DF8();
  (*(v51 + 8))(v39, v52);
  sub_1000084C0(v50, &qword_1000EFF50, &qword_1000C8D10);
  *(v27 + v25[11]) = v40 & 1;
  sub_10009DB2C(v27, v32, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  sub_10002285C(v53);
  return (*(v38 + 56))(v32, 0, 1, v25);
}

uint64_t sub_100097B78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a2;
  v61 = a3;
  v7 = sub_1000C1118();
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v59 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v58 = &v54 - v10;
  v11 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v67 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C0B68();
  v65 = *(v14 - 8);
  v66 = v14;
  __chkstk_darwin(v14);
  v68 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v16 - 8);
  v62 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v71 = &v54 - v19;
  v20 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  __chkstk_darwin(v20 - 8);
  v22 = &v54 - v21;
  sub_100026D74(a1, a1[3]);
  if (sub_1000C0DA8())
  {
    return (*(v12 + 56))(a4, 1, 1, v11);
  }

  v56 = v4;
  v57 = v12;
  v55 = a4;
  v24 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  sub_1000082B4(a1 + *(v24 + 24), v22, &qword_1000EE300, &unk_1000C6370);
  v25 = sub_1000C0AF8();
  v26 = (*(*(v25 - 8) + 48))(v22, 1, v25);
  sub_1000084C0(v22, &qword_1000EE300, &unk_1000C6370);
  v27 = v67;
  if (v26 == 1)
  {
    goto LABEL_10;
  }

  sub_100026D74(a1, a1[3]);
  if (sub_1000C0DE8())
  {
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v28 = sub_1000C1568();
    sub_10000D978(v28, qword_1000F0120);
    v29 = sub_1000C1558();
    v30 = sub_1000C2968();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "TTRNewWidgetPresenter:generateSnapShots: recurrent reminders is completed, however the due date is still today, we need to display in today smart list.", v31, 2u);
    }

LABEL_10:
    sub_1000239F4(a1, v69);
    v32 = *(v60 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForBaseReminder);
    v33 = a1[5];
    sub_1000082B4(v61, v71, &qword_1000EFF50, &qword_1000C8D10);
    sub_1000C0B58();
    sub_100026D74(v69, v70);
    v34 = sub_1000C0DC8();
    if (!v34)
    {
      v34 = [objc_allocWithZone(NSAttributedString) init];
    }

    *v27 = v34;
    sub_100026D74(v69, v70);
    *(v27 + 1) = sub_1000C0D98();
    v35 = v11[6];
    if (v32 == 2)
    {
      v36 = sub_1000C0818();
      (*(*(v36 - 8) + 56))(&v27[v35], 1, 1, v36);
    }

    else
    {
      sub_100024434(v69, v32 & 1, v68, &v27[v35]);
    }

    v37 = v64;
    v38 = v62;
    sub_1000082B4(v71, v62, &qword_1000EFF50, &qword_1000C8D10);
    v39 = v63;
    if ((*(v63 + 48))(v38, 1, v37) == 1)
    {
      sub_1000084C0(v38, &qword_1000EFF50, &qword_1000C8D10);
      sub_100026D74(v69, v70);
      v40 = sub_1000C0DD8();
      v41 = [v40 urlRepresentation];

      sub_1000C0908();
    }

    else
    {
      v42 = v58;
      (*(v39 + 32))(v58, v38, v37);
      v43 = v59;
      sub_100026384(v69, v59);
      sub_1000C1108();
      v44 = *(v39 + 8);
      v44(v43, v37);
      v44(v42, v37);
    }

    sub_100026D74(v69, v70);
    *&v27[v11[8]] = sub_1000C0DD8();
    v27[v11[10]] = 0;
    *&v27[v11[9]] = v33;
    sub_100026D74(v69, v70);
    v45 = sub_1000C0DF8();
    (*(v65 + 8))(v68, v66);
    sub_1000084C0(v71, &qword_1000EFF50, &qword_1000C8D10);
    v27[v11[11]] = v45 & 1;
    v46 = v55;
    sub_10009DB2C(v27, v55, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    sub_10002285C(v69);
    return (*(v57 + 56))(v46, 0, 1, v11);
  }

  v47 = v57;
  if (qword_1000EC9B0 != -1)
  {
    swift_once();
  }

  v48 = sub_1000C1568();
  sub_10000D978(v48, qword_1000F0120);
  v49 = sub_1000C1558();
  v50 = sub_1000C2968();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v55;
  if (v51)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "TTRNewWidgetPresenter:generateSnapShots: recurrent reminders is completed, and the due date pass today, hide it from today smart list.", v53, 2u);
  }

  return (*(v47 + 56))(v52, 1, 1, v11);
}

void *sub_1000983DC(uint64_t a1, void *a2, uint64_t a3)
{
  v50 = a3;
  v57 = a1;
  v4 = sub_100004D04(&qword_1000F0298, &unk_1000C8D18);
  __chkstk_darwin(v4 - 8);
  v58 = &v47 - v5;
  v53 = sub_1000C1118();
  v6 = *(v53 - 8);
  __chkstk_darwin(v53);
  v49 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v48 = &v47 - v9;
  v10 = sub_1000C0B68();
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin(v10);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v19 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  __chkstk_darwin(v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v56 = &v47 - v23;
  sub_1000239F4(a2, v59);
  sub_100026D74(a2, a2[3]);
  v52 = sub_1000C0DA8();
  v24 = *(v51 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForInterestingReminder);
  v51 = a2[5];
  sub_1000082B4(v50, v18, &qword_1000EFF50, &qword_1000C8D10);
  v25 = v12;
  sub_1000C0B58();
  sub_100026D74(v59, v60);
  v26 = sub_1000C0DC8();
  if (!v26)
  {
    v26 = [objc_allocWithZone(NSAttributedString) init];
  }

  *v21 = v26;
  sub_100026D74(v59, v60);
  *(v21 + 1) = sub_1000C0D98();
  v27 = v19[6];
  if (v24 == 2)
  {
    v28 = sub_1000C0818();
    (*(*(v28 - 8) + 56))(&v21[v27], 1, 1, v28);
  }

  else
  {
    sub_100024434(v59, v24 & 1, v25, &v21[v27]);
  }

  v29 = v53;
  sub_1000082B4(v18, v15, &qword_1000EFF50, &qword_1000C8D10);
  if ((*(v6 + 48))(v15, 1, v29) == 1)
  {
    sub_1000084C0(v15, &qword_1000EFF50, &qword_1000C8D10);
    sub_100026D74(v59, v60);
    v30 = sub_1000C0DD8();
    v31 = [v30 urlRepresentation];

    sub_1000C0908();
  }

  else
  {
    v32 = v48;
    (*(v6 + 32))(v48, v15, v29);
    v33 = v25;
    v34 = v49;
    sub_100026384(v59, v49);
    sub_1000C1108();
    v35 = *(v6 + 8);
    v36 = v34;
    v25 = v33;
    v35(v36, v29);
    v35(v32, v29);
  }

  sub_100026D74(v59, v60);
  *&v21[v19[8]] = sub_1000C0DD8();
  v21[v19[10]] = v52 & 1;
  *&v21[v19[9]] = v51;
  sub_100026D74(v59, v60);
  v37 = sub_1000C0DF8();
  (*(v54 + 8))(v25, v55);
  sub_1000084C0(v18, &qword_1000EFF50, &qword_1000C8D10);
  v21[v19[11]] = v37 & 1;
  v38 = v56;
  sub_10009DB2C(v21, v56, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v39 = sub_10002285C(v59);
  __chkstk_darwin(v39);
  *(&v47 - 2) = v38;
  v40 = v57;

  sub_10008CE4C(sub_10009DB94, (&v47 - 4), v40);
  v42 = v41;
  v43 = v58;
  sub_10009DA8C(v38, v58, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v44 = v42[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59[0] = v42;
  if (!isUniquelyReferenced_nonNull_native || v44 >= v42[3] >> 1)
  {
    v42 = sub_1000224D4(isUniquelyReferenced_nonNull_native, v44 + 1, 1, v42);
    v59[0] = v42;
  }

  sub_10009A4AC(0, 0, 1, v43);
  sub_100099C44(v38, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  return v42;
}

uint64_t sub_100098AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0AF8();
  __chkstk_darwin(*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v21 = sub_1000C25C8();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_100098D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0AF8();
  __chkstk_darwin(*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v21 = sub_1000C25C8();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_100099000(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRNewWidgetPresenter.Division(0);
  sub_1000C0AF8();
  sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (sub_1000C25E8() & 1) != 0 || (sub_1000C25E8() & 1) != 0 || (sub_1000A064C(&qword_1000F02B8, &type metadata accessor for Date, &protocol conformance descriptor for Date), (sub_1000C2608()))
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1000C2608() ^ 1;
  }

  return v2 & 1;
}

BOOL sub_10009915C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  sub_1000C0938();
  sub_1000A064C(&qword_1000F02A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  return (sub_1000C2608() & 1) == 0;
}

uint64_t sub_100099204()
{
  swift_unknownObjectRelease();
  sub_10002285C(v0 + 4);
  v1 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
  v2 = sub_1000C1388();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  sub_1000998CC(&v0[OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_shareeInfoStyle]);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_1000992FC(uint64_t a1)
{
  result = sub_1000C1388();
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

uint64_t getEnumTagSinglePayload for TTRNewWidgetPresenter.DisplayDateStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRNewWidgetPresenter.DisplayDateStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100099524(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100099538(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void *destroy for TTRNewWidgetPresenter.ShareeInfoStyle(void *result)
{
  if (result[3] >= 0xFFFFFFFFuLL)
  {
    return sub_10002285C(result);
  }

  return result;
}

__n128 initializeWithCopy for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 < 0xFFFFFFFF)
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    result = *(a2 + 32);
    *(a1 + 32) = result;
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
    result = *(a2 + 40);
    *(a1 + 40) = result;
  }

  return result;
}

__n128 assignWithCopy for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v3 < 0xFFFFFFFF)
    {
      result = *a2;
      v9 = *(a2 + 16);
      v10 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 16) = v9;
      *(a1 + 32) = v10;
      *a1 = result;
    }

    else
    {
      *(a1 + 24) = v3;
      *(a1 + 32) = *(a2 + 32);
      (**(v3 - 8))();
      result = *(a2 + 40);
      *(a1 + 40) = result;
    }
  }

  else if (v3 < 0xFFFFFFFF)
  {
    sub_10002285C(a1);
    result = *a2;
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
    *a1 = result;
  }

  else
  {
    sub_10008331C(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    result.n128_u64[0] = *(a2 + 48);
    *(a1 + 48) = result.n128_u64[0];
  }

  return result;
}

__n128 initializeWithTake for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t a1, uint64_t a2)
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

__n128 assignWithTake for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    result = *(a2 + 32);
    *(a1 + 32) = result;
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v3 = *(a2 + 24);
    sub_10002285C(a1);
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    if (v3 < 0xFFFFFFFF)
    {
      result = *(a2 + 32);
      *(a1 + 32) = result;
      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      *(a1 + 32) = *(a2 + 32);
      result = *(a2 + 40);
      *(a1 + 40) = result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100099874(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_10009988C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void *sub_1000998CC(void *result)
{
  if (result[3] >= 0xFFFFFFFFuLL)
  {
    v1 = result;
    sub_10002285C(result);
    return v1;
  }

  return result;
}

unint64_t sub_10009991C()
{
  result = qword_1000F0270;
  if (!qword_1000F0270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0270);
  }

  return result;
}

uint64_t sub_100099970()
{
  v1 = sub_100004D04(&qword_1000F0278, &unk_1000C8CA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100099A04(uint64_t a1)
{
  sub_100004D04(&qword_1000F0278, &unk_1000C8CA0);

  return sub_1000909F0(a1);
}

uint64_t sub_100099A80()
{
  v1 = sub_1000C0C18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100099B20(char *a1)
{
  v3 = *(sub_1000C0C18() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_10009245C(a1, v1 + v4, v6, v7);
}

void *sub_100099BC0(uint64_t a1, uint64_t a2)
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

  sub_100004D04(&qword_1000F0418, &qword_1000C8D88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_100099C44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100099CAC()
{
  v1 = sub_1000C0C18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1000C0AF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v5 + 8) & ~v8;
  v12 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v10 + 16, v12 | 7);
}

uint64_t sub_100099E48(uint64_t a1)
{
  v3 = *(sub_1000C0C18() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1000C0AF8() - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);

  return sub_100092DA4(a1, (v1 + v4), v10, v11, v12, (v1 + v9), v14, v15);
}

uint64_t sub_100099F7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100099FD0()
{
  v1 = sub_1000C0AF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10009A0C4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(sub_1000C0AF8() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10009A164(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 3);
  if (v3 < 0xFFFFFFFF)
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    *(a2 + 48) = *(a1 + 6);
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    *a2 = v6;
  }

  else
  {
    v4 = *(a1 + 4);
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
    (**(v3 - 8))(a2, a1);
    *(a2 + 40) = *(a1 + 40);
  }

  return a2;
}

uint64_t sub_10009A1F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10009A26C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100004D04(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_10009A4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1000084C0(a4, &qword_1000F0298, &unk_1000C8D18);
  }

  if (v17 < 1)
  {
    return sub_1000084C0(a4, &qword_1000F0298, &unk_1000C8D18);
  }

  result = sub_10009DA8C(a4, v15, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  if (v12 >= v17)
  {
    return sub_1000084C0(a4, &qword_1000F0298, &unk_1000C8D18);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t *sub_10009A638(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10009A6D4(uint64_t a1)
{
  v79 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v94 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100004D04(&qword_1000EE308, &unk_1000C8CC0);
  __chkstk_darwin(v89);
  v87 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v86 = &v72 - v5;
  v6 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v72 - v11;
  v13 = sub_1000C0AF8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v88 = &v72 - v18;
  __chkstk_darwin(v19);
  v84 = &v72 - v20;
  __chkstk_darwin(v21);
  v99 = &v72 - v22;
  v77 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v23 = *(v77 - 8);
  __chkstk_darwin(v77);
  v90 = (&v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100004D04(&qword_1000F02C0, &qword_1000C8D40);
  __chkstk_darwin(v25 - 8);
  v83 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v27);
  v29 = *(v7 + 56);
  v97 = &v72 - v30;
  v101 = v6;
  v76 = v7 + 56;
  v75 = v29;
  v29(v28);
  v31 = *(a1 + 16);
  if (!v31)
  {
    v102 = _swiftEmptyArrayStorage;
LABEL_26:
    sub_1000084C0(v97, &qword_1000F02C0, &qword_1000C8D40);
    return v102;
  }

  v32 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v85 = (v14 + 32);
  v93 = *(v23 + 72);
  v98 = (v14 + 8);
  v82 = (v7 + 48);
  v72 = (v14 + 16);
  v74 = (v23 + 56);
  v102 = _swiftEmptyArrayStorage;
  v33 = v90;
  v73 = v9;
  v81 = v16;
  while (1)
  {
    sub_10009DA8C(v32, v33, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
    sub_100026D74(v33, v33[3]);
    v34 = sub_1000C0D98();
    if (!v34)
    {
      sub_100099C44(v33, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
      goto LABEL_4;
    }

    v96 = v31;
    v35 = v34;
    v36 = [v34 date];

    v37 = v84;
    sub_1000C0AA8();

    v38 = *v85;
    (*v85)(v99, v37, v13);
    v39 = v88;
    sub_1000C0A48();
    sub_1000C0A48();
    v40 = sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = sub_1000C25E8();
    if ((result & 1) == 0)
    {
      break;
    }

    v91 = v40;
    v100 = v32;
    v42 = v16;
    v43 = v12;
    v44 = v86;
    v38(v86, v39, v13);
    v45 = v89;
    v38((v44 + *(v89 + 48)), v42, v13);
    v46 = v87;
    sub_1000082B4(v44, v87, &qword_1000EE308, &unk_1000C8CC0);
    v47 = *(v45 + 48);
    v38(v43, v46, v13);
    v48 = *v98;
    (*v98)(v46 + v47, v13);
    sub_10001DA60(v44, v46, &qword_1000EE308, &unk_1000C8CC0);
    v49 = *(v45 + 48);
    v50 = v101;
    v12 = v43;
    v92 = *(v101 + 36);
    v80 = v38;
    v38((v43 + v92), (v46 + v49), v13);
    v95 = v48;
    v48(v46, v13);
    v51 = v83;
    sub_1000082B4(v97, v83, &qword_1000F02C0, &qword_1000C8D40);
    if ((*v82)(v51, 1, v50) == 1)
    {
      sub_1000084C0(v51, &qword_1000F02C0, &qword_1000C8D40);
      v31 = v96;
LABEL_18:
      v33 = v90;
      v55 = v94;
      sub_10009DA8C(v90, v94, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
      (*v74)(v55, 0, 1, v77);
      v56 = v79;
      sub_1000082B4(v12, v55 + *(v79 + 20), &qword_1000F02B0, &unk_1000C8D30);
      *(v55 + *(v56 + 24)) = 0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v81;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v102 = sub_100022484(0, v102[2] + 1, 1, v102);
      }

      v32 = v100;
      v59 = v102[2];
      v58 = v102[3];
      if (v59 >= v58 >> 1)
      {
        v102 = sub_100022484((v58 > 1), v59 + 1, 1, v102);
      }

      v95(v99, v13);
      v60 = v97;
      sub_1000084C0(v97, &qword_1000F02C0, &qword_1000C8D40);
      v61 = v102;
      v102[2] = v59 + 1;
      sub_10009DB2C(v94, v61 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v59, type metadata accessor for TTRNewWidgetPresenter.Division);
      sub_100099C44(v33, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
      sub_10001DA60(v12, v60, &qword_1000F02B0, &unk_1000C8D30);
      (v75)(v60, 0, 1, v101);
      goto LABEL_4;
    }

    v52 = v73;
    sub_10001DA60(v51, v73, &qword_1000F02B0, &unk_1000C8D30);
    sub_1000A064C(&qword_1000F02B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v53 = sub_1000C2608();
    v31 = v96;
    v32 = v100;
    v54 = v92;
    if ((v53 & 1) == 0 || (sub_1000C2608() & 1) == 0)
    {
      if (sub_1000C25E8() & 1) != 0 || (sub_1000C25E8() & 1) != 0 || (sub_1000C2608() & 1) != 0 || (sub_1000C2608())
      {
        sub_1000084C0(v52, &qword_1000F02B0, &unk_1000C8D30);
      }

      else
      {
        v62 = v88;
        sub_1000C0A48();
        v63 = sub_1000C25E8();
        result = sub_1000084C0(v52, &qword_1000F02B0, &unk_1000C8D30);
        if ((v63 & 1) == 0)
        {
          goto LABEL_28;
        }

        v64 = v86;
        v65 = v62;
        v66 = v80;
        v80(v86, v65, v13);
        v67 = v66;
        v68 = v89;
        (*v72)(v64 + *(v89 + 48), v43 + v54, v13);
        sub_1000084C0(v43, &qword_1000F02B0, &unk_1000C8D30);
        v69 = v87;
        sub_1000082B4(v64, v87, &qword_1000EE308, &unk_1000C8CC0);
        v70 = *(v68 + 48);
        v67(v43, v69, v13);
        v71 = v95;
        v95(v69 + v70, v13);
        sub_10001DA60(v64, v69, &qword_1000EE308, &unk_1000C8CC0);
        v80((v43 + v54), (v69 + *(v89 + 48)), v13);
        v31 = v96;
        v71(v69, v13);
      }

      v12 = v43;
      goto LABEL_18;
    }

    sub_1000084C0(v52, &qword_1000F02B0, &unk_1000C8D30);
    sub_1000084C0(v43, &qword_1000F02B0, &unk_1000C8D30);
    v95(v99, v13);
    v33 = v90;
    sub_100099C44(v90, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
    v12 = v43;
    v16 = v81;
LABEL_4:
    v32 += v93;
    if (!--v31)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void *sub_10009B378(void *a1, uint64_t a2)
{
  v173 = a1;
  v159 = sub_100004D04(&qword_1000EE308, &unk_1000C8CC0);
  __chkstk_darwin(v159);
  v160 = &v143 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v158 = &v143 - v5;
  v6 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v172 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v149 = &v143 - v10;
  __chkstk_darwin(v11);
  v151 = &v143 - v12;
  __chkstk_darwin(v13);
  v154 = &v143 - v14;
  __chkstk_darwin(v15);
  v157 = &v143 - v16;
  __chkstk_darwin(v17);
  v156 = &v143 - v18;
  __chkstk_darwin(v19);
  v165 = &v143 - v20;
  __chkstk_darwin(v21);
  v153 = &v143 - v22;
  __chkstk_darwin(v23);
  v25 = &v143 - v24;
  v26 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  __chkstk_darwin(v26 - 8);
  v164 = &v143 - v27;
  v28 = sub_1000C0AF8();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v171 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v143 - v32;
  __chkstk_darwin(v34);
  v36 = &v143 - v35;
  __chkstk_darwin(v37);
  v150 = &v143 - v38;
  __chkstk_darwin(v39);
  v41 = &v143 - v40;
  __chkstk_darwin(v42);
  v161 = &v143 - v43;
  __chkstk_darwin(v44);
  v46 = &v143 - v45;
  sub_1000C0A58();
  v47 = *(v173 + 16);
  v167 = v6;
  v168 = v29;
  v152 = v46;
  if (v47)
  {
    v144 = v36;
    v145 = v33;
    v146 = a2;
    v147 = v8;
    v6 = *(v6 + 20);
    v163 = (*(v172 + 80) + 32) & ~*(v172 + 80);
    v48 = v173 + v163;
    v49 = (v29 + 16);
    v171 = *(v172 + 72);
    v172 = (v29 + 32);
    v50 = _swiftEmptyArrayStorage;
    v148 = (v173 + v163);
    v166 = v47;
    v51 = v47;
    do
    {
      sub_10009DA8C(v48, v25, type metadata accessor for TTRNewWidgetPresenter.Division);
      v170 = *v49;
      v170(v41, &v25[v6], v28);
      sub_100099C44(v25, type metadata accessor for TTRNewWidgetPresenter.Division);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1000224AC(0, v50[2] + 1, 1, v50);
      }

      v53 = v50[2];
      v52 = v50[3];
      if (v53 >= v52 >> 1)
      {
        v50 = sub_1000224AC((v52 > 1), v53 + 1, 1, v50);
      }

      v50[2] = v53 + 1;
      v54 = v50 + ((v168[80] + 32) & ~v168[80]) + *(v168 + 9) * v53;
      v46 = *(v168 + 4);
      (v46)(v54, v41, v28);
      v55 = v171;
      v48 += v171;
      --v51;
    }

    while (v51);
    v56 = v164;
    sub_100098AA0(v50, v164);

    v57 = (*(v168 + 6))(v56, 1, v28);
    v169 = v28;
    if (v57 == 1)
    {
      sub_1000084C0(v56, &qword_1000EE300, &unk_1000C6370);
      v6 = _swiftEmptyArrayStorage;
      v58 = v156;
      v59 = v157;
      goto LABEL_17;
    }

    v41 = v161;
    (v46)(v161, v56, v28);
    v77 = v152;
    v78 = sub_1000C0A88();
    v58 = v156;
    v59 = v157;
    if ((v78 & 1) == 0)
    {
      (*(v168 + 1))(v41, v28);
      v6 = _swiftEmptyArrayStorage;
LABEL_17:
      v89 = v166;
      v143 = v166 - 1;
      v155 = v49;
      if (v166 == 1)
      {
LABEL_18:
        v41 = v151;
        sub_10009DA8C(&v148[v55 * v143], v151, type metadata accessor for TTRNewWidgetPresenter.Division);
        v59 = v149;
        sub_10009DA8C(v41, v149, type metadata accessor for TTRNewWidgetPresenter.Division);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_19;
        }
      }

      else
      {
        v153 = v168 + 8;
        v120 = v148;
        v162 = v46;
        while (v89)
        {
          v41 = v28;
          v166 = v89;
          sub_10009DA8C(v120, v165, type metadata accessor for TTRNewWidgetPresenter.Division);
          v121 = v120;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_100022484(0, *(v6 + 16) + 1, 1, v6);
          }

          v123 = *(v6 + 16);
          v122 = *(v6 + 24);
          if (v123 >= v122 >> 1)
          {
            v6 = sub_100022484((v122 > 1), v123 + 1, 1, v6);
          }

          *(v6 + 16) = v123 + 1;
          v173 = v6;
          sub_10009DB2C(v165, v6 + v163 + v123 * v55, type metadata accessor for TTRNewWidgetPresenter.Division);
          sub_10009DA8C(v121, v58, type metadata accessor for TTRNewWidgetPresenter.Division);
          v164 = v121;
          sub_10009DA8C(v121 + v55, v59, type metadata accessor for TTRNewWidgetPresenter.Division);
          v124 = *(v167 + 20);
          v6 = v58 + v124;
          v125 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
          v46 = *(v125 + 36);
          sub_1000C0AC8();
          if (v126 <= 60.0)
          {
            sub_100099C44(v59, type metadata accessor for TTRNewWidgetPresenter.Division);
            sub_100099C44(v58, type metadata accessor for TTRNewWidgetPresenter.Division);
            v28 = v41;
          }

          else
          {
            v161 = v125;
            v127 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
            v28 = v154;
            (*(*(v127 - 8) + 56))(v154, 1, 1, v127);
            sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            if ((sub_1000C25E8() & 1) == 0)
            {
              goto LABEL_45;
            }

            v128 = (v6 + v46);
            v129 = v158;
            v130 = v170;
            v170(v158, v128, v41);
            v131 = v159;
            v130(v129 + *(v159 + 48), v59 + v124, v41);
            v132 = v160;
            sub_1000082B4(v129, v160, &qword_1000EE308, &unk_1000C8CC0);
            v133 = *(v131 + 48);
            v134 = v28 + *(v167 + 20);
            v135 = v162;
            v162(v134, v132, v169);
            v41 = v153;
            v136 = *v153;
            (*v153)(v132 + v133, v169);
            sub_10001DA60(v129, v132, &qword_1000EE308, &unk_1000C8CC0);
            v135(v134 + *(v161 + 9), v132 + *(v131 + 48), v169);
            v137 = v132;
            v138 = v169;
            v136(v137);
            *(v28 + *(v167 + 24)) = 0;
            v140 = *(v173 + 16);
            v139 = *(v173 + 24);
            if (v140 >= v139 >> 1)
            {
              v173 = sub_100022484((v139 > 1), v140 + 1, 1, v173);
            }

            v55 = v171;
            v141 = v157;
            sub_100099C44(v157, type metadata accessor for TTRNewWidgetPresenter.Division);
            v58 = v156;
            v59 = v141;
            sub_100099C44(v156, type metadata accessor for TTRNewWidgetPresenter.Division);
            v142 = v173;
            *(v173 + 16) = v140 + 1;
            sub_10009DB2C(v28, v142 + v163 + v140 * v55, type metadata accessor for TTRNewWidgetPresenter.Division);
            v28 = v138;
          }

          v89 = v166 - 1;
          v120 = v164 + v55;
          v46 = v162;
          v6 = v173;
          if (v166 == 2)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
      }

      v6 = sub_100022484(0, *(v6 + 16) + 1, 1, v6);
LABEL_19:
      v91 = *(v6 + 16);
      v90 = *(v6 + 24);
      if (v91 >= v90 >> 1)
      {
        v6 = sub_100022484((v90 > 1), v91 + 1, 1, v6);
      }

      v173 = v6;
      *(v6 + 16) = v91 + 1;
      sub_10009DB2C(v59, v6 + v163 + v91 * v55, type metadata accessor for TTRNewWidgetPresenter.Division);
      v92 = (v41 + *(v167 + 20));
      v166 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
      v93 = *(v166 + 36);
      v94 = v144;
      sub_1000C0A68();
      v95 = v145;
      sub_1000C0A68();
      v76 = sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v96 = sub_1000C25D8();
      v97 = *(v168 + 1);
      v98 = (v96 & 1) == 0;
      if (v96)
      {
        v99 = v94;
      }

      else
      {
        v99 = v95;
      }

      if (v98)
      {
        v100 = v94;
      }

      else
      {
        v100 = v95;
      }

      v168 = *(v168 + 1);
      v97(v99, v28);
      v101 = v150;
      v102 = v46;
      (v46)(v150, v100, v28);
      v103 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
      v104 = v147;
      (*(*(v103 - 8) + 56))(v147, 1, 1, v103);
      v105 = v28;
      if (sub_1000C25E8())
      {
        v107 = v158;
        v108 = v170;
        v170(v158, v92 + v93, v169);
        v109 = v101;
        v110 = v159;
        v108(v107 + *(v159 + 48), v109, v169);
        v111 = v160;
        sub_1000082B4(v107, v160, &qword_1000EE308, &unk_1000C8CC0);
        v112 = *(v110 + 48);
        v113 = v167;
        v114 = v104 + *(v167 + 20);
        (v102)(v114, v111, v169);
        v115 = v111 + v112;
        v116 = v168;
        (v168)(v115, v169);
        v117 = v107;
        v28 = v169;
        sub_10001DA60(v117, v111, &qword_1000EE308, &unk_1000C8CC0);
        (v102)(v114 + *(v166 + 36), v111 + *(v110 + 48), v28);
        v116(v111, v28);
        *(v104 + *(v113 + 24)) = 0;
        v76 = v173;
        v102 = *(v173 + 16);
        v106 = *(v173 + 24);
        v105 = v102 + 1;
        v92 = v116;
        if (v102 < v106 >> 1)
        {
LABEL_29:
          v118 = v151;
          v92(v150, v28);
          sub_100099C44(v118, type metadata accessor for TTRNewWidgetPresenter.Division);
          v92(v152, v28);
          v76[2] = v105;
          sub_10009DB2C(v104, v76 + v163 + v102 * v171, type metadata accessor for TTRNewWidgetPresenter.Division);
          return v76;
        }
      }

      else
      {
        __break(1u);
      }

      v76 = sub_100022484((v106 > 1), v105, 1, v76);
      goto LABEL_29;
    }

    v162 = v46;
    v79 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
    v46 = v153;
    (*(*(v79 - 8) + 56))(v153, 1, 1, v79);
    sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v63 = v28;
    if (sub_1000C25E8())
    {
      v80 = v158;
      v81 = v77;
      v82 = v170;
      v170(v158, v81, v28);
      v83 = v159;
      v82(v80 + *(v159 + 48), v41, v169);
      v84 = v160;
      sub_1000082B4(v80, v160, &qword_1000EE308, &unk_1000C8CC0);
      v173 = *(v83 + 48);
      v85 = (v46 + *(v167 + 20));
      v46 = v162;
      v162(v85, v84, v169);
      v86 = *(v168 + 1);
      v86(v84 + v173, v169);
      sub_10001DA60(v80, v84, &qword_1000EE308, &unk_1000C8CC0);
      v87 = *(v83 + 48);
      v28 = v169;
      v88 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
      (v46)(&v85[*(v88 + 36)], v84 + v87, v28);
      v173 = v86;
      v86(v84, v28);
      v153[*(v167 + 24)] = 0;
      v6 = sub_100022484(0, 1, 1, _swiftEmptyArrayStorage);
      v41 = *(v6 + 16);
      v64 = *(v6 + 24);
      v63 = v41 + 1;
      if (v41 < v64 >> 1)
      {
LABEL_15:
        v58 = v156;
        v59 = v157;
        (v173)(v161, v28);
        *(v6 + 16) = v63;
        sub_10009DB2C(v153, v6 + v163 + v41 * v55, type metadata accessor for TTRNewWidgetPresenter.Division);
        goto LABEL_17;
      }

LABEL_51:
      v6 = sub_100022484((v64 > 1), v63, 1, v6);
      goto LABEL_15;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_100004D04(&qword_1000ED980, &qword_1000C5740);
  v60 = (*(v172 + 80) + 32) & ~*(v172 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1000C3590;
  v173 = v61;
  v55 = v61 + v60;
  v62 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  (*(*(v62 - 8) + 56))(v55, 1, 1, v62);
  v49 = v171;
  sub_1000C0A68();
  sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v63 = v28;
  if ((sub_1000C25E8() & 1) == 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v65 = v168;
  v66 = v158;
  (*(v168 + 2))(v158, v46, v28);
  v67 = v159;
  v68 = *(v65 + 4);
  v68(v66 + *(v159 + 48), v49, v28);
  v69 = v160;
  sub_1000082B4(v66, v160, &qword_1000EE308, &unk_1000C8CC0);
  v70 = v6;
  v71 = *(v67 + 48);
  v72 = v55 + *(v70 + 20);
  v68(v72, v69, v28);
  v172 = v55;
  v73 = *(v65 + 1);
  v73(v69 + v71, v28);
  sub_10001DA60(v66, v69, &qword_1000EE308, &unk_1000C8CC0);
  v74 = *(v67 + 48);
  v75 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v68(v72 + *(v75 + 36), v69 + v74, v28);
  v73(v69, v28);
  *(v172 + *(v167 + 24)) = 0;
  v73(v152, v28);
  return v173;
}

void *sub_10009C674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v151 = a3;
  v5 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v157 = *(v5 - 8);
  v158 = v5;
  __chkstk_darwin(v5);
  v7 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v139 - v9;
  __chkstk_darwin(v11);
  v142 = &v139 - v12;
  __chkstk_darwin(v13);
  v15 = &v139 - v14;
  __chkstk_darwin(v16);
  v144 = &v139 - v17;
  __chkstk_darwin(v18);
  v143 = &v139 - v19;
  __chkstk_darwin(v20);
  v145 = &v139 - v21;
  __chkstk_darwin(v22);
  v160 = &v139 - v23;
  v149 = sub_100004D04(&qword_1000EE308, &unk_1000C8CC0);
  __chkstk_darwin(v149);
  v148 = (&v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v147 = &v139 - v26;
  v155 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  __chkstk_darwin(v155);
  v28 = &v139 - v27;
  v29 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = (&v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  __chkstk_darwin(v33 - 8);
  v166 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v139 - v36;
  __chkstk_darwin(v38);
  v154 = &v139 - v39;
  v167 = sub_1000C0AF8();
  v162 = *(v167 - 8);
  __chkstk_darwin(v167);
  v150 = &v139 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  __chkstk_darwin(v42);
  v165 = &v139 - v43;
  __chkstk_darwin(v44);
  v152 = &v139 - v46;
  v47 = *(a1 + 16);
  if (!v47)
  {
    goto LABEL_23;
  }

  v159 = v28;
  v153 = a1;
  v139 = v10;
  v141 = v7;
  v140 = v15;
  v48 = *(a2 + 16);
  v156 = v47;
  v146 = v45;
  if (v48)
  {
    v49 = *(v29 + 24);
    v50 = a2 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v163 = *(v30 + 72);
    v164 = v49;
    v51 = (v162 + 48);
    v168 = (v162 + 32);
    v161 = (v162 + 56);
    v52 = _swiftEmptyArrayStorage;
    v53 = v166;
    v54 = v167;
    do
    {
      sub_10009DA8C(v50, v32, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
      sub_1000082B4(v32 + v164, v53, &qword_1000EE300, &unk_1000C6370);
      v55 = *v51;
      if ((*v51)(v53, 1, v54) == 1)
      {
        sub_100026D74(v32, v32[3]);
        v54 = v167;
        sub_1000C0DB8();
        v53 = v166;
        if (v55(v166, 1, v54) != 1)
        {
          sub_1000084C0(v53, &qword_1000EE300, &unk_1000C6370);
        }
      }

      else
      {
        (*v168)(v37, v53, v54);
        (*v161)(v37, 0, 1, v54);
      }

      sub_100099C44(v32, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
      if (v55(v37, 1, v54) == 1)
      {
        sub_1000084C0(v37, &qword_1000EE300, &unk_1000C6370);
      }

      else
      {
        v56 = *v168;
        (*v168)(v165, v37, v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1000224AC(0, v52[2] + 1, 1, v52);
        }

        v58 = v52[2];
        v57 = v52[3];
        if (v58 >= v57 >> 1)
        {
          v52 = sub_1000224AC((v57 > 1), v58 + 1, 1, v52);
        }

        v52[2] = v58 + 1;
        v59 = v52 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v58;
        v54 = v167;
        v56(v59, v165, v167);
        v53 = v166;
      }

      v50 += v163;
      --v48;
    }

    while (v48);
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
    v54 = v167;
  }

  v60 = v154;
  sub_100098D50(v52, v154);

  v61 = v162;
  v62 = (*(v162 + 48))(v60, 1, v54);
  a1 = v153;
  if (v62 == 1)
  {
    sub_1000084C0(v60, &qword_1000EE300, &unk_1000C6370);
LABEL_23:

    return a1;
  }

  v63 = v61 + 4;
  v64 = v152;
  v168 = v61[4];
  (v168)(v152, v60, v54);
  v65 = v146;
  sub_1000C0A48();
  v66 = v151;
  v67 = sub_1000C0A88();
  v68 = v61[1];
  v68(v65, v54);
  if ((v67 & 1) == 0)
  {
    v68(v64, v54);
    goto LABEL_23;
  }

  v165 = v68;
  v166 = (v61 + 1);
  v164 = sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v69 = sub_1000C25D8();
  v72 = v61[2];
  v71 = (v61 + 2);
  v70 = v72;
  v163 = v72;
  v73 = v150;
  if (v69)
  {
    v74 = v150;
    v75 = v64;
  }

  else
  {
    v74 = v150;
    v75 = v66;
  }

  v70(v74, v75, v54);
  v77 = v159;
  v78 = v146;
  sub_1000C0A48();
  if ((sub_1000C25E8() & 1) == 0)
  {
    goto LABEL_68;
  }

  v79 = v147;
  v162 = v71;
  v163(v147, v73, v54);
  v80 = v149;
  v81 = v78;
  v82 = v168;
  (v168)(v79 + *(v149 + 48), v81, v54);
  v73 = v63;
  v63 = v148;
  sub_1000082B4(v79, v148, &qword_1000EE308, &unk_1000C8CC0);
  v83 = *(v80 + 48);
  (v82)(v77, v63, v54);
  v84 = v165;
  (v165)(v63 + v83, v54);
  sub_10001DA60(v79, v63, &qword_1000EE308, &unk_1000C8CC0);
  v85 = *(v155 + 36);
  v86 = v63 + *(v80 + 48);
  v154 = v73;
  (v82)(v77 + v85, v86, v54);
  v87 = (v84)(v63, v54);
  __chkstk_darwin(v87);
  *(&v139 - 2) = v77;
  v64 = 0;
  v151 = sub_10008F460(sub_10009DBB4, (&v139 - 4), a1);
  v88 = v156;
  if (v89)
  {
LABEL_28:
    v90 = v165;
    (v165)(v150, v54);
    (v90)(v152, v54);
    a1 = v153;

    goto LABEL_29;
  }

  a1 = 0;
  v161 = ((*(v157 + 80) + 32) & ~*(v157 + 80));
  v71 = v161 + v153;
  while (1)
  {
    v91 = v88 + a1 - 1;
    if (v91 >= v88)
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v54 = *(v157 + 72);
    v64 = v71 + v54 * v91;
    v92 = v160;
    sub_10009DA8C(v64, v160, type metadata accessor for TTRNewWidgetPresenter.Division);
    v63 = (v92 + *(v158 + 20));
    v73 = v85;
    if ((sub_1000C25E8() & 1) == 0 && (sub_1000C25E8() & 1) == 0)
    {
      sub_1000A064C(&qword_1000F02B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      if ((sub_1000C2608() & 1) == 0)
      {
        break;
      }
    }

    sub_100099C44(v160, type metadata accessor for TTRNewWidgetPresenter.Division);
    v77 = v159;
LABEL_32:
    --a1;
    v88 = v156;
    v54 = v167;
    if (!(v156 + a1))
    {
      goto LABEL_28;
    }
  }

  v77 = v159;
  v93 = sub_1000C2608();
  sub_100099C44(v160, type metadata accessor for TTRNewWidgetPresenter.Division);
  if (v93)
  {
    goto LABEL_32;
  }

  v170 = _swiftEmptyArrayStorage;
  v94 = v151;
  v95 = v156;
  if (v151 < 1)
  {
    goto LABEL_41;
  }

  if (v156 < v151)
  {
    __break(1u);
    goto LABEL_72;
  }

  v63 = ((2 * v151) | 1);

  sub_10007827C(v96, v71, 0, (2 * v94) | 1);
  v95 = v156;
LABEL_41:
  if (v94 >= v95)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v97 = v145;
  sub_10009DA8C(v71 + v54 * v94, v145, type metadata accessor for TTRNewWidgetPresenter.Division);
  v98 = v97 + *(v158 + 20);
  v99 = sub_1000C0A98();
  v160 = v98;
  if ((v99 & 1) == 0)
  {
    v63 = v170;
    v71 = v140;
    goto LABEL_49;
  }

  sub_1000082B4(v97, v143, &qword_1000F0290, &qword_1000C8D08);
  v100 = v167;
  if ((sub_1000C25E8() & 1) == 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v101 = v147;
  v102 = v163;
  v163(v147, v98, v100);
  v103 = v149;
  v102(v101 + *(v149 + 48), v77, v100);
  v104 = v148;
  sub_1000082B4(v101, v148, &qword_1000EE308, &unk_1000C8CC0);
  v105 = *(v103 + 48);
  v157 = v143 + *(v158 + 20);
  v106 = v168;
  (v168)();
  v107 = v104 + v105;
  v108 = v165;
  (v165)(v107, v100);
  sub_10001DA60(v101, v104, &qword_1000EE308, &unk_1000C8CC0);
  (v106)(v157 + *(v155 + 36), v104 + *(v149 + 48), v100);
  (v108)(v104, v100);
  *(v143 + *(v158 + 24)) = 0;
  v63 = v170;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v110 = v63[2];
    v109 = v63[3];
    v71 = v140;
    v77 = v159;
    v111 = v143;
    if (v110 >= v109 >> 1)
    {
      v63 = sub_100022484((v109 > 1), v110 + 1, 1, v63);
      v111 = v143;
    }

    v63[2] = v110 + 1;
    sub_10009DB2C(v111, v161 + v63 + v110 * v54, type metadata accessor for TTRNewWidgetPresenter.Division);
    v170 = v63;
    v97 = v145;
LABEL_49:
    v112 = v144;
    sub_1000082B4(v97, v144, &qword_1000F0290, &qword_1000C8D08);
    v113 = v158;
    sub_1000082B4(v77, v112 + *(v158 + 20), &qword_1000F02B0, &unk_1000C8D30);
    *(v112 + *(v113 + 24)) = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_70:
      v63 = sub_100022484(0, v63[2] + 1, 1, v63);
    }

    v115 = v63[2];
    v114 = v63[3];
    if (v115 >= v114 >> 1)
    {
      v63 = sub_100022484((v114 > 1), v115 + 1, 1, v63);
    }

    v63[2] = v115 + 1;
    sub_10009DB2C(v144, v161 + v63 + v115 * v54, type metadata accessor for TTRNewWidgetPresenter.Division);
    v170 = v63;
    sub_10009DA8C(v64, v71, type metadata accessor for TTRNewWidgetPresenter.Division);
    v116 = v155;
    if ((sub_1000C0A88() & 1) == 0)
    {
      break;
    }

    sub_1000082B4(v71, v142, &qword_1000F0290, &qword_1000C8D08);
    v64 = v160;
    v164 = *(v116 + 36);
    v117 = v167;
    if (sub_1000C25E8())
    {
      v118 = v147;
      v119 = v163;
      v163(v147, v77 + v73, v117);
      v120 = v149;
      v119(v118 + *(v149 + 48), v64 + v164, v117);
      v121 = v148;
      sub_1000082B4(v118, v148, &qword_1000EE308, &unk_1000C8CC0);
      v122 = *(v120 + 48);
      v164 = v142 + *(v158 + 20);
      v123 = v168;
      (v168)();
      v124 = v165;
      (v165)(v121 + v122, v117);
      sub_10001DA60(v118, v121, &qword_1000EE308, &unk_1000C8CC0);
      v125 = v142;
      (v123)(v164 + *(v155 + 36), v121 + *(v149 + 48), v117);
      (v124)(v121, v117);
      *(v125 + *(v158 + 24)) = 0;
      v127 = v63[2];
      v126 = v63[3];
      if (v127 >= v126 >> 1)
      {
        v63 = sub_100022484((v126 > 1), v127 + 1, 1, v63);
      }

      v63[2] = v127 + 1;
      sub_10009DB2C(v125, v161 + v63 + v127 * v54, type metadata accessor for TTRNewWidgetPresenter.Division);
      v170 = v63;
      v71 = v140;
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    v63 = sub_100022484(0, v63[2] + 1, 1, v63);
  }

  v128 = v156 + a1;
  if (v156 + a1 >= v156 - 1)
  {
    goto LABEL_66;
  }

  v129 = _swiftEmptyArrayStorage;
  if (!a1)
  {
    goto LABEL_65;
  }

  v169 = _swiftEmptyArrayStorage;
  result = sub_1000BA4AC(0, -a1 & ~(-a1 >> 63), 0);
  if (-a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v130 = -a1;
    v131 = v161 + v153 + v54 * v128;
    v129 = v169;
    v132 = v139;
    do
    {
      v133 = v141;
      sub_10009DA8C(v131, v141, type metadata accessor for TTRNewWidgetPresenter.Division);
      sub_10001DA60(v133, v132, &qword_1000F0290, &qword_1000C8D08);
      v134 = v158;
      sub_10001DA60(v133 + *(v158 + 20), v132 + *(v158 + 20), &qword_1000F02B0, &unk_1000C8D30);
      *(v132 + *(v134 + 24)) = 0;
      v169 = v129;
      v136 = v129[2];
      v135 = v129[3];
      if (v136 >= v135 >> 1)
      {
        sub_1000BA4AC((v135 > 1), v136 + 1, 1);
        v129 = v169;
      }

      v129[2] = v136 + 1;
      sub_10009DB2C(v132, v161 + v129 + v136 * v54, type metadata accessor for TTRNewWidgetPresenter.Division);
      v131 += v54;
      --v130;
    }

    while (v130);
    v71 = v140;
    v77 = v159;
LABEL_65:
    sub_10007882C(v129);
LABEL_66:
    sub_100099C44(v71, type metadata accessor for TTRNewWidgetPresenter.Division);
    sub_100099C44(v145, type metadata accessor for TTRNewWidgetPresenter.Division);
    v137 = v167;
    v138 = v165;
    (v165)(v150, v167);
    (v138)(v152, v137);
    a1 = v170;
LABEL_29:
    sub_1000084C0(v77, &qword_1000F02B0, &unk_1000C8D30);
    return a1;
  }

  return result;
}

uint64_t sub_10009DA8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009DB2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009DBD4()
{
  v1 = (sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1000C0AF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 8) & ~v7;
  v14 = v2 | v7;
  v9 = (((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v0 + v3);

  v11 = v1[10];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v9 + 16, v14 | 7);
}

uint64_t sub_10009DDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1000C0AF8() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100093F14(a1, a2, a3, (v3 + v8), *(v3 + v9), v3 + v11, *(v3 + v12), *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10009DEFC(id *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __n128), uint64_t a5)
{
  v78 = a5;
  v79 = a4;
  v89 = a3;
  v77 = a2;
  v6 = type metadata accessor for TTRNewWidgetPresenter.Snapshot(0);
  v87 = *(v6 - 8);
  v88 = v6;
  __chkstk_darwin(v6);
  v82 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = v71 - v9;
  v10 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
  __chkstk_darwin(v10 - 8);
  v12 = v71 - v11;
  v86 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v72 = *(v86 - 8);
  __chkstk_darwin(v86);
  v14 = (v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v85 = *(v90 - 8);
  __chkstk_darwin(v90);
  v16 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v17 - 8);
  v19 = v71 - v18;
  v20 = sub_1000C1118();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(sub_100004D04(&qword_1000EDA48, &unk_1000C5830) + 48);
  *v23 = [*a1 objectID];
  v25 = enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:);
  v26 = sub_1000C10C8();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  (*(v21 + 104))(v23, enum case for REMNavigationSpecifier.customSmartList(_:), v20);
  v27 = sub_100004D04(&qword_1000EFC60, &qword_1000C7E48);
  v28 = *(v27 + 40);
  v29 = a1;
  v30 = *(a1 + *(v27 + 36));
  v76 = v29;
  v31 = *(v29 + v28);
  v32 = *(v21 + 16);
  v73 = v23;
  v32(v19, v23, v20);
  v74 = v21;
  v33 = *(v21 + 56);
  v75 = v20;
  v33(v19, 0, 1, v20);
  v34 = v89;
  v35 = v81;
  v98 = v89;
  v99 = v81;
  v100 = v19;
  v36 = sub_10008D27C(sub_1000A0864, v97, v30, type metadata accessor for TTRNewWidgetViewModel.Reminder, sub_1000BA468, type metadata accessor for TTRNewWidgetInteractorReminderWrapper, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v95 = v35;
  v96 = v19;
  v84 = sub_10008F144(sub_1000A0884, v94, v30);
  v92 = v35;
  v93 = v19;
  v80 = v19;
  sub_10008F144(sub_1000A089C, v91, v30);

  v37 = sub_10009A6D4(v31);
  v38 = v34;
  v39 = sub_10009B378(v37, v34);

  v101 = v30;

  sub_100078858(v40);
  v41 = sub_10009C674(v39, v101, v38);

  v42 = v41[2];
  if (!v42)
  {

    v45 = _swiftEmptyArrayStorage;
    v64 = v79;
    goto LABEL_24;
  }

  v89 = v36;
  v71[2] = 0;
  v43 = (*(v85 + 80) + 32) & ~*(v85 + 80);
  v71[1] = v41;
  v44 = v41 + v43;
  v85 = *(v85 + 72);
  v45 = _swiftEmptyArrayStorage;
  v46 = (v72 + 48);
  v47 = v82;
  do
  {
    sub_10009DA8C(v44, v16, type metadata accessor for TTRNewWidgetPresenter.Division);
    sub_1000082B4(v16, v12, &qword_1000F0290, &qword_1000C8D08);
    if ((*v46)(v12, 1, v86) == 1)
    {
      sub_1000084C0(v12, &qword_1000F0290, &qword_1000C8D08);
LABEL_7:
      v48 = v90;
      if (v16[*(v90 + 24)])
      {
        v49 = v89;
      }

      else
      {
        v49 = v84;
      }

      v50 = *(v48 + 20);
      v51 = sub_1000C0AF8();
      (*(*(v51 - 8) + 16))(v47, &v16[v50], v51);
      v52 = v88;
      *(v47 + *(v88 + 20)) = v49;
      *(v47 + *(v52 + 24)) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1000224FC(0, v45[2] + 1, 1, v45);
      }

      v54 = v45[2];
      v53 = v45[3];
      if (v54 >= v53 >> 1)
      {
        v45 = sub_1000224FC((v53 > 1), v54 + 1, 1, v45);
      }

      sub_100099C44(v16, type metadata accessor for TTRNewWidgetPresenter.Division);
      v45[2] = v54 + 1;
      sub_10009DB2C(v47, v45 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v54, type metadata accessor for TTRNewWidgetPresenter.Snapshot);
      goto LABEL_4;
    }

    sub_10009DB2C(v12, v14, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
    sub_100026D74(v14, v14[3]);
    if ((sub_1000C0DA8() & 1) != 0 && (v16[*(v90 + 24)] & 1) == 0)
    {
      sub_100099C44(v14, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
      v47 = v82;
      goto LABEL_7;
    }

    v56 = sub_1000983DC(v55, v14, v80);

    v57 = *(v90 + 20);
    v58 = sub_1000C0AF8();
    v59 = &v16[v57];
    v60 = v83;
    (*(*(v58 - 8) + 16))(v83, v59, v58);
    v61 = v88;
    *(v60 + *(v88 + 20)) = v56;
    *(v60 + *(v61 + 24)) = 1065353216;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1000224FC(0, v45[2] + 1, 1, v45);
    }

    v63 = v45[2];
    v62 = v45[3];
    v47 = v82;
    if (v63 >= v62 >> 1)
    {
      v45 = sub_1000224FC((v62 > 1), v63 + 1, 1, v45);
    }

    sub_100099C44(v16, type metadata accessor for TTRNewWidgetPresenter.Division);
    v45[2] = v63 + 1;
    sub_10009DB2C(v83, v45 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v63, type metadata accessor for TTRNewWidgetPresenter.Snapshot);
    sub_100099C44(v14, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
LABEL_4:
    v44 += v85;
    --v42;
  }

  while (v42);

  v64 = v79;
LABEL_24:

  v65 = sub_1000084C0(v80, &qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v65);
  v66 = v76;
  v71[-4] = v81;
  v71[-3] = v66;
  v67 = v73;
  v68 = v77;
  v71[-2] = v73;
  v71[-1] = v68;
  v69 = sub_10008D27C(sub_10009EA28, &v71[-6], v45, type metadata accessor for TTRNewWidgetTimelineEntry, sub_1000BA4F0, type metadata accessor for TTRNewWidgetPresenter.Snapshot, type metadata accessor for TTRNewWidgetTimelineEntry);

  (v64)(v69);

  return (*(v74 + 8))(v67, v75);
}

uint64_t *sub_10009EA70(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v11 = *(a2 + 3);
      *(a1 + 3) = v11;
      (**(v11 - 8))(a1, a2);
      a1[5] = a2[5];
      v12 = *(v7 + 24);
      v13 = sub_1000C0AF8();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(a2 + v12, 1, v13))
      {
        v15 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
        memcpy(a1 + v12, a2 + v12, *(*(v15 - 8) + 64));
      }

      else
      {
        (*(v14 + 16))(a1 + v12, a2 + v12, v13);
        (*(v14 + 56))(a1 + v12, 0, 1, v13);
      }

      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v16 = *(a3 + 20);
    v17 = a1 + v16;
    v18 = a2 + v16;
    v19 = sub_1000C0AF8();
    v20 = *(*(v19 - 8) + 16);
    v20(v17, v18, v19);
    v21 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
    v20(&v17[*(v21 + 36)], &v18[*(v21 + 36)], v19);
    *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  }

  return a1;
}

uint64_t sub_10009ED68(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    sub_10002285C(a1);
    v5 = *(v4 + 24);
    v6 = sub_1000C0AF8();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&a1[v5], 1, v6))
    {
      (*(v7 + 8))(&a1[v5], v6);
    }
  }

  v8 = &a1[*(a2 + 20)];
  v9 = sub_1000C0AF8();
  v12 = *(*(v9 - 8) + 8);
  (v12)((v9 - 8), v8, v9);
  v10 = &v8[*(sub_100004D04(&qword_1000F02B0, &unk_1000C8D30) + 36)];

  return v12(v10, v9);
}

uint64_t sub_10009EEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = *(a2 + 24);
    *(a1 + 24) = v9;
    (**(v9 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    v10 = *(v6 + 24);
    v11 = sub_1000C0AF8();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(a2 + v10, 1, v11))
    {
      v13 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
      memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(a1 + v10, a2 + v10, v11);
      (*(v12 + 56))(a1 + v10, 0, 1, v11);
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v14 = *(a3 + 20);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = sub_1000C0AF8();
  v18 = *(*(v17 - 8) + 16);
  v18(v15, v16, v17);
  v19 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v18(v15 + *(v19 + 36), v16 + *(v19 + 36), v17);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

char *sub_10009F198(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      sub_10008331C(a1, a2);
      *(a1 + 5) = *(a2 + 5);
      v19 = *(v6 + 24);
      v20 = sub_1000C0AF8();
      v21 = *(v20 - 8);
      v22 = *(v21 + 48);
      v23 = v22(&a1[v19], 1, v20);
      v24 = v22(&a2[v19], 1, v20);
      if (v23)
      {
        if (!v24)
        {
          (*(v21 + 16))(&a1[v19], &a2[v19], v20);
          (*(v21 + 56))(&a1[v19], 0, 1, v20);
          goto LABEL_14;
        }
      }

      else
      {
        if (!v24)
        {
          (*(v21 + 24))(&a1[v19], &a2[v19], v20);
          goto LABEL_14;
        }

        (*(v21 + 8))(&a1[v19], v20);
      }

      v16 = *(*(sub_100004D04(&qword_1000EE300, &unk_1000C6370) - 8) + 64);
      v17 = &a1[v19];
      v18 = &a2[v19];
      goto LABEL_8;
    }

    sub_100099C44(a1, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
LABEL_7:
    v16 = *(*(sub_100004D04(&qword_1000F0290, &qword_1000C8D08) - 8) + 64);
    v17 = a1;
    v18 = a2;
LABEL_8:
    memcpy(v17, v18, v16);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  v11 = *(a2 + 3);
  *(a1 + 3) = v11;
  *(a1 + 4) = *(a2 + 4);
  (**(v11 - 8))(a1, a2);
  *(a1 + 5) = *(a2 + 5);
  v12 = *(v6 + 24);
  v13 = sub_1000C0AF8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(&a2[v12], 1, v13))
  {
    v15 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(&a1[v12], &a2[v12], v13);
    (*(v14 + 56))(&a1[v12], 0, 1, v13);
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v25 = *(a3 + 20);
  v26 = &a1[v25];
  v27 = &a2[v25];
  v28 = sub_1000C0AF8();
  v29 = *(*(v28 - 8) + 24);
  v29(v26, v27, v28);
  v30 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v29(&v26[*(v30 + 36)], &v27[*(v30 + 36)], v28);
  a1[*(a3 + 24)] = a2[*(a3 + 24)];
  return a1;
}

_OWORD *sub_10009F5D4(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = a2[1];
    *a1 = *a2;
    a1[1] = v9;
    v10 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v10;
    v11 = *(v6 + 24);
    v12 = sub_1000C0AF8();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2 + v11, 1, v12))
    {
      v14 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
      memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 32))(a1 + v11, a2 + v11, v12);
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v15 = *(a3 + 20);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = sub_1000C0AF8();
  v19 = *(*(v18 - 8) + 32);
  v19(v16, v17, v18);
  v20 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v19(&v16[*(v20 + 36)], &v17[*(v20 + 36)], v18);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_10009F84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      sub_10002285C(a1);
      v20 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v20;
      v21 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v21;
      v22 = *(v6 + 24);
      v23 = sub_1000C0AF8();
      v24 = *(v23 - 8);
      v25 = *(v24 + 48);
      v26 = v25(a1 + v22, 1, v23);
      v27 = v25(a2 + v22, 1, v23);
      if (v26)
      {
        if (!v27)
        {
          (*(v24 + 32))(a1 + v22, a2 + v22, v23);
          (*(v24 + 56))(a1 + v22, 0, 1, v23);
          goto LABEL_14;
        }
      }

      else
      {
        if (!v27)
        {
          (*(v24 + 40))(a1 + v22, a2 + v22, v23);
          goto LABEL_14;
        }

        (*(v24 + 8))(a1 + v22, v23);
      }

      v17 = *(*(sub_100004D04(&qword_1000EE300, &unk_1000C6370) - 8) + 64);
      v18 = (a1 + v22);
      v19 = (a2 + v22);
      goto LABEL_8;
    }

    sub_100099C44(a1, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
LABEL_7:
    v17 = *(*(sub_100004D04(&qword_1000F0290, &qword_1000C8D08) - 8) + 64);
    v18 = a1;
    v19 = a2;
LABEL_8:
    memcpy(v18, v19, v17);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v12;
  v13 = *(v6 + 24);
  v14 = sub_1000C0AF8();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a2 + v13, 1, v14))
  {
    v16 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    memcpy((a1 + v13), (a2 + v13), *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))(a1 + v13, a2 + v13, v14);
    (*(v15 + 56))(a1 + v13, 0, 1, v14);
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v28 = *(a3 + 20);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = sub_1000C0AF8();
  v32 = *(*(v31 - 8) + 40);
  v32(v29, v30, v31);
  v33 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v32(v29 + *(v33 + 36), v30 + *(v33 + 36), v31);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_10009FC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10009FDB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10009FED0(uint64_t a1)
{
  sub_10009FFA0(319);
  if (v1 <= 0x3F)
  {
    sub_10009FFF8(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_10009FFA0(uint64_t a1)
{
  if (!qword_1000F0338)
  {
    type metadata accessor for TTRNewWidgetInteractorReminderWrapper(255);
    v1 = sub_1000C2A58();
    if (!v2)
    {
      atomic_store(v1, &qword_1000F0338);
    }
  }
}

void sub_10009FFF8(uint64_t a1)
{
  if (!qword_1000F0340)
  {
    sub_1000C0AF8();
    sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v1 = sub_1000C2908();
    if (!v2)
    {
      atomic_store(v1, &qword_1000F0340);
    }
  }
}

uint64_t *sub_1000A008C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0AF8();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v8) = *(a2 + v8);
  }

  return a1;
}

double sub_1000A0160(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000C0AF8();
  (*(*(v3 - 8) + 8))(a1, v3);

  return result;
}

uint64_t sub_1000A01D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1000A025C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_1000A02F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_1000A0378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_1000A041C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A04EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C0AF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A05A4(uint64_t a1)
{
  result = sub_1000C0AF8();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1000A064C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A0694()
{
  v1 = sub_1000C0AF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000A0778(uint64_t a1)
{
  v3 = *(sub_1000C0AF8() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_100090F8C(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1000A08B4()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000F0420);
  v1 = sub_10000D978(v0, qword_1000F0420);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000A097C()
{
  v0 = objc_allocWithZone(CNContactStore);

  return [v0 init];
}

uint64_t sub_1000A09BC()
{
  v0 = sub_100004D04(&qword_1000EFB88, &qword_1000C7C40);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = [objc_allocWithZone(REMStore) init];
  v4 = sub_1000C1338();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_1000C0FB8();
  v5 = sub_1000C0FA8();
  type metadata accessor for TTRNewWidgetInteractor(0);
  v6 = swift_allocObject();
  v6[2] = 0x4000000000000000;
  v6[3] = v3;
  v6[4] = v5;
  sub_1000A0B24(v2, v6 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_sortingStyle);
  type metadata accessor for TTRNewWidgetInteractor.CompletedCache();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_1000A0B94(v2);
  *(v7 + 112) = 0x4000000000000000;
  *(v7 + 120) = &_swiftEmptyDictionarySingleton;
  *(v6 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache) = v7;
  qword_1000F0438 = v6;
  return result;
}

uint64_t sub_1000A0B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000EFB88, &qword_1000C7C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A0B94(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000EFB88, &qword_1000C7C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A0BFC()
{
  v0 = sub_1000C1388();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRNewWidgetRouter();
  v5 = swift_allocObject();
  sub_1000A11E4();
  sub_1000C29E8();
  sub_1000C0FB8();
  sub_1000C0FA8();
  v6 = sub_1000C1048();
  swift_allocObject();
  v7 = sub_1000C1038();
  v46 = v6;
  v47 = &protocol witness table for REMContactsProvider;
  v45[0] = v7;
  v40 = v7;

  sub_1000C29E8();
  v8 = sub_1000C0F28();
  swift_allocObject();
  v39 = sub_1000C0F18();
  if (qword_1000EC9C0 != -1)
  {
    swift_once();
  }

  v9 = qword_1000F0438;
  (*(v1 + 104))(v3, enum case for REMRemindersListDataView.FetchSubtasks.count(_:), v0);
  v46 = v4;
  v47 = &off_1000E99A8;
  v45[0] = v5;
  type metadata accessor for TTRNewWidgetPresenter(0);
  v10 = swift_allocObject();
  v11 = sub_1000A1230(v45, v4);
  v38[1] = v38;
  v12 = __chkstk_darwin(v11);
  v14 = v0;
  v15 = (v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v12);
  v17 = *v15;
  v42 = v4;
  v43 = &off_1000E99A8;
  *&v41 = v17;
  v18 = (v10 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString);

  v19 = v39;

  v48._countAndFlagsBits = 0x65726F4D2040252BLL;
  v49._object = 0x80000001000CDDD0;
  v48._object = 0xE800000000000000;
  v49._countAndFlagsBits = 0xD00000000000001BLL;
  *v18 = sub_1000C0D78(v48, v49);
  v18[1] = v20;
  *(v10 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_relevantTimeDeltaLowerBound) = 0xC0AC200000000000;
  *(v10 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_timeDelta) = xmmword_1000C8D90;
  *(v10 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_overlapDelta) = 0x406E000000000000;
  *(v10 + 16) = v9;
  *(v10 + 24) = &off_1000E8C60;
  sub_100004E0C(&v41, v10 + 32);
  (*(v1 + 32))(v10 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks, v3, v14);
  v21 = v10 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_shareeInfoStyle;
  *v21 = v19;
  *(v21 + 8) = v44;
  *(v21 + 24) = v8;
  *(v21 + 32) = &protocol witness table for TTRParticipantAvatarProvider;
  __asm { FMOV            V0.2D, #20.0 }

  *(v21 + 40) = _Q0;
  *(v10 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForBaseReminder) = 2;
  *(v10 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForInterestingReminder) = 0;
  sub_10002285C(v45);
  if (qword_1000EC9B8 != -1)
  {
    swift_once();
  }

  v27 = sub_1000C1568();
  sub_10000D978(v27, qword_1000F0420);

  v28 = sub_1000C1558();
  v29 = sub_1000C2968();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *&v41 = swift_slowAlloc();
    *v30 = 136446466;
    v45[0] = &type metadata for TTRNewWidgetAssembly;
    sub_100004D04(&qword_1000F0448, &qword_1000C8DC8);
    v31 = sub_1000C26A8();
    v33 = sub_1000B7B58(v31, v32, &v41);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    v45[0] = v10;
    v45[1] = 8;

    v34 = sub_1000C26A8();
    v36 = sub_1000B7B58(v34, v35, &v41);

    *(v30 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s: Created provider %s", v30, 0x16u);
    swift_arrayDestroy();
  }

  return v10;
}

unint64_t sub_1000A11E4()
{
  result = qword_1000F0440;
  if (!qword_1000F0440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F0440);
  }

  return result;
}

uint64_t sub_1000A1230(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

double sub_1000A1294(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, id a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 24))
  {
    v13 = [a6 substringWithRange:{a2, a3}];
    sub_1000C2678();

    v14 = sub_1000C1DA8();
    v16 = v15;
    v18 = v17;

    if (a8)
    {

      v19 = sub_1000C1D78();
      v21 = v20;
      v23 = v22;

      sub_10000537C(v14, v16, v18 & 1);

      v14 = v19;
      v16 = v21;
      v18 = v23;
    }

    v24 = *a5;
    v25 = *(a5 + 8);
    v26 = *(a5 + 16);
    sub_100008420(*a5, v25, v26);

    v27 = sub_1000C1D98();
    v47 = v28;
    v48 = v29;
    v46 = v30;
    sub_10000537C(v24, v25, v26);

    sub_10000537C(v14, v16, v18 & 1);

    v31 = *a5;
    v32 = *(a5 + 8);
    v33 = *(a5 + 16);
    *a5 = v27;
    *(a5 + 8) = v47;
    *(a5 + 16) = v46 & 1;
    *(a5 + 24) = v48;
  }

  else
  {
    v34 = *a5;
    v35 = *(a5 + 8);
    v36 = *(a5 + 16);
    sub_100008420(*a5, v35, v36);

    v37 = [a6 substringWithRange:{a2, a3}];
    sub_1000C2678();

    v38 = sub_1000C1D98();
    v40 = v39;
    v42 = v41;
    v44 = v43;

    sub_10000537C(v34, v35, v36);

    v31 = *a5;
    v32 = *(a5 + 8);
    v33 = *(a5 + 16);
    *a5 = v38;
    *(a5 + 8) = v40;
    *(a5 + 16) = v42 & 1;
    *(a5 + 24) = v44;
  }

  sub_10000537C(v31, v32, v33);

  return result;
}

unint64_t sub_1000A155C()
{
  result = qword_1000F0480;
  if (!qword_1000F0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0480);
  }

  return result;
}

unint64_t sub_1000A15B4()
{
  result = qword_1000F0488;
  if (!qword_1000F0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0488);
  }

  return result;
}

unint64_t sub_1000A1674()
{
  result = qword_1000F0490;
  if (!qword_1000F0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0490);
  }

  return result;
}

uint64_t sub_1000A16C8()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000F0450);
  sub_10000D978(v0, qword_1000F0450);
  v1 = [objc_opt_self() widget];
  return sub_1000C1578();
}

uint64_t sub_1000A1738()
{
  v0 = sub_1000C0888();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C0B68();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000C2628();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000C0898();
  sub_10000D9B0(v6, qword_1000FAB78);
  sub_10000D978(v6, qword_1000FAB78);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000C08A8();
}

uint64_t sub_1000A1920(uint64_t a1)
{
  v1[2] = a1;
  sub_1000C2848();
  v1[3] = sub_1000C2838();
  v3 = sub_1000C2818();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1000A19B8, v3, v2);
}

uint64_t sub_1000A19B8()
{
  if (qword_1000EC9C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000C1568();
  sub_10000D978(v1, qword_1000F0450);
  v2 = sub_1000C1558();
  v3 = sub_1000C2968();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CreateQuickReminderIntent: perform", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1000A1B00;

  return sub_1000A237C();
}

uint64_t sub_1000A1B00()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1000A1CAC;
  }

  else
  {
    v5 = sub_1000A1C3C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A1C3C()
{

  sub_1000C0338();
  sub_1000A1D14();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A1CAC()
{

  sub_1000A1D14();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000A1D14()
{
  if (qword_1000EC9C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1000C1568();
  sub_10000D978(v0, qword_1000F0450);
  oslog = sub_1000C1558();
  v1 = sub_1000C2968();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "CreateQuickReminderIntent: finish performing", v2, 2u);
  }
}

uint64_t sub_1000A1DFC()
{
  v0 = sub_100004D04(&qword_1000F04C8, &qword_1000C8F38);
  sub_10000D9B0(v0, qword_1000F0468);
  v1 = sub_10000D978(v0, qword_1000F0468);
  v2 = sub_1000C2198();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1000A1E9C(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000F04B8, &qword_1000C8F28);
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  return sub_1000C21C8();
}

uint64_t sub_1000A1F6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000EC9D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000C0898();
  v3 = sub_10000D978(v2, qword_1000FAB78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000A2018(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000B028;

  return sub_1000A1920(a1);
}

uint64_t sub_1000A20B0(uint64_t a1)
{
  v2 = sub_1000A1674();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000A2150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004D04(&qword_1000F0508, &qword_1000C9058);
    v3 = sub_1000C2C68();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100079A34(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1000A2248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004D04(&qword_1000F04F0, &qword_1000C8F78);
    v3 = sub_1000C2C68();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000082B4(v4, &v13, &qword_1000F04F8, &unk_1000C8F80);
      v5 = v13;
      v6 = v14;
      result = sub_100079AC8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100004E0C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_1000A237C()
{
  sub_100004D04(&qword_1000F04A8, &qword_1000C8F18);
  v0[17] = swift_task_alloc();
  sub_1000C2278();
  v0[18] = swift_task_alloc();
  v1 = sub_1000C2248();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();
  sub_100004D04(&qword_1000F04B0, &qword_1000C8F20);
  v0[22] = swift_task_alloc();
  v2 = sub_1000C2198();
  v0[23] = v2;
  v0[24] = *(v2 - 8);
  v0[25] = swift_task_alloc();
  v3 = sub_1000C0B68();
  v0[26] = v3;
  v0[27] = *(v3 - 8);
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v4 = sub_100004D04(&qword_1000F04B8, &qword_1000C8F28);
  v0[30] = v4;
  v0[31] = *(v4 - 8);
  v0[32] = swift_task_alloc();
  v5 = sub_1000C21D8();
  v0[33] = v5;
  v0[34] = *(v5 - 8);
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  sub_100004D04(&qword_1000F04C0, &qword_1000C8F30);
  v0[37] = swift_task_alloc();
  v6 = sub_1000C2178();
  v0[38] = v6;
  v0[39] = *(v6 - 8);
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = sub_100004D04(&qword_1000F04C8, &qword_1000C8F38);
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();

  return _swift_task_switch(sub_1000A2750, 0, 0);
}

uint64_t sub_1000A2750()
{
  if (qword_1000EC9D8 != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[23];
  v3 = v0[24];
  v4 = sub_10000D978(v0[42], qword_1000F0468);
  v0[45] = v4;
  swift_beginAccess();
  sub_1000082B4(v4, v1, &qword_1000F04C8, &qword_1000C8F38);
  LODWORD(v2) = (*(v3 + 48))(v1, 1, v2);
  sub_1000084C0(v1, &qword_1000F04C8, &qword_1000C8F38);
  if (v2 != 1)
  {
    if (qword_1000EC9C8 != -1)
    {
      swift_once();
    }

    v12 = sub_1000C1568();
    sub_10000D978(v12, qword_1000F0450);
    v13 = sub_1000C1558();
    v14 = sub_1000C2948();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "CreateQuickReminderIntent: already running ToolKit workflow ", v15, 2u);
    }

    sub_1000A387C();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_1000C2228();
  v0[46] = sub_1000C2218();
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v41 = v0[33];
  v8 = v0[30];
  v9 = v0[31];
  sub_1000C21A8();
  swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = 0xD000000000000024;
  *(v10 + 24) = 0x80000001000CDDF0;
  *v7 = v10;
  (*(v9 + 104))(v7, enum case for CompoundToolKitPropertyFilter.is<A>(_:), v8);
  sub_1000A3824();
  sub_100008478(&qword_1000F04D8, &qword_1000F04B8, &qword_1000C8F28, &protocol conformance descriptor for CompoundToolKitPropertyFilter<A>);
  sub_1000C2288();

  (*(v9 + 8))(v7, v8);
  v11 = *(v6 + 8);
  v11(v5, v41);
  sub_1000C0B38();
  sub_1000C2208();
  v19 = v0[38];
  v20 = v0[39];
  v22 = v0[36];
  v21 = v0[37];
  v23 = v0[33];
  (*(v0[27] + 8))(v0[29], v0[26]);
  v11(v22, v23);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_1000084C0(v0[37], &qword_1000F04C0, &qword_1000C8F30);
    if (qword_1000EC9C8 != -1)
    {
      swift_once();
    }

    v24 = sub_1000C1568();
    sub_10000D978(v24, qword_1000F0450);
    v25 = sub_1000C1558();
    v26 = sub_1000C2948();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "CreateQukcReminderIntent: failed to read ToolDatabase", v27, 2u);
    }

    sub_1000A387C();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();

LABEL_10:

    v17 = v0[1];

    return v17();
  }

  v29 = v0[40];
  v30 = v0[41];
  v31 = v0[38];
  v32 = v0[39];
  v33 = v0[22];
  (*(v32 + 32))(v30, v0[37], v31);
  (*(v32 + 16))(v29, v30, v31);
  sub_1000A2248(_swiftEmptyArrayStorage);
  v34 = sub_1000C21F8();
  (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  sub_1000C2188();
  v35 = v0[43];
  v36 = v0[24];
  v37 = v0[23];
  (*(v36 + 16))(v35, v0[25], v37);
  v38 = *(v36 + 56);
  v0[47] = v38;
  v0[48] = (v36 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v38(v35, 0, 1, v37);
  swift_beginAccess();
  sub_1000A38D0(v35, v4);
  swift_endAccess();
  sub_1000C2268();
  sub_1000C0B38();
  sub_1000C2238();
  v39 = swift_task_alloc();
  v0[49] = v39;
  *v39 = v0;
  v39[1] = sub_1000A2F34;
  v40 = v0[21];

  return static ToolExecutor.start(options:)(v40);
}

uint64_t sub_1000A2F34(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[50] = a1;
  v3[51] = v1;

  v5 = v3[21];
  v6 = v3[20];
  v7 = v3[19];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    return _swift_task_switch(sub_1000A344C, 0, 0);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = swift_task_alloc();
    v3[52] = v8;
    v9 = sub_100004D04(&qword_1000F04E8, &qword_1000C8F70);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *v8 = v4;
    v8[1] = sub_1000A3160;
    v11 = v3[25];
    v12 = v3[17];

    return ToolExecutionSession.execute(invocation:)(v12, v11, v9, OpaqueTypeConformance2);
  }
}

uint64_t sub_1000A3160()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_1000A3604;
  }

  else
  {
    sub_1000084C0(*(v2 + 136), &qword_1000F04A8, &qword_1000C8F18);
    v3 = sub_1000A328C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A328C()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[41];
  v5 = v0[39];
  v11 = v0[38];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[23];
  swift_unknownObjectRelease();
  v1(v3, 1, 1, v8);
  swift_beginAccess();
  sub_1000A38D0(v3, v2);
  swift_endAccess();

  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v4, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000A344C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = *(v0 + 304);
  v5 = *(v0 + 312);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 184);
  (*(v0 + 376))(v2, 1, 1, v8);
  swift_beginAccess();
  sub_1000A38D0(v2, v1);
  swift_endAccess();

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000A3604()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[39];
  v10 = v0[38];
  v11 = v0[41];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  swift_unknownObjectRelease();
  v1(v3, 1, 1, v7);
  swift_beginAccess();
  sub_1000A38D0(v3, v2);
  swift_endAccess();

  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v11, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A37EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000A3824()
{
  result = qword_1000F04D0;
  if (!qword_1000F04D0)
  {
    sub_1000C21D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F04D0);
  }

  return result;
}

unint64_t sub_1000A387C()
{
  result = qword_1000F04E0;
  if (!qword_1000F04E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F04E0);
  }

  return result;
}

uint64_t sub_1000A38D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000F04C8, &qword_1000C8F38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A3954()
{
  result = qword_1000F0500;
  if (!qword_1000F0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0500);
  }

  return result;
}

char *sub_1000A39B8(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0AF8();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = sub_1000C0938();
    (*(*(v11 - 8) + 16))(v9, v10, v11);
    v12 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
    v9[*(v12 + 20)] = v10[*(v12 + 20)];
    *&v9[*(v12 + 24)] = *&v10[*(v12 + 24)];
    v13 = *(a3 + 24);
    v14 = sub_1000C2478();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);

    if (v16(&a2[v13], 1, v14))
    {
      v17 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
      memcpy(&a1[v13], &a2[v13], *(*(v17 - 8) + 64));
    }

    else
    {
      (*(v15 + 16))(&a1[v13], &a2[v13], v14);
      (*(v15 + 56))(&a1[v13], 0, 1, v14);
    }
  }

  return a1;
}

uint64_t sub_1000A3BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0AF8();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a1 + *(a2 + 20);
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for TTRTodayComplicationWidgetViewModel(0);

  v7 = *(a2 + 24);
  v8 = sub_1000C2478();
  v11 = *(v8 - 8);
  result = (*(v11 + 48))(a1 + v7, 1, v8);
  if (!result)
  {
    v10 = *(v11 + 8);

    return v10(a1 + v7, v8);
  }

  return result;
}

uint64_t sub_1000A3D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = sub_1000C0938();
  (*(*(v10 - 8) + 16))(v8, v9, v10);
  v11 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  *(v8 + *(v11 + 20)) = *(v9 + *(v11 + 20));
  *(v8 + *(v11 + 24)) = *(v9 + *(v11 + 24));
  v12 = *(a3 + 24);
  v13 = sub_1000C2478();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);

  if (v15(a2 + v12, 1, v13))
  {
    v16 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((a1 + v12), (a2 + v12), *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(a1 + v12, a2 + v12, v13);
    (*(v14 + 56))(a1 + v12, 0, 1, v13);
  }

  return a1;
}

uint64_t sub_1000A3EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = sub_1000C0938();
  (*(*(v10 - 8) + 24))(v8, v9, v10);
  v11 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  *(v8 + *(v11 + 20)) = *(v9 + *(v11 + 20));
  *(v8 + *(v11 + 24)) = *(v9 + *(v11 + 24));

  v12 = *(a3 + 24);
  v13 = sub_1000C2478();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  LODWORD(v8) = v15(a1 + v12, 1, v13);
  v16 = v15(a2 + v12, 1, v13);
  if (!v8)
  {
    if (!v16)
    {
      (*(v14 + 24))(a1 + v12, a2 + v12, v13);
      return a1;
    }

    (*(v14 + 8))(a1 + v12, v13);
    goto LABEL_6;
  }

  if (v16)
  {
LABEL_6:
    v17 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((a1 + v12), (a2 + v12), *(*(v17 - 8) + 64));
    return a1;
  }

  (*(v14 + 16))(a1 + v12, a2 + v12, v13);
  (*(v14 + 56))(a1 + v12, 0, 1, v13);
  return a1;
}

uint64_t sub_1000A410C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = sub_1000C0938();
  (*(*(v10 - 8) + 32))(v8, v9, v10);
  v11 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  *(v8 + *(v11 + 20)) = *(v9 + *(v11 + 20));
  *(v8 + *(v11 + 24)) = *(v9 + *(v11 + 24));
  v12 = *(a3 + 24);
  v13 = sub_1000C2478();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a2 + v12, 1, v13))
  {
    v15 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((a1 + v12), (a2 + v12), *(*(v15 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(a1 + v12, a2 + v12, v13);
    (*(v14 + 56))(a1 + v12, 0, 1, v13);
  }

  return a1;
}

uint64_t sub_1000A42C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = sub_1000C0938();
  (*(*(v10 - 8) + 40))(v8, v9, v10);
  v11 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  *(v8 + *(v11 + 20)) = *(v9 + *(v11 + 20));
  *(v8 + *(v11 + 24)) = *(v9 + *(v11 + 24));

  v12 = *(a3 + 24);
  v13 = sub_1000C2478();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  LODWORD(v8) = v15(a1 + v12, 1, v13);
  v16 = v15(a2 + v12, 1, v13);
  if (!v8)
  {
    if (!v16)
    {
      (*(v14 + 40))(a1 + v12, a2 + v12, v13);
      return a1;
    }

    (*(v14 + 8))(a1 + v12, v13);
    goto LABEL_6;
  }

  if (v16)
  {
LABEL_6:
    v17 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((a1 + v12), (a2 + v12), *(*(v17 - 8) + 64));
    return a1;
  }

  (*(v14 + 32))(a1 + v12, a2 + v12, v13);
  (*(v14 + 56))(a1 + v12, 0, 1, v13);
  return a1;
}

uint64_t sub_1000A44F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000A4654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000C0AF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for TTRTodayComplicationWidgetTimelineEntry(uint64_t a1)
{
  result = qword_1000F0568;
  if (!qword_1000F0568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A47F8(uint64_t a1)
{
  sub_1000C0AF8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TTRTodayComplicationWidgetViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1000A48FC(319);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void sub_1000A48FC(uint64_t a1)
{
  if (!qword_1000EDB30)
  {
    sub_1000C2478();
    v1 = sub_1000C2A58();
    if (!v2)
    {
      atomic_store(v1, &qword_1000EDB30);
    }
  }
}

void *sub_1000A4954(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0938();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v8) = *(a2 + v8);
  }

  return a1;
}

double sub_1000A4A28(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000C0938();
  (*(*(v3 - 8) + 8))(a1, v3);

  return result;
}

uint64_t sub_1000A4A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1000A4B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t sub_1000A4BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_1000A4C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1000A4CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A4DB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C0938();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TTRTodayComplicationWidgetViewModel(uint64_t a1)
{
  result = qword_1000F0600;
  if (!qword_1000F0600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A4EB4(uint64_t a1)
{
  result = sub_1000C0938();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}