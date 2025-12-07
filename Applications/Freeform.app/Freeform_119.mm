uint64_t sub_100EA4C34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D4C8;

  return sub_100E10814(v2, v3, v4);
}

uint64_t sub_100EA4CF0(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1005B981C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100EA4EBC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6[2] = *(v2 + 16);
  result = sub_10002FA9C(a1, v6);
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100EA4F2C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  v7[1] = *(v1 + 24);
  v8 = v4;
  v9 = v5;
  result = sub_10002FA9C(sub_100EA4E6C, v7);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_100EA4FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10072F93C(a1, v4, v5, v6);
}

uint64_t sub_100EA506C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_10112D6EC(a1, v4, v5, v6);
}

uint64_t sub_100EA5120()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D4C8;

  return sub_100DD55E4(v2, v3);
}

uint64_t sub_100EA51D4()
{
  v1 = *(v0 + 24);
  sub_100DD4EA0(1);
  return v1();
}

uint64_t sub_100EA5218()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D4C8;

  return sub_100DD4AF0(v2, v3);
}

uint64_t sub_100EA52CC(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_100035F90(a1);
  }

  return a1;
}

unint64_t sub_100EA5330()
{
  result = qword_101A21FD8;
  if (!qword_101A21FD8)
  {
    result = swift_getWitnessTable(byte_1014B7050, &type metadata for CRLBoardDataStore.CRLCKRecordCacheError, v0, v1);
    atomic_store(result, &qword_101A21FD8);
  }

  return result;
}

uint64_t sub_100EA5384(void (*a1)(void, __n128), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  (a1)(*(v2 + 24));

  return a2(v2, 32, 7);
}

unint64_t sub_100EA541C()
{
  result = qword_101A21FF0;
  if (!qword_101A21FF0)
  {
    result = swift_getWitnessTable(byte_1014B7010, &type metadata for CRLBoardDataStore.FolderPersistenceError, v0, v1);
    atomic_store(result, &qword_101A21FF0);
  }

  return result;
}

uint64_t sub_100EA54A0()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_100EA54FC(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, double result)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1009F5E18(a1, a2, a3, a4, a5, result);
  }

  return result;
}

double sub_100EA5510(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5, double result)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1009F5D34(a1, a2, a3, a4, a5, result);
  }

  return result;
}

unint64_t sub_100EA559C()
{
  result = qword_101A22048;
  if (!qword_101A22048)
  {
    result = swift_getWitnessTable(byte_101474A84, &type metadata for CRLBoardViewState, v0, v1);
    atomic_store(result, &qword_101A22048);
  }

  return result;
}

uint64_t sub_100EA55F0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1005B981C(&qword_101A21E58, &unk_1014B6810);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);

  return sub_100E2E93C(v4, v0 + v2, v5, v6);
}

uint64_t sub_100EA5708()
{
  v1 = type metadata accessor for CRLFolder(0);
  v19 = *(*(v1 - 1) + 80);
  v2 = (v19 + 24) & ~v19;
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  type metadata accessor for CRLFolderIdentifierStorage(0);

  v7 = v0 + v2 + v1[5];
  v8 = type metadata accessor for CRLFolderIdentifier(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v6(v7, v5);
  }

  v9 = v4 + v1[7];
  v10 = sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = type metadata accessor for CRLFolderCRDTData(0);
  v12 = v11[5];
  v13 = sub_1005B981C(&qword_1019F4850, &unk_1014DCB10);
  (*(*(v13 - 8) + 8))(v9 + v12, v13);
  v14 = v11[6];
  v15 = sub_1005B981C(&qword_1019F4858, &unk_10146C6D0);
  (*(*(v15 - 8) + 8))(v9 + v14, v15);
  v16 = v11[7];
  v17 = sub_1005B981C(&qword_1019F4860, &qword_1014B6AE0);
  (*(*(v17 - 8) + 8))(v9 + v16, v17);

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v19 | 7);
}

uint64_t sub_100EA5A28(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v2 + 16);
  v6 = (v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(v5, v2 + v4, v7, v8);
}

uint64_t getEnumTagSinglePayload for CRLBoardDataStore.CRLBoardColumn(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLBoardDataStore.CRLBoardColumn(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100EA5C88(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100EA5CA4()
{
  result = qword_101A22110;
  if (!qword_101A22110)
  {
    result = swift_getWitnessTable(byte_1014B6D30, &type metadata for CRLBoardDataStore.Table, v0, v1);
    atomic_store(result, &qword_101A22110);
  }

  return result;
}

unint64_t sub_100EA5D40()
{
  result = qword_101A22128;
  if (!qword_101A22128)
  {
    result = swift_getWitnessTable(byte_1014B6E10, &type metadata for CRLBoardDataStore.CRLBoardColumn, v0, v1);
    atomic_store(result, &qword_101A22128);
  }

  return result;
}

unint64_t sub_100EA5D98()
{
  result = qword_101A22130;
  if (!qword_101A22130)
  {
    result = swift_getWitnessTable(asc_1014B6EB0, &type metadata for CRLBoardDataStore.PartialRecordConversionError, v0, v1);
    atomic_store(result, &qword_101A22130);
  }

  return result;
}

unint64_t sub_100EA5DF0()
{
  result = qword_101A22138;
  if (!qword_101A22138)
  {
    result = swift_getWitnessTable(byte_1014B6F18, &type metadata for CRLBoardDataStore.PersistenceError, v0, v1);
    atomic_store(result, &qword_101A22138);
  }

  return result;
}

unint64_t sub_100EA5E48()
{
  result = qword_101A22140;
  if (!qword_101A22140)
  {
    result = swift_getWitnessTable(aY_18, &type metadata for CRLBoardDataStore.CRLCKRecordCacheError, v0, v1);
    atomic_store(result, &qword_101A22140);
  }

  return result;
}

unint64_t sub_100EA5EA0()
{
  result = qword_101A22148;
  if (!qword_101A22148)
  {
    result = swift_getWitnessTable(byte_1014B6FE8, &type metadata for CRLBoardDataStore.FolderPersistenceError, v0, v1);
    atomic_store(result, &qword_101A22148);
  }

  return result;
}

uint64_t sub_100EA5EF4()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100E1A8A8(v3, v4, v0 + v2, v5);
}

uint64_t sub_100EA5FF0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100EA604C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100EA63DC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 BOOLForKey:@"CRLForceDeviceIsNotCapableForUpdateUserDefault"];

  if ((v1 & 1) == 0)
  {
    v3 = [objc_opt_self() sharedDefaults];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 dictionaryForKey:v4];

    if (v5)
    {
      v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = sub_100C08818(v6);

      if (v7)
      {
        if (*(v7 + 16))
        {
          v8 = sub_10000BE7C(0xD000000000000012, 0x80000001015935E0);
          if (v9)
          {
            v10 = *(*(v7 + 56) + 8 * v8);

            v11 = [objc_opt_self() crl_platformString];
            v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v14 = v13;

            v18[0] = v12;
            v18[1] = v14;
            __chkstk_darwin(v15);
            v17[2] = v18;
            LOBYTE(v11) = sub_100C08644(sub_1008335B4, v17, v10);

            v2 = v11 ^ 1;
            return v2 & 1;
          }
        }
      }
    }

    v2 = 1;
    return v2 & 1;
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t sub_100EA661C()
{
  v0 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  sub_10061655C(v0, qword_101AD8680);
  sub_1005EB3DC(v0, qword_101AD8680);
  return NSRunLoop.SchedulerTimeType.Stride.init(integerLiteral:)();
}

id sub_100EA66BC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CRLCommonConstants();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100EA6718()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {
    v8 = (v2[4] + *v2[4]);
    v6 = swift_task_alloc();
    v2[7] = v6;
    *v6 = v3;
    v6[1] = sub_100EA68E8;
    v7 = v2[2];

    return v8(v7);
  }
}

uint64_t sub_100EA68E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_100EA69DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100EA78F8();
  }

  return result;
}

double sub_100EA6A3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1009E0B1C();
    sub_1009E0B1C();
  }

  return result;
}

void sub_100EA6AA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.dataSync;
    v5 = static os_log_type_t.default.getter();
    sub_100005404(v4, &_mh_execute_header, v5, "User attempted to share a board that has not yet synced, ensuring we save this board as soon as possible. Saving immediately.", 125, 2, _swiftEmptyArrayStorage);
    v6 = *(v3 + 24);
    sub_1009E0B44();
  }
}

uint64_t sub_100EA6B74()
{
  v1 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = *(v0 + 80);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 96);
  if (v7)
  {
    v8 = objc_opt_self();
    swift_unknownObjectRetain();
    v9 = [v8 defaultCenter];
    [v9 removeObserver:v7];
    swift_unknownObjectRelease();
  }

  v10 = *(v0 + 88);
  if (v10)
  {
    v11 = objc_opt_self();
    swift_unknownObjectRetain();
    v12 = [v11 defaultCenter];
    [v12 removeObserver:v10];
    swift_unknownObjectRelease();
  }

  v13 = *(v0 + 104);
  if (v13)
  {
    v14 = objc_opt_self();
    swift_unknownObjectRetain();
    v15 = [v14 defaultCenter];
    [v15 removeObserver:v13];
    swift_unknownObjectRelease();
  }

  v16 = *(v0 + 24);
  v17 = *(v0 + 40);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v16;
  v19[5] = v17;
  v19[6] = &off_1018B8A98;
  v20 = v16;
  swift_retain_n();
  v21 = v20;
  sub_10064191C(0, 0, v3, &unk_1014B7328, v19);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_100EA6E78()
{
  sub_100EA6B74();

  return swift_deallocClassInstance();
}

void sub_100EA6EAC(uint64_t a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
  if (v2 != (a1 & 1) && (*(v1 + 137) & 1) == 0)
  {
    if (a1)
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v3 = static OS_os_log.crlDefault;
      v4 = static os_log_type_t.default.getter();
      sub_100005404(v3, &_mh_execute_header, v4, "Posting syncDidBegin notification.", 34, 2, _swiftEmptyArrayStorage);
      v5 = [objc_opt_self() defaultCenter];
      if (qword_1019F2568 != -1)
      {
        v10 = v5;
        swift_once();
        v5 = v10;
      }

      v6 = &qword_101AD86A0;
    }

    else
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v7 = static OS_os_log.crlDefault;
      v8 = static os_log_type_t.default.getter();
      sub_100005404(v7, &_mh_execute_header, v8, "Posting syncDidEnd notification.", 32, 2, _swiftEmptyArrayStorage);
      v5 = [objc_opt_self() defaultCenter];
      if (qword_1019F2560 != -1)
      {
        v11 = v5;
        swift_once();
        v5 = v11;
      }

      v6 = &qword_101AD8698;
    }

    v9 = v5;
    [v5 postNotificationName:*v6 object:v1 userInfo:0];
  }
}

void sub_100EA70C0(uint64_t a1)
{
  v2 = *(v1 + 137);
  *(v1 + 137) = a1;
  if (v2 != (a1 & 1) && (*(v1 + 136) & 1) == 0)
  {
    if (a1)
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v3 = static OS_os_log.crlDefault;
      v4 = static os_log_type_t.default.getter();
      sub_100005404(v3, &_mh_execute_header, v4, "Posting syncDidBegin notification.", 34, 2, _swiftEmptyArrayStorage);
      v5 = [objc_opt_self() defaultCenter];
      if (qword_1019F2568 != -1)
      {
        v10 = v5;
        swift_once();
        v5 = v10;
      }

      v6 = &qword_101AD86A0;
    }

    else
    {
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v7 = static OS_os_log.crlDefault;
      v8 = static os_log_type_t.default.getter();
      sub_100005404(v7, &_mh_execute_header, v8, "Posting syncDidEnd notification.", 32, 2, _swiftEmptyArrayStorage);
      v5 = [objc_opt_self() defaultCenter];
      if (qword_1019F2560 != -1)
      {
        v11 = v5;
        swift_once();
        v5 = v11;
      }

      v6 = &qword_101AD8698;
    }

    v9 = v5;
    [v5 postNotificationName:*v6 object:v1 userInfo:0];
  }
}

uint64_t sub_100EA72F4()
{
  sub_1009E0B1C();
  v1.n128_f64[0] = sub_1009E0B1C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100EA7364(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  *(v2 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100EA7400, 0, 0);
}

uint64_t sub_100EA7400(uint64_t a1)
{
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v2 = v1[2];
  v3 = v1[3];
  v4 = static OS_os_log.dataSync;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "About to moveEntirePersistedCacheIntoDataModel as a startup maintenance task", 76, 2, _swiftEmptyArrayStorage);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  v1[4] = sub_10064191C(0, 0, v3, &unk_1014B7320, v7);
  v8 = swift_task_alloc();
  v1[5] = v8;
  *v8 = v1;
  v8[1] = sub_100EA75B0;

  return Task<>.value.getter();
}

uint64_t sub_100EA75B0()
{

  return _swift_task_switch(sub_100EA76C8, 0, 0);
}

uint64_t sub_100EA76C8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100EA774C()
{
  v1 = *(*(v0[8] + 56) + 16);
  v2 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1009F75C8;
  *(v4 + 24) = v3;
  v0[6] = sub_10002AAE4;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = *"";
  v0[4] = sub_10002AAB8;
  v0[5] = &unk_1018A7218;
  v5 = _Block_copy(v0 + 2);
  v6 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[1];

    v7();
  }
}

void sub_100EA78F8()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v56[-v3];
  v5 = *(v0 + 128);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = *(v1 + 112);
  os_unfair_lock_unlock(*(v5 + 16));
  v7 = Notification.name.getter();
  v8 = qword_1019F2530;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    if (!v6)
    {
      return;
    }

    goto LABEL_9;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {

    if (!v6)
    {
      return;
    }

    goto LABEL_9;
  }

  if (qword_1019F2528 != -1)
  {
    swift_once();
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

LABEL_17:
    v20 = Notification.userInfo.getter();
    if (v20)
    {
      v21 = sub_10007C02C(v20);

      if (v21)
      {
        if (*(v21 + 16) && (v22 = sub_10000BE7C(0xD000000000000019, 0x80000001015A4B80), (v23 & 1) != 0))
        {
          sub_100064288(*(v21 + 56) + 32 * v22, v58);

          if (swift_dynamicCast())
          {
            v24 = v57;
LABEL_28:
            v32 = Notification.userInfo.getter();
            if (v32)
            {
              v33 = sub_10007C02C(v32);

              if (v33)
              {
                if (*(v33 + 16) && (v34 = sub_10000BE7C(0xD000000000000010, 0x80000001015A4BA0), (v35 & 1) != 0))
                {
                  sub_100064288(*(v33 + 56) + 32 * v34, v58);

                  if (swift_dynamicCast())
                  {
                    v36 = v57;
                    goto LABEL_36;
                  }
                }

                else
                {
                }
              }
            }

            v36 = 0;
LABEL_36:
            if (!v6)
            {
              return;
            }

            v37 = Notification.userInfo.getter();
            if (!v37)
            {
              goto LABEL_45;
            }

            v38 = sub_10007C02C(v37);

            if (!v38)
            {
              goto LABEL_45;
            }

            if (!*(v38 + 16) || (v39 = sub_10000BE7C(0xD000000000000010, 0x800000010155F8A0), (v40 & 1) == 0))
            {

              goto LABEL_45;
            }

            sub_100064288(*(v38 + 56) + 32 * v39, v58);

            sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_45:
              if (qword_1019F2270 != -1)
              {
                swift_once();
              }

              v42 = static OS_os_log.dataSync;
              v43 = static os_log_type_t.error.getter();
              sub_100005404(v42, &_mh_execute_header, v43, "Missing board ownerName in data store save notification", 55, 2, _swiftEmptyArrayStorage);
              sub_1009E0B44();
LABEL_9:
              sub_1009E0B44();
              return;
            }

            sub_100BC1A90(v57, v4);

            v41 = type metadata accessor for CRLBoardIdentifier(0);
            if ((*(*(v41 - 8) + 48))(v4, 1, v41) == 1)
            {
              sub_10000CAAC(v4, &unk_1019F52D0, &unk_10147C1C0);
              goto LABEL_45;
            }

            v44 = &v4[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
            v46 = *v44;
            v45 = v44[1];

            sub_100086F34(v4);
            if ((v46 || v45 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              if (v46 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v45 != v47)
              {
                v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v48 = 32;
                if (v55)
                {
                  v48 = 24;
                }

                goto LABEL_55;
              }
            }

            v48 = 24;
LABEL_55:
            v49 = *(v1 + v48);
            v50 = qword_1019F2270;
            v51 = v49;
            if (v50 != -1)
            {
              swift_once();
            }

            v52 = static OS_os_log.dataSync;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146BDE0;
            *(inited + 56) = &type metadata for Bool;
            *(inited + 64) = &protocol witness table for Bool;
            *(inited + 32) = v24;
            *(inited + 96) = &type metadata for Bool;
            *(inited + 104) = &protocol witness table for Bool;
            *(inited + 72) = v36;
            v54 = static os_log_type_t.default.getter();
            sub_100005404(v52, &_mh_execute_header, v54, "Scheduling a sync after saving data. Has significant changes: %d, newAssetsAdded: %d", 84, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            swift_arrayDestroy();
            sub_1009E0B44();

            return;
          }
        }

        else
        {
        }
      }
    }

    v24 = 0;
    goto LABEL_28;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_17;
  }

  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v25 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_10146C6B0;
  v27 = Notification.name.getter();
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_1000053B0();
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v31, "Encountered unknown notification in handleDataStoreDidSaveSyncableData named: %@", 80, 2, v26);
  swift_setDeallocating();
  sub_100005070((v26 + 32));
}

uint64_t sub_100EA81A0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002D3D4;

  return sub_100EA8404(a2);
}

void sub_100EA8260(void *a1, const char *a2, uint64_t a3, char a4, ...)
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = type metadata accessor for CRLSyncController();
  *(inited + 64) = sub_10002A8DC(&qword_101A22428, type metadata accessor for CRLSyncController, &protocol conformance descriptor for NSObject);
  *(inited + 32) = a1;
  v10 = a1;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v11, a2, a3, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    sub_100EA6EAC(a4 & 1);
  }

  else if (static NSObject.== infix(_:_:)())
  {
    sub_100EA70C0(a4 & 1);
  }
}

uint64_t sub_100EA8404(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100EA8424, 0, 0);
}

uint64_t sub_100EA8424()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 128);
  os_unfair_lock_lock(*(v3 + 16));
  *(v2 + 112) = v1 != 0;
  os_unfair_lock_unlock(*(v3 + 16));
  if (*(v2 + 112) != 1 || (sub_1009E0B44(), sub_1009E0B44(), sub_1009E0B1C(), v4.n128_f64[0] = sub_1009E0B1C(), (*(v2 + 112) & 1) == 0))
  {
    v5 = v0[3];
    if ((*(v5 + 136) & 1) != 0 || *(v5 + 137) == 1)
    {
      sub_100EA8260(*(v5 + 24), "Fetch did end for sync controller: %@", 37, 0, v4.n128_f64[0]);
      sub_100EA8260(*(v5 + 32), "Fetch did end for sync controller: %@", 37, 0);
    }
  }

  v6 = v0[1];

  return v6(v4);
}

unint64_t sub_100EA8530()
{
  result = qword_1019F69D8;
  if (!qword_1019F69D8)
  {
    v3 = sub_100006370(255, &qword_1019F69D0, CKRecordZoneID_ptr);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_1019F69D8);
  }

  return result;
}

uint64_t sub_100EA8598(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002D4C8;

  return sub_100EA72D4(a1, v1);
}

uint64_t sub_100EA8634(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10002D3D4;

  return sub_100EA7364(a1, v1);
}

uint64_t sub_100EA86D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100EA8710()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100EA877C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

void *sub_100EA87FC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  sub_100034080(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v5 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v30 = v2;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v32 = *(a1 + 36);
    v12 = *(*(a1 + 48) + 8 * v7);
    v13 = *a2;
    if (*(*a2 + 16) && (v14 = sub_1007CF108(), (v15 & 1) != 0))
    {
      v16 = *(*(v13 + 56) + 8 * v14);
    }

    else
    {
      v16 = 0;
    }

    result = sub_100D62774(v16, v12);
    v33 = v3;
    v19 = v3[2];
    v18 = v3[3];
    if (v19 >= v18 >> 1)
    {
      v29 = result;
      v28 = v17;
      sub_100034080((v18 > 1), v19 + 1, 1);
      v17 = v28;
      result = v29;
      v3 = v33;
    }

    v3[2] = v19 + 1;
    v20 = &v3[2 * v19];
    v20[4] = result;
    v20[5] = v17;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_26;
    }

    v5 = a1 + 64;
    v21 = *(a1 + 64 + 8 * v11);
    if ((v21 & (1 << v7)) == 0)
    {
      goto LABEL_27;
    }

    if (v32 != *(a1 + 36))
    {
      goto LABEL_28;
    }

    v22 = v21 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v30;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v10 = v30;
      v25 = (a1 + 72 + 8 * v11);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1000341AC(v7, v32, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1000341AC(v7, v32, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v10)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_100EA8A5C(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLFreehandDrawingShapeItem(0);
    sub_100EB64C8(&qword_101A21DC8, type metadata accessor for CRLFreehandDrawingShapeItem, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      do
      {
        v23 = v16;
        sub_100EB1208(&v23, a2);

        if (v3)
        {
          break;
        }

        v7 = v14;
        v8 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for CRLFreehandDrawingShapeItem(0);
        swift_dynamicCast();
        v16 = v23;
        v14 = v7;
        v15 = v8;
      }

      while (v23);
    }

LABEL_19:
    sub_100035F90(v4);
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = *(v5 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_100EA8C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v55 = type metadata accessor for UUID();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v54 = &v47 - v18;
  __chkstk_darwin(v19);
  v24 = &v47 - v23;
  if (**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019FAE60)
  {
    v47 = v22;
    v48 = v7;
    v49 = a2;
    v50 = v21;
    v51 = v20;
    v52 = v4;

    v25 = sub_1006CF3CC(1);

    v26 = v11;
    v27 = v25 + *(*v25 + 736);
    swift_beginAccess();
    v60 = v24;
    sub_10000BE14(v27, v13, &unk_101A0F400, &unk_1014746E0);

    v28 = sub_1005B981C(&unk_101A0F410, &unk_10148D730);
    CRRegister.wrappedValue.getter();
    v29 = v60;
    sub_10000CAAC(v13, &unk_101A0F400, &unk_1014746E0);
    sub_10000BE14(v10, v29, &qword_1019F6990, &qword_10146D2F0);
    sub_100EB6578(v10, type metadata accessor for CRLShapeItemParentAffinity);
    swift_beginAccess();
    v30 = v57;
    sub_10124E270(v56);
    swift_endAccess();
    if (v30)
    {

      sub_10000CAAC(v29, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      v56 = v28;
      v57 = v26;
      sub_10000BE14(v27, v13, &unk_101A0F400, &unk_1014746E0);
      sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
      v31 = v48;
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v13, &unk_101A0F400, &unk_1014746E0);
      v32 = *(*v25 + 744);
      swift_beginAccess();
      v33 = v53;
      v34 = v55;
      (*(v53 + 40))(v25 + v32, v31, v55);
      swift_endAccess();
      v35 = v47;
      sub_10000BE14(v49, v47, &qword_1019F6990, &qword_10146D2F0);
      v36 = *(v33 + 48);
      if (v36(v35, 1, v34) == 1)
      {
        v37 = v54;
        sub_10000BE14(v60, v54, &qword_1019F6990, &qword_10146D2F0);
        if (v36(v35, 1, v34) != 1)
        {
          sub_10000CAAC(v35, &qword_1019F6990, &qword_10146D2F0);
        }
      }

      else
      {
        v37 = v54;
        (*(v33 + 32))(v54, v35, v34);
        (*(v33 + 56))(v37, 0, 1, v34);
      }

      v38 = v51;
      sub_10000BE14(v37, v51, &qword_1019F6990, &qword_10146D2F0);
      swift_beginAccess();
      v39 = v50;
      sub_10000BE14(v38, v50, &qword_1019F6990, &qword_10146D2F0);
      v40 = CRRegister.wrappedValue.modify();
      sub_10002C638(v39, v41, &qword_1019F6990, &qword_10146D2F0);
      v40(v59, 0);
      sub_10000CAAC(v38, &qword_1019F6990, &qword_10146D2F0);
      swift_endAccess();

      sub_10000CAAC(v37, &qword_1019F6990, &qword_10146D2F0);
      v42 = *(v52 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
      v43 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem(0));
      *&v43[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
      *&v43[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
      v44 = &v43[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
      *v44 = 0u;
      *(v44 + 1) = 0u;
      *(v44 + 2) = 0u;
      *(v44 + 6) = 0;
      *&v43[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v42;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v25;
      v45 = type metadata accessor for CRLBoardItemBase(0);
      v58.receiver = v43;
      v58.super_class = v45;
      v46 = v42;
      objc_msgSendSuper2(&v58, "init");
      sub_10000CAAC(v60, &qword_1019F6990, &qword_10146D2F0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100EA9414()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for CRLFreehandDrawingItem(0);
    if ([v1 isKindOfClass:swift_getObjCClassFromMetadata()])
    {

      return 1;
    }

    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v46 = v1;
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = NSStringFromClass(ObjCClassFromMetadata);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *(inited + 56) = &type metadata for String;
    v8 = sub_1000053B0();
    *(inited + 32) = v5;
    v9 = inited + 32;
    *(inited + 64) = v8;
    *(inited + 40) = v7;
    v45 = objc_opt_self();
    LODWORD(v10) = [v45 _atomicIncrementAssertCount];
    v47 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v47, "Freehand shapes should only be inside freehand drawings (got %@).", 65, 2u);
    StaticString.description.getter("isFreehandDrawingShape", 22, 2);
    v11 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeItem.swift", 98, 2);
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_36;
    }

LABEL_5:
    v17 = static OS_os_log.crlAssert;
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_10146CA70;
    *(v18 + 56) = &type metadata for Int32;
    *(v18 + 64) = &protocol witness table for Int32;
    *(v18 + 32) = v10;
    v19 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v18 + 96) = v19;
    v20 = sub_1005CF04C();
    *(v18 + 72) = v11;
    *(v18 + 136) = &type metadata for String;
    *(v18 + 144) = v8;
    *(v18 + 104) = v20;
    *(v18 + 112) = v14;
    *(v18 + 120) = v16;
    *(v18 + 176) = &type metadata for UInt;
    *(v18 + 184) = &protocol witness table for UInt;
    *(v18 + 152) = 68;
    v8 = v47;
    *(v18 + 216) = v19;
    *(v18 + 224) = v20;
    *(v18 + 192) = v8;
    v21 = v11;
    v22 = v8;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v18);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v24, "Freehand shapes should only be inside freehand drawings (got %@).", 65, 2, inited);

    type metadata accessor for __VaListBuilder();
    v11 = swift_allocObject();
    v11[2] = 8;
    v11[3] = 0;
    v25 = v11 + 3;
    v11[4] = 0;
    v11[5] = 0;
    v16 = *(inited + 16);
    if (!v16)
    {
LABEL_30:
      v40 = __VaListBuilder.va_list()();
      StaticString.description.getter("isFreehandDrawingShape", 22, 2);
      v41 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeItem.swift", 98, 2);
      v42 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Freehand shapes should only be inside freehand drawings (got %@).", 65, 2);
      v43 = String._bridgeToObjectiveC()();

      [v45 handleFailureInFunction:v41 file:v42 lineNumber:68 isFatal:0 format:v43 args:v40];

      swift_setDeallocating();
      swift_arrayDestroy();

      return 1;
    }

    v26 = 0;
    inited = 40;
    while (1)
    {
      v27 = (v9 + 40 * v26);
      v14 = v27[3];
      sub_100020E58(v27, v14);
      v28 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v10 = *v25;
      v29 = *(v28 + 16);
      v30 = __OFADD__(*v25, v29);
      v31 = *v25 + v29;
      if (v30)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        swift_once();
        goto LABEL_5;
      }

      v32 = v11[4];
      if (v32 >= v31)
      {
        goto LABEL_22;
      }

      if (v32 + 0x4000000000000000 < 0)
      {
        goto LABEL_34;
      }

      v14 = v11[5];
      if (2 * v32 > v31)
      {
        v31 = 2 * v32;
      }

      v11[4] = v31;
      if ((v31 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_35;
      }

      v8 = v28;
      v33 = swift_slowAlloc();
      v34 = v33;
      v11[5] = v33;
      if (v14)
      {
        break;
      }

      v28 = v8;
      if (!v34)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_23:
      v36 = *(v28 + 16);
      if (v36)
      {
        v37 = (v28 + 32);
        v38 = *v25;
        while (1)
        {
          v39 = *v37++;
          *&v34[8 * v38] = v39;
          v38 = *v25 + 1;
          if (__OFADD__(*v25, 1))
          {
            break;
          }

          *v25 = v38;
          if (!--v36)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

LABEL_7:

      if (++v26 == v16)
      {
        goto LABEL_30;
      }
    }

    if (v33 != v14 || v33 >= &v14[8 * v10])
    {
      memmove(v33, v14, 8 * v10);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v28 = v8;
LABEL_22:
    v34 = v11[5];
    if (!v34)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  return 1;
}

void sub_100EA9A2C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v9 != &off_1019FAE60)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v10 = qword_1019FB140;
  swift_beginAccess();
  sub_10000BE14(v9 + v10, v7, &unk_101A0F400, &unk_1014746E0);
  sub_1005B981C(&unk_101A0F410, &unk_10148D730);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v7, &unk_101A0F400, &unk_1014746E0);
  v11 = &v4[*(v2 + 28)];
  v12 = *v11;
  v13 = v11[8];
  sub_100EB6578(v4, type metadata accessor for CRLShapeItemParentAffinity);
  if (v13 == 255 || (v13 & 1) != 0)
  {
    v14 = sub_100D62344(0);
    if (v15)
    {
      return;
    }
  }

  else
  {
    v16 = CRLiCloudConnectionStatus.rawValue.getter(v12);
    v14 = sub_100D62344(v16);
    if (v17)
    {
      return;
    }
  }

  v18 = *(v1 + v8);
  v19 = (*v18 + 464);
  v20 = *v19;
  v21 = (*v19)(v14);
  if ((v23 & 0x100) != 0 && (v21 | v22 || v23 != 0))
  {
    v25 = v21 == 1 && v22 == 0;
    if (v25 && v23 == 0)
    {
      v27 = *v18;
      if (swift_conformsToProtocol2())
      {
        v28 = *(v27 + 840);

        v30 = v28(v29);

        v31 = [v30 inferredAccessibilityDescriptionNoShapeNames];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        return;
      }

      goto LABEL_24;
    }
  }

  v20(v21);
  sub_1009B6B8C();
}

void sub_100EA9DE8()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019FAE60)
  {

    v1 = sub_1006CF3CC(0);

    v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v3 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem(0));
    *&v3[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
    *&v3[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
    v4 = &v3[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *(v4 + 6) = 0;
    *&v3[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
    *&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v2;
    *&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v1;
    v6.receiver = v3;
    v6.super_class = type metadata accessor for CRLBoardItemBase(0);
    v5 = v2;
    objc_msgSendSuper2(&v6, "init");
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100EA9F20(uint64_t a1)
{
  v3 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  __chkstk_darwin(v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = sub_1005B981C(&qword_101A0F3D0, &qword_1014950A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v53 - v10;
  type metadata accessor for CRLFreehandDrawingShapeItem(0);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    v57 = sub_1011F0C64();
    v14 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v14 == &off_1019FAE60)
    {
      v56 = a1;
      v15 = qword_1019FB1D8;
      swift_beginAccess();
      sub_100EB6510(v14 + v15, v8, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      v16 = *(v13 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v16 == &off_1019FAE60)
      {
        swift_beginAccess();
        sub_100EB6510(v16 + v15, v5, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
        sub_100EB64C8(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);
        CRStruct_1.actionUndoingDifference(from:)();
        sub_100EB6578(v5, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
        sub_100EB6578(v8, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
        v17 = sub_1005B981C(&qword_101A22498, &unk_1014B73C0);
        if ((*(*(v17 - 1) + 48))(v11, 1, v17) == 1)
        {
          sub_10000CAAC(v11, &qword_101A0F3D0, &qword_1014950A0);
          v58 = 0uLL;
          v59 = 0;
          v60 = 1;
        }

        else
        {
          v18 = v17[12];
          v19 = v17[16];
          v20 = v17[24];
          v54 = v17[20];
          v55 = v20;
          v60 = v17;
          v21 = sub_10002C58C(&v58);
          v22 = v17[12];
          v23 = v17[16];
          v24 = v17[20];
          v25 = v17[24];
          sub_10003DFF8(v11, v21, &qword_101A224A0, &qword_1014B73D8);
          sub_10003DFF8(&v11[v18], v21 + v22, &qword_101A13F60, &qword_1014B73E0);
          sub_10003DFF8(&v11[v19], v21 + v23, &qword_101A224A8, &qword_1014B73E8);
          sub_10003DFF8(&v11[v54], v21 + v24, &qword_101A224A8, &qword_1014B73E8);
          sub_10003DFF8(&v11[v55], v21 + v25, &qword_101A224B0, &unk_1014B73F0);
        }

        v26 = v57;
        swift_beginAccess();
        sub_100BC1DF4(&v58, 5);
        swift_endAccess();
        swift_unknownObjectRelease();
        return v26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v28 = objc_opt_self();
  v29 = [v28 _atomicIncrementAssertCount];
  v58.n128_u64[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v58, "Tried to generate undo from mismatched type", 43, 2u);
  StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
  v30 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeItem.swift", 98, 2);
  v31 = String._bridgeToObjectiveC()();

  v32 = [v31 lastPathComponent];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v36 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v29;
  v38 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v38;
  v39 = sub_1005CF04C();
  *(inited + 104) = v39;
  *(inited + 72) = v30;
  *(inited + 136) = &type metadata for String;
  v40 = sub_1000053B0();
  *(inited + 112) = v33;
  *(inited + 120) = v35;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v40;
  *(inited + 152) = 92;
  v41 = v58.n128_u64[0];
  *(inited + 216) = v38;
  *(inited + 224) = v39;
  *(inited + 192) = v41;
  v42 = v30;
  v43 = v41;
  v44 = static os_log_type_t.error.getter();
  sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v45 = static os_log_type_t.error.getter();
  sub_100005404(v36, &_mh_execute_header, v45, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
  type metadata accessor for __VaListBuilder();
  v46 = swift_allocObject();
  v46[2] = 8;
  v46[3] = 0;
  v46[4] = 0;
  v46[5] = 0;
  v47 = __VaListBuilder.va_list()();
  StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
  v48 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeItem.swift", 98, 2);
  v49 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to generate undo from mismatched type", 43, 2);
  v50 = String._bridgeToObjectiveC()();

  [v28 handleFailureInFunction:v48 file:v49 lineNumber:92 isFatal:1 format:v50 args:v47];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v51, v52);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100EAA6CC(uint64_t a1)
{
  type metadata accessor for CRLFreehandDrawingShapeItem(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    v4 = sub_100EB16F4(v3, v1);
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [v6 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31, "Tried to create observable deltas from mismatched type", 54, 2u);
    StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeItem.swift", 98, 2);
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v7;
    v16 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v16;
    v17 = sub_1005CF04C();
    *(inited + 104) = v17;
    *(inited + 72) = v8;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v13;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 104;
    v19 = v31;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeItem.swift", 98, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Tried to create observable deltas from mismatched type", 54, 2);
    v28 = String._bridgeToObjectiveC()();

    [v6 handleFailureInFunction:v26 file:v27 lineNumber:104 isFatal:1 format:v28 args:v25];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v29, v30);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100EAAAC8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A0F3D0, &qword_1014950A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_1005B981C(&qword_101A22498, &unk_1014B73C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  sub_1009B611C(a1);
  if (!v2)
  {
    v15 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v16 = *(a1 + v15);
    if (*(v16 + 16))
    {

      v17 = sub_1007C8124(5);
      if (v18)
      {
        sub_10000BE14(*(v16 + 56) + 32 * v17, &v25, &unk_1019F4D00, &unk_10146E7F0);

        v27[0] = v25;
        v27[1] = v26;
        if (*(&v26 + 1))
        {
          v19 = swift_dynamicCast();
          v20 = *(v12 + 56);
          v20(v10, v19 ^ 1u, 1, v11);
          if ((*(v12 + 48))(v10, 1, v11) != 1)
          {
            sub_10003DFF8(v10, v14, &qword_101A22498, &unk_1014B73C0);
            if (**(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019FAE60)
            {
              __break(1u);
              return;
            }

            sub_10000BE14(v14, v7, &qword_101A22498, &unk_1014B73C0);
            v20(v7, 0, 1, v11);
            swift_beginAccess();
            type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
            sub_100EB64C8(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData, byte_101474678);

            CRStruct_1.apply(_:)();
            sub_10000CAAC(v7, &qword_101A0F3D0, &qword_1014950A0);
            swift_endAccess();

            v21 = v14;
            v22 = &qword_101A22498;
            v23 = &unk_1014B73C0;
            goto LABEL_12;
          }

LABEL_11:
          v22 = &qword_101A0F3D0;
          v23 = &qword_1014950A0;
          v21 = v10;
LABEL_12:
          sub_10000CAAC(v21, v22, v23);
          return;
        }

        sub_10000CAAC(v27, &unk_1019F4D00, &unk_10146E7F0);
      }

      else
      {
      }
    }

    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_11;
  }
}

void sub_100EAAECC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ProtocolDescriptor *a5)
{
  v190 = a1;
  v9 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v9);
  v11 = &v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v167 - v13;
  v201 = type metadata accessor for CRLPKStrokePathData(0);
  v209 = *(v201 - 8);
  __chkstk_darwin(v201);
  v170 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v175 = &v167 - v17;
  __chkstk_darwin(v18);
  v174 = &v167 - v19;
  v20 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v20 - 8);
  v188 = &v167 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v187 = &v167 - v23;
  v208 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v208);
  v186 = &v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v185 = &v167 - v26;
  __chkstk_darwin(v27);
  v184 = &v167 - v28;
  __chkstk_darwin(v29);
  v183 = &v167 - v30;
  __chkstk_darwin(v31);
  v182 = &v167 - v32;
  __chkstk_darwin(v33);
  v35 = &v167 - v34;
  __chkstk_darwin(v36);
  v196 = &v167 - v37;
  __chkstk_darwin(v38);
  v195 = &v167 - v39;
  v210 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v210);
  v181 = &v167 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v180 = &v167 - v42;
  __chkstk_darwin(v43);
  v179 = &v167 - v44;
  __chkstk_darwin(v45);
  v178 = &v167 - v46;
  __chkstk_darwin(v47);
  v177 = &v167 - v48;
  __chkstk_darwin(v49);
  v176 = &v167 - v50;
  __chkstk_darwin(v51);
  v194 = &v167 - v52;
  __chkstk_darwin(v53);
  v193 = &v167 - v54;
  if (a3 == 5)
  {
    v206 = v14;
    v204 = v11;
    type metadata accessor for CRLShapeItem(0);
    v148 = swift_dynamicCastClass();
    if (!v148)
    {
      return;
    }

    v149 = v148;
    v208 = *(v148 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v203 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
    v205 = swift_conformsToProtocol2();
    if (!v205)
    {
      goto LABEL_93;
    }

    v198 = v149;
    v150 = *(a2 + 16);
    v151 = v206;
    v168 = a2;
    v169 = a4;
    if (!v150)
    {
      swift_unknownObjectRetain();

LABEL_87:
      swift_unknownObjectRetain();
      sub_100EB39A8(v190, v168, 5, v198, v207);
LABEL_88:

      swift_unknownObjectRelease_n();
      return;
    }

    v200 = OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace;
    v201 = OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes;
    v199 = v207 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
    v202 = (v205 + 16);
    swift_unknownObjectRetain();

    v152 = (a2 + 40);
    while (1)
    {
      v153 = *(v152 - 1) == 0x7974536570616873 && *v152 == 0xEE0061746144656CLL;
      if (!v153 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_65;
      }

      v209 = v152;
      v210 = v150;
      (*(v205 + 16))(*v208);
      sub_1005B981C(&unk_101A0D9D0, &unk_10146DB60);
      CRRegister.wrappedValue.getter();
      sub_100EB6578(v151, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v242 = v229[12];
      v243 = v229[13];
      v244 = *&v229[14];
      v238 = v229[8];
      v239 = v229[9];
      v241 = v229[11];
      v240 = v229[10];
      v234 = v229[4];
      v235 = v229[5];
      v237 = v229[7];
      v236 = v229[6];
      v230 = v229[0];
      v231 = v229[1];
      v154 = *(v207 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      v233 = v229[3];
      v232 = v229[2];
      v155 = *v154;
      v156 = swift_conformsToProtocol2();
      if (!v156)
      {
        goto LABEL_91;
      }

      v157 = v156;
      v158 = *(v156 + 16);

      v159 = v204;
      v158(v155, v157);

      CRRegister.wrappedValue.getter();
      sub_100EB6578(v159, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v257 = v229[12];
      v258 = v229[13];
      v253 = v229[8];
      v254 = v229[9];
      v256 = v229[11];
      v255 = v229[10];
      v249 = v229[4];
      v250 = v229[5];
      v252 = v229[7];
      v251 = v229[6];
      v245 = v229[0];
      v246 = v229[1];
      v248 = v229[3];
      v247 = v229[2];
      v229[12] = v242;
      v229[13] = v243;
      v229[8] = v238;
      v229[9] = v239;
      v229[11] = v241;
      v229[10] = v240;
      v229[4] = v234;
      v229[5] = v235;
      v229[7] = v237;
      v229[6] = v236;
      v229[0] = v230;
      v229[1] = v231;
      v229[3] = v233;
      v229[2] = v232;
      *(&v229[26] + 8) = v257;
      *(&v229[27] + 8) = v258;
      *(&v229[22] + 8) = v253;
      *(&v229[23] + 8) = v254;
      *(&v229[24] + 8) = v255;
      *(&v229[25] + 8) = v256;
      *(&v229[18] + 8) = v249;
      *(&v229[19] + 8) = v250;
      *(&v229[20] + 8) = v251;
      *(&v229[21] + 8) = v252;
      *(&v229[14] + 8) = v245;
      *(&v229[15] + 8) = v246;
      *(&v229[16] + 8) = v247;
      *(&v229[17] + 8) = v248;
      v260[12] = v242;
      v260[13] = v243;
      v260[8] = v238;
      v260[9] = v239;
      v260[11] = v241;
      v260[10] = v240;
      v260[4] = v234;
      v260[5] = v235;
      v260[7] = v237;
      v260[6] = v236;
      v260[0] = v230;
      v260[1] = v231;
      v259 = *&v229[14];
      *&v229[14] = v244;
      *(&v229[28] + 1) = v259;
      v261 = v244;
      v260[3] = v233;
      v260[2] = v232;
      if (sub_1000C0FB4(v260) != 1)
      {
        break;
      }

      v228[13] = *(&v229[27] + 8);
      *&v228[14] = *(&v229[28] + 1);
      v228[8] = *(&v229[22] + 8);
      v228[9] = *(&v229[23] + 8);
      v228[11] = *(&v229[25] + 8);
      v228[12] = *(&v229[26] + 8);
      v228[10] = *(&v229[24] + 8);
      v228[4] = *(&v229[18] + 8);
      v228[5] = *(&v229[19] + 8);
      v228[6] = *(&v229[20] + 8);
      v228[7] = *(&v229[21] + 8);
      v228[0] = *(&v229[14] + 8);
      v228[1] = *(&v229[15] + 8);
      v228[2] = *(&v229[16] + 8);
      v228[3] = *(&v229[17] + 8);
      v160 = sub_1000C0FB4(v228);
      v152 = v209;
      if (v160 != 1)
      {
        v151 = v206;
        v150 = v210;
        goto LABEL_77;
      }

      v225 = v229[12];
      v226 = v229[13];
      v227 = *&v229[14];
      v221 = v229[8];
      v222 = v229[9];
      v223 = v229[10];
      v224 = v229[11];
      v217 = v229[4];
      v218 = v229[5];
      v219 = v229[6];
      v220 = v229[7];
      v213 = v229[0];
      v214 = v229[1];
      v215 = v229[2];
      v216 = v229[3];
      sub_10000CAAC(&v213, &unk_101A106C0, &unk_1014907B0);
      v151 = v206;
      v150 = v210;
LABEL_65:
      v152 += 2;
      if (!--v150)
      {
        goto LABEL_87;
      }
    }

    v228[13] = *(&v229[27] + 8);
    *&v228[14] = *(&v229[28] + 1);
    v228[8] = *(&v229[22] + 8);
    v228[9] = *(&v229[23] + 8);
    v228[11] = *(&v229[25] + 8);
    v228[12] = *(&v229[26] + 8);
    v228[10] = *(&v229[24] + 8);
    v228[4] = *(&v229[18] + 8);
    v228[5] = *(&v229[19] + 8);
    v228[6] = *(&v229[20] + 8);
    v228[7] = *(&v229[21] + 8);
    v228[0] = *(&v229[14] + 8);
    v228[1] = *(&v229[15] + 8);
    v228[2] = *(&v229[16] + 8);
    v228[3] = *(&v229[17] + 8);
    if (sub_1000C0FB4(v228) == 1)
    {
      v151 = v206;
      v152 = v209;
      v150 = v210;
LABEL_77:
      memcpy(v228, v229, sizeof(v228));
      sub_10000CAAC(v228, &qword_1019F5EE0, &unk_1014B73B0);
    }

    else
    {
      v211[12] = *(&v229[26] + 8);
      v211[13] = *(&v229[27] + 8);
      v211[8] = *(&v229[22] + 8);
      v211[9] = *(&v229[23] + 8);
      v211[10] = *(&v229[24] + 8);
      v211[11] = *(&v229[25] + 8);
      v211[4] = *(&v229[18] + 8);
      v211[5] = *(&v229[19] + 8);
      v211[6] = *(&v229[20] + 8);
      v211[7] = *(&v229[21] + 8);
      v211[0] = *(&v229[14] + 8);
      v211[1] = *(&v229[15] + 8);
      v211[2] = *(&v229[16] + 8);
      v211[3] = *(&v229[17] + 8);
      v276 = *(&v229[26] + 8);
      v277 = *(&v229[27] + 8);
      v272 = *(&v229[22] + 8);
      v273 = *(&v229[23] + 8);
      v275 = *(&v229[25] + 8);
      v274 = *(&v229[24] + 8);
      v268 = *(&v229[18] + 8);
      v269 = *(&v229[19] + 8);
      v271 = *(&v229[21] + 8);
      v270 = *(&v229[20] + 8);
      v264 = *(&v229[14] + 8);
      v265 = *(&v229[15] + 8);
      v212 = *(&v229[28] + 1);
      v278 = *(&v229[28] + 1);
      v267 = *(&v229[17] + 8);
      v266 = *(&v229[16] + 8);
      v262[12] = v229[12];
      v262[13] = v229[13];
      v263 = *&v229[14];
      v262[8] = v229[8];
      v262[9] = v229[9];
      v262[11] = v229[11];
      v262[10] = v229[10];
      v262[4] = v229[4];
      v262[5] = v229[5];
      v262[7] = v229[7];
      v262[6] = v229[6];
      v262[0] = v229[0];
      v262[1] = v229[1];
      v262[3] = v229[3];
      v262[2] = v229[2];
      sub_10000BE14(&v230, &v213, &unk_101A106C0, &unk_1014907B0);
      sub_10000BE14(&v245, &v213, &unk_101A106C0, &unk_1014907B0);
      v163 = sub_100B93EBC(v262, &v264);
      sub_10000CAAC(&v245, &unk_101A106C0, &unk_1014907B0);
      sub_10000CAAC(&v230, &unk_101A106C0, &unk_1014907B0);
      sub_10000CAAC(v211, &unk_101A106C0, &unk_1014907B0);
      v225 = v229[12];
      v226 = v229[13];
      v227 = *&v229[14];
      v221 = v229[8];
      v222 = v229[9];
      v223 = v229[10];
      v224 = v229[11];
      v217 = v229[4];
      v218 = v229[5];
      v219 = v229[6];
      v220 = v229[7];
      v213 = v229[0];
      v214 = v229[1];
      v215 = v229[2];
      v216 = v229[3];
      sub_10000CAAC(&v213, &unk_101A106C0, &unk_1014907B0);
      v151 = v206;
      v152 = v209;
      v150 = v210;
      if (v163)
      {
        goto LABEL_65;
      }
    }

    v161 = v207;
    *(v207 + v201) = 0;

    *(v161 + v200) = 0;

    v162 = v199;
    *(v199 + 1) = 0u;
    *(v162 + 2) = 0u;
    *(v162 + 6) = 0;
    *v162 = 0u;

    goto LABEL_65;
  }

  if (a3)
  {
    ObjectType = swift_getObjectType();
    v165 = v190;
    v166 = v207;

    sub_100C38590(v165, a2, a3, a4, v166, ObjectType, a5);
    return;
  }

  type metadata accessor for CRLShapeItem(0);
  v55 = swift_dynamicCastClass();
  if (!v55)
  {
    return;
  }

  v167 = v55;
  v56 = *&v55[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  v173 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
  if (!swift_conformsToProtocol2())
  {
    goto LABEL_92;
  }

  v57 = *(a2 + 16);
  v168 = a2;
  v169 = a4;
  if (!v57)
  {
    swift_unknownObjectRetain();

LABEL_85:
    swift_unknownObjectRetain();
    sub_100EB39A8(v190, v168, 0, v167, v207);
    goto LABEL_88;
  }

  v198 = v207 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
  v199 = OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace;
  v197 = OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes;
  v189 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v171 = (v209 + 6);
  swift_unknownObjectRetain();

  v58 = (a2 + 40);
  v172 = v35;
  v200 = v56;
  while (1)
  {
    v61 = *(v58 - 1) == 0x6641746E65726170 && *v58 == 0xEE007974696E6966;
    if (!v61 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_10;
    }

    v191 = v58;
    v192 = v57;
    v62 = *(v207 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v63 = swift_conformsToProtocol2();
    if (!v63)
    {
      break;
    }

    v66 = *(*v56 + 752);
    v67 = v193;
    v204 = *v56 + 752;
    v205 = v66;
    v66(v63, v64, v65);

    v68 = sub_1005B981C(&unk_101A0F410, &unk_10148D730);
    v69 = v195;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v67, &unk_101A0F400, &unk_1014746E0);
    v70 = type metadata accessor for CRLBoardItemParentAffinity(0);
    v71 = (v69 + *(v70 + 20));
    v72 = v71[1];
    v228[0] = *v71;
    v228[1] = v72;
    sub_10074A4EC(v228, &v264);
    v73 = sub_100EB6578(v69, type metadata accessor for CRLShapeItemParentAffinity);
    v74 = *v62;
    v75 = *(*v62 + 752);
    v76 = v194;
    v206 = v62;
    v202 = v75;
    v203 = (v74 + 752);
    v75(v73);
    v77 = v196;
    v209 = v68;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v76, &unk_101A0F400, &unk_1014746E0);
    v78 = (v77 + *(v70 + 20));
    v79 = *v78;
    v229[1] = v78[1];
    v229[0] = v79;
    sub_10074A4EC(v229, &v264);
    sub_100EB6578(v77, type metadata accessor for CRLShapeItemParentAffinity);
    sub_101271C28(v228, v229);
    v81 = v80;
    sub_10074A710(v229);
    v82 = sub_10074A710(v228);
    if ((v81 & 1) == 0)
    {
      *&v199[v207] = 0;

      v83 = v198;
      *(v198 + 1) = 0u;
      *(v83 + 2) = 0u;
      *(v83 + 6) = 0;
      *v83 = 0u;
    }

    v84 = v193;
    (v205)(v82);
    v85 = v195;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v84, &unk_101A0F400, &unk_1014746E0);
    v86 = v208;
    v87 = v187;
    sub_100EB6510(v85 + *(v208 + 20), v187, type metadata accessor for CRLPathSourceData);
    v88 = sub_100EB6578(v85, type metadata accessor for CRLShapeItemParentAffinity);
    v89 = v194;
    v202(v88);
    v90 = v196;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v89, &unk_101A0F400, &unk_1014746E0);
    v91 = v90 + *(v86 + 20);
    v92 = v188;
    sub_100EB6510(v91, v188, type metadata accessor for CRLPathSourceData);
    sub_100EB6578(v90, type metadata accessor for CRLShapeItemParentAffinity);
    v93 = sub_100C48FE0(v87, v92);
    sub_100EB6578(v92, type metadata accessor for CRLPathSourceData);
    v94 = sub_100EB6578(v87, type metadata accessor for CRLPathSourceData);
    if ((v93 & 1) == 0)
    {
      v95 = v207;
      *(v207 + v197) = 0;

      *&v199[v95] = 0;

      v96 = v198;
      *(v198 + 1) = 0u;
      *(v96 + 2) = 0u;
      *(v96 + 6) = 0;
      *v96 = 0u;
    }

    v97 = v176;
    (v205)(v94);
    v98 = v172;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v97, &unk_101A0F400, &unk_1014746E0);
    v99 = *(v208 + 24);
    v100 = *v171;
    v101 = (*v171)(v98 + v99, 1, v201);
    v102 = v182;
    if (v101)
    {
      v103 = sub_100EB6578(v98, type metadata accessor for CRLShapeItemParentAffinity);
      v104 = 0;
    }

    else
    {
      v105 = v98 + v99;
      v106 = v174;
      sub_100EB6510(v105, v174, type metadata accessor for CRLPKStrokePathData);
      sub_100EB6578(v98, type metadata accessor for CRLShapeItemParentAffinity);
      sub_100CD1A6C();
      v104 = v107;
      v103 = sub_100EB6578(v106, type metadata accessor for CRLPKStrokePathData);
    }

    v108 = v177;
    v202(v103);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v108, &unk_101A0F400, &unk_1014746E0);
    v109 = *(v208 + 24);
    if (v100(v102 + v109, 1, v201))
    {
      v110 = sub_100EB6578(v102, type metadata accessor for CRLShapeItemParentAffinity);
      if (!v104)
      {
        goto LABEL_29;
      }

LABEL_26:
      v111 = v104;
LABEL_27:

LABEL_28:
      *(&v265 + 1) = &type metadata for Bool;
      LOBYTE(v264) = 1;
      sub_10000BE14(&v264, v262, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();
      sub_100BC1F00(v262, 26);
      swift_endAccess();
      sub_10000CAAC(&v264, &unk_1019F4D00, &unk_10146E7F0);
      v112 = v207;
      *(v207 + v197) = 0;

      *&v199[v112] = 0;

      v113 = v198;
      *(v198 + 1) = 0u;
      *(v113 + 2) = 0u;
      *(v113 + 6) = 0;
      *v113 = 0u;

      goto LABEL_29;
    }

    v120 = v102 + v109;
    v121 = v174;
    sub_100EB6510(v120, v174, type metadata accessor for CRLPKStrokePathData);
    sub_100EB6578(v102, type metadata accessor for CRLShapeItemParentAffinity);
    sub_100CD1A6C();
    v111 = v122;
    v110 = sub_100EB6578(v121, type metadata accessor for CRLPKStrokePathData);
    if (v104)
    {
      if (!v111)
      {
        goto LABEL_26;
      }

      sub_100006370(0, &qword_101A22490, off_10182F8F8);
      v123 = static NSObject.== infix(_:_:)();

      if ((v123 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v111)
    {
      goto LABEL_27;
    }

LABEL_29:
    v114 = v178;
    (v205)(v110);
    v115 = v183;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v114, &unk_101A0F400, &unk_1014746E0);
    v116 = *(v208 + 24);
    if (v100(v115 + v116, 1, v201))
    {
      v117 = sub_100EB6578(v115, type metadata accessor for CRLShapeItemParentAffinity);
      v118 = 0;
      v119 = v184;
    }

    else
    {
      v124 = v115 + v116;
      v125 = v175;
      sub_100EB6510(v124, v175, type metadata accessor for CRLPKStrokePathData);
      sub_100EB6578(v115, type metadata accessor for CRLShapeItemParentAffinity);
      v119 = v184;
      if (*(v125 + 88))
      {
        sub_100006370(0, &qword_101A02480, off_10182F728);

        v118 = sub_100C58684(v126);
      }

      else
      {
        v118 = 0;
      }

      v117 = sub_100EB6578(v175, type metadata accessor for CRLPKStrokePathData);
    }

    v127 = v179;
    v202(v117);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v127, &unk_101A0F400, &unk_1014746E0);
    v128 = *(v208 + 24);
    if (v100(v119 + v128, 1, v201))
    {
      v129 = sub_100EB6578(v119, type metadata accessor for CRLShapeItemParentAffinity);
      if (!v118)
      {
        goto LABEL_45;
      }

LABEL_43:

LABEL_44:
      v130 = v207;
      *(v207 + v197) = 0;

      *&v199[v130] = 0;

      v131 = v198;
      *(v198 + 1) = 0u;
      *(v131 + 2) = 0u;
      *(v131 + 6) = 0;
      *v131 = 0u;

      goto LABEL_45;
    }

    v144 = v170;
    sub_100EB6510(v119 + v128, v170, type metadata accessor for CRLPKStrokePathData);
    sub_100EB6578(v119, type metadata accessor for CRLShapeItemParentAffinity);
    if (*(v144 + 88))
    {
      sub_100006370(0, &qword_101A02480, off_10182F728);

      v146 = sub_100C58684(v145);

      v129 = sub_100EB6578(v144, type metadata accessor for CRLPKStrokePathData);
      if (v118)
      {
        if (!v146)
        {
          goto LABEL_43;
        }

        v147 = static NSObject.== infix(_:_:)();

        if ((v147 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v118 = v146;
        if (v146)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v129 = sub_100EB6578(v144, type metadata accessor for CRLPKStrokePathData);
      if (v118)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    v132 = v180;
    (v205)(v129);
    v133 = v185;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v132, &unk_101A0F400, &unk_1014746E0);
    v134 = v208;
    v135 = v133 + *(v208 + 28);
    v205 = *v135;
    v136 = *(v135 + 8);
    v137 = sub_100EB6578(v133, type metadata accessor for CRLShapeItemParentAffinity);
    v138 = v181;
    v202(v137);
    v139 = v186;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v138, &unk_101A0F400, &unk_1014746E0);
    v140 = v139 + *(v134 + 28);
    v141 = *v140;
    v142 = *(v140 + 8);
    sub_100EB6578(v139, type metadata accessor for CRLShapeItemParentAffinity);
    if (v136 == 255)
    {
      v56 = v200;
      if (v142 == 255)
      {
LABEL_55:

        goto LABEL_9;
      }
    }

    else
    {
      *&v264 = v205;
      BYTE8(v264) = v136;
      if (v142 == 255)
      {
        v56 = v200;
      }

      else
      {
        v262[0].n128_u64[0] = v141;
        v262[0].n128_u8[8] = v142 & 1;
        sub_100D63CC0();
        v143 = static CRExtensible.== infix(_:_:)();
        v56 = v200;
        if (v143)
        {
          goto LABEL_55;
        }
      }
    }

    *(&v265 + 1) = &type metadata for Bool;
    LOBYTE(v264) = 1;
    sub_10000BE14(&v264, v262, &unk_1019F4D00, &unk_10146E7F0);
    swift_beginAccess();
    sub_100BC1F00(v262, 27);
    swift_endAccess();

    sub_10000CAAC(&v264, &unk_1019F4D00, &unk_10146E7F0);
    v59 = v207;
    *(v207 + v197) = 0;

    *&v199[v59] = 0;

    v60 = v198;
    *(v198 + 1) = 0u;
    *(v60 + 2) = 0u;
    *(v60 + 6) = 0;
    *v60 = 0u;

LABEL_9:
    v58 = v191;
    v57 = v192;
LABEL_10:
    v58 += 2;
    if (!--v57)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

void sub_100EACA80()
{
  v1 = type metadata accessor for CRLPKStrokePathData(0);
  v88 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v4);
  v6 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v76 - v8;
  v10 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v15 = v76 - v14;
  v16 = OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes;
  if (*(v0 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes))
  {
LABEL_20:

    return;
  }

  v84 = v9;
  v85 = v12;
  v81 = v3;
  v82 = v13;
  v83 = v6;
  v86 = v4;
  v87 = 0;
  v17 = sub_100EAE0D4();
  if (!v17)
  {
LABEL_9:
    v36 = objc_opt_self();
    v37 = [v36 _atomicIncrementAssertCount];
    v89 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v89, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("pencilKitStrokes", 16, 2);
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeItem.swift", 98, 2);
    v39 = String._bridgeToObjectiveC()();

    v40 = [v39 lastPathComponent];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v44 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v37;
    v46 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v46;
    v47 = sub_1005CF04C();
    *(inited + 104) = v47;
    *(inited + 72) = v38;
    *(inited + 136) = &type metadata for String;
    v48 = sub_1000053B0();
    *(inited + 112) = v41;
    *(inited + 120) = v43;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v48;
    *(inited + 152) = 230;
    v49 = v89;
    *(inited + 216) = v46;
    *(inited + 224) = v47;
    *(inited + 192) = v49;
    v50 = v38;
    v51 = v49;
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v53, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v54 = swift_allocObject();
    v54[2] = 8;
    v54[3] = 0;
    v54[4] = 0;
    v54[5] = 0;
    v55 = __VaListBuilder.va_list()();
    StaticString.description.getter("pencilKitStrokes", 16, 2);
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeItem.swift", 98, 2);
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v58 = String._bridgeToObjectiveC()();

    [v36 handleFailureInFunction:v56 file:v57 lineNumber:230 isFatal:0 format:v58 args:v55];

    goto LABEL_20;
  }

  v18 = v17;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

    goto LABEL_9;
  }

  v20 = v19;
  v79 = v18;
  v80 = v16;
  v21 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v22 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (swift_conformsToProtocol2())
  {
    v23 = v0;
    v78 = v20;
    v24 = *(v22 + 840);

    v26 = v24(v25);

    v27 = [v26 bezierPath];

    v28 = *(v0 + v21);
    v29 = v88;
    if (*v28 == &off_1019FAE60)
    {
      v30 = v23;
      v77 = v27;
      v31 = qword_1019FB140;
      swift_beginAccess();
      v76[0] = v31;
      sub_10000BE14(v28 + v31, v15, &unk_101A0F400, &unk_1014746E0);
      v32 = sub_1005B981C(&unk_101A0F410, &unk_10148D730);
      v33 = v84;
      v76[1] = v32;
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v15, &unk_101A0F400, &unk_1014746E0);
      v34 = *(v86 + 24);
      if ((*(v29 + 48))(v33 + v34, 1, v1))
      {
        sub_100EB6578(v33, type metadata accessor for CRLShapeItemParentAffinity);
        v35 = 0;
      }

      else
      {
        v59 = v33 + v34;
        v60 = v81;
        sub_100EB6510(v59, v81, type metadata accessor for CRLPKStrokePathData);
        sub_100EB6578(v33, type metadata accessor for CRLShapeItemParentAffinity);
        sub_100CD1A6C();
        v35 = v61;
        sub_100EB6578(v60, type metadata accessor for CRLPKStrokePathData);
      }

      v62 = v83;
      sub_100EAF3B0();
      v64 = *(v23 + v21);
      if (*v64 == &off_1019FAE60)
      {
        v65 = v63;
        v66 = v76[0];
        swift_beginAccess();
        v67 = v82;
        sub_10000BE14(v64 + v66, v82, &unk_101A0F400, &unk_1014746E0);
        CRRegister.wrappedValue.getter();
        sub_10000CAAC(v67, &unk_101A0F400, &unk_1014746E0);
        v68 = v62 + *(v86 + 28);
        v69 = *v68;
        v70 = *(v68 + 8);
        sub_100EB6578(v62, type metadata accessor for CRLShapeItemParentAffinity);
        if (v70 == 255)
        {
          v73 = 0;
          v71 = v77;
          v72 = v78;
        }

        else
        {
          v71 = v77;
          v72 = v78;
          if (v70)
          {
            v73 = 0;
          }

          else
          {
            v73 = CRLiCloudConnectionStatus.rawValue.getter(v69);
          }
        }

        v74 = [objc_opt_self() pencilKitStrokesFromPath:v71 inkStroke:v72 strokePathCompactData:v35 maskPath:v65 snappedShapeType:v73];

        type metadata accessor for PKStroke();
        v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *(v30 + v80) = v75;

        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_100EAD3B0()
{
  v1 = v0;
  v2 = type metadata accessor for PKStroke();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace;
  v10 = *(v0 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace);
  if (v10)
  {
  }

  else
  {
    v39 = v36 - v8;
    v11 = v7;
    v12 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v14 = v12(v13);

    [v14 transform];
    v45 = v48;
    v46 = v49;
    v15 = v50;
    v16 = v51;

    sub_100EACA80();
    if (v17)
    {
      v44 = v5;
      v18 = *(v17 + 16);
      if (v18)
      {
        v37 = v9;
        v38 = v0;
        v47 = _swiftEmptyArrayStorage;
        v19 = v17;
        sub_100776904(0, v18, 0);
        v10 = v47;
        v20 = v3 + 16;
        v43 = *(v3 + 16);
        v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v36[1] = v19;
        v42 = v21;
        v22 = v19 + v21;
        v23 = *(v3 + 72);
        v40 = (v3 + 8);
        v41 = v23;
        v24 = (v3 + 32);
        v25 = v11;
        v26 = v39;
        do
        {
          v27 = v44;
          v28 = v20;
          v43(v44, v22, v25);
          isa = PKStroke._bridgeToObjectiveC()().super.isa;
          v49 = v46;
          v48 = v45;
          v50 = v15;
          v51 = v16;
          v30 = [(objc_class *)isa _strokeByAppendingTransform:&v48];

          static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();
          (*v40)(v27, v25);
          v47 = v10;
          v31 = v25;
          v33 = v10[2];
          v32 = v10[3];
          if (v33 >= v32 >> 1)
          {
            sub_100776904((v32 > 1), v33 + 1, 1);
            v26 = v39;
            v10 = v47;
          }

          v10[2] = v33 + 1;
          v34 = v41;
          (*v24)(v10 + v42 + v33 * v41, v26, v31);
          v22 += v34;
          --v18;
          v25 = v31;
          v20 = v28;
        }

        while (v18);

        v9 = v37;
        v1 = v38;
      }

      else
      {

        v10 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v10 = 0;
    }

    *(v1 + v9) = v10;
  }

  return v10;
}

Class sub_100EAD710(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    type metadata accessor for PKStroke();
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

uint64_t sub_100EAD788()
{
  v1 = type metadata accessor for PKStroke();
  v43 = *(v1 - 8);
  __chkstk_darwin(v1);
  v42 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = &v40 - v4;
  v5 = v0;
  b = 0.0;
  a = 1.0;
  Strong = v5;
  c = 0.0;
  d = 1.0;
  tx = 0.0;
  ty = 0.0;
  do
  {
    v13 = *((swift_isaMask & *Strong) + 0xE0);
    v14 = Strong;
    v15 = v13();
    [v15 transform];
    v48 = *&t1.a;
    v47 = *&t1.c;
    v46 = *&t1.tx;

    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v48;
    *&t2.c = v47;
    *&t2.tx = v46;
    CGAffineTransformConcat(&v51, &t1, &t2);
    a = v51.a;
    b = v51.b;
    c = v51.c;
    d = v51.d;
    tx = v51.tx;
    ty = v51.ty;
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  while (Strong);
  v16 = v5 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
  v17 = *(v5 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace);
  if (v17 != 0.0)
  {
    *&t2.a = *(v16 + 8);
    *&t2.c = *(v16 + 24);
    v41 = v5 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
    *&t2.tx = *(v16 + 40);
    v18 = v5;

    v48 = xmmword_101463BB0;
    v47 = xmmword_101466510;
    v19 = 0.0;
    v20 = 0.0;
    do
    {
      v21 = *((swift_isaMask & *v18) + 0xE0);
      v22 = v18;
      v23 = v21();
      [v23 transform];
      v46 = *&v51.a;
      v45 = *&v51.c;
      v44 = *&v51.tx;

      v51.tx = v19;
      v51.ty = v20;
      *&v50.a = v46;
      *&v50.c = v45;
      *&v50.tx = v44;
      *&v51.c = v48;
      *&v51.a = v47;
      CGAffineTransformConcat(&v49, &v51, &v50);
      v48 = *&v49.c;
      v47 = *&v49.a;
      t1 = v49;
      v19 = v49.tx;
      v20 = v49.ty;
      v18 = swift_unknownObjectWeakLoadStrong();
    }

    while (v18);
    if (static CGAffineTransform.== infix(_:_:)())
    {
      return *&v17;
    }

    v16 = v41;
  }

  sub_100EACA80();
  if (v24)
  {
    v25 = *(v24 + 16);
    if (v25)
    {
      v41 = v16;
      *&v50.a = _swiftEmptyArrayStorage;
      v26 = v24;
      sub_100776904(0, v25, 0);
      v17 = v50.a;
      *&v48 = *(v43 + 16);
      v27 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      *&v45 = v26;
      *&v47 = v27;
      v28 = v26 + v27;
      *&v46 = *(v43 + 72);
      v29 = (v43 + 8);
      v43 += 16;
      v30 = (v43 + 16);
      v31 = v40;
      do
      {
        v32 = v42;
        (v48)(v42, v28, v1);
        isa = PKStroke._bridgeToObjectiveC()().super.isa;
        v51.a = a;
        v51.b = b;
        v51.c = c;
        v51.d = d;
        v51.tx = tx;
        v51.ty = ty;
        v34 = [(objc_class *)isa _strokeByAppendingTransform:&v51];

        static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();
        (*v29)(v32, v1);
        v50.a = v17;
        v35 = v1;
        v37 = *(*&v17 + 16);
        v36 = *(*&v17 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_100776904((v36 > 1), v37 + 1, 1);
          v31 = v40;
          v17 = v50.a;
        }

        *(*&v17 + 16) = v37 + 1;
        v38 = v46;
        (*v30)(*&v17 + v47 + v37 * v46, v31, v35);
        v28 += v38;
        --v25;
        v1 = v35;
      }

      while (v25);

      v16 = v41;
    }

    else
    {

      v17 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    }

    *v16 = v17;
    *(v16 + 1) = a;
    *(v16 + 2) = b;
    *(v16 + 3) = c;
    *(v16 + 4) = d;
    *(v16 + 5) = tx;
    *(v16 + 6) = ty;
  }

  else
  {
    v17 = 0.0;
  }

  return *&v17;
}

void sub_100EADEC0(void *a1)
{
  v2 = v1;
  v3 = a1;
  if ((sub_1011255D4() & 1) != 0 && (v4 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData, v5 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296), v6 = , v7 = v5(v6), , sub_100006370(0, &unk_1019F5730, off_10182F770), v8 = static NSObject.== infix(_:_:)(), v7, (v8 & 1) == 0))
  {
    v9 = *(**(v2 + v4) + 304);

    v9(v3);
  }

  else
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = (*((swift_isaMask & *Strong) + 0x388))();

    if (v12)
    {
      return;
    }
  }

  else
  {
  }

  *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace) = 0;

  v13 = v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  *v13 = 0u;
}

void *sub_100EAE0D4()
{
  v1 = OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
  v3 = v2;
  if (v2)
  {
    goto LABEL_6;
  }

  v4 = v0;
  v5 = **(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v7 = result;
    v8 = result[1];

    v8(v12, v5, v7);
    v26 = v12[12];
    v27 = v12[13];
    v28 = v13;
    v22 = v12[8];
    v23 = v12[9];
    v24 = v12[10];
    v25 = v12[11];
    v18 = v12[4];
    v19 = v12[5];
    v20 = v12[6];
    v21 = v12[7];
    v14 = v12[0];
    v15 = v12[1];
    v16 = v12[2];
    v17 = v12[3];
    if (sub_1000C0FB4(&v14) == 1)
    {

      v3 = 0;
    }

    else
    {
      v29[12] = v26;
      v29[13] = v27;
      v30 = v28;
      v29[8] = v22;
      v29[9] = v23;
      v29[10] = v24;
      v29[11] = v25;
      v29[4] = v18;
      v29[5] = v19;
      v29[6] = v20;
      v29[7] = v21;
      v29[0] = v14;
      v29[1] = v15;
      v29[2] = v16;
      v29[3] = v17;

      v3 = sub_100B946C8(v29, 1);
      sub_10000CAAC(v12, &unk_101A106C0, &unk_1014907B0);
      v9 = *(v0 + v1);
      *(v4 + v1) = v3;
      v10 = v3;
    }

LABEL_6:
    v11 = v2;
    return v3;
  }

  __break(1u);
  return result;
}

void sub_100EAE318(void *a1)
{
  v2 = v1;
  v4 = a1;
  sub_100D654FC(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (*((swift_isaMask & *Strong) + 0x388))();

    if (v7)
    {
      return;
    }
  }

  else
  {
  }

  *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes) = 0;

  *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace) = 0;

  v8 = v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *v8 = 0u;
}

void sub_100EAE550(void *a1)
{
  v2 = v1;
  v3 = a1;
  if (sub_1011255D0())
  {
    v4 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (!swift_conformsToProtocol2())
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 848);

    v5(v3);
  }

  else
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (*((swift_isaMask & *Strong) + 0x388))();

    if (v8)
    {
      return;
    }
  }

  else
  {
  }

  *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes) = 0;

  *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace) = 0;

  v9 = v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  *v9 = 0u;
}

uint64_t sub_100EAE818@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for PKStroke();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_100EACA80();
  if (v12)
  {
    if (*(v12 + 16))
    {
      (*(v6 + 16))(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      (*(v6 + 32))(v11, v8, v5);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      v14 = [(objc_class *)isa _renderGroupID];

      if (v14)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      (*(v6 + 8))(v11, v5);
      v19 = type metadata accessor for UUID();
      (*(*(v19 - 8) + 56))(v4, v15, 1, v19);
      return sub_10003DFF8(v4, a1, &qword_1019F6990, &qword_10146D2F0);
    }
  }

  v16 = type metadata accessor for UUID();
  v17 = *(*(v16 - 8) + 56);

  return v17(a1, 1, 1, v16);
}

void sub_100EAEB0C()
{
  v1 = type metadata accessor for CRLPKStrokePathData(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v11 == &off_1019FAE60)
  {
    v15 = v4;
    v12 = qword_1019FB140;
    swift_beginAccess();
    sub_10000BE14(v11 + v12, v10, &unk_101A0F400, &unk_1014746E0);
    sub_1005B981C(&unk_101A0F410, &unk_10148D730);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v10, &unk_101A0F400, &unk_1014746E0);
    v13 = *(v5 + 24);
    if ((*(v2 + 48))(&v7[v13], 1, v1))
    {
      sub_100EB6578(v7, type metadata accessor for CRLShapeItemParentAffinity);
    }

    else
    {
      v14 = v15;
      sub_100EB6510(&v7[v13], v15, type metadata accessor for CRLPKStrokePathData);
      sub_100EB6578(v7, type metadata accessor for CRLShapeItemParentAffinity);
      sub_100CD1A6C();
      sub_100EB6578(v14, type metadata accessor for CRLPKStrokePathData);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100EAEE34(void *a1)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for CRLPKStrokePathData(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = sub_1005B981C(&qword_101A224B8, &unk_1014B7400);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  if (sub_1011255D0())
  {
    if (v32)
    {
      v31 = v4;
      v16 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v16 != &off_1019FAE60)
      {
        __break(1u);
        return;
      }

      v17 = qword_1019FB140;
      swift_beginAccess();
      sub_10000BE14(v16 + v17, v12, &unk_101A0F400, &unk_1014746E0);
      v30 = v32;

      v32 = sub_1005B981C(&unk_101A0F410, &unk_10148D730);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v12, &unk_101A0F400, &unk_1014746E0);
      v18 = *(v7 + 24);
      if ((*(v31 + 48))(&v9[v18], 1, v3))
      {
        sub_100EB6578(v9, type metadata accessor for CRLShapeItemParentAffinity);
        v19 = 0;
      }

      else
      {
        sub_100EB6510(&v9[v18], v6, type metadata accessor for CRLPKStrokePathData);
        sub_100EB6578(v9, type metadata accessor for CRLShapeItemParentAffinity);
        if (*(v6 + 11))
        {
          sub_100006370(0, &qword_101A02480, off_10182F728);

          v19 = sub_100C58684(v21);
        }

        else
        {
          v19 = 0;
        }

        sub_100EB6578(v6, type metadata accessor for CRLPKStrokePathData);
      }

      v22 = v30;
      sub_100CD0B98(v22, v19, v15);
      (*(v31 + 56))(v15, 0, 1, v3);
      swift_beginAccess();
      v23 = CRRegister.wrappedValue.modify();
      sub_10002C638(v15, v24 + *(v7 + 24), &qword_101A224B8, &unk_1014B7400);
      v23(v33, 0);
      swift_endAccess();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v26 = Strong;
        v27 = (*((swift_isaMask & *Strong) + 0x388))();

        if (v27)
        {
          return;
        }
      }

      else
      {
      }

      *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes) = 0;

      *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace) = 0;

      v28 = v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0u;
      *(v28 + 48) = 0;
      *v28 = 0u;
    }
  }

  else
  {
    v20 = v32;
  }
}

void sub_100EAF3B0()
{
  v1 = type metadata accessor for CRLPKStrokePathData(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v11 == &off_1019FAE60)
  {
    v16 = v4;
    v12 = qword_1019FB140;
    swift_beginAccess();
    sub_10000BE14(v11 + v12, v10, &unk_101A0F400, &unk_1014746E0);
    sub_1005B981C(&unk_101A0F410, &unk_10148D730);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v10, &unk_101A0F400, &unk_1014746E0);
    v13 = *(v5 + 24);
    if ((*(v2 + 48))(&v7[v13], 1, v1))
    {
      sub_100EB6578(v7, type metadata accessor for CRLShapeItemParentAffinity);
    }

    else
    {
      v14 = v16;
      sub_100EB6510(&v7[v13], v16, type metadata accessor for CRLPKStrokePathData);
      sub_100EB6578(v7, type metadata accessor for CRLShapeItemParentAffinity);
      if (*(v14 + 88))
      {
        sub_100006370(0, &qword_101A02480, off_10182F728);

        sub_100C58684(v15);
      }

      sub_100EB6578(v14, type metadata accessor for CRLPKStrokePathData);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100EAF710(void *a1)
{
  v45 = a1;
  v2 = sub_1005B981C(&qword_101A224B8, &unk_1014B7400);
  __chkstk_darwin(v2 - 8);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v39 - v6;
  v8 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v11);
  v13 = v39 - v12;
  v14 = type metadata accessor for CRLPKStrokePathData(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1011255D0() & 1) == 0)
  {
    v24 = v45;

    return;
  }

  v44 = v15;
  v18 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v18 != &off_1019FAE60)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v41 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v42 = v17;
  v40 = v4;
  v43 = v1;
  v19 = v8;
  v20 = qword_1019FB140;
  swift_beginAccess();
  v21 = v18 + v20;
  v22 = v19;
  sub_10000BE14(v21, v13, &unk_101A0F400, &unk_1014746E0);
  v23 = sub_1005B981C(&unk_101A0F410, &unk_10148D730);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v13, &unk_101A0F400, &unk_1014746E0);
  sub_10000BE14(&v10[*(v19 + 24)], v7, &qword_101A224B8, &unk_1014B7400);
  sub_100EB6578(v10, type metadata accessor for CRLShapeItemParentAffinity);
  if ((*(v44 + 48))(v7, 1, v14) == 1)
  {

    sub_10000CAAC(v7, &qword_101A224B8, &unk_1014B7400);
    return;
  }

  v39[1] = v23;
  v25 = v42;
  sub_100EB65D8(v7, v42);
  v26 = v43;
  if (**(v43 + v41) != &off_1019FAE60)
  {
    goto LABEL_16;
  }

  sub_100CD1A6C();
  v28 = v27;
  v29 = v45;
  v30 = v22;
  v31 = v40;
  sub_100CD0B98(v28, v45, v40);
  (*(v44 + 56))(v31, 0, 1, v14);
  swift_beginAccess();
  v32 = v25;
  v33 = CRRegister.wrappedValue.modify();
  sub_10002C638(v31, v34 + *(v30 + 24), &qword_101A224B8, &unk_1014B7400);
  v33(v46, 0);
  swift_endAccess();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v37 = (*((swift_isaMask & *Strong) + 0x388))();

    sub_100EB6578(v32, type metadata accessor for CRLPKStrokePathData);
    if (v37)
    {
      return;
    }
  }

  else
  {

    sub_100EB6578(v25, type metadata accessor for CRLPKStrokePathData);
  }

  *(v26 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes) = 0;

  *(v26 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace) = 0;

  v38 = v26 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0u;
  *(v38 + 48) = 0;
  *v38 = 0u;
}

void sub_100EAFCDC()
{
  v1 = v0;
  v2 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v8 == &off_1019FAE60)
  {
    v9 = qword_1019FB140;
    swift_beginAccess();
    sub_10000BE14(v8 + v9, v7, &unk_101A0F400, &unk_1014746E0);
    sub_1005B981C(&unk_101A0F410, &unk_10148D730);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v7, &unk_101A0F400, &unk_1014746E0);
    v10 = v4[*(v2 + 28) + 8];
    sub_100EB6578(v4, type metadata accessor for CRLShapeItemParentAffinity);
    if (v10 == 255)
    {
      sub_100EAF3B0();
      if (v11)
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100EB00C4()
{
  v1 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v7 == &off_1019FAE60)
  {
    v8 = qword_1019FB140;
    swift_beginAccess();
    sub_10000BE14(v7 + v8, v6, &unk_101A0F400, &unk_1014746E0);
    sub_1005B981C(&unk_101A0F410, &unk_10148D730);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v6, &unk_101A0F400, &unk_1014746E0);
    v9 = &v3[*(v1 + 28)];
    v10 = *v9;
    v11 = v9[8];
    sub_100EB6578(v3, type metadata accessor for CRLShapeItemParentAffinity);
    if (v11 != 255 && (v11 & 1) == 0)
    {
      CRLiCloudConnectionStatus.rawValue.getter(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100EB02F4(unint64_t a1)
{
  v2 = v1;
  if ((sub_1011255D0() & 1) == 0)
  {
    return;
  }

  v4 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (!a1)
  {
    if (v4 == &off_1019FAE60)
    {
      swift_beginAccess();
      sub_1005B981C(&unk_101A0F400, &unk_1014746E0);

      sub_1005B981C(&unk_101A0F410, &unk_10148D730);
      v9 = CRRegister.wrappedValue.modify();
      v11 = v10 + *(type metadata accessor for CRLShapeItemParentAffinity(0) + 28);
      *v11 = 0;
      *(v11 + 8) = -1;
      v9(v16, 0);
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (v4 != &off_1019FAE60)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = sub_100D633A8(a1);
  swift_beginAccess();
  sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  sub_1005B981C(&unk_101A0F410, &unk_10148D730);
  v6 = CRRegister.wrappedValue.modify();
  v8 = v7 + *(type metadata accessor for CRLShapeItemParentAffinity(0) + 28);
  *v8 = v5;
  *(v8 + 8) = 0;
  v6(v16, 0);
LABEL_7:
  swift_endAccess();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v13 = Strong, v14 = (*((swift_isaMask & *Strong) + 0x388))(), v13, (v14 & 1) == 0))
  {
    *(v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace) = 0;

    v15 = v2 + OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0;
    *v15 = 0u;
  }
}

id sub_100EB058C(uint64_t a1)
{
  v3 = type metadata accessor for CRLPKStrokePathData(0);
  v76 = *(v3 - 8);
  v77 = v3;
  __chkstk_darwin(v3);
  v68[0] = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v82);
  v73 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = v68 - v7;
  v81 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v81);
  v72 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = v68 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(type metadata accessor for CRLCommandGroup()) init];
  v16 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v78 = a1;
  v17 = *(**(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v19 = v17(v18);

  v20 = objc_allocWithZone(type metadata accessor for CRLCommandSetInfoGeometry(0));
  v84 = v1;
  v85 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  (*(**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v22 = *(v12 + 8);
  v86 = v12 + 8;
  v22(v14, v11);
  v23 = [v20 initWithId:isa geometry:v19];

  v24 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
  swift_beginAccess();
  v25 = v23;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v83 = v16;
  v26 = v78;
  v27 = **(v78 + v16);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v29 = v26;
    v30 = *(v27 + 840);

    v32 = v30(v31);

    v33 = objc_allocWithZone(type metadata accessor for CRLCommandSetPathSource(0));
    (*(**&v84[v85] + 264))();
    v34 = UUID._bridgeToObjectiveC()().super.isa;
    v22(v14, v11);
    v35 = [v33 initWithId:v34 pathSource:v32];

    swift_beginAccess();
    v36 = v35;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v37 = *(v29 + v83);
    if (*v37 == &off_1019FAE60)
    {
      v70 = v36;
      v79 = v22;
      v71 = v25;
      v38 = v29;
      v80 = v11;
      v39 = v84;
      v40 = qword_1019FB140;
      swift_beginAccess();
      v69 = v40;
      v41 = &v37[v40];
      v42 = v74;
      sub_10000BE14(v41, v74, &unk_101A0F400, &unk_1014746E0);
      v43 = sub_1005B981C(&unk_101A0F410, &unk_10148D730);
      v44 = v75;
      v68[1] = v43;
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v42, &unk_101A0F400, &unk_1014746E0);
      v45 = *(v82 + 24);
      if ((*(v76 + 48))(v44 + v45, 1, v77))
      {
        sub_100EB6578(v44, type metadata accessor for CRLShapeItemParentAffinity);
        v46 = 0;
      }

      else
      {
        v47 = v44 + v45;
        v48 = v68[0];
        sub_100EB6510(v47, v68[0], type metadata accessor for CRLPKStrokePathData);
        sub_100EB6578(v44, type metadata accessor for CRLShapeItemParentAffinity);
        sub_100CD1A6C();
        v46 = v49;
        sub_100EB6578(v48, type metadata accessor for CRLPKStrokePathData);
      }

      v25 = v39;
      v11 = v38;
      sub_100EAF3B0();
      v51 = v50;
      v52 = objc_allocWithZone(type metadata accessor for CRLCommandSetFreehandDrawingShapeItemPKData(0));
      (*(**&v25[v85] + 264))();
      v53 = UUID._bridgeToObjectiveC()().super.isa;
      v79(v14, v80);
      v54 = [v52 initWithId:v53 strokePathCompactData:v46 maskPath:v51];

      swift_beginAccess();
      v37 = v54;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_11:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v55 = *(v11 + v83);
        if (*v55 == &off_1019FAE60)
        {
          v25 = v37;
          v56 = v69;
          swift_beginAccess();
          v57 = v72;
          sub_10000BE14(v55 + v56, v72, &unk_101A0F400, &unk_1014746E0);
          v58 = v73;
          CRRegister.wrappedValue.getter();
          sub_10000CAAC(v57, &unk_101A0F400, &unk_1014746E0);
          v59 = v58 + *(v82 + 28);
          v60 = *v59;
          v61 = *(v59 + 8);
          sub_100EB6578(v58, type metadata accessor for CRLShapeItemParentAffinity);
          if (v61 == 255)
          {
            v64 = 0;
            v62 = v79;
            v63 = v80;
          }

          else
          {
            v62 = v79;
            v63 = v80;
            if (v61)
            {
              v64 = 0;
            }

            else
            {
              v64 = CRLiCloudConnectionStatus.rawValue.getter(v60);
            }
          }

          v65 = objc_allocWithZone(type metadata accessor for CRLCommandSetFreehandDrawingShapeItemSnappedShapeType(0));
          (*(**&v84[v85] + 264))();
          v66 = UUID._bridgeToObjectiveC()().super.isa;
          v62(v14, v63);
          v67 = [v65 initWithId:v66 snappedShapeType:v64];

          swift_beginAccess();
          v37 = v67;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v15 + v24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          __break(1u);
        }

        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_18:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        return v15;
      }
    }

    else
    {
      __break(1u);
    }

    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100EB1080()
{
}

id sub_100EB10D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFreehandDrawingShapeItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLFreehandDrawingShapeItem(uint64_t a1)
{
  result = qword_101A22480;
  if (!qword_101A22480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100EB1208(uint64_t *a1, void *a2)
{
  v5 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v36 - v9;
  v11 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v11);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v17 = *a1;
  v18 = *(*a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v18 != &off_1019FAE60)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v41 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v42 = v17;
  v37 = v7;
  v39 = a2;
  v40 = v2;
  v19 = qword_1019FB140;
  swift_beginAccess();
  sub_10000BE14(v18 + v19, v16, &unk_101A0F400, &unk_1014746E0);
  v36[1] = v11;
  sub_1005B981C(&unk_101A0F410, &unk_10148D730);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v16, &unk_101A0F400, &unk_1014746E0);
  v38 = v5;
  v20 = &v10[*(v5 + 28)];
  v21 = *v20;
  v22 = v20[8];
  sub_100EB6578(v10, type metadata accessor for CRLShapeItemParentAffinity);
  if (v22 == 255 || (v22 & 1) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = CRLiCloudConnectionStatus.rawValue.getter(v21);
  }

  v24 = *(v42 + v41);
  if (*v24 != &off_1019FAE60)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  sub_10000BE14(v24 + v19, v13, &unk_101A0F400, &unk_1014746E0);
  v25 = v37;
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v13, &unk_101A0F400, &unk_1014746E0);
  v26 = v25 + *(v38 + 28);
  v27 = *v26;
  v28 = *(v26 + 8);
  sub_100EB6578(v25, type metadata accessor for CRLShapeItemParentAffinity);
  if (v28 == 255)
  {
    v29 = v39;
  }

  else
  {
    v29 = v39;
    if ((v28 & 1) == 0)
    {
      CRLiCloudConnectionStatus.rawValue.getter(v27);
    }
  }

  v30 = *v29;
  v31 = *(*v29 + 16);
  if (v31)
  {
    v32 = sub_1007CF108();
    if (v33)
    {
      v31 = *(*(v30 + 56) + 8 * v32);
    }

    else
    {
      v31 = 0;
    }
  }

  v34 = v31 + 1;
  if (v31 != -1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *v29;
    *v29 = 0x8000000000000000;
    sub_100AA1180(v34, v23, isUniquelyReferenced_nonNull_native);
    *v29 = v43;

    return;
  }

LABEL_20:
  __break(1u);
}

void *sub_100EB16F4(void *a1, uint64_t a2)
{
  v30 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_1005B981C(&qword_101A15C38, &unk_1014A1000);
  __chkstk_darwin(v9 - 8);
  v31 = &v29 - v10;
  v11 = **(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v13 = result;
    v14 = result[2];
    v15 = a1;

    v16 = v11;
    v17 = v15;
    v14(v16, v13);

    v18 = **&v15[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    result = swift_conformsToProtocol2();
    if (result)
    {
      v19 = result;
      v20 = result[2];

      v20(v18, v19);

      sub_100EB64C8(&qword_101A15C40, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData, byte_1014C09D8);
      v21 = v31;
      CRType.observableDifference(from:)();
      sub_100EB6578(v5, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      sub_100EB6578(v8, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v22 = sub_1005B981C(&qword_101A15C48, &qword_1014B73D0);
      if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
      {
        v23 = _swiftEmptyArrayStorage;
        if (!_swiftEmptyArrayStorage[2])
        {

          v24 = _swiftEmptyDictionarySingleton;
LABEL_10:
          sub_10000CAAC(v21, &qword_101A15C38, &unk_1014A1000);
          return v24;
        }
      }

      else
      {
        v23 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v26 = *(v23 + 2);
        v25 = *(v23 + 3);
        if (v26 >= v25 >> 1)
        {
          v23 = sub_100024CBC((v25 > 1), v26 + 1, 1, v23);
        }

        *(v23 + 2) = v26 + 1;
        v27 = &v23[16 * v26];
        strcpy(v27 + 32, "shapeStyleData");
        v27[47] = -18;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = _swiftEmptyDictionarySingleton;
      sub_100A9B080(v23, 5, isUniquelyReferenced_nonNull_native);

      v24 = v32;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100EB1AD8(char *a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v205 = a5;
  v201 = a4;
  v5 = a3;
  v203 = a1;
  v197 = type metadata accessor for UUID();
  v7 = *(v197 - 8);
  __chkstk_darwin(v197 - 8);
  v177 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  __chkstk_darwin(v184);
  v10 = &v173 - v9;
  v11 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v11 - 8);
  v180 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v183 = &v173 - v14;
  __chkstk_darwin(v15);
  v17 = &v173 - v16;
  __chkstk_darwin(v18);
  v198 = &v173 - v19;
  if (v5)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_4;
    }

    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10146BDE0;
    v134 = CRLTransactablePropertyMapKeys.rawValue.getter(v5);
    v136 = v135;
    *(v42 + 56) = &type metadata for String;
    v137 = sub_1000053B0();
    *(v42 + 32) = v134;
    v10 = (v42 + 32);
    v204 = v137;
    *(v42 + 64) = v137;
    *(v42 + 40) = v136;
    *(v42 + 96) = type metadata accessor for CRLBoardItemBase(0);
    *(v42 + 104) = sub_100EB64C8(&qword_101A0AFF0, type metadata accessor for CRLBoardItemBase, &protocol conformance descriptor for NSObject);
    v44 = v205;
    *(v42 + 72) = v205;
    v138 = objc_opt_self();
    v139 = v44;
    v203 = v138;
    LODWORD(v44) = [v138 _atomicIncrementAssertCount];
    *&v214[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v42, v214, "Unhandled CRLTransactablePropertyMapKeys key %@ for transactable %@", 67, 2u);
    StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
    v140 = String._bridgeToObjectiveC()();

    v141 = [v140 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v142;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_139;
    }

LABEL_102:
    v143 = static OS_os_log.crlAssert;
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_10146CA70;
    *(v144 + 56) = &type metadata for Int32;
    *(v144 + 64) = &protocol witness table for Int32;
    *(v144 + 32) = v44;
    v145 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v144 + 96) = v145;
    v146 = sub_1005CF04C();
    *(v144 + 72) = v38;
    v147 = v204;
    *(v144 + 136) = &type metadata for String;
    *(v144 + 144) = v147;
    *(v144 + 104) = v146;
    *(v144 + 112) = v17;
    *(v144 + 120) = v22;
    *(v144 + 176) = &type metadata for UInt;
    *(v144 + 184) = &protocol witness table for UInt;
    *(v144 + 152) = 1092;
    v148 = *&v214[0];
    *(v144 + 216) = v145;
    *(v144 + 224) = v146;
    *(v144 + 192) = v148;
    v149 = v38;
    v150 = v148;
    v151 = static os_log_type_t.error.getter();
    sub_100005404(v143, &_mh_execute_header, v151, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v144);
    swift_setDeallocating();
    v204 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v152 = static os_log_type_t.error.getter();
    sub_100005404(v143, &_mh_execute_header, v152, "Unhandled CRLTransactablePropertyMapKeys key %@ for transactable %@", 67, 2, v42);

    type metadata accessor for __VaListBuilder();
    v38 = swift_allocObject();
    v38[2] = 8;
    v38[3] = 0;
    v153 = v38 + 3;
    v38[4] = 0;
    v38[5] = 0;
    v205 = v42;
    v154 = *(v42 + 16);
    if (!v154)
    {
LABEL_127:
      v169 = __VaListBuilder.va_list()();
      StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
      v170 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
      v171 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Unhandled CRLTransactablePropertyMapKeys key %@ for transactable %@", 67, 2);
      v172 = String._bridgeToObjectiveC()();

      [v203 handleFailureInFunction:v170 file:v171 lineNumber:1092 isFatal:0 format:v172 args:v169];

      swift_setDeallocating();
      swift_arrayDestroy();

      swift_deallocClassInstance();
      return;
    }

    v155 = 0;
    v42 = 40;
    while (1)
    {
      v156 = &v10[40 * v155];
      v17 = *(v156 + 4);
      LODWORD(v44) = sub_100020E58(v156, *(v156 + 3));
      v157 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v22 = *v153;
      v158 = *(v157 + 16);
      v49 = __OFADD__(*v153, v158);
      v159 = *v153 + v158;
      if (v49)
      {
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        swift_once();
        goto LABEL_102;
      }

      v44 = v38[4];
      if (v44 >= v159)
      {
        goto LABEL_119;
      }

      if (v44 + 0x4000000000000000 < 0)
      {
        goto LABEL_134;
      }

      v17 = v38[5];
      if (2 * v44 > v159)
      {
        v159 = 2 * v44;
      }

      v38[4] = v159;
      if ((v159 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_135;
      }

      v160 = v10;
      v161 = v157;
      v162 = swift_slowAlloc();
      v163 = v162;
      v38[5] = v162;
      if (v17)
      {
        break;
      }

      v157 = v161;
      v10 = v160;
      v42 = 40;
      if (!v163)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

LABEL_120:
      v165 = *(v157 + 16);
      if (v165)
      {
        v166 = (v157 + 32);
        v167 = *v153;
        while (1)
        {
          v168 = *v166++;
          *&v163[8 * v167] = v168;
          v167 = *v153 + 1;
          if (__OFADD__(*v153, 1))
          {
            break;
          }

          *v153 = v167;
          if (!--v165)
          {
            goto LABEL_104;
          }
        }

        __break(1u);
        goto LABEL_133;
      }

LABEL_104:

      if (++v155 == v154)
      {
        goto LABEL_127;
      }
    }

    if (v162 != v17 || v162 >= &v17[8 * v22])
    {
      memmove(v162, v17, 8 * v22);
    }

    LODWORD(v44) = v38;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v157 = v161;
    v10 = v160;
    v42 = 40;
LABEL_119:
    v163 = v38[5];
    if (!v163)
    {
      goto LABEL_126;
    }

    goto LABEL_120;
  }

LABEL_4:
  v196 = *(a2 + 16);
  if (!v196)
  {
    return;
  }

  v204 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v21 = *&v201[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  v22 = 0xEE007974696E6966;
  v202 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v195 = a2 + 32;
  v175 = 0x8000000101563120;
  v176 = 0x8000000101563140;
  v199 = (v7 + 48);
  v178 = (v7 + 8);
  v179 = (v7 + 32);
  v181 = v201;
  v182 = v21;

  v23 = 0;
  v174 = xmmword_10146C6B0;
  v173 = xmmword_10146CA70;
  v24 = v197;
  v193 = v17;
  v194 = v10;
  while (1)
  {
    v25 = (v195 + 16 * v23);
    v26 = *v25;
    v27 = v25[1];
    v28 = *v25 == 0x6641746E65726170 && v27 == 0xEE007974696E6966;
    if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    v200 = v23;
    v22 = v198;
    (*(*v182 + 272))();
    v29 = *(**(v205 + v204) + 272);

    v29(v30);

    v31 = *(v184 + 48);
    sub_10000BE14(v22, v10, &qword_1019F6990, &qword_10146D2F0);
    sub_10000BE14(v17, &v10[v31], &qword_1019F6990, &qword_10146D2F0);
    v32 = *v199;
    if ((*v199)(v10, 1, v24) == 1)
    {
      sub_10000CAAC(v17, &qword_1019F6990, &qword_10146D2F0);
      sub_10000CAAC(v22, &qword_1019F6990, &qword_10146D2F0);
      if (v32(&v10[v31], 1, v24) != 1)
      {
        goto LABEL_18;
      }

      v33 = sub_10000CAAC(v10, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      sub_10000BE14(v10, v183, &qword_1019F6990, &qword_10146D2F0);
      if (v32(&v10[v31], 1, v24) == 1)
      {
        sub_10000CAAC(v17, &qword_1019F6990, &qword_10146D2F0);
        sub_10000CAAC(v198, &qword_1019F6990, &qword_10146D2F0);
        (*v178)(v183, v24);
LABEL_18:
        sub_10000CAAC(v10, &unk_101A0AFE0, &unk_10146F3C0);
LABEL_19:
        v34 = *(**(v205 + v204) + 272);

        v36 = v180;
        v34(v35);

        if (v32(v36, 1, v24) == 1)
        {
          sub_10000CAAC(v36, &qword_1019F6990, &qword_10146D2F0);
          v208 = 0u;
          v209 = 0u;
        }

        else
        {
          *(&v209 + 1) = v24;
          v52 = sub_10002C58C(&v208);
          (*v179)(v52, v36, v24);
        }

        sub_10000BE14(&v208, v207, &unk_1019F4D00, &unk_10146E7F0);
        swift_beginAccess();
        sub_100BC1F00(v207, 0);
        swift_endAccess();
        v33 = sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
        v17 = v193;
        goto LABEL_32;
      }

      v57 = &v10[v31];
      v58 = v24;
      v59 = v177;
      (*v179)(v177, v57, v58);
      sub_100EB64C8(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = v17;
      v60 = v183;
      v192.i32[0] = dispatch thunk of static Equatable.== infix(_:_:)();
      v61 = *v178;
      v62 = v59;
      v24 = v58;
      (*v178)(v62, v58);
      sub_10000CAAC(v22, &qword_1019F6990, &qword_10146D2F0);
      sub_10000CAAC(v198, &qword_1019F6990, &qword_10146D2F0);
      v63 = v60;
      v17 = v22;
      v61(v63, v58);
      v33 = sub_10000CAAC(v194, &qword_1019F6990, &qword_10146D2F0);
      if ((v192.i8[0] & 1) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_32:
    v53 = (*((swift_isaMask & *v205) + 0xE0))(v33);
    v54 = (*((swift_isaMask & *v181) + 0xE0))();
    v55 = sub_100006370(0, &unk_1019F5730, off_10182F770);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      if ([v53 isEqualExceptForPosition:v54])
      {
        *(&v209 + 1) = v55;
        *&v208 = v53;
        sub_10000BE14(&v208, v207, &unk_1019F4D00, &unk_10146E7F0);
        v22 = v202;
        swift_beginAccess();
        v56 = v53;
        sub_100BC1F00(v207, 6);
        swift_endAccess();
        sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
        v17 = v193;
      }

      else
      {
        *(&v209 + 1) = v55;
        *&v208 = v53;
        sub_10000BE14(&v208, v207, &unk_1019F4D00, &unk_10146E7F0);
        v22 = v202;
        swift_beginAccess();
        v64 = v53;
        sub_100BC1F00(v207, 7);
        swift_endAccess();
        sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
        [v64 angle];
        v66 = v65;
        [v54 angle];
        v68 = sub_1009C2C44(v66, v67);
        v17 = v193;
        if (!v68)
        {
          *(&v209 + 1) = v55;
          *&v208 = v64;
          sub_10000BE14(&v208, v207, &unk_1019F4D00, &unk_10146E7F0);
          v22 = v202;
          swift_beginAccess();
          v69 = v64;
          sub_100BC1F00(v207, 8);
          swift_endAccess();
          v17 = v193;
          sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
        }
      }
    }

    v70 = v204;
    v71 = *(**(v205 + v204) + 320);

    v71(v210, v72);
    v189 = v210[1];
    v190 = v210[0];
    v191 = v210[3];
    v192 = v210[2];

    v73 = *(**&v201[v70] + 320);

    v73(v212, v74);
    v185 = v212[1];
    v186 = v212[0];
    v187 = v212[3];
    v188 = v212[2];

    if (v211)
    {
      if ((v213 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if ((v213 & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v189, v185), vceqq_f32(v190, v186)), vandq_s8(vceqq_f32(v192, v188), vceqq_f32(v191, v187)))) & 0x80000000) == 0)
    {
LABEL_44:
      v75 = *(**(v205 + v204) + 320);

      v75(v214, v76);

      if (v215)
      {
        v208 = 0u;
        v209 = 0u;
      }

      else
      {
        *(&v209 + 1) = &type metadata for CRL3DTransform;
        v77 = swift_allocObject();
        *&v208 = v77;
        v78 = v214[1];
        v77[1] = v214[0];
        v77[2] = v78;
        v79 = v214[3];
        v77[3] = v214[2];
        v77[4] = v79;
      }

      v23 = v200;
      sub_10000BE14(&v208, v207, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();
      sub_100BC1F00(v207, 9);
      swift_endAccess();

      sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
      v10 = v194;
      goto LABEL_7;
    }

    v10 = v194;
    v23 = v200;
LABEL_7:
    ++v23;
    v24 = v197;
    if (v23 == v196)
    {

      return;
    }
  }

  v37 = v26 == 0x64656B636F6CLL && v27 == 0xE600000000000000;
  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v38 = v10;
    v10 = v17;
    v17 = v23;
    v39 = *(**(v205 + v204) + 368);

    LOBYTE(v39) = v39(v40);

    *(&v209 + 1) = &type metadata for Bool;
    LOBYTE(v208) = v39 & 1;
    v42 = v202;
    v41 = v203;
    swift_beginAccess();
    sub_10000BE14(&v208, v207, &unk_1019F4D00, &unk_10146E7F0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *&v41[v42];
    v206 = v44;
    v45 = sub_1007CF108();
    v47 = *(v44 + 16);
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      goto LABEL_136;
    }

    v42 = v46;
    if (*(v44 + 24) >= v50)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v133 = v45;
        sub_100AA3EA4();
        v45 = v133;
      }
    }

    else
    {
      sub_100A890C0(v50, isUniquelyReferenced_nonNull_native);
      v45 = sub_1007CF108();
      if ((v42 & 1) != (v51 & 1))
      {
        goto LABEL_144;
      }
    }

    v23 = v17;
    v44 = v206;
    v17 = v10;
    if (v42)
    {
      sub_10002C638(v207, v206[7] + 32 * v45, &unk_1019F4D00, &unk_10146E7F0);
    }

    else
    {
      v206[(v45 >> 6) + 8] |= 1 << v45;
      *(*(v44 + 48) + 8 * v45) = 12;
      v80 = *(v44 + 56) + 32 * v45;
      v81 = v207[1];
      *v80 = v207[0];
      *(v80 + 16) = v81;
      v82 = *(v44 + 16);
      v49 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v49)
      {
        goto LABEL_137;
      }

      *(v44 + 16) = v83;
    }

    *&v203[v202] = v44;
    swift_endAccess();
    sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
    v10 = v38;
    goto LABEL_7;
  }

  v84 = v26 == 0xD000000000000011 && v176 == v27;
  if (v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v85 = *(**(v205 + v204) + 392);
    v86 = v17;

    LOBYTE(v85) = v85(v87);

    *(&v209 + 1) = &type metadata for Bool;
    LOBYTE(v208) = v85 & 1;
    v88 = v10;
    sub_10000BE14(&v208, v207, &unk_1019F4D00, &unk_10146E7F0);
    swift_beginAccess();
    v89 = 13;
LABEL_61:
    sub_100BC1F00(v207, v89);
    swift_endAccess();
    v10 = v88;
    v17 = v86;
    sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
    goto LABEL_7;
  }

  if (v26 == 0xD000000000000018 && v175 == v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v90 = *(**(v205 + v204) + 416);
    v86 = v17;
    v91 = v23;

    v93 = v90(v92);
    v95 = v94;

    *(&v209 + 1) = &type metadata for String;
    *&v208 = v93;
    *(&v208 + 1) = v95;
    v23 = v91;
    v88 = v10;
    sub_10000BE14(&v208, v207, &unk_1019F4D00, &unk_10146E7F0);
    swift_beginAccess();
    v89 = 15;
    goto LABEL_61;
  }

  if (v26 == 0x776F64616873 && v27 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(&v209 + 1) = &type metadata for Bool;
    LOBYTE(v208) = 1;
    sub_10000BE14(&v208, v207, &unk_1019F4D00, &unk_10146E7F0);
    swift_beginAccess();
    sub_100BC1F00(v207, 17);
    swift_endAccess();
    sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
    goto LABEL_7;
  }

  if (v26 == 0x6574726F70707573 && v27 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v96 = (*((swift_isaMask & *v205) + 0x3F0))();
    *(&v209 + 1) = &type metadata for Bool;
    LOBYTE(v208) = v96 & 1;
    sub_10000BE14(&v208, v207, &unk_1019F4D00, &unk_10146E7F0);
    swift_beginAccess();
    sub_100BC1F00(v207, 14);
    swift_endAccess();
    sub_10000CAAC(&v208, &unk_1019F4D00, &unk_10146E7F0);
    v17 = v193;
    v10 = v194;
    goto LABEL_7;
  }

  v200 = v23;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v97 = swift_allocObject();
  *(v97 + 16) = v174;
  *(v97 + 56) = &type metadata for String;
  v22 = sub_1000053B0();
  *(v97 + 32) = v26;
  v191.i64[0] = v97 + 32;
  *(v97 + 64) = v22;
  *(v97 + 40) = v27;
  v98 = objc_opt_self();

  v187.i64[0] = v98;
  v192.i32[0] = [v98 _atomicIncrementAssertCount];
  *&v208 = [objc_allocWithZone(NSString) init];
  v188.i64[0] = v97;
  StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
  v99 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
  v100 = String._bridgeToObjectiveC()();

  v101 = [v100 lastPathComponent];

  v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v103;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v105 = static OS_os_log.crlAssert;
  v106 = swift_allocObject();
  *(v106 + 16) = v173;
  *(v106 + 56) = &type metadata for Int32;
  *(v106 + 64) = &protocol witness table for Int32;
  *(v106 + 32) = v192.i32[0];
  v107 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v106 + 96) = v107;
  v108 = sub_1005CF04C();
  *(v106 + 72) = v99;
  *(v106 + 136) = &type metadata for String;
  *(v106 + 144) = v22;
  *(v106 + 104) = v108;
  *(v106 + 112) = v102;
  *(v106 + 120) = v104;
  *(v106 + 176) = &type metadata for UInt;
  *(v106 + 152) = 1088;
  v109 = v208;
  *(v106 + 216) = v107;
  *(v106 + 224) = v108;
  *(v106 + 184) = &protocol witness table for UInt;
  *(v106 + 192) = v109;
  v110 = v99;
  v111 = v109;
  v112 = static os_log_type_t.error.getter();
  sub_100005404(v105, &_mh_execute_header, v112, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v106);
  swift_setDeallocating();
  v186.i64[0] = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v113 = static os_log_type_t.error.getter();
  v114 = v105;
  v115 = v188.i64[0];

  type metadata accessor for __VaListBuilder();
  v116 = swift_allocObject();
  v116[2] = 8;
  v116[3] = 0;
  v117 = v116 + 3;
  v116[4] = 0;
  v116[5] = 0;
  v192.i64[0] = v116;
  v17 = v193;
  v10 = v194;
  v190.i64[0] = *(v115 + 16);
  if (!v190.i64[0])
  {
LABEL_100:
    v22 = v192.i64[0];
    v189.i64[0] = __VaListBuilder.va_list()();
    StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
    v130 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItem.swift", 83, 2);
    v131 = String._bridgeToObjectiveC()();

    v132 = String._bridgeToObjectiveC()();

    [v187.i64[0] handleFailureInFunction:v130 file:v131 lineNumber:1088 isFatal:0 format:v132 args:v189.i64[0]];

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v23 = v200;
    goto LABEL_7;
  }

  v42 = 0;
  while (2)
  {
    LODWORD(v44) = sub_100020E58((v191.i64[0] + 40 * v42), *(v191.i64[0] + 40 * v42 + 24));
    v118 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v119 = *v117;
    v120 = *(v118 + 16);
    v49 = __OFADD__(*v117, v120);
    v121 = *v117 + v120;
    if (!v49)
    {
      v38 = v118;
      v122 = v192.i64[0];
      v123 = *(v192.i64[0] + 32);
      if (v123 >= v121)
      {
        goto LABEL_93;
      }

      if (v123 + 0x4000000000000000 < 0)
      {
        goto LABEL_141;
      }

      v22 = *(v192.i64[0] + 40);
      v189.i64[0] = *(v192.i64[0] + 32);
      if (2 * v123 > v121)
      {
        v121 = 2 * v123;
      }

      *(v192.i64[0] + 32) = v121;
      if ((v121 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_142;
      }

      v44 = v122;
      v124 = swift_slowAlloc();
      *(v44 + 40) = v124;
      if (v22)
      {
        if (v124 != v22 || v124 >= v22 + 8 * v119)
        {
          memmove(v124, v22, 8 * v119);
          LODWORD(v44) = v192.i32[0];
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v122 = v192.i64[0];
LABEL_93:
        v124 = *(v122 + 40);
      }

      if (!v124)
      {
        goto LABEL_143;
      }

      v126 = v38[2];
      if (v126)
      {
        v127 = v38 + 4;
        v128 = *v117;
        do
        {
          v129 = *v127++;
          *(v124 + v128) = v129;
          v128 = *v117 + 1;
          if (__OFADD__(*v117, 1))
          {
            goto LABEL_138;
          }

          *v117 = v128;
          --v126;
        }

        while (v126);
      }

      if (++v42 == v190.i64[0])
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  type metadata accessor for CRLChangeProperty(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100EB39A8(char *a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v344 = a5;
  v336 = a1;
  v335 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v335);
  v309 = &v299 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v308 = &v299 - v10;
  __chkstk_darwin(v11);
  v316 = &v299 - v12;
  __chkstk_darwin(v13);
  v325 = &v299 - v14;
  __chkstk_darwin(v15);
  v317 = &v299 - v16;
  __chkstk_darwin(v17);
  v318 = &v299 - v18;
  __chkstk_darwin(v19);
  v319 = &v299 - v20;
  __chkstk_darwin(v21);
  v321 = &v299 - v22;
  __chkstk_darwin(v23);
  v320 = &v299 - v24;
  __chkstk_darwin(v25);
  v322 = &v299 - v26;
  __chkstk_darwin(v27);
  v311 = &v299 - v28;
  __chkstk_darwin(v29);
  v323 = &v299 - v30;
  __chkstk_darwin(v31);
  v324 = &v299 - v32;
  v33 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v33 - 8);
  v35 = &v299 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v299 - v37;
  v39 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v39);
  v41 = &v299 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v299 - v43;
  v45 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v45);
  __chkstk_darwin(v46);
  if (!a3)
  {
    v334 = &v299 - v48;
    v335 = v49;
    v337 = v47;
    v338 = v41;
    v339 = v39;
    v340 = v35;
    v277 = *&a4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    v341 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
    v342 = v277;
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_143;
    }

    v278 = *(a2 + 16);
    v329 = a2;
    v330 = a4;
    if (!v278)
    {
      v297 = a4;

LABEL_124:
      v298 = v330;
      sub_100EB1AD8(v336, v329, 0, v298, v344);

      return;
    }

    v331 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
    v279 = a4;

    v280 = (a2 + 40);
    v332 = v38;
    v333 = v44;
    while (1)
    {
      v285 = *(v280 - 1) == 0x6641746E65726170 && *v280 == 0xEE007974696E6966;
      if (v285 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v343 = v278;
        v286 = *(v344 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
        if (!swift_conformsToProtocol2())
        {
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          return;
        }

        v287 = v334;
        (*(*v342 + 752))();

        sub_1005B981C(&unk_101A0F410, &unk_10148D730);
        CRRegister.wrappedValue.getter();
        sub_10000CAAC(v287, &unk_101A0F400, &unk_1014746E0);
        v288 = v339;
        sub_100EB6510(&v44[*(v339 + 20)], v38, type metadata accessor for CRLPathSourceData);
        v289 = sub_100EB6578(v44, type metadata accessor for CRLShapeItemParentAffinity);
        v290 = v335;
        (*(*v286 + 752))(v289);
        v291 = v338;
        CRRegister.wrappedValue.getter();
        sub_10000CAAC(v290, &unk_101A0F400, &unk_1014746E0);
        v292 = v291 + *(v288 + 20);
        v293 = v340;
        sub_100EB6510(v292, v340, type metadata accessor for CRLPathSourceData);
        v38 = v332;
        sub_100EB6578(v291, type metadata accessor for CRLShapeItemParentAffinity);
        v294 = sub_100C48FE0(v38, v293);
        sub_100EB6578(v293, type metadata accessor for CRLPathSourceData);
        sub_100EB6578(v38, type metadata accessor for CRLPathSourceData);
        if (v294)
        {
        }

        else
        {
          v281 = *(*v286 + 864);

          v281(v282);

          v284 = (*((swift_isaMask & *v344) + 0x530))(v283);
          *(&v375[1] + 1) = sub_100006370(0, &qword_101A031A8, off_10182F908);
          *&v375[0] = v284;
          sub_10000BE14(v375, v374, &unk_1019F4D00, &unk_10146E7F0);
          swift_beginAccess();
          sub_100BC1F00(v374, 21);
          swift_endAccess();

          sub_10000CAAC(v375, &unk_1019F4D00, &unk_10146E7F0);
        }

        v44 = v333;
        v278 = v343;
      }

      v280 += 2;
      v278 = (v278 - 1);
      if (!v278)
      {
        goto LABEL_124;
      }
    }
  }

  if (a3 != 5)
  {
    v295 = v336;
    v296 = v344;

    sub_100EB1AD8(v295, a2, a3, a4, v296);
    return;
  }

  v341 = *&a4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  v343 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
  v340 = swift_conformsToProtocol2();
  if (!v340)
  {
    goto LABEL_142;
  }

  v315 = *(a2 + 16);
  if (!v315)
  {
    return;
  }

  v334 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v314 = a2 + 32;
  v339 = (v340 + 16);
  v310 = &v375[14] + 8;
  v300 = a4;

  v50 = 0;
  v302 = xmmword_10146C6B0;
  v301 = xmmword_10146CA70;
  while (1)
  {
    v332 = v50;
    v55 = (v314 + 16 * v50);
    v57 = *v55;
    v56 = v55[1];
    v58 = *v55 == 0x7974536570616873 && v56 == 0xEE0061746144656CLL;
    if (!v58 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    v59 = *&v341->Flags;
    v60 = v324;
    v337 = *(v340 + 2);
    v338 = v59;
    v337(v59);
    sub_1005B981C(&unk_101A10690, &qword_101472520);
    CRRegister.wrappedValue.getter();
    sub_100EB6578(v60, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v410[4] = v375[4];
    v410[5] = v375[5];
    v411 = v375[6];
    v410[0] = v375[0];
    v410[1] = v375[1];
    v342 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v61 = *(v344 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v410[3] = v375[3];
    v410[2] = v375[2];
    v62 = *v61;
    v63 = swift_conformsToProtocol2();
    if (!v63)
    {
      goto LABEL_133;
    }

    v64 = v63;
    v65 = *(v63 + 16);

    v66 = v323;
    v65(v62, v64);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v66, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v416 = v375[4];
    v417 = v375[5];
    v418 = v375[6];
    v412 = v375[0];
    v413 = v375[1];
    v415 = v375[3];
    v414 = v375[2];
    v67 = *&v410[0];
    v68 = BYTE8(v410[0]);
    v388 = *(&v410[2] + 9);
    v389 = *(&v410[3] + 9);
    v390[0] = *(&v410[4] + 9);
    *(v390 + 15) = *(&v410[5] + 1);
    v386 = *(v410 + 9);
    v387 = *(&v410[1] + 9);
    v69 = v411;
    v70 = v375[6];
    if (!v411.n128_u64[0])
    {
      if (*&v375[6])
      {
LABEL_20:
        *&v375[0] = *&v410[0];
        BYTE8(v375[0]) = BYTE8(v410[0]);
        *(&v375[2] + 9) = *(&v410[2] + 9);
        *(&v375[3] + 9) = *(&v410[3] + 9);
        *(&v375[4] + 9) = *(&v410[4] + 9);
        *(&v375[5] + 1) = *(&v410[5] + 1);
        *(v375 + 9) = *(v410 + 9);
        *(&v375[1] + 9) = *(&v410[1] + 9);
        v375[6] = v411;
        v375[7] = v412;
        v375[8] = v413;
        v375[11] = v416;
        v375[12] = v417;
        v375[9] = v414;
        v375[10] = v415;
        v375[13] = v70;
        sub_10000CAAC(v375, &qword_1019FFF90, &unk_10148E930);
LABEL_50:
        v115 = **(v344 + v342);
        v116 = swift_conformsToProtocol2();
        if (!v116)
        {
          goto LABEL_138;
        }

        v117 = v116;
        v118 = *(v116 + 16);

        v119 = v311;
        v118(v115, v117);

        CRRegister.wrappedValue.getter();
        sub_100EB6578(v119, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
        v374[0] = v400[0];
        v374[1] = v400[1];
        v374[5] = v400[5];
        v374[6] = v401;
        v374[2] = v400[2];
        v374[3] = v400[3];
        v374[4] = v400[4];
        v375[1] = v400[1];
        v375[0] = v400[0];
        v375[6] = v401;
        v375[5] = v400[5];
        v375[4] = v400[4];
        v375[2] = v400[2];
        v375[3] = v400[3];
        if (v401.n128_u64[0])
        {
          sub_100006370(0, &qword_101A00EB0, off_10182F7B0);
          v441[2] = v374[3];
          v441[3] = v374[4];
          v441[4] = v374[5];
          v442 = v374[6].n128_u64[0];
          v441[0] = v374[1];
          v441[1] = v374[2];
          sub_10074A990(&v375[1], v400);
          v120 = sub_1008B0490(v441);
          if (BYTE8(v375[0]))
          {
            if (qword_1019F2268 != -1)
            {
              swift_once();
            }

            v121 = static OS_os_log.persistence;
            v122 = static os_log_type_t.info.getter();
            sub_100005404(v121, &_mh_execute_header, v122, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
          }

          v123 = [objc_allocWithZone(CRLColorFill) initWithColor:v120];

          sub_10000CAAC(v374, &qword_1019FFF80, &qword_101489000);
          *(&v400[1] + 1) = sub_100006370(0, &qword_101A2BF30, off_10182F808);
          *&v400[0] = v123;
        }

        else
        {
          memset(v400, 0, 32);
        }

        sub_10000BE14(v400, &v386, &unk_1019F4D00, &unk_10146E7F0);
        swift_beginAccess();
        sub_100BC1F00(&v386, 22);
        swift_endAccess();
        v124 = v400;
        v125 = &unk_1019F4D00;
        v126 = &unk_10146E7F0;
      }

      else
      {
        *&v375[0] = *&v410[0];
        BYTE8(v375[0]) = BYTE8(v410[0]);
        *(&v375[2] + 9) = *(&v410[2] + 9);
        *(&v375[3] + 9) = *(&v410[3] + 9);
        *(&v375[4] + 9) = *(&v410[4] + 9);
        *(&v375[5] + 1) = *(&v410[5] + 1);
        *(v375 + 9) = *(v410 + 9);
        *(&v375[1] + 9) = *(&v410[1] + 9);
        *&v375[6] = 0;
        *(&v375[6] + 1) = v411.n128_u64[1];
        v124 = v375;
        v125 = &qword_1019FFF80;
        v126 = &qword_101489000;
      }

      sub_10000CAAC(v124, v125, v126);
      goto LABEL_60;
    }

    if (!*&v375[6])
    {
      goto LABEL_20;
    }

    v375[0] = v412;
    v375[1] = v413;
    v375[5] = v417;
    v375[4] = v416;
    v375[3] = v415;
    v375[2] = v414;
    v400[1] = *(&v375[1] + 9);
    v400[0] = *(v375 + 9);
    *(&v400[4] + 15) = *(&v375[5] + 8);
    v400[4] = *(&v375[4] + 9);
    v400[3] = *(&v375[3] + 9);
    v400[2] = *(&v375[2] + 9);
    v376[1] = *(&v410[1] + 9);
    v376[0] = *(v410 + 9);
    *(&v376[4] + 15) = *(&v410[5] + 1);
    v376[4] = *(&v410[4] + 9);
    v376[3] = *(&v410[3] + 9);
    v376[2] = *(&v410[2] + 9);
    *&v359 = *&v410[0];
    BYTE8(v359) = BYTE8(v410[0]) & 1;
    *&v345[0] = v412;
    BYTE8(v345[0]) = BYTE8(v412) & 1;
    sub_10000BE14(v410, v374, &qword_1019FFF80, &qword_101489000);
    sub_10000BE14(&v412, v374, &qword_1019FFF80, &qword_101489000);
    sub_100A1B84C();
    if (static CRExtensible.== infix(_:_:)() & 1) != 0 && (v443[2] = *(&v376[2] + 7), v443[3] = *(&v376[3] + 7), v443[4] = *(&v376[4] + 7), v443[1] = *(&v376[1] + 7), v443[0] = *(v376 + 7), v444 = v69.n128_u64[0], v445[2] = *(&v400[2] + 7), v445[3] = *(&v400[3] + 7), v445[4] = *(&v400[4] + 7), v446 = *(&v400[5] + 7), v445[0] = *(v400 + 7), v445[1] = *(&v400[1] + 7), sub_1008B1A4C(v443, v445, *(v400 + 7)), (v71))
    {
      sub_100B3216C(v69.n128_i64[1], *(&v70 + 1));
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }

    sub_10000CAAC(v375, &qword_1019FFF80, &qword_101489000);
    sub_10000CAAC(&v412, &qword_1019FFF80, &qword_101489000);
    sub_10000CAAC(v410, &qword_1019FFF80, &qword_101489000);
    *(&v374[2] + 9) = v388;
    *(&v374[3] + 9) = v389;
    *(&v374[4] + 9) = v390[0];
    *(v374 + 9) = v386;
    v374[0].n128_u64[0] = v67;
    v374[0].n128_u8[8] = v68;
    v374[5].n128_u64[1] = *(v390 + 15);
    *(&v374[1] + 9) = v387;
    v374[6] = v69;
    sub_10000CAAC(v374, &qword_1019FFF80, &qword_101489000);
    if ((v73 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_60:
    v127 = v322;
    (v337)(v338, v340);
    sub_1005B981C(&unk_101A0D9D0, &unk_10146DB60);
    CRRegister.wrappedValue.getter();
    sub_100EB6578(v127, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v383 = v375[12];
    v384 = v375[13];
    v385 = *&v375[14];
    v379 = v375[8];
    v380 = v375[9];
    v382 = v375[11];
    v381 = v375[10];
    v376[4] = v375[4];
    v376[5] = v375[5];
    v378 = v375[7];
    v377 = v375[6];
    v376[0] = v375[0];
    v376[1] = v375[1];
    v128 = *(v344 + v342);
    v376[3] = v375[3];
    v376[2] = v375[2];
    v129 = *v128;
    v130 = swift_conformsToProtocol2();
    if (!v130)
    {
      goto LABEL_134;
    }

    v131 = v130;
    v132 = *(v130 + 16);

    v133 = v320;
    v132(v129, v131);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v133, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v397 = v375[12];
    v398 = v375[13];
    v393 = v375[8];
    v394 = v375[9];
    v396 = v375[11];
    v395 = v375[10];
    v390[0] = v375[4];
    v390[1] = v375[5];
    v392 = v375[7];
    v391 = v375[6];
    v386 = v375[0];
    v387 = v375[1];
    v389 = v375[3];
    v388 = v375[2];
    v134 = v383;
    v135 = v384;
    v375[12] = v383;
    v375[13] = v384;
    v136 = v379;
    v137 = v380;
    v375[8] = v379;
    v375[9] = v380;
    v138 = v382;
    v139 = v381;
    v375[11] = v382;
    v375[10] = v381;
    v140 = v376[4];
    v141 = v376[5];
    v375[4] = v376[4];
    v375[5] = v376[5];
    v142 = v378;
    v143 = v377;
    v375[7] = v378;
    v375[6] = v377;
    v144 = v376[0];
    v145 = v376[1];
    v375[0] = v376[0];
    v375[1] = v376[1];
    v146 = v376[3];
    v147 = v376[2];
    v375[3] = v376[3];
    v375[2] = v376[2];
    v148 = v398;
    v149 = v310;
    *(v310 + 12) = v397;
    *(v149 + 13) = v148;
    v150 = v394;
    *(v149 + 8) = v393;
    *(v149 + 9) = v150;
    v151 = v396;
    *(v149 + 10) = v395;
    *(v149 + 11) = v151;
    v152 = v390[1];
    *(v149 + 4) = v390[0];
    *(v149 + 5) = v152;
    v153 = v392;
    *(v149 + 6) = v391;
    *(v149 + 7) = v153;
    v154 = v387;
    *v149 = v386;
    *(v149 + 1) = v154;
    v155 = v389;
    *(v149 + 2) = v388;
    *(v149 + 3) = v155;
    v407 = v134;
    v408 = v135;
    v403 = v136;
    v404 = v137;
    v406 = v138;
    v405 = v139;
    v400[4] = v140;
    v400[5] = v141;
    v402 = v142;
    v401 = v143;
    v400[0] = v144;
    v400[1] = v145;
    v399 = *&v375[14];
    v156 = v385;
    *&v375[14] = v385;
    *(v149 + 28) = v399;
    v409 = v156;
    v400[3] = v146;
    v400[2] = v147;
    if (sub_1000C0FB4(v400) == 1)
    {
      v157 = *(v149 + 13);
      v374[12] = *(v149 + 12);
      v374[13] = v157;
      v374[14].n128_u64[0] = *(v149 + 28);
      v158 = *(v149 + 9);
      v374[8] = *(v149 + 8);
      v374[9] = v158;
      v159 = *(v149 + 10);
      v374[11] = *(v149 + 11);
      v374[10] = v159;
      v160 = *(v149 + 5);
      v374[4] = *(v149 + 4);
      v374[5] = v160;
      v161 = *(v149 + 7);
      v374[6] = *(v149 + 6);
      v374[7] = v161;
      v162 = *(v149 + 1);
      v374[0] = *v149;
      v374[1] = v162;
      v163 = *(v149 + 3);
      v374[2] = *(v149 + 2);
      v374[3] = v163;
      if (sub_1000C0FB4(v374) == 1)
      {
        v371 = v375[12];
        v372 = v375[13];
        v373 = *&v375[14];
        v367 = v375[8];
        v368 = v375[9];
        v369 = v375[10];
        v370 = v375[11];
        v363 = v375[4];
        v364 = v375[5];
        v365 = v375[6];
        v366 = v375[7];
        v359 = v375[0];
        v360 = v375[1];
        v361 = v375[2];
        v362 = v375[3];
        v164 = &v359;
        v165 = &unk_101A106C0;
        v166 = &unk_1014907B0;
      }

      else
      {
LABEL_65:
        memcpy(v374, v375, sizeof(v374));
        sub_10000CAAC(v374, &qword_1019F5EE0, &unk_1014B73B0);
LABEL_66:
        v174 = v344;
        v175 = *(v344 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
        *(v344 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke) = 0;

        v176 = (*((swift_isaMask & *v174) + 0x4D8))();
        if (v176)
        {
          v177 = v176;
          *(&v375[1] + 1) = sub_100006370(0, &qword_101A0C7F0, off_10182F998);
          *&v375[0] = v177;
        }

        else
        {
          memset(v375, 0, 32);
        }

        sub_10000BE14(v375, v374, &unk_1019F4D00, &unk_10146E7F0);
        swift_beginAccess();
        sub_100BC1F00(v374, 16);
        swift_endAccess();
        v164 = v375;
        v165 = &unk_1019F4D00;
        v166 = &unk_10146E7F0;
      }

      sub_10000CAAC(v164, v165, v166);
      goto LABEL_73;
    }

    v167 = *(v149 + 13);
    v374[12] = *(v149 + 12);
    v374[13] = v167;
    v374[14].n128_u64[0] = *(v149 + 28);
    v168 = *(v149 + 9);
    v374[8] = *(v149 + 8);
    v374[9] = v168;
    v169 = *(v149 + 10);
    v374[11] = *(v149 + 11);
    v374[10] = v169;
    v170 = *(v149 + 5);
    v374[4] = *(v149 + 4);
    v374[5] = v170;
    v171 = *(v149 + 7);
    v374[6] = *(v149 + 6);
    v374[7] = v171;
    v172 = *(v149 + 1);
    v374[0] = *v149;
    v374[1] = v172;
    v173 = *(v149 + 3);
    v374[2] = *(v149 + 2);
    v374[3] = v173;
    if (sub_1000C0FB4(v374) == 1)
    {
      goto LABEL_65;
    }

    v178 = *(v149 + 11);
    v179 = *(v149 + 13);
    v356 = *(v149 + 12);
    v357 = v179;
    v180 = *(v149 + 7);
    v181 = *(v149 + 9);
    v352 = *(v149 + 8);
    v353 = v181;
    v182 = *(v149 + 9);
    v183 = *(v149 + 11);
    v354 = *(v149 + 10);
    v355 = v183;
    v184 = *(v149 + 3);
    v185 = *(v149 + 5);
    v348 = *(v149 + 4);
    v349 = v185;
    v186 = *(v149 + 5);
    v187 = *(v149 + 7);
    v350 = *(v149 + 6);
    v351 = v187;
    v188 = *(v149 + 1);
    v345[0] = *v149;
    v345[1] = v188;
    v189 = *(v149 + 3);
    v191 = *v149;
    v190 = *(v149 + 1);
    v346 = *(v149 + 2);
    v347 = v189;
    v192 = *(v149 + 13);
    v439[12] = v356;
    v439[13] = v192;
    v439[8] = v352;
    v439[9] = v182;
    v439[11] = v178;
    v439[10] = v354;
    v439[4] = v348;
    v439[5] = v186;
    v439[7] = v180;
    v439[6] = v350;
    v439[0] = v191;
    v439[1] = v190;
    v358 = *(v149 + 28);
    v440 = *(v149 + 28);
    v439[3] = v184;
    v439[2] = v346;
    v437[12] = v375[12];
    v437[13] = v375[13];
    v438 = *&v375[14];
    v437[8] = v375[8];
    v437[9] = v375[9];
    v437[11] = v375[11];
    v437[10] = v375[10];
    v437[4] = v375[4];
    v437[5] = v375[5];
    v437[7] = v375[7];
    v437[6] = v375[6];
    v437[0] = v375[0];
    v437[1] = v375[1];
    v437[3] = v375[3];
    v437[2] = v375[2];
    sub_10000BE14(v376, &v359, &unk_101A106C0, &unk_1014907B0);
    sub_10000BE14(&v386, &v359, &unk_101A106C0, &unk_1014907B0);
    v193 = sub_100B93EBC(v437, v439);
    sub_10000CAAC(&v386, &unk_101A106C0, &unk_1014907B0);
    sub_10000CAAC(v376, &unk_101A106C0, &unk_1014907B0);
    sub_10000CAAC(v345, &unk_101A106C0, &unk_1014907B0);
    v371 = v375[12];
    v372 = v375[13];
    v373 = *&v375[14];
    v367 = v375[8];
    v368 = v375[9];
    v369 = v375[10];
    v370 = v375[11];
    v363 = v375[4];
    v364 = v375[5];
    v365 = v375[6];
    v366 = v375[7];
    v359 = v375[0];
    v360 = v375[1];
    v361 = v375[2];
    v362 = v375[3];
    sub_10000CAAC(&v359, &unk_101A106C0, &unk_1014907B0);
    if ((v193 & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_73:
    v194 = v321;
    (v337)(v338, v340);
    v195 = sub_1005B981C(&unk_101A10680, &qword_101489C50);
    CRRegister.wrappedValue.getter();
    sub_100EB6578(v194, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v328 = *&v375[0];
    v329 = *&v375[1];
    v326 = *(&v375[0] + 1);
    v327 = *(&v375[1] + 1);
    v196 = *(&v375[2] + 1);
    v197 = *(v344 + v342);
    v330 = *&v375[2];
    v331 = *&v375[3];
    v198 = *v197;
    v199 = swift_conformsToProtocol2();
    if (!v199)
    {
      goto LABEL_135;
    }

    v200 = v199;
    v201 = *(v199 + 16);

    v202 = v319;
    v201(v198, v200);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v202, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v203 = v375[0];
    v204 = v375[1];
    v205 = v375[2];
    v333 = v195;
    v206 = v196;
    if (v196)
    {
      if (*(&v375[2] + 1))
      {
        v435[0] = v375[0];
        v435[1] = v375[1];
        v435[2] = v375[2];
        v436 = *&v375[3];
        v312 = *&v375[1];
        v313 = *&v375[3];
        v434[0] = v328;
        v208 = v326;
        v207 = v327;
        v434[1] = v326;
        v434[2] = v329;
        v434[3] = v327;
        v209 = *(&v375[1] + 1);
        v434[4] = v330;
        v434[5] = v196;
        v210 = *(&v375[0] + 1);
        v211 = *&v375[2];
        v434[6] = v331;
        v306 = v206;
        sub_100C3B15C(v328, v326, v329, v327, v330, v206, v331);
        v304 = *(&v203 + 1);
        v305 = v209;
        v212 = v312;
        v303 = v211;
        sub_100C3B15C(v203, *(&v203 + 1), v312, v209, v211, *(&v205 + 1), v313);
        LODWORD(v307) = sub_1009CE0AC(v434, v435, v213, v214);
        sub_100810A00(v203, v210, v212, v209, v211, *(&v205 + 1));
        v215 = v328;
        v216 = v329;
        v217 = v330;
        v218 = v306;
        sub_100810A00(v328, v208, v329, v207, v330, v306);
        sub_100810A00(v203, v304, v312, v305, v303, *(&v205 + 1));
        v219 = sub_100810A00(v215, v208, v216, v207, v217, v218);
        if (v307)
        {
          goto LABEL_86;
        }

        goto LABEL_80;
      }
    }

    else if (!*(&v375[2] + 1))
    {
      sub_100810A00(v328, v326, v329, v327, v330, 0);
      goto LABEL_86;
    }

    sub_100810A00(v328, v326, v329, v327, v330, v196);
    v219 = sub_100810A00(v203, *(&v203 + 1), v204, *(&v204 + 1), v205, *(&v205 + 1));
LABEL_80:
    if ((*((swift_isaMask & *v344) + 0x578))(v219))
    {
      goto LABEL_84;
    }

    v220 = **(v344 + v342);
    v221 = swift_conformsToProtocol2();
    if (!v221)
    {
      goto LABEL_140;
    }

    v222 = v221;
    v223 = *(v221 + 16);

    v224 = v309;
    v223(v220, v222);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v224, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v225 = *(&v375[2] + 1);
    if (!*(&v375[2] + 1))
    {
LABEL_84:
      memset(v375, 0, 32);
    }

    else
    {
      v226 = v375[0];
      v227 = v375[1];
      v228 = *&v375[2];
      v374[0].n128_u8[0] = v375[1] & 1;
      v428 = v375[0];
      v429 = v375[1] & 1;
      v430 = *(&v375[1] + 4);
      v431 = BYTE12(v375[1]) & 1;
      v432 = v375[2];
      v433 = *&v375[3];
      v229 = sub_100006370(0, &qword_101A14D70, off_10182F8B0);
      v230 = sub_1009CE208(&v428);
      sub_100810A00(v226, *(&v226 + 1), v227, *(&v227 + 1), v228, v225);
      *(&v375[1] + 1) = v229;
      *&v375[0] = v230;
    }

    sub_10000BE14(v375, v374, &unk_1019F4D00, &unk_10146E7F0);
    swift_beginAccess();
    sub_100BC1F00(v374, 23);
    swift_endAccess();
    sub_10000CAAC(v375, &unk_1019F4D00, &unk_10146E7F0);
LABEL_86:
    v231 = v318;
    (v337)(v338, v340);
    CRRegister.wrappedValue.getter();
    sub_100EB6578(v231, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v328 = *&v375[0];
    v329 = *&v375[1];
    v326 = *(&v375[0] + 1);
    v327 = *(&v375[1] + 1);
    v232 = *(&v375[2] + 1);
    v233 = *(v344 + v342);
    v330 = *&v375[2];
    v331 = *&v375[3];
    v234 = *v233;
    v235 = swift_conformsToProtocol2();
    if (!v235)
    {
      goto LABEL_136;
    }

    v236 = v235;
    v237 = *(v235 + 16);

    v238 = v317;
    v237(v234, v236);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v238, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v239 = v375[0];
    v240 = v375[1];
    v241 = v375[2];
    v242 = v232;
    if (v232)
    {
      if (*(&v375[2] + 1))
      {
        v426[0] = v375[0];
        v426[1] = v375[1];
        v426[2] = v375[2];
        v427 = *&v375[3];
        v313 = *&v375[3];
        v425[0] = v328;
        v243 = v326;
        v244 = v327;
        v425[1] = v326;
        v245 = *&v375[1];
        v425[2] = v329;
        v425[3] = v327;
        v425[4] = v330;
        v425[5] = v242;
        v246 = *&v375[2];
        v425[6] = v331;
        v307 = v242;
        sub_100C3B15C(v328, v326, v329, v327, v330, v242, v331);
        v305 = *(&v239 + 1);
        v306 = v245;
        v303 = v246;
        v304 = *(&v240 + 1);
        sub_100C3B15C(v239, *(&v239 + 1), v245, *(&v240 + 1), v246, *(&v241 + 1), v313);
        LODWORD(v312) = sub_1009CE0AC(v425, v426, v247, v248);
        sub_100810A00(v239, *(&v239 + 1), v245, *(&v240 + 1), v246, *(&v241 + 1));
        v249 = v328;
        v250 = v329;
        v251 = v330;
        v252 = v307;
        sub_100810A00(v328, v243, v329, v244, v330, v307);
        sub_100810A00(v239, v305, v306, v304, v303, *(&v241 + 1));
        v253 = sub_100810A00(v249, v243, v250, v244, v251, v252);
        if (v312)
        {
          goto LABEL_99;
        }

        goto LABEL_93;
      }
    }

    else if (!*(&v375[2] + 1))
    {
      sub_100810A00(v328, v326, v329, v327, v330, 0);
      goto LABEL_99;
    }

    sub_100810A00(v328, v326, v329, v327, v330, v232);
    v253 = sub_100810A00(v239, *(&v239 + 1), v240, *(&v240 + 1), v241, *(&v241 + 1));
LABEL_93:
    if ((*((swift_isaMask & *v344) + 0x578))(v253))
    {
      goto LABEL_97;
    }

    v254 = **(v344 + v342);
    v255 = swift_conformsToProtocol2();
    if (!v255)
    {
      goto LABEL_141;
    }

    v256 = v255;
    v257 = *(v255 + 16);

    v258 = v308;
    v257(v254, v256);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v258, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v259 = *(&v375[2] + 1);
    if (!*(&v375[2] + 1))
    {
LABEL_97:
      memset(v375, 0, 32);
    }

    else
    {
      v260 = v375[0];
      v261 = v375[1];
      v262 = *&v375[2];
      v374[0].n128_u8[0] = v375[1] & 1;
      v419 = v375[0];
      v420 = v375[1] & 1;
      v421 = *(&v375[1] + 4);
      v422 = BYTE12(v375[1]) & 1;
      v423 = v375[2];
      v424 = *&v375[3];
      v263 = sub_100006370(0, &qword_101A14D70, off_10182F8B0);
      v264 = sub_1009CE208(&v419);
      sub_100810A00(v260, *(&v260 + 1), v261, *(&v261 + 1), v262, v259);
      *(&v375[1] + 1) = v263;
      *&v375[0] = v264;
    }

    sub_10000BE14(v375, v374, &unk_1019F4D00, &unk_10146E7F0);
    swift_beginAccess();
    sub_100BC1F00(v374, 24);
    swift_endAccess();
    sub_10000CAAC(v375, &unk_1019F4D00, &unk_10146E7F0);
LABEL_99:
    v265 = v325;
    (v337)(v338, v340);
    sub_1005B981C(&unk_101A0D9C0, "@0$");
    CRRegister.wrappedValue.getter();
    sub_100EB6578(v265, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v266 = *v375;
    v267 = **(v344 + v342);
    v268 = swift_conformsToProtocol2();
    if (!v268)
    {
      goto LABEL_137;
    }

    v269 = v268;
    v270 = *(v268 + 16);

    v271 = v316;
    v270(v267, v269);

    CRRegister.wrappedValue.getter();
    sub_100EB6578(v271, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    if (v266 != *v375)
    {
      v272 = **(v344 + v342);
      v273 = swift_conformsToProtocol2();
      if (!v273)
      {
        goto LABEL_139;
      }

      v274 = v273;
      v275 = *(v273 + 16);

      v276 = v325;
      v275(v272, v274);

      CRRegister.wrappedValue.getter();
      sub_100EB6578(v276, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      *(&v375[1] + 1) = &type metadata for CGFloat;
      *v375 = *v375;
      sub_10000BE14(v375, v374, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();
      sub_100BC1F00(v374, 25);
      swift_endAccess();
      sub_10000CAAC(v375, &unk_1019F4D00, &unk_10146E7F0);
    }

LABEL_7:
    v50 = v332 + 1;
    if (v332 + 1 == v315)
    {
      goto LABEL_126;
    }
  }

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v74 = swift_allocObject();
  *(v74 + 16) = v302;
  *(v74 + 56) = &type metadata for String;
  v75 = sub_1000053B0();
  *(v74 + 32) = v57;
  v76 = v74 + 32;
  v342 = v75;
  *(v74 + 64) = v75;
  *(v74 + 40) = v56;
  v77 = objc_opt_self();

  v337 = v77;
  LODWORD(v338) = [v77 _atomicIncrementAssertCount];
  *&v375[0] = [objc_allocWithZone(NSString) init];
  StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
  v78 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeItem.swift", 83, 2);
  v79 = String._bridgeToObjectiveC()();

  v80 = [v79 lastPathComponent];

  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v84 = static OS_os_log.crlAssert;
  v85 = swift_allocObject();
  *(v85 + 16) = v301;
  *(v85 + 56) = &type metadata for Int32;
  *(v85 + 64) = &protocol witness table for Int32;
  *(v85 + 32) = v338;
  v86 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v85 + 96) = v86;
  v87 = sub_1005CF04C();
  *(v85 + 72) = v78;
  v88 = v342;
  *(v85 + 136) = &type metadata for String;
  *(v85 + 144) = v88;
  *(v85 + 104) = v87;
  *(v85 + 112) = v81;
  *(v85 + 120) = v83;
  *(v85 + 176) = &type metadata for UInt;
  *(v85 + 152) = 398;
  v89 = *&v375[0];
  *(v85 + 216) = v86;
  *(v85 + 224) = v87;
  *(v85 + 184) = &protocol witness table for UInt;
  *(v85 + 192) = v89;
  v90 = v78;
  v91 = v89;
  v92 = static os_log_type_t.error.getter();
  sub_100005404(v84, &_mh_execute_header, v92, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v85);
  swift_setDeallocating();
  v338 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v93 = static os_log_type_t.error.getter();

  type metadata accessor for __VaListBuilder();
  v94 = swift_allocObject();
  v94[2] = 8;
  v94[3] = 0;
  v95 = v94 + 3;
  v94[4] = 0;
  v94[5] = 0;
  v96 = *(v74 + 16);
  if (!v96)
  {
LABEL_6:
    v51 = __VaListBuilder.va_list()();
    StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeItem.swift", 83, 2);
    v53 = String._bridgeToObjectiveC()();

    v54 = String._bridgeToObjectiveC()();

    [v337 handleFailureInFunction:v52 file:v53 lineNumber:398 isFatal:0 format:v54 args:v51];

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    goto LABEL_7;
  }

  v97 = 0;
  v342 = *(v74 + 16);
  while (2)
  {
    sub_100020E58((v76 + 40 * v97), *(v76 + 40 * v97 + 24));
    v98 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v99 = *v95;
    v100 = *(v98 + 16);
    v101 = __OFADD__(*v95, v100);
    v102 = *v95 + v100;
    if (v101)
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    v103 = v94[4];
    if (v103 >= v102)
    {
LABEL_40:
      v109 = v94[5];
      if (!v109)
      {
        goto LABEL_131;
      }
    }

    else
    {
      if (v103 + 0x4000000000000000 < 0)
      {
        goto LABEL_129;
      }

      v104 = v94[5];
      if (2 * v103 > v102)
      {
        v102 = 2 * v103;
      }

      v94[4] = v102;
      if ((v102 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_130;
      }

      v105 = v76;
      v106 = v74;
      v107 = v98;
      v108 = swift_slowAlloc();
      v109 = v108;
      v94[5] = v108;
      if (v104)
      {
        if (v108 != v104 || v108 >= &v104[8 * v99])
        {
          memmove(v108, v104, 8 * v99);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v98 = v107;
        v74 = v106;
        v76 = v105;
        v96 = v342;
        goto LABEL_40;
      }

      v98 = v107;
      v74 = v106;
      v76 = v105;
      v96 = v342;
      if (!v109)
      {
        goto LABEL_131;
      }
    }

    v111 = *(v98 + 16);
    if (!v111)
    {
LABEL_25:

      if (++v97 == v96)
      {
        goto LABEL_6;
      }

      continue;
    }

    break;
  }

  v112 = (v98 + 32);
  v113 = *v95;
  while (1)
  {
    v114 = *v112++;
    *&v109[8 * v113] = v114;
    v113 = *v95 + 1;
    if (__OFADD__(*v95, 1))
    {
      break;
    }

    *v95 = v113;
    if (!--v111)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_126:
}

uint64_t sub_100EB64C8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100EB6510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EB6578(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100EB65D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLPKStrokePathData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100EB66E4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CRLUnknownLayout();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100EB673C(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  type metadata accessor for CRLBoardCRDTData(0);
  v2[27] = swift_task_alloc();
  type metadata accessor for UUID();
  v2[28] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_100EB6824, 0, 0);
}

uint64_t sub_100EB6824()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v6 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v7 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v8 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v7 + v8, v3, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v3, type metadata accessor for CRLBoardCRDTData);
  v9 = (*(v4 + v6) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v10 = *v9;
  v11 = v9[1];

  sub_10084BD4C(v2, v10, v11, v1);
  v12 = swift_task_alloc();
  v0[30] = v12;
  *(v12 + 16) = v5;
  *(v12 + 24) = v1;
  v13 = swift_task_alloc();
  v0[31] = v13;
  v14 = sub_1005B981C(&qword_1019FE618, &qword_1014B6B70);
  *v13 = v0;
  v13[1] = sub_100EB6A04;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000014, 0x80000001015ADE30, sub_100EDE6B8, v12, v14);
}

uint64_t sub_100EB6A04()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100EB6C04;
  }

  else
  {
    v2 = sub_100EB6B18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100EB6B18()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v3;
  *(v0 + 153) = *(v0 + 73);
  v4 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v4;
  sub_10003D69C(v1, type metadata accessor for CRLBoardIdentifier);
  *v2 = *(v0 + 96);
  v6 = *(v0 + 128);
  v5 = *(v0 + 144);
  v7 = *(v0 + 112);
  *(v2 + 57) = *(v0 + 153);
  v2[2] = v6;
  v2[3] = v5;
  v2[1] = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100EB6C04()
{
  v1 = *(v0 + 232);

  sub_10003D69C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100EB6CA8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v2 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v11 + v12, v6, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v6, type metadata accessor for CRLBoardCRDTData);
  LOBYTE(v6) = static UUID.== infix(_:_:)();
  (*(v8 + 8))(v10, v7);
  if ((v6 & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap;
    swift_beginAccess();
    v14 = *(v2 + v13);
    if (*(v14 + 16))
    {

      v15 = sub_10003E994(a1);
      if (v16)
      {
        v2 = *(*(v14 + 56) + 16 * v15);
        swift_unknownObjectRetain();

        return v2;
      }
    }

    return 0;
  }

  swift_unknownObjectRetain();
  return v2;
}

void sub_100EB6EE0(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = type metadata accessor for UUID();
  v51 = *(v3 - 8);
  __chkstk_darwin(v3);
  v52 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = v44 - v6;
  v7 = sub_1005B981C(&unk_101A22798, &qword_1014B76A8);
  __chkstk_darwin(v7 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v44 - v11;
  sub_10000BE14(a1, v56, &unk_1019F4D00, &unk_10146E7F0);
  if (v57)
  {
    sub_1005B981C(&unk_101A228F0, &unk_1014B77F8);
    if (swift_dynamicCast())
    {
      if (*(v54 + 16) == *(v55[0] + 16))
      {
        v48 = v55[0];
        v49 = v12;
        v47 = v3;
        v13 = *(v54 + 64);
        v44[0] = v54 + 64;
        v14 = 1 << *(v54 + 32);
        v15 = -1;
        if (v14 < 64)
        {
          v15 = ~(-1 << v14);
        }

        v16 = v15 & v13;
        v17 = (v14 + 63) >> 6;
        v44[1] = v51 + 16;
        v53 = (v51 + 32);
        v46 = (v51 + 8);

        v18 = 0;
        v45 = v9;
        while (v16)
        {
          v19 = v18;
          v20 = v47;
LABEL_17:
          v24 = __clz(__rbit64(v16));
          v16 &= v16 - 1;
          v25 = v24 | (v19 << 6);
          v26 = v54;
          v28 = v50;
          v27 = v51;
          (*(v51 + 16))(v50, *(v54 + 48) + *(v51 + 72) * v25, v20);
          v29 = *(*(v26 + 56) + 8 * v25);
          v30 = sub_1005B981C(&qword_101A1F1B0, &unk_1014B76B0);
          v31 = *(v30 + 48);
          v32 = *(v27 + 32);
          v9 = v45;
          v32(v45, v28, v20);
          *&v9[v31] = v29;
          (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
          v33 = v29;
          v23 = v49;
LABEL_18:
          sub_10003DFF8(v9, v23, &unk_101A22798, &qword_1014B76A8);
          v34 = sub_1005B981C(&qword_101A1F1B0, &unk_1014B76B0);
          v35 = (*(*(v34 - 8) + 48))(v23, 1, v34);
          v36 = v52;
          if (v35 == 1)
          {
LABEL_22:

            return;
          }

          v37 = *(v23 + *(v34 + 48));
          (*v53)(v52, v23, v20);
          v38 = v48;
          if (!*(v48 + 16) || (v39 = sub_10003E994(v36), (v40 & 1) == 0))
          {

            (*v46)(v36, v20);
            return;
          }

          sub_10000630C(*(v38 + 56) + 40 * v39, v56);
          (*v46)(v36, v20);
          v42 = v57;
          v41 = v58;
          sub_100020E58(v56, v57);
          v55[3] = type metadata accessor for CRLBoardItem(0);
          v55[0] = v37;
          LOBYTE(v41) = (*(v41 + 8))(v55, v42, v41);
          sub_10000CAAC(v55, &unk_1019F4D00, &unk_10146E7F0);
          sub_100005070(v56);
          if ((v41 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        if (v17 <= v18 + 1)
        {
          v21 = v18 + 1;
        }

        else
        {
          v21 = v17;
        }

        v22 = v21 - 1;
        v20 = v47;
        v23 = v49;
        while (1)
        {
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v19 >= v17)
          {
            v43 = sub_1005B981C(&qword_101A1F1B0, &unk_1014B76B0);
            (*(*(v43 - 8) + 56))(v9, 1, 1, v43);
            v16 = 0;
            v18 = v22;
            goto LABEL_18;
          }

          v16 = *(v44[0] + 8 * v19);
          ++v18;
          if (v16)
          {
            v18 = v19;
            goto LABEL_17;
          }
        }

        __break(1u);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_10000CAAC(v56, &unk_1019F4D00, &unk_10146E7F0);
  }
}

void *sub_100EB7474()
{
  v62 = type metadata accessor for PKDrawing();
  v54 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for PKStroke();
  v67 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  v9 = sub_100ED3AE4(v8);

  v63 = [objc_allocWithZone(NSMutableDictionary) init];
  v85 = _swiftEmptyArrayStorage;
  v55 = v9;
  if (v9 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    v60 = v55 & 0xC000000000000001;
    v59 = v55 & 0xFFFFFFFFFFFFFF8;
    v58 = v55 + 32;
    v77 = (v67 + 8);
    v78 = v67 + 16;
    v76 = (v67 + 32);
    v56 = (v54 + 8);
    v80 = v4;
    v81 = v7;
    v79 = v2;
    v57 = i;
    while (1)
    {
      if (v60)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v23 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v11 >= *(v59 + 16))
        {
          goto LABEL_39;
        }

        v22 = *(v58 + 8 * v11);
        v23 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_38;
        }
      }

      v64 = v11;
      v66 = v23;
      v24 = v22;
      v25 = sub_1005F387C();
      v65 = v24;

      if (v25 >> 62)
      {
        break;
      }

      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_11;
      }

LABEL_4:
      v12 = _swiftEmptyArrayStorage;
LABEL_5:

      swift_bridgeObjectRetain_n();
      sub_10079AD64(v12);
      strcpy(v84, "Drawing");
      v84[1] = 0xE700000000000000;
      v83 = v64;
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14 = v84[0];
      v15 = v84[1];
      v84[0] = v12;
      sub_1005B981C(&unk_101A22650, &unk_1014A4D60);
      sub_10001A2F8(&qword_101A12070, &unk_101A22650, &unk_1014A4D60, &protocol conformance descriptor for [A]);
      v16 = v61;
      PKDrawing.init<A>(strokes:)();
      v17 = PKDrawing.dataRepresentation()();
      v19 = v18;
      (*v56)(v16, v62);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v21 = v19;
      v7 = v81;
      sub_10002640C(v17, v21);
      v84[0] = v14;
      v84[1] = v15;
      [v63 __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      v11 = v66;
      if (v66 == v57)
      {
        v40 = v85;
        goto LABEL_42;
      }
    }

    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (!v26)
    {
      goto LABEL_4;
    }

LABEL_11:
    v27 = 0;
    v28 = v25 & 0xC000000000000001;
    v68 = (v25 + 32);
    v69 = v25 & 0xFFFFFFFFFFFFFF8;
    v12 = _swiftEmptyArrayStorage;
    v71 = v26;
    v72 = v25;
    v70 = v25 & 0xC000000000000001;
    while (1)
    {
      if (v28)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *(v69 + 16))
        {
          goto LABEL_37;
        }

        v30 = v68[v27];
      }

      v29 = v30;
      if (__OFADD__(v27++, 1))
      {
        break;
      }

      type metadata accessor for CRLFreehandDrawingShapeItem(0);
      if (swift_dynamicCastClass())
      {
        v75 = v29;
        v32 = sub_100EAD788();
        if (v32)
        {
          v73 = v32;
          v74 = v27;
          v33 = *(v32 + 16);
          if (v33)
          {
            v82 = (*(v67 + 80) + 32) & ~*(v67 + 80);
            v34 = v32 + v82;
            v35 = *(v67 + 72);
            v36 = *(v67 + 16);
            do
            {
              v36(v7, v34, v2);
              v36(v4, v7, v2);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v12 = sub_100B36FA8(0, v12[2] + 1, 1, v12);
              }

              v38 = v12[2];
              v37 = v12[3];
              if (v38 >= v37 >> 1)
              {
                v12 = sub_100B36FA8((v37 > 1), v38 + 1, 1, v12);
              }

              v7 = v81;
              v2 = v79;
              (*v77)(v81, v79);
              v12[2] = v38 + 1;
              v39 = v12 + v82 + v38 * v35;
              v4 = v80;
              (*v76)(v39, v80, v2);
              v34 += v35;
              --v33;
            }

            while (v33);
          }

          v26 = v71;
          v27 = v74;
          v28 = v70;
        }

        v29 = v75;
      }

      if (v27 == v26)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v40 = _swiftEmptyArrayStorage;
LABEL_42:

  v84[0] = v40;
  sub_1005B981C(&unk_101A22650, &unk_1014A4D60);
  sub_10001A2F8(&qword_101A12070, &unk_101A22650, &unk_1014A4D60, &protocol conformance descriptor for [A]);
  v41 = v61;
  PKDrawing.init<A>(strokes:)();
  v42 = PKDrawing.dataRepresentation()();
  v44 = v43;
  (*(v54 + 8))(v41, v62);
  v45 = Data._bridgeToObjectiveC()().super.isa;
  sub_10002640C(v42, v44);
  strcpy(v84, "MergedDrawing");
  HIWORD(v84[1]) = -4864;
  v46 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v47 = v63;
  [v63 __swift_setObject:v45 forKeyedSubscript:v46];

  swift_unknownObjectRelease();
  v48 = objc_opt_self();
  v84[0] = 0;
  v49 = [v48 archivedDataWithRootObject:v47 requiringSecureCoding:1 error:v84];
  v50 = v84[0];
  if (v49)
  {
    v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v51 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v51;
}

void sub_100EB7CFC(uint64_t a1, uint64_t a2)
{
  v12 = 1;
  v13 = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = &v13;
  v6 = swift_allocObject();
  v6[2] = sub_100EDE68C;
  v6[3] = v5;
  aBlock[4] = sub_10002AAE0;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10002AAB8;
  aBlock[3] = &unk_1018A79C8;
  v7 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v8 = [ObjCClassFromMetadata crl_catchExceptionsInBlock:v7 error:aBlock];
  _Block_release(v7);
  v9 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_10;
  }

  if (!v8)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_6;
  }

  if (!v13)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  swift_willThrow();
  swift_errorRetain();
LABEL_6:

LABEL_7:
}

void *sub_100EB7F18(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = 0;
  return result;
}

char *sub_100EB7F94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v57 = a5;
  v58 = a4;
  v59 = a3;
  v10 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  __chkstk_darwin(v12 - 8);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v14 - 8);
  v55 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v52 = &v51 - v17;
  v18 = objc_allocWithZone(v6);
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_transactionContext] = 0;
  v19 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  v20 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  v21 = &v18[OBJC_IVAR____TtC8Freeform8CRLBoard_fixupData];
  *v21 = _swiftEmptySetSingleton;
  v21[1] = _swiftEmptySetSingleton;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_cancellables] = _swiftEmptySetSingleton;
  v22 = OBJC_IVAR____TtC8Freeform8CRLBoard_opportunisticallyBuiltAffectedItemSetIncludingParents;
  *&v18[v22] = sub_100BD4D84(_swiftEmptyArrayStorage);
  v23 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedChangeAvailablePublisher;
  sub_1005B981C(&unk_101A22670, &unk_1014B90C0);
  swift_allocObject();
  *&v18[v23] = PassthroughSubject.init()();
  v24 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedRealTimeChangesAvailablePublisher;
  swift_allocObject();
  *&v18[v24] = PassthroughSubject.init()();
  v25 = OBJC_IVAR____TtC8Freeform8CRLBoard_changeSummaryPublisher;
  sub_1005B981C(&qword_101A12970, &unk_1014B7610);
  swift_allocObject();
  *&v18[v25] = PassthroughSubject.init()();
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_realTimePendingChangesCancellable] = 0;
  swift_unknownObjectWeakInit();
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_store] = a1;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_data] = a2;
  v18[OBJC_IVAR____TtC8Freeform8CRLBoard_makeUnsupported] = a6;
  v26 = type metadata accessor for CRLRootContainerItem(0);
  v27 = objc_allocWithZone(v26);
  swift_unknownObjectWeakInit();
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a1;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v59;
  v28 = type metadata accessor for CRLBoardItemBase(0);
  v63.receiver = v27;
  v63.super_class = v28;
  v29 = a1;

  v30 = objc_msgSendSuper2(&v63, "init");
  v31 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] = v30;
  v32 = objc_allocWithZone(v26);
  swift_unknownObjectWeakInit();
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v29;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v58;
  v62.receiver = v32;
  v62.super_class = v28;
  v51 = v29;

  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] = objc_msgSendSuper2(&v62, "init");
  v33 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v34 = a2 + v33;
  v35 = v54;
  sub_10004FECC(v34, v54, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  v36 = v53;
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v35, type metadata accessor for CRLBoardCRDTData);
  v37 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v38 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

  v39 = v52;
  sub_10084BD4C(v36, v37, v38, v52);
  v40 = v55;
  v41 = sub_10004FECC(v39, v55, type metadata accessor for CRLBoardIdentifier);
  (*(**(*&v18[v31] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v41);
  type metadata accessor for CRLBoardChangeSet(0);
  swift_allocObject();
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] = sub_100768A10(v40, v36, 0);
  type metadata accessor for CRLFreehandDrawingShapeItemBucketManager();
  v42 = swift_allocObject();
  sub_1005B981C(&qword_101A12978, &unk_1014B7620);
  v43 = swift_allocObject();
  *(v43 + 16) = _swiftEmptyDictionarySingleton;
  *(v43 + 24) = _swiftEmptyDictionarySingleton;
  *(v42 + 16) = v43;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_freehandDrawingBucketManager] = v42;
  type metadata accessor for CRLActiveBoardShareState();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  swift_unknownObjectWeakInit();
  v45 = *(v44 + 16);
  v46 = v57;
  *(v44 + 16) = v57;
  v47 = v46;

  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] = v44;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_lastSaveChangesTime] = 0;
  v61.receiver = v18;
  v61.super_class = v56;
  v48 = objc_msgSendSuper2(&v61, "init");
  swift_unknownObjectWeakAssign();
  v60 = *(*&v48[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_uncommittedChangeAvailablePublisher);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = v48;

  sub_1005B981C(&unk_101A22680, &unk_10147A958);
  sub_10001A2F8(&qword_101A12980, &unk_101A22680, &unk_10147A958, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10003D69C(v39, type metadata accessor for CRLBoardIdentifier);
  return v49;
}

NSString sub_100EB87A0()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD86A8 = result;
  return result;
}

NSString sub_100EB87D8()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD86B0 = result;
  return result;
}

uint64_t sub_100EB89A8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v12 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v13 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v12 + v13, v4, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v14 = (*(v1 + v11) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v15 = *v14;
  v16 = v14[1];

  sub_10084BD4C(v7, v15, v16, v10);
  v28 = UUID.uuidString.getter();
  v29 = v17;

  v18._countAndFlagsBits = 58;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  v19 = v28;
  v20 = v29;
  v21 = &v10[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
  v22 = *v21;
  v23 = v21[1];
  v28 = v19;
  v29 = v20;

  v24._countAndFlagsBits = v22;
  v24._object = v23;
  String.append(_:)(v24);

  v25 = v28;
  sub_10003D69C(v10, type metadata accessor for CRLBoardIdentifier);
  return v25;
}

Class sub_100EB8C18(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for UUID();
  type metadata accessor for CRLBoardItem(0);
  sub_100ED5648(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

uint64_t sub_100EB8D4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  v2 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  v4 = v1;
  if (!v3)
  {
    sub_10096C7D4();
    v3 = *&v1[v2];
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  if (v5 >> 62)
  {
    sub_1005B981C(&qword_1019F5720, &unk_101474E20);
    v6 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v6 = v5;
  }

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = [v7 BOOLForKey:@"CRLScenesDebugView"];

  if (v8)
  {
    v9 = sub_100EC8784();
    if (v9 >> 62)
    {
      sub_1005B981C(&qword_1019F5720, &unk_101474E20);
      v10 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v10 = v9;
    }

    sub_10079AD4C(v10);
  }

  return v6;
}

uint64_t sub_100EB8FAC(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v93 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v83 - v9;
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v83 - v15;
  __chkstk_darwin(v17);
  v19 = &v83 - v18;
  __chkstk_darwin(v20);
  v92 = (&v83 - v21);
  __chkstk_darwin(v22);
  v24 = &v83 - v23;
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  sub_10000BE14(a1, v96, &unk_1019F4D00, &unk_10146E7F0);
  if (!v97)
  {
    sub_10000CAAC(v96, &unk_1019F4D00, &unk_10146E7F0);
    goto LABEL_8;
  }

  type metadata accessor for CRLBoard(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v36 = 0;
    return v36 & 1;
  }

  if (v95 == v94)
  {

    v36 = 1;
    return v36 & 1;
  }

  v84 = v7;
  v85 = v19;
  v86 = v5;
  v90 = v95;
  v28 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v29 = v94;
  v30 = *(v94 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v31 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v30 + v31, v4, type metadata accessor for CRLBoardCRDTData);
  v91 = sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v32 = (*(v29 + v28) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v33 = *v32;
  v34 = v32[1];

  sub_10084BD4C(v10, v33, v34, v27);
  v89 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v35 = &v27[*(v89 + 20)];
  if (*v35 || *(v35 + 1) != 0xE000000000000000)
  {
    LODWORD(v87) = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  else
  {
    LODWORD(v87) = 0;
  }

  sub_10003D69C(v27, type metadata accessor for CRLBoardIdentifier);
  v38 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v39 = v90;
  v40 = *(v90 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v41 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v40 + v41, v4, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v88 = v38;
  v42 = (*(v39 + v38) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v43 = *v42;
  v44 = v42[1];

  sub_10084BD4C(v10, v43, v44, v24);
  v45 = &v24[*(v89 + 20)];
  if (*v45 || *(v45 + 1) != 0xE000000000000000)
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    sub_10003D69C(v24, type metadata accessor for CRLBoardIdentifier);
    v66 = (v87 & 1) == v65;
    v46 = v94;
    if (!v66)
    {
      goto LABEL_15;
    }

LABEL_21:
    v67 = *(v46 + v28);
    v68 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v94 = type metadata accessor for CRLBoardCRDTData;
    sub_10004FECC(v67 + v68, v4, type metadata accessor for CRLBoardCRDTData);
    CRRegister.wrappedValue.getter();
    v92 = type metadata accessor for CRLBoardCRDTData;
    sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
    v69 = (*(v46 + v28) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v70 = *v69;
    v71 = v69[1];

    sub_10084BD4C(v10, v70, v71, v16);
    v72 = v93;
    v89 = *(v93 + 16);
    v73 = v86;
    (v89)(v10, v16, v86);
    v87 = type metadata accessor for CRLBoardIdentifier;
    sub_10003D69C(v16, type metadata accessor for CRLBoardIdentifier);
    v74 = v90;
    v75 = v88;
    v76 = *(v90 + v88);
    v77 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FECC(v76 + v77, v4, v94);
    v78 = v84;
    CRRegister.wrappedValue.getter();
    sub_10003D69C(v4, v92);
    v79 = (*(v74 + v75) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v80 = *v79;
    v81 = v79[1];

    sub_10084BD4C(v78, v80, v81, v13);
    (v89)(v78, v13, v73);
    sub_10003D69C(v13, v87);
    v36 = static UUID.== infix(_:_:)();

    v82 = *(v72 + 8);
    v82(v78, v73);
    v82(v10, v73);
    return v36 & 1;
  }

  sub_10003D69C(v24, type metadata accessor for CRLBoardIdentifier);
  v46 = v94;
  if (v87)
  {
    goto LABEL_21;
  }

LABEL_15:
  v47 = *(v46 + v28);
  v48 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v47 + v48, v4, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v49 = (*(v46 + v28) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v50 = *v49;
  v51 = v49[1];

  v52 = v92;
  sub_10084BD4C(v10, v50, v51, v92);
  v53 = v90;
  v54 = v88;
  v55 = *(v90 + v88);
  v56 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v55 + v56, v4, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v57 = (*(v53 + v54) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v58 = *v57;
  v59 = v57[1];

  v60 = v85;
  sub_10084BD4C(v10, v58, v59, v85);
  if (static UUID.== infix(_:_:)())
  {
    v61 = *(v89 + 20);
    v62 = *(v52 + v61);
    v63 = *(v52 + v61 + 8);
    v64 = (v60 + v61);
    if (v62 == *v64 && v63 == v64[1])
    {
      v36 = 1;
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v36 = 0;
  }

  sub_10003D69C(v60, type metadata accessor for CRLBoardIdentifier);
  sub_10003D69C(v52, type metadata accessor for CRLBoardIdentifier);
  return v36 & 1;
}

uint64_t sub_100EB98A4(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v32[-v7];
  sub_10000BE14(a1, v34, &unk_1019F4D00, &unk_10146E7F0);
  v9 = v35;
  if (v35)
  {
    v10 = sub_100020E58(v34, v35);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v11 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    sub_100005070(v34);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v1 isEqual:v15];
  swift_unknownObjectRelease();
  if (!v16)
  {
    goto LABEL_12;
  }

  sub_10000BE14(a1, v34, &unk_1019F4D00, &unk_10146E7F0);
  if (!v35)
  {
    sub_10000CAAC(v34, &unk_1019F4D00, &unk_10146E7F0);
    goto LABEL_12;
  }

  type metadata accessor for CRLBoard(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v30 = 0;
    return v30 & 1;
  }

  v17 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v18 = v33;
  v19 = *&v33[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v20 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v17 + v20, v8, type metadata accessor for CRLBoardCRDTData);
  v21 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v19 + v21, v5, type metadata accessor for CRLBoardCRDTData);
  v22 = sub_100084FA4(v8, v5);
  sub_10003D69C(v5, type metadata accessor for CRLBoardCRDTData);
  sub_10003D69C(v8, type metadata accessor for CRLBoardCRDTData);
  if ((v22 & 1) == 0 || (v23 = *(*&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items), v24 = *(*&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items), v25 = sub_1005B981C(&qword_101A228E8, &qword_1014B77F0), v35 = v25, v34[0] = v24, , , sub_100EB6EE0(v34, v23), LOBYTE(v24) = v26, , sub_10000CAAC(v34, &unk_1019F4D00, &unk_10146E7F0), (v24 & 1) == 0))
  {

    goto LABEL_12;
  }

  v27 = *(*&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items);
  v28 = *(*&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items);
  v35 = v25;
  v34[0] = v28;

  sub_100EB6EE0(v34, v27);
  v30 = v29;

  sub_10000CAAC(v34, &unk_1019F4D00, &unk_10146E7F0);
  return v30 & 1;
}

uint64_t sub_100EB9C9C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *, __n128))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = (a4)(v10);

  sub_10000CAAC(v10, &unk_1019F4D00, &unk_10146E7F0);
  return v8 & 1;
}

Swift::Int sub_100EB9D68()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Hasher.init()();
  v11 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v12 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v13 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v12 + v13, v4, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v14 = (*(v1 + v11) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v15 = *v14;
  v16 = v14[1];

  sub_10084BD4C(v7, v15, v16, v10);
  sub_100ED5648(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  sub_10003D69C(v10, type metadata accessor for CRLBoardIdentifier);
  return Hasher.finalize()();
}

double sub_100EBA32C(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v8 + v9, v7, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v7, type metadata accessor for CRLBoardCRDTData);
  if (v13 == __PAIR128__(a2, a1))
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      swift_beginAccess();
      v12[0] = a1;
      v12[1] = a2;

      CRRegister.wrappedValue.setter();
      swift_endAccess();
    }
  }

  return result;
}

void sub_100EBA548(char *a1, uint64_t a2, int64_t *a3, unsigned int a4)
{
  v6 = v4;
  v564 = a2;
  v572 = a1;
  v9 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v9 - 8);
  v539 = &v503 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v11 - 8);
  v535 = &v503 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v541 = &v503 - v14;
  v15 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v546 = &v503 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v545 = &v503 - v18;
  v537 = sub_1005B981C(&unk_101A0F400, &unk_1014746E0);
  __chkstk_darwin(v537);
  v544 = &v503 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v543 = &v503 - v21;
  __chkstk_darwin(v22);
  v542 = &v503 - v23;
  __chkstk_darwin(v24);
  v548 = &v503 - v25;
  v26 = sub_1005B981C(&qword_101A1F610, &unk_1014B7750);
  __chkstk_darwin(v26 - 8);
  v552 = &v503 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v551 = &v503 - v29;
  v30 = sub_1005B981C(&qword_101A22850, &unk_1014B1D20);
  __chkstk_darwin(v30 - 8);
  v550 = &v503 - v31;
  v561 = type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT(0);
  v533 = *(v561 - 8);
  __chkstk_darwin(v561);
  v555 = &v503 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1005B981C(&qword_101A22858, &qword_1014B7760);
  __chkstk_darwin(v33 - 8);
  v558 = &v503 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v556 = &v503 - v36;
  v547 = sub_1005B981C(&unk_101A22860, &unk_1014B6550);
  v531 = *(v547 - 8);
  __chkstk_darwin(v547);
  v534 = &v503 - v37;
  v554 = sub_1005B981C(&unk_101A341C0, &unk_1014B1D00);
  v530 = *(v554 - 8);
  __chkstk_darwin(v554);
  v553 = &v503 - v38;
  *&v559 = sub_1005B981C(&qword_101A22870, &qword_1014B7768);
  v532 = *(v559 - 8);
  __chkstk_darwin(v559);
  *&v560 = &v503 - v39;
  v40 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v40 - 8);
  v538 = (&v503 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v42);
  v562 = &v503 - v43;
  __chkstk_darwin(v44);
  v567 = (&v503 - v45);
  __chkstk_darwin(v46);
  v568 = &v503 - v47;
  v563 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v563);
  v573 = &v503 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for UUID();
  v588 = *(v49 - 1);
  __chkstk_darwin(v49);
  v549 = &v503 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v540 = &v503 - v52;
  __chkstk_darwin(v53);
  v536 = &v503 - v54;
  __chkstk_darwin(v55);
  v557 = &v503 - v56;
  __chkstk_darwin(v57);
  v569 = &v503 - v58;
  __chkstk_darwin(v59);
  v61 = &v503 - v60;
  __chkstk_darwin(v62);
  v582 = &v503 - v63;
  *&v529 = v64;
  __chkstk_darwin(v65);
  v587 = &v503 - v66;
  v584 = sub_1005B981C(&qword_1019FEF98, &qword_10147A980);
  __chkstk_darwin(v584);
  v576 = &v503 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v583 = (&v503 - v69);
  __chkstk_darwin(v70);
  v577 = &v503 - v71;
  v72 = [objc_opt_self() standardUserDefaults];
  v73 = String._bridgeToObjectiveC()();
  v74 = [v72 BOOLForKey:v73];

  if (v74)
  {
    sub_100EDE564();
    swift_allocError();
    *v75 = xmmword_101463530;
    swift_willThrow();
    return;
  }

  v527 = a4;
  v76 = *&v6[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges];
  v528 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas;
  v578 = *(v76 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedItemDatas);
  v77 = v578[2];
  v574 = v6;
  v566 = a3;
  v585 = v49;
  v570 = v61;
  v571 = v76;
  if (!v77 && !*(*(v76 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas) + 16))
  {
    v78 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
    swift_beginAccess();
    if (!*(*(v76 + v78) + 16))
    {
      v587 = _swiftEmptyArrayStorage;
      goto LABEL_35;
    }
  }

  v79 = v578 + 8;
  v80 = 1 << *(v578 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v82 = v81 & v578[8];
  v83 = (v80 + 63) >> 6;
  v581 = (v588 + 16);
  v580 = v588 + 32;
  swift_bridgeObjectRetain_n();
  v84 = 0;
  v586 = _swiftEmptyArrayStorage;
  v575 = v79;
  if (v82)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v85 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      v577 = v83;
      v578 = a3;
      v227 = v76;
      v228 = v584;
      v229 = *&v49[v584];
      v230 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v231 = v229 + v230;
      v232 = v573;
      sub_10004FECC(v231, v573, type metadata accessor for CRLBoardCRDTData);
      CRRegister.wrappedValue.getter();
      sub_10003D69C(v232, type metadata accessor for CRLBoardCRDTData);
      v233 = (*&v49[v228] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v235 = *v233;
      v234 = v233[1];

      v236 = v562;
      sub_10084BD4C(v84, v235, v234, v562);
      v237 = v572;
      swift_beginAccess();
      v238 = *(v237 + 4);
      v239 = *(v238 + 16);

      if (!v239 || (v240 = sub_1000486F0(v236), (v241 & 1) == 0))
      {

        sub_10003D69C(v236, type metadata accessor for CRLBoardIdentifier);
        sub_100EDE564();
        swift_allocError();
        *v261 = 0;
        v261[1] = 0;
        swift_willThrow();

        goto LABEL_59;
      }

      v242 = *(*(v238 + 56) + 8 * v240);

      sub_10003D69C(v236, type metadata accessor for CRLBoardIdentifier);

      v243 = v574;
      v244 = *&v574[v584];
      v245 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v246 = v244 + v245;
      v247 = v573;
      sub_10004FECC(v246, v573, type metadata accessor for CRLBoardCRDTData);
      type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
      v248 = v570;
      CRRegister.wrappedValue.getter();
      v249 = sub_10003D69C(v247, type metadata accessor for CRLBoardCRDTData);
      v250 = v569;
      (*(**(v242 + 16) + 264))(v249);
      LOBYTE(v244) = static UUID.== infix(_:_:)();
      v251 = v250;
      v252 = v585;
      v253 = v581;
      v581(v251, v585);
      v253(v248, v252);
      if ((v244 & 1) == 0)
      {

        sub_100EDE564();
        swift_allocError();
        *v262 = 0xD00000000000003CLL;
        v262[1] = 0x80000001015ADA90;
        swift_willThrow();

        goto LABEL_59;
      }

      v254 = *(v242 + 16);
      v255 = *&v243[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer];

      v256 = v255;
      sub_1012E0400(v256, &off_10188FE10);
      v257 = v227;
      if (v227)
      {

        goto LABEL_59;
      }

      v258 = *&v256[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
      v259 = *(*v258 + 496);

      v259(v254);
      (*(*v258 + 488))(v254);
      (*(*v258 + 480))(v254);
      v605[0] = *(v254 + 24);
      v605[1] = *(v254 + 40);
      v606 = *(v254 + 56);
      v562 = v254;
      sub_10073E870(v605, *(v254 + 16));

      v260 = v527;
      sub_1012CF6CC(v256, &off_10188FE10, v527);

      v263 = v569;
      (*(*v562 + 264))();
      swift_beginAccess();
      v264 = v570;
      sub_100E6AF38(v570, v263);
      swift_endAccess();
      v581(v264, v585);
      v523 = v242;
      sub_100EBF540(v242, v592, v583, v566 & 1, v574, v564, v260);
      v565 = 0;
      v591 = _swiftEmptySetSingleton;
      v265 = v574;
      v266 = v584;
      v267 = *&v574[v584];
      v268 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v269 = v267 + v268;
      v270 = v573;
      sub_10004FECC(v269, v573, type metadata accessor for CRLBoardCRDTData);
      v271 = v570;
      CRRegister.wrappedValue.getter();
      sub_10003D69C(v270, type metadata accessor for CRLBoardCRDTData);
      v272 = (*&v265[v266] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v274 = *v272;
      v273 = v272[1];

      sub_10084BD4C(v271, v274, v273, v538);
      v275 = v572;
      swift_beginAccess();
      v276 = *(v275 + 5);
      if (*(v276 + 16))
      {

        v277 = sub_1000486F0(v538);
        if (v278)
        {
          v279 = *(*(v276 + 56) + 8 * v277);

          sub_10003D69C(v538, type metadata accessor for CRLBoardIdentifier);

          v280 = *&v574[OBJC_IVAR____TtC8Freeform8CRLBoard_freehandDrawingBucketManager];

          v507 = v279;
          sub_100ED5960(v279);

          v505 = v280;
          v281 = v280;
          v282 = sub_100D8878C();
          v283 = 0;
          v284 = *(v282 + 64);
          v509 = v282 + 64;
          v285 = 1 << *(v282 + 32);
          if (v285 < 64)
          {
            v286 = ~(-1 << v285);
          }

          else
          {
            v286 = -1;
          }

          v519 = v286 & v284;
          v514 = v282;
          v515 = OBJC_IVAR____TtC8Freeform8CRLBoard_store;
          v508 = (v285 + 63) >> 6;
          v538 = v530 + 2;
          ++v530;
          v512 = (v531 + 8);
          v575 = (v588 + 32);
          v567 = (v588 + 16);
          v528 = v529 + 32;
          v525 = (v533 + 48);
          v526 = (v533 + 56);
          v518 = (v588 + 48);
          v511 = xmmword_10146C4D0;
          v504 = xmmword_101465920;
          v503 = xmmword_10146C6B0;
          v513 = (v532 + 8);
          v517 = v583 + 7;
LABEL_83:
          if (v519)
          {
            v516 = v283;
LABEL_89:
            v289 = __clz(__rbit64(v519));
            v519 &= v519 - 1;
            v290 = *(*(v514 + 56) + ((v516 << 9) | (8 * v289)));
            v291 = *(*v290 + 120);
            swift_beginAccess();
            v532 = *v538;
            v533 = v291;
            v292 = v290 + v291;
            v293 = v553;
            v294 = v554;
            (v532)(v553, v292, v554);

            v295 = v534;
            Capsule.root.getter();
            v531 = *v530;
            (v531)(v293, v294);
            v296 = v547;
            CRDictionary.makeIterator()();
            (*v512)(v295, v296);
            v297 = *v290;
            v563 = *(*v290 + 136);
            v298 = *(v297 + 128);
            v568 = v290;
            v524 = v290 + v298;
            v299 = v585;
            v300 = v556;
            v301 = v557;
LABEL_90:
            v302 = v575;
            while (1)
            {
              while (1)
              {
                v264 = v558;
                CRDictionary.Iterator.next()();
                sub_10003DFF8(v264, v300, &qword_101A22858, &qword_1014B7760);
                v281 = sub_1005B981C(&qword_101A22898, &unk_1014B7778);
                if ((*(*(v281 - 8) + 48))(v300, 1, v281) == 1)
                {
                  (*v513)(v560, v559);

                  v283 = v516;
                  goto LABEL_83;
                }

                v576 = *(v281 + 48);
                v572 = *v302;
                (v572)(v301, v300, v299);
                v257 = v567;
                v304 = *v567;
                v305 = v569;
                (*v567)(v569, v301, v299);
                swift_beginAccess();
                v306 = v570;
                sub_100E6AF38(v570, v305);
                swift_endAccess();
                v307 = v581;
                v581(v306, v299);
                if (*(v568 + v563) != 1)
                {
                  v307(v301, v299);
                  goto LABEL_134;
                }

                v309 = v553;
                v308 = v554;
                (v532)(v553, v568 + v533, v554);
                *&v529 = v304;
                v310 = v304(v306, v301, v299);
                __chkstk_darwin(v310);
                v312 = (&v503 - ((v311 + 15) & 0xFFFFFFFFFFFFFFF0));
                v313 = v561;
                *v312 = v299;
                v312[1] = v313;
                v312[2] = sub_100ED5648(&qword_101A228A8, &type metadata accessor for UUID, byte_1014C3A30);
                v312[3] = sub_100ED5648(&unk_101A228B0, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT, asc_1014D7FB8);
                (v572)(v312 + 4, v306, v299);
                swift_getKeyPath();
                v314 = v551;
                Capsule.subscript.getter();
                v315 = v309;

                (v531)(v309, v308);
                v316 = v552;
                sub_10000BE14(v314, v552, &qword_101A1F610, &unk_1014B7750);
                v317 = sub_1005B981C(&qword_101A228A0, &unk_1014B1D10);
                v257 = *(v317 - 8);
                if ((*(v257 + 48))(v316, 1, v317) == 1)
                {
                  sub_10000CAAC(v314, &qword_101A1F610, &unk_1014B7750);
                  sub_10000CAAC(v316, &qword_101A1F610, &unk_1014B7750);
                  v318 = 1;
                  v319 = v550;
                }

                else
                {
                  (v532)(v315, v568 + v533, v308);
                  sub_10001A2F8(&qword_101A228C0, &unk_101A22860, &unk_1014B6550, &protocol conformance descriptor for CRDictionary<A, B>);
                  v319 = v550;
                  Ref.subscript.getter();
                  (v531)(v315, v308);
                  sub_10000CAAC(v314, &qword_101A1F610, &unk_1014B7750);
                  (*(v257 + 8))(v316, v317);
                  v318 = 0;
                }

                v320 = v317;
                v321 = v561;
                (*v526)(v319, v318, 1, v561);
                v322 = (*v525)(v319, 1, v321);
                v300 = v556;
                v301 = v557;
                v323 = v319;
                v302 = v575;
                if (v322 != 1)
                {
                  break;
                }

                v299 = v585;
                v581(v557, v585);
                sub_10000CAAC(v323, &qword_101A22850, &unk_1014B1D20);
                v303 = *(v257 + 8);
                v257 += 8;
                v303(v300 + v576, v320);
              }

              sub_100EDD3F4(v319, v555, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
              v324 = *(v524 + 8);
              v602 = *(v524 + 24);
              v601 = v324;
              v603 = 0;
              v604 = 1;
              isa = UUID._bridgeToObjectiveC()().super.isa;
              v326 = [v574 getBoardItemForUUID:isa];

              v521 = v257;
              v522 = v320;
              if (v326)
              {
                type metadata accessor for CRLFreehandDrawingShapeItem(0);
                v572 = swift_dynamicCastClass();
                if (v572)
                {
                  v327 = v561;
                  v328 = v555;
                  v329 = v548;
                  v257 = &unk_1014746E0;
                  sub_10000BE14(v555 + *(v561 + 20), v548, &unk_101A0F400, &unk_1014746E0);
                  v330 = v545;
                  v331 = sub_10004FECC(v328 + *(v327 + 24), v545, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                  v332 = *((swift_isaMask & *v326) + 0x3F8);
                  *&v529 = v326;
                  v332(v331);
                  v334 = v333;
                  ObjectType = swift_getObjectType();
                  *&v520 = (*(v334 + 32))(ObjectType, v334);
                  swift_unknownObjectRelease();
                  type metadata accessor for CRLFreehandDrawingShapeItemData(0);
                  v336 = swift_allocObject();
                  v337 = v542;
                  sub_10000BE14(v329, v542, &unk_101A0F400, &unk_1014746E0);
                  v338 = v546;
                  sub_10004FECC(v330, v546, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                  sub_10004FECC(v338, v336 + *(*v336 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                  v339 = v543;
                  sub_10000BE14(v337, v543, &unk_101A0F400, &unk_1014746E0);
                  *(v336 + qword_101A27318) = 0;
                  v340 = v544;
                  sub_10000BE14(v339, v544, &unk_101A0F400, &unk_1014746E0);
                  sub_10000BE14(v340, v336 + *(*v336 + 736), &unk_101A0F400, &unk_1014746E0);
                  CRRegister.wrappedValue.getter();
                  sub_10000CAAC(v340, &unk_101A0F400, &unk_1014746E0);
                  sub_10000CAAC(v339, &unk_101A0F400, &unk_1014746E0);
                  sub_10003D69C(v338, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                  sub_10000CAAC(v337, &unk_101A0F400, &unk_1014746E0);
                  sub_10003D69C(v330, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                  sub_10000CAAC(v548, &unk_101A0F400, &unk_1014746E0);
                  v341 = sub_100747AF0(&v601, v520);
                  v342 = v565;
                  sub_1012E0400(v572, &off_10188FE10);
                  v565 = v342;
                  if (v342 || (v343 = v572, v344 = *&v572[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData], v345 = *(*v344 + 496), , v345(v341), (*(*v344 + 488))(v341), (*(*v344 + 480))(v341), v599[0] = *(v341 + 3), v599[1] = *(v341 + 5), v600 = *(v341 + 56), sub_10073E870(v599, v341[2]), , v346 = v565, sub_1012CF6CC(v343, &off_10188FE10, v527), (v565 = v346) != 0))
                  {

                    sub_10003D69C(v555, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
                    v581(v557, v585);
                    goto LABEL_192;
                  }
                }

                else
                {
                  if (qword_1019F2098 != -1)
                  {
                    swift_once();
                  }

                  v351 = static OS_os_log.crlDefault;
                  v352 = static os_log_type_t.error.getter();
                  sub_100005404(v351, &_mh_execute_header, v352, "Tried to merge freehand drawing shape data to non freehand drawing shape item.", 78, 2, _swiftEmptyArrayStorage);
                }

                sub_10003D69C(v555, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
                v301 = v557;
                v299 = v585;
                v581(v557, v585);
                goto LABEL_133;
              }

              v347 = v555 + *(v561 + 20);
              v257 = sub_1005B981C(&unk_101A0F410, &unk_10148D730);
              *&v520 = v347;
              v348 = v539;
              CRRegister.wrappedValue.getter();
              v349 = v541;
              sub_10000BE14(v348, v541, &qword_1019F6990, &qword_10146D2F0);
              sub_10003D69C(v348, type metadata accessor for CRLShapeItemParentAffinity);
              v350 = *v518;
              if ((*v518)(v349, 1, v585) == 1)
              {
                sub_10000CAAC(v541, &qword_1019F6990, &qword_10146D2F0);
              }

              else
              {
                (v572)(v536, v541, v585);
                v353 = UUID._bridgeToObjectiveC()().super.isa;
                v354 = [v574 getBoardItemForUUID:v353];

                v572 = v354;
                if (v354)
                {
                  type metadata accessor for CRLContainerItem(0);
                  if (swift_dynamicCastClass())
                  {
                    if (v583[2])
                    {
                      v355 = v583;
                      sub_100ED5648(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                      v356 = dispatch thunk of Hashable._rawHashValue(seed:)();
                      v357 = -1 << *(v355 + 32);
                      v358 = v356 & ~v357;
                      if ((*(v517 + ((v358 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v358))
                      {
                        v359 = ~v357;
                        v360 = *(v588 + 72);
                        while (1)
                        {
                          v361 = v570;
                          v362 = v585;
                          (v529)(v570, v583[6] + v360 * v358, v585);
                          sub_100ED5648(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                          v363 = dispatch thunk of static Equatable.== infix(_:_:)();
                          v581(v361, v362);
                          if (v363)
                          {
                            break;
                          }

                          v358 = (v358 + 1) & v359;
                          if (((*(v517 + ((v358 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v358) & 1) == 0)
                          {
                            goto LABEL_117;
                          }
                        }

                        v299 = v585;
                        v429 = v581;
                        v581(v536, v585);
                        sub_10003D69C(v555, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
                        v301 = v557;
                        v429(v557, v299);
                        v300 = v556;
                        (*(v521 + 8))(&v556[v576], v522);
                        goto LABEL_90;
                      }
                    }

LABEL_117:
                    v364 = v548;
                    v257 = &unk_1014746E0;
                    sub_10000BE14(v520, v548, &unk_101A0F400, &unk_1014746E0);
                    v365 = v545;
                    sub_10004FECC(v555 + *(v561 + 24), v545, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                    type metadata accessor for CRLFreehandDrawingShapeItemData(0);
                    v366 = swift_allocObject();
                    v367 = v542;
                    sub_10000BE14(v364, v542, &unk_101A0F400, &unk_1014746E0);
                    v368 = v546;
                    sub_10004FECC(v365, v546, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                    sub_10004FECC(v368, v366 + *(*v366 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                    v369 = v543;
                    sub_10000BE14(v367, v543, &unk_101A0F400, &unk_1014746E0);
                    *(v366 + qword_101A27318) = 0;
                    v370 = v544;
                    sub_10000BE14(v369, v544, &unk_101A0F400, &unk_1014746E0);
                    sub_10000BE14(v370, v366 + *(*v366 + 736), &unk_101A0F400, &unk_1014746E0);
                    CRRegister.wrappedValue.getter();
                    sub_10000CAAC(v370, &unk_101A0F400, &unk_1014746E0);
                    sub_10000CAAC(v369, &unk_101A0F400, &unk_1014746E0);
                    sub_10003D69C(v368, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                    sub_10000CAAC(v367, &unk_101A0F400, &unk_1014746E0);
                    sub_10003D69C(v365, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
                    sub_10000CAAC(v548, &unk_101A0F400, &unk_1014746E0);
                    v371 = sub_100747AF0(&v601, 2);
                    v372 = *&v574[v515];
                    v373 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem(0));
                    *&v373[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
                    *&v373[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
                    v374 = &v373[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
                    *v374 = 0u;
                    *(v374 + 1) = 0u;
                    *(v374 + 2) = 0u;
                    *(v374 + 6) = 0;
                    *&v373[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
                    *&v373[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v372;
                    *&v373[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v371;
                    v375 = type metadata accessor for CRLBoardItemBase(0);
                    v589.receiver = v373;
                    v589.super_class = v375;
                    v376 = v372;

                    v377 = objc_msgSendSuper2(&v589, "init");
                    v378 = *(**&v377[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

                    v380 = v378(v379);

                    [v380 transform];
                    v529 = v593;
                    v520 = v594;
                    v506 = v595;

                    v596 = v529;
                    v597 = v520;
                    v598 = v506;
                    if (sub_10026171C(&v596))
                    {
                      v381 = swift_allocObject();
                      *(v381 + 16) = v504;
                      *(v381 + 32) = v377;
                      v382 = v377;
                      v383 = NSNotFound.getter();
                      sub_1005B981C(&unk_101A09DB0, &unk_1014B9050);
                      v384 = swift_allocObject();
                      *(v384 + 16) = v503;
                      *(v384 + 32) = v383;
                      v385 = v384 + 32;
                      *(v384 + 40) = v381;
                      v386 = sub_100BD4E94(v384);
                      swift_setDeallocating();
                      sub_10000CAAC(v385, &qword_101A039D0, &unk_101489780);
                      swift_deallocClassInstance();
                      v387 = v565;
                      sub_100971EFC(v386, v564);
                      v565 = v387;
                      if (v387)
                      {
                        goto LABEL_194;
                      }
                    }

                    else
                    {
                    }

                    v426 = v536;
                    goto LABEL_132;
                  }
                }

                v581(v536, v585);
              }

              if ((v566 & 1) == 0)
              {
                break;
              }

LABEL_131:
              v410 = v548;
              sub_10000BE14(v520, v548, &unk_101A0F400, &unk_1014746E0);
              v411 = v545;
              sub_10004FECC(v555 + *(v561 + 24), v545, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
              type metadata accessor for CRLFreehandDrawingShapeItemData(0);
              v412 = swift_allocObject();
              v257 = v542;
              sub_10000BE14(v410, v542, &unk_101A0F400, &unk_1014746E0);
              v413 = v546;
              sub_10004FECC(v411, v546, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
              sub_10004FECC(v413, v412 + *(*v412 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
              v414 = v543;
              sub_10000BE14(v257, v543, &unk_101A0F400, &unk_1014746E0);
              *(v412 + qword_101A27318) = 0;
              v415 = v544;
              sub_10000BE14(v414, v544, &unk_101A0F400, &unk_1014746E0);
              sub_10000BE14(v415, v412 + *(*v412 + 736), &unk_101A0F400, &unk_1014746E0);
              CRRegister.wrappedValue.getter();
              sub_10000CAAC(v415, &unk_101A0F400, &unk_1014746E0);
              sub_10000CAAC(v414, &unk_101A0F400, &unk_1014746E0);
              sub_10003D69C(v413, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
              sub_10000CAAC(v257, &unk_101A0F400, &unk_1014746E0);
              sub_10003D69C(v411, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
              sub_10000CAAC(v548, &unk_101A0F400, &unk_1014746E0);
              v416 = sub_100747AF0(&v601, 2);
              v417 = *&v574[v515];
              v418 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem(0));
              *&v418[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
              *&v418[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
              v419 = &v418[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
              *v419 = 0u;
              *(v419 + 1) = 0u;
              *(v419 + 2) = 0u;
              *(v419 + 6) = 0;
              *&v418[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
              *&v418[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v417;
              *&v418[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v416;
              v420 = type metadata accessor for CRLBoardItemBase(0);
              v590.receiver = v418;
              v590.super_class = v420;
              v421 = v417;

              v422 = objc_msgSendSuper2(&v590, "init");
              v423.n128_f64[0] = sub_1012DDB58(v422, 0, 1, v564);
              v424 = v569;
              (*(**&v422[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v423);
              v425 = v570;
              sub_100E6AF38(v570, v424);

              v426 = v425;
LABEL_132:
              v299 = v585;
              v427 = v581;
              v581(v426, v585);
              sub_10003D69C(v555, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
              v301 = v557;
              v427(v557, v299);
LABEL_133:
              v300 = v556;
LABEL_134:
              v302 = v575;
              v428 = sub_1005B981C(&qword_101A228A0, &unk_1014B1D10);
              (*(*(v428 - 8) + 8))(v300 + v576, v428);
            }

            if (qword_1019F22B8 != -1)
            {
              swift_once();
            }

            v572 = static OS_os_log.boardItemLifecycle;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v388 = swift_allocObject();
            *(v388 + 16) = v511;
            v389 = UUID.uuidString.getter();
            v391 = v390;
            *(v388 + 56) = &type metadata for String;
            v392 = sub_1000053B0();
            *(v388 + 32) = v389;
            v393 = v392;
            *(v388 + 64) = v392;
            *(v388 + 40) = v391;
            v394 = v539;
            CRRegister.wrappedValue.getter();
            v395 = v535;
            sub_10000BE14(v394, v535, &qword_1019F6990, &qword_10146D2F0);
            sub_10003D69C(v394, type metadata accessor for CRLShapeItemParentAffinity);
            if (v350(v395, 1, v585) == 1)
            {
              sub_10000CAAC(v535, &qword_1019F6990, &qword_10146D2F0);
              v396 = (v388 + 72);
              *(v388 + 96) = &type metadata for String;
              *(v388 + 104) = v393;
            }

            else
            {
              v397 = v535;
              v398 = UUID.uuidString.getter();
              v400 = v399;
              v581(v397, v585);
              v396 = (v388 + 72);
              *(v388 + 96) = &type metadata for String;
              *(v388 + 104) = v393;
              if (v400)
              {
                *v396 = v398;
LABEL_130:
                *(v388 + 80) = v400;
                v401 = *&v574[v584];
                v402 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
                swift_beginAccess();
                v403 = v401 + v402;
                v404 = v573;
                sub_10004FECC(v403, v573, type metadata accessor for CRLBoardCRDTData);
                v405 = v570;
                CRRegister.wrappedValue.getter();
                sub_10003D69C(v404, type metadata accessor for CRLBoardCRDTData);
                v406 = UUID.uuidString.getter();
                v408 = v407;
                v581(v405, v585);
                *(v388 + 136) = &type metadata for String;
                *(v388 + 144) = v393;
                *(v388 + 112) = v406;
                *(v388 + 120) = v408;
                v409 = static os_log_type_t.default.getter();
                sub_100005404(v572, &_mh_execute_header, v409, "🚖 mergeDatabaseChanges() found orphaned stroke %{public}@ missing parent %{public}@. Board: %{public}@", 105, 0, v388);
                swift_setDeallocating();
                sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
                swift_arrayDestroy();
                swift_deallocClassInstance();
                goto LABEL_131;
              }
            }

            *v396 = 7104878;
            v400 = 0xE300000000000000;
            goto LABEL_130;
          }

          while (1)
          {
            v287 = v283 + 1;
            if (__OFADD__(v283, 1))
            {
              __break(1u);
              goto LABEL_196;
            }

            if (v287 >= v508)
            {
              break;
            }

            v288 = *(v509 + 8 * v287);
            ++v283;
            if (v288)
            {
              v516 = v287;
              v519 = v288;
              goto LABEL_89;
            }
          }

          v281 = *(v505 + 16);
          swift_beginAccess();
          v430 = 0;
          v431 = *(v281 + 16);
          v432 = 1 << *(v431 + 32);
          v433 = -1;
          if (v432 < 64)
          {
            v433 = ~(-1 << v432);
          }

          v434 = v433 & *(v431 + 64);
          for (i = (v432 + 63) >> 6; v434; *(v437 + *(*v437 + 136)) = 0)
          {
            v436 = v430;
LABEL_148:
            v437 = *(*(v431 + 56) + ((v436 << 9) | (8 * __clz(__rbit64(v434)))));
            v434 &= v434 - 1;
          }

          while (1)
          {
            v436 = v430 + 1;
            if (__OFADD__(v430, 1))
            {
              break;
            }

            if (v436 >= i)
            {

              goto LABEL_151;
            }

            v434 = *(v431 + 64 + 8 * v436);
            ++v430;
            if (v434)
            {
              v430 = v436;
              goto LABEL_148;
            }
          }

LABEL_196:
          __break(1u);
          goto LABEL_197;
        }
      }

      sub_10003D69C(v538, type metadata accessor for CRLBoardIdentifier);
LABEL_151:
      v264 = sub_100E93A84(v587);

      swift_beginAccess();

      v583 = sub_100EA61FC();
      v281 = sub_100BD4EA8(_swiftEmptyArrayStorage);
      v257 = *(v571 + v580);
      if (!(v257 >> 62))
      {
        v587 = *((v257 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v587)
        {
LABEL_161:
          v443 = sub_100EA61FC();
          swift_beginAccess();

          v445 = sub_100767620(v444);

          sub_1010ACAA4(v445, v443);
          v448 = v447;
          v576 = v592[0];
          if (*(v592[0] + 16) <= v583[2] >> 3)
          {
            *&v596 = v583;
            sub_1012D4DC4(v446, v576);
            v449 = v596;
          }

          else
          {
            v449 = sub_1012D5CC4(v576, v583);
          }

          if (*(v264 + 16) <= v449[2] >> 3)
          {
            *&v596 = v449;
            sub_1012D4DC4(v450, v264);

            v451 = v596;
          }

          else
          {
            v451 = sub_1012D5CC4(v264, v449);
          }

          if (*(v448 + 16) <= v451[2] >> 3)
          {
            *&v596 = v451;
            sub_1012D4DC4(v452, v448);

            v587 = v596;
          }

          else
          {
            v587 = sub_1012D5CC4(v448, v451);
          }

          sub_100D87D4C(v591);

          v453 = 0;
          v454 = *(v587 + 56);
          v575 = (v587 + 56);
          v455 = 1 << *(v587 + 32);
          v456 = -1;
          if (v455 < 64)
          {
            v456 = ~(-1 << v455);
          }

          v382 = v456 & v454;
          v572 = ((v455 + 63) >> 6);
          v583 = (v588 + 16);
          v580 = v588 + 32;
          v559 = xmmword_10146BDE0;
          v560 = xmmword_10146C4D0;
          while (v382)
          {
LABEL_181:
            v478 = v588;
            v479 = v540;
            v480 = v585;
            (*(v588 + 16))(v540, *(v587 + 48) + *(v588 + 72) * (__clz(__rbit64(v382)) | (v453 << 6)), v585);
            (*(v478 + 32))(v549, v479, v480);
            v481 = UUID._bridgeToObjectiveC()().super.isa;
            v482 = [v574 getBoardItemForUUID:v481];

            if (v482)
            {
              if ((v566 & 1) == 0)
              {
                if (qword_1019F22B8 != -1)
                {
                  swift_once();
                }

                v568 = static OS_os_log.boardItemLifecycle;
                sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                inited = swift_initStackObject();
                *(inited + 16) = v560;
                v458 = v570;
                (*((swift_isaMask & *v482) + 0x88))();
                v459 = UUID.uuidString.getter();
                v461 = v460;
                v581(v458, v585);
                *(inited + 56) = &type metadata for String;
                v462 = sub_1000053B0();
                *(inited + 64) = v462;
                *(inited + 32) = v459;
                v567 = (inited + 32);
                *(inited + 40) = v461;
                v463 = v482;
                v464 = [v463 description];
                v563 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v561 = v465;

                *(inited + 96) = &type metadata for String;
                *(inited + 104) = v462;
                v466 = v561;
                *(inited + 72) = v563;
                *(inited + 80) = v466;
                v467 = *&v574[v584];
                v468 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
                swift_beginAccess();
                v469 = v467 + v468;
                v470 = v573;
                sub_10004FECC(v469, v573, type metadata accessor for CRLBoardCRDTData);
                v471 = v569;
                CRRegister.wrappedValue.getter();
                sub_10003D69C(v470, type metadata accessor for CRLBoardCRDTData);
                v472 = UUID.uuidString.getter();
                v474 = v473;
                v581(v471, v585);
                *(inited + 136) = &type metadata for String;
                *(inited + 144) = v462;
                *(inited + 112) = v472;
                *(inited + 120) = v474;
                v475 = static os_log_type_t.default.getter();
                sub_100005404(v568, &_mh_execute_header, v475, "🚖 ⭕ mergeDatabaseChanges() deleted %{public}@%{public}@. Board: %{public}@", 79, 0, inited);
                swift_setDeallocating();
                sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
                swift_arrayDestroy();
              }

              v476 = v482;
              sub_1012DCC7C(v476, 0, 0, v564);
            }

            else if ((v566 & 1) == 0)
            {
              if (qword_1019F22B8 != -1)
              {
                swift_once();
              }

              v568 = static OS_os_log.boardItemLifecycle;
              sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
              v483 = swift_initStackObject();
              *(v483 + 16) = v559;
              v484 = UUID.uuidString.getter();
              v486 = v485;
              *(v483 + 56) = &type metadata for String;
              v487 = sub_1000053B0();
              *(v483 + 64) = v487;
              *(v483 + 32) = v484;
              *(v483 + 40) = v486;
              v488 = *&v574[v584];
              v489 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
              swift_beginAccess();
              v490 = v488 + v489;
              v491 = v573;
              sub_10004FECC(v490, v573, type metadata accessor for CRLBoardCRDTData);
              v492 = v570;
              CRRegister.wrappedValue.getter();
              sub_10003D69C(v491, type metadata accessor for CRLBoardCRDTData);
              v493 = UUID.uuidString.getter();
              v495 = v494;
              v581(v492, v585);
              *(v483 + 96) = &type metadata for String;
              *(v483 + 104) = v487;
              *(v483 + 72) = v493;
              *(v483 + 80) = v495;
              v496 = static os_log_type_t.error.getter();
              sub_100005404(v568, &_mh_execute_header, v496, "🚖 ⭕ ERROR: Unable to remove item %{public}@. Board %{public}@", 66, 0, v483);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
              swift_arrayDestroy();
            }

            v382 &= v382 - 1;
            v581(v549, v585);
          }

          while (1)
          {
            v477 = v453 + 1;
            if (__OFADD__(v453, 1))
            {
              __break(1u);
LABEL_194:

              v501 = v585;
              v502 = v581;
              v581(v536, v585);
              sub_10003D69C(v555, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
              v502(v557, v501);
LABEL_192:
              (*v513)(v560, v559);

              (*(v521 + 8))(&v556[v576], v522);
              goto LABEL_60;
            }

            if (v477 >= v572)
            {
              break;
            }

            v382 = v575[v477];
            ++v453;
            if (v382)
            {
              v453 = v477;
              goto LABEL_181;
            }
          }

          v497 = v571;
          v498 = *(v571 + v579);
          v499 = swift_allocObject();
          *(v499 + 16) = sub_100EDE700;
          *(v499 + 24) = v497;
          *&v598 = sub_10002AAE0;
          *(&v598 + 1) = v499;
          *&v596 = _NSConcreteStackBlock;
          *(&v596 + 1) = v5;
          *&v597 = sub_10002AAB8;
          *(&v597 + 1) = &unk_1018A7930;
          v500 = _Block_copy(&v596);

          dispatch_sync(v498, v500);
          _Block_release(v500);
          LOBYTE(v498) = swift_isEscapingClosureAtFileLocation();

          if ((v498 & 1) == 0)
          {
            return;
          }

          __break(1u);
          goto LABEL_200;
        }

LABEL_153:
        if (v587 >= 1)
        {

          v438 = 0;
          while (1)
          {
            if ((v257 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
            }

            swift_beginAccess();

            v440 = sub_1007727A4(v439);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v596 = v281;
            v442 = v565;
            sub_100EDA0A0(v440, sub_100ED9FEC, 0, isUniquelyReferenced_nonNull_native, sub_100EDA5A4, 0);
            v565 = v442;
            if (v442)
            {
              goto LABEL_201;
            }

            v438 = (v438 + 1);
            v281 = v596;
            if (v587 == v438)
            {

              goto LABEL_161;
            }
          }
        }

LABEL_200:
        __break(1u);
LABEL_201:

        __break(1u);
        return;
      }

LABEL_197:
      v587 = _CocoaArrayWrapper.endIndex.getter();
      if (!v587)
      {
        goto LABEL_161;
      }

      goto LABEL_153;
    }

    if (v85 >= v83)
    {
      break;
    }

    v82 = v79[v85];
    ++v84;
    if (v82)
    {
      v84 = v85;
      do
      {
LABEL_13:
        v86 = __clz(__rbit64(v82)) | (v84 << 6);
        v87 = v578;
        v88 = v578[6];
        v89 = v588;
        v579 = *(v588 + 72);
        v90 = v577;
        (*(v588 + 16))(v577, v88 + v579 * v86, v49);
        *&v90[*(v584 + 48)] = *(v87[7] + 8 * v86);
        v91 = v90;
        v76 = v583;
        sub_10003DFF8(v91, v583, &qword_1019FEF98, &qword_10147A980);

        a3 = *(v89 + 32);
        (a3)(v587, v76, v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v586 = sub_100B356D0(0, v586[2] + 1, 1, v586);
        }

        v93 = v586[2];
        v92 = v586[3];
        if (v93 >= v92 >> 1)
        {
          v586 = sub_100B356D0((v92 > 1), v93 + 1, 1, v586);
        }

        v82 &= v82 - 1;
        v94 = v586;
        v586[2] = v93 + 1;
        v95 = v94 + ((*(v588 + 80) + 32) & ~*(v588 + 80)) + v93 * v579;
        v49 = v585;
        (a3)(v95, v587, v585);
        v79 = v575;
      }

      while (v82);
    }
  }

  v96 = *(v571 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas);
  v99 = *(v96 + 64);
  v98 = (v96 + 64);
  v97 = v99;
  v100 = 1 << *(*(v571 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas) + 32);
  v101 = -1;
  if (v100 < 64)
  {
    v101 = ~(-1 << v100);
  }

  v102 = v101 & v97;
  v83 = (v100 + 63) >> 6;
  v578 = *(v571 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_addedItemDatas);
  swift_bridgeObjectRetain_n();
  v84 = 0;
  v587 = _swiftEmptyArrayStorage;
  v577 = v98;
  if (v102)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v103 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_64;
    }

    if (v103 >= v83)
    {
      break;
    }

    v102 = *&v98[8 * v103];
    ++v84;
    if (v102)
    {
      v84 = v103;
      do
      {
LABEL_26:
        v104 = __clz(__rbit64(v102)) | (v84 << 6);
        v105 = v578;
        v106 = v578[6];
        v107 = v588;
        v579 = *(v588 + 72);
        v108 = v576;
        (*(v588 + 16))(v576, v106 + v579 * v104, v49);
        *(v108 + *(v584 + 48)) = *(v105[7] + 8 * v104);
        v109 = v108;
        v76 = v583;
        sub_10003DFF8(v109, v583, &qword_1019FEF98, &qword_10147A980);

        a3 = *(v107 + 32);
        (a3)(v582, v76, v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v587 = sub_100B356D0(0, *(v587 + 16) + 1, 1, v587);
        }

        v111 = *(v587 + 16);
        v110 = *(v587 + 24);
        if (v111 >= v110 >> 1)
        {
          v587 = sub_100B356D0((v110 > 1), v111 + 1, 1, v587);
        }

        v102 &= v102 - 1;
        v112 = v587;
        *(v587 + 16) = v111 + 1;
        v113 = v112 + ((*(v588 + 80) + 32) & ~*(v588 + 80)) + v111 * v579;
        v49 = v585;
        (a3)(v113, v582, v585);
        v98 = v577;
      }

      while (v102);
    }
  }

  if (qword_1019F22B8 != -1)
  {
    swift_once();
  }

  v114 = static OS_os_log.boardItemLifecycle;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v115 = swift_initStackObject();
  *(v115 + 16) = xmmword_10146C4D0;
  v116 = sub_1005B981C(&qword_101A0A360, qword_101489F20);
  *(v115 + 56) = v116;
  v117 = sub_10001A2F8(&qword_101A22878, &qword_101A0A360, qword_101489F20, &protocol conformance descriptor for [A]);
  *(v115 + 32) = v586;
  *(v115 + 96) = v116;
  *(v115 + 104) = v117;
  v118 = v587;
  *(v115 + 64) = v117;
  *(v115 + 72) = v118;
  v119 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_removedNewlyCreatedItemIds;
  v76 = v571;
  swift_beginAccess();
  v120 = *(v76 + v119);
  *(v115 + 136) = sub_1005B981C(&qword_101A22880, &qword_1014B7770);
  *(v115 + 144) = sub_10001A2F8(&qword_101A22888, &qword_101A22880, &qword_1014B7770, &protocol conformance descriptor for Set<A>);
  *(v115 + 112) = v120;

  v121 = static os_log_type_t.default.getter();
  sub_100005404(v114, &_mh_execute_header, v121, "🚖 mergeDatabaseChanges() hasSignificantChanges: pendingchanges, removedItemKeys: %{public}@, addedItemKeys: %{public}@, removedNewlyCreatedKeys: %{public}@", 158, 0, v115);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v6 = v574;
  LOBYTE(a3) = v566;
  v61 = v570;
LABEL_35:
  v122 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue;
  v123 = *(v76 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  v124 = swift_allocObject();
  *(v124 + 16) = sub_100EDE704;
  *(v124 + 24) = v76;
  *&v598 = sub_10002AAE0;
  *(&v598 + 1) = v124;
  *&v596 = _NSConcreteStackBlock;
  v5 = *"";
  *(&v596 + 1) = *"";
  *&v597 = sub_10002AAB8;
  *(&v597 + 1) = &unk_1018A78E0;
  v125 = _Block_copy(&v596);

  dispatch_sync(v123, v125);
  _Block_release(v125);
  LOBYTE(v123) = swift_isEscapingClosureAtFileLocation();

  if (v123)
  {
    __break(1u);
  }

  else
  {
    v126 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_processingQueue;
    swift_beginAccess();
    v127 = *(v76 + v126);
    v579 = v122;
    v580 = v126;
    if (!(v127 >> 62))
    {
      if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_38:
    v586 = objc_opt_self();
    v128 = [v586 _atomicIncrementAssertCount];
    *&v596 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v596, "If we have unprocessed items while we're about to mergeDatabaseChanges() they might not be considered for created/undeleted pending items.", 138, 2u);
    StaticString.description.getter("mergeDatabaseChanges(_:transaction:squelchLogs:undoable:)", 57, 2);
    v584 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoard.swift", 80, 2);
    v129 = String._bridgeToObjectiveC()();

    v130 = [v129 lastPathComponent];

    v583 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v133 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v134 = swift_initStackObject();
    *(v134 + 16) = xmmword_10146CA70;
    *(v134 + 56) = &type metadata for Int32;
    *(v134 + 64) = &protocol witness table for Int32;
    *(v134 + 32) = v128;
    v135 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v134 + 96) = v135;
    v136 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(v134 + 104) = v136;
    v137 = v584;
    *(v134 + 72) = v584;
    *(v134 + 136) = &type metadata for String;
    v138 = sub_1000053B0();
    *(v134 + 112) = v583;
    *(v134 + 120) = v132;
    *(v134 + 176) = &type metadata for UInt;
    *(v134 + 184) = &protocol witness table for UInt;
    *(v134 + 144) = v138;
    *(v134 + 152) = 276;
    v139 = v596;
    *(v134 + 216) = v135;
    *(v134 + 224) = v136;
    *(v134 + 192) = v139;
    v140 = v137;
    v141 = v139;
    v142 = static os_log_type_t.error.getter();
    sub_100005404(v133, &_mh_execute_header, v142, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v134);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v143 = static os_log_type_t.error.getter();
    sub_100005404(v133, &_mh_execute_header, v143, "If we have unprocessed items while we're about to mergeDatabaseChanges() they might not be considered for created/undeleted pending items.", 138, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v144 = swift_allocObject();
    v144[2] = 8;
    v144[3] = 0;
    v144[4] = 0;
    v144[5] = 0;
    v145 = __VaListBuilder.va_list()();
    StaticString.description.getter("mergeDatabaseChanges(_:transaction:squelchLogs:undoable:)", 57, 2);
    a3 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoard.swift", 80, 2);
    v146 = String._bridgeToObjectiveC()();

    StaticString.description.getter("If we have unprocessed items while we're about to mergeDatabaseChanges() they might not be considered for created/undeleted pending items.", 138, 2);
    v147 = String._bridgeToObjectiveC()();

    [v586 handleFailureInFunction:a3 file:v146 lineNumber:276 isFatal:0 format:v147 args:v145];

    v6 = v574;
    LOBYTE(a3) = v566;
    v61 = v570;
  }

LABEL_41:
  if (a3)
  {
    if (qword_1019F22B8 != -1)
    {
      swift_once();
    }

    v148 = static OS_os_log.boardItemLifecycle;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v149 = swift_allocObject();
    *(v149 + 16) = xmmword_10146C6B0;
    v150 = *&v6[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v151 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v152 = v150 + v151;
    v153 = v573;
    sub_10004FECC(v152, v573, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    CRRegister.wrappedValue.getter();
    sub_10003D69C(v153, type metadata accessor for CRLBoardCRDTData);
    v154 = UUID.uuidString.getter();
    v156 = v155;
    (*(v588 + 8))(v61, v585);
    *(v149 + 56) = &type metadata for String;
    *(v149 + 64) = sub_1000053B0();
    *(v149 + 32) = v154;
    *(v149 + 40) = v156;
    v6 = v574;
    v157 = static os_log_type_t.default.getter();
    sub_100005404(v148, &_mh_execute_header, v157, "🚖 mergeDatabaseChanges() logs squelched. Board: %{public}@", 61, 0, v149);
    swift_setDeallocating();
    sub_100005070((v149 + 32));
    swift_deallocClassInstance();
  }

  v158 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v159 = *&v6[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v160 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v161 = v159 + v160;
  v162 = v573;
  sub_10004FECC(v161, v573, type metadata accessor for CRLBoardCRDTData);
  v586 = sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v162, type metadata accessor for CRLBoardCRDTData);
  v584 = v158;
  v163 = (*&v6[v158] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v165 = *v163;
  v164 = v163[1];

  v166 = v568;
  sub_10084BD4C(v61, v165, v164, v568);
  v167 = v572;
  swift_beginAccess();
  v168 = *(v167 + 2);
  v169 = v585;
  if (!*(v168 + 16))
  {
    goto LABEL_50;
  }

  v170 = sub_1000486F0(v166);
  if ((v171 & 1) == 0)
  {

LABEL_50:
    sub_10003D69C(v166, type metadata accessor for CRLBoardIdentifier);
    goto LABEL_51;
  }

  v172 = *(v168 + 56) + 40 * v170;
  v173 = v166;
  v174 = *v172;
  v175 = *(v172 + 8);
  v176 = v6;
  v177 = *(v172 + 16);
  v178 = *(v172 + 24);
  v179 = *(v172 + 32);
  v583 = v178;

  sub_10003D69C(v173, type metadata accessor for CRLBoardIdentifier);

  v180 = sub_100006370(0, &qword_101A228C8, NSException_ptr);
  __chkstk_darwin(v180);
  *(&v503 - 8) = v174;
  *(&v503 - 7) = v175;
  *(&v503 - 6) = v177;
  *(&v503 - 5) = v178;
  *(&v503 - 32) = v179;
  v181 = v564;
  *(&v503 - 3) = v176;
  *(&v503 - 2) = v181;
  *(&v503 - 8) = v527;
  v182 = v565;
  sub_100EB7CFC(sub_100EDE648, (&v503 - 5));
  if (v182)
  {

    return;
  }

  v565 = 0;

  v6 = v176;
  v169 = v585;
LABEL_51:
  v592[0] = _swiftEmptySetSingleton;
  v183 = v584;
  v184 = *&v6[v584];
  v185 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v583 = type metadata accessor for CRLBoardCRDTData;
  v186 = v573;
  sub_10004FECC(v184 + v185, v573, type metadata accessor for CRLBoardCRDTData);
  v187 = v569;
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v186, type metadata accessor for CRLBoardCRDTData);
  v188 = v570;
  sub_100E6AF38(v570, v187);
  v189 = *(v588 + 8);
  v582 = (v588 + 8);
  v581 = v189;
  v189(v188, v169);

  v191 = sub_100767620(v190);

  swift_beginAccess();

  sub_1010ACAA4(v192, v191);
  v194 = v193;
  v195 = *&v574[v183];
  v196 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v197 = v195 + v196;
  v198 = v574;
  sub_10004FECC(v197, v186, v583);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v186, type metadata accessor for CRLBoardCRDTData);
  v199 = (*&v198[v183] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v201 = *v199;
  v200 = v199[1];

  v202 = v567;
  sub_10084BD4C(v188, v201, v200, v567);
  v203 = v572;
  swift_beginAccess();
  v204 = *(v203 + 3);
  v205 = *(v204 + 16);

  if (v205 && (v206 = sub_1000486F0(v202), (v207 & 1) != 0))
  {
    a3 = *(*(v204 + 56) + 8 * v206);

    sub_10003D69C(v202, type metadata accessor for CRLBoardIdentifier);

    v208 = *&v198[v584];
    v209 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v210 = v208 + v209;
    v211 = v573;
    sub_10004FECC(v210, v573, type metadata accessor for CRLBoardCRDTData);
    v212 = v570;
    CRRegister.wrappedValue.getter();
    v213 = sub_10003D69C(v211, type metadata accessor for CRLBoardCRDTData);
    v214 = v569;
    (*(*a3[2] + 264))(v213);
    LOBYTE(v208) = static UUID.== infix(_:_:)();
    v215 = v585;
    v216 = v581;
    v581(v214, v585);
    v216(v212, v215);
    if (v208)
    {
      v583 = v194;
      v83 = a3[2];
      v217 = *&v198[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];

      v218 = v217;
      v219 = v564;
      v220 = v565;
      sub_1012E0400(v218, &off_10188FE10);
      v76 = v220;
      if (!v220)
      {
        v221 = *&v218[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
        v222 = *(*v221 + 496);

        v222(v83);
        (*(*v221 + 488))(v83);
        (*(*v221 + 480))(v83);
        v607[0] = *(v83 + 24);
        v607[1] = *(v83 + 40);
        v608 = *(v83 + 56);
        sub_10073E870(v607, *(v83 + 16));

        v223 = v527;
        sub_1012CF6CC(v218, &off_10188FE10, v527);

        v226 = v569;
        (*(*v83 + 264))();
        swift_beginAccess();
        v84 = v570;
        sub_100E6AF38(v570, v226);
        swift_endAccess();
        v581(v84, v585);
        v49 = v574;
        sub_100EBF540(a3, v592, v583, v566 & 1, v574, v219, v223);
        goto LABEL_65;
      }
    }

    else
    {

      sub_100EDE564();
      swift_allocError();
      *v225 = 0xD000000000000023;
      v225[1] = 0x80000001015ADA60;
      swift_willThrow();
    }

LABEL_59:
  }

  else
  {

    sub_10003D69C(v202, type metadata accessor for CRLBoardIdentifier);
    sub_100EDE564();
    swift_allocError();
    *v224 = 0;
    v224[1] = 0;
    swift_willThrow();
  }

LABEL_60:
}