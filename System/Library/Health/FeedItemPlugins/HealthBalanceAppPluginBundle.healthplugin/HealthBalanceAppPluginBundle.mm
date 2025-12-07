id _SleepingSampleChangesAlertTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_4834();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id _SleepingSampleChangesAlertTileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = sub_4834();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_16EC(void *a1, uint64_t a2, NSString a3, void *a4)
{
  ObjectType = swift_getObjectType();
  sub_48E4();
  sub_48D4();
  sub_48C4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_4864();
    v8 = a4;
    a3 = sub_4834();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = a1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", a3, a4);

  return v10;
}

id _SleepingSampleChangesAlertTileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id _SleepingSampleChangesAlertTileViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_18AC(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_48E4();
  sub_48D4();
  sub_48C4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = a1;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

id _SleepingSampleChangesAlertTileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for _SleepingSampleHelpTileViewController(uint64_t a1)
{
  result = qword_C4C0;
  if (!qword_C4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A60(uint64_t a1, id *a2)
{
  result = sub_4844();
  *a2 = 0;
  return result;
}

uint64_t sub_1AD8(uint64_t a1, id *a2)
{
  v3 = sub_4854();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B58@<X0>(uint64_t *a2@<X8>)
{
  sub_4864();
  v3 = sub_4834();

  *a2 = v3;
  return result;
}

uint64_t sub_1B9C()
{
  sub_4864();
  v0 = sub_48B4();

  return v0;
}

uint64_t sub_1BD8(uint64_t a1)
{
  sub_4864();
  sub_4894();
}

Swift::Int sub_1C2C(uint64_t a1)
{
  sub_4864();
  sub_49B4();
  sub_4894();
  v1 = sub_49C4();

  return v1;
}

uint64_t sub_1CA0(void *a1, uint64_t *a2)
{
  v2 = sub_4864();
  v4 = v3;
  if (v2 == sub_4864() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_49A4();
  }

  return v7 & 1;
}

uint64_t sub_1D28@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_4834();

  *a2 = v3;
  return result;
}

uint64_t sub_1D70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4864();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D9C(uint64_t a1)
{
  v2 = sub_1F20(&qword_C530, &unk_4EB4);
  v3 = sub_1F20(&qword_C538, &unk_4E08);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void type metadata accessor for OpenURLOptionsKey()
{
  if (!qword_C510)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_C510);
    }
  }
}

uint64_t sub_1F20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1F64(void *a1, uint64_t a2, NSString a3, void *a4)
{
  ObjectType = swift_getObjectType();
  sub_48E4();
  sub_48D4();
  sub_48C4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_4864();
    v8 = a4;
    a3 = sub_4834();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = a1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", a3, a4);

  return v10;
}

id sub_2078(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_48E4();
  sub_48D4();
  sub_48C4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = a1;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

uint64_t type metadata accessor for _SleepingSampleChangesAlertTileViewController(uint64_t a1)
{
  result = qword_C540;
  if (!qword_C540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _HealthBalancePluginDelegate.__deallocating_deinit()
{
  v0 = _s28HealthBalanceAppPluginBundle01_abD8DelegateCfd_0();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t type metadata accessor for _HealthBalancePluginDelegate(uint64_t a1)
{
  result = qword_C590;
  if (!qword_C590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for _SleepingSampleAnalysisHealthChecklistActionHandler(uint64_t a1)
{
  result = qword_C5E0;
  if (!qword_C5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2378(uint64_t a1)
{
  v3 = sub_47A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_47B4();
  (*(v4 + 8))(a1, v3);
  return v8;
}

id sub_2478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _SleepingSampleAnalysisHealthChecklistActionHandler(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _HealthBalanceAppDelegate.open(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_4794();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C4(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_4904();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a1, v3);
  sub_48E4();
  v11 = sub_48D4();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = &protocol witness table for MainActor;
  (*(v4 + 32))(v14 + v12, v6, v3);
  *(v14 + v13) = ObjectType;
  sub_2D6C(0, 0, v9, &unk_4F98, v14);
}

void sub_26C4(uint64_t a1)
{
  if (!qword_C630)
  {
    sub_4904();
    v1 = sub_4924();
    if (!v2)
    {
      atomic_store(v1, &qword_C630);
    }
  }
}

uint64_t sub_271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_4794();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_4814();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  sub_48E4();
  v5[11] = sub_48D4();
  v9 = sub_48C4();

  return _swift_task_switch(sub_286C, v9, v8);
}

uint64_t sub_286C()
{
  v41 = v0;
  v1 = v0;
  v4 = v0 + 6;
  v3 = v0[6];
  v2 = v4[1];
  v5 = v1[5];
  v6 = v1[3];

  sub_47F4();
  (*(v3 + 16))(v2, v6, v5);
  v7 = sub_4804();
  v8 = sub_4914();
  if (os_log_type_enabled(v7, v8))
  {
    v37 = v1[9];
    v9 = v1[7];
    v38 = v1[8];
    v39 = v1[10];
    v10 = v1[5];
    v11 = v1[6];
    v12 = v1[4];
    v13 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v13 = 136446466;
    v1[2] = v12;
    swift_getMetatypeMetadata();
    v14 = sub_4874();
    v16 = sub_3A9C(v14, v15, &v40);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    sub_42D4(&qword_C688, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = sub_4984();
    v19 = v18;
    (*(v11 + 8))(v9, v10);
    v20 = sub_3A9C(v17, v19, &v40);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v7, v8, "[%{public}s]: opening url %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v37 + 8))(v39, v38);
  }

  else
  {
    v22 = v1[9];
    v21 = v1[10];
    v23 = v1[7];
    v24 = v1[8];
    v25 = v1[5];
    v26 = v1[6];

    (*(v26 + 8))(v23, v25);
    (*(v22 + 8))(v21, v24);
  }

  v27 = objc_opt_self();
  v28 = [v27 sharedApplication];
  v29 = [v28 delegate];

  if (v29)
  {
    if ([v29 respondsToSelector:"application:openURL:options:"])
    {
      v30 = [v27 sharedApplication];
      sub_41C4(&_swiftEmptyArrayStorage);
      sub_4774(v31);
      v33 = v32;
      type metadata accessor for OpenURLOptionsKey();
      sub_42D4(&qword_C530, type metadata accessor for OpenURLOptionsKey, &unk_4EB4);
      isa = sub_4824().super.isa;
      [v29 application:v30 openURL:v33 options:isa];
    }

    swift_unknownObjectRelease();
  }

  v35 = v1[1];

  return v35();
}

uint64_t sub_2C4C(uint64_t a1)
{
  v4 = *(sub_4794() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_45A4;

  return sub_271C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26C4(0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_44B8(a3, v11, sub_26C4);
  v12 = sub_4904();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_36A8(v11);
  }

  else
  {
    sub_48F4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_48C4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_4884() + 32;
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

      sub_36A8(a3);

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

  sub_36A8(a3);
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

uint64_t sub_3038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_26C4(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4794();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  sub_4784();
  v14 = sub_4904();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  (*(v8 + 16))(v11, v13, v7);
  sub_48E4();
  v15 = sub_48D4();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  (*(v8 + 32))(v18 + v16, v11, v7);
  *(v18 + v17) = ObjectType;
  sub_2D6C(0, 0, v6, &unk_4FC0, v18);

  return (*(v8 + 8))(v13, v7);
}

id _HealthBalanceAppDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _HealthBalanceAppDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_32F0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t type metadata accessor for _HealthBalanceAppDelegate(uint64_t a1)
{
  result = qword_C638;
  if (!qword_C638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_33C4()
{
  v1 = sub_4794();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_3494(uint64_t a1)
{
  v4 = *(sub_4794() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_35B4;

  return sub_271C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_35B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_36A8(uint64_t a1)
{
  sub_26C4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3704(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_37FC;

  return v6(a1);
}

uint64_t sub_37FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_38F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_45A4;

  return sub_3704(a1, v4);
}

uint64_t sub_39AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_39E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_35B4;

  return sub_3704(a1, v4);
}

unint64_t sub_3A9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3B68(v11, 0, 0, 1, a1, a2);
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
    sub_4368(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_431C(v11);
  return v7;
}

unint64_t sub_3B68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_3C74(a5, a6);
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
    result = sub_4944();
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

char *sub_3C74(uint64_t a1, unint64_t a2)
{
  v3 = sub_3CC0(a1, a2);
  sub_3DF0(&off_84E0);
  return v3;
}

char *sub_3CC0(uint64_t a1, unint64_t a2)
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

  v6 = sub_3EDC(v5, 0);
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

  result = sub_4944();
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
        v10 = sub_48A4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3EDC(v10, 0);
        result = sub_4934();
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

uint64_t sub_3DF0(uint64_t result)
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

  result = sub_3F44(result, v11, 1, v3);
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

void *sub_3EDC(uint64_t a1, uint64_t a2)
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

  sub_43C4();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3F44(char *result, int64_t a2, char a3, char *a4)
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
    sub_43C4();
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

unint64_t sub_402C(uint64_t a1)
{
  sub_4864();
  sub_49B4();
  sub_4894();
  v2 = sub_49C4();

  return sub_40C0(a1, v2);
}

unint64_t sub_40C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_4864();
      v8 = v7;
      if (v6 == sub_4864() && v8 == v9)
      {
        break;
      }

      v11 = sub_49A4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_41C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_4418(0);
    v3 = sub_4954();
    v4 = a1 + 32;

    while (1)
    {
      sub_44B8(v4, &v11, sub_4520);
      v5 = v11;
      result = sub_402C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_458C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_42D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_431C(void *a1)
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

uint64_t sub_4368(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_43C4()
{
  if (!qword_C690)
  {
    v0 = sub_4994();
    if (!v1)
    {
      atomic_store(v0, &qword_C690);
    }
  }
}

void sub_4418(uint64_t a1)
{
  if (!qword_C698)
  {
    type metadata accessor for OpenURLOptionsKey();
    sub_42D4(&qword_C530, type metadata accessor for OpenURLOptionsKey, &unk_4EB4);
    v1 = sub_4964();
    if (!v2)
    {
      atomic_store(v1, &qword_C698);
    }
  }
}

uint64_t sub_44B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_4520(uint64_t a1)
{
  if (!qword_C6A0)
  {
    type metadata accessor for OpenURLOptionsKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_C6A0);
    }
  }
}

_OWORD *sub_458C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for _BalancePromotionFeedItemViewActionHandler(uint64_t a1)
{
  result = qword_C6A8;
  if (!qword_C6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4634(uint64_t a1)
{
  v3 = sub_47A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_47C4();
  (*(v4 + 8))(a1, v3);
  return v8;
}

id sub_4734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _BalancePromotionFeedItemViewActionHandler(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}