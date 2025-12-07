id sub_11A0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for HealthTopicsDiagnosticOperation.ReportData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(HKHealthStore) init];
  *&v2[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_healthStore] = v8;
  v9 = sub_31EC();
  swift_allocObject();
  v10 = v8;
  v11 = sub_31DC();
  v12 = &v2[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_topicStore];
  *&v2[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_topicStore + 24] = v9;
  v12[4] = sub_2D40(&qword_8448, &type metadata accessor for HealthTopicStore, &protocol conformance descriptor for HealthTopicStore);
  *v12 = v11;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v14)
  {
    sub_327C();
    v14 = sub_326C();
  }

  v15 = HKCreateConcurrentDispatchQueue();

  *&v2[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_concurrentQueue] = v15;
  *&v2[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_dispatchGroup] = dispatch_group_create();
  v16 = sub_320C();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_2D88(0);
  v17 = swift_allocObject();
  *(v17 + ((*(*v17 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2E40(v7, v17 + *(*v17 + class metadata base offset for ManagedBuffer + 16));
  v18 = OBJC_IVAR___HDHealthTopicsDiagnosticOperation_reportData;
  *&v2[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_reportData] = v17;
  sub_31AC(v18);
  v20 = v19;
  v24.receiver = v2;
  v24.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v24, "initWithAttachmentDirectoryURL:", v19);

  v22 = sub_31CC();
  (*(*(v22 - 8) + 8))(a1, v22);
  return v21;
}

void sub_155C()
{
  v1 = sub_324C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  sub_28D0(0, &qword_8430, &type metadata accessor for TaskPriority);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  dispatch_group_enter(*&v0[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_dispatchGroup]);
  v11 = sub_32DC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v0;
  v13 = v0;
  sub_2058(0, 0, v10, &unk_3738, v12);

  CFAbsoluteTimeGetCurrent();
  sub_323C();
  sub_325C();
  v14 = *(v2 + 8);
  v14(v5, v1);
  v15 = sub_32FC();
  v14(v7, v1);
  if (v15)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_331C(43);

    v21 = 0xD000000000000029;
    v22 = 0x8000000000003840;
    CFAbsoluteTimeGetCurrent();
    v16 = HKDiagnosticStringFromDuration();
    v17 = sub_327C();
    v19 = v18;

    v23._countAndFlagsBits = v17;
    v23._object = v19;
    sub_329C(v23);

    v20 = sub_326C();

    [v13 appendString:v20];
  }

  else
  {
    sub_1854();
  }
}

uint64_t sub_1854()
{
  v1 = type metadata accessor for HealthTopicsDiagnosticOperation.ReportData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *&v0[OBJC_IVAR___HDHealthTopicsDiagnosticOperation_reportData];
  v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_2B0C(v4 + v5, v3);
  os_unfair_lock_unlock((v4 + v6));
  [v0 appendStrongSeparator];
  v7 = sub_326C();
  [v0 appendString:v7];

  [v0 appendStrongSeparator];
  [v0 appendNewline];
  sub_2338(v3);
  return sub_2B70(v3);
}

uint64_t sub_19F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_31FC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_320C();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1B0C, 0, 0);
}

uint64_t sub_1B0C()
{
  v1 = (v0[2] + OBJC_IVAR___HDHealthTopicsDiagnosticOperation_topicStore);
  v2 = v1[3];
  v3 = v1[4];
  sub_2CE0(v1, v2);
  sub_322C();
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_2D40(&qword_8440, &type metadata accessor for TopicRegistryListRequest, &protocol conformance descriptor for TopicRegistryListRequest);
  *v4 = v0;
  v4[1] = sub_1C24;
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[3];

  return TopicStore.response<A>(for:)(v6, v7, v2, v8, v3, v5);
}

uint64_t sub_1C24()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1F18;
  }

  else
  {
    v5 = sub_1D94;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1D94()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = *(v0[2] + OBJC_IVAR___HDHealthTopicsDiagnosticOperation_reportData);
  *(swift_task_alloc() + 16) = v2;
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_2D24(v3 + v4);
  if (v1)
  {

    os_unfair_lock_unlock((v3 + v5));
  }

  else
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];
    v9 = v0[2];
    os_unfair_lock_unlock((v3 + v5));

    dispatch_group_leave(*(v9 + OBJC_IVAR___HDHealthTopicsDiagnosticOperation_dispatchGroup));
    (*(v7 + 8))(v6, v8);

    v10 = v0[1];

    v10();
  }
}

uint64_t sub_1F18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1F88(uint64_t a1, uint64_t a2)
{
  sub_2C38(a1, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
  v4 = sub_320C();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_2058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_28D0(0, &qword_8430, &type metadata accessor for TaskPriority);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_2BCC(a3, v22 - v9, &qword_8430, &type metadata accessor for TaskPriority);
  v11 = sub_32DC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2C38(v10, &qword_8430, &type metadata accessor for TaskPriority);
  }

  else
  {
    sub_32CC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_32BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_328C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2C38(a3, &qword_8430, &type metadata accessor for TaskPriority);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2C38(a3, &qword_8430, &type metadata accessor for TaskPriority);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_2338(uint64_t a1)
{
  v2 = v1;
  sub_28D0(0, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_320C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  sub_2BCC(a1, v6, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2C38(v6, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
    v14 = sub_326C();
    [v2 appendString:v14];
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_2C94();
    (*(v8 + 16))(v11, v13, v7);
    v15 = sub_32EC();
    v16 = [v15 formattedTable];

    sub_327C();
    v17 = sub_326C();

    [v2 appendString:v17];

    (*(v8 + 8))(v13, v7);
  }
}

id sub_25E8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_26D4(uint64_t a1, uint64_t a2)
{
  sub_28D0(0, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2770(uint64_t a1, uint64_t a2)
{
  sub_28D0(0, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for HealthTopicsDiagnosticOperation.ReportData(uint64_t a1)
{
  result = qword_83F8;
  if (!qword_83F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2848(uint64_t a1)
{
  sub_28D0(319, &qword_8398, &type metadata accessor for TopicRegistryListResponse);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_28D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_330C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2924()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2A18;

  return sub_19F0(a1, v4, v5, v6);
}

uint64_t sub_2A18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthTopicsDiagnosticOperation.ReportData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B70(uint64_t a1)
{
  v2 = type metadata accessor for HealthTopicsDiagnosticOperation.ReportData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2BCC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_28D0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2C38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_28D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2C94()
{
  result = qword_8438;
  if (!qword_8438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8438);
  }

  return result;
}

void *sub_2CE0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2D40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2D88(uint64_t a1)
{
  if (!qword_8450)
  {
    type metadata accessor for HealthTopicsDiagnosticOperation.ReportData(255);
    type metadata accessor for os_unfair_lock_s();
    v1 = sub_332C();
    if (!v2)
    {
      atomic_store(v1, &qword_8450);
    }
  }
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_8458)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_8458);
    }
  }
}

uint64_t sub_2E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthTopicsDiagnosticOperation.ReportData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2EA4(void *a1)
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

uint64_t sub_2F00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2F20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_310C()
{
  if (!qword_84E8)
  {
    v0 = sub_333C();
    if (!v1)
    {
      atomic_store(v0, &qword_84E8);
    }
  }
}

unint64_t sub_3160()
{
  result = qword_84F0;
  if (!qword_84F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_84F0);
  }

  return result;
}