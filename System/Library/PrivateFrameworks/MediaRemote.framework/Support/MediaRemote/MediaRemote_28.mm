unint64_t sub_1003991B4()
{
  v1 = *(v0 + 16);
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = kMREventNearbyNotificationTypeLockScreen;
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v5;
  v6 = v3;
  v7 = [v1 hostInfo];
  v8 = [v7 routeType];

  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v8];
  v9 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_1005228F0, &unk_100450070);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_1003992DC(void *a1, uint64_t a2)
{
  swift_getObjectType();
  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100537508);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v8 = 136315650;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10002C9C8(v10, v11, &v30);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10002C9C8(0xD00000000000003BLL, 0x80000001004448F0, &v30);
    *(v8 + 22) = 2112;
    *(v8 + 24) = v5;
    *v9 = v5;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] %s - %@", v8, 0x20u);
    sub_1001E4048(v9);

    swift_arrayDestroy();
  }

  v14 = [v5 actionIdentifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    v21 = 0;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = ~v20 & 1;
  }

  v22 = [v5 notification];
  v23 = [v22 request];

  v24 = [v23 identifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  sub_100395A54(v21, v25, v27);

  v28 = *(*(a2 + 16) + 16);

  return v28();
}

uint64_t sub_1003997BC(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = type metadata accessor for NWInterface.InterfaceType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NWPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  NWPathMonitor.currentPath.getter();
  (*(v6 + 104))(v8, *a3, v5);
  v14 = NWPath.usesInterfaceType(_:)();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  return v14 & 1;
}

uint64_t sub_100399984(unsigned int *a1)
{
  v2 = type metadata accessor for NWInterface.InterfaceType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWPathMonitor.currentPath.getter();
  (*(v3 + 104))(v5, *a1, v2);
  v10 = NWPath.usesInterfaceType(_:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  return v10 & 1;
}

id sub_100399BBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t *sub_100399C08@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_100399C24(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 2)
  {
    return 0x74736163646F702ELL;
  }

  if (v2 == 1)
  {
    return 0x6C41636973756D2ELL;
  }

  if (!v2)
  {
    return 0xD000000000000010;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100399CC8(uint64_t a1)
{
  result = 0xD000000000000015;
  v3 = *v1;
  if (*v1 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return 0xD000000000000013;
      }

      goto LABEL_12;
    }
  }

  else if (v3 != 2)
  {
    if (v3 == 3 || v3 == 4)
    {
      return 0xD00000000000001CLL;
    }

LABEL_12:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

id sub_100399D90()
{
  result = [objc_allocWithZone(type metadata accessor for MediaWidgetUpdater()) init];
  qword_1005385C8 = result;
  return result;
}

id sub_100399F44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaWidgetUpdater();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100399FEC()
{
  result = qword_100528FD0;
  if (!qword_100528FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528FD0);
  }

  return result;
}

unint64_t sub_10039A044()
{
  result = qword_100528FD8;
  if (!qword_100528FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528FD8);
  }

  return result;
}

uint64_t sub_10039A0D0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v2[7] = swift_task_alloc();
  v2[8] = *(v3 + 80);
  v4 = type metadata accessor for Optional();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10039A1E4, v1, 0);
}

uint64_t sub_10039A1E4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = *(*v5 + 104);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5 + v6, v3);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    v8 = v0[6];
    (*(v0[10] + 8))(v0[11], v0[9]);
    v9 = *(*v8 + 112);
    v10 = *(v8 + v9);
    v0[12] = v10;
    if (v10)
    {

      v11 = swift_task_alloc();
      v0[13] = v11;
      *v11 = v0;
      v12 = sub_10039A524;
    }

    else
    {
      v15 = v0[7];
      v16 = v0[8];
      v17 = v0[6];
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
      type metadata accessor for LazyAsyncWrapper(255, v16, v19, v20);
      WitnessTable = swift_getWitnessTable();
      v22 = swift_allocObject();
      v22[2] = v17;
      v22[3] = WitnessTable;
      v22[4] = v17;
      swift_retain_n();
      v10 = sub_10039AFDC(0, 0, v15, &unk_10045BC18, v22, v16);
      v0[14] = v10;
      *(v8 + v9) = v10;

      v11 = swift_task_alloc();
      v0[15] = v11;
      *v11 = v0;
      v12 = sub_10039A6A8;
    }

    v11[1] = v12;
    v23 = v0[8];
    v24 = v0[5];

    return Task<>.value.getter(v24, v10, v23);
  }

  else
  {
    (*(v7 + 32))(v0[5], v0[11], v0[8]);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10039A524()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_10039A634, v1, 0);
}

uint64_t sub_10039A634()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10039A6A8()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_10039A7B8, v1, 0);
}

uint64_t sub_10039A7B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10039A82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v4[7] = *(*a4 + 80);
  v6 = type metadata accessor for Optional();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10039A908, a4, 0);
}

uint64_t sub_10039A908()
{
  v4 = (*(v0[6] + 112) + **(v0[6] + 112));
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_10039A9FC;
  v2 = v0[5];

  return v4(v2);
}

uint64_t sub_10039A9FC()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_10039AB0C, v1, 0);
}

uint64_t sub_10039AB0C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = *(v4 - 8);
  (*(v6 + 16))(v1, v0[5], v4);
  (*(v6 + 56))(v1, 0, 1, v4);
  v7 = *(*v5 + 104);
  swift_beginAccess();
  (*(v2 + 40))(v5 + v7, v1, v3);
  swift_endAccess();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10039AC68(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009F34;

  return sub_10039A82C(a1, v5, v6, v4);
}

uint64_t sub_10039AD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001D6648(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1001E29D0(v11);
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

      sub_1001BC5A8(&qword_100529008, &qword_10045BD98);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1001E29D0(a3);

      return v22;
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

  sub_1001E29D0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1001BC5A8(&qword_100529008, &qword_10045BD98);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10039AFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v26[-1] - v12;
  v27[0] = a4;
  v27[1] = a5;
  sub_1001D6648(a3, &v26[-1] - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1001E29D0(v13);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter();
      sub_10039CF68(v21 + 32, v27, a6, v26);

      v22 = v26[0];
      sub_1001E29D0(a3);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1001E29D0(a3);
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a4;
  v23[4] = a5;
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10039B24C()
{
  sub_10039CDF8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10039B294(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_10039B2E4(a1, a2);
  return v4;
}

char *sub_10039B2E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_defaultActor_initialize();
  (*(*(*(v5 + 80) - 8) + 56))(&v2[*(*v2 + 104)], 1, 1);
  *&v2[*(*v2 + 112)] = 0;
  *(v2 + 14) = a1;
  *(v2 + 15) = a2;
  return v2;
}

uint64_t sub_10039B398(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_10039B3E8(a1, a2);
  return v4;
}

char *sub_10039B3E8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_defaultActor_initialize();
  v6 = *(v5 + 80);
  (*(*(v6 - 8) + 56))(&v2[*(*v2 + 104)], 1, 1, v6);
  *&v2[*(*v2 + 112)] = 0;
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  *(v2 + 14) = &unk_10045BC28;
  *(v2 + 15) = v7;
  return v2;
}

uint64_t sub_10039B4CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100009F34;

  return v8(a1);
}

uint64_t sub_10039B5C4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009F34;

  return sub_10039B4CC(a1, v5, v6, v4);
}

double sub_10039B670()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  (*(*(v1 - 8) + 56))(&v8 - v4, 1, 1, v1);
  v6 = *(*v0 + 104);
  swift_beginAccess();
  (*(v3 + 40))(v0 + v6, v5, v2);
  swift_endAccess();
  *(v0 + *(*v0 + 112)) = 0;

  return result;
}

uint64_t sub_10039B7D4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v2[7] = swift_task_alloc();
  v4 = *(v3 + 80);
  v2[8] = v4;
  v5 = type metadata accessor for Optional();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10039B93C, v1, 0);
}

uint64_t sub_10039B93C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  v7 = *(*v6 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v1, v6 + v7, v3);
  if ((*(v2 + 48))(v1, 1, v5) == 1)
  {
    v8 = v0[6];
    (*(v0[10] + 8))(v0[11], v0[9]);
    v9 = *(*v8 + 112);
    v10 = *(v8 + v9);
    v0[14] = v10;
    if (v10)
    {

      v11 = swift_task_alloc();
      v0[15] = v11;
      v12 = sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      *v11 = v0;
      v13 = sub_10039BCD8;
    }

    else
    {
      v20 = v0[7];
      v21 = v0[8];
      v22 = v0[6];
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
      type metadata accessor for LazyThrowingAsyncWrapper(255, v21, v24, v25);
      WitnessTable = swift_getWitnessTable();
      v27 = swift_allocObject();
      v27[2] = v22;
      v27[3] = WitnessTable;
      v27[4] = v22;
      swift_retain_n();
      v10 = sub_10039CBB4(0, 0, v20, &unk_10045BC40, v27, v21);
      v0[16] = v10;
      *(v8 + v9) = v10;

      v11 = swift_task_alloc();
      v0[17] = v11;
      v12 = sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      *v11 = v0;
      v13 = sub_10039BEB8;
    }

    v11[1] = v13;
    v28 = v0[8];
    v29 = v0[5];

    return Task.value.getter(v29, v10, v28, v12, &protocol self-conformance witness table for Error);
  }

  else
  {
    v14 = v0[13];
    v15 = v0[8];
    v16 = v0[5];
    v17 = *(v0[12] + 32);
    v17(v14, v0[11], v15);
    v17(v16, v14, v15);
    (*(v0[12] + 56))(v0[5], 0, 1, v0[8]);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10039BCD8()
{
  v2 = *v1;

  v3 = *(v2 + 48);
  if (v0)
  {

    v4 = sub_10039C098;
  }

  else
  {
    v4 = sub_10039BE10;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10039BE10()
{

  (*(v0[12] + 56))(v0[5], 0, 1, v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10039BEB8()
{
  v2 = *v1;

  v3 = *(v2 + 48);
  if (v0)
  {

    v4 = sub_10039C140;
  }

  else
  {
    v4 = sub_10039BFF0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10039BFF0()
{

  (*(v0[12] + 56))(v0[5], 0, 1, v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10039C098()
{

  (*(v0[12] + 56))(v0[5], 1, 1, v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10039C140()
{

  (*(v0[12] + 56))(v0[5], 1, 1, v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10039C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v6 = *(*a4 + 80);
  v4[7] = v6;
  v7 = type metadata accessor for Optional();
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10039C318, a4, 0);
}

uint64_t sub_10039C318()
{
  v1 = v0[7];
  v2 = *(v0[6] + 112);
  v3 = swift_allocObject();
  v0[13] = v3;
  swift_weakInit();
  v4 = swift_allocObject();
  v0[14] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_10039C484;
  v6 = v0[12];

  return v8(v6, sub_10039D110, v4);
}

uint64_t sub_10039C484()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_10039C71C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_10039C5B4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10039C5B4()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  (*(v2 + 16))(v3, v1, v6);
  (*(v2 + 56))(v3, 0, 1, v6);
  v9 = *(*v8 + 104);
  swift_beginAccess();
  (*(v4 + 40))(v8 + v9, v3, v5);
  swift_endAccess();
  (*(v2 + 32))(v7, v1, v6);
  *(v8 + *(*v8 + 112)) = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_10039C71C()
{
  v1 = *(v0 + 48);

  *(v1 + *(*v1 + 112)) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10039C7E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10039C824(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009F30;

  return sub_10039C1E8(a1, v5, v6, v4);
}

double sub_10039C8C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  v8[5] = v7;
  sub_10039AD08(0, 0, v5, &unk_10045BD80, v8);

  return result;
}

uint64_t sub_10039CA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10039CA38, 0, 0);
}

uint64_t sub_10039CA38()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = (*Strong + 184) & 0xFFFFFFFFFFFFLL | 0x99B3000000000000;
    *(v0 + 64) = *(*Strong + 184);
    *(v0 + 72) = v2;

    return _swift_task_switch(sub_10039CB18, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_10039CB18()
{
  (*(v0 + 64))();

  return _swift_task_switch(sub_10039CB8C, 0, 0);
}

uint64_t sub_10039CBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_1001D6648(a3, &v24[-1] - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1001E29D0(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter();
      sub_10039D054(v20 + 32, v24);

      v21 = v24[0];
      sub_1001E29D0(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1001E29D0(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

char *sub_10039CDF8()
{

  v1 = *(*v0 + 104);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10039CEB4(uint64_t a1)
{
  result = type metadata accessor for Optional();
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

uint64_t sub_10039CF68@<X0>(uint64_t result@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    v10 = *a5;
    v9 = a5[1];
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = v10;
    v11[4] = v9;

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10039D054@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10039D118(uint64_t a1)
{
  v4 = *(v1 + 40);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009F30;

  return sub_10039CA18(a1, v5, v6, v4);
}

uint64_t sub_10039D1B8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10039D2AC;

  return v5(v2 + 32);
}

uint64_t sub_10039D2AC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10039D3C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009F30;

  return sub_10039D1B8(a1, v4);
}

uint64_t sub_10039D478(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009F30;

  return sub_1001BFD04(a1, v4);
}

uint64_t sub_10039D644()
{
  type metadata accessor for WatchRSECandidatePicker();
  sub_1001BC5A8(&qword_1005290F8, &unk_10045BF50);
  result = String.init<A>(describing:)();
  qword_1005385D0 = result;
  *algn_1005385D8 = v1;
  return result;
}

uint64_t sub_10039D694()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100537CC0);
  sub_100015AFC(v0, qword_100537CC0);
  if (qword_100537CB0 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

void sub_10039D750(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 outputDeviceUID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_10039D7B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 56);
    v6 = *(a1 + 64);
    v9 = *(a1 + 32);

    v10 = a1 - 8;
    v11 = 1;
LABEL_3:
    v12 = v10 + 40 * v11;
    while (1)
    {
      if (v3 == v11)
      {
        v17 = v5 & 1;
        goto LABEL_11;
      }

      if (v11 >= v3)
      {
        break;
      }

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_13;
      }

      v14 = *(v12 + 48);
      ++v11;
      v12 += 40;
      if (v4 < v14)
      {
        v5 = *(v12 + 16);
        v7 = *(v12 + 24);
        v15 = *(v12 + 32);
        v16 = *v12;

        v11 = v13;
        v9 = v16;
        v4 = v14;
        v6 = v15;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    v9 = 0;
    v17 = 0;
    v7 = 0;
    v6 = 0;
    v4 = 0.0;
LABEL_11:
    *a2 = v9;
    *(a2 + 8) = v4;
    *(a2 + 16) = v17;
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
  }
}

uint64_t sub_10039D9F8(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  sub_1003A01A8();
  v10 = static NSObject.== infix(_:_:)();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && ((v3 ^ v7) & 1) == 0)
  {
    if (v4 == v8 && v5 == v9)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_10039DAE0(double a1)
{
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 102;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10044EC70;
  *(v4 + 56) = &type metadata for Double;
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a1;
  v5 = String.init(format:_:)();

  return v5;
}

id sub_10039DC18(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WatchRSECandidatePicker();
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_10039DC50(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10039DC70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10039DC70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_1005290E8, &qword_10045BF38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_10039DD90(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10039F08C(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 2))
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = v13[32];
          v16 = *(v13 + 5);
          v17 = *(v13 + 6);
          v18 = *(v13 - 8);
          *(v13 + 1) = *(v13 - 24);
          *(v13 + 2) = v18;
          *(v13 + 6) = *(v13 + 1);
          *(v13 - 3) = v14;
          *(v13 - 2) = v11;
          *(v13 - 8) = v15;
          *v13 = v16;
          *(v13 + 1) = v17;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v20[0] = v7 + 4;
    v20[1] = v6;
    sub_10039DEF8(v20, v21, v22, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10039DEF8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10024C200(v8);
      v8 = result;
    }

    v93 = v8 + 2;
    v94 = v8[2];
    if (v94 >= 2)
    {
      while (*a3)
      {
        v95 = &v8[2 * v94];
        v96 = *v95;
        v97 = &v93[2 * v94];
        v98 = v97[1];
        sub_10039E4E4((*a3 + 40 * *v95), (*a3 + 40 * *v97), *a3 + 40 * v98, v102);
        if (v5)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_114;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_115;
        }

        *v95 = v96;
        v95[1] = v98;
        v99 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_116;
        }

        v94 = *v93 - 1;
        result = memmove(v97, v97 + 2, 16 * v99);
        *v93 = v94;
        if (v94 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v100 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 8);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 8);
      v13 = v9 + 2;
      v14 = (v11 + 88);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v10 < v12) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7 - 16;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v19);
            v23 = *(v31 + v19 - 32);
            v24 = (v31 + v18);
            v25 = *(v22 - 3);
            v26 = *(v22 - 16);
            v27 = *(v22 - 1);
            v28 = *v22;
            v29 = v24[1];
            v30 = *(v24 - 1);
            *(v22 - 2) = *(v24 - 3);
            *(v22 - 1) = v30;
            *v22 = v29;
            *(v24 - 3) = v23;
            *(v24 - 2) = v25;
            *(v24 - 8) = v26;
            *v24 = v27;
            v24[1] = v28;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10024A7E0(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v46 = v8[2];
    v45 = v8[3];
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_10024A7E0((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v47;
    v48 = v8 + 4;
    v49 = &v8[2 * v46 + 4];
    *v49 = v9;
    v49[1] = v7;
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_127;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = v8[4];
          v52 = v8[5];
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_57:
          if (v54)
          {
            goto LABEL_104;
          }

          v67 = &v8[2 * v47];
          v69 = *v67;
          v68 = v67[1];
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_106;
          }

          v73 = &v48[2 * v50];
          v75 = *v73;
          v74 = v73[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_111;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v47 < 2)
        {
          goto LABEL_112;
        }

        v77 = &v8[2 * v47];
        v79 = *v77;
        v78 = v77[1];
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_72:
        if (v72)
        {
          goto LABEL_108;
        }

        v80 = &v48[2 * v50];
        v82 = *v80;
        v81 = v80[1];
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_110;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = &v48[2 * v50 - 2];
        v89 = *v88;
        v90 = &v48[2 * v50];
        v91 = v90[1];
        sub_10039E4E4((*a3 + 40 * *v88), (*a3 + 40 * *v90), *a3 + 40 * v91, v102);
        if (v5)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_99;
        }

        if (v50 > v8[2])
        {
          goto LABEL_100;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = v8[2];
        if (v50 >= v92)
        {
          goto LABEL_101;
        }

        v47 = v92 - 1;
        result = memmove(&v48[2 * v50], v90 + 2, 16 * (v92 - 1 - v50));
        v8[2] = v92 - 1;
        if (v92 <= 2)
        {
          goto LABEL_3;
        }
      }

      v55 = &v48[2 * v47];
      v56 = *(v55 - 8);
      v57 = *(v55 - 7);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_102;
      }

      v60 = *(v55 - 6);
      v59 = *(v55 - 5);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_103;
      }

      v62 = &v8[2 * v47];
      v64 = *v62;
      v63 = v62[1];
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_105;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_107;
      }

      if (v66 >= v58)
      {
        v84 = &v48[2 * v50];
        v86 = *v84;
        v85 = v84[1];
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v100;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 40 * v7 - 40;
  v34 = v9 - v7;
LABEL_30:
  v35 = *(v32 + 40 * v7 + 8);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (v35 >= *(v37 + 8))
    {
LABEL_29:
      ++v7;
      v33 += 40;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v38 = *(v37 + 16);
    v40 = *(v37 + 32);
    v39 = *(v37 + 40);
    *(v37 + 40) = *v37;
    v41 = *(v37 + 56);
    v42 = *(v37 + 64);
    v43 = *(v37 + 72);
    *(v37 + 56) = v38;
    *(v37 + 72) = v40;
    *v37 = v39;
    *(v37 + 8) = v35;
    *(v37 + 16) = v41;
    *(v37 + 24) = v42;
    *(v37 + 32) = v43;
    v37 -= 40;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_10039E4E4(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 4) < *(v6 - 4))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t sub_10039E720(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10039EB24(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

void sub_10039E8A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_1005290F0, &qword_10045BF48);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      Hasher.init(_seed:)();
      if (v19)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10039EB24(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    sub_10039E8A8(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_10039ECE0();
      goto LABEL_23;
    }

    sub_10039EE38(v9 + 1);
  }

  v11 = *v4;
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = Hasher._finalize()();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = v12 & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == result && v18 == a2;
          if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
LABEL_22:
            sub_1001BC5A8(&qword_1005214F0, &qword_10045BF40);
            ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = result;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

void sub_10039ECE0()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005290F0, &qword_10045BF48);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_10039EE38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_1005290F0, &qword_10045BF48);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      Hasher.init(_seed:)();
      if (v18)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

void *sub_10039F0A0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v6 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v15[2] = v7;
      swift_getAtKeyPath();
      v10 = sub_10039E720(v15, v13, v14);

      if (v10)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v6 = v12;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v5;
      if (v9 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return _swiftEmptyArrayStorage;
}

id sub_10039F240@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (![a1 hasActiveNowPlayingClient])
  {
    v10 = 0;
    v12 = 0x8000000100444BD0;
    v11 = 0xD000000000000026;
    goto LABEL_5;
  }

  [a1 timeSincePlaying];
  v6 = v5;
  if (v5 > 480.0)
  {
    _StringGuts.grow(_:)(52);
    v7._countAndFlagsBits = 0xD000000000000020;
    v7._object = 0x8000000100444C00;
    String.append(_:)(v7);
    v8._countAndFlagsBits = sub_10039DAE0(v6);
    String.append(_:)(v8);

    v9._object = 0x8000000100444C30;
    v9._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v9);
    v10 = 0;
    v11 = 0;
    v12 = 0xE000000000000000;
LABEL_5:
    v13 = 0.0;
    goto LABEL_18;
  }

  v14 = v5 / 480.0 + 0.0;
  if (v14 > 1.0)
  {
    v14 = 1.0;
  }

  v15 = 1.0 - v14;
  if (v5 / 480.0 > 0.0)
  {
    v13 = v15;
  }

  else
  {
    v13 = 1.0;
  }

  _StringGuts.grow(_:)(44);

  v16._countAndFlagsBits = sub_10039DAE0(v13);
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x6C65537265737520;
  v17._object = 0xEE003D6465746365;
  String.append(_:)(v17);
  if (a2)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (a2)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v20 = v19;
  String.append(_:)(*&v18);

  v21._object = 0x8000000100444C50;
  v21._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v21);
  v22._countAndFlagsBits = sub_10039DAE0(v6);
  String.append(_:)(v22);

  v11 = 0x3D65726F6373;
  v12 = 0xE600000000000000;
  v10 = 1;
LABEL_18:
  *a3 = a1;
  *(a3 + 8) = v13;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;

  return a1;
}

void sub_10039F4A8(void *a1, void *a2, void *a3, void *a4)
{
  v114[4] = a1;
  v114[5] = a2;
  v114[6] = a3;
  v114[7] = a4;
  v117 = _swiftEmptyArrayStorage;
  v7 = a4;
  v107 = a1;
  v8 = a2;
  v9 = a3;
  v10 = 0;
  v11 = 4;
  v12 = _swiftEmptyArrayStorage;
LABEL_2:
  if (v10 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v10;
  }

  while (1)
  {
    if (v10 == 4)
    {
      v111 = v9;
      sub_1001BC5A8(&qword_1005290E0, qword_10045BEF0);
      swift_arrayDestroy();
      KeyPath = swift_getKeyPath();
      v117 = &_swiftEmptySetSingleton;
      v10 = sub_10039F0A0(v12, &v117, KeyPath);
      v108 = 0;

      v11 = v10 >> 62;
      if (v10 >> 62)
      {
        goto LABEL_29;
      }

      v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_13;
      }

      goto LABEL_30;
    }

    if (v13 == v10)
    {
      break;
    }

    v14 = v114[v10++ + 4];
    if (v14)
    {
      v15 = v14;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v12 = v117;
      goto LABEL_2;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (!v17)
    {
      break;
    }

LABEL_13:
    v18 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v19 = *(v10 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if ([v19 isPlaying])
      {

        v117 = 0;
        v118 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        v117 = 39;
        v118 = 0xE100000000000000;
        v22 = [v20 name];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26._countAndFlagsBits = v23;
        v26._object = v25;
        String.append(_:)(v26);

        v27._countAndFlagsBits = 0x3D4449552027;
        v27._object = 0xE600000000000000;
        String.append(_:)(v27);
        v28 = [v20 outputDeviceUID];
        if (v28)
        {
          v29 = v28;
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;
        }

        else
        {
          v30 = 7104878;
          v32 = 0xE300000000000000;
        }

        v33._countAndFlagsBits = v30;
        v33._object = v32;
        String.append(_:)(v33);

        v34._countAndFlagsBits = 0xD000000000000012;
        v34._object = 0x8000000100444C70;
        String.append(_:)(v34);
        return;
      }

      ++v18;
      if (v21 == v17)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_30:
  if (a3 && (v35 = [v111 outputDeviceUID]) != 0 || (v35 = objc_msgSend(v107, "outputDeviceUID")) != 0)
  {
    v17 = v35;
    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v36;

    v37 = v10 & 0xFFFFFFFFFFFFFF8;
    if (!v11)
    {
      goto LABEL_34;
    }

LABEL_55:
    v38 = _CocoaArrayWrapper.endIndex.getter();
    if (v38)
    {
      goto LABEL_35;
    }

LABEL_56:

    v57 = _swiftEmptyArrayStorage;
    goto LABEL_57;
  }

  v110 = 0;
  v112 = 0;
  v37 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v11)
  {
    goto LABEL_55;
  }

LABEL_34:
  v38 = *(v37 + 16);
  if (!v38)
  {
    goto LABEL_56;
  }

LABEL_35:
  v117 = _swiftEmptyArrayStorage;
  sub_10039DC50(0, v38 & ~(v38 >> 63), 0);
  if (v38 < 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v39 = 0;
  v40 = v10;
  v41 = v117;
  v17 = v40;
  v42 = v40 & 0xC000000000000001;
  do
  {
    if (v42)
    {
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v43 = *&v17[8 * v39 + 32];
    }

    v44 = v43;
    v45 = [v43 outputDeviceUID];
    v46 = v112 == 0;
    if (v45)
    {
      v47 = v45;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      if (v112)
      {
        if (v48 == v110 && v112 == v50)
        {
          v46 = 1;
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
        v46 = 0;
      }
    }

    sub_10039F240(v44, v46 & 1, v115);

    v117 = v41;
    v53 = *(v41 + 2);
    v52 = *(v41 + 3);
    if (v53 >= v52 >> 1)
    {
      sub_10039DC50((v52 > 1), v53 + 1, 1);
      v41 = v117;
    }

    ++v39;
    *(v41 + 2) = v53 + 1;
    v54 = &v41[40 * v53];
    v55 = v115[0];
    v56 = v115[1];
    *(v54 + 8) = v116;
    *(v54 + 2) = v55;
    *(v54 + 3) = v56;
  }

  while (v38 != v39);

  v57 = v41;
LABEL_57:
  v117 = v57;
  v106 = v57;

  sub_10039DD90(&v117);
  if (v108)
  {
LABEL_86:

    __break(1u);
    return;
  }

  v58 = v117;
  v59 = *(v117 + 16);
  if (v59)
  {
    v60 = (v117 + 40 * v59 + 24);
    v61 = &unk_100537000;
    v109 = v117;
    while (v59 <= *(v58 + 16))
    {
      v62 = *(v60 - 1);
      v63 = *v60;
      v64 = v61[407];
      v65 = *(v60 - 4);

      if (v64 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_100015AFC(v66, qword_100537CC0);
      v17 = v65;

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v113 = v62;
        v69 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        *v69 = 136315650;
        v70 = [v17 name];
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        v74 = sub_10002C9C8(v71, v73, &v117);

        *(v69 + 4) = v74;
        *(v69 + 12) = 2080;
        v75 = [v17 outputDeviceUID];
        if (v75)
        {
          v76 = v75;
          v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v79 = v78;
        }

        else
        {
          v79 = 0xE300000000000000;
          v77 = 7104878;
        }

        v80 = sub_10002C9C8(v77, v79, &v117);

        *(v69 + 14) = v80;
        *(v69 + 22) = 2080;

        v81 = sub_10002C9C8(v113, v63, &v117);

        *(v69 + 24) = v81;
        _os_log_impl(&_mh_execute_header, v67, v68, "proactiveRecommended scores debug entry: '%s' UID=%s %s", v69, 0x20u);
        swift_arrayDestroy();

        v58 = v109;
        v61 = &unk_100537000;
      }

      else
      {
      }

      v60 -= 5;
      if (!--v59)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_70:

    v82 = 0;
    v83 = v106;
    v84 = *(v106 + 2);
    v17 = _swiftEmptyArrayStorage;
LABEL_71:
    v85 = 40 * v82;
    while (v84 != v82)
    {
      if (v82 >= *(v83 + 2))
      {
        __break(1u);
        goto LABEL_85;
      }

      ++v82;
      v86 = v85 + 40;
      v87 = v83[v85 + 48];
      v85 += 40;
      if (v87)
      {
        v88 = *&v83[v86];
        v90 = *&v83[v86 + 16];
        v89 = *&v83[v86 + 24];
        v91 = *&v83[v86 - 8];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10039DC50(0, *(v17 + 2) + 1, 1);
          v17 = v117;
        }

        v94 = *(v17 + 2);
        v93 = *(v17 + 3);
        v83 = v106;
        if (v94 >= v93 >> 1)
        {
          sub_10039DC50((v93 > 1), v94 + 1, 1);
          v83 = v106;
          v17 = v117;
        }

        *(v17 + 2) = v94 + 1;
        v95 = &v17[40 * v94];
        *(v95 + 4) = v91;
        *(v95 + 5) = v88;
        v95[48] = 1;
        *(v95 + 7) = v90;
        *(v95 + 8) = v89;
        goto LABEL_71;
      }
    }
  }

  sub_10039D7B8(v17, &v117);

  if (v117)
  {
    v97 = v119;
    v96 = v120;
    v98 = v117;
    _StringGuts.grow(_:)(22);

    v99 = [v98 name];
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v101;

    v103._countAndFlagsBits = v100;
    v103._object = v102;
    String.append(_:)(v103);

    v104._countAndFlagsBits = 8231;
    v104._object = 0xE200000000000000;
    String.append(_:)(v104);

    v105._countAndFlagsBits = v97;
    v105._object = v96;
    String.append(_:)(v105);

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v107;
  }
}

uint64_t sub_10039FEB8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  sub_10039F4A8(a1, a2, a3, a4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (qword_100537CB8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100015AFC(v12, qword_100537CC0);
  v13 = v7;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = &selRef_nowPlayingOriginClient_applicationActivityDidEnd_;
  if (os_log_type_enabled(v14, v15))
  {
    v36 = a5;
    v17 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v17 = 136315650;
    v18 = [v13 name];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_10002C9C8(v19, v21, &v37);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;

    v23 = sub_10002C9C8(v9, v11, &v37);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2080;
    v24 = [v13 outputDeviceUID];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    else
    {
      v28 = 0xE300000000000000;
      v26 = 7104878;
    }

    v29 = sub_10002C9C8(v26, v28, &v37);

    *(v17 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v14, v15, "proactiveRecommended selection name='%s' reason: %s UID=%s", v17, 0x20u);
    swift_arrayDestroy();

    a5 = v36;
    v16 = &selRef_nowPlayingOriginClient_applicationActivityDidEnd_;
  }

  else
  {
  }

  v30 = String._bridgeToObjectiveC()();

  v31 = v30;
  *a5 = v30;
  v32 = [v13 v16[95]];
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v34;
}

unint64_t sub_1003A01A8()
{
  result = qword_1005228E0;
  if (!qword_1005228E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005228E0);
  }

  return result;
}

unint64_t sub_1003A021C()
{
  result = qword_1005290B0;
  if (!qword_1005290B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005290B0);
  }

  return result;
}

uint64_t sub_1003A0280(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1003A02C8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

NSString sub_1003A032C()
{
  result = String._bridgeToObjectiveC()();
  qword_1005385E0 = result;
  return result;
}

uint64_t *sub_1003A0364()
{
  if (qword_100537DF0 != -1)
  {
    swift_once();
  }

  return &qword_1005385E0;
}

NSString sub_1003A03B4()
{
  result = String._bridgeToObjectiveC()();
  qword_1005385E8 = result;
  return result;
}

uint64_t *sub_1003A03EC()
{
  if (qword_100537DF8 != -1)
  {
    swift_once();
  }

  return &qword_1005385E8;
}

uint64_t sub_1003A043C()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100537E08);
  sub_100015AFC(v0, qword_100537E08);
  v1 = *sub_1001D8DD4();
  return Logger.init(_:)();
}

uint64_t sub_1003A0498()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x7954656369766564;
  v4 = 0x7553656369766564;
  if (v1 != 4)
  {
    v4 = 0x44496C65646F6DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x444970756F7267;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003A0558@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1003A3964(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1003A058C(uint64_t a1)
{
  v2 = sub_1003A0804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003A05C8(uint64_t a1)
{
  v2 = sub_1003A0804();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003A0604(void *a1)
{
  v3 = sub_1001BC5A8(&qword_100529100, &unk_10045BF60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000326D8(a1, a1[3]);
  sub_1003A0804();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1003A0804()
{
  result = qword_100537E20[0];
  if (!qword_100537E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100537E20);
  }

  return result;
}

uint64_t sub_1003A0858@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 52) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  return result;
}

__n128 sub_1003A0874@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1003A3B74(a2, v6);
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

void sub_1003A08E0()
{
  v1 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v45 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v45 - v8;
  v10 = type metadata accessor for Participant();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v57 = &v45 - v16;
  __chkstk_darwin(v15);
  v18 = &v45 - v17;
  v19 = *(v0 + OBJC_IVAR___MRDSystemGroupSession_session);
  if (GroupSession.isLocallyInitiated.getter())
  {
    GroupSession.localParticipant.getter();
    Participant.id.getter();
    (*(v11 + 8))(v18, v10);
    UUID.uuidString.getter();
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v52 = v18;
    v45 = v3;
    v60 = v9;
    v56 = v4;
    v50 = v19;
    v20 = GroupSession.activeParticipants.getter();
    v21 = v20;
    v22 = v20 + 56;
    v23 = 1 << *(v20 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v20 + 56);
    v26 = (v23 + 63) >> 6;
    v49 = v11 + 16;
    v27 = v5;
    v28 = (v11 + 8);
    v54 = v11 + 32;
    v55 = (v27 + 8);

    v30 = 0;
    v47 = v26;
    v48 = v22;
    v53 = v11;
    v51 = v29;
    if (v25)
    {
      while (1)
      {
        v31 = v30;
LABEL_10:
        v32 = *(v21 + 48) + *(v11 + 72) * (__clz(__rbit64(v25)) | (v31 << 6));
        v33 = v57;
        v34 = v10;
        (*(v11 + 16))(v57, v32, v10);
        v46 = *(v11 + 32);
        v46(v14, v33, v10);
        Participant.id.getter();
        v35 = v52;
        GroupSession.localParticipant.getter();
        v36 = v58;
        Participant.id.getter();
        v37 = *(v11 + 8);
        v37(v35, v10);
        sub_1003A4450(&unk_1005286D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v38 = v56;
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        v39 = *v55;
        (*v55)(v36, v38);
        v39(v60, v38);
        if ((v59 & 1) == 0)
        {
          break;
        }

        v25 &= v25 - 1;
        v37(v14, v34);
        v30 = v31;
        v10 = v34;
        v11 = v53;
        v21 = v51;
        v26 = v47;
        v22 = v48;
        if (!v25)
        {
          goto LABEL_7;
        }
      }

      v41 = v45;
      v46(v45, v14, v34);
      v40 = 0;
      v10 = v34;
      v11 = v53;
LABEL_14:
      (*(v11 + 56))(v41, v40, 1, v10);

      v42 = (*(v11 + 48))(v41, 1, v10);
      v43 = v56;
      v44 = v60;
      if (v42 == 1)
      {
        sub_1000038A4(v41, &qword_100529110, &qword_10044F5B0);
      }

      else
      {
        Participant.id.getter();
        (*v28)(v41, v10);
        UUID.uuidString.getter();
        (*v55)(v44, v43);
      }
    }

    else
    {
LABEL_7:
      while (1)
      {
        v31 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v31 >= v26)
        {

          v40 = 1;
          v41 = v45;
          goto LABEL_14;
        }

        v25 = *(v22 + 8 * v31);
        ++v30;
        if (v25)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

__n128 sub_1003A0E5C@<Q0>(uint64_t a1@<X8>)
{
  v2 = GroupSession.activity.getter();
  (*(*v5 + 128))(v6, v2);

  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

char *sub_1003A0F20(uint64_t a1)
{
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001BC5A8(&unk_100522900, &unk_100450080);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  __chkstk_darwin(v4);
  v51 = &v34 - v6;
  v7 = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v48 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v46);
  v35 = type metadata accessor for DispatchQoS();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v43 - 8);
  __chkstk_darwin(v43);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___MRDSystemGroupSession_sessionCancellables] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR___MRDSystemGroupSession_observers;
  v15 = [objc_opt_self() weakObjectsHashTable];
  v45 = v1;
  *&v1[v14] = v15;
  v47 = a1;
  *&v1[OBJC_IVAR___MRDSystemGroupSession_session] = a1;
  sub_1001E0520();
  v40 = "Most Relevant: '";
  v41 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v16 = *(v11 + 104);
  v42 = v11 + 104;
  v44 = v16;
  v16(v13);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  v39 = sub_1003A4450(&qword_100522A90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_10000462C(&qword_100522AA0, &qword_100521DF8, &unk_100450220, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = v45;
  *&v45[OBJC_IVAR___MRDSystemGroupSession_executionQueue] = v17;
  v44(v13, v41, v43);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v46 = v10;
  *&v18[OBJC_IVAR___MRDSystemGroupSession_notificationQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (*(v49 + 104))(v48, enum case for GroupSessionMessenger.DeliveryMode.reliable(_:), v50);
  type metadata accessor for GroupSessionMessenger();
  swift_allocObject();

  *&v18[OBJC_IVAR___MRDSystemGroupSession_messenger] = GroupSessionMessenger.init<A>(session:deliveryMode:)();
  v19 = type metadata accessor for SystemGroupSession();
  v56.receiver = v18;
  v56.super_class = v19;

  v20 = objc_msgSendSuper2(&v56, "init");
  v21 = v51;
  GroupSessionMessenger.receive(_:)();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v23 = swift_allocObject();
  *(v23 + 16) = sub_1003A3F30;
  *(v23 + 24) = v22;
  sub_10000462C(&unk_100529140, &unk_100522900, &unk_100450080, &protocol conformance descriptor for GroupSessionMessenger.MessageStream<A>);
  v24 = v52;
  Publisher<>.sink(receiveValue:)();

  v53[1](v21, v24);
  swift_beginAccess();
  sub_1001BC5A8(&qword_100521D98, qword_10045BF70);
  sub_10000462C(&unk_100529150, &qword_100521D98, qword_10045BF70, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  if (GroupSession.isLocallyInitiated.getter())
  {
  }

  else
  {
    v25 = *&v20[OBJC_IVAR___MRDSystemGroupSession_notificationQueue];
    v26 = swift_allocObject();
    *(v26 + 16) = v20;
    aBlock[4] = sub_1003A3F38;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004D1358;
    v27 = _Block_copy(aBlock);
    v28 = v20;
    v53 = v25;
    v29 = v46;
    static DispatchQoS.unspecified.getter();
    v54 = _swiftEmptyArrayStorage;
    sub_1003A4450(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v30 = v36;
    v31 = v38;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v32 = v53;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v37 + 8))(v30, v31);
    (*(v34 + 8))(v29, v35);
  }

  return v20;
}

double sub_1003A187C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v29 = *(v9 - 8);
  v30 = v9;
  __chkstk_darwin(v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27[1] = *(Strong + OBJC_IVAR___MRDSystemGroupSession_executionQueue);
    v18 = Strong;
    (*(v13 + 16))(v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
    v19 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = v18;
    *(v20 + 3) = a1;
    v27[0] = v11;
    v21 = v6;
    v22 = a1;
    v23 = v28;
    *(v20 + 4) = v28;
    (*(v13 + 32))(&v20[v19], v15, v12);
    aBlock[4] = sub_1003A4740;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004D1670;
    v24 = _Block_copy(aBlock);
    v25 = v18;
    sub_1001C3FE0(v22, v23);
    v26 = v27[0];
    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_1003A4450(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
    (*(v31 + 8))(v8, v21);
    (*(v29 + 8))(v26, v30);
  }

  return result;
}

uint64_t sub_1003A1C70(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for Participant();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  GroupSessionMessenger.MessageContext.source.getter();
  v9 = sub_1003A2944(a2, a3, v8);
  return (*(v6 + 8))(v8, v5, v9);
}

id sub_1003A1D64()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100537DF8 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_1005385E8 object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SystemGroupSession();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003A1F64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v83 = a6;
  v87 = a5;
  v88 = a1;
  v98 = a4;
  v100 = a3;
  v89 = a2;
  v7 = type metadata accessor for Participants();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v80 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for UUID();
  v9 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  __chkstk_darwin(v11 - 8);
  v84 = &v79 - v12;
  v13 = type metadata accessor for Participant();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v99 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v93 = &v79 - v18;
  __chkstk_darwin(v17);
  v85 = v6;
  v86 = &v79 - v19;
  v20 = GroupSession.activeParticipants.getter();
  v21 = v13;
  v22 = v20;
  v23 = v20 + 56;
  v24 = 1 << *(v20 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v20 + 56);
  v27 = (v24 + 63) >> 6;
  v91 = (v9 + 8);
  v92 = v14 + 16;
  v96 = (v14 + 8);
  v97 = (v14 + 32);

  v29 = 0;
  v90 = v28;
  if (!v26)
  {
LABEL_5:
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v27)
      {

        v40 = 1;
        v42 = v88;
        v41 = v89;
        v43 = v84;
        goto LABEL_17;
      }

      v26 = *(v23 + 8 * v30);
      ++v29;
      if (v26)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  while (1)
  {
    v30 = v29;
LABEL_8:
    v31 = *(v22 + 48) + *(v14 + 72) * (__clz(__rbit64(v26)) | (v30 << 6));
    v32 = v93;
    (*(v14 + 16))(v93, v31, v21);
    v33 = *(v14 + 32);
    v34 = v21;
    v33(v99, v32, v21);
    v35 = v94;
    Participant.id.getter();
    v36 = UUID.uuidString.getter();
    v38 = v37;
    (*v91)(v35, v95);
    if (v36 == v100 && v38 == v98)
    {

      goto LABEL_16;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      break;
    }

    v26 &= v26 - 1;
    v21 = v34;
    (*v96)(v99, v34);
    v29 = v30;
    v22 = v90;
    if (!v26)
    {
      goto LABEL_5;
    }
  }

LABEL_16:
  v21 = v34;
  v43 = v84;
  v33(v84, v99, v34);
  v40 = 0;
  v42 = v88;
  v41 = v89;
LABEL_17:
  (*(v14 + 56))(v43, v40, 1, v21);

  if ((*(v14 + 48))(v43, 1, v21) == 1)
  {
    sub_1000038A4(v43, &qword_100529110, &qword_10044F5B0);
    if (qword_100537E00 == -1)
    {
LABEL_19:
      v44 = type metadata accessor for Logger();
      sub_100015AFC(v44, qword_100537E08);
      v45 = v85;
      v46 = v98;

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v101[0] = swift_slowAlloc();
        *v49 = 138543874;
        *(v49 + 4) = v45;
        *v50 = v45;
        *(v49 + 12) = 2082;
        v51 = [v45 identifier];
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        v55 = sub_10002C9C8(v52, v54, v101);

        *(v49 + 14) = v55;
        *(v49 + 22) = 2080;
        *(v49 + 24) = sub_10002C9C8(v100, v46, v101);
        _os_log_impl(&_mh_execute_header, v47, v48, "[%{public}@]<%{public}s> Failed to find active participant with ID: %s", v49, 0x20u);
        sub_1000038A4(v50, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      v56 = v87;
      if (v87)
      {
        sub_1003A4498();
        swift_allocError();
        v56();
      }

      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_19;
  }

  v57 = *v97;
  v99 = v21;
  v57(v86, v43, v21);
  if (qword_100537E00 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_100015AFC(v58, qword_100537E08);
  v59 = v85;
  v60 = v98;

  sub_1001C3FE0(v42, v41);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();

  sub_1001C4034(v42, v41);
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v101[0] = v97;
    *v63 = 138544130;
    *(v63 + 4) = v59;
    *v64 = v59;
    *(v63 + 12) = 2082;
    v65 = [v59 identifier];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    v69 = sub_10002C9C8(v66, v68, v101);

    *(v63 + 14) = v69;
    *(v63 + 22) = 2080;
    *(v63 + 24) = sub_10002C9C8(v100, v60, v101);
    *(v63 + 32) = 2080;
    v70 = Data.description.getter();
    v72 = sub_10002C9C8(v70, v71, v101);

    *(v63 + 34) = v72;
    _os_log_impl(&_mh_execute_header, v61, v62, "[%{public}@]<%{public}s> sending message to %s. Payload: %s", v63, 0x2Au);
    sub_1000038A4(v64, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v73 = v80;
  v74 = v86;
  static Participants.only(_:)();
  v75 = swift_allocObject();
  v76 = v87;
  v75[2] = v59;
  v75[3] = v76;
  v77 = v83;
  v75[4] = v83;
  v78 = v59;
  sub_10021DF20(v76, v77);
  GroupSessionMessenger.send(_:to:completion:)();

  (*(v81 + 8))(v73, v82);
  (*v96)(v74, v99);
}

double sub_1003A2944(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v66 = a2;
  v67 = a3;
  v68 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v64 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Participant();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v60 = v11;
  v61 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v53[-v12];
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v53[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *&v3[OBJC_IVAR___MRDSystemGroupSession_executionQueue];
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v58 = v5;
    v59 = v4;
    if (qword_100537E00 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v20 = type metadata accessor for Logger();
  sub_100015AFC(v20, qword_100537E08);
  v21 = *(v9 + 16);
  v21(v13, v67, v8);
  v22 = v3;
  v23 = v68;
  v24 = v66;
  sub_1001C3FE0(v68, v66);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  sub_1001C4034(v23, v24);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v55 = v28;
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v27 = 138544130;
    *(v27 + 4) = v22;
    *v28 = v22;
    *(v27 + 12) = 2082;
    v29 = [v22 identifier];
    v54 = v26;
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v21;
    v33 = v32;

    v34 = sub_10002C9C8(v31, v33, aBlock);

    *(v27 + 14) = v34;
    *(v27 + 22) = 2080;
    sub_1003A4450(&qword_1005222C0, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v9 + 8))(v13, v8);
    v38 = sub_10002C9C8(v35, v37, aBlock);
    v21 = v57;

    *(v27 + 24) = v38;
    *(v27 + 32) = 2080;
    v24 = v66;
    v39 = Data.description.getter();
    v41 = sub_10002C9C8(v39, v40, aBlock);

    *(v27 + 34) = v41;
    _os_log_impl(&_mh_execute_header, v25, v54, "[%{public}@]<%{public}s> received message from %s. Payload: %s", v27, 0x2Au);
    sub_1000038A4(v55, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    v23 = v68;
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v42 = [*&v22[OBJC_IVAR___MRDSystemGroupSession_observers] allObjects];
  sub_1001BC5A8(&unk_100529190, &qword_10045C208);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = *&v22[OBJC_IVAR___MRDSystemGroupSession_notificationQueue];
  v44 = v61;
  v21(v61, v67, v8);
  v45 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v46 = swift_allocObject();
  *(v46 + 2) = v43;
  *(v46 + 3) = v22;
  *(v46 + 4) = v23;
  *(v46 + 5) = v24;
  (*(v9 + 32))(&v46[v45], v44, v8);
  aBlock[4] = sub_1003A43E8;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D15F8;
  v47 = _Block_copy(aBlock);
  v48 = v22;
  sub_1001C3FE0(v23, v24);
  v49 = v62;
  static DispatchQoS.unspecified.getter();
  v69 = _swiftEmptyArrayStorage;
  sub_1003A4450(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  v50 = v64;
  v51 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v47);
  (*(v58 + 8))(v50, v51);
  (*(v63 + 8))(v49, v65);

  return result;
}

void sub_1003A3148(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v21 = a2;
  v22 = a3;
  v20 = type metadata accessor for UUID();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v19 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = a1 & 0xC000000000000001;
    v18 = (v6 + 8);
    do
    {
      if (v10)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(a1 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      if ([v16 respondsToSelector:"session:didReceiveMessageData:fromParticipant:"])
      {
        swift_unknownObjectRetain();
        v11 = v19;
        Participant.id.getter();
        UUID.uuidString.getter();
        (*v18)(v11, v20);
        v12 = v10;
        v13 = v8;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v15 = String._bridgeToObjectiveC()();

        [v16 session:v21 didReceiveMessageData:isa fromParticipant:v15];
        swift_unknownObjectRelease_n();

        v8 = v13;
        v10 = v12;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v9;
    }

    while (v8 != v9);
  }
}

double sub_1003A35E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v4[OBJC_IVAR___MRDSystemGroupSession_executionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);
  v17 = v4;
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1003A4450(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);

  return result;
}

void sub_1003A38D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_1003A35E0(a3, a4, a5, a6);
  swift_unknownObjectRelease();
}

uint64_t sub_1003A3964(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7553656369766564 && a2 == 0xED00006570795462 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44496C65646F6DLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1003A3B74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&unk_1005291B0, &qword_10045C218);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000326D8(a1, a1[3]);
  sub_1003A0804();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100026A44(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v35[0]) = 1;
  *&v29 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v29 + 1) = v12;
  LOBYTE(v35[0]) = 2;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v13;
  LOBYTE(v35[0]) = 3;
  v27 = 0;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v35[0]) = 4;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = 5;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = *(v6 + 8);
  v16 = v14;
  v27 = v17;
  v15(v8, v5);
  *&v30 = v9;
  *(&v30 + 1) = v11;
  v18 = v29;
  v31 = v29;
  v19 = v28;
  *&v32 = v26;
  *(&v32 + 1) = v28;
  *&v33 = __PAIR64__(v25, v43);
  v20 = v27;
  *(&v33 + 1) = v16;
  v34 = v27;
  sub_10021FCCC(&v30, v35);
  sub_100026A44(a1);
  v35[0] = v9;
  v35[1] = v11;
  v36 = __PAIR128__(*(&v29 + 1), v18);
  v37 = v26;
  v38 = v19;
  v39 = v43;
  v40 = v25;
  v41 = v16;
  v42 = v20;
  result = sub_1001C933C(v35);
  v22 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v22;
  *(a2 + 64) = v34;
  v23 = v31;
  *a2 = v30;
  *(a2 + 16) = v23;
  return result;
}

void sub_1003A3F38()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (qword_100537DF0 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:qword_1005385E0 object:v1];
}

uint64_t sub_1003A4000()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1003A4060()
{
  result = qword_100529160;
  if (!qword_100529160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100529160);
  }

  return result;
}

__n128 sub_1003A40B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003A40D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1003A4120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemGroupSession.HostInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemGroupSession.HostInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003A42E4()
{
  result = qword_1005381B0[0];
  if (!qword_1005381B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005381B0);
  }

  return result;
}

unint64_t sub_1003A433C()
{
  result = qword_1005382C0;
  if (!qword_1005382C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005382C0);
  }

  return result;
}

unint64_t sub_1003A4394()
{
  result = qword_1005382C8[0];
  if (!qword_1005382C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005382C8);
  }

  return result;
}

void sub_1003A43E8()
{
  v1 = *(type metadata accessor for Participant() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1003A3148(v2, v3, v4, v5, v6);
}

uint64_t sub_1003A4450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003A4498()
{
  result = qword_1005291A0;
  if (!qword_1005291A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005291A0);
  }

  return result;
}

void sub_1003A44EC(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (!a1)
  {
LABEL_6:
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = *(v1 + 16);
  swift_errorRetain();
  if (qword_100537E00 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100015AFC(v5, qword_100537E08);
  swift_errorRetain();
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v11 = v18;
    *v9 = 138412802;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2082;
    v12 = [v6 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10002C9C8(v13, v15, &v18);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    v10[1] = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%@]<%{public}s> Message send error: %@.", v9, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v11);

    goto LABEL_6;
  }

  if (!v3)
  {
    return;
  }

LABEL_7:
  v3(a1);
}

uint64_t sub_1003A4740()
{
  type metadata accessor for GroupSessionMessenger.MessageContext();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_1003A1C70(v1, v2, v3);
}

void sub_1003A47C8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 40) name];
  v7 = [*(a1 + 40) requestID];
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:*(a1 + 48)];
  v10 = 138544130;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = a2;
  v16 = 2048;
  v17 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v10, 0x2Au);
}

void sub_1003A48D0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  active = MRMediaRemoteActiveEndpointTypeCopyDescription();
  v6 = 138543618;
  v7 = active;
  v8 = 2114;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[SystemEndpointController] Reevaluating %{public}@ActiveEndpoint because %{public}@", &v6, 0x16u);
}

void sub_1003A4990(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[SystemEndpointController] Updating activeEndpointInfo %@", &v3, 0xCu);
}

void sub_1003A4A50(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDGroupSessionServer] Found active group session for device: %@, but operation had already timed out", &v3, 0xCu);
}

void sub_1003A4ACC(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 40) bundleIdentifier];
  sub_10005170C();
  sub_100051724(&_mh_execute_header, v3, v4, "[MRDGroupSessionServer] Push session state: %@ to new client: %@", v5, v6, v7, v8);
}

void sub_1003A4B60(uint64_t a1, id *a2)
{
  v2 = [*a2 bundleIdentifier];
  sub_10005170C();
  sub_100051724(&_mh_execute_header, v3, v4, "[MRDGroupSessionServer] Push eligibility state: %@ to new client: %@", v5, v6, v7, v8);
}

void sub_1003A4BF4(void *a1, NSObject *a2)
{
  v3 = [a1 localizedFailureReason];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDGroupSessionServer] Cannot present proximity card: %@", &v4, 0xCu);
}

void sub_1003A4CD0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRDGroupSessionServer] Accepting connection from client %@", &v2, 0xCu);
}

void sub_1003A4D48(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[MRDGroupSessionClient] connectToSession - pending session. Empty state %@ to connection: %@", buf, 0x16u);
}

void sub_1003A4DB0(void *a1)
{
  v6 = [a1 sessionIdentifier];
  sub_100054740();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1003A4E44(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  LODWORD(v10) = 138412546;
  *(&v10 + 4) = a1;
  sub_100054730();
  sub_100051724(&_mh_execute_header, v4, v5, "[MRDGroupSessionClient] connectToSession - placeholder session. Empty state %@ to connection: %@", v6, v7, v8, v9, v10, DWORD2(v10));
}

void sub_1003A4EE4(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  LODWORD(v10) = 138412546;
  *(&v10 + 4) = a1;
  sub_100054730();
  sub_100051724(&_mh_execute_header, v4, v5, "[MRDGroupSessionClient] connectToSession - initial state %@ to connection: %@", v6, v7, v8, v9, v10, DWORD2(v10));
}

void sub_1003A4F84(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDGroupSessionClient] Pending session timed out: %@", &v3, 0xCu);
}

void sub_1003A5000(uint64_t a1, void *a2)
{
  v2 = [a2 sessionIdentifier];
  sub_100054730();
  sub_100054740();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1003A50A4(void *a1)
{
  v6 = [a1 sessionIdentifier];
  sub_100054740();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1003A5174()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A530C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[MRDRemoteControlServer] handleSendApplicationConnectionMessage - connection: %@ not found, it has likely just invalidated", buf, 0xCu);
}

void sub_1003A5364(id *a1)
{
  v1 = [*a1 commandID];
  sub_100061134();
  sub_10006114C(&_mh_execute_header, v2, v3, "Command <%{public}@> ignored because of pre-processing error %{public}@.", v4, v5, v6, v7);
}

void sub_1003A5408(uint64_t a1)
{
  v1 = [*(a1 + 48) displayName];
  sub_100061134();
  sub_10006114C(&_mh_execute_header, v2, v3, "Client %{public}@ failed to reply to command (SendCommandErr = %@)", v4, v5, v6, v7);
}

void sub_1003A5558(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:a1[6]];
  v10 = 138544130;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = a2;
  v16 = 2048;
  v17 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v10, 0x2Au);
}

void sub_1003A563C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ProximityProvider] invalidated with error %@", &v2, 0xCu);
}

void sub_1003A56B4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ProximityProvider] Failed to activate with error %@", &v2, 0xCu);
}

void sub_1003A5740(uint64_t a1)
{
  v2 = [*(a1 + 40) requestID];
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(a1 + 48)];
  sub_100066F24();
  sub_100066F50(&_mh_execute_header, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9);
}

void sub_1003A5800(void *a1, NSObject *a2)
{
  v3 = [a1 nowPlayingActivityAssertionEndDate];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRDUIActivityServer] Deferring end of now playing activity until: %@", &v4, 0xCu);
}

void sub_1003A5898(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[MRDUIActivityServer] >>>+ clients: %@, routes: %@", &v3, 0x16u);
}

void sub_1003A59C8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDUIActivityServer] Rejecting volume HUD presentation request from non-entitled client %@.", &v2, 0xCu);
}

void sub_1003A5A40(void *a1, NSObject *a2)
{
  v3 = [a1 userState];
  v4 = [v3 identifier];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDMusicUserStateCenter] No identity available for: %@", &v5, 0xCu);
}

void sub_1003A5B18(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = a1[5];
  v7 = a1[6];
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:a1[7]];
  v10 = 138544130;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = a2;
  v16 = 2048;
  v17 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v10, 0x2Au);
}

void sub_1003A5CA4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[MRDIDSService] %@ Error %@ sending message", &v3, 0x16u);
}

void sub_1003A5D84(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[ODDSRouting] Could not find output device for route %{public}@ - error = %{public}@", &v4, 0x16u);
}

void sub_1003A5E24(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ProximityController] Now playing request failed: %@", &v2, 0xCu);
}

void sub_1003A5E9C(uint64_t a1, NSObject *a2)
{
  v4 = [*(a1 + 32) displayMonitor];
  v5 = [v4 displayOn];
  v6 = [*(a1 + 32) displayMonitor];
  v7 = [v6 lockScreenVisible];
  v8 = [*(a1 + 32) displayMonitor];
  v9[0] = 67109632;
  v9[1] = v5;
  v10 = 1024;
  v11 = v7;
  v12 = 1024;
  v13 = [v8 controlCenterVisible];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[ProximityController] display: %{BOOL}u, lockscreen: %{BOOL}u, controlcenter: %{BOOL}u", v9, 0x14u);
}

void sub_1003A5FB0(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  sub_10008EEB0(&_mh_execute_header, a2, a3, "[MRDAVOutputContextManager] Failed to create new outputContext for: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1003A6098(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  sub_10008EEB0(&_mh_execute_header, a2, a3, "[MRDAVOutputContextManager] Attempted to process output context not in our list %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1003A631C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *(a1 + 40);
  sub_10008EEB0(&_mh_execute_header, a2, a3, "[MRDRemoteDisplayPairingServer] Timed out after %zus waiting for rapport guest pairing", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1003A638C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_10008EEB0(&_mh_execute_header, a2, a3, "[MRDRemoteDisplayPairingServer] Error starting discovery: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1003A63F8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_10008EEB0(&_mh_execute_header, a2, a3, "[MRDRemoteDisplayPairingServer] Error activating RPRemoteDisplayServer: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1003A6464(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[MRDRemoteDisplayPairingServer] Error starting pairingServer: %@, pairingInfo: %@", &v3, 0x16u);
}

void sub_1003A64EC(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  [a2 pid];
  sub_10009684C();
  sub_100096870(&_mh_execute_header, v4, v5, "Refusing to handle RequestPlaybackInitializationMessage with target bundleID: %{public}@ from un-entitled or non-self client: %{public}@ (%d)", v6, v7, v8, v9);
}

void sub_1003A658C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Warning: could not relay browsable content message. No client found for bundle ID %@.", &v2, 0xCu);
}

void sub_1003A6618(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *(a1 + 40);
  v7 = +[NSDate date];
  [v7 timeIntervalSinceDate:*(a1 + 48)];
  v9 = 138544130;
  v10 = @"MRDMRRelayConnectionManager.waitForConnection";
  v11 = 2114;
  v12 = v6;
  v13 = 2114;
  v14 = a2;
  v15 = 2048;
  v16 = v8;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v9, 0x2Au);
}

void sub_1003A6978()
{
  sub_1000A4BE4();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[MRDRemoteControlGroupSessionCoordinator] Failed to auto-join group session: %{public}@ with error: %{public}@.", v2, 0x16u);
}

void sub_1003A6A54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Attempted to enqueue disallowed background task %@", &v2, 0xCu);
}

void sub_1003A6AE0()
{
  sub_1000B66C4();
  sub_1000B66F8(v0);
  v6 = MRTransactionNameGetDescription();
  sub_1000B66B4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_1003A6B90()
{
  sub_1000B66C4();
  sub_1000B66EC(v1);
  v2 = MRTransactionNameGetDescription();
  *v9 = 138412546;
  *&v9[4] = v2;
  *&v9[12] = 2112;
  *&v9[14] = *(v0 + 40);
  sub_10006114C(&_mh_execute_header, v3, v4, "[MRDTransaction] Canceling %@ transaction for playerPath %@", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

void sub_1003A6C30(uint64_t a1, void *a2)
{
  sub_1000B66F8(a1);
  v8 = MRTransactionNameGetDescription();
  [a2 length];
  sub_1000B66B4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1003A6CF0()
{
  sub_1000B66C4();
  sub_1000B66EC(v0);
  v1 = MRTransactionNameGetDescription();
  sub_10005170C();
  sub_10006114C(&_mh_execute_header, v2, v3, "[MRDTransaction] %@ %@ received interrupted/invalid connection", v4, v5, v6, v7);
}

void sub_1003A6D7C(uint64_t a1)
{
  sub_1000B66F8(a1);
  v1 = MRTransactionNameGetDescription();
  sub_1000B66D0();
  sub_1000B66B4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1003A6E24()
{
  sub_1000B66C4();
  sub_1000B66EC(v0);
  v1 = MRTransactionNameGetDescription();
  sub_10005170C();
  sub_10006114C(&_mh_execute_header, v2, v3, "[MRDTransaction] %p %@ could not create reply to qeury", v4, v5, v6, v7);
}

void sub_1003A6EB0()
{
  sub_1000B66C4();
  sub_1000B66EC(v0);
  v1 = MRTransactionNameGetDescription();
  sub_10005170C();
  sub_10006114C(&_mh_execute_header, v2, v3, "[MRDTransaction] %p %@ could not extract connection to query", v4, v5, v6, v7);
}

void sub_1003A6F3C()
{
  sub_1000B66C4();
  sub_1000B66EC(v0);
  v1 = MRTransactionNameGetDescription();
  sub_10005170C();
  sub_1000B66B4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1003A6FD0()
{
  sub_1000B66C4();
  sub_1000B66F8(v0);
  v1 = MRTransactionNameGetDescription();
  sub_1000B66D0();
  sub_1000B66B4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1003A7098(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 16);
  v4 = 134218496;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  v8 = 2048;
  v9 = v3 + a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[MRTransactionServer] Memory Usage: %ld + %ld -> %ld", &v4, 0x20u);
}

void sub_1003A7130(void *a1, uint64_t a2)
{
  [a1 name];
  v2 = MRTransactionNameGetDescription();
  v3 = MRTransactionPacketsGetKeys();
  sub_1000B8D74();
  sub_100051724(&_mh_execute_header, v4, v5, "[MRTransactionServer] %@ received keys %@", v6, v7, v8, v9);
}

void sub_1003A71D8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRTransactionServer] %@ received ack", &v3, 0xCu);
}

void sub_1003A7254(void *a1, void *a2)
{
  [a1 name];
  v3 = MRTransactionNameGetDescription();
  v4 = [a2 allKeys];
  sub_1000B8D74();
  sub_100051724(&_mh_execute_header, v5, v6, "[MRTransactionServer] %@ received keys %@", v7, v8, v9, v10);
}

void sub_1003A72FC(void *a1, uint64_t *a2)
{
  v3 = a1[8];
  v4 = a1[9];
  v5 = *a2;
  v6 = +[NSDate date];
  [v6 timeIntervalSinceDate:a1[10]];
  *v14 = 138544130;
  *&v14[4] = v3;
  *&v14[12] = 2114;
  *&v14[14] = v4;
  *&v14[22] = 2114;
  LOWORD(v15) = 2048;
  *(&v15 + 2) = v7;
  sub_100066F50(&_mh_execute_header, v8, v9, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v10, v11, v12, v13, *v14, *&v14[8], *&v14[16], v5, v15, WORD4(v15));
}

void sub_1003A73D0(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = +[NSDate date];
  [v6 timeIntervalSinceDate:a1[7]];
  *v14 = 138544130;
  *&v14[4] = v4;
  *&v14[12] = 2114;
  *&v14[14] = v5;
  *&v14[22] = 2114;
  LOWORD(v15) = 2048;
  *(&v15 + 2) = v7;
  sub_100066F50(&_mh_execute_header, v8, v9, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v10, v11, v12, v13, *v14, *&v14[8], *&v14[16], a2, v15, WORD4(v15));
}

void sub_1003A74A4()
{
  sub_1000C1604();
  sub_1000C15B0();
  v1 = +[NSDate date];
  [v1 timeIntervalSinceDate:*(v0 + 64)];
  sub_1000C15C0();
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v2, v3, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v4, v5, v6, v7);

  sub_1000C15F0();
}

void sub_1003A7554()
{
  sub_1000C1604();
  sub_1000C15B0();
  v1 = +[NSDate date];
  [v1 timeIntervalSinceDate:*(v0 + 56)];
  sub_1000C15C0();
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v2, v3, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v4, v5, v6, v7);

  sub_1000C15F0();
}

void sub_1003A7604()
{
  sub_1000C1604();
  sub_1000C15B0();
  v2 = [sub_1000C15CC(v1) requestID];
  v3 = +[NSDate date];
  sub_1000C15D8(v3, v4);
  sub_1000C15C0();
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10);

  sub_1000C15F0();
}

void sub_1003A76B8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cluster requires primary but none was found. Members: %{public}@", &v2, 0xCu);
}

void sub_1003A7744(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRUIControllerConnection] <%p> No endpoint found. Please check that MediaRemoteUI is installed and registered with launchd.", &v2, 0xCu);
}

void sub_1003A77D0()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A7888()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A78C4()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A7900()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7970()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A79AC()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7A1C()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A7A58()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7AC8()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7B38()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7BA8()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7C18()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A7CCC()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7D3C()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A7D78()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A7DB4(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[MRDGroupSessionManager] Invalidation received for untracked session: %{public}@.", &v3, 0xCu);
}

void sub_1003A7E30()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7EA0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = [*(a1 + 32) identifier];
  sub_100061134();
  v7 = 2112;
  v8 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[MRDGroupSessionManager] %@ No equivalent WHA endpoint for session: %@", v6, 0x16u);
}

void sub_1003A7F54()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A7FA4()
{
  sub_1000C15B0();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  LODWORD(v11) = 138544130;
  *(&v11 + 4) = v2;
  sub_1000C15C0();
  *v12 = v3;
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v11, DWORD2(v11), *&v12[2]);
}

void sub_1003A805C()
{
  sub_1000C15B0();
  v2 = *(v1 + 32);
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(v0 + 48)];
  LODWORD(v10) = 138544130;
  *(&v10 + 4) = @"TransportExternalDevice.connectWithOptions";
  sub_1000C15C0();
  *v11 = v2;
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, v10, DWORD2(v10), *&v11[2]);
}

void sub_1003A811C()
{
  sub_100061134();
  sub_1000C15C0();
  sub_1000E4FAC(&_mh_execute_header, v0, v1, "Device disconnect called with error: %{public}@ for external device: %{public}@");
}

void sub_1003A81B4()
{
  sub_1000C15B0();
  v2 = *(v1 + 40);
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(v0 + 48)];
  LODWORD(v10) = 138544130;
  *(&v10 + 4) = @"TransportExternalDevice.connectWithOptions.attemptReconnection";
  sub_1000C15C0();
  *v11 = v2;
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, v10, DWORD2(v10), *&v11[2]);
}

void sub_1003A82DC()
{
  sub_100061134();
  sub_1000C15C0();
  sub_1000E4FAC(&_mh_execute_header, v0, v1, "Connection error while sending ping message for device %{public}@. %{public}@");
}

void sub_1003A8488(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceDate:*(a1 + 48)];
  v9 = 138544130;
  sub_1000E6E28();
  sub_100066F50(&_mh_execute_header, v3, v4, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v5, v6, v7, v8, v9);
}

void sub_1003A8544(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceDate:*(a1 + 48)];
  v9 = 138544130;
  sub_1000E6E28();
  sub_100066F50(&_mh_execute_header, v3, v4, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v5, v6, v7, v8, v9);
}

void sub_1003A8650()
{
  sub_1000EF6C8();
  v0 = MRPairedDeviceCopyDeltaDescription();
  sub_1000EF6A8();
  sub_1000EF6FC(&_mh_execute_header, v1, v2, "[MRDNowPlayingOriginClient] Set: deviceInfo (%p) for <%@>:\n %@", v3, v4, v5, v6);
}

void sub_1003A86E8()
{
  sub_1000EF6C8();
  v0 = MRPairedDeviceCopyDescription();
  sub_1000EF6A8();
  sub_1000EF6FC(&_mh_execute_header, v1, v2, "[MRDNowPlayingOriginClient] Set: deviceInfo (%p) for <%@>:\n %@", v3, v4, v5, v6);
}

void sub_1003A8774(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1000EF6E0(&_mh_execute_header, a2, a3, "[MRDNowPlayingOriginClient] _reevaluateStateWithReason %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1003A87E0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(a1 + 112);
  sub_1000EF6E0(&_mh_execute_header, a2, a3, "[MRDNowPlayingOriginClient] Taking activeNowPlayingClient transaction for %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1003A8850(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(a1 + 112);
  sub_1000EF6E0(&_mh_execute_header, a2, a3, "[MRDNowPlayingOriginClient] Removing activeNowPlayingClient transaction for %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1003A88D4(uint64_t a1, NSObject *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_1000F2D28();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDRRC].IRD dropping event of unexpected type (%@): %@", v5, 0x16u);
}

void sub_1003A8978(uint64_t a1, NSObject *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_1000F2D28();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "dropping event of unexpected type (%@): %@", v5, 0x16u);
}

void sub_1003A8A1C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[MRDRRC].IRD couldn't get eligibility of %@: %@", &v4, 0x16u);
}

void sub_1003A8C08(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error unpicking AirPlay routes. %{public}@", &v2, 0xCu);
}

void sub_1003A8C80(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRDLockScreenController] Reevaluating shouldShowLockScreen for reason %@", &v2, 0xCu);
}

void sub_1003A8DEC(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRDCLC] <%p> Cancelling playback timer.", &v2, 0xCu);
}

void sub_1003A8F00()
{
  sub_1000C15B0();
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v5 = +[NSDate date];
  [v5 timeIntervalSinceDate:*(v1 + 56)];
  *v13 = 138544130;
  *&v13[4] = v3;
  *&v13[12] = 2114;
  *&v13[14] = v4;
  *&v13[22] = 2114;
  LOWORD(v14) = 2048;
  *(&v14 + 2) = v6;
  sub_100066F50(&_mh_execute_header, v7, v8, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16], v0, v14, WORD4(v14));
}

void sub_1003A8FCC()
{
  sub_1000C15B0();
  v2 = [*(v1 + 48) requestID];
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(v0 + 56)];
  sub_100066F24();
  sub_100066F50(&_mh_execute_header, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9);
}

void sub_1003A9098()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A90D4()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A9110()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A9180()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A9390(uint64_t a1, NSObject *a2)
{
  v3 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
  sub_100061134();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[ExternalDeviceServer] didReceiveVolumeControlCapabilitiesChange %@", v4, 0xCu);
}

void sub_1003A9598()
{
  sub_100061134();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Device with managedConfigDeviceID, %{public}@, allowed: %d", v2, 0x12u);
}

void sub_1003A9620()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A9690(id *a1, NSObject *a2)
{
  [*a1 command];
  v3 = MRMediaRemoteCopyCommandDescription();
  sub_100061134();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ExternalDeviceServer] Client not authorized to send command type: %@", v4, 0xCu);
}

void sub_1003A9728()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A9764()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A97D4()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A9844()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A98A8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Client is not entitled for NowPlaying Acesss: %@", &v2, 0xCu);
}

void sub_1003A9920(id *a1, int a2, NSObject *a3)
{
  v5 = [*a1 displayName];
  v6 = 138543618;
  v7 = v5;
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "PID Mismatch: Client %{public}@ is trying to make a nowPlayingClient with a different pid %d", &v6, 0x12u);
}

void sub_1003A99D4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Resolving Existing %{public}@ -> %{public}@", &v3, 0x16u);
}

void sub_1003A9B54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRCompanionConnectionController] Skipping Attempt to discover and connect to companion because <%@>", &v2, 0xCu);
}

void sub_1003A9BCC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRCompanionConnectionController] Could not discover companion endpoint with error %@", &v2, 0xCu);
}

void sub_1003A9C44(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRCompanionConnectionController] Could not connect to companion with error %@", &v2, 0xCu);
}

void sub_1003A9D8C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Posting Notification %@", &v3, 0xCu);
}

void sub_1003A9E08(uint64_t a1, NSObject *a2)
{
  v3 = MRMediaRemoteCopyReadableDictionaryDescription();
  sub_100061134();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "UserInfo %@", v4, 0xCu);
}

void sub_1003A9E98(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v7 = MRMediaRemoteCopyReadableDictionaryDescription();
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Custom UserInfo %@", a1, 0xCu);
}

void sub_1003A9F88()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003AA074()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003AA118()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003AA2E8(uint64_t a1, NSObject *a2, double a3)
{
  v3 = 134218242;
  v4 = a3;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Requesting to aquire assertion for %lf > 30 seconds. Assertion will likely only be valid for 30 seconds %@", &v3, 0x16u);
}

void sub_1003AA380(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to acquire assertion: %@", &v2, 0xCu);
}

void sub_1003AA3F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to acquire host assertion: %@", &v2, 0xCu);
}

void sub_1003AA470(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) requestID];
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:*(a1 + 48)];
  v10 = 138544130;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = a2;
  v16 = 2048;
  v17 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v10, 0x2Au);
}

void sub_1003AA578(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *(a1 + 40);
  v7 = +[NSDate date];
  [v7 timeIntervalSinceDate:*(a1 + 48)];
  v9 = 138544130;
  v10 = @"autoConnectToEndpoint";
  v11 = 2114;
  v12 = v6;
  v13 = 2114;
  v14 = a2;
  v15 = 2048;
  v16 = v8;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v9, 0x2Au);
}

void sub_1003AA664(unint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = sub_100140AD0(a1);
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[MRDElectedPlayerController] Reevaluating electedPlayer event = %{public}@, reason =  %{public}@", &v6, 0x16u);
}

void sub_1003AA728()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  sub_1003AA74C();
}

void sub_1003AAB18()
{
  sub_1000C1604();
  sub_1000C15B0();
  v1 = +[NSDate date];
  [v1 timeIntervalSinceDate:*(v0 + 56)];
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v2, v3, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v4, v5, v6, v7);

  sub_1000C15F0();
}

void sub_1003AABCC()
{
  sub_1000C1604();
  v1 = v0;
  v3 = [v2 error];
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v1 + 56)];
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10);

  sub_1000C15F0();
}

void sub_1003AACA8()
{
  sub_1000C1604();
  sub_1000C15B0();
  v2 = [sub_10015B0A8(v1) requestID];
  v3 = +[NSDate date];
  sub_10015B0B4(v3, v4);
  sub_100066F24();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10);

  sub_1000C15F0();
}

void sub_1003AAD4C()
{
  sub_1000C1604();
  sub_1000C15B0();
  v1 = +[NSDate date];
  [v1 timeIntervalSinceDate:*(v0 + 56)];
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v2, v3, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v4, v5, v6, v7);

  sub_1000C15F0();
}

void sub_1003AAE00(uint64_t a1)
{
  v1 = [*(a1 + 32) name];
  sub_100061134();
  sub_100054740();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1003AAEAC()
{
  sub_1000A4BE4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003AAF20()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003AAF5C()
{
  sub_1000A4BE4();
  sub_1000C15C0();
  sub_1000E4FAC(&_mh_execute_header, v0, v1, "[AVRoutingServer] AV reconnaissance session failed to find route with UID %{public}@ -- %{public}@");
}

void sub_1003AAFD0()
{
  sub_1000A4BE4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003AB044()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003AB080()
{
  sub_1000A4BE4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003AB0F4(id *a1)
{
  v1 = [*a1 bundleIdentifier];
  sub_10016B9F0();
  sub_100054740();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1003AB190(id *a1, NSObject *a2)
{
  v3 = [*a1 bundleIdentifier];
  v4[0] = 138412546;
  sub_10016B9F0();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Missing entitlement %@ for %@. Please file a radar for this process to obtain this entitlement", v4, 0x16u);
}

void sub_1003AB2D0()
{
  sub_1000C15B0();
  v2 = [*(v1 + 56) requestID];
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(v0 + 64)];
  sub_1000C15C0();
  sub_1000C1598();
  sub_100054740();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1003AB3A0()
{
  sub_1000C15B0();
  v2 = [*(v1 + 48) requestID];
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(v0 + 56)];
  sub_1000C15C0();
  sub_1000C1598();
  sub_100054740();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1003AB470()
{
  sub_100061134();
  sub_1000C15C0();
  sub_1000E4FAC(&_mh_execute_header, v0, v1, "[AVRoutingServer] Output device connection failure: %{public}@ for %{public}@");
}

void sub_1003AB4E0()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003AB51C()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003AB558()
{
  sub_1000C15B0();
  v1 = +[NSDate date];
  [v1 timeIntervalSinceDate:*(v0 + 48)];
  sub_1000C15C0();
  sub_1000C1598();
  sub_100054740();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void sub_1003AB620()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003AB708(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 32) requestID];
  v7 = *(*(*a2 + 8) + 40);
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:*(a1 + 40)];
  v11 = 138544130;
  v12 = @"removeOutputDeviceUIDsFromParentGroup";
  sub_1000C15C0();
  v13 = v6;
  v14 = v9;
  v15 = v7;
  v16 = 2048;
  v17 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v11, 0x2Au);
}

void sub_1003AB80C(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = *(a1 + 32);
  v7 = [a2 error];
  v8 = [a2 playerPath];
  v9 = +[NSDate date];
  [v9 timeIntervalSinceDate:*(a1 + 40)];
  v11 = 138544386;
  v12 = @"proactivePrepareForSetQueue";
  v13 = 2114;
  v14 = v6;
  v15 = 2114;
  v16 = v7;
  v17 = 2114;
  v18 = v8;
  v19 = 2048;
  v20 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v11, 0x34u);
}

void sub_1003AB928(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 error];
  v7 = +[NSDate date];
  [v7 timeIntervalSinceDate:*(a1 + 40)];
  v9 = 138544130;
  v10 = @"proactivePrepareForSetQueue";
  v11 = 2114;
  v12 = v5;
  v13 = 2114;
  v14 = v6;
  v15 = 2048;
  v16 = v8;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v9, 0x2Au);
}

void sub_1003ABBD0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[MRDGroupSessionPushMessenger] Error retrieving firewall: %{public}@.", &v2, 0xCu);
}

void sub_1003ABC48(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[MRDGroupSessionPushMessenger] Error updating firewall entries: %{public}@.", &v2, 0xCu);
}

void sub_1003ABCC0(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 bundleIdentifier];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error fetching %{public}@ process handle: %{public}@", &v6, 0x16u);
}

void sub_1003ABD88(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[VirtualAudioInputServer] Created new device with descriptor: %{public}@", &v2, 0xCu);
}

void sub_1003ABE00(void *a1, NSObject *a2)
{
  v3 = 134349056;
  v4 = [a1 count];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[VirtualAudioInputServer] Notifying %{public}llu endpoints of newly connected device", &v3, 0xCu);
}

void sub_1003ABF40()
{
  sub_1001779D0();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1003ABFB0(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134349056;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[VirtualAudioInputServer] Notifying %{public}llu endpoints of disconnected device", buf, 0xCu);
}

void sub_1003AC0AC()
{
  sub_1001779D0();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1003AC130(uint64_t a1, NSObject *a2)
{
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDVolumeController] Error setting AVSC isMuted: %@", &v3, 0xCu);
}

void sub_1003AC1B4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to bless client [sync task assertion acquisition failed] %{public}@", &v2, 0xCu);
}

void sub_1003AC22C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to bless client [bless failed] %{public}@", &v2, 0xCu);
}

void sub_1003AC2A4(id *a1, NSObject *a2)
{
  v3 = [*a1 UUIDString];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Requested to invalidate a critical section assertion, but missing assertion for requestID: %@", &v4, 0xCu);
}

void sub_1003AC340(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = [*(a1 + 32) commandID];
  v7 = [a2 error];
  v8 = [a2 playerPath];
  v9 = +[NSDate date];
  [v9 timeIntervalSinceDate:*(a1 + 40)];
  v12[0] = 138544386;
  sub_10018303C();
  v13 = v7;
  v14 = v10;
  v15 = v8;
  v16 = 2048;
  v17 = v11;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", v12, 0x34u);
}

void sub_1003AC45C(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = [*(a1 + 32) commandID];
  v7 = [a2 error];
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:*(a1 + 40)];
  v10[0] = 138544130;
  sub_10018303C();
  v11 = v7;
  v12 = 2048;
  v13 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v10, 0x2Au);
}

void sub_1003AC5DC()
{
  sub_1000C15B0();
  v2 = [sub_10015B0A8(v1) requestID];
  v3 = +[NSDate date];
  sub_10015B0B4(v3, v4);
  sub_100066F24();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10);
}

void sub_1003AC688(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) requestDetails];
  v8 = [v7 requestID];
  v9 = +[NSDate date];
  [v9 timeIntervalSinceDate:*(a1 + 56)];
  v11 = 138544130;
  v12 = v6;
  v13 = 2114;
  v14 = v8;
  v15 = 2114;
  v16 = a2;
  v17 = 2048;
  v18 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v11, 0x2Au);
}

void sub_1003AC794()
{
  sub_1000C15B0();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = +[NSDate date];
  [v5 timeIntervalSinceDate:*(v1 + 56)];
  *v13 = 138544130;
  *&v13[4] = v3;
  *&v13[12] = 2114;
  *&v13[14] = v4;
  *&v13[22] = 2114;
  LOWORD(v14) = 2048;
  *(&v14 + 2) = v6;
  sub_100066F50(&_mh_execute_header, v7, v8, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16], v0, v14, WORD4(v14));
}

void sub_1003AC860(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[MRDIDSServiceConnection] Remove handler for type=%@, %@", &v4, 0x16u);
}

void sub_1003AC8EC()
{
  sub_1000C15B0();
  v2 = [*(v1 + 40) requestID];
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(v0 + 48)];
  sub_100066F24();
  sub_100066F50(&_mh_execute_header, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9);
}

id sub_1003AC9CC(void *a1)
{
  if (a1)
  {
    v1 = [a1 discoveredConcreteOutputDevices];
    v2 = [v1 msv_map:&stru_1004C05A0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1003ACA2C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v39 = +[NSMutableDictionary dictionary];
    v4 = [v3 uniqueIdentifier];
    sub_100196A70(v4, v5, v6, kMRAVOutputContextIdentifierUserInfoKey, v7, v8, v9, v10, v35, v39);

    v11 = [v3 outputDeviceUIDs];
    sub_100196A70(v11, v12, v13, MRAVOutputContextExistingOutputDeviceIdentifiersUserInfoKey, v14, v15, v16, v17, v36, v40);

    v18 = [*(a1 + 8) requestDetails];
    v19 = [v18 initiator];
    sub_100196AB0(v19, v20, v21, MRAVOutputContextModificationInitiatorUserInfoKey, v22, v23, v24, v25, v37, v41);

    v26 = [*(a1 + 8) requestDetails];
    v27 = [v26 requestID];
    sub_100196A70(v27, v28, v29, MRAVOutputContextModificationIdentifierUserInfoKey, v30, v31, v32, v33, v38, v42);

    v34 = +[NSNotificationCenter defaultCenter];
    [v34 postNotificationName:MRAVOutputContextModificationRequestToClearPredictedRoutesNotifications object:v3 userInfo:v43];
  }
}

void sub_1003ACB7C(id *a1, void *a2, uint64_t a3, void *a4)
{
  v24 = a4;
  if (a1)
  {
    [a2 timeIntervalSinceNow];
    v7 = v6;
    v8 = [a1[1] type];
    v9 = 0;
    v10 = 0;
    v11 = &kMRTopologyModificationTypeAdd;
    switch(v8)
    {
      case 0uLL:
        goto LABEL_15;
      case 1uLL:
        goto LABEL_5;
      case 2uLL:
        v10 = 1;
        v11 = &kMRTopologyModificationTypeRemove;
        goto LABEL_5;
      case 3uLL:
        v10 = 0;
        v11 = &kMRTopologyModificationTypeSet;
LABEL_5:
        v9 = *v11;
        break;
      default:
        v10 = 1;
        break;
    }

    v12 = fabs(v7);
    v13 = [a1[1] requestDetails];
    v14 = [v13 reason];
    MRAnalyticsCompositionForLocalDevice();
    v15 = [a1 discoveredConcreteOutputDevices];
    MRAnalyticsTrackTopologyChangeEvent();

    v16 = [a1 discoveredConcreteOutputDevices];
    v17 = [v16 firstObject];
    v18 = [v17 deviceType];

    v19 = [a1 discoveredConcreteOutputDevices];
    v20 = [v19 mr_any:&stru_1004C0810];

    v21 = [a1 discoveredConcreteOutputDevices];
    v22 = [v21 count];

    if ((v10 & 1) == 0)
    {
      v23 = v22 == 1 && v18 == 1;
      if (v23 && (v20 & 1) == 0)
      {
        [MRDRTCReporting reportRoutePickerInteractionWithDuration:v24 == 0 success:v12];
      }
    }

LABEL_15:
  }
}

void sub_1003ACD74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_19;
  }

  v10 = objc_alloc_init(NSMutableArray);
  v11 = [MRAVRoutingDiscoverySession discoverySessionWithEndpointFeatures:1];
  [v11 setDiscoveryMode:3];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100190128;
  v48[3] = &unk_1004C0658;
  v12 = v10;
  v49 = v12;
  v50 = a1;
  v36 = v9;
  v54 = v9;
  v51 = v7;
  v37 = v8;
  v52 = v8;
  v35 = v11;
  v53 = v35;
  v13 = objc_retainBlock(v48);
  v14 = [*(a1 + 8) type];
  v15 = [*(a1 + 8) requestDetails];
  v16 = [v15 requestID];

  if (v14 == 3)
  {
    v17 = _MRLogForCategory();
    [v16 hash];
    sub_100196A00();
    if (!v20 & v19)
    {
      goto LABEL_15;
    }

    v21 = v24;
    if (!os_signpost_enabled(v17))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v22 = "SetOutputDevices.discover";
    goto LABEL_14;
  }

  if (v14 == 2)
  {
    v17 = _MRLogForCategory();
    [v16 hash];
    sub_100196A00();
    if (!v20 & v19)
    {
      goto LABEL_15;
    }

    v21 = v23;
    if (!os_signpost_enabled(v17))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v22 = "RemoveOutputDevices.discover";
    goto LABEL_14;
  }

  if (v14 == 1)
  {
    v17 = _MRLogForCategory();
    [v16 hash];
    sub_100196A00();
    if (!v20 & v19)
    {
      goto LABEL_15;
    }

    v21 = v18;
    if (!os_signpost_enabled(v17))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v22 = "AddOutputDevices.discover";
LABEL_14:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v21, v22, "", buf, 2u);
LABEL_15:
  }

  v38 = v7;
  v25 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  [v25 setCachedDiscoveryEnabled:1];
  v26 = [[NSMutableArray alloc] initWithObjects:{AVAudioSessionCategoryPlayback, 0}];
  if ((MSVDeviceIsAudioAccessory() & 1) == 0)
  {
    v55[0] = &stru_1004D2058;
    v55[1] = AVAudioSessionCategoryPlayAndRecord;
    v27 = [NSArray arrayWithObjects:v55 count:2];
    [v26 addObjectsFromArray:v27];
  }

  v28 = [*(a1 + 8) outputDeviceUIDs];
  v29 = [*(a1 + 8) requestDetails];
  v30 = qos_class_self();
  v31 = dispatch_get_global_queue(v30, 0);
  sub_100196970();
  v40 = 3221225472;
  v41 = sub_10019056C;
  v42 = &unk_1004C0680;
  v43 = v12;
  v44 = v16;
  v45 = v13;
  v46 = v14;
  v32 = v13;
  v33 = v16;
  v34 = v12;
  [v25 searchForOutputDevices:v28 categories:v26 timeout:v29 details:v31 queue:v39 completion:7.0];

  v8 = v37;
  v7 = v38;
  v9 = v36;
LABEL_19:
}

void sub_1003AD1B8(id *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v55 = +[NSMutableDictionary dictionary];
    v4 = [v3 uniqueIdentifier];
    sub_100196A70(v4, v5, v6, kMRAVOutputContextIdentifierUserInfoKey, v7, v8, v9, v10, v49, v55);

    v11 = [v3 outputDeviceUIDs];
    sub_100196A70(v11, v12, v13, MRAVOutputContextExistingOutputDeviceIdentifiersUserInfoKey, v14, v15, v16, v17, v50, v56);

    v18 = sub_1003AC9CC(a1);
    sub_100196A70(v18, v19, v20, MRAVOutputContextModificationOutputDeviceIdentifiersUserInfoKey, v21, v22, v23, v24, v51, v57);

    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1[1] type]);
    sub_100196A70(v25, v26, v27, MRAVOutputContextModificationTypeUserInfoKey, v28, v29, v30, v31, v52, v58);

    v32 = [a1[1] requestDetails];
    v33 = [v32 reason];
    sub_100196AB0(v33, v34, v35, MRAVOutputContextModificationInitiatorUserInfoKey, v36, v37, v38, v39, v53, v59);

    v40 = [a1[1] requestDetails];
    v41 = [v40 requestID];
    sub_100196A70(v41, v42, v43, MRAVOutputContextModificationIdentifierUserInfoKey, v44, v45, v46, v47, v54, v60);

    v48 = +[NSNotificationCenter defaultCenter];
    [v48 postNotificationName:MRAVOutputContextDidBeginModificationNotification object:v3 userInfo:v61];
  }
}

void sub_1003AD364(id *a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v51 = +[NSMutableDictionary dictionary];
    v7 = [v6 uniqueIdentifier];
    sub_100196AB0(v7, v8, v9, kMRAVOutputContextIdentifierUserInfoKey, v10, v11, v12, v13, v46, v51);

    v14 = [v6 outputDeviceUIDs];
    sub_100196AB0(v14, v15, v16, MRAVOutputContextExistingOutputDeviceIdentifiersUserInfoKey, v17, v18, v19, v20, v47, v52);

    v21 = sub_1003AC9CC(a1);
    sub_100196AB0(v21, v22, v23, MRAVOutputContextModificationOutputDeviceIdentifiersUserInfoKey, v24, v25, v26, v27, v48, v53);

    v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1[1] type]);
    sub_100196AB0(v28, v29, v30, MRAVOutputContextModificationTypeUserInfoKey, v31, v32, v33, v34, v49, v54);

    v35 = [a1[1] requestDetails];
    v36 = [v35 reason];
    [v55 setObject:v36 forKeyedSubscript:MRAVOutputContextModificationInitiatorUserInfoKey];

    v37 = [a1[1] requestDetails];
    v38 = [v37 requestID];
    sub_100196AB0(v38, v39, v40, MRAVOutputContextModificationIdentifierUserInfoKey, v41, v42, v43, v44, v50, v55);

    [v56 setObject:v5 forKeyedSubscript:MRAVOutputContextModificationErrorUserInfoKey];
    v45 = +[NSNotificationCenter defaultCenter];
    [v45 postNotificationName:MRAVOutputContextDidFinishModificationNotification object:v6 userInfo:v56];
  }
}

void sub_1003AD548(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v204 = [v7 avOutputContext];
    v10 = dword_100529674++;
    if (v10 <= 3)
    {
      v11 = [v204 contextID];

      if (!v11)
      {
        v70 = _MRLogForCategory();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v244 = v7;
          _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "[OutputContextModification] performModificationWithOutputContext failed with outputContext: %@", buf, 0xCu);
        }

        [MSVAutoBugCapture snapshotWithDomain:MSVAutoBugCaptureDomainMediaRemote type:@"OutputContext" subType:@"Modification" context:@"Nil OutputContext" triggerThresholdValues:0 events:0 completion:0];
        v67 = [[NSError alloc] initWithMRError:32 description:@"Nil OutputContext"];
        v9[2](v9, v67);
        goto LABEL_41;
      }
    }

    v201 = v9;
    if (!v8)
    {
      v8 = &_dispatch_main_q;
      v12 = &_dispatch_main_q;
    }

    v13 = +[NSDate date];
    v14 = [a1[1] requestDetails];
    v15 = [v14 requestID];

    v16 = [NSString alloc];
    v17 = MRAVOutputDeviceArrayDescription();
    v18 = [v16 initWithFormat:@"devices=%@, outputContext=%@", v17, v7];

    v203 = a1;
    v19 = [a1[1] type];
    v20 = v19;
    if (v19 == 3)
    {
      v21 = _MRLogForCategory();
      [v15 hash];
      sub_100196A00();
      if (!(!v23 & v22))
      {
        v33 = sub_100196B10();
        if (os_signpost_enabled(v33))
        {
          *buf = 0;
          sub_1001969B0(&_mh_execute_header, v34, v35, v36, "SetOutputDevices.perform", "");
        }
      }

      v28 = @"SetOutputDevices.perfrom";
    }

    else if (v19 == 2)
    {
      v21 = _MRLogForCategory();
      [v15 hash];
      sub_100196A00();
      if (!(!v23 & v22))
      {
        v29 = sub_100196B10();
        if (os_signpost_enabled(v29))
        {
          *buf = 0;
          sub_1001969B0(&_mh_execute_header, v30, v31, v32, "RemoveOutputDevices.perform", "");
        }
      }

      v28 = @"RemoveOutputDevices.perform";
    }

    else
    {
      if (v19 != 1)
      {
        v28 = @"UnknownOutputDevices.perform";
LABEL_23:
        v37 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", v28, v15];
        v38 = v37;
        if (v18)
        {
          [v37 appendFormat:@" for %@", v18];
        }

        v39 = _MRLogForCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v244 = v38;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
        }

        v40 = [NSString alloc];
        v41 = [v204 outputDevices];
        v202 = [v40 initWithFormat:@"Existing devices in context %@", v41];

        v42 = _MRLogForCategory();
        if (sub_100196AE0(v42))
        {
          sub_1001968E4(5.8383e-34);
          *(v43 + 14) = v15;
          sub_100196AA4();
          v245 = v202;
          sub_100196918(&_mh_execute_header, v44, v45, "Update: %{public}@<%{public}@> %@");
        }

        v228[0] = _NSConcreteStackBlock;
        v228[1] = 3221225472;
        v228[2] = sub_1001916D4;
        v228[3] = &unk_1004C0780;
        v188 = v204;
        v229 = v188;
        v230 = v28;
        v46 = v15;
        v231 = v46;
        v191 = v18;
        v232 = v191;
        v192 = v13;
        v233 = v192;
        v9 = v201;
        v237 = v201;
        v8 = v8;
        v234 = v8;
        v235 = v203;
        v197 = v7;
        v236 = v197;
        v238 = v20;
        v47 = objc_retainBlock(v228);
        v242 = @"com.apple.avfoundation.allows-set-output-device";
        [NSArray arrayWithObjects:&v242 count:1];
        v48 = MRMediaRemoteCopyEntitlements();
        v49 = [v48 objectForKeyedSubscript:@"com.apple.avfoundation.allows-set-output-device"];
        v50 = v49;
        if (!v49 || ([v49 BOOLValue] & 1) == 0)
        {
          v51 = _MRLogForCategory();
          if (sub_100196AE0(v51))
          {
            sub_1001968E4(5.8383e-34);
            *(v52 + 14) = v46;
            sub_100196AA4();
            v245 = @"Missing entitlement needed to modify output context. Operation will likley not work";
            sub_100196918(&_mh_execute_header, v53, v54, "Update: %{public}@<%{public}@> %@");
          }
        }

        v196 = v50;
        v190 = v48;
        v55 = [MRBlockGuard alloc];
        v200 = v46;
        v183 = v28;
        v184 = v46;
        v56 = [[NSString alloc] initWithFormat:@"%@<%@>"];
        v225[0] = _NSConcreteStackBlock;
        v225[1] = 3221225472;
        v225[2] = sub_100191EE8;
        v225[3] = &unk_1004B9BE0;
        v226 = v28;
        v57 = v47;
        v227 = v57;
        v58 = [v55 initWithTimeout:v56 reason:v225 handler:60.0];

        v222[0] = _NSConcreteStackBlock;
        v222[1] = 3221225472;
        v222[2] = sub_100191F8C;
        v222[3] = &unk_1004B9BE0;
        v59 = v58;
        v223 = v59;
        v60 = v57;
        v224 = v60;
        v199 = objc_retainBlock(v222);
        v194 = v59;
        v195 = v60;
        if ([v203[1] type] == 3)
        {
          v61 = [v203[1] outputDeviceUIDs];
          v62 = [v61 count];

          if (!v62)
          {
            v187 = v8;
            v189 = v7;
            v66 = MRMediaRemoteCopyLocalAirPlayReceiverTightSyncIdentity();
            v71 = objc_alloc_init(NSMutableArray);
            v218 = 0u;
            v219 = 0u;
            v220 = 0u;
            v221 = 0u;
            v72 = [v197 outputDevices];
            v73 = [v72 countByEnumeratingWithState:&v218 objects:v241 count:16];
            if (v73)
            {
              v62 = v73;
              v74 = *v219;
              do
              {
                for (i = 0; i != v62; i = i + 1)
                {
                  if (*v219 != v74)
                  {
                    objc_enumerationMutation(v72);
                  }

                  v76 = *(*(&v218 + 1) + 8 * i);
                  if (([v76 isLocalDevice] & 1) == 0)
                  {
                    v77 = [v76 uid];
                    v78 = [v77 isEqualToString:v66];

                    if ((v78 & 1) == 0)
                    {
                      [v71 addObject:v76];
                    }
                  }
                }

                v62 = [v72 countByEnumeratingWithState:&v218 objects:v241 count:16];
              }

              while (v62);
            }

            if ([v71 count])
            {
              v139 = v203[1];
              v140 = [v71 msv_compactMap:&stru_1004C07A0];
              v141 = [v139 copyWithType:2 outputDeviceUIDs:v140];

              v142 = [[MRDOutputContextModification alloc] initWithRequest:v141];
              v143 = _MRLogForCategory();
              v8 = v187;
              v9 = v201;
              v69 = v190;
              v68 = v191;
              if (sub_100196AE0(v143))
              {
                sub_1001968E4(5.8383e-34);
                *(v144 + 14) = v200;
                sub_100196AA4();
                v245 = @"instead of setting nil devices removing all non local devices...";
                sub_100196918(&_mh_execute_header, v145, v146, "Update: %{public}@<%{public}@> %@");
              }

              v216[0] = _NSConcreteStackBlock;
              v216[1] = 3221225472;
              v216[2] = sub_100191FF8;
              v216[3] = &unk_1004B6FE8;
              v64 = v199;
              v217 = v199;
              sub_1003ACD74(v142, v197, v187, v216);

              v7 = v189;
              v65 = v200;
            }

            else
            {
              v79 = _MRLogForCategory();
              v8 = v187;
              v65 = v200;
              v9 = v201;
              v69 = v190;
              v68 = v191;
              if (sub_100196AE0(v79))
              {
                sub_1001968E4(5.8383e-34);
                *(v80 + 14) = v200;
                sub_100196AA4();
                v245 = @"instead of setting nil devices removing all non local devices, but only local devices remain so nothing to do...";
                sub_100196918(&_mh_execute_header, v81, v82, "Update: %{public}@<%{public}@> %@");
              }

              v64 = v199;
              (v199[2])(v199, 0);
              v7 = v189;
            }

            v67 = v192;
            goto LABEL_40;
          }
        }

        if ([v203[1] type] == 2 && (objc_msgSend(v203[1], "shouldNotPauseIfLastDeviceRemoved") & 1) == 0)
        {
          v63 = +[MROrigin localOrigin];
          v209[0] = _NSConcreteStackBlock;
          v209[1] = 3221225472;
          v209[2] = sub_100192008;
          v209[3] = &unk_1004C07F0;
          v64 = v199;
          v215 = v199;
          v210 = v197;
          v211 = v203;
          v212 = v28;
          v65 = v200;
          v213 = v200;
          v214 = v8;
          [MRDeviceInfoRequest deviceInfoForOrigin:v63 queue:v214 completion:v209];

          v66 = v215;
          v67 = v192;
LABEL_39:
          v69 = v190;
          v68 = v191;
LABEL_40:

LABEL_41:
          goto LABEL_42;
        }

        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v83 = v203[3];
        v84 = [v83 countByEnumeratingWithState:&v205 objects:v240 count:16];
        if (v84)
        {
          v85 = v84;
          v86 = v7;
          v87 = *v206;
          while (2)
          {
            for (j = 0; j != v85; j = j + 1)
            {
              if (*v206 != v87)
              {
                objc_enumerationMutation(v83);
              }

              v89 = *(*(&v205 + 1) + 8 * j);
              if (([v89 canBeGrouped] & 1) == 0 && (objc_msgSend(v89, "supportsBluetoothSharing") & 1) == 0)
              {
                if ([v203[1] type] == 1)
                {
                  v91 = [v89 canBeGrouped];
                  v92 = [NSString alloc];
                  if (v91)
                  {
                    v93 = @"device %@ does not support bluetooth sharing";
                  }

                  else
                  {
                    v93 = @"device %@ is not groupable";
                  }

                  v94 = [v92 initWithFormat:v93, v89];
                  ErrorWithDescription = MRMediaRemoteCreateErrorWithDescription();

                  (v199[2])(v199, ErrorWithDescription);
                }

                v90 = 0;
                goto LABEL_77;
              }
            }

            v85 = [v83 countByEnumeratingWithState:&v205 objects:v240 count:16];
            if (v85)
            {
              continue;
            }

            break;
          }

          v90 = 1;
LABEL_77:
          v7 = v86;
        }

        else
        {
          v90 = 1;
        }

        sub_1003AEA00(v203, v197);
        v66 = objc_alloc_init(NSMutableDictionary);
        v96 = [v203[1] requestDetails];
        [v96 userInitiated];
        v97 = [sub_1001969D4() numberWithBool:?];
        [v66 setObject:v97 forKeyedSubscript:AVOutputContextOutputDevicesModificationOptionUserInitiated];

        [v66 setObject:v200 forKeyedSubscript:AVOutputContextOutputDevicesModificationOptionCorrelationID];
        v98 = objc_alloc_init(NSMutableDictionary);
        v99 = [v203[1] data];
        v100 = objc_opt_class();
        v101 = NSStringFromClass(v100);
        v198 = v98;
        [v98 setObject:v99 forKeyedSubscript:v101];

        v102 = [v203[3] count];
        if ((v90 & 1) != 0 || v102 <= 1)
        {
          v64 = v199;
          v106 = v188;
          if ([v203[3] count] < 2 || objc_msgSend(v188, "supportsMultipleOutputDevices"))
          {
            if ([v188 supportsMultipleOutputDevices])
            {
              v107 = [v203[1] type];
              v67 = v192;
              if (v107 == 3)
              {
                v103 = v8;
                v105 = [[NSMutableDictionary alloc] initWithDictionary:v66];
                v170 = [v203[1] requestDetails];
                v171 = [v170 label];
                [v105 setObject:v171 forKeyedSubscript:AVOutputContextSetOutputDevicesOptionInitiator];

                v172 = [v203[1] password];

                if (v172)
                {
                  v173 = [v203[1] password];
                  sub_100196A24();

                  [v105 setObject:&__kCFBooleanTrue forKeyedSubscript:AVOutputContextSetOutputDeviceCancelIfAuthRequiredKey];
                }

                v64 = &kMRPlaybackQueueCapabilitiesChangedNotification_ptr;
                [sub_100196A0C() fadeAudio];
                v174 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                [sub_100196A0C() muteUntilFinished];
                v175 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                sub_100196AC8(v176, v177, v178, AVOutputContextSetOutputDevicesOptionDidFailToConnectToOutputDeviceUserInfo, v179, v180, v181, v182, v183, v184, v185, v186, v188, v190, v191, v192, v194, v195, v196, v98);
                [sub_100196938() setOutputDevices:? options:? queue:? completion:?];
              }

              else if (v107 == 2)
              {
                v103 = v8;
                v105 = [[NSMutableDictionary alloc] initWithDictionary:v66];
                v158 = [v203[1] requestDetails];
                v159 = [v158 label];
                [v105 setObject:v159 forKeyedSubscript:AVOutputContextRemoveOutputDeviceOptionInitiator];

                [v203[1] fadeAudio];
                v160 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                v161 = [v203[1] requestDetails];
                v64 = [v161 reason];
                v162 = [v64 containsString:kMRMigrateInitiatorProximity];

                if (v162)
                {
                  v163 = [v105 setObject:&__kCFBooleanTrue forKeyedSubscript:AVOutputContextRemoveOutputDeviceOptionContinuePlayingAfterLastDeviceRemoved];
                }

                sub_100196AC8(v163, v164, v165, AVOutputContextRemoveOutputDeviceOptionDidFailToConnectToOutputDeviceUserInfo, v166, v167, v168, v169, v183, v184, v185, v186, v188, v190, v191, v192, v194, v195, v196, v198);
                [sub_100196938() removeOutputDevices:? options:? queue:? completion:?];
              }

              else
              {
                if (v107 != 1)
                {
LABEL_107:

                  v65 = v200;
                  v9 = v201;
                  goto LABEL_39;
                }

                v103 = v8;
                v105 = [[NSMutableDictionary alloc] initWithDictionary:v66];
                v108 = [v203[1] requestDetails];
                v109 = [v108 label];
                [v105 setObject:v109 forKeyedSubscript:AVOutputContextAddOutputDeviceOptionInitiator];

                v110 = [v203[1] password];

                if (v110)
                {
                  v111 = [v203[1] password];
                  sub_100196A24();
                }

                v64 = &kMRPlaybackQueueCapabilitiesChangedNotification_ptr;
                [sub_100196A0C() fadeAudio];
                v112 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                [sub_100196A0C() muteUntilFinished];
                v113 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                sub_100196AC8(v114, v115, v116, AVOutputContextAddOutputDeviceOptionDidFailToConnectToOutputDeviceUserInfo, v117, v118, v119, v120, v183, v184, v185, v186, v188, v190, v191, v192, v194, v195, v196, v98);
                [sub_100196938() addOutputDevices:? options:? queue:? completion:?];
              }
            }

            else
            {
              v103 = v8;
              v121 = _MRLogForCategory();
              if (sub_100196AE0(v121))
              {
                sub_1001968E4(5.8383e-34);
                *(v122 + 14) = v200;
                sub_100196AA4();
                v245 = @"outputContext does not support mutiple devices";
                sub_100196918(&_mh_execute_header, v123, v124, "Update: %{public}@<%{public}@> %@");
              }

              v105 = [[NSMutableDictionary alloc] initWithDictionary:v66];
              v125 = [v203[1] type];
              v126 = [v203[1] requestDetails];
              v127 = [v126 label];
              if (v125 == 2)
              {
                [v105 setObject:v127 forKeyedSubscript:AVOutputContextRemoveOutputDeviceOptionInitiator];

                if ([v203[1] shouldNotPauseIfLastDeviceRemoved] && AVOutputContextRemoveOutputDeviceOptionContinuePlayingAfterLastDeviceRemoved)
                {
                  [v105 setObject:&__kCFBooleanTrue forKeyedSubscript:?];
                }

                [v203[1] fadeAudio];
                v128 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                sub_100196AC8(v129, v130, v131, AVOutputContextRemoveOutputDeviceOptionDidFailToConnectToOutputDeviceUserInfo, v132, v133, v134, v135, v183, v184, v185, v186, v188, v190, v191, v192, v194, v195, v196, v198);
                v136 = [v203[3] firstObject];
                v239 = v136;
                v137 = [NSArray arrayWithObjects:&v239 count:1];
                [v106 removeOutputDevices:v137 options:v105 queue:v103 completion:v199];
              }

              else
              {
                [v105 setObject:v127 forKeyedSubscript:AVOutputContextSetOutputDeviceInitiatorKey];

                v147 = [v203[1] password];

                if (v147)
                {
                  v148 = [v203[1] password];
                  sub_100196A24();

                  [v105 setObject:&__kCFBooleanTrue forKeyedSubscript:AVOutputContextSetOutputDeviceCancelIfAuthRequiredKey];
                }

                v136 = &kMRPlaybackQueueCapabilitiesChangedNotification_ptr;
                [sub_100196A0C() fadeAudio];
                v149 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                [sub_100196A0C() muteUntilFinished];
                v150 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                sub_100196AC8(v151, v152, v153, AVOutputContextSetOutputDeviceDidFailToConnectToOutputDeviceUserInfoKey, v154, v155, v156, v157, v183, v184, v185, v186, v188, v190, v191, v192, v194, v195, v196, v198);
                [v203[3] firstObject];
                objc_claimAutoreleasedReturnValue();
                [sub_100196B10() setOutputDevice:0x1004B5000 options:v105 queue:v103 completion:v199];
              }

              v67 = v193;

              v64 = v199;
            }

LABEL_106:

            v8 = v103;
            goto LABEL_107;
          }

          v103 = v8;
          v138 = [[NSString alloc] initWithFormat:@"Output context modification failed. Output context doesn't support multiple devices"];
          v105 = MRMediaRemoteCreateErrorWithDescription();
        }

        else
        {
          v103 = v8;
          v104 = [[NSString alloc] initWithFormat:@"Output context modification failed. Attempted to group multiple devices where at least one is not groupable"];
          v105 = MRMediaRemoteCreateErrorWithDescription();

          v64 = v199;
        }

        (v64)[2](v64, v105);
        v67 = v192;
        goto LABEL_106;
      }

      v21 = _MRLogForCategory();
      [v15 hash];
      sub_100196A00();
      if (!(!v23 & v22))
      {
        v24 = sub_100196B10();
        if (os_signpost_enabled(v24))
        {
          *buf = 0;
          sub_1001969B0(&_mh_execute_header, v25, v26, v27, "AddOutputDevices.perform", "");
        }
      }

      v28 = @"AddOutputDevices.perform";
    }

    goto LABEL_23;
  }

LABEL_42:
}

void sub_1003AE97C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100196950();
  v6 = 3221225472;
  v7 = sub_100192470;
  v8 = &unk_1004B6FE8;
  v4 = *(v3 + 48);
  v9 = *(v3 + 56);
  sub_1003ACD74(v1, v2, v4, v5);
}

void sub_1003AEA00(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    if (([a1[1] type] | 2) == 3)
    {
      [a1 discoveredConcreteOutputDevices];
      objc_claimAutoreleasedReturnValue();
      sub_100196A18();
      sub_1003AED7C();

      v6 = [v4 outputDeviceUIDs];
      v2 = [NSMutableSet setWithArray:v6];

      v7 = [a1 discoveredConcreteOutputDevices];
      v8 = [NSMutableSet setWithArray:v7];

      [v8 minusSet:v2];
      v9 = [a1 discoveredConcreteOutputDevices];
      v42 = _NSConcreteStackBlock;
      v43 = 3221225472;
      v44 = sub_1001924D8;
      v45 = &unk_1004B9608;
      v46 = v8;
      v10 = v8;
      v11 = [v9 msv_filter:&v42];

      if ([v11 count])
      {
        sub_1003AF060();
      }
    }

    v5 = [a1[1] type];
    if (v5 == 3)
    {
      v27 = [v4 outputDeviceUIDs];
      v28 = [sub_10019690C() setWithArray:?];

      v29 = sub_1003AC9CC(a1);
      v19 = [sub_10019690C() setWithArray:?];

      [v28 minusSet:v19];
      v22 = [v4 outputDevices];
      sub_100196950();
      v33 = 3221225472;
      v34 = sub_100192568;
      v35 = &unk_1004B8A40;
      v24 = (v30 + 32);
      v36 = v28;
      v25 = v28;
      v26 = &v32 + 1;
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_5;
      }

      [a1 discoveredConcreteOutputDevices];
      objc_claimAutoreleasedReturnValue();
      v12 = sub_100196A18();
      sub_1003AF32C(v12, v2, v4, v13, v14, v15, v16, v17, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);

      v18 = [v4 outputDeviceUIDs];
      v19 = [NSMutableSet setWithArray:v18];

      v20 = sub_1003AC9CC(a1);
      v21 = [NSMutableSet setWithArray:v20];

      [v21 intersectSet:v19];
      v22 = [a1 discoveredConcreteOutputDevices];
      sub_100196970();
      v38 = 3221225472;
      v39 = sub_100192520;
      v40 = &unk_1004B9608;
      v24 = (v23 + 32);
      v41 = v21;
      v25 = v21;
      v26 = &v37;
    }

    v31 = [v22 msv_filter:v26];

    if ([v31 count])
    {
      sub_1003AF604();
    }
  }

LABEL_5:
}

void sub_1003AED7C()
{
  sub_100196A88();
  sub_100196B1C();
  v4 = v3;
  v5 = v0;
  if (v2)
  {
    +[NSMutableDictionary dictionary];
    objc_claimAutoreleasedReturnValue();
    v6 = [sub_100196A18() uniqueIdentifier];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    v7 = [v5 outputDeviceUIDs];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    v8 = [v4 msv_compactMap:&stru_1004C0830];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    [*(v2 + 8) type];
    v9 = [sub_100196AF8() numberWithUnsignedInteger:?];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    v10 = [*(v2 + 8) requestDetails];
    v11 = [v10 reason];
    sub_100196B40();

    v12 = [*(v2 + 8) requestDetails];
    v13 = [v12 requestID];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    [v4 msv_map:&stru_1004C0850];
    objc_claimAutoreleasedReturnValue();
    sub_100196B04();
    v14 = _MRLogForCategory();
    if (sub_100196B28(v14))
    {
      sub_1001968FC();
      sub_100196990(&_mh_execute_header, v15, v16, "[OutputContextModification] Request to add outputDevices %@ to context %@", v17, v18, v19, v20);
    }

    v21 = +[NSNotificationCenter defaultCenter];
    sub_100196A58(v21, v22, MRAVOutputContextModificationRequestToAddOutputDeviceNotification);

    v23 = [v4 msv_firstWhere:&stru_1004C0870];
    if (v23)
    {
      v24 = _MRLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v23 debugName];
        sub_1001968FC();
        sub_1001969E0(&_mh_execute_header, v25, v26, "[OutputContextModification] Will add localDevice %@ to context %@", v27, v28, v29, v30);
      }

      if ((([v23 clusterType] - 1) & 0xFFFFFFFD) == 0)
      {
        MRMediaRemoteSetClusterLeader();
      }

      v31 = +[NSNotificationCenter defaultCenter];
      sub_100196A58(v31, v32, MRAVOutputContextModificationRequestToAddLocalDeviceNotification);
    }
  }

  sub_100196A3C();
}

void sub_1003AF060()
{
  sub_100196A88();
  sub_100196B1C();
  v4 = v3;
  v5 = v0;
  if (v2)
  {
    +[NSMutableDictionary dictionary];
    objc_claimAutoreleasedReturnValue();
    v6 = [sub_100196A18() uniqueIdentifier];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    v7 = [v5 outputDeviceUIDs];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    v8 = [v4 msv_compactMap:&stru_1004C0890];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    [*(v2 + 8) type];
    v9 = [sub_100196AF8() numberWithUnsignedInteger:?];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    v10 = [*(v2 + 8) requestDetails];
    v11 = [v10 reason];
    sub_100196B40();

    v12 = [*(v2 + 8) requestDetails];
    v13 = [v12 requestID];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    [v4 msv_map:&stru_1004C08B0];
    objc_claimAutoreleasedReturnValue();
    sub_100196B04();
    v14 = _MRLogForCategory();
    if (sub_100196B28(v14))
    {
      sub_1001968FC();
      sub_100196990(&_mh_execute_header, v15, v16, "[OutputContextModification] Will add outputDevices %@ to context %@", v17, v18, v19, v20);
    }

    v21 = +[NSNotificationCenter defaultCenter];
    sub_100196A58(v21, v22, MRAVOutputContextModificationWillAddOutputDeviceNotification);

    v23 = [v4 msv_firstWhere:&stru_1004C08D0];
    if (v23)
    {
      v24 = _MRLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v23 debugName];
        sub_1001968FC();
        sub_1001969E0(&_mh_execute_header, v25, v26, "[OutputContextModification] Will add localDevice %@ to context %@", v27, v28, v29, v30);
      }

      v31 = +[NSNotificationCenter defaultCenter];
      sub_100196A58(v31, v32, MRAVOutputContextModificationWillAddLocalDeviceNotification);
    }
  }

  sub_100196A3C();
}

void sub_1003AF32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100196A88();
  a22 = v26;
  a23 = v27;
  sub_100196B1C();
  v29 = v28;
  v30 = v23;
  if (v25)
  {
    +[NSMutableDictionary dictionary];
    objc_claimAutoreleasedReturnValue();
    v31 = [sub_100196A18() uniqueIdentifier];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    v32 = [v30 outputDeviceUIDs];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    v33 = [v29 msv_compactMap:&stru_1004C08F0];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    [*(v25 + 8) type];
    v34 = [sub_100196AF8() numberWithUnsignedInteger:?];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    v35 = [*(v25 + 8) requestDetails];
    v36 = [v35 reason];
    sub_100196B40();

    v37 = [*(v25 + 8) requestDetails];
    v38 = [v37 requestID];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    [v29 msv_map:&stru_1004C0910];
    objc_claimAutoreleasedReturnValue();
    sub_100196B04();
    v39 = _MRLogForCategory();
    if (sub_100196B28(v39))
    {
      LODWORD(a9) = 138412546;
      *(&a9 + 4) = v37;
      sub_1001968FC();
      sub_100196990(&_mh_execute_header, v40, v41, "[OutputContextModification] Request to remove outputDevices %@ from context %@", v42, v43, v44, v45);
    }

    v46 = +[NSNotificationCenter defaultCenter];
    v47 = MRAVOutputContextModificationRequestToRemoveLocalDeviceNotification;
    sub_100196A58(v46, v48, MRAVOutputContextModificationRequestToRemoveLocalDeviceNotification);

    v49 = [v29 msv_firstWhere:&stru_1004C0930];
    if (v49)
    {
      v50 = _MRLogForCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [v49 debugName];
        LODWORD(a9) = 138412546;
        *(&a9 + 4) = v51;
        sub_1001968FC();
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[OutputContextModification] Request to remove localDevice %@ from context %@", &a9, 0x16u);
      }

      v52 = +[NSNotificationCenter defaultCenter];
      sub_100196A58(v52, v53, v47);
    }
  }

  sub_100196A3C();
}

void sub_1003AF604()
{
  sub_100196A88();
  sub_100196B1C();
  v4 = v3;
  v5 = v0;
  if (v2)
  {
    +[NSMutableDictionary dictionary];
    objc_claimAutoreleasedReturnValue();
    v6 = [sub_100196A18() uniqueIdentifier];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    v7 = [v5 outputDeviceUIDs];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    v8 = [v4 msv_compactMap:&stru_1004C0950];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    [*(v2 + 8) type];
    v9 = [sub_100196AF8() numberWithUnsignedInteger:?];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    v10 = [*(v2 + 8) requestDetails];
    v11 = [v10 reason];
    sub_100196B40();

    v12 = [*(v2 + 8) requestDetails];
    v13 = [v12 requestID];
    [sub_10019690C() setObject:? forKeyedSubscript:?];

    [v4 msv_map:&stru_1004C0970];
    objc_claimAutoreleasedReturnValue();
    sub_100196B04();
    v14 = _MRLogForCategory();
    if (sub_100196B28(v14))
    {
      sub_1001968FC();
      sub_100196990(&_mh_execute_header, v15, v16, "[OutputContextModification] Will remove outputDevices %@ from context %@", v17, v18, v19, v20);
    }

    v21 = +[NSNotificationCenter defaultCenter];
    sub_100196A58(v21, v22, MRAVOutputContextModificationWillRemoveOutputDeviceNotification);

    v23 = [v4 msv_firstWhere:&stru_1004C0990];
    if (v23)
    {
      v24 = _MRLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v23 debugName];
        sub_1001968FC();
        sub_1001969E0(&_mh_execute_header, v25, v26, "[OutputContextModification] Will remove localDevice %@ from context %@", v27, v28, v29, v30);
      }

      v31 = +[NSNotificationCenter defaultCenter];
      sub_100196A58(v31, v32, MRAVOutputContextModificationWillRemoveLocalDeviceNotification);
    }
  }

  sub_100196A3C();
}

void sub_1003AF8D0()
{
  sub_1000C15B0();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  *v11 = 138544130;
  *&v11[4] = v2;
  *&v11[12] = 2114;
  *&v11[14] = v3;
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16]);
}

void sub_1003AF98C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[OutputContextModification] Failed to discover all output devices involved in modification: %{public}@", &v3, 0xCu);
}

void sub_1003AFA08()
{
  sub_1000C15B0();
  v2 = *(v1 + 40);
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(v0 + 48)];
  *v10 = 138544130;
  *&v10[4] = @"waitForOutputContextModificationVerification";
  *&v10[12] = 2114;
  *&v10[14] = v2;
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

void sub_1003AFACC()
{
  sub_1000C15B0();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  *v11 = 138544130;
  *&v11[4] = v2;
  *&v11[12] = 2114;
  *&v11[14] = v3;
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16]);
}

void sub_1003AFBCC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRDLockScreenContentController] Finished query with error: %@.", &v2, 0xCu);
}

void sub_1003AFC58(uint64_t a1)
{
  v2 = [*(a1 + 8) reason];
  v3 = [*(a1 + 8) requestID];
  v4 = +[NSDate date];
  v5 = [*(a1 + 8) startDate];
  [v4 timeIntervalSinceDate:v5];
  sub_10019A7B0();
  sub_10019A7DC(&_mh_execute_header, v6, v7, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v8, v9, v10, v11);
}

void sub_1003AFD54(uint64_t a1)
{
  v2 = [*(a1 + 8) reason];
  v3 = [*(a1 + 8) requestID];
  v4 = +[NSDate date];
  v5 = [*(a1 + 8) startDate];
  [v4 timeIntervalSinceDate:v5];
  sub_10019A7B0();
  sub_10019A7DC(&_mh_execute_header, v6, v7, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v8, v9, v10, v11);
}

void sub_1003AFE50(unint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = sub_10019CF04(a1);
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[MRDProactiveRecommendedPlayerController] Reevaluating proactiveRecommendedPlayer event = %{public}@, reason =  %{public}@", &v6, 0x16u);
}

void sub_1003AFF28()
{
  sub_1000C15B0();
  v1 = +[NSDate date];
  [v1 timeIntervalSinceDate:*(v0 + 64)];
  sub_1001A05B0();
  sub_100066F50(&_mh_execute_header, v2, v3, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v4, v5, v6, v7);
}

void sub_1003AFFD4()
{
  sub_1000C15B0();
  v1 = +[NSDate date];
  [v1 timeIntervalSinceDate:*(v0 + 56)];
  sub_1001A05B0();
  sub_100066F50(&_mh_execute_header, v2, v3, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v4, v5, v6, v7);
}

void sub_1003B00A4(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = [*(a1 + 40) requestID];
  v7 = [a2 error];
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:*(a1 + 48)];
  sub_1001A6340();
  v12 = v6;
  v13 = v9;
  v14 = v7;
  v15 = 2048;
  v16 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v11, 0x2Au);
}

void sub_1003B01A0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 40) requestID];
  v7 = +[NSDate date];
  [v7 timeIntervalSinceDate:*(a1 + 48)];
  sub_1001A6340();
  v11 = v6;
  v12 = v8;
  v13 = a2;
  v14 = 2048;
  v15 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v10, 0x2Au);
}

void sub_1003B05FC(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceDate:*(a1 + 56)];
  sub_1001A05B0();
  sub_100066F50(&_mh_execute_header, v3, v4, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v5, v6, v7, v8);
}

void sub_1003B06AC(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceDate:*(a1 + 64)];
  sub_1001A05B0();
  sub_100066F50(&_mh_execute_header, v3, v4, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v5, v6, v7, v8);
}

void sub_1003B07A0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDRemoteDisplayPairingAction] Failed to connect: %{public}@", &v2, 0xCu);
}

void sub_1003B0818(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_1000E4FAC(&_mh_execute_header, a2, a3, "[MRDGroupSession] <%p> Failed to send message with error: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_1003B0894(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDGroupSession] Attempted to approve unknown participant: %@", &v2, 0xCu);
}

void sub_1003B090C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDGroupSession] Attempted to deny unknown participant: %@", &v2, 0xCu);
}

void sub_1003B0A5C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 8) name];
  v7 = [*(a1 + 8) requestID];
  v8 = +[NSDate date];
  v9 = [*(a1 + 8) startDate];
  [v8 timeIntervalSinceDate:v9];
  v11 = 138544130;
  v12 = v6;
  v13 = 2114;
  v14 = v7;
  v15 = 2114;
  v16 = a2;
  v17 = 2048;
  v18 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v11, 0x2Au);
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v4 = _ldiv(a1, a2);
  rem = v4.rem;
  quot = v4.quot;
  result.rem = rem;
  result.quot = quot;
  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v4 = _lldiv(a1, a2);
  rem = v4.rem;
  quot = v4.quot;
  result.rem = rem;
  result.quot = quot;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}