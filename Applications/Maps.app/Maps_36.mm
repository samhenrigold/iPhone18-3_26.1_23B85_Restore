void sub_100417548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v5 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v5 - 8);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v33 - v9;
  v12 = sub_1004153CC();
  if (v11)
  {
    v13 = v11;
    v14 = *(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place);
    v15 = &selRef__maps_mapsConnectionBrokerEndpointRecorderConnection;
    if ([*(v14 + 56) _muid])
    {
      v33[1] = v3;
      if (v13 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
        if (v16)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
LABEL_5:
          if (v16 < 1)
          {
            __break(1u);
            return;
          }

          v17 = 0;
          v39 = v13 & 0xC000000000000001;
          v35 = v14;
          v36 = v13;
          v34 = v16;
          do
          {
            if (v39)
            {
              v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v18 = *(v13 + 8 * v17 + 32);
            }

            v19 = [*(v14 + 56) v15[321]];
            if (v19 == [*(*(v18 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56) v15[321]])
            {
              v20 = type metadata accessor for TaskPriority();
              v21 = *(v20 - 8);
              (*(v21 + 56))(v10, 1, 1, v20);
              type metadata accessor for MainActor();

              v22 = v7;
              v23 = v10;
              v24 = v37;
              v25 = v38;
              sub_1002AB7F0(v37, v38);
              v26 = static MainActor.shared.getter();
              v27 = swift_allocObject();
              v27[2] = v26;
              v27[3] = &protocol witness table for MainActor;
              v27[4] = v18;
              v27[5] = v24;
              v27[6] = v25;
              v10 = v23;
              v7 = v22;
              sub_100210F08(v10, v22);
              LODWORD(v26) = (*(v21 + 48))(v22, 1, v20);

              if (v26 == 1)
              {
                sub_1003671DC(v22);
              }

              else
              {
                TaskPriority.rawValue.getter();
                (*(v21 + 8))(v22, v20);
              }

              v28 = v27[2];
              swift_unknownObjectRetain();

              v15 = &selRef__maps_mapsConnectionBrokerEndpointRecorderConnection;
              if (v28)
              {
                swift_getObjectType();
                v29 = dispatch thunk of Actor.unownedExecutor.getter();
                v31 = v30;
                swift_unknownObjectRelease();
              }

              else
              {
                v29 = 0;
                v31 = 0;
              }

              v16 = v34;
              sub_1003671DC(v10);
              v32 = swift_allocObject();
              *(v32 + 16) = &unk_101205570;
              *(v32 + 24) = v27;
              if (v31 | v29)
              {
                v40 = 0;
                v41 = 0;
                v42 = v29;
                v43 = v31;
              }

              v14 = v35;
              swift_task_create();

              v13 = v36;
            }

            else
            {
            }

            ++v17;
          }

          while (v16 != v17);
        }
      }

      sub_1004154A8(v13);

      return;
    }
  }
}

uint64_t sub_100417978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC4C;

  return sub_1002A9024(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100417A68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_100412CAC(a1, v4, v5, v6);
}

void sub_100417B28()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
}

double sub_100417B88()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 48);
  *(v2 + 48) = v1;
  sub_100100D84(v1);
  sub_100100D94(v3);
  return sub_100410504();
}

uint64_t sub_100417BD4()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

void sub_100417C28()
{
  *(*(v0 + 16) + 312) = *(v0 + 24);
}

uint64_t sub_100417C84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100417CEC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 224);
  v5 = *(v2 + 232);
  *(v2 + 224) = v1;
  *(v2 + 232) = v3;
  sub_1000CD9D4(v1, v3);
  return sub_1000588AC(v4, v5);
}

uint64_t sub_100417D64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100417DAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

double sub_100417E1C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 3u || a4 == 4)
  {

    goto LABEL_8;
  }

  if (a4 == 3)
  {

LABEL_8:
  }

  return result;
}

id sub_100417F34()
{
  result = [objc_allocWithZone(type metadata accessor for ServerEvaluationStatusMapsSync()) init];
  qword_101960288 = result;
  return result;
}

id sub_100418000(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ServerEvaluationStatusMapsSync();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10041805C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 161) = a8;
  *(v8 + 160) = a7;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  v9 = swift_task_alloc();
  *(v8 + 112) = v9;
  *v9 = v8;
  v9[1] = sub_1004180F4;

  return sub_10041992C();
}

uint64_t sub_1004180F4(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_1004181F4, 0, 0);
}

uint64_t sub_1004181F4()
{
  v1 = v0[15];
  if (v1)
  {
    dispatch thunk of ServerEvaluationStatus.arpStatus.setter();
    dispatch thunk of ServerEvaluationStatus.reliabilityStatus.setter();
    type metadata accessor for MapsSyncStore();
    v0[16] = static MapsSyncStore.sharedStore.getter();
    sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
    v2 = swift_allocObject();
    v0[17] = v2;
    *(v2 + 16) = xmmword_1011E47B0;
    *(v2 + 32) = v1;
    v14 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
    v3 = v1;
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_1004184D4;

    return v14(v2);
  }

  else
  {
    v6 = v0[12];
    if (v6)
    {
      if (qword_101906838 != -1)
      {
        swift_once();
      }

      sub_1000CE6B8(&qword_101922E10, qword_1011E1D80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1011E1D30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v8;
      *(inited + 48) = 0xD000000000000012;
      *(inited + 56) = 0x80000001012372F0;
      sub_1000D0AA8(inited);
      swift_setDeallocating();
      sub_100024F64(inited + 32, &qword_101906970, &qword_1011E4780);
      v9 = objc_allocWithZone(NSError);
      v10 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v12 = [v9 initWithDomain:v10 code:-1 userInfo:isa];

      v6(v12);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1004184D4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10041866C;
  }

  else
  {
    v4 = *(v2 + 128);

    v3 = sub_1004185F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004185F4()
{
  v1 = v0[12];
  v2 = v0[15];
  if (v1)
  {
    v1(0);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_10041866C()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[19];
  if (v3)
  {
    v5 = v0[12];
    swift_errorRetain();
    v5(v4);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10041888C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_10041891C;

  return sub_10041992C();
}

uint64_t sub_10041891C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100418A1C, 0, 0);
}

uint64_t sub_100418A1C()
{
  v1 = v0[5];
  v2 = v0[2];
  if (v1)
  {
    if (v2)
    {
      v3 = dispatch thunk of ServerEvaluationStatus.arpStatus.getter();
      v4 = dispatch thunk of ServerEvaluationStatus.reliabilityStatus.getter();
      v2(v3 & 1, v4 & 1);
    }
  }

  else if (v2)
  {
    v2(0, 0);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100418C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 161) = a8;
  *(v8 + 160) = a7;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  v9 = swift_task_alloc();
  *(v8 + 112) = v9;
  *v9 = v8;
  v9[1] = sub_100418CD8;

  return sub_10041992C();
}

uint64_t sub_100418CD8(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_100418DD8, 0, 0);
}

uint64_t sub_100418DD8()
{
  v1 = v0[15];
  if (v1)
  {
    dispatch thunk of ServerEvaluationStatus.rapStatus.setter();
    dispatch thunk of ServerEvaluationStatus.reliabilityStatus.setter();
    type metadata accessor for MapsSyncStore();
    v0[16] = static MapsSyncStore.sharedStore.getter();
    sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
    v2 = swift_allocObject();
    v0[17] = v2;
    *(v2 + 16) = xmmword_1011E47B0;
    *(v2 + 32) = v1;
    v14 = (&async function pointer to dispatch thunk of MapsSyncStore.save(objects:) + async function pointer to dispatch thunk of MapsSyncStore.save(objects:));
    v3 = v1;
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_1004190B8;

    return v14(v2);
  }

  else
  {
    v6 = v0[12];
    if (v6)
    {
      if (qword_101906838 != -1)
      {
        swift_once();
      }

      sub_1000CE6B8(&qword_101922E10, qword_1011E1D80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1011E1D30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v8;
      *(inited + 48) = 0xD000000000000012;
      *(inited + 56) = 0x80000001012372F0;
      sub_1000D0AA8(inited);
      swift_setDeallocating();
      sub_100024F64(inited + 32, &qword_101906970, &qword_1011E4780);
      v9 = objc_allocWithZone(NSError);
      v10 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v12 = [v9 initWithDomain:v10 code:-1 userInfo:isa];

      v6(v12);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1004190B8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10041A664;
  }

  else
  {
    v4 = *(v2 + 128);

    v3 = sub_10041A65C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100419350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1004193E0;

  return sub_10041992C();
}

uint64_t sub_1004193E0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1004194E0, 0, 0);
}

uint64_t sub_1004194E0()
{
  v1 = v0[5];
  v2 = v0[2];
  if (v1)
  {
    if (v2)
    {
      v3 = dispatch thunk of ServerEvaluationStatus.rapStatus.getter();
      v4 = dispatch thunk of ServerEvaluationStatus.reliabilityStatus.getter();
      v2(v3 & 1, v4 & 1);
    }
  }

  else if (v2)
  {
    v2(0, 0);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100419704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_100419350(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004197EC()
{
  type metadata accessor for ServerEvaluationStatusMapsSync();
  sub_1000CE6B8(&unk_101920A00, &qword_101205C80);
  v3 = String.init<A>(describing:)();
  v4 = v0;

  v1._countAndFlagsBits = 0x6D6F44726F727245;
  v1._object = 0xEB000000006E6961;
  String.append(_:)(v1);

  qword_1019209B0 = v3;
  *algn_1019209B8 = v4;
  return result;
}

uint64_t sub_100419884()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_1019209C0);
  sub_100021540(v0, qword_1019209C0);
  type metadata accessor for ServerEvaluationStatusMapsSync();
  sub_1000CE6B8(&unk_101920A00, &qword_101205C80);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100419948()
{
  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E47B0;
  v2 = objc_allocWithZone(NSSortDescriptor);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithKey:v3 ascending:0];

  *(v1 + 32) = v4;
  v5 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v6 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
  v0[3] = v6;
  type metadata accessor for ServerEvaluationStatusRequest();
  v0[4] = ServerEvaluationStatusRequest.__allocating_init()();
  v10 = (&async function pointer to dispatch thunk of ServerEvaluationStatusRequest.fetch(options:) + async function pointer to dispatch thunk of ServerEvaluationStatusRequest.fetch(options:));
  v7 = v6;
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_100419AC4;

  return v10(v6);
}

uint64_t sub_100419AC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_10041A058;
  }

  else
  {
    v5 = *(v3 + 32);

    v4 = sub_100419BE4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100419BE4()
{
  v1 = v0[6];
  v0[2] = v1;
  v2 = v1 >> 62;
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_7:

    v4 = 0;
    goto LABEL_8;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v3 = *(v0[6] + 32);

    v4 = v3;
  }

LABEL_8:
  v0[8] = v4;
  if (!v2)
  {
    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v5 <= 1)
    {
      goto LABEL_24;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();

  if (v7 >= 2)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_15:
        if ((v1 & 0xC000000000000001) == 0)
        {
          if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (!v2)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

LABEL_29:
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        if (!v2)
        {
          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_19:
            sub_10054E920(0, v6, 1);
            type metadata accessor for MapsSyncStore();
            v0[9] = static MapsSyncStore.sharedStore.getter();
            v9 = v0[2];
            if (!(v9 >> 62))
            {

              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
              type metadata accessor for MapsSyncObject();
              v10 = v9;
LABEL_21:
              v0[10] = v10;

              v15 = (&async function pointer to dispatch thunk of MapsSyncStore.delete(objects:) + async function pointer to dispatch thunk of MapsSyncStore.delete(objects:));
              v11 = swift_task_alloc();
              v0[11] = v11;
              *v11 = v0;
              v11[1] = sub_100419ED4;

              return v15(v10);
            }

LABEL_33:
            type metadata accessor for MapsSyncObject();

            v10 = _bridgeCocoaArray<A>(_:)();

            goto LABEL_21;
          }

          goto LABEL_31;
        }

LABEL_18:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_19;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_24:
  v12 = v0[3];

  v13 = v0[8];
  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_100419ED4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_10041A210;
  }

  else
  {
    v4 = *(v2 + 72);

    v3 = sub_100419FF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100419FF4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10041A058()
{
  v1 = *(v0 + 32);

  if (qword_101906840 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_1019209C0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "FetchEvaluationStatus Error:%@", v5, 0xCu);
    sub_100024F64(v6, &qword_1019144F0, &unk_1011E4A70);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(0);
}

uint64_t sub_10041A210()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);

  if (qword_101906840 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_1019209C0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "FetchEvaluationStatus Error:%@", v6, 0xCu);
    sub_100024F64(v7, &qword_1019144F0, &unk_1011E4A70);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_10041A3D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10003AC40;

  return sub_100418C40(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10041A4B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_10041888C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10041A57C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10003AC4C;

  return sub_10041805C(a1, v4, v5, v6, v7, v8, v9, v10);
}

char *sub_10041A66C(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v35 = v3 & 0xFFFFFFFFFFFFFF8;
    v36 = v3 & 0xC000000000000001;
    v6 = _swiftEmptyArrayStorage;
    v7 = &selRef_menuItemForIndexPath_;
    v33 = i;
    v34 = v3;
    while (v36)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_22;
      }

LABEL_7:
      v10 = v8;
      v11 = [v10 name];
      v12 = [v11 length];

      if (v12)
      {
        v13 = [v10 name];
      }

      else
      {
        v14 = [v10 system];
        v13 = [v14 name];
      }

      v15 = v13;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v17;
      v40 = v16;

      v18 = [v10 v7[192]];
      v19 = *a2;
      if (*(*a2 + 16) && (v20 = sub_100298E64(v18), (v21 & 1) != 0))
      {
        v22 = *(*(v19 + 56) + 8 * v20);
        v23 = v22;
      }

      else
      {
        v22 = 0;
      }

      v24 = *a3;
      v25 = v7;
      [v10 v7[192]];
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1003584C8(0, *(v6 + 2) + 1, 1, v6);
      }

      v30 = *(v6 + 2);
      v29 = *(v6 + 3);
      if (v30 >= v29 >> 1)
      {
        v6 = sub_1003584C8((v29 > 1), v30 + 1, 1, v6);
      }

      *(v6 + 2) = v30 + 1;
      v31 = &v6[48 * v30];
      *(v31 + 4) = v40;
      *(v31 + 5) = v39;
      *(v31 + 6) = v22;
      *(v31 + 7) = v24;
      *(v31 + 8) = v26;
      *(v31 + 9) = v28;
      ++v5;
      v3 = v34;
      v7 = v25;
      if (v9 == v33)
      {
        return v6;
      }
    }

    if (v5 >= *(v35 + 16))
    {
      goto LABEL_23;
    }

    v8 = swift_unknownObjectRetain();
    v9 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void sub_10041A8F4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  if (v4)
  {
    if (a1)
    {
      sub_10041C434();
      v5 = v4;
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        v8 = *(v2 + 80);
        goto LABEL_8;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100133D98();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v6 = 0;
LABEL_8:
  *(v2 + 80) = a1;
  swift_getKeyPath();
  sub_100133D98();
  v10 = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v2 + 80);
  if (v11)
  {
    if (v8)
    {
      sub_10041C434();
      v12 = v11;
      v13 = v8;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {

        return;
      }
    }
  }

  else if (!v8)
  {

    return;
  }

  v15 = swift_getKeyPath();
  __chkstk_darwin(v15);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10041B044();
}

unint64_t sub_10041AB60()
{
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_10041C560(v1);
  return v1;
}

double sub_10041ABDC@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;
  return sub_10041C560(v4);
}

double sub_10041AC78()
{
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_10041ACEC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);

  return result;
}

double sub_10041AD68(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10041ADF4()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  sub_1000CD9D4(v1, *(v3 + 40));
  return v1;
}

uint64_t sub_10041AE78()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  sub_1000CD9D4(v1, *(v3 + 56));
  return v1;
}

uint64_t sub_10041AEFC()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);
  sub_1000CD9D4(v1, *(v3 + 72));
  return v1;
}

void *sub_10041AF80()
{
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t sub_10041AFF8(void *a1)
{
  *(v1 + 80) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  ObservationRegistrar.init()();
  sub_10041A8F4(a1);
  return v1;
}

double sub_10041B044()
{
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_10041C498;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10032FD30;
    aBlock[3] = &unk_101618308;
    v3 = _Block_copy(aBlock);
    v4 = v1;

    [v4 _maps_loadLineInfoUsingTraits:0 withCompletion:v3];
    _Block_release(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

id sub_10041B208@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_10041B290(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10041A8F4(v1);
}

void sub_10041B2C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 80);
  *(a1 + 80) = a2;
  swift_getKeyPath();
  sub_100133D98();
  v5 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(a1 + 80);
  if (v6)
  {
    if (v4)
    {
      sub_10041C434();
      v7 = v6;
      v8 = v4;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        goto LABEL_7;
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10041B044();
  v8 = v4;
LABEL_7:
}

double sub_10041B438(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (!a2 && a1)
    {
      if (a1 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= 1)
        {
          goto LABEL_6;
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_6:
        v11 = type metadata accessor for TaskPriority();
        (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
        type metadata accessor for MainActor();

        v12 = static MainActor.shared.getter();
        v13 = swift_allocObject();
        v13[2] = v12;
        v13[3] = &protocol witness table for MainActor;
        v13[4] = a1;
        v13[5] = v10;
        sub_10020AAE4(0, 0, v7, &unk_101205E58, v13);

        return result;
      }
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15[-2] = v10;
    v15[-1] = 2;
    v15[2] = v10;
    sub_100133D98();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10041B6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_10041B780, v7, v6);
}

uint64_t sub_10041B780()
{
  v1 = *(isUniquelyReferenced_nonNull_native + 40);
  v2 = sub_1000D1D7C(_swiftEmptyArrayStorage);
  if (v1 >> 62)
  {
    goto LABEL_72;
  }

  v68 = v1 & 0xFFFFFFFFFFFFFF8;
  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_73:
    *(isUniquelyReferenced_nonNull_native + 16) = v2;
    *(isUniquelyReferenced_nonNull_native + 24) = 0;
    goto LABEL_74;
  }

LABEL_3:
  v66 = v3;
  v4 = 0;
  v64 = isUniquelyReferenced_nonNull_native;
  v69 = v1 & 0xC000000000000001;
  v67 = *(isUniquelyReferenced_nonNull_native + 40) + 32;
  v5 = MKTransitArtworkIncidentBadgeTrailingOffset;
  v6 = 0.0;
  v1 = &selRef__itemWithContact_geoMapItem_;
  do
  {
    v7 = v4;
    while (1)
    {
      if (v69)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v7 >= *(v68 + 16))
        {
          goto LABEL_67;
        }

        v8 = *(v67 + 8 * v7);
        swift_unknownObjectRetain();
        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          v68 = v1 & 0xFFFFFFFFFFFFFF8;
          v3 = _CocoaArrayWrapper.endIndex.getter();
          if (!v3)
          {
            goto LABEL_73;
          }

          goto LABEL_3;
        }
      }

      isUniquelyReferenced_nonNull_native = [v8 artwork];
      v9 = [objc_opt_self() sharedInstance];
      if (!v9)
      {
        goto LABEL_79;
      }

      v12 = v9;
      v13 = objc_opt_self();
      [v12 screenScale];
      v15 = v14;

      v16 = [v13 _mapkit_transitArtworkImageWithDataSource:isUniquelyReferenced_nonNull_native size:7 scale:v15];
      swift_unknownObjectRelease();
      if (v16)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v7;
      if (v4 == v66)
      {
        goto LABEL_28;
      }
    }

    v17 = [v8 muid];
    v18 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_100298E64(v17);
    v19 = v2[2];
    v20 = (v10 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      __break(1u);
      goto LABEL_78;
    }

    v23 = v10;
    if (v2[3] < v22)
    {
      sub_100128F80(v22, isUniquelyReferenced_nonNull_native);
      v9 = sub_100298E64(v17);
      if ((v23 & 1) != (v10 & 1))
      {
LABEL_63:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_20:
      if (v23)
      {
        goto LABEL_21;
      }

LABEL_23:
      v2[(v9 >> 6) + 8] |= 1 << v9;
      *(v2[6] + 8 * v9) = v17;
      *(v2[7] + 8 * v9) = v18;
      v26 = v2[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (!v21)
      {
        v2[2] = v27;
        goto LABEL_25;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return _swift_task_switch(v9, v10, v11);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    isUniquelyReferenced_nonNull_native = v9;
    sub_10012DC1C();
    v9 = isUniquelyReferenced_nonNull_native;
    if ((v23 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    v24 = v2[7];
    v25 = *(v24 + 8 * v9);
    *(v24 + 8 * v9) = v18;

LABEL_25:
    [v18 size];
    v29 = v28;

    swift_unknownObjectRelease();
    if (v6 <= v5 + v29)
    {
      v6 = v5 + v29;
    }
  }

  while (v4 != v66);
LABEL_28:
  isUniquelyReferenced_nonNull_native = v64;
  *(v64 + 16) = v2;
  *(v64 + 24) = v6;
  v30 = v66;
  v31 = 0;
  v32 = MKTransitArtworkIncidentBadgeBottomOffset;
  v33 = &selRef_menuItemForIndexPath_;
  do
  {
    if (v69)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v1 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v31 >= *(v68 + 16))
      {
        goto LABEL_69;
      }

      v34 = *(v67 + 8 * v31);
      swift_unknownObjectRetain();
      v1 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        goto LABEL_68;
      }
    }

    v35 = [v34 v33[192]];
    if (!v2[2] || (v36 = sub_100298E64(v35), (v37 & 1) == 0))
    {
      swift_unknownObjectRelease();
      goto LABEL_30;
    }

    v38 = *(v2[7] + 8 * v36);
    v39 = [v34 artwork];
    if (v39 && (v40 = [v39 hasRoutingIncidentBadge], swift_unknownObjectRelease(), (v40 & 1) != 0))
    {
      v9 = [objc_opt_self() sharedInstance];
      if (!v9)
      {
        goto LABEL_80;
      }

      v41 = v9;
      [v9 screenScale];

      v42 = MKTransitIncidentIcon();
    }

    else
    {
      v42 = 0;
    }

    v65 = v38;
    v43 = [objc_opt_self() _compositeImageFromImage:v38 paddedToWidth:v42 badge:v6 badgeOffset:{v5, v32}];
    v44 = [v34 v33[192]];
    v45 = v44;
    if (v43)
    {
      v46 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = sub_100298E64(v45);
      v49 = v2[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        goto LABEL_70;
      }

      v52 = v47;
      if (v2[3] < v51)
      {
        sub_100128F80(v51, isUniquelyReferenced_nonNull_native);
        v53 = sub_100298E64(v45);
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_63;
        }

        v48 = v53;
        if ((v52 & 1) == 0)
        {
          goto LABEL_49;
        }

LABEL_57:
        v61 = v2[7];
        v62 = *(v61 + 8 * v48);
        *(v61 + 8 * v48) = v46;

        swift_unknownObjectRelease();
LABEL_58:
        isUniquelyReferenced_nonNull_native = v64;
        v30 = v66;
        v33 = &selRef_menuItemForIndexPath_;
        goto LABEL_30;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v47)
        {
          goto LABEL_57;
        }
      }

      else
      {
        sub_10012DC1C();
        if (v52)
        {
          goto LABEL_57;
        }
      }

LABEL_49:
      v2[(v48 >> 6) + 8] |= 1 << v48;
      *(v2[6] + 8 * v48) = v45;
      *(v2[7] + 8 * v48) = v46;

      swift_unknownObjectRelease();
      v55 = v2[2];
      v21 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v21)
      {
        goto LABEL_71;
      }

      v2[2] = v56;
      goto LABEL_58;
    }

    v57 = sub_100298E64(v44);
    if (v58)
    {
      v59 = v57;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_10012DC1C();
      }

      sub_1003C5308(v59, v2, v60);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

LABEL_30:
    ++v31;
  }

  while (v1 != v30);
  *(isUniquelyReferenced_nonNull_native + 16) = v2;
LABEL_74:
  *(isUniquelyReferenced_nonNull_native + 88) = v2;
  *(isUniquelyReferenced_nonNull_native + 96) = sub_10041A66C(*(isUniquelyReferenced_nonNull_native + 40), (isUniquelyReferenced_nonNull_native + 16), (isUniquelyReferenced_nonNull_native + 24));
  *(isUniquelyReferenced_nonNull_native + 104) = 0;
  swift_weakInit();
  v9 = sub_10041BE9C;
  v10 = 0;
  v11 = 0;

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10041BE9C(uint64_t a1)
{
  *(v1 + 112) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10041BF28, v3, v2);
}

uint64_t sub_10041BF28()
{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[5];

  sub_10041C058((v0 + 4), v2, v3);
  if (v1)
  {
  }

  else
  {
    swift_weakDestroy();

    v5 = v0[9];
    v6 = v0[10];

    return _swift_task_switch(sub_10041BFEC, v5, v6);
  }
}

uint64_t sub_10041BFEC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10041C058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100133D98();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v4 = swift_getKeyPath();
    __chkstk_darwin(v4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10041C1F4()
{
  sub_10041C3F0(*(v0 + 16));

  sub_1000588AC(*(v0 + 32), *(v0 + 40));
  sub_1000588AC(*(v0 + 48), *(v0 + 56));
  sub_1000588AC(*(v0 + 64), *(v0 + 72));

  v1 = OBJC_IVAR____TtC4Maps34TransitLineDisambiguationViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransitLineDisambiguationViewModel(uint64_t a1)
{
  result = qword_101920A40;
  if (!qword_101920A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10041C314(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10041C3C8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_10041C3F0(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_10041C434()
{
  result = qword_101920B00;
  if (!qword_101920B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101920B00);
  }

  return result;
}

uint64_t sub_10041C4A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC4C;

  return sub_10041B6E4(a1, v4, v5, v7, v6);
}

double sub_10041C560(unint64_t a1)
{
  if (a1 >= 3)
  {
  }

  return result;
}

unint64_t sub_10041C570()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  sub_10041C560(v1);
  return sub_10041C3F0(v3);
}

uint64_t sub_10041C5AC()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

void sub_10041C5E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  v668[0] = v2;
  sub_100133D98();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v2 + 24);
  if (!v6)
  {
    return;
  }

  v666 = v6 & 0xFFFFFFFFFFFFFF8;
  v659 = v3;
  if (v6 >> 62)
  {
    goto LABEL_1072;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  v665 = v7;
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = 0;
  v667 = v6 & 0xC000000000000001;
  v662 = (v6 + 32);
  v664 = v6;
  while (1)
  {
    if (v667)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:

        return;
      }
    }

    else
    {
      if (v8 >= *(v666 + 16))
      {
        __break(1u);
LABEL_1070:
        __break(1u);
LABEL_1071:
        __break(1u);
LABEL_1072:
        v7 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      v9 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_18;
      }
    }

    v668[0] = [v9 muid];
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = v12;
    if (v11 == a1 && v12 == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_21;
    }

    swift_unknownObjectRelease();
    ++v8;
    v6 = v664;
    if (v10 == v665)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  v15 = 0;
  a1 = v665;
  while (2)
  {
    if (v15 == a1)
    {
      swift_unknownObjectRelease();

      return;
    }

    if (v667)
    {
      a2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v666 + 16))
      {
        goto LABEL_1071;
      }

      a2 = *&v662[8 * v15];
      swift_unknownObjectRetain();
    }

    v16 = a2;
    v17 = v9;
    if (a2 | v9)
    {
      v18 = v16 != 0;
      if (v9)
      {
        v18 = 0;
        v19 = a2 == 0;
      }

      else
      {
        v19 = 0;
      }

      if (v19 || v18)
      {

        swift_unknownObjectRelease();
        v6 = v17;
        goto LABEL_89;
      }

      a2 = [v16 identifier];
      v20 = [v17 identifier];
      if (![a2 isEqual:v20])
      {

        swift_unknownObjectRelease();
        v6 = v20;
        goto LABEL_89;
      }

      v663 = a2;
      v21 = [v16 name];
      v22 = [v17 name];
      v23 = v21 | v22;
      v24 = v21;
      v6 = v22;
      if (v23)
      {
        a2 = [v24 isEqual:v6];

        if (!a2)
        {

          swift_unknownObjectRelease();
          goto LABEL_88;
        }
      }

      v660 = v24;
      v25 = [v16 system];
      v26 = [v17 system];
      v661 = v25;
      v27 = v26;
      v28 = v27;
      if (!(v25 | v26))
      {
LABEL_37:
        a2 = [v16 departureTimeDisplayStyle];
        if (a2 == [v17 departureTimeDisplayStyle])
        {
          a2 = [v16 departuresAreVehicleSpecific];
          if (a2 == [v17 departuresAreVehicleSpecific])
          {
            v656 = v28;
            v29 = [v16 artwork];
            v30 = [v17 artwork];
            v31 = v29;
            v32 = v30;
            v658 = v32;
            v652 = v20;
            if (!(v29 | v30))
            {
              goto LABEL_40;
            }

            LODWORD(v654) = 0;
            if (v31)
            {
              v54 = v30 == 0;
            }

            else
            {
              v54 = 0;
            }

            v55 = v54;
            if (v32)
            {
              v56 = v29 == 0;
            }

            else
            {
              v56 = 0;
            }

            v57 = v31;
            v58 = v31;
            v40 = v32;
            if (v56)
            {
              a1 = v665;
              v28 = v656;
              goto LABEL_707;
            }

            a1 = v665;
            v28 = v656;
            if (v55)
            {
              goto LABEL_707;
            }

            v59 = [v57 artworkSourceType];
            v60 = v57;
            v61 = v658;
            if (v59 != [v658 artworkSourceType] || (v62 = objc_msgSend(v60, "artworkUseType"), v62 != objc_msgSend(v658, "artworkUseType")))
            {
              LODWORD(v654) = 0;
              v40 = v658;
              v57 = v60;
              v58 = v60;
              v28 = v656;
              goto LABEL_707;
            }

            v63 = [v60 shieldDataSource];
            v64 = [v658 shieldDataSource];
            v654 = v63 | v64;
            v65 = v63;
            v66 = v64;
            v67 = v65;
            v648 = v60;
            if (!(v63 | v64))
            {
              goto LABEL_77;
            }

            if (v65)
            {
              v171 = v64 == 0;
            }

            else
            {
              v171 = 0;
            }

            v172 = v171;
            if (v66)
            {
              v173 = v63 == 0;
            }

            else
            {
              v173 = 0;
            }

            v174 = v66;
            if (v173 || v172)
            {

              LODWORD(v654) = 0;
              v261 = v174;
              v168 = v60;
              v71 = v174;
              v169 = v658;
              v647 = v65;
            }

            else
            {
              v175 = [v65 shieldType];
              if (v175 != [v174 shieldType])
              {

                LODWORD(v654) = 0;
                v261 = v174;
                v168 = v60;
                v71 = v174;
                v169 = v658;
                v647 = v65;
                a1 = v665;
                goto LABEL_704;
              }

              [v65 shieldText];
              obj = a1 = v665;
              v644 = v65;
              if (!obj)
              {
                v649 = [v174 shieldText];
                if (!v649)
                {
                  v649 = 0;
                  LODWORD(v177) = 0;
                  goto LABEL_516;
                }
              }

              v60 = [v65 shieldText];
              v176 = [v174 shieldText];
              if (([v60 isEqualToString:v176] & 1) == 0)
              {

                LODWORD(v654) = 0;
                v261 = obj;
                if (!obj)
                {
                  v261 = v649;
                }

                v168 = v648;
                v71 = v174;
                v169 = v658;
                v647 = v65;
                goto LABEL_704;
              }

              v646 = v176;
              LODWORD(v177) = 1;
LABEL_516:
              v647 = v60;
              v353 = [v644 shieldColorString];
              if (v353 || ([v174 shieldColorString], (v645 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v354 = v177;
                v355 = [v644 shieldColorString];
                v177 = v174;
                v356 = [v174 shieldColorString];
                LODWORD(v654) = [v355 isEqualToString:v356];

                if (v353)
                {

                  v174 = v177;
                  v357 = obj;
                  if (v354)
                  {
                    goto LABEL_520;
                  }

                  goto LABEL_521;
                }

                v174 = v177;
                v357 = obj;
                LOBYTE(v177) = v354;
                v358 = v645;
              }

              else
              {
                v358 = 0;
                LODWORD(v654) = 1;
                v357 = obj;
              }

              if (v177)
              {
LABEL_520:
              }

LABEL_521:

              if (v357)
              {
              }

              else
              {
              }

              v66 = v174;
              v61 = v658;
              v60 = v648;
              v67 = v644;
              if ((v654 & 1) == 0)
              {
                LODWORD(v654) = 0;
                v42 = v648;
                v649 = v658;
                a1 = v665;
                v28 = v656;
                v41 = v644;
                v40 = v66;
                goto LABEL_706;
              }

LABEL_77:
              v643 = v66;
              v644 = v67;
              v68 = [v60 iconDataSource];
              v69 = [v61 iconDataSource];
              v649 = v68;
              v70 = v69;
              v71 = v70;
              if (!(v68 | v69))
              {
LABEL_78:
                v640 = v71;
                v72 = v648;
                v73 = [v648 iconFallbackShieldDataSource];
                v74 = [v658 iconFallbackShieldDataSource];
                v75 = v73;
                v76 = v74;
                if (!(v73 | v74))
                {
                  goto LABEL_79;
                }

                if (v75)
                {
                  v234 = v74 == 0;
                }

                else
                {
                  v234 = 0;
                }

                v235 = v234;
                if (v76)
                {
                  v236 = v73 == 0;
                }

                else
                {
                  v236 = 0;
                }

                v186 = v76;
                if (v236 || v235)
                {

                  v286 = v186;
                  v71 = v640;
                }

                else
                {
                  v237 = [v75 shieldType];
                  v71 = v640;
                  if (v237 == [v186 shieldType])
                  {
                    v654 = [v75 shieldText];
                    if (!v654)
                    {
                      v646 = [v186 shieldText];
                      if (!v646)
                      {
                        obj = v17;
                        v645 = v6;
                        v646 = 0;
                        v631 = 0;
                        goto LABEL_628;
                      }
                    }

                    v238 = [v75 shieldText];
                    v239 = [v186 shieldText];
                    v647 = v238;
                    if ([v238 isEqualToString:v239])
                    {
                      v626 = v239;
                      obj = v17;
                      v645 = v6;
                      v631 = 1;
LABEL_628:
                      v413 = [v75 shieldColorString];
                      if (v413 || ([v186 shieldColorString], (v71 = objc_claimAutoreleasedReturnValue()) != 0))
                      {
                        v414 = v75;
                        v415 = [v75 shieldColorString];
                        v416 = v186;
                        v417 = [v186 shieldColorString];
                        LODWORD(v627) = [v415 isEqualToString:v417];

                        if (v413)
                        {

                          if (v631)
                          {
                            goto LABEL_632;
                          }

                          goto LABEL_633;
                        }
                      }

                      else
                      {
                        v416 = v186;
                        v414 = v75;
                        LODWORD(v627) = 1;
                      }

                      if (v631)
                      {
LABEL_632:
                      }

LABEL_633:
                      v75 = v414;

                      if (v654)
                      {
                      }

                      else
                      {
                      }

                      v76 = v416;
                      v6 = v645;
                      v72 = v648;
                      v17 = obj;
                      if ((v627 & 1) == 0)
                      {
                        v186 = v76;
                        v71 = v640;
                        goto LABEL_532;
                      }

LABEL_79:
                      v633 = v76;
                      v634 = v75;
                      v77 = v72;
                      v78 = [v72 textDataSource];
                      v79 = [v658 textDataSource];
                      v647 = v78;
                      v646 = v79;
                      v80 = v640;
                      if (!(v78 | v79))
                      {
LABEL_80:
                        v81 = [v77 hasRoutingIncidentBadge];
                        if (v81 == [v658 hasRoutingIncidentBadge])
                        {
                          v82 = [v77 accessibilityText];
                          if (!v82)
                          {
                            v654 = [v658 accessibilityText];
                            if (!v654)
                            {
                              v654 = 0;
                              v85 = 1;
                              goto LABEL_617;
                            }
                          }

                          v83 = [v77 accessibilityText];
                          v84 = [v658 accessibilityText];
                          v85 = [v83 isEqualToString:v84];

                          if (!v82)
                          {
LABEL_617:
                            v82 = v654;
                          }

                          v31 = v648;
                          if (!v85)
                          {
                            LODWORD(v654) = 0;
                            a1 = v665;
                            a2 = v660;
                            v57 = v648;
                            v28 = v656;
LABEL_709:

                            swift_unknownObjectRelease();
                            if (v654)
                            {
                              goto LABEL_1065;
                            }

LABEL_90:
                            if (__OFADD__(v15++, 1))
                            {
                              goto LABEL_1070;
                            }

                            continue;
                          }

LABEL_40:
                          v648 = v31;
                          v33 = [v16 modeArtwork];
                          v34 = [v17 modeArtwork];
                          v647 = v33;
                          v35 = v34;
                          v28 = v656;
                          v646 = v35;
                          if (!(v33 | v34))
                          {
LABEL_41:
                            v36 = [v16 alternateArtwork];
                            v37 = [v17 alternateArtwork];
                            v644 = v36;
                            v38 = v37;
                            v649 = v38;
                            if (!(v36 | v37))
                            {
                              goto LABEL_42;
                            }

                            v139 = v644;
                            if (v644)
                            {
                              v140 = v37 == 0;
                            }

                            else
                            {
                              v140 = 0;
                            }

                            v141 = v140;
                            if (v38)
                            {
                              v142 = v36 == 0;
                            }

                            else
                            {
                              v142 = 0;
                            }

                            if (v142 || (v141 & 1) != 0)
                            {
                              LODWORD(v654) = 0;
                              v170 = v644;
                              v643 = v38;
                              v168 = v644;
                              v169 = v38;
                              a1 = v665;
                              v71 = v646;
                              goto LABEL_703;
                            }

                            v143 = [v644 artworkSourceType];
                            a1 = v665;
                            if (v143 != [v649 artworkSourceType] || (v144 = objc_msgSend(v644, "artworkUseType"), v144 != objc_msgSend(v649, "artworkUseType")))
                            {
                              LODWORD(v654) = 0;
                              v170 = v644;
                              v643 = v649;
                              v168 = v644;
                              v169 = v649;
                              v71 = v646;
                              goto LABEL_703;
                            }

                            v145 = [v644 shieldDataSource];
                            v146 = [v649 shieldDataSource];
                            v630 = v145;
                            v147 = v146;
                            if (!(v145 | v146))
                            {
                              goto LABEL_154;
                            }

                            if (v630)
                            {
                              v252 = v146 == 0;
                            }

                            else
                            {
                              v252 = 0;
                            }

                            v253 = v252;
                            if (v147)
                            {
                              v254 = v145 == 0;
                            }

                            else
                            {
                              v254 = 0;
                            }

                            v255 = v147;
                            if (v254 || v253)
                            {

                              LODWORD(v654) = 0;
                              v182 = v644;
                              v637 = v649;
                              v640 = v630;
                              v643 = v255;
                              goto LABEL_698;
                            }

                            v256 = [v630 shieldType];
                            a1 = v665;
                            if (v256 != [v255 shieldType])
                            {

                              LODWORD(v654) = 0;
                              v637 = v649;
                              v640 = v630;
                              v182 = v644;
                              v643 = v255;
                              goto LABEL_699;
                            }

                            v626 = v255;
                            v654 = [v630 shieldText];
                            if (!v654)
                            {
                              v633 = [v255 shieldText];
                              if (!v633)
                              {
                                obj = v17;
                                v645 = v6;
                                v259 = v28;
                                v633 = 0;
                                LODWORD(v640) = 0;
                                goto LABEL_681;
                              }
                            }

                            v257 = [v630 shieldText];
                            v258 = [v626 shieldText];
                            v643 = v257;
                            if ([v257 isEqualToString:v258])
                            {
                              v627 = v258;
                              obj = v17;
                              v645 = v6;
                              v259 = v28;
                              LODWORD(v640) = 1;
LABEL_681:
                              v450 = [v630 shieldColorString];
                              if (v450 || ([v626 shieldColorString], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
                              {
                                v451 = [v630 shieldColorString];
                                v452 = v626;
                                v453 = [v626 shieldColorString];
                                v639 = [v451 isEqualToString:v453];

                                if (v450)
                                {

                                  if (v640)
                                  {
                                    goto LABEL_685;
                                  }

                                  goto LABEL_686;
                                }
                              }

                              else
                              {
                                v452 = v626;
                                v639 = 1;
                              }

                              if (v640)
                              {
LABEL_685:
                              }

LABEL_686:

                              if (v654)
                              {
                              }

                              else
                              {
                              }

                              v147 = v452;
                              v28 = v259;
                              v139 = v644;
                              v6 = v645;
                              v17 = obj;
                              if ((v639 & 1) == 0)
                              {
                                LODWORD(v654) = 0;
                                v182 = v644;
                                v637 = v649;
                                v640 = v630;
                                v643 = v452;
                                goto LABEL_698;
                              }

LABEL_154:
                              v626 = v147;
                              v148 = [v139 iconDataSource];
                              v149 = v649;
                              v150 = [v649 iconDataSource];
                              v627 = v148;
                              v625 = v150;
                              if (!(v148 | v150))
                              {
LABEL_155:
                                v151 = [v644 iconFallbackShieldDataSource];
                                v152 = [v149 iconFallbackShieldDataSource];
                                v633 = v151;
                                v153 = v152;
                                v154 = v153;
                                if (!(v151 | v152))
                                {
                                  goto LABEL_156;
                                }

                                v290 = v633;
                                if (v633)
                                {
                                  v314 = v152 == 0;
                                }

                                else
                                {
                                  v314 = 0;
                                }

                                v315 = v314;
                                if (v153)
                                {
                                  v316 = v151 == 0;
                                }

                                else
                                {
                                  v316 = 0;
                                }

                                v317 = v153;
                                if (v316 || v315)
                                {

                                  v322 = v154;
                                }

                                else
                                {
                                  v645 = v6;
                                  v318 = v28;
                                  v319 = [v633 shieldType];
                                  if (v319 == [v317 shieldType])
                                  {
                                    obj = v17;
                                    v320 = [v633 shieldText];
                                    if (!v320)
                                    {
                                      v640 = [v317 shieldText];
                                      if (!v640)
                                      {
                                        v322 = v317;
                                        v640 = 0;
                                        LODWORD(v623) = 0;
                                        goto LABEL_889;
                                      }
                                    }

                                    v321 = [v633 shieldText];
                                    v322 = v317;
                                    [v317 shieldText];
                                    v654 = v643 = v321;
                                    if ([v321 isEqualToString:?])
                                    {
                                      LODWORD(v623) = 1;
LABEL_889:
                                      v537 = [v633 shieldColorString];
                                      if (v537 || ([v322 shieldColorString], (v622 = objc_claimAutoreleasedReturnValue()) != 0))
                                      {
                                        v538 = [v633 shieldColorString];
                                        v539 = [v322 shieldColorString];
                                        LODWORD(v624) = [v538 isEqualToString:v539];

                                        if (v537)
                                        {

                                          if (v623)
                                          {
                                            goto LABEL_893;
                                          }

                                          goto LABEL_894;
                                        }
                                      }

                                      else
                                      {
                                        v622 = 0;
                                        LODWORD(v624) = 1;
                                      }

                                      if (v623)
                                      {
LABEL_893:
                                      }

LABEL_894:

                                      v154 = v322;
                                      if (v320)
                                      {
                                      }

                                      else
                                      {
                                      }

                                      v28 = v318;
                                      v6 = v645;
                                      v17 = obj;
                                      if ((v624 & 1) == 0)
                                      {
                                        v290 = v633;
                                        goto LABEL_696;
                                      }

LABEL_156:
                                      v637 = v154;
                                      v155 = v644;
                                      v156 = [v644 textDataSource];
                                      v157 = [v649 textDataSource];
                                      v640 = v156;
                                      v643 = v157;
                                      if (!(v156 | v157))
                                      {
LABEL_157:
                                        v158 = [v155 hasRoutingIncidentBadge];
                                        if (v158 == [v649 hasRoutingIncidentBadge])
                                        {
                                          v159 = v6;
                                          v160 = v28;
                                          v161 = [v155 accessibilityText];
                                          if (!v161)
                                          {
                                            v28 = [v649 accessibilityText];
                                            if (!v28)
                                            {
                                              v655 = 1;
                                              goto LABEL_816;
                                            }
                                          }

                                          v162 = [v644 accessibilityText];
                                          v163 = [v649 accessibilityText];
                                          v655 = [v162 isEqualToString:v163];

                                          if (!v161)
                                          {
LABEL_816:
                                            v161 = v28;
                                          }

                                          v28 = v160;
                                          v6 = v159;
                                          if ((v655 & 1) == 0)
                                          {
LABEL_43:
                                            LODWORD(v654) = 0;
                                            v40 = v646;
                                            v41 = v647;
                                            a1 = v665;
                                            v42 = v644;
                                            goto LABEL_706;
                                          }

LABEL_42:
                                          v39 = [v16 hasLineColorString];
                                          if (v39 != [v17 hasLineColorString])
                                          {
                                            goto LABEL_43;
                                          }

                                          v164 = [v16 lineColorString];
                                          v165 = [v17 lineColorString];
                                          v640 = v164;
                                          v643 = v165;
                                          if (v164 | v165 && (v166 = [v640 isEqual:v643], v640, v643, !v166) || (v167 = objc_msgSend(v16, "showVehicleNumber"), v167 != objc_msgSend(v17, "showVehicleNumber")))
                                          {
                                            LODWORD(v654) = 0;
                                            v168 = v644;
                                            v169 = v649;
                                            a1 = v665;
                                            v71 = v646;
                                            goto LABEL_702;
                                          }

                                          v178 = [v16 operatingHours];
                                          v179 = [v17 operatingHours];
                                          v633 = v178;
                                          v180 = v179;
                                          v181 = &stru_101618378;
                                          if (!(v178 | v179))
                                          {
                                            LODWORD(v654) = 1;
                                            goto LABEL_192;
                                          }

                                          if (v633)
                                          {
                                            v213 = v179 == 0;
                                          }

                                          else
                                          {
                                            v213 = 0;
                                          }

                                          v214 = v213;
                                          if (v180)
                                          {
                                            v215 = v178 == 0;
                                          }

                                          else
                                          {
                                            v215 = 0;
                                          }

                                          LODWORD(v654) = 0;
                                          if (v215)
                                          {
LABEL_192:
                                            a1 = v665;
                                            v71 = v646;
                                            v182 = v633;
                                          }

                                          else
                                          {
                                            a1 = v665;
                                            v71 = v646;
                                            v182 = v633;
                                            if ((v214 & 1) == 0)
                                            {
                                              v216 = [v633 count];
                                              if (v216 == [v180 count])
                                              {
                                                v671 = 0u;
                                                v672 = 0u;
                                                v669 = 0u;
                                                v670 = 0u;
                                                obj = v633;
                                                v654 = [obj countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                if (v654)
                                                {
                                                  v645 = v6;
                                                  v217 = 0;
                                                  v218 = *v670;
                                                  while (2)
                                                  {
                                                    for (i = 0; i != v654; ++i)
                                                    {
                                                      if (*v670 != v218)
                                                      {
                                                        objc_enumerationMutation(obj);
                                                      }

                                                      v220 = *(*(&v669 + 1) + 8 * i);
                                                      v221 = v180;
                                                      v222 = [v180 objectAtIndexedSubscript:v217];
                                                      LODWORD(v220) = sub_100420E14(v222, v220, v222);

                                                      if (!v220)
                                                      {
                                                        LODWORD(v654) = 0;
                                                        a1 = v665;
                                                        v6 = v645;
                                                        v180 = v221;
                                                        goto LABEL_451;
                                                      }

                                                      ++v217;
                                                      v180 = v221;
                                                    }

                                                    v654 = [obj countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                    if (v654)
                                                    {
                                                      continue;
                                                    }

                                                    break;
                                                  }

                                                  LODWORD(v654) = 1;
                                                  a1 = v665;
                                                  v6 = v645;
LABEL_451:
                                                  v182 = v633;
                                                }

                                                else
                                                {
                                                  v182 = v633;
                                                  LODWORD(v654) = 1;
                                                }
                                              }

                                              else
                                              {
                                                LODWORD(v654) = 0;
                                                v182 = v633;
                                              }

                                              v71 = v646;
                                            }
                                          }

                                          v637 = v180;
LABEL_700:

                                          v168 = v644;
                                          v169 = v649;
                                          v260 = v637;
LABEL_701:

LABEL_702:
                                          v170 = v640;
LABEL_703:

                                          v261 = v643;
LABEL_704:

                                          v42 = v168;
                                          v649 = v169;
                                          v41 = v647;
LABEL_705:
                                          v40 = v71;
                                          v28 = v656;
LABEL_706:

                                          v58 = v41;
                                          v57 = v648;
LABEL_707:

LABEL_708:
                                          a2 = v660;
                                          goto LABEL_709;
                                        }

LABEL_1061:

                                        LODWORD(v654) = 0;
                                        a1 = v665;
                                        v71 = v646;
                                        v182 = v633;
                                        goto LABEL_700;
                                      }

                                      v645 = v6;
                                      if (v640)
                                      {
                                        v326 = v157 == 0;
                                      }

                                      else
                                      {
                                        v326 = 0;
                                      }

                                      v327 = v326;
                                      if (v643)
                                      {
                                        v328 = v156 == 0;
                                      }

                                      else
                                      {
                                        v328 = 0;
                                      }

                                      v329 = v640;
                                      v330 = v643;
                                      if (!v328)
                                      {
                                        v329 = v640;
                                        v330 = v643;
                                        if ((v327 & 1) == 0)
                                        {
                                          obj = v17;
                                          v331 = [v640 text];
                                          v332 = [v643 text];
                                          v654 = v331;
                                          v333 = v332;
                                          v329 = v333;
                                          if (!(v331 | v332))
                                          {

                                            v28 = v656;
                                            v155 = v644;
                                            v6 = v645;
                                            goto LABEL_157;
                                          }

                                          if (v654)
                                          {
                                            v418 = v332 == 0;
                                          }

                                          else
                                          {
                                            v418 = 0;
                                          }

                                          v419 = v418;
                                          if (v333)
                                          {
                                            v420 = v331 == 0;
                                          }

                                          else
                                          {
                                            v420 = 0;
                                          }

                                          if (v420 || (v419 & 1) != 0)
                                          {
                                            v487 = v640;
                                            v488 = v643;
                                            v489 = v654;
                                            v624 = v333;
                                          }

                                          else
                                          {
                                            v421 = [v654 formatStrings];
                                            v422 = [v329 formatStrings];
                                            v619 = v421;
                                            v623 = v422;
                                            v423 = &stru_101618398;
                                            if (!(v421 | v422))
                                            {

                                              goto LABEL_651;
                                            }

                                            if (v619)
                                            {
                                              v540 = v422 == 0;
                                            }

                                            else
                                            {
                                              v540 = 0;
                                            }

                                            v541 = v540;
                                            if (v623)
                                            {
                                              v542 = v421 == 0;
                                            }

                                            else
                                            {
                                              v542 = 0;
                                            }

                                            if (v542 || (v541 & 1) != 0 || (v543 = [v619 count], v543 != objc_msgSend(v623, "count")))
                                            {

                                              v553 = v623;
                                              v554 = v640;
                                              v555 = v643;
                                              v489 = v329;
                                              v622 = v619;
LABEL_925:
                                              v624 = v553;
                                            }

                                            else
                                            {
                                              v671 = 0u;
                                              v672 = 0u;
                                              v669 = 0u;
                                              v670 = 0u;
                                              v622 = v619;
                                              v544 = [v622 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                              if (v544)
                                              {
                                                v545 = v544;
                                                v546 = 0;
                                                v547 = *v670;
                                                while (2)
                                                {
                                                  for (j = 0; j != v545; j = j + 1)
                                                  {
                                                    if (*v670 != v547)
                                                    {
                                                      objc_enumerationMutation(v622);
                                                    }

                                                    v549 = *(*(&v669 + 1) + 8 * j);
                                                    v550 = [v623 objectAtIndexedSubscript:v546];
                                                    LODWORD(v549) = sub_100420EEC(v550, v549, v550);

                                                    if (!v549)
                                                    {
                                                      v553 = v623;

                                                      v554 = v640;
                                                      v555 = v643;
                                                      v489 = v329;
                                                      goto LABEL_925;
                                                    }

                                                    ++v546;
                                                  }

                                                  v545 = [v622 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                  if (v545)
                                                  {
                                                    continue;
                                                  }

                                                  break;
                                                }
                                              }

LABEL_651:
                                              v424 = [v654 separators];
                                              v425 = [v329 separators];
                                              v622 = v424;
                                              v624 = v425;
                                              v426 = &stru_1016183B8;
                                              if (!(v424 | v425))
                                              {

                                                goto LABEL_653;
                                              }

                                              if (v622)
                                              {
                                                v578 = v425 == 0;
                                              }

                                              else
                                              {
                                                v578 = 0;
                                              }

                                              v579 = v578;
                                              if (v624)
                                              {
                                                v580 = v424 == 0;
                                              }

                                              else
                                              {
                                                v580 = 0;
                                              }

                                              if (v580 || (v579 & 1) != 0 || (v581 = [v622 count], v581 != objc_msgSend(v624, "count")))
                                              {
                                              }

                                              else
                                              {
                                                v671 = 0u;
                                                v672 = 0u;
                                                v669 = 0u;
                                                v670 = 0u;
                                                v616 = v622;
                                                v582 = [v616 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                if (v582)
                                                {
                                                  v583 = v582;
                                                  v584 = 0;
                                                  v585 = *v670;
                                                  while (2)
                                                  {
                                                    for (k = 0; k != v583; k = k + 1)
                                                    {
                                                      if (*v670 != v585)
                                                      {
                                                        objc_enumerationMutation(v616);
                                                      }

                                                      v587 = *(*(&v669 + 1) + 8 * k);
                                                      v588 = [v624 objectAtIndexedSubscript:v584];
                                                      LODWORD(v587) = sub_100420EEC(v588, v587, v588);

                                                      if (!v587)
                                                      {

                                                        v604 = v616;
                                                        goto LABEL_1056;
                                                      }

                                                      ++v584;
                                                    }

                                                    v583 = [v616 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                    if (v583)
                                                    {
                                                      continue;
                                                    }

                                                    break;
                                                  }
                                                }

LABEL_653:
                                                v427 = [v654 formatTokens];
                                                v428 = [v329 formatTokens];
                                                v611 = v427;
                                                v615 = v428;
                                                v429 = &stru_1016183D8;
                                                if (!(v427 | v428))
                                                {

                                                  goto LABEL_655;
                                                }

                                                if (v611)
                                                {
                                                  v592 = v428 == 0;
                                                }

                                                else
                                                {
                                                  v592 = 0;
                                                }

                                                v593 = v592;
                                                if (v615)
                                                {
                                                  v594 = v427 == 0;
                                                }

                                                else
                                                {
                                                  v594 = 0;
                                                }

                                                if (!v594 && (v593 & 1) == 0)
                                                {
                                                  v595 = [v611 count];
                                                  if (v595 == [v615 count])
                                                  {
                                                    v671 = 0u;
                                                    v672 = 0u;
                                                    v669 = 0u;
                                                    v670 = 0u;
                                                    v609 = v611;
                                                    v596 = [v609 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                    if (v596)
                                                    {
                                                      v597 = v596;
                                                      v598 = 0;
                                                      v599 = *v670;
                                                      while (2)
                                                      {
                                                        for (m = 0; m != v597; m = m + 1)
                                                        {
                                                          if (*v670 != v599)
                                                          {
                                                            objc_enumerationMutation(v609);
                                                          }

                                                          v601 = *(*(&v669 + 1) + 8 * m);
                                                          v602 = [v615 objectAtIndexedSubscript:v598];
                                                          LODWORD(v601) = sub_100420EF0(v602, v601, v602);

                                                          if (!v601)
                                                          {
                                                            v604 = v615;

                                                            v603 = v609;
                                                            goto LABEL_1037;
                                                          }

                                                          ++v598;
                                                        }

                                                        v597 = [v609 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                        if (v597)
                                                        {
                                                          continue;
                                                        }

                                                        break;
                                                      }
                                                    }

LABEL_655:
                                                    v430 = [v654 alternativeString];
                                                    v431 = [v329 alternativeString];
                                                    v432 = v430 | v431;
                                                    v433 = v430;
                                                    v434 = v431;
                                                    if (v432)
                                                    {
                                                      v435 = [v433 isEqual:v434];
                                                    }

                                                    else
                                                    {
                                                      v435 = 1;
                                                    }

                                                    v28 = v656;
                                                    v155 = v644;
                                                    v6 = v645;
                                                    v17 = obj;
                                                    if (v435)
                                                    {
                                                      goto LABEL_157;
                                                    }

                                                    goto LABEL_1061;
                                                  }
                                                }

                                                v603 = v611;

                                                v604 = v615;
LABEL_1037:

LABEL_1056:
                                              }

                                              v555 = v654;
                                              v554 = v654;
                                              v654 = v329;
                                              v329 = v619;
                                              v489 = v623;
                                            }

                                            v488 = v654;
                                            v487 = v654;
                                            v654 = v329;
                                            v329 = v622;
                                          }

                                          v17 = obj;
                                          v330 = v624;
                                        }
                                      }

                                      v155 = v644;
                                      v6 = v645;
                                      goto LABEL_1061;
                                    }

                                    if (v320)
                                    {
                                      v317 = v320;
                                    }

                                    else
                                    {
                                      v317 = v640;
                                    }

                                    v6 = v645;
                                    v17 = obj;
                                  }

                                  else
                                  {

                                    v322 = v317;
                                    v6 = v645;
                                  }
                                }

                                v154 = v322;
                                goto LABEL_696;
                              }

                              if (v627)
                              {
                                v287 = v150 == 0;
                              }

                              else
                              {
                                v287 = 0;
                              }

                              v288 = v287;
                              if (v625)
                              {
                                v289 = v148 == 0;
                              }

                              else
                              {
                                v289 = 0;
                              }

                              v290 = v627;
                              v154 = v625;
                              if (!v289 && (v290 = v627, v154 = v625, (v288 & 1) == 0) && (v291 = [v627 iconType], v290 = v627, v154 = v625, v291 == objc_msgSend(v625, "iconType")) && (v292 = objc_msgSend(v627, "cartoID"), v290 = v627, v154 = v625, v292 == objc_msgSend(v625, "cartoID")) && (v293 = objc_msgSend(v627, "defaultTransitType"), v290 = v627, v154 = v625, v293 == objc_msgSend(v625, "defaultTransitType")) && (v294 = objc_msgSend(v627, "iconAttributeKey"), v290 = v627, v154 = v625, v294 == objc_msgSend(v625, "iconAttributeKey")))
                              {
                                v295 = [v627 iconAttributeValue];
                                v296 = [v625 iconAttributeValue];

                                v149 = v649;
                                if (v295 == v296)
                                {
                                  goto LABEL_155;
                                }
                              }

                              else
                              {
LABEL_696:

                                v149 = v649;
                              }

                              LODWORD(v654) = 0;
                              v182 = v630;
                              v637 = v626;
                              v640 = v627;
                              v643 = v625;
LABEL_698:
                              a1 = v665;
                            }

                            else
                            {

                              v360 = v654;
                              if (!v654)
                              {
                                v360 = v633;
                              }

                              LODWORD(v654) = 0;
                              v637 = v649;
                              v640 = v630;
                              v182 = v644;
                              v643 = v626;
                            }

LABEL_699:
                            v71 = v646;
                            goto LABEL_700;
                          }

                          v41 = v647;
                          if (v647)
                          {
                            v87 = v34 == 0;
                          }

                          else
                          {
                            v87 = 0;
                          }

                          v88 = v87;
                          if (v35)
                          {
                            v89 = v33 == 0;
                          }

                          else
                          {
                            v89 = 0;
                          }

                          if (v89)
                          {
                            LODWORD(v654) = 0;
                            v42 = v647;
                            v40 = v35;
                            v649 = v35;
                            a1 = v665;
                            goto LABEL_706;
                          }

                          a1 = v665;
                          if (v88)
                          {
                            LODWORD(v654) = 0;
                            v42 = v647;
                            v40 = v35;
                            v649 = v35;
                            goto LABEL_706;
                          }

                          v90 = [v647 artworkSourceType];
                          v71 = v646;
                          if (v90 != [v646 artworkSourceType] || (v91 = objc_msgSend(v647, "artworkUseType"), v91 != objc_msgSend(v646, "artworkUseType")))
                          {
                            LODWORD(v654) = 0;
                            v42 = v647;
                            v649 = v646;
                            goto LABEL_705;
                          }

                          v92 = [v647 shieldDataSource];
                          v93 = [v646 shieldDataSource];
                          v94 = v92;
                          v95 = v93;
                          v635 = v94;
                          if (!(v92 | v93))
                          {
LABEL_107:
                            v633 = v95;
                            v96 = v647;
                            v97 = [v647 iconDataSource];
                            v98 = [v71 iconDataSource];
                            v628 = v97;
                            v627 = v98;
                            if (!(v97 | v98))
                            {
                              goto LABEL_108;
                            }

                            if (v628)
                            {
                              v240 = v98 == 0;
                            }

                            else
                            {
                              v240 = 0;
                            }

                            v241 = v240;
                            if (v627)
                            {
                              v242 = v97 == 0;
                            }

                            else
                            {
                              v242 = 0;
                            }

                            v243 = v628;
                            v244 = v627;
                            if (v242)
                            {
                              goto LABEL_613;
                            }

                            v243 = v628;
                            v244 = v627;
                            if (v241)
                            {
                              goto LABEL_613;
                            }

                            v245 = [v628 iconType];
                            v243 = v628;
                            v244 = v627;
                            if (v245 != [v627 iconType])
                            {
                              goto LABEL_613;
                            }

                            v246 = [v628 cartoID];
                            v243 = v628;
                            v244 = v627;
                            if (v246 != [v627 cartoID])
                            {
                              goto LABEL_613;
                            }

                            v247 = [v628 defaultTransitType];
                            v243 = v628;
                            v244 = v627;
                            if (v247 != [v627 defaultTransitType])
                            {
                              goto LABEL_613;
                            }

                            v248 = [v628 iconAttributeKey];
                            v243 = v628;
                            v244 = v627;
                            if (v248 != [v627 iconAttributeKey])
                            {
                              goto LABEL_613;
                            }

                            v249 = [v628 iconAttributeValue];
                            v250 = [v627 iconAttributeValue];

                            v96 = v647;
                            if (v249 != v250)
                            {
LABEL_614:

                              LODWORD(v654) = 0;
                              v71 = v646;
                              v260 = v646;
                              v640 = v635;
                              v643 = v633;
                              v169 = v627;
                              v168 = v628;
                              goto LABEL_615;
                            }

LABEL_108:
                            v99 = [v96 iconFallbackShieldDataSource];
                            v100 = [v646 iconFallbackShieldDataSource];
                            v640 = v99;
                            v101 = v100;
                            v28 = v656;
                            if (!(v99 | v100))
                            {
LABEL_109:
                              v643 = v101;
                              v102 = [v96 textDataSource];
                              v103 = [v646 textDataSource];
                              v644 = v102;
                              v649 = v103;
                              if (!(v102 | v103))
                              {
                                goto LABEL_110;
                              }

                              if (v644)
                              {
                                v307 = v103 == 0;
                              }

                              else
                              {
                                v307 = 0;
                              }

                              v308 = v307;
                              if (v649)
                              {
                                v309 = v102 == 0;
                              }

                              else
                              {
                                v309 = 0;
                              }

                              v310 = v644;
                              v311 = v649;
                              if (!v309)
                              {
                                v310 = v644;
                                v311 = v649;
                                if ((v308 & 1) == 0)
                                {
                                  v645 = v6;
                                  v312 = [v644 text];
                                  v313 = [v649 text];
                                  v626 = v312;
                                  v654 = v313;
                                  if (!(v312 | v313))
                                  {

                                    goto LABEL_110;
                                  }

                                  obj = v17;
                                  v384 = v626;
                                  if (v626)
                                  {
                                    v385 = v313 == 0;
                                  }

                                  else
                                  {
                                    v385 = 0;
                                  }

                                  v386 = v385;
                                  if (v654)
                                  {
                                    v387 = v312 == 0;
                                  }

                                  else
                                  {
                                    v387 = 0;
                                  }

                                  if (v387 || (v386 & 1) != 0)
                                  {
                                    v436 = v644;
                                    v437 = v649;
                                    v438 = v626;
                                    v625 = v654;
                                  }

                                  else
                                  {
                                    v388 = [v626 formatStrings];
                                    v389 = [v654 formatStrings];
                                    v622 = v388;
                                    v624 = v389;
                                    v390 = &stru_101618398;
                                    if (!(v388 | v389))
                                    {

                                      goto LABEL_585;
                                    }

                                    if (v622)
                                    {
                                      v490 = v389 == 0;
                                    }

                                    else
                                    {
                                      v490 = 0;
                                    }

                                    v491 = v490;
                                    if (v624)
                                    {
                                      v492 = v388 == 0;
                                    }

                                    else
                                    {
                                      v492 = 0;
                                    }

                                    if (v492 || (v491 & 1) != 0 || (v493 = [v622 count], v493 != objc_msgSend(v624, "count")))
                                    {

                                      v501 = v624;
                                      v502 = v644;
                                      v503 = v649;
                                      v438 = v654;
                                      v623 = v622;
LABEL_814:
                                      v625 = v501;
                                    }

                                    else
                                    {
                                      v671 = 0u;
                                      v672 = 0u;
                                      v669 = 0u;
                                      v670 = 0u;
                                      v623 = v622;
                                      v494 = [v623 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                      if (v494)
                                      {
                                        v495 = v494;
                                        v496 = 0;
                                        v497 = *v670;
                                        while (2)
                                        {
                                          for (n = 0; n != v495; n = n + 1)
                                          {
                                            if (*v670 != v497)
                                            {
                                              objc_enumerationMutation(v623);
                                            }

                                            v499 = *(*(&v669 + 1) + 8 * n);
                                            v500 = [v624 objectAtIndexedSubscript:v496];
                                            LODWORD(v499) = sub_100420EEC(v500, v499, v500);

                                            if (!v499)
                                            {
                                              v501 = v624;

                                              v502 = v644;
                                              v503 = v649;
                                              v438 = v654;
                                              goto LABEL_814;
                                            }

                                            ++v496;
                                          }

                                          v495 = [v623 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                          if (v495)
                                          {
                                            continue;
                                          }

                                          break;
                                        }
                                      }

LABEL_585:
                                      v391 = [v626 separators];
                                      v392 = [v654 separators];
                                      v623 = v391;
                                      v625 = v392;
                                      v393 = &stru_1016183B8;
                                      if (!(v391 | v392))
                                      {

                                        goto LABEL_587;
                                      }

                                      if (v623)
                                      {
                                        v526 = v392 == 0;
                                      }

                                      else
                                      {
                                        v526 = 0;
                                      }

                                      v527 = v526;
                                      if (v625)
                                      {
                                        v528 = v391 == 0;
                                      }

                                      else
                                      {
                                        v528 = 0;
                                      }

                                      if (v528 || (v527 & 1) != 0 || (v529 = [v623 count], v529 != objc_msgSend(v625, "count")))
                                      {
                                      }

                                      else
                                      {
                                        v671 = 0u;
                                        v672 = 0u;
                                        v669 = 0u;
                                        v670 = 0u;
                                        v621 = v623;
                                        v530 = [v621 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                        if (v530)
                                        {
                                          v531 = v530;
                                          v532 = 0;
                                          v533 = *v670;
                                          while (2)
                                          {
                                            for (ii = 0; ii != v531; ii = ii + 1)
                                            {
                                              if (*v670 != v533)
                                              {
                                                objc_enumerationMutation(v621);
                                              }

                                              v535 = *(*(&v669 + 1) + 8 * ii);
                                              v536 = [v625 objectAtIndexedSubscript:v532];
                                              LODWORD(v535) = sub_100420EEC(v536, v535, v536);

                                              if (!v535)
                                              {

                                                v591 = v621;
                                                goto LABEL_1043;
                                              }

                                              ++v532;
                                            }

                                            v531 = [v621 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                            if (v531)
                                            {
                                              continue;
                                            }

                                            break;
                                          }
                                        }

LABEL_587:
                                        v394 = [v626 formatTokens];
                                        v395 = [v654 formatTokens];
                                        v614 = v394;
                                        v618 = v395;
                                        v396 = &stru_1016183D8;
                                        if (!(v394 | v395))
                                        {

                                          goto LABEL_589;
                                        }

                                        if (v614)
                                        {
                                          v567 = v395 == 0;
                                        }

                                        else
                                        {
                                          v567 = 0;
                                        }

                                        v568 = v567;
                                        if (v618)
                                        {
                                          v569 = v394 == 0;
                                        }

                                        else
                                        {
                                          v569 = 0;
                                        }

                                        if (!v569 && (v568 & 1) == 0)
                                        {
                                          v570 = [v614 count];
                                          if (v570 == [v618 count])
                                          {
                                            v671 = 0u;
                                            v672 = 0u;
                                            v669 = 0u;
                                            v670 = 0u;
                                            v612 = v614;
                                            v571 = [v612 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                            if (v571)
                                            {
                                              v572 = v571;
                                              v573 = 0;
                                              v574 = *v670;
                                              while (2)
                                              {
                                                for (jj = 0; jj != v572; jj = jj + 1)
                                                {
                                                  if (*v670 != v574)
                                                  {
                                                    objc_enumerationMutation(v612);
                                                  }

                                                  v576 = *(*(&v669 + 1) + 8 * jj);
                                                  v577 = [v618 objectAtIndexedSubscript:v573];
                                                  LODWORD(v576) = sub_100420EF0(v577, v576, v577);

                                                  if (!v576)
                                                  {
                                                    v591 = v618;

                                                    v590 = v612;
                                                    goto LABEL_999;
                                                  }

                                                  ++v573;
                                                }

                                                v572 = [v612 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                                if (v572)
                                                {
                                                  continue;
                                                }

                                                break;
                                              }
                                            }

LABEL_589:
                                            v397 = [v626 alternativeString];
                                            v398 = [v654 alternativeString];
                                            v399 = v397 | v398;
                                            v400 = v397;
                                            v401 = v398;
                                            if (v399)
                                            {
                                              v402 = [v400 isEqual:v401];
                                            }

                                            else
                                            {
                                              v402 = 1;
                                            }

                                            v28 = v656;
                                            v6 = v645;
                                            v96 = v647;
                                            v17 = obj;
                                            if ((v402 & 1) == 0)
                                            {
LABEL_1048:

                                              v71 = v646;
                                              LODWORD(v654) = 0;
                                              v260 = v627;
                                              a1 = v665;
                                              v168 = v644;
                                              v169 = v649;
                                              goto LABEL_701;
                                            }

LABEL_110:
                                            v104 = [v96 hasRoutingIncidentBadge];
                                            if (v104 != [v646 hasRoutingIncidentBadge])
                                            {
                                              goto LABEL_1048;
                                            }

                                            v105 = [v96 accessibilityText];
                                            if (v105 || ([v646 accessibilityText], (obj = objc_claimAutoreleasedReturnValue()) != 0))
                                            {
                                              v106 = v96;
                                              v107 = [v96 accessibilityText];
                                              v108 = [v646 accessibilityText];
                                              LODWORD(v654) = [v107 isEqualToString:v108];

                                              if (!v105)
                                              {
LABEL_715:
                                                v105 = obj;
                                              }

                                              v40 = v646;
                                              if (v654)
                                              {
                                                goto LABEL_41;
                                              }

                                              LODWORD(v654) = 0;
                                              a1 = v665;
                                              v58 = v647;
                                              v57 = v648;
                                              goto LABEL_707;
                                            }

                                            v106 = v96;
                                            obj = 0;
                                            LODWORD(v654) = 1;
                                            goto LABEL_715;
                                          }
                                        }

                                        v590 = v614;

                                        v591 = v618;
LABEL_999:

LABEL_1043:
                                      }

                                      v502 = v626;
                                      v503 = v626;
                                      v384 = v654;
                                      v654 = v622;
                                      v438 = v624;
                                    }

                                    v436 = v384;
                                    v437 = v384;
                                    v384 = v654;
                                    v654 = v623;
                                  }

                                  v6 = v645;
                                  v96 = v647;
                                  v17 = obj;
                                  v310 = v654;
                                  v311 = v625;
                                }
                              }

                              goto LABEL_1048;
                            }

                            if (v640)
                            {
                              v278 = v100 == 0;
                            }

                            else
                            {
                              v278 = 0;
                            }

                            v279 = v278;
                            v244 = v101;
                            if (v101)
                            {
                              v280 = v99 == 0;
                            }

                            else
                            {
                              v280 = 0;
                            }

                            if (v280 || v279 || (v281 = [v640 shieldType], v281 != objc_msgSend(v244, "shieldType")))
                            {
                              v282 = v640;

                              v359 = v244;
                            }

                            else
                            {
                              obj = v17;
                              v645 = v6;
                              v282 = v640;
                              v283 = [v640 shieldText];
                              if (!v283)
                              {
                                v654 = [v244 shieldText];
                                if (!v654)
                                {
                                  v654 = 0;
                                  LODWORD(v644) = 0;
                                  goto LABEL_778;
                                }
                              }

                              v284 = [v640 shieldText];
                              v285 = [v244 shieldText];
                              if ([v284 isEqualToString:v285])
                              {
                                v625 = v284;
                                v626 = v285;
                                LODWORD(v644) = 1;
LABEL_778:
                                v484 = [v640 shieldColorString];
                                if (v484 || ([v244 shieldColorString], (v624 = objc_claimAutoreleasedReturnValue()) != 0))
                                {
                                  v485 = [v640 shieldColorString];
                                  v486 = [v244 shieldColorString];
                                  v650 = [v485 isEqualToString:v486];

                                  if (v484)
                                  {

                                    if (v644)
                                    {
                                      goto LABEL_782;
                                    }

                                    goto LABEL_783;
                                  }
                                }

                                else
                                {
                                  v624 = 0;
                                  v650 = 1;
                                }

                                if (v644)
                                {
LABEL_782:
                                }

LABEL_783:

                                if (v283)
                                {
                                }

                                else
                                {
                                }

                                v101 = v244;
                                v28 = v656;
                                v6 = v645;
                                v96 = v647;
                                if (v650)
                                {
                                  goto LABEL_109;
                                }

                                v243 = v640;
LABEL_613:

                                v96 = v647;
                                goto LABEL_614;
                              }

                              v359 = v654;
                              if (v283)
                              {
                                v359 = v283;
                              }

                              v6 = v645;
                            }

                            v243 = v282;
                            goto LABEL_613;
                          }

                          if (v94)
                          {
                            v201 = v93 == 0;
                          }

                          else
                          {
                            v201 = 0;
                          }

                          v202 = v201;
                          if (v95)
                          {
                            v203 = v92 == 0;
                          }

                          else
                          {
                            v203 = 0;
                          }

                          v169 = v95;
                          if (v203 || v202)
                          {
                            v168 = v635;

                            LODWORD(v654) = 0;
                            v260 = v169;
                            v71 = v646;
                            v640 = v647;
                            v643 = v646;
LABEL_615:
                            a1 = v665;
                            goto LABEL_701;
                          }

                          v204 = v95;
                          v205 = [v635 shieldType];
                          a1 = v665;
                          if (v205 != [v204 shieldType])
                          {

                            LODWORD(v654) = 0;
                            v260 = v204;
                            v297 = v204;
                            v71 = v646;
                            v640 = v647;
                            v643 = v646;
                            v168 = v635;
                            v169 = v297;
                            goto LABEL_701;
                          }

                          v206 = [v635 shieldText];
                          v207 = v204;
                          v71 = v646;
                          v208 = v207;
                          obj = v206;
                          if (v206 || ([v207 shieldText], (v649 = objc_claimAutoreleasedReturnValue()) != 0))
                          {
                            v209 = [v635 shieldText];
                            [v208 shieldText];
                            v210 = v633 = v208;
                            if (([v209 isEqualToString:v210] & 1) == 0)
                            {

                              v168 = v635;
                              v169 = v633;

                              LODWORD(v654) = 0;
                              v260 = v649;
                              if (obj)
                              {
                                v260 = obj;
                              }

                              v640 = v647;
                              v643 = v646;
                              goto LABEL_701;
                            }

                            v212 = v633;
                            v211 = v635;
                            v644 = v210;
                            v645 = v209;
                            LODWORD(v654) = 1;
                          }

                          else
                          {
                            v211 = v635;
                            v212 = v208;
                            v649 = 0;
                            LODWORD(v654) = 0;
                          }

                          v406 = [v211 shieldColorString];
                          if (v406 || ([v212 shieldColorString], (v643 = objc_claimAutoreleasedReturnValue()) != 0))
                          {
                            v407 = [v635 shieldColorString];
                            v408 = [v212 shieldColorString];
                            v409 = [v407 isEqualToString:v408];

                            v410 = v212;
                            if (v406)
                            {

                              v411 = v409;
                              if (v654)
                              {
                                goto LABEL_598;
                              }

                              goto LABEL_599;
                            }

                            v411 = v409;
                            v412 = v643;
                          }

                          else
                          {
                            v410 = v212;
                            v412 = 0;
                            v411 = 1;
                          }

                          if (v654)
                          {
LABEL_598:
                          }

LABEL_599:

                          if (obj)
                          {
                          }

                          else
                          {
                          }

                          v95 = v410;
                          v71 = v646;
                          if ((v411 & 1) == 0)
                          {
                            LODWORD(v654) = 0;
                            v170 = v647;
                            v643 = v646;
                            a1 = v665;
                            v168 = v635;
                            v169 = v95;
                            goto LABEL_703;
                          }

                          goto LABEL_107;
                        }

LABEL_1009:

                        LODWORD(v654) = 0;
                        v261 = v80;
                        a1 = v665;
                        v71 = v646;
                        v169 = v633;
                        v168 = v634;
                        goto LABEL_704;
                      }

                      if (v647)
                      {
                        v262 = v79 == 0;
                      }

                      else
                      {
                        v262 = 0;
                      }

                      v263 = v262;
                      if (v646)
                      {
                        v264 = v78 == 0;
                      }

                      else
                      {
                        v264 = 0;
                      }

                      v265 = v647;
                      v266 = v646;
                      if (!v264)
                      {
                        v265 = v647;
                        v266 = v646;
                        if ((v263 & 1) == 0)
                        {
                          v267 = [v647 text];
                          v268 = [v646 text];
                          v654 = v267;
                          v269 = v268;
                          v270 = v269;
                          if (!(v267 | v268))
                          {

                            v77 = v648;
                            v80 = v640;
                            goto LABEL_80;
                          }

                          obj = v17;
                          v645 = v6;
                          v334 = v654;
                          if (v654)
                          {
                            v335 = v268 == 0;
                          }

                          else
                          {
                            v335 = 0;
                          }

                          v336 = v335;
                          if (v269)
                          {
                            v337 = v267 == 0;
                          }

                          else
                          {
                            v337 = 0;
                          }

                          v265 = v269;
                          if (v337 || (v336 & 1) != 0)
                          {
                            v404 = v646;
                            v403 = v647;
                            v405 = v654;
                            v632 = v269;
                          }

                          else
                          {
                            v338 = [v654 formatStrings];
                            v626 = v270;
                            v339 = [v270 formatStrings];
                            v624 = v338;
                            v627 = v339;
                            v340 = &stru_101618398;
                            if (!(v338 | v339))
                            {

                              goto LABEL_505;
                            }

                            if (v624)
                            {
                              v439 = v339 == 0;
                            }

                            else
                            {
                              v439 = 0;
                            }

                            v440 = v439;
                            if (v627)
                            {
                              v441 = v338 == 0;
                            }

                            else
                            {
                              v441 = 0;
                            }

                            if (v441 || (v440 & 1) != 0 || (v442 = [v624 count], v442 != objc_msgSend(v627, "count")))
                            {

                              v454 = v627;
                              v456 = v646;
                              v455 = v647;
                              v405 = v626;
                              v625 = v624;
LABEL_713:
                              v632 = v454;
                            }

                            else
                            {
                              v671 = 0u;
                              v672 = 0u;
                              v669 = 0u;
                              v670 = 0u;
                              v625 = v624;
                              v443 = [v625 countByEnumeratingWithState:&v669 objects:v668 count:16];
                              if (v443)
                              {
                                v444 = v443;
                                v445 = 0;
                                v446 = *v670;
                                while (2)
                                {
                                  for (kk = 0; kk != v444; kk = kk + 1)
                                  {
                                    if (*v670 != v446)
                                    {
                                      objc_enumerationMutation(v625);
                                    }

                                    v448 = *(*(&v669 + 1) + 8 * kk);
                                    v449 = [v627 objectAtIndexedSubscript:v445];
                                    LODWORD(v448) = sub_100420EEC(v449, v448, v449);

                                    if (!v448)
                                    {
                                      v454 = v627;

                                      v456 = v646;
                                      v455 = v647;
                                      v405 = v626;
                                      goto LABEL_713;
                                    }

                                    ++v445;
                                  }

                                  v444 = [v625 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                  if (v444)
                                  {
                                    continue;
                                  }

                                  break;
                                }
                              }

LABEL_505:
                              v341 = [v654 separators];
                              v342 = [v626 separators];
                              v625 = v341;
                              v632 = v342;
                              v343 = &stru_1016183B8;
                              if (!(v341 | v342))
                              {

                                goto LABEL_507;
                              }

                              if (v625)
                              {
                                v460 = v342 == 0;
                              }

                              else
                              {
                                v460 = 0;
                              }

                              v461 = v460;
                              if (v632)
                              {
                                v462 = v341 == 0;
                              }

                              else
                              {
                                v462 = 0;
                              }

                              if (v462 || (v461 & 1) != 0 || (v463 = [v625 count], v463 != objc_msgSend(v632, "count")))
                              {
                              }

                              else
                              {
                                v671 = 0u;
                                v672 = 0u;
                                v669 = 0u;
                                v670 = 0u;
                                v464 = v625;
                                v465 = [v464 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                if (v465)
                                {
                                  v466 = v465;
                                  v467 = 0;
                                  v468 = *v670;
                                  while (2)
                                  {
                                    for (mm = 0; mm != v466; mm = mm + 1)
                                    {
                                      if (*v670 != v468)
                                      {
                                        objc_enumerationMutation(v464);
                                      }

                                      v470 = *(*(&v669 + 1) + 8 * mm);
                                      v471 = [v632 objectAtIndexedSubscript:v467];
                                      LODWORD(v470) = sub_100420EEC(v471, v470, v471);

                                      if (!v470)
                                      {

                                        goto LABEL_1005;
                                      }

                                      ++v467;
                                    }

                                    v466 = [v464 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                    if (v466)
                                    {
                                      continue;
                                    }

                                    break;
                                  }
                                }

LABEL_507:
                                v344 = [v654 formatTokens];
                                v345 = [v626 formatTokens];
                                v622 = v344;
                                v623 = v345;
                                v346 = &stru_1016183D8;
                                if (!(v344 | v345))
                                {

                                  goto LABEL_509;
                                }

                                if (v622)
                                {
                                  v504 = v345 == 0;
                                }

                                else
                                {
                                  v504 = 0;
                                }

                                v505 = v504;
                                if (v623)
                                {
                                  v506 = v344 == 0;
                                }

                                else
                                {
                                  v506 = 0;
                                }

                                if (!v506 && (v505 & 1) == 0)
                                {
                                  v507 = [v622 count];
                                  if (v507 == [v623 count])
                                  {
                                    v671 = 0u;
                                    v672 = 0u;
                                    v669 = 0u;
                                    v670 = 0u;
                                    v620 = v622;
                                    v508 = [v620 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                    if (v508)
                                    {
                                      v509 = v508;
                                      v510 = 0;
                                      v511 = *v670;
                                      while (2)
                                      {
                                        for (nn = 0; nn != v509; nn = nn + 1)
                                        {
                                          if (*v670 != v511)
                                          {
                                            objc_enumerationMutation(v620);
                                          }

                                          v513 = *(*(&v669 + 1) + 8 * nn);
                                          v514 = [v623 objectAtIndexedSubscript:v510];
                                          LODWORD(v513) = sub_100420EF0(v514, v513, v514);

                                          if (!v513)
                                          {
                                            v552 = v623;

                                            v551 = v620;
                                            goto LABEL_921;
                                          }

                                          ++v510;
                                        }

                                        v509 = [v620 countByEnumeratingWithState:&v669 objects:v668 count:16];
                                        if (v509)
                                        {
                                          continue;
                                        }

                                        break;
                                      }
                                    }

LABEL_509:
                                    v347 = [v654 alternativeString];
                                    v348 = [v626 alternativeString];
                                    v349 = v347 | v348;
                                    v350 = v347;
                                    v351 = v348;
                                    if (v349)
                                    {
                                      v352 = [v350 isEqual:v351];
                                    }

                                    else
                                    {
                                      v352 = 1;
                                    }

                                    v6 = v645;
                                    v77 = v648;
                                    v17 = obj;
                                    v80 = v640;
                                    if (v352)
                                    {
                                      goto LABEL_80;
                                    }

                                    goto LABEL_1009;
                                  }
                                }

                                v551 = v622;

                                v552 = v623;
LABEL_921:
                              }

LABEL_1005:

                              v456 = v654;
                              v455 = v654;
                              v405 = v627;
                              v654 = v626;
                              v626 = v624;
                            }

                            v404 = v654;
                            v403 = v654;
                            v265 = v625;
                            v334 = v626;
                          }

                          v6 = v645;
                          v17 = obj;
                          v266 = v632;
                        }
                      }

                      v77 = v648;
                      v80 = v640;
                      goto LABEL_1009;
                    }

                    v286 = v646;
                    if (v654)
                    {
                      v286 = v654;
                    }
                  }

                  else
                  {

                    v286 = v186;
                  }
                }

                goto LABEL_532;
              }

              if (v649)
              {
                v183 = v69 == 0;
              }

              else
              {
                v183 = 0;
              }

              v184 = v183;
              if (v70)
              {
                v185 = v68 == 0;
              }

              else
              {
                v185 = 0;
              }

              v75 = v649;
              v186 = v70;
              if (!v185 && (v75 = v649, v186 = v70, (v184 & 1) == 0) && (v187 = [v649 iconType], v75 = v649, v186 = v71, v187 == objc_msgSend(v71, "iconType")) && (v188 = objc_msgSend(v649, "cartoID"), v75 = v649, v186 = v71, v188 == objc_msgSend(v71, "cartoID")) && (v189 = objc_msgSend(v649, "defaultTransitType"), v75 = v649, v186 = v71, v189 == objc_msgSend(v71, "defaultTransitType")) && (v190 = objc_msgSend(v649, "iconAttributeKey"), v75 = v649, v186 = v71, v190 == objc_msgSend(v71, "iconAttributeKey")))
              {
                v191 = [v649 iconAttributeValue];
                v192 = [v71 iconAttributeValue];

                if (v191 == v192)
                {
                  goto LABEL_78;
                }
              }

              else
              {
LABEL_532:
              }

              LODWORD(v654) = 0;
              v261 = v658;
              v169 = v643;
              v168 = v644;
              v647 = v649;
            }

            a1 = v665;
            goto LABEL_704;
          }
        }

LABEL_87:

        swift_unknownObjectRelease();
LABEL_88:
        a1 = v665;
LABEL_89:

        goto LABEL_90;
      }

      if (v661)
      {
        v43 = v26 == 0;
      }

      else
      {
        v43 = 0;
      }

      v44 = v43;
      if (v27)
      {
        v45 = v25 == 0;
      }

      else
      {
        v45 = 0;
      }

      v46 = v661;
      a2 = v27;
      if (v45)
      {
        goto LABEL_86;
      }

      v46 = v661;
      a2 = v27;
      if (v44)
      {
        goto LABEL_86;
      }

      v47 = [v661 muid];
      v48 = [v28 muid];
      v46 = v661;
      a2 = v28;
      if (v47 != v48)
      {
        goto LABEL_86;
      }

      obj = v17;
      a2 = [v661 name];
      if (a2 || ([v28 name], (v658 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v49 = v6;
        [v661 name];
        v51 = v50 = v28;
        v52 = [v50 name];
        if ([v51 isEqualToString:v52])
        {
          v644 = v51;
          v645 = v49;
          v647 = a2;
          v648 = v52;
          v28 = v50;
          v53 = v20;
          LODWORD(v646) = 1;
          goto LABEL_118;
        }

        v46 = v50;
        v28 = v50;
        v6 = v49;
        v17 = obj;
        if (!a2)
        {
          v652 = v20;
          LODWORD(v654) = 0;
          v57 = v28;
          a1 = v665;
          goto LABEL_708;
        }

LABEL_86:

        goto LABEL_87;
      }

      v647 = 0;
      v645 = v6;
      v53 = v20;
      v658 = 0;
      LODWORD(v646) = 0;
LABEL_118:
      v109 = [v661 artwork];
      v110 = [v28 artwork];
      v111 = v109;
      v112 = v110;
      v649 = v112;
      v654 = v111;
      if (!(v109 | v110))
      {
        v113 = 1;
        goto LABEL_120;
      }

      v113 = 0;
      if (v111)
      {
        v115 = v110 == 0;
      }

      else
      {
        v115 = 0;
      }

      v116 = v115;
      if (v112)
      {
        v117 = v109 == 0;
      }

      else
      {
        v117 = 0;
      }

      if (v117)
      {
LABEL_120:
        v20 = v53;
        v6 = v645;
        v114 = v648;
        v17 = obj;
        goto LABEL_472;
      }

      v20 = v53;
      v6 = v645;
      v114 = v648;
      v17 = obj;
      if (v116)
      {
LABEL_472:

        if (v646)
        {
        }

        a2 = v647;
        if (v647)
        {

          if (v113)
          {
            goto LABEL_37;
          }
        }

        else
        {

          if (v113)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_87;
      }

      v118 = [v654 artworkSourceType];
      v119 = v649;
      if (v118 != [v649 artworkSourceType] || (v120 = objc_msgSend(v654, "artworkUseType"), v120 != objc_msgSend(v649, "artworkUseType")))
      {
        v113 = 0;
        goto LABEL_471;
      }

      v653 = v20;
      v121 = [v654 shieldDataSource];
      v122 = [v649 shieldDataSource];
      HIDWORD(v640) = HIDWORD(v121) | HIDWORD(v122);
      v123 = v121;
      v124 = v122;
      v125 = v123;
      v643 = v124;
      if (!(v121 | v122))
      {
        goto LABEL_135;
      }

      if (v123)
      {
        v193 = v122 == 0;
      }

      else
      {
        v193 = 0;
      }

      v194 = v193;
      if (v124)
      {
        v195 = v121 == 0;
      }

      else
      {
        v195 = 0;
      }

      v196 = v123;
      v197 = v124;
      if (v195 || v194)
      {

        LODWORD(v640) = 0;
        v251 = v197;
        v20 = v653;
      }

      else
      {
        v198 = [v125 shieldType];
        v20 = v653;
        if (v198 == [v197 shieldType])
        {
          v638 = [v196 shieldText];
          if (!v638)
          {
            v633 = [v643 shieldText];
            if (!v633)
            {
              v633 = 0;
              v641 = 0;
              goto LABEL_561;
            }
          }

          v199 = [v196 shieldText];
          v200 = [v643 shieldText];
          if ([v199 isEqualToString:v200])
          {
            v625 = v199;
            v626 = v200;
            v641 = 1;
LABEL_561:
            [v196 shieldColorString];
            v627 = v378 = v643;
            if (v627 || ([v643 shieldColorString], (v624 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v379 = [v196 shieldColorString];
              v380 = [v643 shieldColorString];
              v381 = [v379 isEqualToString:v380];

              if (v627)
              {

                v382 = v638;
                v378 = v643;
                if (v641)
                {
                  goto LABEL_565;
                }

                goto LABEL_566;
              }

              v378 = v643;
              v383 = v624;
            }

            else
            {
              v383 = 0;
              v381 = 1;
            }

            v382 = v638;
            if (v641)
            {
LABEL_565:
            }

LABEL_566:

            if (v382)
            {
            }

            else
            {
            }

            v125 = v196;
            v119 = v649;
            if ((v381 & 1) == 0)
            {
              LODWORD(v640) = 0;
              v20 = v653;
              v196 = v125;
LABEL_470:

              v113 = v640;
LABEL_471:
              v114 = v648;
              goto LABEL_472;
            }

LABEL_135:
            v629 = v125;
            v126 = [v654 iconDataSource];
            v127 = [v119 iconDataSource];
            v128 = v126 | v127;
            v627 = v126;
            v129 = v126;
            v130 = v127;
            v633 = v130;
            v636 = v129;
            if (!v128)
            {
LABEL_136:
              v131 = [v654 iconFallbackShieldDataSource];
              v132 = [v119 iconFallbackShieldDataSource];
              v626 = v131;
              v133 = v132;
              v627 = v133;
              if (!(v131 | v132))
              {
                goto LABEL_137;
              }

              if (v626)
              {
                v271 = v132 == 0;
              }

              else
              {
                v271 = 0;
              }

              v272 = v271;
              if (v133)
              {
                v273 = v131 == 0;
              }

              else
              {
                v273 = 0;
              }

              if (v273 || v272 || (v274 = [v626 shieldType], v274 != objc_msgSend(v627, "shieldType")))
              {

                LODWORD(v640) = 0;
                v228 = v627;
                v298 = v627;
                v138 = v626;
                v20 = v653;
                goto LABEL_465;
              }

              v275 = [v626 shieldText];
              if (!v275)
              {
                v645 = [v627 shieldText];
                if (!v645)
                {
                  v645 = 0;
                  v642 = 0;
                  goto LABEL_722;
                }
              }

              v276 = [v626 shieldText];
              v277 = [v627 shieldText];
              if (([v276 isEqualToString:v277] & 1) == 0)
              {

                LODWORD(v640) = 0;
                v298 = v645;
                if (v275)
                {
                  v298 = v275;
                }

                v228 = v627;
                v17 = obj;
                v20 = v653;
                v138 = v626;
                goto LABEL_465;
              }

              v623 = v276;
              v624 = v277;
              v642 = 1;
LABEL_722:
              v457 = [v626 shieldColorString];
              if (v457 || ([v627 shieldColorString], (v622 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v458 = [v626 shieldColorString];
                v459 = [v627 shieldColorString];
                LODWORD(v625) = [v458 isEqualToString:v459];

                if (v457)
                {

                  if (v642)
                  {
                    goto LABEL_726;
                  }

                  goto LABEL_727;
                }
              }

              else
              {
                v622 = 0;
                LODWORD(v625) = 1;
              }

              if (v642)
              {
LABEL_726:
              }

LABEL_727:

              if (v275)
              {
              }

              else
              {
              }

              v119 = v649;
              v17 = obj;
              if ((v625 & 1) == 0)
              {
                v130 = v627;
                LODWORD(v640) = 0;
                v20 = v653;
                v226 = v626;
LABEL_467:
                v325 = v130;

                goto LABEL_468;
              }

LABEL_137:
              v134 = [v654 textDataSource];
              v135 = [v119 textDataSource];
              v625 = v134;
              v136 = v135;
              v624 = v136;
              if (!(v134 | v135))
              {
LABEL_138:
                v137 = [v654 hasRoutingIncidentBadge];
                if (v137 != [v119 hasRoutingIncidentBadge])
                {
                  goto LABEL_139;
                }

                v302 = [v654 accessibilityText];
                if (v302 || ([v649 accessibilityText], (obj = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v323 = [v654 accessibilityText];
                  v324 = [v649 accessibilityText];
                  LODWORD(v640) = [v323 isEqualToString:v324];

                  v20 = v653;
                  v138 = v625;
                  if (!v302)
                  {
                    v302 = obj;
                  }
                }

                else
                {
                  obj = 0;
                  LODWORD(v640) = 1;
                  v20 = v653;
                  v138 = v625;
                  v302 = 0;
                }

LABEL_463:

LABEL_464:
                v298 = v627;
                v228 = v624;
LABEL_465:

                v226 = v138;
LABEL_466:
                v130 = v228;
                goto LABEL_467;
              }

              if (v625)
              {
                v299 = v135 == 0;
              }

              else
              {
                v299 = 0;
              }

              v300 = v299;
              if (v136)
              {
                v301 = v134 == 0;
              }

              else
              {
                v301 = 0;
              }

              v138 = v625;
              v302 = v136;
              if (v301 || v300)
              {

                LODWORD(v640) = 0;
                v20 = v653;
                goto LABEL_463;
              }

              v303 = [v625 text];
              v304 = [v302 text];
              v640 = v303;
              v305 = v304;
              v306 = v305;
              if (!(v303 | v304))
              {

                v119 = v649;
                goto LABEL_138;
              }

              v645 = v6;
              v657 = v28;
              if (v640)
              {
                v361 = v304 == 0;
              }

              else
              {
                v361 = 0;
              }

              v362 = v361;
              v623 = v305;
              if (v305)
              {
                v363 = v303 == 0;
              }

              else
              {
                v363 = 0;
              }

              if (v363 || (v362 & 1) != 0)
              {

                LODWORD(v640) = 0;
                v138 = v625;
                v302 = v623;
                v17 = obj;
                v20 = v653;
                goto LABEL_463;
              }

              v364 = [v640 formatStrings];
              v365 = [v623 formatStrings];
              v617 = v364;
              v622 = v365;
              v366 = &stru_101618398;
              if (v364 | v365)
              {
                if (v617)
                {
                  v472 = v365 == 0;
                }

                else
                {
                  v472 = 0;
                }

                v473 = v472;
                if (v622)
                {
                  v474 = v364 == 0;
                }

                else
                {
                  v474 = 0;
                }

                if (v474 || (v473 & 1) != 0 || (v475 = [v617 count], v475 != objc_msgSend(v622, "count")))
                {

LABEL_812:
                  LODWORD(v640) = 0;
                  v17 = obj;
                  v20 = v653;
                  v28 = v657;
                  v6 = v645;
                  v138 = v625;
                  v302 = v622;
                  goto LABEL_463;
                }

                v671 = 0u;
                v672 = 0u;
                v669 = 0u;
                v670 = 0u;
                v476 = v617;
                v477 = [v476 countByEnumeratingWithState:&v669 objects:v668 count:16];
                if (v477)
                {
                  v478 = v477;
                  v479 = 0;
                  v480 = *v670;
                  while (2)
                  {
                    for (i1 = 0; i1 != v478; i1 = i1 + 1)
                    {
                      if (*v670 != v480)
                      {
                        objc_enumerationMutation(v476);
                      }

                      v482 = *(*(&v669 + 1) + 8 * i1);
                      v483 = [v622 objectAtIndexedSubscript:v479];
                      LODWORD(v482) = sub_100420EEC(v483, v482, v483);

                      if (!v482)
                      {

                        goto LABEL_812;
                      }

                      ++v479;
                    }

                    v478 = [v476 countByEnumeratingWithState:&v669 objects:v668 count:16];
                    if (v478)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

              else
              {
              }

              v367 = [v640 separators];
              v368 = [v623 separators];
              v610 = v367;
              v613 = v368;
              v369 = &stru_1016183B8;
              if (!(v367 | v368))
              {

                goto LABEL_556;
              }

              if (v610)
              {
                v515 = v368 == 0;
              }

              else
              {
                v515 = 0;
              }

              v516 = v515;
              if (v613)
              {
                v517 = v367 == 0;
              }

              else
              {
                v517 = 0;
              }

              if (v517 || (v516 & 1) != 0 || (v518 = [v610 count], v518 != objc_msgSend(v613, "count")))
              {
              }

              else
              {
                v671 = 0u;
                v672 = 0u;
                v669 = 0u;
                v670 = 0u;
                v372 = v610;
                v519 = [v372 countByEnumeratingWithState:&v669 objects:v668 count:16];
                if (v519)
                {
                  v520 = v519;
                  v521 = 0;
                  v522 = *v670;
                  while (2)
                  {
                    for (i2 = 0; i2 != v520; i2 = i2 + 1)
                    {
                      if (*v670 != v522)
                      {
                        objc_enumerationMutation(v372);
                      }

                      v524 = *(*(&v669 + 1) + 8 * i2);
                      v525 = [v613 objectAtIndexedSubscript:v521];
                      LODWORD(v524) = sub_100420EEC(v525, v524, v525);

                      if (!v524)
                      {

                        goto LABEL_1040;
                      }

                      ++v521;
                    }

                    v520 = [v372 countByEnumeratingWithState:&v669 objects:v668 count:16];
                    if (v520)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_556:
                v370 = [v640 formatTokens];
                v371 = [v623 formatTokens];
                v608 = v370;
                v372 = v371;
                v373 = &stru_1016183D8;
                if (!(v370 | v371))
                {

LABEL_558:
                  v374 = [v640 alternativeString];
                  v375 = [v623 alternativeString];
                  v607 = v374;
                  v376 = v375;
                  if (v374 | v375)
                  {
                    v377 = [v607 isEqual:v376];
                  }

                  else
                  {
                    v377 = 1;
                  }

                  v28 = v657;
                  v6 = v645;
                  v119 = v649;
                  v17 = obj;
                  if (v377)
                  {
                    goto LABEL_138;
                  }

LABEL_139:
                  LODWORD(v640) = 0;
                  v20 = v653;
                  v138 = v625;
                  goto LABEL_464;
                }

                if (v608)
                {
                  v556 = v371 == 0;
                }

                else
                {
                  v556 = 0;
                }

                v557 = v556;
                if (v372)
                {
                  v558 = v370 == 0;
                }

                else
                {
                  v558 = 0;
                }

                if (!v558 && (v557 & 1) == 0)
                {
                  v559 = [v608 count];
                  if (v559 == [v372 count])
                  {
                    v671 = 0u;
                    v672 = 0u;
                    v669 = 0u;
                    v670 = 0u;
                    v607 = v608;
                    v560 = [v607 countByEnumeratingWithState:&v669 objects:v668 count:16];
                    if (v560)
                    {
                      v561 = v560;
                      v562 = 0;
                      v563 = *v670;
                      while (2)
                      {
                        for (i3 = 0; i3 != v561; i3 = i3 + 1)
                        {
                          if (*v670 != v563)
                          {
                            objc_enumerationMutation(v607);
                          }

                          v565 = *(*(&v669 + 1) + 8 * i3);
                          v566 = [v372 objectAtIndexedSubscript:v562];
                          LODWORD(v565) = sub_100420EF0(v566, v565, v566);

                          if (!v565)
                          {

                            v589 = v607;
                            goto LABEL_997;
                          }

                          ++v562;
                        }

                        v561 = [v607 countByEnumeratingWithState:&v669 objects:v668 count:16];
                        if (v561)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    goto LABEL_558;
                  }
                }

                v589 = v608;

LABEL_997:
LABEL_1040:
              }

              LODWORD(v640) = 0;
              v17 = obj;
              v20 = v653;
              v28 = v657;
              v6 = v645;
              v138 = v625;
              v302 = v613;
              goto LABEL_463;
            }

            LODWORD(v640) = 0;
            if (v129)
            {
              v223 = v127 == 0;
            }

            else
            {
              v223 = 0;
            }

            v224 = v223;
            if (v130)
            {
              v225 = v627 == 0;
            }

            else
            {
              v225 = 0;
            }

            if (v225)
            {
              v226 = v129;
              v20 = v653;
              goto LABEL_467;
            }

            v226 = v129;
            v20 = v653;
            if (v224)
            {
              goto LABEL_467;
            }

            v227 = [v636 iconType];
            v228 = v633;
            if (v227 != [v633 iconType] || (v229 = objc_msgSend(v636, "cartoID"), v229 != objc_msgSend(v633, "cartoID")))
            {
              LODWORD(v640) = 0;
              v226 = v636;
              goto LABEL_466;
            }

            v230 = [v636 defaultTransitType];
            if (v230 != [v633 defaultTransitType])
            {
              LODWORD(v640) = 0;
              v226 = v636;
              v130 = v633;
              goto LABEL_467;
            }

            v231 = [v636 iconAttributeKey];
            if (v231 != [v633 iconAttributeKey])
            {
              LODWORD(v640) = 0;
              v130 = v633;
              v226 = v636;
              v17 = obj;
              v20 = v653;
              goto LABEL_467;
            }

            v232 = [v636 iconAttributeValue];
            v233 = [v633 iconAttributeValue];

            v119 = v649;
            v17 = obj;
            if (v232 == v233)
            {
              goto LABEL_136;
            }

            LODWORD(v640) = 0;
            v20 = v653;
LABEL_468:

            v196 = v629;
            v251 = v633;
          }

          else
          {

            LODWORD(v640) = 0;
            v251 = v633;
            if (v638)
            {
              v251 = v638;
            }
          }
        }

        else
        {

          LODWORD(v640) = 0;
          v251 = v197;
        }
      }

      goto LABEL_470;
    }

    break;
  }

  swift_unknownObjectRelease();
LABEL_1065:

  swift_getKeyPath();
  v668[0] = v659;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v605 = *(v659 + 32);
  if (v605)
  {
    v606 = *(v659 + 40);

    v605(v659, v17, v15);
    swift_unknownObjectRelease();
    sub_1000588AC(v605, v606);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

BOOL sub_100420E14(id a1, id a2, id a3)
{
  v5 = a2 | a3;
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v9 = v7;
  if (v5)
  {
    if ((a2 == 0) != (a3 == 0) || ([v8 startTime], v12 = v11, objc_msgSend(v9, "startTime"), v12 != v13))
    {
      v10 = 0;
    }

    else
    {
      objc_msgSend_duration(v8);
      v15 = v14;
      objc_msgSend_duration(v9);
      v10 = v15 == v16;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

BOOL sub_100420EF0(id a1, GEOServerFormatToken *a2, GEOServerFormatToken *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = GEOServerFormatTokenEqual();

  return v6;
}

uint64_t sub_100420F78@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v87 = a2;
  v3 = sub_1000CE6B8(&qword_1019191F8, &qword_101200BB0);
  __chkstk_darwin(v3 - 8);
  v81 = v78 - v4;
  v83 = sub_1000CE6B8(&qword_101920B08, &qword_101205F78);
  __chkstk_darwin(v83);
  v82 = v78 - v5;
  v6 = sub_1000CE6B8(&qword_101920B10, &unk_101205F80);
  __chkstk_darwin(v6 - 8);
  v86 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v96 = v78 - v9;
  v89 = sub_1000CE6B8(&qword_10191DC80, &qword_101201428);
  v10 = *(v89 - 8);
  __chkstk_darwin(v89);
  v12 = v78 - v11;
  v13 = sub_1000CE6B8(&qword_101920B18, &qword_101205F90);
  __chkstk_darwin(v13 - 8);
  v95 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v94 = v78 - v16;
  __chkstk_darwin(v17);
  v93 = v78 - v18;
  __chkstk_darwin(v19);
  v97 = v78 - v20;
  __chkstk_darwin(v21);
  v98 = v78 - v22;
  __chkstk_darwin(v23);
  v25 = v78 - v24;
  v85 = sub_1000CE6B8(&qword_101920B20, &qword_101205F98);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v92 = v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v78 - v28;
  v100 = a1;
  sub_1000CE6B8(&qword_101920B28, &qword_101205FA0);
  sub_1000414C8(&qword_101920B30, &qword_101920B28, &qword_101205FA0, &protocol conformance descriptor for TupleView<A>);
  v90 = v29;
  ControlGroup.init(content:)();
  v30 = a1[3];
  v78[0] = a1;
  v31 = *sub_10005E838(a1, v30);
  swift_getKeyPath();
  *&v101 = v31;
  sub_1002F5D2C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v31 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus + 8);
  sub_100422D84(a1, &v101);
  v33 = swift_allocObject();
  v34 = v102;
  *(v33 + 16) = v101;
  *(v33 + 32) = v34;
  *(v33 + 48) = v103;
  if (v32 < 3)
  {
    v35 = 4;
  }

  else
  {
    v35 = 5;
  }

  *(v33 + 56) = v35;
  v99 = v35;
  v88 = sub_1000CE6B8(&qword_10191DCC8, &qword_101205FD0);
  sub_1000414C8(&qword_10191DCF8, &qword_10191DCC8, &qword_101205FD0, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  v36 = v98;
  sub_100110884(v35);
  v37 = sub_1000414C8(&qword_10191DC90, &qword_10191DC80, &qword_101201428, &protocol conformance descriptor for Button<A>);
  v38 = v89;
  v78[1] = v37;
  View.accessibilityIdentifier(_:)();

  v39 = *(v10 + 8);
  v79 = v12;
  v80 = v10 + 8;
  v39(v12, v38);
  v40 = sub_1000CE6B8(&qword_101920B38, &qword_101205FD8);
  v41 = *(*(v40 - 8) + 56);
  v42 = 1;
  v91 = v25;
  v43 = v78[0];
  v41(v25, 0, 1, v40);
  sub_10005E838(v43, v43[3]);
  if (sub_1002A52D4())
  {
    sub_100422D84(v43, &v101);
    v44 = swift_allocObject();
    v45 = v102;
    *(v44 + 16) = v101;
    *(v44 + 32) = v45;
    *(v44 + 48) = v103;
    v46 = v79;
    Button.init(action:label:)();
    v47 = v89;
    View.accessibilityIdentifier(_:)();
    v39(v46, v47);
    v42 = 0;
  }

  v48 = 1;
  v41(v36, v42, 1, v40);
  v49 = [objc_opt_self() sharedHelper];
  v50 = [v49 isUsingOfflineMaps];

  if ((v50 & 1) == 0)
  {
    sub_100422D84(v43, &v101);
    v51 = swift_allocObject();
    v52 = v102;
    *(v51 + 16) = v101;
    *(v51 + 32) = v52;
    *(v51 + 48) = v103;
    v53 = v79;
    Button.init(action:label:)();
    v54 = v89;
    View.accessibilityIdentifier(_:)();
    v39(v53, v54);
    v48 = 0;
  }

  v55 = v97;
  v41(v97, v48, 1, v40);
  v56 = v81;
  static ButtonRole.destructive.getter();
  v57 = type metadata accessor for ButtonRole();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  sub_100422D84(v43, &v101);
  v58 = swift_allocObject();
  v59 = v102;
  *(v58 + 16) = v101;
  *(v58 + 32) = v59;
  *(v58 + 48) = v103;
  v60 = v82;
  Button.init(role:action:label:)();
  v61 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v63 = (v60 + *(v83 + 36));
  *v63 = KeyPath;
  v63[1] = v61;
  sub_100422DFC();
  v64 = v96;
  View.accessibilityIdentifier(_:)();
  sub_100024F64(v60, &qword_101920B08, &qword_101205F78);
  v65 = v84;
  v66 = *(v84 + 16);
  v67 = v92;
  v68 = v85;
  v66(v92, v90, v85);
  sub_1000D2DFC(v91, v93, &qword_101920B18, &qword_101205F90);
  v69 = v94;
  sub_1000D2DFC(v98, v94, &qword_101920B18, &qword_101205F90);
  sub_1000D2DFC(v55, v95, &qword_101920B18, &qword_101205F90);
  v70 = v64;
  v71 = v86;
  sub_1000D2DFC(v70, v86, &qword_101920B10, &unk_101205F80);
  v72 = v87;
  v66(v87, v67, v68);
  v73 = sub_1000CE6B8(&qword_101920B48, &qword_101206018);
  v74 = v93;
  sub_1000D2DFC(v93, &v72[v73[12]], &qword_101920B18, &qword_101205F90);
  sub_1000D2DFC(v69, &v72[v73[16]], &qword_101920B18, &qword_101205F90);
  v75 = v95;
  sub_1000D2DFC(v95, &v72[v73[20]], &qword_101920B18, &qword_101205F90);
  sub_1000D2DFC(v71, &v72[v73[24]], &qword_101920B10, &unk_101205F80);
  sub_100024F64(v96, &qword_101920B10, &unk_101205F80);
  sub_100024F64(v97, &qword_101920B18, &qword_101205F90);
  sub_100024F64(v98, &qword_101920B18, &qword_101205F90);
  sub_100024F64(v91, &qword_101920B18, &qword_101205F90);
  v76 = *(v65 + 8);
  v76(v90, v68);
  sub_100024F64(v71, &qword_101920B10, &unk_101205F80);
  sub_100024F64(v75, &qword_101920B18, &qword_101205F90);
  sub_100024F64(v94, &qword_101920B18, &qword_101205F90);
  sub_100024F64(v74, &qword_101920B18, &qword_101205F90);
  return (v76)(v92, v68);
}

uint64_t sub_100421B7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_1000CE6B8(&qword_101920B38, &qword_101205FD8);
  __chkstk_darwin(v3 - 8);
  v5 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v44[-v7];
  v9 = sub_1000CE6B8(&qword_1019191F8, &qword_101200BB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v44[-v10];
  v12 = sub_1000CE6B8(&qword_10191DC80, &qword_101201428);
  v54 = *(v12 - 8);
  __chkstk_darwin(v12);
  v53 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v49 = &v44[-v15];
  v50 = sub_1000CE6B8(&qword_101920B08, &qword_101205F78);
  __chkstk_darwin(v50);
  v17 = &v44[-v16];
  v18 = sub_1000CE6B8(&qword_101920B50, &qword_101206020);
  __chkstk_darwin(v18 - 8);
  v20 = &v44[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v52 = &v44[-v22];
  v23 = *sub_10005E838(a1, a1[3]);
  swift_getKeyPath();
  *&v57 = v23;
  sub_1002F5D2C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v23 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus + 8);
  v25 = 1;
  v55 = v20;
  v51 = a1;
  if (v24 == 1)
  {
    v27 = v54;
    v28 = v52;
  }

  else
  {
    v47 = v8;
    v48 = v5;
    v46 = v12;
    if (v24 == 2)
    {
      v26 = 0;
      v45 = 0;
    }

    else
    {
      static ButtonRole.destructive.getter();
      v25 = 0;
      v26 = 1;
      v45 = 1;
    }

    v29 = type metadata accessor for ButtonRole();
    (*(*(v29 - 8) + 56))(v11, v25, 1, v29);
    sub_100422D84(a1, &v57);
    v30 = swift_allocObject();
    v31 = v58;
    *(v30 + 16) = v57;
    *(v30 + 32) = v31;
    *(v30 + 48) = v59;
    *(v30 + 56) = v26;
    __chkstk_darwin(v30);
    v44[-16] = v26;
    sub_1000CE6B8(&qword_10191DCC8, &qword_101205FD0);
    sub_1000414C8(&qword_10191DCF8, &qword_10191DCC8, &qword_101205FD0, &protocol conformance descriptor for Label<A, B>);
    v32 = v49;
    Button.init(role:action:label:)();
    v33 = 0;
    if (v45)
    {
      v33 = static Color.red.getter();
    }

    KeyPath = swift_getKeyPath();
    v27 = v54;
    v12 = v46;
    (*(v54 + 32))(v17, v32, v46);
    v35 = &v17[*(v50 + 36)];
    *v35 = KeyPath;
    v35[1] = v33;
    sub_100110884(v26);
    sub_100422DFC();
    v28 = v52;
    View.accessibilityIdentifier(_:)();

    sub_100024F64(v17, &qword_101920B08, &qword_101205F78);
    v25 = 0;
    v8 = v47;
    v5 = v48;
  }

  v36 = sub_1000CE6B8(&qword_101920B10, &unk_101205F80);
  (*(*(v36 - 8) + 56))(v28, v25, 1, v36);
  sub_100422D84(v51, &v57);
  v37 = swift_allocObject();
  v38 = v58;
  *(v37 + 16) = v57;
  *(v37 + 32) = v38;
  *(v37 + 48) = v59;
  sub_1000CE6B8(&qword_10191DCC8, &qword_101205FD0);
  sub_1000414C8(&qword_10191DCF8, &qword_10191DCC8, &qword_101205FD0, &protocol conformance descriptor for Label<A, B>);
  v39 = v53;
  Button.init(action:label:)();
  sub_1000414C8(&qword_10191DC90, &qword_10191DC80, &qword_101201428, &protocol conformance descriptor for Button<A>);
  View.accessibilityIdentifier(_:)();
  (*(v27 + 8))(v39, v12);
  v40 = v55;
  sub_1000D2DFC(v28, v55, &qword_101920B50, &qword_101206020);
  sub_1000D2DFC(v8, v5, &qword_101920B38, &qword_101205FD8);
  v41 = v56;
  sub_1000D2DFC(v40, v56, &qword_101920B50, &qword_101206020);
  v42 = sub_1000CE6B8(&qword_101920B58, &qword_101206028);
  sub_1000D2DFC(v5, v41 + *(v42 + 48), &qword_101920B38, &qword_101205FD8);
  sub_100024F64(v8, &qword_101920B38, &qword_101205FD8);
  sub_100024F64(v28, &qword_101920B50, &qword_101206020);
  sub_100024F64(v5, &qword_101920B38, &qword_101205FD8);
  return sub_100024F64(v40, &qword_101920B50, &qword_101206020);
}

uint64_t sub_1004222EC()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3._object = 0x800000010121C800;
  v0._countAndFlagsBits = 0x7972617262694C5BLL;
  v0._object = 0xEF6572616853205DLL;
  v1._countAndFlagsBits = 0x6572616853;
  v3._countAndFlagsBits = 0xD00000000000002ELL;
  v1._object = 0xE500000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v0, 0, qword_1019600D8, v1, v3);
  sub_1000E5580();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_1004223E0(unsigned __int8 a1)
{
  sub_100110454(a1);
  sub_1000E5580();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100422528()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3._object = 0x800000010121C7D0;
  v0._countAndFlagsBits = 0x6968542065746152;
  v0._object = 0xEF6563616C502073;
  v1._object = 0x800000010121C7B0;
  v3._countAndFlagsBits = 0xD00000000000002CLL;
  v1._countAndFlagsBits = 0xD000000000000015;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v0, v3);
  sub_1000E5580();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_10042262C()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3._object = 0x800000010121C770;
  v0._countAndFlagsBits = 0x6F4C20676E6F7257;
  v0._object = 0xEE006E6F69746163;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v1._object = 0x800000010121C750;
  v3._countAndFlagsBits = 0xD00000000000003BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v0, v3);
  sub_1000E5580();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100422728(void *a1, unsigned __int8 a2)
{
  v3 = *sub_10005E838(a1, a1[3]);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1002F23D0(v3, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004227B0()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3._object = 0x800000010121C710;
  v0._countAndFlagsBits = 0x65766F6D6552;
  v1._object = 0x800000010121C6F0;
  v3._countAndFlagsBits = 0xD000000000000030;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v0._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v0, v3);
  sub_1000E5580();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100422894(unsigned __int8 a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1002F23D0(v4, a1);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10042292C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v28 = a4;
  v27 = type metadata accessor for MapsDesignAccessibilityString();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for CellAction.Placement();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CellAction.Style();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100110454(a1);
  v23[1] = v16;
  v23[2] = v15;
  v17 = &enum case for CellAction.Style.destructive(_:);
  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      v29 = 0xE500000000000000;
      v30 = 0x6873617274;
      if (a1)
      {
        goto LABEL_14;
      }

      v29 = 0xE400000000000000;
      v30 = 1937075312;
      goto LABEL_13;
    }

    if (a1 == 2)
    {
      v30 = 0xD000000000000013;
      v18 = 0x800000010121D3D0;
    }

    else
    {
      v30 = 0x7568742E646E6168;
      v18 = 0xED0000707573626DLL;
    }

    goto LABEL_12;
  }

  if (a1 - 4 < 2)
  {
    v30 = 0x7865742E65746F6ELL;
    v18 = 0xE900000000000074;
LABEL_12:
    v29 = v18;
    goto LABEL_13;
  }

  v29 = 0xE500000000000000;
  v30 = 0x6873617274;
  if (a1 != 6)
  {
    goto LABEL_14;
  }

  v29 = 0x800000010122B6F0;
  v30 = 0xD000000000000016;
LABEL_13:
  v17 = &enum case for CellAction.Style.default(_:);
LABEL_14:
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = v26;
  *(v19 + 32) = a1;
  (*(v12 + 104))(v14, *v17, v11);
  v20 = &enum case for CellAction.Placement.quickAction(_:);
  if (((a1 - 1) & 0xFE) != 0)
  {
    v20 = &enum case for CellAction.Placement.default(_:);
  }

  (*(v8 + 104))(v10, *v20, v24);

  *v7 = sub_100110884(a1);
  v7[1] = v21;
  (*(v25 + 104))(v7, enum case for MapsDesignAccessibilityString.custom(_:), v27);
  return CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
}

unint64_t sub_100422DFC()
{
  result = qword_101920B40;
  if (!qword_101920B40)
  {
    sub_1000D6664(&qword_101920B08, &qword_101205F78);
    sub_1000414C8(&qword_10191DC90, &qword_10191DC80, &qword_101201428, &protocol conformance descriptor for Button<A>);
    sub_1000414C8(&unk_10190F550, &qword_10191E550, &qword_1011ECE90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920B40);
  }

  return result;
}

unint64_t sub_100422F5C()
{
  result = qword_101920B60;
  if (!qword_101920B60)
  {
    sub_1000D6664(&qword_101920B68, &qword_101206030);
    sub_1000414C8(&qword_101920B70, &qword_101920B78, qword_101206038, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920B60);
  }

  return result;
}

void sub_100423014(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10042308C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_10042515C();
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3(v2);
}

id sub_100423104()
{
  result = [objc_allocWithZone(type metadata accessor for FeedbackCommunityIDManager()) init];
  qword_101960290 = result;
  return result;
}

id sub_100423308(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100423398(char a1, id a2, uint64_t a3, void (*a4)(id, void), uint64_t a5, uint64_t a6, char a7)
{
  if ((a1 & 1) != 0 && a2)
  {
    v12 = [a2 communityIdentifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (String.count.getter() >= 1)
    {
      if (qword_101906850 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100021540(v16, qword_101960298);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        aBlock[0] = v20;
        *v19 = 136315394;
        *(v19 + 4) = sub_10004DEB8(v13, v15, aBlock);
        *(v19 + 12) = 2048;
        *(v19 + 14) = a3;
        _os_log_impl(&_mh_execute_header, v17, v18, "Use original communityID:%s for muid: %llu", v19, 0x16u);
        sub_10004E3D0(v20);
      }

      if (a4)
      {
        v21 = type metadata accessor for FeedbackCommunityIDManager.Result();
        v22 = objc_allocWithZone(v21);
        v23 = &v22[OBJC_IVAR___FeedbackCommunityIDManagerResult_anonymousId];
        *v23 = v13;
        v23[1] = v15;
        v36.receiver = v22;
        v36.super_class = v21;
        v24 = objc_msgSendSuper2(&v36, "init");
        a4(v24, 0);
      }

      else
      {
      }

      return;
    }
  }

  if (qword_101906850 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100021540(v25, qword_101960298);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a3;
    _os_log_impl(&_mh_execute_header, v26, v27, "Fetching latest community for muid: %llu", v28, 0xCu);
  }

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = a4;
  *(v30 + 24) = a5;
  *(v30 + 32) = v29;
  *(v30 + 40) = a7 & 1;
  *(v30 + 48) = 1;
  type metadata accessor for MapsSyncQueryPredicate();
  sub_1000CD9D4(a4, a5);

  v31 = static MapsSyncQueryPredicate.withFormat(_:_:)();
  v32 = *(a6 + OBJC_IVAR____TtC4Maps26FeedbackCommunityIDManager_syncCache);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10042562C;
  *(v33 + 24) = v30;
  aBlock[4] = sub_100425630;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004250B8;
  aBlock[3] = &unk_101618888;
  v34 = _Block_copy(aBlock);
  v35 = v31;

  [v32 fetchAllAvailableCommunityIDsWithPredicate:v35 completion:v34];

  _Block_release(v34);
}

void sub_1004239B4(double a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  if (!a3)
  {
    v8 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = String._bridgeToObjectiveC()();
  if (v7)
  {
LABEL_3:
    v9[4] = v7;
    v9[5] = a5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100113C68;
    v9[3] = &unk_101618798;
    v7 = _Block_copy(v9);
  }

LABEL_4:
  [v5 fetchAuthenticationInfoForRAPReportWithReportID:v8 shouldIncreaseCount:1 completion:v7];
  _Block_release(v7);
}

void sub_100423B74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a3 & 1;
  if (a2)
  {
    v10 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v9;
    *(v13 + 32) = a4;
    *(v13 + 40) = a5;
    v25 = sub_10042514C;
    v26 = v13;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10042308C;
    v24 = &unk_101618680;
    v14 = _Block_copy(&v21);
    sub_1000CD9D4(a4, a5);

    [v10 fetchRAPRecordsMatchingProblemId:v11 completion:v14];
    _Block_release(v14);
  }

  else
  {
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    *(v16 + 32) = v15;
    *(v16 + 40) = v9;
    *(v16 + 48) = 0;
    type metadata accessor for MapsSyncQueryPredicate();
    sub_1000CD9D4(a4, a5);

    v17 = static MapsSyncQueryPredicate.withFormat(_:_:)();
    v18 = *(v6 + OBJC_IVAR____TtC4Maps26FeedbackCommunityIDManager_syncCache);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100424918;
    *(v19 + 24) = v16;
    v25 = sub_1004250B4;
    v26 = v19;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1004250B8;
    v24 = &unk_101618630;
    v20 = _Block_copy(&v21);
    v11 = v17;

    [v18 fetchAllAvailableCommunityIDsWithPredicate:v11 completion:v20];

    _Block_release(v20);
  }
}

void sub_100423E54(unint64_t a1, uint64_t a2, char a3, void (*a4)(id, void), uint64_t a5)
{
  if (a1)
  {
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v29 = a1;
      v30 = _CocoaArrayWrapper.endIndex.getter();
      a1 = v29;
      if (!v30)
      {
        goto LABEL_11;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v8 + 16))
      {
        __break(1u);
        return;
      }

      v9 = *(a1 + 32);
    }

    v10 = [v9 communityIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = String.count.getter();

    if (v11 >= 1)
    {
      if (a4)
      {
        v12 = [v31 communityIdentifier];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = type metadata accessor for FeedbackCommunityIDManager.Result();
        v17 = objc_allocWithZone(v16);
        v18 = &v17[OBJC_IVAR___FeedbackCommunityIDManagerResult_anonymousId];
        *v18 = v13;
        v18[1] = v15;
        v32.receiver = v17;
        v32.super_class = v16;
        v19 = objc_msgSendSuper2(&v32, "init");
        a4(v19, 0);
      }

      else
      {
      }

      return;
    }
  }

LABEL_11:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = a5;
    *(v23 + 32) = v22;
    *(v23 + 40) = a3 & 1;
    *(v23 + 48) = 0;
    type metadata accessor for MapsSyncQueryPredicate();
    sub_1000CD9D4(a4, a5);

    v24 = static MapsSyncQueryPredicate.withFormat(_:_:)();
    v25 = *&v21[OBJC_IVAR____TtC4Maps26FeedbackCommunityIDManager_syncCache];
    v26 = swift_allocObject();
    *(v26 + 16) = sub_10042562C;
    *(v26 + 24) = v23;
    aBlock[4] = sub_100425630;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004250B8;
    aBlock[3] = &unk_1016186F8;
    v27 = _Block_copy(aBlock);
    v28 = v24;

    [v25 fetchAllAvailableCommunityIDsWithPredicate:v28 completion:v27];

    _Block_release(v27);
  }
}

void sub_100424294(unint64_t a1, void (*a2)(id, void), void (*a3)(id, void), uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a2)
  {
    v7 = a2;
    if (qword_101906850 != -1)
    {
LABEL_45:
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_101960298);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "CommunityID fetch error: %@", v13, 0xCu);
      sub_100024F64(v14, &qword_1019144F0, &unk_1011E4A70);
    }

    if (a3)
    {
      v16 = v7;
LABEL_7:
      a3(0, v16);
      return;
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v48 = a4;
      v49 = a3;
      if (a1 >> 62)
      {
        a3 = _CocoaArrayWrapper.endIndex.getter();
        if (a3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a3)
        {
LABEL_12:
          v18 = 0;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_44;
              }

              v19 = *(a1 + 8 * v18 + 32);
            }

            v20 = v19;
            v7 = (v18 + 1);
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            v21 = dispatch thunk of CommunityID.communityIdentifier.getter();
            if (v22)
            {
              v23 = v22;
              v24 = v21;
              if (sub_100424BF4(v20))
              {
                if (a6)
                {
                  [*&Strong[OBJC_IVAR____TtC4Maps26FeedbackCommunityIDManager_syncCache] increaseUsedCountWithMsCommunityID:v20 completion:0];
                }

                if (qword_101906850 != -1)
                {
                  swift_once();
                }

                v35 = type metadata accessor for Logger();
                sub_100021540(v35, qword_101960298);

                v36 = Logger.logObject.getter();
                v37 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v36, v37))
                {
                  v38 = swift_slowAlloc();
                  v39 = swift_slowAlloc();
                  v53 = v39;
                  *v38 = 136315394;
                  *(v38 + 4) = sub_10004DEB8(v24, v23, &v53);
                  *(v38 + 12) = 2048;
                  *(v38 + 14) = a7;
                  _os_log_impl(&_mh_execute_header, v36, v37, "Fetched available communityID: %s for category:%ld", v38, 0x16u);
                  sub_10004E3D0(v39);
                }

                if (v49)
                {
                  v40 = type metadata accessor for FeedbackCommunityIDManager.Result();
                  v41 = objc_allocWithZone(v40);
                  v42 = &v41[OBJC_IVAR___FeedbackCommunityIDManagerResult_anonymousId];
                  *v42 = v24;
                  v42[1] = v23;
                  v54.receiver = v41;
                  v54.super_class = v40;
                  v43 = objc_msgSendSuper2(&v54, "init");
                  v49(v43, 0);
                }

                else
                {
                }

                return;
              }
            }

            ++v18;
          }

          while (v7 != a3);
        }
      }

      if (qword_101906850 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100021540(v44, qword_101960298);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "There's no available communityID, generate a new one", v47, 2u);
      }

      v33 = v49;
      v34 = v48;
    }

    else
    {
      if (qword_101906850 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100021540(v29, qword_101960298);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Fetched nil communityIDs, generate a new one", v32, 2u);
      }

      v33 = a3;
      v34 = a4;
    }

    sub_10042491C(v33, v34);

    return;
  }

  if (qword_101906850 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100021540(v25, qword_101960298);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Self is nil, fetchcommunityID returned", v28, 2u);
  }

  if (a3)
  {
    v16 = 0;
    goto LABEL_7;
  }
}

void sub_10042491C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (qword_101906850 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100021540(v13, qword_101960298);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_10004DEB8(v10, v12, aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "generating a new communityID: %s", v16, 0xCu);
    sub_10004E3D0(v17);
  }

  v18 = *(v3 + OBJC_IVAR____TtC4Maps26FeedbackCommunityIDManager_syncCache);
  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  v20[2] = v10;
  v20[3] = v12;
  v20[4] = a1;
  v20[5] = a2;
  aBlock[4] = sub_10042555C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004250B8;
  aBlock[3] = &unk_101618748;
  v21 = _Block_copy(aBlock);
  sub_1000CD9D4(a1, a2);

  [v18 storeCommunityIDWithIdentifier:v19 completion:v21];
  _Block_release(v21);
}

uint64_t sub_100424BF4(void *a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&qword_10190EBD0, &unk_1011F0880);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  dispatch thunk of MapsSyncObject.createTime.getter();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v13, v6, v7);
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v15 = v14;
    v16 = *(v8 + 8);
    v16(v10, v7);
    Date.timeIntervalSince1970.getter();
    v18 = v15 - v17;
    GEOConfigGetDouble();
    if (v18 < v19)
    {
LABEL_4:
      v16(v13, v7);
      return 1;
    }

    GEOConfigGetDouble();
    if (v21 >= v18)
    {
      v33 = dispatch thunk of CommunityID.usedCount.getter();
      UInteger = GEOConfigGetUInteger();
      if (v33 < 1 || UInteger >= v33)
      {
        goto LABEL_4;
      }

      if (qword_101906850 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100021540(v35, qword_101960298);
      v23 = a1;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v24, v25))
      {
LABEL_23:

        [*(v2 + OBJC_IVAR____TtC4Maps26FeedbackCommunityIDManager_syncCache) setExpiredWithMsCommunityID:v23 completion:0];
        v16(v13, v7);
        return 0;
      }

      v36 = swift_slowAlloc();
      v43 = v2;
      v27 = v36;
      v42 = swift_slowAlloc();
      v44 = v42;
      *v27 = 136315138;
      v37 = dispatch thunk of CommunityID.communityIdentifier.getter();
      if (v38)
      {
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      v40 = sub_10004DEB8(v37, v39, &v44);

      *(v27 + 4) = v40;
      v32 = "CommunityID: %s was expired because it reaches max submission count";
    }

    else
    {
      if (qword_101906850 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100021540(v22, qword_101960298);
      v23 = a1;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_23;
      }

      v26 = swift_slowAlloc();
      v43 = v1;
      v27 = v26;
      v42 = swift_slowAlloc();
      v44 = v42;
      *v27 = 136315138;
      v28 = dispatch thunk of CommunityID.communityIdentifier.getter();
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0xE000000000000000;
      }

      v31 = sub_10004DEB8(v28, v30, &v44);

      *(v27 + 4) = v31;
      v32 = "CommunityID: %s was expired because it reaches max rollover time";
    }

    _os_log_impl(&_mh_execute_header, v24, v25, v32, v27, 0xCu);
    sub_10004E3D0(v42);

    v2 = v43;

    goto LABEL_23;
  }

  sub_100024F64(v6, &qword_10190EBD0, &unk_1011F0880);
  return 0;
}

uint64_t sub_1004250B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for CommunityID();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

unint64_t sub_10042515C()
{
  result = qword_101920BE0;
  if (!qword_101920BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101920BE0);
  }

  return result;
}

void sub_1004251A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(id, uint64_t))
{
  if (a2)
  {
    if (qword_101906850 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100021540(v9, qword_101960298);

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_10004DEB8(a3, a4, &v25);
      *(v12 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v15;
      *v13 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "Fail to generate communityID: %s with error: %@", v12, 0x16u);
      sub_100024F64(v13, &qword_1019144F0, &unk_1011E4A70);

      sub_10004E3D0(v14);
    }

    if (a5)
    {
      a5(0, a2);
    }
  }

  else
  {
    if (qword_101906850 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100021540(v16, qword_101960298);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10004DEB8(a3, a4, &v25);
      _os_log_impl(&_mh_execute_header, v17, v18, "communityID: %s was successfully generated!", v19, 0xCu);
      sub_10004E3D0(v20);
    }

    if (a5)
    {
      v21 = type metadata accessor for FeedbackCommunityIDManager.Result();
      v22 = objc_allocWithZone(v21);
      v23 = &v22[OBJC_IVAR___FeedbackCommunityIDManagerResult_anonymousId];
      *v23 = a3;
      *(v23 + 1) = a4;
      v26.receiver = v22;
      v26.super_class = v21;

      v24 = objc_msgSendSuper2(&v26, "init");
      a5(v24, 0);
    }
  }
}

uint64_t sub_1004254F0()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101960298);
  sub_100021540(v0, qword_101960298);
  static Logger.subsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100425578()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100425634(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v26 = Strong;
  v5 = OBJC_IVAR____TtC4Maps20NearbyTransitContext_onboardingViewController;
  v6 = *(v1 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_onboardingViewController);
  if (a1)
  {
    if (v6)
    {
      sub_100208794();
      v7 = v6;
      v8 = a1;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        v10 = *(v2 + v5);
LABEL_22:
        *(v2 + v5) = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v14 = 0;
    }

    v11 = (v2 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_incidentsViewController);
    v15 = *(v2 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_incidentsViewController);
    if (v15)
    {
      sub_100208794();
      v16 = a1;
      v17 = v15;
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {
        v10 = *v11;
        goto LABEL_15;
      }
    }

    else
    {
      v19 = 0;
    }

    v12 = (v2 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController);
    v20 = *(v2 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController);
    if (!v20)
    {
      v25 = 0;
      goto LABEL_24;
    }

    sub_100208794();
    v21 = a1;
    v22 = v20;
    v23 = static NSObject.== infix(_:_:)();

    Strong = v26;
    if (v23)
    {
      v13 = *v12;
      goto LABEL_20;
    }
  }

  else
  {
    if (!v6)
    {
      v24 = 0;
      v10 = 0;
      goto LABEL_22;
    }

    v11 = (v1 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_incidentsViewController);
    v10 = *(v1 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_incidentsViewController);
    if (!v10)
    {
LABEL_15:
      *v11 = 0;
LABEL_23:

      [v26 setNeedsUpdateComponent:@"cards" animated:1];
      goto LABEL_24;
    }

    v12 = (v1 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController);
    v13 = *(v1 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_nearbyTransitViewController);
    if (!v13)
    {
LABEL_20:
      *v12 = 0;

      [v26 popContext:v2 animated:1 completion:0];
LABEL_24:
      Strong = v26;
    }
  }
}

uint64_t sub_100425998(uint64_t a1, void *a2, void (*a3)(void, void, __n128))
{
  swift_getKeyPath();
  sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel, &unk_1012060E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v3 + *a2);
  v7 = *v6;
  (a3)(*v6, v6[1]);
  return v7;
}

uint64_t sub_100425BF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (a1 + *a4);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  a5(a2, a3);
  return a6(v8, v9);
}

void sub_100425C58(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel, &unk_1012060E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__supportsRAP);
}

void sub_100425D30(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__supportsRAP) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__supportsRAP) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel, &unk_1012060E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100425E5C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel, &unk_1012060E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void sub_100425EFC(char a1)
{
  v2 = OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__isActive;
  v3 = *(v1 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__isActive);
  *(v1 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__isActive) = a1;
  swift_getKeyPath();
  sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel, &unk_1012060E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v3 != *(v1 + v2))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + v2))
    {
      sub_10040B504();
    }
  }
}

void sub_100426010(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__isActive) == (a1 & 1))
  {
    v3 = a1 & 1;

    sub_100425EFC(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel, &unk_1012060E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_10042617C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__rapMenuProvider];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v0[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onShareCurrentLocation];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onMarkCurrentLocation];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v0[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onReportIssue];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__onSelectTermsAndConditions];
  *v7 = 0;
  v7[1] = 0;
  ObservationRegistrar.init()();
  if (qword_101906828 != -1)
  {
    swift_once();
  }

  v8 = qword_101960280;
  *&v1[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel_rapAvailabilityProvider] = qword_101960280;
  swift_getKeyPath();
  v13 = v8;
  sub_100426F4C(&qword_101920728, type metadata accessor for RAPAvailabilityProvider, &unk_101204FF8);
  v9 = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__supportsRAP] = v9[OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__isRAPAvailable];
  v1[OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__isActive] = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100426334();

  return v10;
}

void sub_100426334()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  withObservationTracking<A>(_:onChange:)();

  if (v2 == *(v0 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__supportsRAP))
  {
    *(v0 + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel__supportsRAP) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100426F4C(&qword_101915BA8, type metadata accessor for HomeListFooterCellModel, &unk_1012060E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1004264E0(_BYTE *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC4Maps23HomeListFooterCellModel_rapAvailabilityProvider);
    v5 = Strong;
    swift_getKeyPath();
    sub_100426F4C(&qword_101920728, type metadata accessor for RAPAvailabilityProvider, &unk_101204FF8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v4 + OBJC_IVAR____TtC4Maps23RAPAvailabilityProvider__isRAPAvailable);
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

double sub_1004265D8(uint64_t a1)
{
  v1 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;

  sub_10020AAE4(0, 0, v3, &unk_101206280, v7);

  return result;
}

uint64_t sub_10042672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004267C4, v6, v5);
}

uint64_t sub_1004267C4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100426334();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t type metadata accessor for HomeListFooterCellModel(uint64_t a1)
{
  result = qword_101920C58;
  if (!qword_101920C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100426984(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100426A40()
{
  v0 = sub_1000CE6B8(&qword_10191C2B0, &qword_101206120);
  sub_100021578(v0, qword_1019602B0);
  sub_100021540(v0, qword_1019602B0);
  type metadata accessor for HomeActionFooterCell();
  type metadata accessor for HomeListFooterCellModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

id sub_100426AD0(char *a1, uint64_t a2, void **a3)
{
  v5 = sub_1000CE6B8(&qword_101920CA8, &qword_101206128);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-1] - v7;
  v9 = *a3;
  v10 = OBJC_IVAR____TtC4Maps20HomeActionFooterCell_viewModel;
  v11 = *&a1[OBJC_IVAR____TtC4Maps20HomeActionFooterCell_viewModel];
  *&a1[OBJC_IVAR____TtC4Maps20HomeActionFooterCell_viewModel] = *a3;
  if (!v11)
  {
    v15 = v9;
    v16 = v9;
    if (!v9)
    {
LABEL_7:

      goto LABEL_8;
    }

LABEL_5:
    __chkstk_darwin(v15);
    *(&v20 - 2) = v16;
    sub_100426E60();
    v17 = v16;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();
    static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
    v21[3] = v5;
    v21[4] = sub_100426EB4();
    sub_10001A848(v21);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();

LABEL_8:
    goto LABEL_9;
  }

  type metadata accessor for HomeListFooterCellModel(0);
  v12 = v9;
  v13 = v11;
  v14 = static NSObject.== infix(_:_:)();

  if ((v14 & 1) == 0)
  {
    v16 = *&a1[v10];
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_9:
  v18 = String._bridgeToObjectiveC()();
  [a1 setAccessibilityIdentifier:v18];

  return [a1 setAccessibilityTraits:UIAccessibilityTraitButton];
}

uint64_t sub_100426D4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906858 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&qword_10191C2B0, &qword_101206120);
  v3 = sub_100021540(v2, qword_1019602B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100426E00(uint64_t a1)
{
  result = sub_100426F4C(&qword_101920CA0, type metadata accessor for HomeListFooterCellModel, &protocol conformance descriptor for NSObject);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100426E60()
{
  result = qword_101920CB0;
  if (!qword_101920CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920CB0);
  }

  return result;
}

unint64_t sub_100426EB4()
{
  result = qword_101920CB8;
  if (!qword_101920CB8)
  {
    sub_1000D6664(&qword_101920CA8, &qword_101206128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920CB8);
  }

  return result;
}

uint64_t sub_100426F4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double (*sub_100426F9C())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_100427018;
}

uint64_t sub_100427020(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10042672C(a1, v4, v5, v6);
}

id sub_1004270D4()
{
  result = [objc_opt_self() sharedConfiguration];
  if (result)
  {
    v1 = result;
    v2 = [result countryCode];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      if (v3 == 21067 && v5 == 0xE200000000000000)
      {

        v8 = 0;
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v8 = v7 ^ 1;
      }
    }

    else
    {
      v8 = 1;
    }

    return (v8 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1004271C8()
{
  v1 = OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView);
  }

  else
  {
    type metadata accessor for FeatureDiscoveryTipkitView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100427384(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell_dismissHandler];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView] = 0;
  v1[OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell_showBubbleIndicator] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RoutePlanningTipkitCollectionViewCell();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_10042743C()
{
  v1 = [v0 contentView];
  v2 = sub_1004271C8();
  [v1 addSubview:v2];

  v3 = OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView;
  [*&v0[OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView] setBubblePosition:1];
  static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  v5 = v4;
  v6 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1011E5C00;
  v8 = [*&v0[v3] topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 topAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v7 + 32) = v11;
  v12 = [*&v0[v3] bottomAnchor];
  v13 = [v0 contentView];
  v14 = [v13 bottomAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v7 + 40) = v15;
  v16 = [*&v0[v3] leadingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:v5];
  *(v7 + 48) = v19;
  v20 = [v0 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [*&v0[v3] trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:v5];

  *(v7 + 56) = v23;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:isa];
}

id sub_1004277D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePlanningTipkitCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004278A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v5 = type metadata accessor for MapsDesignAccessibilityString();
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v69 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_1000CE6B8(&qword_101920D30, &qword_101206398);
  __chkstk_darwin(v67);
  v68 = &v58 - v7;
  v83 = sub_1000CE6B8(&qword_101920D38, &qword_1012063A0);
  __chkstk_darwin(v83);
  v70 = &v58 - v8;
  v79 = sub_1000CE6B8(&qword_10190A2F8, &unk_1011F11F0);
  __chkstk_darwin(v79);
  v64 = (&v58 - v9);
  v63 = sub_1000CE6B8(&qword_10191D860, &qword_1011E5510);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v58 - v12;
  v81 = sub_1000CE6B8(&qword_101920D40, &qword_1012063A8);
  __chkstk_darwin(v81);
  v82 = &v58 - v13;
  v74 = sub_1000CE6B8(&qword_10191AC30, &qword_1011FCBC0);
  __chkstk_darwin(v74);
  v75 = &v58 - v14;
  v80 = sub_1000CE6B8(&qword_10191AC38, &qword_1011FCBC8);
  __chkstk_darwin(v80);
  v78 = &v58 - v15;
  v76 = type metadata accessor for EmptyStateView();
  v60 = *(v76 - 8);
  __chkstk_darwin(v76);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for EmptyStateViewModel();
  v59 = *(v73 - 8);
  __chkstk_darwin(v73);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  v23 = type metadata accessor for MyRecentsViewModel.State(0);
  __chkstk_darwin(v23);
  v25 = (&v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = a1;
  v88 = a1;
  v89 = a2;
  v66 = a2;
  sub_1000CE6B8(&qword_101920D28, &qword_101206368);
  State.wrappedValue.getter();
  v26 = v86;
  swift_getKeyPath();
  v88 = v26;
  sub_10042A184(&qword_1019098F8, type metadata accessor for MyRecentsViewModel, &unk_10120F500);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = OBJC_IVAR____TtC4Maps18MyRecentsViewModel__currentState;
  swift_beginAccess();
  sub_10042A1CC(v26 + v27, v25, type metadata accessor for MyRecentsViewModel.State);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v25;
      __chkstk_darwin(EnumCaseMultiPayload);
      v30 = v65;
      *(&v58 - 4) = v29;
      *(&v58 - 3) = v30;
      v31 = v66;
      *(&v58 - 2) = v66;
      sub_1000CE6B8(&qword_101920D48, &qword_1012063D8);
      sub_100429930();
      v32 = v68;
      List<>.init(content:)();

      v33 = static Animation.default.getter();
      v86 = v30;
      v87 = v31;
      State.wrappedValue.getter();
      v34 = v85;
      swift_getKeyPath();
      v86 = v34;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v35 = *(v34 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__generationCountForAnimation);

      v36 = (v32 + *(v67 + 36));
      *v36 = v33;
      v36[1] = v35;
      v37 = v69;
      *v69 = 0x73746E65636552;
      v37[1] = 0xE700000000000000;
      v39 = v71;
      v38 = v72;
      (*(v71 + 104))(v37, enum case for MapsDesignAccessibilityString.list(_:), v72);
      sub_100429B8C();
      v40 = v70;
      View.mapsDesignAXID(_:)();
      (*(v39 + 8))(v37, v38);
      sub_100024F64(v32, &qword_101920D30, &qword_101206398);
      sub_1000D2DFC(v40, v82, &qword_101920D38, &qword_1012063A0);
      swift_storeEnumTagMultiPayload();
      sub_1003526E8();
      sub_100429CFC();
      _ConditionalContent<>.init(storage:)();
      return sub_100024F64(v40, &qword_101920D38, &qword_1012063A0);
    }

    else
    {
      v48 = v77;
      ProgressView<>.init<>()();
      v49 = v62;
      v50 = *(v62 + 16);
      v51 = v61;
      v52 = v63;
      v50(v61, v48, v63);
      v53 = v64;
      *v64 = 0;
      *(v53 + 8) = 1;
      v54 = sub_1000CE6B8(&qword_10190A408, &qword_1011F0DD0);
      v50((v53 + *(v54 + 48)), v51, v52);
      v55 = v53 + *(v54 + 64);
      *v55 = 0;
      *(v55 + 8) = 1;
      v56 = *(v49 + 8);
      v56(v51, v52);
      sub_1000D2DFC(v53, v75, &qword_10190A2F8, &unk_1011F11F0);
      swift_storeEnumTagMultiPayload();
      sub_10042A184(&qword_10190CDC0, &type metadata accessor for EmptyStateView, &protocol conformance descriptor for EmptyStateView);
      sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8, &unk_1011F11F0, &protocol conformance descriptor for TupleView<A>);
      v57 = v78;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v57, v82, &qword_10191AC38, &qword_1011FCBC8);
      swift_storeEnumTagMultiPayload();
      sub_1003526E8();
      sub_100429CFC();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v57, &qword_10191AC38, &qword_1011FCBC8);
      sub_100024F64(v53, &qword_10190A2F8, &unk_1011F11F0);
      return (v56)(v77, v52);
    }
  }

  else
  {
    v42 = v59;
    v43 = v25;
    v44 = v73;
    (*(v59 + 32))(v22, v43, v73);
    (*(v42 + 16))(v19, v22, v44);
    EmptyStateView.init(model:)();
    v45 = v60;
    v46 = v76;
    (*(v60 + 16))(v75, v17, v76);
    swift_storeEnumTagMultiPayload();
    sub_10042A184(&qword_10190CDC0, &type metadata accessor for EmptyStateView, &protocol conformance descriptor for EmptyStateView);
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8, &unk_1011F11F0, &protocol conformance descriptor for TupleView<A>);
    v47 = v78;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v47, v82, &qword_10191AC38, &qword_1011FCBC8);
    swift_storeEnumTagMultiPayload();
    sub_1003526E8();
    sub_100429CFC();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v47, &qword_10191AC38, &qword_1011FCBC8);
    (*(v45 + 8))(v17, v46);
    return (*(v42 + 8))(v22, v73);
  }
}

uint64_t sub_10042848C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_1000CE6B8(&qword_101920DD0, &qword_101206438);
  sub_1000CE6B8(&qword_101920D60, &qword_1012063E0);
  sub_1000414C8(&qword_101920DD8, &qword_101920DD0, &qword_101206438, &protocol conformance descriptor for [A]);
  sub_1004299B4();
  sub_100429DC0();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1004285B8(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CE6B8(&qword_10190AFC8, &qword_1011E65B0);
  __chkstk_darwin(v6);
  v7 = *(a1 + 1);
  v11 = *a1;
  v12 = v7;
  v13 = a2;
  v14 = a3;
  sub_100428A98(v11, v7, a2, a3, &v10[-v8]);
  sub_1000CE6B8(&qword_101920D80, &qword_1012063F0);
  sub_1001097F8();
  sub_100429AD8();
  return Section<>.init(header:content:)();
}

uint64_t sub_1004286CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  swift_bridgeObjectRetain_n();

  sub_1000CE6B8(&qword_101920DF0, &qword_101206450);
  type metadata accessor for UUID();
  type metadata accessor for RecentsCell(0);
  sub_1000414C8(&qword_101920DF8, &qword_101920DF0, &qword_101206450, &protocol conformance descriptor for [A]);
  sub_10042A184(&qword_101920D88, type metadata accessor for RecentsCell, &unk_101207F34);
  sub_10042A184(&qword_101920E00, type metadata accessor for RecentCellRowViewModel, &unk_101207EF0);
  return ForEach<>.init(_:content:)();
}

double sub_10042886C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a4;
  v11 = type metadata accessor for RecentCellRowViewModel(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = type metadata accessor for RecentsCell(0);
  sub_10042A1CC(a1, a6 + *(v14 + 20), type metadata accessor for RecentCellRowViewModel);
  sub_10042A1CC(a1, &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for RecentCellRowViewModel);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  sub_10042A234(&v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15);
  v17 = v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = v21;
  *(v17 + 8) = a5;
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  v18 = (a6 + *(v14 + 24));
  *v18 = sub_10042A298;
  v18[1] = v16;

  return result;
}

double sub_100428A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000CE6B8(&qword_101920D28, &qword_101206368);
  State.wrappedValue.getter();
  v8 = type metadata accessor for RecentCellRowViewModel(0);
  sub_100536734(a3 + *(v8 + 20), a4, a5);

  return result;
}

uint64_t sub_100428A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v24[1] = a5;
  v9 = sub_1000CE6B8(&qword_10190B038, &qword_1011E65F0);
  __chkstk_darwin(v9 - 8);
  v11 = (v24 - v10);
  v12 = type metadata accessor for SectionHeaderViewModel.Size();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SectionHeaderViewModel();
  __chkstk_darwin(v16 - 8);
  v24[0] = sub_100429E24(v8);
  (*(v13 + 104))(v15, enum case for SectionHeaderViewModel.Size.small(_:), v12);
  sub_1000CE6B8(&qword_101920DE8, &qword_101206440);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v25._object = 0x80000001012377A0;
  v17._countAndFlagsBits = 0x7261656C43;
  v18._object = 0x8000000101237780;
  v25._countAndFlagsBits = 0xD000000000000029;
  v18._countAndFlagsBits = 0xD000000000000016;
  v17._object = 0xE500000000000000;
  *v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, qword_1019600D8, v17, v25);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = v8;
  *(v19 + 40) = a2;

  SectionHeaderViewModel.Action.init(onSelect:)();
  v20 = enum case for SectionHeaderViewModel.ActionType.clear(_:);
  v21 = type metadata accessor for SectionHeaderViewModel.ActionType();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v11, v20, v21);
  (*(v22 + 56))(v11, 0, 1, v21);
  SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
  return SectionHeader.init(model:)();
}

double sub_100428DE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - v9;
  v16[2] = a1;
  v16[3] = a2;
  sub_1000CE6B8(&qword_101920D28, &qword_101206368);
  State.wrappedValue.getter();
  v11 = v16[1];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v11;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4;
  sub_10020AAE4(0, 0, v10, &unk_101206448, v14);

  return result;
}

uint64_t sub_100428F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v41 = type metadata accessor for MapsDesignAccessibilityString();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v43 = (v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for LeadingCardHeader();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CardHeaderSize();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000CE6B8(&unk_101910FC0, &unk_1011EBBE0);
  __chkstk_darwin(v13 - 8);
  v15 = v37 - v14;
  v44 = type metadata accessor for LeadingCardHeaderViewModel();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v39 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v40 = v37 - v18;
  v38 = type metadata accessor for CardButtonViewModel();
  v19 = *(v38 - 8);
  __chkstk_darwin(v38);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v52._object = 0x8000000101237750;
  v22._countAndFlagsBits = 0x73746E65636552;
  v23._object = 0x8000000101237730;
  v52._countAndFlagsBits = 0xD00000000000002FLL;
  v23._countAndFlagsBits = 0xD000000000000018;
  v22._object = 0xE700000000000000;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, qword_1019600D8, v22, v52);
  v37[1] = v24._object;
  v37[2] = v24._countAndFlagsBits;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;

  v37[0] = v21;
  static CardButtonViewModel.close(tintColor:enabled:action:)();

  v26 = v41;
  (*(v5 + 56))(v15, 1, 1, v41);
  (*(v10 + 104))(v12, enum case for CardHeaderSize.large(_:), v9);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1000CE6B8(&qword_10191D770, &qword_1011E52E0);
  v27 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1011E1D30;
  v29 = v38;
  (*(v19 + 16))(v28 + v27, v21, v38);
  v30 = v40;
  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  v31 = v42;
  v32 = v44;
  (*(v42 + 16))(v39, v30, v44);
  v33 = v45;
  LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
  v34 = v43;
  *v43 = 0x746E65636552794DLL;
  v34[1] = 0xED00006472614373;
  (*(v5 + 104))(v34, enum case for MapsDesignAccessibilityString.header(_:), v26);
  sub_10042A184(&qword_10190AF00, &type metadata accessor for LeadingCardHeader, &protocol conformance descriptor for LeadingCardHeader);
  v35 = v47;
  View.mapsDesignAXContainer(withID:)();
  (*(v5 + 8))(v34, v26);
  (*(v46 + 8))(v33, v35);
  (*(v31 + 8))(v30, v32);
  return (*(v19 + 8))(v37[0], v29);
}

double sub_1004295BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000CE6B8(&qword_101920D28, &qword_101206368);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10042A184(&qword_1019098F8, type metadata accessor for MyRecentsViewModel, &unk_10120F500);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v6 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onClose);
  if (v3)
  {
    v4 = *(v6 + OBJC_IVAR____TtC4Maps18MyRecentsViewModel__onClose + 8);

    v3();

    sub_1000D3B90(v3, v4);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1004296C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MapsDesignAccessibilityString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000CE6B8(&qword_101920D00, &qword_101206348);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v11 = v1[1];
  v16 = *v1;
  v10 = v16;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v12 = sub_1000CE6B8(&qword_101920D08, &qword_101206350);
  sub_1004278A8(v10, v11, &v9[*(v12 + 44)]);
  *v6 = 0x746E65636552794DLL;
  v6[1] = 0xE900000000000073;
  (*(v4 + 104))(v6, enum case for MapsDesignAccessibilityString.view(_:), v3);
  sub_1000414C8(&qword_101920D10, &qword_101920D00, &qword_101206348, &protocol conformance descriptor for VStack<A>);
  View.mapsDesignAXContainer(withID:)();
  (*(v4 + 8))(v6, v3);
  sub_100024F64(v9, &qword_101920D00, &qword_101206348);
  v13 = a1 + *(sub_1000CE6B8(&qword_101920D18, &qword_101206358) + 36);
  sub_100428F64(v16, v11, v13);
  result = sub_1000CE6B8(&qword_101920D20, &qword_101206360);
  *(v13 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_100429930()
{
  result = qword_101920D50;
  if (!qword_101920D50)
  {
    sub_1000D6664(&qword_101920D48, &qword_1012063D8);
    sub_1004299B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920D50);
  }

  return result;
}

unint64_t sub_1004299B4()
{
  result = qword_101920D58;
  if (!qword_101920D58)
  {
    sub_1000D6664(&qword_101920D60, &qword_1012063E0);
    sub_100429A40();
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920D58);
  }

  return result;
}

unint64_t sub_100429A40()
{
  result = qword_101920D68;
  if (!qword_101920D68)
  {
    sub_1000D6664(&qword_101920D70, &qword_1012063E8);
    sub_1001097F8();
    sub_100429AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920D68);
  }

  return result;
}

unint64_t sub_100429AD8()
{
  result = qword_101920D78;
  if (!qword_101920D78)
  {
    sub_1000D6664(&qword_101920D80, &qword_1012063F0);
    sub_10042A184(&qword_101920D88, type metadata accessor for RecentsCell, &unk_101207F34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920D78);
  }

  return result;
}

unint64_t sub_100429B8C()
{
  result = qword_101920D90;
  if (!qword_101920D90)
  {
    sub_1000D6664(&qword_101920D30, &qword_101206398);
    sub_100429C44();
    sub_1000414C8(&qword_101920DB8, &qword_101920DC0, &qword_101206430, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920D90);
  }

  return result;
}

unint64_t sub_100429C44()
{
  result = qword_101920D98;
  if (!qword_101920D98)
  {
    sub_1000D6664(&qword_101920DA0, &qword_101206420);
    sub_1000414C8(&qword_101920DA8, &qword_101920DB0, &qword_101206428, &protocol conformance descriptor for List<A, B>);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920D98);
  }

  return result;
}

unint64_t sub_100429CFC()
{
  result = qword_101920DC8;
  if (!qword_101920DC8)
  {
    sub_1000D6664(&qword_101920D38, &qword_1012063A0);
    sub_100429B8C();
    sub_10042A184(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920DC8);
  }

  return result;
}

unint64_t sub_100429DC0()
{
  result = qword_101920DE0;
  if (!qword_101920DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920DE0);
  }

  return result;
}

uint64_t sub_100429E24(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      v1 = "itle to clear for recents";
      if (qword_101906768 != -1)
      {
        swift_once();
        v1 = "itle to clear for recents";
      }

      v2.super.isa = qword_1019600D8;
      v3 = 0xD000000000000016;
      v9 = 0x80000001012377F0;
      v4 = 0x7265646C4FLL;
      goto LABEL_16;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v2.super.isa = qword_1019600D8;
    v3 = 0xD00000000000001BLL;
    v9 = 0x80000001012377F0;
    v4 = 0x6E6F4D2073696854;
    v5 = 0x8000000101237830;
    v6 = 0xEA00000000006874;
  }

  else
  {
    if (!a1)
    {
      v1 = "[RecentlyViewed] This Week";
      if (qword_101906768 != -1)
      {
        swift_once();
        v1 = "[RecentlyViewed] This Week";
      }

      v2.super.isa = qword_1019600D8;
      v3 = 0xD000000000000016;
      v9 = 0x80000001012377F0;
      v4 = 0x7961646F54;
LABEL_16:
      v5 = v1 | 0x8000000000000000;
      v6 = 0xE500000000000000;
      goto LABEL_17;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v2.super.isa = qword_1019600D8;
    v3 = 0xD00000000000001ALL;
    v9 = 0x80000001012377F0;
    v4 = 0x6565572073696854;
    v5 = 0x8000000101237850;
    v6 = 0xE90000000000006BLL;
  }

LABEL_17:
  v7 = 0xD000000000000031;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v2, *&v4, *(&v9 - 1))._countAndFlagsBits;
}

uint64_t sub_10042A060(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC4C;

  return sub_10053A128(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_10042A12C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10042A184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10042A1CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10042A234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentCellRowViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10042A298()
{
  v1 = *(type metadata accessor for RecentCellRowViewModel(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v5 + 1);
  v7 = *v5;

  return sub_100428A14(v3, v4, v0 + v2, v7, v6);
}

unint64_t sub_10042A330()
{
  result = qword_101920E08;
  if (!qword_101920E08)
  {
    sub_1000D6664(&qword_101920D18, &qword_101206358);
    sub_1000D6664(&qword_101920D00, &qword_101206348);
    sub_1000414C8(&qword_101920D10, &qword_101920D00, &qword_101206348, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&unk_101920E10, &qword_101920D20, &qword_101206360, &unk_1011E66B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101920E08);
  }

  return result;
}

char *sub_10042A66C(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps17UserGuidesContext_searchInfo] = 0;
  *&v1[OBJC_IVAR____TtC4Maps17UserGuidesContext_configuration] = a1;
  *&v1[OBJC_IVAR____TtC4Maps17UserGuidesContext_containees] = _swiftEmptyArrayStorage;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v14, "init");
  v6 = *&v4[OBJC_IVAR____TtC4Maps30UserGuidesContextConfiguration_collectionHandler];
  v7 = objc_allocWithZone(type metadata accessor for UserGuideViewController());
  v8 = v5;
  v9 = v6;
  v10 = sub_10023A230(v9);

  [v10 setContaineeDelegate:v8];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v11 = OBJC_IVAR____TtC4Maps17UserGuidesContext_containees;
  swift_beginAccess();
  v12 = v10;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v8 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v8 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return v8;
}

uint64_t type metadata accessor for PinnedItemsView(uint64_t a1)
{
  result = qword_101920EF8;
  if (!qword_101920EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042A8A4(uint64_t a1)
{
  sub_10042A994(319, &unk_101920F08, type metadata accessor for PinnedItemsViewModel);
  if (v1 <= 0x3F)
  {
    sub_10042A994(319, &qword_10190CAB0, &type metadata accessor for EditMode);
    if (v2 <= 0x3F)
    {
      sub_10042A994(319, &qword_10190CAE0, &type metadata accessor for ActionBarViewModel);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10042A994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10042A9E8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10042AA2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ActionBarItemType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EditMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v24 = a1;
  type metadata accessor for PinnedItemsViewModel(0);
  State.init(wrappedValue:)();
  v15 = v26;
  *a2 = v25;
  a2[1] = v15;
  v16 = type metadata accessor for PinnedItemsView(0);
  (*(v9 + 104))(v14, enum case for EditMode.inactive(_:), v8);
  (*(v9 + 16))(v11, v14, v8);
  State.init(wrappedValue:)();
  (*(v9 + 8))(v14, v8);
  v17 = (a2 + *(v16 + 24));
  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1011E4FD0;
  v19 = *(v5 + 104);
  v19(v7, enum case for ActionBarItemType.addToList(_:), v4);
  type metadata accessor for ActionBarItemViewModel();
  swift_allocObject();
  *(v18 + 32) = ActionBarItemViewModel.init(_:)();
  v19(v7, enum case for ActionBarItemType.edit(_:), v4);
  swift_allocObject();
  *(v18 + 40) = ActionBarItemViewModel.init(_:)();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1011E47B0;
  v19(v7, enum case for ActionBarItemType.done(_:), v4);
  swift_allocObject();
  *(v20 + 32) = ActionBarItemViewModel.init(_:)();
  type metadata accessor for ActionBarViewModel();
  swift_allocObject();
  v24 = ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)();
  result = State.init(wrappedValue:)();
  v22 = v26;
  *v17 = v25;
  v17[1] = v22;
  return result;
}

uint64_t sub_10042ADB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  a2[1] = v5;
  return sub_1000F0120(v4, v5);
}

double sub_10042AE5C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void sub_10042AF2C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t sub_10042AFFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001012EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

double sub_10042B0E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001012CC;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);

  return result;
}

uint64_t sub_10042B244@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10020AADC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

double sub_10042B330(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001012F0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);

  return result;
}

uint64_t sub_10042B48C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10020AADC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

double sub_10042B578(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001012F0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);

  return result;
}

uint64_t sub_10042B6D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

double sub_10042B7C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1000D882C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);

  return result;
}

uint64_t sub_10042B91C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10020AADC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

double sub_10042BA08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001012F0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);

  return result;
}

uint64_t sub_10042BB64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 128);
  v5 = *(v3 + 136);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10010129C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

double sub_10042BC50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_100100E38;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);

  return result;
}

void sub_10042BDAC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_10190B848, type metadata accessor for PinnedItem, &unk_10120201C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 105);
}

void sub_10042BE7C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100431074(&qword_10190B848, type metadata accessor for PinnedItem, &unk_10120201C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 106);
}

uint64_t sub_10042BF4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v38 = a2;
  v3 = type metadata accessor for PinnedItemsView(0);
  v4 = v3 - 8;
  v37 = *(v3 - 8);
  v36 = *(v37 + 64);
  __chkstk_darwin(v3);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ContainerBackgroundPlacement();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&qword_101920F70, &qword_1012065A0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = sub_1000CE6B8(&qword_101920F60, &qword_101206598);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v15 = sub_1000CE6B8(&qword_101920F90, &qword_1012065B0);
  sub_10042C42C(a1, &v11[*(v15 + 44)]);
  v39 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  sub_1000414C8(&qword_101920F78, &qword_101920F70, &qword_1012065A0, &protocol conformance descriptor for VStack<A>);
  View.containerBackground<A>(_:for:)();
  (*(v6 + 8))(v8, v34);

  sub_100024F64(v11, &qword_101920F70, &qword_1012065A0);
  v16 = &v14[*(v12 + 36)];
  v17 = v33;
  sub_10042E888(v33, v16);
  *(v16 + *(sub_1000CE6B8(&qword_101920F88, &qword_1012065A8) + 36)) = 1;
  v18 = (v17 + *(v4 + 32));
  v20 = *v18;
  v19 = v18[1];
  v39 = v20;
  v40 = v19;
  sub_1000CE6B8(&qword_10190A148, &qword_1011E5130);
  State.wrappedValue.getter();
  v21 = v35;
  sub_1004300A8(v17, v35);
  v22 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v23 = swift_allocObject();
  sub_10043010C(v21, v23 + v22);
  sub_10042FF6C();
  v24 = v38;
  View.actionBar(_:onSelect:)();

  sub_100024F64(v14, &qword_101920F60, &qword_101206598);
  v25 = static Animation.default.getter();
  v26 = (v24 + *(sub_1000CE6B8(&qword_101920F58, &qword_101206590) + 36));
  sub_1000CE6B8(&qword_10190A110, &unk_1011E5110);
  sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
  State.wrappedValue.getter();
  *v26 = v25;
  KeyPath = swift_getKeyPath();
  v28 = (v24 + *(sub_1000CE6B8(&qword_101920F40, &qword_101206588) + 36));
  v29 = *(sub_1000CE6B8(&qword_10190A120, &qword_101208EF0) + 28);
  State.projectedValue.getter();
  v30 = sub_1000CE6B8(&qword_10190A168, &qword_1011E51A0);
  result = (*(*(v30 - 8) + 56))(v28 + v29, 0, 1, v30);
  *v28 = KeyPath;
  return result;
}

uint64_t sub_10042C42C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for ListSectionSpacing();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v64 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MapsDesignAccessibilityString();
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin(v5);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000CE6B8(&qword_101920FA8, &qword_101206648);
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v59 = &v53 - v9;
  v71 = sub_1000CE6B8(&qword_101920FB0, &qword_101206650);
  __chkstk_darwin(v71);
  v11 = &v53 - v10;
  v68 = sub_1000CE6B8(&qword_101920FB8, &qword_101206658);
  __chkstk_darwin(v68);
  v70 = &v53 - v12;
  v69 = sub_1000CE6B8(&qword_10190A2F8, &unk_1011F11F0);
  __chkstk_darwin(v69);
  v14 = &v53 - v13;
  v15 = sub_1000CE6B8(&qword_10191D860, &qword_1011E5510);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  v22 = *a1;
  v23 = a1[1];
  v67 = a1;
  v57 = v23;
  v58 = v22;
  v74 = v22;
  v75 = v23;
  v56 = sub_1000CE6B8(&qword_101920F98, &qword_1012065E8);
  State.wrappedValue.getter();
  v24 = v73;
  swift_getKeyPath();
  v74 = v24;
  v55 = sub_100431074(&qword_101909A58, type metadata accessor for PinnedItemsViewModel, &unk_1011E71F0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(v24 + 16);
  v26 = *(v24 + 24);
  sub_1000F0120(v25, v26);

  if (v25)
  {
    __chkstk_darwin(v27);
    *(&v53 - 4) = v25;
    *(&v53 - 3) = v26;
    *(&v53 - 2) = v67;
    sub_1000CE6B8(&qword_101920FC0, &qword_101206688);
    v54 = &protocol conformance descriptor for TupleView<A>;
    sub_1000414C8(&qword_101920FC8, &qword_101920FC0, &qword_101206688, &protocol conformance descriptor for TupleView<A>);
    v28 = v59;
    List<>.init(content:)();

    *v7 = 0x744964656E6E6950;
    v7[1] = 0xEB00000000736D65;
    v30 = v62;
    v29 = v63;
    (*(v62 + 104))(v7, enum case for MapsDesignAccessibilityString.list(_:), v63);
    sub_1000414C8(&qword_101920FD0, &qword_101920FA8, &qword_101206648, &protocol conformance descriptor for List<A, B>);
    v31 = v61;
    View.mapsDesignAXContainer(withID:)();
    (*(v30 + 8))(v7, v29);
    (*(v60 + 8))(v28, v31);
    v32 = v64;
    static ListSectionSpacing.compact.getter();
    v33 = *(sub_1000CE6B8(&qword_101920FD8, &qword_101206690) + 36);
    v35 = v65;
    v34 = v66;
    (*(v65 + 16))(&v11[v33], v32, v66);
    v36 = *(v35 + 56);
    v36(&v11[v33], 0, 1, v34);
    KeyPath = swift_getKeyPath();
    v38 = &v11[*(sub_1000CE6B8(&qword_101920FE0, &qword_1012066C8) + 36)];
    v39 = *(sub_1000CE6B8(&qword_10190CD00, &unk_1011EEE90) + 28);
    (*(v35 + 32))(v38 + v39, v32, v34);
    v36(v38 + v39, 0, 1, v34);
    *v38 = KeyPath;
    v40 = static Animation.default.getter();
    v74 = v58;
    v75 = v57;
    State.wrappedValue.getter();
    v41 = v73;
    swift_getKeyPath();
    v74 = v41;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = *(v41 + 32);

    v43 = &v11[*(sub_1000CE6B8(&qword_101920FE8, &qword_1012066F8) + 36)];
    *v43 = v40;
    v43[1] = v42;
    v44 = swift_getKeyPath();
    v45 = &v11[*(v71 + 36)];
    v46 = *(sub_1000CE6B8(&qword_10190A120, &qword_101208EF0) + 28);
    type metadata accessor for PinnedItemsView(0);
    sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
    State.projectedValue.getter();
    v47 = sub_1000CE6B8(&qword_10190A168, &qword_1011E51A0);
    (*(*(v47 - 8) + 56))(v45 + v46, 0, 1, v47);
    *v45 = v44;
    sub_1000D2DFC(v11, v70, &qword_101920FB0, &qword_101206650);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8, &unk_1011F11F0, v54);
    sub_10043026C();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v11, &qword_101920FB0, &qword_101206650);
  }

  else
  {
    ProgressView<>.init<>()();
    v49 = *(v16 + 16);
    v49(v18, v21, v15);
    *v14 = 0;
    v14[8] = 1;
    v50 = sub_1000CE6B8(&qword_10190A408, &qword_1011F0DD0);
    v49(&v14[*(v50 + 48)], v18, v15);
    v51 = &v14[*(v50 + 64)];
    *v51 = 0;
    v51[8] = 1;
    v52 = *(v16 + 8);
    v52(v18, v15);
    sub_1000D2DFC(v14, v70, &qword_10190A2F8, &unk_1011F11F0);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8, &unk_1011F11F0, &protocol conformance descriptor for TupleView<A>);
    sub_10043026C();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v14, &qword_10190A2F8, &unk_1011F11F0);
    return (v52)(v21, v15);
  }
}