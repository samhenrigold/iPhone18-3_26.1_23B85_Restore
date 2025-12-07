uint64_t sub_1A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_15370();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DE4(&qword_20AA8, &unk_15E20);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_1E2C(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_15320();
  (*(v6 + 8))(a2, v5);
  sub_1E9C(a1);
  return v12;
}

uint64_t sub_1C08(uint64_t a1, uint64_t a2)
{
  v3 = sub_15370();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_15330();
  (*(v4 + 8))(a2, v3);
  return v7;
}

uint64_t sub_1D18()
{
  sub_15350();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShowClockCATsSimple(uint64_t a1)
{
  result = qword_20A58;
  if (!qword_20A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DE4(&qword_20AA8, &unk_15E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E9C(uint64_t a1)
{
  v2 = sub_1DE4(&qword_20AA8, &unk_15E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1F04()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_20AB0);
  sub_2CE8(v0, qword_20AB0);
  return sub_15450();
}

void ShowClockIntentHandler.confirm(intent:completion:)(uint64_t a1, void (*a2)(char *))
{
  v3 = [objc_allocWithZone(type metadata accessor for ShowClockIntentResponse()) init];
  v4 = OBJC_IVAR___ShowClockIntentResponse_code;
  swift_beginAccess();
  *&v3[v4] = 1;
  [v3 setUserActivity:0];
  a2(v3);
}

uint64_t ShowClockIntentHandler.handle(intent:completion:)(void *a1, void (*a2)(char *), uint64_t a3)
{
  v71 = a2;
  v72 = a3;
  v4 = sub_1DE4(&qword_20AC8, &unk_15E40);
  __chkstk_darwin(v4 - 8);
  v66 = &v63 - v5;
  v6 = sub_1DE4(&qword_20AD0, &qword_16080);
  __chkstk_darwin(v6 - 8);
  v65 = &v63 - v7;
  v8 = sub_1DE4(&qword_20AD8, &qword_15E50);
  __chkstk_darwin(v8 - 8);
  v10 = &v63 - v9;
  v11 = sub_14C20();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v73 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v63 - v15;
  v17 = sub_1DE4(&qword_20AE0, &qword_15E58);
  __chkstk_darwin(v17 - 8);
  v19 = &v63 - v18;
  v20 = sub_14C40();
  v69 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v68 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v70 = &v63 - v23;
  v24 = sub_14D00();
  v74 = *(v24 - 8);
  v75 = v24;
  __chkstk_darwin(v24);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_209F0 != -1)
  {
    swift_once();
  }

  v27 = sub_15540();
  v67 = sub_2CE8(v27, qword_20AB0);
  v28 = sub_15530();
  v29 = sub_155F0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v64 = v10;
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "ShowClockIntentHandler.handle() is called", v30, 2u);
    v10 = v64;
  }

  sub_14CD0();
  v31 = [a1 offset];
  if (v31)
  {
    v32 = v73;
    v33 = v31;
    sub_14BE0();

    v34 = *(v12 + 32);
    v34(v10, v32, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v34(v16, v10, v11);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    (*(v74 + 56))(v65, 1, 1, v75);
    v35 = sub_14D10();
    (*(*(v35 - 8) + 56))(v66, 1, 1, v35);
    sub_14C10();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_2D20(v10, &qword_20AD8, &qword_15E50);
    }
  }

  v36 = v68;
  sub_15380();
  sub_14CC0();
  v37 = v69;
  v38 = *(v69 + 8);
  v38(v36, v20);
  v41 = *(v12 + 8);
  v40 = (v12 + 8);
  v39 = v41;
  v41(v16, v11);
  if ((*(v37 + 48))(v19, 1, v20) == 1)
  {
    v42 = v26;
    sub_2D20(v19, &qword_20AE0, &qword_15E58);
    v43 = sub_15530();
    v44 = sub_155E0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "Failed to calucate the date.", v45, 2u);
    }

    v46 = [objc_allocWithZone(type metadata accessor for ShowClockIntentResponse()) init];
    v47 = OBJC_IVAR___ShowClockIntentResponse_code;
    swift_beginAccess();
    *&v46[v47] = 5;
    [v46 setUserActivity:0];
    v71(v46);
  }

  else
  {
    (*(v37 + 32))(v70, v19, v20);
    v48 = [objc_allocWithZone(type metadata accessor for ShowClockIntentResponse()) init];
    v49 = OBJC_IVAR___ShowClockIntentResponse_code;
    swift_beginAccess();
    *&v48[v49] = 4;
    [v48 setUserActivity:0];
    sub_1DE4(&qword_20AE8, &unk_15E60);
    v69 = v20;
    v50 = sub_14CE0();
    v51 = *(v50 - 8);
    v66 = v26;
    v52 = v51;
    v68 = v38;
    v53 = *(v51 + 72);
    v54 = *(v51 + 80);
    v67 = v39;
    v55 = (v54 + 32) & ~v54;
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_15E30;
    v57 = v56 + v55;
    v65 = v40;
    v58 = *(v52 + 104);
    v58(v57, enum case for Calendar.Component.year(_:), v50);
    v58(v57 + v53, enum case for Calendar.Component.month(_:), v50);
    v64 = v11;
    v58(v57 + 2 * v53, enum case for Calendar.Component.day(_:), v50);
    v58(v57 + 3 * v53, enum case for Calendar.Component.hour(_:), v50);
    v58(v57 + 4 * v53, enum case for Calendar.Component.minute(_:), v50);
    v58(v57 + 5 * v53, enum case for Calendar.Component.second(_:), v50);
    v58(v57 + 6 * v53, enum case for Calendar.Component.weekday(_:), v50);
    v58(v57 + 7 * v53, enum case for Calendar.Component.weekOfMonth(_:), v50);
    v58(v57 + 8 * v53, enum case for Calendar.Component.weekOfYear(_:), v50);
    sub_2D80(v56);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v59 = v73;
    v60 = v70;
    v42 = v66;
    sub_14CA0();

    isa = sub_14BD0().super.isa;
    v67(v59, v64);
    [v48 setDateTime:isa];

    v71(v48);
    (v68)(v60, v69);
  }

  return (*(v74 + 8))(v42, v75);
}

id ShowClockIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ShowClockIntentHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowClockIntentHandler();
  return objc_msgSendSuper2(&v2, "init");
}

id ShowClockIntentHandler.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ShowClockIntentHandler();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_2CE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2D20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1DE4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_2D80(uint64_t a1)
{
  v2 = sub_14CE0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1DE4(&qword_20B18, &qword_15E88);
    v9 = sub_15640();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_3B94(&qword_20B20, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_15570();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_3B94(&qword_20B28, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_15580();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_309C(void *a1, uint64_t a2)
{
  v72 = a2;
  v3 = sub_1DE4(&qword_20AC8, &unk_15E40);
  __chkstk_darwin(v3 - 8);
  v67 = v64 - v4;
  v5 = sub_1DE4(&qword_20AD0, &qword_16080);
  __chkstk_darwin(v5 - 8);
  v66 = v64 - v6;
  v7 = sub_1DE4(&qword_20AD8, &qword_15E50);
  __chkstk_darwin(v7 - 8);
  v9 = v64 - v8;
  v10 = sub_14C20();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v73 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v64 - v14;
  v16 = sub_1DE4(&qword_20AE0, &qword_15E58);
  __chkstk_darwin(v16 - 8);
  v18 = v64 - v17;
  v19 = sub_14C40();
  v70 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v69 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v71 = v64 - v22;
  v23 = sub_14D00();
  v24 = *(v23 - 8);
  v74 = v23;
  v75 = v24;
  __chkstk_darwin(v23);
  v26 = v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_209F0 != -1)
  {
    swift_once();
  }

  v27 = sub_15540();
  v68 = sub_2CE8(v27, qword_20AB0);
  v28 = sub_15530();
  v29 = sub_155F0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v65 = v9;
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "ShowClockIntentHandler.handle() is called", v30, 2u);
    v9 = v65;
  }

  sub_14CD0();
  v31 = [a1 offset];
  if (v31)
  {
    v32 = v73;
    v33 = v31;
    sub_14BE0();

    v34 = *(v11 + 32);
    v34(v9, v32, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v34(v15, v9, v10);
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    (*(v75 + 56))(v66, 1, 1, v74);
    v35 = sub_14D10();
    (*(*(v35 - 8) + 56))(v67, 1, 1, v35);
    sub_14C10();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_2D20(v9, &qword_20AD8, &qword_15E50);
    }
  }

  v36 = v69;
  sub_15380();
  sub_14CC0();
  v37 = v70;
  v38 = *(v70 + 8);
  v38(v36, v19);
  v41 = *(v11 + 8);
  v40 = v11 + 8;
  v39 = v41;
  v41(v15, v10);
  if ((*(v37 + 48))(v18, 1, v19) == 1)
  {
    sub_2D20(v18, &qword_20AE0, &qword_15E58);
    v42 = sub_15530();
    v43 = sub_155E0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "Failed to calucate the date.", v44, 2u);
    }

    v45 = [objc_allocWithZone(type metadata accessor for ShowClockIntentResponse()) init];
    v46 = OBJC_IVAR___ShowClockIntentResponse_code;
    swift_beginAccess();
    *&v45[v46] = 5;
    [v45 setUserActivity:0];
    (*(v72 + 16))(v72, v45);

    v47 = v26;
  }

  else
  {
    (*(v37 + 32))(v71, v18, v19);
    v48 = [objc_allocWithZone(type metadata accessor for ShowClockIntentResponse()) init];
    v49 = OBJC_IVAR___ShowClockIntentResponse_code;
    swift_beginAccess();
    v69 = v48;
    *&v48[v49] = 4;
    [v48 setUserActivity:0];
    sub_1DE4(&qword_20AE8, &unk_15E60);
    v70 = v19;
    v50 = v73;
    v68 = v39;
    v51 = sub_14CE0();
    v52 = *(v51 - 8);
    v65 = v26;
    v53 = v52;
    v54 = *(v52 + 72);
    v55 = *(v52 + 80);
    v66 = v10;
    v56 = (v55 + 32) & ~v55;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_15E30;
    v67 = v38;
    v58 = *(v53 + 104);
    v58(v57 + v56, enum case for Calendar.Component.year(_:), v51);
    v58(v57 + v56 + v54, enum case for Calendar.Component.month(_:), v51);
    v64[1] = v40;
    v58(v57 + v56 + 2 * v54, enum case for Calendar.Component.day(_:), v51);
    v58(v57 + v56 + 3 * v54, enum case for Calendar.Component.hour(_:), v51);
    v58(v57 + v56 + 4 * v54, enum case for Calendar.Component.minute(_:), v51);
    v58(v57 + v56 + 5 * v54, enum case for Calendar.Component.second(_:), v51);
    v58(v57 + v56 + 6 * v54, enum case for Calendar.Component.weekday(_:), v51);
    v58(v57 + v56 + 7 * v54, enum case for Calendar.Component.weekOfMonth(_:), v51);
    v58(v57 + v56 + 8 * v54, enum case for Calendar.Component.weekOfYear(_:), v51);
    sub_2D80(v57);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v59 = v71;
    v60 = v65;
    sub_14CA0();

    isa = sub_14BD0().super.isa;
    v68(v50, v66);
    v62 = v69;
    [v69 setDateTime:isa];

    (*(v72 + 16))(v72, v62);
    (v67)(v59, v70);
    v47 = v60;
  }

  return (*(v75 + 8))(v47, v74);
}

uint64_t sub_3B94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_14CE0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_3BD8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_3C3C()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_20B90);
  sub_2CE8(v0, qword_20B90);
  return sub_15450();
}

uint64_t sub_3C88(uint64_t a1)
{
  if (qword_209F8 != -1)
  {
    swift_once();
  }

  v2 = sub_15540();
  sub_2CE8(v2, qword_20B90);
  v3 = sub_15530();
  v4 = sub_155F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "ClockFlowPlugin: called findFlowForX()", v5, 2u);
  }

  if (_s15ClockFlowPlugin0aB7FactoryV04makeB4From5parse07SiriKitB003AnyB0CSgAF5ParseO_tF_0(a1))
  {
    sub_14E60();
  }

  else
  {
    v7 = sub_15530();
    v8 = sub_155E0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "ClockFlowPlugin unable to handle input parse", v9, 2u);
    }

    v10 = sub_15500();
    v12[3] = v10;
    v12[4] = &protocol witness table for ABCReport;
    v11 = sub_41C0(v12);
    (*(*(v10 - 8) + 104))(v11, enum case for ABCReport.clockParseRejection(_:), v10);
    sub_15490();
    sub_4224(v12);
    return sub_14E50();
  }
}

void sub_3EE4(uint64_t *a1@<X8>)
{
  type metadata accessor for ClockFlowPlugin();
  v2 = swift_allocObject();
  sub_152F0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_152E0();

  *a1 = v2;
}

uint64_t sub_3FF0(uint64_t a1)
{
  result = _s15ClockFlowPlugin0aB7FactoryV04makeB4From5parse07SiriKitB003AnyB0CSgAF5ParseO_tF_0(a1);
  if (!result)
  {
    if (qword_209F8 != -1)
    {
      swift_once();
    }

    v2 = sub_15540();
    sub_2CE8(v2, qword_20B90);
    v3 = sub_15530();
    v4 = sub_155E0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "ClockFlowPlugin unable to handle input parse", v5, 2u);
    }

    v6 = sub_15500();
    v9[3] = v6;
    v9[4] = &protocol witness table for ABCReport;
    v7 = sub_41C0(v9);
    (*(*(v6 - 8) + 104))(v7, enum case for ABCReport.clockParseRejection(_:), v6);
    sub_15490();
    sub_4224(v9);
    sub_154F0();
    swift_allocObject();
    v9[0] = sub_154E0();
    sub_4270(&qword_20C58, 255, &type metadata accessor for NoOpFlow, &protocol conformance descriptor for NoOpFlow);
    v8 = sub_14E40();

    return v8;
  }

  return result;
}

uint64_t *sub_41C0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_4224(void *a1)
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

uint64_t sub_4270(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

__n128 sub_42B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_42CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_4314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_436C()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_20C60);
  sub_2CE8(v0, qword_20C60);
  return sub_15450();
}

uint64_t sub_43B8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_15030();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  sub_15370();
  v3[24] = swift_task_alloc();
  v5 = sub_14F80();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = sub_14F00();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v7 = sub_153A0();
  v3[31] = v7;
  v3[32] = *(v7 - 8);
  v3[33] = swift_task_alloc();
  v8 = sub_15440();
  v3[34] = v8;
  v3[35] = *(v8 - 8);
  v3[36] = swift_task_alloc();
  v9 = sub_15540();
  v3[37] = v9;
  v3[38] = *(v9 - 8);
  v3[39] = swift_task_alloc();
  v10 = sub_153E0();
  v3[40] = v10;
  v3[41] = *(v10 - 8);
  v3[42] = swift_task_alloc();
  v11 = sub_153F0();
  v3[43] = v11;
  v3[44] = *(v11 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v12 = sub_14CE0();
  v3[47] = v12;
  v3[48] = *(v12 - 8);
  v3[49] = swift_task_alloc();
  sub_1DE4(&qword_20AC8, &unk_15E40);
  v3[50] = swift_task_alloc();
  sub_1DE4(&qword_20AD0, &qword_16080);
  v3[51] = swift_task_alloc();
  v13 = sub_14C20();
  v3[52] = v13;
  v3[53] = *(v13 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v14 = sub_14D00();
  v3[57] = v14;
  v3[58] = *(v14 - 8);
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  sub_1DE4(&qword_20AE0, &qword_15E58);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v15 = sub_14C40();
  v3[68] = v15;
  v3[69] = *(v15 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = sub_1DE4(&qword_20AD8, &qword_15E50);
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();

  return _swift_task_switch(sub_4A28, 0, 0);
}

uint64_t sub_4A28()
{
  v145 = v0;
  if (qword_20A00 != -1)
  {
    swift_once();
  }

  v1 = sub_2CE8(v0[37], qword_20C60);
  v0[77] = v1;
  v141 = v1;
  v2 = sub_15530();
  v3 = sub_155F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ShowClock.HandleIntentStrategy.makeIntentHandledResponse() called.", v4, 2u);
  }

  sub_1DE4(&qword_20C88, &unk_16088);
  v134 = sub_15010();
  v0[78] = v134;
  v5 = sub_14FF0();
  v0[79] = v5;
  v6 = sub_15530();
  v7 = sub_155F0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v144[0] = v9;
    *v8 = 136315138;
    v10 = [v5 dateTime];
    if (v10)
    {
      v11 = v10;
      sub_14BE0();

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    (*(v0[53] + 56))(v0[76], v12, 1, v0[52]);
    v13 = sub_155B0();
    v15 = sub_12BB4(v13, v14, v144);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_0, v6, v7, "DateTime: %s", v8, 0xCu);
    sub_4224(v9);
  }

  sub_15380();
  sub_14CD0();
  v127 = v5;
  v16 = [v5 dateTime];
  v17 = v0[75];
  if (v16)
  {
    v19 = v0[55];
    v18 = v0[56];
    v21 = v0[52];
    v20 = v0[53];
    v22 = v16;
    sub_14BE0();

    v23 = *(v20 + 32);
    v23(v17, v19, v21);
    (*(v20 + 56))(v17, 0, 1, v21);
    v23(v18, v17, v21);
  }

  else
  {
    v24 = v0[57];
    v25 = v0[58];
    v27 = v0[52];
    v26 = v0[53];
    v29 = v0[50];
    v28 = v0[51];
    (*(v26 + 56))(v0[75], 1, 1, v27);
    (*(v25 + 56))(v28, 1, 1, v24);
    v30 = sub_14D10();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    sub_14C10();
    if ((*(v26 + 48))(v17, 1, v27) != 1)
    {
      sub_2D20(v0[75], &qword_20AD8, &qword_15E50);
    }
  }

  v142 = v0[69];
  v139 = v0[68];
  v31 = v0[67];
  v32 = v0[61];
  v34 = v0[57];
  v33 = v0[58];
  v35 = v0[56];
  v37 = v0[52];
  v36 = v0[53];
  v38 = v0[48];
  v135 = v0[49];
  v137 = v0[66];
  sub_14CB0();
  v133 = *(v36 + 8);
  v133(v35, v37);
  v138 = *(v33 + 8);
  v138(v32, v34);
  sub_14CD0();
  v131 = enum case for Calendar.Component.weekOfYear(_:);
  v130 = *(v38 + 104);
  v130(v135);
  sub_93F4(v31, v137);
  v39 = *(v142 + 48);
  v0[80] = v39;
  v0[81] = (v142 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v40 = v39(v137, 1, v139);
  v140 = v39;
  if (v40 == 1)
  {
    v41 = v0[68];
    v42 = v0[66];
    (*(v0[69] + 16))(v0[72], v0[73], v41);
    if (v39(v42, 1, v41) != 1)
    {
      sub_2D20(v0[66], &qword_20AE0, &qword_15E58);
    }
  }

  else
  {
    (*(v0[69] + 32))(v0[72], v0[66], v0[68]);
  }

  v43 = v0[72];
  v44 = v0[69];
  v45 = v0[68];
  v128 = v0[64];
  v129 = v0[67];
  v46 = v0[60];
  v47 = v0[57];
  v48 = v0[48];
  v49 = v0[49];
  v50 = v0[47];
  v126 = sub_14CF0();
  v51 = *(v44 + 8);
  v0[82] = v51;
  v0[83] = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v136 = v51;
  v51(v43, v45);
  v52 = *(v48 + 8);
  v48 += 8;
  v52(v49, v50);
  v138(v46, v47);
  sub_14CD0();
  sub_1DE4(&qword_20AE8, &unk_15E60);
  v53 = *(v48 + 64);
  v54 = (*(v48 + 72) + 32) & ~*(v48 + 72);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_15F30;
  v56 = v55 + v54;
  (v130)(v56, enum case for Calendar.Component.calendar(_:), v50);
  (v130)(v56 + v53, enum case for Calendar.Component.yearForWeekOfYear(_:), v50);
  (v130)(v56 + 2 * v53, v131, v50);
  sub_2D80(v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_93F4(v129, v128);
  if (v140(v128, 1, v45) == 1)
  {
    v57 = v0[68];
    v58 = v0[64];
    (*(v0[69] + 16))(v0[71], v0[73], v57);
    if (v140(v58, 1, v57) != 1)
    {
      sub_2D20(v0[64], &qword_20AE0, &qword_15E58);
    }
  }

  else
  {
    (*(v0[69] + 32))(v0[71], v0[64], v0[68]);
  }

  v59 = v0[71];
  v60 = v0[68];
  v132 = v0[67];
  v61 = v0[63];
  v62 = v0[59];
  v63 = v0[57];
  v64 = v0[54];
  v65 = v0[52];
  sub_14CA0();

  v136(v59, v60);
  v138(v62, v63);
  sub_14C00();
  v133(v64, v65);
  sub_15270();
  swift_allocObject();
  sub_15260();
  sub_93F4(v132, v61);
  if (v140(v61, 1, v60) == 1)
  {
    sub_2D20(v0[63], &qword_20AE0, &qword_15E58);
  }

  else
  {
    v66 = v0[68];
    v67 = v0[63];
    sub_14C30();
    v136(v67, v66);
  }

  sub_15250();

  v68 = sub_15240();
  v0[84] = v68;

  v69 = sub_15530();
  v70 = sub_155F0();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_0, v69, v70, "Hitting RF path for ShowClock flow.", v71, 2u);
  }

  v73 = v0[41];
  v72 = v0[42];
  v75 = v0[39];
  v74 = v0[40];
  v76 = v0[37];
  v77 = v0[38];

  v78 = enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:);
  v79 = *(v73 + 104);
  v0[85] = v79;
  v0[86] = (v73 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v79(v72, v78, v74);
  v80 = *(v77 + 16);
  v0[87] = v80;
  v0[88] = (v77 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v80(v75, v141, v76);
  mach_absolute_time();
  sub_15400();
  v81 = [v134 clockRequestType];
  if (!v81)
  {
    goto LABEL_31;
  }

  v82 = v81;
  v83 = sub_155A0();
  v85 = v84;

  v86 = sub_11198(v83, v85);
  if (v86 <= 1)
  {
    if (v86)
    {
LABEL_41:
      type metadata accessor for ShowClockCATPatternsExecutor(0);
      sub_15360();
      v0[106] = sub_152A0();
      v104 = "HandledResponse(rchRecord:)";
      sub_1DE4(&qword_20CA8, &qword_160A8);
      v105 = swift_allocObject();
      v0[107] = v105;
      *(v105 + 16) = xmmword_15F40;
      *(v105 + 32) = 1702125924;
      *(v105 + 40) = 0xE400000000000000;
      *(v105 + 72) = sub_15280();
      *(v105 + 48) = v68;
      v143 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      swift_retain_n();
      v106 = swift_task_alloc();
      v0[108] = v106;
      *v106 = v0;
      v107 = sub_7214;
LABEL_42:
      v106[1] = v107;

      return v143(0xD000000000000027, v104 | 0x8000000000000000, v105);
    }

    v98 = v0[35];
    v97 = v0[36];
    v99 = v0[34];
    sub_15430();
    v100 = sub_15410();
    (*(v98 + 8))(v97, v99);
    if (v100)
    {
      v101 = sub_15530();
      v102 = sub_155F0();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&dword_0, v101, v102, "showTime flow SMART", v103, 2u);
      }

      if (qword_20A08 != -1)
      {
        swift_once();
      }

      v104 = "HandledResponseShowDate";

      sub_1DE4(&qword_20CA8, &qword_160A8);
      v105 = swift_allocObject();
      v0[89] = v105;
      *(v105 + 16) = xmmword_15F40;
      *(v105 + 32) = 1701669236;
      *(v105 + 40) = 0xE400000000000000;
      *(v105 + 72) = sub_15280();
      *(v105 + 48) = v68;
      v143 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

      v106 = swift_task_alloc();
      v0[90] = v106;
      *v106 = v0;
      v107 = sub_5D54;
      goto LABEL_42;
    }

    v123 = v0[19];
    type metadata accessor for ShowClockCATPatternsExecutor(0);
    sub_15360();
    v0[98] = sub_152A0();
    v124 = swift_task_alloc();
    v0[99] = v124;
    *(v124 + 16) = v68;
    *(v124 + 24) = v123;
    v125 = swift_task_alloc();
    v0[100] = v125;
    *v125 = v0;
    v125[1] = sub_6D84;

    return sub_9E0C(sub_951C, v124);
  }

  else
  {
    if (v86 != 2)
    {
      if (v86 != 3)
      {
LABEL_31:
        v87 = v134;
        v88 = sub_15530();
        v89 = sub_155E0();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v144[0] = v91;
          *v90 = 136315138;
          v92 = [v87 clockRequestType];
          if (v92)
          {
            v93 = v92;
            v94 = sub_155A0();
            v96 = v95;
          }

          else
          {
            v94 = 0;
            v96 = 0;
          }

          v0[16] = v94;
          v0[17] = v96;
          sub_1DE4(&qword_20CA0, &qword_160A0);
          v113 = sub_155B0();
          v115 = sub_12BB4(v113, v114, v144);

          *(v90 + 4) = v115;
          _os_log_impl(&dword_0, v88, v89, "ShowClock.HandleIntentStrategy fail to parse clockRequestType from %s", v90, 0xCu);
          sub_4224(v91);
        }

        v116 = v0[73];
        v117 = v0[68];
        v118 = v0[67];
        v119 = v0[46];
        v120 = v0[43];
        v121 = v0[44];
        sub_1DE4(&qword_20C90, &qword_16098);
        sub_9464();
        swift_allocError();
        swift_willThrow();

        (*(v121 + 8))(v119, v120);
        sub_2D20(v118, &qword_20AE0, &qword_15E58);
        v136(v116, v117);
        sub_2D20(v0[65], &qword_20AE0, &qword_15E58);

        v122 = v0[1];

        return v122();
      }

      goto LABEL_41;
    }

    v109 = v0[65];
    v110 = v0[20];
    type metadata accessor for ShowClockCATPatternsExecutor(0);
    sub_15360();
    v0[102] = sub_152A0();
    v111 = swift_task_alloc();
    v0[103] = v111;
    v111[2] = v68;
    v111[3] = v126;
    v111[4] = v110;
    v111[5] = v109;
    v112 = swift_task_alloc();
    v0[104] = v112;
    *v112 = v0;
    v112[1] = sub_6FCC;

    return sub_9AB0(sub_9510, v111);
  }
}

uint64_t sub_5D54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 728) = a1;
  *(v3 + 736) = v1;

  if (v1)
  {
    v4 = sub_62B8;
  }

  else
  {

    v4 = sub_5E80;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_5E80()
{
  v1 = v0[80];
  v2 = v0[68];
  v3 = v0[62];
  sub_93F4(v0[67], v3);
  if (v1(v3, 1, v2) == 1)
  {
    sub_2D20(v0[62], &qword_20AE0, &qword_15E58);
    v4 = sub_15530();
    v5 = sub_155E0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "Can NOT retrieve Date for showTime response.", v6, 2u);
    }

    v7 = v0[91];
    v22 = v0[82];
    v8 = v0[79];
    v9 = v0[78];
    v20 = v0[68];
    v21 = v0[73];
    v10 = v0[67];
    v11 = v0[46];
    v12 = v0[43];
    v13 = v0[44];

    sub_1DE4(&qword_20C90, &qword_16098);
    sub_9464();
    swift_allocError();
    swift_willThrow();

    (*(v13 + 8))(v11, v12);
    sub_2D20(v10, &qword_20AE0, &qword_15E58);
    v22(v21, v20);
    sub_2D20(v0[65], &qword_20AE0, &qword_15E58);

    v14 = v0[1];

    return v14();
  }

  else
  {
    (*(v0[69] + 32))(v0[70], v0[62], v0[68]);
    v16 = swift_task_alloc();
    v0[93] = v16;
    *v16 = v0;
    v16[1] = sub_6564;
    v17 = v0[84];
    v18 = v0[70];
    v19 = v0[33];

    return sub_BAA0(v19, v18, v17);
  }
}

uint64_t sub_62B8()
{
  v11 = v0[82];
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[73];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[46];
  v7 = v0[43];
  v8 = v0[44];

  (*(v8 + 8))(v6, v7);
  sub_2D20(v5, &qword_20AE0, &qword_15E58);
  v11(v3, v4);
  sub_2D20(v0[65], &qword_20AE0, &qword_15E58);

  v9 = v0[1];

  return v9();
}

uint64_t sub_6564()
{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = sub_7B1C;
  }

  else
  {
    v2 = sub_6678;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6678()
{
  v18 = v0[87];
  v16 = v0[85];
  v17 = v0[77];
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[37];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[31];
  sub_14EF0();
  sub_14F70();
  v8 = sub_153B0();
  v0[5] = v8;
  v0[6] = sub_9524();
  v9 = sub_41C0(v0 + 2);
  (*(v5 + 16))(v9, v6, v7);
  (*(*(v8 - 8) + 104))(v9, enum case for SiriClockSnippetModels.timeView(_:), v8);
  v16(v1, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v3);
  v18(v2, v17, v4);
  mach_absolute_time();
  sub_15400();
  v10 = swift_task_alloc();
  v0[95] = v10;
  *v10 = v0;
  v10[1] = sub_686C;
  v11 = v0[45];
  v12 = v0[30];
  v13 = v0[27];
  v14 = v0[18];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v14, v12, v13, v0 + 2, v11, 0, 0, 0);
}

uint64_t sub_686C()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 352);
  v4 = *(*v0 + 344);
  v12 = *(*v0 + 240);
  v5 = *(*v0 + 232);
  v6 = *(*v0 + 224);
  v7 = *(*v0 + 216);
  v8 = *(*v0 + 208);
  v9 = *(*v0 + 200);

  v10 = *(v3 + 8);
  *(v1 + 768) = v10;
  *(v1 + 776) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v4);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v12, v6);
  sub_2D20(v1 + 16, &qword_20CB8, qword_160B0);

  return _swift_task_switch(sub_6AB0, 0, 0);
}

uint64_t sub_6AB0()
{
  v14 = *(v0 + 768);
  v1 = *(v0 + 656);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v15 = *(v0 + 584);
  v10 = *(v0 + 560);
  v4 = *(v0 + 544);
  v12 = *(v0 + 368);
  v13 = *(v0 + 536);
  v11 = *(v0 + 344);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v7 = *(v0 + 248);

  (*(v5 + 8))(v6, v7);
  v1(v10, v4);
  v14(v12, v11);
  sub_2D20(v13, &qword_20AE0, &qword_15E58);
  v1(v15, v4);
  sub_2D20(*(v0 + 520), &qword_20AE0, &qword_15E58);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_6D84(uint64_t a1)
{
  v3 = *v2;
  v3[7] = v2;
  v3[8] = a1;
  v3[9] = v1;
  v3[101] = v1;

  if (v1)
  {
    v4 = sub_7DD4;
  }

  else
  {
    v4 = sub_6EDC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6EDC()
{
  v1 = v0[8];
  v0[110] = v1;
  v1;
  sub_14EF0();
  sub_15020();
  v2 = swift_task_alloc();
  v0[111] = v2;
  *v2 = v0;
  v2[1] = sub_7700;
  v3 = v0[46];
  v4 = v0[23];
  v5 = v0[18];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v5, v4, v3);
}

uint64_t sub_6FCC(uint64_t a1)
{
  v3 = *v2;
  v3[10] = v2;
  v3[11] = a1;
  v3[12] = v1;
  v3[105] = v1;

  if (v1)
  {
    v4 = sub_8070;
  }

  else
  {
    v4 = sub_7124;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_7124()
{
  v1 = v0[11];
  v0[110] = v1;
  v1;
  sub_14EF0();
  sub_15020();
  v2 = swift_task_alloc();
  v0[111] = v2;
  *v2 = v0;
  v2[1] = sub_7700;
  v3 = v0[46];
  v4 = v0[23];
  v5 = v0[18];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v5, v4, v3);
}

uint64_t sub_7214(uint64_t a1)
{
  v3 = *v2;
  v3[13] = v2;
  v3[14] = a1;
  v3[15] = v1;
  v3[109] = v1;

  if (v1)
  {
    v4 = sub_7454;
  }

  else
  {
    v4 = sub_7350;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_7350()
{

  v1 = v0[14];
  v0[110] = v1;
  v1;
  sub_14EF0();
  sub_15020();
  v2 = swift_task_alloc();
  v0[111] = v2;
  *v2 = v0;
  v2[1] = sub_7700;
  v3 = v0[46];
  v4 = v0[23];
  v5 = v0[18];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v5, v4, v3);
}

uint64_t sub_7454()
{
  v11 = v0[82];
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[73];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[46];
  v7 = v0[43];
  v8 = v0[44];

  (*(v8 + 8))(v6, v7);
  sub_2D20(v5, &qword_20AE0, &qword_15E58);
  v11(v3, v4);
  sub_2D20(v0[65], &qword_20AE0, &qword_15E58);

  v9 = v0[1];

  return v9();
}

uint64_t sub_7700()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = v2[110];
  (*(v2[22] + 8))(v2[23], v2[21]);

  if (v0)
  {
    v4 = sub_830C;
  }

  else
  {
    v4 = sub_7880;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_7880()
{
  v11 = *(v0 + 656);
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 584);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 368);
  v7 = *(v0 + 344);
  v8 = *(v0 + 352);

  (*(v8 + 8))(v6, v7);
  sub_2D20(v5, &qword_20AE0, &qword_15E58);
  v11(v3, v4);
  sub_2D20(*(v0 + 520), &qword_20AE0, &qword_15E58);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_7B1C()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 560);
  v5 = *(v0 + 544);
  v11 = *(v0 + 536);
  v12 = *(v0 + 584);
  v10 = *(v0 + 368);
  v7 = *(v0 + 344);
  v6 = *(v0 + 352);

  v1(v4, v5);
  (*(v6 + 8))(v10, v7);
  sub_2D20(v11, &qword_20AE0, &qword_15E58);
  v1(v12, v5);
  sub_2D20(*(v0 + 520), &qword_20AE0, &qword_15E58);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_7DD4()
{
  v1 = v0[82];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[73];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[44];

  (*(v9 + 8))(v7, v8);
  sub_2D20(v6, &qword_20AE0, &qword_15E58);
  v1(v4, v5);
  sub_2D20(v0[65], &qword_20AE0, &qword_15E58);

  v10 = v0[1];

  return v10();
}

uint64_t sub_8070()
{
  v1 = v0[82];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[73];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[44];

  (*(v9 + 8))(v7, v8);
  sub_2D20(v6, &qword_20AE0, &qword_15E58);
  v1(v4, v5);
  sub_2D20(v0[65], &qword_20AE0, &qword_15E58);

  v10 = v0[1];

  return v10();
}

uint64_t sub_830C()
{
  v11 = *(v0 + 656);
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 584);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 368);
  v7 = *(v0 + 344);
  v8 = *(v0 + 352);

  (*(v8 + 8))(v6, v7);
  sub_2D20(v5, &qword_20AE0, &qword_15E58);
  v11(v3, v4);
  sub_2D20(*(v0 + 520), &qword_20AE0, &qword_15E58);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_85B4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_15480();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DE4(&qword_20CC0, &unk_16160);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for ShowClockIntentHandledResponseShowTimeParameters(0);
  v12 = *(v11 + 24);

  *(a1 + v12) = a2;
  sub_152D0();
  sub_1DE4(&qword_20C88, &unk_16088);
  sub_15000();
  v13 = sub_152C0();

  *a1 = v13;
  (*(v5 + 104))(v7, enum case for PunchOutApp.clock(_:), v4);
  sub_15460();
  (*(v5 + 8))(v7, v4);
  return sub_957C(v10, a1 + *(v11 + 20));
}

uint64_t sub_8784(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1DE4(&qword_20AE0, &qword_15E58);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;

  *a1 = a2;
  a1[2] = a3;
  *(a1 + 24) = 0;
  v12 = objc_allocWithZone(NSUserDefaults);
  v13 = sub_15590();
  v14 = [v12 initWithSuiteName:v13];

  if (v14)
  {
    v15 = sub_15590();
    v16 = [v14 BOOLForKey:v15];
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 25) = v16;
  sub_15270();
  swift_allocObject();
  sub_15260();
  sub_93F4(a5, v11);
  v17 = sub_14C40();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_2D20(v11, &qword_20AE0, &qword_15E58);
  }

  else
  {
    sub_14C30();
    (*(v18 + 8))(v11, v17);
  }

  sub_15250();

  v19 = sub_15240();

  *(a1 + 1) = v19;
  return result;
}

uint64_t sub_89F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_95EC;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_8ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_95EC;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_8B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_95EC;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_8C44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_8CEC;

  return sub_43B8(a1, a2);
}

uint64_t sub_8CEC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_8E20, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_8E20()
{
  v0[3] = v0[5];
  sub_1DE4(&qword_20C80, &unk_16070);
  sub_154A0();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_8EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_95EC;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_8FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_95EC;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_9074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_9138;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_9138()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_922C(uint64_t a1, void *a2)
{
  v4 = sub_14EC0();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  sub_14EE0();
  v7 = objc_allocWithZone(type metadata accessor for ShowClockIntentHandler());

  [v7 init];
  type metadata accessor for ShowClockIntent();
  v8 = a2;
  sub_14EB0();
  v9 = sub_14ED0();
  (*(v5 + 8))(v6, v4);

  v10 = *(v2 + 8);

  return v10(v9);
}

unint64_t sub_939C()
{
  result = qword_20C78;
  if (!qword_20C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20C78);
  }

  return result;
}

uint64_t sub_93F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DE4(&qword_20AE0, &qword_15E58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_9464()
{
  result = qword_20C98;
  if (!qword_20C98)
  {
    sub_94C8(&qword_20C90, &qword_16098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20C98);
  }

  return result;
}

uint64_t sub_94C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_9524()
{
  result = qword_20CB0;
  if (!qword_20CB0)
  {
    sub_153B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20CB0);
  }

  return result;
}

uint64_t sub_957C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DE4(&qword_20CC0, &unk_16160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_95F0()
{
  v0 = sub_15370();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for ShowClockCATsSimple(0);
  sub_15360();
  result = sub_15340();
  qword_21228 = result;
  return result;
}

uint64_t sub_96DC(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1DE4(&qword_20CA8, &qword_160A8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_160D0;
  *(v8 + 32) = 0x44746E6572727563;
  *(v8 + 40) = 0xEB00000000657461;
  if (a1)
  {
    v9 = sub_15280();
    v10 = a1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
  }

  *(v8 + 48) = v10;
  *(v8 + 72) = v9;
  strcpy((v8 + 80), "weekStartDate");
  *(v8 + 94) = -4864;
  if (a2)
  {
    v11 = sub_15280();
    v12 = a2;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v12;
  *(v8 + 120) = v11;
  *(v8 + 128) = 0x626D754E6B656577;
  *(v8 + 136) = 0xEA00000000007265;
  if (a4)
  {
    a3 = 0;
    v13 = 0;
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
  }

  else
  {
    v13 = &type metadata for Double;
  }

  *(v8 + 144) = a3;
  *(v8 + 168) = v13;
  *(v8 + 176) = 0xD000000000000011;
  *(v8 + 184) = 0x8000000000016900;
  if (HIBYTE(a4) == 2)
  {
    v14 = 0;
    *(v8 + 192) = 0;
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
  }

  else
  {
    *(v8 + 192) = HIBYTE(a4) & 1;
    v14 = &type metadata for Bool;
  }

  *(v8 + 216) = v14;

  return v8;
}

uint64_t sub_987C()
{
  v1 = sub_1DE4(&qword_20CC0, &unk_16160);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  sub_1DE4(&qword_20CA8, &qword_160A8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_15F30;
  *(v4 + 32) = 7368801;
  *(v4 + 40) = 0xE300000000000000;
  v5 = *v0;
  if (*v0)
  {
    v6 = sub_152D0();
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 72) = v6;
  *(v4 + 80) = 0x7463416B636F6C63;
  *(v4 + 88) = 0xEB000000006E6F69;
  v8 = type metadata accessor for ShowClockIntentHandledResponseShowTimeParameters(0);
  sub_A4AC(v0 + *(v8 + 20), v3, &qword_20CC0, &unk_16160);
  v9 = sub_15310();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {

    sub_2D20(v3, &qword_20CC0, &unk_16160);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v9;
    v11 = sub_41C0((v4 + 96));
    (*(v10 + 32))(v11, v3, v9);
  }

  *(v4 + 128) = 1701669236;
  *(v4 + 136) = 0xE400000000000000;
  v12 = *(v0 + *(v8 + 24));
  if (v12)
  {
    v13 = sub_15280();
  }

  else
  {
    v13 = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  *(v4 + 144) = v12;
  *(v4 + 168) = v13;

  return v4;
}

uint64_t sub_9AB0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return _swift_task_switch(sub_9AD4, 0, 0);
}

uint64_t sub_9AD4()
{
  v1 = *(v0 + 48);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = 513;
  v1(v0 + 16);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  v5 = sub_96DC(v2, v3, v4, *(v0 + 40) | (*(v0 + 41) << 8));
  *(v0 + 88) = v5;
  v8 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_9BE4;

  return v8(0xD000000000000027, 0x80000000000168D0, v5);
}

uint64_t sub_9BE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_9DA0;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_9D30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_9D30()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_9DA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9E0C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for ShowClockIntentHandledResponseShowTimeParameters(0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_9EA4, 0, 0);
}

uint64_t sub_9EA4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  *v1 = 0;
  v4 = *(v2 + 20);
  v5 = sub_15310();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[*(v2 + 24)] = 0;
  v3(v1);
  v6 = sub_987C();
  v0[7] = v6;
  v9 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_9FE8;

  return v9(0xD000000000000027, 0x8000000000016840, v6);
}

uint64_t sub_9FE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_A1A8;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_A134;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_A134()
{
  sub_A450(v0[6]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_A1A8()
{
  sub_A450(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_15370();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DE4(&qword_20AA8, &unk_15E20);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_A4AC(a1, v11, &qword_20AA8, &unk_15E20);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_15290();
  (*(v6 + 8))(a2, v5);
  sub_2D20(a1, &qword_20AA8, &unk_15E20);
  return v12;
}

uint64_t sub_A3C0()
{
  sub_152B0();

  return swift_deallocClassInstance();
}

uint64_t sub_A418(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A450(uint64_t a1)
{
  v2 = type metadata accessor for ShowClockIntentHandledResponseShowTimeParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A4AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1DE4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_A528(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1DE4(&qword_20CC0, &unk_16160);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_A604(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1DE4(&qword_20CC0, &unk_16160);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_A6B4(uint64_t a1)
{
  sub_A7A4(319, &qword_20D80, &type metadata accessor for SirikitApp);
  if (v1 <= 0x3F)
  {
    sub_A7A4(319, &qword_20D88, &type metadata accessor for SpeakableString);
    if (v2 <= 0x3F)
    {
      sub_A7A4(319, &unk_20D90, &type metadata accessor for DialogCalendar);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_A7A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_15630();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_A818()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_20DC8);
  sub_2CE8(v0, qword_20DC8);
  return sub_15450();
}

uint64_t sub_A864@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  if (qword_20A10 != -1)
  {
    swift_once();
  }

  v5 = sub_15540();
  sub_2CE8(v5, qword_20DC8);
  v6 = sub_15530();
  v7 = sub_155F0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "ClockIntents.FlowStrategy.actionForInput() called.", v8, 2u);
  }

  return sub_CB64(a1, x8_0);
}

uint64_t sub_A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  *v6 = v3;
  v6[1] = sub_AA2C;

  return sub_B220(a1, v7, v8);
}

uint64_t sub_AA2C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_AB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_95EC;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_95EC;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_ACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_95EC;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_AD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_95EC;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_AE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_9138;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_95EC;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_B010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = *(a3 + 16);
  *v7 = v3;
  v7[1] = sub_B0D0;

  return sub_B6F8(a1, a2, v8);
}

uint64_t sub_B0D0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_B220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_B244, 0, 0);
}

uint64_t sub_B244()
{
  if (qword_20A10 != -1)
  {
    swift_once();
  }

  v1 = sub_15540();
  v0[5] = sub_2CE8(v1, qword_20DC8);
  v2 = sub_15530();
  v3 = sub_155F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ClockIntents.FlowStrategy.makeIntentFromParse() called.", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_B3AC;
  v6 = v0[2];

  return sub_11DB0(v6);
}

uint64_t sub_B3AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_B4E0, 0, 0);
  }
}

uint64_t sub_B4E0(uint64_t a1)
{
  v15 = v1;
  v2 = v1[7];
  if (v2)
  {
    if (swift_dynamicCastUnknownClass())
    {
      v3 = v1[1];

      return v3();
    }
  }

  v5 = sub_15530();
  v6 = sub_155E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_15710();
    v11 = sub_12BB4(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Intent is nil, or cannot cast converted intent to IntentType %s", v7, 0xCu);
    sub_4224(v8);
  }

  type metadata accessor for ClockIntents.FlowError(0, v1[3], v1[4], v12);
  swift_getWitnessTable();
  swift_allocError();
  sub_154A0();
  swift_willThrow();
  v13 = v1[1];

  return v13();
}

uint64_t sub_B6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_14EC0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_B7BC, 0, 0);
}

uint64_t sub_B7BC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  sub_14EE0();
  v5 = objc_allocWithZone(type metadata accessor for ShowClockIntentHandler());

  [v5 init];
  v6 = v4;
  sub_14EB0();
  v7 = sub_14ED0();
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_B8F0()
{
  v0 = sub_153D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for SiriTimeAppBundleId.clockApp(_:), v0);
  v4 = sub_153C0();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_21240 = v4;
  *algn_21248 = v6;
  return result;
}

uint64_t sub_B9F0()
{
  if (qword_20A18 != -1)
  {
    swift_once();
  }

  sub_15520();
  swift_allocObject();

  result = sub_15510();
  qword_21250 = result;
  return result;
}

uint64_t sub_BAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  sub_1DE4(&qword_20AA8, &unk_15E20);
  v3[11] = swift_task_alloc();
  v4 = sub_15480();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_14C90();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  sub_1DE4(&qword_20CC0, &unk_16160);
  v3[18] = swift_task_alloc();
  v6 = sub_15310();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = sub_14C40();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v8 = sub_14C70();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_BD44, 0, 0);
}

uint64_t sub_BD44()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[9];
  sub_14C60();
  v0[6] = sub_14C50();
  v0[7] = v8;
  v0[28] = v8;
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = sub_BE54;

  return sub_C364();
}

uint64_t sub_BE54(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[30] = v2;

  if (v2)
  {
    (*(v4[23] + 8))(v4[24], v4[22]);

    v5 = sub_C1D4;
  }

  else
  {
    v5 = sub_BF94;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_BF94()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_15230();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_C8E0(v0[18]);
  }

  else
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    (*(v5 + 32))(v4, v0[18], v6);
    sub_15300();
    (*(v5 + 8))(v4, v6);
  }

  if (qword_20A28 != -1)
  {
    swift_once();
  }

  v7 = v0[17];
  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  v13 = sub_2CE8(v9, qword_20E60);
  (*(v8 + 16))(v7, v13, v9);
  (*(v11 + 104))(v10, enum case for PunchOutApp.clock(_:), v12);
  sub_15470();
  (*(v11 + 8))(v10, v12);
  sub_15390();

  v14 = v0[1];

  return v14();
}

uint64_t sub_C1D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_C28C()
{
  v0 = sub_14C90();
  sub_3BD8(v0, qword_20E60);
  sub_2CE8(v0, qword_20E60);
  return sub_14C80();
}

uint64_t sub_C2D8()
{
  v0 = sub_15370();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for ShowClockCATs_Async(0);
  sub_15360();
  result = sub_152A0();
  qword_20E78 = result;
  return result;
}

uint64_t sub_C364()
{
  v1 = sub_14F60();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_14FA0();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_14FC0();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_C4D8, 0, 0);
}

uint64_t sub_C4D8()
{
  if (qword_20A30 != -1)
  {
    swift_once();
  }

  v4 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_C5DC;
  v2 = *(v0 + 56);

  return v4(v2, 0xD000000000000020, 0x8000000000016980, &_swiftEmptyArrayStorage);
}

uint64_t sub_C5DC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_C864;
  }

  else
  {
    v2 = sub_C6F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_C6F0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_14F90();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    v9 = v0[3];
    v8 = v0[4];
    v10 = v0[2];
    (*(v6 + 16))(v5, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    sub_14FB0();
    (*(v6 + 8))(v5, v7);
    v11 = sub_14F50();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
  }

  else
  {

    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = v0[1];

  return v14(v11, v13);
}

uint64_t sub_C864()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_C8E0(uint64_t a1)
{
  v2 = sub_1DE4(&qword_20CC0, &unk_16160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ShowClockCATs_Async(uint64_t a1)
{
  result = qword_20E80;
  if (!qword_20E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_15370();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DE4(&qword_20AA8, &unk_15E20);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_1E2C(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_15290();
  (*(v6 + 8))(a2, v5);
  sub_1E9C(a1);
  return v12;
}

uint64_t sub_CB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_15050();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_15060();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  sub_15040();
  v14 = sub_CF70(v13);
  v32 = *(v8 + 8);
  v32(v13, v7);
  if ((v14 & 1) == 0)
  {
    return sub_14F20();
  }

  v30 = a2;
  sub_15040();
  v15 = (*(v8 + 88))(v11, v7);
  if (v15 == enum case for Parse.NLv4IntentOnly(_:) || v15 == enum case for Parse.uso(_:))
  {
    v32(v11, v7);
    return sub_14F10();
  }

  else
  {
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v18 = sub_15540();
    sub_2CE8(v18, qword_20ED0);
    v19 = v31;
    (*(v31 + 16))(v6, a1, v4);
    v20 = sub_15530();
    v21 = sub_155E0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v28 = v22;
      v29 = swift_slowAlloc();
      v33 = v29;
      *v22 = 136315138;
      sub_15040();
      v23 = sub_155B0();
      v25 = v24;
      (*(v19 + 8))(v6, v4);
      v26 = sub_12BB4(v23, v25, &v33);

      v27 = v28;
      *(v28 + 1) = v26;
      _os_log_impl(&dword_0, v20, v21, "Received unexpected NL parse: %s", v27, 0xCu);
      sub_4224(v29);
    }

    else
    {

      (*(v19 + 8))(v6, v4);
    }

    sub_14F20();
    return (v32)(v11, v7);
  }
}

uint64_t sub_CF24()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_20ED0);
  sub_2CE8(v0, qword_20ED0);
  return sub_15450();
}

uint64_t sub_CF70(uint64_t a1)
{
  v2 = sub_150A0();
  v49 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_15080();
  v51 = *(v5 - 1);
  v52 = v5;
  __chkstk_darwin(v5);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_15060();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v48 - v13;
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v17 = *(v8 + 16);
  v17(&v48 - v15, a1, v7);
  v18 = (*(v8 + 88))(v16, v7);
  if (v18 == enum case for Parse.NLv3IntentOnly(_:))
  {
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v19 = sub_15540();
    sub_2CE8(v19, qword_20ED0);
    v20 = sub_15530();
    v21 = sub_155E0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "On-Device Clock received an NLv3 parse – this is unsupported", v22, 2u);
    }

    (*(v8 + 8))(v16, v7);
  }

  else if (v18 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v8 + 96))(v16, v7);
    swift_getObjectType();
    v25 = sub_15600();
    if (v25)
    {
      v23 = sub_D6E4(v25);
      swift_unknownObjectRelease();

      return v23 & 1;
    }

    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v40 = sub_15540();
    sub_2CE8(v40, qword_20ED0);
    v41 = sub_15530();
    v42 = sub_155E0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "ClockFlowUtils.makeIntentFromParse USO task is empty", v43, 2u);
    }

    swift_unknownObjectRelease();
  }

  else if (v18 == enum case for Parse.uso(_:))
  {
    (*(v8 + 96))(v16, v7);
    v27 = v50;
    v26 = v51;
    v28 = v52;
    (*(v51 + 4))(v50, v16, v52);
    sub_15070();
    v29 = sub_15090();
    (*(v49 + 8))(v4, v2);
    if (v29)
    {
      v23 = sub_D6E4(v29);

      (*(v26 + 1))(v27, v28);
      return v23 & 1;
    }

    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v44 = sub_15540();
    sub_2CE8(v44, qword_20ED0);
    v45 = sub_15530();
    v46 = sub_155E0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "ClockFlowUtils.makeIntentFromParse USO task is empty", v47, 2u);
    }

    (*(v26 + 1))(v27, v28);
  }

  else
  {
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v30 = sub_15540();
    sub_2CE8(v30, qword_20ED0);
    v17(v14, a1, v7);
    v31 = sub_15530();
    v32 = sub_155E0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v51 = v33;
      v52 = swift_slowAlloc();
      v53 = v52;
      *v33 = 136315138;
      v17(v11, v14, v7);
      v34 = sub_155B0();
      v36 = v35;
      v37 = *(v8 + 8);
      v37(v14, v7);
      v38 = sub_12BB4(v34, v36, &v53);

      v39 = v51;
      *(v51 + 1) = v38;
      _os_log_impl(&dword_0, v31, v32, "Received invalid timer parse: %s", v39, 0xCu);
      sub_4224(v52);
    }

    else
    {

      v37 = *(v8 + 8);
      v37(v14, v7);
    }

    v37(v16, v7);
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t sub_D6E4(uint64_t a1)
{
  v151 = sub_15100();
  v153 = *(v151 - 8);
  __chkstk_darwin(v151);
  v143 = &v140[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v145 = sub_1DE4(&qword_20EE8, &qword_16360);
  __chkstk_darwin(v145);
  v149 = &v140[-v2];
  v3 = sub_1DE4(&qword_20EF0, &qword_16368);
  __chkstk_darwin(v3 - 8);
  v147 = &v140[-v4];
  v5 = sub_1DE4(&qword_20EF8, &qword_16370);
  v6 = __chkstk_darwin(v5 - 8);
  v148 = &v140[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v156 = &v140[-v9];
  v10 = __chkstk_darwin(v8);
  v150 = &v140[-v11];
  __chkstk_darwin(v10);
  v146 = &v140[-v12];
  v13 = sub_15160();
  v14 = *(v13 - 8);
  v154 = v13;
  v155 = v14;
  __chkstk_darwin(v13);
  v144 = &v140[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1DE4(&qword_20F00, &qword_16378);
  v17 = __chkstk_darwin(v16);
  v152 = &v140[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v140[-v19];
  v21 = sub_1DE4(&qword_20F08, &qword_16380);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v140[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin(v22);
  v27 = &v140[-v26];
  v28 = __chkstk_darwin(v25);
  v30 = &v140[-v29];
  v31 = __chkstk_darwin(v28);
  v33 = &v140[-v32];
  v34 = __chkstk_darwin(v31);
  v36 = &v140[-v35];
  __chkstk_darwin(v34);
  v38 = &v140[-v37];
  v39 = sub_1DE4(&qword_20AD8, &qword_15E50);
  __chkstk_darwin(v39 - 8);
  v41 = &v140[-v40];
  sub_15130();
  if (!v160)
  {
    sub_2D20(&v159, &qword_20F10, &qword_16388);
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v44 = sub_15540();
    sub_2CE8(v44, qword_20ED0);
    v45 = sub_15530();
    v46 = sub_155F0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "Task is invalid, returning isValidClockTask = false", v47, 2u);
    }

    return 0;
  }

  sub_10EF0(&v159, v161);
  sub_10F00(v161, &v159);
  sub_151E0();
  if (swift_dynamicCast())
  {
    v142 = v157[0];
    v42 = sub_10F5C();
    if (v42 > 1)
    {
      if (v42 != 2)
      {
        if (v42 == 3)
        {
LABEL_6:
          sub_4224(v161);

          return 1;
        }

        if (qword_20A38 != -1)
        {
          swift_once();
        }

        v70 = sub_15540();
        sub_2CE8(v70, qword_20ED0);
        sub_10F00(v161, &v159);
        v49 = sub_15530();
        v71 = sub_155E0();
        if (os_log_type_enabled(v49, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v158 = v73;
          *v72 = 136315138;
          sub_10F00(&v159, v157);
          v74 = sub_155B0();
          v76 = v75;
          sub_4224(&v159);
          v77 = sub_12BB4(v74, v76, &v158);

          *(v72 + 4) = v77;
          v78 = "Receiving unsupported clock request type: %s";
LABEL_40:
          _os_log_impl(&dword_0, v49, v71, v78, v72, 0xCu);
          sub_4224(v73);

LABEL_41:

          goto LABEL_124;
        }

LABEL_42:

LABEL_43:

        sub_4224(&v159);
        goto LABEL_124;
      }

      sub_15220();
      if (!v159)
      {
        goto LABEL_62;
      }

      v63 = sub_15170();

      v64 = v156;
      if (!v63)
      {
LABEL_63:
        sub_15220();
        if (!v159 || (v101 = sub_15180(), , !v101))
        {
LABEL_114:
          sub_15220();

          if (v159)
          {
            v138 = sub_15140();

            if (v138)
            {

              if (qword_20A38 != -1)
              {
                swift_once();
              }

              v139 = sub_15540();
              sub_2CE8(v139, qword_20ED0);
              v49 = sub_15530();
              v127 = sub_155E0();
              if (os_log_type_enabled(v49, v127))
              {
LABEL_97:
                v128 = swift_slowAlloc();
                *v128 = 0;
                _os_log_impl(&dword_0, v49, v127, "ClockFlowPlugin does not support arbitrary date offset values", v128, 2u);

                goto LABEL_41;
              }

              goto LABEL_122;
            }
          }

          goto LABEL_120;
        }

        if (sub_150D0() && (v102 = sub_150B0(), , v102))
        {
          v103 = v147;
          sub_151C0();

          v104 = sub_151D0();
          v105 = (*(*(v104 - 8) + 48))(v103, 1, v104);
          v107 = v149;
          v106 = v150;
          v108 = v148;
          if (v105 != 1)
          {

            sub_2D20(v103, &qword_20EF0, &qword_16368);
            goto LABEL_114;
          }
        }

        else
        {
          v109 = sub_151D0();
          v103 = v147;
          (*(*(v109 - 8) + 56))(v147, 1, 1, v109);
          v107 = v149;
          v106 = v150;
          v108 = v148;
        }

        sub_2D20(v103, &qword_20EF0, &qword_16368);
        v155 = v101;
        sub_150F0();
        v110 = v153;
        v111 = v151;
        (*(v153 + 104))(v64, enum case for UsoEntity_common_Date.DefinedValues.common_Date_Today(_:), v151);
        (*(v110 + 56))(v64, 0, 1, v111);
        v112 = *(v145 + 48);
        sub_A4AC(v106, v107, &qword_20EF8, &qword_16370);
        sub_A4AC(v64, v107 + v112, &qword_20EF8, &qword_16370);
        v113 = *(v110 + 48);
        if (v113(v107, 1, v111) == 1)
        {
          sub_2D20(v64, &qword_20EF8, &qword_16370);
          sub_2D20(v106, &qword_20EF8, &qword_16370);
          if (v113(v107 + v112, 1, v111) == 1)
          {
            sub_2D20(v107, &qword_20EF8, &qword_16370);
LABEL_113:

            goto LABEL_114;
          }
        }

        else
        {
          sub_A4AC(v107, v108, &qword_20EF8, &qword_16370);
          if (v113(v107 + v112, 1, v111) != 1)
          {
            v134 = v153;
            v135 = v143;
            (*(v153 + 32))(v143, v107 + v112, v111);
            sub_11150(&qword_20F18, &type metadata accessor for UsoEntity_common_Date.DefinedValues, &protocol conformance descriptor for UsoEntity_common_Date.DefinedValues);
            v136 = sub_15580();
            v137 = *(v134 + 8);
            v137(v135, v111);
            sub_2D20(v156, &qword_20EF8, &qword_16370);
            sub_2D20(v150, &qword_20EF8, &qword_16370);
            v137(v108, v111);
            sub_2D20(v107, &qword_20EF8, &qword_16370);
            if (v136)
            {
              goto LABEL_113;
            }

LABEL_76:

            if (qword_20A38 != -1)
            {
              swift_once();
            }

            v114 = sub_15540();
            sub_2CE8(v114, qword_20ED0);
            v49 = sub_15530();
            v91 = sub_155E0();
            if (os_log_type_enabled(v49, v91))
            {
              v92 = swift_slowAlloc();
              *v92 = 0;
              v93 = "ClockFlowPlugin does not support arbitrary date references";
              goto LABEL_80;
            }

            goto LABEL_59;
          }

          sub_2D20(v156, &qword_20EF8, &qword_16370);
          sub_2D20(v106, &qword_20EF8, &qword_16370);
          (*(v153 + 8))(v108, v111);
        }

        sub_2D20(v107, &qword_20EE8, &qword_16360);
        goto LABEL_76;
      }

      v146 = v63;
      sub_15150();
      v65 = v154;
      v66 = v155;
      (*(v155 + 104))(v27, enum case for UsoEntity_common_DateTime.DefinedValues.common_DateTime_Now(_:), v154);
      (*(v66 + 56))(v27, 0, 1, v65);
      v67 = *(v16 + 48);
      v68 = v152;
      sub_A4AC(v30, v152, &qword_20F08, &qword_16380);
      sub_A4AC(v27, &v68[v67], &qword_20F08, &qword_16380);
      v69 = *(v66 + 48);
      if (v69(v68, 1, v65) == 1)
      {
        sub_2D20(v27, &qword_20F08, &qword_16380);
        v68 = v152;
        sub_2D20(v30, &qword_20F08, &qword_16380);
        if (v69(&v68[v67], 1, v65) == 1)
        {
          sub_2D20(v68, &qword_20F08, &qword_16380);
LABEL_61:

LABEL_62:
          v64 = v156;
          goto LABEL_63;
        }
      }

      else
      {
        sub_A4AC(v68, v24, &qword_20F08, &qword_16380);
        v89 = v68;
        if (v69(&v68[v67], 1, v65) != 1)
        {
          v97 = v155;
          v98 = v89 + v67;
          v99 = v144;
          (*(v155 + 32))(v144, v98, v65);
          sub_11150(&qword_20F20, &type metadata accessor for UsoEntity_common_DateTime.DefinedValues, &protocol conformance descriptor for UsoEntity_common_DateTime.DefinedValues);
          v141 = sub_15580();
          v100 = *(v97 + 8);
          v100(v99, v65);
          sub_2D20(v27, &qword_20F08, &qword_16380);
          sub_2D20(v30, &qword_20F08, &qword_16380);
          v100(v24, v65);
          sub_2D20(v89, &qword_20F08, &qword_16380);
          if (v141)
          {
            goto LABEL_61;
          }

LABEL_48:

          if (qword_20A38 != -1)
          {
            swift_once();
          }

          v90 = sub_15540();
          sub_2CE8(v90, qword_20ED0);
          v49 = sub_15530();
          v91 = sub_155E0();
          if (os_log_type_enabled(v49, v91))
          {
            v92 = swift_slowAlloc();
            *v92 = 0;
            v93 = "ClockFlowPlugin does not support offset anchors that are not 'now'";
LABEL_80:
            _os_log_impl(&dword_0, v49, v91, v93, v92, 2u);

            goto LABEL_123;
          }

LABEL_59:

LABEL_123:

          goto LABEL_124;
        }

        sub_2D20(v27, &qword_20F08, &qword_16380);
        sub_2D20(v30, &qword_20F08, &qword_16380);
        (*(v155 + 8))(v24, v65);
      }

      sub_2D20(v68, &qword_20F00, &qword_16378);
      goto LABEL_48;
    }

    if (!v42)
    {
      sub_F348(v41);
      v57 = sub_14C20();
      v58 = (*(*(v57 - 8) + 48))(v41, 1, v57);
      sub_2D20(v41, &qword_20AD8, &qword_15E50);
      if (v58 != 1)
      {
        if (qword_20A38 != -1)
        {
          swift_once();
        }

        v84 = sub_15540();
        sub_2CE8(v84, qword_20ED0);
        sub_10F00(v161, &v159);
        v49 = sub_15530();
        v71 = sub_155E0();
        if (os_log_type_enabled(v49, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v158 = v73;
          *v72 = 136315138;
          sub_10F00(&v159, v157);
          v85 = sub_155B0();
          v87 = v86;
          sub_4224(&v159);
          v88 = sub_12BB4(v85, v87, &v158);

          *(v72 + 4) = v88;
          v78 = "Receiving unsupported clock date offset: %s";
          goto LABEL_40;
        }

        goto LABEL_42;
      }

      if (qword_20A38 != -1)
      {
        swift_once();
      }

      v59 = sub_15540();
      sub_2CE8(v59, qword_20ED0);
      v60 = sub_15530();
      v61 = sub_155F0();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_0, v60, v61, "ClockFlowPlugin accepting clock input as valid current time input", v62, 2u);

LABEL_121:
        sub_4224(v161);
        return 1;
      }

LABEL_120:

      goto LABEL_121;
    }

    sub_15220();
    if (!v159)
    {
      goto LABEL_84;
    }

    v79 = sub_15170();

    if (!v79)
    {
      goto LABEL_84;
    }

    sub_15150();
    v80 = v154;
    v81 = v155;
    (*(v155 + 104))(v36, enum case for UsoEntity_common_DateTime.DefinedValues.common_DateTime_Now(_:), v154);
    (*(v81 + 56))(v36, 0, 1, v80);
    v82 = *(v16 + 48);
    sub_A4AC(v38, v20, &qword_20F08, &qword_16380);
    sub_A4AC(v36, &v20[v82], &qword_20F08, &qword_16380);
    v83 = *(v81 + 48);
    if (v83(v20, 1, v80) == 1)
    {
      sub_2D20(v36, &qword_20F08, &qword_16380);
      sub_2D20(v38, &qword_20F08, &qword_16380);
      if (v83(&v20[v82], 1, v80) == 1)
      {
        sub_2D20(v20, &qword_20F08, &qword_16380);
LABEL_83:

LABEL_84:
        sub_15220();
        if (v159)
        {
          v119 = sub_15180();

          if (v119)
          {
            v120 = v146;
            sub_150F0();
            if ((*(v153 + 48))(v120, 1, v151) == 1)
            {

              sub_2D20(v120, &qword_20EF8, &qword_16370);
              if (qword_20A38 != -1)
              {
                swift_once();
              }

              v121 = sub_15540();
              sub_2CE8(v121, qword_20ED0);
              v122 = sub_15530();
              v123 = sub_155E0();
              if (os_log_type_enabled(v122, v123))
              {
                v124 = swift_slowAlloc();
                *v124 = 0;
                _os_log_impl(&dword_0, v122, v123, "ClockFlowPlugin does not support arbitrary date references", v124, 2u);
              }

              else
              {
              }

              goto LABEL_123;
            }

            sub_2D20(v120, &qword_20EF8, &qword_16370);
          }
        }

        sub_15220();
        if (!v159 || (v125 = sub_15140(), , !v125))
        {
          sub_15210();

          if (!v159)
          {
            goto LABEL_6;
          }

          v129 = sub_15180();

          if (!v129)
          {
            goto LABEL_6;
          }

          if (sub_15120() || sub_150C0() || sub_15110())
          {

            if (qword_20A38 != -1)
            {
              swift_once();
            }

            v130 = sub_15540();
            sub_2CE8(v130, qword_20ED0);
            v131 = sub_15530();
            v132 = sub_155F0();
            if (os_log_type_enabled(v131, v132))
            {
              v133 = swift_slowAlloc();
              *v133 = 0;
              _os_log_impl(&dword_0, v131, v132, "ClockFlowPlugin accepting clock input as valid dayOfWeek/dayOfMonth/year input", v133, 2u);

              goto LABEL_120;
            }
          }

          goto LABEL_120;
        }

        if (qword_20A38 != -1)
        {
          swift_once();
        }

        v126 = sub_15540();
        sub_2CE8(v126, qword_20ED0);
        v49 = sub_15530();
        v127 = sub_155E0();
        if (os_log_type_enabled(v49, v127))
        {
          goto LABEL_97;
        }

LABEL_122:

        goto LABEL_123;
      }
    }

    else
    {
      sub_A4AC(v20, v33, &qword_20F08, &qword_16380);
      if (v83(&v20[v82], 1, v80) != 1)
      {
        v115 = v155;
        v116 = &v20[v82];
        v117 = v144;
        (*(v155 + 32))(v144, v116, v80);
        sub_11150(&qword_20F20, &type metadata accessor for UsoEntity_common_DateTime.DefinedValues, &protocol conformance descriptor for UsoEntity_common_DateTime.DefinedValues);
        LODWORD(v156) = sub_15580();
        v118 = *(v115 + 8);
        v118(v117, v80);
        sub_2D20(v36, &qword_20F08, &qword_16380);
        sub_2D20(v38, &qword_20F08, &qword_16380);
        v118(v33, v80);
        sub_2D20(v20, &qword_20F08, &qword_16380);
        if (v156)
        {
          goto LABEL_83;
        }

LABEL_55:

        if (qword_20A38 != -1)
        {
          swift_once();
        }

        v94 = sub_15540();
        sub_2CE8(v94, qword_20ED0);
        v49 = sub_15530();
        v95 = sub_155E0();
        if (!os_log_type_enabled(v49, v95))
        {
          goto LABEL_59;
        }

        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_0, v49, v95, "ClockFlowPlugin does not support offset anchors that are not 'now'", v96, 2u);

        goto LABEL_122;
      }

      sub_2D20(v36, &qword_20F08, &qword_16380);
      sub_2D20(v38, &qword_20F08, &qword_16380);
      (*(v155 + 8))(v33, v80);
    }

    sub_2D20(v20, &qword_20F00, &qword_16378);
    goto LABEL_55;
  }

  if (qword_20A38 != -1)
  {
    swift_once();
  }

  v48 = sub_15540();
  sub_2CE8(v48, qword_20ED0);
  sub_10F00(v161, &v159);
  v49 = sub_15530();
  v50 = sub_155E0();
  if (!os_log_type_enabled(v49, v50))
  {
    goto LABEL_43;
  }

  v51 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v158 = v52;
  *v51 = 136315138;
  sub_10F00(&v159, v157);
  v53 = sub_155B0();
  v55 = v54;
  sub_4224(&v159);
  v56 = sub_12BB4(v53, v55, &v158);

  *(v51 + 4) = v56;
  _os_log_impl(&dword_0, v49, v50, "Receiving unsupported uso task: %s", v51, 0xCu);
  sub_4224(v52);

LABEL_124:
  sub_4224(v161);
  return 0;
}

uint64_t sub_F348@<X0>(char *a1@<X8>)
{
  v98 = a1;
  v1 = sub_1DE4(&qword_20F28, &qword_16390);
  __chkstk_darwin(v1 - 8);
  v87 = &v82 - v2;
  v3 = sub_15200();
  v89 = *(v3 - 8);
  __chkstk_darwin(v3);
  v88 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_15160();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin(v5);
  v83 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DE4(&qword_20F00, &qword_16378);
  __chkstk_darwin(v7);
  v9 = &v82 - v8;
  v10 = sub_1DE4(&qword_20F08, &qword_16380);
  v11 = __chkstk_darwin(v10 - 8);
  v86 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v82 - v14;
  __chkstk_darwin(v13);
  v95 = &v82 - v16;
  v17 = sub_1DE4(&qword_20AC8, &unk_15E40);
  __chkstk_darwin(v17 - 8);
  v91 = &v82 - v18;
  v19 = sub_1DE4(&qword_20AD0, &qword_16080);
  __chkstk_darwin(v19 - 8);
  v90 = &v82 - v20;
  v21 = sub_14C20();
  v22 = *(v21 - 8);
  v96 = v21;
  v97 = v22;
  v23 = __chkstk_darwin(v21);
  v85 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v84 = &v82 - v26;
  __chkstk_darwin(v25);
  v92 = &v82 - v27;
  v28 = sub_1DE4(&qword_20EF8, &qword_16370);
  __chkstk_darwin(v28 - 8);
  v30 = &v82 - v29;
  v31 = sub_15100();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v82 - v36;
  sub_15220();
  v38 = v99;
  if (!v99)
  {
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v43 = sub_15540();
    sub_2CE8(v43, qword_20ED0);
    v44 = sub_15530();
    v45 = sub_155F0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v44, v45, "ClockFlowPlugin task contains no reference", v46, 2u);
    }

    return (*(v97 + 56))(v98, 1, 1, v96);
  }

  v82 = v3;
  if (!sub_15180())
  {
    v92 = v38;
    if (sub_15170())
    {
      v47 = v95;
      sub_15150();

      v49 = v93;
      v48 = v94;
    }

    else
    {
      v49 = v93;
      v48 = v94;
      v47 = v95;
      (*(v93 + 56))(v95, 1, 1, v94);
    }

    (*(v49 + 104))(v15, enum case for UsoEntity_common_DateTime.DefinedValues.common_DateTime_Now(_:), v48);
    (*(v49 + 56))(v15, 0, 1, v48);
    v51 = *(v7 + 48);
    sub_A4AC(v47, v9, &qword_20F08, &qword_16380);
    sub_A4AC(v15, &v9[v51], &qword_20F08, &qword_16380);
    v52 = *(v49 + 48);
    if (v52(v9, 1, v48) == 1)
    {
      sub_2D20(v15, &qword_20F08, &qword_16380);
      sub_2D20(v47, &qword_20F08, &qword_16380);
      if (v52(&v9[v51], 1, v48) == 1)
      {
        sub_2D20(v9, &qword_20F08, &qword_16380);
        v53 = v82;
        goto LABEL_30;
      }
    }

    else
    {
      v54 = v86;
      sub_A4AC(v9, v86, &qword_20F08, &qword_16380);
      if (v52(&v9[v51], 1, v48) != 1)
      {
        v55 = &v9[v51];
        v56 = v83;
        (*(v49 + 32))(v83, v55, v48);
        sub_11150(&qword_20F20, &type metadata accessor for UsoEntity_common_DateTime.DefinedValues, &protocol conformance descriptor for UsoEntity_common_DateTime.DefinedValues);
        v57 = sub_15580();
        v58 = *(v49 + 8);
        v58(v56, v48);
        sub_2D20(v15, &qword_20F08, &qword_16380);
        sub_2D20(v95, &qword_20F08, &qword_16380);
        v58(v54, v48);
        sub_2D20(v9, &qword_20F08, &qword_16380);
        v53 = v82;
        if (v57)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      }

      sub_2D20(v15, &qword_20F08, &qword_16380);
      sub_2D20(v95, &qword_20F08, &qword_16380);
      (*(v49 + 8))(v54, v48);
    }

    sub_2D20(v9, &qword_20F00, &qword_16378);
    v53 = v82;
LABEL_27:
    if (sub_15170())
    {

LABEL_39:
      if (qword_20A38 != -1)
      {
        swift_once();
      }

      v70 = sub_15540();
      sub_2CE8(v70, qword_20ED0);
      v71 = sub_15530();
      v72 = sub_155F0();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_0, v71, v72, "ClockFlowPlugin Could not find reference offset", v73, 2u);
      }

      goto LABEL_44;
    }

LABEL_30:
    if (sub_151A0())
    {
      v59 = v87;
      sub_151F0();

      v60 = v89;
      v61 = (*(v89 + 48))(v59, 1, v53);
      v62 = v88;
      if (v61 != 1)
      {
        (*(v60 + 32))(v88, v59, v53);
LABEL_36:
        if (sub_15140())
        {
          v63 = v85;
          sub_151B0();

          (*(v60 + 8))(v62, v53);
          v65 = v96;
          v64 = v97;
          v66 = *(v97 + 32);
          v67 = v84;
          v66(v84, v63, v96);
          v68 = v98;
          v66(v98, v67, v65);
          return (*(v64 + 56))(v68, 0, 1, v65);
        }

        (*(v60 + 8))(v62, v53);
        goto LABEL_39;
      }
    }

    else
    {
      v60 = v89;
      v59 = v87;
      (*(v89 + 56))(v87, 1, 1, v53);
      v62 = v88;
    }

    (*(v60 + 104))(v62, enum case for UsoEntity_common_OffsetDirection.DefinedValues.common_OffsetDirection_After(_:), v53);
    if ((*(v60 + 48))(v59, 1, v53) != 1)
    {
      sub_2D20(v59, &qword_20F28, &qword_16390);
    }

    goto LABEL_36;
  }

  sub_150F0();
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_2D20(v30, &qword_20EF8, &qword_16370);
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v39 = sub_15540();
    sub_2CE8(v39, qword_20ED0);
    v40 = sub_15530();
    v41 = sub_155E0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "ClockFlowPlugin does not yet support arbitrary absolute date references", v42, 2u);
    }

    goto LABEL_9;
  }

  (*(v32 + 32))(v37, v30, v31);
  (*(v32 + 16))(v35, v37, v31);
  v50 = (*(v32 + 88))(v35, v31);
  if (v50 == enum case for UsoEntity_common_Date.DefinedValues.common_Date_Tomorrow(_:) || v50 == enum case for UsoEntity_common_Date.DefinedValues.common_Date_DayBeforeYesterday(_:) || v50 == enum case for UsoEntity_common_Date.DefinedValues.common_Date_DayAfterTomorrow(_:))
  {
    goto LABEL_47;
  }

  if (v50 == enum case for UsoEntity_common_Date.DefinedValues.common_Date_Today(_:))
  {
    (*(v32 + 8))(v37, v31);
LABEL_9:

LABEL_44:

    return (*(v97 + 56))(v98, 1, 1, v96);
  }

  if (v50 == enum case for UsoEntity_common_Date.DefinedValues.common_Date_Yesterday(_:))
  {
LABEL_47:
    v74 = sub_14D00();
    (*(*(v74 - 8) + 56))(v90, 1, 1, v74);
    v75 = sub_14D10();
    (*(*(v75 - 8) + 56))(v91, 1, 1, v75);
    v76 = v92;
    sub_14C10();
    sub_14BF0();

    (*(v32 + 8))(v37, v31);
    v78 = v97;
    v77 = v98;
    v79 = v76;
    v80 = v96;
    (*(v97 + 32))(v98, v79, v96);
    return (*(v78 + 56))(v77, 0, 1, v80);
  }

  else
  {
    v81 = *(v32 + 8);
    v81(v37, v31);

    (*(v97 + 56))(v98, 1, 1, v96);
    return (v81)(v35, v31);
  }
}

uint64_t sub_105F8@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_1DE4(&qword_20AC8, &unk_15E40);
  __chkstk_darwin(v1 - 8);
  v3 = &v43 - v2;
  v4 = sub_1DE4(&qword_20AD0, &qword_16080);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_14C20();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DE4(&qword_20EF0, &qword_16368);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_151D0();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v43 - v18;
  sub_15220();
  if (!v48)
  {
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v34 = sub_15540();
    sub_2CE8(v34, qword_20ED0);
    v35 = sub_15530();
    v36 = sub_155F0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "ClockFlowPlugin task contains no reference", v37, 2u);
    }

    return (*(v45 + 56))(v47, 1, 1, v46);
  }

  v44 = v19;
  if (!sub_15180() || (v20 = sub_150D0(), , !v20) || (v21 = sub_150B0(), , !v21))
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_9;
  }

  sub_151C0();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_9:
    sub_2D20(v12, &qword_20EF0, &qword_16368);
    if (qword_20A38 != -1)
    {
      swift_once();
    }

    v30 = sub_15540();
    sub_2CE8(v30, qword_20ED0);
    v31 = sub_15530();
    v32 = sub_155F0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Could not find listPosition in ClockFlowPlugin task", v33, 2u);
    }

    goto LABEL_14;
  }

  v22 = v44;
  (*(v14 + 32))(v44, v12, v13);
  (*(v14 + 16))(v17, v22, v13);
  v23 = (*(v14 + 88))(v17, v13);
  if (v23 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Previous(_:))
  {
LABEL_7:
    v24 = sub_14D00();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    v25 = sub_14D10();
    (*(*(v25 - 8) + 56))(v3, 1, 1, v25);
    sub_14C10();
    sub_14BC0();

    (*(v14 + 8))(v22, v13);
    v27 = v45;
    v26 = v46;
    v28 = v47;
    (*(v45 + 32))(v47, v9, v46);
    return (*(v27 + 56))(v28, 0, 1, v26);
  }

  if (v23 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Current(_:))
  {
    (*(v14 + 8))(v22, v13);
LABEL_14:

    return (*(v45 + 56))(v47, 1, 1, v46);
  }

  if (v23 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Next(_:))
  {
    goto LABEL_7;
  }

  if (qword_20A38 != -1)
  {
    swift_once();
  }

  v38 = sub_15540();
  sub_2CE8(v38, qword_20ED0);
  v39 = sub_15530();
  v40 = sub_155E0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v39, v40, "ClockFlowPlugin does not yet support arbitrary absolute date references", v41, 2u);
    v22 = v44;
  }

  v42 = *(v14 + 8);
  v42(v22, v13);
  (*(v45 + 56))(v47, 1, 1, v46);
  return (v42)(v17, v13);
}

_OWORD *sub_10EF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10F00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10F5C()
{
  v0 = sub_15440();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15210();
  if (v13 && (v4 = sub_15180(), , v4) && (v5 = sub_150E0(), , v5))
  {

    return 3;
  }

  else
  {
    sub_15210();
    if (v13 && (v7 = sub_15190(), , v7))
    {

      return 0;
    }

    else
    {
      sub_15210();
      if (v13 && (v8 = sub_15180(), , v8) && (v9 = sub_150D0(), , v9) && (, sub_15430(), v10 = sub_15420(), (*(v1 + 8))(v3, v0), v10))
      {
        return 2;
      }

      else
      {
        sub_15210();
        if (v13 && (v11 = sub_15180(), , v11))
        {

          return 1;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_11150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_11198(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1CE68;
  v6._object = a2;
  v4 = sub_15670(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_111E4()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_20F30);
  sub_2CE8(v0, qword_20F30);
  return sub_15450();
}

id sub_11230(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DE4(&qword_20AD8, &qword_15E50);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v69 - v8;
  v10 = sub_14C20();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v69 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v69 - v19;
  __chkstk_darwin(v18);
  v22 = &v69 - v21;
  v23 = [objc_allocWithZone(v2) init];
  if (!a1)
  {
    goto LABEL_9;
  }

  sub_15130();
  if (!v82)
  {

    sub_2D20(&v81, &qword_20F10, &qword_16388);
LABEL_9:
    if (qword_20A40 != -1)
    {
      swift_once();
    }

    v25 = sub_15540();
    sub_2CE8(v25, qword_20F30);
    v26 = sub_15530();
    v27 = sub_155F0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Task is nil, returning empty ShowClockIntent", v28, 2u);
    }

    return 0;
  }

  sub_10EF0(&v81, v83);
  sub_10F00(v83, &v81);
  sub_151E0();
  if (swift_dynamicCast())
  {
    v76 = v11;
    v24 = v79[0];
    v77 = sub_10F5C();
    v75 = v17;
    v78 = v24;
    if (v77 <= 1u)
    {
      if (v77)
      {

LABEL_27:
        sub_F348(v9);
        v40 = v76;
        if ((*(v76 + 48))(v9, 1, v10) == 1)
        {
          sub_2D20(v9, &qword_20AD8, &qword_15E50);
        }

        else
        {
          (*(v40 + 32))(v22, v9, v10);
          if (qword_20A40 != -1)
          {
            swift_once();
          }

          v41 = sub_15540();
          sub_2CE8(v41, qword_20F30);
          (*(v40 + 16))(v20, v22, v10);
          v42 = sub_15530();
          LODWORD(v73) = sub_155F0();
          v43 = v40;
          if (os_log_type_enabled(v42, v73))
          {
            v44 = swift_slowAlloc();
            v70 = v44;
            v72 = swift_slowAlloc();
            *&v81 = v72;
            *v44 = 136315138;
            sub_125EC();
            v71 = v42;
            v45 = sub_15680();
            v47 = v46;
            v74 = *(v43 + 8);
            v74(v20, v10);
            v48 = sub_12BB4(v45, v47, &v81);

            v49 = v70;
            *(v70 + 1) = v48;
            v50 = v71;
            _os_log_impl(&dword_0, v71, v73, "Using date component offset: %s", v49, 0xCu);
            sub_4224(v72);
          }

          else
          {

            v74 = *(v40 + 8);
            v74(v20, v10);
          }

          isa = sub_14BD0().super.isa;
          [v23 setOffset:isa];

          v74(v22, v10);
        }

LABEL_35:
        if (v77 == 2)
        {
        }

        else
        {
          v52 = sub_15690();

          if ((v52 & 1) == 0)
          {
LABEL_46:
            v68 = sub_15590();

            [v23 setClockRequestType:v68];

            sub_4224(v83);
            return v23;
          }
        }

        sub_105F8(v7);
        v53 = v76;
        if ((*(v76 + 48))(v7, 1, v10) == 1)
        {
          sub_2D20(v7, &qword_20AD8, &qword_15E50);
        }

        else
        {
          v54 = v75;
          (*(v53 + 32))(v75, v7, v10);
          if (qword_20A40 != -1)
          {
            swift_once();
          }

          v55 = sub_15540();
          sub_2CE8(v55, qword_20F30);
          (*(v53 + 16))(v14, v54, v10);
          v56 = sub_15530();
          v57 = sub_155F0();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v73 = v58;
            v74 = swift_slowAlloc();
            *&v81 = v74;
            *v58 = 136315138;
            sub_125EC();
            v59 = sub_15680();
            v61 = v60;
            v62 = v14;
            v63 = *(v53 + 8);
            v63(v62, v10);
            v64 = sub_12BB4(v59, v61, &v81);
            v54 = v75;

            v65 = v73;
            *(v73 + 1) = v64;
            _os_log_impl(&dword_0, v56, v57, "Using date component offset: %s", v65, 0xCu);
            sub_4224(v74);
          }

          else
          {

            v66 = v14;
            v63 = *(v53 + 8);
            v63(v66, v10);
          }

          v67 = sub_14BD0().super.isa;
          [v23 setOffset:v67];

          v63(v54, v10);
        }

        goto LABEL_46;
      }

LABEL_23:
      v39 = sub_15690();

      if ((v39 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    if (v77 == 2 || v77 == 3)
    {
      goto LABEL_23;
    }

    sub_4224(v83);
  }

  else
  {
    if (qword_20A40 != -1)
    {
      swift_once();
    }

    v29 = sub_15540();
    sub_2CE8(v29, qword_20F30);
    sub_10F00(v83, &v81);
    v30 = sub_15530();
    v31 = sub_155E0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v80 = v33;
      *v32 = 136315138;
      sub_10F00(&v81, v79);
      v34 = sub_155B0();
      v36 = v35;
      sub_4224(&v81);
      v37 = sub_12BB4(v34, v36, &v80);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_0, v30, v31, "Receiving unsupported uso task: %s", v32, 0xCu);
      sub_4224(v33);
    }

    else
    {

      sub_4224(&v81);
    }

    sub_4224(v83);
  }

  return 0;
}

uint64_t sub_11DB0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_150A0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_15080();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_15060();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_11F40, 0, 0);
}

uint64_t sub_11F40()
{
  v57 = v0;
  if (qword_20A40 != -1)
  {
    swift_once();
  }

  v1 = sub_15540();
  sub_2CE8(v1, qword_20F30);
  v2 = sub_15530();
  v3 = sub_155F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "ClockFlowUtils.makeIntentFromParse() called.", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[2];

  v9 = *(v7 + 16);
  v9(v5, v8, v6);
  v10 = (*(v7 + 88))(v5, v6);
  if (v10 == enum case for Parse.NLv4IntentOnly(_:))
  {
    (*(v0[10] + 96))(v0[13], v0[9]);
    swift_getObjectType();
    v11 = sub_15600();
    if (v11)
    {
      v12 = v11;
      type metadata accessor for ShowClockIntent();
      v13 = sub_11230(v12);
      swift_unknownObjectRelease();
LABEL_11:

      v25 = v0[1];

      return v25(v13);
    }

    v40 = sub_15530();
    v41 = sub_155E0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "ClockFlowUtils.makeIntentFromParse USO task is empty", v42, 2u);
    }

    sub_1DE4(&qword_20C90, &qword_16098);
    sub_9464();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else if (v10 == enum case for Parse.uso(_:))
  {
    v14 = v0[13];
    v16 = v0[7];
    v15 = v0[8];
    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[3];
    v20 = v0[4];
    (*(v0[10] + 96))(v14, v0[9]);
    (*(v16 + 32))(v15, v14, v17);
    sub_15070();
    v21 = sub_15090();
    (*(v20 + 8))(v18, v19);
    if (v21)
    {
      v23 = v0[7];
      v22 = v0[8];
      v24 = v0[6];
      type metadata accessor for ShowClockIntent();
      v13 = sub_11230(v21);
      (*(v23 + 8))(v22, v24);
      goto LABEL_11;
    }

    v47 = sub_15530();
    v48 = sub_155E0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "ClockFlowUtils.makeIntentFromParse USO task is empty", v49, 2u);
    }

    v51 = v0[7];
    v50 = v0[8];
    v52 = v0[6];

    sub_1DE4(&qword_20C90, &qword_16098);
    sub_9464();
    swift_allocError();
    swift_willThrow();
    (*(v51 + 8))(v50, v52);
  }

  else
  {
    v9(v0[12], v0[2], v0[9]);
    v27 = sub_15530();
    v28 = sub_155E0();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[12];
    if (v29)
    {
      v55 = v28;
      v31 = v0[10];
      v32 = v0[11];
      v33 = v0[9];
      v34 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v56 = v54;
      *v34 = 136315138;
      v9(v32, v30, v33);
      v35 = sub_155B0();
      v37 = v36;
      v38 = *(v31 + 8);
      v38(v30, v33);
      v39 = sub_12BB4(v35, v37, &v56);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_0, v27, v55, "ClockFlowUtils.makeIntentFromParse Received unsupported parse: %s", v34, 0xCu);
      sub_4224(v54);
    }

    else
    {
      v43 = v0[9];
      v44 = v0[10];

      v38 = *(v44 + 8);
      v38(v30, v43);
    }

    v45 = v0[13];
    v46 = v0[9];
    sub_1DE4(&qword_20C90, &qword_16098);
    sub_9464();
    swift_allocError();
    swift_willThrow();
    v38(v45, v46);
  }

  v53 = v0[1];

  return v53();
}

unint64_t sub_125EC()
{
  result = qword_20F48[0];
  if (!qword_20F48[0])
  {
    sub_14C20();
    result = swift_getWitnessTable();
    atomic_store(result, qword_20F48);
  }

  return result;
}

uint64_t sub_12674(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_126C4(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

Swift::Int sub_1277C()
{
  sub_156E0();
  sub_156F0(0);
  return sub_15700();
}

Swift::Int sub_127E8(uint64_t a1)
{
  sub_156E0();
  sub_156F0(0);
  return sub_15700();
}

uint64_t sub_1283C()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_21050);
  sub_2CE8(v0, qword_21050);
  return sub_15450();
}

uint64_t sub_12888(void *a1)
{
  type metadata accessor for ShowClockIntent();
  type metadata accessor for ShowClockIntentResponse();
  sub_14E20();
  if (qword_20A20 != -1)
  {
    swift_once();
  }

  sub_14DF0();
  sub_1DE4(&qword_21068, &qword_16488);
  sub_14E10();
  if (qword_20A48 != -1)
  {
    swift_once();
  }

  v2 = sub_15540();
  sub_2CE8(v2, qword_21050);
  v3 = sub_15530();
  v4 = sub_155F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "AppResolution completion set.", v5, 2u);
  }

  sub_12A58(a1, v7);
  sub_12ABC();
  sub_14DE0();
  sub_14E00();
  sub_4224(a1);
  return sub_12B10(v7);
}

uint64_t sub_12A58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_12ABC()
{
  result = qword_21070;
  if (!qword_21070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21070);
  }

  return result;
}

uint64_t sub_12B68()
{
  v0 = sub_15540();
  sub_3BD8(v0, qword_21078);
  sub_2CE8(v0, qword_21078);
  return sub_15450();
}

unint64_t sub_12BB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_12C80(v11, 0, 0, 1, a1, a2);
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
    sub_10F00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4224(v11);
  return v7;
}

unint64_t sub_12C80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_12D8C(a5, a6);
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
    result = sub_15660();
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

char *sub_12D8C(uint64_t a1, unint64_t a2)
{
  v3 = sub_12DD8(a1, a2);
  sub_12F08(&off_1CE40);
  return v3;
}

char *sub_12DD8(uint64_t a1, unint64_t a2)
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

  v6 = sub_12FF4(v5, 0);
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

  result = sub_15660();
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
        v10 = sub_155C0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_12FF4(v10, 0);
        result = sub_15650();
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

uint64_t sub_12F08(uint64_t result)
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

  result = sub_13068(result, v11, 1, v3);
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

void *sub_12FF4(uint64_t a1, uint64_t a2)
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

  sub_1DE4(&qword_21130, &qword_164E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_13068(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DE4(&qword_21130, &qword_164E8);
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

uint64_t sub_1315C()
{
  v0 = sub_1DE4(&qword_21138, &unk_164F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19[-1] - v2;
  v4 = sub_1DE4(&qword_21068, &qword_16488);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19[-1] - v9;
  if (qword_20A50 != -1)
  {
    swift_once();
  }

  v11 = sub_15540();
  sub_2CE8(v11, qword_21078);
  v12 = sub_15530();
  v13 = sub_155F0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "ClockFlowFactory: making showClockFlow.", v14, 2u);
  }

  sub_154D0();
  sub_154C0();
  sub_154B0();

  sub_12888(v19);
  (*(v5 + 16))(v8, v10, v4);
  sub_1DE4(&qword_21140, &qword_16500);
  swift_allocObject();
  sub_14E30();

  sub_1DE4(&qword_21148, &qword_16508);
  sub_1391C(&qword_21150, &qword_21148, &qword_16508, &unk_162C0);
  sub_14F40();
  v15 = sub_14F30();
  (*(v1 + 8))(v3, v0);
  v19[0] = v15;
  sub_1DE4(&qword_21158, &unk_16510);
  sub_1391C(&qword_21160, &qword_21158, &unk_16510, &protocol conformance descriptor for AnyValueFlow<A>);
  v16 = sub_14E40();

  (*(v5 + 8))(v10, v4);
  return v16;
}

uint64_t _s15ClockFlowPlugin0aB7FactoryV04makeB4From5parse07SiriKitB003AnyB0CSgAF5ParseO_tF_0(uint64_t a1)
{
  v2 = sub_15060();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - v8;
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  if (qword_20A50 != -1)
  {
    swift_once();
  }

  v12 = sub_15540();
  v13 = sub_2CE8(v12, qword_21078);
  v37 = *(v3 + 16);
  v37(v11, a1, v2);
  v35 = v13;
  v14 = sub_15530();
  v15 = sub_155D0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = a1;
    v19 = v18;
    v38 = v18;
    *v17 = 136315138;
    v37(v9, v11, v2);
    v20 = sub_155B0();
    v33 = v6;
    v22 = v21;
    v23 = *(v36 + 8);
    v23(v11, v2);
    v24 = sub_12BB4(v20, v22, &v38);
    v6 = v33;

    *(v17 + 4) = v24;
    _os_log_impl(&dword_0, v14, v15, "Making flow from parse: %s", v17, 0xCu);
    sub_4224(v19);
    a1 = v34;

    v3 = v36;

    v25 = v23;
  }

  else
  {

    v25 = *(v3 + 8);
    v25(v11, v2);
  }

  v37(v6, a1, v2);
  v26 = (*(v3 + 88))(v6, v2);
  if (v26 == enum case for Parse.NLv4IntentOnly(_:) || v26 == enum case for Parse.uso(_:))
  {
    v25(v6, v2);
    if (sub_CF70(a1))
    {
      return sub_1315C();
    }
  }

  else
  {
    v29 = sub_15530();
    v30 = sub_155E0();
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v29, v30, "ClockFlowPlugin cannot make flow from the provided parse. Exiting.", v32, 2u);
    }

    v25(v6, v2);
  }

  return 0;
}

uint64_t sub_1391C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_94C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for TimeSuggestionsCATsSimple(uint64_t a1)
{
  result = qword_21168;
  if (!qword_21168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_139F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_15370();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DE4(&qword_20AA8, &unk_15E20);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_1E2C(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_15320();
  (*(v6 + 8))(a2, v5);
  sub_1E9C(a1);
  return v12;
}

uint64_t sub_13B78(uint64_t a1, uint64_t a2)
{
  v3 = sub_15370();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v6, a2, v3);
  v7 = sub_15330();
  (*(v4 + 8))(a2, v3);
  return v7;
}

char *ShowClockIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ShowClockIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id ShowClockIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShowClockIntent();
  return objc_msgSendSuper2(&v3, "init");
}

id ShowClockIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowClockIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ShowClockIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_15590();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ShowClockIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_15590();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ShowClockIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id ShowClockIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_15590();

  v8 = sub_15590();

  if (a5)
  {
    v9.super.isa = sub_15550().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id ShowClockIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_15590();

  v8 = sub_15590();

  if (a5)
  {
    v9.super.isa = sub_15550().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for ShowClockIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

Swift::Int sub_142F0()
{
  v1 = *v0;
  sub_156E0();
  sub_156F0(v1);
  return sub_15700();
}

Swift::Int sub_14364(uint64_t a1)
{
  v2 = *v1;
  sub_156E0();
  sub_156F0(v2);
  return sub_15700();
}

unint64_t sub_143A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_14A70(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ShowClockIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___ShowClockIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ShowClockIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ShowClockIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id ShowClockIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___ShowClockIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShowClockIntentResponse();
  return objc_msgSendSuper2(&v3, "init");
}

id ShowClockIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id ShowClockIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ShowClockIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowClockIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ShowClockIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id ShowClockIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___ShowClockIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowClockIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1481C(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___ShowClockIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ShowClockIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id ShowClockIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_15550().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id ShowClockIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ShowClockIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_15550().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ShowClockIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_14A38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_14A70(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_14AA8()
{
  result = qword_211C0;
  if (!qword_211C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_211C0);
  }

  return result;
}

uint64_t sub_14AFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ShowClockIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_14B54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ShowClockIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}