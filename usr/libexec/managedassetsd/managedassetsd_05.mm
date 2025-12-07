id sub_1000BF9E4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC6server18MACloudSyncManager_assetsNotToBeSynced;
  sub_10005F5CC(&qword_100128DD0, &qword_1000E7400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E6C00;
  *(inited + 32) = 100;
  v8 = sub_1000BF6D4(&off_100117A98);
  sub_10005F5CC(&qword_100128DD8, &qword_1000E7408);
  swift_arrayDestroy();
  *(inited + 40) = v8;
  *(inited + 48) = 125;
  v9 = sub_1000BF6D4(&off_100117AE8);
  sub_100066C80(&unk_100117B08, &qword_100128DD8, &qword_1000E7408);
  *(inited + 56) = v9;
  v10 = sub_1000BF7D8(inited);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100128DE0, &qword_1000E7410);
  swift_arrayDestroy();
  *&v3[v6] = v10;
  *&v3[OBJC_IVAR____TtC6server18MACloudSyncManager_storage] = a1;
  type metadata accessor for MASysStateStore();
  v11 = a1;
  swift_unknownObjectRetain_n();
  v12 = v11;
  *&v3[OBJC_IVAR____TtC6server18MACloudSyncManager_sysStore] = sub_1000B0E10(v12);
  type metadata accessor for MACloudAssetLocalStore();
  swift_unknownObjectRetain();
  v13 = v12;
  v14 = sub_10009BF48(v13, a2);
  v15 = OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore;
  *&v3[OBJC_IVAR____TtC6server18MACloudSyncManager_localAssetStore] = v14;
  type metadata accessor for MACloudKVSRecordLocalStore();
  swift_unknownObjectRetain();
  v16 = sub_1000CA60C(v13, a2);
  v17 = OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore;
  *&v3[OBJC_IVAR____TtC6server18MACloudSyncManager_localKVSStore] = v16;
  sub_10005F5CC(&qword_100128E80, &qword_1000E78C0);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1000E6C00;
  v19 = sub_1000C549C();
  v20 = *(v19 + 1);
  *(v18 + 32) = *v19;
  *(v18 + 40) = v20;
  v21 = *&v3[v15];
  v22 = sub_1000BFEC0(&qword_100128E88, type metadata accessor for MACloudAssetLocalStore, &unk_1000E6E70);
  *(v18 + 48) = v21;
  *(v18 + 56) = v22;

  v23 = sub_1000C54A8();
  v24 = *(v23 + 1);
  *(v18 + 64) = *v23;
  *(v18 + 72) = v24;
  v25 = *&v3[v17];
  v26 = sub_1000BFEC0(&qword_100128E90, type metadata accessor for MACloudKVSRecordLocalStore, &unk_1000E7F28);
  *(v18 + 80) = v25;
  *(v18 + 88) = v26;

  v27 = sub_1000BF8C8(v18);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100128E98, &qword_1000E78C8);
  swift_arrayDestroy();
  type metadata accessor for MACloudSyncedDatabase();

  *&v3[OBJC_IVAR____TtC6server18MACloudSyncManager_syncedDatabase] = sub_100067524(v28, v27);
  v31.receiver = v3;
  v31.super_class = type metadata accessor for MACloudSyncManager();
  v29 = objc_msgSendSuper2(&v31, "init");
  swift_unknownObjectRelease_n();
  return v29;
}

id sub_1000BFD3C(uint64_t a1)
{
  swift_errorRetain();
  sub_10005F5CC(&qword_100128460, &qword_1000E78A0);
  if (swift_dynamicCast())
  {
    v1 = sub_1000B6504(v7, v8, v9);
  }

  else
  {
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v2 = v8;
      v3 = v7;
      v4 = v9;
    }

    else
    {
      swift_getErrorValue();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      nullsub_1();
    }

    v1 = sub_1000B6674(v3, v2, v4);
  }

  v5 = v1;

  return v5;
}

uint64_t sub_1000BFE60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000BFEC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000BFF08(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a2 + 16);
  v7 = (a2 + 32);
  while (v6)
  {
    v8 = *v7++;
    --v6;
    if (v8 == result)
    {
      return result;
    }
  }

  _StringGuts.grow(_:)(51);
  v9._countAndFlagsBits = a3;
  v9._object = a4;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xD00000000000001ELL;
  v10._object = 0x80000001000F1E50;
  String.append(_:)(v10);
  type metadata accessor for MASDProfileType(0);
  _print_unlocked<A, B>(_:_:)();
  v11._object = 0x80000001000F1E70;
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);
  sub_100092A98();
  swift_allocError();
  *v12 = 16;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_1000C0038(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000C0090(uint64_t a1)
{
  if ((a1 + 22000) >= 0x20)
  {
    return 32;
  }

  else
  {
    return a1 + 22000;
  }
}

unint64_t sub_1000C00AC()
{
  result = qword_100128E20;
  if (!qword_100128E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128E20);
  }

  return result;
}

uint64_t sub_1000C0100(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C0148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MACloudSyncError.ErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MACloudSyncError.ErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000C02EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000BF144(v2, v3);
}

uint64_t sub_1000C0398()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C03D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000625FC;

  return sub_100065264(a1, v4);
}

uint64_t sub_1000C0488()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000C04E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100067294;

  return sub_1000BEA00(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1000C05BC()
{
  _Block_release(*(v0 + 72));

  return _swift_deallocObject(v0, 88, 7);
}

void sub_1000C061C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100067294;

  JUMPOUT(0x1000BDC50);
}

uint64_t sub_1000C0718()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000C0760()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100067294;

  return sub_1000BCEE8(v2, v3, v4, v5, v6);
}

uint64_t sub_1000C082C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100067294;

  return sub_1000BC424(v2, v3, v4);
}

uint64_t sub_1000C08E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100067294;

  return sub_1000BBEA4(v2, v3, v4);
}

uint64_t sub_1000C0994()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C09DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100067294;

  return sub_1000BB814(v2, v3, v5, v4);
}

uint64_t sub_1000C0A9C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000BA474(v2, v3);
}

uint64_t sub_1000C0B48()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100067294;

  return sub_1000B9AEC(v2, v3, v4);
}

uint64_t sub_1000C0BFC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C0C44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100067294;

  return sub_1000B8A00(v2, v3, v4);
}

uint64_t sub_1000C0CF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000B8454(v2, v3);
}

uint64_t sub_1000C0DA4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000B7988(v2, v3);
}

uint64_t sub_1000C0E50()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000625FC;

  return sub_1000B6EC0(v2, v3);
}

uint64_t sub_1000C0EFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000B5434(v2, v3);
}

uint64_t sub_1000C0FA8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C0FE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100067294;

  return sub_1000B4E24(v2, v3, v4);
}

uint64_t sub_1000C109C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000B46FC(v2, v3);
}

uint64_t sub_1000C1148()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C1188()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100067294;

  return sub_1000B3A60(v2, v3);
}

uint64_t sub_1000C1234()
{
  v1 = sub_10005F5CC(&qword_100128E68, &qword_1000E78A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000C12C8(char a1, uint64_t a2)
{
  sub_10005F5CC(&qword_100128E68, &qword_1000E78A8);
  if (a2)
  {
    swift_errorRetain();
    sub_10005F5CC(&qword_100128E68, &qword_1000E78A8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10005F5CC(&qword_100128E68, &qword_1000E78A8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000C1498()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_10012B198);
  sub_100066000(v0, qword_10012B198);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0xD000000000000011, 0x80000001000E7A70);
}

uint64_t sub_1000C150C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v11 = 0xEA00000000006465;
    v12 = 0x7472617453746F6ELL;
    v13 = 0xE800000000000000;
    v14 = 0x646564616F6C7075;
    v15 = 0xE900000000000064;
    v16 = 0x756F6C436D6F7266;
    if (a1 != 3)
    {
      v16 = 0x6B63416C61636F6CLL;
      v15 = 0xEA00000000006465;
    }

    if (a1 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    if (a1)
    {
      v12 = 0x635364616F6C7075;
      v11 = 0xEF64656C75646568;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v14;
    }

    if (a1 <= 1u)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v1 = 0xEE0064616F6C7055;
    v2 = 0x6F5464656C696166;
    v3 = 0xED00006465646565;
    v4 = 0x63784561746F7571;
    if (a1 != 9)
    {
      v4 = 0x5474736575716572;
      v3 = 0xEF6574656C65446FLL;
    }

    if (a1 != 8)
    {
      v2 = v4;
      v1 = v3;
    }

    v5 = 0xEC00000064657465;
    v6 = 0x6C65446C61636F6CLL;
    v7 = 0x80000001000F1E90;
    v8 = 0xD000000000000010;
    if (a1 != 6)
    {
      v8 = 0x656C6544656E6F7ALL;
      v7 = 0xEB00000000646574;
    }

    if (a1 != 5)
    {
      v6 = v8;
      v5 = v7;
    }

    if (a1 <= 7u)
    {
      v9 = v6;
    }

    else
    {
      v9 = v2;
    }

    if (a1 <= 7u)
    {
      v10 = v5;
    }

    else
    {
      v10 = v1;
    }
  }

  _StringGuts.grow(_:)(16);

  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v9;
  v19._object = v10;
  String.append(_:)(v19);

  return 0x74617453636E7973;
}

unint64_t sub_1000C1784@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4FD0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C182C(unsigned __int8 a1, char a2, char a3)
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFF00 | a1 | v3;
}

uint64_t sub_1000C1850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  __chkstk_darwin(v7 - 8);
  v9 = &v84 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v84 - v15;
  sub_1000939A8(a1, &v95, &unk_100129080, &qword_1000E7D60);
  if (v96)
  {
    v87 = a2;
    v88 = v3;
    v89 = a3;
    v90 = v16;
    v86 = v14;
    sub_10005F6B0(&v95, v97);
    v17 = v98;
    v18 = v99;
    sub_10005E340(v97, v98);
    v19 = (*(v18 + 16))(v17, v18);
    v93 = v20;
    v21 = v98;
    v22 = v99;
    sub_10005E340(v97, v98);
    v91 = (*(v22 + 24))(v21, v22);
    v24 = v23;
    if (qword_10012B190 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v26 = sub_100066000(v25, qword_10012B198);
    sub_1000C4FE0(v97, &v95);
    v92 = v26;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v85 = v19;
      v30 = v11;
      v31 = v10;
      v32 = v24;
      v33 = v29;
      v34 = swift_slowAlloc();
      v94 = v34;
      *v33 = 136315138;
      sub_10005E340(&v95, v96);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_10005D588(&v95);
      v38 = sub_100065658(v35, v37, &v94);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "existing localRecord: %s", v33, 0xCu);
      sub_10005D588(v34);

      v24 = v32;
      v10 = v31;
      v11 = v30;
      v19 = v85;
    }

    else
    {

      sub_10005D588(&v95);
    }

    v39 = v98;
    v40 = v99;
    sub_10005E340(v97, v98);
    if ((*(v40 + 32))(v39, v40) == 10)
    {
      v41 = v98;
      v42 = v99;
      sub_10005E340(v97, v98);
      v43 = (*(v42 + 56))(v41, v42);
      if (v44)
      {
        v45 = v43;
        v46 = v44;
        v47 = (*(v89 + 56))(v87);
        if (v48)
        {
          if (v45 == v47 && v46 == v48)
          {

LABEL_18:
            v57 = v93;

            v58 = Logger.logObject.getter();
            v59 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v58, v59))
            {
              v60 = swift_slowAlloc();
              *&v95 = swift_slowAlloc();
              *v60 = 136315394;
              v61 = sub_100065658(v19, v57, &v95);

              *(v60 + 4) = v61;
              *(v60 + 12) = 2080;
              v62 = sub_100065658(v91, v24, &v95);

              *(v60 + 14) = v62;
              _os_log_impl(&_mh_execute_header, v58, v59, "Skip cloud record sync down with same ETag as cloud delete is pending. recordName: %s handle: %s", v60, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

LABEL_34:
            sub_10005D588(v97);
            return 0;
          }

          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v56)
          {
            goto LABEL_18;
          }
        }

        else
        {
        }
      }

      v63 = v98;
      v64 = v99;
      sub_10005E340(v97, v98);
      (*(v64 + 80))(v63, v64);
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        v68 = v19;
        (*(v11 + 32))(v90, v9, v10);
        v69 = v86;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v71 = v70;
        v72 = *(v11 + 8);
        v89 = v10;
        v72(v69, v10);
        v73 = v93;

        v74 = Logger.logObject.getter();
        if (v71 < 3600.0)
        {
          v75 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *&v95 = swift_slowAlloc();
            *v76 = 136315394;
            v77 = sub_100065658(v68, v73, &v95);

            *(v76 + 4) = v77;
            *(v76 + 12) = 2080;
            v78 = sub_100065658(v91, v24, &v95);

            *(v76 + 14) = v78;
            _os_log_impl(&_mh_execute_header, v74, v75, "Skip cloud record sync down as cloud delete request is pending. recordName: %s handle: %s", v76, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v72(v90, v89);
          goto LABEL_34;
        }

        v79 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v74, v79))
        {
          v80 = swift_slowAlloc();
          *&v95 = swift_slowAlloc();
          *v80 = 134218498;
          *(v80 + 4) = v71;
          *(v80 + 12) = 2080;
          v81 = sub_100065658(v68, v73, &v95);

          *(v80 + 14) = v81;
          *(v80 + 22) = 2080;
          v82 = sub_100065658(v91, v24, &v95);

          *(v80 + 24) = v82;
          _os_log_impl(&_mh_execute_header, v74, v79, "Ignored delete request issued %f seconds ago, continue propagating sync down. recordName: %s handle: %s", v80, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v72(v90, v89);
        goto LABEL_37;
      }

      sub_100066C80(v9, &qword_1001287D0, &qword_1000E6C30);
      v65 = v93;

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *&v95 = swift_slowAlloc();
        *v52 = 136315394;
        v66 = sub_100065658(v19, v65, &v95);

        *(v52 + 4) = v66;
        *(v52 + 12) = 2080;
        v67 = sub_100065658(v91, v24, &v95);

        *(v52 + 14) = v67;
        v55 = "No ckSyncDate for local record delete request, continue propagating sync down. recordName: %s handle: %s";
        goto LABEL_23;
      }
    }

    else
    {
      v49 = v93;

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *&v95 = swift_slowAlloc();
        *v52 = 136315394;
        v53 = sub_100065658(v19, v49, &v95);

        *(v52 + 4) = v53;
        *(v52 + 12) = 2080;
        v54 = sub_100065658(v91, v24, &v95);

        *(v52 + 14) = v54;
        v55 = "Continue propagating cloud record sync down to replace current record. recordName: %s handle: %s";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v50, v51, v55, v52, 0x16u);
        swift_arrayDestroy();

LABEL_37:
        sub_10005D588(v97);
        return 1;
      }
    }

    goto LABEL_37;
  }

  sub_100066C80(&v95, &unk_100129080, &qword_1000E7D60);
  return 1;
}

uint64_t sub_1000C2394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[45] = a4;
  v5[46] = v4;
  v5[44] = a3;
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C243C, v7, v6);
}

uint64_t sub_1000C243C()
{
  v70 = v0;
  v1 = v0[45];
  v2 = v0[44];
  v67 = v1[5](v2, v1);
  v68 = v3;
  v4 = v1[6](v2, v1);
  v6 = v5;
  v66 = v1[7](v2, v1);
  v8 = v7;
  v9 = v1[4](v2, v1);
  v11 = v10;
  v12 = v2;
  v13 = v1[2];
  v14 = v13(v12, v1);
  v63 = v13;
  v62 = v9;
  v65 = v11;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 32) = v4;
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v6;
  *(inited + 48) = 0;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1000E61E0;
  *(v17 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v17 + 40) = v18;
  sub_10005F5CC(&unk_100129340, &unk_1000E8020);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000E6BE0;
  *(v19 + 32) = v67;
  *(v19 + 40) = v68;
  *(v19 + 48) = v66;
  *(v19 + 56) = v8;
  v64 = v4;
  *(v19 + 64) = v4;
  *(v19 + 72) = v6;
  v20 = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
  *(v17 + 72) = v20;
  *(v17 + 48) = v19;

  sub_1000AF988(v17);
  swift_setDeallocating();
  sub_100066C80(v17 + 32, &qword_100129070, &qword_1000E7440);
  v21 = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[42] = 0;
  v22 = [v14 queryRowDictionariesFor:isa attributes:v21 error:v0 + 42];

  v23 = v0[42];
  v24 = v0;
  if (v22)
  {
    sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v23;

    if (qword_10012B190 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100066000(v27, qword_10012B198);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    v61 = v25;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v69[0] = swift_slowAlloc();
      *v30 = 136315394;
      v31 = Array.description.getter();
      v33 = v24;
      v34 = sub_100065658(v31, v32, v69);

      *(v30 + 4) = v34;
      v24 = v33;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_100065658(v62, v65, v69);
      _os_log_impl(&_mh_execute_header, v28, v29, "Pending uploads: %s store: %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    v38 = v63(v24[44], v24[45]);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_1000E61E0;
    *(v39 + 32) = v64;
    *(v39 + 72) = &type metadata for Int;
    *(v39 + 40) = v6;
    *(v39 + 48) = 10;

    sub_1000AF988(v39);
    swift_setDeallocating();
    sub_100066C80(v39 + 32, &qword_100129070, &qword_1000E7440);
    v40 = Dictionary._bridgeToObjectiveC()().super.isa;

    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_1000E61E0;
    *(v41 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v41 + 40) = v42;
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1000E6BE0;
    *(v43 + 32) = v67;
    *(v43 + 40) = v68;
    *(v43 + 48) = v66;
    *(v43 + 56) = v8;
    *(v43 + 64) = v64;
    *(v43 + 72) = v6;
    *(v41 + 72) = v20;
    *(v41 + 48) = v43;
    sub_1000AF988(v41);
    swift_setDeallocating();
    sub_100066C80(v41 + 32, &qword_100129070, &qword_1000E7440);
    v44 = Dictionary._bridgeToObjectiveC()().super.isa;

    v24[43] = 0;
    v45 = [v38 queryRowDictionariesFor:v40 attributes:v44 error:v24 + 43];

    v46 = v24[43];
    if (v45)
    {
      v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v46;

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v69[0] = swift_slowAlloc();
        *v51 = 136315394;
        v52 = Array.description.getter();
        v54 = sub_100065658(v52, v53, v69);

        *(v51 + 4) = v54;
        *(v51 + 12) = 2080;
        v55 = v62;
        *(v51 + 14) = sub_100065658(v62, v65, v69);
        _os_log_impl(&_mh_execute_header, v49, v50, "Pending deletes: %s store: %s", v51, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v55 = v62;
      }

      v56 = v24[45];
      v57 = v24[44];
      v58 = sub_1000C2E08(v61, v55, v65, v57, v56);

      v59 = sub_1000C387C(v47, v55, v65, v57, v56);

      v60 = v24[1];

      return v60(v58, v59);
    }

    v35 = v46;
  }

  else
  {
    v35 = v23;
  }

  _convertNSErrorToError(_:)();

  swift_willThrow();
  v36 = v24[1];

  return v36();
}

void *sub_1000C2E08(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (**a5)(void, void))
{
  if (qword_10012B190 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100066000(v8, qword_10012B198);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  v86 = a3;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v11 = 136315650;
    v12 = a5[5](a4, a5);
    v14 = sub_100065658(v12, v13, v91);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = a5[6](a4, a5);
    v17 = sub_100065658(v15, v16, v91);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    v18 = a5[7](a4, a5);
    v20 = sub_100065658(v18, v19, v91);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "fields: %s, %s, %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v92 = _swiftEmptyArrayStorage;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = (a1 + 32);
    v87 = a5[7];
    v85 = _swiftEmptyArrayStorage;
    while (1)
    {
      v23 = *v22;

      v24 = v87(a4, a5);
      if (*(v23 + 16))
      {
        v26 = sub_100065A98(v24, v25);
        v28 = v27;

        if ((v28 & 1) == 0)
        {
          goto LABEL_21;
        }

        sub_100066130(*(v23 + 56) + 32 * v26, v91);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_21;
        }

        v29 = a5[5](a4, a5);
        if (*(v23 + 16))
        {
          v31 = sub_100065A98(v29, v30);
          v33 = v32;

          if ((v33 & 1) == 0)
          {
            goto LABEL_21;
          }

          sub_100066130(*(v23 + 56) + 32 * v31, v91);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_21;
          }

          v34 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v34 = v89 & 0xFFFFFFFFFFFFLL;
          }

          if (v34)
          {
            v35 = a5[6](a4, a5);
            if (!*(v23 + 16))
            {

              goto LABEL_21;
            }

            v37 = sub_100065A98(v35, v36);
            v39 = v38;

            if (v39)
            {
              sub_100066130(*(v23 + 56) + 32 * v37, v91);
              v40 = v90;
              if (swift_dynamicCast())
              {
                v41 = sub_1000C4FD0(v89);
                if (v41 != 11)
                {
                  v42 = v41;
                  v43.super.isa = sub_1000C60E0(v89).super.isa;
                  if (v43.super.isa)
                  {
                    v82 = v42;
                    isa = v43.super.isa;

                    v44 = Logger.logObject.getter();
                    v45 = static os_log_type_t.info.getter();

                    if (os_log_type_enabled(v44, v45))
                    {
                      v79 = v45;
                      v46 = swift_slowAlloc();
                      v91[0] = swift_slowAlloc();
                      *v46 = 136315394;
                      v47 = sub_1000C150C(v82);
                      v49 = sub_100065658(v47, v48, v91);

                      *(v46 + 4) = v49;
                      *(v46 + 12) = 2080;
                      v50 = Dictionary.description.getter();
                      v52 = v51;

                      v53 = v50;
                      v40 = v90;
                      v54 = sub_100065658(v53, v52, v91);

                      *(v46 + 14) = v54;
                      _os_log_impl(&_mh_execute_header, v44, v79, "Pending upload record syncState: %s record: %s", v46, 0x16u);
                      swift_arrayDestroy();
                    }

                    else
                    {
                    }

                    if (v82)
                    {

                      v61 = Logger.logObject.getter();
                      v62 = static os_log_type_t.info.getter();

                      if (os_log_type_enabled(v61, v62))
                      {
                        v80 = v62;
                        v63 = swift_slowAlloc();
                        v91[0] = swift_slowAlloc();
                        *v63 = 136315650;
                        v64 = sub_100065658(v89, v40, v91);

                        *(v63 + 4) = v64;
                        *(v63 + 12) = 2080;
                        v65 = sub_1000C150C(v82);
                        v67 = sub_100065658(v65, v66, v91);

                        *(v63 + 14) = v67;
                        *(v63 + 22) = 2080;
                        *(v63 + 24) = sub_100065658(a2, v86, v91);
                        _os_log_impl(&_mh_execute_header, v61, v80, "Skip recordName %s for upload as its syncState is %s, store: %s", v63, 0x20u);
                        swift_arrayDestroy();
                      }

                      else
                      {
                      }
                    }

                    else
                    {
                      sub_1000C5044();
                      v68 = isa;
                      v69._countAndFlagsBits = v89;
                      v69._object = v40;
                      CKRecordID.init(recordName:zoneID:)(v69, v68);
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                      v85 = v92;
                    }
                  }

                  else
                  {

                    v55 = Logger.logObject.getter();
                    v56 = static os_log_type_t.error.getter();
                    if (os_log_type_enabled(v55, v56))
                    {
                      v57 = swift_slowAlloc();
                      recordName_8 = swift_slowAlloc();
                      v91[0] = recordName_8;
                      *v57 = 136315138;
                      type metadata accessor for MASDAssetType(0);
                      sub_1000C5090();
                      v58 = dispatch thunk of CustomStringConvertible.description.getter();
                      v60 = sub_100065658(v58, v59, v91);

                      *(v57 + 4) = v60;
                      _os_log_impl(&_mh_execute_header, v55, v56, "Uploading record %s is not supported on this platform", v57, 0xCu);
                      sub_10005D588(recordName_8);
                    }
                  }

                  goto LABEL_22;
                }
              }
            }
          }
        }
      }

LABEL_21:

LABEL_22:
      ++v22;
      if (!--v21)
      {
        goto LABEL_44;
      }
    }
  }

  v85 = _swiftEmptyArrayStorage;
LABEL_44:

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v72 = 136315394;
    sub_1000C5044();
    v73 = v85;

    v74 = Array.description.getter();
    v76 = v75;

    v77 = sub_100065658(v74, v76, v91);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2080;
    *(v72 + 14) = sub_100065658(a2, v86, v91);
    _os_log_impl(&_mh_execute_header, v70, v71, "Pending upload recordIDs: %s store: %s", v72, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    return v85;
  }

  return v73;
}

void *sub_1000C387C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (**a5)(void, void))
{
  if (qword_10012B190 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100066000(v8, qword_10012B198);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  v86 = a3;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v11 = 136315650;
    v12 = a5[5](a4, a5);
    v14 = sub_100065658(v12, v13, v91);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = a5[6](a4, a5);
    v17 = sub_100065658(v15, v16, v91);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    v18 = a5[7](a4, a5);
    v20 = sub_100065658(v18, v19, v91);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "fields: %s, %s, %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v92 = _swiftEmptyArrayStorage;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = (a1 + 32);
    v87 = a5[7];
    v85 = _swiftEmptyArrayStorage;
    while (1)
    {
      v23 = *v22;

      v24 = v87(a4, a5);
      if (*(v23 + 16))
      {
        v26 = sub_100065A98(v24, v25);
        v28 = v27;

        if ((v28 & 1) == 0)
        {
          goto LABEL_21;
        }

        sub_100066130(*(v23 + 56) + 32 * v26, v91);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_21;
        }

        v29 = a5[5](a4, a5);
        if (*(v23 + 16))
        {
          v31 = sub_100065A98(v29, v30);
          v33 = v32;

          if ((v33 & 1) == 0)
          {
            goto LABEL_21;
          }

          sub_100066130(*(v23 + 56) + 32 * v31, v91);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_21;
          }

          v34 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v34 = v89 & 0xFFFFFFFFFFFFLL;
          }

          if (v34)
          {
            v35 = a5[6](a4, a5);
            if (!*(v23 + 16))
            {

              goto LABEL_21;
            }

            v37 = sub_100065A98(v35, v36);
            v39 = v38;

            if (v39)
            {
              sub_100066130(*(v23 + 56) + 32 * v37, v91);
              v40 = v90;
              if (swift_dynamicCast())
              {
                v41 = sub_1000C4FD0(v89);
                if (v41 != 11)
                {
                  v42 = v41;
                  v43.super.isa = sub_1000C60E0(v89).super.isa;
                  if (v43.super.isa)
                  {
                    v82 = v42;
                    isa = v43.super.isa;

                    v44 = Logger.logObject.getter();
                    v45 = static os_log_type_t.info.getter();

                    if (os_log_type_enabled(v44, v45))
                    {
                      v79 = v45;
                      v46 = swift_slowAlloc();
                      v91[0] = swift_slowAlloc();
                      *v46 = 136315394;
                      v47 = sub_1000C150C(v82);
                      v49 = sub_100065658(v47, v48, v91);

                      *(v46 + 4) = v49;
                      *(v46 + 12) = 2080;
                      v50 = Dictionary.description.getter();
                      v52 = v51;

                      v53 = v50;
                      v40 = v90;
                      v54 = sub_100065658(v53, v52, v91);

                      *(v46 + 14) = v54;
                      _os_log_impl(&_mh_execute_header, v44, v79, "Pending delete record syncState: %s record: %s", v46, 0x16u);
                      swift_arrayDestroy();
                    }

                    else
                    {
                    }

                    if (v82 == 10)
                    {
                      sub_1000C5044();
                      v61 = isa;
                      v62._countAndFlagsBits = v89;
                      v62._object = v40;
                      CKRecordID.init(recordName:zoneID:)(v62, v61);
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                      v85 = v92;
                    }

                    else
                    {

                      v63 = Logger.logObject.getter();
                      v64 = static os_log_type_t.info.getter();

                      if (os_log_type_enabled(v63, v64))
                      {
                        v80 = v64;
                        v65 = swift_slowAlloc();
                        v91[0] = swift_slowAlloc();
                        *v65 = 136315650;
                        v66 = sub_100065658(v89, v40, v91);

                        *(v65 + 4) = v66;
                        *(v65 + 12) = 2080;
                        v67 = sub_1000C150C(v82);
                        v69 = sub_100065658(v67, v68, v91);

                        *(v65 + 14) = v69;
                        *(v65 + 22) = 2080;
                        *(v65 + 24) = sub_100065658(a2, v86, v91);
                        _os_log_impl(&_mh_execute_header, v63, v80, "Skip recordName %s for delete as its syncState is %s, store: %s", v65, 0x20u);
                        swift_arrayDestroy();
                      }

                      else
                      {
                      }
                    }
                  }

                  else
                  {

                    v55 = Logger.logObject.getter();
                    v56 = static os_log_type_t.error.getter();
                    if (os_log_type_enabled(v55, v56))
                    {
                      v57 = swift_slowAlloc();
                      recordName_8 = swift_slowAlloc();
                      v91[0] = recordName_8;
                      *v57 = 136315138;
                      type metadata accessor for MASDAssetType(0);
                      sub_1000C5090();
                      v58 = dispatch thunk of CustomStringConvertible.description.getter();
                      v60 = sub_100065658(v58, v59, v91);

                      *(v57 + 4) = v60;
                      _os_log_impl(&_mh_execute_header, v55, v56, "Deleting record %s is not supported on this platform", v57, 0xCu);
                      sub_10005D588(recordName_8);
                    }
                  }

                  goto LABEL_22;
                }
              }
            }
          }
        }
      }

LABEL_21:

LABEL_22:
      ++v22;
      if (!--v21)
      {
        goto LABEL_44;
      }
    }
  }

  v85 = _swiftEmptyArrayStorage;
LABEL_44:

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v72 = 136315394;
    sub_1000C5044();
    v73 = v85;

    v74 = Array.description.getter();
    v76 = v75;

    v77 = sub_100065658(v74, v76, v91);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2080;
    *(v72 + 14) = sub_100065658(a2, v86, v91);
    _os_log_impl(&_mh_execute_header, v70, v71, "Pending delete recordIDs: %s store: %s", v72, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    return v85;
  }

  return v73;
}

uint64_t sub_1000C4304()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1000C4334()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1000C4398(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

void *sub_1000C4430()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_1000C4474(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_1000C450C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v18 = swift_allocObject();
  *(v18 + 80) = 0;
  *(v18 + 88) = 0;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  *(v18 + 64) = a7;
  *(v18 + 72) = a8;
  swift_beginAccess();
  *(v18 + 80) = a9;
  *(v18 + 81) = a10;
  return v18;
}

uint64_t sub_1000C45D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8;
  swift_beginAccess();
  *(v10 + 80) = a9;
  *(v10 + 81) = a10;
  return v10;
}

Swift::String *sub_1000C4644()
{
  v2 = v0;
  v3 = *(v0->_countAndFlagsBits + 168);
  v4 = v3();
  if (v4)
  {
  }

  else
  {
    v17 = (*(v0->_countAndFlagsBits + 208))();
    if (v1)
    {
      return v2;
    }

    (*(v0->_countAndFlagsBits + 176))(v17);
  }

  v5 = v3();
  if (v5)
  {
    v6 = v5;
    if (qword_10012B190 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100066000(v7, qword_10012B198);
    v2 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25[0] = v11;
      *v10 = 136315138;
      v12 = [(Swift::String *)v2 name];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100065658(v13, v15, v25);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Getting store %s", v10, 0xCu);
      sub_10005D588(v11);
    }
  }

  else
  {
    _StringGuts.grow(_:)(36);

    v25[0] = 0xD000000000000022;
    v25[1] = 0x80000001000F1EB0;
    String.append(_:)(v0[1]);
    nullsub_1();
    v19 = v18;
    v2 = v20;
    v22 = v21;
    sub_100092A98();
    swift_allocError();
    *v23 = v19;
    *(v23 + 8) = v2;
    *(v23 + 16) = v22;
    swift_willThrow();
  }

  return v2;
}

id sub_1000C4910()
{
  v1 = *(v0 + 81);
  v2 = &selRef_dbInClassD;
  if (!*(v0 + 81))
  {
    v2 = &selRef_dbInClassC;
  }

  v3 = [*(v0 + 40) *v2];
  if (v3)
  {
    v4 = v3;
    v26 = (*(*v0 + 144))() & 1;
    v5 = String._bridgeToObjectiveC()();
    sub_10005F5CC(&qword_100128EB8, &qword_1000E7940);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (*(v0 + 56))
    {
      v7 = String._bridgeToObjectiveC()();
      if (*(v0 + 72))
      {
LABEL_6:
        v8 = String._bridgeToObjectiveC()();
LABEL_16:
        v27[0] = 0;
        v19 = [v4 upgradeTable:v5 fields:v6.super.isa attributes:0 missingNewColumn:v7 hasDeletedColumn:v8 migrateData:&v26 error:v27];

        v13 = v27[0];
        if (v19)
        {
          v27[0] = 0;
          v20 = objc_allocWithZone(MAKVStore);
          v21 = v13;
          v22 = String._bridgeToObjectiveC()();
          v23 = String._bridgeToObjectiveC()();
          v13 = [v20 initWithName:v22 identifier:v23 profile:0 db:v4 attributes:0 error:v27];
        }

        else
        {
          v24 = v27[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        return v13;
      }
    }

    else
    {
      v7 = 0;
      if (*(v0 + 72))
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    goto LABEL_16;
  }

  _StringGuts.grow(_:)(35);

  v27[0] = 0xD000000000000021;
  v27[1] = 0x80000001000F1EE0;
  if (v1)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v1)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  nullsub_1();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_100092A98();
  swift_allocError();
  *v18 = v13;
  *(v18 + 8) = v15;
  *(v18 + 16) = v17;
  swift_willThrow();
  return v13;
}

uint64_t sub_1000C4C10(uint64_t a1)
{
  v2 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000939A8(a1, v4, &qword_1001287D0, &qword_1000E6C30);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100066C80(v4, &qword_1001287D0, &qword_1000E6C30);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    Date.timeIntervalSinceReferenceDate.getter();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    return v11;
  }
}

double sub_1000C4DCC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1000C4EA0@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    v5 = 0;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a3, v5, 1, v6);
}

uint64_t sub_1000C4F28()
{

  return v0;
}

uint64_t sub_1000C4F70()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1000C4FD0(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

uint64_t sub_1000C4FE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000C5044()
{
  result = qword_100128458;
  if (!qword_100128458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100128458);
  }

  return result;
}

unint64_t sub_1000C5090()
{
  result = qword_1001284E0;
  if (!qword_1001284E0)
  {
    type metadata accessor for MASDAssetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001284E0);
  }

  return result;
}

unint64_t sub_1000C50EC()
{
  result = qword_100128EC0;
  if (!qword_100128EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128EC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MACloudSyncLocalState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MACloudSyncLocalState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MACloudSyncState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MACloudSyncState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MACloudSyncState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1000C53E4()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_10012B3B8);
  sub_100066000(v0, qword_10012B3B8);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0x5A64756F6C43414DLL, 0xEB00000000656E6FLL);
}

uint64_t MASDAssetType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 100:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F2260;
      break;
    case 101:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F2240;
      break;
    case 102:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F2220;
      break;
    case 103:
      _StringGuts.grow(_:)(19);

      v3[0] = 0xD000000000000011;
      v3[1] = 0x80000001000F2200;
      break;
    case 104:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F21E0;
      break;
    case 105:
      _StringGuts.grow(_:)(19);

      v3[0] = 0xD000000000000011;
      v3[1] = 0x80000001000F21C0;
      break;
    case 106:
      _StringGuts.grow(_:)(23);

      v3[0] = 0xD000000000000015;
      v3[1] = 0x80000001000F21A0;
      break;
    case 107:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F2180;
      break;
    case 108:
      _StringGuts.grow(_:)(20);

      v3[0] = 0xD000000000000012;
      v3[1] = 0x80000001000F2160;
      break;
    case 109:
      _StringGuts.grow(_:)(16);

      strcpy(v3, "avatarLatents ");
      HIBYTE(v3[1]) = -18;
      break;
    case 110:
      strcpy(v3, "faceLatents ");
      BYTE5(v3[1]) = 0;
      HIWORD(v3[1]) = -5120;
      break;
    case 111:
      strcpy(v3, "hairLatents ");
      BYTE5(v3[1]) = 0;
      HIWORD(v3[1]) = -5120;
      break;
    case 112:
      strcpy(v3, "eyesLatents ");
      BYTE5(v3[1]) = 0;
      HIWORD(v3[1]) = -5120;
      break;
    case 113:
      _StringGuts.grow(_:)(19);

      v3[0] = 0xD000000000000011;
      v3[1] = 0x80000001000F2140;
      break;
    case 114:
      strcpy(v3, "clothesData ");
      BYTE5(v3[1]) = 0;
      HIWORD(v3[1]) = -5120;
      break;
    case 115:
      strcpy(v3, "hrtfData ");
      WORD1(v3[1]) = 0;
      HIDWORD(v3[1]) = -385875968;
      break;
    case 116:
      _StringGuts.grow(_:)(19);

      v3[0] = 0xD000000000000011;
      v3[1] = 0x80000001000F2120;
      break;
    case 117:
      _StringGuts.grow(_:)(24);

      v3[0] = 0xD000000000000016;
      v3[1] = 0x80000001000F2100;
      break;
    case 118:
      _StringGuts.grow(_:)(18);

      v3[0] = 0xD000000000000010;
      v3[1] = 0x80000001000F20E0;
      break;
    case 119:
      strcpy(v3, "guardianData ");
      HIWORD(v3[1]) = -4864;
      break;
    case 120:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F20C0;
      break;
    case 121:
      _StringGuts.grow(_:)(23);

      v3[0] = 0xD000000000000015;
      v3[1] = 0x80000001000F20A0;
      break;
    case 122:
      _StringGuts.grow(_:)(32);

      v3[0] = 0xD00000000000001ELL;
      v3[1] = 0x80000001000F2080;
      break;
    case 123:
      _StringGuts.grow(_:)(18);

      v3[0] = 0xD000000000000010;
      v3[1] = 0x80000001000F2060;
      break;
    case 124:
      _StringGuts.grow(_:)(23);

      v3[0] = 0xD000000000000015;
      v3[1] = 0x80000001000F2040;
      break;
    case 125:
      _StringGuts.grow(_:)(30);

      v3[0] = 0xD00000000000001CLL;
      v3[1] = 0x80000001000F2020;
      break;
    case 126:
      _StringGuts.grow(_:)(24);

      v3[0] = 0xD000000000000016;
      v3[1] = 0x80000001000F2000;
      break;
    case 127:
      _StringGuts.grow(_:)(24);

      v3[0] = 0xD000000000000016;
      v3[1] = 0x80000001000F1FE0;
      break;
    case 128:
      _StringGuts.grow(_:)(28);

      v3[0] = 0xD00000000000001ALL;
      v3[1] = 0x80000001000F1FC0;
      break;
    case 129:
      _StringGuts.grow(_:)(21);

      v3[0] = 0xD000000000000013;
      v3[1] = 0x80000001000F1FA0;
      break;
    default:
      strcpy(v3, "UnknownType ");
      BYTE5(v3[1]) = 0;
      HIWORD(v3[1]) = -5120;
      break;
  }

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3[0];
}

uint64_t sub_1000C5D18(uint64_t a1)
{
  v32[3] = &type metadata for DeviceSharing;
  v32[4] = sub_1000C65A0();
  v2 = isFeatureEnabled(_:)();
  sub_10005D588(v32);
  if (v2)
  {
    if (qword_10012B3B0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100066000(v3, qword_10012B3B8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "DeviceSharing/BYOE is enabled", v6, 2u);
    }

    v7 = a1 - 100;
    v8 = 0xE700000000000000;
    v9 = 0xE700000000000000;
    v10 = 0x322E52656E6F5ALL;
    if (a1 == 121)
    {
      v11 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
    }

    if (a1 != 121)
    {
      v9 = 0;
    }

    if (((1 << (a1 - 100)) & 0x3A000005) != 0)
    {
      v12 = 0x312E52656E6F5ALL;
    }

    else
    {
      v12 = v10;
    }

    if (((1 << (a1 - 100)) & 0x3A000005) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    if (((1 << (a1 - 100)) & 0x3A000005) == 0)
    {
      v8 = v9;
    }

    if (v7 <= 0x1D)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v7 <= 0x1D)
    {
      v15 = v13;
    }

    else
    {
      v15 = 1;
    }

    if (v7 <= 0x1D)
    {
      v16 = v8;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (qword_10012B3B0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100066000(v17, qword_10012B3B8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "DeviceSharing/BYOE is NOT enabled", v20, 2u);
    }

    v14 = 0;
    v16 = 0;
    v15 = 1;
  }

  if (qword_10012B3B0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100066000(v21, qword_10012B3B8);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v24 = 136315394;
    v25 = MASDAssetType.description.getter(a1);
    v27 = sub_100065658(v25, v26, v32);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    if (v15)
    {
      v28 = 7104878;
    }

    else
    {
      v28 = v14;
    }

    if (v15)
    {
      v29 = 0xE300000000000000;
    }

    else
    {
      v29 = v16;
    }

    v30 = sub_100065658(v28, v29, v32);

    *(v24 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "AssetType=%s zoneName=%s.", v24, 0x16u);
    swift_arrayDestroy();
  }

  return v14;
}

CKRecordZoneID sub_1000C60E0(uint64_t a1)
{
  v1 = sub_1000C5D18(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  sub_1000C65F4();
  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5._object = v6;
  v7._countAndFlagsBits = v3;
  v7._object = v4;
  return CKRecordZoneID.init(zoneName:ownerName:)(v7, v5);
}

uint64_t sub_1000C61A8(uint64_t a1, void *a2)
{
  if (a1 == 121)
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    return 0;
  }
}

void *sub_1000C61DC(uint64_t a1)
{
  if (a1 != 121)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005F5CC(&unk_100129340, &unk_1000E8020);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000E7B30;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 72) = v4;
  *(v1 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 88) = v5;
  *(v1 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 104) = v6;
  *(v1 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 120) = v7;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  result = v1;
  *(v1 + 128) = v8;
  *(v1 + 136) = v10;
  return result;
}

Swift::Int sub_1000C62D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C6348(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL CKRecordZoneID.validForPlatform.getter()
{
  v1 = [v0 zoneName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = 0x2E52656E6F5ALL;
  v5._object = 0xE600000000000000;
  if (String.hasPrefix(_:)(v5) || (v6._countAndFlagsBits = 0x2E322E45656E6F5ALL, v6._object = 0xE800000000000000, String.hasPrefix(_:)(v6)))
  {
    v7 = 1;
  }

  else
  {
    v8._countAndFlagsBits = 0x2E55656E6F5ALL;
    v8._object = 0xE600000000000000;
    v7 = String.hasPrefix(_:)(v8);
  }

  if (qword_10012B3B0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100066000(v9, qword_10012B3B8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315394;
    v14 = sub_100065658(v2, v4, &v16);

    *(v12 + 4) = v14;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v10, v11, "On iOS device, zoneName=%s allowed=%{BOOL}d.", v12, 0x12u);
    sub_10005D588(v13);
  }

  else
  {
  }

  return v7;
}

unint64_t sub_1000C65A0()
{
  result = qword_100128FE0;
  if (!qword_100128FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128FE0);
  }

  return result;
}

unint64_t sub_1000C65F4()
{
  result = qword_1001284B8;
  if (!qword_1001284B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001284B8);
  }

  return result;
}

unint64_t sub_1000C6644()
{
  result = qword_100128FE8;
  if (!qword_100128FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128FE8);
  }

  return result;
}

unint64_t sub_1000C669C()
{
  result = qword_100128E58;
  if (!qword_100128E58)
  {
    type metadata accessor for MASDAssetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100128E58);
  }

  return result;
}

uint64_t sub_1000C6704()
{
  v0 = type metadata accessor for Logger();
  sub_1000671BC(v0, qword_10012B758);
  sub_100066000(v0, qword_10012B758);
  type metadata accessor for MALogger();
  return sub_10005F6F0(0xD000000000000015, 0x80000001000F2340);
}

uint64_t sub_1000C6784(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v12 = type metadata accessor for String.Encoding();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v43[0] = a1;
  v43[1] = a2;

  v16._countAndFlagsBits = 124;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = a3;
  v17._object = a4;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 124;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = a5;
  v19._object = a6;
  String.append(_:)(v19);
  static String.Encoding.utf8.getter();
  v20 = String.data(using:allowLossyConversion:)();
  v22 = v21;

  (*(v13 + 8))(v15, v12);
  if (v22 >> 60 == 15)
  {
    nullsub_1();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_100092A98();
    swift_allocError();
    *v29 = v24;
    *(v29 + 8) = v26;
    *(v29 + 16) = v28;
    swift_willThrow();
  }

  else
  {
    v30 = static MADigest.hash(data:hashType:)(v20, v22, 0);
    v32 = v31;
    v12 = sub_10005FFFC(v30, v31);
    v34 = v33;
    sub_10005F358(v30, v32);
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100066000(v35, qword_10012B758);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v41 = v12;
      v39 = v38;
      v43[0] = swift_slowAlloc();
      *v39 = 136315394;
      *(v39 + 4) = sub_100065658(v41, v34, v43);
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_100065658(v42, a2, v43);
      _os_log_impl(&_mh_execute_header, v36, v37, "Calculated recordName: %s for recordHandle: %s", v39, 0x16u);
      swift_arrayDestroy();

      v12 = v41;
    }

    sub_10005F69C(v20, v22);
  }

  return v12;
}

uint64_t sub_1000C6AF0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_1000C6B44(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1000C6BAC()
{
  if (v0[98])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[97])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v0[96] | v1;
}

uint64_t sub_1000C6BDC(uint64_t result)
{
  v1[96] = result;
  v1[97] = BYTE1(result) & 1;
  v1[98] = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1000C6C24()
{
  v1 = *(v0 + 112);
  sub_100093FE8(v1, *(v0 + 120));
  return v1;
}

uint64_t sub_1000C6C58(uint64_t a1, uint64_t a2)
{
  result = sub_10005F69C(*(v2 + 112), *(v2 + 120));
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_1000C6CC8(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t type metadata accessor for MACloudKVSRecord(uint64_t a1)
{
  result = qword_10012B970;
  if (!qword_10012B970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C6D8C(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudKVSRecord(0) + 60);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_1000C6E18()
{
  v1 = *(v0 + *(type metadata accessor for MACloudKVSRecord(0) + 64));

  return v1;
}

uint64_t sub_1000C6E58(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MACloudKVSRecord(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1000C6F30(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudKVSRecord(0) + 68);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_1000C7004(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudKVSRecord(0) + 72);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_1000C70D8(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudKVSRecord(0) + 76);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_1000C71AC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MACloudKVSRecord(0) + 80);

  return sub_1000941F8(a1, v3);
}

uint64_t sub_1000C7238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 112) = xmmword_1000E6BC0;
  v28 = type metadata accessor for MACloudKVSRecord(0);
  v29 = v28[15];
  v30 = type metadata accessor for Date();
  v31 = *(*(v30 - 8) + 56);
  v46 = v29;
  v31(a9 + v29, 1, 1, v30);
  v45 = v28[17];
  v31(a9 + v45, 1, 1, v30);
  v44 = v28[18];
  v31(a9 + v44, 1, 1, v30);
  v43 = v28[19];
  v31(a9 + v43, 1, 1, v30);
  v42 = v28[20];
  v31(a9 + v42, 1, 1, v30);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  if (a7)
  {
    v32 = HIBYTE(a7) & 0xF;
    if ((a7 & 0x2000000000000000) == 0)
    {
      v32 = a6 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      *(a9 + 40) = a6;
      *(a9 + 48) = a7;
    }

    else
    {
    }
  }

  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 97) = a15 & 1;
  *(a9 + 98) = a16 & 1;
  v33 = *(a9 + 112);
  v34 = *(a9 + 120);
  *(a9 + 104) = a17;
  *(a9 + 112) = a18;
  *(a9 + 120) = a19;
  sub_100093FE8(a18, a19);
  sub_10005F69C(v33, v34);
  if (a19 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v38 = a19 >> 62;
  if ((a19 >> 62) > 1)
  {
    if (v38 != 2)
    {
      sub_10005F69C(a18, a19);
LABEL_8:
      v35 = 0;
      goto LABEL_9;
    }

    v40 = *(a18 + 16);
    v39 = *(a18 + 24);
    sub_10005F69C(a18, a19);
    v35 = v39 - v40;
    if (!__OFSUB__(v39, v40))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v38)
  {
    sub_10005F69C(a18, a19);
    v35 = BYTE6(a19);
    goto LABEL_9;
  }

  result = sub_10005F69C(a18, a19);
  LODWORD(v35) = HIDWORD(a18) - a18;
  if (__OFSUB__(HIDWORD(a18), a18))
  {
    __break(1u);
    return result;
  }

  v35 = v35;
LABEL_9:
  v36 = (a9 + v28[16]);
  *(a9 + 128) = v35;
  *(a9 + 136) = a19 >> 60 == 15;
  sub_1000941F8(a20, a9 + v46);
  *v36 = a21;
  v36[1] = a22;
  sub_1000941F8(a23, a9 + v45);
  sub_1000941F8(a24, a9 + v44);
  sub_1000941F8(a25, a9 + v43);

  return sub_1000941F8(a26, a9 + v42);
}

BOOL sub_1000C7594(void *a1)
{
  v2 = v1[4];
  if (v2 != a1[4])
  {
    return 0;
  }

  v4 = v1[7] == a1[7] && v1[8] == a1[8];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v1[9] != a1[9] || v1[10] != a1[10]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v1[11] != a1[11] || v1[13] != a1[13])
  {
    return 0;
  }

  v6 = v1[14];
  v5 = v1[15];
  v8 = a1[14];
  v7 = a1[15];
  if (v5 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      sub_100093FE8(v1[14], v1[15]);
      sub_100093FE8(v8, v7);
      v10 = sub_1000AF4B8(v6, v5, v8, v7);
      sub_10005F69C(v8, v7);
      sub_10005F69C(v6, v5);
      if (v10)
      {
        return 1;
      }

      v11 = objc_opt_self();
      sub_100093FE8(v6, v5);
      sub_100093FE8(v8, v7);
      isa = Data._bridgeToObjectiveC()().super.isa;
      *&v57 = 0;
      v13 = [v11 propertyListWithData:isa options:0 format:0 error:&v57];

      if (!v13)
      {
        v34 = v57;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_10005F69C(v6, v5);
        sub_10005F69C(v8, v7);

        return 0;
      }

      v14 = v57;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
      if (swift_dynamicCast())
      {
        v15 = Data._bridgeToObjectiveC()().super.isa;
        *&v57 = 0;
        v16 = [v11 propertyListWithData:v15 options:0 format:0 error:&v57];

        if (v16)
        {
          v17 = v56;
          v18 = v57;
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          if (swift_dynamicCast())
          {
            v19 = v56;
            v20 = sub_1000C61DC(v2);
            v21 = v20[2];
            v55 = v8;
            if (v21)
            {
              v22 = v20 + 5;
              do
              {
                v23 = v19;
                v25 = *(v22 - 1);
                v24 = *v22;

                v26 = v17;
                v27 = sub_100065A98(v25, v24);
                if (v28)
                {
                  v29 = v27;
                  if (!swift_isUniquelyReferenced_nonNull_native())
                  {
                    sub_1000AF25C();
                  }

                  sub_1000AF7F4((*(v26 + 56) + 32 * v29), &v57);
                  v30 = v29;
                  v17 = v26;
                  sub_1000AEB84(v30, v26);
                }

                else
                {
                  v57 = 0u;
                  v58 = 0u;
                }

                sub_100066C80(&v57, &unk_100128830, &qword_1000E7D40);
                v19 = v23;
                v31 = sub_100065A98(v25, v24);
                v33 = v32;

                if (v33)
                {
                  if (!swift_isUniquelyReferenced_nonNull_native())
                  {
                    sub_1000AF25C();
                  }

                  sub_1000AF7F4((*(v19 + 56) + 32 * v31), &v57);
                  sub_1000AEB84(v31, v19);
                }

                else
                {
                  v57 = 0u;
                  v58 = 0u;
                }

                sub_100066C80(&v57, &unk_100128830, &qword_1000E7D40);
                v22 += 2;
                --v21;
              }

              while (v21);
            }

            if (qword_10012B750 != -1)
            {
              swift_once();
            }

            v36 = type metadata accessor for Logger();
            sub_100066000(v36, qword_10012B758);
            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v37, v38))
            {
              v54 = v38;
              v39 = swift_slowAlloc();
              *&v57 = swift_slowAlloc();
              *v39 = 136315394;

              v40 = Dictionary.description.getter();
              v42 = v41;

              v43 = sub_100065658(v40, v42, &v57);

              *(v39 + 4) = v43;
              *(v39 + 12) = 2080;

              v44 = Dictionary.description.getter();
              v46 = v45;

              v47 = sub_100065658(v44, v46, &v57);

              *(v39 + 14) = v47;
              _os_log_impl(&_mh_execute_header, v37, v54, "After removing ignored columns rowDecoded %s\n otherRowDecoded %s", v39, 0x16u);
              swift_arrayDestroy();
            }

            sub_1000C7D9C(v48);

            v49 = objc_allocWithZone(NSDictionary);
            v50 = Dictionary._bridgeToObjectiveC()().super.isa;

            v51 = [v49 initWithDictionary:v50];

            sub_1000C7D9C(v52);

            v53 = Dictionary._bridgeToObjectiveC()().super.isa;

            LOBYTE(v49) = [v51 isEqualToDictionary:v53];
            sub_10005F69C(v6, v5);
            sub_10005F69C(v55, v7);

            return (v49 & 1) != 0;
          }

          sub_10005F69C(v6, v5);
          sub_10005F69C(v8, v7);
        }

        else
        {
          v35 = v57;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_10005F69C(v6, v5);
          sub_10005F69C(v8, v7);
        }

        return 0;
      }

LABEL_17:
      sub_10005F69C(v6, v5);
      sub_10005F69C(v8, v7);
      return 0;
    }

LABEL_16:
    sub_100093FE8(v1[14], v1[15]);
    sub_100093FE8(v8, v7);
    goto LABEL_17;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_16;
  }

  sub_100093FE8(v1[14], v1[15]);
  sub_100093FE8(v8, v7);
  sub_10005F69C(v6, v5);
  return 1;
}

uint64_t sub_1000C7D9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10005F5CC(&qword_100128C40, &qword_1000E7380);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100066130(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000AF7F4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000AF7F4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000AF7F4(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000AF7F4(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000C8064()
{
  v1 = v0;
  v2 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v3 = __chkstk_darwin(v2 - 8);
  v73 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v72 = &v71 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v71 - v8;
  __chkstk_darwin(v7);
  v11 = &v71 - v10;
  v75 = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(171);
  v12._countAndFlagsBits = 0x614E64726F636572;
  v12._object = 0xEB000000003A656DLL;
  String.append(_:)(v12);
  String.append(_:)(*v0);
  v13._countAndFlagsBits = 0x4164726F63657220;
  v13._object = 0xEF3A746E756F6363;
  String.append(_:)(v13);
  v14 = *(v0 + 48);
  if (v14)
  {
    v15 = *(v0 + 40);
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = *(v0 + 48);
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = *(v0 + 97);
  v20 = *(v0 + 98);
  LOBYTE(v74) = *(v0 + 96);
  BYTE1(v74) = v19;
  BYTE2(v74) = v20;
  _print_unlocked<A, B>(_:_:)();
  v21._countAndFlagsBits = 0x4864726F63657220;
  v21._object = 0xEE003A656C646E61;
  String.append(_:)(v21);
  v22 = *(v0 + 24);
  if (v22)
  {
    v23 = *(v0 + 16);
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = *(v0 + 24);
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v25._countAndFlagsBits = v23;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x6E6F697372657620;
  v26._object = 0xE90000000000003ALL;
  String.append(_:)(v26);
  v74 = *(v0 + 104);
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0xD000000000000011;
  v28._object = 0x80000001000F2280;
  String.append(_:)(v28);
  v29 = type metadata accessor for MACloudKVSRecord(0);
  sub_1000939A8(v0 + v29[15], v11, &qword_1001287D0, &qword_1000E6C30);
  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  if (v32(v11, 1, v30) == 1)
  {
    sub_100066C80(v11, &qword_1001287D0, &qword_1000E6C30);
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  else
  {
    v35 = Date.description.getter();
    v34 = v36;
    (*(v31 + 8))(v11, v30);
    v33 = v35;
  }

  v37 = v34;
  String.append(_:)(*&v33);

  v38._countAndFlagsBits = 0x7A69536174616420;
  v38._object = 0xEA00000000003A65;
  String.append(_:)(v38);
  v39 = *(v1 + 128);
  if (*(v1 + 136))
  {
    v39 = 0;
  }

  v74 = v39;
  v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v40);

  v41._countAndFlagsBits = 0x3A6570797420;
  v41._object = 0xE600000000000000;
  String.append(_:)(v41);
  v74 = *(v1 + 32);
  type metadata accessor for MASDAssetType(0);
  sub_1000DB5B4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
  v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v42);

  v43._countAndFlagsBits = 0x656C69666F727020;
  v43._object = 0xED00003A65707954;
  String.append(_:)(v43);
  v74 = *(v1 + 88);
  type metadata accessor for MASDProfileType(0);
  _print_unlocked<A, B>(_:_:)();
  v44._countAndFlagsBits = 0x3A6761544520;
  v44._object = 0xE600000000000000;
  String.append(_:)(v44);
  v45 = (v1 + v29[16]);
  v46 = v45[1];
  if (v46)
  {
    v47 = *v45;
  }

  else
  {
    v47 = 0;
  }

  if (v46)
  {
    v48 = v45[1];
  }

  else
  {
    v48 = 0xE000000000000000;
  }

  v49._countAndFlagsBits = v47;
  v49._object = v48;
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0x74616572436B6320;
  v50._object = 0xEF3A657461446465;
  String.append(_:)(v50);
  sub_1000939A8(v1 + v29[17], v9, &qword_1001287D0, &qword_1000E6C30);
  if (v32(v9, 1, v30) == 1)
  {
    sub_100066C80(v9, &qword_1001287D0, &qword_1000E6C30);
    v51 = 0;
    v52 = 0xE000000000000000;
  }

  else
  {
    v53 = Date.description.getter();
    v52 = v54;
    (*(v31 + 8))(v9, v30);
    v51 = v53;
  }

  v55 = v52;
  String.append(_:)(*&v51);

  v56._object = 0x80000001000F10E0;
  v56._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v56);
  v57 = v72;
  sub_1000939A8(v1 + v29[18], v72, &qword_1001287D0, &qword_1000E6C30);
  if (v32(v57, 1, v30) == 1)
  {
    sub_100066C80(v57, &qword_1001287D0, &qword_1000E6C30);
    v58 = 0;
    v59 = 0xE000000000000000;
  }

  else
  {
    v60 = Date.description.getter();
    v59 = v61;
    (*(v31 + 8))(v57, v30);
    v58 = v60;
  }

  v62 = v59;
  String.append(_:)(*&v58);

  v63._countAndFlagsBits = 0x44636E79536B6320;
  v63._object = 0xEC0000003A657461;
  String.append(_:)(v63);
  v64 = v73;
  sub_1000939A8(v1 + v29[19], v73, &qword_1001287D0, &qword_1000E6C30);
  if (v32(v64, 1, v30) == 1)
  {
    sub_100066C80(v64, &qword_1001287D0, &qword_1000E6C30);
    v65 = 0;
    v66 = 0xE000000000000000;
  }

  else
  {
    v67 = Date.description.getter();
    v66 = v68;
    (*(v31 + 8))(v64, v30);
    v65 = v67;
  }

  v69 = v66;
  String.append(_:)(*&v65);

  return v75;
}

uint64_t sub_1000C87C4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

uint64_t sub_1000C87FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 64));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void sub_1000C88CC(void *a1)
{
  v3 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 encryptedValues];
  swift_getObjectType();
  v10 = v1[4];
  v32 = &type metadata for UInt;
  v33 = &protocol witness table for UInt;
  v30 = v10;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v11 = [a1 encryptedValues];
  swift_getObjectType();
  v13 = v1[7];
  v12 = v1[8];
  v32 = &type metadata for String;
  v33 = &protocol witness table for String;
  v30 = v13;
  v31 = v12;

  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v14 = [a1 encryptedValues];
  swift_getObjectType();
  v16 = v1[9];
  v15 = v1[10];
  v32 = &type metadata for String;
  v33 = &protocol witness table for String;
  v30 = v16;
  v31 = v15;

  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v17 = [a1 encryptedValues];
  swift_getObjectType();
  v18 = sub_1000BF320(v1[11]);
  v33 = &protocol witness table for UInt;
  v32 = &type metadata for UInt;
  v30 = v18;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v19 = [a1 encryptedValues];
  swift_getObjectType();
  v20 = v1[13];
  v32 = &type metadata for Int;
  v33 = &protocol witness table for Int;
  v30 = v20;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v21 = v1[15];
  if (v21 >> 60 != 15)
  {
    v22 = v1[14];
    sub_10005F304(v22, v1[15]);
    v23 = [a1 encryptedValues];
    swift_getObjectType();
    v32 = &type metadata for Data;
    v33 = &protocol witness table for Data;
    v30 = v22;
    v31 = v21;
    sub_10005F304(v22, v21);
    CKRecordKeyValueSetting.subscript.setter();
    sub_10005F69C(v22, v21);
    swift_unknownObjectRelease();
  }

  v24 = type metadata accessor for MACloudKVSRecord(0);
  sub_1000939A8(v1 + *(v24 + 60), v5, &qword_1001287D0, &qword_1000E6C30);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100066C80(v5, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v25 = v29;
    (*(v7 + 32))(v29, v5, v6);
    v26 = [a1 encryptedValues];
    swift_getObjectType();
    v32 = v6;
    v33 = &protocol witness table for Date;
    v27 = sub_10005D4D0(&v30);
    (*(v7 + 16))(v27, v25, v6);
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v25, v6);
  }

  if (*(v1 + *(v24 + 64) + 8))
  {
    v28 = String._bridgeToObjectiveC()();
    [a1 setEtag:v28];
  }
}

uint64_t sub_1000C8DE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v107 = a4;
  v109 = a3;
  v91 = a2;
  v7 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v8 = __chkstk_darwin(v7 - 8);
  v114 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v113 = &v91 - v11;
  v12 = __chkstk_darwin(v10);
  v112 = &v91 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v91 - v15;
  __chkstk_darwin(v14);
  v110 = &v91 - v17;
  v18 = [a1 recordID];
  v19 = [v18 recordName];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v21;
  v106 = v20;

  v22 = [a1 encryptedValues];
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 objectForKeyedSubscript:v23];
  swift_unknownObjectRelease();

  v25 = 0xF000000000000000;
  if (v24)
  {
    v117 = v24;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v26 = swift_dynamicCast();
    v27 = v115;
    if (!v26)
    {
      v27 = 0;
    }

    v104 = v27;
    if (v26)
    {
      v25 = v116;
    }

    v108 = v25;
  }

  else
  {
    v108 = 0xF000000000000000;
    v104 = 0;
  }

  v28 = [a1 encryptedValues];
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 objectForKeyedSubscript:v29];
  swift_unknownObjectRelease();

  if (v30 && (v115 = v30, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), swift_dynamicCast()))
  {
    v103 = v117;
  }

  else
  {
    v103 = 0;
  }

  v31 = [a1 encryptedValues];
  v32 = String._bridgeToObjectiveC()();
  v33 = [v31 objectForKeyedSubscript:v32];
  swift_unknownObjectRelease();

  if (v33 && (v117 = v33, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), (swift_dynamicCast() & 1) != 0))
  {
    v34 = v116;
    v102 = v115;
  }

  else
  {
    v102 = 0;
    v34 = 0xE000000000000000;
  }

  v101 = v34;
  v35 = [a1 encryptedValues];
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 objectForKeyedSubscript:v36];
  swift_unknownObjectRelease();

  if (v37 && (v117 = v37, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), (swift_dynamicCast() & 1) != 0))
  {
    v38 = v116;
    v100 = v115;
  }

  else
  {
    v100 = 0;
    v38 = 0xE000000000000000;
  }

  v99 = v38;
  v39 = [a1 encryptedValues];
  v40 = String._bridgeToObjectiveC()();
  v41 = [v39 objectForKeyedSubscript:v40];
  swift_unknownObjectRelease();

  v42 = v112;
  v111 = v16;
  if (v41 && (v115 = v41, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), swift_dynamicCast()))
  {
    v43 = v117;
  }

  else
  {
    v43 = sub_1000BF320(-2);
  }

  v98 = sub_1000BF304(v43);
  v97 = sub_1000C182C(3u, 1, 0);
  v44 = [a1 encryptedValues];
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 objectForKeyedSubscript:v45];
  swift_unknownObjectRelease();

  if (v46 && (v115 = v46, sub_10005F5CC(&unk_100129050, &qword_1000E6C60), swift_dynamicCast()))
  {
    v96 = v117;
  }

  else
  {
    v96 = 0;
  }

  v47 = [a1 encryptedValues];
  v48 = String._bridgeToObjectiveC()();
  v49 = [v47 objectForKeyedSubscript:v48];
  swift_unknownObjectRelease();

  if (v49)
  {
    v115 = v49;
    sub_10005F5CC(&unk_100129050, &qword_1000E6C60);
    v50 = type metadata accessor for Date();
    v51 = v110;
    v52 = swift_dynamicCast();
    (*(*(v50 - 8) + 56))(v51, v52 ^ 1u, 1, v50);
  }

  else
  {
    v53 = type metadata accessor for Date();
    (*(*(v53 - 8) + 56))(v110, 1, 1, v53);
  }

  v54 = v111;
  v55 = [a1 etag];
  if (v55)
  {
    v56 = v55;
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v57;
  }

  else
  {
    v95 = 0;
    v94 = 0;
  }

  v58 = [a1 creationDate];
  if (v58)
  {
    v59 = v58;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = type metadata accessor for Date();
  v62 = *(*(v61 - 8) + 56);
  v63 = 1;
  v62(v54, v60, 1, v61);
  v64 = [a1 modificationDate];
  if (v64)
  {
    v65 = v64;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = 0;
  }

  v62(v42, v63, 1, v61);
  v66 = v113;
  Date.init()();

  v62(v66, 0, 1, v61);
  v62(v114, 1, 1, v61);
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 112) = xmmword_1000E6BC0;
  v67 = type metadata accessor for MACloudKVSRecord(0);
  v107 = v67[15];
  v62(v107 + a5, 1, 1, v61);
  v93 = v67[17];
  v62(a5 + v93, 1, 1, v61);
  v92 = v67[18];
  v62(a5 + v92, 1, 1, v61);
  v68 = v67[19];
  v62(a5 + v68, 1, 1, v61);
  v69 = v67[20];
  v62(a5 + v69, 1, 1, v61);
  v70 = v105;
  *a5 = v106;
  *(a5 + 8) = v70;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v71 = v104;
  *(a5 + 32) = v103;
  v72 = v109;
  if (v109)
  {
    v73 = HIBYTE(v109) & 0xF;
    if ((v109 & 0x2000000000000000) == 0)
    {
      v73 = v91 & 0xFFFFFFFFFFFFLL;
    }

    if (v73)
    {
      *(a5 + 40) = v91;
      *(a5 + 48) = v72;
    }

    else
    {
    }
  }

  v74 = v101;
  *(a5 + 56) = v102;
  *(a5 + 64) = v74;
  v75 = v99;
  *(a5 + 72) = v100;
  *(a5 + 80) = v75;
  *(a5 + 88) = v98;
  v76 = v97;
  *(a5 + 96) = v97;
  *(a5 + 97) = BYTE1(v76) & 1;
  *(a5 + 98) = BYTE2(v76) & 1;
  v77 = *(a5 + 112);
  v78 = *(a5 + 120);
  *(a5 + 104) = v96;
  *(a5 + 112) = v71;
  v79 = v108;
  *(a5 + 120) = v108;
  sub_100093FE8(v71, v79);
  v80 = v78;
  v81 = v79;
  sub_10005F69C(v77, v80);
  v82 = v79 >> 60;
  if (v82 > 0xE)
  {
    goto LABEL_46;
  }

  v88 = v81 >> 62;
  if ((v81 >> 62) > 1)
  {
    if (v88 != 2)
    {
      sub_10005F69C(v71, v81);
LABEL_46:
      v83 = 0;
LABEL_47:
      v84 = v82 > 0xE;
      v85 = (a5 + v67[16]);
      *(a5 + 128) = v83;
      *(a5 + 136) = v84;
      sub_1000941F8(v110, v107 + a5);
      v86 = v94;
      *v85 = v95;
      v85[1] = v86;
      sub_1000941F8(v111, a5 + v93);
      sub_1000941F8(v112, a5 + v92);
      sub_1000941F8(v113, a5 + v68);
      return sub_1000941F8(v114, a5 + v69);
    }

    v89 = v81;
    v81 = *(v71 + 16);
    v90 = *(v71 + 24);
    sub_10005F69C(v71, v89);
    v83 = v90 - v81;
    if (!__OFSUB__(v90, v81))
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  else if (!v88)
  {
    sub_10005F69C(v71, v81);
    v83 = BYTE6(v81);
    goto LABEL_47;
  }

  result = sub_10005F69C(v71, v81);
  LODWORD(v83) = HIDWORD(v71) - v71;
  if (!__OFSUB__(HIDWORD(v71), v71))
  {
    v83 = v83;
    goto LABEL_47;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C98D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v113 = a8;
  v114 = a9;
  v115 = a3;
  v116 = a6;
  v16 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v17 = __chkstk_darwin(v16 - 8);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v21 = &v94 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v94 - v23;
  __chkstk_darwin(v22);
  v28 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v28 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

    sub_1000B9568();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_100092A98();
    swift_allocError();
    *v38 = v33;
    *(v38 + 8) = v35;
    *(v38 + 16) = v37;
    return swift_willThrow();
  }

  v111 = v26;
  v112 = v27;
  v110 = &v94 - v25;
  v29 = sub_1000C6784(a1, a2, a4, a5, v116, a7);
  if (v10)
  {
  }

  v101 = v29;
  v102 = a1;
  v103 = a4;
  v104 = v30;
  v105 = a2;
  v106 = a7;
  v108 = v21;
  v109 = a5;
  v107 = v24;

  sub_1000DAE54(v39, v115);

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = sub_100066000(v40, qword_10012B758);

  v100 = v41;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  v44 = os_log_type_enabled(v42, v43);
  v45 = v114;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v46 = 136315394;
    v47 = Dictionary.description.getter();
    LODWORD(v99) = v43;
    v49 = sub_100065658(v47, v48, &v117);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2080;
    v50 = Dictionary.description.getter();
    v52 = sub_100065658(v50, v51, &v117);

    *(v46 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v42, v99, "Original data %s stripped to %s", v46, 0x16u);
    swift_arrayDestroy();
  }

  v53 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v117 = 0;
  v55 = [v53 dataWithPropertyList:isa format:200 options:0 error:&v117];

  v56 = v117;
  if (!v55)
  {
    v85 = v56;

    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  sub_10005F304(v57, v59);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();

  v99 = v59;
  v100 = v57;
  sub_10005F358(v57, v59);
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v117 = v98;
    *v62 = 136315394;
    v63 = Dictionary.description.getter();
    v65 = sub_100065658(v63, v64, &v117);

    *(v62 + 4) = v65;
    *(v62 + 12) = 2080;
    v66 = sub_10005FFFC(v100, v99);
    v68 = sub_100065658(v66, v67, &v117);

    *(v62 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v60, v61, "Serializing %s to Data: %s", v62, 0x16u);
    swift_arrayDestroy();
  }

  v69 = sub_1000C182C(0, 0, 0);
  v70 = v110;
  v71 = v115;
  sub_1000CA26C(a10, v115, v110);

  v72 = type metadata accessor for Date();
  v73 = *(*(v72 - 8) + 56);
  v73(v70, 0, 1, v72);
  v73(v107, 1, 1, v72);
  v73(v108, 1, 1, v72);
  v73(v112, 1, 1, v72);
  v73(v111, 1, 1, v72);
  *(v45 + 40) = 0;
  *(v45 + 48) = 0;
  *(v45 + 112) = xmmword_1000E6BC0;
  v74 = type metadata accessor for MACloudKVSRecord(0);
  v97 = v74[15];
  v73(v45 + v97, 1, 1, v72);
  v98 = v74[17];
  v73(v45 + v98, 1, 1, v72);
  v96 = v74[18];
  v73(v45 + v96, 1, 1, v72);
  v95 = v74[19];
  v73(v45 + v95, 1, 1, v72);
  v94 = v74[20];
  v73(v45 + v94, 1, 1, v72);
  v75 = v104;
  *v45 = v101;
  *(v45 + 8) = v75;
  v76 = v105;
  *(v45 + 16) = v102;
  *(v45 + 24) = v76;
  *(v45 + 32) = v71;
  v77 = v109;
  *(v45 + 56) = v103;
  *(v45 + 64) = v77;
  v78 = v106;
  *(v45 + 72) = v116;
  *(v45 + 80) = v78;
  *(v45 + 88) = v113;
  *(v45 + 96) = v69;
  *(v45 + 97) = BYTE1(v69) & 1;
  *(v45 + 98) = BYTE2(v69) & 1;
  v79 = *(v45 + 112);
  v80 = *(v45 + 120);
  v82 = v99;
  v81 = v100;
  *(v45 + 104) = 0;
  *(v45 + 112) = v81;
  *(v45 + 120) = v82;
  sub_10005F304(v81, v82);
  sub_10005F69C(v79, v80);
  v83 = v82 >> 62;
  if ((v82 >> 62) <= 1)
  {
    if (!v83)
    {
      sub_10005F358(v81, v82);
      v84 = BYTE6(v82);
LABEL_27:
      v91 = v111;
      v89 = v112;
      v90 = v107;
      v81 = v108;
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (v83 != 2)
  {
    sub_10005F358(v81, v82);
    v84 = 0;
    goto LABEL_27;
  }

  v87 = *(v81 + 16);
  v86 = *(v81 + 24);
  sub_10005F358(v81, v82);
  v88 = __OFSUB__(v86, v87);
  v84 = v86 - v87;
  v89 = v112;
  v90 = v107;
  v81 = v108;
  if (v88)
  {
    __break(1u);
LABEL_23:
    sub_10005F358(v81, v82);
    v88 = __OFSUB__(HIDWORD(v81), v81);
    LODWORD(v84) = HIDWORD(v81) - v81;
    v89 = v112;
    v90 = v107;
    v81 = v108;
    if (v88)
    {
      __break(1u);
    }

    v84 = v84;
  }

  v91 = v111;
LABEL_28:
  v92 = v110;
  v93 = (v45 + v74[16]);
  *(v45 + 128) = v84;
  *(v45 + 136) = 0;
  sub_1000941F8(v92, v45 + v97);
  *v93 = 0;
  v93[1] = 0;
  sub_1000941F8(v90, v45 + v98);
  sub_1000941F8(v81, v45 + v96);
  sub_1000941F8(v89, v45 + v95);
  return sub_1000941F8(v91, v45 + v94);
}

uint64_t sub_1000CA26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-v7];
  v9 = sub_1000C6190(a2);
  if (v10)
  {
    if (*(a1 + 16))
    {
      v11 = sub_100065A98(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_100066130(*(a1 + 56) + 32 * v11, v22);
        goto LABEL_10;
      }
    }

    else
    {
    }

    memset(v22, 0, sizeof(v22));
LABEL_10:
    sub_1000939A8(v22, v20, &unk_100128830, &qword_1000E7D40);
    if (v21)
    {
      v15 = type metadata accessor for Date();
      v16 = swift_dynamicCast();
      v17 = *(v15 - 8);
      (*(v17 + 56))(v8, v16 ^ 1u, 1, v15);
      if ((*(v17 + 48))(v8, 1, v15) != 1)
      {
        sub_100066C80(v22, &unk_100128830, &qword_1000E7D40);
        return (*(v17 + 32))(a3, v8, v15);
      }
    }

    else
    {
      sub_100066C80(v20, &unk_100128830, &qword_1000E7D40);
      v18 = type metadata accessor for Date();
      (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    }

    sub_100066C80(v8, &qword_1001287D0, &qword_1000E6C30);
    sub_1000939A8(v22, v20, &unk_100128830, &qword_1000E7D40);
    if (v21)
    {
      if (swift_dynamicCast())
      {
        Date.init(timeIntervalSinceReferenceDate:)();
        return sub_100066C80(v22, &unk_100128830, &qword_1000E7D40);
      }
    }

    else
    {
      sub_100066C80(v20, &unk_100128830, &qword_1000E7D40);
    }

    Date.init()();
    return sub_100066C80(v22, &unk_100128830, &qword_1000E7D40);
  }

  return Date.init()();
}

uint64_t sub_1000CA5D8()
{
  v0 = *sub_1000C54A8();

  return v0;
}

uint64_t sub_1000CA60C(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1000CA65C(a1, a2);
  return v4;
}

uint64_t sub_1000CA65C(void *a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v3 = sub_1000C54A8();
  v4 = *(v3 + 1);
  *(v2 + 136) = *v3;
  *(v2 + 144) = v4;
  type metadata accessor for MAKVStoreBase();
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 152) = 0;
  *(v2 + 176) = 0;
  sub_10005F5CC(&qword_100128820, &qword_1000E6C68);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000E7CF0;
  sub_10005F5CC(&qword_100128828, &unk_1000E6C70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000E6BE0;
  *(v6 + 32) = 0x614E64726F636572;
  *(v6 + 40) = 0xEA0000000000656DLL;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = 3;
  *(v6 + 120) = &type metadata for UInt;
  *(v6 + 88) = &type metadata for UInt;
  *(v6 + 96) = 1;
  *(v5 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000E6BE0;
  strcpy((v7 + 32), "recordAccount");
  *(v7 + 46) = -4864;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = 3;
  *(v7 + 120) = &type metadata for Int;
  *(v7 + 88) = &type metadata for UInt;
  *(v7 + 96) = 0;
  *(v5 + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000E6BE0;
  strcpy((v8 + 32), "recordHandle");
  *(v8 + 45) = 0;
  *(v8 + 46) = -5120;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = 3;
  *(v8 + 120) = &type metadata for Int;
  *(v8 + 88) = &type metadata for UInt;
  *(v8 + 96) = 0;
  *(v5 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000E6BE0;
  *(v9 + 32) = 0x74617453636E7973;
  *(v9 + 40) = 0xE900000000000065;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = 1;
  *(v9 + 120) = &type metadata for Int;
  *(v9 + 88) = &type metadata for UInt;
  *(v9 + 96) = 0;
  *(v5 + 56) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000E6BE0;
  *(v10 + 32) = 0x756F6C436D6F7266;
  *(v10 + 40) = 0xE900000000000064;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = 1;
  *(v10 + 120) = &type metadata for Int;
  *(v10 + 88) = &type metadata for UInt;
  *(v10 + 96) = 0;
  *(v5 + 64) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000E6BE0;
  *(v11 + 32) = 0x6B63416C61636F6CLL;
  *(v11 + 40) = 0xEA00000000006465;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = 1;
  *(v11 + 120) = &type metadata for Int;
  *(v11 + 88) = &type metadata for UInt;
  *(v11 + 96) = 0;
  *(v5 + 72) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000E6BE0;
  *(v12 + 32) = 1701869940;
  *(v12 + 40) = 0xE400000000000000;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = 1;
  *(v12 + 120) = &type metadata for Int;
  *(v12 + 88) = &type metadata for UInt;
  *(v12 + 96) = 0;
  *(v5 + 80) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000E6BE0;
  *(v13 + 32) = 0x6D614E65726F7473;
  *(v13 + 40) = 0xE900000000000065;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = 3;
  *(v13 + 120) = &type metadata for Int;
  *(v13 + 88) = &type metadata for UInt;
  *(v13 + 96) = 0;
  *(v5 + 88) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000E6BE0;
  *(v14 + 32) = 0x6F724765726F7473;
  *(v14 + 40) = 0xEA00000000007075;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = 3;
  *(v14 + 120) = &type metadata for Int;
  *(v14 + 88) = &type metadata for UInt;
  *(v14 + 96) = 0;
  *(v5 + 96) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000E6BE0;
  *(v15 + 32) = 0x54656C69666F7270;
  *(v15 + 40) = 0xEB00000000657079;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = 1;
  *(v15 + 120) = &type metadata for Int;
  *(v15 + 88) = &type metadata for UInt;
  *(v15 + 96) = 0;
  *(v5 + 104) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000E6BE0;
  *(v16 + 32) = 0x6E6F6973726576;
  *(v16 + 40) = 0xE700000000000000;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = 1;
  *(v16 + 120) = &type metadata for Int;
  *(v16 + 88) = &type metadata for UInt;
  *(v16 + 96) = 0;
  *(v5 + 112) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000E6BE0;
  strcpy((v17 + 32), "serializedRow");
  *(v17 + 46) = -4864;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = 4;
  *(v17 + 120) = &type metadata for Int;
  *(v17 + 88) = &type metadata for UInt;
  *(v17 + 96) = 0;
  *(v5 + 120) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000E6BE0;
  *(v18 + 32) = 0x657A695361746164;
  *(v18 + 40) = 0xE800000000000000;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = 1;
  *(v18 + 120) = &type metadata for Int;
  *(v18 + 88) = &type metadata for UInt;
  *(v18 + 96) = 0;
  *(v5 + 128) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000E6BE0;
  *(v19 + 32) = 0x616470557473616CLL;
  *(v19 + 40) = 0xEF656D6954646574;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = 2;
  *(v19 + 120) = &type metadata for Int;
  *(v19 + 88) = &type metadata for UInt;
  *(v19 + 96) = 0;
  *(v5 + 136) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000E6BE0;
  *(v20 + 32) = 0x676154456B63;
  *(v20 + 40) = 0xE600000000000000;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = 3;
  *(v20 + 120) = &type metadata for Int;
  *(v20 + 88) = &type metadata for UInt;
  *(v20 + 96) = 0;
  *(v5 + 144) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000E6BE0;
  strcpy((v21 + 32), "ckCreatedDate");
  *(v21 + 46) = -4864;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = 2;
  *(v21 + 120) = &type metadata for Int;
  *(v21 + 88) = &type metadata for UInt;
  *(v21 + 96) = 0;
  *(v5 + 152) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000E6BE0;
  strcpy((v22 + 32), "ckModifiedDate");
  *(v22 + 47) = -18;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = 2;
  *(v22 + 120) = &type metadata for Int;
  *(v22 + 88) = &type metadata for UInt;
  *(v22 + 96) = 0;
  *(v5 + 160) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000E6BE0;
  *(v23 + 32) = 0x6144636E79536B63;
  *(v23 + 40) = 0xEA00000000006574;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = 2;
  *(v23 + 120) = &type metadata for Int;
  *(v23 + 88) = &type metadata for UInt;
  *(v23 + 96) = 0;
  *(v5 + 168) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000E6BE0;
  *(v24 + 32) = 0xD000000000000010;
  *(v24 + 40) = 0x80000001000F1290;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = 2;
  *(v24 + 120) = &type metadata for Int;
  *(v24 + 88) = &type metadata for UInt;
  *(v24 + 96) = 0;
  *(v5 + 176) = v24;

  v25 = a1;
  v26 = sub_100061BEC();
  v27 = sub_1000C450C(0x4B414D64756F6C43, 0xEE0065726F745356, v5, v25, 0x614864726F636572, 0xEC000000656C646ELL, 0, 0, 1, v26 & 1);
  *(v2 + 112) = v25;
  *(v2 + 120) = a2;
  *(v2 + 128) = v27;
  return v2;
}

_OWORD *sub_1000CACE4(uint64_t *a1)
{
  v2 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v3 = __chkstk_darwin(v2 - 8);
  v113 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v112 = &v105 - v6;
  v7 = __chkstk_darwin(v5);
  v111 = &v105 - v8;
  v9 = __chkstk_darwin(v7);
  v110 = &v105 - v10;
  __chkstk_darwin(v9);
  v12 = &v105 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v108 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v107 = &v105 - v18;
  v19 = __chkstk_darwin(v17);
  v106 = &v105 - v20;
  v21 = __chkstk_darwin(v19);
  v105 = &v105 - v22;
  __chkstk_darwin(v21);
  v24 = &v105 - v23;
  v25 = sub_1000AF988(_swiftEmptyArrayStorage);
  v26 = *a1;
  v27 = a1[1];
  v117 = &type metadata for String;
  *&v116 = v26;
  *(&v116 + 1) = v27;
  sub_1000AF7F4(&v116, v115);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v114 = v25;
  sub_1000AEE80(v115, 0x614E64726F636572, 0xEA0000000000656DLL, isUniquelyReferenced_nonNull_native);
  v29 = v114;
  v30 = a1[4];
  v117 = &type metadata for UInt;
  *&v116 = v30;
  sub_1000AF7F4(&v116, v115);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v29;
  sub_1000AEE80(v115, 1701869940, 0xE400000000000000, v31);
  v32 = v114;
  v33 = a1[7];
  v34 = a1[8];
  v117 = &type metadata for String;
  *&v116 = v33;
  *(&v116 + 1) = v34;
  sub_1000AF7F4(&v116, v115);

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v32;
  sub_1000AEE80(v115, 0x6D614E65726F7473, 0xE900000000000065, v35);
  v36 = v114;
  v37 = a1[9];
  v38 = a1[10];
  v117 = &type metadata for String;
  *&v116 = v37;
  *(&v116 + 1) = v38;
  sub_1000AF7F4(&v116, v115);

  v39 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v36;
  sub_1000AEE80(v115, 0x6F724765726F7473, 0xEA00000000007075, v39);
  v40 = v114;
  v41 = sub_1000BF320(a1[11]);
  v117 = &type metadata for UInt;
  *&v116 = v41;
  sub_1000AF7F4(&v116, v115);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v40;
  sub_1000AEE80(v115, 0x54656C69666F7270, 0xEB00000000657079, v42);
  v43 = v114;
  v44 = a1[6];
  if (v44)
  {
    v45 = a1[5];
    v117 = &type metadata for String;
    *&v116 = v45;
    *(&v116 + 1) = v44;
    sub_1000AF7F4(&v116, v115);

    v46 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v43;
    sub_1000AEE80(v115, 0x634164726F636572, 0xED0000746E756F63, v46);
    v43 = v114;
  }

  v47 = a1[3];
  if (v47)
  {
    v48 = a1[2];
    v117 = &type metadata for String;
    *&v116 = v48;
    *(&v116 + 1) = v47;
    sub_1000AF7F4(&v116, v115);

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v43;
    sub_1000AEE80(v115, 0x614864726F636572, 0xEC000000656C646ELL, v49);
    v43 = v114;
  }

  v50 = sub_1000C1778(*(a1 + 96));
  v117 = &type metadata for Int;
  *&v116 = v50;
  sub_1000AF7F4(&v116, v115);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v43;
  sub_1000AEE80(v115, 0x74617453636E7973, 0xE900000000000065, v51);
  v52 = v114;
  v53 = *(a1 + 97);
  v117 = &type metadata for Int;
  *&v116 = v53;
  sub_1000AF7F4(&v116, v115);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v52;
  sub_1000AEE80(v115, 0x756F6C436D6F7266, 0xE900000000000064, v54);
  v55 = v114;
  v56 = *(a1 + 98);
  v117 = &type metadata for Int;
  *&v116 = v56;
  sub_1000AF7F4(&v116, v115);
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v55;
  sub_1000AEE80(v115, 0x6B63416C61636F6CLL, 0xEA00000000006465, v57);
  v58 = v114;
  v59 = a1[13];
  v117 = &type metadata for Int;
  *&v116 = v59;
  sub_1000AF7F4(&v116, v115);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v114 = v58;
  sub_1000AEE80(v115, 0x6E6F6973726576, 0xE700000000000000, v60);
  v61 = v114;
  v62 = a1[15];
  if (v62 >> 60 != 15)
  {
    v65 = a1[14];
    v117 = &type metadata for Data;
    *&v116 = v65;
    *(&v116 + 1) = v62;
    sub_1000AF7F4(&v116, v115);
    sub_10005F304(v65, v62);
    sub_10005F304(v65, v62);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v61;
    result = sub_1000AEE80(v115, 0x7A696C6169726573, 0xED0000776F526465, v66);
    v68 = v114;
    v69 = v62 >> 62;
    if ((v62 >> 62) > 1)
    {
      if (v69 != 2)
      {
        v70 = 0;
        goto LABEL_18;
      }

      v72 = *(v65 + 16);
      v71 = *(v65 + 24);
      v73 = __OFSUB__(v71, v72);
      v70 = v71 - v72;
      if (!v73)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v69)
    {
      v70 = BYTE6(v62);
LABEL_18:
      v117 = &type metadata for Int;
      *&v116 = v70;
      sub_1000AF7F4(&v116, v115);
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v68;
      sub_1000AEE80(v115, 0x657A695361746164, 0xE800000000000000, v74);
      sub_10005F69C(v65, v62);
      goto LABEL_19;
    }

    LODWORD(v70) = HIDWORD(v65) - v65;
    if (__OFSUB__(HIDWORD(v65), v65))
    {
      __break(1u);
      return result;
    }

    v70 = v70;
    goto LABEL_18;
  }

  if ((a1[17] & 1) == 0)
  {
    v63 = a1[16];
    v117 = &type metadata for Int;
    *&v116 = v63;
    sub_1000AF7F4(&v116, v115);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v61;
    sub_1000AEE80(v115, 0x657A695361746164, 0xE800000000000000, v64);
LABEL_19:
    v61 = v114;
  }

  v75 = type metadata accessor for MACloudKVSRecord(0);
  sub_1000939A8(a1 + v75[15], v12, &qword_1001287D0, &qword_1000E6C30);
  v109 = *(v14 + 48);
  if (v109(v12, 1, v13) == 1)
  {
    v76 = v13;
    sub_100066C80(v12, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    (*(v14 + 32))(v24, v12, v13);
    Date.timeIntervalSinceReferenceDate.getter();
    v117 = &type metadata for Double;
    *&v116 = v77;
    sub_1000AF7F4(&v116, v115);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v61;
    sub_1000AEE80(v115, 0x616470557473616CLL, 0xEF656D6954646574, v78);
    v79 = v24;
    v76 = v13;
    (*(v14 + 8))(v79, v13);
    v61 = v114;
  }

  v80 = v14;
  v81 = (a1 + v75[16]);
  v82 = v81[1];
  if (v82)
  {
    v83 = *v81;
    v117 = &type metadata for String;
    *&v116 = v83;
    *(&v116 + 1) = v82;
    sub_1000AF7F4(&v116, v115);

    v84 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v61;
    sub_1000AEE80(v115, 0x676154456B63, 0xE600000000000000, v84);
    v61 = v114;
  }

  v85 = v110;
  sub_1000939A8(a1 + v75[17], v110, &qword_1001287D0, &qword_1000E6C30);
  v86 = v76;
  v87 = v76;
  v88 = v109;
  if (v109(v85, 1, v87) == 1)
  {
    sub_100066C80(v85, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v89 = *(v14 + 32);
    v90 = v105;
    v89(v105, v85, v86);
    Date.timeIntervalSinceReferenceDate.getter();
    v117 = &type metadata for Double;
    *&v116 = v91;
    sub_1000AF7F4(&v116, v115);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v61;
    sub_1000AEE80(v115, 0x6574616572436B63, 0xED00006574614464, v92);
    (*(v80 + 8))(v90, v86);
    v61 = v114;
  }

  v93 = v111;
  sub_1000939A8(a1 + v75[18], v111, &qword_1001287D0, &qword_1000E6C30);
  if (v88(v93, 1, v86) == 1)
  {
    sub_100066C80(v93, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v94 = v106;
    (*(v80 + 32))(v106, v93, v86);
    Date.timeIntervalSinceReferenceDate.getter();
    v117 = &type metadata for Double;
    *&v116 = v95;
    sub_1000AF7F4(&v116, v115);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v61;
    sub_1000AEE80(v115, 0x696669646F4D6B63, 0xEE00657461446465, v96);
    (*(v80 + 8))(v94, v86);
    v61 = v114;
  }

  v97 = v112;
  sub_1000939A8(a1 + v75[19], v112, &qword_1001287D0, &qword_1000E6C30);
  if (v88(v97, 1, v86) == 1)
  {
    sub_100066C80(v97, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v98 = v107;
    (*(v80 + 32))(v107, v97, v86);
    Date.timeIntervalSinceReferenceDate.getter();
    v117 = &type metadata for Double;
    *&v116 = v99;
    sub_1000AF7F4(&v116, v115);
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v61;
    sub_1000AEE80(v115, 0x6144636E79536B63, 0xEA00000000006574, v100);
    (*(v80 + 8))(v98, v86);
    v61 = v114;
  }

  v101 = v113;
  sub_1000939A8(a1 + v75[20], v113, &qword_1001287D0, &qword_1000E6C30);
  if (v88(v101, 1, v86) == 1)
  {
    sub_100066C80(v101, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v102 = v108;
    (*(v80 + 32))(v108, v101, v86);
    Date.timeIntervalSinceReferenceDate.getter();
    v117 = &type metadata for Double;
    *&v116 = v103;
    sub_1000AF7F4(&v116, v115);
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v61;
    sub_1000AEE80(v115, 0xD000000000000010, 0x80000001000F1290, v104);
    (*(v80 + 8))(v102, v86);
    return v114;
  }

  return v61;
}

uint64_t sub_1000CB9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MACloudKVSRecord(0);
  __chkstk_darwin(v4);
  v6 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v157 = &v124 - v12;
  v13 = __chkstk_darwin(v11);
  v148 = &v124 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v124 - v16;
  __chkstk_darwin(v15);
  v19 = &v124 - v18;
  if (!*(a1 + 16) || (v20 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL), (v21 & 1) == 0) || (sub_100066130(*(a1 + 56) + 32 * v20, &v155), (swift_dynamicCast() & 1) == 0))
  {
    v155 = 0;
    v156 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v155 = 0xD00000000000001BLL;
    v156 = 0x80000001000F22A0;
    v25._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v25);

    nullsub_1();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_100092A98();
    swift_allocError();
    *v32 = v27;
    *(v32 + 8) = v29;
    *(v32 + 16) = v31;
    return swift_willThrow();
  }

  v22 = v154;
  v146 = v154;
  v147 = v153;
  if (*(a1 + 16) && (v23 = sub_100065A98(0x614864726F636572, 0xEC000000656C646ELL), v22 = v146, (v24 & 1) != 0) && (sub_100066130(*(a1 + 56) + 32 * v23, &v155), (swift_dynamicCast() & 1) != 0))
  {
    if (v154)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v153 = 0;
    v154 = 0;
  }

  if (String.count.getter() == 36)
  {
    v153 = v147;
    v154 = v22;
  }

LABEL_13:
  v34 = *(a1 + 16);
  v144 = a2;
  v145 = v10;
  if (!v34)
  {
    v37 = 0;
LABEL_23:
    v40 = 0;
    goto LABEL_24;
  }

  v35 = sub_100065A98(0x74617453636E7973, 0xE900000000000065);
  if ((v36 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v35, &v155), swift_dynamicCast()))
  {
    v37 = v151;
  }

  else
  {
    v37 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v38 = sub_100065A98(0x756F6C436D6F7266, 0xE900000000000064);
  v40 = (v39 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v38, &v155), swift_dynamicCast()) && v151 == 1;
  if (*(a1 + 16))
  {
    v59 = sub_100065A98(0x6B63416C61636F6CLL, 0xEA00000000006465);
    if (v60)
    {
      sub_100066130(*(a1 + 56) + 32 * v59, &v155);
      if (swift_dynamicCast())
      {
        v41 = v151 == 1;
        goto LABEL_25;
      }
    }
  }

LABEL_24:
  v41 = 0;
LABEL_25:
  v42 = sub_1000C1780(v37);
  if (v42 == 11)
  {

    v155 = 0;
    v156 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v155 = 0xD000000000000020;
    v156 = 0x80000001000F12B0;
    v43._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v43);

    nullsub_1();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    sub_100092A98();
    swift_allocError();
    *v50 = v45;
    *(v50 + 8) = v47;
    *(v50 + 16) = v49;
    swift_willThrow();
  }

  v142 = sub_1000C182C(v42, v40, v41);
  if (*(a1 + 16) && (v51 = sub_100065A98(0x634164726F636572, 0xED0000746E756F63), (v52 & 1) != 0))
  {
    sub_100066130(*(a1 + 56) + 32 * v51, &v155);
    v53 = swift_dynamicCast();
    v54 = v145;
    if ((v53 & 1) == 0)
    {
      goto LABEL_126;
    }

    if (v152)
    {
      v55 = v151 & 0xFFFFFFFFFFFFLL;
      if ((v152 & 0x2000000000000000) != 0)
      {
        v55 = HIBYTE(v152) & 0xF;
      }

      if (!v55)
      {
        v151 = 0;
        v152 = 0;
      }
    }
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v54 = v145;
  }

  while (1)
  {
    v140 = v154;
    v141 = v153;
    v56 = *(a1 + 16);

    if (!v56)
    {
      v139 = 0;
      v62 = v152;
      v124 = v151;
LABEL_51:
      v138 = v62;

LABEL_52:
      v137 = 0;
      v65 = 0xE000000000000000;
      goto LABEL_53;
    }

    v57 = sub_100065A98(1701869940, 0xE400000000000000);
    if ((v58 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v57, &v155), swift_dynamicCast()))
    {
      v139 = v149;
    }

    else
    {
      v139 = 0;
    }

    v61 = *(a1 + 16);
    v62 = v152;
    v124 = v151;
    if (!v61)
    {
      goto LABEL_51;
    }

    v138 = v152;

    v63 = sub_100065A98(0x6D614E65726F7473, 0xE900000000000065);
    if ((v64 & 1) == 0)
    {
      goto LABEL_52;
    }

    sub_100066130(*(a1 + 56) + 32 * v63, &v155);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_52;
    }

    v65 = v150;
    v137 = v149;
LABEL_53:
    v136 = v65;
    if (*(a1 + 16) && (v66 = sub_100065A98(0x6F724765726F7473, 0xEA00000000007075), (v67 & 1) != 0) && (sub_100066130(*(a1 + 56) + 32 * v66, &v155), (swift_dynamicCast() & 1) != 0))
    {
      v68 = v150;
      v135 = v149;
    }

    else
    {
      v135 = 0;
      v68 = 0xE000000000000000;
    }

    v134 = v68;
    if (*(a1 + 16) && (v69 = sub_100065A98(0x54656C69666F7270, 0xEB00000000657079), (v70 & 1) != 0) && (sub_100066130(*(a1 + 56) + 32 * v69, &v155), swift_dynamicCast()))
    {
      v71 = v149;
    }

    else
    {
      v71 = sub_1000BF320(-2);
    }

    v133 = sub_1000BF304(v71);
    if (!*(a1 + 16))
    {
      v131 = 0;
LABEL_76:
      v143 = 0;
      v79 = 1;
      v132 = 0xF000000000000000;
      goto LABEL_82;
    }

    v72 = sub_100065A98(0x6E6F6973726576, 0xE700000000000000);
    if ((v73 & 1) != 0 && (sub_100066130(*(a1 + 56) + 32 * v72, &v155), swift_dynamicCast()))
    {
      v131 = v149;
    }

    else
    {
      v131 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_76;
    }

    v74 = sub_100065A98(0x7A696C6169726573, 0xED0000776F526465);
    v75 = 0xF000000000000000;
    if (v76)
    {
      sub_100066130(*(a1 + 56) + 32 * v74, &v155);
      v77 = swift_dynamicCast();
      v78 = v149;
      if (!v77)
      {
        v78 = 0;
      }

      v143 = v78;
      if (v77)
      {
        v75 = v150;
      }

      v132 = v75;
    }

    else
    {
      v132 = 0xF000000000000000;
      v143 = 0;
    }

    if (*(a1 + 16) && (v80 = sub_100065A98(0x616470557473616CLL, 0xEF656D6954646574), (v81 & 1) != 0))
    {
      sub_100066130(*(a1 + 56) + 32 * v80, &v155);
      v79 = swift_dynamicCast() ^ 1;
    }

    else
    {
      v79 = 1;
    }

LABEL_82:
    type metadata accessor for MAKVStoreBase();
    sub_1000C4EA0(v79, v19);
    if (!*(a1 + 16))
    {
      v129 = 0;
      v130 = 0;
LABEL_95:
      v89 = 1;
      goto LABEL_96;
    }

    v82 = sub_100065A98(0x676154456B63, 0xE600000000000000);
    if (v83)
    {
      sub_100066130(*(a1 + 56) + 32 * v82, &v155);
      v84 = swift_dynamicCast();
      v85 = v149;
      if (!v84)
      {
        v85 = 0;
      }

      v130 = v85;
      if (v84)
      {
        v86 = v150;
      }

      else
      {
        v86 = 0;
      }

      v129 = v86;
    }

    else
    {
      v130 = 0;
      v129 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_95;
    }

    v87 = sub_100065A98(0x6574616572436B63, 0xED00006574614464);
    if ((v88 & 1) == 0)
    {
      goto LABEL_95;
    }

    sub_100066130(*(a1 + 56) + 32 * v87, &v155);
    v89 = swift_dynamicCast() ^ 1;
LABEL_96:
    sub_1000C4EA0(v89, v17);
    if (*(a1 + 16) && (v90 = sub_100065A98(0x696669646F4D6B63, 0xEE00657461446465), (v91 & 1) != 0))
    {
      sub_100066130(*(a1 + 56) + 32 * v90, &v155);
      v92 = swift_dynamicCast() ^ 1;
    }

    else
    {
      v92 = 1;
    }

    sub_1000C4EA0(v92, v148);
    if (*(a1 + 16) && (v93 = sub_100065A98(0x6144636E79536B63, 0xEA00000000006574), (v94 & 1) != 0))
    {
      sub_100066130(*(a1 + 56) + 32 * v93, &v155);
      v95 = swift_dynamicCast() ^ 1;
    }

    else
    {
      v95 = 1;
    }

    sub_1000C4EA0(v95, v157);
    if (*(a1 + 16) && (v96 = sub_100065A98(0xD000000000000010, 0x80000001000F1290), (v97 & 1) != 0))
    {
      sub_100066130(*(a1 + 56) + 32 * v96, &v155);
      v98 = swift_dynamicCast() ^ 1;
    }

    else
    {
      v98 = 1;
    }

    sub_1000C4EA0(v98, v54);
    *(v6 + 5) = 0;
    *(v6 + 6) = 0;
    *(v6 + 7) = xmmword_1000E6BC0;
    v99 = v4[15];
    v100 = type metadata accessor for Date();
    v101 = *(*(v100 - 8) + 56);
    v128 = v99;
    v101(&v6[v99], 1, 1, v100);
    v127 = v4[17];
    v101(&v6[v127], 1, 1, v100);
    v126 = v4[18];
    v101(&v6[v126], 1, 1, v100);
    v125 = v4[19];
    v101(&v6[v125], 1, 1, v100);
    v102 = v4[20];
    v101(&v6[v102], 1, 1, v100);
    v103 = v146;
    *v6 = v147;
    *(v6 + 1) = v103;
    v104 = v140;
    *(v6 + 2) = v141;
    *(v6 + 3) = v104;
    v105 = v138;
    *(v6 + 4) = v139;
    v106 = v132;
    if (v105)
    {
      v107 = HIBYTE(v105) & 0xF;
      if ((v105 & 0x2000000000000000) == 0)
      {
        v107 = v124 & 0xFFFFFFFFFFFFLL;
      }

      if (v107)
      {
        *(v6 + 5) = v124;
        *(v6 + 6) = v105;
      }

      else
      {
      }
    }

    v108 = v136;
    *(v6 + 7) = v137;
    *(v6 + 8) = v108;
    v109 = v134;
    *(v6 + 9) = v135;
    *(v6 + 10) = v109;
    *(v6 + 11) = v133;
    v110 = v142;
    v6[96] = v142;
    v6[97] = BYTE1(v110) & 1;
    v6[98] = BYTE2(v110) & 1;
    v111 = *(v6 + 14);
    v112 = *(v6 + 15);
    v113 = v143;
    *(v6 + 13) = v131;
    *(v6 + 14) = v113;
    *(v6 + 15) = v106;
    sub_100093FE8(v113, v106);
    sub_10005F69C(v111, v112);
    v114 = v106 >> 60;
    if (v106 >> 60 == 15)
    {
      goto LABEL_115;
    }

    v120 = v106 >> 62;
    if ((v106 >> 62) <= 1)
    {
      break;
    }

    if (v120 != 2)
    {
      sub_10005F69C(v143, v106);
LABEL_115:
      v115 = 0;
LABEL_116:
      v116 = v145;
LABEL_117:
      v117 = v114 > 0xE;
      v118 = &v6[v4[16]];
      *(v6 + 16) = v115;
      v6[136] = v117;
      sub_1000941F8(v19, &v6[v128]);
      v119 = v129;
      *v118 = v130;
      *(v118 + 1) = v119;
      sub_1000941F8(v17, &v6[v127]);
      sub_1000941F8(v148, &v6[v126]);
      sub_1000941F8(v157, &v6[v125]);
      sub_1000941F8(v116, &v6[v102]);
      sub_1000DB490(v6, v144);
    }

    v121 = v106;
    v54 = *(v143 + 16);
    a1 = *(v143 + 24);
    sub_10005F69C(v143, v121);
    v115 = a1 - v54;
    if (!__OFSUB__(a1, v54))
    {
      goto LABEL_116;
    }

    __break(1u);
LABEL_126:
    v151 = 0;
    v152 = 0;
  }

  if (!v120)
  {
    sub_10005F69C(v143, v106);
    v115 = BYTE6(v106);
    goto LABEL_116;
  }

  v122 = v143;
  v147 = HIDWORD(v143);
  result = sub_10005F69C(v143, v106);
  v123 = __OFSUB__(v147, v122);
  LODWORD(v115) = v147 - v122;
  v116 = v145;
  if (!v123)
  {
    v115 = v115;
    goto LABEL_117;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CCA44(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  sub_10005F5CC(&unk_100129060, &qword_1000E7D50);
  v3[25] = swift_task_alloc();
  v4 = type metadata accessor for MACloudKVSRecord(0);
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000CCBA4, v2, 0);
}

uint64_t sub_1000CCBA4()
{
  v106 = v0;
  v1 = *(v0 + 192);
  v2 = *(*v1 + 200);
  v3 = (*v1 + 200) & 0xFFFFFFFFFFFFLL | 0xFCE0000000000000;
  *(v0 + 264) = v2;
  *(v0 + 272) = v3;
  v2();
  if (v4)
  {

LABEL_3:
    v5 = *(v0 + 176);
    v6 = *v5;
    v7 = v5[1];
    (*(**(v0 + 192) + 304))(*v5, v7);
    v17 = *(v0 + 200);
    v18 = (*(*(v0 + 216) + 48))(v17, 1, *(v0 + 208));
    if (v18 == 1)
    {
      sub_100066C80(v17, &unk_100129060, &qword_1000E7D50);
      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 232);
      v20 = *(v0 + 176);
      v21 = type metadata accessor for Logger();
      sub_100066000(v21, qword_10012B758);
      sub_1000DB4F4(v20, v19);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v0 + 232);
      if (v24)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v105 = v27;
        *v26 = 136315138;
        v28 = sub_1000C8064();
        v30 = v29;
        sub_1000DB558(v25);
        v31 = sub_100065658(v28, v30, &v105);

        *(v26 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v22, v23, "Adding new KVSRecord to be uploaded to local cache. record: %s", v26, 0xCu);
        sub_10005D588(v27);
      }

      else
      {

        sub_1000DB558(v25);
      }

      v63 = *(v0 + 264);
      v64 = (*(**(v0 + 192) + 256))(*(v0 + 176));
      v65 = v63();
      if (v66)
      {
        *(v0 + 120) = &type metadata for String;
        *(v0 + 96) = v65;
        *(v0 + 104) = v66;
        sub_1000AF7F4((v0 + 96), (v0 + 128));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = v64;
        v65 = sub_1000AEE80((v0 + 128), 0x634164726F636572, 0xED0000746E756F63, isUniquelyReferenced_nonNull_native);
      }

      v68 = (*(**(v0 + 192) + 328))(v65);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v0 + 160) = 0;
      v70 = [v68 putDictionay:isa attributes:0 error:v0 + 160];

      v71 = *(v0 + 160);
      if (v70)
      {
        v72 = v71;
LABEL_45:
        (*(v0 + 264))(v72);
        if (v82)
        {
          v83 = *(v0 + 192);

          v85 = (*(*v83 + 176))(v84);
          *(v0 + 320) = v85;
          if (v85)
          {
            v86 = *(*(v0 + 176) + 32);
            v87 = swift_task_alloc();
            *(v0 + 328) = v87;
            *v87 = v0;
            v87[1] = sub_1000CE6E8;

            return sub_10007CCC4(v6, v7, v86);
          }

          goto LABEL_4;
        }

        if (qword_10012B750 != -1)
        {
          swift_once();
        }

        v90 = *(v0 + 224);
        v91 = *(v0 + 176);
        v92 = type metadata accessor for Logger();
        sub_100066000(v92, qword_10012B758);
        sub_1000DB4F4(v91, v90);
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.info.getter();
        v95 = os_log_type_enabled(v93, v94);
        v96 = *(v0 + 224);
        if (v95)
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v105 = v98;
          *v97 = 136315138;
          v99 = sub_1000C8064();
          v101 = v100;
          sub_1000DB558(v96);
          v102 = sub_100065658(v99, v101, &v105);

          *(v97 + 4) = v102;
          _os_log_impl(&_mh_execute_header, v93, v94, "Account is not available, will schedule upload when it becomes ready. record: %s", v97, 0xCu);
          sub_10005D588(v98);

          goto LABEL_4;
        }

        v48 = v96;
LABEL_58:
        sub_1000DB558(v48);
        goto LABEL_4;
      }

      v88 = v71;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
      v32 = *(v0 + 256);
      v33 = *(v0 + 184);
      sub_1000DB490(v17, v32);
      v34 = (*(v32 + 96) & 0xFE) != 2 || v33 == 1;
      if (!v34 && sub_1000C7594(*(v0 + 256)))
      {
        if (qword_10012B750 != -1)
        {
          swift_once();
        }

        v35 = *(v0 + 248);
        v36 = *(v0 + 176);
        v37 = type metadata accessor for Logger();
        sub_100066000(v37, qword_10012B758);
        sub_1000DB4F4(v36, v35);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.info.getter();
        v40 = os_log_type_enabled(v38, v39);
        v42 = *(v0 + 248);
        v41 = *(v0 + 256);
        if (v40)
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v105 = v44;
          *v43 = 136315138;
          v45 = *v42;
          v46 = v42[1];

          sub_1000DB558(v42);
          v47 = sub_100065658(v45, v46, &v105);

          *(v43 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v38, v39, "Skip KVSRecord sync up as it's not changed yet and already in cloud. recordName: %s", v43, 0xCu);
          sub_10005D588(v44);
        }

        else
        {

          sub_1000DB558(v42);
        }

        v48 = v41;
        goto LABEL_58;
      }

      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v49 = *(v0 + 240);
      v50 = *(v0 + 176);
      v51 = type metadata accessor for Logger();
      sub_100066000(v51, qword_10012B758);
      sub_1000DB4F4(v50, v49);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();
      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 240);
      if (v54)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v105 = v57;
        *v56 = 136315138;
        v58 = sub_1000C8064();
        v60 = v59;
        sub_1000DB558(v55);
        v61 = sub_100065658(v58, v60, &v105);

        *(v56 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v52, v53, "Updating existing KVSRecord to be uploaded in local cache: %s", v56, 0xCu);
        sub_10005D588(v57);
      }

      else
      {

        v62 = sub_1000DB558(v55);
      }

      v73 = (*(**(v0 + 192) + 328))(v62);
      v74 = *(v0 + 192);
      v104 = *(v0 + 176);
      sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000E61E0;
      *(inited + 32) = 0x614E64726F636572;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xEA0000000000656DLL;
      *(inited + 48) = v6;
      *(inited + 56) = v7;

      sub_1000AF988(inited);
      swift_setDeallocating();
      sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
      v76 = Dictionary._bridgeToObjectiveC()().super.isa;

      (*(*v74 + 256))(v104);
      v77 = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v0 + 168) = 0;
      v78 = [v73 updateFor:v76 value:v77 attributes:0 error:v0 + 168];

      v79 = *(v0 + 168);
      v80 = *(v0 + 256);
      if (v78)
      {
        v81 = v79;
        v72 = sub_1000DB558(v80);
        goto LABEL_45;
      }

      v89 = v79;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000DB558(v80);
    }

LABEL_4:

    v8 = *(v0 + 8);

    return v8();
  }

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100066000(v10, qword_10012B758);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "accountIdentifier is not set, will to get from syncedDatabase (to fetch it)", v13, 2u);
  }

  v14 = *(v0 + 192);

  v15 = (*(*v14 + 176))();
  *(v0 + 280) = v15;
  if (!v15)
  {
    (*(**(v0 + 192) + 208))(0, 0);
    goto LABEL_3;
  }

  v103 = (*(*v15 + 216) + **(*v15 + 216));
  v16 = swift_task_alloc();
  *(v0 + 288) = v16;
  *v16 = v0;
  v16[1] = sub_1000CD998;

  return v103();
}

uint64_t sub_1000CD998(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 296) = v2;

  if (v2)
  {
    v7 = v6[24];
    v8 = sub_1000CE8C0;
  }

  else
  {
    v9 = v6[24];

    v6[38] = a2;
    v6[39] = a1;
    v8 = sub_1000CDB20;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000CDB20()
{
  v94 = v0;
  v1 = *(v0 + 296);
  (*(**(v0 + 192) + 208))(*(v0 + 312), *(v0 + 304));
  v2 = *(v0 + 176);
  v3 = *v2;
  v4 = v2[1];
  (*(**(v0 + 192) + 304))(*v2, v4);
  if (v1)
  {
LABEL_2:

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 200);
  if ((*(*(v0 + 216) + 48))(v7, 1, *(v0 + 208)) == 1)
  {
    sub_100066C80(v7, &unk_100129060, &qword_1000E7D50);
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 232);
    v9 = *(v0 + 176);
    v10 = type metadata accessor for Logger();
    sub_100066000(v10, qword_10012B758);
    sub_1000DB4F4(v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 232);
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v93 = v16;
      *v15 = 136315138;
      v17 = sub_1000C8064();
      v19 = v18;
      sub_1000DB558(v14);
      v20 = sub_100065658(v17, v19, &v93);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Adding new KVSRecord to be uploaded to local cache. record: %s", v15, 0xCu);
      sub_10005D588(v16);
    }

    else
    {

      sub_1000DB558(v14);
    }

    v52 = *(v0 + 264);
    v53 = (*(**(v0 + 192) + 256))(*(v0 + 176));
    v54 = v52();
    if (v55)
    {
      *(v0 + 120) = &type metadata for String;
      *(v0 + 96) = v54;
      *(v0 + 104) = v55;
      sub_1000AF7F4((v0 + 96), (v0 + 128));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v53;
      v54 = sub_1000AEE80((v0 + 128), 0x634164726F636572, 0xED0000746E756F63, isUniquelyReferenced_nonNull_native);
    }

    v57 = (*(**(v0 + 192) + 328))(v54);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 160) = 0;
    v59 = [v57 putDictionay:isa attributes:0 error:v0 + 160];

    v60 = *(v0 + 160);
    if (!v59)
    {
      v77 = v60;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_2;
    }

    v61 = v60;
  }

  else
  {
    v21 = *(v0 + 256);
    v22 = *(v0 + 184);
    sub_1000DB490(v7, v21);
    v23 = (*(v21 + 96) & 0xFE) != 2 || v22 == 1;
    if (!v23 && sub_1000C7594(*(v0 + 256)))
    {
      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 248);
      v25 = *(v0 + 176);
      v26 = type metadata accessor for Logger();
      sub_100066000(v26, qword_10012B758);
      sub_1000DB4F4(v25, v24);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      v29 = os_log_type_enabled(v27, v28);
      v31 = *(v0 + 248);
      v30 = *(v0 + 256);
      if (v29)
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v93 = v33;
        *v32 = 136315138;
        v34 = *v31;
        v35 = v31[1];

        sub_1000DB558(v31);
        v36 = sub_100065658(v34, v35, &v93);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v27, v28, "Skip KVSRecord sync up as it's not changed yet and already in cloud. recordName: %s", v32, 0xCu);
        sub_10005D588(v33);
      }

      else
      {

        sub_1000DB558(v31);
      }

      v37 = v30;
      goto LABEL_47;
    }

    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 240);
    v39 = *(v0 + 176);
    v40 = type metadata accessor for Logger();
    sub_100066000(v40, qword_10012B758);
    sub_1000DB4F4(v39, v38);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 240);
    if (v43)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v93 = v46;
      *v45 = 136315138;
      v47 = sub_1000C8064();
      v49 = v48;
      sub_1000DB558(v44);
      v50 = sub_100065658(v47, v49, &v93);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "Updating existing KVSRecord to be uploaded in local cache: %s", v45, 0xCu);
      sub_10005D588(v46);
    }

    else
    {

      v51 = sub_1000DB558(v44);
    }

    v62 = (*(**(v0 + 192) + 328))(v51);
    v63 = *(v0 + 192);
    v92 = *(v0 + 176);
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = v3;
    *(inited + 56) = v4;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    v65 = Dictionary._bridgeToObjectiveC()().super.isa;

    (*(*v63 + 256))(v92);
    v66 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 168) = 0;
    v67 = [v62 updateFor:v65 value:v66 attributes:0 error:v0 + 168];

    v68 = *(v0 + 168);
    v69 = *(v0 + 256);
    if (!v67)
    {
      v78 = v68;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1000DB558(v69);
      goto LABEL_2;
    }

    v70 = v68;
    v61 = sub_1000DB558(v69);
  }

  (*(v0 + 264))(v61);
  if (!v71)
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v79 = *(v0 + 224);
    v80 = *(v0 + 176);
    v81 = type metadata accessor for Logger();
    sub_100066000(v81, qword_10012B758);
    sub_1000DB4F4(v80, v79);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();
    v84 = os_log_type_enabled(v82, v83);
    v85 = *(v0 + 224);
    if (v84)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v93 = v87;
      *v86 = 136315138;
      v88 = sub_1000C8064();
      v90 = v89;
      sub_1000DB558(v85);
      v91 = sub_100065658(v88, v90, &v93);

      *(v86 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v82, v83, "Account is not available, will schedule upload when it becomes ready. record: %s", v86, 0xCu);
      sub_10005D588(v87);

      goto LABEL_2;
    }

    v37 = v85;
LABEL_47:
    sub_1000DB558(v37);
    goto LABEL_2;
  }

  v72 = *(v0 + 192);

  v74 = (*(*v72 + 176))(v73);
  *(v0 + 320) = v74;
  if (!v74)
  {
    goto LABEL_2;
  }

  v75 = *(*(v0 + 176) + 32);
  v76 = swift_task_alloc();
  *(v0 + 328) = v76;
  *v76 = v0;
  v76[1] = sub_1000CE6E8;

  return sub_10007CCC4(v3, v4, v75);
}

uint64_t sub_1000CE6E8()
{
  v2 = *v1;
  v2[42] = v0;

  if (v0)
  {
    v3 = v2[24];

    return _swift_task_switch(sub_1000CE9A4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1000CE8C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CE9A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CEA88(uint64_t a1, uint64_t a2)
{
  v3[99] = v2;
  v3[98] = a2;
  v3[97] = a1;
  sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[102] = v4;
  v3[103] = *(v4 - 8);
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v3[106] = swift_task_alloc();
  sub_10005F5CC(&unk_100129060, &qword_1000E7D50);
  v3[107] = swift_task_alloc();
  v5 = type metadata accessor for MACloudKVSRecord(0);
  v3[108] = v5;
  v3[109] = *(v5 - 8);
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();

  return _swift_task_switch(sub_1000CEC8C, v2, 0);
}

uint64_t sub_1000CEC8C()
{
  v177 = v0;
  v1 = *(v0 + 776);
  v2 = v1[1];
  v175 = *v1;
  v3 = qword_10012B750;

  if (v3 != -1)
  {
    swift_once();
    v1 = *(v0 + 776);
  }

  v4 = *(v0 + 896);
  v5 = type metadata accessor for Logger();
  sub_100066000(v5, qword_10012B758);
  sub_1000DB4F4(v1, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 896);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v176[0] = v11;
    *v10 = 136315138;
    v12 = sub_1000C8064();
    v14 = v13;
    sub_1000DB558(v9);
    v15 = sub_100065658(v12, v14, v176);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "saveKVSDataFromCloud: %s", v10, 0xCu);
    sub_10005D588(v11);
  }

  else
  {

    sub_1000DB558(v9);
  }

  v16 = *(v0 + 872);
  v17 = *(v0 + 864);
  v18 = *(v0 + 856);
  sub_1000939A8(*(v0 + 784), v18, &unk_100129060, &qword_1000E7D50);
  if ((*(v16 + 48))(v18, 1, v17) == 1)
  {
    sub_100066C80(*(v0 + 856), &unk_100129060, &qword_1000E7D50);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
  }

  else
  {
    v19 = *(v0 + 856);
    *(v0 + 200) = *(v0 + 864);
    *(v0 + 208) = sub_1000DB5B4(&qword_100129078, 255, type metadata accessor for MACloudKVSRecord, &unk_1000E7E28);
    v20 = sub_10005D4D0((v0 + 176));
    sub_1000DB490(v19, v20);
  }

  v21 = *(v0 + 864);
  v22 = sub_1000DB5B4(&qword_100129078, 255, type metadata accessor for MACloudKVSRecord, &unk_1000E7E28);
  v23 = sub_1000C1850(v0 + 176, v21, v22);
  sub_100066C80(v0 + 176, &unk_100129080, &qword_1000E7D60);
  if ((v23 & 1) == 0)
  {
    goto LABEL_20;
  }

  v24 = *(v0 + 776);
  v25 = *(v24 + 120);
  if (v25 >> 60 == 15)
  {
LABEL_23:

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Invalid serialized KVSRecord from cloud", v55, 2u);
    }

    v56 = *(v0 + 792);

    v57 = (*(*v56 + 328))();
    (*(**(v0 + 792) + 256))(*(v0 + 776));
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v0 + 760) = 0;
    v59 = [v57 putDictionay:isa attributes:0 error:v0 + 760];

    v60 = *(v0 + 760);
    if (v59)
    {
      v61 = v60;
    }

    else
    {
      v62 = v60;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    goto LABEL_28;
  }

  v26 = *(v24 + 112);
  v27 = objc_opt_self();
  sub_10005F304(v26, v25);
  v28 = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 752) = 0;
  v29 = [v27 propertyListWithData:v28 options:0 format:0 error:v0 + 752];

  v30 = *(v0 + 752);
  if (!v29)
  {
    v52 = v30;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10005F69C(v26, v25);
    goto LABEL_28;
  }

  v31 = v30;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10005F69C(v26, v25);
    goto LABEL_23;
  }

  v32 = *(v0 + 728);
  v33 = *(*(v0 + 776) + 32);
  v34 = sub_1000C619C(v33);
  if (!v35)
  {
    v65 = *(v0 + 880);
    v66 = *(v0 + 776);

    sub_1000DB4F4(v66, v65);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    v69 = os_log_type_enabled(v67, v68);
    v70 = *(v0 + 880);
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v176[0] = v72;
      *v71 = 136315138;
      *(v0 + 736) = *(v70 + 32);
      type metadata accessor for MASDAssetType(0);
      sub_1000DB5B4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      sub_1000DB558(v70);
      v76 = sub_100065658(v73, v75, v176);

      *(v71 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v67, v68, "recordHandleField is not defined for %s", v71, 0xCu);
      sub_10005D588(v72);

      sub_10005F69C(v26, v25);
    }

    else
    {
      sub_10005F69C(v26, v25);

      sub_1000DB558(v70);
    }

LABEL_20:

    goto LABEL_28;
  }

  if (!*(v32 + 16))
  {

LABEL_34:

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v176[0] = v80;
      *v79 = 136315138;

      v81 = Dictionary.Keys.description.getter();
      v83 = v82;

      v84 = sub_100065658(v81, v83, v176);

      *(v79 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v77, v78, "recordHandle is not present in serialized row %s", v79, 0xCu);
      sub_10005D588(v80);
    }

    sub_10005F69C(v26, v25);

    goto LABEL_20;
  }

  v36 = sub_100065A98(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_100066130(*(v32 + 56) + 32 * v36, v0 + 248);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  v172 = v32;
  v39 = *(v0 + 888);
  v40 = *(v0 + 712);
  v41 = *(v0 + 720);
  sub_1000DB4F4(*(v0 + 776), v39);

  *(v39 + 16) = v40;
  *(v39 + 24) = v41;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  v171 = v33;
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v176[0] = v169;
    *v44 = 136315138;
    swift_beginAccess();
    v45 = sub_1000C8064();
    v47 = sub_100065658(v45, v46, v176);

    *(v44 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v42, v43, "record SyncDown saved in local cache: %s", v44, 0xCu);
    sub_10005D588(v169);
  }

  v48 = (**(v0 + 792) + 328);
  v49 = *v48;
  v50 = (*v48)();
  v51 = *(v0 + 888);
  v170 = v49;
  v85 = *(v0 + 792);
  v86 = v50;
  swift_beginAccess();
  (*(*v85 + 256))(v51);
  v87 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 744) = 0;
  v88 = [v86 putDictionay:v87 attributes:0 error:v0 + 744];

  v89 = *(v0 + 744);
  if (!v88)
  {
    v96 = *(v0 + 888);
    v97 = v89;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10005F69C(v26, v25);
    sub_1000DB558(v96);

    goto LABEL_28;
  }

  v90 = *(v0 + 824);
  v91 = *(v0 + 816);
  v92 = *(v0 + 808);
  sub_1000939A8(*(v0 + 776) + *(*(v0 + 864) + 68), v92, &qword_1001287D0, &qword_1000E6C30);
  v163 = *(v90 + 48);
  if (v163(v92, 1, v91) == 1)
  {
    v93 = *(v0 + 808);
    v94 = v89;
    sub_100066C80(v93, &qword_1001287D0, &qword_1000E6C30);
    v95 = v172;
  }

  else
  {
    v98 = *(v0 + 848);
    v99 = *(v0 + 824);
    v161 = *(v0 + 816);
    (*(v99 + 32))(v98, *(v0 + 808));
    v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;
    v102 = v89;
    Date.timeIntervalSinceReferenceDate.getter();
    *(v0 + 624) = &type metadata for Double;
    *(v0 + 600) = v103;
    sub_1000AF7F4((v0 + 600), (v0 + 632));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v176[0] = v172;
    sub_1000AEE80((v0 + 632), v159, v101, isUniquelyReferenced_nonNull_native);

    v95 = v176[0];
    (*(v99 + 8))(v98, v161);
  }

  v105 = *(v0 + 816);
  v106 = *(v0 + 800);
  sub_1000939A8(*(v0 + 776) + *(*(v0 + 864) + 72), v106, &qword_1001287D0, &qword_1000E6C30);
  if (v163(v106, 1, v105) == 1)
  {
    sub_100066C80(*(v0 + 800), &qword_1001287D0, &qword_1000E6C30);
    v107 = v95;
  }

  else
  {
    v108 = *(v0 + 840);
    v109 = *(v0 + 824);
    v173 = *(v0 + 816);
    (*(v109 + 32))(v108, *(v0 + 800));
    v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v110;
    Date.timeIntervalSinceReferenceDate.getter();
    *(v0 + 560) = &type metadata for Double;
    *(v0 + 536) = v112;
    sub_1000AF7F4((v0 + 536), (v0 + 568));
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v176[0] = v95;
    sub_1000AEE80((v0 + 568), v166, v111, v113);

    v107 = v176[0];
    (*(v109 + 8))(v108, v173);
  }

  v160 = *(v0 + 832);
  v162 = *(v0 + 824);
  v164 = *(v0 + 816);
  v167 = *(v0 + 792);
  v174 = *(v0 + 776);
  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v116 = v115;
  *(v0 + 304) = &type metadata for String;
  *(v0 + 280) = v175;
  *(v0 + 288) = v2;
  sub_1000AF7F4((v0 + 280), (v0 + 312));

  v117 = swift_isUniquelyReferenced_nonNull_native();
  v176[0] = v107;
  sub_1000AEE80((v0 + 312), v114, v116, v117);

  v118 = v176[0];
  v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v121 = v120;
  *(v0 + 368) = &type metadata for UInt;
  *(v0 + 344) = 32;
  sub_1000AF7F4((v0 + 344), (v0 + 216));
  v122 = swift_isUniquelyReferenced_nonNull_native();
  v176[0] = v118;
  sub_1000AEE80((v0 + 216), v119, v121, v122);

  v123 = v176[0];
  v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v126 = v125;
  *(v0 + 432) = &type metadata for UInt;
  *(v0 + 408) = 32;
  sub_1000AF7F4((v0 + 408), (v0 + 440));
  v127 = swift_isUniquelyReferenced_nonNull_native();
  v176[0] = v123;
  sub_1000AEE80((v0 + 440), v124, v126, v127);

  v128 = v176[0];
  v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v131 = v130;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v133 = v132;
  (*(v162 + 8))(v160, v164);
  *(v0 + 496) = &type metadata for Double;
  *(v0 + 472) = v133;
  sub_1000AF7F4((v0 + 472), (v0 + 504));
  v134 = swift_isUniquelyReferenced_nonNull_native();
  v176[0] = v128;
  sub_1000AEE80((v0 + 504), v129, v131, v134);

  v168 = *(v167 + 120);
  v165 = String._bridgeToObjectiveC()();
  v135 = String._bridgeToObjectiveC()();
  v136 = String._bridgeToObjectiveC()();
  v137 = *(v174 + 88);

  v138 = Dictionary._bridgeToObjectiveC()().super.isa;

  LODWORD(v137) = [v168 didReceiveKVSData:v165 assetType:v171 storeName:v135 storeGroup:v136 profileType:v137 data:v138];

  if (!v137)
  {

    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();

    v141 = os_log_type_enabled(v139, v140);
    v142 = *(v0 + 888);
    if (v141)
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v176[0] = v144;
      *v143 = 136315138;
      v145 = sub_100065658(v175, v2, v176);

      *(v143 + 4) = v145;
      _os_log_impl(&_mh_execute_header, v139, v140, "Delegate failed to process didReceiveKVSData for recordName: %s", v143, 0xCu);
      sub_10005D588(v144);

      sub_10005F69C(v26, v25);
    }

    else
    {
      sub_10005F69C(v26, v25);
    }

    v146 = v142;
    goto LABEL_52;
  }

  v147 = v170();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 0x614E64726F636572;
  v149 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v175;
  *(inited + 56) = v2;
  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(v149, &qword_100129070, &qword_1000E7440);
  v150 = Dictionary._bridgeToObjectiveC()().super.isa;

  v151 = swift_initStackObject();
  *(v151 + 16) = xmmword_1000E61E0;
  *(v151 + 32) = 0x6B63416C61636F6CLL;
  v152 = v151 + 32;
  *(v151 + 72) = &type metadata for Int;
  *(v151 + 40) = 0xEA00000000006465;
  *(v151 + 48) = 1;
  sub_1000AF988(v151);
  swift_setDeallocating();
  sub_100066C80(v152, &qword_100129070, &qword_1000E7440);
  v153 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 768) = 0;
  v154 = [v147 updateFor:v150 value:v153 attributes:0 error:v0 + 768];

  v155 = *(v0 + 768);
  v156 = *(v0 + 888);
  if (v154)
  {
    v157 = v155;
    sub_10005F69C(v26, v25);
    v146 = v156;
LABEL_52:
    sub_1000DB558(v146);

    goto LABEL_28;
  }

  v158 = v155;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10005F69C(v26, v25);
  sub_1000DB558(v156);

LABEL_28:

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_1000D0154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[89] = v7;
  v8[88] = a7;
  v8[87] = a6;
  v8[86] = a5;
  v8[85] = a4;
  v8[84] = a3;
  v8[83] = a2;
  v8[82] = a1;
  v9 = type metadata accessor for Date();
  v8[90] = v9;
  v8[91] = *(v9 - 8);
  v8[92] = swift_task_alloc();

  return _swift_task_switch(sub_1000D025C, v7, 0);
}

uint64_t sub_1000D025C(uint64_t a1)
{
  v93 = v1;
  v2 = v1[92];
  v3 = v1[91];
  v4 = v1[90];
  v5 = v1[82];
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v7 = v6;
  v8 = (*(v3 + 8))(v2, v4);
  v9 = *(v5 + 16);
  if (v9)
  {
    v81 = (v1 + 81);
    v82 = (v1 + 80);
    v91 = _swiftEmptyArrayStorage;
    v10 = (v1[82] + 40);
    v83 = v1;
    while (1)
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = HIBYTE(*v10) & 0xF;
      if ((*v10 & 0x2000000000000000) == 0)
      {
        v13 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (!v13)
      {
        break;
      }

      v14 = v1[87];
      v15 = v1[86];
      v16 = v1[85];
      v17 = v1[84];

      v90 = sub_1000C6784(v12, v11, v17, v16, v15, v14);
      v19 = v18;

      v89 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_10006554C(0, *(v91 + 2) + 1, 1, v91);
      }

      v21 = *(v91 + 2);
      v20 = *(v91 + 3);
      v84 = v9;
      v85 = v10;
      v88 = v12;
      if (v21 >= v20 >> 1)
      {
        v91 = sub_10006554C((v20 > 1), v21 + 1, 1, v91);
      }

      v22 = v1[89];
      v23 = v1[87];
      v86 = v1[86];
      v87 = v1[88];
      v24 = v1[85];
      v25 = v1[84];
      v26 = v1[83];
      *(v91 + 2) = v21 + 1;
      v27 = &v91[16 * v21];
      v28 = v89;
      *(v27 + 4) = v90;
      *(v27 + 5) = v89;
      sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000E7D00;
      *(inited + 32) = 0x614E64726F636572;
      *(inited + 40) = 0xEA0000000000656DLL;
      *(inited + 48) = v90;
      *(inited + 56) = v89;
      *(inited + 72) = &type metadata for String;
      strcpy((inited + 80), "recordHandle");
      *(inited + 93) = 0;
      *(inited + 94) = -5120;
      *(inited + 96) = v88;
      *(inited + 104) = v11;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 1701869940;
      *(inited + 136) = 0xE400000000000000;
      *(inited + 144) = v26;
      *(inited + 168) = &type metadata for UInt;
      *(inited + 176) = 0x6D614E65726F7473;
      *(inited + 184) = 0xE900000000000065;
      *(inited + 192) = v25;
      *(inited + 200) = v24;
      *(inited + 216) = &type metadata for String;
      *(inited + 224) = 0x6F724765726F7473;
      *(inited + 232) = 0xEA00000000007075;
      *(inited + 240) = v86;
      *(inited + 248) = v23;
      *(inited + 264) = &type metadata for String;
      *(inited + 272) = 0x54656C69666F7270;
      *(inited + 280) = 0xEB00000000657079;
      *(inited + 288) = v87;
      *(inited + 312) = &type metadata for UInt;
      *(inited + 320) = 0x74617453636E7973;
      *(inited + 328) = 0xE900000000000065;

      *(inited + 336) = sub_1000C1778(10);
      *(inited + 360) = &type metadata for Int;
      *(inited + 368) = 0x6144636E79536B63;
      *(inited + 376) = 0xEA00000000006574;
      *(inited + 408) = &type metadata for Double;
      *(inited + 384) = v7;
      sub_1000AF988(inited);
      swift_setDeallocating();
      sub_10005F5CC(&qword_100129070, &qword_1000E7440);
      swift_arrayDestroy();
      if ((*(*v22 + 320))(v90, v89))
      {
        v1 = v83;
        if (qword_10012B750 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_100066000(v30, qword_10012B758);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v92[0] = v34;
          *v33 = 136315138;
          v35 = Dictionary.description.getter();
          v37 = v36;

          v38 = v35;
          v28 = v89;
          v39 = sub_100065658(v38, v37, v92);

          *(v33 + 4) = v39;
          _os_log_impl(&_mh_execute_header, v31, v32, "Update to be deleted KVSRecord: %s in local cache", v33, 0xCu);
          sub_10005D588(v34);
        }

        else
        {
        }

        v55 = (*(*v83[89] + 328))(v40);
        v56 = swift_initStackObject();
        *(v56 + 16) = xmmword_1000E61E0;
        *(v56 + 32) = 0x614E64726F636572;
        v57 = v56 + 32;
        *(v56 + 72) = &type metadata for String;
        *(v56 + 40) = 0xEA0000000000656DLL;
        *(v56 + 48) = v90;
        *(v56 + 56) = v28;
        sub_1000AF988(v56);
        swift_setDeallocating();
        sub_100066C80(v57, &qword_100129070, &qword_1000E7440);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v59 = swift_initStackObject();
        *(v59 + 16) = xmmword_1000E6C00;
        *(v59 + 32) = 0x74617453636E7973;
        *(v59 + 40) = 0xE900000000000065;
        *(v59 + 48) = sub_1000C1778(10);
        *(v59 + 72) = &type metadata for Int;
        *(v59 + 80) = 0x6144636E79536B63;
        *(v59 + 88) = 0xEA00000000006574;
        *(v59 + 120) = &type metadata for Double;
        *(v59 + 96) = v7;
        sub_1000AF988(v59);
        swift_setDeallocating();
        swift_arrayDestroy();
        v60 = Dictionary._bridgeToObjectiveC()().super.isa;

        *v81 = 0;
        v61 = [v55 updateFor:isa value:v60 attributes:0 error:v81];

        v54 = *v81;
        if ((v61 & 1) == 0)
        {
          goto LABEL_35;
        }

        v50 = v84;
        v44 = v85;
      }

      else
      {

        v1 = v83;
        if (qword_10012B750 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100066000(v41, qword_10012B758);

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();

        v44 = v85;
        if (os_log_type_enabled(v42, v43))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v92[0] = v46;
          *v45 = 136315138;
          v47 = Dictionary.description.getter();
          v49 = sub_100065658(v47, v48, v92);

          *(v45 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v42, v43, "Adding to be deleted KVSRecord: %s to local cache", v45, 0xCu);
          sub_10005D588(v46);
        }

        v50 = v84;
        v51 = (*(*v83[89] + 328))();
        v52 = Dictionary._bridgeToObjectiveC()().super.isa;

        *v82 = 0;
        v53 = [v51 putDictionay:v52 attributes:0 error:v82];

        v54 = *v82;
        if (!v53)
        {
LABEL_35:
          v73 = v54;

          _convertNSErrorToError(_:)();

          goto LABEL_38;
        }
      }

      v8 = v54;
      v10 = v44 + 2;
      v9 = v50 - 1;
      if (!v9)
      {
        goto LABEL_26;
      }
    }

    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100066000(v67, qword_10012B758);

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v92[0] = v71;
      *v70 = 136315138;
      v72 = sub_100065658(v12, v11, v92);

      *(v70 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v68, v69, "KVSData recordHandle: %s to be deleted contain empty recordHandle", v70, 0xCu);
      sub_10005D588(v71);
    }

    else
    {
    }

    sub_1000B9568();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    sub_100092A98();
    swift_allocError();
    *v80 = v75;
    *(v80 + 8) = v77;
    *(v80 + 16) = v79;
LABEL_38:
    swift_willThrow();

    v66 = v1[1];
  }

  else
  {
    v91 = _swiftEmptyArrayStorage;
LABEL_26:
    v1[93] = v91;
    v62 = (*(*v1[89] + 176))(v8);
    v1[94] = v62;
    if (v62)
    {
      v63 = swift_task_alloc();
      v1[95] = v63;
      *v63 = v1;
      v63[1] = sub_1000D0F2C;
      v64 = v1[83];

      return sub_10007D9B8(v91, v64);
    }

    v66 = v1[1];
  }

  return v66();
}

uint64_t sub_1000D0F2C()
{
  v2 = *v1;
  v2[96] = v0;

  if (v0)
  {
    v3 = v2[89];

    return _swift_task_switch(sub_1000D10D0, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1000D10D0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1000D1174(uint64_t a1, uint64_t a2)
{
  result = (*(*v2 + 328))();
  if (!v3)
  {
    v7 = result;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v12 = 0;
    v10 = [v7 deleteFor:isa attributes:0 error:&v12];

    if (v10)
    {
      return v12;
    }

    else
    {
      v11 = v12;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

void *sub_1000D1358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for MACloudKVSRecord(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v3 + 328))(v10);
  if (!v4)
  {
    v14 = result;
    v26 = a3;
    v27 = v9;
    v28 = 0;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = 0;
    v17 = [v14 queryDictionaryFor:isa attributes:0 error:&v29];

    v18 = v29;
    if (v17)
    {
      v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v18;

      if (*(v19 + 16))
      {
        v21 = v28;
        (*(*v3 + 264))(v19);

        v22 = v27;
        if (!v21)
        {
          v23 = v26;
          sub_1000DB490(v12, v26);
          return (*(v22 + 56))(v23, 0, 1, v8);
        }
      }

      else
      {
        (*(v27 + 56))(v26, 1, 1, v8);
      }
    }

    else
    {
      v24 = v29;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

id sub_1000D16AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v40 = a1;
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v5 = __chkstk_darwin(v4 - 8);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  v15 = sub_1000AF988(_swiftEmptyArrayStorage);
  v16 = type metadata accessor for MACloudKVSRecord(0);
  v17 = (a3 + v16[16]);
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
    v50 = &type metadata for String;
    *&v49 = v19;
    *(&v49 + 1) = v18;
    sub_1000AF7F4(&v49, v48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v15;
    sub_1000AEE80(v48, 0x676154456B63, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v15 = v47;
  }

  v21 = v16[17];
  v43 = a3;
  sub_1000939A8(a3 + v21, v8, &qword_1001287D0, &qword_1000E6C30);
  v22 = *(v10 + 48);
  if (v22(v8, 1, v9) == 1)
  {
    v23 = v10;
    sub_100066C80(v8, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    Date.timeIntervalSinceReferenceDate.getter();
    v50 = &type metadata for Double;
    *&v49 = v24;
    sub_1000AF7F4(&v49, v48);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v15;
    sub_1000AEE80(v48, 0x6574616572436B63, 0xED00006574614464, v25);
    v23 = v10;
    (*(v10 + 8))(v14, v9);
    v15 = v47;
  }

  v26 = v44;
  sub_1000939A8(v43 + v16[18], v44, &qword_1001287D0, &qword_1000E6C30);
  if (v22(v26, 1, v9) == 1)
  {
    v27 = sub_100066C80(v26, &qword_1001287D0, &qword_1000E6C30);
  }

  else
  {
    v28 = v42;
    (*(v23 + 32))(v42, v26, v9);
    Date.timeIntervalSinceReferenceDate.getter();
    v50 = &type metadata for Double;
    *&v49 = v29;
    sub_1000AF7F4(&v49, v48);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v15;
    sub_1000AEE80(v48, 0x696669646F4D6B63, 0xEE00657461446465, v30);
    v27 = (*(v23 + 8))(v28, v9);
  }

  v31 = v46;
  v32 = (*(*v45 + 328))(v27);
  if (v31)
  {
  }

  v34 = v32;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v40;
  *(inited + 56) = v41;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v49 = 0;
  v38 = [v34 updateFor:isa value:v37 attributes:0 error:&v49];

  if (v38)
  {
    return v49;
  }

  v39 = v49;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

BOOL sub_1000D1CA8(uint64_t a1, uint64_t a2)
{
  v6 = (*(*v2 + 328))();
  if (!v3)
  {
    v8 = v6;
    sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000E61E0;
    *(inited + 32) = 0x614E64726F636572;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    sub_1000AF988(inited);
    swift_setDeallocating();
    sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = String._bridgeToObjectiveC()();
    v20 = 0;
    v21 = 0;
    v12 = [v8 queryForColumn:isa column:v11 attributes:0 values:&v21 error:&v20];

    v13 = v21;
    v14 = v20;
    if (v12)
    {
      if (v13)
      {
        v15 = v13;
        v16 = [v15 count];

        return v16 > 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v17 = v14;
      v18 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v7;
}

uint64_t sub_1000D1ED0()
{
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000D1F20()
{
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000D1F80()
{
  *(v1 + 24) = v0;

  return _swift_task_switch(sub_1000D2010, v0, 0);
}

uint64_t sub_1000D2010()
{
  v1 = (*(**(v0 + 24) + 328))();
  sub_1000AF988(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v3 = [v1 deleteFor:isa attributes:0 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v9 = *(v0 + 8);
    v5 = v4;
    v6 = v9;
  }

  else
  {
    v7 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_1000D21B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000D21D0, v1, 0);
}

uint64_t sub_1000D21D0()
{
  v1 = *(**(v0 + 24) + 184);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000D225C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000D2280, v2, 0);
}

uint64_t sub_1000D2280()
{
  v22 = v0;
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_10012B758);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v20 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = (*(*v5 + 200))();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = sub_100065658(v8, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    if (v20)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    if (v20)
    {
      v13 = v1;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    v14 = sub_100065658(v12, v13, &v21);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Update account identifier from %s to %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v0[3];
  v16 = v0[2];
  v17 = *(*v0[4] + 208);

  v17(v16, v15);
  v18 = v0[1];

  return v18();
}

uint64_t sub_1000D24EC()
{
  *(v1 + 360) = v0;

  return _swift_task_switch(sub_1000D257C, v0, 0);
}

uint64_t sub_1000D257C()
{
  v1 = v0[45];
  v2 = *(*v1 + 200);
  v3 = (*v1 + 200) & 0xFFFFFFFFFFFFLL | 0xFCE0000000000000;
  v0[46] = v2;
  v0[47] = v3;
  v2();
  if (v4)
  {
  }

  else
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100066000(v10, qword_10012B758);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "accountIdentifier is not set, will to get from syncedDatabase (to fetch it)", v13, 2u);
    }

    v14 = v0[45];

    v15 = (*(*v14 + 176))();
    v0[48] = v15;
    if (v15)
    {
      v68 = (*(*v15 + 216) + **(*v15 + 216));
      v16 = swift_task_alloc();
      v0[49] = v16;
      *v16 = v0;
      v16[1] = sub_1000D2F90;
      v17 = v68;

      return v17();
    }

    v5 = (*(*v0[45] + 208))(0, 0);
  }

  v6 = (v0[46])(v5);
  if (!v7)
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100066000(v19, qword_10012B758);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "account identifier is unknown for querying cloud KVData size", v22, 2u);
    }

    sub_1000B9568();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_100092A98();
    swift_allocError();
    *v29 = v24;
    *(v29 + 8) = v26;
    *(v29 + 16) = v28;
    goto LABEL_18;
  }

  v8 = v6;
  v9 = v7;
  v70 = (*(*v0[45] + 328))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  strcpy((inited + 32), "recordAccount");
  *(inited + 72) = &type metadata for String;
  *(inited + 46) = -4864;
  *(inited + 48) = v8;
  v67 = v8;
  *(inited + 56) = v9;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1000E61E0;
  *(v32 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v32 + 40) = v33;
  *(v32 + 72) = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
  *(v32 + 48) = &off_100118928;
  sub_1000AF988(v32);
  swift_setDeallocating();
  sub_100066C80(v32 + 32, &qword_100129070, &qword_1000E7440);
  v34 = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[42] = 0;
  v35 = [v70 queryRowDictionariesFor:isa attributes:v34 error:v0 + 42];

  v36 = v0[42];
  if (!v35)
  {
    v61 = v36;

    _convertNSErrorToError(_:)();

LABEL_18:
    swift_willThrow();
    v17 = v0[1];

    return v17();
  }

  sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v36;

  v39 = *(v37 + 16);
  if (v39)
  {
    v69 = 0;
    v40 = v37 + 32;
    v71 = _swiftEmptyArrayStorage;
    while (1)
    {
      v41 = *v40;
      if (*(*v40 + 16))
      {

        v42 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL);
        if (v43)
        {
          sub_100066130(*(v41 + 56) + 32 * v42, (v0 + 22));
          if (swift_dynamicCast())
          {
            v44 = v0[39];
            if (*(v41 + 16))
            {
              v45 = v0[38];
              v46 = sub_100065A98(0x657A695361746164, 0xE800000000000000);
              if (v47 & 1) != 0 && (sub_100066130(*(v41 + 56) + 32 * v46, (v0 + 26)), (swift_dynamicCast()) && *(v41 + 16) && (v66 = v0[43], v48 = sub_100065A98(0x74617453636E7973, 0xE900000000000065), (v49) && (sub_100066130(*(v41 + 56) + 32 * v48, (v0 + 30)), (swift_dynamicCast()) && (v64 = v0[44], v64 >= sub_1000C1778(2)) && v64 < sub_1000C1778(4))
              {
                v50 = __OFADD__(v69, v66);
                v69 += v66;
                if (v50)
                {
                  __break(1u);
                }

                if (*(v41 + 16) && (v51 = sub_100065A98(0x614864726F636572, 0xEC000000656C646ELL), (v52 & 1) != 0))
                {
                  sub_100066130(*(v41 + 56) + 32 * v51, (v0 + 34));

                  v53 = swift_dynamicCast();
                  if (v53)
                  {
                    v54 = v0[40];
                  }

                  else
                  {
                    v54 = 0;
                  }

                  if (v53)
                  {
                    v55 = v0[41];
                  }

                  else
                  {
                    v55 = 0;
                  }

                  v63 = v55;
                }

                else
                {

                  v54 = 0;
                  v63 = 0;
                }

                v65 = v54;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v71 = sub_1000DAD0C(0, v71[2] + 1, 1, v71);
                }

                v57 = v71[2];
                v56 = v71[3];
                v58 = v57 + 1;
                if (v57 >= v56 >> 1)
                {
                  v60 = sub_1000DAD0C((v56 > 1), v57 + 1, 1, v71);
                  v58 = v57 + 1;
                  v71 = v60;
                }

                v71[2] = v58;
                v59 = &v71[5 * v57];
                v59[4] = v45;
                v59[5] = v44;
                v59[6] = v65;
                v59[7] = v63;
                v59[8] = v66;
              }

              else
              {
              }

              goto LABEL_27;
            }
          }
        }
      }

LABEL_27:
      v40 += 8;
      if (!--v39)
      {
        goto LABEL_58;
      }
    }
  }

  v69 = 0;
  v71 = _swiftEmptyArrayStorage;
LABEL_58:

  v62 = v0[1];

  return v62(v67, v9, v69, v71);
}

uint64_t sub_1000D2F90(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 400) = v2;

  if (v2)
  {
    v7 = v6[45];
    v8 = sub_1000A7080;
  }

  else
  {
    v9 = v6[45];

    v6[51] = a2;
    v6[52] = a1;
    v8 = sub_1000D3118;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000D3118()
{
  v1 = *(v0 + 400);
  v2 = (*(**(v0 + 360) + 208))(*(v0 + 416), *(v0 + 408));
  v3 = (*(v0 + 368))(v2);
  if (!v4)
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100066000(v8, qword_10012B758);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "account identifier is unknown for querying cloud KVData size", v11, 2u);
    }

    sub_1000B9568();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    sub_100092A98();
    swift_allocError();
    *v18 = v13;
    *(v18 + 8) = v15;
    *(v18 + 16) = v17;
    goto LABEL_9;
  }

  v5 = v3;
  v6 = v4;
  v7 = (*(**(v0 + 360) + 328))();
  if (v1)
  {

LABEL_10:
    v19 = *(v0 + 8);

    return v19();
  }

  v60 = v7;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  strcpy((inited + 32), "recordAccount");
  *(inited + 72) = &type metadata for String;
  *(inited + 46) = -4864;
  *(inited + 48) = v5;
  v58 = v5;
  *(inited + 56) = v6;

  sub_1000AF988(inited);
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1000E61E0;
  *(v23 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v23 + 40) = v24;
  *(v23 + 72) = sub_10005F5CC(&qword_100128860, &qword_1000E61F0);
  *(v23 + 48) = &off_100118928;
  sub_1000AF988(v23);
  swift_setDeallocating();
  sub_100066C80(v23 + 32, &qword_100129070, &qword_1000E7440);
  v25 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 336) = 0;
  v26 = [v60 queryRowDictionariesFor:isa attributes:v25 error:v0 + 336];

  v27 = *(v0 + 336);
  if (!v26)
  {
    v52 = v27;

    _convertNSErrorToError(_:)();

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v27;

  v30 = *(v28 + 16);
  if (v30)
  {
    v59 = 0;
    v31 = v28 + 32;
    v61 = _swiftEmptyArrayStorage;
    while (1)
    {
      v32 = *v31;
      if (*(*v31 + 16))
      {

        v33 = sub_100065A98(0x614E64726F636572, 0xEA0000000000656DLL);
        if (v34)
        {
          sub_100066130(*(v32 + 56) + 32 * v33, v0 + 176);
          if (swift_dynamicCast())
          {
            v35 = *(v0 + 312);
            if (*(v32 + 16))
            {
              v36 = *(v0 + 304);
              v37 = sub_100065A98(0x657A695361746164, 0xE800000000000000);
              if (v38 & 1) != 0 && (sub_100066130(*(v32 + 56) + 32 * v37, v0 + 208), (swift_dynamicCast()) && *(v32 + 16) && (v57 = *(v0 + 344), v39 = sub_100065A98(0x74617453636E7973, 0xE900000000000065), (v40) && (sub_100066130(*(v32 + 56) + 32 * v39, v0 + 240), (swift_dynamicCast()) && (v55 = *(v0 + 352), v55 >= sub_1000C1778(2)) && v55 < sub_1000C1778(4))
              {
                v41 = __OFADD__(v59, v57);
                v59 += v57;
                if (v41)
                {
                  __break(1u);
                }

                if (*(v32 + 16) && (v42 = sub_100065A98(0x614864726F636572, 0xEC000000656C646ELL), (v43 & 1) != 0))
                {
                  sub_100066130(*(v32 + 56) + 32 * v42, v0 + 272);

                  v44 = swift_dynamicCast();
                  if (v44)
                  {
                    v45 = *(v0 + 320);
                  }

                  else
                  {
                    v45 = 0;
                  }

                  if (v44)
                  {
                    v46 = *(v0 + 328);
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v54 = v46;
                }

                else
                {

                  v45 = 0;
                  v54 = 0;
                }

                v56 = v45;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v61 = sub_1000DAD0C(0, v61[2] + 1, 1, v61);
                }

                v48 = v61[2];
                v47 = v61[3];
                v49 = v48 + 1;
                if (v48 >= v47 >> 1)
                {
                  v51 = sub_1000DAD0C((v47 > 1), v48 + 1, 1, v61);
                  v49 = v48 + 1;
                  v61 = v51;
                }

                v61[2] = v49;
                v50 = &v61[5 * v48];
                v50[4] = v36;
                v50[5] = v35;
                v50[6] = v56;
                v50[7] = v54;
                v50[8] = v57;
              }

              else
              {
              }

              goto LABEL_18;
            }
          }
        }
      }

LABEL_18:
      v31 += 8;
      if (!--v30)
      {
        goto LABEL_49;
      }
    }
  }

  v59 = 0;
  v61 = _swiftEmptyArrayStorage;
LABEL_49:

  v53 = *(v0 + 8);

  return v53(v58, v6, v59, v61);
}

uint64_t sub_1000D38EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_10005F5CC(&unk_100129060, &qword_1000E7D50);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000D398C, v3, 0);
}

uint64_t sub_1000D398C()
{
  v20 = v0;
  (*(**(v0 + 40) + 304))(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);
  v2 = type metadata accessor for MACloudKVSRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_100066C80(v1, &unk_100129060, &qword_1000E7D50);
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100066000(v3, qword_10012B758);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 24);
      v6 = *(v0 + 32);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100065658(v7, v6, &v19);
      _os_log_impl(&_mh_execute_header, v4, v5, "failed to fetch local record for recordName: %s", v8, 0xCu);
      sub_10005D588(v9);
    }

    sub_1000B9568();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    sub_100092A98();
    swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v13;
    *(v16 + 16) = v15;
    swift_willThrow();

    v17 = *(v0 + 8);
  }

  else
  {
    sub_1000DB490(v1, *(v0 + 16));

    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_1000D3C20(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10005F5CC(&unk_100129060, &qword_1000E7D50);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for MACloudKVSRecord(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000D3D18, v1, 0);
}

uint64_t sub_1000D3D18()
{
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_100066000(v2, qword_10012B758);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting createCKRecord %@", v7, 0xCu);
    sub_100066C80(v8, &qword_1001287F0, &qword_1000E6C40);
  }

  v10 = v0[3];
  v11 = v0[2];

  v12 = [v11 recordName];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  (*(*v10 + 304))(v13, v15);
  v16 = v0[5];
  v17 = v0[6];
  v18 = v0[4];

  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_100066C80(v0[4], &unk_100129060, &qword_1000E7D50);
    v19 = 0;
  }

  else
  {
    v22 = v0[2];
    sub_1000DB490(v0[4], v0[7]);
    sub_100092C8C(0, &unk_100129090, CKRecord_ptr);
    v23 = v22;
    v24._countAndFlagsBits = 0x726F7453564B414DLL;
    v24._object = 0xE900000000000065;
    isa = CKRecord.init(recordType:recordID:)(v24, v23).super.isa;
    sub_1000C88CC(isa);
    v19 = isa;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v19;
      *v29 = v19;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v26, v27, "fetchLocalRecord returns %@", v28, 0xCu);
      sub_100066C80(v29, &qword_1001287F0, &qword_1000E6C40);
    }

    sub_1000DB558(v0[7]);
  }

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_1000D40F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000D4114, v1, 0);
}

uint64_t sub_1000D4114()
{
  v14 = v0;
  v1 = [*(v0 + 16) recordID];
  v2 = [v1 recordName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_10012B758);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100065658(v3, v5, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "Upload completed for %s, upload local sync state to uploaded", v9, 0xCu);
    sub_10005D588(v10);
  }

  sub_1000D4308(v3, v5, *(v0 + 16));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000D4308(uint64_t a1, uint64_t a2, void *a3)
{
  v221 = a3;
  *&v218 = a1;
  *(&v218 + 1) = a2;
  v4 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v5 = __chkstk_darwin(v4 - 8);
  v213 = &v207 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v212 = &v207 - v7;
  v8 = sub_10005F5CC(&unk_100129060, &qword_1000E7D50);
  __chkstk_darwin(v8 - 8);
  v217 = &v207 - v9;
  v10 = type metadata accessor for MACloudKVSRecord(0);
  v215 = *(v10 - 8);
  v216 = v10;
  v11 = __chkstk_darwin(v10);
  v214 = &v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v207 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v211 = &v207 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v210 = &v207 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v207 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v207 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v207 - v28;
  v30 = *(*v3 + 200);
  v223 = v3;
  v31 = v30(v27);
  if (!v32)
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100066000(v66, qword_10012B758);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "account identifier is unknown for uploading status", v69, 2u);
    }

    goto LABEL_14;
  }

  v33 = v31;
  v34 = v32;
  v209 = v14;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v36 = v35;
  v208 = v16;
  v219 = *(v16 + 8);
  v220 = v16 + 8;
  v219(v29, v15);
  v37 = sub_1000AF988(_swiftEmptyArrayStorage);
  v38 = sub_1000C1778(2);
  v228 = &type metadata for Int;
  *&v227 = v38;
  sub_1000AF7F4(&v227, v226);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v225 = v37;
  sub_1000AEE80(v226, 0x74617453636E7973, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v40 = v225;
  v228 = &type metadata for String;
  *&v227 = v33;
  *(&v227 + 1) = v34;
  sub_1000AF7F4(&v227, v226);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v225 = v40;
  sub_1000AEE80(v226, 0x634164726F636572, 0xED0000746E756F63, v41);
  v42 = v225;
  v228 = &type metadata for Double;
  *&v227 = v36;
  sub_1000AF7F4(&v227, v226);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v225 = v42;
  sub_1000AEE80(v226, 0x6144636E79536B63, 0xEA00000000006574, v43);
  v44 = v225;
  v45 = v221;
  v46 = [v221 etag];
  v47 = v15;
  if (v46)
  {
    v48 = v46;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v228 = &type metadata for String;
    *&v227 = v49;
    *(&v227 + 1) = v51;
    v47 = v15;
    sub_1000AF7F4(&v227, v226);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v225 = v44;
    sub_1000AEE80(v226, 0x676154456B63, 0xE600000000000000, v52);
    v44 = v225;
  }

  v53 = v223;
  v54 = [v45 creationDate];
  v55 = v219;
  if (v54)
  {
    v56 = v54;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v228 = &type metadata for Double;
    *&v227 = v57;
    sub_1000AF7F4(&v227, v226);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v225 = v44;
    sub_1000AEE80(v226, 0x6574616572436B63, 0xED00006574614464, v58);
    v55(v26, v47);
    v44 = v225;
  }

  v59 = [v45 modificationDate];
  if (v59)
  {
    v60 = v59;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v228 = &type metadata for Double;
    *&v227 = v61;
    sub_1000AF7F4(&v227, v226);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v225 = v44;
    sub_1000AEE80(v226, 0x696669646F4D6B63, 0xEE00657461446465, v62);
    v55(v23, v47);
  }

  v63 = v222;
  v64 = (*(*v53 + 328))();
  if (v63)
  {
  }

  v77 = v64;
  v221 = v47;
  v222 = 0;
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1000E61E0;
  *(v78 + 32) = 0x614E64726F636572;
  *(v78 + 72) = &type metadata for String;
  v79 = v218;
  *(v78 + 40) = 0xEA0000000000656DLL;
  *(v78 + 48) = v79;

  sub_1000AF988(v78);
  swift_setDeallocating();
  sub_100066C80(v78 + 32, &qword_100129070, &qword_1000E7440);
  swift_deallocClassInstance();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v81 = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v227 = 0;
  v82 = [v77 updateFor:isa value:v81 attributes:0 error:&v227];

  if (!v82)
  {
    v91 = v227;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v83 = *(*v223 + 304);
  v84 = v227;
  v85 = v217;
  v86 = v222;
  result = v83(v79, *(&v79 + 1));
  if (v86)
  {
    return result;
  }

  if ((*(v215 + 48))(v85, 1, v216) == 1)
  {
    sub_100066C80(v85, &unk_100129060, &qword_1000E7D50);
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_100066000(v87, qword_10012B758);

    v67 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v227 = v90;
      *v89 = 136315138;
      *(v89 + 4) = sub_100065658(v79, *(&v79 + 1), &v227);
      _os_log_impl(&_mh_execute_header, v67, v88, "Failed to fetch local record for synced up record %s", v89, 0xCu);
      sub_10005D588(v90);
    }

LABEL_14:

    sub_1000B9568();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    sub_100092A98();
    swift_allocError();
    *v76 = v71;
    *(v76 + 8) = v73;
    *(v76 + 16) = v75;
    return swift_willThrow();
  }

  v92 = v209;
  sub_1000DB490(v85, v209);
  v93 = v92[4];
  v94 = sub_1000C619C(v93);
  if (!v95)
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_100066000(v97, qword_10012B758);
    v98 = v209;
    v99 = v214;
    sub_1000DB4F4(v209, v214);
    v100 = *(&v218 + 1);

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *&v227 = swift_slowAlloc();
      *v103 = 136315394;
      *&v226[0] = *(v99 + 32);
      type metadata accessor for MASDAssetType(0);
      sub_1000DB5B4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
      v104 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v105;
      sub_1000DB558(v99);
      v107 = sub_100065658(v104, v106, &v227);

      *(v103 + 4) = v107;
      *(v103 + 12) = 2080;
      *(v103 + 14) = sub_100065658(v218, v100, &v227);
      _os_log_impl(&_mh_execute_header, v101, v102, "recordHandleField is not configured for assetType %s, failed record name: %s", v103, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000DB558(v99);
    }

    sub_1000B9568();
    v132 = v131;
    v134 = v133;
    v136 = v135;
    sub_100092A98();
    swift_allocError();
    *v137 = v132;
    *(v137 + 8) = v134;
    *(v137 + 16) = v136;
    swift_willThrow();
    v138 = v98;
    return sub_1000DB558(v138);
  }

  v96 = v92[15];
  v222 = 0;
  if (v96 >> 60 == 15)
  {
    goto LABEL_42;
  }

  v215 = v94;
  v108 = v95;
  v109 = v92[14];
  v110 = objc_opt_self();
  sub_10005F304(v109, v96);
  v111 = Data._bridgeToObjectiveC()().super.isa;
  *&v227 = 0;
  v112 = [v110 propertyListWithData:v111 options:0 format:0 error:&v227];

  if (!v112)
  {
    v139 = v227;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10005F69C(v109, v96);
    v138 = v92;
    return sub_1000DB558(v138);
  }

  v217 = v109;
  v113 = v227;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
  if (swift_dynamicCast())
  {
    v225 = *&v226[0];
    v114 = v209;
    v115 = v209[3];
    if (v115)
    {
      v207 = v209[2];
      sub_1000AE570(v215, v108, &v227);

      sub_100066C80(&v227, &unk_100128830, &qword_1000E7D40);
      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v117;
      v228 = &type metadata for Int;
      *&v227 = 0;
      sub_1000AF7F4(&v227, v226);
      v119 = v225;
      v120 = swift_isUniquelyReferenced_nonNull_native();
      v224 = v119;
      sub_1000AEE80(v226, v116, v118, v120);

      v121 = v224;
      v225 = v224;
      v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v124 = v123;
      v228 = &type metadata for String;
      v227 = v218;
      sub_1000AF7F4(&v227, v226);

      v125 = swift_isUniquelyReferenced_nonNull_native();
      v224 = v121;
      sub_1000AEE80(v226, v122, v124, v125);

      v126 = v224;
      v225 = v224;
      v127 = v212;
      sub_1000939A8(v114 + *(v216 + 68), v212, &qword_1001287D0, &qword_1000E6C30);
      v128 = v208;
      v129 = *(v208 + 48);
      v130 = v221;
      if (v129(v127, 1, v221) == 1)
      {
        sub_100066C80(v127, &qword_1001287D0, &qword_1000E6C30);
      }

      else
      {
        v161 = v210;
        (*(v128 + 32))(v210, v127, v130);
        v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v215 = v115;
        v163 = v162;
        Date.timeIntervalSinceReferenceDate.getter();
        v228 = &type metadata for Double;
        *&v227 = v164;
        sub_1000AF7F4(&v227, v226);
        v165 = v225;
        v166 = swift_isUniquelyReferenced_nonNull_native();
        v224 = v165;
        sub_1000AEE80(v226, v212, v163, v166);

        v219(v161, v130);
        v126 = v224;
        v225 = v224;
      }

      v167 = v213;
      sub_1000939A8(v209 + *(v216 + 72), v213, &qword_1001287D0, &qword_1000E6C30);
      v168 = v129(v167, 1, v130);
      v214 = v96;
      if (v168 == 1)
      {
        sub_100066C80(v167, &qword_1001287D0, &qword_1000E6C30);
      }

      else
      {
        v169 = v211;
        (*(v128 + 32))(v211, v167, v130);
        v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v172 = v171;
        Date.timeIntervalSinceReferenceDate.getter();
        v228 = &type metadata for Double;
        *&v227 = v173;
        sub_1000AF7F4(&v227, v226);
        v174 = v225;
        v175 = swift_isUniquelyReferenced_nonNull_native();
        v224 = v174;
        sub_1000AEE80(v226, v170, v172, v175);

        v219(v169, v130);
        v126 = v224;
        v225 = v224;
      }

      v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v178 = v177;
      v228 = &type metadata for UInt;
      *&v227 = 512;
      sub_1000AF7F4(&v227, v226);
      v179 = swift_isUniquelyReferenced_nonNull_native();
      v224 = v126;
      sub_1000AEE80(v226, v176, v178, v179);

      v180 = v224;
      v225 = v224;
      v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v183 = v182;
      v228 = &type metadata for Double;
      *&v227 = v36;
      sub_1000AF7F4(&v227, v226);
      v184 = swift_isUniquelyReferenced_nonNull_native();
      v224 = v180;
      sub_1000AEE80(v226, v181, v183, v184);

      v185 = v223[15];
      v186 = String._bridgeToObjectiveC()();
      v187 = v209;
      v188 = String._bridgeToObjectiveC()();
      v189 = String._bridgeToObjectiveC()();
      v190 = *(v187 + 88);
      v191 = Dictionary._bridgeToObjectiveC()().super.isa;

      LODWORD(v180) = [v185 didSyncUpKVSData:v186 assetType:v93 storeName:v188 storeGroup:v189 profileType:v190 data:v191];

      if (v180)
      {
        v192 = v214;
        v193 = v217;
        if (qword_10012B750 != -1)
        {
          swift_once();
        }

        v194 = type metadata accessor for Logger();
        sub_100066000(v194, qword_10012B758);
        v195 = Logger.logObject.getter();
        v196 = static os_log_type_t.info.getter();
        v197 = os_log_type_enabled(v195, v196);
        v150 = v209;
        if (v197)
        {
          v198 = swift_slowAlloc();
          *v198 = 0;
          _os_log_impl(&_mh_execute_header, v195, v196, "Delegate notified that KVS data was synced up", v198, 2u);
        }

        sub_10005F69C(v193, v192);
      }

      else
      {
        v199 = v214;
        if (qword_10012B750 != -1)
        {
          swift_once();
        }

        v200 = type metadata accessor for Logger();
        sub_100066000(v200, qword_10012B758);
        v201 = *(&v218 + 1);

        v202 = Logger.logObject.getter();
        v203 = static os_log_type_t.error.getter();

        v204 = os_log_type_enabled(v202, v203);
        v150 = v209;
        if (v204)
        {
          v205 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          *&v227 = v206;
          *v205 = 136315138;
          *(v205 + 4) = sub_100065658(v218, v201, &v227);
          _os_log_impl(&_mh_execute_header, v202, v203, "Delegate failed to process didSyncUpKVSData for recordName: %s", v205, 0xCu);
          sub_10005D588(v206);
        }

        sub_10005F69C(v217, v199);
      }
    }

    else
    {

      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v145 = type metadata accessor for Logger();
      sub_100066000(v145, qword_10012B758);
      v146 = *(&v218 + 1);

      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.error.getter();

      v149 = os_log_type_enabled(v147, v148);
      v150 = v209;
      v151 = v218;
      if (v149)
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        *&v227 = v153;
        *v152 = 136315138;
        *(v152 + 4) = sub_100065658(v151, v146, &v227);
        _os_log_impl(&_mh_execute_header, v147, v148, "recordHandle not found for synced up record with recordName %s", v152, 0xCu);
        sub_10005D588(v153);
      }

      sub_1000B9568();
      v155 = v154;
      v157 = v156;
      v159 = v158;
      sub_100092A98();
      swift_allocError();
      *v160 = v155;
      *(v160 + 8) = v157;
      *(v160 + 16) = v159;
      swift_willThrow();
      sub_10005F69C(v217, v96);
    }

    v138 = v150;
    return sub_1000DB558(v138);
  }

  sub_10005F69C(v217, v96);
LABEL_42:

  v140 = v209;
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v141 = type metadata accessor for Logger();
  sub_100066000(v141, qword_10012B758);
  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    *v144 = 0;
    _os_log_impl(&_mh_execute_header, v142, v143, "Invalid serialized KVSRecord from cloud", v144, 2u);
  }

  return sub_1000DB558(v140);
}

uint64_t sub_1000D5A90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MACloudKVSRecord(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_10005F5CC(&unk_100129060, &qword_1000E7D50);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000D5B94, v1, 0);
}

uint64_t sub_1000D5B94()
{
  v62 = v0;
  v1 = [*(v0 + 16) recordName];
  v2 = v1;
  v3 = v1;
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v4 = *(v0 + 24);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = *(*v4 + 304);
  v9 = v1;
  v8(v5, v7);
  v10 = *(v0 + 56);
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  sub_1000939A8(*(v0 + 64), v10, &unk_100129060, &qword_1000E7D50);
  v13 = (*(v12 + 48))(v10, 1, v11);
  v14 = *(v0 + 56);
  if (v13 != 1)
  {
    v27 = *(v0 + 48);
    v28 = *(v0 + 24);

    sub_1000DB490(v14, v27);
    v29 = *(v28 + 120);
    if (*(v27 + 24))
    {
      v30 = String._bridgeToObjectiveC()();
    }

    else
    {
      v30 = 0;
    }

    v38 = *(v0 + 48);
    v39 = *(v38 + 32);
    v40 = String._bridgeToObjectiveC()();
    v41 = String._bridgeToObjectiveC()();
    v42 = [v29 didSyncUpKVSDataDelete:v3 recordHandle:v30 assetType:v39 storeName:v40 storeGroup:v41 profileType:*(v38 + 88)];

    if (v42)
    {

      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100066000(v43, qword_10012B758);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_27;
      }

      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Delegate notified KVSData delete synced up", v46, 2u);
    }

    else
    {
      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100066000(v47, qword_10012B758);

      v44 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v44, v48))
      {

        goto LABEL_32;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v61[0] = v50;
      *v49 = 136315138;
      v51 = sub_100065658(v5, v7, v61);

      *(v49 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v48, "Delegate failed to process didSyncUpKVSDataDelete for recordName: %s", v49, 0xCu);
      sub_10005D588(v50);
    }

LABEL_27:

LABEL_32:
    v52 = *(v0 + 64);
    v53 = *(v0 + 48);
    v54 = *(v0 + 24);
    v55 = [*(v0 + 16) recordName];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    (*(*v54 + 296))(v56, v58);
    sub_100066C80(v52, &unk_100129060, &qword_1000E7D50);

    sub_1000DB558(v53);
    goto LABEL_33;
  }

  sub_100066C80(v14, &unk_100129060, &qword_1000E7D50);
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100066000(v15, qword_10012B758);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v61[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100065658(v5, v7, v61);
    _os_log_impl(&_mh_execute_header, v16, v17, "synced up KVSData Delete with recordName: %s is not in local cache", v18, 0xCu);
    sub_10005D588(v19);
  }

  v20 = [*(*(v0 + 24) + 120) didSyncUpKVSDataDelete:v2 recordHandle:0 assetType:121 storeName:kMARXDataSharingStore storeGroup:kMACoreRXUserGroup profileType:-1];
  if (v20)
  {

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 64);
    if (v23)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Delegate notified KVSData delete synced up", v25, 2u);
    }

    v26 = v24;
  }

  else
  {

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 64);
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v61[0] = v36;
      *v35 = 136315138;
      v37 = sub_100065658(v5, v7, v61);

      *(v35 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Delegate failed to process didSyncUpKVSDataDelete for recordName: %s", v35, 0xCu);
      sub_10005D588(v36);
    }

    else
    {
    }

    v26 = v34;
  }

  sub_100066C80(v26, &unk_100129060, &qword_1000E7D50);
LABEL_33:

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_1000D637C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10005F5CC(&unk_100129060, &qword_1000E7D50);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for MACloudKVSRecord(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000D6478, v2, 0);
}

uint64_t sub_1000D6478()
{
  v26 = v0;
  v1 = *(v0 + 32);
  v2 = [*(v0 + 16) recordName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  (*(*v1 + 304))(v3, v5);
  v6 = *(v0 + 40);
  if ((*(*(v0 + 56) + 48))(v6, 1, *(v0 + 48)) == 1)
  {
    sub_100066C80(v6, &unk_100129060, &qword_1000E7D50);
  }

  else
  {
    v7 = *(v0 + 64);
    sub_1000DB490(v6, v7);
    v8 = *(v0 + 64);
    if (*(v7 + 24))
    {
      v9 = *(v0 + 32);

      v10 = *(v9 + 120);
      v11 = String._bridgeToObjectiveC()();
      v12 = *(v8 + 32);
      v13 = String._bridgeToObjectiveC()();
      v14 = String._bridgeToObjectiveC()();
      v15 = *(v8 + 88);
      v16 = _convertErrorToNSError(_:)();
      [v10 failedToDeleteKVSData:v11 assetType:v12 storeName:v13 storeGroup:v14 profileType:v15 error:v16];

      sub_1000DB558(v8);
      goto LABEL_11;
    }

    sub_1000DB558(*(v0 + 64));
  }

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100066000(v17, qword_10012B758);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315138;
    v22 = sub_100065658(v3, v5, &v25);

    *(v20 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to fetch local record for to be deleted recordName: %s", v20, 0xCu);
    sub_10005D588(v21);
  }

  else
  {
  }

LABEL_11:

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1000D67DC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_1000D686C, v1, 0);
}

uint64_t sub_1000D686C()
{
  v55 = v0;
  v1 = v0[4];
  v2 = (*(*v1 + 224))();
  (*(*v1 + 232))(0);
  if (v2)
  {
    if (qword_10012B750 != -1)
    {
      swift_once();
    }

    v3 = v0[3];
    v4 = type metadata accessor for Logger();
    sub_100066000(v4, qword_10012B758);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[3];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v54 = v10;
      *v9 = 136315138;
      v11 = [v8 zoneName];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_100065658(v12, v14, &v54);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Starting Manatee Identity Recovery by re-uploading local records for %s", v9, 0xCu);
      sub_10005D588(v10);
    }

    v16 = 5;
  }

  else
  {
    v16 = 4;
  }

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100066000(v17, qword_10012B758);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100065658(0x4B414D64756F6C43, 0xEE0065726F745356, &v54);
    _os_log_impl(&_mh_execute_header, v18, v19, "Delete all local records cached in %s after zone deleted", v20, 0xCu);
    sub_10005D588(v21);
  }

  v22 = (*(*v0[4] + 328))();
  sub_1000AF988(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v0[2] = 0;
  v24 = [v22 deleteFor:isa attributes:0 error:v0 + 2];

  v25 = v0[2];
  if (!v24)
  {
    v45 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v46 = v0[1];
    goto LABEL_19;
  }

  v26 = v0[3];
  v27 = *(v0[4] + 120);
  v28 = v25;
  v29 = [v26 zoneName];
  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  v30 = v0[3];
  v31 = [v27 didReceiveKVSDataZoneDelete:v29 reason:v16];

  v32 = v30;
  v33 = Logger.logObject.getter();
  v34 = v0[3];
  if (v31)
  {
    LOBYTE(v35) = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v33, v35))
    {
      v36 = v0[3];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = 136315138;
      v39 = [v36 zoneName];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_100065658(v40, v42, &v54);

      *(v37 + 4) = v43;
      v44 = "Delegate notified that zoneDelete for %s is synced up to cloud";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v33, v35, v44, v37, 0xCu);
      sub_10005D588(v38);
    }
  }

  else
  {
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v35))
    {
      v48 = v0[3];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = 136315138;
      v49 = [v48 zoneName];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = sub_100065658(v50, v52, &v54);

      *(v37 + 4) = v53;
      v44 = "Delegate failed to process zoneDeleteSyncedUp for zoneName: %s";
      goto LABEL_24;
    }
  }

  v46 = v0[1];
LABEL_19:

  return v46();
}

uint64_t sub_1000D6EE0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000D6F04, v2, 0);
}

uint64_t sub_1000D6F04()
{
  v1 = *(*(v0 + 32) + 120);
  v2 = [*(v0 + 16) zoneName];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = _convertErrorToNSError(_:)();
  [v1 failedToDeleteKVSZone:v2 error:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000D6FD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for MACloudKVSRecord(0);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_10005F5CC(&unk_100129060, &qword_1000E7D50);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000D71A0, v2, 0);
}

uint64_t sub_1000D71A0()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 16) recordID];
  v3 = [v2 recordName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  (*(*v1 + 304))(v4, v6);
  v56 = v6;
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v9 = *(v0 + 112);
  v10 = *(v0 + 96);
  v54 = v4;
  v55 = *(v0 + 88);
  v11 = *(v0 + 32);
  v12 = *(*v11 + 25);
  v13 = *(v0 + 24);
  v14 = v12();
  sub_1000C8DE0(v13, v14, v15, v11[14], v9);
  sub_1000939A8(v7, v8, &unk_100129060, &qword_1000E7D50);
  v16 = *(v10 + 48);
  v17 = v16(v8, 1, v55);
  v18 = *(v0 + 128);
  if (v17 == 1)
  {
    sub_100066C80(v18, &unk_100129060, &qword_1000E7D50);
  }

  else
  {
    v19 = *(v0 + 112);
    sub_1000DB490(v18, *(v0 + 104));
    if (sub_1000C7594(v19))
    {
      v20 = *(v0 + 136);
      v22 = *(v0 + 104);
      v21 = *(v0 + 112);
      sub_1000D4308(v54, v56, *(v0 + 24));

      sub_1000DB558(v22);
      sub_1000DB558(v21);
      sub_100066C80(v20, &unk_100129060, &qword_1000E7D50);
      v23 = 0;
      goto LABEL_15;
    }

    sub_1000DB558(*(v0 + 104));
  }

  v24 = *(v0 + 120);
  v25 = *(v0 + 88);
  sub_1000939A8(*(v0 + 136), v24, &unk_100129060, &qword_1000E7D50);
  v26 = v16(v24, 1, v25);
  v27 = *(v0 + 120);
  if (v26 == 1)
  {
    v28 = *(v0 + 56);
    v29 = *(v0 + 64);
    v30 = *(v0 + 48);
    sub_100066C80(v27, &unk_100129060, &qword_1000E7D50);
    (*(v29 + 56))(v30, 1, 1, v28);
LABEL_9:
    v37 = *(v0 + 48);
LABEL_10:
    sub_100066C80(v37, &qword_1001287D0, &qword_1000E6C30);
LABEL_11:
    v38 = *(v0 + 136);
    v39 = *(v0 + 112);
    (*(**(v0 + 32) + 312))(v54, v56, v39);

    sub_1000DB558(v39);
    sub_100066C80(v38, &unk_100129060, &qword_1000E7D50);
    v23 = 1;
LABEL_15:

    v41 = *(v0 + 8);

    return v41(v23);
  }

  v31 = *(v0 + 88);
  v32 = *(v0 + 56);
  v33 = *(v0 + 64);
  v34 = *(v0 + 48);
  v35 = *(v0 + 120);
  sub_1000939A8(v27 + *(v31 + 60), v34, &qword_1001287D0, &qword_1000E6C30);
  sub_1000DB558(v35);
  v36 = *(v33 + 48);
  if (v36(v34, 1, v32) == 1)
  {
    goto LABEL_9;
  }

  v42 = *(v0 + 112);
  v43 = *(v0 + 56);
  v44 = *(v0 + 40);
  v45 = *(*(v0 + 64) + 32);
  v45(*(v0 + 80), *(v0 + 48), v43);
  sub_1000939A8(v42 + *(v31 + 60), v44, &qword_1001287D0, &qword_1000E6C30);
  if (v36(v44, 1, v43) == 1)
  {
    v46 = *(v0 + 40);
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    v37 = v46;
    goto LABEL_10;
  }

  v45(*(v0 + 72), *(v0 + 40), *(v0 + 56));
  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    v51 = *(v0 + 80);
    v52 = *(v0 + 56);
    v53 = *(*(v0 + 64) + 8);
    v53(*(v0 + 72), v52);
    v53(v51, v52);
    goto LABEL_11;
  }

  v47 = *(v0 + 32);

  v57 = (*(*v47 + 280) + **(*v47 + 280));
  v48 = swift_task_alloc();
  *(v0 + 144) = v48;
  *v48 = v0;
  v48[1] = sub_1000D7868;
  v49 = *(v0 + 136);
  v50 = *(v0 + 112);

  return v57(v50, v49);
}

uint64_t sub_1000D7868()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1000D7ABC;
  }

  else
  {
    v4 = sub_1000D7994;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000D7994()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  v5 = *(v0[8] + 8);
  v5(v0[9], v4);
  v5(v3, v4);
  sub_1000DB558(v2);
  sub_100066C80(v1, &unk_100129060, &qword_1000E7D50);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1000D7ABC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  v5 = *(v0[8] + 8);
  v5(v0[9], v4);
  v5(v3, v4);
  sub_1000DB558(v2);
  sub_100066C80(v1, &unk_100129060, &qword_1000E7D50);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1000D7BEC(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  sub_10005F5CC(&unk_100129060, &qword_1000E7D50);
  v2[37] = swift_task_alloc();
  v3 = type metadata accessor for MACloudKVSRecord(0);
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7D10, v1, 0);
}

uint64_t sub_1000D7D10()
{
  v43 = v0;
  v1 = [*(v0 + 280) recordID];
  v2 = [v1 recordName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_10012B758);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100065658(v3, v5, &v42);
    _os_log_impl(&_mh_execute_header, v7, v8, "removing ETag for unknown item recordName: %s", v9, 0xCu);
    sub_10005D588(v10);
  }

  v11 = (*(**(v0 + 288) + 328))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v3;
  *(inited + 56) = v5;

  sub_1000AF988(inited);
  v41 = v3;
  swift_setDeallocating();
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1000E6BE0;
  *(v14 + 32) = 0x74617453636E7973;
  *(v14 + 40) = 0xE900000000000065;
  *(v14 + 48) = sub_1000C1778(8);
  *(v14 + 72) = &type metadata for Int;
  *(v14 + 80) = 0x6144636E79536B63;
  *(v14 + 88) = 0xEA00000000006574;
  type metadata accessor for MAKVStoreBase();
  *(v14 + 96) = sub_1000C4DCC();
  *(v14 + 120) = &type metadata for Double;
  *(v14 + 128) = 0x676154456B63;
  *(v14 + 136) = 0xE600000000000000;
  v15 = [objc_allocWithZone(NSNull) init];
  *(v14 + 168) = sub_100092C8C(0, &qword_1001290A0, NSNull_ptr);
  *(v14 + 144) = v15;
  sub_1000AF988(v14);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  swift_arrayDestroy();
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 272) = 0;
  LODWORD(inited) = [v11 updateFor:isa value:v16 attributes:0 error:v0 + 272];

  v17 = *(v0 + 272);
  if (!inited)
  {
    v27 = v17;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    v28 = *(v0 + 8);
    v29 = 0;
    goto LABEL_10;
  }

  v18 = *(**(v0 + 288) + 304);
  v19 = v17;
  v18(v41, v5);
  v20 = *(v0 + 304);
  v21 = *(v0 + 296);
  if ((*(*(v0 + 312) + 48))(v21, 1, v20) == 1)
  {
    sub_100066C80(v21, &unk_100129060, &qword_1000E7D50);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42 = v25;
      *v24 = 136315138;
      v26 = sub_100065658(v41, v5, &v42);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "failed to fetch local record for recordName: %s for unknown item error", v24, 0xCu);
      sub_10005D588(v25);
    }

    else
    {
    }

LABEL_20:
    v40 = 0;
    goto LABEL_21;
  }

  v31 = *(v0 + 320);
  sub_1000DB490(v21, v31);
  if (*(v31 + *(v20 + 64) + 8))
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 320);
    if (v34)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v36 = 136315138;
      v38 = sub_100065658(v41, v5, &v42);

      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to delete ckETag for recordName: %s for unknown item error", v36, 0xCu);
      sub_10005D588(v37);
    }

    else
    {
    }

    sub_1000DB558(v35);
    goto LABEL_20;
  }

  v39 = *(v0 + 320);

  sub_1000DB558(v39);
  v40 = 1;
LABEL_21:

  v28 = *(v0 + 8);
  v29 = v40;
LABEL_10:

  return v28(v29);
}

uint64_t sub_1000D84CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000DB5FC(a1);
}

uint64_t sub_1000D8578(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MACloudKVSRecord(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_10005F5CC(&unk_100129060, &qword_1000E7D50);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000D8670, v1, 0);
}

uint64_t sub_1000D8670()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) recordID];
  v3 = [v2 recordName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  (*(*v1 + 304))(v4, v6);

  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(*v8 + 25);
  v10 = *(v0 + 16);
  v11 = v9();
  sub_1000C8DE0(v10, v11, v12, v8[14], v7);
  v17 = (*(*v8 + 35) + **(*v8 + 35));
  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *v13 = v0;
  v13[1] = sub_1000D88F4;
  v15 = *(v0 + 48);
  v14 = *(v0 + 56);

  return v17(v15, v14);
}

uint64_t sub_1000D88F4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1000D8AB0;
  }

  else
  {
    v4 = sub_1000D8A20;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000D8A20()
{
  v1 = v0[7];
  sub_1000DB558(v0[6]);
  sub_100066C80(v1, &unk_100129060, &qword_1000E7D50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000D8AB0()
{
  v1 = v0[7];
  sub_1000DB558(v0[6]);
  sub_100066C80(v1, &unk_100129060, &qword_1000E7D50);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000D8B40(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10005F5CC(&unk_100129060, &qword_1000E7D50);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for MACloudKVSRecord(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000D8C38, v1, 0);
}

uint64_t sub_1000D8C38()
{
  v50 = v0;
  v1 = [*(v0 + 16) recordName];
  v2 = v1;
  v3 = v1;
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v4 = *(v0 + 24);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = *(*v4 + 304);
  v9 = v1;
  v8(v5, v7);
  v10 = *(v0 + 32);
  if ((*(*(v0 + 48) + 48))(v10, 1, *(v0 + 40)) != 1)
  {
    v20 = *(v0 + 56);
    v21 = *(v0 + 24);

    sub_1000DB490(v10, v20);
    v22 = *(v21 + 120);
    if (*(v20 + 24))
    {
      v23 = String._bridgeToObjectiveC()();
    }

    else
    {
      v23 = 0;
    }

    v28 = *(v0 + 56);
    v29 = *(v28 + 32);
    v30 = String._bridgeToObjectiveC()();
    v31 = String._bridgeToObjectiveC()();
    v32 = [v22 didReceiveKVSDataDelete:v3 recordHandle:v23 assetType:v29 storeName:v30 storeGroup:v31 profileType:*(v28 + 88)];

    if (v32)
    {

      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100066000(v33, qword_10012B758);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_28;
      }

      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Delegate notified KVSData delete synced down", v36, 2u);
    }

    else
    {
      if (qword_10012B750 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100066000(v37, qword_10012B758);

      v34 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v34, v38))
      {

        goto LABEL_31;
      }

      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49[0] = v40;
      *v39 = 136315138;
      v41 = sub_100065658(v5, v7, v49);

      *(v39 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v38, "Delegate failed to process didReceiveKVSDataDelete for recordName: %s", v39, 0xCu);
      sub_10005D588(v40);
    }

LABEL_28:

LABEL_31:
    sub_1000DB558(*(v0 + 56));
    goto LABEL_32;
  }

  sub_100066C80(v10, &unk_100129060, &qword_1000E7D50);
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100066000(v11, qword_10012B758);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v49[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100065658(v5, v7, v49);
    _os_log_impl(&_mh_execute_header, v12, v13, "RecordName %s is not in local cache", v14, 0xCu);
    sub_10005D588(v15);
  }

  v16 = [*(*(v0 + 24) + 120) didReceiveKVSDataDelete:v2 recordHandle:0 assetType:121 storeName:kMARXDataSharingStore storeGroup:kMACoreRXUserGroup profileType:-1];
  if (v16)
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v17, v18))
    {
LABEL_16:

      goto LABEL_32;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Delegate notified KVSData delete synced down", v19, 2u);
LABEL_15:

    goto LABEL_16;
  }

  v17 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v49[0] = v26;
    *v25 = 136315138;
    v27 = sub_100065658(v5, v7, v49);

    *(v25 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v17, v24, "Delegate failed to process didReceiveKVSDataDelete for recordName: %s", v25, 0xCu);
    sub_10005D588(v26);

    goto LABEL_15;
  }

LABEL_32:
  v42 = *(v0 + 24);
  v43 = [*(v0 + 16) recordName];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  (*(*v42 + 296))(v44, v46);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1000D9390(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for CKDatabase.DatabaseChange.Deletion.Reason();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000D94A0, v2, 0);
}

uint64_t sub_1000D94A0()
{
  v120 = v0;
  v1 = (*(**(v0 + 40) + 328))();
  sub_1000AF988(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v3 = [v1 deleteFor:isa attributes:0 error:v0 + 16];

  v4 = *(v0 + 16);
  if (!v3)
  {
    v35 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v36 = *(v0 + 8);
    goto LABEL_13;
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v7 + 16);
  v8(v5, *(v0 + 32), v6);
  v9 = (*(v7 + 88))(v5, v6);
  if (v9 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.deleted(_:))
  {
    v10 = qword_10012B750;
    v11 = v4;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100066000(v12, qword_10012B758);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Zone was deleted in the cloud, perform local clean up", v15, 2u);
    }

    v16 = *(v0 + 40);
    v17 = *(v0 + 24);

    v18 = *(v16 + 120);
    v19 = [v17 zoneName];
    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    v20 = *(v0 + 24);
    v21 = [v18 didReceiveKVSDataZoneDelete:v19 reason:1];

    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = *(v0 + 24);
    if (v21)
    {
      LOBYTE(v25) = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v26 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v119 = v28;
        *v27 = 136315138;
        v29 = [v26 zoneName];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = sub_100065658(v30, v32, &v119);

        *(v27 + 4) = v33;
        v34 = "Delegate notified zone delete sync down %s";
LABEL_46:
        _os_log_impl(&_mh_execute_header, v23, v25, v34, v27, 0xCu);
        sub_10005D588(v28);
      }
    }

    else
    {
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v58 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v119 = v28;
        *v27 = 136315138;
        v59 = [v58 zoneName];
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        v63 = sub_100065658(v60, v62, &v119);

        *(v27 + 4) = v63;
        v34 = "Delegate failed to ack zone delete sync down %s";
        goto LABEL_46;
      }
    }
  }

  else if (v9 == enum case for CKDatabase.DatabaseChange.Deletion.Reason.purged(_:))
  {
    v38 = qword_10012B750;
    v39 = v4;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100066000(v40, qword_10012B758);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Zone was purged by the user, perform local clean up", v43, 2u);
    }

    v44 = *(v0 + 40);
    v45 = *(v0 + 24);

    v46 = *(v44 + 120);
    v47 = [v45 zoneName];
    if (!v47)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = String._bridgeToObjectiveC()();
    }

    v48 = *(v0 + 24);
    v49 = [v46 didReceiveKVSDataZoneDelete:v47 reason:3];

    v50 = v48;
    v23 = Logger.logObject.getter();
    v51 = *(v0 + 24);
    if (v49)
    {
      LOBYTE(v25) = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v52 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v119 = v28;
        *v27 = 136315138;
        v53 = [v52 zoneName];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = sub_100065658(v54, v56, &v119);

        *(v27 + 4) = v57;
        v34 = "Delegate notified zone purge sync down %s";
        goto LABEL_46;
      }
    }

    else
    {
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v86 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v119 = v28;
        *v27 = 136315138;
        v87 = [v86 zoneName];
        v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v89;

        v91 = sub_100065658(v88, v90, &v119);

        *(v27 + 4) = v91;
        v34 = "Delegate failed to ack zone purge sync down %s";
        goto LABEL_46;
      }
    }
  }

  else
  {
    v64 = enum case for CKDatabase.DatabaseChange.Deletion.Reason.encryptedDataReset(_:);
    v65 = qword_10012B750;
    v66 = v9;
    v67 = v4;
    if (v66 != v64)
    {
      if (v65 != -1)
      {
        swift_once();
      }

      v92 = *(v0 + 72);
      v93 = *(v0 + 48);
      v94 = *(v0 + 32);
      v95 = type metadata accessor for Logger();
      sub_100066000(v95, qword_10012B758);
      v8(v92, v94, v93);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();
      v98 = os_log_type_enabled(v96, v97);
      v99 = *(v0 + 72);
      if (v98)
      {
        v118 = v97;
        v100 = *(v0 + 56);
        v101 = *(v0 + 64);
        v102 = *(v0 + 48);
        v103 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v119 = v117;
        *v103 = 136315138;
        v8(v101, v99, v102);
        v104 = String.init<A>(describing:)();
        v106 = v105;
        v107 = *(v100 + 8);
        v107(v99, v102);
        v108 = sub_100065658(v104, v106, &v119);

        *(v103 + 4) = v108;
        _os_log_impl(&_mh_execute_header, v96, v118, "Unhandled zone deletion reason: %s, skip local clean up", v103, 0xCu);
        sub_10005D588(v117);
      }

      else
      {
        v115 = *(v0 + 48);
        v116 = *(v0 + 56);

        v107 = *(v116 + 8);
        v107(v99, v115);
      }

      v107(*(v0 + 80), *(v0 + 48));
      goto LABEL_48;
    }

    if (v65 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100066000(v68, qword_10012B758);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Zone was deleted because of encryptedDataReset, skip local clean up, trying to re-upload local records", v71, 2u);
    }

    v72 = *(v0 + 40);
    v73 = *(v0 + 24);

    v74 = *(v72 + 120);
    v75 = [v73 zoneName];
    if (!v75)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = String._bridgeToObjectiveC()();
    }

    v76 = *(v0 + 24);
    v77 = [v74 didReceiveKVSDataZoneDelete:v75 reason:2];

    v78 = v76;
    v23 = Logger.logObject.getter();
    v79 = *(v0 + 24);
    if (v77)
    {
      LOBYTE(v25) = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v80 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v119 = v28;
        *v27 = 136315138;
        v81 = [v80 zoneName];
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v83;

        v85 = sub_100065658(v82, v84, &v119);

        *(v27 + 4) = v85;
        v34 = "Delegate notified zone delete sync down with encryptedDataReset %s";
        goto LABEL_46;
      }
    }

    else
    {
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v25))
      {
        v109 = *(v0 + 24);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v119 = v28;
        *v27 = 136315138;
        v110 = [v109 zoneName];
        v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v112;

        v114 = sub_100065658(v111, v113, &v119);

        *(v27 + 4) = v114;
        v34 = "Delegate failed to ack zone delete sync down with encryptedDataReset %s";
        goto LABEL_46;
      }
    }
  }

LABEL_48:

  v36 = *(v0 + 8);
LABEL_13:

  return v36();
}

uint64_t sub_1000DA0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000625FC;

  return sub_1000DC6BC(a1, a2, a3, a4);
}

uint64_t sub_1000DA174(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return _swift_task_switch(sub_1000DA198, v1, 0);
}

uint64_t sub_1000DA198()
{
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012B758);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Set inManateeIdentityRecovery=%{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  (*(*v6 + 232))(v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000DA3BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10007FAFC;

  return sub_1000D3C20(a1);
}

uint64_t sub_1000DA450(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000D40F4(a1);
}

uint64_t sub_1000DA4E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000D5A90(a1);
}

uint64_t sub_1000DA578(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100067294;

  return sub_1000D637C(a1, a2);
}

uint64_t sub_1000DA61C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000D67DC(a1);
}

uint64_t sub_1000DA6B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000B0D60;

  return sub_1000D6FD4(a1, a2);
}

uint64_t sub_1000DA754(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000AD104;

  return sub_1000D7BEC(a1);
}

uint64_t sub_1000DA7E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000D8578(a1);
}

uint64_t sub_1000DA87C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000D8B40(a1);
}

uint64_t sub_1000DA910(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100067294;

  return sub_1000D9390(a1, a2);
}

uint64_t sub_1000DA9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for MACloudKVSRecordLocalStore();
  *v8 = v4;
  v8[1] = sub_1000AD548;

  return sub_1000C2394(a1, a2, v9, a4);
}

uint64_t sub_1000DAA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100067294;

  return sub_1000DC6BC(a1, a2, a3, a4);
}

uint64_t sub_1000DAB48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000625FC;

  return sub_1000D225C(a1, a2);
}

uint64_t sub_1000DABEC(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100067294;

  return sub_1000DA174(a1);
}

uint64_t sub_1000DAC80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100067294;

  return sub_1000D1F80();
}

void *sub_1000DAD0C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005F5CC(&qword_100129330, &qword_1000E8010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_10005F5CC(&qword_100129338, &qword_1000E8018);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t *sub_1000DAE54(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1000DAFC0(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1000DB1B8(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_1000DAFC0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v24 = a4;
  v21 = a2;
  v22 = result;
  v4 = 0;
  v25 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v25 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_100066130(*(v25 + 56) + 32 * v13, v29);
    v27[0] = v15;
    v27[1] = v16;
    sub_100066130(v29, &v28);
    swift_bridgeObjectRetain_n();
    v17 = sub_1000C61DC(v24);
    v26[0] = v15;
    v26[1] = v16;
    __chkstk_darwin(v17);
    v20[2] = v26;
    v18 = v30;
    LOBYTE(v15) = sub_1000BF628(sub_1000C0038, v20, v17);
    v30 = v18;

    sub_100066C80(v27, &unk_100129350, &unk_1000E8030);
    sub_10005D588(v29);

    if ((v15 & 1) == 0)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_1000DB240(v22, v21, v23, v25);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1000DB240(v22, v21, v23, v25);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1000DB1B8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000DAFC0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000DB240(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10005F5CC(&qword_100128C38, &qword_1000E7378);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_100066130(v17 + 32 * v16, v33);
    sub_1000AF7F4(v33, v32);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1000AF7F4(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000DB490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACloudKVSRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DB4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACloudKVSRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DB558(uint64_t a1)
{
  v2 = type metadata accessor for MACloudKVSRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DB5B4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000DB5FC(uint64_t a1)
{
  v2[63] = a1;
  v2[64] = v1;
  v3 = type metadata accessor for Date();
  v2[65] = v3;
  v2[66] = *(v3 - 8);
  v2[67] = swift_task_alloc();
  sub_10005F5CC(&unk_100129060, &qword_1000E7D50);
  v2[68] = swift_task_alloc();
  v4 = type metadata accessor for MACloudKVSRecord(0);
  v2[69] = v4;
  v2[70] = *(v4 - 8);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();

  return _swift_task_switch(sub_1000DB79C, v1, 0);
}

uint64_t sub_1000DB79C()
{
  v117 = v0;
  v1 = [*(v0 + 504) recordID];
  v2 = [v1 recordName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100066000(v6, qword_10012B758);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v116 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100065658(v3, v5, &v116);
    _os_log_impl(&_mh_execute_header, v7, v8, "Mark quota exceeded for recordName: %s", v9, 0xCu);
    sub_10005D588(v10);
  }

  v11 = (*(**(v0 + 512) + 328))();
  sub_10005F5CC(&unk_100128850, &qword_1000E6C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E61E0;
  *(inited + 32) = 0x614E64726F636572;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = v3;
  *(inited + 56) = v5;

  sub_1000AF988(inited);
  swift_setDeallocating();
  v114 = v3;
  sub_100066C80(inited + 32, &qword_100129070, &qword_1000E7440);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1000E6C00;
  *(v14 + 32) = 0x74617453636E7973;
  *(v14 + 40) = 0xE900000000000065;
  *(v14 + 48) = sub_1000C1778(9);
  *(v14 + 72) = &type metadata for Int;
  *(v14 + 80) = 0x6144636E79536B63;
  *(v14 + 88) = 0xEA00000000006574;
  type metadata accessor for MAKVStoreBase();
  v15 = sub_1000C4DCC();
  *(v14 + 120) = &type metadata for Double;
  *(v14 + 96) = v15;
  sub_1000AF988(v14);
  swift_setDeallocating();
  sub_10005F5CC(&qword_100129070, &qword_1000E7440);
  swift_arrayDestroy();
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 464) = 0;
  LODWORD(inited) = [v11 updateFor:isa value:v16 attributes:0 error:v0 + 464];

  v17 = *(v0 + 464);
  if (!inited)
  {
    v26 = v17;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_10;
  }

  v18 = *(**(v0 + 512) + 304);
  v19 = v17;
  v18(v3, v5);
  v20 = *(v0 + 544);
  if ((*(*(v0 + 560) + 48))(v20, 1, *(v0 + 552)) == 1)
  {
    sub_100066C80(v20, &unk_100129060, &qword_1000E7D50);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v116 = v24;
      *v23 = 136315138;
      v25 = sub_100065658(v3, v5, &v116);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "failed to fetch local record for recordName: %s for quota exceeded error", v23, 0xCu);
      sub_10005D588(v24);
    }

    else
    {
    }

    goto LABEL_10;
  }

  v29 = *(v0 + 584);
  sub_1000DB490(v20, v29);
  v30 = *(v29 + 32);
  v32 = sub_1000C619C(v30);
  v33 = *(v0 + 584);
  if (!v31)
  {
    sub_1000DB4F4(v33, *(v0 + 568));

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 568);
    if (v37)
    {
      v39 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v39 = 136315394;
      *(v0 + 472) = *(v38 + 32);
      type metadata accessor for MASDAssetType(0);
      sub_1000DB5B4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      sub_1000DB558(v38);
      v43 = sub_100065658(v40, v42, &v116);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = sub_100065658(v114, v5, &v116);

      *(v39 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "recordNameField is not configured for assetType %s, failed record name: %s", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000DB558(v38);
    }

    v76 = *(v0 + 584);
    sub_1000B9568();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    sub_100092A98();
    swift_allocError();
    *v83 = v78;
    *(v83 + 8) = v80;
    *(v83 + 16) = v82;
    swift_willThrow();
    v84 = v76;
    goto LABEL_28;
  }

  v34 = *(v33 + 120);
  if (v34 >> 60 != 15)
  {
    v45 = v31;
    v46 = *(v33 + 112);
    v47 = objc_opt_self();
    sub_10005F304(v46, v34);
    v48 = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 480) = 0;
    v49 = [v47 propertyListWithData:v48 options:0 format:0 error:v0 + 480];

    v50 = *(v0 + 480);
    if (v49)
    {
      v51 = v50;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10005F5CC(&unk_100128880, &qword_1000E6CE0);
      if (swift_dynamicCast())
      {
        v52 = *(v0 + 488);
        if (*(v52 + 16) && (v53 = sub_100065A98(v32, v45), (v54 & 1) != 0) && (sub_100066130(*(v52 + 56) + 32 * v53, v0 + 256), (swift_dynamicCast() & 1) != 0))
        {
          v55 = *(v0 + 536);
          v56 = *(v0 + 528);
          v109 = *(v0 + 520);
          v112 = *(v0 + 512);
          v115 = *(v0 + 584);

          sub_1000AE570(v32, v45, (v0 + 288));

          sub_100066C80(v0 + 288, &unk_100128830, &qword_1000E7D40);
          v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v58;
          *(v0 + 344) = &type metadata for UInt;
          *(v0 + 320) = 1024;
          sub_1000AF7F4((v0 + 320), (v0 + 352));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v116 = v52;
          sub_1000AEE80((v0 + 352), v57, v59, isUniquelyReferenced_nonNull_native);

          v61 = v116;
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
          Date.init()();
          Date.timeIntervalSinceReferenceDate.getter();
          v66 = v65;
          (*(v56 + 8))(v55, v109);
          *(v0 + 408) = &type metadata for Double;
          *(v0 + 384) = v66;
          sub_1000AF7F4((v0 + 384), (v0 + 416));
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v116 = v61;
          sub_1000AEE80((v0 + 416), v62, v64, v67);

          v113 = *(v112 + 120);
          v111 = String._bridgeToObjectiveC()();

          v68 = String._bridgeToObjectiveC()();
          v69 = String._bridgeToObjectiveC()();
          v110 = *(v115 + 88);
          v70 = Dictionary._bridgeToObjectiveC()().super.isa;
          sub_1000B9568();
          v74 = sub_1000B6504(v71, v72, v73);

          v75 = _convertErrorToNSError(_:)();

          [v113 failedToUploadKVSData:v111 assetType:v30 storeName:v68 storeGroup:v69 profileType:v110 data:v70 error:v75];
          sub_10005F69C(v46, v34);

          sub_1000DB558(v115);
        }

        else
        {

          sub_1000DB4F4(*(v0 + 584), *(v0 + 576));

          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.error.getter();

          v93 = os_log_type_enabled(v91, v92);
          v94 = *(v0 + 576);
          if (v93)
          {
            v95 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            *v95 = 136315394;
            *(v0 + 496) = *(v94 + 32);
            type metadata accessor for MASDAssetType(0);
            sub_1000DB5B4(&qword_1001284E0, 255, type metadata accessor for MASDAssetType, &protocol conformance descriptor for MASDAssetType);
            v96 = dispatch thunk of CustomStringConvertible.description.getter();
            v98 = v97;
            sub_1000DB558(v94);
            v99 = sub_100065658(v96, v98, &v116);

            *(v95 + 4) = v99;
            *(v95 + 12) = 2080;
            v100 = sub_100065658(v114, v5, &v116);

            *(v95 + 14) = v100;
            _os_log_impl(&_mh_execute_header, v91, v92, "recordHandle is not found in serialized KVSRecord stored in local store for assetType %s, failed record name: %s", v95, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            sub_1000DB558(v94);
          }

          v101 = *(v0 + 584);
          sub_1000B9568();
          v103 = v102;
          v105 = v104;
          v107 = v106;
          sub_100092A98();
          swift_allocError();
          *v108 = v103;
          *(v108 + 8) = v105;
          *(v108 + 16) = v107;
          swift_willThrow();
          sub_10005F69C(v46, v34);
          sub_1000DB558(v101);
        }

        goto LABEL_10;
      }

      sub_10005F69C(v46, v34);
      goto LABEL_30;
    }

    v85 = *(v0 + 584);
    v86 = v50;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10005F69C(v46, v34);
    v84 = v85;
LABEL_28:
    sub_1000DB558(v84);
    goto LABEL_10;
  }

LABEL_30:

  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&_mh_execute_header, v87, v88, "Invalid serialized KVSRecord stored in local store", v89, 2u);
  }

  v90 = *(v0 + 584);

  sub_1000DB558(v90);
LABEL_10:

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1000DC6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a3;
  v5[7] = a4;
  v5[4] = a1;
  v5[5] = a2;
  return _swift_task_switch(sub_1000DC6E0, v4, 0);
}

uint64_t sub_1000DC6E0()
{
  v18 = v0;
  if (qword_10012B750 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100066000(v1, qword_10012B758);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v16 = v0[7];
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    v0[2] = v6;
    v0[3] = v5;

    sub_10005F5CC(&qword_100128890, &qword_1000E6D60);
    v8 = String.init<A>(describing:)();
    v10 = sub_100065658(v8, v9, &v17);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v0[2] = v4;
    v0[3] = v16;

    v11 = String.init<A>(describing:)();
    v13 = sub_100065658(v11, v12, &v17);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "handleAccountChange signInUser=%s, signOutUser=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000DC914(uint64_t a1)
{
  result = sub_1000DB5B4(&qword_1001290A8, 255, type metadata accessor for MACloudKVSRecord, &unk_1000E7E44);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DC970(uint64_t a1, uint64_t a2)
{
  result = sub_1000DB5B4(&qword_1001290B0, a2, type metadata accessor for MACloudKVSRecordLocalStore, &unk_1000E7E6C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DCA00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DCAD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10005F5CC(&qword_1001287D0, &qword_1000E6C30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000DCB80(uint64_t a1)
{
  sub_1000DCD18(319, &qword_100128900, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MASDAssetType(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MASDProfileType(319);
      if (v3 <= 0x3F)
      {
        sub_1000DCD18(319, &qword_100128908, &type metadata for Data, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1000DCD18(319, qword_100129110, &type metadata for Int, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1000B0A40(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000DCD18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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